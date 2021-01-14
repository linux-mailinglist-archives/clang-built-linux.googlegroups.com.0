Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBYUL777QKGQED4HF3LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 723712F59DD
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 05:17:40 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id z20sf2858959pgh.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 20:17:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610597859; cv=pass;
        d=google.com; s=arc-20160816;
        b=wQfnVPTEHSVRlgMlw0hHwXNuaVIoogGRyYi6ooj0ZnPkh30EAfnafPUHNrKbrm/g/L
         vMi5Lvj5cJC4UJZcXRBy4h11Pzr8rDOIA+3neiYE+UnIWtoBt8SFPZhFqqPglw58/xlX
         J58e0YUQ0/BOmFApk/TJIj9F4hE+F6hMXjWnA6cRZr2dDFUFu/zS+l0JeklUzSyxMiAP
         PtHBNE7aeJ4HMUE7pxgnjAEhYn0tjz3OiXtKoIZJvvJnks3WOvzbn6zm5QK+wwt0H3KV
         PiLOF6ASCw40YFeD22RSB5DVIeZ1cM8BTev/I4YWlbk82uzPXln7Sed8Toz5IJzphh40
         OJgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=tSmfO3ZqgTRNCLq1E6yacTwSfRBIxJzumZFZhQL5WSE=;
        b=OASK3sRRcAKhpz9BHf1PV5x1cBX0TF3gvvXMV+2u/aEZYg1ZMNldxKI0QV5LRANW4N
         Q9xWPlwPvhu3GW1/hs62SNC/0ZttXamXioEnee2oiPZxhCIQjbXEJR7qG8s8u4Rz84pm
         WFUrCkPQwsaShVPSqcQoTn11DHxDKLTtjD+7SMz+y5bDn7VStlBdAbmohH9paB5wH0wI
         upmfQ//Jky2v4Lj8ZB6lSi1TOzn8Vx9KONWO49W0Of1sUvMjEus9pW1LQBYZGkcnOcLg
         eHINxhEC6iezAx9fHCS+UjGF/00o6KJWkPrRVCoZo4qH5l8/yrxe65GrGGd6P2h09fhj
         CZBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=WTePnO4W;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tSmfO3ZqgTRNCLq1E6yacTwSfRBIxJzumZFZhQL5WSE=;
        b=V5XChH1TOgoHzP/MPR7LQ1p9LGtKAEO+cNPJ0uBk8oeHNJhZJNSQWzVG3MHteHQF4b
         wVNkVYhpt0/SJLjPiTd3spphivQKuSXIDJ/3d/qVCPfTqN3wHTWNoiC1YKRTn4Qf/3YT
         X2sDky2p+mWQNGKNOeN3QXkbyF3myqsNk98YUb5zcB5PUng6KbuwdWEtao/We9FWj+yY
         wtFlQyhrRsIEed35oHoajPN41OE82jMLxxJpZiO77ix35bOd85mDkHNLkShVp+0b+qTG
         wrEXb8tqKiKa53Wpw+YYToHB0Qj7OYuPXcO+mi743mzTqlN+bxmRR8hIzLqeBKpM3CuC
         7bmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tSmfO3ZqgTRNCLq1E6yacTwSfRBIxJzumZFZhQL5WSE=;
        b=NVj47mP2qtHI/sFbXwurh4+BCyoa7bYqFEG3A2yNb+f6lgdEFSjPIWAddHIDGN2kJK
         BT4D17+7DLAqAjN9c5o+NA57H3ot5y9iHA6X8D2BXmZd64sM+o1+4Mhnw0uqqK1mvxpv
         d7DiYMYDHr4n2TWUZI2QGLiJyFVY/ltUK/RXyfDjUPFPEMi+ASvjXIkQuh0sSPmtMFfX
         447nY80lr9eazBge3Q4aftIBsopDtVkjW/lXyBwaPWMYE9AEgeSz6YMW+f31Cmaj/LGC
         ne6rMytcBLl1FWpEbKya/LI6iU6S41jSF5WkGRnBJzFzU9LUoS0cqT7eSjTEqKjcUGjC
         LvsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uMD4JmGlEDi0FoTx1QctuEVUYnWwcobJpWPKn6zVSfCIQChOx
	zhSdbuo8GuWoMRM6Wk5eL6c=
