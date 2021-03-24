Return-Path: <clang-built-linux+bncBCT4XGV33UIBBXMD56BAMGQEOQOK5VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9283484E4
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 23:49:02 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id k189sf4109856ybb.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 15:49:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616626141; cv=pass;
        d=google.com; s=arc-20160816;
        b=QpqnYACblp1BX4/Irss6WBIDEBE4JPh+IIrA5c36EgnpmFcBTrXm46xpzhHxYXjJYa
         zb6FCfXH5tdsXUVW8C33q6B7MjbuE7Ake4FGHbXZyH+jCL4QGKeb4dUQxkqLc+e5aFO3
         m2JNiKEfc8Z4a+aYy2OilKBkW+1zlqjE4bmZj6mXQMFCbj3lJfMsK7qHdno1cnzVyYG9
         43g/voC1FtxD581r6/E41PsfjjIRm6p098Mgdn3APdg4v/41HHVEmtx7FaNgs1rKBP3t
         supeH2Dm60Na9U/fOd2jCcxo4Ii7o+k/4YbtAPWggJ+pqCRtwsp+LCt7LizoKnRZcZUZ
         VG1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=O0Ua07XP+V6XfjUTUyKYm1h88qsxR4vNGLAHIOZ5DQA=;
        b=Vlmt1CknlOpoZbIllWgU7LoCOugkCfP4gW8nRNXCdJJmtUli02STW/dodxv0zopwK7
         1hzXWuYTQv91KhxTCaydVleE5I9RQJ6AVCuS5tralw77uqbKjy12CUurXXy2pskWJeSs
         PeYHkxXShzZhpczE0KnAEU9nr9vv7jTqRJ/avXEMjmR/2nm0IqtwHOPiY65DQrbwiBgd
         Zj+1hxj6GNWnbWj+mepzP620cUWRCqfsVeLdLGj+Uuwg1o6ETtb0vwKllZQT7yPyDWqJ
         fWtokZV2D/hR3N9EgY0aoKE+Bwo1EyrnRQUHMCgh1Hka0a9rNATOjJLbXZ7xyerCkryF
         ChZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=nq2n5Hk6;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O0Ua07XP+V6XfjUTUyKYm1h88qsxR4vNGLAHIOZ5DQA=;
        b=Mbyip3N1KDDs7tbzpkE7iiXC5slCRM97T4NHL7lTlXhas31Z+IeOpW9+O+onr6PZBz
         jv3x2KLbL3olsjT39o41+1fRTXquid99qM1UVAXY4LgucphHEQWBFyEWXJ9kRol2ssQ0
         n5PCwRdSXcbILQ6PvUbwvXYAKHmCtacG2DISBwmaIt0Fb/pLXc8uY5SCKVQWFdoKIE37
         kcjx5u7sbVVrzl29yQeg4VtNTyW7Eq/WI/2yixk4+W+GgO9fxh8NHQiCJFUPVkaxhRa8
         DPjkgB5tw3r0Fz+Pm2sofoiy/cDfZqGRWF9pXkKJfr6VHrnBiZVbqlzKsvbX0ZiDQLq2
         Gblg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O0Ua07XP+V6XfjUTUyKYm1h88qsxR4vNGLAHIOZ5DQA=;
        b=aDrnFNVAFiWdUc08WQZo+dtxXxggPeY8ge7K8GDLkTqwzuqE7RNBEA5iD+9lLA+Mlz
         SaDm3+HKTPa3KTDgbrwKWLvHEe8UDtYTZFHwRDS8cxVbFZQ64Xth1mxRH2yg5bB3573E
         WC0r97Y92ygCG/AIoJtoCsRMmNQxP9sxNK1f21ZJ7UVEULUMCyfibvNhgbFAGfKd77bK
         Xf4h45OgBwL2/gsoGYoVuVoK/2bkvYDQqLmgGW6+RtZz4daTMMqaI9ojifBgoGcHE/H+
         OVjpLz9UaD2aBqlb7Rl/h1daTGOIFOi9vxAj7NDdYto9P/g0whkogupaNbPa9tnjEHlS
         fKBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OuxulSmbrv7K69KNl6LUetAVMF+QLtC9hDnb4fFnjqUTF69aK
	W3+4D8+IlY5XBwyAC0KLufU=
