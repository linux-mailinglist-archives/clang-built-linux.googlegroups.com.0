Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEMGUKEAMGQE6B75MNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 746B43DE32E
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 01:43:15 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id 16-20020a17090a1990b029017582e03c3bsf744187pji.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 16:43:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627947794; cv=pass;
        d=google.com; s=arc-20160816;
        b=w64j279pq/9aNizfz4rTpjkpvCljcb1IOzLTNzIUCtlIq/t58y4Xq/fe8XHaZHgP6K
         EiYFY2XwdvWFNnVJC5U108ryU7ezuTeAOXW6v9oeuE2E9Gz0mW0LQLQNuecu73hzlZux
         Ju2u35jsP9QfqZvFudcxsYSx0E/54svVSTFVTShnBM1X+anCIm+R4sM+0U6jmaOmlA71
         tU1ZcS7eoSnMnfjKbNsSRg6MNZBPtZ5l4oA1dssN6URSJaecOXypTtTmOwT1uZr8TSnU
         zkR+aM3Q8M2eY/HG1J2iVKXbKPDrgcUZnii3xWin73jVKHrLkNICUvc4afU9qAeIDd+g
         uJtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=FMjbGue1QyDU58lCGLrSupdn9Lq5o1Ili5IcVVA67yk=;
        b=IeI5n8X/7bIRqbQMRxaZKsBAdP/8788JJI93l17VyipxMlBH1lJ9FOagetC7EuaJiv
         O+HycgCZWSeOUM1+uvoFMpRfGmrOyKpiqXZyesBl8JodBn1f4EhCayBiucLlNMfY0exj
         duyGoiuUs36tCnMoyRYmFnuGK/U5KvHDi5EtV+B2NYSyO0BfcMsfA2deOJbLow/Y3ecN
         yYyAP7adF0dnva+pGofXpNZodmGQGgZdVvy7Kjc7zht+ZRhlT6+BvW+YI0NDKf7th7wC
         8LZza+rGHmDJ9srlUT0x1JZ6pm0RS6UA6K6fbHIA6LXPf9Ms1w3rfkOjxzsrHGBuiouE
         0m/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UH3CUy9t;
       spf=pass (google.com: domain of 3eimiyqwkaecwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3EIMIYQwKAEcwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FMjbGue1QyDU58lCGLrSupdn9Lq5o1Ili5IcVVA67yk=;
        b=iThyQJUObAWdXAKU31FBSM6NEyvxJu2+Z5AsKGONE0QZ0ANXCmwtRq1dM28HMeY/tk
         lu1h8dUQUIpBrOv9FBawVOkdsn3z18M+kIZI35y8GXm3TKoCOCWKXnbD7NDYrwjxHSGC
         EvwnL01NRhONFBpoiu7T3gJt+EGOsHCKtAHynUGRk0oja4Qn4R/CCEIBLjssg6W/4HUU
         EivuMlwJkaHZ0oswjg8r23+eMVrQhyr//HZiBMunBp49wqM/hDINEqIUJhEfeAir/hMr
         h7FeRz9iZcWOZ5UCkkFKEcey0lnUyUI3P5NbwxqsEx0Ojxl1uobQxex6FCCLpMDwad11
         adgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FMjbGue1QyDU58lCGLrSupdn9Lq5o1Ili5IcVVA67yk=;
        b=iBT/DRcT40uALBsvg3c8/dFU53A4PuqjgZeb7Q/sbarSU0K7x740UtAaKOPyOmu/zT
         MA0EPGn63YMD3XxS8XVy2IJd7Yg+/zUnE0WSFz+xgyxN9DuYy0JW901iERQCuoYLyKQe
         WvFDMsuEXilbtFJsGsbn8ZbCaLnUE9mVv9tz7kntdGutnkk66ekyUjx6v0ypCoHQArcJ
         1yxgPqBEts21hfIn8gsJNSA8cgGTyh6+TL8Dekl8Gto/hvlbaWiwQKDrOiSISpm3SY9A
         ju03KVmIRcmGkDFgN0JZPegk6Iek5ro/Oixso8YgmNhZApWMyj5n3f4gDj29wzDq585T
         EAQw==
X-Gm-Message-State: AOAM533C1+LjfGFT8RwJPs+S/8YOSQvGvNAuDJ0yrk+omhjh8EGtRzZB
	Srb2IJOvGr2UZqh2acbJT1I=
X-Google-Smtp-Source: ABdhPJzeLrNBfVQlzqS5z8R93ZSZYWfFffCi49iCd4/5ioxuT3oEbsMTyD7wDjt9EWjIz40plfyocA==
X-Received: by 2002:a63:2c01:: with SMTP id s1mr217227pgs.357.1627947794105;
        Mon, 02 Aug 2021 16:43:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f05:: with SMTP id x5ls4221633pfr.5.gmail; Mon, 02 Aug
 2021 16:43:13 -0700 (PDT)
X-Received: by 2002:a63:fe52:: with SMTP id x18mr389138pgj.84.1627947793487;
        Mon, 02 Aug 2021 16:43:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627947793; cv=none;
        d=google.com; s=arc-20160816;
        b=qAzmOBfx2aM9bum4rhpJRrQLmdiIKjy1XlZqfgx8hzvRJQ6EwfMfaFxKAUOE2Y9ws7
         dQcCAtKuTIYY0HHTRbhBYB96MbBsGLpH4Cb1A1DdAJUX3zfbPiAqJ5gRFPgj+ZZz+TiF
         qJrFubG9AXE9EKeq7cVCa2fqtlsvsEo/q+1Ul2e+LG7IoKlWIWo//KwZOdBdPjPGuSqK
         S5F7lmxs9HI8cBFHwBoYbyaO/53pQRebS2Qf+xVTiDIEb6VZiedtVInC0DGifl4NUJv9
         7AakaCSzhdxbIR0yb7Tx8SziOoRkvIMDxUCr9cCY03iCkB3AgFLWPy/j07oTarnNKr/h
         0XeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=yy9pyQojvK7Hdmo6VGo2Lui7HtlFWMn7Zh2eGYLAN30=;
        b=dRS4N55JTLSn/ovdDkrom4I1o/jqSXUh26aZAejIz3qer4Le+66FvuwkfzUpbKGcM1
         A0+KSWvCrQTZXIhQrzO1A7JNHdFqw9Ye5mmB6i/o+TmJwdn6IiSXtk8xgvyYcRyKwBj0
         6vqpk7TCjDi9tJeH8NRPnmFQnXZiQFB5PkaEjow+8z3nVtCNp3qd1huznEzzYt1pFdc7
         l1Ib3rk12gDZOLCGQCEb/fxN2XQ5d6ql8afKIX6BtuaA/o5Vg+tP0KS7+J/6/5qeaC8G
         eDjSbavydvoeerHne/LaShFQFIfvcHNjaKvGflu7vBhvgGQxZvbif4ew1FfyLyZSfdBN
         I8jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UH3CUy9t;
       spf=pass (google.com: domain of 3eimiyqwkaecwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3EIMIYQwKAEcwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id k91si29876pja.3.2021.08.02.16.43.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 16:43:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3eimiyqwkaecwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id j13-20020a0cf30d0000b029032dd803a7edso14210324qvl.2
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 16:43:13 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:3db0:42c:8665:a4ae])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:b44b:: with SMTP id
 e11mr18946709qvf.38.1627947792748; Mon, 02 Aug 2021 16:43:12 -0700 (PDT)
