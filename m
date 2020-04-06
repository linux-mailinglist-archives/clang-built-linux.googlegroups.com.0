Return-Path: <clang-built-linux+bncBCS7XUWOUULBBMECVL2AKGQEYTPKCLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D9419EEFF
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 03:09:06 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id a69sf12895189oib.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 18:09:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586135345; cv=pass;
        d=google.com; s=arc-20160816;
        b=M8Sd8TajGk2ngV8c7s2HHKKrQPsfcW/pIzy/udc5QiPoQJ5IHdAosaL5wDD6OpSbCw
         fSFI4nw+32LdAxk6zHb4PCEFgoG5bVK6pDwsjJujTwoGYyvJbm1hD/WZYR1RlgoqyTaj
         VDr97G8NH100jwsASpEfK+y6LRkxeNt6wCc8YcweSmX62U6bUsWGwOhovr7LJ8gN1kTr
         QMSVGkkkGVqf5FOxk0mPLBtUOAaEyHDKoxU8F7WWJKbBy6TMHqnSzkSJ9p4nfztxJviI
         iwN1yZ3GKCHh6xjdTVs1iDCk2d0VVHFZpjpujmd+FCL69qMiuDrPfH7Om0+a+rq3159w
         6RBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kaKSB9FoIc7aoCzbZtb0/xkgbgqe3ih7MZEnSfwXszc=;
        b=lod+I1UVADADQKWdTmMScyykr8Z9urKsyolwJE2wwVJ//FjaGVUSZrx0Tr/eU2syaH
         ntDVwA7KQf3Zyr6+tPi+9P4x3cxo2EJMPnFvImy1VPAqsstVnerqU56tGYYiD7eyZL26
         hkHWtY6X1/r562rPH3nJdZ+f3sqQf2PrTkRBINONX24NQjIZArWvUXoYcrnHXZvR/T1B
         onj0alperChpp5/U6adDrWnKeEfiUcsPZtl1s8fEJ0k2UwB8MaDVao18WGzc2JXkMIW9
         Sl8e9DgbsoZkJZ2fYtWJ6i5GjSc0Ogfj2YiagjRLJl4YWZFbCWIaR9Cy7sBrD8LUlQVx
         ciHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jlnOhmUV;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kaKSB9FoIc7aoCzbZtb0/xkgbgqe3ih7MZEnSfwXszc=;
        b=ncYbiXIT/2BMRsWbqUpbjCWM2twZNQwguPcwZogYybIUuYO6W0NO3uPCiutPDcrfdJ
         BGUXv1j7WBDLXxS3GnLYhJjUCUaKeX0Szwmj8RbUYN+LYlda94YPO3IYeyltLBoROF0S
         gKove1icqgmZeLi5Z+xyFT1G19icfKPMxG0lZqBfmfMVg+W70L5hoXmeTrGPwVcifr6p
         AyiDapQjYtNP4av2TsDwq8cDgoChWMqmGuJUWKzAXVzRhEta5q725iYLKPWVVaLmNQda
         q+uNuRX1l2S2i5W6wbbXT6CyPPgOzO0NgAeqMFHaZxqzFMj652KwJ3Fc6/Ccka3ReBKy
         UFhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kaKSB9FoIc7aoCzbZtb0/xkgbgqe3ih7MZEnSfwXszc=;
        b=hORzS0mzIqjUx8JMzCr8nasWG7FauBF+z5vrZhin+885slcmXMgUxZMqZhMN3tenRP
         IwYfJFR+kXC1RwdNdObH7zKthgIU4cVgVVupYiQaMZLsPnne2/KGkAUWpMOWpm1F2av0
         5tWaSSejBVgIUM5nTPKtOQiu6W917aOfxufAYBNkTvIrIpF/szatEL9Z+1yyOIsDvlK2
         r20DypB9JxRtmFH8bDvVb2hzQFkIU5X5SHylJsZuM1ZwGPnBnEg0/PJSxSiyGKOb6mEl
         TKmR0QKmIZa3SD6lW8CDP2WNN61RaV43Cwk6mTU9nelD0xRhptH8U2uUJZAZWxPQ6l8H
         Jm4g==
