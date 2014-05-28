my_file = file("$HOME/ACGT14-tutorial/data/sample.fa")

my_file.splitFasta( record: [id: true, sequence:true] ) { fasta ->
  println fasta.id
} 
