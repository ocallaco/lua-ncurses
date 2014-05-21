local ffi = require "ffi"
require 'torchffi'

ffi.cdef
[[ 
typedef unsigned int chtype;
typedef unsigned long mmask_t;

typedef void cchar_t;
typedef int wint_t;

typedef void SCREEN;
typedef void WINDOW;
typedef void FILE;

typedef	chtype	attr_t;		/* ...must be at least as wide as chtype */

typedef void _nc_event;

typedef void _nc_eventlist;


int addch (const chtype);			/* generated */
int addchnstr (const chtype *, int);		/* generated */
int addchstr (const chtype *);			/* generated */
int addnstr (const char *, int);			/* generated */
int addstr (const char *);			/* generated */
int attroff (attr_t);			/* generated */
int attron (attr_t);			/* generated */
int attrset (attr_t);			/* generated */
int attr_get (attr_t *, short *, void *);	/* generated */
int attr_off (attr_t, void *);			/* generated */
int attr_on (attr_t, void *);			/* generated */
int attr_set (attr_t, short, void *);		/* generated */
int baudrate (void);				/* implemented */
int beep  (void);				/* implemented */
int bkgd (chtype);				/* generated */
void bkgdset (chtype);				/* generated */
int border (chtype,chtype,chtype,chtype,chtype,chtype,chtype,chtype);	/* generated */
int box (WINDOW *, chtype, chtype);		/* generated */
bool can_change_color (void);			/* implemented */
int cbreak (void);				/* implemented */
int chgat (int, attr_t, short, const void *);	/* generated */
int clear (void);				/* generated */
int clearok (WINDOW *,bool);			/* implemented */
int clrtobot (void);				/* generated */
int clrtoeol (void);				/* generated */
int color_content (short,short*,short*,short*);	/* implemented */
int color_set (short,void*);			/* generated */
int COLOR_PAIR (int);				/* generated */
int copywin (const WINDOW*,WINDOW*,int,int,int,int,int,int,int);	/* implemented */
int curs_set (int);				/* implemented */
int def_prog_mode (void);			/* implemented */
int def_shell_mode (void);			/* implemented */
int delay_output (int);				/* implemented */
int delch (void);				/* generated */
void delscreen (SCREEN *);			/* implemented */
int delwin (WINDOW *);				/* implemented */
int deleteln (void);				/* generated */
WINDOW * derwin (WINDOW *,int,int,int,int);	/* implemented */
int doupdate (void);				/* implemented */
WINDOW * dupwin (WINDOW *);			/* implemented */
int echo (void);					/* implemented */
int echochar (const chtype);			/* generated */
int erase (void);				/* generated */
int endwin (void);				/* implemented*/
char erasechar (void);				/* implemented */
void filter (void);				/* implemented */
int flash (void);				/* implemented */
int flushinp (void);				/* implemented */
chtype getbkgd (WINDOW *);			/* generated */
int getch (void);				/* generated */
int getnstr (char *, int);			/* generated */
int getstr (char *);				/* generated */
WINDOW * getwin (FILE *);			/* implemented */
int halfdelay (int);				/* implemented */
bool has_colors (void);				/* implemented */
bool has_ic (void);				/* implemented */
bool has_il (void);				/* implemented */
int hline (chtype, int);				/* generated */
void idcok (WINDOW *, bool);			/* implemented */
int idlok (WINDOW *, bool);			/* implemented */
void immedok (WINDOW *, bool);			/* implemented */
chtype inch (void);				/* generated */
int inchnstr (chtype *, int);			/* generated */
int inchstr (chtype *);				/* generated */
WINDOW * initscr (void);				/* implemented */
int init_color (short,short,short,short);	/* implemented */
int init_pair (short,short,short);		/* implemented */
int innstr (char *, int);			/* generated */
int insch (chtype);				/* generated */
int insdelln (int);				/* generated */
int insertln (void);				/* generated */
int insnstr (const char *, int);			/* generated */
int insstr (const char *);			/* generated */
int instr (char *);				/* generated */
int intrflush (WINDOW *,bool);			/* implemented */
bool isendwin (void);				/* implemented */
bool is_linetouched (WINDOW *,int);		/* implemented */
bool is_wintouched (WINDOW *);			/* implemented */
char * keyname (int);		/* implemented */
int keypad (WINDOW *,bool);			/* implemented */
char killchar (void);				/* implemented */
int leaveok (WINDOW *,bool);			/* implemented */
char * longname (void);				/* implemented */
int meta (WINDOW *,bool);			/* implemented */
int move (int, int);				/* generated */
int mvaddch (int, int, const chtype);		/* generated */
int mvaddchnstr (int, int, const chtype *, int);	/* generated */
int mvaddchstr (int, int, const chtype *);	/* generated */
int mvaddnstr (int, int, const char *, int);	/* generated */
int mvaddstr (int, int, const char *);		/* generated */
int mvchgat (int, int, int, attr_t, short, const void *);	/* generated */
int mvcur (int,int,int,int);			/* implemented */
int mvdelch (int, int);				/* generated */
int mvderwin (WINDOW *, int, int);		/* implemented */
int mvgetch (int, int);				/* generated */
int mvgetnstr (int, int, char *, int);		/* generated */
int mvgetstr (int, int, char *);			/* generated */
int mvhline (int, int, chtype, int);		/* generated */
chtype mvinch (int, int);			/* generated */
int mvinchnstr (int, int, chtype *, int);	/* generated */
int mvinchstr (int, int, chtype *);		/* generated */
int mvinnstr (int, int, char *, int);		/* generated */
int mvinsch (int, int, chtype);			/* generated */
int mvinsnstr (int, int, const char *, int);	/* generated */
int mvinsstr (int, int, const char *);		/* generated */
int mvinstr (int, int, char *);			/* generated */
int mvprintw (int,int, const char *,...);		/* implemented */
int mvscanw (int,int, char *,...);	/* implemented */
int mvvline (int, int, chtype, int);		/* generated */
int mvwaddch (WINDOW *, int, int, const chtype);	/* generated */
int mvwaddchnstr (WINDOW *, int, int, const chtype *, int);/* generated */
int mvwaddchstr (WINDOW *, int, int, const chtype *);	/* generated */
int mvwaddnstr (WINDOW *, int, int, const char *, int);	/* generated */
int mvwaddstr (WINDOW *, int, int, const char *);	/* generated */
int mvwchgat (WINDOW *, int, int, int, attr_t, short, const void *);/* generated */
int mvwdelch (WINDOW *, int, int);		/* generated */
int mvwgetch (WINDOW *, int, int);		/* generated */
int mvwgetnstr (WINDOW *, int, int, char *, int);	/* generated */
int mvwgetstr (WINDOW *, int, int, char *);	/* generated */
int mvwhline (WINDOW *, int, int, chtype, int);	/* generated */
int mvwin (WINDOW *,int,int);			/* implemented */
chtype mvwinch (WINDOW *, int, int);			/* generated */
int mvwinchnstr (WINDOW *, int, int, chtype *, int);	/* generated */
int mvwinchstr (WINDOW *, int, int, chtype *);		/* generated */
int mvwinnstr (WINDOW *, int, int, char *, int);		/* generated */
int mvwinsch (WINDOW *, int, int, chtype);		/* generated */
int mvwinsnstr (WINDOW *, int, int, const char *, int);	/* generated */
int mvwinsstr (WINDOW *, int, int, const char *);		/* generated */
int mvwinstr (WINDOW *, int, int, char *);		/* generated */
int mvwprintw (WINDOW*,int,int, const char *,...);	/* implemented */
int mvwscanw (WINDOW *,int,int, char *,...);	/* implemented */
int mvwvline (WINDOW *,int, int, chtype, int);	/* generated */
int napms (int);					/* implemented */
WINDOW * newpad (int,int);				/* implemented */
SCREEN * newterm (char *,FILE *,FILE *);	/* implemented */
WINDOW * newwin (int,int,int,int);			/* implemented */
int nl (void);					/* implemented */
int nocbreak (void);				/* implemented */
int nodelay (WINDOW *,bool);			/* implemented */
int noecho (void);				/* implemented */
int nonl (void);					/* implemented */
void noqiflush (void);				/* implemented */
int noraw (void);				/* implemented */
int notimeout (WINDOW *,bool);			/* implemented */
int overlay (const WINDOW*,WINDOW *);		/* implemented */
int overwrite (const WINDOW*,WINDOW *);		/* implemented */
int pair_content (short,short*,short*);		/* implemented */
int PAIR_NUMBER (int);				/* generated */
int pechochar (WINDOW *, const chtype);		/* implemented */
int pnoutrefresh (WINDOW*,int,int,int,int,int,int);/* implemented */
int prefresh (WINDOW *,int,int,int,int,int,int);	/* implemented */
int printw (const char *,...);			/* implemented */
int putwin (WINDOW *, FILE *);			/* implemented */
void qiflush (void);				/* implemented */
int raw (void);					/* implemented */
int redrawwin (WINDOW *);			/* generated */
int refresh (void);				/* generated */
int resetty (void);				/* implemented */
int reset_prog_mode (void);			/* implemented */
int reset_shell_mode (void);			/* implemented */
int ripoffline (int, int (*)(WINDOW *, int));	/* implemented */
int savetty (void);				/* implemented */
int scanw (char *,...);		/* implemented */
int scr_dump (const char *);			/* implemented */
int scr_init (const char *);			/* implemented */
int scrl (int);					/* generated */
int scroll (WINDOW *);				/* generated */
int scrollok (WINDOW *,bool);			/* implemented */
int scr_restore (const char *);			/* implemented */
int scr_set (const char *);			/* implemented */
int setscrreg (int,int);				/* generated */
SCREEN * set_term (SCREEN *);			/* implemented */
int slk_attroff (const chtype);			/* implemented */
int slk_attr_off (const attr_t, void *);		/* generated:WIDEC */
int slk_attron (const chtype);			/* implemented */
int slk_attr_on (attr_t,void*);			/* generated:WIDEC */
int slk_attrset (const chtype);			/* implemented */
attr_t slk_attr (void);				/* implemented */
int slk_attr_set (const attr_t,short,void*);	/* implemented */
int slk_clear (void);				/* implemented */
int slk_color (short);				/* implemented */
int slk_init (int);				/* implemented */
char * slk_label (int);				/* implemented */
int slk_noutrefresh (void);			/* implemented */
int slk_refresh (void);				/* implemented */
int slk_restore (void);				/* implemented */
int slk_set (int,const char *,int);		/* implemented */
int slk_touch (void);				/* implemented */
int standout (void);				/* generated */
int standend (void);				/* generated */
int start_color (void);				/* implemented */
WINDOW * subpad (WINDOW *, int, int, int, int);	/* implemented */
WINDOW * subwin (WINDOW *, int, int, int, int);	/* implemented */
int syncok (WINDOW *, bool);			/* implemented */
chtype termattrs (void);				/* implemented */
char * termname (void);				/* implemented */
void timeout (int);				/* generated */
int touchline (WINDOW *, int, int);		/* generated */
int touchwin (WINDOW *);				/* generated */
int typeahead (int);				/* implemented */
int ungetch (int);				/* implemented */
int untouchwin (WINDOW *);			/* generated */
void use_env (bool);				/* implemented */
int vidattr (chtype);				/* implemented */
int vidputs (chtype, int (*)(int));		/* implemented */
int vline (chtype, int);				/* generated */
int vwprintw (WINDOW *, const char *,va_list);	/* implemented */
int vw_printw (WINDOW *, const char *,va_list);	/* generated */
int vwscanw (WINDOW *, char *,va_list);	/* implemented */
int vw_scanw (WINDOW *, char *,va_list);	/* generated */
int waddch (WINDOW *, const chtype);		/* implemented */
int waddchnstr (WINDOW *,const chtype *,int);	/* implemented */
int waddchstr (WINDOW *,const chtype *);		/* generated */
int waddnstr (WINDOW *,const char *,int);	/* implemented */
int waddstr (WINDOW *,const char *);		/* generated */
int wattron (WINDOW *, int);			/* generated */
int wattroff (WINDOW *, int);			/* generated */
int wattrset (WINDOW *, int);			/* generated */
int wattr_get (WINDOW *, attr_t *, short *, void *);	/* generated */
int wattr_on (WINDOW *, attr_t, void *);		/* implemented */
int wattr_off (WINDOW *, attr_t, void *);	/* implemented */
int wattr_set (WINDOW *, attr_t, short, void *);	/* generated */
int wbkgd (WINDOW *, chtype);			/* implemented */
void wbkgdset (WINDOW *,chtype);			/* implemented */
int wborder (WINDOW *,chtype,chtype,chtype,chtype,chtype,chtype,chtype,chtype);	/* implemented */
int wchgat (WINDOW *, int, attr_t, short, const void *);/* implemented */
int wclear (WINDOW *);				/* implemented */
int wclrtobot (WINDOW *);			/* implemented */
int wclrtoeol (WINDOW *);			/* implemented */
int wcolor_set (WINDOW*,short,void*);		/* implemented */
void wcursyncup (WINDOW *);			/* implemented */
int wdelch (WINDOW *);				/* implemented */
int wdeleteln (WINDOW *);			/* generated */
int wechochar (WINDOW *, const chtype);		/* implemented */
int werase (WINDOW *);				/* implemented */
int wgetch (WINDOW *);				/* implemented */
int wgetnstr (WINDOW *,char *,int);		/* implemented */
int wgetstr (WINDOW *, char *);			/* generated */
int whline (WINDOW *, chtype, int);		/* implemented */
chtype winch (WINDOW *);				/* implemented */
int winchnstr (WINDOW *, chtype *, int);		/* implemented */
int winchstr (WINDOW *, chtype *);		/* generated */
int winnstr (WINDOW *, char *, int);		/* implemented */
int winsch (WINDOW *, chtype);			/* implemented */
int winsdelln (WINDOW *,int);			/* implemented */
int winsertln (WINDOW *);			/* generated */
int winsnstr (WINDOW *, const char *,int);	/* implemented */
int winsstr (WINDOW *, const char *);		/* generated */
int winstr (WINDOW *, char *);			/* generated */
int wmove (WINDOW *,int,int);			/* implemented */
int wnoutrefresh (WINDOW *);			/* implemented */
int wprintw (WINDOW *, const char *,...);		/* implemented */
int wredrawln (WINDOW *,int,int);		/* implemented */
int wrefresh (WINDOW *);				/* implemented */
int wscanw (WINDOW *, char *,...);	/* implemented */
int wscrl (WINDOW *,int);			/* implemented */
int wsetscrreg (WINDOW *,int,int);		/* implemented */
int wstandout (WINDOW *);			/* generated */
int wstandend (WINDOW *);			/* generated */
void wsyncdown (WINDOW *);			/* implemented */
void wsyncup (WINDOW *);				/* implemented */
void wtimeout (WINDOW *,int);			/* implemented */
int wtouchln (WINDOW *,int,int,int);		/* implemented */
int wvline (WINDOW *,chtype,int);		/* implemented */

/*
 * These are also declared in <term.h>:
 */
int tigetflag (char *);		/* implemented */
int tigetnum (char *);		/* implemented */
char * tigetstr (char *);		/* implemented */
int putp (const char *);				/* implemented */

/*
 * These functions are not in X/Open, but we use them in macro definitions:
 */
int getattrs (const WINDOW *);			/* generated */
int getcurx (const WINDOW *);			/* generated */
int getcury (const WINDOW *);			/* generated */
int getbegx (const WINDOW *);			/* generated */
int getbegy (const WINDOW *);			/* generated */
int getmaxx (const WINDOW *);			/* generated */
int getmaxy (const WINDOW *);			/* generated */
int getparx (const WINDOW *);			/* generated */
//int getpary (const WINDOW *);			/* generated */

bool is_term_resized (int, int);
char * keybound (int, int);
const char * curses_version (void);
int assume_default_colors (int, int);
int define_key (const char *, int);
int key_defined (const char *);
int keyok (int, bool);
int resize_term (int, int);
int resizeterm (int, int);
int set_escdelay (int);
int set_tabsize (int);
int use_default_colors (void);
int use_extended_names (bool);
int use_legacy_coding (int);
int wresize (WINDOW *, int, int);
void nofilter(void);


/*
 * These extensions provide access to information stored in the WINDOW even
 * when NCURSES_OPAQUE is set:
 */
WINDOW * wgetparent (const WINDOW *);	/* generated */
bool is_cleared (const WINDOW *);	/* generated */
bool is_idcok (const WINDOW *);		/* generated */
bool is_idlok (const WINDOW *);		/* generated */
bool is_immedok (const WINDOW *);	/* generated */
bool is_keypad (const WINDOW *);		/* generated */
bool is_leaveok (const WINDOW *);	/* generated */
bool is_nodelay (const WINDOW *);	/* generated */
bool is_notimeout (const WINDOW *);	/* generated */
bool is_scrollok (const WINDOW *);	/* generated */
bool is_syncok (const WINDOW *);		/* generated */
int wgetscrreg (const WINDOW *, int *, int *); /* generated */

/*
 * Function prototypes for wide-character operations.
 *
 * "generated" comments should include ":WIDEC" to make the corresponding
 * functions ifdef'd in lib_gen.c
 *
 * "implemented" comments do not need this marker.
 */

int add_wch (const cchar_t *);			/* generated:WIDEC */
int add_wchnstr (const cchar_t *, int);		/* generated:WIDEC */
int add_wchstr (const cchar_t *);		/* generated:WIDEC */
int addnwstr (const wchar_t *, int);		/* generated:WIDEC */
int addwstr (const wchar_t *);			/* generated:WIDEC */
int bkgrnd (const cchar_t *);			/* generated:WIDEC */
void bkgrndset (const cchar_t *);		/* generated:WIDEC */
int border_set (const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*); /* generated:WIDEC */
int box_set (WINDOW *, const cchar_t *, const cchar_t *);	/* generated:WIDEC */
int echo_wchar (const cchar_t *);		/* generated:WIDEC */
int erasewchar (wchar_t*);			/* implemented */
int get_wch (wint_t *);				/* generated:WIDEC */
int get_wstr (wint_t *);				/* generated:WIDEC */
int getbkgrnd (cchar_t *);			/* generated:WIDEC */
int getcchar (const cchar_t *, wchar_t*, attr_t*, short*, void*);	/* implemented */
int getn_wstr (wint_t *, int);			/* generated:WIDEC */
int hline_set (const cchar_t *, int);		/* generated:WIDEC */
int in_wch (cchar_t *);				/* generated:WIDEC */
int in_wchnstr (cchar_t *, int);			/* generated:WIDEC */
int in_wchstr (cchar_t *);			/* generated:WIDEC */
int innwstr (wchar_t *, int);			/* generated:WIDEC */
int ins_nwstr (const wchar_t *, int);		/* generated:WIDEC */
int ins_wch (const cchar_t *);			/* generated:WIDEC */
int ins_wstr (const wchar_t *);			/* generated:WIDEC */
int inwstr (wchar_t *);				/* generated:WIDEC */
char* key_name (wchar_t);		/* implemented */
int killwchar (wchar_t *);			/* implemented */
int mvadd_wch (int, int, const cchar_t *);	/* generated:WIDEC */
int mvadd_wchnstr (int, int, const cchar_t *, int);/* generated:WIDEC */
int mvadd_wchstr (int, int, const cchar_t *);	/* generated:WIDEC */
int mvaddnwstr (int, int, const wchar_t *, int);	/* generated:WIDEC */
int mvaddwstr (int, int, const wchar_t *);	/* generated:WIDEC */
int mvget_wch (int, int, wint_t *);		/* generated:WIDEC */
int mvget_wstr (int, int, wint_t *);		/* generated:WIDEC */
int mvgetn_wstr (int, int, wint_t *, int);	/* generated:WIDEC */
int mvhline_set (int, int, const cchar_t *, int);	/* generated:WIDEC */
int mvin_wch (int, int, cchar_t *);		/* generated:WIDEC */
int mvin_wchnstr (int, int, cchar_t *, int);	/* generated:WIDEC */
int mvin_wchstr (int, int, cchar_t *);		/* generated:WIDEC */
int mvinnwstr (int, int, wchar_t *, int);	/* generated:WIDEC */
int mvins_nwstr (int, int, const wchar_t *, int);	/* generated:WIDEC */
int mvins_wch (int, int, const cchar_t *);	/* generated:WIDEC */
int mvins_wstr (int, int, const wchar_t *);	/* generated:WIDEC */
int mvinwstr (int, int, wchar_t *);		/* generated:WIDEC */
int mvvline_set (int, int, const cchar_t *, int);	/* generated:WIDEC */
int mvwadd_wch (WINDOW *, int, int, const cchar_t *);	/* generated:WIDEC */
int mvwadd_wchnstr (WINDOW *, int, int, const cchar_t *, int); /* generated:WIDEC */
int mvwadd_wchstr (WINDOW *, int, int, const cchar_t *);	/* generated:WIDEC */
int mvwaddnwstr (WINDOW *, int, int, const wchar_t *, int);/* generated:WIDEC */
int mvwaddwstr (WINDOW *, int, int, const wchar_t *);	/* generated:WIDEC */
int mvwget_wch (WINDOW *, int, int, wint_t *);	/* generated:WIDEC */
int mvwget_wstr (WINDOW *, int, int, wint_t *);	/* generated:WIDEC */
int mvwgetn_wstr (WINDOW *, int, int, wint_t *, int);/* generated:WIDEC */
int mvwhline_set (WINDOW *, int, int, const cchar_t *, int);/* generated:WIDEC */
int mvwin_wch (WINDOW *, int, int, cchar_t *);	/* generated:WIDEC */
int mvwin_wchnstr (WINDOW *, int,int, cchar_t *,int);	/* generated:WIDEC */
int mvwin_wchstr (WINDOW *, int, int, cchar_t *);	/* generated:WIDEC */
int mvwinnwstr (WINDOW *, int, int, wchar_t *, int);	/* generated:WIDEC */
int mvwins_nwstr (WINDOW *, int,int, const wchar_t *,int); /* generated:WIDEC */
int mvwins_wch (WINDOW *, int, int, const cchar_t *);	/* generated:WIDEC */
int mvwins_wstr (WINDOW *, int, int, const wchar_t *);	/* generated:WIDEC */
int mvwinwstr (WINDOW *, int, int, wchar_t *);		/* generated:WIDEC */
int mvwvline_set (WINDOW *, int,int, const cchar_t *,int); /* generated:WIDEC */
int pecho_wchar (WINDOW *, const cchar_t *);	/* implemented */
int setcchar (cchar_t *, const wchar_t *, const attr_t, short, const void *);	/* implemented */
int slk_wset (int, const wchar_t *, int);	/* implemented */
attr_t term_attrs (void);			/* implemented */
int unget_wch (const wchar_t);			/* implemented */
int vid_attr (attr_t, short, void *);		/* implemented */
int vid_puts (attr_t, short, void *, int (*)(int)); /* implemented */
int vline_set (const cchar_t *, int);		/* generated:WIDEC */
int wadd_wch (WINDOW *,const cchar_t *);		/* implemented */
int wadd_wchnstr (WINDOW *,const cchar_t *,int);	/* implemented */
int wadd_wchstr (WINDOW *,const cchar_t *);	/* generated:WIDEC */
int waddnwstr (WINDOW *,const wchar_t *,int);	/* implemented */
int waddwstr (WINDOW *,const wchar_t *);		/* generated:WIDEC */
int wbkgrnd (WINDOW *,const cchar_t *);		/* implemented */
void wbkgrndset (WINDOW *,const cchar_t *);	/* implemented */
int wborder_set (WINDOW *,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*);	/* implemented */
int wecho_wchar (WINDOW *, const cchar_t *);	/* implemented */
int wget_wch (WINDOW *, wint_t *);		/* implemented */
int wget_wstr (WINDOW *, wint_t *);		/* generated:WIDEC */
int wgetbkgrnd (WINDOW *, cchar_t *);		/* generated:WIDEC */
int wgetn_wstr (WINDOW *,wint_t *, int);		/* implemented */
int whline_set (WINDOW *, const cchar_t *, int);	/* implemented */
int win_wch (WINDOW *, cchar_t *);		/* implemented */
int win_wchnstr (WINDOW *, cchar_t *, int);	/* implemented */
int win_wchstr (WINDOW *, cchar_t *);		/* generated:WIDEC */
int winnwstr (WINDOW *, wchar_t *, int);		/* implemented */
int wins_nwstr (WINDOW *, const wchar_t *, int);	/* implemented */
int wins_wch (WINDOW *, const cchar_t *);	/* implemented */
int wins_wstr (WINDOW *, const wchar_t *);	/* generated:WIDEC */
int winwstr (WINDOW *, wchar_t *);		/* implemented */
wchar_t* wunctrl (cchar_t *);			/* implemented */
int wvline_set (WINDOW *, const cchar_t *, int);	/* implemented */

/* mouse interface */

typedef void MEVENT;

int getmouse (MEVENT *);
int ungetmouse (MEVENT *);
mmask_t mousemask (mmask_t, mmask_t *);
bool wenclose (const WINDOW *, int, int);
int mouseinterval (int);
bool wmouse_trafo (const WINDOW*, int*, int*, bool);
bool mouse_trafo (int*, int*, bool);              /* generated */

/* other non-XSI functions */

int mcprint (char *, int);	/* direct data to printer */
int has_key (int);		/* do we have given key? */

/* Debugging : use with libncurses_g.a */

void _tracef (const char *, ...);
void _tracedump (const char *, WINDOW *);
char * _traceattr (attr_t);
char * _traceattr2 (int, chtype);
char * _nc_tracebits (void);
char * _tracechar (int);
char * _tracechtype (chtype);
char * _tracechtype2 (int, chtype);

]]



local clib = ffi.load("curses")

return clib
