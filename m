Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBBOORCAAMGQEI4V6WOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0132F896B
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 00:36:38 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id d10sf4886301ote.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 15:36:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610753797; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZOSxNudOVkBsu6V3XkkiqfoqCAHnLTVdPjFyVWqW2aIyDKgHcEZTbr/wtwnylbqEKB
         v7OpB8HGjfnGcVDOWj+2c8a8Bbu9ysqXP7tXCIae6yNR7JZ0b5z28GG3ROa0hQoJuK2o
         lGp/EtId3vTqUbT3fmjsxzNzM+keV00siWYpQknVPryqYKV+F8wgNXZo7GEClSep1S9s
         LY42siWDN9mi6XcVzcRQ0qGhCmGh2joMPBdTvZU3gFvIQCcdPb+evtJtXZtlvYsfQwfx
         mKCdvP8oT8H+e7tYERFgXmUhG2ziNId3XtFUg7NW7vL5dMGrdAdYMEInH7LjO1/Br666
         Nbww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=IlAdtkK0wkHICL78r8OweCbcA/YwxLy420Zzjt3AW5o=;
        b=bEfr+ybAMKYaZtw9XbTN9Rt/2lG+RxjvCM5+x25IG1AiIbsLeW3R7JKB19NrLXvWYZ
         2GeW2GE4tCK5CwpmC2guoH/jh9bLl7MpKWbIJp0EmPHnJJdIhQX2F7vjAjkkjkHMS9KR
         yfpYjt801A0duIx62biuzmdLHNDGA6S3BTUBq82/VsFEtBYs6n+jncxs1z2TLnDV3YlW
         4kkZ0LpCx7yldujh21fRbpo39aVN0VxgYyFOhgh5klhw4CV8hS/NJ04Cte2V8fAL13VS
         ZcoNV6PGJ/EwLalh1/9OqlqBEt4s+xo8f5XT7gMUGWMGPxcKFySA4dJ2t6/5Nwd9IDxR
         ONCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=SYiD+vkQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IlAdtkK0wkHICL78r8OweCbcA/YwxLy420Zzjt3AW5o=;
        b=MOHE/7BRKE1FXP6X04Raw3rgKCXt4Ce8tlxYCqNKVOAoBOBVOQhPiK8A5UeNCCKsbD
         5NwPY2RBDZntveS6q0HZJPJgjPob4LJOCYObOEliVS9pXGjUtXC3iwUEaEBWNA2F7fyH
         SOI/A2yWsx9podR6nlDRjIz2fZxZANfVrpPZIbYXiZFa/vrAvve8hB0KzGe11Y6hH3AF
         HE1hygQZS9zu0tgixL0GisuOMm2LFQfM8y3ROq3bMWJz9YLyRlGilgz3gRo0ZmadxT0A
         UlEL+T3kuNuPU4y2jBXKZbkOty0JodUTnOYISf0BgJbDBTssjjXy+4QcJDNjUDIsQN13
         aW9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IlAdtkK0wkHICL78r8OweCbcA/YwxLy420Zzjt3AW5o=;
        b=aItwT/cWBRAQm2frqQPCZx6GMIJd8Upoho2qqTBfzuRt3frruoXYX2KADuQf5KqKq7
         dt0whmRgweZhn94nPp4k3xYljvdxYZCsxxT9CTa0zDTJnC/ViHhqrRfI7ebGEa3qySwe
         9GOQr5sjNmvC8SfINbo0beXvYaG84kW4i4MX+/6p5T7+NKYThy+nkBEckswy7tRIgXDy
         6Bf/knfyrrKpExQBPi5ieyqsSnz2JNZ9IKeurHBS7QXbh6IqY77iQMBQmGHdSNWMugSi
         4JVQZ02ME6tZNfHuWcRckt4zsh0lr1j6XsIZo5ag/AxV8XEbORJbpS8tg9u71j7yt3V2
         x7Og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lGB5/qAeH2Np8f5wKcfxkG3M8l+FQ2ATnRlFmBpGDNUqvoij2
	+dIXP+XCvkSRporcgbHZgYs=
