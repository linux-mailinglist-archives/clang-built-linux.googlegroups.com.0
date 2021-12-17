Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBHWD6KGQMGQEKO75ZFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 166A6478E08
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 15:41:36 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id h7-20020ac24da7000000b0042521f16f1fsf978492lfe.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Dec 2021 06:41:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639752094; cv=pass;
        d=google.com; s=arc-20160816;
        b=wXcLddBk5/OCnMxhdHid1Yxhy9BUW4W4Lw72sMKzEYJk8qgZlzVVKJzEYxIgjB0jqW
         ik6OBexm5eFbsGbMp/3SCxAANg9iz3AOdUSK1fVnHUMMxgy0Z92xNcJl/fLF+jn93b0E
         gzZpAz6NbavZPbbDFPIgLabj5TqPmeqdZIVCi4wX6sX3xa//hq4TJRchmL64jBucy1Cr
         xSgbxqv0zekF+kLbD9VkR35WLyIySOXs9SBvIqMLI2nIKQyqf0cgUdZR4GRT51MoEEI8
         tCpca8dVmLP+/d9wTMCg0+hhNckYMhPCtHHXQ0lK5gDRQqrfF2q5WP6uriles0LR/gqh
         dYIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cIc5zI7LChgkunlcwGOYjyixma8L7roLPVQmjedEUJo=;
        b=SWHTH/WD+Fs3xJgrm3Qqxo4SrXfQYXBvlvg9FdmhIEhbAKDVzb76TDoMizjAxr5shk
         JVEAoqzMox7u4z7eSJ46OTc8r1j/zE2//pS+wcyoWbOv2gUb0/yd9jT1Fewcp1lPH61r
         6O92MhmVhAfqxT9aRT2hwkClw3YbUViUVCO54yL1d9ORvUN9OYEE7+yp/FAAu3t8UBPA
         ybUD5IToD15gAUrcEVxjQ+LFh3EJ8BKjPeG9wQxHBcwULF2nLav2D6NzBRYg0FnTcO18
         fqBTRgw30HPuAwfmdjg9w0DlqNkLmMmc3U3+ENfU80boZ1vas21DRekNDHVXFKB+qTjK
         tL0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Z5ZRrmxw;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cIc5zI7LChgkunlcwGOYjyixma8L7roLPVQmjedEUJo=;
        b=fuOa8AXnGw5Sq+LatLbg6/C+NSsBfDlKdQCN67Q7ZcTf+OYQ8Y8eZAr6YAp9wB8cft
         p1nV+GX2cXxm0TYyODYpOxFHEyB5w1ftaRNJDueTeqYAPv117cj6xKjbK+QnKmIAH6mx
         gnAJwcGFzFVyfST7AO9X7w8oNmqBdIp+VjhE4S8XWw3S5bdZfdEGQx0ijVK61NGho3Bj
         IDIIsH/YlMJQupu6qB7dcq9F38TBjaYH06eYp5lpjBSqBQrOc4gV7bD60ZznVX8+F7uq
         ZPWMmDiuua3WmKboaIJe4OUSRXx8pwD9x8WFWhJ1tvxm9QHz58oXCrMJaKhJJgaIYKd4
         TRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cIc5zI7LChgkunlcwGOYjyixma8L7roLPVQmjedEUJo=;
        b=YnNoYqL0X2hIUbb7lH9L3i4gjNtOgxJxCwfRh1fISlfPoAqdtGw1sOIckLPiCJgOrd
         xa04eOV8OmkzZ10oSYRpd3aQrL8VPNSVsx6XulItg/tUtHyQGJKScbvPRWPpKpJ8EPLj
         +t2MBeSBO7m7tpDGdXDRG74LuQFDGel6srfnjTyv/yWBlTEFQk7Ir6E7N/3IXy9A1ooq
         JNcgrAED1CdpbUxnldd1CeuqU8hBffnPWskEaIvoKwrXDrjlhH8ko5I9UgTyM0JiZC3o
         L9/NzOeooYxERcaU+T3RakBnmf/mPRnMAke9Sc+SoeFifC60qjSo1u+cHaa+/nbv/i3F
         /7dQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XcW1jznkiU4kiDpnb0M7AY7YvzOZSKtFAVlrxx4DkweUQInpT
	8sqZXFtvsvf8/1/9RJOGEFk=
