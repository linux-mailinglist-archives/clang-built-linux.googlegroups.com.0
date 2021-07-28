Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIOEQKEAMGQEBL3W4TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6593D8491
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:17:39 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id f1-20020a17090a8e81b029017720af1cf6sf839461pjo.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 17:17:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627431457; cv=pass;
        d=google.com; s=arc-20160816;
        b=MtW5DXsrYt+O5s4hBQmh6Iyw+/cd/01TKuMTi3F+n9jjzQ34WJzRMUCmu/UIF0bbc6
         3oL/5lvMkHuVDtKuLRolrSTV+9kz9NBpOvym5VkBLPVo9QtkKs7SQLKyQabTIthjEsn7
         PB7OCZfLGVO6+sWsT5Sp5aiqnvqbGhoMoWPowmfHkDE58zIPbgXE4CZeMHByCiH9erwy
         5L4V7TO1Jjfh2NsjN80AfAY+BuYYPEs03jdMMIqYj3nDchJtII9GC7wFfc/OFf1tq33C
         4eirI07nR6Omdz6Emu9hvhdthQKJIqj6zm7T6yNAyZGb1KZkegU+4H3fBQQvFZjUvx1Y
         gIWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=BlK5mhfewDbi14Uj7aNQeKZ9ZuK3Bm9ArAI1FZiAA2g=;
        b=VWrsAPAfEycnxYV0lZOlz7P8A8VkPUmnZIuAMqShmGydpK7mmd98ja2VcpBLlavpVC
         n3pCM6O+U3JvvD0CbucHnuK07bTo5cZj+SGiZ8qZChI5R/aGTHbvvuC8sD6PPkqrFyLU
         f4z7CcDyR/TAhiaigNR1GrP16GeheE45kpBAzakuMxspjemhIjJbwCJtu4kc4gUO0xI4
         YXbiygRuL8OxnxjbdlxIXJMMvC6XFhnNdiRZWpJJ8ZOfhunTJ5J5mPjKGvJpgtnUW7KH
         qzwWsGUFQdqQXZXnMU7CEzbLoxMAzMJHIIqinsQG2QtkcuzBUxvgq7GSDxR1rP26olOC
         esMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AqyI+ulm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BlK5mhfewDbi14Uj7aNQeKZ9ZuK3Bm9ArAI1FZiAA2g=;
        b=i9WxQxxcGp0nEZFTeV09F9E6YqMayS5wiACzp8eP252/wCtu2lNMkhTeDgRbiW2JyT
         mHHsgMei90ApfF4WH4ePTIRPvTMwky9kwsa1hvXhi0MZ5eY13QJRQGt2YzounQdSwKva
         XVx1qW10wiOLkBEWWuIij6ww5SgtqTkqQ7BlNHkCYGlzKxtxvnEwPVML1NcLSEXy3ndY
         rB39dgdkd7PSbjFlQSv36ZJjXPIQK7CUtY0ndE8nDFEqobI53SFqF86sgyVJWc1vS3xj
         lxnJLgg/Zngc+97KlGLI2rhUzpf5MvqNyjsTW1qjClGUqRE5YXR7bCfzJlkwh6+2vvOx
         Vmig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BlK5mhfewDbi14Uj7aNQeKZ9ZuK3Bm9ArAI1FZiAA2g=;
        b=XIw7Ep5djKCFxVklAKqBm1PG0Mhdn/zANnCtaTWvY1SjZ689XFZqQX156xY71UC9pw
         gtMUyXqq3A4+zw2Zroe+wbC0riCoNH/9N/pUJZf2MLvesu4uBaQWRfFjrJAlZGXfb9qR
         ko2jBihTvUxbUMjI7fQdk4fem3b2m0SA2/RmJ4XqwNrqxUrzK9s+vqcOxVil6VcN050x
         zlCbIlal2Tp4aOd/mHg9OdXgW1GV7EL3MDHkKSOBr+f76B7XtAZJxsttnMvH2ZGhJ4k1
         zXo3UoCEi4DLzEtDbyF2ZRPf9nb/ipaIpeGhvvX6306hic0uWP9Jn801WSRBtZB+K83q
         FUYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ySla5d8VrcOIosKIHRwhAdQNaANiizhJrllQbMtAuKTbwcpi0
	lWGx3sqb/4Qn+R58N+ZixbU=
