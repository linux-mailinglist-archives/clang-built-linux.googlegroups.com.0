Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB7NGQKAAMGQEMFFHSXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E162F6A1D
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:54:54 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id w26sf9997681iox.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:54:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610650493; cv=pass;
        d=google.com; s=arc-20160816;
        b=uVQyWapGftHuFWxXbuW3cZqvfN8KastvrefUW3vw+XMR58By4CQMRIlv7ig0pVL0qm
         bhTEkojuK+m8GTkJFm0rrTXgT05oHvFBVoDtTZjRp11Yf2gjkMZGorl5b5JCYUvo/RFo
         RBkrM6SUsfVDnRYpNqZfdOfTZ9HtA/XGhVCIcNP3OdaVnNyNAcN6cZmu7yBgeGxB8ubk
         fTikJZ8tKxve5g3y6GHca4NaW1b45o+Nnp505bBCfuwdmqg9cHCBSZOcdbFsLjp+4SOM
         ozVi01y09ZKwydDBJr3+pExAvHSkjsUGiDsO3M5HmMWpCGhZMlAjbWVr5/ZGLqjT+zV1
         +7jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=jaV9AyzzQHoUnOpVjMZGUOIoz+WbVHLVJtpO/w/AXi8=;
        b=CMuhYxN7kh02DT2pR9buJKjbGZei032hJGygfAw00Gric4Nqv7qf0lD2ZXLaCR8yqm
         8QnS7by0mq4bwrmvtTPDR1aj5uF/fZDLOM+9VYqHlKEh6ps/YNLhNS68hkUEb0n67GUe
         fw4GsA1WYuL6qjdnUxlUT+Px3hTRlchtCX4M0sVz2ZRD4wt8x/+E1D8vRg6kSA4zgY51
         v61QPPQjZmIwefgR/q119yZZu6g+WdFBfjVYwXEywgbwE1e+QTv6N1k7oDV90ziGdOdR
         umYCW26JQvTGe2deQoxwdXA80KkRogAqOLjgJvjH2IfkT/w6xR4S0DtEuGb0ufZ2dCqk
         uanA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uK3gnF1o;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jaV9AyzzQHoUnOpVjMZGUOIoz+WbVHLVJtpO/w/AXi8=;
        b=XcSYsiLh8btWbWt+XMC+7E+hBBXTmevyMocuc3E2canZ2fQ1eKH+oDrwHfSwqppjg7
         MBQa+sgXjZ/3lRIE+ABzlRQ1qF+mLjl6ZxqNpceHW0SFo3QaFhi89v5srXBYQ5kk4mwC
         Ac1s7LovhlpAKmMvQcYbRNrOxGrJ5VKx17BPKV+Defi+vYikZMy3guOG0akgdjtBT/Nz
         TP9cvNPEiIk3rutDFzw102cxUozkhUF1MzZkrFGdAXsutXmCRMoBr3fITJwt9LlLsJLb
         qK6y0hf5MN9gmLt1u6l68xU/JlKaVBrpoLieQznZeq8aoTvx1i++ZaU9rtcZbyfbhcWJ
         61Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jaV9AyzzQHoUnOpVjMZGUOIoz+WbVHLVJtpO/w/AXi8=;
        b=REK0qhSCQ9hr67gWxxOB8nHUMF7GCQd35n79ec6sWhP7dgdCPDjHlSFhE5gpldsvdr
         SADMVlkoyFCm/909cWuO/Q0qRNAXkvHbqjvcc2uvetlCJyiqiOwtKb1ykkgJxJ8srhVH
         4GO1WYCuNQV0NM//UnQDF0OgSA9vQpNJO+TJJp/8vBf+LNyRZu5BlopHyuReKrImk1mq
         6sN+Hej2jF9zfSU7YLXjFX4UfT61FivI6UZeVKF9/5jfZxDrFX+g4OttVw/cETaZGEXt
         sPjKgH4SCdlqP6u4/Px0SP49VwoNiHYo1M7pQdOGnyF4qTTnO/jxsvq94+wo8Fz67ot+
         j8Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hQWXsx20dwrHjLs4GHenbaJGgxqkcCBo0cfzY6Bwuzq5CEtC9
	/z1RUltkaev0PGB8SzS2LWw=
