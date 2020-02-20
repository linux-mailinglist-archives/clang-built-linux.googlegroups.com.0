Return-Path: <clang-built-linux+bncBDY3NC743AGBBM6ZXPZAKGQE35ADEKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id E2600166856
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 21:31:48 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id n4sf3474819qtv.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 12:31:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582230707; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3weGFgRvPijyvPyP963MI3ph/PSc2AQkjbuFPo/Dw++NWbnnPglIhBN4GXuCAKpW5
         1HovwzMS0EhwMIC6ztAavBiIXc1g33VkbEG+k5ETI96W8CQBTx9LAv/q1Tlbf3PJzUmM
         but0xtbiYJmn1atB8tTL2ziTsfthFM2cICzSSwWJbfg0xwPbUAKPUl89viIFuPprElHp
         6R2+ugGkFqHzq/d0y3SFNz+2C/ZdE1gx5JP0P8vL824Saw0Zag1jMKsEoUy9xFltT7ix
         hYOCy7JICdMV1F72tUVm8bVkTvfQiSFqr0hj2rb6RMlFvN4QwmGTjwUBksSAm6tWU0Xu
         AVlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=37vbmtR0aujIKM7VmK8dAPVQzznJlnJwWExy0R3mxnE=;
        b=ciFHVcbNduekG2Pb1jTXXE4cJfPHAiLoZ7ykuqmQcMKBWg7ZqSrKslVyIeeEa+4ezp
         V7Dlps+ZO8AE+N5A1pwdrM25zQO4o39TfT75rGlIL7z7NsKWVbB+ml1Isep6oxwTKcV6
         Lr+X/gIF+kKMMbmfQwKDCUqUh7e8KrmVjM5oXVWWiNCRxbHU7enBXCmex7inQ7Xnk4b6
         A05iBPtFlOlgP7iOY77oJDUGoyHvYf6XYBlOLJEye0pbc4xqWJ68or8zAI9xUfE9CP5T
         LQNSOgOW+r1IrKXbsD9vkEXw6AmxtWIllygYqI4yjGvIV/p4Z9oLicIcdTZ0wxGGDsuZ
         Tsgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.187 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=37vbmtR0aujIKM7VmK8dAPVQzznJlnJwWExy0R3mxnE=;
        b=QCwDPLH9sQpGJQKGRmuRUGfxLyLjQ4Y9mJmpCB/gkun+G8yhTO86Gg2yleS7wj6ZQU
         5OsAPmMYVP9VeM3DwvNbNvAHtT+S8xbsKGamhnTULbT9r6LvsiIV1tJkEX8zciIgTt/9
         hv8TOWHUJrfEtiYzc2mBCFZNDUMpzMaDS1RL33A56eJCFI3t7Ll5nAtoibQWmLNiLJXR
         Shuv9GJJLM8vxvaBxJIrloMfuZkr26k2RRO3IMTicc1VLsMZo9PBO4iLt0It/cBy6Rve
         cE+8Q4v7clcznX9nrx3HqdMpSXqJjym2WQxImLp1THCPR124hlmYbgBXD25/x4AyFpzg
         9ZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=37vbmtR0aujIKM7VmK8dAPVQzznJlnJwWExy0R3mxnE=;
        b=TRuLsTjbKzCvXXg/GTsqrFtBmYnvqJB6efgQDjE6YMCNYSz8et4yi/yfPJVEEMvN9E
         vqOPn3uPiGFr4xGUCJsuMPT5Yqt0Oq3mT86eknbhT8fB2OjB61kdqoFPtnY2HSY/PZtN
         RFfy7J6IrAzfD35FNdeiQBfwMDexSJYhlWMGl8A9hLFVbK/wOSln0grUrU0TlkeX+saB
         BLkBMsDlWvZT5dMVqMSeHFlb2T8pXL7juVlbqvzKBODPmh7EWVoc2GRzCc/IYZeBd0UK
         3/PqwdUq3KunQuYwk2LyoKDBaDeCwvckWs4RgrknModt9f3mvVP4RE4vQT11inY4pxTK
         14rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWrWEb7dzIalirFhcNSLuVfLhX69CU6dTPWWoDX7TUBWdSirkQO
	y6y+ckPtAozF1Jvn939kAN8=
X-Google-Smtp-Source: APXvYqxXrNNh6ezRYAi/MAfLZXqamunf2OfFxlVwajPweiGORotSfOqRZPp87IuxXLblf4JaM6bRJQ==
X-Received: by 2002:ad4:59c2:: with SMTP id el2mr25999804qvb.152.1582230707624;
        Thu, 20 Feb 2020 12:31:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7583:: with SMTP id s3ls1089787qtq.7.gmail; Thu, 20 Feb
 2020 12:31:47 -0800 (PST)
