Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB3MPX2BAMGQEVFVEEKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A6733C15F
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 17:14:39 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id o125sf1256802oif.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 09:14:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615824877; cv=pass;
        d=google.com; s=arc-20160816;
        b=H45x5q71HyzIqE66gLJS9/cXlcuPuZqHl1ZGxfamXcSKOjtH7Unkgz5ic7ii7htmpA
         ldmaBxqCqA2lJkCfp7YH6NzxI0vi7wBV2hQ0ZfPukzceYkWvZGuz/XEQMrPjWrOg84qR
         Y3c0NeOnV6XbXOj4DVvC29yPfkfW0tgMbRFtPEyM1Z+qbAnyP3CqVmldXbUHWDsl1P5q
         YTAS8uxcIbVVfFAVkmcw2LoDFCaNeJ8C3oDpquJ5rRLFElHdDmIbbEM61Q+7G2W+d3df
         2n/3l9iV72h5FpGiyimcmFLCOasOCVYKivXO8C9tNn9/LAC07H7P8N2fs5xsuXTYknWU
         3e1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=eBje/b358KjzIDxTtkYUhCB7PRJOY7tuR8enZB3+0mg=;
        b=A32I5Y4HCdrWESzdoM/rt9YQlE8rD44rMjsoaTIqVQYOIpqnA0L8DIWiM0mcfoLQp8
         Rs4fKUiqpK18rZkcFp504LlCVTr1swiV0HBQFAYB0rVdg7+70D2ovAt60Zz7RKXC9rAj
         bCun1/9o6LsEVmZuwmmraaxSlitCr7o+umcPl3dSfOtRoYC6JJBIoC+yR2h/24DKUm13
         zFYIU1C+XdBFqy5dm6DdftvPvTdKdIVKDpdSxUEPxFZpuifHdhGz83GeAOl+xgEImAah
         +FlGnU7Qrv0J8b3eqJoX4B/SoxwpKEzSBZ5SLxPkahXeu/Zx0o1HijTlKxg1GWd5NlHp
         ZEXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iuma465x;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eBje/b358KjzIDxTtkYUhCB7PRJOY7tuR8enZB3+0mg=;
        b=TwrLab7U+USwSy90K655cMPL+vaC9OSX5A2gfrGKZ4VFolsA7hLTKhbA8KhbPwTFje
         2INN4VyjTs8hiKehYzcl470664f0IZ6yv5VA3gvY1a7ZNjSktMwTRnWOuqzGuekWC/SC
         8MhroS+T9zwhOqn/WZ9c/jKtMjaso7Q2j7+ddsORioMg9Newn/JNhLLFPLO65lWxj5zd
         JoSc/47rtpjzTXc9MJk52Fb424ToUaREJNrOrjhfMYkA9zBuVNPwM7GowAFZ+58LA2v/
         fFn742hAH5+fhawpc/nxG+zBJ4zRBwmgEv2EXM4TypOI5UCdb2uWtb+RO/gdTn6w+00l
         XA1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eBje/b358KjzIDxTtkYUhCB7PRJOY7tuR8enZB3+0mg=;
        b=O7YyV0eK74rkwHFz6gj+WBTEQMH0KS6qtgJLl9kDnQL7t1WUP0uVCp50H73Jp+Rgg0
         TRvXGtV6ZHvdO6gG3MJrZH0i8Yg+ZGai5aenejj2z4DwCf+VqBew90G0+L+clqfvtTC/
         TuhrDDjMN7Jiic7C59V8OgTC8hNtrDd91dtkJChM1HQa99ywXJVf77MAHB5AZz9pLW5u
         yyzBHpCxF58FvboxEmxt3cEoWPkpIgg+h/8+Ju1O0Yacrbsw550QuNerQB0Uzl99adez
         KNqxvAbEQfpUi5ccFxzxSUSVEh34GdyOhAAcXlRcakCAuA0cHj2rarIIR+rSlyvRn9o6
         WruA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BwzW+4OKm+wArFVTzpu/6B4FK0Vasf1TAWPJk+9EnTHR4zMN4
	dmpl5hrPvfRxKKLnAXXMPAs=
