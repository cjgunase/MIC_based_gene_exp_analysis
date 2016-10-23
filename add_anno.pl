#changed for this file
use warnings;
use strict;

open(pw,"./pathway_ids.csv") or die $!;
my %pwHash = ();
while (<pw>) {
	s/\n\r//;
	chomp;
	my @values=split(",",$_);
	#print "$values[0]\t$values[1]\n";
	$pwHash{$values[0]} = $values[1];


}

open(anno,"./AT_ID_SYM.txt") or die $!;

my %annoHash=();
while(<anno>){
	s/\n\r//;
	chomp;
	my @values=split("\t",$_);
	$annoHash{$values[0]}=$values[1];

 # 	if($values[5] eq "---"){
 # 	       #$annoHash{$values[0]}="$values[0]\t$values[4]\t$values[3]\t$values[2]";
 # 	       $annoHash{$values[0]}="$values[0]\t$values[4]";
 # 	}else{
 # 	       #$annoHash{$values[0]}="$values[5]\t$values[4]\t$values[3]\t$values[2]";
 # 	       $annoHash{$values[0]}="$values[5]\t$values[4]";
 #	}
	
	
}
close(anno);



open(IN,$ARGV[0]);

while (<IN>) {
	s/\n\r//;
	chomp;
	my @values2=split("\t",$_);
	#print "$values2[0]\t$pwHash{$values2[0]}\t$values2[1]\t$annoHash{$values2[1]}\t$values2[2]\t$annoHash{$values2[2]}";
	if(exists $annoHash{$values2[2]}){
		print "$values2[0]\t$pwHash{$values2[0]}\t$values2[1]\t$annoHash{$values2[1]}\t$values2[2]\t$annoHash{$values2[2]}\t$values2[3]\t$values2[4]\t$values2[5]\t$values2[6]\t$values2[7]\t$values2[8]";
		print "\n";
	}else{
		#print "$values2[2]\t********************************\n";
	}
}