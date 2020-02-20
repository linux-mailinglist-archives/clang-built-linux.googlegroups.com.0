Return-Path: <clang-built-linux+bncBAABB2XCXDZAKGQETGMRUTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FE4165847
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 08:12:44 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id f15sf519450vsk.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 23:12:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582182763; cv=pass;
        d=google.com; s=arc-20160816;
        b=YSXxJHqOq3KrKYIVkFSkC28/UbWx4NrZIP+31h/F3+G3jefVwf8LdJvpzFYu25x+vv
         kDoKm2cuhBvtuY1Zl+gFdbIDEskeH8abAjMZUoNEhchRjy6khdwnkMKlbW0jTP6FxD/Y
         FN35Pe6Pg3cUawrfnBnEBPKu+7dQcX2JWNF/v4+eybVOTy0v2YCNmJW4yWvukTF4/3zr
         7wUaEt36fFDempTbNIdQMp8fUjEBbnTyNIFR9huvAvgAL9XK7lTDUg7d+P0tUQgOgBs+
         zOmVx4v0COMRULMkMHeqMLBxkmqf9tiiyefO6q/FQKcMP6SSNy752Iq2TXE9Grpc/yvu
         fEuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=0WA7N34AbDfDoPjoB13dl+DLyHb0I27tq2IgfHO7zV8=;
        b=uC2EFsIsmbw3+ndjY8+Y+Ih3qj1IPF+XrxVopOvU2k5YS5sSsnYeIoMXeIMjfXSKq/
         iE2dpbCaShZlxQcHxwumWaUuS20W1B7W9BFC9ey+3R10bNgxN4qB31iLlKh/kuSC6c7H
         +yJlR3VGbNE5l12tcroVbP0QyJTQKBwiNCFCPfKK4PIbG/tMWarp88UZBqlp/s//ipFI
         cy89vzy6fhr4u6qIONHGJis4OcP1yEGn+yIZWhxy3JaEZlWRSdhHQyBgwKaXqdC6KYGD
         d3N2zFmGO5ZVLMH8SWPuOPH1gX9ulwz50Cs49K+uWVTLXO/grZrudiLmFEYJ06S5ZlFt
         Y2dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XHidawMY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0WA7N34AbDfDoPjoB13dl+DLyHb0I27tq2IgfHO7zV8=;
        b=bLvJIxbAuzIKM8fGyKxc/cZkX415FWYwp0H+EYVT5G9KaIPOtYVqKIRHLkvItwRKPV
         6GUmjsXWXrD4BmmTBCqN8dJMa3RF35TnAZ8aXcNZaPBaK9zakrOZPFx6xOxieNrvXdVN
         ZeYijUeMmaDO5VNI9MCZ7n+nA+yRJtskhcchI5fdhRxYKIXbHegiAfkIMBW1KHKKRGK9
         6Y/4rFKIjh31FZNEx4yo3MeuM1OfDCFaPbdTtghV6FqWdwOXBmBSixfzF296TRNZdsim
         GjTJ9nORv8yiZAB8+x8M/bCgz7jBRwUMzHmRjwoOf5I2nMEoLsNF0bNSV49CDwSwmmMw
         Isog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0WA7N34AbDfDoPjoB13dl+DLyHb0I27tq2IgfHO7zV8=;
        b=RU8il0nTUMVA2jxrodwhUewTj1CHO1mmpn+r/vCfXVspHS4PY2pWDISnVGeOJg1uwT
         9Lum76rW2m7abZsI3BdLEmzH4lAifWauaXdFxeVSjzFxbmBXPof4x1l0c2g8O8Zugigr
         e9gxxwFhzcBGzgMQEgQdlX+5NuyEoNXF76IgPzYkePe6SKN503+fi0csF2LW1Xa95g54
         MMLzVjkr8a8TAsgKNhxByVqft50Mocw03qFGgmeqP0SpmALWDicEsMmNR8NHsdu0Am/A
         LRG4yHWnbe8LolkUv5ewft+sjHdpyI02+TELSe9jpzdQBZx0PMWREW3cXWigxEGJCfGb
         iZFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX66zXErqBZppUi4oWgHMkFxOpAbF1g5qhowSN2VX5nYK4uu7bn
	ZgafWxSw9s5KL0XDRZliFCw=