X-Google-Smtp-Source: ABdhPJwTwDO+kVSOl3smtBJOP8jXyqB2XLzUbfCJC+VpLVqWypcyYihkQSV+dfmsZHECYZ0HM4J5nA==
X-Received: by 2002:a05:6512:1087:: with SMTP id j7mr3144698lfg.191.1639752094460;
        Fri, 17 Dec 2021 06:41:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:b1f:: with SMTP id b31ls1579276ljr.0.gmail; Fri, 17
 Dec 2021 06:41:33 -0800 (PST)
X-Received: by 2002:a2e:9703:: with SMTP id r3mr2981252lji.422.1639752093420;
        Fri, 17 Dec 2021 06:41:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639752093; cv=none;
        d=google.com; s=arc-20160816;
        b=p6IZFUuAuVRz32COEm1r0bIT+yMjC83FIcE6hCCyeJM491r2UJ+TT3qe0UuyYdrT0b
         Zbcp840tWevSPfVOSAdFluLUmvuI9PFc1FXA7sqqVjxYZmJRSO11pYgS9UFHFRXYznxh
         VgUZbq2MTp7mZkFJFnIoR8thcDk+nQY7UbJ+BLVK7jPU2MR9+0gm/m6jLFbEZeDejjkM
         SmdBBNkgON+0FyLLiaJh9YHo4v5dPya9fxukyMlqlL9oI6qbyUXAn+fKi7aCXN22uRC8
         kDrCgpcJTu+LBrWPx5Fg+Yaa+kS2OUSqT5tRqIGOC29B7qwG3+Oj45IUCPRYMY0mnpUk
         9djw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YtXzvh0C6WiWca/wi/qfYHW/5QpcMjxHI9YNhLAWuJ0=;
        b=yPBDnfstOvnzG7JWOHAHh3FarjD96Tpd6/hfX5Wxm7xXUCmKP1EApunKRSHS5gPta9
         WjIgV66Z+867cLdQyNX8tX1LDPfWibcDAHmLCUDlvMOYDEM5RLruS5zbHZFc7KQG6JiR
         Y51lzRXUAO/iHoFT8Yp6FwsnIiKeJjU7vISrYR2OSee78YA30iODFUw0Ds9tMWY7BP8H
         XKmihen9xPZLJmHKtUzpg57KCN259RtI0lmHb/pCtezVr8ej6WpyIypkCLM+YWi2njFT
         HS9r2ucXBm0zK1DpBZ5W7jDVtQ7KxLErbl4V3ADIw3ojWTMH68Q4lGpj5Z9qD3YV9t0d
         wODQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Z5ZRrmxw;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id z24si122922lfu.0.2021.12.17.06.41.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Dec 2021 06:41:33 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id z9so8664193edb.5
        for <clang-built-linux@googlegroups.com>; Fri, 17 Dec 2021 06:41:33 -0800 (PST)
X-Received: by 2002:a05:6402:c8:: with SMTP id i8mr3113551edu.183.1639752093143;
        Fri, 17 Dec 2021 06:41:33 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id gn26sm2942234ejc.14.2021.12.17.06.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 06:41:32 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: stable@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	woojung.huh@microchip.com,
	UNGLinuxDriver@microchip.com,
	davem@davemloft.net,
	netdev@vger.kernel.org,
	linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ulli.kroll@googlemail.com,
	linux@armlinux.org.uk,
	linux-arm-kernel@lists.infradead.org,
	amitkarwar@gmail.com,
	nishants@marvell.com,
	gbhat@marvell.com,
	huxinming820@gmail.com,
	kvalo@codeaurora.org,
	linux-wireless@vger.kernel.org,
	rostedt@goodmis.org,
	mingo@redhat.com,
	dmitry.torokhov@gmail.com,
	ndesaulniers@google.com,
	nathan@kernel.org,
	linux-input@vger.kernel.org,
	Stefan Agner <stefan@agner.ch>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH 4.19 4/6] ARM: 8800/1: use choice for kernel unwinders
Date: Fri, 17 Dec 2021 15:41:17 +0100
Message-Id: <20211217144119.2538175-5-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211217144119.2538175-1-anders.roxell@linaro.org>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Z5ZRrmxw;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

From: Stefan Agner <stefan@agner.ch>

commit f9b58e8c7d031b0daa5c9a9ee27f5a4028ba53ac upstream.

While in theory multiple unwinders could be compiled in, it does
not make sense in practise. Use a choice to make the unwinder
selection mutually exclusive and mandatory.

Already before this commit it has not been possible to deselect
FRAME_POINTER. Remove the obsolete comment.

Furthermore, to produce a meaningful backtrace with FRAME_POINTER
enabled the kernel needs a specific function prologue:
    mov    ip, sp
    stmfd    sp!, {fp, ip, lr, pc}
    sub    fp, ip, #4

