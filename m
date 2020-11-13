Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWWJXP6QKGQEB5U7CNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FC82B24FC
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 20:56:11 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id u8sf4321963otg.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 11:56:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605297370; cv=pass;
        d=google.com; s=arc-20160816;
        b=VHLmUuo7XhOTbSy66Z+U6LqhXiyYPJznW3tw5lg8LqK+ETd9apvH59hivuCv9IT1CJ
         hHMj4+N1nXWTJGqfMiRT/6NN5rwDMG2LJ86967ZVVDJSWJI8CXfjK1bFrOwdgupOHvoh
         8CDz7I7vsUHHMfHazhGAE5gXzuIgLdoAZW52rQUwhYpMoqJevdWZJfsr2P2+YNpKHhN7
         Gw1xTH+qYLkg/XZ4ckJm/heXiquG/lp2WmHXlYUYGYv6WCyoipSTkx379uKbDF+kBLWM
         Gj7PuZp5/bslpmAbIGf99PdhRpIOcQTonPPJTT31rh6gVXoRjuCIDMmAzHrZOT8NX1Ly
         /Myg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=jfOY5XuEaPdcQ4HPNwBhonw7vPlwqcqmGsqGh6i5rWk=;
        b=zBB4KGhRZHPWU3BijzU1BwL1iCy5RcxHRVGBAqBlp1XnCXUiDXJQ+ZL6+kI2JG7ziZ
         kPBLm3Bps3ZQn8FC2+Bu3HYz+3o5zarcYA9aPi4dx5w3Uwr620OEjV65OM+R7MJoMB79
         QzZB+h/JED5KCSS6ygqXxgDtjVMzyy3yX7/xs6/7JrL8Vp43HFxrd945GlkLcPl5dqab
         Iogs5wDqlj0sG9jtymc10C3S+DFt7mXS0o9DhijChYhvn9Vh9Ey3dv9XRgiFhPFCAitW
         hw14BnbSdUeV0g28zN7eQWa9JJsxuBLatPjyWImOC1YZhuAiZ1StIMTLSpKNAR5zI7kW
         XkBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rz7bo515;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jfOY5XuEaPdcQ4HPNwBhonw7vPlwqcqmGsqGh6i5rWk=;
        b=Ie5GxzvOX3HLYTvis6R8ws4Kq1MkgcXTeC0aKsG78rvVsGhyAyjuIaKwt6YiGMdMMd
         /QvUJAJcMJ1F7HSEw2cVjK6P9qiZN7/Anw3K72cCac41pni7Hh7l2UW8jLZq2Pmn8pcf
         xH64/88ccGKa4qJt0IFVgiBT+ngJL9Gkm0OnOPtBDfVOw7qvnBtDCs3woG9zkxJRa/4z
         +noZ2k0ZIcgDr+jdiA2XqGY4FdF5npqzjwr8b+KpFcY8PcxbBlWOrGPddoTwFxPXNvXP
         bE7eNNvZsNZ5WLfJR4XKv1IHYRqfQkI14cLQJMC9ZoAB3Gg/o5O699/7fbnCia8ocRXR
         4zUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jfOY5XuEaPdcQ4HPNwBhonw7vPlwqcqmGsqGh6i5rWk=;
        b=AhOFhqOIeaHojcMVfC63eKBmePSVO9t+VUoOpUIvLm+Z02mg9CZZzTvSFZLO7Ev4Vz
         gnW6yJYmC3PFEjyzFeiqR8I8/uhEjSzI0k44tyf7cj5jtwQ8KLlDPD6HTDk4cn6WOPlb
         ykcCZEMbklBKw4HUNcWv5o3q1xpK/qL6iOO8EG+6x+jjjxISMbvKWZO2K9wrju8GRU3a
         FH9NC0TifnNjeLH2rkDrR5r/xexU/Iix+KFZFKliTcn5YfZcepNrAIsaTTvDtoKGGvtW
         vohIongBdHgc4UTDDLnm8eyOKHsb/d2WS8YC8nQnmQqoTFRLbzXY1M+eHfpZqGXregto
         0G0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jfOY5XuEaPdcQ4HPNwBhonw7vPlwqcqmGsqGh6i5rWk=;
        b=PJHWINpFpKw/cTxabWx2/RlVM2LXTmo8q2niOat1xo0sMku6OFth5YA7LDOwstRQ80
         zTL4sRWrc/d8RU7zMwoLl90ZkoggZqxBN14Dj/JYu2SMAIppdy+vEpuutK2bMwgMcbHr
         0D31dbhcJy8axT1t6IMgKINUYj9/G5u65moQiELqdzo6VkVpWveT969/zQSzLZ2XjS1y
         4W3viNbGgknSEtAg4bWM3alsxb/00F+yJE9+Q8iBkF+oHEM4ABpzqoLdYOIige1wyBjM
         3KPBvHQa9vUkzdN6vSCA6eeJBZTLvFsOZkvKoFTdlwzC0/tzmxy6cSGchyrthcCpFfEB
         9tnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533r4szy+ne3lfSwLcN/1Z7D7NZegQP+qs+d7pC3sGreAbR6xIGt
	ltGnRHvdoL+Pf1GHobuDYFs=
X-Google-Smtp-Source: ABdhPJzmZwdSMWqeW+8UfbJPLIDLv5Ox/wh/wWqavjCOZ9cwzc4dUSTAXCXwLpIEnlS2IpaOCc6V7w==
X-Received: by 2002:aca:eb56:: with SMTP id j83mr2545595oih.7.1605297370358;
        Fri, 13 Nov 2020 11:56:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1ca0:: with SMTP id l32ls1827359ota.5.gmail; Fri, 13 Nov
 2020 11:56:10 -0800 (PST)