X-Google-Smtp-Source: ABdhPJxowQL33LRQNN1EGCeLOwrnOs1JxLQdoIpsTg9Ou85nYCV5mnlspb/CWNNbdZlDed+4N925CA==
X-Received: by 2002:a05:6830:22eb:: with SMTP id t11mr10758872otc.114.1610753797462;
        Fri, 15 Jan 2021 15:36:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c95:: with SMTP id q21ls960925otn.7.gmail; Fri, 15 Jan
 2021 15:36:37 -0800 (PST)
X-Received: by 2002:a9d:6b02:: with SMTP id g2mr819808otp.19.1610753797078;
        Fri, 15 Jan 2021 15:36:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610753797; cv=none;
        d=google.com; s=arc-20160816;
        b=pjtS0QmBEu2u5HHCXYQzunb+95v/mA5QNQrtFko+LOxmDwSAHE5ArBThrpK5rDg+hx
         Ev2FAbPixzYQ7cPmJI5zAw78zWbwm5B/eESlrQU7xkf8eYMy7aWuyJOnO140+PPeBthG
         avu+ffx/NbXKe1jGqDS7Z/aRCizCjwVjYtT/dN3v5j9oCsVmZrq/foaJ0K1vGwfHsDZc
         j1NKFq0UJGOID6m5rGbCAXUoSmCAI4vYzqVFy2feSDfEks7Lo/Sz/m9Ek+YyncDUT4SY
         voCUUJXW5Cx/CaxpgnlpajNT/lAgIkIsyKxiWu2UgbP7EuBAUysA5aDxDnnlOVa/wnNE
         AOMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=t/sU56WKsXGzaygkLzFMUCdxvBLw8GoRruZV89g7Tf8=;
        b=yrHRfc2R3HogEXDT8T/HB5M3rNROgnC+NxBPFoIv19e+XOT/PeLrL8VqDIvCWFPFkQ
         ZDmpQ7REY4gLlLBwtNN/m4Rq5QrjoAhrjywRFIHfg5dbm9gCVAY+5HZ66wdWM2d+N8nP
         ivt/THYI3gP9sefUWKtwGz+VGu/OlOR52ej5Cz4CMsDREI/UXOCV/7++nBM1+ntffB8H
         q+Kx08Tr5SJzxwj1iNxgsEByWVi0h3bGm5skCH4bhj0ogc6p8ZXdq/Cdg2U1hucfj89l
         TVPczWjv7NBvr3bG3py78iicL58YMF0YJ2cefNBLHUW7ZA8IFKvUZHJ9G2IzD/Yb6ZS1
         n9hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=SYiD+vkQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com. [210.131.2.75])
        by gmr-mx.google.com with ESMTPS id u25si844980oic.0.2021.01.15.15.36.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 15:36:36 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) client-ip=210.131.2.75;
Received: from grover.flets-west.jp (softbank126026094251.bbtec.net [126.26.94.251]) (authenticated)
	by conuserg-08.nifty.com with ESMTP id 10FNZjc3014111;
	Sat, 16 Jan 2021 08:35:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 10FNZjc3014111
X-Nifty-SrcIP: [126.26.94.251]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Paul Gortmaker <paul.gortmaker@windriver.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Miguel Ojeda <ojeda@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>,
        Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org
Subject: [PATCH v6] kbuild: check the minimum compiler version in Kconfig
Date: Sat, 16 Jan 2021 08:35:42 +0900
Message-Id: <20210115233542.70789-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=SYiD+vkQ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Paul Gortmaker reported a regression in the GCC version check. [1]
If you use GCC 4.8, the build breaks before showing the error message
"error Sorry, your version of GCC is too old - please use 4.9 or newer."

I do not want to apply his fix-up since it implies we would not be able
to remove any cc-option test. Anyway, I admit checking the GCC version
in <linux/compiler-gcc.h> is too late.

Almost at the same time, Linus also suggested to move the compiler
version error to Kconfig time. [2]

