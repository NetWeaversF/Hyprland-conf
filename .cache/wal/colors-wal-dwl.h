/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x171717ff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xc4c4c3ff, 0x171717ff, 0x6e675aff },
	[SchemeSel]  = { 0xc4c4c3ff, 0x5B843Dff, 0xA2633Fff },
	[SchemeUrg]  = { 0xc4c4c3ff, 0xA2633Fff, 0x5B843Dff },
};