X-Google-Smtp-Source: ABdhPJxtF6Y8J98/KctH4KASqPKnzKEGejLt3qJvarq5tcsd+BRXwXjD9IrUSnv59T16K5iknM/QJg==
X-Received: by 2002:a05:6830:1c2b:: with SMTP id f11mr15313903ote.125.1615824877441;
        Mon, 15 Mar 2021 09:14:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a2c6:: with SMTP id r6ls1147592ool.3.gmail; Mon, 15 Mar
 2021 09:14:37 -0700 (PDT)
X-Received: by 2002:a4a:aa82:: with SMTP id d2mr14182402oon.52.1615824877025;
        Mon, 15 Mar 2021 09:14:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615824877; cv=none;
        d=google.com; s=arc-20160816;
        b=tvN56NNfdgcLpVg9GC2LbnC4T8b9izAepjHPCA39wOud/4y/b7v4oqIWzaGaIOPIYH
         6LMY0d9VCC9Zl+wtweWdj8BRmZVRnln8nWR7AcSad9r3cZuhKQsJTOCgvkbCteEKSTIn
         xmwY87uyoCichCr3HHm47uPq53CkeCvgYTxwl1Kc1VKqFqjbZwuo4pLXFMtQHrjjHvGa
         8c7Wd2VIPd58q37Z192n7UofpmmjNIS7yQW5Iu6rg1FGCH3yZH4ufXlCmbBqZ6bU4/Hn
         bZ96uXNc4E7ngDtZuwHfq2NX1pJP4iwLiMzQJ7uENZ3BvkOcDnJSagswwzeHgpwTn3E3
         ajXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=TyFCgcIcIKNhE+dFj/ceiSuYWZEfSdmJ7Vt6w5+H+lE=;
        b=bmxVeQc3p34dRDNuOW9+p/3i7RK1wy419GSd3nsAVjzRV0eqWAPafJ+Vpn0Mkz+Xs4
         gL0gw5FY2VsFuPzdWNPo27iKjYngvQ0ovW4mho0qMkHFTTfVgCC9GfEXts3BDGtTWAsm
         YKhW4Lln33XhYWt3at/iZf2tAWxgJNS/2P+AMKTAp6Xw9ovqPsG+87vEdWvdet6HH7XJ
         AHVLObOd1UIKbxTgoPhc77Wple8Nkrw1ZXgcHaJfgWXFifhHLm6PDgvfOr2C7MzaMNJC
         hd0nlm75po7LSpVBjhXxh9XEcrNRuFX6WBd0fDQjhBY/2hfrQe+FGVyCCv0mjOPyQNZm
         lmbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iuma465x;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id z24si569201oid.3.2021.03.15.09.14.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 09:14:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 12FGD7XG030890;
	Tue, 16 Mar 2021 01:13:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 12FGD7XG030890
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        Colin Ian King <colin.king@canonical.com>,
        David Howells <dhowells@redhat.com>,
        Frederic Weisbecker <frederic@kernel.org>,
        Johannes Weiner <hannes@cmpxchg.org>, KP Singh <kpsingh@google.com>,
        Kees Cook <keescook@chromium.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nick Terrell <terrelln@fb.com>, Peter Zijlstra <peterz@infradead.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Vlastimil Babka <vbabka@suse.cz>, YiFei Zhu <yifeifz2@illinois.edu>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] kbuild: check the minimum assembler version in Kconfig
Date: Tue, 16 Mar 2021 01:12:56 +0900
Message-Id: <20210315161257.788477-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210315161257.788477-1-masahiroy@kernel.org>
References: <20210315161257.788477-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=iuma465x;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Documentation/process/changes.rst defines the minimum assembler version
(binutils version), but we have never checked it in the build time.

Kbuild never invokes 'as' directly because all assembly files in the
kernel tree are *.S, hence must be preprocessed. I do not expect
raw assembly source files (*.s) would be added to the kernel tree.

Therefore, we always use $(CC) as the assembler driver, and commit
aa824e0c962b ("kbuild: remove AS variable") removed 'AS'. However,
we are still interested in the version of the assembler acting behind.

