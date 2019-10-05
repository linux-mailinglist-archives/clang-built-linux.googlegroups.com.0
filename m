Return-Path: <clang-built-linux+bncBDY3NC743AGBBC4S4PWAKGQE5FSG3LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D30DCCB6C
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Oct 2019 18:47:08 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id 10sf10101824qka.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 09:47:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570294027; cv=pass;
        d=google.com; s=arc-20160816;
        b=j3hO0NKMw0wfqz95+3zrwhb4WFrK9++7cFNHzd92ioHwSfZQKG5c/5PW8tNlRAHS3M
         qzX/FkM60JyWeubrNbLcBUcQqADZR55uGunBowBfccJgdUN+o0s6aNObO7ABdrC1O3bU
         sZ2x9pjNzQnB+bJO0gkp0obdoy+Sru3XdIIKy5UhUmmjOIZa7b1ZsZ8IUoZn+BusBC8T
         9sSgAJjr9jxl6o2dCpP9yIZcZSymHD+XIcRrY2UyIw9w33w05zi6+Y5cugN+GxTb3uQe
         5lhOgvs47LFqwn70rnyR4IaqO8/DXrFkTAdiVRO9Q9ccpZMZelVU9oeWy+xC9bQbwnW3
         Jh8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=Qice1pG4t2b7QwNJFwCfXBi8PKxAH9YIpQEt5O3mG5U=;
        b=GygDt2dzU/5pEVnF3AcrODrd0h7gRlavDF9/ylZXpgFo+YREjSf4w9UXLrMJS5b2p5
         oTbin3ojqO/c6YqH/cFGtZ95tmmi6e0P4YD8kM2T5sFSJUbpIZSSPCc0wpUDGUa7d8yP
         pkK33Oy76DEmpQdBxB2b2X83KwxWb4NxoFf4OEcm6pJORCGQjhCVc0ymL6VLNfXbK0kr
         E/VcPQRUVgBN27o3Bv7sPdqtKiU8KZPiwEngtc4of4WcNfamw6ClWgTNxKfIVy0VQk00
         Ub64e2j2rqbA5YZYqUOrNmaHZ8vUk4BE2/G8NrxDN5fFf4OxhcRY7ph+g4pf3S6Qr3wa
         pLnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.220 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qice1pG4t2b7QwNJFwCfXBi8PKxAH9YIpQEt5O3mG5U=;
        b=ZU904UwcOVb6qAPdCduKQsky/IakNn/7is6dJleUHeK8a2jxtIO32B4O4pPyVbPK+t
         TYEitDTtyPet26NT0+AXHLtDDoxTvpUjBv4w1zobEWpbkx3zSqhePnM5KCSHuVYGWEsr
         TFQI7ZIXw1HWAb7C0Xj0yMcN/Wg7IhgB7CP4AS0Vm2lvP96PUrFxQI5tyWsuq2LqJb8u
         RnOO1g0kEyzJdQGPKM0ZVdGkbcnanv8MV4SzsQOed3Pxd8ui+VabGrb0/So1xYsU5o+h
         2bmnLxf42++d2n/cZiko42+vSZ+NRQ1tU7fr386Tn8ENXwHuSNmC6mtyulv4k8OSU7PT
         TAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qice1pG4t2b7QwNJFwCfXBi8PKxAH9YIpQEt5O3mG5U=;
        b=NFbva9WTTiP5siHt4lk2/mq2Bu3FWhg6QFuyD57+qm99kJdIl+vLA2SNZ7KipFPdo/
         cCAaowiOlAdicmkLCYvuIjYbSY2QadX2ouWewgrM3vuZziHRm1wnFi+bldVvBw4CFT2N
         zvn6zEIJrApGl3+k/a6pOifxwprQThmgtFrnQ8mm6Qqnc51zbBwxFUAIRPxBjDxiwNhe
         BkjMQCKIWgML7feMY+cTMPEm40UIC6/u5ZfiV7pu/NudAfNUwvYEHgwgp8+8ZEGDZrD4
         ewfQ9LIPwUL27ZmpGaMSoHh7CQiIyCiOK95BVuJ7+EeC3HhAMdqEUS9FjKeip3ZjIiCE
         2aJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWUWysL2NfxcQnHx5LJQayov409moZsIOtm/Z3ugNMrrGcfok8w
	Zzs4GggbkWsgN1RnmVOesJ8=
X-Google-Smtp-Source: APXvYqxQw9M8bQEJ8+rnbAbMrPyL47MSKPqIb0tlmMIoVR6hv4HpHS8xbiloV9Yc+Nxp1nt6zk5ocw==
X-Received: by 2002:ae9:d8c2:: with SMTP id u185mr15681863qkf.156.1570294027468;
        Sat, 05 Oct 2019 09:47:07 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3341:: with SMTP id u59ls2520496qtd.12.gmail; Sat, 05
 Oct 2019 09:47:07 -0700 (PDT)
