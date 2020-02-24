Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVUV2DZAKGQEFJRGOTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 4361516ADD3
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 18:41:43 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id t9sf11442310qtn.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 09:41:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582566102; cv=pass;
        d=google.com; s=arc-20160816;
        b=YVOR2pYkjpSO8tDUXSvAgVc18KI3liuv7MYSRZQJixjgC6fZfwaCV9Y+M+8xhfj+8n
         OgnBrn6Uqf08Cdr4InB+aryc5N/1kS3KLVJ/LwzygESrZAZa3u1m0HzRqxsRQ3aWyDHv
         u57LbcTMQpU2iNi7wIdLx0x8A+/Uen9KPpFPmDRgEtVq27pxJKbBZ5g/nafAXYkQvqgN
         wKiRdbXIZoSw6k/Y2rPlON8nkm+R4Qg9u6NUYu+cU8F+OpkHazBFdr+eILZ+nlBj3anG
         5lYPJaZk05q3nrSm0OgTFE0fTh0ulPlrpM2Vh1RGhOpphXiAxOVJ5mVzsKRykrIZ72Uw
         nFuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=mXCNgKMcmjwuUlnkSC/BmMBQpYR3IimSJ3QCc7mFDqU=;
        b=CePvW5Yaro9Zjjv95spPbJDtkv0PINqMKapuXXUDdbYZd1uObmiD2XWJjt6oJIp2ww
         jlc56W7YEhM+BWCMiqePjxPwzjc4r1um8wBI4WAVq4LzY9k38SjRawOybS5BI4vDCzCB
         rbj005hQ31nIfqWNbmSh8ZMROceaBk5su6WsI1qk/aAl0UdZF00vXFtUO05XCKxY7ZkS
         rz+9cAmppYPJIzmqCe+n3CEZMYLhrh3w6v24QsSejo7XJ0Dn+84UILZ0QOVY5f+nLWQY
         eXabzf9+6HyKKWwFaIO5ZJj3GcUEiKOBq4TvM6LjTGEHyeXG1yU7+UAIU6K1tbE95c4u
         SW8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RVEFVPgU;
       spf=pass (google.com: domain of 31apuxgwkadmcsthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=31ApUXgwKADMcSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mXCNgKMcmjwuUlnkSC/BmMBQpYR3IimSJ3QCc7mFDqU=;
        b=YTE/ok8MQkXIXLE+lckBuGHf/mtk+KA5O15OHcyhvexoM+1x+vrPiuGQJlzu7yA4o4
         QrO3LgWuzzh3Q63YdHKTHc64QyfZ+QTBTIONC2k3DFm+HyVwiDOe5G0XsGxWSlyiPbfX
         3/fRMSzPV+FPRu0ezsJfX3TkBFL61zkC+iHOgpan5p8gWVx/E7vf8X77XuGvrgRpAQ6/
         q9wlLWxVVQU82D2+DmelA3ODoFB8dTc6vEEqWEY19JupQKltZzB2CjChN0O60s8gAWKi
         wVOWEEDA/6RS9CYEGSaOxSPohGwgrQXD0uCvEZXz0m9Zch8kpr0D6Nr6UJV4m0OyS3pM
         LjCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mXCNgKMcmjwuUlnkSC/BmMBQpYR3IimSJ3QCc7mFDqU=;
        b=rXxNQrgHuz0C8/TlwWMpvxLjQmi21A6gxfS+hCryaKeD2kN9pBvVIwyLAlkCYitRJt
         35tyOk7T2CpjplHz0RVp46guubmroE/0S8Z7yS9QrJCLxJ7WGEZdN+RrAnzCHibInflp
         klgfr3illCisPpxXHS4gt0K9LxwAeEqV2eb0Y2/Eh1h4ce+aTlzhXCxK9+RXyTH2IfA9
         q0Usv0IlhrcuzPJov65B+mcDXJDfmXokOb4T1ik48Tuute1IKw35NI4OcXveI7IKTVrS
         4RA2B+Aw/F8ZAURL5UTE8BYYkt/lLxu7prs24jCFEslTEYwalKHVWjBPxFH1EhF6n6yv
         Yx9g==
X-Gm-Message-State: APjAAAWl3cfGh0s952hmCt78clSGj4TmI5N9TgRFbW0mLvDHL8YrADFG
	W984E/g61Wm1NZZjTnkXcCo=
X-Google-Smtp-Source: APXvYqwgJG633IIeDvtDS80QtYwvrXgms379b0UqxuhAR+ucXqvU9x1qUmPnqsdTA7NQ8imjvgku3w==
X-Received: by 2002:ae9:c318:: with SMTP id n24mr53244243qkg.38.1582566102327;
        Mon, 24 Feb 2020 09:41:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:8c6:: with SMTP id z6ls3764011qkz.6.gmail; Mon, 24
 Feb 2020 09:41:42 -0800 (PST)
X-Received: by 2002:a37:b304:: with SMTP id c4mr10950668qkf.348.1582566101940;
        Mon, 24 Feb 2020 09:41:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582566101; cv=none;
        d=google.com; s=arc-20160816;
        b=Uk/Fz886jO4sm6MBRdAfzuUI3PmIY9kJTlUNnhy7BqWwckSqIld+rhBQGkzSf7Dqzy
         1rLtG7c18FjL68K9yJhBhMz4H5PNwNo3SvmHi0NGUFeuuML9VEhaTLEb2etIFUOlU5LR
         dl015Tw8D1XR+0BeCA/puMnzAgq+kZLYJoFEECyzrrAQucuknqDP7O5plCk9JGU4tvdh
         S5MHijinbjUBHJSnW/tLueTm3ZLXqeeTJTBOnja4RiMcZuQdPxrLJVRrWhW5FONSagIc
         tyHePE4gwHRB/dKTteer3cJeUilzzE/f4khD4KuHzu8CbcePCl6jWmJv3GfwcKrGASEq
         rhVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=5nz7K/9gLs7EaewmF2wRn410ngVKaW83QWECedJma1o=;
        b=OAZI3Fb5PqFA+J1VmLvT+FxfkgLyEUVg2ULWlRkDgM8EBH92bR/PNRSqn9kFsnmM8D
         LLhG8y31uPHced0YhgTZ8swhqcPPJ2xrEYqvq2l+cY1hwnGUlic3GdgF7D50S8Bduy85
         QmJ5B2fOT48K3sS+FJjCLMEjbLLL6Pbu528Q0NVMcmRfXmIB1BYtCD0fLaqgmnenLrfY
         9h6/+FHkb6pWeVfGQVkzVhMrlUAu17nS0zzt6IiF2kcnRuqxdw++MUs8DsAOmX8VPGQ0
         b25guGwfaHR4vGLQ2f8VRmB/AQiN0jOiJHXLv1L4zF5r+L41HFrFjeZTLgLxDkRuQxek
         jTqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RVEFVPgU;
       spf=pass (google.com: domain of 31apuxgwkadmcsthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=31ApUXgwKADMcSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id e26si896156qka.2.2020.02.24.09.41.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 09:41:41 -0800 (PST)
Received-SPF: pass (google.com: domain of 31apuxgwkadmcsthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id i8so7091290pgs.3
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 09:41:41 -0800 (PST)
X-Received: by 2002:a63:ae0a:: with SMTP id q10mr53967461pgf.178.1582566100948;
 Mon, 24 Feb 2020 09:41:40 -0800 (PST)
Date: Mon, 24 Feb 2020 09:41:28 -0800
Message-Id: <20200224174129.2664-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH] Documentation/llvm: add documentation on building w/ Clang/LLVM
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: corbet@lwn.net, masahiroy@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RVEFVPgU;       spf=pass
 (google.com: domain of 31apuxgwkadmcsthpjacxtghvddvat.rdb@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=31ApUXgwKADMcSThPjacXTghVddVaT.Rdb@flex--ndesaulniers.bounces.google.com;
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
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Documentation/kbuild/index.rst |  1 +
 Documentation/kbuild/llvm.rst  | 80 ++++++++++++++++++++++++++++++++++
 2 files changed, 81 insertions(+)
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
index 000000000000..68ae022aebc0
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
+such as GCC and binutils. On going work has allowed for `Clang
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
+`CROSS_COMPILE` is not used to suffix the Clang compiler binary, instead
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
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224174129.2664-1-ndesaulniers%40google.com.
