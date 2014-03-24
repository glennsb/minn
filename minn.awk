#!/usr/bin/awk -f
# Stuart Glenn - 20140324
# Copyright 2014 Stuart Glenn, Oklahoma Medical Research Foundation
# A quick/simple awk to get the min by groups of n

BEGIN{
  FS="\t";
  line=-1;
  min_p=2147483647;
  min_line="";
  if ( "" == group ) {
    group=10;
  }
  if ( "" == key ) {
    key=3;
  }
}
{
  if ( -1==line )
  {
    print $0;
    line=0;
  } else {
    line++;
    if ( $key < min_p ) {
      min_p = $key;
      min_line = $0;
    }
    if ( group == line ) {
      print min_line;
      line = 0;
      min_line = "";
      min_p=2147483647;
    }
  }
}
END{
  if ( "" != min_line ) {
    print min_line;
  }
}

