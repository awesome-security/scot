#!/usr/bin/env perl

use warnings;
use strict;
use Daemon::Control;

exit Daemon::Control->new(
    name    =>  "Scot Flair Daemon (scfd)",
    lsb_start   => '$remove_fs',
    lsb_stop    => "",
    lsb_sdesc   => "Scot Flair Daemon",
    lsb_desc    => "Scot Flair Daemon Flairs SCOT data",
    user        => "scot",
    group       => "scot",
    program     => '/opt/scot/bin/flair.pl',
    program_args    => [],
    pid_file    => "/var/run/scfd.pid",
    stderr_file => "/var/log/scot/scfd.stderr",
    stdout_file => "/var/log/scot/scfd.stdout",
    fork        => 2,
)->run;