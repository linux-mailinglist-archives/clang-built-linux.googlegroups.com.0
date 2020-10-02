Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBON335QKGQE5PV3V4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C81281E15
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 00:15:34 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id t8sf1360060oot.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 15:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601676933; cv=pass;
        d=google.com; s=arc-20160816;
        b=x+Vj3Na7NnuM090Bd4knJRKu7xVnNLbiCsP5QyZ1Md4Gw5MsIihXNucqrihDUrYh27
         MWCmtQ04P1utdPeMeyF9T/HrT08iXgpdTj12XnCT9O20FAxSIMxWY69COojuckIsQKeI
         a0lfzEyh42dNZhoU7rE6vtqzcumjPRM3wEu9DrmTlwqPRNHelKGgQ7rZR2Tf3LE2p9+n
         iHELxvWJXw4PHv54Qpl7jnLZdGQoadnENnwQP5ykYrrPo8JC7HTzMpctrQIUEwOArBAO
         pCXwaOXFokkLHTxTcy3WWnTjsbQ9PT2IQSxTfcVuCmfZ2BvODms/UkHACyD7GKIgVy14
         eS+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QlEqGQ2upMOWO4VYCC4QbvQVmGE5FT2Fz2HMrXng6VM=;
        b=FM2SIpcgMO5/kQdSX6hyF0zFaZvrtbJaCWx+3nJQwajX9erJOCdfrQr7QFElJ9VFYy
         eZNMCPm384EqyONrDhtMO2IZNg08dJb5TwoKq5YAjHe71jovwmv1+KjmkG/+huAWfty7
         wKYXwgXZvy7KYV9XPXgzPrC2XP5tLIFNs8wLBAeERhDzGZcS6ncWjAchM0mjluLSzJBK
         u4pwH9A+9+F4YcsCJavaIOesAqbA65yvR452acEFYUrgbpbgnjGNCz4yQYtRxwfUC7po
         MVdPzkWO10NbEhSmx+gaihB3FJZ22fkEYBTonBAVSGmwLcFS9SzLW6dlYKmTzCcbOwjU
         OHJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jxxjLAVh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QlEqGQ2upMOWO4VYCC4QbvQVmGE5FT2Fz2HMrXng6VM=;
        b=ngYRrahythQ1hefoiUZiQ8l2sy94TfAFC1xa/mJzlLEClYHTbMmP6yz/Q20TaD3iKf
         Adma8VZx5e04lV2yezhp1vUG3tRdnnNf/3FDdYzPSP5PSwze2NuxoyZ1DAPWe8hpGYRE
         CorwQiqjds6ZXB8b6lmvqe3jgpDpDmhSQmrotspbbq1hF9oRTMTRJJuMLLOwgS3d/02Y
         hYpAMndRKBfbwxA5vnN+3jn/kMmzwRMnBsY1l/fawR4x+pTeJrhrmEBSbjKFVSw3QMSN
         stPT8EtGFrachf9RHtK9gJHsIWMmcAv4AsoVvFCcXDFB8rtgUnGcMlrYXHSA7QUFm3P1
         4byA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QlEqGQ2upMOWO4VYCC4QbvQVmGE5FT2Fz2HMrXng6VM=;
        b=WBzsr2CsuH0PrDJVrOZgsH2KQL0NQvUblt084c091Vxq/9DKbdsvbXcYTxwl9OcAO3
         2rilCrflP0n37TfkOOLYz9nYRsFG9RQ3WZINc7UsqLWqPDtZ5dbUIWqWOSq6qgxT9Tcd
         KcXh1vo+vFkqdHaWKihOZGuNp6jX64RuXUf6K+utS+dc0ygxcq+ujddbpGQJl3TCGZlR
         QtOfmku60+avf8Fi4Lfu3JU0/q2ruoI1bYuO7iBof1zEuGYp9JcMmr/e3wwjAtAhScfw
         EmqeYTEw1lpmbLvqOPzQAYuyKbew7vm6AqIK9PwP6rFnYsSrGfd3QH8puE1qryhxIjYj
         E7AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dfRNP7wMVB+2J2zA72Tg0c440N3BeYaC6v3LavZt753gB5A2e
	LOYktfNa7l2Jv3HC2woWdC0=
X-Google-Smtp-Source: ABdhPJxV6Y49vAKvIcjrh3vGWZ//VSwuT8Qb4BYUvFBgP6uPjEscJel1IZsrlEyf0jVLx1k1mEbwxQ==
X-Received: by 2002:a05:6830:1e26:: with SMTP id t6mr2196855otr.318.1601676933179;
        Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1da:: with SMTP id x26ls692209oic.0.gmail; Fri, 02
 Oct 2020 15:15:32 -0700 (PDT)
