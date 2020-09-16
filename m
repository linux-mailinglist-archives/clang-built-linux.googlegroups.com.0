Return-Path: <clang-built-linux+bncBD63HSEZTUIBBW7SRH5QKGQECP6C24I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB6926CC7C
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 22:45:16 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id a15sf6699685ilb.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 13:45:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600289116; cv=pass;
        d=google.com; s=arc-20160816;
        b=el2Q+6H/A5ako1guoDmffMVOV0/1t3Iig7OjbD961Ke1HyTzvvbRY4fah1KWitRZyH
         ld4/wk5bYGukFpgqpG3sCWFhRzmOm6gf/ZDyyxwsUK/72DrrbgiieHXBwtQEey4EhEQs
         oDT1Pe6ziv7BRuZSGvjGalgiTeUVuwaISyh2sZqJ2SVaN1iIPLXIqvsmSfde1BXP+7QF
         pW/SYutvYp0012Fj32o43qggjQ8R8b67n8bH0pBfP/HsoxcZDl8diVdcX+7gyL8LrjMa
         izPvm/TQLC8slSeRyabNpUm3n4bGeyr8O4SLxjUE4NYXyKGncWHNDcKedgp750jPXETJ
         q7vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=oN+IVmjix81Pt94WmlBd+3+eeotGQz9Zo0KuOoeOEaU=;
        b=m7GQtEv0zjeAIYKgdc206PX+VhzKnscf2FOlEpOfVzOjx7CKQ8XwfD3eTHyz2H/T6F
         6X1yF478TBKHiCmAICf1OcTRQWd63klP/JukEe1+G3K+TuEc8oiJksIrROlY+o5y22pL
         /Gc3+p7qkajzTOcWfuVnNmtnfUL2k4lW0iGB5nR1XCVIGT2bdGt73r4//Ry79wVnxdKn
         8VFcX3Ve9hgZ6XOQ5zVEWeBuDGBcEkg94OeVYSbbwYZfL9QzUiCSO+7uHHCjRVehhSfw
         7WEcWzkL6fks1ORnbNi2acXZNvLUpiZbFemZ1c0l5zI5vDc+ZWH0WQI+Blf+D3UO+K4K
         xJ7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fGCYWboA;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oN+IVmjix81Pt94WmlBd+3+eeotGQz9Zo0KuOoeOEaU=;
        b=HJ45GVyGtAJMel1KRFqG+8VS8ds8Relb7ailf328FxJy39NClpllfdOs9BHOinruQR
         6owVWDZ//ky7fpeLH8CuXMJAy2aJ63GNbQoX33tlEBinJ41yJ/5L5twQEo0f8ouUWXss
         ZZQRt8uDOCfDX7YP8v8JGvqL//E+gMpsRoYAerbxujKnU10Q/MM/nh7XmZm5pcLp/UAr
         DiKTq3VpWX5AhdaUz+ASMA7BF6yfHyumsaPqSq9B1MXCEA7ZNBwsUMCeCrbh0U1cPos8
         2h9r32Fzl18l00Lx3kTDR6BZkvuYZ3m1wlwe88nWpeIKiDEK4WD9TQO30R75JJIDMQIe
         wtzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oN+IVmjix81Pt94WmlBd+3+eeotGQz9Zo0KuOoeOEaU=;
        b=EGqQVhBoma8J8hZTIU/3yhfbxOS8H3u3g8xBTr525GUZjnls8su489+YawKU4nFexq
         ftkfjpzmuIkleYWjnVpDi+AcliUqy71auwW7cZagkvSJAFT34iaBeMTGTCHJWtk/LehJ
         gRT5G5nzzDMp+XQpCYpb1TBRl6j8MdKrmL4jsFTRqX2NPt5uXiV9PUdwmNhxmmegXS9c
         JcsFoYkSm99uslzoeBdYfl/TW1ids+LR+BBim5wSA3AGUIVsKkFt09UPVRuT5ds9hCxm
         44W1GvRRs1/ZTlitpiI7sgdlQX16h0aCDqQB7vcY6I6Of6CJnOkHjC9ZmYN5PRbANPZX
         jWSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306QwBNTQ0IvilpG0tKM1yLFo5HD21D/U8r2n2IE77R1szGvwMx
	HKLUtS10uhSF48syab5kU+0=
X-Google-Smtp-Source: ABdhPJydWDcHBMCwtmrx0mi9tdChBU73BDXsXqrhRTd3+Hnzkf2lBwgZ8HH9GD24RB4cuArYuWN0BQ==
X-Received: by 2002:a92:c146:: with SMTP id b6mr14546632ilh.244.1600289115759;
        Wed, 16 Sep 2020 13:45:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:2c90:: with SMTP id s138ls566433ios.6.gmail; Wed, 16 Sep
 2020 13:45:15 -0700 (PDT)
