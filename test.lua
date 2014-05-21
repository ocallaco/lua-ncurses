
local curses = require './init.lua'

curses.initscr()
curses.printw("Hello World !!!")
curses.refresh()
curses.getch()
curses.endwin()