X-Google-Smtp-Source: ABdhPJwHyDB33/i47YuBCAIP9rRaCw+J114ruGgvUM7B5GtPTzQmuuxRbjnVzA0MdTwTQMS2fIE27g==
X-Received: by 2002:a25:8b86:: with SMTP id j6mr7573645ybl.470.1616626141700;
        Wed, 24 Mar 2021 15:49:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d306:: with SMTP id e6ls1753689ybf.11.gmail; Wed, 24 Mar
 2021 15:49:01 -0700 (PDT)
X-Received: by 2002:a25:5704:: with SMTP id l4mr8764461ybb.338.1616626141170;
        Wed, 24 Mar 2021 15:49:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616626141; cv=none;
        d=google.com; s=arc-20160816;
        b=cC/ovJylScI6Qn/XR5+HjiuRVlTX8RO2byIG4fFauIpTIi+59ztV/D2DITgLDarbuv
         P21ZXuo2UjWM3zukvujzCyROPS7HopL/w5XbhMhTHFWrJZVE0M/Gtq44blstCiec/Ly1
         eaQoNdYwhTjHdazcjNsvM1A9nHKPZYIHt46mRDUyXJj5yGOZ0E5mJog+49jHdgHbtyFY
         Jwsu+geZz0R++XW/wvDrOWiKSmS2x5biRQTKA84MrjE9AHxHwQpAQhJqVqcMoe0AMffH
         pUyJRuKXRrqp1EIr2ecdsN/DtIOJDMEwy2f+PZ6GJVCE4kXUSfYzqyIf08ER5vfOGGo9
         tHFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+ZNmOfQDDMY13VM98iI+bF8kJZR5rrH4L+X1c1p3QRo=;
        b=fI59Fg+qVCYlJ+6iWZtwGeFpKqiSboI2s/unE4Ywvaq31YFFYV4pn/KbSbfJqLCrha
         YmrQ0bW8h10bCSca4yw7ig1Ujx2T67PWieZRftX/yopszi7omAiGyHRzHotOEhIU2hO3
         WTTdSnN6z+sIRpP44GPsS40BomV19ij6G+19IEbRQlCY5vMBx5CSjE7os6LFHwecYpAN
         zijEEmhpO2gUTGn3qn6el6uqCIKNFQ1ysQZja9o6X4y7T7oOdT1DK2t/04NhskwHKDJQ
         tE8YlsICCVAn2/9uQoq5K7kcwJhSX52CKv9KbN9UlfWz7mYANGmwmjVBZ6opZr2EtErk
         XNlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=nq2n5Hk6;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x7si248789ybm.0.2021.03.24.15.49.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 15:49:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B852561A0A;
	Wed, 24 Mar 2021 22:48:59 +0000 (UTC)
Date: Wed, 24 Mar 2021 15:48:59 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Andrey Ryabinin
 <ryabinin.a.a@gmail.com>, Nathan Chancellor <nathan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Alexander Potapenko <glider@google.com>, Andrey Konovalov
 <andreyknvl@gmail.com>, Dmitry Vyukov <dvyukov@google.com>, Linux Kbuild
 mailing list <linux-kbuild@vger.kernel.org>, kasan-dev
 <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] kasan: fix hwasan build for gcc
Message-Id: <20210324154859.4de61fdafd1b4ea85bec869f@linux-foundation.org>
In-Reply-To: <CANpmjNM8D+yp==DmKP0aa+g6=P38o0v6gd7y5iV52yyDUv91qw@mail.gmail.com>
References: <20210323124112.1229772-1-arnd@kernel.org>
	<CANpmjNM8D+yp==DmKP0aa+g6=P38o0v6gd7y5iV52yyDUv91qw@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=nq2n5Hk6;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Tue, 23 Mar 2021 13:51:32 +0100 Marco Elver <elver@google.com> wrote:

> On Tue, 23 Mar 2021 at 13:41, Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > gcc-11 adds support for -fsanitize=kernel-hwaddress, so it becomes
> > possible to enable CONFIG_KASAN_SW_TAGS.
> >
> > Unfortunately this fails to build at the moment, because the
> > corresponding command line arguments use llvm specific syntax.
> >
> > Change it to use the cc-param macro instead, which works on both
> > clang and gcc.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Reviewed-by: Marco Elver <elver@google.com>
> 
> Although I think you need to rebase against either -mm or -next,
> because there have been changes to the CONFIG_KASAN_STACK variable.

This fix is applicable to 5.12, so it's better than the 5.13 patches in
-mm be changed to accomodate this patch.

afaict the only needed change was to update
kasan-remove-redundant-config-option.patch as below.  The
scripts/Makefile.kasan part was changed:

@@ -42,7 +48,7 @@ else
 endif
 
 CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
-		$(call cc-param,hwasan-instrument-stack=$(CONFIG_KASAN_STACK)) \
+		$(call cc-param,hwasan-instrument-stack=$(stack_enable)) \
 		$(call cc-param,hwasan-use-short-granules=0) \
 		$(instrumentation_flags)
 


Whole patch:

--- a/arch/arm64/kernel/sleep.S~kasan-remove-redundant-config-option
+++ a/arch/arm64/kernel/sleep.S
@@ -134,7 +134,7 @@ SYM_FUNC_START(_cpu_resume)
 	 */
 	bl	cpu_do_resume
 
-#if defined(CONFIG_KASAN) && CONFIG_KASAN_STACK
+#if defined(CONFIG_KASAN) && defined(CONFIG_KASAN_STACK)
 	mov	x0, sp
 	bl	kasan_unpoison_task_stack_below
 #endif
--- a/arch/x86/kernel/acpi/wakeup_64.S~kasan-remove-redundant-config-option
+++ a/arch/x86/kernel/acpi/wakeup_64.S
@@ -115,7 +115,7 @@ SYM_FUNC_START(do_suspend_lowlevel)
 	movq	pt_regs_r14(%rax), %r14
 	movq	pt_regs_r15(%rax), %r15
 
-#if defined(CONFIG_KASAN) && CONFIG_KASAN_STACK
+#if defined(CONFIG_KASAN) && defined(CONFIG_KASAN_STACK)
 	/*
 	 * The suspend path may have poisoned some areas deeper in the stack,
 	 * which we now need to unpoison.
--- a/include/linux/kasan.h~kasan-remove-redundant-config-option
+++ a/include/linux/kasan.h
@@ -330,7 +330,7 @@ static inline bool kasan_check_byte(cons
 
 #endif /* CONFIG_KASAN */
 
-#if defined(CONFIG_KASAN) && CONFIG_KASAN_STACK
+#if defined(CONFIG_KASAN) && defined(CONFIG_KASAN_STACK)
 void kasan_unpoison_task_stack(struct task_struct *task);
 #else
 static inline void kasan_unpoison_task_stack(struct task_struct *task) {}
--- a/lib/Kconfig.kasan~kasan-remove-redundant-config-option
+++ a/lib/Kconfig.kasan
@@ -138,9 +138,10 @@ config KASAN_INLINE
 
 endchoice
 
-config KASAN_STACK_ENABLE
+config KASAN_STACK
 	bool "Enable stack instrumentation (unsafe)" if CC_IS_CLANG && !COMPILE_TEST
 	depends on KASAN_GENERIC || KASAN_SW_TAGS
+	default y if CC_IS_GCC
 	help
 	  The LLVM stack address sanitizer has a know problem that
 	  causes excessive stack usage in a lot of functions, see
@@ -155,7 +156,7 @@ config KASAN_STACK_ENABLE
 	  to use and enabled by default.
 
 config KASAN_STACK
-	int
+	bool
 	depends on KASAN_GENERIC || KASAN_SW_TAGS
 	default 1 if KASAN_STACK_ENABLE || CC_IS_GCC
 	default 0
--- a/mm/kasan/common.c~kasan-remove-redundant-config-option
+++ a/mm/kasan/common.c
@@ -63,7 +63,7 @@ void __kasan_unpoison_range(const void *
 	kasan_unpoison(address, size);
 }
 
