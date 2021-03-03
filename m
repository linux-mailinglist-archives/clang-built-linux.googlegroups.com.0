Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBNFN76AQMGQELSHRGRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5719132B9EA
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 19:34:30 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id i11sf20753001qkn.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 10:34:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614796469; cv=pass;
        d=google.com; s=arc-20160816;
        b=nFIf26kqQlCKBkKyDuN6obodLR0tJp87oeMTVJt6pPOY9bXGd8fyI3VWIJytflOq3b
         H2MfL62Z/MFa93ATrddV1AlfYgjXc3tY8kfwwVFAdNNP7ad4I+rs8jARfsktHXFzmI0X
         ub2/I/cVuTNcvlKsrKZ/FM//OF52JoupC/J3CC7qhKMhZUbZ68ePZXoiWZtHUPeCJoOw
         GqFxmU5Agha5XX4ICWQMdUXVMFOdsPqviplXWpmeHgNHC/giKGRIDPTKt0EmR7slGurK
         taxpV0pkhT0GluMlUAclNGWmxKWWs9CeHCXTrI9VpgoSB15qa7Wl5sDATE5xv2aE25j9
         Azhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=9t/CLK8BxS9OeU4Z6i2BKvMosfBOKWu+HJDoPOZymLI=;
        b=bld1R6dRmz0ll1tbrCZY9FncAVuxW6wGyn4s4Qp+AYC/BDx0J50FJvAKDEWrfbQ13T
         Kp1zP/6irC21rIurvRWBHrNTX+PfXcWGlUOrFGk0qhvhHzek31sv/Xxl+JIau6YKoXtS
         LXDKECFxpILgPFNj/d9/ZyjqSqOBbFNA/so76TYWN6S+VwA+T4VYiKPhIkTuWGY7W2Io
         Cc9UXAmp2wKGYIrVKgcOpQ6bPu+WmcxU0bgwKCb+0zGrNMgtcuW7YwBNzmNndRWepbqF
         Fwmhw3XwlxUBfftf28bqwujscULWJFG0zbrFwi2wFYYhEyi8p30dbdSQ/Zb78y5wy7yG
         u6Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Hdk8QCc0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9t/CLK8BxS9OeU4Z6i2BKvMosfBOKWu+HJDoPOZymLI=;
        b=oJjrsDKYN6uS86M3CBaKlJufTd7/1N2udQAa/Z/octd1X0nNd2JNX+8iNbe8EBAZT7
         0gkkUeHKaZwTMS1C5yRGphV4+z3Oi3TJ8wiJpcgkcNJAAUtui9Y7nIZxmsUt3hCVk97v
         qeWQUnv5XxvHajB1ZynmBBxB1//8/BRd7EFdDWVKD8ZpEmGfhesqLGLogonZyuMkFiFv
         1FPDutFm+QjC11xvB6n4xpUwkapT0pCnRhFpHpKmfuD3WEFAecn7qOHNh8/+Wk1e7FMA
         0n2nXfyeNlqqKGSG3M3gOhUwGG2HQXSkvHdABtLfmpZUsCbz8pd5HgKcRjzAk7WdQq02
         W2JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9t/CLK8BxS9OeU4Z6i2BKvMosfBOKWu+HJDoPOZymLI=;
        b=aIrRkb5iPDr4f6oLzbJH+Jre0NW9pMHAQlo4WEMYNlwOvy+MW59lFn2o6PLYezv51w
         9E8Jjue3lgsJbarx6o/eT5gS+fSTtJvBIqxD1l8elDc43pplWJHMndryqRr3aAjk3M0+
         TbOfGJqPRueHnZOBRAbtWNI7f4jh3fG5GMdNKm3AxaLCdeySuboQBu0SclVhO9gL2Kjq
         Ddmpjbe4fQont5sgbtyNA2wjR1VJZSvH5lEsui5ck4SWnKJpUSmQcZr5df5uqQ/ikR20
         cDhlUnxOBc+SXbAaCGdtl1ftKmwP3xboda5RtBSoFVVWZGcKlOXOWC80xJDuyDEaZmVH
         Z30g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MIAL/TntAN4i8p/9d7/HCp/BkDvwqf4k/1PCNXxCB6py4m2sY
	OyP9IdEpT7DScRuKSoVTysI=
X-Google-Smtp-Source: ABdhPJz7Ni3AilfcHcc6dVEMxdOJmuKRvVAXPFexYcoCbK0cqESIRhITQ+gZjQqorSPYBcA+VubPFw==
X-Received: by 2002:aed:2f44:: with SMTP id l62mr538816qtd.44.1614796469016;
        Wed, 03 Mar 2021 10:34:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:7c5:: with SMTP id 5ls1679724qkb.8.gmail; Wed, 03
 Mar 2021 10:34:28 -0800 (PST)