X-Received: by 2002:aca:c758:: with SMTP id x85mr2496789oif.102.1601676932803;
        Fri, 02 Oct 2020 15:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601676932; cv=none;
        d=google.com; s=arc-20160816;
        b=QDdzGiPws8M5kg9luTMOL7JEtuyzKtboKMNWIqtjF1TpF1iR9zp7eppwuYF0dYEtgd
         RVXA4zqMvx0Vf0X2QHqRXnfgzG7U633LOSnGVx+EZdAwRamXLUrk4ofmLdxO6cFiuSjE
         csygZpf+ANsls05okAtCgr1rLfnT7TUpdqQy9Zs762dq7wzSsLfyf/G6hf4Ez58SJihQ
         ooDIVHjNOaGQnEJJ544Ns+H7SsFMTpMNWoDHT2spdiV/s7/RYMsCrIsJE+qDGxcmimCW
         NYiQgZuIS2XRSa1RLdmT1sd43s41FzyJbmMAqPf6Tgc3aRgyItXtiUrDg+o6lucLpqBI
         ODzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZbgeNKSFkQV6HyhEuVenlb7h0oRDKk8aNnzV1dp+u/c=;
        b=daDk84MqscpiGs8CN0qCw89Y/VexjahX9t2rF6QzTLvcEiMmry6rrrIN1Tu7Tl/vMP
         TLSK6iAxjOpwfxWUCvGdonc97fwcEYhM/H5In5w9k71VmKO5IGbAEPV19bzxqOqOnuK0
         TbW631BuXimuXeROlcKvcSr2kc24MtOU91sBujwT+ULtl8YjgXA+yJnQiQhSKkOj6KFc
         oU1yUFOyjWN213qhAkY/nheELLlabzVDxu5W+zklvDAO6xLUOnmVtKqOcSy6XlarobUZ
         iFkiviTnd/BbKbMfd8OZgm9o2iTutVSuaW+Y0BidP2NtqwnBGtVhuVJ6xManNFcaTdOD
         qlVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jxxjLAVh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id k144si202552oih.5.2020.10.02.15.15.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 15:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d13so1736802pgl.6
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 15:15:32 -0700 (PDT)
X-Received: by 2002:a63:454f:: with SMTP id u15mr4144313pgk.198.1601676932082;
        Fri, 02 Oct 2020 15:15:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j25sm3071266pfn.212.2020.10.02.15.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 15:15:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] ubsan: Move cc-option tests into Kconfig
Date: Fri,  2 Oct 2020 15:15:24 -0700
Message-Id: <20201002221527.177500-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201002221527.177500-1-keescook@chromium.org>
References: <20201002221527.177500-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jxxjLAVh;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Instead of doing if/endif blocks with cc-option calls in the UBSAN
Makefile, move all the tests into Kconfig and use the Makefile to
collect the results.

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Link: https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.ubsan      | 48 +++++++++++++++++++++++++++++++++++++++-
 scripts/Makefile.ubsan | 50 ++++++++++++++----------------------------
 2 files changed, 64 insertions(+), 34 deletions(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 58f8d03d037b..c0b801871e0b 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -36,10 +36,17 @@ config UBSAN_KCOV_BROKEN
 	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
 	  in newer releases.
 
+config CC_HAS_UBSAN_BOUNDS
+	def_bool $(cc-option,-fsanitize=bounds)
+
+config CC_HAS_UBSAN_ARRAY_BOUNDS
+	def_bool $(cc-option,-fsanitize=array-bounds)
+
 config UBSAN_BOUNDS
 	bool "Perform array index bounds checking"
 	default UBSAN
 	depends on !UBSAN_KCOV_BROKEN
+	depends on CC_HAS_UBSAN_ARRAY_BOUNDS || CC_HAS_UBSAN_BOUNDS
 	help
 	  This option enables detection of directly indexed out of bounds
 	  array accesses, where the array size is known at compile time.
@@ -47,11 +54,17 @@ config UBSAN_BOUNDS
 	  to the {str,mem}*cpy() family of functions (that is addressed
 	  by CONFIG_FORTIFY_SOURCE).
 
+config CC_ARG_UBSAN_BOUNDS
+	string
+	default "-fsanitize=array-bounds" if CC_HAS_UBSAN_ARRAY_BOUNDS
+	default "-fsanitize=bounds"
+	depends on UBSAN_BOUNDS
+
 config UBSAN_LOCAL_BOUNDS
 	bool "Perform array local bounds checking"
 	depends on UBSAN_TRAP
-	depends on CC_IS_CLANG
 	depends on !UBSAN_KCOV_BROKEN
+	depends on $(cc-option,-fsanitize=local-bounds)
 	help
 	  This option enables -fsanitize=local-bounds which traps when an
 	  exception/error is detected. Therefore, it should be enabled only
@@ -69,6 +82,38 @@ config UBSAN_MISC
 	  own Kconfig options. Disable this if you only want to have
 	  individually selected checks.
 
+config UBSAN_SHIFT
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=shift)
+
+config UBSAN_DIV_ZERO
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=integer-divide-by-zero)
+
+config UBSAN_UNREACHABLE
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=unreachable)
+
+config UBSAN_SIGNED_OVERFLOW
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=signed-integer-overflow)
+
+config UBSAN_UNSIGNED_OVERFLOW
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
+
+config UBSAN_OBJECT_SIZE
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=object-size)
+
+config UBSAN_BOOL
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=bool)
+
+config UBSAN_ENUM
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=enum)
+
 config UBSAN_SANITIZE_ALL
 	bool "Enable instrumentation for the entire kernel"
 	depends on ARCH_HAS_UBSAN_SANITIZE_ALL
