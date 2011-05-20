#!perl -T
use strict;

use Test::More tests => 4;

BEGIN {
    use_ok('Test::Builder');
    use_ok('Test::Mojibake');
    use_ok('Dist::Zilla');
    use_ok('Dist::Zilla::Plugin::MojibakeTests');
}

diag("Testing Dist::Zilla::Plugin::MojibakeTests $Dist::Zilla::Plugin::MojibakeTests::VERSION, Perl $], $^X");
diag("Using Dist::Zilla $Dist::Zilla::VERSION");
diag("Using Test::Mojibake $Test::Mojibake::VERSION");
diag("Using Test::Builder $Test::Builder::VERSION");
