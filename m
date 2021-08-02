Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBB54UGEAMGQEHO6MJMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9F03DE131
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 23:05:12 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id a133-20020a1f988b0000b029028407337128sf642384vke.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 14:05:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627938311; cv=pass;
        d=google.com; s=arc-20160816;
        b=YvZhyIK/YJopHDTP6tJfGB6hfbyQqtzndA/11GkVhmoDfpUXWL+LzKbqgaJu0XdLpt
         lKome6GhSZZMS4Sci5TaYbjnaONKUrAzQL4/jV24MuCaq2gB8hCgcNIl2SvF8u2uPX50
         dDYGWXF/2IeJrXsEZyknM66jBtFYWkNGk8LS7sj0T0E0JQtUWGQLU9L2dP2KZKNfWUXN
         ui2nDqc48EJWTcNNF3rKvl1dX5RDeHUEbxxBMCQUXAdkFXQkxVAT7D0CPIKfy6KvgBzc
         ddqiRD4B4K/OFLgIP2ka175CJZ0ndiF12+3+5x4z3Ma2GIEueljm5SrbOhZD/7nBtoP9
         yZwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nhroUOJVHfhG652zfcYRoveCwy0bvTuSU6ijU8XWf5o=;
        b=Q964jH6cMQv2wPni2kcEzQT6k42oSSDMMheQA8GzUskYiDuCwX2951Txwo8C/tTS/d
         yre4Xor9Dr5bRmAlzDymUCW+bdmE66NyzrGuDls1I04Hg3/Eh8N7+v2u4jtQhwBM2KXN
         CC0O2sjF854f+MTmZx/EbOHR+bnT6GGwBCQ9VShfTl28Og81I8EmGwSRqFVA/ob+F1SG
         4vhqZVR1hvYVll/hLTJBP7AMNFO2PLyUj6UpFEmMkJRIy4uOw24chOtza5zr6t/kwNZg
         o5fSiGmf8NcgPcLLm3BlXZ3w7kkN60dBYQDW63D0al/EdhPsi47kP8eXqe6/exR456gh
         +6yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VyF3R1c8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nhroUOJVHfhG652zfcYRoveCwy0bvTuSU6ijU8XWf5o=;
        b=VQlceLLcLLTacAoOd0PPZYVc3m5OM4lZVaw1D30C7J4VbaBFaQFg9oGlaXaeHQz/OU
         rzArefwlPbMz2/Kp6Dg4u/rrllJDbeZDENYK33nhl1IWAvxHtiuH2j59bfwZLG5CLiOU
         TROiJdhRLExnkywKcwW0bvjDRKqNFJBU2CDx8Wv9rxLTS9nMQpYP7GLlxAutvI0XVUsy
         YzngOZk8pTZ8di14S6oP91sZMzr7j5JjIn67nhfFA9kDP4C6IbvtjJr5bTnuDfXaLDO5
         42wSIbU5ZyOykkOF3txJ+ko7v2F8fwvXVTxC7ps7wn/56wavWts2Phecck49pgAWOGiX
         3KVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nhroUOJVHfhG652zfcYRoveCwy0bvTuSU6ijU8XWf5o=;
        b=bTFi4fjx4glUOV5ybfuSffgNfOxcaQyEoW4i87nr1LWXwBwNrCS8BpIY0suQtT08wL
         88tvmjyqTh9dg3mdZZ6sUpKKMBPrGm7MKZCVUymCojaJhQkW1jFVqhNMfV7N/dqG/slO
         KBHHdCgKodJF8qdUjGECxhYMVqUhLLsTgid4K52LAmJ3I+HCV8tKboG2P11yZQvjT/T0
         9CsOY3MycbiJ+CesTh+kpTmO5ljw5dr6nnTzm4UO0AVDD/mGVuCeyNaqdoA1r4LV6ybL
         RN1p1QZBcdDW+2roXhziFln8qYE8XQPEHxS3tNTdE8CoL/NjoZGwsYG5TlhTtBxN4EOC
         5KyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XRiTsOcIfcB2ZljlT7ftMf/brfFkRahaxTWvbxQ1zXphZpNqb
	IoUhsQyYUjbpsK84Z1BOeac=
X-Google-Smtp-Source: ABdhPJyUfHYQ3+zetC0EJj35II3IbeyQ/cW6VDnjk8soAG6ypSbiJg81P2oZ2cunr4Jyvt1+viqc+g==
X-Received: by 2002:a67:cc15:: with SMTP id q21mr12278143vsl.12.1627938311600;
        Mon, 02 Aug 2021 14:05:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2f87:: with SMTP id v129ls402495vkv.6.gmail; Mon, 02 Aug
 2021 14:05:11 -0700 (PDT)
