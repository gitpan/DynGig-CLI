use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'DynGig::CLI',
    AUTHOR              => q{Kan Liu <kan@cpan.org>},
    VERSION_FROM        => 'lib/DynGig/CLI.pm',
    ABSTRACT_FROM       => 'lib/DynGig/CLI.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Carp' => 0,
        'Cwd' => 0,
        'Digest::MD5' => 0,
        'DynGig::Automata' => 1.00,
        'DynGig::Multiplex' => 1.00,
        'DynGig::Range' => 1.00,
        'DynGig::Range::Cluster' => 0,
        'DynGig::RCE' => 1.00,
        'DynGig::Util' => 1.00,
        'File::Spec' => 0,
        'File::Temp' => 0,
        'Getopt::Long' => 0,
        'IO::Select' => 0,
        'Pod::Usage' => 0,
        'POSIX' => 0,
        'Sys::Hostname' => 0,
        'YAML::XS' => 0.38,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'DynGig-CLI-*' },
);
