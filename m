Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBJWOU6BAMGQE2UXPOAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BC1336F29
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 10:47:19 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id a18sf14947877ioo.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 01:47:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615456038; cv=pass;
        d=google.com; s=arc-20160816;
        b=tB60sphN7BxAKoxkr+w5b+qyknb4Qd3WLsVkOXS5ecLCvpF7YevNbV26TuwDyuaN37
         N1KJJoNk1b6YJ7mF7zHHWy2Ol7gNKltYTcyCUczpaV3HMLmNjMRPjg3txsm9vhsPbq1T
         LaAibX0dF13xX8sqQ/IqT/50s0LVelmAfS+DBtZCHk1/Qkvhj2gyBXhm9AUThZWK8eP2
         3Q2UMtMGrsMwugnFlh7+C74kaIkRvP7uNy07RchcXF+7T4VaFdR0SLPgNr53NB/MCCqD
         ECGlvaE6SVPmmfSo10/+Kl4uWtpwEdTnOg9RBtWU+wt+GsBR/3opGhxZQJiVzSnkwZ3W
         7XOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=eq3TIn8qzv/dUKEtT8AsrLWcFXzq6Wvh/7vJOS8i2Wg=;
        b=GxAB2QwRNEM9v3vFkiw3AS3GWzLIQjj3RyLX1aRX2MfE7wRH/1m5josayXAtjWt6qW
         IWgvGX11autiVfnx8NqvrMffXgDEQ64Y9O6uL5zDvsqhqlzY9BGNqPfwskPqYNEbwDYk
         a2ua/92/04bo6Mb5FAbxwZ4wg+IF8ywl69BCU5F2+teGjduDRja6qn1N4nfm7AlMwHnV
         WnZvJ0yASlWsQMZlAord4OzKAld66BNoyNqjAgkmhQecJJ4PMlTpYQL+Mm1g/iQhDi6D
         bRWa+aJjGssNCGutDR4Lj3vmornm7s//rF3oJLnSdPQjy+RAlWfigmUPoSCufbyaplP+
         ixFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Zfc5G9DJ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eq3TIn8qzv/dUKEtT8AsrLWcFXzq6Wvh/7vJOS8i2Wg=;
        b=b1YodTxksLFobf0RMpaOFmhaAzqLL8Q1LQEEGQhEQkoZ87kC2yjxd62Af1UD3jlFpe
         zqpF5df2hehd2dqpTNOq43im6PqPqT9htRz11qYP4j9INKxOzuURikyb64tyjx5EsTIg
         3CngywVG3Ggh1fTNE9dkjBz8YR6neS+G4fXnjtU2PvdApYeb4KJfoR2Z5taCfACvcgzV
         AFt8HC74eK5O/k3vam7rAALaUGcRk3CkpUXq+BmjGG46e7/lFvcw6acrU50hVCIIYLyf
         CYS/gg1wVAdUb8yWxgOcGIJSjFO234cPn+XTp3Bss7200LIoO6N5MM6bAdTHkoCM5v6U
         Txvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eq3TIn8qzv/dUKEtT8AsrLWcFXzq6Wvh/7vJOS8i2Wg=;
        b=Zl7h8n+irQ/HFlyehXwDV86gCFL2JCtlraILv9iRLkJTYn3lXpsMlb5tdUbZcyXQ/u
         eCpLxAyPDVTEvVgIO6f3ZHPcJ5Vn8YBc2qjF9bA91lkfKhwc4mAIEsByRy2soSIEMj1z
         H7dFNaZZ6zMQwLT6JdbTgm8z6ObEj8nnxt33yY8caNWxCfzB20wrGDIfnzj+DCknnLe3
         jgqQwbvm9RvaJPUPfoEw5cRe9mUVjT1bY/qUv+1SBv0YcYaVrC831eMFi+qTodd/DPMT
         e6mJ7HI4Lcb70quLzFDPD4HLtL1sFvlk0WPWk1PIBw4PuNcG4sORKqQM+u8CPHrk5RQ+
         6Czg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WSwu1pXbKzumCrZd3p3b36qtZ0C4PY5A/vpGxh98ep6jzlISV
	kbv76sGTB9S5V5ss2DCXeiE=
X-Google-Smtp-Source: ABdhPJxLAObfQv5Uk0mEyHh7bPNQGNccKhPW8Qe00Gt9MK70veCJHOBItA5bsaJKN+dLubmwyV8R1A==
X-Received: by 2002:a05:6e02:144d:: with SMTP id p13mr6041033ilo.41.1615456038278;
        Thu, 11 Mar 2021 01:47:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a44:: with SMTP id u4ls1284224ilv.2.gmail; Thu, 11
 Mar 2021 01:47:18 -0800 (PST)
