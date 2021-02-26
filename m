Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBG5J4KAQMGQERK7KV5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id ED533325D81
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 07:26:36 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id u188sf5943073pfu.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:26:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614320795; cv=pass;
        d=google.com; s=arc-20160816;
        b=ffuwquxmfSwHbQMxefZB3KSy6TbOaSMBqGK+Bx9WigDr8EWeesaSzJlR8u+CPN0NQR
         5ifdzMHDFRmBil0a+VIh/dKhenTc+z2jeqnVVCZUSURjVzG1bwu0FX2c7dIpsHgBafI9
         nKLEMXgyafimHvR96CSNKtiikKOTrk6sEe1UIHXI5Lf5S1ANeQ0wfLHb2imCGVVa5J/N
         H5D9XEUSWXRgC9IhCW4ra6fkzfyiqrshZbQnMckQcrBeMWC2q/11TPVReYChIurvhUqr
         VL4P7N4QAa4HmZiLr3p3oMQArKQPXXlvmMtwRf5EbVv4ggQXCusGA5bw0malfwMnp2k2
         GdiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=fIQVDiAfHTb9IvR6UtagQBUvdTdCgpptzPfA/QpDwiY=;
        b=RfUhoWyNx5J6FI+NgsQW95TRhS1vEGfdVpJEZrg0TW89hjRkatMgroXOe2DDgVzYr9
         r0HFhBExQV99RtV1wHgUGytFbPJ2f3SRf/J+ISyfR0RlVsjOQYZ4JnRrgqJM5F9Bm/Nk
         pF6QkxFDkOcBA/gSCZSpVshjWZ6oIAmfpTqGeI/LUYGkvIG6Pi8EF7K9BpQqYnQ3WwUe
         14XBOt8J5/394hs4W1p6MowrDzRZrGM8rHAVIwPLUHETpeFOr07aI8V+KBFYtNFlgwk8
         Af9UzUvJ+VguTCgB+HExjPBC18xbWPTTm/UPddnoaUZVq/erX84AY5FjGVRJportB0q4
         MDcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qFK5HKo+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fIQVDiAfHTb9IvR6UtagQBUvdTdCgpptzPfA/QpDwiY=;
        b=OSWAnCNf2QtyV28i73xR4keFQaIm9477Enkhq+U6U7zv2dEG3rU2wcYqJzs8Siu/AJ
         1bbx8zWcB07llq3ffn7c/kR026QvqgCm4YudPdqlnmyMXLQzlZUIRFS4tay0VrSg1ped
         MtvKvODjxF8vV5LZcHNkPehxCt841vLv4Fvq3kOmkp8cMztW4n5ofF4w3UkftFMRkm2k
         8202vmDDt8IcykL8iDj3hehTgzsBkubUkkYnBbk4Y8ggSPxsR3/OQ84YLZcDK9Fzne+d
         a0CApCE8D5iUDiR+PgCPUbWGF8cWvibUgQgXVIIDuW0L/nQVhnlm/MZT3fcUoEAQooQW
         uWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fIQVDiAfHTb9IvR6UtagQBUvdTdCgpptzPfA/QpDwiY=;
        b=gL32aJ7JcJ87qTp4YB0m59WlCwR9K41lF2g9FXzhq0J7bh+BRP9imuahCQm0kS9DGj
         Fe/o5c4qBOZV6FSH006WSq0PGaqo/io7TKxzNUde2q20C+GobkZE1T2LgxcyjiiYPEa6
         oxX5DXM+nIedBcRNirPBYLN9gVPgfiXMxXi0uWAee55uXm0PFfY0M0RmjJZLgVbFxk5H
         kOLJaq/8qWTs7hLgLrdFKda8mPEC5Anuyx4ljGfJHIv9V3nndVRfWvMJpNrnN0yycemu
         KJP/cv/u9Mp5BrggoKyjCEvr9QLa6BiosMVPX+NSYfW+nmdt87XinS4e12jJmPJQx+XY
         AHgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bwoo2TvaI3segrgtkWtF3vcazgyqiVg3pNRnYjqhNvZI9ZGV5
	WZF4YuG6I130hcTLQ6wRxcI=
