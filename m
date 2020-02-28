Return-Path: <clang-built-linux+bncBC2ORX645YPRBSX24XZAKGQERFYPEAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 95988174133
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 21:51:23 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id h2sf2476674pgr.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 12:51:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582923082; cv=pass;
        d=google.com; s=arc-20160816;
        b=R9OlgEOwnpckSg9QgPe/f/AKt4CVBe4El0sWroYv+Qd3HMM96Y6i2C9RxTEeETJFS4
         P82RAlcn2R0agPk562k3m/wvDtFm4AA7sMuiuuGC3EVIzw9xhcC7AyIvQ4K2FNKvUrPq
         1Y6emMo5FMaFFjwoPwo04Zi78wQfS3VSXHQMGFT2QC0dEzRBB8LjH8wv5Z2Lui+A6IWa
         PbGXwIVbafWt/B6N4T/bXqMnd3ouIKHE2Motjh9ckL8aNDmaaaIK8g8HZY+/5BcVP13W
         3/bc38z8gHj8T2DL7J7Pua9Ymi/1UM4Jfph5AUw/84J1dpOZJTsO8cNYacJU9GoyZnrq
         h4Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DDXYGd/AEWGcyRgHg0DStUxQqrSDRsc5W5xpZSkJZRM=;
        b=owyU/CE9ilQBi5LYVEral0HIx2t2OHEKYaClwh4rzCPbiMRUdAes3wjlCXysmU42KU
         ot93vPdY0nLPt5jTR83lo77pzROO0M+F6v2rhbuBT6vYafegXag1uE2IewxIAHGl4fEt
         bMgqYaLjsCmEUVMy4rr11v2EW4HZUmsQJ0x0iYYo0/qeyWfvyAHUkQoSf3QW5uVMfSYc
         PQtA+9aZ5rrRchEO0W69hFXoABTX00zQBqSLqI+O17tYENeiL7UxG0RCDaK/1BiAfhdV
         P2WCDnl9tbN/pK1ULCVJljV6iXzCakMLKcb73lMYp89YUXkQfz0ccPezg/s51wr9dfsP
         fweA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WsM/fb6y";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DDXYGd/AEWGcyRgHg0DStUxQqrSDRsc5W5xpZSkJZRM=;
        b=jL+2UzkWsFBYixQ45oT2A1Whz0loeI7cqSFx5lLeCG3zo86JRO4aHH9b4ftELBJL3L
         Xm0mleS5XqMCMKzt6VdlG91qJEJrcRYSK8yz1z4Lh9qJouWlK/9s0Bbc+JYZ3KF/0LXG
         f9RaC2B5g6cU3WZhLIyU3EVYekPxj6UOraZuMkU/Pku9/t0jI0URy7wlLb6mXyQnAdvM
         5PLUZdpnT2ModaSaM2Yits8VGrTF0S/SKyuMUAFVbnWJtiwLPVk2S4mWRRb2kuql9flJ
         /m+JTNraGAAnj+XVRoKN8j26Qrl/JHhKdNH3Sft3kUMFw7kQfpQ9giQ4e1NoSQoF7bTa
         UTYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DDXYGd/AEWGcyRgHg0DStUxQqrSDRsc5W5xpZSkJZRM=;
        b=LjtLMi68W7thluyb6Aioaw3i2FdmC76rCs+BxF1OihRZgII5vwEYYnlH3FICR7RImt
         Z/Qkn/yzRRsqquRXZAVmdMgxBaV2EW6cZQ80QbQNE8DG+DL1GnpA1dGfLyiaQPxZ1UKr
         E0kWEl1QsIjcQ976B9dZSr4PROX0EQaNYzA4biAnYU2iPZkkMaa/ygYHITMljdE+2pXO
         l4DbDylRC548eWKp39n/AUTAti9+iACZahqrlI/BC+89zxG3xeXNBsjuBMfTdTSYPK5M
         3NctFYpYAtT1E5w2RA/axx5QtYPAjUaQX+HNB9R0o7BajgyIRplWYlhPqWs0zHHO4EeP
         Ou0g==
X-Gm-Message-State: APjAAAV46ofBWeaWNNqN29lwiCsgb8q+NtQuRdPr4AiYBufm/19gg/Oh
	NWohLBSH7KkSXV4UO2YFmXs=
X-Google-Smtp-Source: APXvYqxV7QU5ls1FG6lqCXsckWR0M07eGYDGobnflKcZGKqhvzULSHkhqJar6BBB222IA29X60FuBg==
X-Received: by 2002:a63:e044:: with SMTP id n4mr6228788pgj.338.1582923082235;
        Fri, 28 Feb 2020 12:51:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7b4d:: with SMTP id k13ls1357719pgn.7.gmail; Fri, 28 Feb
 2020 12:51:21 -0800 (PST)
