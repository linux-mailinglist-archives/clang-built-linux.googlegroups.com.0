Return-Path: <clang-built-linux+bncBD63HSEZTUIBB7XQU36QKGQEKQKXQEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA1D2AC78B
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 22:45:35 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id l189sf5227388oia.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 13:45:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604958334; cv=pass;
        d=google.com; s=arc-20160816;
        b=MmtebWVgcmVrlwnzfFXAOuxcd/WNbi3OSr8ScUlRb/cK4UDgVrGAl6k8SNCGnnVWfe
         QjKHVNHw17uTBJLiWjhA9FVReCf9lUflnZMKJOgl8OtNO2bYX4fE4CCWK0h8OnnpgJ+7
         J9rbw3UAJw1nDngVM3ZhszS9TsBB9c4lV/oMWDID9JYDjwI4FNWCnjmHQG+3d0G99urb
         m3didmaZ5YeC3+Sp9SuonTQ04O98FvmsUwyZksauz57HqIMy5hOHZkRWLGnlDQHyUu0H
         9EDHRH0MwaLtA+qdrsw2XvvSqjyB8X8mCRl0c+Qsi5oILpNisrA35HUGY+99k559iZDk
         7vWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Bui3NzN40wEhMWhquqn9NiOQEGJCgmZS/ETWLN8NDOQ=;
        b=0xN/97O70bIE7VzU1kIFWLbn4S0IRX+tZWN1eWfuDl8QqIJtwSdXKvK7hnHSuINKPQ
         iRyMgZ1hjYZC/Qog1T5cgGIMPCxaeiNV4rMQNi96asYZTAQEEJO+i7SKwBQ5C9bAKjHi
         BknkpxfFBmevBFzC2oVXShDDLYWWp0hPouiKRiRS3j5Oqx76Bk7A/eUMcp+t7DeTs63+
         vYyccSh/NRbTkp29dSXnzRrQbLE37XX1nO2bTWV38E38jZHivxeSsRoTYOKVfvzc5zaL
         XJJRt0q0aG4Yd+n+qpE6s1A6fzHip83BydRza8M2SffARiHXk+vE0H69BTylLdVPe+0r
         lv8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2uMJxTjA;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bui3NzN40wEhMWhquqn9NiOQEGJCgmZS/ETWLN8NDOQ=;
        b=C9r6N1uTsXJk5UjpPKzl6iaBUJu3P68KeucT0tJKhJMPcHWreAheS0aM12koBHleCn
         fhXrS5xuXPilA/JamdzRLNsZN1xOXsX36Ruod4bT4FaM4QWreavXvi9AIYQEwC/HzyJa
         eGg2mncYVwXleEXVjK6plE+wfzP2UC1WyqvrpWhQ+BxGYyLFte7FUpKSLDheD3u3qq7o
         5bVgcgnTNQdUAa/CUdElLxuVCPDbtsUZOUb5RRG789ObTn41+UVD+hPVk3vJ5pnbH+sH
         3FflYzqulLPC2qPDvFO1A/9k4dU3F9VitG9yrFv3SEGg3muLNoDZ8PoxYn4J5pHWg5O9
         IaEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bui3NzN40wEhMWhquqn9NiOQEGJCgmZS/ETWLN8NDOQ=;
        b=OFTK4TkGH03cMmNe8kgZzwOUgzXDHGbYam36wQXBqu8P2LVC73tUoBEoAZbswlDxAL
         8aObExHiXOZMUXEOsmRQOToJpdMNd+5elyqT2dAJModn+9u0g2LrGfhmA8SuGMdwzTdh
         ejrvZhlhpyQkfeKnS7/+tw/hvwoyew0mARqwisu9ELz+pSeyIbTo6fiCsqw1UEmydwZ3
         up/S7mS/PAeKOP5ocwm+PBQN8CoBShxXRDWOTYFl7QPo/LJrS3zz9Lv0GhvucRhmvwVE
         9FVJvVLecvoNJMg7Lr2CFubf/v09yfNThuuYXgfxLxuH7E31u7ZPoKBIOGpTC1O/RCOO
         EUxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305mbcrUIv/16KMQYXe6lxuVv2sbiHlf1JLSdXj647MQ4oXNa9T
	ejpvTCL/GwJPjfO2tWJM4YE=
X-Google-Smtp-Source: ABdhPJzZCeNjVIq8RfH4cj6AjP+J70sBnjVboJtMoQzVFMHiTXtMzzeZI3UKXTseE9NaQzu6AvIWdg==
X-Received: by 2002:a54:4082:: with SMTP id i2mr834153oii.28.1604958334205;
        Mon, 09 Nov 2020 13:45:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fd0:: with SMTP id d199ls2508623oib.5.gmail; Mon, 09
 Nov 2020 13:45:33 -0800 (PST)
