Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ5YROEAMGQEUV7G7SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 303923DA96B
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 18:50:50 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id w2-20020a3794020000b02903b54f40b442sf4197138qkd.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 09:50:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627577447; cv=pass;
        d=google.com; s=arc-20160816;
        b=G+aV/9SFhfInw+/pcTqav0k9+kC/3TLVxKrOAIJCHJaMOeGaGvsjFp/NLm/xVWoHvz
         1WZ/1XPm8UDst1ApzsBBSPAW3NSDuK3jWDXrgePX3Ye1LTuryvmHbsokLx8Wy6AifuBk
         t5ZNsEBk63w5XZi+fK6kcFsTzvJbU0ZePYHiLY6pKyJuoaatYI0iOIB018Slc5lPSxs5
         Pn0SLWjtFHSQbhM7qwkLlY8YX70nAUHptzyYhiXUM8p/ycZTsNZ37UKcGGzvttvkMf5R
         2XG9nYeACdGbeA2yqgF/l7LBc9JQZ0y/kPOyd21ZiqVk0j7KJ9JUXen/y7Cd8Yj56KT7
         zBMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=PhkR8IvLusZ6ieI1zscF0k900ZVMS1DTrPoY4rIE+T4=;
        b=JJfu0SJDCB1flI1y4BuuCZM0yWU4rr7F2psIc+0P/ZnCeFBBjEEUz/7B+j9nSqsXJR
         ImMhz8EugQwFEHAMrflHVJA80zNyYl2C9SDHWGHsDDrz4rq6wx/ElyNl0jCeRUBS5651
         yT8sHrhM1EA6loUFiaJ2nDgrJb2zYQcLO62AUcyN9RawZT/QY9IV+3SQP+YCJj9UJYyN
         4UWuynxLvQgUhLgXUDMqFTUub4tMS1tgITMMQUWhpX7ybvOT4/yscNrH4FCFZUZaj9rN
         Vb3sY47ZOcRs46IKPO+S0KU8tT9HbXB9Yv2j7coS7hBd7D/iBnjYnkfWfXlpb15hZ8O/
         iIOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Z887/h+J";
       spf=pass (google.com: domain of 3ztwcyqwkadkiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3ZtwCYQwKADkiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PhkR8IvLusZ6ieI1zscF0k900ZVMS1DTrPoY4rIE+T4=;
        b=X8azpjFE5ZrHhL0jzs+GdnhEYfGas032ygykOLJCsGmfMgxiI3IsRXeE4VURrwv2uD
         wYKIyGbx3YKcVQWiLoyyHiVqp9RK8ucVnu5lhTPOlPRx39Vz6k5TInFaqY4IS1LdQHOW
         1pJey12bw7x+FQ9EKqrwgToabtCBy5S2xmjMxYWgXbV3JaB9DfTGtKjaHXeELZXX+sZL
         CMuYDuMNiLajGgAPEPlGotS0hQcNxsfYEi8/D6pavNNbY9SkGpTFU3XXKvRNLem5G/XW
         hj7lVcPMV6Ziu1yAVkML3d8B7YWxBoF8DkEnJxf3jKQT7zizUDTq3hvbX3K8uz2YPRsz
         L8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PhkR8IvLusZ6ieI1zscF0k900ZVMS1DTrPoY4rIE+T4=;
        b=Ce7wAtm5tYRDcALqZbyZVtRsabWJKngaxH42RGbn/Lw1BvpZ7o/Gw1Kgdo/6v2aKkQ
         7sbqJ1pQuBDrQeAvZQTiZI1swnQz7W+6fA21Kbl8TKSDYrYXT26eNV7iwjDbX3szEiZ8
         sAKCx5Ho/YiJOP7vRPwYOuQ3C7WZSdwqrrqhksyATGCZBETKADMRGQJK34fBnUDVBFWv
         F6jFDZfoaDaCOhBXFAzA9AoMLWKbxiPLXL8pQN9zVFeTE6YrqhziZYepHo0AIUrdScQF
         UWYo4KbovxMFh4eaNXnIXCttCUhHoC9gG/HAfGu5+Kpy72GZ9DL/UQrKr0IeIuw0pO/I
         Kn+A==
X-Gm-Message-State: AOAM533d+elo7Nhtz14JcOeC0686AyI4drI7e3vod2un8F8xbykB36tc
	ZaZx0uQQQmt0GwGkgevP6Z8=
X-Google-Smtp-Source: ABdhPJwigzQu4aM6+SG+GIbGPehL/9LbBu7tcAXqYXiI7qSWmF2xtB5ApccAcC1xwLV1Y4i44P/6bA==
X-Received: by 2002:a05:620a:13a1:: with SMTP id m1mr5969534qki.91.1627577447151;
        Thu, 29 Jul 2021 09:50:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6396:: with SMTP id x144ls3634497qkb.3.gmail; Thu, 29
 Jul 2021 09:50:46 -0700 (PDT)
X-Received: by 2002:a37:8747:: with SMTP id j68mr6224494qkd.165.1627577446526;
        Thu, 29 Jul 2021 09:50:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627577446; cv=none;
        d=google.com; s=arc-20160816;
        b=zCGu0MCmkaKrE2C5k7Y+nFTQ6/7f+Ox1/cw5ngmEGWMn6eFCKoEGmq5n9Adn4gWtDV
         l0ldtKUimHchA8HovhVrDcOvr8i2wLo05zwpWwkHL9Fhe42e2ycEucieCQZuZZSlNEmK
         bsD5Nri0h/ya6GpfsT53KalCZQ0vjJFdyIxPuPIZwgsd0F5tcfyy63mspt7+QYhq9ERT
         Dh/BiTZ8WgWC7z8U88yXS+to+j3Zd8bnBKZWf0yZEhH71HyKkA8oOVoRexHwoUzFY/GY
         uKnnMPjA8Dj8QsB8DSUWl7KmAvDsrS/o2kEhGqYGSQ78/gqb9/63Z407kkKHY9P0ZwL+
         CgNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=x9OsDi6ntYJ0VIZCmJL557cNSnY5r/Ab9zmZ7MgbT4s=;
        b=oEWIAI6YHqr1y3dC3oh5JjuvrTxBHr6bBw4wS1Hdt1RMlM6oH3qcJ4vXeY3DY0emr6
         rCuwlC6fWnM45sqx/ltHkIUelHEn5OnKnjQLrmPE2zCTVzPkk2bgJLWBnsXmbmuGdu6t
         gjj5UPeYTHlS5emtT9iOa0AJPeCVYnGeeA0r1RnFAPCrL2+RkWMBopA254lOX3ZLSlLm
         NfCCDpyfMEZvAPzX+wP0TXi5FvYxo1NPlwfQsCzOQlKLsSKckYHwOFjS0aGOUwVmiodI
         SULO2OSb0fq8fxWbXJB2d+5eaOjCSb3YQhzHpQPwZlzrYu03S7IsYCJQe0KueHPYIzF7
         WQGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Z887/h+J";
       spf=pass (google.com: domain of 3ztwcyqwkadkiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3ZtwCYQwKADkiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id z24si277226qtm.3.2021.07.29.09.50.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 09:50:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ztwcyqwkadkiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id u22-20020ae9c0160000b02903b488f9d348so4103600qkk.20
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 09:50:46 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:8132:32f4:cf29:1268])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:d446:: with SMTP id
 r6mr6264764qvh.3.1627577446115; Thu, 29 Jul 2021 09:50:46 -0700 (PDT)
