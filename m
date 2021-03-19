Return-Path: <clang-built-linux+bncBAABBVO52KBAMGQEOMQGEVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F70341EEE
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 15:01:58 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id b21sf29232436qtr.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 07:01:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616162518; cv=pass;
        d=google.com; s=arc-20160816;
        b=jAOke2t9WcFBPOUPVof19u6qaoDyQR9fetIG4GFwp+O8Nd49bw7HA+RbEH3THhf+I+
         EpK4FKoBsitCnztAr9yZ54PiyMODsHheNVozwv4WGZftMNQWRUEo41a4vqUDq5ov8aR+
         pAdlwFB4IzOHcKrsa9Fr1LMwVdV/dlai7CsaNHIqVFGVyXU9NAMsoaxaD4J6VbKhGliR
         gOgxXdhZl556NMp/6ZQx7CbNHZt6NFt2lEepHdQt2taIsO11nO5LWAmcC1f92c8plDPW
         RQ+9d3gT36k9vG0ZIPMbRV8isZS/S2qB38o4jqklN6WSfVlz0B12C+WznMPJtHamsUSO
         6b8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=57O37E5Q5A6bBBNMPk8d1i3PMSfOo8fA73c59OvF8AQ=;
        b=eSS2pzEYj/fZRH7Nrt9OZKwTUiUlRT9PmIBENx/b7tBsSZSYmioS+VyJY0qVnkqpfi
         Bff6I/sYpDytKlSkmRPIfQrdkW604yrdMBA+9dlHq5aPbXazeinH06PW/x9ZhyuwuLTF
         91NUXTmcD+i2jZD/lDhH1uR0sOOuCsBYnnZCk/6EEiFtT1VBO5axaadjv4MidwlkHXDg
         PMEogQPXLJFMv711KePz6EspbBuEHNxag1vX0i8pEy8edGuquybZbmVhAmWsL4tijdTh
         vyOhpGwWlcQ/DhVBgdfZEgqkJ0F6NYMtP1bSPGzGkadaMWpgS9/Qplmid/xWdt+8vUQG
         gUlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jb1WTTWS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=57O37E5Q5A6bBBNMPk8d1i3PMSfOo8fA73c59OvF8AQ=;
        b=eahCYRjtl2zL/TDPnoj4Cnn235aWgA5vBVuGKwmqU2BjFOVdaDL0bxCKj/7WuidCOj
         0PJnChYIya9kQF+sD0aAx0J7CDJeD5CJG0LlhjXcpg0cePfwXXFXVQqRAg0T83yYei3y
         OSUautG9dqJA59sukFThQtAlv8iWgkHu7pHj5gi+9gEe0dCxdqEtSTDXQrHJg+2EyOwK
         gP8Y3lHTamWaTs5d7/NKXm0inRPaeYM5dKNNpLCpNtj3rQ7YGmxizWB0TGusjWEY5Nvs
         yZpaB1bjUBBqu8eBI0vsWurEt20XLNuJVyp7jfsQkPc7GDDXeFSaFP4bT92+g0eb8iCy
         HQwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=57O37E5Q5A6bBBNMPk8d1i3PMSfOo8fA73c59OvF8AQ=;
        b=KdkxOLyH1aPwT6ARB/JVU2gzM8ghfJ9Kt+KrqtgBdwJubf/SYI6HvLS3dwL/E4GEHm
         EBHwH3mXzqN3aA6tXDjO/H1tzfkNYT3NC/4QWbLweOjraUiup1C2Qek25reqSfxZUX87
         jJvODDS16naVF4B2GG6fDVXBdyIbJgeWbo40D9tXVo1y5YEs96ssPuMuGMgzxRsE9Ykp
         EKm85WncwCp39JJrdoWRyX5jUSUdVoacZLmqsbiYkUpbPYCHCQHL3wi9nBqCeNrldL7y
         sUSbjL8qrguUw5eWAmOBkTDbTgdLC6DDnqg8YNnfgjVA0NNezSklQvyf70+gCBkyTNeX
         B7vQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xGLE7C5PbotFHB8MDVWjkJsyTUuC71PxlMlJMlE7KUnlitSOT
	l+efKyUQFAA4H51AzomY/wk=
X-Google-Smtp-Source: ABdhPJyKKV6ysQvCbw3w5XJLoDS+VLoOCFKVU+fDJ6PniREvksmevCgpeIVIEfOG9ItwCROjF+BDzQ==
X-Received: by 2002:a05:6214:12a1:: with SMTP id w1mr9636000qvu.57.1616162517830;
        Fri, 19 Mar 2021 07:01:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4e89:: with SMTP id dy9ls1483964qvb.10.gmail; Fri, 19
 Mar 2021 07:01:57 -0700 (PDT)
