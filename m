Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBO4TCDQMGQERIK4NJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE783BF22C
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 00:43:18 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id z6-20020a4ab6060000b029024c2413e5c6sf2356251oon.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 15:43:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625697797; cv=pass;
        d=google.com; s=arc-20160816;
        b=SfKnId/4A5J/JytexiFyCbUpAdaU6U9kds7TDIUsuVeNHdvhNoQV/7SVaznJ5WUdP2
         /QyA6JHt3X2d4AF5uS4j335dvkcU2x3J+pLfR/r4aRxNYXZF4aNPQ3WQcuYMJzmFaxfp
         RcIi3G3GCeL/BJtp4VEE7BZZ4N2bdJb577JukzPjLqvA+dlvYfoGmiBDj48zq7z/rymh
         sPtk9f68i8Ig6tTwp/IngJhZGl2L4SOCE1nTA27eksnONDd+E/M5Z74Eii2msJvDjljz
         BkW/w7RbQ9Lxo6GAWoOYyKyFxCQteG0XXtkAp7pSISRJsNY1G2W1Y+j0kZyDVLkWUyWR
         ZVpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QEUY15FeYhMlvMAqt4B5NVCxQu/DBG06hloOZn5aDSE=;
        b=RjXrkmbaeT4uNBKPENtP7hdm7Dq4fFdMhELXJjzZsl3//Zh4uI9GuZTL0VMitlMegf
         vDfVaHt4xwtnbJCZE3290I0CVYINgAz2dUd3Q9eP+s87EJWXoGSKospysMgaJrk7FWa2
         K/3+HtKjyaFD9F2YTgufMjTOcxymI1xavpoBb6yoPRovS9yi9ntsIgBKzR1elWcb1H9s
         wDbVXaC0Dmr7p1/LAShkpD71RLV0VN1Pe1RgJ+diBoFicVKrbOXxVpof1+ZYE+BnubyY
         iFu8ebvsRjBT8UoY6/s6Rc6bwZgfmxkI7Rn5SxhL99rN3bIOtumuoHanBB5+77EVMZu4
         ynBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Afcdzv2t;
       spf=pass (google.com: domain of 3bc7myawkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3BC7mYAwKAAcuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QEUY15FeYhMlvMAqt4B5NVCxQu/DBG06hloOZn5aDSE=;
        b=MONNPdwpmR2MGheWeLDzxs4EQ9wT+4HN7qoCuZfmuzYTG0oqC+ms/YsVMV+mLqEh50
         mUxRphliVv6e2f6uqEDK78sWXm0ySIxWmv1LAYv4HnW9hH8xxl20+t5SMyTPXaijxjpW
         C3pKQzM7bD3cQgZDs6DVeu2GNQ6YErTraiEjn3+spdmPVED+nRtbEmWbmA+0gOMMWFnl
         ayF9JNqa3xh6esNXhOG0ZeR4WkZB8BrdN8ihaSi7l1eSq+HAwxOoJAxX2pjIZK1dFmXK
         yspq6N/TqlT/xwT3G/+n/38or5kFZu2iptkEZcNa0AG0lZihu24WVxsN9Yx9CdvFOlKN
         Bqzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QEUY15FeYhMlvMAqt4B5NVCxQu/DBG06hloOZn5aDSE=;
        b=ZjdgoRkjtMGKjL3WbyDoQlDLL+qjcT7DmG2dfNACKBcvVv31OfTE2iEeMpvaUk/78S
         04Ip16Rm6UcLMzOrKKg0IUOckXSOSZxM4di7bleOzlwpCN3+mcDFOczgPCvxjXiFdCSW
         MDqvDBay0Lc0kw3uI143WDMRyRFd3X7RzVfR4TJ8umhz3nenljtjk2L0lzJHgDWNLkiI
         9XBrIbb97RNRWZtmMBtgTiD8p9cDMpX01QwimKD4Scxdh0cRS2IDf+ZuU33uIG/EeGZb
         OitdYQKnnnFOzjpMiw84Ai7KxYesjwDxXNWPOlkROa169Dsu9WhpbznznrFfU3w0qg91
         pOlg==
X-Gm-Message-State: AOAM531v1qK7eA8c/frcrWrcWMCO3mWDhGUZuB+8UB9pn/Zh1aJSUXxt
	2Hb5YNZ9fpQjy4P2p3gva4Y=
X-Google-Smtp-Source: ABdhPJyGKIHfhjZNYAlzkoVSjhObLljpVw1wXDf9ZO63+/7IXt8lWEPpoTN4pe6nrcXaoR0ufcVpdw==
X-Received: by 2002:a05:6808:a0a:: with SMTP id n10mr1166792oij.178.1625697797202;
        Wed, 07 Jul 2021 15:43:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b304:: with SMTP id c4ls158195oif.8.gmail; Wed, 07 Jul
 2021 15:43:16 -0700 (PDT)
X-Received: by 2002:a05:6808:7c8:: with SMTP id f8mr20465387oij.121.1625697796880;
        Wed, 07 Jul 2021 15:43:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625697796; cv=none;
        d=google.com; s=arc-20160816;
        b=O4nQT8l9mieRBPipAsChWcYS5Dart37RqI8Pnf34gApZq+lYSY6X4LwP0AnelS1uhH
         QYTfAnPdi+LgS2080CV4HqrhuCitaxcD1HjNK1uHyfwVcjJZt5vkZiF3YJD+0Ydl/ObW
         Vi/h/br4C8GvF81IZArklq59COKO6nTtLLOMr9yZT8cyZlI0D6QVsAEqvuGJWoxiUAI7
         1skSerJ2fYtpAPwk5Xo8HJM9MV6vAgzqq0oXO2Mj5c31ZbBdr2o03J3PB/OpOAbmu6WH
         RnN91kkoPHiS4yYeQ/QqY59nZVzwH7H6SeRW9dMT1BpGU+DLGegKKUCfDgWiypbSk7mY
         WIpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=oQNGvy//YsByQbA2jNjuQSDvdEyrDDI3RHX9PIliM8M=;
        b=FfpsoNZZ67dmVtIgq4okxNHllgoE6vxH4J1AcsWzCCtYlIgfbs/vugwYn7/7wSbjmj
         CNO1mwGwuCgfTvaAN4AbR/SvTI2TEa2vfQvZqISvruJqFrtXM10BGhwb62IVdLnEiONp
         HEU+cEn4OTuOYHATu/3TPNt80hSHSjweianctY4bCOfvpteGIrUkwLtHEv4G27mHddcU
         EDlWV36KH9N9uooJLURC5EoupqxCuY11TbtHaiohDFFLNuB0fILi3iJZABcX5RiBU6W9
         3vMg84XOTSEUKg6hilwFFEd0wZzL9YVV1wWcUvIJLn+YBbtyt+038FSx2r/mAF5PsfmQ
         B0og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Afcdzv2t;
       spf=pass (google.com: domain of 3bc7myawkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3BC7mYAwKAAcuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id j26si20568ooj.0.2021.07.07.15.43.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 15:43:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bc7myawkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 132-20020a25158a0000b029055791ebe1e6so4463485ybv.20
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 15:43:16 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:d417:6e24:4a54:1792])
 (user=ndesaulniers job=sendgmr) by 2002:a25:8082:: with SMTP id
 n2mr34615840ybk.79.1625697796357; Wed, 07 Jul 2021 15:43:16 -0700 (PDT)
Date: Wed,  7 Jul 2021 15:43:09 -0700
In-Reply-To: <20210707224310.1403944-1-ndesaulniers@google.com>
Message-Id: <20210707224310.1403944-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH 1/2] Makefile: move initial clang flag handling into scripts/Makefile.clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Afcdzv2t;       spf=pass
 (google.com: domain of 3bc7myawkaacuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3BC7mYAwKAAcuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
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

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes RFC -> v1:
* Rename new file as per Nathan.

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
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210707224310.1403944-2-ndesaulniers%40google.com.
