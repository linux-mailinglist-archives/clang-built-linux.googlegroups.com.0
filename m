Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTMPX2BAMGQEUFW6PBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBE533C15E
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 17:14:06 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id u15sf23355141qvo.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 09:14:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615824845; cv=pass;
        d=google.com; s=arc-20160816;
        b=kjbeV6eAPsoXO3EFoy/8zudN+7E8vSSKM4RuDmHSDGon6DRs0vrIpNyAJUV7UATkuv
         U87beNId3Y9q6JBUiinCV/7h52XvClEpKsV/mc1Q+3KX+4hA28YQNpXxwSMJUwzbi1sl
         RVLa912LNRCVthCfpqvV2MvGFyNaqFeJPlu6sWOyEg7eFNVaFtrg+TFPWYOcCXLXuOAc
         ERxBEEMH9YR26LNZwDbfyPC8bOPXbURiW/B8x5hjXNJfV0aNZh5Psnjk4Gp7nfH42yac
         hy/zIaFJYeMTlIGVHGPFKChOPnBhfD/J8Dp3C5fMeSDEyBavLLKha1loqK58tQe0PXG2
         slvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=FdPpnSvIk/O0a8mMJ9k9A1C0270xwtfsabv/IyKduA8=;
        b=mB+fbFdLBcb5kj/MDUbLKfhwtD84xiOobwAeZLR2w48DhZcctF6UhIKxg7uGQPRIJg
         jFYHf5r3V0rsrlFsKdH0navnUYVgO0/+Iten6RL/MxZTYwTzI17lVz00SFvwmBiKQSjM
         CHTpta7TqaKTj/qKz8hcYuchG/iw4NHy8DTwG4mr2GFr1rARAqbx8sjNuh92uEgW8AtN
         brKi3FPE2HZLZt2JKzW0UyrjYvkKZYoa46XkAErhvwIrrR5/OCBex8ZzyfzJVUxoW1Tn
         EQCGxeddEef6mmOuDOtxKGToLgJnMFFdtUfrjdWntlOG5LWrjpeHZCDTx8DNFAiMQFDO
         mrcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="RcYj/4XD";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FdPpnSvIk/O0a8mMJ9k9A1C0270xwtfsabv/IyKduA8=;
        b=P7b+h8nJbCI757ynOcmDvd3uBYplWthFyuGIZ/HmaPzkRXGZHbQKCu/KysmMGTujBx
         S5qVPN3IVHwVORrpsTRdTrWMdkq4GHlFTZBYSUYAxTYN1nSqPP6bZYPee2nRP8W8/vy5
         VpZl4FVM6BkMkzxFwgD1AV3hQZ9o3JIOSbbad5sCrJM9w5KHahzIpiVhddIBWHTD78CY
         Ts25Gs6iJXWcMGpD/QyruWGfHoQLGtDAaUsWEdPfGD6kOVH+2pgCt+tExH3YkCfUgMoh
         wmX5LkM1QhrZVEoc4YDWq5F+o7H3n+icV7DwhtN4HAYcScWx45y/VcG2YP33BfWUceG2
         FO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FdPpnSvIk/O0a8mMJ9k9A1C0270xwtfsabv/IyKduA8=;
        b=Il71/7Zr4jL2kJHPzBHocpdewHYgpwLECfpsaqJrJLujes0vvkQuCGRPWO5ej/Vi2V
         472q52wJPrjTJWO2lVxU4Jjhd9hUp0cJpdq+hns+gbdmcXlhJm6aGbky59nWgZKnP2sZ
         oFmIC9Agx63hUe+ET6VBKMYCRxopGTBqq1A40gSk43FCKQxqW0Xpja9Ty0vX5tw0l3ga
         xThS2kiY2zBigzfJo4wZKHmtZ3ormKcfHurUEMN/fxBWJrrOsnPQUpp6FxUFoOZq/pxH
         9G/ymKcnqT5SIaEw6Xp+uo/0l+1aFdMafge42gPvtJH13l11+Xe5jmN3Ei21x3YVic1u
         89FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jS3lZ2q0hieKdZLyAIklBeraabwQwkyzPT4FemXkefMwFcJRY
	WySU0Kbu6ddd8dlbUegN0TM=
