Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEGVYPWAKGQEFB2N47Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FBAC168E
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:32:02 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id d2sf895191pll.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:32:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778320; cv=pass;
        d=google.com; s=arc-20160816;
        b=hhrKzlLKuFySnqPKiVihaWzcgpw5tIpRyhkyu11UD0yGxjXDKW0NvVwPufgUgtvFPA
         XWv+y/WVbDalV0wItHnwG+eXbcxisbnJnI+e5DzSRQK9AaNbhRA8ki37GFRCpLwXzMd5
         jiudPgBN7b01eE4naLnLtJ0kSuBlctE1Zvmiw4wFwsRFWPxgf1DFaCBpVfjbnLwz6BeM
         gTKGqaeP44JcZptHgAttAb9SQC/XUzy6t1mPorNYjLz4PcLPyZZwgf7eOgDjU/iqPrea
         E+y1tuaE1VE9ZKmoARhyNKZ3RbnKSxz0OsDnyx+F7uR9qNNaP8ZTVUrxxLSL0IJX57HF
         AbAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p2H5NphK8V9np+vmKPQWZB1RQ6VSyv74McTdYrkIGBs=;
        b=JlK0pQ2ug7N/z50flMsj5qmHwxYkXPQZQdFxdszsWo+HH30eLO2Ew63KVJKpD3b2sm
         aOzDeo2OIfjZRctaTYrY35xLozkEF+LsopgG6rzltcNe8e70BxFwBcWnYhMAh58aT8lQ
         gVMyB/zyFc8oD6smzSIhcpc/llXso1PzXRS7mF+UnTtBasavlwpK+sBgGjpLvTZOO9wn
         MIIjyQbVU/HMJyIWiJYPTaZtz79Y5cw/8YmlfSH3pthue49Vchc5XBlGkDQON9VEtORQ
         QWe53zgyZG8JE91F6h+5j9V4NMZB+br6sAYjSuhtdKqcrcsRjycdXExbFXnee+BwUnYD
         zx4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="yFPyVk/h";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p2H5NphK8V9np+vmKPQWZB1RQ6VSyv74McTdYrkIGBs=;
        b=ew8Il3lJ9f1nMn1FmGy00ODbujrR8Tfnl/y4L+GCVKo19qhGeen6tkM6mAoUMSTvvb
         ZS8G8iBubXQlaK5qQTDEgnmLf7B79Ljjjdidi6M4gjhkWyyyYljnr915hv4J9aGGPTWo
         ydqnqY6VreCNZIF42Hco72/E10KBCJQx78kqiV6dhkLIfrCtJQwskjDN4eWcXniR5vB5
         JGKItoyST0lS1O7OatjUREwzks2ooWHfkUkA5lqKxUtn6fXPnqtW/JBvjatTKuUwh8GR
         dtDZq03uGQzvjgtgzmKvzVAqpk5LS7JeJZYO/yT8Tiy1MjOJa1XUNX9mY7Gl+rx3o97v
         IEmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p2H5NphK8V9np+vmKPQWZB1RQ6VSyv74McTdYrkIGBs=;
        b=V18VH3qnR7mXAvwJyG6ayrdHbvC3sTVuseb9Zois8VM2rqwlDCvtMeBp/ETlqRG417
         QM32DrMsUGQRifeK86FPv34aSBlyBP8joYZ1E76GOsf4a9yfYJ7e7nRqC0ZmHHmxcImg
         TJ052sSSL1tWFvFU5jmkPFOPMDEnUvka3q80D6PV/YodpScqn62CYkSXGto21nLUY16c
         10e4fKS119pHyfDTFzXGQt9Jx1ZrjwmttKfUp3hbNWxAvvwSDFgDCwvMS7FZqXFtdWv8
         HihNxwFUBgjr9Eid4UJyskDdTrCC0Pyssj//k/eSYs7XttCamA/19XMiaa0wjb3/Al6Y
         b/5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXBXb0RpZ4s4Nrm2WjNWRjNd5v50KhvXrRJZL9RhRxTjPoLHE8g
	wIhDDwinw1wlsAnv5+vVW1I=
X-Google-Smtp-Source: APXvYqz9T0NRryNd5fmbXV3svMG+k+NWNA7u8uzv/di/KH8gJoT2E24GezgqLiM1p2h8I8iqzPVkrg==
X-Received: by 2002:a63:2104:: with SMTP id h4mr20026317pgh.295.1569778320402;
        Sun, 29 Sep 2019 10:32:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c086:: with SMTP id o6ls3092840pjs.4.canary-gmail;
 Sun, 29 Sep 2019 10:32:00 -0700 (PDT)
X-Received: by 2002:a17:902:9346:: with SMTP id g6mr16379994plp.0.1569778319979;
        Sun, 29 Sep 2019 10:31:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778319; cv=none;
        d=google.com; s=arc-20160816;
        b=lDzx/kEjOk5ekgRuWG5ViFMq2WBdEIV5TzZl0z+pte/AeyC2leUC/1w4CV+LWVJer+
         PjV4T/QtpeVXDx5Iw+jggC/4C3w5V8CMbTY7oMX/wjmV5TGotnu22ZA5DqgYz8ByN1+O
         ynfUT4R2KFTwtMxK+3YDKRVJ1x4xoB7WikMMQpoDeBb/STNcHeu18C2x8+7C9pGb7tul
         yUBy4wE7bJIKn6F2uWSUdjgGcMME5BLvFM1e9t34F4IXYJDdx9p0sGjf0cmNzpb0rVBc
         sxphhaULkG+wo9UEntSHhGFB97UdbVJG3U+T2Hv+SyV32zvLo5K2LWyUr7XvTJpoN0Tv
         XChw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=b6keAd/dPWFsD2wDtQ/Z6UKTZDR0XMmaLGsJoxUSniM=;
        b=snihDszEn5PvQDRoCrjTcdWzEI6jBbbomYUHCAv7IQJLSZVlPftIDfokZ6EVo8BN3X
         M5j5OA0IeGDvHRp3n8MazuUfbjJLye/hETxc5TIv99Ry0N6sJSNXu8gR2Kmwkkiae1hz
         LjPAXdRbmu7uydQkfJ+5zFsPQNjkESxLqT4lu91ChIr0UaMShHtFhr/X/LwH0sm5suMx
         TLzQjJBIEf4MfxhB551dp7V+EbUcS1803UIwdQCv17y9236QqpI6bWibRxz7CvqD+Bt9
         bCvrMbaD4xX7ifjKSkc83oF1cGzbeTYJE4T0NFCtldto2yhmlGUGRUXD/eIOVj0lY0SE
         uJpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="yFPyVk/h";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b64si345565pfg.0.2019.09.29.10.31.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:31:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C6A7D2086A;
	Sun, 29 Sep 2019 17:31:58 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.3 33/49] ARM: 8905/1: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
Date: Sun, 29 Sep 2019 13:30:33 -0400
Message-Id: <20190929173053.8400-33-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173053.8400-1-sashal@kernel.org>
References: <20190929173053.8400-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="yFPyVk/h";       spf=pass
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
index 5e2c68e9dd6e2..b587a3b3939ab 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -82,7 +82,7 @@ config ARM
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
-	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
+	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IDE if PCI || ISA || PCMCIA
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bca..9b3d4deca9e4e 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173053.8400-33-sashal%40kernel.org.
