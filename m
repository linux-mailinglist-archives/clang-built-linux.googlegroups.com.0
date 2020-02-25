Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA4X23ZAKGQEPIZWF3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 6616716F0CC
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 22:03:01 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id r16sf332284pls.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 13:03:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582664580; cv=pass;
        d=google.com; s=arc-20160816;
        b=b6CzMsg7/+p1O5wRToQpvLUlvsMqVrS8gApiaAblwb/u3iAlJ8NZ4ct5+DjzDMkhXI
         +v1R2STiBaxqhtne+RF2wFycCTrOBPv+oHjivALzn8t87Zk8DmimeJ2lFIElugImfEMV
         4LdIZUarqGpw1zBPoLG2C4B6R6F5sBv5UC16nSGhpkpuOoYBzttZC5XT+a7V3xcej0wQ
         QzyJ8O8EMAO6AlYesjMHRQXzysPiJctzNqFHXOYILwH2j651j2VH6eUKLAXG1k85/b58
         kIzFXwTcA3ZGnOv8bZAKNAeKH3jmh8exIyiFEgoj8qnQnSYndjcB+pvcz2eWPFtmQJzd
         zHLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=aHAH9yXPpXLv/M+ozajEPPPG9QVjFrzM+rxzLndDhbo=;
        b=jFN6y6lbS6xJEMVyGs16pTS9H8RLuUqK1UWu4gNl38a7xmwWW9Ek+bvVJmUkrIOj3/
         DdaMh0JU6SJY7BYHRh9iU0h7RiDBqKA/FZMt69s2lUU8oMSeF3YrDGs/bRBoV5y55652
         FaAgB8MGFxnzcadigXbLbs+B3G2QUN+LdtE+2nDKwb2sdtRfZ/556tRI58F4/jrwgan9
         cVFV5nqJCU1bIYNqYIu3stJtXAhTn0d5rqSWF/mmVKwcnYiWiNPkDH0QDNigzIbuNXr5
         VZ2n9f3KL+v/XnfVqL1My1kUbVvTJRyTesH9uh9PE361R6Ejj+ZioLCps/FpO6d6d+ak
         IYCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="az9/lEQ6";
       spf=pass (google.com: domain of 3gytvxgwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gYtVXgwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aHAH9yXPpXLv/M+ozajEPPPG9QVjFrzM+rxzLndDhbo=;
        b=ISm7Z/whnLTnaZ1onih0JMcQitj3mF/rukNh8e5yQvcko2Ao6a5ISN4uAtGVbmasnj
         oCQV0TJ7kJD1OsL9bZl5jnOcRJgFOdMT2rGoCz/0V96TpJAb3peQB4G1p5Eoaui+9UmB
         7VpW/R0HC5XsxIVFZgpw5ZEuveF2w63LH1StkVnmJF+6SJTt93GMvPHAXfv1AWv90IZC
         B5KE8VGWk5sRHTUSrDuruDuww1iLgW++6PQ3OKBMN6bRcKVM/D1ygky4mjZPYsKM+SeH
         qrE2TqcFz5qx031IvutCokXSJNxr6YCpNrTlQh3aURXg1PN/XWyWiPedD9wZy9PBckt1
         W1hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aHAH9yXPpXLv/M+ozajEPPPG9QVjFrzM+rxzLndDhbo=;
        b=Eb1vC92LamqJ1+2Iqq9fhHTQyN/GfWrX5gUfnmkDoTUYXHI5eqw76jZ2BIxvwE3Smf
         qKlCVk+EtcjH+QwBPTCt1fBR2/gmiA6w9QDbSH13AeN3EjSYexAjPp96VWoa2Tbf4yem
         bdDvukjk00PAEU++m9xn10MtA1MFzH4QYL362MyCsYbFCjymZvLOuZZt5vkCxm3kDAoq
         HKPEaBvm8q4FvRvwlZ0OckEvYryaxrFmmr5V4B57Ij6R11biXPG/OKKQgSeRWmv4mHZi
         GmsJpOoBZS5fF1DTZ4v89VxMGGrvlV7LbdejrxXqGk+KVUcr4og9VtVhpZYJKtpz20r5
         /kbA==
X-Gm-Message-State: APjAAAUS2AYQq52Wd1sSx6OBMDGdd6bEvdides6g3opuv6C33sFRnBzR
	Bl7eBwF/vwHzA+lMkSRV6e8=
X-Google-Smtp-Source: APXvYqwqfOd9eOm7sUNiGJaxceu5hNH3bpnaEL0ouU0sMRdcvdMISKyQbe0U1aeYxVbFqYD5bNlAUw==
X-Received: by 2002:a17:90b:1256:: with SMTP id gx22mr1059863pjb.94.1582664579915;
        Tue, 25 Feb 2020 13:02:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:364b:: with SMTP id d72ls79647pga.5.gmail; Tue, 25 Feb
 2020 13:02:59 -0800 (PST)
X-Received: by 2002:a63:d918:: with SMTP id r24mr453387pgg.64.1582664579413;
        Tue, 25 Feb 2020 13:02:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582664579; cv=none;
        d=google.com; s=arc-20160816;
        b=Dh/YmNq68Bn9iYuiJqR8iRymR4w4hR3AbMNsoTg7ZwJVLkAH2Iws2upTaCwLm9fUNv
         LrcznfG9lWPD1EYWKhZRfYViApfkZ1CIhTUsAEK36sKkEhwBgBszNjKBeOKkMgFFeG4n
         CVR9yxh/OgbVieouerisVrYl8UfrkH7m+mKJIZuFtxehO1GwFqTDXcPVhPgY7AUqtO46
         4dc2QuVNxu6jqz/V64QoWiD4WNXq83ZyJ+RkAQYomUcG2Ac5mf+DDymPj0Im48l5Rwq1
         DX21ssW54NUjS0JzBLQSx5JkOO2mG/1jgh+rShNs4HUSSevNbpi7+0bzgdJ1NlSHLAdT
         2n9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=vWB3la6MZAcuUeVOqIcp281F5LSfjcobFajXxwkFi6A=;
        b=yGU9ylpdeCt2FcPZNTGvxwLzGI8bkD38yEDMZBCUnWh7pIqQTYEw7Ua5cexWcAOkkW
         K0ognuL4mgmZtnBOtdAOmfWwtjgdPpLmNUbm56sKmIOBtfUdWKm7RDh6wrDKKLzzfMLE
         1xmtvFc4vVEjo4f+oqWx6OmUIu4l+WteMeBIFIhkv9USVHgomf2R2U3DpuPCsT/f4LIj
         y0I/ko+Wad1MHpvjqD2g2xtgIcyFDLssofEZ67fP7LwwDWcsj8WI18yd7soDbjDd0YF+
         EGCYmYRngF96rAQwianGec7UlnCaUi+h3sL7WQ1U/CefrssyrINKFKvp90B+xq3oBVwT
         mD6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="az9/lEQ6";
       spf=pass (google.com: domain of 3gytvxgwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gYtVXgwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id m11si48276pjb.0.2020.02.25.13.02.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 13:02:58 -0800 (PST)
Received-SPF: pass (google.com: domain of 3gytvxgwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id n126so522732qkc.18
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 13:02:58 -0800 (PST)
X-Received: by 2002:ad4:48c6:: with SMTP id v6mr930719qvx.207.1582664577840;
 Tue, 25 Feb 2020 13:02:57 -0800 (PST)
Date: Tue, 25 Feb 2020 13:02:49 -0800
In-Reply-To: <20200224174129.2664-1-ndesaulniers@google.com>
Message-Id: <20200225210250.64366-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v2] Documentation/llvm: add documentation on building w/ Clang/LLVM
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: corbet@lwn.net, masahiroy@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, Randy Dunlap <rdunlap@infradead.org>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="az9/lEQ6";       spf=pass
 (google.com: domain of 3gytvxgwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3gYtVXgwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
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

Suggested-by: Randy Dunlap <rdunlap@infradead.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* s/On going/ongoing/
* add Randy's Suggested-by
* add Nathan and Sedat's Reviewed-by
* Upgrade Kees' Sugguested-by to Reviewed-by
* s/suffix/prefix/


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
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225210250.64366-1-ndesaulniers%40google.com.