As usual, the --version option prints the version string.

  $ as --version | head -n 1
  GNU assembler (GNU Binutils for Ubuntu) 2.35.1

But, we do not have $(AS). So, we can add the -Wa prefix so that
$(CC) passes --version down to the backing assembler.

  $ gcc -Wa,--version | head -n 1
  gcc: fatal error: no input files
  compilation terminated.

OK, we need to input something to satisfy gcc.

  $ gcc -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
  GNU assembler (GNU Binutils for Ubuntu) 2.35.1

The combination of Clang and GNU assembler works in the same way:

  $ clang -no-integrated-as -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
  GNU assembler (GNU Binutils for Ubuntu) 2.35.1

Clang with the integrated assembler fails like this:

  $ clang -integrated-as -Wa,--version -c -x assembler /dev/null -o /dev/null | head -n 1
  clang: error: unsupported argument '--version' to option 'Wa,'

For the last case, checking the error message is fragile. If the
proposal for -Wa,--version support [1] is accepted, this may not be
even an error in the future.

One easy way is to check if -integrated-as is present in the passed
arguments. We did not pass -integrated-as to CLANG_FLAGS before, but
we can make it explicit.

Nathan pointed out -integrated-as is the default for all of the
architectures/targets that the kernel cares about, but it goes
along with "explicit is better than implicit" policy. [2]

With all this in my mind, I implemented scripts/as-version.sh to
check the assembler version in Kconfig time.

  $ scripts/as-version.sh gcc
  GNU 23501
  $ scripts/as-version.sh clang -no-integrated-as
  GNU 23501
  $ scripts/as-version.sh clang -integrated-as
  LLVM 0

[1]: https://github.com/ClangBuiltLinux/linux/issues/1320
[2]: https://lore.kernel.org/linux-kbuild/20210307044253.v3h47ucq6ng25iay@archlinux-ax161/

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - Check -integrated-as option instead of error message.
  - Add LC_ALL=C just in case.

  The Italian locale did not tweak the message from 'as --version'
  but we never know what would happen on locale.

  $ LC_MESSAGES=it_IT.UTF-8 ld --version | head -n 1
  ld di GNU (GNU Binutils for Debian) 2.35.2
  $ LC_MESSAGES=it_IT.UTF-8 as --version | head -n 1
  GNU assembler (GNU Binutils for Debian) 2.35.2

 Makefile                |  4 +-
 arch/Kconfig            |  3 +-
 init/Kconfig            | 12 ++++++
 scripts/Kconfig.include |  6 +++
 scripts/as-version.sh   | 82 +++++++++++++++++++++++++++++++++++++++++
 5 files changed, 104 insertions(+), 3 deletions(-)
 create mode 100755 scripts/as-version.sh

diff --git a/Makefile b/Makefile
index cc5b7e39fde4..2b161f5a5a66 100644
--- a/Makefile
+++ b/Makefile
@@ -580,7 +580,9 @@ ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
 ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
-ifneq ($(LLVM_IAS),1)
+ifeq ($(LLVM_IAS),1)
+CLANG_FLAGS	+= -integrated-as
+else
 CLANG_FLAGS	+= -no-integrated-as
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
 CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
diff --git a/arch/Kconfig b/arch/Kconfig
index ecfd3520b676..555b4f09a9b2 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -631,8 +631,7 @@ config ARCH_SUPPORTS_LTO_CLANG_THIN
 config HAS_LTO_CLANG
 	def_bool y
 	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
-	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
-	depends on $(success,test $(LLVM_IAS) -eq 1)
+	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
 	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
 	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
 	depends on ARCH_SUPPORTS_LTO_CLANG
diff --git a/init/Kconfig b/init/Kconfig
index 5f5c776ef192..019c1874e609 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -41,6 +41,18 @@ config CLANG_VERSION
 	default $(cc-version) if CC_IS_CLANG
 	default 0
 
