#!/usr/bin/env nextflow

params.in = "$HOME/ACGT14-tutorial/data/sample.fa"

sequences = file(params.in)

process splitSequences {

    input:
    file 'input.fa' from sequences

    output:
    file 'seq_*' into records

    """
    csplit input.fa '%^>%' '/^>/' '{*}' -f seq_
    """

}

process reverse {

    input:
    file x from records
    
    output:
    stdout result

    """
    cat $x | rev
    """
}

result.subscribe { println it }