X-Received: by 2002:a05:6830:19f4:: with SMTP id t20mr2725052ott.239.1605297369942;
        Fri, 13 Nov 2020 11:56:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605297369; cv=none;
        d=google.com; s=arc-20160816;
        b=pO/BgPeAu9bBGmj/YdjGb89GCVnwEjoMzjLW9E/DoganJQ10DaY/4VMref4LzXRGBN
         u12LyknZn6ywQE2xKoL4756T2VWKDNe3T2xC6aIhoOTIKkOxW0ioytutO75YU3piUuuf
         oxvnfgSG2fKKC1MhGXgB7kfeicrYr6CoFQBU6DZo2FA4nGbQS3c7a1SwXJttFvprjo6n
         F35TfzgpwTrk9cLcbzfV1VZzEftVzsNiPiD/h2eNVKS7KjvBKV3OGg5C0p2+kq0IRqO3
         Qc3T5/MSkqZrk0k2441bwPM0eb+Eu1j6eFfbi9up/pl8Wb5Wm32uK9sgyMVFuh6J5u8q
         OrsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BuSBR3W0Up+xs4RMbJtfRRlgixduLeoiJlhk7xnEIR0=;
        b=uf1cVrJFpkbGpTUgro6OoEJz0flznM2Mle826JWkehgjABq7DyXejJOCxJ2AxYYU4+
         mqZtpqIBczweaoixd8RmzUv0XCXGJ9774u7xPwSBr4Y+B2P6DomqqycUikzDktYs+r7+
         Bc2W+6blwriR4cDEcde80IyGLs5SO8vGY1oCxA9lcMS053hZYkldbDQkboF2Z83kmd/2
         HaDsQAbLqiu21Nr4EgWxc3bv6fJhl3fF5GzDw6G9sYpPx8YIVN1jJwbE9UI6NnO7KWGV
         WKLiHr494tZQxOvjPBc6dBf0fpWGls639gPtn+tKfvPRdlGAHNTrhpbVso4OT1JEiuoj
         6cvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rz7bo515;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id r6si1391980oth.4.2020.11.13.11.56.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 11:56:09 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id d28so9929652qka.11
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 11:56:09 -0800 (PST)
X-Received: by 2002:ae9:dec5:: with SMTP id s188mr3767153qkf.250.1605297369148;
        Fri, 13 Nov 2020 11:56:09 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id z26sm6977757qki.40.2020.11.13.11.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 11:56:08 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Kees Cook <keescook@chromium.org>
Cc: Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Mark Brown <broonie@kernel.org>
Subject: [PATCH 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld 10.0.1
Date: Fri, 13 Nov 2020 12:55:53 -0700
Message-Id: <20201113195553.1487659-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201113195553.1487659-1-natechancellor@gmail.com>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Rz7bo515;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
along with a few others. Newer versions of ld.lld do not have these
warnings. As a result, do not add '--orphan-handling=warn' to
LDFLAGS_vmlinux if ld.lld's version is not new enough.

Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
Reported-by: kernelci.org bot <bot@kernelci.org>
Reported-by: Mark Brown <broonie@kernel.org>
Link: https://github.com/ClangBuiltLinux/linux/issues/1187
Link: https://github.com/ClangBuiltLinux/linux/issues/1193
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 MAINTAINERS            |  1 +
 init/Kconfig           |  6 +++++-
 scripts/lld-version.sh | 20 ++++++++++++++++++++
 3 files changed, 26 insertions(+), 1 deletion(-)
 create mode 100755 scripts/lld-version.sh

diff --git a/MAINTAINERS b/MAINTAINERS
index 3da6d8c154e4..4b83d3591ec7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4284,6 +4284,7 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
 F:	scripts/clang-tools/
+F:	scripts/lld-version.sh
 K:	\b(?i:clang|llvm)\b
 
 CLEANCACHE API
diff --git a/init/Kconfig b/init/Kconfig
index a270716562de..40c9ca60ac1d 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -47,6 +47,10 @@ config CLANG_VERSION
 	int
 	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
 
+config LLD_VERSION
+	int
+	default $(shell,$(srctree)/scripts/lld-version.sh $(LD))
+
 config CC_CAN_LINK
 	bool
 	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
@@ -1349,7 +1353,7 @@ config LD_DEAD_CODE_DATA_ELIMINATION
 	  own risk.
 
 config LD_ORPHAN_WARN
-	def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn)
+	def_bool ARCH_WANT_LD_ORPHAN_WARN && $(ld-option,--orphan-handling=warn) && (!LD_IS_LLD || LLD_VERSION >= 110000)
 
 config SYSCTL
 	bool
diff --git a/scripts/lld-version.sh b/scripts/lld-version.sh
new file mode 100755
index 000000000000..cc779f412e39
--- /dev/null
+++ b/scripts/lld-version.sh
@@ -0,0 +1,20 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# ld.lld-version ld.lld-command
+#
+# Print the linker version of `ld.lld-command' in a 5 or 6-digit form
+# such as `100001' for ld.lld 10.0.1 etc.
+
+linker="$*"
+
+if ! ( $linker --version | grep -q LLD ); then
+	echo 0
+	exit 1
+fi
+
+VERSION=$($linker --version | cut -d ' ' -f 2)
+MAJOR=$(echo $VERSION | cut -d . -f 1)
+MINOR=$(echo $VERSION | cut -d . -f 2)
+PATCHLEVEL=$(echo $VERSION | cut -d . -f 3)
+printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113195553.1487659-2-natechancellor%40gmail.com.
