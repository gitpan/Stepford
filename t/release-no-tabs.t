
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::NoTabsTests 0.06

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Stepford.pm',
    'lib/Stepford/Error.pm',
    'lib/Stepford/Planner.pm',
    'lib/Stepford/Role/Step.pm',
    'lib/Stepford/Role/Step/FileGenerator.pm',
    'lib/Stepford/Trait/StepDependency.pm',
    'lib/Stepford/Trait/StepProduction.pm',
    'lib/Stepford/Types.pm',
    'lib/Stepford/Types/Internal.pm'
);

notabs_ok($_) foreach @files;
done_testing;
