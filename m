Return-Path: <clang-built-linux+bncBDY3NC743AGBBLP6QLWQKGQEASPCAZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF03D46D2
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 19:43:10 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id x21sf1228355vsx.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 10:43:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570815789; cv=pass;
        d=google.com; s=arc-20160816;
        b=WShgi3NOHnqFByer1NdzbX8kCcWbXOxjyG1mkYoHNYIFxPQmOaa/Peuu8Nee2LlR/x
         OAuxQ63339koQ9ycQ3q4hvCWcPZL3obslyU9Y3JVbH9cwUeUW6N4HPJ5Qoa9ZGvngHZr
         perzq9v99bTHpJvmpCyYglhjIExEiSFDz23WxRq7HbMqrPTyX7y6WYrcSzwcb/ICD4oD
         s8bgWVlONGA/gNibdjXalP4GXIVJ5M7MU1k6Ei0WUMmWqtZ1k3X6RSUjnZHOvVU+sbOE
         XSK0GozBUAFNf/docit+XaMEYFBomNZwestGQ90ywfNRx6klwcDZtiXQ+/mYXEKQeE5c
         QOvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=q2GfrBFs3Jgp8qocnBWnbgP2LvGyI05H28N8F+XVDjc=;
        b=Z4hn2k77P+3PRdPZSqtDN6pMACESLDu9DDX97RNQiHSGRcwybYPbeQto8jKaR6mzjE
         5ME7hiRdtlybyr2OTQgIRjOG1uFKgz/p07MbG5KpVIrTNLhWYMNoDXqdI3aBc4FfqBTi
         iwTcHYPu/MB/LNpcqadlWvC9Y5eo5NGO/PnaP9Vb2cT7xkOjGLPMKfjXMhgW1rpDtycL
         8cNUaXtAiLGM4VWK9omJK3joGh3XTtFweEjrc2NyTtM9l0iDUYpeHJFFCVrqsIbqm4+N
         fS2/CmxC3BQskRR/1EAa7skShAgk8+Qbb5Nb5RoxJhYoCSM7QVfj1T5IWkZUXmBhvqc1
         yvtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.26 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q2GfrBFs3Jgp8qocnBWnbgP2LvGyI05H28N8F+XVDjc=;
        b=S9A8wyytIKYYHsYg2+LIHfh2NvH0cxeGQdhzTfSP6cPUkpSB+8Cwdbw4Di2B/RfEdB
         iE0eEwhyHn7HzMzwoxl7thkhaH1MDWu8Xqfiuq1az4nxL6bwY8wPAaD5+sX0na3U2kh9
         ZL7UdWa1N2E0fWyHizjyMo631JaLa794d0hq0uYHn4nhJWNIIaRXYw3Zz+MGHBl5c5wi
         zxaU2wpA0ScycIHippJiIJg8tRZvVn7qWu8n0XMENBCyICjY4wOMmE4KSS2hDUA88Axh
         4/8WijDJxYK667NYNxP5Ifcf1tpaMlp8pTb4LQKXDTgfOL/n38SWnjYQLl85Y5go5OmM
         abpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q2GfrBFs3Jgp8qocnBWnbgP2LvGyI05H28N8F+XVDjc=;
        b=qPKjaMG0nnOsha6Z5H0P2MsgXAC1GZrCCV1IgzjU4PTTwo0hnTQ5aXWNPTzTJZX8eE
         gP5z5q+BdZ5/rO3adRHI8XVvMWv9TkAilKBxYVNnINZCggkp3svgemqGGX4LkMo8FtXI
         0c+mSWMvaMr5HrEalTyN10md6ZbCHzBzCOfbgVr63y3yfyRLTqG1aSVfIeM1F1mVGGfa
         kwfkEm67ASMyRXeIBDFgPaGlNzyahG7YmAKSuamO0EetpmPr+9biEtl7kUlgq7kFWyDz
         Z9CWzd4uVM4vgMB3tDPsdJH8sgKCnsbwHOQcxebym+wQg6g44dZ7ek3iterTUrctbTdj
         E4SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUDLNwHLeHEIXpicJsyN+sdvJZx7xjRmRHh5W6iSsYqDOhVMKI7
	9ufl9EFyT3hsGqiL9gqL4OM=
