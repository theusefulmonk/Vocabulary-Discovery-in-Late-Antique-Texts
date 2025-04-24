BEGIN { FS = ":"; print "text", ",", "citation" }
{ 
    cutoff = index($1, " ");
    # print "cutoff index is " cutoff # for debugging purposes
    print substr($1, 1, cutoff) ",", $2 
} 