X-Received: by 2002:aca:fc97:: with SMTP id a145mr814610oii.178.1604958333814;
        Mon, 09 Nov 2020 13:45:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604958333; cv=none;
        d=google.com; s=arc-20160816;
        b=nC6b2l/QFnkpj43ifr5RCeHEv4ipGAWJ+os8oYH3fO1ILsXLdf1VkEpRyaG/STqMD4
         +Tq/7N21gv61zrmcQSPxz8zbhkCsHLF9MjoV8HkbsMWhp2C0nYj/GMu9wY2QVG7de62W
         z1KN1lL0kNY5YhtZE9FRQLrHdNXZqhB1Ez/0cygceHFCqUanDW5f7njH94XfFpiE5xtF
         jThbn62ifQ0S7lUahsNIAipYTHzB/rtJHphQIo2HYCZPCGFkNRnfjhvFqBt8LGT2y/IE
         imk7+JnU4L51BRpevg73yFBIEGdhjC/6FL32szog7aNI7jxoMZJ3n8NYL1M+lg+6t754
         ooXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nN6ACW/KQ2BpCKpEZTQ3+7vFm6+f6090Lxi1Pkysr2Q=;
        b=o+8pVldneC0vEC5VgdDsxpNDV6U2ZlZ/LyrYLxKUVqKSjbSGr+zTfO4vFWCrc3KAIq
         AHGIYU2Wp0d5Pm+7U8qo3OyT9Czsq03wm56y2kxVWQ4zdk6tKB0dKURhLwmTLRHZga/p
         n6dDgFuS2hKJqR1PH3unRxG81cykwi+TeBReV4dCTDi9Y68sMU8/nf0hwe4k7/X5c4fN
         TOB4bDIiQiRTAIemI65/VXDfVFDDkxi8gYUgO43Pp0aa35/SBKdKsgWT7GtGqmZq1ovX
         QPme7ecuv2XXF82paCzjVKgazfEOy9p0wrnW3u/zIuemTKwnpobQCfasBPbIGoLOgK9a
         vVIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2uMJxTjA;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i23si302046oto.5.2020.11.09.13.45.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 13:45:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 99E5F206CB
	for <clang-built-linux@googlegroups.com>; Mon,  9 Nov 2020 21:45:32 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id k26so11922975oiw.0
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 13:45:32 -0800 (PST)
X-Received: by 2002:aca:c60c:: with SMTP id w12mr868574oif.174.1604958331811;
 Mon, 09 Nov 2020 13:45:31 -0800 (PST)
MIME-Version: 1.0
References: <20201109205155.1207545-1-ndesaulniers@google.com>
 <CAMj1kXEoSF7UXNjJS4A6VtDVbpe7kfqxdZkMS3Sxf1Sr=PvdLA@mail.gmail.com> <CAKwvOdmEu+mf0fVW+4gt1q7F3SkFcLvTbgjivv1qnTo3sBAO7A@mail.gmail.com>
In-Reply-To: <CAKwvOdmEu+mf0fVW+4gt1q7F3SkFcLvTbgjivv1qnTo3sBAO7A@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 9 Nov 2020 22:45:19 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEC6TvkYScMPk0++6atLZe1yrkrUwMRkat33WEwym9t0g@mail.gmail.com>
Message-ID: <CAMj1kXEC6TvkYScMPk0++6atLZe1yrkrUwMRkat33WEwym9t0g@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: avoid ADRL pseudo-instruction
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jian Cai <jiancai@google.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nicolas Pitre <nico@fluxnic.net>, 
	Linus Walleij <linus.walleij@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2uMJxTjA;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, 9 Nov 2020 at 22:09, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Nov 9, 2020 at 12:53 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Mon, 9 Nov 2020 at 21:52, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > As Ard notes in
> > > commit 54781938ec34 ("crypto: arm/sha256-neon - avoid ADRL pseudo
> > > instruction")
> > > commit 0f5e8323777b ("crypto: arm/sha512-neon - avoid ADRL pseudo
> > > instruction")
> > >
> > >   The ADRL pseudo instruction is not an architectural construct, but a
> > >   convenience macro that was supported by the ARM proprietary assembler
> > >   and adopted by binutils GAS as well, but only when assembling in 32-bit
> > >   ARM mode. Therefore, it can only be used in assembler code that is known
> > >   to assemble in ARM mode only, but as it turns out, the Clang assembler
> > >   does not implement ADRL at all, and so it is better to get rid of it
> > >   entirely.
> > >
> > >   So replace the ADRL instruction with a ADR instruction that refers to
> > >   a nearer symbol, and apply the delta explicitly using an additional
> > >   instruction.
> > >
> > > We can use the same technique to generate the same offset. It looks like
> > > the ADRL pseudo instruction assembles to two SUB instructions in this
> > > case. Because the largest immediate operand that can be specified for
> > > this instruction is 0x400, and the distance between the reference and
> > > the symbol are larger than that, we need to use an intermediary symbol
> > > (cache_off in this case) to calculate the full range.
> > >
> > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > Suggested-by: Jian Cai <jiancai@google.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  arch/arm/boot/compressed/head.S | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> > > index 2e04ec5b5446..b3eac6f9a709 100644
> > > --- a/arch/arm/boot/compressed/head.S
> > > +++ b/arch/arm/boot/compressed/head.S
> > > @@ -1440,7 +1440,9 @@ ENTRY(efi_enter_kernel)
> > >                 mov     r4, r0                  @ preserve image base
> > >                 mov     r8, r1                  @ preserve DT pointer
> > >
> > > - ARM(          adrl    r0, call_cache_fn       )
> > > + ARM(          sub     r0, pc, #.L__efi_enter_kernel-cache_off )
> > > + ARM(          sub     r0, r0, #cache_off-call_cache_fn        )
> > > +.L__efi_enter_kernel:
> > >   THUMB(                adr     r0, call_cache_fn       )
> > >                 adr     r1, 0f                  @ clean the region of code we
> > >                 bl      cache_clean_flush       @ may run with the MMU off
> > > --
> > > 2.29.2.222.g5d2a92d10f8-goog
> > >
> >
> > This is already fixed in Russell's for-next tree.
>
> Ah right, trolling through lore, there was:
> https://lore.kernel.org/linux-arm-kernel/20200914095706.3985-1-ardb@kernel.org/
>
> I didn't see anything in linux-next today, or
> https://www.armlinux.org.uk/developer/patches/ Incoming or Applied.
>
> Did it just get merged into the for-next branch, or is for-next not
> getting pulled into linux-next?


It should appear tomorrow.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEC6TvkYScMPk0%2B%2B6atLZe1yrkrUwMRkat33WEwym9t0g%40mail.gmail.com.
