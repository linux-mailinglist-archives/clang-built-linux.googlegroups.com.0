Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2MST2DQMGQEZZSULKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 821853C1C05
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 01:25:30 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id o12-20020a5b050c0000b02904f4a117bd74sf9009316ybp.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 16:25:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625786729; cv=pass;
        d=google.com; s=arc-20160816;
        b=xR5x9JYKRNAtL7jq99kJfIx4KyANpC//RnzYixV8T/zE6ojq5tRUlTHy4HbgQt5P0O
         aKEvopVjQeKnsmfuTM4RUYbsu761pG19oIXm+EhEPONvo7MY+SuhMIJCGyTUafN+LCyV
         33UzzkcRNjjs91EcJrj95jlua4ZNAH9PdCNZ3hHQ0rgP1BDcIwL1aDva0Sf++diWHs7h
         hQ4dR6C3KRL1B0fc/vHubfwL2jI3Wv1i47iHD1ZVCOxsl1KFKbGInbjm+3Si0HCfccec
         qbp0gY2bU/Hs1I3+NI5+XJulbQ3mH2J0WXr3ekPVuvb4eHbTblcVZki6EWmGIq2y7/y6
         tyKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7kQSMmiKy3uTOyjVWdZLjPVkYdVqcU5iHW4HG+w7UcY=;
        b=rQ0kJt62ULuStRjwIi8tfU3N+Z/1H0J3tWJfChfAc4trElWdNIHmlJxFaJ2B4NM0G0
         3ETKB00+ih2YmVERuITHHVBXAORtLHOhuagUe6VYv//qCpyVqiKtez1kV5nqSvFlPixr
         BuB9Nm2jQPGsfmR5RJzHjo8B26L/4wsgOtcvkInBSLsUAa6aMBfB2M0iFhfit4bCd/xP
         U962B8/ObVR2YnmdEUWDItU9nInnVXjkBS52yrgh4SqmbIZuS3jfJneDtltmEcrSVG5m
         ZExwet7KQGFwV62y/aJ018Vvy6E9HeBOVjF0Y08v0i+iX6NJviUaO7lH/36mlxvpqz7B
         PPXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q9AAsmHE;
       spf=pass (google.com: domain of 3ainnyawkaccqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3aInnYAwKACcQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7kQSMmiKy3uTOyjVWdZLjPVkYdVqcU5iHW4HG+w7UcY=;
        b=B2g/mQCwIqpebmLMQP56Csq7/MY9nUE2ahCeuGQ9GZcDGE/e754By/ngJ0OAeU9CnN
         SZkkUKBpY4hItMnwCP/KExABrG8oIeisSMIVBxpzgFDMxYbL2ti/XZw4ArN2Zptd4adS
         y1qn4t2pe7/7RX/WCWO0PimAOWXZUEnS/VpFoTTzwBTZMXHAD3DlHXlpWq/ZzNUhOQzF
         hVdymW+hffsPTLQW1QrmUZv86X9taAgjpw4rAETF+2dVr9t6FmYLU6Kqjf9u8Dgh+XON
         catwPEN00h2gevFMMK6kdD6UsouJr8ThpivgVcQheFupeeuer+OeOy+I/8P7GJaOPN/d
         u3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7kQSMmiKy3uTOyjVWdZLjPVkYdVqcU5iHW4HG+w7UcY=;
        b=RbasdpzzGTycvQei8E67UUTMmsWm8hFDMFJ0WGhfrI/DiITIS9fFNQXM4WTS+07PMt
         dZk1VV/t7jFJxe6vY3v29bf/BrvOK3Iv7g5RC8VaiIQhR8xHDerZakuDuAugr6YnGDQA
         rEgqhLO7MVm6BSK/OIkK5T1FPHYgS57PmcQ/8p7efFXJz96wg071kCK7k4KR0ok7Iims
         OX+ShEbjtj5NIwuqQ3o+/9PgNS4Ij5OpG9BweUAg//P6iLAFwlrsx70tEoFHAno2tVeI
         pak8XNFzsMBSD6AttJWQGoXhZideSA9YmGOTeIGVNHzSdoT+tRb7D0/H4W+iRm6tlgeg
         F+Xw==
X-Gm-Message-State: AOAM532P+mBI7LjioHTb/G4CB+jFUyCCXM1rdy7NBpoePYlnSYF0HzJO
	0GZeTn7i7/pavvMslC1utuU=
X-Google-Smtp-Source: ABdhPJzQX4I17+FLWsR90sh6cdrMdMHPN3iViSYVYxi9GMqCneiLxccI92QqNwvz5m3QtApRr9Arvg==
X-Received: by 2002:a25:5884:: with SMTP id m126mr43367090ybb.128.1625786729575;
        Thu, 08 Jul 2021 16:25:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d650:: with SMTP id n77ls2189098ybg.5.gmail; Thu, 08 Jul
 2021 16:25:29 -0700 (PDT)
X-Received: by 2002:a25:8092:: with SMTP id n18mr42919589ybk.318.1625786729154;
        Thu, 08 Jul 2021 16:25:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625786729; cv=none;
        d=google.com; s=arc-20160816;
        b=Nc4JZtr7VQE8cTJa1I6F+4QP/10G1AcHtinUYSRzigvzAYPS7rz9mY8SnVy95R/Dzh
         x6rBKVXY7Q4WWpDNM4VVZQxHRCDaaz6qDsWw4b+h5nLBPqXH0ckq4lda22yEIVK7ZAch
         tJIDy6NtgFnVWVCkHVrP2Ge4QvVv09r44aChnkMTK2ZHcLjXXQCVytDP3N391rTQNFJD
         4LT81aZqd5MUa2Icq+OeD0EMIf+B/HkqwXzRe3gdNYyE+5xI9wst72Dv4Wr5FmITVEk5
         V1cA+fXxc/sDoTgie0SYttCPGUBFpJKWHmZkZhkxV5p+i0Fhd8lQ3KwoOFgtyo9mSr73
         BZLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=urOO6z/E/vigRuyY41VEGZzBsmY3+0PNbgPSZ6JhbA8=;
        b=uF1M27HtRAGXewAAakgnpspzClDn1+scaxxO2u5CUbk+aM9dpndLiqDUcEOepn3i/A
         r2T7/zm88w4cnD2wKkPnVEQflLxozYWOKW4uorwOYD2TDLoNidTpWc0Eo8FL/O9vzgnv
         w2vaEkn8jJpZkcUhXr1jnTaHsCwrqwBPyarIw5YJ7pllDNfYXLn08Hd/MZ/zVCT/fyC+
         3fZ0omPt32YraqIrB3s8KOJXmpiZo9bm+fVLpr/yW5RTgt4F/uTQplcefHzy0U+QuBsX
         Sx6G3gxY2DODksqj56lonOvYbzVz7bkcNatbgraFk5H3w04FoJZ1W9KVBHKVUVxtUL7b
         8ZtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q9AAsmHE;
       spf=pass (google.com: domain of 3ainnyawkaccqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3aInnYAwKACcQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id o187si292828ybo.0.2021.07.08.16.25.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 16:25:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ainnyawkaccqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id s83-20020a2545560000b029055ae952c336so8699157yba.2
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 16:25:29 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:9fd:98a9:be3a:391d])
 (user=ndesaulniers job=sendgmr) by 2002:a25:508e:: with SMTP id
 e136mr39414843ybb.275.1625786728855; Thu, 08 Jul 2021 16:25:28 -0700 (PDT)
Date: Thu,  8 Jul 2021 16:25:21 -0700
In-Reply-To: <20210708232522.3118208-1-ndesaulniers@google.com>
Message-Id: <20210708232522.3118208-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH v2 1/2] Makefile: move initial clang flag handling into scripts/Makefile.clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=q9AAsmHE;       spf=pass
 (google.com: domain of 3ainnyawkaccqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3aInnYAwKACcQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210708232522.3118208-2-ndesaulniers%40google.com.
