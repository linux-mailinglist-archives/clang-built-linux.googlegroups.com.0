Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7GVYPWAKGQEYFDS4TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 296AAC1694
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:33:50 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id x25sf11569847qtq.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:33:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778428; cv=pass;
        d=google.com; s=arc-20160816;
        b=nauecQbOocHXEp6S9XhG8UnHOyT/jW9Sl8jXXyHVqrToNHbOV0yCCUhIgwxZyEvzAR
         0J/KwEH0t9RidnENiK4gDYLOhU1ZErEyxExmttrHHtlw3kmR3YMtG8jD7nNzXVjr1hpS
         Qrie7wJ1QLG5sylYUJG/a5QJMSLmmRqqV2ISBrNm9k5oqUaJWC1QqOkD5wfLtJ45JtrZ
         dMOxESecmcx0cF3YNt28doqg0JAtUYqDeGbv4yFgy/BBogPfdknW9S55SuMHapeRcMSG
         xZHXTm6wDVzp/r0aWMqJ2vOPLgeegeEIcAfQ3sKEyDfDhJoKOw0lrbMFjUkvpAnS55KO
         P4iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=22JGhflgvHZpSFpWfhl9CjRjFNGUTDx850kgSWgiGBs=;
        b=VLVeru0Oc9FxsRBvJ7RPd/yaUpr5N4v7tUdywibzTk/VKAv/EKhNY7OgKDKZESFSvn
         26/I5XsPfpu7L6uYALr5k2zye6itM4SGeo4PxM0W+EcxFX0dxM0jz0Wn73KRHuwHG082
         IRX8GrIUkwUBMznjT5aqipGcR1zKa3P4QmWn3x/aYgfn6l5Gu9u4jrvlBuG7r1e5fdpU
         cVvD66dDoTRyHdLSFbK1CDncuotMDci0EdfdAXL3BcQC+XO1LLqaXROrT+GxcNS217u8
         +GfxGK0BoyeWnh1MHbOqxaucOlHaCst463M9cOVA+18wTrbwEHrha3rjUb4hxGV+thoC
         ZBUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GJBcXYY1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=22JGhflgvHZpSFpWfhl9CjRjFNGUTDx850kgSWgiGBs=;
        b=mWkf4lTmKFGB8eMIoVsvcZji4v99+dD1sJp+Cw8A/F84uFpXsU+bG3lqrQwAF6mW7y
         wwLuhn68chkyO3+k66gQLVxqGLltpCM54JaDIz250Mn2ic7SOSNkyjeKF+afY9J8g7H8
         3yLSkQDTGsZAdL6cM3c+xm6ndzFWfqe7FVblS5Bv5HuMOR69YJ6WE/iHpCMqkUYpQ5Z5
         VGTJ3ts6C5jA02UeHESv0iHnuAof04mjNsY26RDfloXtqyz0afPnrg5so+mV4z4hDA4u
         5g9xbi66YQS/BTcv6Emdphp5DD3ZdBDlNSnPOhi8db0BRHsCML72c7r326upyWuvXeOp
         D/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=22JGhflgvHZpSFpWfhl9CjRjFNGUTDx850kgSWgiGBs=;
        b=FLBAYcnfXCKfrm0V2564ILcz8DYkxcT5pKnz/sPWnVzscJ1dG8iLXuVOyfU2MH4c+D
         XLC3ZPIfnCWx2eFDwSp5fgZRRMY1SNv72L9F6OwgUDQg3s6CDsrTNtTwDeLwJlns5H0p
         yaV2dFOsd8RRMeoMoy4nU16G25+kjSpN3iM7EGTFxOQEESw/n4dJv686bv+ibAMnliYx
         BQvThP7MgHkW0G/eNlA3bP/N57KWa7c03ygRfkv+BKdLo/hH3iY6IMy1Kxg0moEM0qAU
         Fq6CpyiN3zWECVPlfQYUsY0CZE1jrOcaZuX3jdxo3MRHAhnWtkyQoeYQ0r0FL/Dw/C+r
         gJeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWE+2bYzMGmaPnJO9dG6DaIOqCNAl3rOloz2cKgB4KPubB9Dh16
	d7Vv80Q46Q/z0v02ge8YF4A=