X-Received: by 2002:a92:bd06:: with SMTP id c6mr6482817ile.158.1615456037971;
        Thu, 11 Mar 2021 01:47:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615456037; cv=none;
        d=google.com; s=arc-20160816;
        b=YXyEfUDh1qC8nIk7Ep9gc2DMd+hkQSJrneaJ/q5lsWXSEWg1lQA2zvQEM7RWxYk9E6
         1L1iqcYo6qebOqhabM8LO9E6Dw+lfcqrT0jzQ6Llqkg6uwr+OCZVHjt/qlXr/CVCJU/P
         wjxfvC6IMEJnSZnzWzoH19lxYlBXbl5hKebplbT1iQjth1N36qVjfMGtlEbSjexugUPd
         B7508/IKes7sE+jHSEgbe37nP+v8GzFMXZI+WONERNXxVMkwfhCO7LX1kWp9GLXX0pMH
         L+t0E6BuJxNjJPtryjrFzj1nVWT4k+RQLAhSxI6gDjprlz7zebY7RyKEB+Im+Xcd91YW
         u1/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=jjbmnVqKFp76qPOFfjC0GpprElQxdwE0oKx/WiTAwzU=;
        b=C4EMRCOu0aceVDsiP3hMu9NPGKUV30j7SJCW/CFVn9Yf/fVlIvELf7LgTZ0hA05oRQ
         GoNTUDie99oaQt70DN9QejEK3BhxBs94S1rQZbJF25XUnWAsQt25sLxWTay5wz5eplsO
         fh/wURPW327xEnXp599b7/dHvc5z+LIsANVYBZdCsvW4TmVBYAk85/H6hrpceeCz4quD
         b4ikCB3I6PDukqjTbbfzudIRHhoFP6dnANFG8PuUTHMMasJmTALXzMbbUVc8GQqHskuc
         KhUyrrLBRJkY5KaE5i8e3JWFK8RGbq38u0PR2/kgz3sHB6PGDYPORrqbdeHAwLPPK7qI
         HrzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Zfc5G9DJ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id d2si102937ila.5.2021.03.11.01.47.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 01:47:17 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 12B9kUMn003999;
	Thu, 11 Mar 2021 18:46:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 12B9kUMn003999
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Nicolas Pitre <nico@fluxnic.net>, Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@lindev.ch>,
        Miguel Ojeda <ojeda@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: collect minimum tool versions into scripts/min-tool-version.sh
Date: Thu, 11 Mar 2021 18:46:24 +0900
Message-Id: <20210311094624.923913-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Zfc5G9DJ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Let's make scripts/min-tool-version.sh a central place of minimum tool
versions so you do not need to touch multiple files.

This script prints the minimum version of the given tool.

  $ scripts/min-tool-version.sh gcc
  4.9.0
  $ scripts/min-tool-version.sh llvm
  10.0.1
  $ scripts/min-tool-version.sh binutils
  2.23.0
  $ scripts/min-tool-version.sh foo
  foo: unknown tool

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
---

 scripts/cc-version.sh       | 20 +++++---------------
 scripts/ld-version.sh       | 11 ++++-------
 scripts/min-tool-version.sh | 27 +++++++++++++++++++++++++++
 3 files changed, 36 insertions(+), 22 deletions(-)
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
index 30debf78aa09..5b9481e98b4f 100755
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
@@ -35,10 +30,12 @@ set -- $("$@" --version)
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
index 000000000000..37c438d766d7
--- /dev/null
+++ b/scripts/min-tool-version.sh
@@ -0,0 +1,27 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Print the minimum supported version of the given tool.
+
+set -e
+
+# When you raise the minimum version, please update
+# Documentation/process/changes.rst as well.
+min_gcc_version=4.9.0
+min_llvm_version=10.0.1
+min_icc_version=16.0.3 # temporary
+min_binutils_version=2.23.0
+
+# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
+# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
+if [ "$SRCARCH" = arm64 ]; then
+	min_gcc_version=5.1.0
+fi
+
+eval min_version="\$min_${1}_version"
+if [ -z "$min_version" ]; then
+	echo "$1: unknown tool" >&2
+	exit 1
+fi
+
+echo "$min_version"
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210311094624.923913-1-masahiroy%40kernel.org.
