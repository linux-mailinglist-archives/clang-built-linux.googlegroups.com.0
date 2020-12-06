Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBE6MWL7AKGQEWQ6B2KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F66D2D0242
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Dec 2020 10:36:20 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id p16sf4123134wrx.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Dec 2020 01:36:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607247380; cv=pass;
        d=google.com; s=arc-20160816;
        b=vDzfKtqNYblsZ5H+z8QmXJN2B0CKvTE+s2FX84owCjSzd0r9L9hWa6cjc+LpZCus2m
         ugmmWapKc4dqTesUL3o7qqwc1JKz0Yxaja5/CVd9371EC1kDVOv8iOB1qq2Tj2z8A5Ta
         AuN++9efBW3vfpyzREJv0ql2mXQ1e6F60fjq82GvD5Je8jSqdjrlSKMG6mX/bwlxmVvi
         1CKak1N8VYNJ6HqNsIIt0+MUk3Hb2UveBCrRyWg6T/bMdVnSDGgzf6aOOMwCRieV/0xY
         tc8AJv0RXQfhY4SLEFWMZCUe5e7fLPRuK78h7mK4B4qcYWMbRN46WkcUJoOWB9cEy17+
         SqzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=opAN/IqQd375nc4RMVT4rxlVgZCEEDM+oyYHKwPCnyU=;
        b=kN2nswqHpRWOjtWmL+cTaY9gIvSDZprBCRUXyhNyb4VKr9h/gGMY7C25E/eiVVKMbc
         8jBtZdfp8lyuEYjCBmB8mj3y3ip41l5npUvWxOPEbnQhPQpMl++IAJl/Hh488PJ4qNTQ
         ILqURFkxfs4NGYdrMuT96S4xpBmy5xTDXYN5WoP4+PU6drDBVDVqkmb7Trz2z2PUMilR
         LnlVwWzkXrySwjOaAZc7wLGBGhFp8f0lNyhs6+ea21bb41E46uXjSvI6+UbeG7+ruvTg
         eLRhRkVKoS5ZX9rBasuxd2lI4AWBBRlIkDLn0JA47tiPUBRZG5wD+JDemp62BFS9IE+a
         LXSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=opAN/IqQd375nc4RMVT4rxlVgZCEEDM+oyYHKwPCnyU=;
        b=OJJVgr2aVspgtrhtJlzQ4ug6RPNcKuiS3mhWTLxhGo2pANsoZVh2HhmlD/nif7ItWh
         m9ndcmu1azIKHY/2CGV+3XNHftKzDgO3Wamg9BVA2cVtGlYjotbAb76lkM3Xv/+gKsT4
         k+ewAoSvIX3f2ZiS/7BAiSE15JNGb7viajhuBHMapBVglZ1g8WIeAGjyWactTxNBaorj
         VY8wnCDVsT4/tnKRwCFcYFO0+1pjFliSczTT0g4MxsZ29NC3MPOF6B3DFiYjkuslJl6u
         QRlhwlvJFzNBhhmrjIxVzCxwAGeI441U/VN4OeQ87JboT1U5k/ufrxybfYVgPQFjjild
         ws/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=opAN/IqQd375nc4RMVT4rxlVgZCEEDM+oyYHKwPCnyU=;
        b=kYGIEDN8sX0WGQ5krqCZck3H4h75nPhw9RQ9AdeC4AC16Hv+alcXI58nS7gM8sTIOt
         TZJJN/AsY3EoSoGPsa4PIOQQU1ZDvDzfq4rXOMxF8IApvRSfT9YjJaY3LVNr5RjyVI0V
         7smdX79qH2MzTaveOF3XKxNxc1RyU/GTJ/Dv/P43U7CloSxihdrqA+2rPwo6+RztbRh6
         6oF0EhkN60haHcCiH6XoUj/ysdBbGfBDgBtZ8jfNC4d9YCdlQxjoDHMf+WCfFmFqAJaJ
         TEZ8/Sfx6F5yYimN34+gtO8Ae6wE/VN9aDVNfsVHWomCGZUfmlTdYMQ8eI0r/eWk7S0L
         UNzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zM1lGWZ5GxOQXnhU12jbXH+u9xCrkCi59rRd7IHvuX+WkpKmt
	C4cKt4yEea9/RqI1tXof15s=
X-Google-Smtp-Source: ABdhPJxyNbO0RL5lE67yCvxQj7wwaGi+7WwGlW/SntVAb+faoI9G9fPaqLOLQA0ydzN+/5m7Fp5A3w==
X-Received: by 2002:a1c:4e0a:: with SMTP id g10mr12697414wmh.88.1607247379943;
        Sun, 06 Dec 2020 01:36:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2094:: with SMTP id g142ls3203216wmg.2.gmail; Sun, 06
 Dec 2020 01:36:19 -0800 (PST)
