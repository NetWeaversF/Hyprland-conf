static const char norm_fg[] = "#3c3c3d";
static const char norm_bg[] = "#171717";
static const char norm_border[] = "#b6b6b7";

static const char sel_fg[] = "#3c3c3d";
static const char sel_bg[] = "#64589A";
static const char sel_border[] = "#3c3c3d";

static const char urg_fg[] = "#3c3c3d";
static const char urg_bg[] = "#523792";
static const char urg_border[] = "#523792";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
