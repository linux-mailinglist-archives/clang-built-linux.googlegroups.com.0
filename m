Return-Path: <clang-built-linux+bncBDYJPJO25UGBB24ST2DQMGQEEERTXEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 499DC3C1C08
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 01:25:33 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id f5-20020a92b5050000b02901ff388acf98sf4570383ile.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 16:25:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625786732; cv=pass;
        d=google.com; s=arc-20160816;
        b=zbBeZyHSxllBt08YQitVbn7OWsXKVF00TOJvpvxfv3E1J3dBmuH+537WUZlMCZb2Hs
         JsBqA+AkazVhggQex9vtPcj/Ic3AV9iLcDFUBtW0UbX1EEWptmnaxeYg2B5GtpXJhgmZ
         r6zl0nd9wEpQCzTsho+yjZa5+Kg+w2+dL82yr+OxjpjKR8R0/DPAlVRJWEWcF+E4wpK1
         U4OF7Wu+h8OGhGdA6PtmpDg94awSF4pYSue1NnjpV/pji2H5QdadM04J452sW5wnMKh3
         aSsjhg9s9nBfj92XWm62Ls3C0GWATKYIXiKYdLG92DA6xyRAjR7VWpfqhI9iqGJqNuiN
         exDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=T1qFV6J5InC6kYke5bhxdY8nXddhXnBAx9pASxT2WCY=;
        b=CFvxmFOCssSMYkxER0JUbLozykkzY3nG0GE4EhwgucGVuHs0yIhJgEI7vgz1XkakIA
         XegzsN0TkB7mEI7QYTsZyPYxvtfQ6FkLuwVrAzZnG1GdVjLGyVb7SAOTedE592duJurv
         b8ZTlyPamJph0QnQAbWE7khMS/OENdkACDHNY1X1d7oUp3hmYGG15mF9FA+r5lVzywbM
         YUJL/jX+1kn4xcqnbickKTWEL4CVx6Jt9W8tRjT4DSs5RFW3VLJbcXfF6kQX+eUdQdN4
         wHcVL72fs/yTM10IbuUEriDAwig+rHdI2T9vxx4uiGdn4hBjBynIPp31ZHuEhVdhuTt4
         b0Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PicVCFX7;
       spf=pass (google.com: domain of 3a4nnyawkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3a4nnYAwKACoTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T1qFV6J5InC6kYke5bhxdY8nXddhXnBAx9pASxT2WCY=;
        b=WV2zMLspGtOLyC/wc5mbIiQXYXpctxRdLshVq8piJe7DzLNirF6LEr6Bpkcyn+BaF3
         91GUO4J4veDPHzET4YZqcFKZtdc289AaNQ862/eKe+0gnijw9barkWbWDMTpvIeGs00Z
         kO1ys7dQ4YU8vDt9hsp9Lkn/izOx4IDc7lDuH9YYOXohT4pZZBVAm08rvrlCoZeOT0St
         lor7kzoowQia3MOuwc1PTpNmFI8i1lnsM79iYieLboCS2jkBPGD8uhnleA9wyfuDmqHf
         tq3b8odXnHPPcj11fnOUf70AAqf24Zrs54B08g0zyu2tXZYtc+kFKjz7GN7+fgKaghO2
         NKJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T1qFV6J5InC6kYke5bhxdY8nXddhXnBAx9pASxT2WCY=;
        b=eAjgKadsWkosAxCutKcrlRqshqt7PTk65t8Zpy3oBrKB+3enY0sWKfKEyjRXunY+rV
         mULVMfPjXd5mkAVDtqa4woNRaZn3LgnsFCY9yoZkbEW0En8mD1iJc0sj3Pc6HAoH3TtV
         qmrRfpo+R4KmaSGj+A0EjnDhZt9G76JCEzRkEQR153f4+pQmYHB3sd7uDCY3np7be/zd
         O6CRkj/d0A8gaIUyv9y5tQAjMfP+xB64goSbl2Jkt/4ZCeDMLyJc+SBzs5dbAssdRVYd
         DxnEpRsl1S4tavvLmRTqUG9EpXoOrSExvsGB4Y4vNqTN/aqWn3ckP2rOEmmkbINk1IsI
         fEkw==
X-Gm-Message-State: AOAM532Nj7ewKZo5usx8Kwjolbv5uU4FPdWP22TyBjJYzDk/rzX1C73Y
	toaIwbzFA523gU/wSHfHkOc=
X-Google-Smtp-Source: ABdhPJxYl4gStMv2a9RCCLelGjA8pUIH376CRT5DlDU2wnC4f0O+3LP0lkgpEjTSqA5l1j0wTTL66g==
X-Received: by 2002:a92:1948:: with SMTP id e8mr23206238ilm.77.1625786732029;
        Thu, 08 Jul 2021 16:25:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:39c7:: with SMTP id o7ls593268jav.0.gmail; Thu, 08
 Jul 2021 16:25:31 -0700 (PDT)
X-Received: by 2002:a02:c00c:: with SMTP id y12mr28948792jai.99.1625786731744;
        Thu, 08 Jul 2021 16:25:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625786731; cv=none;
        d=google.com; s=arc-20160816;
        b=1AKdSQxeS014ysOlbLELUYXFMENVejrP5Yl3fGFeZdC+nEb0gJlAO12E1KUm9uw4a8
         gc2nXGWn1YLJl4ReQM/2y0J/Qdu/AeC1NSeK9Sw7YV+egklOw5WNyZ2kUiy1+YvBA7TH
         Fu552bu/6M9ph6ijpd/iiNNeRgOryLtlW5knGm7b5Y07A096KdJpRcW+d8N6x+Z5V93D
         mQGPhlqp8Z0TYHXEMA+Co10GRNxdazkPJcnBxim/OV91k2octRqzJ9fhX6oO7rcc3sBJ
         /VrMfbKbu3DJNyoNWoq8/b7E8g8AoYOJ5t2JEug/ChRSAhHQxIxWaOJEoV9wYePK0Vxr
         to9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SwO6fBZGz2iC3nN2qsSyi7QNR9xbovSrkFUoBq2YBxQ=;
        b=UoFGruuP8KlK2eEKxC5kWCu7LsOrv3eMc8eN1goBzkkvScHJpB+BRDCeXNr8crDEK9
         j/p07TpVPdKTnvfa5ungnPNugr4Li7K1uzascLD7ML/ZBanuuBBxxI8qLoAFLr0jvY/Y
         pub5mbYyKiD98wF/aEA2ueWcU/dnvTwYhwBNm35j8uha9GpXnOezXQBWfeMQ49LkPDxF
         /PFo11mXWHqjvtFGdZIsRD3MKU1esweN1rZgFe1y26EvWElX1Z4769+0p0V5+Xldbpj4
         Lm/WIDhXOJKLKhVwjmqtF57J/mV3jsoDPKtovglNZLhsEIvd0L1ElMMt/iecihQUc46S
         2Hkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PicVCFX7;
       spf=pass (google.com: domain of 3a4nnyawkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3a4nnYAwKACoTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id j13si219430ila.0.2021.07.08.16.25.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 16:25:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3a4nnyawkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id s14-20020ad4438e0000b02902c3cd066c0bso4504529qvr.18
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 16:25:31 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:9fd:98a9:be3a:391d])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:21cf:: with SMTP id
 d15mr33140677qvh.12.1625786731194; Thu, 08 Jul 2021 16:25:31 -0700 (PDT)