X-Google-Smtp-Source: ABdhPJw2Tsop0bPfA9aOk6EEKjQbcxhvlu4RvDH6wM3Q2SRl9uZiEvxmEOP6y+vda6vblb4D/hpegQ==
X-Received: by 2002:aa7:9e1b:0:b029:384:1d00:738 with SMTP id y27-20020aa79e1b0000b02903841d000738mr21534482pfq.71.1627431457724;
        Tue, 27 Jul 2021 17:17:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e5c1:: with SMTP id u1ls197877plf.11.gmail; Tue, 27
 Jul 2021 17:17:37 -0700 (PDT)
X-Received: by 2002:a17:902:ac90:b029:12c:e7a:c183 with SMTP id h16-20020a170902ac90b029012c0e7ac183mr13272321plr.21.1627431457032;
        Tue, 27 Jul 2021 17:17:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627431457; cv=none;
        d=google.com; s=arc-20160816;
        b=CdyDhYbdL3Irguemn1u3ph6ueiUAEtzAEKWhYj/J5S9YepdUb4WJyyILptGEs4ntRs
         tEIwbnVbg9Z25qWfHnsSYomFKGCLeh3fuhYqokkPeQtighesdQOPy2GwaY4W6/yfpHZC
         hXSgHUbOldVfZ/ZCl8mctUCq6UDmj71QgE3Ikj6egWwmYqNed4R61LfhLDsLOUw7L41/
         R9YbAtlfSkeRO7wj/x3oLY/7YlY5+ElzB0fkF7g6uNBHDx7jXbDU6v5RmTmD7e4DLuNh
         Z8P2WeLK2glBum5uQYHxOomOXLcPGaoStbj5MxGxDq/6qGJqT02RZl3IT/L7RRY8PiHB
         FDOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=E316eNk9y1hZ1RggYmOwOdwpnskE9YaiZ27OvoyGTK4=;
        b=ZmtetY7ZSPZ3UE00BB910Ju0pNkUYubGRBEzeRWHPF48WWPZhxS8lSJYA9T03PSQfp
         I03JIj66mpxRI+8n/YHmT1Q4COGP28DX8VzmTp/uPSig9n/vnSjhUwZL0i+jzkgw9VIY
         IUepgX3Qzun/10CfEWi2btDXegdzqQHB8qjzEVnIQdr7PzFHzJCEf50Mv6HJOlE8axJ6
         zYW+cBhjp7bCEloXMgqRfRm13IUFrPB7XnDTgzR3WSmAk4iJikVZV+IEj9++rjdvo0mO
         i2+TyPZWbadBAV2125nAFCwd00BBuFZ552MQAeoHBgcxCqHDWxhWYmcYzWuyuVi6WbN/
         sGvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AqyI+ulm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mu9si214670pjb.2.2021.07.27.17.17.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 17:17:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 52F4460EBB;
	Wed, 28 Jul 2021 00:17:35 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Brian Cain <bcain@codeaurora.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] hexagon: Clean up timer-regs.h
Date: Tue, 27 Jul 2021 17:17:29 -0700
Message-Id: <20210728001729.1960182-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.264.g75ae10bc75
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AqyI+ulm;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

When building allmodconfig, there is a warning about TIMER_ENABLE being
redefined:

 drivers/clocksource/timer-oxnas-rps.c:39:9: warning: 'TIMER_ENABLE'
 macro redefined [-Wmacro-redefined]
 #define TIMER_ENABLE            BIT(7)
         ^
 arch/hexagon/include/asm/timer-regs.h:13:9: note: previous definition
 is here
 #define TIMER_ENABLE            0
         ^
 1 warning generated.

The values in this header are only used in one file each, if they are
used at all. Remove the header and sink all of the constants into their
respective files.

TCX0_CLK_RATE is only used in arch/hexagon/include/asm/timex.h

TIMER_ENABLE, RTOS_TIMER_INT, RTOS_TIMER_REGS_ADDR are only used in
arch/hexagon/kernel/time.c.

SLEEP_CLK_RATE and TIMER_CLR_ON_MATCH have both been unused since the
file's introduction in commit 71e4a47f32f4 ("Hexagon: Add time and timer
functions").

