#!/usr/bin/env bash

trap handle_SIGHUP SIGHUP
trap handle_SIGINT SIGINT
trap handle_SIGQUIT SIGQUIT
trap handle_SIGILL SIGILL
trap handle_SIGTRAP SIGTRAP
trap handle_SIGABRT SIGABRT
trap handle_SIGBUS SIGBUS
trap handle_SIGFPE SIGFPE
trap handle_SIGKILL SIGKILL
trap handle_SIGUSR1 SIGUSR1
trap handle_SIGSEGV SIGSEGV
trap handle_SIGUSR2 SIGUSR2
trap handle_SIGPIPE SIGPIPE
trap handle_SIGALRM SIGALRM
trap handle_SIGTERM SIGTERM
trap handle_SIGSTKFLT SIGSTKFLT
# trap handle_SIGCHLD SIGCHLD # fires every time the sleep exits which isn't helpful
trap handle_SIGCONT SIGCONT
trap handle_SIGSTOP SIGSTOP
trap handle_SIGTSTP SIGTSTP
trap handle_SIGTTIN SIGTTIN
trap handle_SIGTTOU SIGTTOU
trap handle_SIGURG SIGURG
trap handle_SIGXCPU SIGXCPU
trap handle_SIGXFSZ SIGXFSZ
trap handle_SIGVTALRM SIGVTALRM
trap handle_SIGPROF SIGPROF
trap handle_SIGWINCH SIGWINCH
trap handle_SIGIO SIGIO
trap handle_SIGPWR SIGPWR
trap handle_SIGSYS SIGSYS
trap handle_SIGRTMIN SIGRTMIN


handle_signal()
{
  echo "$(date):  ${1}"

  if [ -n "${2}" ]; then
    exit "${2}"
  fi
}

handle_SIGHUP()
{
  handle_signal 'SIGHUP'
  # handle_signal 'SIGHUP' '1'
}

handle_SIGINT()
{
  handle_signal 'SIGINT'
  # handle_signal 'SIGINT' '2'
}

handle_SIGQUIT()
{
  handle_signal 'SIGQUIT'
  # handle_signal 'SIGQUIT' '3'
}

handle_SIGILL()
{
  handle_signal 'SIGILL'
  # handle_signal 'SIGILL' '4'
}

handle_SIGTRAP()
{
  handle_signal 'SIGTRAP'
  # handle_signal 'SIGTRAP' '5'
}

handle_SIGABRT()
{
  handle_signal 'SIGABRT'
  # handle_signal 'SIGABRT' '6'
}

handle_SIGBUS()
{
  handle_signal 'SIGBUS'
  # handle_signal 'SIGBUS' '7'
}

handle_SIGFPE()
{
  handle_signal 'SIGFPE'
  # handle_signal 'SIGFPE' '8'
}

handle_SIGKILL()
{
  handle_signal 'SIGKILL'
  # handle_signal 'SIGKILL' '9'
}

handle_SIGUSR1()
{
  handle_signal 'SIGUSR1'
  # handle_signal 'SIGUSR1' '10'
}

handle_SIGSEGV()
{
  handle_signal 'SIGSEGV'
  # handle_signal 'SIGSEGV' '11'
}

handle_SIGUSR2()
{
  handle_signal 'SIGUSR2'
  # handle_signal 'SIGUSR2' '12'
}

handle_SIGPIPE()
{
  handle_signal 'SIGPIPE'
  # handle_signal 'SIGPIPE' '13'
}

handle_SIGALRM()
{
  handle_signal 'SIGALRM'
  # handle_signal 'SIGALRM' '14'
}

handle_SIGTERM()
{
  handle_signal 'SIGTERM'
  # handle_signal 'SIGTERM' '15'
}

handle_SIGSTKFLT()
{
  handle_signal 'SIGSTKFLT'
  # handle_signal 'SIGSTKFLT' '16'
}

handle_SIGCHLD()
{
  handle_signal 'SIGCHLD'
  # handle_signal 'SIGCHLD' '17'
}

handle_SIGCONT()
{
  handle_signal 'SIGCONT'
  # handle_signal 'SIGCONT' '18'
}

handle_SIGSTOP()
{
  handle_signal 'SIGSTOP'
  # handle_signal 'SIGSTOP' '19'
}

handle_SIGTSTP()
{
  handle_signal 'SIGTSTP'
  # handle_signal 'SIGTSTP' '20'
}

handle_SIGTTIN()
{
  handle_signal 'SIGTTIN'
  # handle_signal 'SIGTTIN' '21'
}

handle_SIGTTOU()
{
  handle_signal 'SIGTTOU'
  # handle_signal 'SIGTTOU' '22'
}

handle_SIGURG()
{
  handle_signal 'SIGURG'
  # handle_signal 'SIGURG' '23'
}

handle_SIGXCPU()
{
  handle_signal 'SIGXCPU'
  # handle_signal 'SIGXCPU' '24'
}

handle_SIGXFSZ()
{
  handle_signal 'SIGXFSZ'
  # handle_signal 'SIGXFSZ' '25'
}

handle_SIGVTALRM()
{
  handle_signal 'SIGVTALRM'
  # handle_signal 'SIGVTALRM' '26'
}

handle_SIGPROF()
{
  handle_signal 'SIGPROF'
  # handle_signal 'SIGPROF' '27'
}

handle_SIGWINCH()
{
  handle_signal 'SIGWINCH'
  # handle_signal 'SIGWINCH' '28'
}

handle_SIGIO()
{
  handle_signal 'SIGIO'
  # handle_signal 'SIGIO' '29'
}

handle_SIGPWR()
{
  handle_signal 'SIGPWR'
  # handle_signal 'SIGPWR' '30'
}

handle_SIGSYS()
{
  handle_signal 'SIGSYS'
  # handle_signal 'SIGSYS' '31'
}

handle_SIGRTMIN()
{
  handle_signal 'SIGRTMIN'
  # handle_signal 'SIGRTMIN' '32'
}

echo "Started as process $$"

# The trapped signals will be investigated every 0.1 seconds when the sleep exits
while true; do
  sleep 0.1
done