X-Received: by 2002:a6b:8b52:: with SMTP id n79mr20409590iod.122.1600289115306;
        Wed, 16 Sep 2020 13:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600289115; cv=none;
        d=google.com; s=arc-20160816;
        b=FoXdRlwQQSp8VQAlrpoYphL+3FjNezrlW0Ckokorub/YC2uuCgdp7hd9Aa6S2tRcze
         wcswXFLsBrSzMeo2onWwn84pnkt2b4pUlbcbn7lx89ntTdLDVrUCJFXul/uUMIYo0cJC
         WsFewl9iKzI3qZZlilvnFOR6leClFJjNAzhk2eA+BhzrUIQosR6mBAAr/pUYQLxut8+n
         eQBhF1Zw0YFK86tYo0+drEw5HPJebyyR718KOki7ALZsAAc0T5b6YAvlkhsIrG6XQU7T
         Pco0w9Nl90+LGTDyReW5fXvTImkWIiQsp8vKokI7icx92P4NuedwCLLh6PO9HbcFGtwr
         hFKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b7j11WTZ8t+mQosinzEw1EIUjfca9HjlkBgGUEKGdnI=;
        b=wWhLljZRvweRMbDsGyvzCpc0hOAxaQ113xcebg5H1sCAu/QtT3HpdZ1sHIKnF6cil3
         M2j3iXO24+Atj+RTxiXXsr9aOUUUcrzuSl5tKQFGqYRWwSJ1tQkqid6oNGKhfQq4rC20
         +tSlQwdsIUjcmxxs6+t0bVcZFiHxUdmwd+3xYXqJuCghjHoRTw92WoBcmVoqvJGmEEyv
         weFh+VlwbHcmbt4Tn9Jluk6E/WWmajwseTGQ0cJpCQDUGCa28aTsBbEWtsLeD7JsuP//
         473thG4PGBhqdC5jUbWl2yDRHpCklk6Nkz4qS5siHTgCcrbKIY6JxNDZVd1yRUAPrn2Q
         Yqiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fGCYWboA;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f80si1511055ilf.3.2020.09.16.13.45.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 13:45:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 69BED221EF
	for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 20:45:14 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id m7so9720157oie.0
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 13:45:14 -0700 (PDT)
X-Received: by 2002:aca:d845:: with SMTP id p66mr4091532oig.47.1600289113732;
 Wed, 16 Sep 2020 13:45:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
 <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
 <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com> <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 16 Sep 2020 23:45:02 +0300
X-Gmail-Original-Message-ID: <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com>
Message-ID: <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fGCYWboA;       spf=pass
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

On Wed, 16 Sep 2020 at 22:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Sep 15, 2020 at 10:55 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Wed, 16 Sep 2020 at 02:31, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, Sep 15, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > Excellent, thanks for testing. Do you have any coverage for Thumb2
> > > > builds as well? (CONFIG_THUMB2_KERNEL=y)
> > >
> > > Ah, right, manually testing ARCH=arm defconfig with
> > > CONFIG_THUMB2_KERNEL enabled via menuconfig:
> > >
> > > Builds and boots for clang.
> > >
> > > (Also needed https://lore.kernel.org/lkml/20200915225751.274531-1-ndesaulniers@google.com/T/#u
> > > for an unrelated issue).
> > >
> > > For GCC, I observe:
> > >
> > > arch/arm/vfp/vfphw.o: in function `vfp_support_entry':
> > > (.text+0xa): relocation truncated to fit: R_ARM_THM_JUMP19 against
> > > symbol `vfp_kmode_exception' defined in .text.unlikely section in
> > > arch/arm/vfp/vfpmodule.o
> > >
> >
> > Interesting. And this is using ld.bfd ?
>
> $ arm-linux-gnueabihf-ld --version
> GNU ld (GNU Binutils for Debian) 2.34
>
> .text.unlikely reminds me of the sections created when profiling data
> is present.  That's obviously not the case here, so maybe there's
> other ways this section can be created by GCC?  I may have added a
> patch recently for placing this section explicitly, which was a
> prerequisite for Kees' series explicitly placing all sections.
> https://lore.kernel.org/lkml/159896087937.20229.4955362311782724603.tip-bot2@tip-bot2/
> Maybe that can be improved?
>
> IIRC, LLD is able to emit range extension thunks for these cases, but
> BFD does not.

ld.bfd will usually emit veneers for branches that turn out to be out
of range in the final link stage.

Does the following help?

diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
index 4fcff9f59947..f1468702fbc9 100644
--- a/arch/arm/vfp/vfphw.S
+++ b/arch/arm/vfp/vfphw.S
@@ -82,6 +82,7 @@ ENTRY(vfp_support_entry)
        ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor FP exceptions
        and     r3, r3, #MODE_MASK      @ are supported in kernel mode
        teq     r3, #USR_MODE
+THUMB( it      ne                      )
        bne     vfp_kmode_exception     @ Returns through lr

        VFPFMRX r1, FPEXC               @ Is the VFP enabled?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA%40mail.gmail.com.