X-Received: by 2002:a63:ea4b:: with SMTP id l11mr6250461pgk.93.1582923081708;
        Fri, 28 Feb 2020 12:51:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582923081; cv=none;
        d=google.com; s=arc-20160816;
        b=TJb+KMKdtpwQDKDMlHefjMMlAtUH16SMRCFGQEQn8ZEeK6/+mOfIgqYE3At54ROFYN
         xazLEFy3eXSRjqXZxDOhjvHwYWZNZJtJTD4qZAWoeQIfxDmuh7rzFr+Ic/P5Ail8RLw6
         eUz+2jNioN6mwyuMA476xW7akAXOLT8SBAOnHiElbD+1D+ZRaJsDf3MA3vuC5G51yCZp
         vgdSaYcgpkS0xLiziIdLDBxBqn/eyOaJRBMpVWvTP/VQ4PDlFCGU60jcTvTg2zXFLpEH
         KLadN3yCxtCm2qUK29j53chsRDO5oklTDAnREzRGD0pQBM0viLdHxw5g5AHcHPAFUa10
         0BPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SitQuWaYJYljvcCrYj4fkHHkPc4o0vcrOMkYmOvH+dg=;
        b=fsZbf9fQX824pmXb+KX8pbAX/fkymaRImAPFExJQJ2C5M+td3FNL5pdsl4NSWwDYev
         IU5dyDw5O6GMlxOeVkSIS/MtDpRyCBKlyVo1O9FntLMT3R6hkgjEfTxTKlxsLxXqA7J9
         FadUlkGx3+rLoSPuX0EKKntH9YZxsrw9kdNGJi52v2AIXlknqCa8X6ntMtTwLA+ktMbr
         dfrexDWgBMgvPeTQF8k7ycsiVsvN+5WFbM+T94WQTb4f83SEDMJFyrKzikyGlYS+18kc
         d2EvflQ12Ehf6y0mJU3HnHQWWeCB+BCvQfUSqxEKfwCUmMxdTNFyreWftWVqpfPnLRIY
         oQ2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WsM/fb6y";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id y3si190154plr.1.2020.02.28.12.51.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2020 12:51:21 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id n27so2862921vsa.0
        for <clang-built-linux@googlegroups.com>; Fri, 28 Feb 2020 12:51:21 -0800 (PST)
X-Received: by 2002:a67:fb8d:: with SMTP id n13mr309624vsr.15.1582923080404;
 Fri, 28 Feb 2020 12:51:20 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com> <20200225173933.74818-11-samitolvanen@google.com>
 <56b82a54-044a-75ec-64e5-6ba25b19571f@arm.com>
In-Reply-To: <56b82a54-044a-75ec-64e5-6ba25b19571f@arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 28 Feb 2020 12:51:09 -0800
Message-ID: <CABCJKufFp=7+18-XSY3U3745FifmRNXqBWk9TeZxgZ-aWmhfHQ@mail.gmail.com>
Subject: Re: [PATCH v9 10/12] arm64: implement Shadow Call Stack
To: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="WsM/fb6y";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Feb 28, 2020 at 8:31 AM James Morse <james.morse@arm.com> wrote:
> > +#ifndef __ASSEMBLY__
>
> As the whole file is guarded by this, why do you need to include it in assembly files at all?

True, the include in head.S is not needed. I'll remove it in the next version.

> > +static inline void scs_overflow_check(struct task_struct *tsk)
> > +{
> > +     if (unlikely(scs_corrupted(tsk)))
> > +             panic("corrupted shadow stack detected inside scheduler\n");
>
> Could this ever catch anything with CONFIG_SHADOW_CALL_STACK_VMAP?
> Wouldn't we have hit the vmalloc guard page at the point of overflow?

With CONFIG_SHADOW_CALL_STACK_VMAP, even though we allocate a full
page, SCS_SIZE is still 1k, so we should catch overflows here well
before we hit the guard page.

> It would be nice to have a per-cpu stack that we switch to when on the overflow stack.

It shouldn't be a problem to add an overflow shadow stack if you think
one is needed.

> I can't work out why this needs to be before before idle_task_exit()...
> It needs to run before init_idle(), which calls scs_task_reset(), but all that is on the
> cpu_up() path. (if it is to pair those up, any reason core code can't do both?)

At this point, the idle task's shadow stack pointer is only stored in
x18, so we need to save it again to thread_info before the CPU shuts
down, or we'll lose the pointer.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufFp%3D7%2B18-XSY3U3745FifmRNXqBWk9TeZxgZ-aWmhfHQ%40mail.gmail.com.
