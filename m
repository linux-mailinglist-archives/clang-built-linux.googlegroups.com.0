Return-Path: <clang-built-linux+bncBC7457HKSMPRBWXFQWEAMGQEV6EI7MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f61.google.com (mail-ot1-f61.google.com [209.85.210.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D0C3D9183
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 17:08:12 +0200 (CEST)
Received: by mail-ot1-f61.google.com with SMTP id 79-20020a9d08d50000b02903daf90867besf979648otf.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 08:08:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627484891; cv=pass;
        d=google.com; s=arc-20160816;
        b=srp2qe2tM8tbP/qiPBdLkoNeOOSSTYOi6jq3B2gExXUnv72UultLk3gi9LKDueGRjd
         zpFBrxQSiuHJOL4iNCABdLMqDmuXkvBQjCNw3bQaXV+TWcCl7Av+QeNnyNYSHxnOqeHD
         OsiDJM72JJtI1gHqZtF6FfJfsxJFIcLG0pFXYNXXWPFuKQMlg2kyoLdjjP23I7uOrGhZ
         /5naiRpI5WI2W8Z0UdLN3pP5ULyK2Bene/4u0YF+LZU8vYaHKo/Q+cXLkJ4qsz5o22vM
         udqRpTr2h5R2bTtunC3Xpl59Sx3OoguxI/THAhhuimmIM6OK3bNXnAid4VahV56T8gGx
         zkVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=Yrefw+B7xNplrpUXBUvJT+xqJvk+Q9V8NEyeYEm3BSM=;
        b=PGovyhsBu7a7F7zMpAmfZFqsI9dLeGpFv6IkFfskU2pAanoP5/+1ylEokC1NmuFZUA
         mwEvC1pIMWOl2rO3nONBQPgrOBsFgdDC7IhkTSE35mGtlaC4dyU4KnR9l/zv1Gqh20Tf
         fRhvdVbEpqAMoSZhlVYiLBroxWVV9a06AKhhn6gdhfRWUTydhR+pH5zvM7FMMYueH5Ps
         0SxYba5shd6yMx7E7OyHpXBUfGaneJeC8CPmkJAjBGJr5M31ifegKPxXzjRbu/bTSIpq
         H+hUc/ZyVcESPVtom61s761ynfNaFuXgBd9JSemuDLuGoLFFdLMWSwFs2/e9qUEjDSvq
         kwHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=FH5AMZjr;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-language:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yrefw+B7xNplrpUXBUvJT+xqJvk+Q9V8NEyeYEm3BSM=;
        b=P4zd12St0f/6kFW+ie6nOSLJWeITuohkEVy4pCZyP5Xl/eJM3BZBoo8PguK+a0XjfY
         di2j3LYDPDIO3bV35+K6a0Wi+m09/lT0fYJa+NZBdZGcBkShgEI43W8oWalaLTXwin8N
         xoBhfYckr1hEPoJo10PLBHNWgaJZqinVsdVcxSNrn+Txbis8mx/3FIgRCeh+GpU0lH1z
         CKzPB+ok904YzumB+X9YonXrAQYN1ycGc1VgauXdaxLWcQbqBD9AojDd72UvZf0u+iu9
         NzISdvwsDe8gtSAMyYNuT+tShq0N/xbWjcQQVTdupspLQ5nlQGIHzfzo77KMR56QR3Zs
         23gw==
X-Gm-Message-State: AOAM533bYbfaePEyqMwj1qCEgzfbyCnqMEngv1hjifY2UOaSfKUvFC3w
	E7+sjdODQNrOq+BU/8tpFzk=
X-Google-Smtp-Source: ABdhPJxneHCoPSTQ2BPBaqrwn13J1JKvHrnBqb27npV1qENGaBVWBLhvkZ4pjS10VOnavGBcWeDOkw==
X-Received: by 2002:aca:d4cf:: with SMTP id l198mr6518464oig.14.1627484890879;
        Wed, 28 Jul 2021 08:08:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2a05:: with SMTP id y5ls666308otu.2.gmail; Wed, 28
 Jul 2021 08:08:10 -0700 (PDT)
X-Received: by 2002:a9d:600a:: with SMTP id h10mr357891otj.144.1627484890501;
        Wed, 28 Jul 2021 08:08:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627484890; cv=none;
        d=google.com; s=arc-20160816;
        b=JLtx9rnDrQfJoj87SWVMzde0yXOFwIJnY+6a0tMGhqHsolX/49KZNK+jjrH0VYvGWJ
         GvI1oPKbkTbNNaxQXh5ujYQH8IqQUsfXNYtw6InmI2qdPzP3yDJLqfJOd+TOTDnr97BH
         hpLxisH4ZB18Cl1Jg3OxM4LjpMD9Sy/zJePvwme82UphYIm24K7/wIMY+442ZgpufS/F
         Fo031YwxLIkXBtYuoqxwmXsk5wjjmAAPQynerYJqQQhMiyAU7vy9dCM7g01gCBA3rYqS
         uWZUsZPi3+0WCN1oViaT/NASnTjKkKgiVJBVYJtbC6R2rBnDvoVW4JvqU7Gcue+A097E
         XaJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=sj2A2zR3rcI8P9VUMF3/9Yk8xk+GhmmV1rwmsS/dDMU=;
        b=RDI+AltUWThqeMFAnov1CnrBzwRNcYfZjM2a2hezGgo+YCQYzScUiRvAZNxa5AaTOe
         63c1gu4c92hT0EPII48YNPXCjUnFeDzDlVMrOAEKUKEhfBaaFUNx3ZNxC0+uGMjhBLrx
         XeO1xYmFia7MFD93dKA/mn83hBLZFJ4GUeh380ETk+54JQZ8gV6g5ho7gzpm7Rcx2MSp
         IFntspPPsiihX0s0RHB4nTokZGkOH0TJ0/rcEr5/5UPUZdZWDuVr2iY4VUqitnlocuzW
         9UOSM6CJQZN9TTjPyNPqlVkS2uGlFAqViZARPC83aLX7w2nlEhjTot4omGuS5M6tiK4a
         iOPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=FH5AMZjr;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id o10si12598oic.3.2021.07.28.08.08.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 08:08:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 610172c417c2b4047d4b1f7e (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 28 Jul 2021 15:07:48
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id B88C1C4338A; Wed, 28 Jul 2021 15:07:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 497DBC433F1;
	Wed, 28 Jul 2021 15:07:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 497DBC433F1
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nathan Chancellor'" <nathan@kernel.org>,
	"'Andrew Morton'" <akpm@linux-foundation.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	<linux-hexagon@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>,
	"'Manning, Sid'" <sidneym@quicinc.com>
References: <20210728001729.1960182-1-nathan@kernel.org>
In-Reply-To: <20210728001729.1960182-1-nathan@kernel.org>
Subject: RE: [PATCH] hexagon: Clean up timer-regs.h
Date: Wed, 28 Jul 2021 10:07:45 -0500
Message-ID: <03bc01d783c2$52e6f200$f8b4d600$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQHsvcFl/v/yGvN+KqOPEWg6PsqxiKsuCMEw
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=FH5AMZjr;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> -----Original Message-----
> From: Nathan Chancellor <nathan@kernel.org>
...
> When building allmodconfig, there is a warning about TIMER_ENABLE being
> redefined:
> 
>  drivers/clocksource/timer-oxnas-rps.c:39:9: warning: 'TIMER_ENABLE'
>  macro redefined [-Wmacro-redefined]
>  #define TIMER_ENABLE            BIT(7)
>          ^
>  arch/hexagon/include/asm/timer-regs.h:13:9: note: previous definition
>  is here
>  #define TIMER_ENABLE            0
>          ^
>  1 warning generated.
> 
> The values in this header are only used in one file each, if they are
> used at all. Remove the header and sink all of the constants into their
> respective files.
> 
> TCX0_CLK_RATE is only used in arch/hexagon/include/asm/timex.h
> 
> TIMER_ENABLE, RTOS_TIMER_INT, RTOS_TIMER_REGS_ADDR are only used in
> arch/hexagon/kernel/time.c.
> 
> SLEEP_CLK_RATE and TIMER_CLR_ON_MATCH have both been unused since
> the
> file's introduction in commit 71e4a47f32f4 ("Hexagon: Add time and timer
> functions").
> 
> TIMER_ENABLE is redefined as BIT(0) so the shift is moved into the
> definition, rather than its use.
> 
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/hexagon/include/asm/timer-regs.h | 26 --------------------------
>  arch/hexagon/include/asm/timex.h      |  3 +--
>  arch/hexagon/kernel/time.c            | 12 ++++++++++--
>  3 files changed, 11 insertions(+), 30 deletions(-)
>  delete mode 100644 arch/hexagon/include/asm/timer-regs.h
> 
> diff --git a/arch/hexagon/include/asm/timer-regs.h
> b/arch/hexagon/include/asm/timer-regs.h
> deleted file mode 100644
> index ee6c61423a05..000000000000
> --- a/arch/hexagon/include/asm/timer-regs.h
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Timer support for Hexagon
> - *
> - * Copyright (c) 2010-2011, The Linux Foundation. All rights reserved.
> - */
> -
> -#ifndef _ASM_TIMER_REGS_H
> -#define _ASM_TIMER_REGS_H
> -
> -/*  This stuff should go into a platform specific file  */
> -#define TCX0_CLK_RATE		19200
> -#define TIMER_ENABLE		0
> -#define TIMER_CLR_ON_MATCH	1
> -
> -/*
> - * 8x50 HDD Specs 5-8.  Simulator co-sim not fixed until
> - * release 1.1, and then it's "adjustable" and probably not defaulted.
> - */
> -#define RTOS_TIMER_INT		3
> -#ifdef CONFIG_HEXAGON_COMET
> -#define RTOS_TIMER_REGS_ADDR	0xAB000000UL
> -#endif
> -#define SLEEP_CLK_RATE		32000
> -
> -#endif
> diff --git a/arch/hexagon/include/asm/timex.h
> b/arch/hexagon/include/asm/timex.h
> index 8d4ec76fceb4..dfe69e118b2b 100644
> --- a/arch/hexagon/include/asm/timex.h
> +++ b/arch/hexagon/include/asm/timex.h
> @@ -7,11 +7,10 @@
>  #define _ASM_TIMEX_H
> 
>  #include <asm-generic/timex.h>
> -#include <asm/timer-regs.h>
>  #include <asm/hexagon_vm.h>
> 
>  /* Using TCX0 as our clock.  CLOCK_TICK_RATE scheduled to be removed. */
> -#define CLOCK_TICK_RATE              TCX0_CLK_RATE
> +#define CLOCK_TICK_RATE              19200
> 
>  #define ARCH_HAS_READ_CURRENT_TIMER
> 
> diff --git a/arch/hexagon/kernel/time.c b/arch/hexagon/kernel/time.c
> index feffe527ac92..febc95714d75 100644
> --- a/arch/hexagon/kernel/time.c
> +++ b/arch/hexagon/kernel/time.c
> @@ -17,9 +17,10 @@
>  #include <linux/of_irq.h>
>  #include <linux/module.h>
> 
> -#include <asm/timer-regs.h>
>  #include <asm/hexagon_vm.h>
> 
> +#define TIMER_ENABLE		BIT(0)
> +
>  /*
>   * For the clocksource we need:
>   *	pcycle frequency (600MHz)
> @@ -33,6 +34,13 @@ cycles_t	pcycle_freq_mhz;
>  cycles_t	thread_freq_mhz;
>  cycles_t	sleep_clk_freq;
> 
> +/*
> + * 8x50 HDD Specs 5-8.  Simulator co-sim not fixed until
> + * release 1.1, and then it's "adjustable" and probably not defaulted.
> + */
> +#define RTOS_TIMER_INT		3
> +#define RTOS_TIMER_REGS_ADDR	0xAB000000UL
> +
>  static struct resource rtos_timer_resources[] = {
>  	{
>  		.start	= RTOS_TIMER_REGS_ADDR,
> @@ -80,7 +88,7 @@ static int set_next_event(unsigned long delta, struct
> clock_event_device *evt)
>  	iowrite32(0, &rtos_timer->clear);
> 
>  	iowrite32(delta, &rtos_timer->match);
> -	iowrite32(1 << TIMER_ENABLE, &rtos_timer->enable);
> +	iowrite32(TIMER_ENABLE, &rtos_timer->enable);
>  	return 0;
>  }
> 
> 
> base-commit: 7d549995d4e0d99b68e8a7793a0d23da6fc40fe8

Acked-by: Brian Cain <bcain@codeaurora.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/03bc01d783c2%2452e6f200%24f8b4d600%24%40codeaurora.org.