X-Received: by 2002:a05:6214:1909:: with SMTP id er9mr9503038qvb.5.1616162517371;
        Fri, 19 Mar 2021 07:01:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616162517; cv=none;
        d=google.com; s=arc-20160816;
        b=bCOTyEzBgYlB8lAxe56wxwfcEQJvmBzxruXYqY1tZ67VzMoWO0ro+PtWn9qceKWiE/
         IWFGVlhM1/lpOjhWymtW7jVA3OhaJs/nKZqFdjg1nESQH9MQ7Mzpw5BUH+RzWgheNdE1
         52IQuGJYqgeTPtRjRqQGy/N7vU1H7Xbs3rgLir196PLZ8sSJH6JeotCZGwBLdf3LTPuW
         5Gyw+shQFeQ+j8JgstJINxnk2UILYnGTE/XU5d8AmrSV1DtRy74GAl/o+Sux6wNIBxa3
         5LTu2pQZy8vH4Qv/8SZ46L0Nl7Qq3J0XORXQl0WSFtJ4y+UUsur/Ch1EbEEmOyg8fpwv
         850g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=diAE7FauVJn8rNQmvxrkGs22RXYjUQsADVArqAC1bC8=;
        b=qRrh6tz5aceeOFcx6lj2Jg8bL94XyfGT0HUdAfnCKDP3sRZMTQm/Q4JzpVNiXgpW6v
         m1Hds50L2S+r0tc9O+H2kN1U6752b59cY7mYtwttA8p+bsoUkrRp+YbrktQaE3+AM/Lf
         u23xvcbx9uYkjaUuFQc2pd2YrZAdDYuCTu+ZPg9uQH66SknFy0T4Q7Ndy4i7GiEtOPoh
         WKOlAJSJWaoWaB83EGE+kO6wELotsMnDDfMqRbt426VUXLdim00jFaCkgfCcxFmdVsPG
         MVba1qrPxOPDy/rZgWA2kXqZG7dYCukEwD9LSo8tKo8YAavH3ThYXAIKV/mE0UUgDjAx
         4L0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jb1WTTWS;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j10si323269qko.3.2021.03.19.07.01.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 07:01:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3E40364EF6
	for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 14:01:56 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id k25so4834053oic.4
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 07:01:56 -0700 (PDT)
X-Received: by 2002:a05:6808:313:: with SMTP id i19mr1080533oie.67.1616162515535;
 Fri, 19 Mar 2021 07:01:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <20210317143757.GD12269@arm.com>
 <20210317161838.GF12269@arm.com> <CAK8P3a0FeuGLYhiPx=GLdewu2P=Hix7cpVsbF05i5WO5T2XPvQ@mail.gmail.com>
 <20210319122506.GA6832@arm.com>
In-Reply-To: <20210319122506.GA6832@arm.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 19 Mar 2021 15:01:38 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1ocFzdvn=1-vX-xbPApuaKys3tQFDBH+k7bznXZ=RNgQ@mail.gmail.com>
Message-ID: <CAK8P3a1ocFzdvn=1-vX-xbPApuaKys3tQFDBH+k7bznXZ=RNgQ@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Mark Brown <broonie@kernel.org>, Vincenzo Frascino <vincenzo.frascino@arm.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Kristina Martsenko <kristina.martsenko@arm.com>, 
	Ionela Voinescu <ionela.voinescu@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Andrew Scull <ascull@google.com>, David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nicolas Pitre <nico@fluxnic.net>, 
	Nicholas Piggin <npiggin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jb1WTTWS;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, Mar 19, 2021 at 1:25 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> On Thu, Mar 18, 2021 at 09:41:54AM +0100, Arnd Bergmann wrote:
> > On Wed, Mar 17, 2021 at 5:18 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > On Wed, Mar 17, 2021 at 02:37:57PM +0000, Catalin Marinas wrote:
> > > > On Thu, Feb 25, 2021 at 12:20:56PM +0100, Arnd Bergmann wrote:
> > > > > diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> > > > > index bad2b9eaab22..926cdb597a45 100644
> > > > > --- a/arch/arm64/kernel/vmlinux.lds.S
> > > > > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > > > > @@ -217,7 +217,7 @@ SECTIONS
> > > > >             INIT_CALLS
> > > > >             CON_INITCALL
> > > > >             INIT_RAM_FS
> > > > > -           *(.init.altinstructions .init.bss .init.bss.*)  /* from the EFI stub */
> > > > > +           *(.init.altinstructions .init.data.* .init.bss .init.bss.*)     /* from the EFI stub */
> > > >
> > > > INIT_DATA already covers .init.data and .init.data.*, so I don't think
> > > > we need this change.
> > >
> > > Ah, INIT_DATA only covers init.data.* (so no dot in front). The above
> > > is needed for the EFI stub.
> >
> > I wonder if that is just a typo in INIT_DATA. Nico introduced it as part of
> > 266ff2a8f51f ("kbuild: Fix asm-generic/vmlinux.lds.h for
> > LD_DEAD_CODE_DATA_ELIMINATION"), so perhaps that should have
> > been .init.data.* instead.
>
> I think it was the other Nicholas ;) (with an 'h'). The vmlinux.lds.h
> change indeed looks like a typo (it's been around since 4.18).

Right, my mistake.

> > It looks like pointer authentication gone wrong, which ended up
> > with dereferencing the broken pointer in x22, and it explains why
> > it only happens with -cpu max. Presumably this also only happens
> > on secondary CPUs, so maybe the bit that initializes PAC on
> > secondary CPUs got discarded?
>
> I seems that the whole alternative instructions section is gone, so any
> run-time code patching that the kernel does won't work. The kernel boots
> with the diff below but I'm not convinced we don't miss anything else.
> In some cases you get a linker warning about gc sections but not in this
> case. Maybe we need some more asserts to ensure that certain sections
> are not empty.
>
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 11909782ee3e..036cc59033d3 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -203,7 +203,7 @@ SECTIONS
>         . = ALIGN(4);
>         .altinstructions : {
>                 __alt_instructions = .;
> -               *(.altinstructions)
> +               KEEP(*(.altinstructions))
>                 __alt_instructions_end = .;
>         }
>
> Do we need a KEEP(.init.altinstructions) as well?

I would guess so. Whatever causes the .altinstructions to get dropped
presumably also leads to the same happening to .init.altinstructions.

Ideally each use of altinstructions would cause a reference to a
particular symbol so that one gets kept, while any .altinstructions
for unused functions get discarded.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1ocFzdvn%3D1-vX-xbPApuaKys3tQFDBH%2Bk7bznXZ%3DRNgQ%40mail.gmail.com.