TIMER_ENABLE is redefined as BIT(0) so the shift is moved into the
definition, rather than its use.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/hexagon/include/asm/timer-regs.h | 26 --------------------------
 arch/hexagon/include/asm/timex.h      |  3 +--
 arch/hexagon/kernel/time.c            | 12 ++++++++++--
 3 files changed, 11 insertions(+), 30 deletions(-)
 delete mode 100644 arch/hexagon/include/asm/timer-regs.h

diff --git a/arch/hexagon/include/asm/timer-regs.h b/arch/hexagon/include/asm/timer-regs.h
deleted file mode 100644
index ee6c61423a05..000000000000
--- a/arch/hexagon/include/asm/timer-regs.h
+++ /dev/null
@@ -1,26 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Timer support for Hexagon
- *
- * Copyright (c) 2010-2011, The Linux Foundation. All rights reserved.
- */
-
-#ifndef _ASM_TIMER_REGS_H
-#define _ASM_TIMER_REGS_H
-
-/*  This stuff should go into a platform specific file  */
-#define TCX0_CLK_RATE		19200
-#define TIMER_ENABLE		0
-#define TIMER_CLR_ON_MATCH	1
-
-/*
- * 8x50 HDD Specs 5-8.  Simulator co-sim not fixed until
- * release 1.1, and then it's "adjustable" and probably not defaulted.
- */
-#define RTOS_TIMER_INT		3
-#ifdef CONFIG_HEXAGON_COMET
-#define RTOS_TIMER_REGS_ADDR	0xAB000000UL
-#endif
-#define SLEEP_CLK_RATE		32000
-
-#endif
diff --git a/arch/hexagon/include/asm/timex.h b/arch/hexagon/include/asm/timex.h
index 8d4ec76fceb4..dfe69e118b2b 100644
--- a/arch/hexagon/include/asm/timex.h
+++ b/arch/hexagon/include/asm/timex.h
@@ -7,11 +7,10 @@
 #define _ASM_TIMEX_H
 
 #include <asm-generic/timex.h>
-#include <asm/timer-regs.h>
 #include <asm/hexagon_vm.h>
 
 /* Using TCX0 as our clock.  CLOCK_TICK_RATE scheduled to be removed. */
-#define CLOCK_TICK_RATE              TCX0_CLK_RATE
+#define CLOCK_TICK_RATE              19200
 
 #define ARCH_HAS_READ_CURRENT_TIMER
 
diff --git a/arch/hexagon/kernel/time.c b/arch/hexagon/kernel/time.c
index feffe527ac92..febc95714d75 100644
--- a/arch/hexagon/kernel/time.c
+++ b/arch/hexagon/kernel/time.c
@@ -17,9 +17,10 @@
 #include <linux/of_irq.h>
 #include <linux/module.h>
 
-#include <asm/timer-regs.h>
 #include <asm/hexagon_vm.h>
 
+#define TIMER_ENABLE		BIT(0)
+
 /*
  * For the clocksource we need:
  *	pcycle frequency (600MHz)
@@ -33,6 +34,13 @@ cycles_t	pcycle_freq_mhz;
 cycles_t	thread_freq_mhz;
 cycles_t	sleep_clk_freq;
 
+/*
+ * 8x50 HDD Specs 5-8.  Simulator co-sim not fixed until
+ * release 1.1, and then it's "adjustable" and probably not defaulted.
+ */
+#define RTOS_TIMER_INT		3
+#define RTOS_TIMER_REGS_ADDR	0xAB000000UL
+
 static struct resource rtos_timer_resources[] = {
 	{
 		.start	= RTOS_TIMER_REGS_ADDR,
@@ -80,7 +88,7 @@ static int set_next_event(unsigned long delta, struct clock_event_device *evt)
 	iowrite32(0, &rtos_timer->clear);
 
 	iowrite32(delta, &rtos_timer->match);
-	iowrite32(1 << TIMER_ENABLE, &rtos_timer->enable);
+	iowrite32(TIMER_ENABLE, &rtos_timer->enable);
 	return 0;
 }
 

base-commit: 7d549995d4e0d99b68e8a7793a0d23da6fc40fe8
-- 
2.32.0.264.g75ae10bc75

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728001729.1960182-1-nathan%40kernel.org.