X-Google-Smtp-Source: APXvYqwa5RkVXUAQjN5uhnxqPj6rYssFUWG6OsCbLbH0TYMuBf79O0fvmOWpjt60R9gWRYI5Y4K1dw==
X-Received: by 2002:a05:6102:219:: with SMTP id z25mr15765985vsp.79.1582182762890;
        Wed, 19 Feb 2020 23:12:42 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f316:: with SMTP id p22ls278990vsf.6.gmail; Wed, 19 Feb
 2020 23:12:42 -0800 (PST)
X-Received: by 2002:a67:ec12:: with SMTP id d18mr16180567vso.129.1582182762543;
        Wed, 19 Feb 2020 23:12:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582182762; cv=none;
        d=google.com; s=arc-20160816;
        b=EV6ER0DwAjKu8HOjogTO1D+wECxXzN2cm0sDWPQbDP5lhxqSNstWm6pjjEjW+ETvXB
         3sQqGeNPyoWj0ojL11mTvbURSblvQ2R4HEYVx5c2auxKcZLzzWAzxornseJ6yS4ZTbN3
         dA5q44chnbFwmgYGNg10OzmSzBOZbcnpySUshpY5vyKK4CiM+6qXQXZszENiD+BTZ8WG
         AS26KKUBfhMwrZNN1JF+/zMgN5jL+LLym2e9YzRqqmrb8gza+L2+zisWKlUs26VoBXLz
         ObxMEJ60dpbf3MLFL3CzL7qVdgpbY1ELxhQv4IJfbW3/EyzFz8EZPRgb9ZxGiOfED8mo
         UM7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=+g7cH/hWwvcSufuWOvuSo00awgwQs7zryYYrPdVzF2c=;
        b=iCukZbkjzb5O3tY3Qw+UwsupmKsNYNQNj6NViwnhKTh85rQgcRoFG1Td/MUZPFNQsk
         OMYomkG9aXbGYpqUyIWoh99hw62uGrwnY0lMqhbRrSzJpts9TPTOaDppKPgjkFhTlC0P
         Lsg2HcVdPzdIk/2MQpLQ8D6oV+i41QG5fHGcoUgjmc2b7ghZ3JVTZmnaAUndTHYJe0/u
         DclO/jB1/rs0Hy1xtEjHKZt2VZrJ/iKZh2R8GYdswCHhu49uJ0K7s3/ezKv5BGhPO0/9
         T3UcTxPMEOhFsg2c3He/iyXPg12zgY3VoVZh300AYkefed9+O1tI4vgzuIT8e2LoozM8
         MOBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=XHidawMY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com. [210.131.2.75])
        by gmr-mx.google.com with ESMTPS id t76si162048vkb.1.2020.02.19.23.12.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 23:12:42 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) client-ip=210.131.2.75;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-08.nifty.com with ESMTP id 01K7Bl6e011059;
	Thu, 20 Feb 2020 16:11:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 01K7Bl6e011059
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>, x86@kernel.org,
        clang-built-linux@googlegroups.com,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        sparclinux@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] compiler: Remove CONFIG_OPTIMIZE_INLINING entirely
Date: Thu, 20 Feb 2020 16:11:40 +0900
Message-Id: <20200220071140.14080-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220071140.14080-1-masahiroy@kernel.org>
References: <20200220071140.14080-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=XHidawMY;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
forcibly") made this always-on option. We released v5.4 and v5.5
including that commit.

Remove the CONFIG option and clean up the code now.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/configs/i386_defconfig   |  1 -
 arch/x86/configs/x86_64_defconfig |  1 -
 include/linux/compiler_types.h    | 11 +----------
 kernel/configs/tiny.config        |  1 -
 lib/Kconfig.debug                 | 12 ------------
 5 files changed, 1 insertion(+), 25 deletions(-)