@@ -89,6 +134,7 @@ config UBSAN_ALIGNMENT
 	bool "Enable checks for pointers alignment"
 	default !HAVE_EFFICIENT_UNALIGNED_ACCESS
 	depends on !UBSAN_TRAP
+	depends on $(cc-option,-fsanitize=alignment)
 	help
 	  This option enables the check of unaligned memory accesses.
 	  Enabling this option on architectures that support unaligned
diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
index 9716dab06bc7..72862da47baf 100644
--- a/scripts/Makefile.ubsan
+++ b/scripts/Makefile.ubsan
@@ -1,37 +1,21 @@
 # SPDX-License-Identifier: GPL-2.0
 
-export CFLAGS_UBSAN :=
+# -fsanitize=* options makes GCC less smart than usual and
+# increases the number of 'maybe-uninitialized' false-positives.
+ubsan-cflags-$(CONFIG_UBSAN) += $(call cc-disable-warning, maybe-uninitialized)
 
-ifdef CONFIG_UBSAN_ALIGNMENT
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=alignment)
-endif
+# Enable available and selected UBSAN features.
+ubsan-cflags-$(CONFIG_UBSAN_ALIGNMENT)		+= -fsanitize=alignment
+ubsan-cflags-$(CONFIG_UBSAN_BOUNDS)		+= $(CONFIG_CC_ARG_UBSAN_BOUNDS)
+ubsan-cflags-$(CONFIG_UBSAN_LOCAL_BOUNDS)	+= -fsanitize=local-bounds
+ubsan-cflags-$(CONFIG_UBSAN_SHIFT)		+= -fsanitize=shift
+ubsan-cflags-$(CONFIG_UBSAN_DIV_ZERO)		+= -fsanitize=integer-divide-by-zero
+ubsan-cflags-$(CONFIG_UBSAN_UNREACHABLE)	+= -fsanitize=unreachable
+ubsan-cflags-$(CONFIG_UBSAN_SIGNED_OVERFLOW)	+= -fsanitize=signed-integer-overflow
+ubsan-cflags-$(CONFIG_UBSAN_UNSIGNED_OVERFLOW)	+= -fsanitize=unsigned-integer-overflow
+ubsan-cflags-$(CONFIG_UBSAN_OBJECT_SIZE)	+= -fsanitize=object-size
+ubsan-cflags-$(CONFIG_UBSAN_BOOL)		+= -fsanitize=bool
+ubsan-cflags-$(CONFIG_UBSAN_ENUM)		+= -fsanitize=enum
+ubsan-cflags-$(CONFIG_UBSAN_TRAP)		+= -fsanitize-undefined-trap-on-error
 
-ifdef CONFIG_UBSAN_BOUNDS
-      ifdef CONFIG_CC_IS_CLANG
-            CFLAGS_UBSAN += -fsanitize=array-bounds
-      else
-            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
-      endif
-endif
-
-ifdef CONFIG_UBSAN_LOCAL_BOUNDS
-      CFLAGS_UBSAN += -fsanitize=local-bounds
-endif
-
-ifdef CONFIG_UBSAN_MISC
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=shift)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=integer-divide-by-zero)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=unreachable)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=signed-integer-overflow)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=object-size)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bool)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=enum)
-endif
-
-ifdef CONFIG_UBSAN_TRAP
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize-undefined-trap-on-error)
-endif
-
-      # -fsanitize=* options makes GCC less smart than usual and
-      # increase number of 'maybe-uninitialized false-positives
-      CFLAGS_UBSAN += $(call cc-option, -Wno-maybe-uninitialized)
+export CFLAGS_UBSAN := $(ubsan-cflags-y)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002221527.177500-2-keescook%40chromium.org.
