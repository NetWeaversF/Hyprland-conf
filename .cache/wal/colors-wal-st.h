const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#171717", /* black   */
  [1] = "#A3493F", /* red     */
  [2] = "#48A34E", /* green   */
  [3] = "#C09D50", /* yellow  */
  [4] = "#232299", /* blue    */
  [5] = "#4446BB", /* magenta */
  [6] = "#B756AD", /* cyan    */
  [7] = "#797979", /* white   */

  /* 8 bright colors */
  [8]  = "#b6b6b6",  /* black   */
  [9]  = "#ba766f",  /* red     */
  [10] = "#75ba7a", /* green   */
  [11] = "#cfb57b", /* yellow  */
  [12] = "#5a59b2", /* blue    */
  [13] = "#7274cc", /* magenta */
  [14] = "#c980c1", /* cyan    */
  [15] = "#3c3c3c", /* white   */

  /* special colors */
  [256] = "#171717", /* background */
  [257] = "#3c3c3c", /* foreground */
  [258] = "#3c3c3c",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