X-Google-Smtp-Source: ABdhPJw8udZBFunS5xmLl9OchBs5DkQivpj1fRZ5dw6t0DES0Msr4sqduEM1ZUiNuZnysJS9ZHjRhQ==
X-Received: by 2002:a05:620a:981:: with SMTP id x1mr24980772qkx.501.1615824845419;
        Mon, 15 Mar 2021 09:14:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:254:: with SMTP id c20ls3599944qtx.9.gmail; Mon, 15
 Mar 2021 09:14:05 -0700 (PDT)
X-Received: by 2002:a05:622a:293:: with SMTP id z19mr22844668qtw.309.1615824844926;
        Mon, 15 Mar 2021 09:14:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615824844; cv=none;
        d=google.com; s=arc-20160816;
        b=DPKFXNXlCVEv0487zbCfsIJ2T9NTbf2T7wKYATy7H3mGtcwWmhFqW6PRlPViq5eebx
         65m3Lf2cELrf1DUKxv5xhNPITz7G2cVeqj7yPz1d7hsrbWujJLZ7qu8FZ9iRzF2RYbxJ
         Qrdn1LEN7eznULNspLkb5BjnOvncSK865bVvHsQtSBCaxq1Bo9jrv8AsSeSePNKFEhvG
         h5sklDiWV34oJSLgRpZUZY1TqixJgI1hOtrkmAb0wPmiVWBeEH5QET8At76Jrcm9vN0P
         ZTeo78FmYydQmC48bXnM3MSOK76y2V0NK4Orzr2XWSIEqrZzon4FUmEXhmo1eRX7ZktX
         B37g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=S3/ZJqs3oYqCsCN9gt+RIQZZsklAqK8OVlEl3S2Jwx4=;
        b=AeBWGuGMo0HVeS6bVUP/WYLlHX4uBr8QewfvUpI4Ea9HTLHhdMD0/HYXrZhqA5Uq/4
         7snA/d/KzZ16ePXU++M6lSdMBOVG4AbdfvE7i1y3RSuIrgZ6tR+R9w/wblsYznLla4KA
         1iNZNT07gj/wwjee11AdjHDXRwpTrmv7j8/HLKOD6mL3lCpmSFkhMOYZAHRvPWabPW7n
         Tk9ImVSSuVb/+a/H7lh5jjJDcljgAjFwHN1kL6vxxS+onpS4r9fO7fhtSFYgPA6FlbIx
         5ue0BRJP6dGPFlc48eqg8PFnR1ZuLxo+77ebAg04tyBxFkJdBpYM6lr3hZgi9BIVIQF2
         LzXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="RcYj/4XD";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id o8si541735qtm.5.2021.03.15.09.14.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 09:14:04 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 12FGD7XF030890;
	Tue, 16 Mar 2021 01:13:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 12FGD7XF030890
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@lindev.ch>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] kbuild: collect minimum tool versions into scripts/min-tool-version.sh
Date: Tue, 16 Mar 2021 01:12:55 +0900
Message-Id: <20210315161257.788477-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="RcYj/4XD";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

The kernel build uses various tools, many of which are provided by the
same software suite, for example, LLVM and Binutils.

When you raise the minimum version of Clang/LLVM, you need to update
clang_min_version in scripts/cc-version.sh and also lld_min_version in
scripts/ld-version.sh.

Kbuild can handle CC=clang and LD=ld.lld independently, but it does not
make much sense to maintain their versions separately.

Let's create a central place of minimum tool versions so you do not need
to touch multiple files. scripts/min-tool-version.sh prints the minimum
version of the given tool.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Miguel Ojeda <ojeda@kernel.org>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
---

