

# put default values here
# VAR=default



function usage {
      echo Syntax:
      echo "  $(basename $0) Text  Top Bottom "
      echo "
Text is a three column tab-delimited file.  The first column
is the start time in seconds, second is the end time and the third
is the text to include.  

Top is the top part of the html file before the text is to be inserted

Bottom is the bottom part of the html file before the text is to be inserted.

Example Invocation: insert-text-into-html.sh illumina-text-devel.tex top-part.html bottom-part.html
"
}

if [ $# -eq 0 ]; then
    usage;
    exit 1;
fi;


# uncomment to test for right number of required args
if [ $# -ne 3 ]; then
    usage;
    exit 1;
fi

TEXT=$1
TOP=$2
BOT=$3

# uncomment to process a series of remaining parameters in order
#while (($#)); do
#    VAR=$1;
#    shift;
#done


# first, count the number of lines:
NL=$(awk 'NF>0 {n++} END {print n}' $TEXT) 

# we've gotta backslash escape any quotation marks in the captions.
(
cat $TOP;
sed 's/"/\\"/g'  $TEXT | \
awk -F"\t" -v nl=$NL '
NF>0 {
  ++n;
  printf("\t\t\t{\n\t\t\t\t\"start\": %.2f,\n", $1);
  printf("\t\t\t\t\"end\": %.2f,\n", $2);
  printf("\t\t\t\t\"text\": \"%s\"\n", $3);
  if(n == nl) printf("\t\t\t}\n");
  else printf("\t\t\t},\n");
}';
cat $BOT
) 