X-Received: by 2002:a37:9b82:: with SMTP id d124mr252059qke.489.1614796468568;
        Wed, 03 Mar 2021 10:34:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614796468; cv=none;
        d=google.com; s=arc-20160816;
        b=tJhkhdKtdXxG/iimxYTOm5rlxQIv1wAjvn9X5Y58Zlx1GyQRgmW7g+00L54i5ffCM8
         dd0PxD+oZ7IW4qcZ5gEsV6HB6rpaIOFULy6wXdwGLHaWJgS7F/yBPoqiZKpssZhU3vbx
         RDSpciwzGxC+xjVL3f46BeJow3nj54WQvmvAopNjCUDs1fAjMVmaa5ybcTJC5yNEFwPS
         6acZGXmzWcF1Lv6P2bmOtdzMpieiEwd23NfUHxpSN8koWFdLJJLWWkc/JNRbvjV/liIF
         KCCKOtLtLMWsvfzj1p4sm+bEVSQvyvU0wTOo3WyxrLXyflLURIoldXgRQdtbXP2q8CHd
         Dxgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=Pb1Yn9QvQ5AqxXkqEhyuLAwufQCMvV+RCtumnsJ0qLI=;
        b=AgTfdGb5a4XqqG6BmaWznvgUU9uNu3/8raUw7qVsFWgq5sGwCvNJH/PvPcEzVusg7l
         Qthv6DYNNuuBf6+Z66dWXzmoudi4MQ8HOkZclPaV8KlRrfLr9Ip5uoVGoX+2WohphP3S
         7yycWUYVIvGxlujhDBQfZkig6SJBsCwr6DmO5bfzvizn1FECjo61sfwsPE2sjSb3kAn0
         w16xfTZoYd8Btjw1yThUVkJn5pHkgbv8qLSRyhIoIslGBBBU8mjONv7dMGmnbxWmsHG6
         I6cLdb3Idu0TIWrkoDT+7AIFoKnHAsYWwDgPsKXHDG3jGx1m4IM+qWh6tU5roYx6oqgQ
         cJyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Hdk8QCc0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id h28si836513qkl.1.2021.03.03.10.34.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 10:34:28 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from localhost.localdomain (122-103-140-163.kyoto.fdn.vectant.ne.jp [122.103.140.163]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 123IXcJe023524;
	Thu, 4 Mar 2021 03:33:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 123IXcJe023524
X-Nifty-SrcIP: [122.103.140.163]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] kbuild: check the minimum assembler version in Kconfig
Date: Thu,  4 Mar 2021 03:33:32 +0900
Message-Id: <20210303183333.46543-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210303183333.46543-1-masahiroy@kernel.org>
References: <20210303183333.46543-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Hdk8QCc0;       spf=softfail
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

Documentation/process/changes.rst defines the minimum assembler version
(binutils version), but we have never checked it in the build time.

Kbuild never invokes 'as' directly because all assembly files in the
kernel tree are *.S, hence must be preprocessed. I do not expect
raw assembly source files (*.s) would be added to the kernel tree.

Therefore, we always use $(CC) as the assembler driver, and commit
aa824e0c962b ("kbuild: remove AS variable") removed 'AS'. However,
we are still interested in the version of the assembler sitting behind.

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

With all this in my mind, I implemented scripts/as-version.sh.

  $ scripts/as-version.sh gcc
  GNU 23501
  $ scripts/as-version.sh clang -no-integrated-as
  GNU 23501
  $ scripts/as-version.sh clang -integrated-as
  LLVM 0

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/Kconfig            |  3 +-
 init/Kconfig            | 12 +++++++
 scripts/Kconfig.include |  6 ++++
 scripts/as-version.sh   | 77 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 96 insertions(+), 2 deletions(-)
 create mode 100755 scripts/as-version.sh

diff --git a/arch/Kconfig b/arch/Kconfig
index 2af10ebe5ed0..d7214f4ae1f7 100644
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
index 22946fe5ded9..f76e5a44e4fe 100644
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
+	# If it is integrated assembler, the version is the same as Clang's one.
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
index 000000000000..205d8b9fc4d4
--- /dev/null
+++ b/scripts/as-version.sh
@@ -0,0 +1,77 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Print the assembler name and its version in a 5 or 6-digit form.
+# Also, perform the minimum version check.
+# (If it is the integrated assembler, return 0 as the version, and
+# the version check is skipped.)
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
+orig_args="$@"
+
+# Get the first line of the --version output.
+IFS='
+'
+# Add 2>&1 to check both stdout and stderr.
+# If the backing assembler is binutils, we get the version string in stdout.
+# If it is clang's integrated assembler, we get the following error in stderr:
+#   clang: error: unsupported argument '--version' to option 'Wa,'
+# To avoid the error message affected by locale, set LC_MESSAGES=C just in case.
+set -- $(LC_MESSAGES=C "$@" -Wno-unused-command-line-argument -Wa,--version -c -x assembler /dev/null -o /dev/null 2>&1)
+line="$1"
+
+if [ "$line" = "clang: error: unsupported argument '--version' to option 'Wa,'" ]; then
+	# For the intergrated assembler, we do not check the version here.
+	# It is the same as the clang version, and it has been already checked
+	# by scripts/cc-version.sh.
+	echo LLVM 0
+	exit 0
+fi
+
+# Split the line on spaces.
+IFS=' '
+set -- $line
+
+tool_version=$(dirname $0)/tool-version.sh
+
+if [ "$1" = GNU -a "$2" = assembler ]; then
+	shift $(($# - 1))
+	version=$1
+	min_version=$($tool_version binutils)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210303183333.46543-3-masahiroy%40kernel.org.