Date: Thu, 29 Jul 2021 09:50:38 -0700
In-Reply-To: <20210729165039.23896-1-ndesaulniers@google.com>
Message-Id: <20210729165039.23896-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210729165039.23896-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
Subject: [PATCH v3 1/2] Makefile: move initial clang flag handling into scripts/Makefile.clang
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
 header.i=@google.com header.s=20161025 header.b="Z887/h+J";       spf=pass
 (google.com: domain of 3ztwcyqwkadkiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3ZtwCYQwKADkiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
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

With some of the changes we'd like to make to CROSS_COMPILE, the initial
block of clang flag handling which controls things like the target triple,
whether or not to use the integrated assembler and how to find GAS,
and erroring on unknown warnings is becoming unwieldy. Move it into its
own file under scripts/.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V2 -> V3:
* Pick up Nathan's RB tag.

 MAINTAINERS            |  1 +
 Makefile               | 15 +--------------
 scripts/Makefile.clang | 14 ++++++++++++++
 3 files changed, 16 insertions(+), 14 deletions(-)
 create mode 100644 scripts/Makefile.clang

diff --git a/MAINTAINERS b/MAINTAINERS
index 81e1edeceae4..9c1205c258c7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4433,6 +4433,7 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
 F:	include/linux/compiler-clang.h
+F:	scripts/Makefile.clang
 F:	scripts/clang-tools/
 K:	\b(?i:clang|llvm)\b
 
diff --git a/Makefile b/Makefile
index cbab0dc53065..010e3a4e770b 100644
--- a/Makefile
+++ b/Makefile
@@ -586,20 +586,7 @@ endif
 CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -n 1))
 
 ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
-ifneq ($(CROSS_COMPILE),)
-CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
-endif
-ifeq ($(LLVM_IAS),1)
-CLANG_FLAGS	+= -integrated-as
-else
-CLANG_FLAGS	+= -no-integrated-as
-GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
-CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
-endif
-CLANG_FLAGS	+= -Werror=unknown-warning-option
-KBUILD_CFLAGS	+= $(CLANG_FLAGS)
-KBUILD_AFLAGS	+= $(CLANG_FLAGS)
-export CLANG_FLAGS
+include $(srctree)/scripts/Makefile.clang
 endif
 
 # Include this also for config targets because some architectures need
diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
new file mode 100644
index 000000000000..297932e973d4
--- /dev/null
+++ b/scripts/Makefile.clang
@@ -0,0 +1,14 @@
+ifneq ($(CROSS_COMPILE),)
+CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
+endif
+ifeq ($(LLVM_IAS),1)
+CLANG_FLAGS	+= -integrated-as
+else
+CLANG_FLAGS	+= -no-integrated-as
+GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
+CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
+endif
+CLANG_FLAGS	+= -Werror=unknown-warning-option
+KBUILD_CFLAGS	+= $(CLANG_FLAGS)
+KBUILD_AFLAGS	+= $(CLANG_FLAGS)
+export CLANG_FLAGS
-- 
2.32.0.432.gabb21c7263-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210729165039.23896-2-ndesaulniers%40google.com.
