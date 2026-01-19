/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x171717ff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0x3c3c3dff, 0x171717ff, 0xb6b6b7ff },
	[SchemeSel]  = { 0x3c3c3dff, 0x64589Aff, 0x523792ff },
	[SchemeUrg]  = { 0x3c3c3dff, 0x523792ff, 0x64589Aff },
};
