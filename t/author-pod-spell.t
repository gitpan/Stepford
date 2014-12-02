
BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}

use strict;
use warnings;
use Test::More;

# generated by Dist::Zilla::Plugin::Test::PodSpelling 2.006008
use Test::Spelling 0.12;
use Pod::Wordlist;


add_stopwords(<DATA>);
all_pod_files_spelling_ok( qw( bin lib  ) );
__DATA__
Alders
Alders'
Eilam
Eilam's
MaxMind
MaxMind's
Oschwald
Oschwald's
Rolsky
Rolsky's
CopyFiles
CopyFooBarFilesToProduction
DBI
DSL
DSN
GitHub
Stepfile
VERSIONING
YYY
YYYZZZ
iteratively
namespace
namespaces
prepends
serializable
subtypes
timestamp
timestamps
unserializable
username
versioning
Dave
drolsky
Inc
Greg
goschwald
Olaf
oalders
Ran
reilam
lib
Stepford
Planner
Runner
State
Role
Step
Unserializable
Types
Internal
FileGenerator
Plan
Trait
StepDependency
StepProduction
LoggerWithMoniker
Error
FinalStep
Atomic
