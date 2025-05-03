# parses the output of pdfgrep -c and totals the result
# At the moment, it doesn't seem to work with the option
# --color=always. I'm not sure why.
BEGIN { 
    FS = ":";
    GREEN = "\033[32m";
    RESET = "\033[0m";
}
{ 
    tot += $2;
    print;
} 
END {print GREEN "total = " tot RESET}
