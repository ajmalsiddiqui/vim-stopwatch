# Vim Stopwatch

A tiny plugin to use a stopwatch within vim.

## Installation

Vim 8 supports packages/plugins natively! So this should work:

```bash
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
git clone https://github.com/ajmalsiddiqui/vim-stopwatch
```

Or feel free to use your favourite vim plugin manager.

## Usage

The plugin only provides a few convenience functions for starting/stopping the stopwatch and reading the time elapsed as a string. Inside vim, you can do the following:

```
" Start the timer
:call StopwatchStart()

" See how much time has elapsed
:echo StopwatchElapsedTime()

" Reset the stopwatch back to 00:00:00
:call StopwatchReset()
```
But this isn't very useful/convenient. I find it most useful to have a stopwatch on my statusline, so I have the following in [my .vimrc](https://github.com/ajmalsiddiqui/dotfiles/blob/master/.vimrc):

```vim
" Feel free to put this in a place on the statusline that you like!
set statusline+=%{StopwatchElapsedTime()}     " Elapsed time on the stopwatch

" But the statusline only updates when you interact with vim
" So let's change that with a hack that updates it every second
call timer_start(1000, {-> execute(':let &stl=&stl')}, {'repeat': -1})
```

## Applications

I wrote this primarily to help me time myself on a coding task because I tend to get distracted easily otherwise. Another useful application is a little help with the Pomodoro technique.

## Contributing

Contributors always welcome! Submit issues if you encounter bugs or want to suggest features, and PRs to fix/implement them.