Date: Mon,  2 Aug 2021 16:43:03 -0700
Message-Id: <20210802234304.3519577-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH] scripts/Makefile.clang: default to LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>
Cc: Khem Raj <raj.khem@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, clang-built-linux@googlegroups.com, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UH3CUy9t;       spf=pass
 (google.com: domain of 3eimiyqwkaecwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3EIMIYQwKAEcwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
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

LLVM_IAS=1 controls enabling clang's integrated assembler via
-integrated-as. This was an explicit opt in until we could enable
assembler support in Clang for more architecures. Now we have support
and CI coverage of LLVM_IAS=1 for all architecures except a few more
bugs affecting s390 and powerpc.

This commit flips the default from opt in via LLVM_IAS=1 to opt out via
LLVM_IAS=0.  CI systems or developers that were previously doing builds
with CC=clang or LLVM=1 without explicitly setting LLVM_IAS must now
explicitly opt out via LLVM_IAS=0, otherwise they will be implicitly
opted-in.

This finally shortens the command line invocation when cross compiling
with LLVM to simply:

$ make ARCH=arm64 LLVM=1

Link: https://github.com/ClangBuiltLinux/linux/issues/1434
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Note: base is:
https://lore.kernel.org/lkml/20210802183910.1802120-1-ndesaulniers@google.com/

 Documentation/kbuild/llvm.rst | 14 ++++++++------
 Makefile                      |  2 +-
 arch/riscv/Makefile           |  2 +-
 scripts/Makefile.clang        |  6 +++---
 4 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index f8a360958f4c..16712fab4d3a 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -60,17 +60,14 @@ They can be enabled individually. The full list of the parameters: ::
 	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
 	  HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
 
-Currently, the integrated assembler is disabled by default. You can pass
-``LLVM_IAS=1`` to enable it.
+Currently, the integrated assembler is enabled by default. You can pass
+``LLVM_IAS=0`` to disable it.
 
 Omitting CROSS_COMPILE
 ----------------------
 
 As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
 
-Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
-``--prefix=<path>`` to search for the GNU assembler and linker.
-
 If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
 from ``ARCH``.
 
@@ -78,7 +75,12 @@ That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
 
 For example, to cross-compile the arm64 kernel::
 
-	make ARCH=arm64 LLVM=1 LLVM_IAS=1
+	make ARCH=arm64 LLVM=1
+
+If ``LLVM_IAS=0`` is specified, ``CROSS_COMPILE`` is also used to derive
+``--prefix=<path>`` to search for the GNU assembler and linker. ::
+
+	make ARCH=arm64 LLVM=1 LLVM_IAS=0 CROSS_COMPILE=aarch64-linux-gnu-
 
 Supported Architectures
 -----------------------
diff --git a/Makefile b/Makefile
index 444558e62cbc..b24b48c9ebb7 100644
--- a/Makefile
+++ b/Makefile
@@ -845,7 +845,7 @@ else
 DEBUG_CFLAGS	+= -g
 endif
 
-ifneq ($(LLVM_IAS),1)
+ifeq ($(LLVM_IAS),0)
 KBUILD_AFLAGS	+= -Wa,-gdwarf-2
 endif
 
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index bc74afdbf31e..807f7c94bc6f 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -41,7 +41,7 @@ endif
 ifeq ($(CONFIG_LD_IS_LLD),y)
 	KBUILD_CFLAGS += -mno-relax
 	KBUILD_AFLAGS += -mno-relax
-ifneq ($(LLVM_IAS),1)
+ifeq ($(LLVM_IAS),0)
 	KBUILD_CFLAGS += -Wa,-mno-relax
 	KBUILD_AFLAGS += -Wa,-mno-relax
 endif
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 1f4e3eb70f88..3ae63bd35582 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -22,12 +22,12 @@ else
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif # CROSS_COMPILE
 
-ifeq ($(LLVM_IAS),1)
-CLANG_FLAGS	+= -integrated-as
-else
+ifeq ($(LLVM_IAS),0)
 CLANG_FLAGS	+= -no-integrated-as
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
 CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
+else
+CLANG_FLAGS	+= -integrated-as
 endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)

base-commit: d7a86429dbc691bf540688fcc8542cc20246a85b
prerequisite-patch-id: 0d3072ecb5fd06ff6fd6ea81fe601f6c54c23910
prerequisite-patch-id: 2654829756eb8a094a0ffad1679caa75a4d86619
prerequisite-patch-id: a51e7885ca2376d008bbf146a5589da247806f7b
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210802234304.3519577-1-ndesaulniers%40google.com.