X-Google-Smtp-Source: ABdhPJwp8ATaklAv0lgxrIO7Ljv4CvvpiRKUtNDPZ8VuBe58PKxv2HWpYLc8NrA3VsWL3OXJm8nf9A==
X-Received: by 2002:a17:902:e884:b029:e1:50bb:683 with SMTP id w4-20020a170902e884b02900e150bb0683mr1866078plg.61.1614320795705;
        Thu, 25 Feb 2021 22:26:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:953:: with SMTP id dw19ls395792pjb.1.canary-gmail;
 Thu, 25 Feb 2021 22:26:34 -0800 (PST)
X-Received: by 2002:a17:90a:5217:: with SMTP id v23mr1897326pjh.126.1614320794709;
        Thu, 25 Feb 2021 22:26:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614320794; cv=none;
        d=google.com; s=arc-20160816;
        b=sgBj37C/0iuS8/S1Je2UVTCWoOphtWBEKzvd6vy+q9PUCb7Lo+QidbPt0Idxlcvbe6
         JU/BZhlxVLO2O4JgkLlH9fYB6e2JHMmeDkGq/wzeEIASBX/5MNyFLJXpFG0VXmsXJJak
         E4wS6kG4f6+4f+qROmPqLl1eaJ9EPjnYnywgasJYbvSk99mzAtEm9IcDvxKO/xUnPuQ/
         cIiTv2BB0dv6q6ANgBxI32GmkELVFI1eO6NOolppddpVbCTKQROpnbIIIPEnrwogM6kH
         PM7wHIw7d0jkJ0fUbx2VeHKDUpJEb5Lor/pNlPITHOtta9vKvYtI/fAHjoTikmTewCIa
         LtGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=LyrVsIEuYAv9pPkWzpKnN5i3nqD4903BbQ4luSd4oVA=;
        b=zz9QSryJSsfRS0m1XfpaELYuKTktacGFBxR7I9xocvXIRYubvfFvU36lBi7WuCkIMN
         8XQFZ2HptmkGEpI1BXUWpSov7egD1iCyVn2S3fCGdk0K95sOG0JJ72C0A/mZ75oo4zfw
         uy9X1zMeqex2nr1JubeVqTTZLjdueUOQ875qdkr4JbijlCNYWdsr6gY2XVizP08J6j3w
         NNxiHDHIaaT6qGMDs5HvHDCUvZJ7LlvAI0CTs9/fKgXjBu3wbtY2ryBbG93E3g2+xo69
         0k2sjyeXLzm/PYw+g+xmie7KLtoOSWPWheR+oGJ1oy7g3AV3PjXj0e8VwiqowZzIBOfj
         Pmaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qFK5HKo+;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id p2si348189pjf.0.2021.02.25.22.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 22:26:34 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from oscar.flets-west.jp (softbank126026090165.bbtec.net [126.26.90.165]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 11Q6PpRG013655;
	Fri, 26 Feb 2021 15:25:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 11Q6PpRG013655
X-Nifty-SrcIP: [126.26.90.165]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH v2] kbuild: fix UNUSED_KSYMS_WHITELIST for Clang LTO
Date: Fri, 26 Feb 2021 15:25:48 +0900
Message-Id: <20210226062548.3334081-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qFK5HKo+;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Commit fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
does not work as expected if the .config file has already specified
CONFIG_UNUSED_KSYMS_WHITELIST="my/own/white/list" before enabling
CONFIG_LTO_CLANG.

So, the user-supplied whitelist and LTO-specific white list must be
independent of each other.

I refactored the shell script so CONFIG_MODVERSIONS and CONFIG_CLANG_LTO
handle whitelists in the same way.