X-Received: by 2002:a1c:f20e:: with SMTP id s14mr12774943wmc.126.1607247379167;
        Sun, 06 Dec 2020 01:36:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607247379; cv=none;
        d=google.com; s=arc-20160816;
        b=FQ/QP2F70GhLHKlu6au5VkKs+c7kVUFAthDeZZG6np7mMCxnU5H+amja++NUg6SwyN
         HwWCADoagPmZnlw2vPzsuYDu8xCF2ktxsqyg8YMQ7uqT1Z/jJsnBwYbUA0x9rj3Q9A/x
         c2B8xIcL/e3PJdkgD27ZnDSyUxiqdZ1K5D0OS9CqbM2Eif2nAtpeEp7THzadIFdtCOOn
         rL41hkKNwC/ax94QlTm9VMOYulGfhDTvO4Iz9DnsnEhYItaDNpDtixviwDh8tWhdZZuO
         1HYvfDvZ0l7EEmc7FxNycUcQBMWKQfTn/cpukLh/073c5lqElu2biFFDfcgRHTqfqrYF
         CivQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=WSM94AJIEUP+hS4WIdCCzkS6TnJwkHrdyLNW3Dn37jA=;
        b=VtHxsCoaYmM+CCcJSH0z7Zr3uUiLVwIW3/gvq5ZDbIyeiINpoZlLo9AkQd6ReJk9MB
         mzSt75SeH8tAf1brn5NJ931NLWmXyo62L/zAA3KNiLZP5/kh2zt+Gfmes11z11pz4uP+
         jM7UOgTy2TZRvfgo6zVW3ZPs0x4XUCa8altiRkunZUCOckUdxyAa33/L7WrbTcLbOI4T
         zYXAq104eEmZhefUGtZ6rfuwzYDpTIIWcdN7bTQLTa3ip7qvwnPIyxiQnyWcKl+40fr0
         7NKdPeaFxsdPHcXSqvLMnEDb120Sc6n4dB9qvETU5MwxAuHz7NtdGkI4cs5p8Gb1hvXU
         ddug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id h20si170459wrb.0.2020.12.06.01.36.19
        for <clang-built-linux@googlegroups.com>;
        Sun, 06 Dec 2020 01:36:19 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: from localhost.localdomain ([127.0.0.1]:60934 "EHLO localhost"
        rhost-flags-OK-OK-OK-OK) by eddie.linux-mips.org with ESMTP
        id S23990700AbgLFJgQsCI3b (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Sun, 6 Dec 2020 10:36:16 +0100
Date: Sun, 6 Dec 2020 09:36:16 +0000 (GMT)
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Anders Roxell <anders.roxell@linaro.org>
cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        natechancellor@gmail.com, ndesaulniers@google.com,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mips: lib: uncached: fix uninitialized variable 'sp'
In-Reply-To: <20201127083938.2666770-1-anders.roxell@linaro.org>
Message-ID: <alpine.LFD.2.21.2012060915460.656242@eddie.linux-mips.org>
References: <20201127083938.2666770-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Fri, 27 Nov 2020, Anders Roxell wrote:

> When building mips tinyconfig with clang the following warning show up:
> 
> /tmp/arch/mips/lib/uncached.c:40:18: note: initialize the variable 'sp' to silence this warning
>         register long sp __asm__("$sp");
>                         ^
>                          = 0
> 
> Rework to make an explicit inline move.

 It's not uninitialised, because by definition $sp has been initialised.  
This code wouldn't have worked for the last 15 years otherwise.
 
 It is however non-standard usage (which may not have been clarified at 
the time this piece was made; I recall extensive discussions around this 
feature over the years):

"6.47.5.2 Specifying Registers for Local Variables
.................................................
[...]

"The only supported use for this feature is to specify registers for
input and output operands when calling Extended 'asm' (*note Extended
Asm::).  [...]"

so the change description should refer to that as the rationale rather 
than an implementation-specific misleading warning (although that can be 
quoted for a reference of course).

> diff --git a/arch/mips/lib/uncached.c b/arch/mips/lib/uncached.c
> index 09d5deea747f..21a4b94a0558 100644
> --- a/arch/mips/lib/uncached.c
> +++ b/arch/mips/lib/uncached.c
> @@ -37,10 +37,11 @@
>   */
>  unsigned long run_uncached(void *func)
>  {
> -	register long sp __asm__("$sp");
>  	register long ret __asm__("$2");
>  	long lfunc = (long)func, ufunc;
>  	long usp;
> +	long sp;
> +	asm ("move %0, $sp" : "=r" (sp));

 Missing newline between the variable block and code here; you may well 
swap it with the empty line below you have left.  Also use `__asm__' for 
consistency, and remove the extraneous space ahead of the parenthesis as 
we don't use them in Linux.  Using a tab to separate the mnemonic from 
operands is also preferable, i.e. "move\t%0, $sp" in this case (using 
actual tabs works better with multi-line assembly, but this is not one).

 I think this should be OK once the issues I mentioned here have been 
addressed.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2012060915460.656242%40eddie.linux-mips.org.
