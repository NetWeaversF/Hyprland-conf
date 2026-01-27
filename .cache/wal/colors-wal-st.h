const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#171717", /* black   */
  [1] = "#A2633F", /* red     */
  [2] = "#5B843D", /* green   */
  [3] = "#68934D", /* yellow  */
  [4] = "#91AA5F", /* blue    */
  [5] = "#B9A64D", /* magenta */
  [6] = "#794B89", /* cyan    */
  [7] = "#99948e", /* white   */

  /* 8 bright colors */
  [8]  = "#6e675a",  /* black   */
  [9]  = "#be8869",  /* red     */
  [10] = "#81b757", /* green   */
  [11] = "#88be68", /* yellow  */
  [12] = "#aec77e", /* blue    */
  [13] = "#c6b97c", /* magenta */
  [14] = "#a462bb", /* cyan    */
  [15] = "#c4c4c3", /* white   */

  /* special colors */
  [256] = "#171717", /* background */
  [257] = "#c4c4c3", /* foreground */
  [258] = "#c4c4c3",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
