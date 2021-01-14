Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBEERQKAAMGQE5FV5SMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE472F68FE
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:08:17 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id k21sf4300421pgh.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:08:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610647696; cv=pass;
        d=google.com; s=arc-20160816;
        b=huAWK+L1Hy4MS87Q8qMtkrbdM8u7ExdwW/xCN31wHzeM2iRd8beD1QtGuhKWwDub3e
         gvR5PVLFJei0IpOxqmsoU08DxaraS5OM9FYx/P/AJo7frgzH7EStYlY+1BMm940p+307
         ZMgtb9LFBINoJvNPXix1x8BF+IR9VLzQdnqlD3PaK5QdiARXJXbaB/F3B01lebXRbm03
         tYTv6dka0Y5ZL8uaHg3IpETgBcIynYPyPDmY3AxacKewa6HD4zuhhM6Ey63YdIjEA3uV
         inUrCSSMuXqiDSofCTXAasERIsyfkVPGcrKvb6PHCsX432YnIF1gMmyMA84v+v4AWGeH
         nMZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=N8wHaP5dV98SfwgOD/VZRqHZf8KBK8eVZSZ1UGvT01M=;
        b=clZj5Ezz2TNktDFd5Hd+JIFJ41IMnzj2X+E18QBnWczQ3j/9x112yCRSAgRAatcfpQ
         hk6y8Rnu2C5deFk/ApUBu297pMK1hZElWQ3IrRoiNpxDKt2/bQuscySIS3Uaue1KlheA
         z0nTR4pQqIwGWFu5yw2RGSFUsGEhnubAXop1BPyGG+1Bw7WEMIGtHoOrzJtUKXKIZaJi
         Uy9h4fRYSa3l3LKIYWtjMQ5AMcz+9jXmLa5TMBoE2QiQe+CAUF0Roy/0fA3j6qX+0+zX
         dUYWDqLUefnXMj7u/wlJIGVGEThv2DSP5RL6/1IbGhDcFb3WFVI2D6YElcuuZpsZKW/S
         fz/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AxHSzizC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N8wHaP5dV98SfwgOD/VZRqHZf8KBK8eVZSZ1UGvT01M=;
        b=bZeB1ckruvuve9nZod+nH/zeUsM0kNpBcdCQIeLdnAQbF8G/QW6aKAHz28zEg4fwQF
         2cLGvqfe0MDF3DHU5Nsfa2nD/b6okOSpnWc3qfpFCr57/OaqwETVZhk74a44yAXjkF2P
         IQ2j7wo5741B+lWR5H0pkcYJwhUcDRaqpiwX4dvF1NvGSWiOjSeJHS2QMRdBKtT9eJ1y
         Mn6vtW91qizgJ3f3SSjfZkl0vaCYJZc45gK1Y3OBoFFW5F2rxtT8t/yCJ95UTY6iYVrU
         nlPM9Rhmg/lnTMQw8NZCk/2lnzoOXCaRadTzZBFBpdG2/iKGEKTY6Pqko7Qoy0++k85Z
         wJZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N8wHaP5dV98SfwgOD/VZRqHZf8KBK8eVZSZ1UGvT01M=;
        b=eXm1HEtHwM9ZpJeqQ7zsX6cH43gIQBFJflwrBKIHtjuU/LTuLHns4h40Z9pPqrAYM/
         64n9/PNc9qXuGYz869dUF3VLuBpr5/Exb3On7TooSPCQ97gt/avTtCdcjvBOFXh1BbR8
         Zh1dRp5Z1LabUrNuefmZ9NlgPbm/AmAKtFX00OFwiz39qVuuzkFpVKGHJZVrrhvT54RQ
         nJVr1CLe0hOJHoUVe1UFxJ+gosDRtkOi5h4Wi7l4s9+rL66cGYyhQjvjeaOQFXHsKCXy
         Rbaq+dlYHsjI9EUIE9l3l0x7P8nwHAajFEp4cfbErmewop+i/cE+3lLHvtT6khq+RkEJ
         wQHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/M2YScnDST8UCkRESKk1nsjPD+z7nYjFowoK25W2k44ggC51I
	1U1h8Y07ek/McwIoiU1W/lA=
X-Google-Smtp-Source: ABdhPJxNShMdcLq/jY3N72NKLXC+fs4Q8p5ESTvbnUFVal5IQL2hNgdfS0Gy89voS2KrJobqlmZebg==
X-Received: by 2002:a17:90a:f2ce:: with SMTP id gt14mr6115735pjb.215.1610647696168;
        Thu, 14 Jan 2021 10:08:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5803:: with SMTP id m3ls2523988pgb.3.gmail; Thu, 14 Jan
 2021 10:08:15 -0800 (PST)