X-Google-Smtp-Source: ABdhPJxg5JcItozn4Eypl0CFjPRzplt+oPvcny3ZBtYGXuXFxkLjBUT9WQb56LxHqVj6ER8b7Tx7Pg==
X-Received: by 2002:a63:3111:: with SMTP id x17mr5431739pgx.329.1610597858932;
        Wed, 13 Jan 2021 20:17:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4d4f:: with SMTP id j15ls1686980pgt.11.gmail; Wed, 13
 Jan 2021 20:17:38 -0800 (PST)
X-Received: by 2002:aa7:8eda:0:b029:19e:c8c3:ed74 with SMTP id b26-20020aa78eda0000b029019ec8c3ed74mr5650331pfr.66.1610597858248;
        Wed, 13 Jan 2021 20:17:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610597858; cv=none;
        d=google.com; s=arc-20160816;
        b=fXxFZCkWJ+e+sWOcaNG+u9Cb7Af1Nqr+jr4jCd8DxUUGdh2V3PsMsvZWRGhDaTbMeA
         uXPc3YRFp/ffBOt4k/kmZYgkq/L+xeAJO9F6m5mC50UqFES5WOKa5nCZgqAG5VPhz4zp
         sZ3nINVEFVHNKtvPv0ZaMpLScSSfZDMTmR8QAfw42+e0YnQTVHM4f+WLYN1sUW/NZ6Uy
         C7FdkU902IsdiITztTcdRGdLPXBt/40bVLjgX9gmJdeqrQswyykP0//lMJwAQj5iwAaf
         PK71hGuY7C+WlNz0e4NB3HY2zYPXRNpks0wdsZKhUagquNq75fmZnqEkl2PBjCqki9L6
         FAfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=vXt3fQKlnIzjAfWl8omKqKrQwNJT0bJYQbc0iaRJj6U=;
        b=XdOMhX0Xt9q/fw8cy65LUC34FKmqsQnGi/x5r0qBiYdB+qvPOSkrZoQnzRmahMnOc1
         po0jtr6pReH8RQ5SWxCEy9ZFS9X8m5DMlukj0UGHBaEjyleMUEUYiuo/MiOdZslsukAF
         IC0E22nfoVFTJdDQcK2oHvPbicu+onbbnvzYpwOy98Ro31h2NiEKtCdr8YvK/m7ANlLg
         9t+geRCrU5GbtCzB4IIR2UJVUsKat3a4y89v+67gFmFivXvR2NddgREFXJxg8JGwm3V1
         6SD7sD/cT+EncFChZ1tKxtoVkILFDIOvTurUKxommDh47b4YwKhYXbwXvXP4Cixv2drk
         XEPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=WTePnO4W;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id i12si268002plt.3.2021.01.13.20.17.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 20:17:38 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.flets-west.jp (softbank126026094251.bbtec.net [126.26.94.251]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 10E4GUgk019534;
	Thu, 14 Jan 2021 13:16:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 10E4GUgk019534
X-Nifty-SrcIP: [126.26.94.251]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Paul Gortmaker <paul.gortmaker@windriver.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: check the minimum compiler version in Kconfig
Date: Thu, 14 Jan 2021 13:16:23 +0900
Message-Id: <20210114041623.226419-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=WTePnO4W;       spf=softfail
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

Paul Gortmaker reported a regression in the GCC version check [1].
If you use GCC 4.8, the build breaks before showing the error message
"error Sorry, your version of GCC is too old - please use 4.9 or newer."

I do not want to apply his fix-up since it implies we would not be able
to remove any cc-option test. Anyway, I admit checking the GCC version
in <linux/compiler-gcc.h> is too late.

Almost at the same time, Linus also suggested to move the compiler
version error to Kconfig time. [2]

I unified the similar two scripts, gcc-version.sh and clang-version.sh
into the new cc-version.sh. The old scripts invoked the compiler multiple
times (3 times for gcc-version.sh, 4 times for clang-version.sh). I
refactored the code so the new one invokes the compiler just once, and
also tried my best to use shell-builtin commands where possible.

The new script runs faster.

  $ time ./scripts/clang-version.sh clang
  120000

  real    0m0.029s
  user    0m0.012s
  sys     0m0.021s

  $ time ./scripts/cc-version.sh clang
  Clang 120000

  real    0m0.009s
  user    0m0.006s
  sys     0m0.004s

The cc-version.sh also shows the error if the compiler is old:

  $ make defconfig CC=clang-9
  *** Default configuration is based on 'x86_64_defconfig'
  ***
  *** Compiler is too old.
  ***   Your Clang version:    9.0.1
  ***   Minimum Clang version: 10.0.1
  ***
  scripts/Kconfig.include:46: Sorry, this compiler is unsupported.
  make[1]: *** [scripts/kconfig/Makefile:81: defconfig] Error 1
  make: *** [Makefile:602: defconfig] Error 2

I removed the clang version check from <linux/compiler-clang.h>

For now, I did not touch <linux/compiler-gcc.h> in order to avoid
merge conflict with [3], which has been queued up in the arm64 tree.
We will be able to clean it up later.

I put the stub for ICC because I see <linux/compiler-intel.h> although
I am not sure if building the kernel with ICC is well-supported.

[1] https://lkml.org/lkml/2021/1/10/250
[2] https://lkml.org/lkml/2021/1/12/1708
[3] https://lkml.org/lkml/2021/1/12/1533

Fixes: 87de84c9140e ("kbuild: remove cc-option test of -Werror=date-time")
Reported-by: Paul Gortmaker <paul.gortmaker@windriver.com>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 include/linux/compiler-clang.h | 10 -----
 init/Kconfig                   |  9 +++--
 scripts/Kconfig.include        |  6 +++
 scripts/cc-version.sh          | 69 ++++++++++++++++++++++++++++++++++
 scripts/clang-version.sh       | 19 ----------
 scripts/gcc-version.sh         | 20 ----------
 6 files changed, 80 insertions(+), 53 deletions(-)
 create mode 100755 scripts/cc-version.sh
 delete mode 100755 scripts/clang-version.sh
 delete mode 100755 scripts/gcc-version.sh

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 98cff1b4b088..04c0a5a717f7 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -3,16 +3,6 @@
 #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
 #endif
 
-#define CLANG_VERSION (__clang_major__ * 10000	\
-		     + __clang_minor__ * 100	\
-		     + __clang_patchlevel__)
-
-#if CLANG_VERSION < 100001
-#ifndef __BPF_TRACING__
-# error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
-#endif
-#endif
-
 /* Compiler specific definitions for Clang compiler */
 
 /* same as gcc, this was present in clang-2.6 so we can assume it works
diff --git a/init/Kconfig b/init/Kconfig
index b77c60f8b963..01108dd1318b 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -26,11 +26,11 @@ config CC_VERSION_TEXT
 	    and then every file will be rebuilt.
 
 config CC_IS_GCC
-	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q gcc)
+	def_bool $(success,test $(cc-name) = GCC)
 
 config GCC_VERSION
 	int
-	default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
+	default $(cc-version) if CC_IS_GCC
 	default 0
 
 config LD_VERSION
@@ -38,14 +38,15 @@ config LD_VERSION
 	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
 
 config CC_IS_CLANG
-	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
+	def_bool $(success,test $(cc-name) = Clang)
 
 config LD_IS_LLD
 	def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
 
 config CLANG_VERSION
 	int
-	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
+	default $(cc-version) if CC_IS_CLANG
+	default 0
 
 config LLD_VERSION
 	int
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index a5fe72c504ff..cdc8726d2904 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -39,6 +39,12 @@ as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler
 $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
 $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
 
+# Get the compiler name, version, and error out if it is unsupported.
+cc-info := $(shell,scripts/cc-version.sh $(CC))
+$(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is unsupported.)
+cc-name := $(shell,set -- $(cc-info); echo $1)
+cc-version := $(shell,set -- $(cc-info); echo $2)
+
 # Fail if the linker is gold as it's not capable of linking the kernel proper
 $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supported)
 
diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
new file mode 100755
index 000000000000..32df0e2940f5
--- /dev/null
+++ b/scripts/cc-version.sh
@@ -0,0 +1,69 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# Print the compiler name and its version in a 5 or 6-digit form.
+# Also, perform the minimum version check.
+
+set -e
+
+# When you raise the compiler version, please update
+# Documentation/process/changes.rst as well.
+gcc_min_version=4.9.0
+clang_min_version=10.0.1
+
+# print the compiler name, major version, minor version, patchlevel version
+get_compiler_info()
+{
+	cat <<- EOF | "$@" -E -P -x c - 2>/dev/null
+	#if defined(__clang__)
+	Clang	__clang_major__	__clang_minor__	__clang_patchlevel__
+	#elif defined(__INTEL_COMPILER)
+	/* How to get the version of intel compiler? */
+	ICC	0		0		0
+	#elif defined(__GNUC__)
+	GCC	__GNUC__	__GNUC_MINOR__	__GNUC_PATCHLEVEL__
+	#else
+	unsupported	0		0		0
+	#endif
+	EOF
+}
+
+# convert the version to a canonical 5 or 6-digit form for numerical comparison
+get_canonical_version()
+{
+	IFS=.
+	set -- $1
+	echo $((10000 * $1 + 100 * $2 + $3))
+}
+
+# $@ instead of $1 because multiple words might be given e.g. CC="ccache gcc"
+orig_args="$@"
+set -- $(run_preprocessor "$@")
+
+name=$1
+version=$2.$3.$4
+
+case "$name" in
+GCC) min_version=$gcc_min_version;;
+Clang) min_version=$clang_min_version;;
+ICC) ;; # ICC min version undefined?
+*) echo "$orig_args: unknown compiler" >&2; exit 1;;
+esac
+
+cversion=$(get_canonical_version $version)
+
+if [ -n "$min_version" ]; then
+
+	min_cversion=$(get_canonical_version $min_version)
+
+	if [ "$cversion" -lt "$min_cversion" ]; then
+		echo >&2 "***"
+		echo >&2 "*** Compiler is too old."
+		echo >&2 "***   Your $name version:    $version"
+		echo >&2 "***   Minimum $name version: $min_version"
+		echo >&2 "***"
+		exit 1
+	fi
+fi
+
+echo $name $cversion
diff --git a/scripts/clang-version.sh b/scripts/clang-version.sh
deleted file mode 100755
index 6fabf0695761..000000000000
--- a/scripts/clang-version.sh
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-# SPDX-License-Identifier: GPL-2.0
-#
-# clang-version clang-command
-#
-# Print the compiler version of `clang-command' in a 5 or 6-digit form
-# such as `50001' for clang-5.0.1 etc.
-
-compiler="$*"
-
-if ! ( $compiler --version | grep -q clang) ; then
-	echo 0
-	exit 1
-fi
-
-MAJOR=$(echo __clang_major__ | $compiler -E -x c - | tail -n 1)
-MINOR=$(echo __clang_minor__ | $compiler -E -x c - | tail -n 1)
-PATCHLEVEL=$(echo __clang_patchlevel__ | $compiler -E -x c - | tail -n 1)
-printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
diff --git a/scripts/gcc-version.sh b/scripts/gcc-version.sh
deleted file mode 100755
index ae353432539b..000000000000
--- a/scripts/gcc-version.sh
+++ /dev/null
@@ -1,20 +0,0 @@
-#!/bin/sh
-# SPDX-License-Identifier: GPL-2.0
-#
-# gcc-version gcc-command
-#
-# Print the gcc version of `gcc-command' in a 5 or 6-digit form
-# such as `29503' for gcc-2.95.3, `30301' for gcc-3.3.1, etc.
-
-compiler="$*"
-
-if [ ${#compiler} -eq 0 ]; then
-	echo "Error: No compiler specified." >&2
-	printf "Usage:\n\t$0 <gcc-command>\n" >&2
-	exit 1
-fi
-
-MAJOR=$(echo __GNUC__ | $compiler -E -x c - | tail -n 1)
-MINOR=$(echo __GNUC_MINOR__ | $compiler -E -x c - | tail -n 1)
-PATCHLEVEL=$(echo __GNUC_PATCHLEVEL__ | $compiler -E -x c - | tail -n 1)
-printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114041623.226419-1-masahiroy%40kernel.org.
