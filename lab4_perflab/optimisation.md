### optimisations
first and foremost, GCC can perform various optimisations with `-O*` flag. `O3` and `Ofast` perform comparatively on this program,
however `Ofast` applies some optimisations that are considered unsafe in some instances.

in the `applyFilter()` function, there's a loop that calls `getSize()` on every iteration, while the value does not change. so we can
make the following change:
```diff
   output->width = input->width;
   output->height = input->height;
+  int filter_size = filter->getSize();
+
   for (int col = 1; col < (input->width) - 1; col = col + 1) {
     for (int row = 1; row < (input->height) - 1; row = row + 1) {
       for (int plane = 0; plane < 3; plane++) {

         output->color[plane][row][col] = 0;

-        for (int j = 0; j < filter->getSize(); j++) {
-          for (int i = 0; i < filter->getSize(); i++) {
+        for (int j = 0; j < filter_size; j++) {
+          for (int i = 0; i < filter_size; i++) {
             output->color[plane][row][col] =
```

in the same loop, we can reduce memory references when accessing class variables:
```diff
   cycStart = rdtscll();

+  int input_width = input->width;
+  int input_height = input->height;

-  output->width = input->width;
-  output->height = input->height;
+  output->width = input_width;
+  output->height = input_height;

-  for (int col = 1; col < (input->width) - 1; col = col + 1) {
-    for (int row = 1; row < (input->height) - 1; row = row + 1) {
+  for (int col = 1; col < input_width - 1; col = col + 1) {
+    for (int row = 1; row < input_height - 1; row = row + 1) {
       for (int plane = 0; plane < 3; plane++) {
         output->color[plane][row][col] = 0;
```

the 3 dimensional array `color` is traversed in column-major order:
```
x[0 0] x[0 1] x[0 2]
   ↓      ↓      ↓
x[1 0] x[1 1] x[1 2]
   ↓      ↓      ↓
x[2 0] x[2 1] x[2 2]
```

accessing sequential data using SIMD methods is much more efficient (row-major order):
```
x[0 0] → x[0 1] → x[0 2]
x[1 0] → x[1 1] → x[1 2]
x[2 0] → x[2 1] → x[2 2]
```

so we can reorder how the array is processed:
```diff
   output->height = input_height;

-  for (int col = 1; col < input_width - 1; col = col + 1) {
+  for (int plane = 0; plane < 3; plane++) {
     for (int row = 1; row < input_height - 1; row = row + 1) {
-      for (int plane = 0; plane < 3; plane++) {
+      for (int col = 1; col < input_width - 1; col = col + 1) {

         output->color[plane][row][col] = 0;
```

next, i simply removed this line to make the loops stack up nicely and it somehow
did not cause any errors and improved performance???
```diff
   for (int plane = 0; plane < 3; plane++) {
     for (int row = 1; row < input_height - 1; row = row + 1) {
       for (int col = 1; col < input_width - 1; col = col + 1) {
-        output->color[plane][row][col] = 0;
         for (int j = 0; j < filter_size; j++) {
           for (int i = 0; i < filter_size; i++) {
```
