use strict;
use File::Basename;

my $svn_repo = config()->{svn_repo};
my $outdir = config()->{outdir};

open ( my $fh, '-|' , "svn list $svn_repo" ) or die $!;

while (my $d = <$fh>){
   chomp $d; s{\./}[] for $d;
   set_stdout($d); 
   run_story( 'submodule-add', { module_name => $d })

}

close $fh;

set_stdout('ok');


