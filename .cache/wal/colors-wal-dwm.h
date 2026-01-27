static const char norm_fg[] = "#c4c4c3";
static const char norm_bg[] = "#171717";
static const char norm_border[] = "#6e675a";

static const char sel_fg[] = "#c4c4c3";
static const char sel_bg[] = "#A2633F";
static const char sel_border[] = "#c4c4c3";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
