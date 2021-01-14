Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKUP777QKGQEDTJ6IEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7372F59E4
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 05:25:15 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id a1sf6454695ios.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 20:25:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610598314; cv=pass;
        d=google.com; s=arc-20160816;
        b=GzhgyiqEPFNvb5mB7hZvloi/HOpQgHmOe0LMJzHueOGqWS4GRVnbNRvVY/wVfTEatR
         0cU2zhXD1E4VtDnNvcM5wQjpVD0qOOz3I1FS6TNrmcZTgb4oRx/hBBZTVtrvtntcIQPS
         QviOODyvV9NW8HF1XmZjH7cB41jE7qOFVB7jsUR3DJf9nyF5xNUW6MA+UFDochzXomAK
         e/kUZmhMsCIIB04vSGlbycvtA4MuHSL9TBIm95dHUhJVljQX0hTlAvhGTD4gJjKNRAdy
         LbtoG3VQSLeQYtjYUBWXyEinsfJ/Jw/fyAO59ZWFlo4DZq6B40Twc4JwCmiWj+sUKT30
         DXXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=RFHbUUU2UcyP8NiuQJxxmnLhoQfhebNICJmYZac4MJU=;
        b=u9m21tqv96ofDqj0D/cpOCrN1QAr0S2rSjQr3DiIrWbvCway6wtgAYdXIZQrqCiAtT
         n+0s8xRoOKkAEhI3t+9lDQ6ie24iPE2yvX43nliBn/nrNbHQvYmdFiQMk1C62Aaq0rHq
         4HhFuLkpZ4nOIYhNZVmvddahBEdC7mQsUn+cfpL26pNfMINSYYfFQV6fllNSc2WzKVvj
         JF/93IR0DNTj83f/cLDTuDNICWiCUPi5UU3Z0EoOhUzWOGVRr7R9vggzgCmmIvaWJ/t7
         gK68LOhG5PGvQ4xTPQ6f7ZpbuNvJ76gKmVFNYATgKTy4qGBaQcVkf1coQXVwGGZRZxkL
         wg2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1+bYoysU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RFHbUUU2UcyP8NiuQJxxmnLhoQfhebNICJmYZac4MJU=;
        b=OCtp292Zakys+XOx8+WWe3H+ApGU+Zcrsf3863sv9LWX/1ABWc1M6Phv0rx9C/nb7s
         a0TpNaRXbU4SWln1xhubYuPmq0MTanavCDXv7Pzzd/RZSAN0SBiCrHXPv0v/CGUWNF2P
         1wQm2KptpRxT2j+YcbtyXa4WwXbu3THpWmqaSiDZNctFcXYEud2gFabKDfYo/evIGtI6
         WblwSiHd9I4GEzhFPtZ0qDB9UgDh7mP5sPl9rO2mnprMftPnrlEZlm+6SrzT8TIEFdX8
         +dDikInIt7/Td+KKYDuen6qWuMWE6jC3ykOI0bJFUgMfq0XaNJS9n294/LlKHn/9zr/F
         e/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RFHbUUU2UcyP8NiuQJxxmnLhoQfhebNICJmYZac4MJU=;
        b=bCTsCWu5cRzcY9rZQJfOLlwGJVp83HvnYeL59RxolxeIcVIz+rw8Haj3n3mJN6vXai
         WlmgomvKlwxfWXMOyaThGBAd7sjaO9PbvOQ2ojC1nL2G/wtzWBAnwLBorgG0BxM7yzNN
         GR5E4mxT573M1lf0R20HSmiLtCo2QsBxEtvq5MVAaNcKrMjSlHmdpab/O4ijbvMsgnrr
         SZ9eEeF6ydHgRclhtsuc4moMmpJyYb76Nx5Gf18clnWv8P+ncEFJuLn41/hYS+z86Huw
         Q6SXa1pZLrTHoCXK5Acn+IkJTdqSSRCVVA93Rv0Ef47WgpS954CGd8SRl3YwuC+Ndhb/
         YBfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DJwBj7Ep4Iz7mmGCWatGNj2tXPgjuDfWHX/KFgoUUir3pBdjN
	HlICSlJzKnnLkzRKC+EAoxU=
X-Google-Smtp-Source: ABdhPJxPlRGFFAJ13d/D/TQapUVh9rgo83RpvX2jVHhXOBugHLvRWLs4sWgbxJ9F0FKKCj9c1+XmUw==
X-Received: by 2002:a92:cb82:: with SMTP id z2mr5038561ilo.195.1610598314168;
        Wed, 13 Jan 2021 20:25:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1446:: with SMTP id l6ls522984jad.5.gmail; Wed, 13
 Jan 2021 20:25:13 -0800 (PST)
X-Received: by 2002:a05:6638:2047:: with SMTP id t7mr5073924jaj.134.1610598313743;
        Wed, 13 Jan 2021 20:25:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610598313; cv=none;
        d=google.com; s=arc-20160816;
        b=AoovzoA7cYS1c4TVDXuiUpT2YyrhntCedtJyIgrUj9ROo9V1IOjBdWJgscyT/mxcaL
         04n9t4iOT2nLYI+c+rbuox8mPs6TVyAUZVj3fyRRjNWtFgUkk9tUEOfsL9C06wOz40lt
         fJd2EEqFtuV/e/uhqzljtBhdrNKXzTILbQgzGwbXZCcIPk8WTiR7P8H3InU+Gz8exYRx
         Shfkb/6mqyouIbWp2zo3d2n1J11Sln6aG9xb1wdWzQuhpjKczqhor9Ip+G36olsbpH/a
         mU+wCMV3MOSvbxiIs2A1dLeJTq4ovAKWYFjTA2g+4ruh1YLIdWloarzRsjKpr5+8Ropc
         sq9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=m8zZwtFAg5WmGHXtJHmazUEIpyhdCe3SE8+pATwVEHw=;
        b=dqMG/S1ASKyCy5/rIGM2ZUYCcs0tppSA37f5UyKqvIhLjRXtzL0W8JxuHM8MJ80s8M
         w73ann4y1J0TF60wWKAxKhq9/9Dknxn1F7vu/gx4Qsk0gkKjq3MXZ/ltuin/sgf9vXMt
         gS0wk0zDKN9UblxZvw/GUsq3CVxl16lIjVOsrGDqQy05oOupqmxdzjnMzj9L1lN4nfWL
         Z8dt0o+kBU7kmra2MxgLpjs8rA12WjT1xgAgDIH8vC2k1Cpg5vXXZVIgZEdTOGwEppxG
         ik0WnT1SobR/Qm5buC4yFzngXcOy9PSailZjAgAD1oV7YjMYKBo0EMt1Gm8siZJVFt7H
         iCKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1+bYoysU;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id t69si531014ill.3.2021.01.13.20.25.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 20:25:13 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.flets-west.jp (softbank126026094251.bbtec.net [126.26.94.251]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 10E4OL30001381;
	Thu, 14 Jan 2021 13:24:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 10E4OL30001381
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
Subject: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
Date: Thu, 14 Jan 2021 13:24:19 +0900
Message-Id: <20210114042420.229524-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1+bYoysU;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Changes in v2:
  - fix the function name

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
index 000000000000..9c17c1de401c
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
+set -- $(get_compiler_info "$@")
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114042420.229524-1-masahiroy%40kernel.org.