diff --git a/arch/x86/configs/i386_defconfig b/arch/x86/configs/i386_defconfig
index 59ce9ed58430..d961d831c266 100644
--- a/arch/x86/configs/i386_defconfig
+++ b/arch/x86/configs/i386_defconfig
@@ -288,7 +288,6 @@ CONFIG_EARLY_PRINTK_DBGP=y
 CONFIG_DEBUG_STACKOVERFLOW=y
 # CONFIG_DEBUG_RODATA_TEST is not set
 CONFIG_DEBUG_BOOT_PARAMS=y
-CONFIG_OPTIMIZE_INLINING=y
 CONFIG_SECURITY=y
 CONFIG_SECURITY_NETWORK=y
 CONFIG_SECURITY_SELINUX=y
diff --git a/arch/x86/configs/x86_64_defconfig b/arch/x86/configs/x86_64_defconfig
index 0b9654c7a05c..4826254c6140 100644
--- a/arch/x86/configs/x86_64_defconfig
+++ b/arch/x86/configs/x86_64_defconfig
@@ -285,7 +285,6 @@ CONFIG_EARLY_PRINTK_DBGP=y
 CONFIG_DEBUG_STACKOVERFLOW=y
 # CONFIG_DEBUG_RODATA_TEST is not set
 CONFIG_DEBUG_BOOT_PARAMS=y
-CONFIG_OPTIMIZE_INLINING=y
 CONFIG_UNWINDER_ORC=y
 CONFIG_SECURITY=y
 CONFIG_SECURITY_NETWORK=y
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 72393a8c1a6c..e970f97a7fcb 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -129,22 +129,13 @@ struct ftrace_likely_data {
 #define __compiler_offsetof(a, b)	__builtin_offsetof(a, b)
 
 /*
- * Force always-inline if the user requests it so via the .config.
  * Prefer gnu_inline, so that extern inline functions do not emit an
  * externally visible function. This makes extern inline behave as per gnu89
  * semantics rather than c99. This prevents multiple symbol definition errors
  * of extern inline functions at link time.
  * A lot of inline functions can cause havoc with function tracing.
- * Do not use __always_inline here, since currently it expands to inline again
- * (which would break users of __always_inline).
  */
-#if !defined(CONFIG_OPTIMIZE_INLINING)
-#define inline inline __attribute__((__always_inline__)) __gnu_inline \
-	__inline_maybe_unused notrace
-#else
-#define inline inline                                    __gnu_inline \
-	__inline_maybe_unused notrace
-#endif
+#define inline inline __gnu_inline __inline_maybe_unused notrace
 
 /*
  * gcc provides both __inline__ and __inline as alternate spellings of
diff --git a/kernel/configs/tiny.config b/kernel/configs/tiny.config
index 7fa0c4ae6394..8a44b93da0f3 100644
--- a/kernel/configs/tiny.config
+++ b/kernel/configs/tiny.config
@@ -6,7 +6,6 @@ CONFIG_CC_OPTIMIZE_FOR_SIZE=y
 CONFIG_KERNEL_XZ=y
 # CONFIG_KERNEL_LZO is not set
 # CONFIG_KERNEL_LZ4 is not set
-CONFIG_OPTIMIZE_INLINING=y
 # CONFIG_SLAB is not set
 # CONFIG_SLUB is not set
 CONFIG_SLOB=y
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 69def4a9df00..5abde39c3c69 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -305,18 +305,6 @@ config HEADERS_INSTALL
 	  user-space program samples. It is also needed by some features such
 	  as uapi header sanity checks.
 
-config OPTIMIZE_INLINING
-	def_bool y
-	help
-	  This option determines if the kernel forces gcc to inline the functions
-	  developers have marked 'inline'. Doing so takes away freedom from gcc to
-	  do what it thinks is best, which is desirable for the gcc 3.x series of
-	  compilers. The gcc 4.x series have a rewritten inlining algorithm and
-	  enabling this option will generate a smaller kernel there. Hopefully
-	  this algorithm is so good that allowing gcc 4.x and above to make the
-	  decision will become the default in the future. Until then this option
-	  is there to test gcc for this.
-
 config DEBUG_SECTION_MISMATCH
 	bool "Enable full Section mismatch analysis"
 	help
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220071140.14080-2-masahiroy%40kernel.org.