X-Google-Smtp-Source: APXvYqzbLbNSPO1gM3TLO71t4oYu4PvYTlrn36B/F7GGlfWUhGTY/wCKUdgb+JRVIiRfH/vOsqwDOg==
X-Received: by 2002:a05:6102:31ad:: with SMTP id d13mr4395005vsh.4.1570815789763;
        Fri, 11 Oct 2019 10:43:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c883:: with SMTP id v3ls827681vsk.2.gmail; Fri, 11 Oct
 2019 10:43:09 -0700 (PDT)
X-Received: by 2002:a67:d785:: with SMTP id q5mr3635984vsj.190.1570815789375;
        Fri, 11 Oct 2019 10:43:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570815789; cv=none;
        d=google.com; s=arc-20160816;
        b=MjOYgIIpfZaaZet+8E/yIxkKBN5HgbYJeox4kj9zG6bNHkHBCrFMIoIjI5RAhupHgu
         VE0ibSYtJQQ+j1GnAI2toWeuhWJLHuptiT5PiTbOAW/DwageG0aQdXm/FsFe3sIw78Kf
         xFirUc+z0jhK4N4eEbaz8EKvKPGymc1MjtcNF71yi7Dbd8dSTxonzj2i7vsEobWX2tHX
         8cYL/Lb99j05inxhOdkYLlKbZ9daWmmJx/zEgOPNrFbz0xgySWPC/UJVchkeJ/mLuNUd
         q+AIOYBLEMuwRFBA2iebgLmNYuJG52IpEQit9i223n3pBe/l+NmdV2L9I7tION9CicjU
         Y/nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=7f+UfOIEma+iUbh1gzF6KpLZtAxshclOdxOYBhtkhcQ=;
        b=dV6B9BPzByhi8feNddZAdzCcUoJBsyXL2W0dQD4Adn5zZt/hnryaNUqahh9aDVILax
         DSZvbAcrQ0hp4WLYAksba1Fk2+sq/0iPoreB9H6x3m33mS8A8qUyuSsA4BU6moTzoZL2
         1i/j5p+7jMdFrYvINO7xmyrSXG1zS6SC0qIrpF1NqDvekqB+P3mJmD8j2MrtDLDgdmgZ
         B7Zq3ehtBdCKzav+eeDsG4Lc+ORp3gbPkuNeO18xEeP8W2dZlLa6anViInn0IxBmTGBF
         oKbKNng08rpDyrYRyeexueAuweoxnkdfscwxQXmfI2g2fF++Ii0yYN4UP5YdWTVjMU9/
         ZjwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.26 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0026.hostedemail.com. [216.40.44.26])
        by gmr-mx.google.com with ESMTPS id y14si350609vsj.2.2019.10.11.10.43.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 10:43:09 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.26 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.26;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id A41B7181D341A;
	Fri, 11 Oct 2019 17:43:08 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,
X-HE-Tag: cause95_7231ee8247c49
X-Filterd-Recvd-Size: 9632
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Fri, 11 Oct 2019 17:43:04 +0000 (UTC)
Message-ID: <9fe980f7e28242c2835ffae34914c5f68e8268a7.camel@perches.com>
Subject: Re: [PATCH 0/4] treewide: Add 'fallthrough' pseudo-keyword
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: linux-sctp@vger.kernel.org, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>,  Kees Cook <keescook@chromium.org>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,  Thomas
 Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>, "Gustavo A . R
 . Silva" <gustavo@embeddedor.com>,  Arnaldo Carvalho de Melo
 <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>, Namhyung Kim
 <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>, Shawn Landden <shawn@git.icu>, the
 arch/x86 maintainers <x86@kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,  Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, David Miller
 <davem@davemloft.net>,  clang-built-linux
 <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>,
 Vlad Yasevich <vyasevich@gmail.com>, Neil Horman <nhorman@tuxdriver.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, "open
 list:DOCUMENTATION" <linux-doc@vger.kernel.org>,  Netdev
 <netdev@vger.kernel.org>
Date: Fri, 11 Oct 2019 10:43:03 -0700
In-Reply-To: <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
References: <cover.1570292505.git.joe@perches.com>
	 <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.26 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2019-10-11 at 09:29 -0700, Linus Torvalds wrote:
> On Sat, Oct 5, 2019 at 9:46 AM Joe Perches <joe@perches.com> wrote:
> > Add 'fallthrough' pseudo-keyword to enable the removal of comments
> > like '/* fallthrough */'.
> 
> I applied patches 1-3 to my tree just to make it easier for people to
> start doing this. Maybe some people want to do the conversion on their
> own subsystem rather than with a global script, but even if not, this
> looks better as a "prepare for the future" series and I feel that if
> we're doing the "fallthrough" thing eventually, the sooner we do the
> prepwork the better.
> 
> I'm a tiny bit worried that the actual conversion is just going to
> cause lots of pain for the stable people, but I'll not worry about it
> _too_ much. If the stable people decide that it's too painful for them
> to deal with the comment vs keyword model, they may want to backport
> these three patches too.

Shouldn't a conversion script be public somewhere?
The old cvt_style script could be reduced to something like the below.

From: Joe Perches <joe@perches.com>
Date: Fri, 11 Oct 2019 10:34:04 -0700
Subject: [PATCH] scripts:cvt_fallthrough.pl: Add script to convert /* fallthrough */ comments

Convert /* fallthrough */ style comments to the pseudo-keyword fallthrough;
to allow clang 10 and higher to work at finding missing fallthroughs too.

Requires a git repository and this overwrites the input sources.

Run with a path like:

    ./scripts/cvt_fallthrough.pl block

and all files in the path will be converted or a specific file like:

   ./scripts/cvt_fallthrough.pl drivers/net/wireless/zydas/zd1201.c

Signed-off-by: Joe Perches <joe@perches.com>
---
 scripts/cvt_fallthrough.pl | 201 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 201 insertions(+)
 create mode 100755 scripts/cvt_fallthrough.pl