Fixes: fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - Rebase on top of Arnd's patch:
    https://lore.kernel.org/lkml/20210225143456.3829513-1-arnd@kernel.org/

 init/Kconfig                    |  1 -
 scripts/gen_autoksyms.sh        | 35 ++++++++++++++++++++++++---------
 scripts/lto-used-symbollist.txt |  6 ------
 3 files changed, 26 insertions(+), 16 deletions(-)
 delete mode 100644 scripts/lto-used-symbollist.txt

diff --git a/init/Kconfig b/init/Kconfig
index 719871f8727c..64c32300d1b4 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2283,7 +2283,6 @@ config TRIM_UNUSED_KSYMS
 config UNUSED_KSYMS_WHITELIST
 	string "Whitelist of symbols to keep in ksymtab"
 	depends on TRIM_UNUSED_KSYMS
-	default "scripts/lto-used-symbollist.txt" if LTO_CLANG
 	help
 	  By default, all unused exported symbols will be un-exported from the
 	  build when TRIM_UNUSED_KSYMS is selected.
diff --git a/scripts/gen_autoksyms.sh b/scripts/gen_autoksyms.sh
index d54dfba15bf2..da320151e7c3 100755
--- a/scripts/gen_autoksyms.sh
+++ b/scripts/gen_autoksyms.sh
@@ -19,7 +19,26 @@ esac
 # We need access to CONFIG_ symbols
 . include/config/auto.conf
 
-ksym_wl=/dev/null
+needed_symbols=
+
+# Special case for modversions (see modpost.c)
+if [ -n "$CONFIG_MODVERSIONS" ]; then
+	needed_symbols="$needed_symbols module_layout"
+fi
+
+# With CONFIG_LTO_CLANG, LLVM bitcode has not yet been compiled into a binary
+# when the .mod files are generated, which means they don't yet contain
+# references to certain symbols that will be present in the final binaries.
+if [ -n "$CONFIG_LTO_CLANG" ]; then
+	# intrinsic functions
+	needed_symbols="$needed_symbols memcpy memmove memset"
+	# ftrace
+	needed_symbols="$needed_symbols _mcount"
+	# stack protector symbols
+	needed_symbols="$needed_symbols __stack_chk_fail __stack_chk_guard"
+fi
+
+ksym_wl=
 if [ -n "$CONFIG_UNUSED_KSYMS_WHITELIST" ]; then
 	# Use 'eval' to expand the whitelist path and check if it is relative
 	eval ksym_wl="$CONFIG_UNUSED_KSYMS_WHITELIST"
@@ -40,16 +59,14 @@ cat > "$output_file" << EOT
 EOT
 
 [ -f modules.order ] && modlist=modules.order || modlist=/dev/null
-sed 's/ko$/mod/' $modlist |
-xargs -n1 sed -n -e '2{s/ /\n/g;/^$/!p;}' -- |
-cat - "$ksym_wl" |
+
+{
+	sed 's/ko$/mod/' $modlist | xargs -n1 sed -n -e '2p'
+	echo "$needed_symbols"
+	[ -n "$ksym_wl" ] && cat "$ksym_wl"
+} | sed -e 's/ /\n/g' | sed -n -e '/^$/!p' |
 # Remove the dot prefix for ppc64; symbol names with a dot (.) hold entry
 # point addresses.
 sed -e 's/^\.//' |
 sort -u |
 sed -e 's/\(.*\)/#define __KSYM_\1 1/' >> "$output_file"
-
-# Special case for modversions (see modpost.c)
-if [ -n "$CONFIG_MODVERSIONS" ]; then
-	echo "#define __KSYM_module_layout 1" >> "$output_file"
-fi
diff --git a/scripts/lto-used-symbollist.txt b/scripts/lto-used-symbollist.txt
deleted file mode 100644
index 406ada65e926..000000000000
--- a/scripts/lto-used-symbollist.txt
+++ /dev/null
@@ -1,6 +0,0 @@
-memcpy
-memmove
-memset
-_mcount
-__stack_chk_fail
-__stack_chk_guard
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226062548.3334081-1-masahiroy%40kernel.org.