X-Received: by 2002:ac8:4641:: with SMTP id f1mr21950985qto.37.1570294027141;
        Sat, 05 Oct 2019 09:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570294027; cv=none;
        d=google.com; s=arc-20160816;
        b=zsLg+h2+cWMmXBqvK15NihQxVic/hTRGlEhq3ebLOaI/tJEHErT1wIBo2geTCzScIL
         ZMYs3UiCyFD1+/hmHRxwPZvm9Pc5ttFcA68Spd0Et49X6iXzwASl0zS5l9kULg7IESlX
         U4xummjbyYc33lbo+sryb5dmod6kcoMBjvb8DpYRR9236R9v5bCXdw4K+Y6v6SxSPpTX
         kGTkyKcAwhqKMlMj9/BSz4VM3Gnp5g9Ejb9gVmcEjh+kOSt7c6YP1PS6NyBzWOtHAB1S
         wAUJIcn/88GgbS6tLek8d+5siBtkmdxARtg2AW6bYuWhLrYdcY0gT4JowebqrSx3YmII
         +mdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=8BHPrc7pwBpo1TJs/ta45OS+//d7NrTqO5keVXp/1pA=;
        b=rLQsLWennFWaU7jN7woQWh9ewT6gPd98fTMrzV3rUHwbn10iaPfTXau/pi2/OBKkd6
         I7MZFCgLa4MESMRpX17VNgS0XkepxnW8l6kU/WgWh7GcDgHZ/2sJ9fzMiCMk12p8E+FG
         E++/AEw6apLINACxCp/WBYlvd6lYNA2WEMTBhg/5ZH0svgq7u9HAChCGqJLAjCa3nwmK
         4yUG3RB7xoZXsixqf/CC6Gk0xEq8NC5dCbxf2KN92go4bS7fs3GSapkxoYu0rPcOTptQ
         cSScFGSB6XZtlhv/AHZICmNS4HPy/Y/+FfZy8FmKAa6Z/zZBuYAwPf+O4j0G8SCXG59Z
         ephw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.220 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0220.hostedemail.com. [216.40.44.220])
        by gmr-mx.google.com with ESMTPS id n67si267122qkc.1.2019.10.05.09.47.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Oct 2019 09:47:07 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.220 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.220;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id A315E18224D63;
	Sat,  5 Oct 2019 16:47:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:327:355:379:541:800:960:967:968:973:982:988:989:1260:1345:1359:1437:1605:1730:1747:1777:1792:2194:2197:2199:2200:2393:2553:2559:2562:2692:2892:2895:3138:3139:3140:3141:3142:3653:3865:3866:3867:3868:3870:3871:3873:3874:4321:4605:4641:4823:5007:6119:6261:6299:6742:7903:7974:8531:8957:9010:9036:9040:10226:11026:11473:11658:11914:12043:12291:12296:12297:12438:12555:12683:12895:12986:14394:14877:21067:21080:21221:21433:21451:21627:21740:21966:30012:30054:30062:30070:30075:30090,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:1:0,LFtime:93,LUA_SUMMARY:none
X-HE-Tag: air95_36932f87d112
X-Filterd-Recvd-Size: 28894
Received: from joe-laptop.perches.com (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Sat,  5 Oct 2019 16:47:03 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Borislav Petkov <bp@alien8.de>,
	"H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>,
	x86@kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Miller <davem@davemloft.net>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 4/4] scripts/cvt_style.pl: Tool to reformat sources in various ways
Date: Sat,  5 Oct 2019 09:46:44 -0700
Message-Id: <4a904777303fbaea75fe0875b7984c33824f4b68.1570292505.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1570292505.git.joe@perches.com>
References: <cover.1570292505.git.joe@perches.com>
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.220 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Trivial tool to reformat source code in various ways.

This is an old tool that was recently updated to convert /* fallthrough */
style comments to the new pseudo-keyword fallthrough;

Typical command line use is:
    $ perl scripts/cvt_style --convert=3Dfallthrough <file list>

Available conversions:
	all
	printk_to_pr_level
	printk_KERN_DEBUG_to_pr_debug
	dev_printk_to_dev_level
	dev_printk_KERN_DEBUG_to_dev_dbg
	sdev_printk_to_sdev_level
	sdev_printk_KERN_DEBUG_to_sdev_dbg
	coalesce_formats
	cuddle_open_brace
	cuddle_else
	deparenthesize_returns
	space_after_KERN_level
	space_after_if_while_for_switch
	space_after_for_semicolons
	space_after_comma
	space_before_pointer
	space_around_trigraph
	leading_spaces_to_tabs
	coalesce_semicolons
	remove_trailing_whitespace
	remove_whitespace_before_quoted_newline
	remove_whitespace_before_trailing_semicolon
	remove_whitespace_before_bracket
	remove_parenthesis_whitespace
	remove_single_statement_braces
	remove_whitespace_after_cast
	hoist_assigns_from_if
	convert_c99_comments
	remove_private_data_casts
	remove_static_initializations_to_0
	remove_true_false_comparisons
	remove_NULL_comparisons
	remove_trailing_if_semicolons
	network_comments
	remove_switchforwhileif_semicolons
	detab_else_return
	remove_while_while
	fallthrough
Additional conversions which may not work well:
	(enable individually or with --convert=3Dall --broken)
	move_labels_to_column_1
	space_around_logical_tests
	space_around_assign
	space_around_arithmetic
	CamelCase_to_camel_case

Use --convert=3D(comma separated list)
   ie: --convert=3Dprintk_to_pr_level,coalesce_formats

Output file:
  --overwrite =3D> write the changes to the source file
  --suffix =3D> suffix to append to new file (default: .style)

Signed-off-by: Joe Perches <joe@perches.com>
---
 scripts/cvt_style.pl | 808 +++++++++++++++++++++++++++++++++++++++++++++++=
++++
 1 file changed, 808 insertions(+)
 create mode 100755 scripts/cvt_style.pl