X-Google-Smtp-Source: APXvYqw2DpJ94+lW2b6cHojlx1qpPJ6cQjNQwwPYpniXZxjMg9gVRnbKdo+HrnJkM+Bz7Fu5SNbdww==
X-Received: by 2002:a37:304:: with SMTP id 4mr14981609qkd.260.1569778428693;
        Sun, 29 Sep 2019 10:33:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:506:: with SMTP id 6ls3164285qkf.6.gmail; Sun, 29 Sep
 2019 10:33:48 -0700 (PDT)
X-Received: by 2002:a37:b07:: with SMTP id 7mr14749342qkl.386.1569778428370;
        Sun, 29 Sep 2019 10:33:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778428; cv=none;
        d=google.com; s=arc-20160816;
        b=bIRmGudIhrno1S7q7lBY0O0h0493XIw98hQTaMODurOrVHEr/+5T/6thVGcEspWxm+
         cR+KP4JtQO/CA9fF5FNeEctVQtz7mcMF+BMHrA1Y+6ekqdt8Qaz/7AkTRw3k/BzX7N9q
         Uopo76G2VUlT3Nq/B68M4rQQ4fkD0krXleODMFl417Z2TW23obj6AOc0XTs/H1kkpgJA
         y4RSaWuI6oOGKVqR0h9B5YjXMCwR6fmsBFu/HN8WbRZNyHhDLp1qijBdGN7GEEl4Q3Lf
         YVDUCE2NLoRfofL3QMYOBojsfL/xGeAMz3f0Q9yie/dgDLdADir4HLbsPtyRP/rmIIKC
         QsWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6troiAsciPBGy5s0J2Jmm2Ig95OtQcvH/hCuuaeW1iU=;
        b=cYjHu+Dg4ybYs1ntLAnzDPZwU276raODQKAMPPeEDTiue/c7TBWhI99azYJgpPfl8z
         nJRQcsN2ppaff5RPXJcwQuMf3F9j8pceGEtZgnvXaQQvPgsvmLqtSGcIWBjf2ELs7yEX
         b1J9PuNe79DyOYEhoyB2wB5281B0WAvC2fn+H+wPkAuBZgkyCE14qtzp0V1wkKtDyyQ4
         qT4oaah7AwyFIFi8DUdSUPsda0/AnrjXSrVPQuCwUTR8yVlsaWNUUyPXcvau48KVtXr4
         dlVJW6+ZgVvKBm3DmFcxyTxBJO7CPgNKKi2ujPbcYz9RcAOExlgD4YCbB7ExFK62LoFE
         Yekw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GJBcXYY1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t53si762093qte.2.2019.09.29.10.33.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:33:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 590C221906;
	Sun, 29 Sep 2019 17:33:46 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Matthias Kaehlcke <mka@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stefan Agner <stefan@agner.ch>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 30/42] ARM: 8905/1: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
Date: Sun, 29 Sep 2019 13:32:29 -0400
Message-Id: <20190929173244.8918-30-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173244.8918-1-sashal@kernel.org>
References: <20190929173244.8918-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GJBcXYY1;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit b0fe66cf095016e0b238374c10ae366e1f087d11 ]

Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
with clang:

arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
softirq.c:(.text+0x504): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
softirq.c:(.text+0x58c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
softirq.c:(.text+0x6c8): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
softirq.c:(.text+0x75c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
softirq.c:(.text+0x840): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow

clang can emit a working mcount symbol, __gnu_mcount_nc, when
'-meabi gnu' is passed to it. Until r369147 in LLVM, this was
broken and caused the kernel not to boot with '-pg' because the
calling convention was not correct. Always build with '-meabi gnu'
when using clang but ensure that '-pg' (which is added with
CONFIG_FUNCTION_TRACER and its prereq CONFIG_HAVE_FUNCTION_TRACER)
cannot be added with it unless this is fixed (which means using
clang 10.0.0 and newer).

Link: https://github.com/ClangBuiltLinux/linux/issues/35
Link: https://bugs.llvm.org/show_bug.cgi?id=33845
Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/Kconfig  | 2 +-
 arch/arm/Makefile | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 3539be8700558..6029d324911cf 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -75,7 +75,7 @@ config ARM
 	select HAVE_EXIT_THREAD
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
-	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
+	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IDE if PCI || ISA || PCMCIA
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f863c6935d0e5..c0b2783583016 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -112,6 +112,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
+ifeq ($(CONFIG_CC_IS_CLANG),y)
+CFLAGS_ABI	+= -meabi gnu
+endif
+
 # Accept old syntax despite ".syntax unified"
 AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173244.8918-30-sashal%40kernel.org.