Date: Thu,  8 Jul 2021 16:25:22 -0700
In-Reply-To: <20210708232522.3118208-1-ndesaulniers@google.com>
Message-Id: <20210708232522.3118208-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for LLVM=1 LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PicVCFX7;       spf=pass
 (google.com: domain of 3a4nnyawkacotjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3a4nnYAwKACoTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
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

We get constant feedback that the command line invocation of make is too
long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
target triple, or is an absolute path outside of $PATH, but it's mostly
redundant for a given SRCARCH. SRCARCH itself is derived from ARCH
(normalized for a few different targets).

If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
KBUILD_CFLAGS, and KBUILD_AFLAGS based on $SRCARCH.

Previously, we'd cross compile via:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
Now:
$ ARCH=arm64 make LLVM=1 LLVM_IAS=1

For native builds (not involving cross compilation) we now explicitly
specify a target triple rather than rely on the implicit host triple.

Link: https://github.com/ClangBuiltLinux/linux/issues/1399
Suggested-by: Arnd Bergmann <arnd@kernel.org>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v1 -> v2:
* Fix typos in commit message as per Geert and Masahiro.
* Use SRCARCH instead of ARCH, simplifying x86 handling, as per
  Masahiro. Add his sugguested by tag.
* change commit oneline from 'drop' to 'infer.'
* Add detail about explicit host --target and relationship of ARCH to
  SRCARCH, as per Masahiro.

Changes RFC -> v1:
* Rebase onto linux-kbuild/for-next
* Keep full target triples since missing the gnueabi suffix messes up
  32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
  drop references to arm64.
* Flush out TODOS.
* Add note about -EL/-EB, -m32/-m64.
* Add note to Documentation/.

 Documentation/kbuild/llvm.rst |  5 +++++
 scripts/Makefile.clang        | 34 ++++++++++++++++++++++++++++++++--
 2 files changed, 37 insertions(+), 2 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index b18401d2ba82..80c63dd9a6d1 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -46,6 +46,11 @@ example: ::
 
 	clang --target=aarch64-linux-gnu foo.c
 
+When both ``LLVM=1`` and ``LLVM_IAS=1`` are used, ``CROSS_COMPILE`` becomes
+unnecessary and can be inferred from ``ARCH``. Example: ::
+
+	ARCH=arm64 make LLVM=1 LLVM_IAS=1
+
 LLVM Utilities
 --------------
 
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 297932e973d4..956603f56724 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -1,6 +1,36 @@
-ifneq ($(CROSS_COMPILE),)
+# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
+# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
+# target triple.
+ifeq ($(CROSS_COMPILE),)
+ifneq ($(LLVM),)
+ifeq ($(LLVM_IAS),1)
+ifeq ($(SRCARCH),arm)
+CLANG_FLAGS	+= --target=arm-linux-gnueabi
+else ifeq ($(SRCARCH),arm64)
+CLANG_FLAGS	+= --target=aarch64-linux-gnu
+else ifeq ($(SRCARCH),hexagon)
+CLANG_FLAGS	+= --target=hexagon-linux-gnu
+else ifeq ($(SRCARCH),m68k)
+CLANG_FLAGS	+= --target=m68k-linux-gnu
+else ifeq ($(SRCARCH),mips)
+CLANG_FLAGS	+= --target=mipsel-linux-gnu
+else ifeq ($(SRCARCH),powerpc)
+CLANG_FLAGS	+= --target=powerpc64le-linux-gnu
+else ifeq ($(SRCARCH),riscv)
+CLANG_FLAGS	+= --target=riscv64-linux-gnu
+else ifeq ($(SRCARCH),s390)
+CLANG_FLAGS	+= --target=s390x-linux-gnu
+else ifeq ($(SRCARCH),x86)
+CLANG_FLAGS	+= --target=x86_64-linux-gnu
+else
+$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
+endif # SRCARCH
+endif # LLVM_IAS
+endif # LLVM
+else
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-endif
+endif # CROSS_COMPILE
+
 ifeq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -integrated-as
 else
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210708232522.3118208-3-ndesaulniers%40google.com.
