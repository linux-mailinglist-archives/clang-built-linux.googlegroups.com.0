Return-Path: <clang-built-linux+bncBDWIJUMT74BRBG5C5SBAMGQESC5ZEWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C4834759F
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 11:14:52 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id o4sf991884ioh.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 03:14:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616580891; cv=pass;
        d=google.com; s=arc-20160816;
        b=MfVQ9ASjhQoNaD5VM6loIo3ERmq9htjs/2AKMmqtt7ADewsKZ8FrFT/93Dty8Szk0J
         EzkBbfnzcavtfK2W5A+Yt78ueAzOokgdEsHKSip5G2Bp3qsevLNAQE4ebQFZfr1+HNRt
         slGSt0V0JDLM8o6PtjW4KN7QppWu7/86f9jb9vx+tbQEUjjn9KeFv5VVIQkC9EvbYvto
         ndVMZ3HQ4M98FKkpUCbcy+y/Vxd03SfzEmm8sZjvaJ5503kfMLPp4MdCZfIjIIu7mCQz
         YMAE9vLL/YLopXsFD6Yf8CUDX1IHhW2f9GElbh3Uife47AjO/GMJhjsS/4rcS8JeqIFZ
         L0jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:subject:cc:to:from:message-id:date:sender
         :dkim-signature;
        bh=tDr/D9xnZaHb0N5PLhmfd7+f+VVxgA1kQkOcMTkhceg=;
        b=dF0FZX4/bz1eArspPh2Knsw1NU2u2uMaLkFzKDzWuUThIxjLbKfpmV1pti46YQMBpT
         EVa8iwv6XHvn28Ph/fIrm4rQ+Em/4pqhvzZFrs3CDfn5YBH05Ck5hP9xgUBhLMxwDyn1
         4SGpWjZNmT02/+FGj925knxzTdcjrn/hdbZFFT/++NqjK2UjpO9RPSb0oDQVkkNnNlhM
         YEwXYCV5eyJ8H6S/2JcDfiWnFxQaqOylf7Agq6UVuHr754+SaNr5sw4vg9ocmlYHt7mU
         DHlAdRbl2Uu78x1BsDzUHrVWSaDVuS4bRhExM83qWDG/lBS4ry0ok9z2pXiewUKRPsX8
         o9JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tDr/D9xnZaHb0N5PLhmfd7+f+VVxgA1kQkOcMTkhceg=;
        b=joJcW06IILUG+us1W6+QoZCQQAT6nUUxbkAEUjZcZlkSSklva85kZilqhv9/C9KhnL
         i2ttJjHpRbQ7Xec5hAGOFpzIFe9mlNHyQeTqPqGTtkO1EBF3Y4jcjWNFJcfDqkXRPlpt
         pEmgEX71lRDJs9gFNEh9Wr1Q1fn1wCF+b0oEPOZLgfjmkZAgvf7FJTkdLrjE5HYR9OKr
         QKUpSKQcVIfeveHZ0Tt3Bajxsl9ZCulGjfpquM36lT07MhA7N5K7aQX5rCJq2vgZOayU
         1yMbd1XtAETQfjBAb4pnEXecIMkoj/TCA9FnsZ2W40YbjPYnw9zc5SECFX7M4wpJPo2y
         p8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tDr/D9xnZaHb0N5PLhmfd7+f+VVxgA1kQkOcMTkhceg=;
        b=o2liO5ivTh9WbRDKQaNfVRWUg3UTDZyvEmcyDHb0WenTlocelq0kzWncQABtwXkP0Y
         aJTDy0IVDp85HK3+brzf/LbLy/Pm5/jTypIFQ9kwshevg9MAZ5w9GqaLicu5MMWl3nry
         NjPwq4J6j3cAWbVZeUmY385sOPrX17e1r1W0LmdBOjj4p36fF3KuN6R7tZBsWjlbCefT
         cwiXRbUCBvZTnswbNb7Qbqizre8DsjvClgx/HzIZO00hfLqHTFYeujYynK0qpNGmsKRF
         Yjz0KyOMVEVCOO1++NpbB65LojdVSTd9AFFvXzGz22azk5E2bELis7PZujJpkP3AyqAm
         TYFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HCClDqgWy0SjVbLCuJYUUrDxh7zOclK5CRktSQ5cXxkPbDqvB
	f3xN/o2wZAMI0Lz0uzXXWYE=