X-Received: by 2002:ac5:cc4e:: with SMTP id l14mr10549136vkm.23.1627938311133;
        Mon, 02 Aug 2021 14:05:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627938311; cv=none;
        d=google.com; s=arc-20160816;
        b=Akt378aZsaQVfuGtKBQR011aIQgNJFTPpWbG2xa8OQJbZc33i2gJo8bC0WHUiP7f1H
         +pf0uaXmZcDpBCKGybtx1FTAc+T8963/AXp/OHeVpPnb1Fa3tsasWpUGflqC4XPtEMIK
         zL/9QLl06SUF5qaKFhrcwYuuE6ppfG2OXTrFEK2IR4klL/XitsfnWTffvSZR/T9Blv3e
         U/3sh8y7fLKvnaIm+QngLvBYwyGG316fgjVn1D2+//k65dKTl3KzAPp9jJoLe5xyEe3o
         IgYZHGgltcmrsf+P3rWaUP1Q73bThWD012fa2QTB+kvswT+ZVK+/Bb5MrHzh0Id6vTvp
         lffw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YT/X7psCIeWzZDScWjeW/C3v96Wl1P+CDtRt4wafWvk=;
        b=gRsukUB22GolD553/VSxvOuE9c1BAqUhk9hHH8WpH9xF6YA9Nw5YMFk0boTBW7qFO1
         0NuUA1wbWHycSOjhDV0wUW5wgeFJdc8rTW7pc8G0XfiqCqikBt4iMrNcSGEArybFA14I
         G8jzoRWXYUPvJFPNDNNXn7smQSq11SUS8HCCYgsSIonWbFR1/rL43pRS/n8LeeYytYpW
         /NdBLdBOT3/8vIBBcTATLPUwhnuai7OhjHz5SLkGWgNhlNa3rQ6wb5jiMAFwdZqVICgX
         L1E9Z4Y6nhWM1VVKg4t5Ke/vOzJOeH/q20raaV4YGBlBpPnmjGdfGiG2Vf5KYI5N/q95
         2ISg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VyF3R1c8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p3si366316vso.1.2021.08.02.14.05.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 14:05:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6DCC360F11;
	Mon,  2 Aug 2021 21:05:08 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] scripts/recordmcount.pl: Remove check_objcopy() and $can_use_local
Date: Mon,  2 Aug 2021 14:03:07 -0700
Message-Id: <20210802210307.3202472-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.264.g75ae10bc75
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VyF3R1c8;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

When building ARCH=riscv allmodconfig with llvm-objcopy, the objcopy
version warning from this script appears:

WARNING: could not find objcopy version or version is less than 2.17.
        Local function references are disabled.

The check_objcopy() function in scripts/recordmcount.pl is set up to
parse GNU objcopy's version string, not llvm-objcopy's, which triggers
the warning.

Commit 799c43415442 ("kbuild: thin archives make default for all archs")
made binutils 2.20 mandatory and commit ba64beb17493 ("kbuild: check the
minimum assembler version in Kconfig") enforces this at configuration
time so just remove check_objcopy() and $can_use_local instead, assuming
--globalize-symbol is always available.

llvm-objcopy has supported --globalize-symbol since LLVM 7.0.0 in 2018
and the minimum version for building the kernel with LLVM is 10.0.1 so
there is no issue introduced:

https://github.com/llvm/llvm-project/commit/ee5be798dae30d5f9414b01f76ff807edbc881aa

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Makefile                |  1 -
 scripts/recordmcount.pl | 40 ----------------------------------------
 2 files changed, 41 deletions(-)

diff --git a/Makefile b/Makefile
index 27a072cffcb9..b6ee64dd435e 100644
--- a/Makefile
+++ b/Makefile
@@ -546,7 +546,6 @@ export RCS_TAR_IGNORE := --exclude SCCS --exclude BitKeeper --exclude .svn \
 PHONY += scripts_basic
 scripts_basic:
 	$(Q)$(MAKE) $(build)=scripts/basic
-	$(Q)rm -f .tmp_quiet_recordmcount
 
 PHONY += outputmakefile
 ifdef building_out_of_srctree
diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
index c17e48020ec3..8f6b13ae46bf 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -173,39 +173,6 @@ my $mcount_regex;	# Find the call site to mcount (return offset)
 my $mcount_adjust;	# Address adjustment to mcount offset
 my $alignment;		# The .align value to use for $mcount_section
 my $section_type;	# Section header plus possible alignment command
-my $can_use_local = 0; 	# If we can use local function references
-
-# Shut up recordmcount if user has older objcopy
-my $quiet_recordmcount = ".tmp_quiet_recordmcount";
-my $print_warning = 1;
-$print_warning = 0 if ( -f $quiet_recordmcount);
-
-##
-# check_objcopy - whether objcopy supports --globalize-symbols
-#
-#  --globalize-symbols came out in 2.17, we must test the version
-#  of objcopy, and if it is less than 2.17, then we can not
-#  record local functions.
-sub check_objcopy
-{
-    open (IN, "$objcopy --version |") or die "error running $objcopy";
-    while (<IN>) {
-	if (/objcopy.*\s(\d+)\.(\d+)/) {
-	    $can_use_local = 1 if ($1 > 2 || ($1 == 2 && $2 >= 17));
-	    last;
-	}
-    }
-    close (IN);
-
-    if (!$can_use_local && $print_warning) {
-	print STDERR "WARNING: could not find objcopy version or version " .
-	    "is less than 2.17.\n" .
-	    "\tLocal function references are disabled.\n";
-	open (QUIET, ">$quiet_recordmcount");
-	printf QUIET "Disables the warning from recordmcount.pl\n";
-	close QUIET;
-    }
-}
 
 if ($arch =~ /(x86(_64)?)|(i386)/) {
     if ($bits == 64) {
@@ -434,8 +401,6 @@ if ($filename =~ m,^(.*)(\.\S),) {
 my $mcount_s = $dirname . "/.tmp_mc_" . $prefix . ".s";
 my $mcount_o = $dirname . "/.tmp_mc_" . $prefix . ".o";
 
-check_objcopy();
-
 #
 # Step 1: find all the local (static functions) and weak symbols.
 #         't' is local, 'w/W' is weak
@@ -473,11 +438,6 @@ sub update_funcs
 
     # is this function static? If so, note this fact.
     if (defined $locals{$ref_func}) {
-
-	# only use locals if objcopy supports globalize-symbols
-	if (!$can_use_local) {
-	    return;
-	}
 	$convert{$ref_func} = 1;
     }
 

base-commit: c500bee1c5b2f1d59b1081ac879d73268ab0ff17
-- 
2.32.0.264.g75ae10bc75

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210802210307.3202472-1-nathan%40kernel.org.
