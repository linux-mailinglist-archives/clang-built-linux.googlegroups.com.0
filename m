Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBX43PZAKGQEHCQ6CGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id DE237170C83
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 00:23:51 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id u14sf1989267ilq.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 15:23:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582759430; cv=pass;
        d=google.com; s=arc-20160816;
        b=th3x/CBhLhSXKsE//yILypMH4I0xp2MYbswrtUsnZSK7IGMFU4oM8nSnOVoC03BziO
         c24N+jze8EBKvSA0pH4DTy5V+purYLAo4KfZFnhkl/KXbk5x6pah01q1ZK5nO8J2aukZ
         z1l+y2V40Rjd5Dt3RWblYqbB+h1Dk5PEQb/q0M3eKwsfPZud4ouOGkhvWmsNqP07HPQ8
         dbGMyw9ROQx0vRWO6WgP9dxuM7vJz8bRxy3H1itXXtFE5xJV10mTyKGqQg3eHMIJ1Dvr
         38HrmVhS2v6PVR/Op0NnpIVQlQSoxVfrbex5dIgV09eSRiZR4kXo+pHYsfBzYzC48cuz
         0XNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=B9FFfiDh+FmLHgGvrVgA7hASklGf8hPJi93HsN+w5kY=;
        b=t45j4UWGVnLvlKRggwMZUeA/f6TYpIL7nld7HChoaoeDqOdn3wm61xvxNXKQSYrokh
         yAcrEXIM79WQwtkRrhh+GXHXatKiHmhcKmiYmP83DVSuAobrF0/oLpIOOpCPaME5+HuF
         23yQuSXwLBCSMtdm5wEyhGx1gZpRUYPpHVsDEQHOAav2zaYq5eQ7rS4kt2rMTcpcIqzZ
         30rd1DCkp2tTndzbvMn1/21dhQZwubR0/xdR8Avw5FZNF1l7XxyGAHnwEZbFw/zqVkk2
         Y7nI+/qyljwcle8+UtUHZoQTZ9sLtRktCE8bVchug02LzYAnc4cTMR6wLkS3IFTNxbNc
         c3Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GSalGtQy;
       spf=pass (google.com: domain of 3bf5wxgwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Bf5WXgwKAFYB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B9FFfiDh+FmLHgGvrVgA7hASklGf8hPJi93HsN+w5kY=;
        b=hWP7Dfii4MZN0r45VBCOhfCmvjZBA7Xmm7prBHtX1Nt+s8flDqSsqjNZeiKMxJvtBo
         DpwN+U4fnSsPtDviTiOjnz41RhqypYdeJXwVNl/KicWWkHiTw3NfNTGEGHua+29Iy48n
         n8nNABQUCsxDbzXOuPStcLlCWug/J3HCrhl9ZxXImrcBHV7mlSFIAjAI5AzOs8auvK2e
         ipbTYiYjzvDZrNZqWbeFm1LloA4+pKIJHBlWpG8ZoaKOkik6dju6++opR+FjYXfdhAUs
         w2zlU7l47ESP2B7YHKrubs8JW7yPxx4tMpqsAT8znTVjBEjQdjKNlfLMXxxa2nYvSq/F
         c3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B9FFfiDh+FmLHgGvrVgA7hASklGf8hPJi93HsN+w5kY=;
        b=Y9CIimkjRxUjobJaquXVkMtztcCZMk7ltcNbQiNnYkykwROFKkUvwPYHkJn8Bjv7tq
         Vmp/XA/SkhTLADAl96jRdvA6jMbklQzAdo7z3RFT8voWYuzfq9aKw+Km85nbC4CLaIfP
         s3kHVLc7EQBbOQQ2HEoOaBoDkUXy2Pt0q3U6TVCJId36W1ddJ3GHCHJjvV3muv2O6273
         oJHOGWybdmPbafVknvdXmMl/jLqhQPmbEeAYcmMJRO5ZepvNawDk5qOLDY2kyAh1K/DZ
         UlNRpeZZnBU97LcTDE2uFA+DEqHKypVIiID5G2DkB8QeC+d8Vo4RPelpAgzdFyfwIsNj
         QUwA==
X-Gm-Message-State: APjAAAWYrerP3hQfE/c24N+WXNLR62EmBSQndJcqtdPMIO5SmNtKdlsU
	DZzZ2tPjt7CdaCMk69xJGzo=
X-Google-Smtp-Source: APXvYqxREyY33gtfyB7jI1zqQTZ87i2qkfh1jp2tiOr/z90Wf1Y3MIBPjY1zLf5i2RzW/hQUWsYaJw==
X-Received: by 2002:a92:5d88:: with SMTP id e8mr1495998ilg.106.1582759430631;
        Wed, 26 Feb 2020 15:23:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b0e:: with SMTP id p14ls244740ilb.4.gmail; Wed, 26 Feb
 2020 15:23:50 -0800 (PST)
X-Received: by 2002:a92:d0d1:: with SMTP id y17mr1528757ila.83.1582759429918;
        Wed, 26 Feb 2020 15:23:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582759429; cv=none;
        d=google.com; s=arc-20160816;
        b=uCnFgA+mFYa4rEZd03D37ixKLPPHTh+iLzz1NmTOlVajgZ5p86mso6YYMTsIKUt8wB
         tDlgQwzzF7lo7zjdvmNKhE3xcRMzrT/HGC1bATq83C4Xa7/89JeSjiqisX9fGYneusOa
         qFQljWZ7S0F7lFJ6DvTgwoaqqh7oxdx1WW9TKvWNSkyupvKasNX8GBUDRwhaIMWO+h/F
         oVJ+i+VaQxVdeyoRUZy75ul3A0I2wviNT9L1mpMxfhRbxTOqo3Wfd/M13uL1DDPujfF1
         KQy9IshWjRsfmmMPuJeZstCBmWhfxSln0kw6Tcl1sIU9/TPgSJPtji2kdy5r6ZvF7XmH
         hrwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=zMAfUHJJiNLY4kAwxfSfFqfgoKQ5jUFofqSLJDdWxPU=;
        b=saX5h3Lwk7qtplz20Fw/gv+a30V2C2sFR0vSArEcGA/Q3oQ5pRNapiF30jWcsm21qS
         hH9iyke/Ms/1Ep6pWfybk+UdECDy3uL+xTzOgNWatDv9u+I+th75Fk4toVZ9JWGHhU24
         8v2ItBBKl2PYY1qdL+FV8FNKkXbsgN+PNOhlqROSoyJIF429rvNbR+X3TGIHl0n7dUoQ
         C7ueE5q2rdnNhe0ULJ+VgL02ZCA00d+4fATh7BtfX0HL+ov0iwIcTDxGCt2Jcwv9tVYI
         rgQpVBJVUaJKw+ah0CHyUhEGgFQuieyfSPUob1gXKpDA48ACl1y6a6A3f3sAVhM4h1WQ
         kLkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GSalGtQy;
       spf=pass (google.com: domain of 3bf5wxgwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Bf5WXgwKAFYB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id d26si100578ioo.1.2020.02.26.15.23.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 15:23:49 -0800 (PST)
Received-SPF: pass (google.com: domain of 3bf5wxgwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id r29so562511pfl.23
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 15:23:49 -0800 (PST)
X-Received: by 2002:a63:d845:: with SMTP id k5mr1115560pgj.183.1582759429173;
 Wed, 26 Feb 2020 15:23:49 -0800 (PST)
Date: Wed, 26 Feb 2020 15:23:36 -0800
In-Reply-To: <20200225210250.64366-1-ndesaulniers@google.com>
Message-Id: <20200226232336.252872-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200225210250.64366-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v3] Documentation/llvm: add documentation on building w/ Clang/LLVM
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: corbet@lwn.net, masahiroy@kernel.org
Cc: rdunlap@infradead.org, michal.lkml@markovi.net, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GSalGtQy;       spf=pass
 (google.com: domain of 3bf5wxgwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3Bf5WXgwKAFYB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Added to kbuild documentation. Provides more official info on building
kernels with Clang and LLVM than our wiki.

Suggested-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V2 -> V3:
* Drop Randy's Suggested-by tag. Sorry Randy, I do appreciate the review
  though.
* Add F: line to MAINTAINERS.

Changes V1 -> V2:
* s/On going/ongoing/
* add Randy's Suggested-by
* add Nathan and Sedat's Reviewed-by
* Upgrade Kees' Sugguested-by to Reviewed-by
* s/suffix/prefix/

 Documentation/kbuild/index.rst |  1 +
 Documentation/kbuild/llvm.rst  | 80 ++++++++++++++++++++++++++++++++++
 MAINTAINERS                    |  1 +
 3 files changed, 82 insertions(+)
 create mode 100644 Documentation/kbuild/llvm.rst

diff --git a/Documentation/kbuild/index.rst b/Documentation/kbuild/index.rst
index 0f144fad99a6..3882bd5f7728 100644
--- a/Documentation/kbuild/index.rst
+++ b/Documentation/kbuild/index.rst
@@ -19,6 +19,7 @@ Kernel Build System
 
     issues
     reproducible-builds
+    llvm
 
 .. only::  subproject and html
 
diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
new file mode 100644
index 000000000000..d6c79eb4e23e
--- /dev/null
+++ b/Documentation/kbuild/llvm.rst
@@ -0,0 +1,80 @@
+==============================
+Building Linux with Clang/LLVM
+==============================
+
+This document covers how to build the Linux kernel with Clang and LLVM
+utilities.
+
+About
+-----
+
+The Linux kernel has always traditionally been compiled with GNU toolchains
+such as GCC and binutils. Ongoing work has allowed for `Clang
+<https://clang.llvm.org/>`_ and `LLVM <https://llvm.org/>`_ utilities to be
+used as viable substitutes. Distributions such as `Android
+<https://www.android.com/>`_, `ChromeOS
+<https://www.chromium.org/chromium-os>`_, and `OpenMandriva
+<https://www.openmandriva.org/>`_ use Clang built kernels.  `LLVM is a
+collection of toolchain components implemented in terms of C++ objects
+<https://www.aosabook.org/en/llvm.html>`_. Clang is a front-end to LLVM that
+supports C and the GNU C extensions required by the kernel, and is pronounced
+"klang," not "see-lang."
+
+Clang
+-----
+
+The compiler used can be swapped out via `CC=` command line argument to `make`.
+`CC=` should be set when selecting a config and during a build.
+
+	make CC=clang defconfig
+
+	make CC=clang
+
+Cross Compiling
+---------------
+
+A single Clang compiler binary will typically contain all supported backends,
+which can help simplify cross compiling.
+
+	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
+
+`CROSS_COMPILE` is not used to prefix the Clang compiler binary, instead
+`CROSS_COMPILE` is used to set a command line flag: `--target <triple>`. For
+example:
+
+	clang --target aarch64-linux-gnu foo.c
+
+LLVM Utilities
+--------------
+
+LLVM has substitutes for GNU binutils utilities. These can be invoked as
+additional parameters to `make`.
+
+	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
+	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
+	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
+	  HOSTLD=ld.lld
+
+Getting Help
+------------
+
+- `Website <https://clangbuiltlinux.github.io/>`_
+- `Mailing List <https://groups.google.com/forum/#!forum/clang-built-linux>`_: <clang-built-linux@googlegroups.com>
+- `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
+- IRC: #clangbuiltlinux on chat.freenode.net
+- `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
+- `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
+- `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
+
+Getting LLVM
+-------------
+
+- http://releases.llvm.org/download.html
+- https://github.com/llvm/llvm-project
+- https://llvm.org/docs/GettingStarted.html
+- https://llvm.org/docs/CMake.html
+- https://apt.llvm.org/
+- https://www.archlinux.org/packages/extra/x86_64/llvm/
+- https://github.com/ClangBuiltLinux/tc-build
+- https://github.com/ClangBuiltLinux/linux/wiki/Building-Clang-from-source
+- https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/
diff --git a/MAINTAINERS b/MAINTAINERS
index 8b85f22b9b69..79e1f9bfb2b6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4124,6 +4124,7 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 S:	Supported
 K:	\b(?i:clang|llvm)\b
+F:	Documentation/kbuild/llvm.rst
 
 CLEANCACHE API
 M:	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200226232336.252872-1-ndesaulniers%40google.com.
