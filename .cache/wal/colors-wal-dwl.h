/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x171717ff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0x3c3c3cff, 0x171717ff, 0xb6b6b6ff },
	[SchemeSel]  = { 0x3c3c3cff, 0x48A34Eff, 0xA3493Fff },
	[SchemeUrg]  = { 0x3c3c3cff, 0xA3493Fff, 0x48A34Eff },
};
