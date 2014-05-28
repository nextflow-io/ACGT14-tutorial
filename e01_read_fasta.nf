
my_file = file("$HOME/ACGT14-tutorial/data/sample.fa")

my_file.splitFasta( by: 3 ) { 
  println it
} 