-#if CONFIG_KASAN_STACK
+#ifdef CONFIG_KASAN_STACK
 /* Unpoison the entire stack for a task. */
 void kasan_unpoison_task_stack(struct task_struct *task)
 {
--- a/mm/kasan/kasan.h~kasan-remove-redundant-config-option
+++ a/mm/kasan/kasan.h
@@ -231,7 +231,7 @@ void *kasan_find_first_bad_addr(void *ad
 const char *kasan_get_bug_type(struct kasan_access_info *info);
 void kasan_metadata_fetch_row(char *buffer, void *row);
 
-#if defined(CONFIG_KASAN_GENERIC) && CONFIG_KASAN_STACK
+#if defined(CONFIG_KASAN_GENERIC) && defined(CONFIG_KASAN_STACK)
 void kasan_print_address_stack_frame(const void *addr);
 #else
 static inline void kasan_print_address_stack_frame(const void *addr) { }
--- a/mm/kasan/report_generic.c~kasan-remove-redundant-config-option
+++ a/mm/kasan/report_generic.c
@@ -128,7 +128,7 @@ void kasan_metadata_fetch_row(char *buff
 	memcpy(buffer, kasan_mem_to_shadow(row), META_BYTES_PER_ROW);
 }
 
-#if CONFIG_KASAN_STACK
+#ifdef CONFIG_KASAN_STACK
 static bool __must_check tokenize_frame_descr(const char **frame_descr,
 					      char *token, size_t max_tok_len,
 					      unsigned long *value)
--- a/scripts/Makefile.kasan~kasan-remove-redundant-config-option
+++ a/scripts/Makefile.kasan
@@ -2,6 +2,12 @@
 CFLAGS_KASAN_NOSANITIZE := -fno-builtin
 KASAN_SHADOW_OFFSET ?= $(CONFIG_KASAN_SHADOW_OFFSET)
 
+ifdef CONFIG_KASAN_STACK
+	stack_enable := 1
+else
+	stack_enable := 0
+endif
+
 ifdef CONFIG_KASAN_GENERIC
 
 ifdef CONFIG_KASAN_INLINE
@@ -27,7 +33,7 @@ else
 	CFLAGS_KASAN := $(CFLAGS_KASAN_SHADOW) \
 	 $(call cc-param,asan-globals=1) \
 	 $(call cc-param,asan-instrumentation-with-call-threshold=$(call_threshold)) \
-	 $(call cc-param,asan-stack=$(CONFIG_KASAN_STACK)) \
+	 $(call cc-param,asan-stack=$(stack_enable)) \
 	 $(call cc-param,asan-instrument-allocas=1)
 endif
 
@@ -42,7 +48,7 @@ else
 endif
 
 CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
-		$(call cc-param,hwasan-instrument-stack=$(CONFIG_KASAN_STACK)) \
+		$(call cc-param,hwasan-instrument-stack=$(stack_enable)) \
 		$(call cc-param,hwasan-use-short-granules=0) \
 		$(instrumentation_flags)
 
--- a/security/Kconfig.hardening~kasan-remove-redundant-config-option
+++ a/security/Kconfig.hardening
@@ -64,7 +64,7 @@ choice
 	config GCC_PLUGIN_STRUCTLEAK_BYREF
 		bool "zero-init structs passed by reference (strong)"
 		depends on GCC_PLUGINS
-		depends on !(KASAN && KASAN_STACK=1)
+		depends on !(KASAN && KASAN_STACK)
 		select GCC_PLUGIN_STRUCTLEAK
 		help
 		  Zero-initialize any structures on the stack that may
@@ -82,7 +82,7 @@ choice
 	config GCC_PLUGIN_STRUCTLEAK_BYREF_ALL
 		bool "zero-init anything passed by reference (very strong)"
 		depends on GCC_PLUGINS
-		depends on !(KASAN && KASAN_STACK=1)
+		depends on !(KASAN && KASAN_STACK)
 		select GCC_PLUGIN_STRUCTLEAK
 		help
 		  Zero-initialize any stack variables that may be passed
_

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210324154859.4de61fdafd1b4ea85bec869f%40linux-foundation.org.
