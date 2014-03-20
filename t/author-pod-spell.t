
BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}

use strict;
use warnings;
use Test::More;

# generated by Dist::Zilla::Plugin::Test::PodSpelling 2.006002
use Test::Spelling 0.12;
use Pod::Wordlist;


add_stopwords(<DATA>);
all_pod_files_spelling_ok( qw( bin lib  ) );
__DATA__
CopyFiles
CopyFooBarFilesToProduction
DSL
GitHub
Stepfile
VERSIONING
YYY
YYYZZZ
iteratively
manully
namespace
namespaces
subtypes
timestamp
timestamps
versioning
Dave
Rolsky
drolsky
MaxMind
Inc
autarch
Gregory
Oschwald
goschwald
lib
Stepford
Trait
StepDependency
StepProduction
Planner
Error
Types
Internal
Role
Step
FileGenerator
