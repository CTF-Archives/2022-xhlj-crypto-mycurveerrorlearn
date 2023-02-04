#!/bin/sh

socat -v -s TCP4-LISTEN:9999,tcpwrap=script,reuseaddr,fork EXEC:"sage -u /main.sage",pty,ctty,setsid,stderr