X-Gm-Message-State: AGi0PuZ/WJ4zfESvC+66MTQ/fbW1juEg6Lw2LtkYutcom1FdNDIIHnhX
	BsAHpJ6DqXAH73B4RzLsYeI=
X-Google-Smtp-Source: APiQypJBgTsuLx6I/lFpwXPXuyiv3phEhf7NOA/tFA3TP1Ina9MkDhpAV4EBqrdKfvUjwBjU6f9CDQ==
X-Received: by 2002:a05:6830:1aee:: with SMTP id c14mr15118715otd.141.1586135344797;
        Sun, 05 Apr 2020 18:09:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:817:: with SMTP id 23ls6318982oty.8.gmail; Sun, 05 Apr
 2020 18:09:04 -0700 (PDT)
X-Received: by 2002:a05:6830:17ca:: with SMTP id p10mr16141080ota.165.1586135344285;
        Sun, 05 Apr 2020 18:09:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586135344; cv=none;
        d=google.com; s=arc-20160816;
        b=e+v9u7PPxTDHfQ5r1wanlPDN2TQs25p9XJ8C0fBR/EBa+QUR7+EpvltOQ5rz2UMuwc
         JdN2sFfG1PhwWeSjXubQ6pG37xz133T7Rp1yQ5h+g1E1Y62JtUgz62zUkD5f943txunb
         9ERCcdowiUdB4vsDNSK2llXrBRJ+9kZw2PS8MfPxCBtwA0PwhuxTTWvm8ktPu59DAda2
         SpPOkvPNsEv7+s828Sc9vDXc2M0/ajK8gObJofK0CqrTgbkCYNeWsIYo9bkchhU3Z3H9
         6PhaCj+3u96nsDnYp2DiFH0iyWhpDrdIMvXSbQdvdYdfHLbkzeClWidPkrvyPfOw/Qqu
         EqCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8k07XNenfR4dUzD3PNZZK1ZOVaoBC/tsDFFRckZPngg=;
        b=VnK3HlcaYTYKZ77fdtnrQ/6boBCG1Lhril5CA4MRtAYVSx1UvqmMSfZA8fWeziQRC8
         XupYjcQyfEblbku7loBXzunVo2IKy54H5KRkg0FVl6AUoNrSAuKtTl/n7EfYxkIbeoFx
         BQQH3DbCe1BPKePHgJOg7M7cn2ijouRKPi6eo6G/TcvpQ/v1ogAA44s0iLaVx7FNi4pR
         7ybDHMzWjADDuj8YdwyUcjEIoFRw164DRnadd6LmhpmZkDD78Fuk2W+BE6a7XgA0X+RW
         bnpSpnCAhNTdyDHG6vPEQQFG8pC7O31kYWU7b4PziNH6TJh15G3kPh7TixX3HbfM5ph0
         7k/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jlnOhmUV;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t81si1022658oie.5.2020.04.05.18.09.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Apr 2020 18:09:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id g6so4800618pgs.9
        for <clang-built-linux@googlegroups.com>; Sun, 05 Apr 2020 18:09:04 -0700 (PDT)
X-Received: by 2002:a63:3d06:: with SMTP id k6mr18392081pga.418.1586135343242;
        Sun, 05 Apr 2020 18:09:03 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id w9sm10425442pfd.94.2020.04.05.18.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Apr 2020 18:09:02 -0700 (PDT)
Date: Sun, 5 Apr 2020 18:08:59 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, rostedt@goodmis.org,
	mhiramat@kernel.org, bristot@redhat.com, jbaron@akamai.com,
	torvalds@linux-foundation.org, tglx@linutronix.de, mingo@kernel.org,
	namit@vmware.com, hpa@zytor.com, luto@kernel.org,
	ard.biesheuvel@linaro.org, jpoimboe@redhat.com,
	clang-built-linux@googlegroups.com
