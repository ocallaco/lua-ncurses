
local curses = require 'ncurses'
local async = require 'async'

local function create_newwin(height, width, starty, startx)
   local local_win;

	local_win = curses.newwin(height, width, starty, startx)
	curses.box(local_win, 0 , 0)		
   curses.wrefresh(local_win)
	return local_win;
end

local function destroy_win(local_win)
   local sp = ffi.cast("unsigned char", " ")
--   curses.wborder(local_win, sp, sp, sp,sp,sp,sp,sp,sp)
   curses.wclear(local_win)
   curses.wrefresh(local_win)
   curses.delwin(local_win)
end

curses.initscr()
curses.cbreak()
curses.keypad(curses.stdscr, true)

local height = 10;
local width = 40;
local starty = math.floor((curses.LINES - height) / 2)
local startx = math.floor((curses.COLS - width) / 2)

local my_win = create_newwin(height, width, starty, startx)

curses.mvwprintw(my_win, 0,1, "TEST TEST TEST")
curses.refresh()
curses.wrefresh(my_win)
curses.getch()
destroy_win(my_win)

async.go()