diff --git a/scripts/cvt_fallthrough.pl b/scripts/cvt_fallthrough.pl
new file mode 100755
index 000000000000..013379464f86
--- /dev/null
+++ b/scripts/cvt_fallthrough.pl
@@ -0,0 +1,201 @@
+#!/usr/bin/perl -w
+
+# script to modify /* fallthrough */ style comments to fallthrough;
+# use: perl cvt_fallthrough.pl <paths|files>
+# e.g.: perl cvtfallthrough.pl drivers/net/ethernet/intel
+
+use strict;
+
+my $P = $0;
+my $modified = 0;
+my $quiet = 0;
+
+sub expand_tabs {
+    my ($str) = @_;
+
+    my $res = '';
+    my $n = 0;
+    for my $c (split(//, $str)) {
+	if ($c eq "\t") {
+	    $res .= ' ';
+	    $n++;
+	    for (; ($n % 8) != 0; $n++) {
+		$res .= ' ';
+	    }
+	    next;
+	}
+	$res .= $c;
+	$n++;
+    }
+
+    return $res;
+}
+
+my $args = join(" ", @ARGV);
+my $output = `git ls-files -- $args`;
+my @files = split("\n", $output);
+
+foreach my $file (@files) {
+    my $f;
+    my $cvt = 0;
+    my $text;
+
+# read the file
+
+    next if ((-d $file));
+
+    open($f, '<', $file)
+	or die "$P: Can't open $file for read\n";
+    $text = do { local($/) ; <$f> };
+    close($f);
+
+    next if ($text eq "");
+
+    # for style:
+
+    # /* <fallthrough comment> */
+    # case FOO:
+
+    # while (comment has fallthrough and next non-blank, non-continuation line is (case or default:)) {
+    #   remove newline, whitespace before, fallthrough comment and whitespace after
+    #   insert newline, adjusted spacing and fallthrough; newline
+    # }
+
+    my $count = 0;
+    my @fallthroughs = (
+	'fallthrough',
+	'@fallthrough@',
+	'lint -fallthrough[ \t]*',
+	'[ \t.!]*(?:ELSE,? |INTENTIONAL(?:LY)? )?',
+	'intentional(?:ly)?[ \t]*fall(?:(?:s | |-)[Tt]|t)hr(?:ough|u|ew)',
+	'(?:else,?\s*)?FALL(?:S | |-)?THR(?:OUGH|U|EW)[ \t.!]*(?:-[^\n\r]*)?',
+	'[ \t.!]*(?:Else,? |Intentional(?:ly)? )?',
+	'Fall(?:(?:s | |-)[Tt]|t)hr(?:ough|u|ew)[ \t.!]*(?:-[^\n\r]*)?',
+	'[ \t.!]*(?:[Ee]lse,? |[Ii]ntentional(?:ly)? )?',
+	'fall(?:s | |-)?thr(?:ough|u|ew)[ \t.!]*(?:-[^\n\r]*)?',
+    );
+    do {
+	$count = 0;
+	pos($text) = 0;
+	foreach my $ft (@fallthroughs) {
+	    my $regex = '(((?:[ \t]*\n)*[ \t]*)(/\*\s*(?!\*/)?\b' . "$ft" . '\s*(?!\*/)?\*/(?:[ \t]*\n)*)([ \t]*))(?:case\s+|default\s*:)';
+
+	    while ($text =~ m{${regex}}i) {
+		my $all_but_case = $1;
+		my $space_before = $2;
+		my $fallthrough = $3;
+		my $space_after = $4;
+		my $pos_before = $-[1];
+		my $pos_after = $+[3];
+
+		# try to maintain any additional comment on the same line
+		my $comment = "";
+		if ($regex =~ /\\r/) {
+		    $comment = $fallthrough;
+		    $comment =~ s@^/\*\s*@@;
+		    $comment =~ s@\s*\*/\s*$@@;
+		    $comment =~ s@^\s*(?:intentional(?:ly)?\s+|else,?\s*)?fall[s\-]*\s*thr(?:ough|u|ew)[\s\.\-]*@@i;
+		    $comment =~ s@\s+$@@;
+		    $comment =~ s@\.*$@@;
+		    $comment = "\t/* $comment */" if ($comment ne "");
+		}
+		substr($text, $pos_before, $pos_after - $pos_before, "");
+		substr($text, $pos_before, 0, "\n${space_after}\tfallthrough;${comment}\n");
+		pos($text) = $pos_before;
+		$count++;
+	    }
+	}
+	$cvt += $count;
+        } while ($count > 0);
+
+    # Reset the fallthroughs types to a single regex
+
+    @fallthroughs = (
+	'fall(?:(?:s | |-)[Tt]|t)hr(?:ough|u|ew)'
+    );
+
+    # Convert the // <fallthrough> style comments followed by case/default:
+
+    do {
+	$count = 0;
+	pos($text) = 0;
+	foreach my $ft (@fallthroughs) {
+	    my $regex = '(((?:[ \t]*\n)*[ \t]*)(//[ \t]*(?!\n)?\b' . "$ft" . '[ \t]*(?!\n)?\n(?:[ \t]*\n)*)([ \t]*))(?:case\s+|default\s*:)';
+	    while ($text =~ m{${regex}}i) {
+		my $all_but_case = $1;
+		my $space_before = $2;
+		my $fallthrough = $3;
+		my $space_after = $4;
+		my $pos_before = $-[1];
+		my $pos_after = $+[3];
+
+		substr($text, $pos_before, $pos_after - $pos_before, "");
+		substr($text, $pos_before, 0, "\n${space_after}\tfallthrough;\n");
+		pos($text) = $pos_before;
+		$count++;
+	    }
+	}
+	$cvt += $count;
+    } while ($count > 0);
+
+    # Convert /* fallthrough */ comment macro lines with trailing \
+
+    do {
+	$count = 0;
+	pos($text) = 0;
+	foreach my $ft (@fallthroughs) {
+	    my $regex = '((?:[ \t]*\\\\\n)*([ \t]*)(/\*[ \t]*\b' . "$ft" . '[ \t]*\*/)([ \t]*))\\\\\n*([ \t]*(?:case\s+|default\s*:))';
+
+	    while ($text =~ m{${regex}}i) {
+		my $all_but_case = $1;
+		my $space_before = $2;
+		my $fallthrough = $3;
+		my $space_after = $4;
+		my $pos_before = $-[2];
+		my $pos_after = $+[4];
+
+		my $oldline = "${space_before}${fallthrough}${space_after}";
+		my $len = length(expand_tabs($oldline));
+
+		my $newline = "${space_before}fallthrough;${space_after}";
+		$newline .= "\t" while (length(expand_tabs($newline)) < $len);
+
+		substr($text, $pos_before, $pos_after - $pos_before, "");
+		substr($text, $pos_before, 0, "$newline");
+		pos($text) = $pos_before;
+		$count++;
+	    }
+	}
+	$cvt += $count;
+    } while ($count > 0);
+
+# write the file if something was changed
+
+    if ($cvt > 0) {
+	$modified = 1;
+
+	open($f, '>', $file)
+	    or die "$P: Can't open $file for write\n";
+	print $f $text;
+	close($f);
+
+	print "fallthroughs: $cvt	$file\n" if (!$quiet);
+    }
+}
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
-- 
2.15.0




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9fe980f7e28242c2835ffae34914c5f68e8268a7.camel%40perches.com.
