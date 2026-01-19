const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#171717", /* black   */
  [1] = "#523792", /* red     */
  [2] = "#64589A", /* green   */
  [3] = "#524CB8", /* yellow  */
  [4] = "#906B9E", /* blue    */
  [5] = "#A667D3", /* magenta */
  [6] = "#6C9AC0", /* cyan    */
  [7] = "#79797a", /* white   */

  /* 8 bright colors */
  [8]  = "#b6b6b7",  /* black   */
  [9]  = "#7d69ad",  /* red     */
  [10] = "#8a81b3", /* green   */
  [11] = "#7d78c9", /* yellow  */
  [12] = "#ab90b6", /* blue    */
  [13] = "#bc8dde", /* magenta */
  [14] = "#90b3cf", /* cyan    */
  [15] = "#3c3c3d", /* white   */

  /* special colors */
  [256] = "#171717", /* background */
  [257] = "#3c3c3d", /* foreground */
  [258] = "#3c3c3d",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
