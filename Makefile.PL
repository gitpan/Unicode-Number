# This Makefile.PL for Unicode-Number was generated by
# inc::UninumMakeMaker <self>
# and Dist::Zilla::Plugin::MakeMaker::Awesome 0.20.
# Don't edit it but the dist.ini and plugins used to construct it.

use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "handle numerals in Unicode using the libuninum library",
  "AUTHOR" => "Zakariyya Mughal <zmughal\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "Alien::Uninum" => 0,
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Unicode-Number",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Unicode::Number",
  "PREREQ_PM" => {
    "Alien::Uninum" => 0,
    "Carp" => 0,
    "Encode" => 0,
    "List::AllUtils" => 0,
    "XSLoader" => 0,
    "constant" => 0,
    "overload" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0,
    "utf8" => 0
  },
  "VERSION" => "0.009",
  "XS" => {
    "lib/Unicode/Number.xs" => "lib/Unicode/Number.c"
  },
  "test" => {
    "TESTS" => "t/*.t"
  }
);
$WriteMakefileArgs{CONFIGURE} = sub {
	require Alien::Uninum;
	my $u = Alien::Uninum->new;
	+{ CCFLAGS => $u->cflags, LIBS => $u->libs };
};


my %FallbackPrereqs = (
  "Alien::Uninum" => 0,
  "Carp" => 0,
  "Encode" => 0,
  "List::AllUtils" => 0,
  "Test::More" => 0,
  "XSLoader" => 0,
  "constant" => 0,
  "overload" => 0,
  "strict" => 0,
  "utf8" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