Changes in v2:
  - Use case ... esac

 scripts/cc-version.sh       | 20 +++++--------------
 scripts/ld-version.sh       | 11 ++++-------
 scripts/min-tool-version.sh | 39 +++++++++++++++++++++++++++++++++++++
 3 files changed, 48 insertions(+), 22 deletions(-)
 create mode 100755 scripts/min-tool-version.sh

diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
index 3f2ee885b116..f1952c522466 100755
--- a/scripts/cc-version.sh
+++ b/scripts/cc-version.sh
@@ -6,18 +6,6 @@
 
 set -e
 
-# When you raise the minimum compiler version, please update
-# Documentation/process/changes.rst as well.
-gcc_min_version=4.9.0
-clang_min_version=10.0.1
-icc_min_version=16.0.3 # temporary
-
-# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
-# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
-if [ "$SRCARCH" = arm64 ]; then
-	gcc_min_version=5.1.0
-fi
-
 # Print the compiler name and some version components.
 get_compiler_info()
 {
@@ -48,18 +36,20 @@ set -- $(get_compiler_info "$@")
 
 name=$1
 
+min_tool_version=$(dirname $0)/min-tool-version.sh
+
 case "$name" in
 GCC)
 	version=$2.$3.$4
-	min_version=$gcc_min_version
+	min_version=$($min_tool_version gcc)
 	;;
 Clang)
 	version=$2.$3.$4
-	min_version=$clang_min_version
+	min_version=$($min_tool_version llvm)
 	;;
 ICC)
 	version=$(($2 / 100)).$(($2 % 100)).$3
-	min_version=$icc_min_version
+	min_version=$($min_tool_version icc)
 	;;
 *)
 	echo "$orig_args: unknown compiler" >&2
diff --git a/scripts/ld-version.sh b/scripts/ld-version.sh
index 1bf3aadde9de..a78b804b680c 100755
--- a/scripts/ld-version.sh
+++ b/scripts/ld-version.sh
@@ -6,11 +6,6 @@
 
 set -e
 
-# When you raise the minimum linker version, please update
-# Documentation/process/changes.rst as well.
-bfd_min_version=2.23.0
-lld_min_version=10.0.1
-
 # Convert the version string x.y.z to a canonical 5 or 6-digit form.
 get_canonical_version()
 {
@@ -35,10 +30,12 @@ set -- $(LC_ALL=C "$@" --version)
 IFS=' '
 set -- $1
 
+min_tool_version=$(dirname $0)/min-tool-version.sh
+
 if [ "$1" = GNU -a "$2" = ld ]; then
 	shift $(($# - 1))
 	version=$1
-	min_version=$bfd_min_version
+	min_version=$($min_tool_version binutils)
 	name=BFD
 	disp_name="GNU ld"
 elif [ "$1" = GNU -a "$2" = gold ]; then
@@ -51,7 +48,7 @@ else
 
 	if [ "$1" = LLD ]; then
 		version=$2
-		min_version=$lld_min_version
+		min_version=$($min_tool_version llvm)
 		name=LLD
 		disp_name=LLD
 	else
diff --git a/scripts/min-tool-version.sh b/scripts/min-tool-version.sh
new file mode 100755
index 000000000000..d22cf91212b0
--- /dev/null
+++ b/scripts/min-tool-version.sh
@@ -0,0 +1,39 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Print the minimum supported version of the given tool.
+# When you raise the minimum version, please update
+# Documentation/process/changes.rst as well.
+
+set -e
+
+if [ $# != 1 ]; then
+	echo "Usage: $0 toolname" >&2
+	exit 1
+fi
+
+case "$1" in
+binutils)
+	echo 2.23.0
+	;;
+gcc)
+	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
+	# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
+	if [ "$SRCARCH" = arm64 ]; then
+		echo 5.1.0
+	else
+		echo 4.9.0
+	fi
+	;;
+icc)
+	# temporary
+	echo 16.0.3
+	;;
+llvm)
+	echo 10.0.1
+	;;
+*)
+	echo "$1: unknown tool" >&2
+	exit 1
+	;;
+esac
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210315161257.788477-1-masahiroy%40kernel.org.
