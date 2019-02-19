#!/usr/bin/awk -f
#!/usr/bin/gawk -E

# gawk -E would let you deal with flags (not POSIX)
# You can however call the command as echo.awk -- -n, but linux hates #!

BEGIN {
  printf ARGV[1]
  for (i=2;i<=(ARGC-1);i++) printf(" %s",ARGV[i])
  print ""
  exit 0
}