X-Google-Smtp-Source: ABdhPJz6tW5Yk4H17/tb3EjsGdIT1a8ODZ30J3BLal6JkXEWFeZDpucutEfiA/WbqxrqF/eltI39Uw==
X-Received: by 2002:a02:714f:: with SMTP id n15mr2111230jaf.6.1616580891617;
        Wed, 24 Mar 2021 03:14:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da52:: with SMTP id p18ls391094ilq.11.gmail; Wed, 24 Mar
 2021 03:14:51 -0700 (PDT)
X-Received: by 2002:a92:ca07:: with SMTP id j7mr2129199ils.144.1616580891301;
        Wed, 24 Mar 2021 03:14:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616580891; cv=none;
        d=google.com; s=arc-20160816;
        b=EE/sHLyLmmgjAd+jTwtVOc4Z43AybKV8Hqe4ZiDQ6xf1CbzcYw0/4/B26VvzijHnkp
         fMY2RZnkgd+mW5NtSctxVPdJN6CfhJWjEjKigy9UqNN99vAeTYUXV0LR2ga3wddwOKJy
         rqFx8hw+17NO9i2nazgM+3SyKhAnJ/GKn9zFCxZ6hXzhwV5ejgILiNmc1YtxnGlilbiH
         I05A15ihA6+7uoycG/nwI4qhRBsIfoz3Nfvi/t9GwnULDP+BOVjv7EuDPtegpNchZqtz
         +YIPMBZ42o16Qk0u9xcG8WtkoYekEd/wvyVH3PFIHpLgV3AS4ijjk2v0CIxJ6XZSoSCT
         05Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:subject:cc:to:from
         :message-id:date;
        bh=uod5VyBAa23Kr0JQVDm8Q36lR4R7osHNWPnnM78BbGc=;
        b=Qvnf48h0JtMwP1VBA+fnk2U/fIPsYR8178kmbQ0nFPglvmaZVUBKx6K9p4nOFtEu3Y
         GEFxYZ8cwhpHHCqDhzffYom34Pot5irc3BeqYALTt2IvCnuvZnA0Dng7dU04a6RezcCO
         1vBb7WPA+qC0O/hslcbCmVRZtt6LX5g9aHA9ws3PrSC/I1zUpziMCNW8qYnZO0J89yRD
         6HESPW/BnwIb3rfQcnyMJjcTEMyjVpCwVPlFFWryWgdVvAsE+kgWpIeBGwBIO7naATgt
         sv/Ku/W3ym1i7FgE4i4GUEbTw4OxeM3FZGcX8ReiE72iOQi3A9TYINisRxz6FTe94XS3
         +o0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j7si60456ilu.4.2021.03.24.03.14.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 03:14:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6DFDE619FD;
	Wed, 24 Mar 2021 10:14:50 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=why.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <maz@kernel.org>)
	id 1lP0XI-003Uqv-B9; Wed, 24 Mar 2021 10:14:48 +0000
Date: Wed, 24 Mar 2021 10:14:47 +0000
Message-ID: <87czvokgdk.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] irqchip/gic-v3: fix OF_BAD_ADDR error handling
In-Reply-To: <CAKwvOdkBEQdVC73_datkwa+meitAGskDgTEr5LzX6AEnE4xd-w@mail.gmail.com>
References: <20210323131842.2773094-1-arnd@kernel.org>
	<CAKwvOdkBEQdVC73_datkwa+meitAGskDgTEr5LzX6AEnE4xd-w@mail.gmail.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: ndesaulniers@google.com, arnd@kernel.org, tglx@linutronix.de, nathan@kernel.org, arnd@arndb.de, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 23 Mar 2021 22:06:22 +0000,
Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> On Tue, Mar 23, 2021 at 6:18 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > When building with extra warnings enabled, clang points out a
> > mistake in the error handling:
> >
> > drivers/irqchip/irq-gic-v3-mbi.c:306:21: error: result of comparison of constant 18446744073709551615 with expression of type 'phys_addr_t' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
> 
> Looks like based on CONFIG_PHYS_ADDR_T_64BIT, phys_addr_t can be u64
> or u32, but of_translate_address always returns a u64.  This is fine
> for the current value of OF_BAD_ADDR, but I think there's a risk of
> losing the top 32b of the return value of of_translate_address() here?

If the DT describes a 64bit physical address, and that the (32bit)
kernel isn't built to grok these addresses, then I'd say that the
kernel cannot run on this HW, and that we don't need to worry much
about this case.

In general, CONFIG_PHYS_ADDR_T_64BIT must be selected by the arch code
if anything above 32bit can be described in the PA space.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87czvokgdk.wl-maz%40kernel.org.
