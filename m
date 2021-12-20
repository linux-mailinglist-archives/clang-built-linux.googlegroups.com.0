Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBOHMQGHAMGQEQUZZ6NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id EA26C47A983
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 13:25:28 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id w18-20020a194912000000b004254e83978csf3986305lfa.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 04:25:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640003128; cv=pass;
        d=google.com; s=arc-20160816;
        b=RgvF7KN4POb1InOhhJ0Yqg80bMpG35DLIGRaV1LrFXQdJvX/4tpJxkm4PpRd/KF/Xa
         dWNyszmS2naVaCtW0qGyD2awQp27VeLkJr7JnA5ETrCaH7FeDKku10oi4Tw+bFKZa9qM
         AWGzP6xzrBduiKNFvXym0EADYhdO2/EyD6lfAV53qkjj8qJOEaToTMEdao+LWyffileh
         zvZ9CdSKgSkejb0MQ1T/rDK+YDcDm8+V86IrmIYlltk26+rJyh7nFd80BuYxAqNRnz78
         2W8WzHijK0NljX6C6ikYdi5JGZgLy8GXfZPBCxd6Z0N8Ff8NEgz24gm/Ca01xzjasRL0
         gx2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=43ODj1m12LulG2BHOH2mgzVrC1UIEnwEad7D5KoKc9o=;
        b=Yg72TvcHm0+q1kR4iijQbUovKonrQG2tVL+472OeQSvDZpHjL2bSgvL0YBAHJVI/D7
         i1DEMEMJRMRRsve+8g029NqPxuTR04jccLy8cPAXCvH3ro+sgF06duEB4itZuiTcPq8h
         ceEpuXV/Rh3jDGBfgqJw6lbKoq4kcHBupcSbo8Utvy91VYBCXsJZp+xiU5Bk9aohfGnN
         QiCnsU3nOSW+o8L9Vj9cgFpb0Zq3S95I06eeaG10Xo1+2WYs8s0DphAptA4+Ur5eboXO
         tcav20ew65YikfABmyFA8AV64q0Su4w4bKZKB+IaLahE7wNp5l00ezsrBj2EaWCG23Ry
         Y0CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ySXDbKpA;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43ODj1m12LulG2BHOH2mgzVrC1UIEnwEad7D5KoKc9o=;
        b=EBbXvBa20daEsz8O2jNVn6ykiJ8KcGyDi/WjTrfzOrW/HB7L71u/kn/CvR96kp47gj
         0kKXqmjY2uUfmoPbwuoI8zEaZ483YUzoMplXFWtSibkN2PAveSYixVFOszlU2lodtH9I
         ZM3BrUguOmZIYd7Bn32BeNjBx3MDCxiXPBONr5GZt15f4j7oyZ1PhIW4BMSbloewjUO3
         hYdhctakjOpn2srvsGMxRse0K1AlngJUrxawP8q8DHiPkI7pT0V2REjqIQvBaAiPThzd
         zfoB/l6D/a5R8RM5PD/aUaiqokVqn+DFrIUUICF2Hx//+ciY6OVp+YQpHea037UKC9XQ
         MO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43ODj1m12LulG2BHOH2mgzVrC1UIEnwEad7D5KoKc9o=;
        b=O0avWys5zXhJqEt/LcYeAg7D8WJKHRVmq3qqwVjIMz+Ki5k/mph02Pb3KGiMoLJ7na
         IISUKTHpbhbx6JeMFyQuYilHQCfS6PTsFFEC3/9h54vJthRydyl6pXIpMiM4AriMtlPk
         HT1ruu3P1Z8MaKHkB679sclaXC651zza1zu7Q4Z5aE10ilZ65tmaotp8PJn38YW1rGD2
         I8EXnuxb2bX141CtG/huMVHMX+7ATDtB27sUS6OUxr6L5Tm4MS6n0/+rU4zx1sxOn2Qz
         JoAw0AMAvVwzZOFHOY8gVXcMfasD3YMbht5LWH7giW1cEUto/dIeThgU0VYZsLUlK4zZ
         jqQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533noKxAUYQUtkrKtoxGW49xwT72Vx45HtNc76R4fszJCrRc9HDb
	I0Jj2g12X4a1aj7xFT1vdV8=
X-Google-Smtp-Source: ABdhPJwYbRUZABH1dmoXG5b4cWlW9ZGpoi6MgU9VVYJ1l55ul7/jOzfjRkY3iAu5W0dGqysOAo5T6w==
X-Received: by 2002:a05:651c:549:: with SMTP id q9mr14662870ljp.25.1640003128520;
        Mon, 20 Dec 2021 04:25:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8e74:: with SMTP id t20ls2450664ljk.11.gmail; Mon, 20
 Dec 2021 04:25:27 -0800 (PST)