I unified the two similar scripts, gcc-version.sh and clang-version.sh
into cc-version.sh. The old scripts invoked the compiler multiple times
(3 times for gcc-version.sh, 4 times for clang-version.sh). I refactored
the code so the new one invokes the compiler just once, and also tried
my best to use shell-builtin commands where possible.

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

cc-version.sh also shows the error if the compiler is too old:

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

The new script takes care of ICC because we have <linux/compiler-intel.h>
although I am not sure if building the kernel with ICC is well-supported.

[1]: https://lore.kernel.org/r/20210110190807.134996-1-paul.gortmaker@windriver.com
[2]: https://lore.kernel.org/r/CAHk-=wh-+TMHPTFo1qs-MYyK7tZh-OQovA=pP3=e06aCVp6_kA@mail.gmail.com

Fixes: 87de84c9140e ("kbuild: remove cc-option test of -Werror=date-time")
Reported-by: Paul Gortmaker <paul.gortmaker@windriver.com>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
Tested-by: Miguel Ojeda <ojeda@kernel.org>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v6:
  - Now that https://lore.kernel.org/r/20210112224832.10980-1-will@kernel.org
    landed in Linus' tree, I cleaned up <linux/compiler-gcc.h> as well.

Changes in v5:
  - double-quote $(cc-name) in the CC_IS_GCC and CC_IS_CLANG

Changes in v4:
  - use lore version of the links

Changes in v3:
  - add $(srctree)/ to fix out-of-tree build
  - support ICC version

Changes in v2:
  - fix the function name

 include/linux/compiler-clang.h | 10 -----
 include/linux/compiler-gcc.h   | 11 -----
 init/Kconfig                   |  9 ++--
 scripts/Kconfig.include        |  6 +++
 scripts/cc-version.sh          | 82 ++++++++++++++++++++++++++++++++++
 scripts/clang-version.sh       | 19 --------
 scripts/gcc-version.sh         | 20 ---------
 7 files changed, 93 insertions(+), 64 deletions(-)
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
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 555ab0fddbef..48750243db4c 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -10,17 +10,6 @@
 		     + __GNUC_MINOR__ * 100	\
 		     + __GNUC_PATCHLEVEL__)
 
-/* https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145 */
-#if GCC_VERSION < 40900
-# error Sorry, your version of GCC is too old - please use 4.9 or newer.
-#elif defined(CONFIG_ARM64) && GCC_VERSION < 50100
-/*
- * https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
- * https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
- */
-# error Sorry, your version of GCC is too old - please use 5.1 or newer.
-#endif
-
 /*
  * This macro obfuscates arithmetic on a variable address so that gcc
  * shouldn't recognize the original var, and make assumptions about it.
diff --git a/init/Kconfig b/init/Kconfig
index b77c60f8b963..8f04e5db2001 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -26,11 +26,11 @@ config CC_VERSION_TEXT
 	    and then every file will be rebuilt.
 
 config CC_IS_GCC
-	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q gcc)
+	def_bool $(success,test "$(cc-name)" = GCC)
 
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
+	def_bool $(success,test "$(cc-name)" = Clang)
 
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
index a5fe72c504ff..0228cb9c74aa 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -39,6 +39,12 @@ as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler
 $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
 $(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
 
+# Get the compiler name, version, and error out if it is not supported.
+cc-info := $(shell,$(srctree)/scripts/cc-version.sh $(CC))
+$(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is not supported.)
+cc-name := $(shell,set -- $(cc-info) && echo $1)
+cc-version := $(shell,set -- $(cc-info) && echo $2)
+
 # Fail if the linker is gold as it's not capable of linking the kernel proper
 $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supported)
 
diff --git a/scripts/cc-version.sh b/scripts/cc-version.sh
new file mode 100755
index 000000000000..d1edbe4d140c
--- /dev/null
+++ b/scripts/cc-version.sh
@@ -0,0 +1,82 @@
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
+# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=63293
+# https://lore.kernel.org/r/20210107111841.GN1551@shell.armlinux.org.uk
+if [ "$SRCARCH" = arm64 ]; then
+	gcc_min_version=5.1.0
+fi
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115233542.70789-1-masahiroy%40kernel.org.
