
BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.09

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Stepford.pm',
    'lib/Stepford/Error.pm',
    'lib/Stepford/FinalStep.pm',
    'lib/Stepford/LoggerWithMoniker.pm',
    'lib/Stepford/Plan.pm',
    'lib/Stepford/Planner.pm',
    'lib/Stepford/Role/Step.pm',
    'lib/Stepford/Role/Step/FileGenerator.pm',
    'lib/Stepford/Role/Step/FileGenerator/Atomic.pm',
    'lib/Stepford/Role/Step/Unserializable.pm',
    'lib/Stepford/Runner.pm',
    'lib/Stepford/Runner/State.pm',
    'lib/Stepford/Trait/StepDependency.pm',
    'lib/Stepford/Trait/StepProduction.pm',
    'lib/Stepford/Types.pm',
    'lib/Stepford/Types/Internal.pm',
    't/00-compile.t',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/Planner.t',
    't/Runner-inner-steps.t',
    't/Runner-integration.t',
    't/Runner-parallel-unserializable.t',
    't/Runner-parallel.t',
    't/Runner-rebuild-on-missing-files.t',
    't/Runner.t',
    't/Step-FileGenerator-Atomic-fork-bug.t',
    't/Step-FileGenerator-Atomic.t',
    't/Step.t',
    't/author-eol.t',
    't/author-no-tabs.t',
    't/author-pod-spell.t',
    't/lib/Test1/Step/CombineFiles.pm',
    't/lib/Test1/Step/CreateA1.pm',
    't/lib/Test1/Step/CreateA2.pm',
    't/lib/Test1/Step/UpdateFiles.pm',
    't/lib/Test1/StepGroup/CreateAndBackup.pm',
    't/release-cpan-changes.t',
    't/release-pod-coverage.t',
    't/release-pod-syntax.t',
    't/release-portability.t',
    't/release-synopsis.t'
);

notabs_ok($_) foreach @files;
done_testing;