Subject: Re: [RESEND][PATCH v3 09/17] x86/static_call: Add out-of-line static
 call implementation
Message-ID: <20200406010859.bcfouhukcgmg2on7@google.com>
References: <20200324135603.483964896@infradead.org>
 <20200324142245.819003994@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200324142245.819003994@infradead.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jlnOhmUV;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-03-24, Peter Zijlstra wrote:
>Add the x86 out-of-line static call implementation.  For each key, a
>permanent trampoline is created which is the destination for all static
>calls for the given key.  The trampoline has a direct jump which gets
>patched by static_call_update() when the destination function changes.
>
>Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
>[peterz: fixed trampoline, rewrote patching code]
>Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
>---
> arch/x86/Kconfig                   |    1 +
> arch/x86/include/asm/static_call.h |   22 ++++++++++++++++++++++
> arch/x86/kernel/Makefile           |    1 +
> arch/x86/kernel/static_call.c      |   31 +++++++++++++++++++++++++++++++
> 4 files changed, 55 insertions(+)
> create mode 100644 arch/x86/include/asm/static_call.h
> create mode 100644 arch/x86/kernel/static_call.c
>
>--- a/arch/x86/Kconfig
>+++ b/arch/x86/Kconfig
>@@ -205,6 +205,7 @@ config X86
> 	select HAVE_FUNCTION_ARG_ACCESS_API
> 	select HAVE_STACKPROTECTOR		if CC_HAS_SANE_STACKPROTECTOR
> 	select HAVE_STACK_VALIDATION		if X86_64
>+	select HAVE_STATIC_CALL
> 	select HAVE_RSEQ
> 	select HAVE_SYSCALL_TRACEPOINTS
> 	select HAVE_UNSTABLE_SCHED_CLOCK
>--- /dev/null
>+++ b/arch/x86/include/asm/static_call.h
>@@ -0,0 +1,22 @@
>+/* SPDX-License-Identifier: GPL-2.0 */
>+#ifndef _ASM_STATIC_CALL_H
>+#define _ASM_STATIC_CALL_H
>+
>+#include <asm/text-patching.h>
>+
>+/*
>+ * For CONFIG_HAVE_STATIC_CALL, this is a permanent trampoline which
>+ * does a direct jump to the function.  The direct jump gets patched by
>+ * static_call_update().
>+ */
>+#define ARCH_DEFINE_STATIC_CALL_TRAMP(name, func)			\
>+	asm(".pushsection .text, \"ax\"				\n"	\
>+	    ".align 4						\n"	\
>+	    ".globl " STATIC_CALL_TRAMP_STR(name) "		\n"	\
>+	    STATIC_CALL_TRAMP_STR(name) ":			\n"	\
>+	    "	jmp.d32 " #func "				\n"	\
>+	    ".type " STATIC_CALL_TRAMP_STR(name) ", @function	\n"	\
>+	    ".size " STATIC_CALL_TRAMP_STR(name) ", . - " STATIC_CALL_TRAMP_STR(name) " \n" \
>+	    ".popsection					\n")
>+
>+#endif /* _ASM_STATIC_CALL_H */

Hi Peter,

Coming here from https://github.com/ClangBuiltLinux/linux/issues/974

jmp.d32 is not recognized by clang integrated assembler.
The syntax appears to be very rarely used. According to Debian Code Search,
u-boot is the only project using this syntax.

In March 2017, gas added the pseudo prefix {disp32}
https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=86fa6981e7487e2c2df4337aa75ed2d93c32eaf2
which generalizes jmp.d32  ({disp32} jmp foo)

I wonder whether the instruction jmp.d32 can be replaced with the trick in
arch/x86/include/asm/jump_label.h for clang portability.

% grep -A2 'jmp.d32' arch/x86/include/asm/jump_label.h
         /* Equivalent to "jmp.d32 \target" */
         .byte           0xe9
         .long           \target - .Lstatic_jump_after_\@
...

+ clang-built-linux@googlegroups.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406010859.bcfouhukcgmg2on7%40google.com.