diff --git a/scripts/cvt_style.pl b/scripts/cvt_style.pl
new file mode 100755
index 000000000000..fcbda0b1c67a
--- /dev/null
+++ b/scripts/cvt_style.pl
@@ -0,0 +1,808 @@
+#!/usr/bin/perl -w
+
+# Change some style elements of a source file
+# An imperfect source code formatter.
+# Might make trivial patches a bit easier.
+#
+# usage: perl scripts/cvt_kernel_style.pl <files>
+#
+# Licensed under the terms of the GNU GPL License version 2
+
+use strict;
+use Getopt::Long qw(:config no_auto_abbrev);
+
+my $P =3D $0;
+my $V =3D '0.4';
+
+my $source_indent =3D 8;
+my $quiet =3D 0;
+my $stats =3D 1;
+my $overwrite =3D 0;
+my $modified =3D 0;
+my $suffix =3D ".style";
+my $convert_options =3D "";
+my $broken =3D 0;
+
+my @std_options =3D (
+    "all",
+    "printk_to_pr_level",
+    "printk_KERN_DEBUG_to_pr_debug",
+    "dev_printk_to_dev_level",
+    "dev_printk_KERN_DEBUG_to_dev_dbg",
+    "sdev_printk_to_sdev_level",
+    "sdev_printk_KERN_DEBUG_to_sdev_dbg",
+    "coalesce_formats",
+    "cuddle_open_brace",
+    "cuddle_else",
+    "deparenthesize_returns",
+    "space_after_KERN_level",
+    "space_after_if_while_for_switch",
+    "space_after_for_semicolons",
+    "space_after_comma",
+    "space_before_pointer",
+    "space_around_trigraph",
+    "leading_spaces_to_tabs",
+    "coalesce_semicolons",
+    "remove_trailing_whitespace",
+    "remove_whitespace_before_quoted_newline",
+    "remove_whitespace_before_trailing_semicolon",
+    "remove_whitespace_before_bracket",
+    "remove_parenthesis_whitespace",
+    "remove_single_statement_braces",
+    "remove_whitespace_after_cast",
+    "hoist_assigns_from_if",
+    "convert_c99_comments",
+    "remove_private_data_casts",
+    "remove_static_initializations_to_0",
+    "remove_true_false_comparisons",
+    "remove_NULL_comparisons",
+    "remove_trailing_if_semicolons",
+    "network_comments",
+    "remove_switchforwhileif_semicolons",
+    "detab_else_return",
+    "remove_while_while",
+    "fallthrough",
+);
+
+my @other_options =3D (
+    "move_labels_to_column_1",
+    "space_around_logical_tests",
+    "space_around_assign",
+    "space_around_arithmetic",
+    "CamelCase_to_camel_case"
+);
+
+my $version =3D 0;
+my $help =3D 0;
+
+my $logFunctions =3D qr{(?x:
+	printk|
+	([a-z0-9_]+)_(debug|dbg|vdbg|devel|info|warn|warning|err|notice|alert|cri=
t|emerg|cont)|
+	WARN|
+	panic
+)};
+
+my $match_balanced_parentheses =3D qr/(\((?:[^\(\)]++|(?-1))*\))/;
+my $match_balanced_braces      =3D qr/(\{(?:[^\{\}]++|(?-1))*\})/;
+my $do_cvt;
+
+my %hash;
+
+sub set_all_options {
+    my ($enabled) =3D @_;
+
+    foreach my $opt (@std_options) {
+	$hash{$opt} =3D $enabled;
+    }
+
+    if ($broken > 0 || $enabled =3D=3D -1) {
+	foreach my $opt (@other_options) {
+	    $hash{$opt} =3D $enabled;
+	}
+    }
+
+}
+
+if (!GetOptions(
+		'source-indent=3Di' =3D> \$source_indent,
+		'convert=3Ds' =3D> \$convert_options,
+		'broken!' =3D> \$broken,
+		'stats!' =3D> \$stats,
+		'o|overwrite!' =3D> \$overwrite,
+		'q|quiet!' =3D> \$quiet,
+		'v|version' =3D> \$version,
+		'h|help|usage' =3D> \$help,
+		)) {
+    die "$P: invalid argument - use --help if necessary\n";
+}
+
+if ($help) {
+    usage();
+    exit 0;
+}
+
+if ($version) {
+    print "$P: v$V\n";
+    exit 0;
+}
+
+my $max_spaces_before_tab =3D $source_indent - 1;
+my $spaces_to_tab =3D sprintf("%*s", $source_indent, "");
+
+set_all_options(-1);
+
+my @actual_options =3D split(',', $convert_options);
+foreach my $opt (@actual_options) {
+    if ($opt eq "all") {
+	set_all_options(0);
+    }
+    if (exists($hash{$opt})) {
+	$hash{$opt} =3D 0;
+    } else {
+	print "Invalid --convert option: '$opt', ignored\n";
+    }
+}
+
+sub usage {
+    print <<EOT;
+usage: $P [options] <files>
+version: $V
+
+EOT
+    print "Available conversions:\n";
+    foreach my $convert (@std_options) {
+	print "\t$convert\n";
+    }
+    print "Additional conversions which may not work well:\n";
+    print "\t(enable individually or with --convert=3Dall --broken)\n";
+    foreach my $convert (@other_options) {
+	print "\t$convert\n";
+    }
+    print "\n";
+    print "Use --convert=3D(comma separated list)\n";
+    print "   ie: --convert=3Dprintk_to_pr_level,coalesce_formats\n";
+    print <<EOT;
+
+Input source file descriptions:
+  --source-indent =3D> How many spaces are used for an indent (default: 8)
+
+Output file:
+  --overwrite =3D> write the changes to the source file
+  --suffix =3D> suffix to append to new file (default: .style)
+
+Other options:
+  --quiet =3D> don't show conversion warning messages (default: disabled)
+  --stats =3D> show conversions done (default: enabled)
+  --version =3D> show version
+  --help =3D> show this help information
+EOT
+}
+
+sub check_label {
+    my ($leading, $label) =3D @_;
+
+    if ($label =3D=3D "default") {
+	return "$leading$label:";
+    }
+    return "$label:";
+}
+
+sub check_for {
+    my ($leading, $test1, $test2, $test3) =3D @_;
+
+    $test1 =3D~ s/^\s+|\s+$//g;
+    $test2 =3D~ s/^\s+|\s+$//g;
+    $test3 =3D~ s/^\s+|\s+$//g;
+
+    return "${leading}for ($test1; $test2; $test3)";
+}
+
+sub tabify {
+    my ($leading) =3D @_;
+
+#convert leading spaces to tabs
+    1 while $leading =3D~ s@^([\t]*)$spaces_to_tab@$1\t@g;
+#Remove spaces before a tab
+    1 while $leading =3D~ s@^([\t]*)([ ]{1,$max_spaces_before_tab})\t@$1\t=
@g;
+
+    return "$leading";
+}
+
+sub expand_tabs {
+    my ($str) =3D @_;
+
+    my $res =3D '';
+    my $n =3D 0;
+    for my $c (split(//, $str)) {
+	if ($c eq "\t") {
+	    $res .=3D ' ';
+	    $n++;
+	    for (; ($n % 8) !=3D 0; $n++) {
+		$res .=3D ' ';
+	    }
+	    next;
+	}
+	$res .=3D $c;
+	$n++;
+    }
+
+    return $res;
+}
+
+sub default_substitute {
+    my ($argument) =3D @_;
+
+    return "$argument";
+}
+
+sub subst_line_mode_fn {
+    my ($lines, $match, $fn, $args) =3D @_;
+
+    my $function =3D \&$fn;
+    my @lines =3D split("\n", $lines);
+    my $count =3D 0;
+
+    foreach my $line (@lines) {
+	my $oldline =3D $line;
+	$line =3D~ s@$match@&$function(eval $args)@ge;
+	$count++ if ($oldline ne $line);
+    }
+
+    return ($count, join("\n", @lines) . "\n");
+}
+
+sub subst_line_mode {
+    my ($lines, $match, $substitute) =3D @_;
+
+    return subst_line_mode_fn($lines, $match, "default_substitute", $subst=
itute);
+}
+
+sub convert {
+    my ($check) =3D @_;
+
+    return 1 if ($hash{$check} >=3D 0);
+
+    return 0;
+}
+
+sub strip_leading_paren {
+    my ($string) =3D @_;
+    $string =3D~ s@^\(\s*@@g;
+    return $string;
+}
+
+sub strip_outer_paren {
+    my ($string) =3D @_;
+    $string =3D~ s@^\(\s*@@g;
+    $string =3D~ s@\s*\)$@@g;
+    return $string;
+}
+
+sub trim_trail {
+    my ($string) =3D @_;
+    $string =3D~ s@\s*$@@g;
+    return $string;
+}
+
+
+foreach my $file (@ARGV) {
+    my $f;
+    my $text;
+    my $oldtext;
+
+# read the file
+
+    next if ((-d $file));
+
+    open($f, '<', $file)
+	or die "$P: Can't open $file for read\n";
+    $oldtext =3D do { local($/) ; <$f> };
+    close($f);
+
+    next if ($oldtext eq "");
+
+    $text =3D $oldtext;
+
+# Convert printk(KERN_<level> to pr_<level>(
+    $do_cvt =3D "printk_to_pr_level";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@\bprintk\s*\(\s*KERN_(INFO|WARNING|ERR|A=
LERT|CRIT|EMERG|NOTICE|CONT)\s*@pr_\L$1\(@g;
+	$text =3D~ s@\bpr_warning\b@pr_warn@g;
+
+	$hash{$do_cvt} +=3D $text =3D~ s@\bprintk_ratelimited\s*\(\s*KERN_(INFO|W=
ARNING|ERR|ALERT|CRIT|EMERG|NOTICE|CONT)\s*@pr_\L$1_ratelimited\(@g;
+	$text =3D~ s@\bpr_warning_ratelimited\b@pr_warn_ratelimited@g;
+
+	$hash{$do_cvt} +=3D $text =3D~ s@\bprintk_once\s*\(\s*KERN_(INFO|WARNING|=
ERR|ALERT|CRIT|EMERG|NOTICE|CONT)\s*@pr_\L$1_once\(@g;
+	$text =3D~ s@\bpr_warning_once\b@pr_warn_once@g;
+    }
+
+# Convert printk(KERN_DEBUG to pr_debug(
+    $do_cvt =3D "printk_KERN_DEBUG_to_pr_debug";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@\bprintk\s*\(\s*KERN_(DEBUG)\s*@pr_\L$1\=
(@g;
+    }
+
+# Convert dev_printk(KERN_<level> to dev_<level>(
+    $do_cvt =3D "dev_printk_to_dev_level";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@\bdev_printk\s*\(\s*KERN_(INFO|WARNING|E=
RR|ALERT|CRIT|EMERG|NOTICE)\s*,\s*@dev_\L$1\(@g;
+	$text =3D~ s@\bdev_warning\b@dev_warn@g;
+
+	$hash{$do_cvt} +=3D $text =3D~ s@\bdev_printk_ratelimited\s*\(\s*KERN_(IN=
FO|WARNING|ERR|ALERT|CRIT|EMERG|NOTICE|CONT)\s*,\s*@dev_\L$1_ratelimited\(@=
g;
+	$text =3D~ s@\bdev_warning_ratelimited\b@dev_warn_ratelimited@g;
+
+	$hash{$do_cvt} +=3D $text =3D~ s@\bdev_printk_once\s*\(\s*KERN_(INFO|WARN=
ING|ERR|ALERT|CRIT|EMERG|NOTICE|CONT)\s*,\s*@dev_\L$1_once\(@g;
+	$text =3D~ s@\bdev_warning_once\b@dev_warn_once@g;
+    }
+
+# Convert dev_printk(KERN_DEBUG to dev_dbg(
+    $do_cvt =3D "dev_printk_KERN_DEBUG_to_dev_dbg";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@\bdev_printk\s*\(\s*KERN_(DEBUG)\s*,\s*@=
dev_dbg\(@g;
+    }
+
+# Convert sdev_printk(KERN_<level> to sdev_<level>(
+    $do_cvt =3D "sdev_printk_to_sdev_level";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@\bsdev_printk\s*\(\s*KERN_(INFO|WARNING|=
ERR|ALERT|CRIT|EMERG|NOTICE)\s*,\s*@sdev_\L$1\(@g;
+	$text =3D~ s@\bsdev_warning\b@sdev_warn@g;
+
+	$hash{$do_cvt} +=3D $text =3D~ s@\bsdev_printk_ratelimited\s*\(\s*KERN_(I=
NFO|WARNING|ERR|ALERT|CRIT|EMERG|NOTICE|CONT)\s*,\s*@sdev_\L$1_ratelimited\=
(@g;
+	$text =3D~ s@\bsdev_warning_ratelimited\b@sdev_warn_ratelimited@g;
+
+	$hash{$do_cvt} +=3D $text =3D~ s@\bsdev_printk_once\s*\(\s*KERN_(INFO|WAR=
NING|ERR|ALERT|CRIT|EMERG|NOTICE|CONT)\s*,\s*@sdev_\L$1_once\(@g;
+	$text =3D~ s@\bsdev_warning_once\b@sdev_warn_once@g;
+    }
+
+# Convert sdev_printk(KERN_DEBUG to sdev_dbg(
+    $do_cvt =3D "sdev_printk_KERN_DEBUG_to_sdev_dbg";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@\bsdev_printk\s*\(\s*KERN_(DEBUG)\s*,\s*=
@sdev_dbg\(@g;
+    }
+
+# Coalesce long formats
+    $do_cvt =3D "coalesce_formats";
+    if (convert($do_cvt)) {
+	my $count =3D 0;
+	do {
+	    $count =3D $text =3D~ s@\b(${logFunctions}\s*\([^;]+)(?!\\n)\"\s*\n\s=
*\"@$1@g;
+	    $hash{$do_cvt} +=3D $count;
+	} while ($count > 0);
+    }
+
+# Add space between KERN_<LEVEL> and open quote
+    $do_cvt =3D "space_after_KERN_level";
+    if (convert($do_cvt)) {
+	my @matches =3D $text =3D~ m@\b(KERN_(DEBUG|INFO|WARNING|ERR|ALERT|CRIT|E=
MERG|NOTICE|CONT)) \"@g;
+	$hash{$do_cvt} -=3D @matches;
+	$hash{$do_cvt} +=3D $text =3D~ s@\b(KERN_(DEBUG|INFO|WARNING|ERR|ALERT|CR=
IT|EMERG|NOTICE|CONT))[ \t]*\"@$1 \"@g;
+    }
+
+# Remove unnecessary parentheses around return
+    $do_cvt =3D "deparenthesize_returns";
+    if (convert($do_cvt)) {
+	my $count =3D 0;
+	do {
+	    $count =3D $text =3D~ s@\breturn\s*${match_balanced_parentheses}\s*;@=
"return " . scalar(strip_outer_paren($1)) . ";"@egx;
+	    $hash{$do_cvt} +=3D $count;
+	} while ($count > 0);
+    }
+
+# This doesn't work very well, too many comments modified
+# Put labels (but not "default:") on column 1
+    $do_cvt =3D "move_labels_to_column_1";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@^([ \t]+)([A-Za-z0-9_]+)\s*:[ \t]*:[ \t]=
*$@check_label($1, $2)@ge;
+    }
+
+# Add space after (if, while, for, switch) and open parenthesis
+    $do_cvt =3D "space_after_if_while_for_switch";
+    if (convert($do_cvt)) {
+	my @matches =3D $text =3D~ m@\b(if|while|for|switch) \(@g;
+	$hash{$do_cvt} -=3D @matches;
+	$hash{$do_cvt} +=3D $text =3D~ s@\b(if|while|for|switch)[ \t]*\(@$1 \(@g;
+    }
+
+# Add space after comma
+    $do_cvt =3D "space_after_comma";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@,(?=3D[\w\(])@, @g;
+    }
+
+# Add spaces around logical tests
+    $do_cvt =3D "space_around_logical_tests";
+    if (convert($do_cvt)) {
+	my $count =3D 0;
+	do {
+	    $count =3D $text =3D~ s@([\)\w]+)(=3D=3D|!=3D|>|>=3D|<|<=3D|&&|\|\|)(=
[\(\w\*\-])@$1 $2 $3@g;
+	    $hash{$do_cvt} +=3D $count;
+	} while ($count > 0);
+    }
+
+# Add spaces around assign
+    $do_cvt =3D "space_around_assign";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@([\)\w]+)(=3D|\+=3D|\-=3D|\*=3D|/=3D|>>=
=3D|<<=3D)([\(\w\*\-])@$1 $2 $3@g;
+    }
+
+# Add spaces around arithmetic
+    $do_cvt =3D "space_around_arithmetic";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@([\)\w]+)(\+|\-)([\(\w\*])@$1 $2 $3@g;
+    }
+
+# Add spaces around trigraph
+    $do_cvt =3D "space_around_trigraph";
+    if (convert($do_cvt)) {
+	my @matches =3D $text =3D~ m@([\)\w\"]+) \? ([\(\)\[\]\w\*\" \t\.\>\-]*[^=
 \t]) \: ([\w\(\"\-])@g;
+	$hash{$do_cvt} -=3D @matches;
+	$hash{$do_cvt} +=3D $text =3D~ s@([\)\w\"]+)[ \t]*\?[ \t]*([\(\)\[\]\w\*\=
" \t\.\>\-]*[^ \t])[ \t]*\:[ \t]*([\w\(\"\-])@$1 ? $2 : $3@g;
+    }
+
+# Use a space before a pointer,
+    $do_cvt =3D "space_before_pointer";
+    if (convert($do_cvt)) {
+	my @matches =3D $text =3D~ m@\bstruct \w+ \*@g;
+	$hash{$do_cvt} -=3D @matches;
+	$hash{$do_cvt} +=3D $text =3D~ s@\bstruct\b\s+(\w+)([\t]+)\*[ \t]*@struct=
 $1$2\*@g;
+	$hash{$do_cvt} +=3D $text =3D~ s@\bstruct\b\s+(\w+) *\*[ \t]*@struct $1 \=
*@g;
+	$hash{$do_cvt} +=3D $text =3D~ s@\bstruct\b\s+(\w+)([ \t]+)\*__@struct $1=
$2\* __@g;
+    }
+
+# Convert "for (foo;bar;baz)" to "for (foo; bar; baz)"
+    $do_cvt =3D "space_after_for_semicolons";
+    if (convert($do_cvt)) {
+	my $count;
+	($count, $text) =3D subst_line_mode_fn($text, '^([ \t]*)for\s*\([ \t]*([^=
;]+);[ \t]*([^;]+);[ \t]*([^\)]+)\)', 'check_for', '$1, $2, $3, $4');
+	$hash{$do_cvt} +=3D $count;
+    }
+
+# cuddle open brace
+    $do_cvt =3D "cuddle_open_brace";
+    if (convert($do_cvt)) {
+	my @matches =3D $text =3D~ m@(\)|\belse\b) \{\n@g;
+	$hash{$do_cvt} -=3D @matches;
+	$hash{$do_cvt} +=3D $text =3D~ s@(\)|\belse\b|\bcase\s+\w+\s*:|\b(?:struc=
t|union)[ \t]*(?:\w+|))[ \t]*[ \t]*\n[ \t]+\{[ \t]*\n@$1 \{\n@g;
+    }
+
+# cuddle else
+    $do_cvt =3D "cuddle_else";
+    if (convert($do_cvt)) {
+	my @matches =3D $text =3D~ m@\} else\b@g;
+	$hash{$do_cvt} -=3D @matches;
+	$hash{$do_cvt} +=3D $text =3D~ s@\}[ \t]*\n[ \t]+else\b@\} else@g;
+    }
+
+# Remove multiple semicolons at end-of-line
+    $do_cvt =3D "coalesce_semicolons";
+    if (convert($do_cvt)) {
+	my $count =3D 0;
+	do {
+	    $count =3D $text =3D~ s@;[ \t]*;[ \t]*\n@;\n@g;
+	    $hash{$do_cvt} +=3D $count;
+	} while ($count > 0);
+    }
+
+# Remove spaces before open bracket
+    $do_cvt =3D "remove_whitespace_before_bracket";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@[ \t]+\[@\[@g;
+    }
+
+# Remove spaces after open parenthesis and before close parenthesis
+    $do_cvt =3D "remove_parenthesis_whitespace";
+    if (convert($do_cvt)) {
+	$text =3D~ s@[ \t]*\)@\)@g;
+	$text =3D~ s@\([ \t]*@\(@g;
+    }
+
+# Convert leading spaces to tabs
+    $do_cvt =3D "leading_spaces_to_tabs";
+    if (convert($do_cvt)) {
+	my $count;
+	($count, $text) =3D subst_line_mode_fn($text, '(^[ \t]+)', 'tabify', '$1'=
);
+	$hash{$do_cvt} +=3D $count;
+    }
+
+# Remove trailing whitespace
+    $do_cvt =3D "remove_trailing_whitespace";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@[ \t]+\n@\n@g;
+	$hash{$do_cvt} +=3D $text =3D~ s@\n+$@\n@g;
+    }
+
+# Remove whitespace before quoted newlines
+    $do_cvt =3D "remove_whitespace_before_quoted_newline";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@(\"[^\"\n]*[^ \t])[ \t]+\\n@$1\\n@g;
+    }
+
+# Remove whitespace before trailing semicolon
+    $do_cvt =3D "remove_whitespace_before_trailing_semicolon";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@(\n[^\n]+)\s+;[ \t]*\n$@$1;\n@g;
+    }
+
+# Remove whitespace after cast
+    $do_cvt =3D "remove_whitespace_after_cast";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@[ \t]*\*[ \t]*\)[ \t]+@ \*\)@g;
+    }
+
+# Convert c99 comments to /* */ (don't convert (http|ftp)://)
+    $do_cvt =3D "convert_c99_comments";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@(?<!:)\/\/[ \t]*(.*)[ \t]*\n+@\/* $1 *\/=
\n@g;
+    }
+
+# Remove braces from single statements (not multiple-line single statement=
s)
+    $do_cvt =3D "remove_single_statement_braces";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@[ \t]*\{[ \t]*\n([^;\{\n]+;)[ \t]*\n[ \t=
]+\}[ \t]*\n@\n$1\n@g;
+    }
+
+# Hoist assigns from if
+    $do_cvt =3D "hoist_assigns_from_if";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@\n([ \t]*)if\s*\(\s*([\!]{0,1})\s*\(\s*(=
[\*\w\-\>\.\[\]]+)\s*=3D\s*(?=3D[^=3D])\s*([\w\-\>\.\* \t\[\]]*\s*${match_b=
alanced_parentheses}*\s*(\?\:\&|\||\>\>|\<\<|\-|\+|\*|\/ \t)*\s*[\w\-\>\.\*=
 \t\[\]]*\s*${match_balanced_parentheses}*)\s*\)@\n$1$3 =3D $4;\n$1if \($2$=
3@gx;
+    }
+
+# Remove casts of private_data
+    $do_cvt =3D "remove_private_data_casts";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s/=3D\s*\(\s*\w+\s*\w+\s*\*\s*\)\s*(\w+)->=
\s*private_data\b/=3D $1->private_data/g;
+    }
+
+# Remove static initializations to 0 or NULL
+
+    $do_cvt =3D "remove_static_initializations_to_0";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s/\b([ \t]*)static\s*([\w\t \*]+)\s*=3D\s*=
(0|NULL)\s*;/"$1static " . scalar(trim_trail($2)) . ";"/egx;
+    }
+
+# Convert "CamelCase" to "camel_case"
+    $do_cvt =3D "CamelCase_to_camel_case";
+    if (convert($do_cvt)) {
+	my $count =3D 0;
+	do {
+	    $count =3D $text =3D~ s/\b([A-Za-z])([a-z_]+)([A-Z])([a-zA-Z]+)\b/\L$=
1\E$2_\L$3\E$4/g;
+	    $hash{$do_cvt} +=3D $count;
+	} while ($count > 0);
+    }
+
+# Remove comparisons to true or false
+    $do_cvt =3D "remove_true_false_comparisons";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s/(\([^\=3D\;\{\}\(]+)=3D=3D\s*true\s*\)/"=
(" . scalar(strip_leading_paren(trim_trail($1))) . ")"/egx;
+	$hash{$do_cvt} +=3D $text =3D~ s/(\([^\!\;\{\}\(]+)!=3D\s*true\s*\)/"(!" =
. scalar(strip_leading_paren(trim_trail($1))) . ")"/egx;
+	$hash{$do_cvt} +=3D $text =3D~ s/(\([^\=3D\;\{\}\(]+)=3D=3D\s*false\s*\)/=
"(!" . scalar(strip_leading_paren(trim_trail($1))) . ")"/egx;
+	$hash{$do_cvt} +=3D $text =3D~ s/(\([^\!\;\{\}\(]+)!=3D\s*false\s*\)/"(" =
. scalar(strip_leading_paren(trim_trail($1))) . ")"/egx;
+    }
+
+# Remove comparisons to NULL
+    $do_cvt =3D "remove_NULL_comparisons";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s/(\([^\=3D\;\{\}\(]+)=3D=3D\s*NULL\s*\)/"=
(!" . scalar(strip_leading_paren(trim_trail($1))) . ")"/egx;
+	$hash{$do_cvt} +=3D $text =3D~ s/(\([^\!\;\{\}\(]+)!=3D\s*NULL\s*\)/"(" .=
 scalar(strip_leading_paren(trim_trail($1))) . ")"/egx;
+    }
+
+# Remove trailing if semicolons
+    $do_cvt =3D "remove_trailing_if_semicolons";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s/\bif(\s*)($match_balanced_parentheses)\s=
*;(?!\s*(else|\/\*))/if$1$2/g;
+    }
+
+# Convert normal comments to network comments
+    $do_cvt =3D "network_comments";
+    if (convert($do_cvt)) {
+	$hash{$do_cvt} +=3D $text =3D~ s@/\*[ \t]*\n[ \t]*\*@/*@g;
+	$hash{$do_cvt} +=3D $text =3D~ s@/\*([ \t]*)([^\n]+)\n[ \t]*\*/@/\*$1$2 \=
*/@g;
+    }
+
+# Remove unnecessary semicolons after switch () {};
+    $do_cvt =3D "remove_switchforwhileif_semicolons";
+    if (convert($do_cvt)) {
+	my $count =3D 0;
+        do {
+	    $count =3D 0;
+	    $count +=3D $text =3D~ s@\b((?:switch|for|while|if)\s*${match_balance=
d_parentheses}\s*)${match_balanced_braces}\s*;@"$1$3"@egx;
+	    $hash{$do_cvt} +=3D $count;
+        } while ($count > 0);
+    }
+
+# detab_else_return
+    $do_cvt =3D "detab_else_return";
+    if (convert($do_cvt)) {
+	my $count =3D 0;
+        do {
+	    $count =3D 0;
+	    $count +=3D $text =3D~ s@(?!else\s+)\b(if\s*${match_balanced_parenthe=
ses}\s*)${match_balanced_braces}\s*else\s*\{?\s*return\s+([^;]+;)\s*\}?@"$1=
$3"@egx;
+	    $hash{$do_cvt} +=3D $count;
+        } while ($count > 0);
+    }
+
+# Remove while while loops
+    $do_cvt =3D "remove_while_while";
+    if (convert($do_cvt)) {
+	my $count =3D 0;
+        do {
+	    $count =3D 0;
+	    $count +=3D $text =3D~ s@(while\s*(${match_balanced_parentheses})\s*$=
{match_balanced_braces})\s*while\s*\2\s*;@$1@egx;
+	    $hash{$do_cvt} +=3D $count;
+        } while ($count > 0);
+    }
+
+# Remove fallthrough comments and convert to fallthrough;
+    $do_cvt =3D "fallthrough";
+    if (convert($do_cvt)) {
+
+	# for style:
+
+	# /* <fallthrough comment> */
+	# case FOO:
+
+	# while (comment has fallthrough and next non-blank, non-continuation lin=
e is (case or default:)) {
+	#   remove newline, whitespace before, fallthrough comment and whitespace=
 after
+	#   insert newline, adjusted spacing and fallthrough; newline
+	# }
+
+	my $count =3D 0;
+	my @fallthroughs =3D (
+	    'fallthrough',
+	    '@fallthrough@',
+	    'lint -fallthrough[ \t]*',
+	    '[ \t.!]*(?:ELSE,? |INTENTIONAL(?:LY)? )?',
+	    'intentional(?:ly)?[ \t]*fall(?:(?:s | |-)[Tt]|t)hr(?:ough|u|ew)',
+	    '(?:else,?\s*)?FALL(?:S | |-)?THR(?:OUGH|U|EW)[ \t.!]*(?:-[^\n\r]*)?'=
,
+	    '[ \t.!]*(?:Else,? |Intentional(?:ly)? )?',
+	    'Fall(?:(?:s | |-)[Tt]|t)hr(?:ough|u|ew)[ \t.!]*(?:-[^\n\r]*)?',
+	    '[ \t.!]*(?:[Ee]lse,? |[Ii]ntentional(?:ly)? )?',
+	    'fall(?:s | |-)?thr(?:ough|u|ew)[ \t.!]*(?:-[^\n\r]*)?',
+	);
+	do {
+	    $count =3D 0;
+	    pos($text) =3D 0;
+	    foreach my $ft (@fallthroughs) {
+		my $regex =3D '(((?:[ \t]*\n)*[ \t]*)(/\*\s*(?!\*/)?\b' . "$ft" . '\s*(?=
!\*/)?\*/(?:[ \t]*\n)*)([ \t]*))(?:case\s+|default\s*:)';
+
+		while ($text =3D~ m{${regex}}i) {
+		    my $all_but_case =3D $1;
+		    my $space_before =3D $2;
+		    my $fallthrough =3D $3;
+		    my $space_after =3D $4;
+		    my $pos_before =3D $-[1];
+		    my $pos_after =3D $+[3];
+
+		    # try to maintain any additional comment on the same line
+		    my $comment =3D "";
+		    if ($regex =3D~ /\\r/) {
+			$comment =3D $fallthrough;
+			$comment =3D~ s@^/\*\s*@@;
+			$comment =3D~ s@\s*\*/\s*$@@;
+			$comment =3D~ s@^\s*(?:intentional(?:ly)?\s+|else,?\s*)?fall[s\-]*\s*th=
r(?:ough|u|ew)[\s\.\-]*@@i;
+			$comment =3D~ s@\s+$@@;
+			$comment =3D~ s@\.*$@@;
+			$comment =3D "\t/* $comment */" if ($comment ne "");
+		    }
+		    substr($text, $pos_before, $pos_after - $pos_before, "");
+		    substr($text, $pos_before, 0, "\n${space_after}\tfallthrough;${comme=
nt}\n");
+		    pos($text) =3D $pos_before;
+		    $count++;
+		}
+	    }
+	    $hash{$do_cvt} +=3D $count;
+        } while ($count > 0);
+
+	# Reset the fallthroughs types to a single regex
+
+	@fallthroughs =3D (
+	    'fall(?:(?:s | |-)[Tt]|t)hr(?:ough|u|ew)'
+	);
+
+	# Convert the // <fallthrough> style comments followed by case/default:
+
+	do {
+	    $count =3D 0;
+	    pos($text) =3D 0;
+	    foreach my $ft (@fallthroughs) {
+		my $regex =3D '(((?:[ \t]*\n)*[ \t]*)(//[ \t]*(?!\n)?\b' . "$ft" . '[ \t=
]*(?!\n)?\n(?:[ \t]*\n)*)([ \t]*))(?:case\s+|default\s*:)';
+		while ($text =3D~ m{${regex}}i) {
+		    my $all_but_case =3D $1;
+		    my $space_before =3D $2;
+		    my $fallthrough =3D $3;
+		    my $space_after =3D $4;
+		    my $pos_before =3D $-[1];
+		    my $pos_after =3D $+[3];
+
+		    substr($text, $pos_before, $pos_after - $pos_before, "");
+		    substr($text, $pos_before, 0, "\n${space_after}\tfallthrough;\n");
+		    pos($text) =3D $pos_before;
+		    $count++;
+		}
+	    }
+	    $hash{$do_cvt} +=3D $count;
+	} while ($count > 0);
+
+	# Convert /* fallthrough */ comment macro lines with trailing \
+
+	do {
+	    $count =3D 0;
+	    pos($text) =3D 0;
+	    foreach my $ft (@fallthroughs) {
+		my $regex =3D '((?:[ \t]*\\\\\n)*([ \t]*)(/\*[ \t]*\b' . "$ft" . '[ \t]*=
\*/)([ \t]*))\\\\\n*([ \t]*(?:case\s+|default\s*:))';
+
+		while ($text =3D~ m{${regex}}i) {
+		    my $all_but_case =3D $1;
+		    my $space_before =3D $2;
+		    my $fallthrough =3D $3;
+		    my $space_after =3D $4;
+		    my $pos_before =3D $-[2];
+		    my $pos_after =3D $+[4];
+
+		    my $oldline =3D "${space_before}${fallthrough}${space_after}";
+		    my $len =3D length(expand_tabs($oldline));
+
+		    my $newline =3D "${space_before}fallthrough;${space_after}";
+		    $newline .=3D "\t" while (length(expand_tabs($newline)) < $len);
+
+		    substr($text, $pos_before, $pos_after - $pos_before, "");
+		    substr($text, $pos_before, 0, "$newline");
+		    pos($text) =3D $pos_before;
+		    $count++;
+		}
+	    }
+	    $hash{$do_cvt} +=3D $count;
+	} while ($count > 0);
+
+    }
+
+# write the file if something was changed
+
+    if ($text ne $oldtext) {
+	my $newfile =3D $file;
+
+	$modified =3D 1;
+
+	if (!$overwrite) {
+	    $newfile =3D "$newfile$suffix";
+	}
+	open($f, '>', $newfile)
+	    or die "$P: Can't open $newfile for write\n";
+	print $f $text;
+	close($f);
+
+	if (!$quiet || $stats) {
+	    if ($overwrite) {
+		print "Converted $file\n";
+	    } else {
+		print "Converted $file to $newfile\n";
+	    }
+	}
+
+	if ($stats) {
+	    while ((my $key, my $value) =3D each(%hash)) {
+		next if ($value <=3D 0);
+		print "$value\t$key\n" if $value;
+		$hash{$key} =3D 0;	#Reset for next file
+	    }
+	}
+    }
+}
+
+
+if ($modified && !$quiet) {
+    print <<EOT;
+
+Warning: these changes may not be correct.
+
+These changes should be carefully reviewed manually and not combined with
+any functional changes.
+
+Compile, build and test your changes.
+
+You should understand and be responsible for all object changes.
+
+Make sure you read Documentation/SubmittingPatches before sending
+any changes to reviewers, maintainers or mailing lists.
+EOT
+}
--=20
2.15.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4a904777303fbaea75fe0875b7984c33824f4b68.1570292505.git.j=
oe%40perches.com.
