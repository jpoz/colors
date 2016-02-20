

// Base16 Airboss light - simple terminal color setup
// JPOZ (http://jpoz.net)
static const char *colorname[] = {
	/* Normal colors */
	"#2B2D2E", /*  0: Base 00 - Black   */
	"#FF5A5F", /*  1: Base 08 - Red     */
	"#8CE071", /*  2: Base 0B - Green   */
	"#FFB400", /*  3: Base 0A - Yellow  */
	"#007A87", /*  4: Base 0D - Blue    */
	"#7B0051", /*  5: Base 0E - Magenta */
	"#00D1C1", /*  6: Base 0C - Cyan    */
	"#9CA299", /*  7: Base 05 - White   */

	/* Bright colors */
	"#82898D", /*  8: Base 03 - Bright Black */
	"#FF5A5F", /*  9: Base 08 - Red          */
	"#8CE071", /* 10: Base 0B - Green        */
	"#FFB400", /* 11: Base 0A - Yellow       */
	"#007A87", /* 12: Base 0D - Blue         */
	"#7B0051", /* 13: Base 0E - Magenta      */
	"#00D1C1", /* 14: Base 0C - Cyan         */
	"#F0F0F0", /* 15: Base 05 - Bright White */

	/* A few more colors */

	"#FFAA91", /* 16: Base 09 */
	"#B4A76C", /* 17: Base 0F */
	"#393C3D", /* 18: Base 01 */
	"#565A5C", /* 19: Base 02 */
	"#959595", /* 20: Base 04 */
	"#CDD0CC", /* 21: Base 06 */

	[255] = 0,

	[256] = "#565A5C", /* default fg: Base 02 */
	[257] = "#F0F0F0", /* default bg: Base 07 */	
};

// Foreground, background and cursor
static unsigned int defaultfg = 256;
static unsigned int defaultbg = 257;
static unsigned int defaultcs = 256;