X-Google-Smtp-Source: ABdhPJwoPth4e5c/EfmnEKa5TwPVbRZsNT8v3PqcsG2HOtFwJ2ha7K+KlDB8AOiZ8PcpyGjvGK4BoA==
X-Received: by 2002:a02:cd2f:: with SMTP id h15mr7647288jaq.37.1610650493202;
        Thu, 14 Jan 2021 10:54:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b0e:: with SMTP id b14ls1883188ilf.11.gmail; Thu, 14 Jan
 2021 10:54:52 -0800 (PST)
X-Received: by 2002:a92:c149:: with SMTP id b9mr7731185ilh.168.1610650492755;
        Thu, 14 Jan 2021 10:54:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610650492; cv=none;
        d=google.com; s=arc-20160816;
        b=up3j1wLcwl5FP7FyDGhaRESn78yf9J161fx28bAsr8lSGspxromuHxKxX5D25a8CNh
         P8rGKeviXIxnikOZJCPShSe0aSozw2235WrSc9a3H79jSR89WdzprZJ4+Q/euBxP0s7E
         TBdLqG5po0FVfkGRRQ5AVC9CiwkUz6lWDZPsrdJmzw0HyT2gKvnxOQ4kRis3BnxZZt+1
         PgMv0GI8MAka3WBrj4uTDFdeYAPQuhlgdjBLkTg1nC6U8IXgNLYodR83jLiW2EO26CZj
         BU7byu7DYsKllu6Eo+HlMFRPEf439kFdJnRRs/ri5cN8qw0CF910EteXM2sNrvxwPpNA
         SUjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=AfAfqRIO/BYPTIBAvdnE/HqW9r3a4Nrphjj4KtDgsDs=;
        b=CZP9/qZTbZ7N/wwu+u3myOVRPovzuAogD7v1mut37NT4/6udrBc/AuyHLejpk/CSZm
         awhok3jeIyYccVJhZIsrJFxetcdP9bDGGoTdSgva+BGiTH2PAZWccRqwalB+hRuHlMSX
         KmpHJ7yKCzB6pow+94ETGzxVwaVGRE7jclIMLPrifTNYnjgvYJUxnSOBwU34wzvesqzC
         CKgYaqjUghVSu979PJP/bR68PknM7lSxKLFnm+nBX4UtQ+5sxSGe5gZHYmEs4/BDDJdo
         pMNQXPVxAxWJbDk3NeEZfScopebVZk3r5GheCMxYhs9nu5dJlbfi1Wx0xmRrUZLZn1dO
         e+wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=uK3gnF1o;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id l3si281137iol.1.2021.01.14.10.54.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:54:52 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126026094251.bbtec.net [126.26.94.251]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 10EIrv5r012044;
	Fri, 15 Jan 2021 03:53:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 10EIrv5r012044
X-Nifty-SrcIP: [126.26.94.251]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Paul Gortmaker <paul.gortmaker@windriver.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Miguel Ojeda <ojeda@kernel.org>, Will Deacon <will@kernel.org>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v4] kbuild: check the minimum compiler version in Kconfig
Date: Fri, 15 Jan 2021 03:53:54 +0900
Message-Id: <20210114185354.308083-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=uK3gnF1o;       spf=softfail
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
We can clean it up later.

The new script takes care of ICC because we have <linux/compiler-intel.h>
although I am not sure if building the kernel with ICC is well-supported.

[1]: https://lore.kernel.org/r/20210110190807.134996-1-paul.gortmaker@windriver.com
[2]: https://lore.kernel.org/r/CAHk-=wh-+TMHPTFo1qs-MYyK7tZh-OQovA=pP3=e06aCVp6_kA@mail.gmail.com
[3]: https://lore.kernel.org/r/20210112224832.10980-1-will@kernel.org

Fixes: 87de84c9140e ("kbuild: remove cc-option test of -Werror=date-time")
Reported-by: Paul Gortmaker <paul.gortmaker@windriver.com>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
Tested-by: Miguel Ojeda <ojeda@kernel.org>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v4:
  - use lore version of the links

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114185354.308083-1-masahiroy%40kernel.org.