X-Received: by 2002:ac8:324e:: with SMTP id y14mr23493578qta.362.1582230707278;
        Thu, 20 Feb 2020 12:31:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582230707; cv=none;
        d=google.com; s=arc-20160816;
        b=ek7SxpyAz/Uuo9Qof2Xe9ifg5VfPGRHI3z8/wVvORpy7AUH+OvmT7c9040XiHiI+Xw
         UjEa0vKTuc+ovMbtf2TC8Wm5WxzCYr3FVdWc36GBcMSfCBiErk4f+Qbx0Eu63UJtZ/Rd
         nMX6Q2uWN1+cYHnCu9EwK653v5bZPr2Oqg5U0ougVjmsdDHoMr0JRuy+qZp3ajUmwgYx
         /R+8EPXmao/5WrfDMCxJe77HQHdiSZqXpsDjvYOx4ygOwDgYMRJ3aEtFuS1PxxxknsSG
         HJXgdCiW6oaRaBA6DGcjgi3K5HyjsoIWbhN9R1TiLl8drxVCJKBBhgxv6/zH7WBhJgjF
         S5WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=4hn51ZID6TKriI+m13b7IIm+UkN3XVZ7WFSlcZ2Sy2M=;
        b=nufwNP/CEXsHcAUAhieqX2fmsKLWER3RCQFi53L79j8ro2MWB37tizjGJFA8yKVJCj
         VlLOyiIAFzM5mVVXdjDX4mYE+lnWfENPtVG24dgum57LOWqR7Xpgl3Cu9yviyt0bz5hJ
         rsseU0lNsFUraK6AI0EhPvnez0qLY+lBHrLYkI76I6laNxcHbhHz0cqv8icWAj3QkBPz
         wysXxeRBm8W141DP2ZzgQNXTv+7ICqysVAlKip1ugkYo0IsUt2tABKx5DQFZY31FQETV
         MdvmDhckYsC7EorcwKFSQiyz8cbHMdmVRIlotA3o5XU7/7eW3IQCUWyGlbcuKDBX1QX3
         PKgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.187 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0187.hostedemail.com. [216.40.44.187])
        by gmr-mx.google.com with ESMTPS id g23si23188qki.4.2020.02.20.12.31.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 12:31:47 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.187 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.187;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id C3767182CED5B;
	Thu, 20 Feb 2020 20:31:46 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:2:41:355:379:541:800:960:968:973:982:988:989:1260:1311:1314:1345:1437:1515:1535:1605:1730:1747:1777:1792:2197:2199:2393:2553:2559:2562:2692:3138:3139:3140:3141:3142:3653:3865:3867:3868:3870:3871:3873:4050:4118:4605:4641:5007:6119:6261:6299:7875:7903:7974:8531:8957:10226:10848:11026:11658:11914:12043:12291:12296:12297:12555:12679:12683:12895:12986:13255:13894:14394:14877:21080:21221:21324:21433:21451:21627:21740:21939:21990:30054:30055:30070:30090,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:1:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: jail73_66bdb5886c035
X-Filterd-Recvd-Size: 7972
Received: from joe-laptop.perches.com (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Thu, 20 Feb 2020 20:31:45 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Subject: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */ comments to fallthrough;
Date: Thu, 20 Feb 2020 12:30:21 -0800
Message-Id: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.187 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Content-Type: text/plain; charset="UTF-8"
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

Convert /* fallthrough */ style comments to the pseudo-keyword fallthrough
to allow clang 10 and higher to work at finding missing fallthroughs too.

Requires a git repository and overwrites the input files.

Typical command use:
    ./scripts/cvt_fallthrough.pl <path|file>

i.e.:

   $ ./scripts/cvt_fallthrough.pl block
     converts all files in block and its subdirectories
   $ ./scripts/cvt_fallthrough.pl drivers/net/wireless/zydas/zd1201.c
     converts a single file

A fallthrough comment with additional comments is converted akin to:

-		/* fall through - maybe userspace knows this conn_id. */
+		fallthrough;    /* maybe userspace knows this conn_id */

A fallthrough comment or fallthrough; between successive case statements
is deleted.

e.g.:

    case FOO:
    	/* fallthrough */ (or fallthrough;)
    case BAR:

is converted to:

    case FOO:
    case BAR:

Signed-off-by: Joe Perches <joe@perches.com>
---
 scripts/cvt_fallthrough.pl | 215 +++++++++++++++++++++++++++++++++++++
 1 file changed, 215 insertions(+)
 create mode 100755 scripts/cvt_fallthrough.pl

diff --git a/scripts/cvt_fallthrough.pl b/scripts/cvt_fallthrough.pl
new file mode 100755
index 000000..6585e4
--- /dev/null
+++ b/scripts/cvt_fallthrough.pl
@@ -0,0 +1,215 @@
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
+    my $del = 0;
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
+    # delete any unnecessary fallthrough; between successive cases and default:
+
+    do {
+	pos($text) = 0;
+	$count = $text =~ s/(case\s+\w+\s*:\n)[ \t]*fallthrough;\n((?:\s*default\s*:|\s*case\s+\w+\s*:))/$1$2/;
+	$del += $count;
+    } while ($count > 0);
+
+# write the file if something was changed
+
+    if ($cvt > 0 || $del > 0) {
+	$modified = 1;
+
+	open($f, '>', $file)
+	    or die "$P: Can't open $file for write\n";
+	print $f $text;
+	close($f);
+
+	if (!$quiet) {
+	    print "fallthroughs:";
+	    print "	converted: $cvt" if ($cvt > 0);
+	    print "	deleted: $del" if ($del > 0);
+	    print "	$file\n";
+	}
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
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe%40perches.com.