To get to the required prologue gcc uses apcs and no-sched-prolog.
This compiler options are not available on clang, and clang is not
able to generate the required prologue. Make the FRAME_POINTER
config symbol depending on !clang.

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Stefan Agner <stefan@agner.ch>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm/Kconfig.debug | 44 +++++++++++++++++++++++++++---------------
 lib/Kconfig.debug      |  6 +++---
 2 files changed, 31 insertions(+), 19 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index bee0ba1d1cfb..01c760929c9e 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -45,30 +45,42 @@ config DEBUG_WX
 
 		If in doubt, say "Y".
 
-# RMK wants arm kernels compiled with frame pointers or stack unwinding.
-# If you know what you are doing and are willing to live without stack
-# traces, you can get a slightly smaller kernel by setting this option to
-# n, but then RMK will have to kill you ;).
-config FRAME_POINTER
-	bool
-	depends on !THUMB2_KERNEL
-	default y if !ARM_UNWIND || FUNCTION_GRAPH_TRACER
+choice
+	prompt "Choose kernel unwinder"
+	default UNWINDER_ARM if AEABI && !FUNCTION_GRAPH_TRACER
+	default UNWINDER_FRAME_POINTER if !AEABI || FUNCTION_GRAPH_TRACER
+	help
+	  This determines which method will be used for unwinding kernel stack
+	  traces for panics, oopses, bugs, warnings, perf, /proc/<pid>/stack,
+	  livepatch, lockdep, and more.
+
+config UNWINDER_FRAME_POINTER
+	bool "Frame pointer unwinder"
+	depends on !THUMB2_KERNEL && !CC_IS_CLANG
+	select ARCH_WANT_FRAME_POINTERS
+	select FRAME_POINTER
 	help
-	  If you say N here, the resulting kernel will be slightly smaller and
-	  faster. However, if neither FRAME_POINTER nor ARM_UNWIND are enabled,
-	  when a problem occurs with the kernel, the information that is
-	  reported is severely limited.
+	  This option enables the frame pointer unwinder for unwinding
+	  kernel stack traces.
 
-config ARM_UNWIND
-	bool "Enable stack unwinding support (EXPERIMENTAL)"
+config UNWINDER_ARM
+	bool "ARM EABI stack unwinder"
 	depends on AEABI
-	default y
+	select ARM_UNWIND
 	help
 	  This option enables stack unwinding support in the kernel
 	  using the information automatically generated by the
 	  compiler. The resulting kernel image is slightly bigger but
 	  the performance is not affected. Currently, this feature
-	  only works with EABI compilers. If unsure say Y.
+	  only works with EABI compilers.
+
+endchoice
+
+config ARM_UNWIND
+	bool
+
+config FRAME_POINTER
+	bool
 
 config OLD_MCOUNT
 	bool
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 6970759f296c..621859a453f8 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1178,7 +1178,7 @@ config LOCKDEP
 	bool
 	depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
 	select STACKTRACE
-	select FRAME_POINTER if !MIPS && !PPC && !ARM_UNWIND && !S390 && !MICROBLAZE && !ARC && !X86
+	select FRAME_POINTER if !MIPS && !PPC && !ARM && !S390 && !MICROBLAZE && !ARC && !X86
 	select KALLSYMS
 	select KALLSYMS_ALL
 
@@ -1589,7 +1589,7 @@ config FAULT_INJECTION_STACKTRACE_FILTER
 	depends on FAULT_INJECTION_DEBUG_FS && STACKTRACE_SUPPORT
 	depends on !X86_64
 	select STACKTRACE
-	select FRAME_POINTER if !MIPS && !PPC && !S390 && !MICROBLAZE && !ARM_UNWIND && !ARC && !X86
+	select FRAME_POINTER if !MIPS && !PPC && !S390 && !MICROBLAZE && !ARM && !ARC && !X86
 	help
 	  Provide stacktrace filter for fault-injection capabilities
 
@@ -1598,7 +1598,7 @@ config LATENCYTOP
 	depends on DEBUG_KERNEL
 	depends on STACKTRACE_SUPPORT
 	depends on PROC_FS
-	select FRAME_POINTER if !MIPS && !PPC && !S390 && !MICROBLAZE && !ARM_UNWIND && !ARC && !X86
+	select FRAME_POINTER if !MIPS && !PPC && !S390 && !MICROBLAZE && !ARM && !ARC && !X86
 	select KALLSYMS
 	select KALLSYMS_ALL
 	select STACKTRACE
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211217144119.2538175-5-anders.roxell%40linaro.org.
