let s:stopwatch_start_time = 0

function! StopwatchStart()
    let s:stopwatch_start_time = localtime()
endfunction

function! StopwatchElapsedTime()
   if s:stopwatch_start_time
       let s:elapsed_seconds = localtime() - s:stopwatch_start_time
       let s:hours = s:elapsed_seconds / 3600
       let s:minutes = (s:elapsed_seconds - (s:hours * 3600)) / 60
       let s:seconds = s:elapsed_seconds - s:hours * 3600 - s:minutes * 60
       return printf("%02d:%02d:%02d", s:hours, s:minutes, s:seconds)
   else
       return "00:00:00"
   endif
endfunction

function! StopwatchReset()
    let s:stopwatch_start_time = 0
endfunction