X-Received: by 2002:a05:651c:2116:: with SMTP id a22mr9080542ljq.435.1640003127514;
        Mon, 20 Dec 2021 04:25:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640003127; cv=none;
        d=google.com; s=arc-20160816;
        b=UsaN0J/uolwLV1DJMpp6+naSSDfFAyJeVaFUH1fTeqGS1Vdy8wfmNUUsr0nlRt/1+1
         KLlKzIsHIlqI/73vV2cl45O7AG+qxjdClCK8yqfvOpi2bcb7WUDks+JC60sore2aXtuf
         HUtv4borsDoy3bBmHy1rldBWkGf//9pgq9PAbpDWjRh1HqNy22WftZl+eRqsNdCg0bnA
         s1loltVal1caXP5gCUjXQH6Ci3cmzTcpZmv661RdRQdNBWXAvy5XzVEb37Qs+Khljx1r
         NrJteJDgVBFXanFHXs1sZgTsxP93nuyjjICpcE6xgpD3ek4gDOXgcHCJY2JQZ+WSav7j
         ikgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Hl+ryow41wi2SaGEsd9ekcLiVIZ1XeLL/2x+u6A5DI4=;
        b=PTf+haY1x+5+rsnLiqhlPzK3ByKdOljqJTQTvYOAQ57uI096E077QAGc1TNYaYqK//
         8YtU/8iUY4J9vPx/tWgqe7hy1AaHkzyewf7IPRBVRclB6nlLpexo98OiyvPC4wxuIUhm
         WFYthtEB/9uPvhCpHyMP56TsRUVtRKqT1df7VGtK4p0wkSjhumY7h5Go7gElwlagitY1
         x1w5P6DVppnM1MrRFVRqFmLgkH161QiXORr0Jw4LXeFOEDpRPcgVb5tC2Fpj+Paiko+q
         ga67jg0Pc/1C/Bckcnkavw/ipCRV2ryaocMwp/IVA7nEpPaqIa/o6QPOnXk1Au5vqOab
         usVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ySXDbKpA;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id e18si843018lji.3.2021.12.20.04.25.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 04:25:27 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id m21so10339445edc.0
        for <clang-built-linux@googlegroups.com>; Mon, 20 Dec 2021 04:25:27 -0800 (PST)
X-Received: by 2002:a17:906:6996:: with SMTP id i22mr13335152ejr.293.1640003127203;
        Mon, 20 Dec 2021 04:25:27 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id y5sm3044716edm.39.2021.12.20.04.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:25:26 -0800 (PST)
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
Subject: [PATCH 4.14 4/6] ARM: 8800/1: use choice for kernel unwinders
Date: Mon, 20 Dec 2021 13:25:04 +0100
Message-Id: <20211220122506.3631672-5-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211220122506.3631672-1-anders.roxell@linaro.org>
References: <20211220122506.3631672-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ySXDbKpA;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
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
index b14f154919a5..d6cf18a0cb0a 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -16,30 +16,42 @@ config ARM_PTDUMP
 	  kernel.
 	  If in doubt, say "N"
 
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
index 428eaf16a1d2..f63a4faf244e 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1131,7 +1131,7 @@ config LOCKDEP
 	bool
 	depends on DEBUG_KERNEL && TRACE_IRQFLAGS_SUPPORT && STACKTRACE_SUPPORT && LOCKDEP_SUPPORT
 	select STACKTRACE
-	select FRAME_POINTER if !MIPS && !PPC && !ARM_UNWIND && !S390 && !MICROBLAZE && !ARC && !SCORE && !X86
+	select FRAME_POINTER if !MIPS && !PPC && !ARM && !S390 && !MICROBLAZE && !ARC && !SCORE && !X86
 	select KALLSYMS
 	select KALLSYMS_ALL
 
@@ -1566,7 +1566,7 @@ config FAULT_INJECTION_STACKTRACE_FILTER
 	depends on FAULT_INJECTION_DEBUG_FS && STACKTRACE_SUPPORT
 	depends on !X86_64
 	select STACKTRACE
-	select FRAME_POINTER if !MIPS && !PPC && !S390 && !MICROBLAZE && !ARM_UNWIND && !ARC && !SCORE && !X86
+	select FRAME_POINTER if !MIPS && !PPC && !S390 && !MICROBLAZE && !ARM && !ARC && !SCORE && !X86
 	help
 	  Provide stacktrace filter for fault-injection capabilities
 
@@ -1575,7 +1575,7 @@ config LATENCYTOP
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211220122506.3631672-5-anders.roxell%40linaro.org.
