#!/usr/bin/env ruby

p $KCODE
eacute = ''
eacute << 0303 << 0251
p eacute

$KCODE = 'u'
p $KCODE
p eacute