+config AS_IS_GNU
+	def_bool $(success,test "$(as-name)" = GNU)
+
+config AS_IS_LLVM
+	def_bool $(success,test "$(as-name)" = LLVM)
+
+config AS_VERSION
+	int
+	# Use clang version if this is the integrated assembler
+	default CLANG_VERSION if AS_IS_LLVM
+	default $(as-version)
+
 config LD_IS_BFD
 	def_bool $(success,test "$(ld-name)" = BFD)
 
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 58fdb5308725..0496efd6e117 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -45,6 +45,12 @@ $(error-if,$(success,test -z "$(cc-info)"),Sorry$(comma) this compiler is not su
 cc-name := $(shell,set -- $(cc-info) && echo $1)
 cc-version := $(shell,set -- $(cc-info) && echo $2)
 
+# Get the assembler name, version, and error out if it is not supported.
+as-info := $(shell,$(srctree)/scripts/as-version.sh $(CC) $(CLANG_FLAGS))
+$(error-if,$(success,test -z "$(as-info)"),Sorry$(comma) this assembler is not supported.)
+as-name := $(shell,set -- $(as-info) && echo $1)
+as-version := $(shell,set -- $(as-info) && echo $2)
+
 # Get the linker name, version, and error out if it is not supported.
 ld-info := $(shell,$(srctree)/scripts/ld-version.sh $(LD))
 $(error-if,$(success,test -z "$(ld-info)"),Sorry$(comma) this linker is not supported.)
diff --git a/scripts/as-version.sh b/scripts/as-version.sh
new file mode 100755
index 000000000000..953ff000bcbc
--- /dev/null
+++ b/scripts/as-version.sh
@@ -0,0 +1,82 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Print the assembler name and its version in a 5 or 6-digit form.
+# Also, perform the minimum version check.
+# (If it is the integrated assembler, return 0 as the version, and
+# skip the version check.)
+
+set -e
+
+# Convert the version string x.y.z to a canonical 5 or 6-digit form.
+get_canonical_version()
+{
+	IFS=.
+	set -- $1
+
+	# If the 2nd or 3rd field is missing, fill it with a zero.
+	#
+	# The 4th field, if present, is ignored.
+	# This occurs in development snapshots as in 2.35.1.20201116
+	echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
+}
+
+# Clang failes to handle -Wa,--version fails unless -no-integrated-as is given.
+# We check -(f)integrated-as, expecting it is explicitly passed in for the
+# integrated assembler case.
+check_integrated_as()
+{
+	while [ $# -gt 0 ]; do
+		if [ "$1" = -integrated-as -o "$1" = -fintegrated-as ]; then
+			# For the intergrated assembler, we do not check the
+			# version here. It is the same as the clang version, and
+			# it has been already checked by scripts/cc-version.sh.
+			echo LLVM 0
+			exit 0
+		fi
+		shift
+	done
+}
+
+check_integrated_as "$@"
+
+orig_args="$@"
+
+# Get the first line of the --version output.
+IFS='
+'
+set -- $(LC_ALL=C "$@" -Wa,--version -c -x assembler /dev/null -o /dev/null 2>&1)
+
+# Split the line on spaces.
+IFS=' '
+set -- $1
+
+min_tool_version=$(dirname $0)/min-tool-version.sh
+
+if [ "$1" = GNU -a "$2" = assembler ]; then
+	shift $(($# - 1))
+	version=$1
+	min_version=$($min_tool_version binutils)
+	name=GNU
+else
+	echo "$orig_args: unknown assembler invoked" >&2
+	exit 1
+fi
+
+# Some distributions append a package release number, as in 2.34-4.fc32
+# Trim the hyphen and any characters that follow.
+version=${version%-*}
+
+cversion=$(get_canonical_version $version)
+min_cversion=$(get_canonical_version $min_version)
+
+if [ "$cversion" -lt "$min_cversion" ]; then
+	echo >&2 "***"
+	echo >&2 "*** Assembler is too old."
+	echo >&2 "***   Your $name assembler version:    $version"
+	echo >&2 "***   Minimum $name assembler version: $min_version"
+	echo >&2 "***"
+	exit 1
+fi
+
+echo $name $cversion
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210315161257.788477-2-masahiroy%40kernel.org.
