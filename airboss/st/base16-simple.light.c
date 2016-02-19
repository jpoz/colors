

// Base16 Simple light - simple terminal color setup
// JPOZ (http://jpoz.net)
static const char *colorname[] = {
	/* Normal colors */
	"#242728", /*  0: Base 00 - Black   */
	"#E87364", /*  1: Base 08 - Red     */
	"#93D4AC", /*  2: Base 0B - Green   */
	"#F8D0A0", /*  3: Base 0A - Yellow  */
	"#43A9CF", /*  4: Base 0D - Blue    */
	"#9581AD", /*  5: Base 0E - Magenta */
	"#81B5BC", /*  6: Base 0C - Cyan    */
	"#aebabf", /*  7: Base 05 - White   */

	/* Bright colors */
	"#526068", /*  8: Base 03 - Bright Black */
	"#E87364", /*  9: Base 08 - Red          */
	"#93D4AC", /* 10: Base 0B - Green        */
	"#F8D0A0", /* 11: Base 0A - Yellow       */
	"#43A9CF", /* 12: Base 0D - Blue         */
	"#9581AD", /* 13: Base 0E - Magenta      */
	"#81B5BC", /* 14: Base 0C - Cyan         */
	"#f6f8f8", /* 15: Base 05 - Bright White */

	/* A few more colors */

	"#F1A74F", /* 16: Base 09 */
	"#C8B48C", /* 17: Base 0F */
	"#30383b", /* 18: Base 01 */
	"#3c474c", /* 19: Base 02 */
	"#768993", /* 20: Base 04 */
	"#e8e8e8", /* 21: Base 06 */

	[255] = 0,

	[256] = "#3c474c", /* default fg: Base 02 */
	[257] = "#f6f8f8", /* default bg: Base 07 */	
};

// Foreground, background and cursor
static unsigned int defaultfg = 256;
static unsigned int defaultbg = 257;
static unsigned int defaultcs = 256;