X-Received: by 2002:a62:5e44:0:b029:1a4:daae:e765 with SMTP id s65-20020a625e440000b02901a4daaee765mr8587478pfb.8.1610647695526;
        Thu, 14 Jan 2021 10:08:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610647695; cv=none;
        d=google.com; s=arc-20160816;
        b=faC4tuKQlcG9Fbl3F6CgMDnSN4Y5xtu+WsNu9xIqXO+8+uMTY8UJnR8PwaCqGf6CND
         F9bPqSV2m4/OCeiosKNQG3HW86DkUNN+22S7zVxgWVG/bMGaZj0cVuikccvVDNGSe7+c
         4KeJjt2VskKpYjY6HM2570olfEIW6sqs5MI6Vk2kFG841pgEPMVLaUy5QwqjP+u2BOS3
         F+/HP1neRFWXCJwX+9qObLeZ9KljL+V46W8A8STHChY6BjFI2kMsReohlPbZ9D/qQb6p
         dy1aN0V2rNVxKA4V/UhwxbanFqAIodA/LagYaU4Jt8MzS36sOk/vHrF5yAAa1zLwLkVo
         qJ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=o2E1wxl6M4GuYBSiipCVzHM4eoBv1u3RYsCaqfBwLdc=;
        b=qx1rkWOwc9szen1+AiBn3UlWeOaPg/v0mX6GF7fyLk2X+nxdX07m4XHCUM1K+kqq4H
         +QAKib/1SKBJyQFJpKIB1eWaQWEmyLwZS0gCqFG7J+Kb2KkkZ89YBxp+OJBGXZicDGmM
         qDF5pUYHM99hcxZPqGSCA5xfvST2IrOYCLs2qHzCOvVaRLjD6KgyGDNNwRtBQcByUz/F
         UKG56FE3ErsaKN6gK9IIZHQsx9/0D/16OcfsdCUZgWru6csKQYbOix+kwEWPB2n8sM30
         1TH0K3VR7Sr7cxSSaY7qNJrPHqoAaL98PdfByLYYCz17tgLU7IAk+Q+89NC40dY8z4gP
         7wpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AxHSzizC;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id j11si418017pgm.4.2021.01.14.10.08.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:08:15 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from grover.flets-west.jp (softbank126026094251.bbtec.net [126.26.94.251]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 10EI7H3h014018;
	Fri, 15 Jan 2021 03:07:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 10EI7H3h014018
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
Subject: [PATCH v3] kbuild: check the minimum compiler version in Kconfig
Date: Fri, 15 Jan 2021 03:07:09 +0900
Message-Id: <20210114180709.303370-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=AxHSzizC;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
  scripts/Kconfig.include:46: Sorry, this compiler is not supported.
  make[1]: *** [scripts/kconfig/Makefile:81: defconfig] Error 1
  make: *** [Makefile:602: defconfig] Error 2

I removed the clang version check from <linux/compiler-clang.h>

For now, I did not touch <linux/compiler-gcc.h> in order to avoid
merge conflict with [3], which has been queued up in the arm64 tree.
We will be able to clean it up later.

The new script takes care of ICC because we have <linux/compiler-intel.h>
although I am not sure if building the kernel with ICC is well-supported.

[1] https://lkml.org/lkml/2021/1/10/250
[2] https://lkml.org/lkml/2021/1/12/1708
[3] https://lkml.org/lkml/2021/1/12/1533

Fixes: 87de84c9140e ("kbuild: remove cc-option test of -Werror=date-time")
Reported-by: Paul Gortmaker <paul.gortmaker@windriver.com>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v3:
  - add $(srctree)/ to fix out-of-tree build
  - support ICC version

Changes in v2:
  - fix the function name

 include/linux/compiler-clang.h | 10 -----
 init/Kconfig                   |  9 ++--
 scripts/Kconfig.include        |  6 +++
 scripts/cc-version.sh          | 76 ++++++++++++++++++++++++++++++++++
 scripts/clang-version.sh       | 19 ---------
 scripts/gcc-version.sh         | 20 ---------
 6 files changed, 87 insertions(+), 53 deletions(-)
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
index a5fe72c504ff..26c355a84c19 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -39,6 +39,12 @@ as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler
 $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
 $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
 
+# Get the compiler name, version, and error out if it is unsupported.
+cc-info := $(shell,$(srctree)/scripts/cc-version.sh $(CC))
+$(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is not supported.)
+cc-name := $(shell,set -- $(cc-info) && echo $1)
+cc-version := $(shell,set -- $(cc-info) && echo $2)
+
 # Fail if the linker is gold as it's not capable of linking the kernel proper
 $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supported)
 
diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
new file mode 100755
index 000000000000..818d233bb0ad
--- /dev/null
+++ b/scripts/cc-version.sh
@@ -0,0 +1,76 @@
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
+icc_min_version=16.0.3 # temporary
+
+# print the compiler name and versions
+get_compiler_info()
+{
+	cat <<- EOF | "$@" -E -P -x c - 2>/dev/null
+	#if defined(__clang__)
+	Clang	__clang_major__  __clang_minor__  __clang_patchlevel__
+	#elif defined(__INTEL_COMPILER)
+	ICC	__INTEL_COMPILER  __INTEL_COMPILER_UPDATE
+	#elif defined(__GNUC__)
+	GCC	__GNUC__  __GNUC_MINOR__  __GNUC_PATCHLEVEL__
+	#else
+	unknown
+	#endif
+	EOF
+}
+
+# convert the version string x.y.z to a canonical 5 or 6-digit form
+get_canonical_version()
+{
+	IFS=.
+	set -- $1
+	echo $((10000 * $1 + 100 * $2 + $3))
+}
+
+# $@ instead of $1 because multiple words might be given e.g. CC="ccache gcc"
+orig_args="$@"
+set -- $(get_compiler_info "$@")
+
+name=$1
+
+case "$name" in
+GCC)
+	version=$2.$3.$4
+	min_version=$gcc_min_version
+	;;
+Clang)
+	version=$2.$3.$4
+	min_version=$clang_min_version
+	;;
+ICC)
+	version=$(($2 / 100)).$(($2 % 100)).$3
+	min_version=$icc_min_version
+	;;
+*)
+	echo "$orig_args: unknown compiler" >&2
+	exit 1
+	;;
+esac
+
+cversion=$(get_canonical_version $version)
+min_cversion=$(get_canonical_version $min_version)
+
+if [ "$cversion" -lt "$min_cversion" ]; then
+	echo >&2 "***"
+	echo >&2 "*** Compiler is too old."
+	echo >&2 "***   Your $name version:    $version"
+	echo >&2 "***   Minimum $name version: $min_version"
+	echo >&2 "***"
+	exit 1
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114180709.303370-1-masahiroy%40kernel.org.
