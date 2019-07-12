Return-Path: <clang-built-linux+bncBD52JJ7JXILRBLOEUPUQKGQEZUHAP3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D6B6756F
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 21:40:30 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id e32sf7959949qtc.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 12:40:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562960429; cv=pass;
        d=google.com; s=arc-20160816;
        b=WBkYgDyxfESVK7yI9Ji72KGk5dneaQ1vR3Z21aLWygxLw/ovP6IapajKASQT53eTuc
         wglAZjwvQ7/uQ9cO73r4YdP3z61JKi2Zh73nyCtPVJBoxbf2dTvpQWQbwXp1rbhfTpbl
         qAixvwrmFqVowT+Y3u5NuydSYc3upHwsUWOOdN4d4hzD1UPqGWKqsGPYxyGA7OxTOYWd
         9tjlaL7NWq3/VMsTPBg6TXKw7XUslAgaeqeW1lx0NfyS+Mll7qCf4BCzmjYQWyoyqDjc
         PIXKN8OCzUTdY8bZv8d0TYe/GRBKJ587JTZsu0YFSuCfjkW7IkZqeoRD482HtEB3UEsb
         vdrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MUwdQ1MkJOzHRYjdCqPBybrryJcrod2pkwYgcP6HlIg=;
        b=vetWDyjOAkymUFMIiUDKe5RhShLzuvW0GYz9nPG+qUyBg/MdP6ekxd6LYgVTtbNfeY
         xOcJMWNpszTjV0CC13uYv38QAJjz/PK8YcOhmvloYxJlZDIDVS/VTEX9Eny6ZHPSvTaZ
         kmG2lhhxjhsqFnMxCuHw+vidCv71DL4nwK5t3eWlqbjuRZ82fVfktlccsJFvK1MkekMW
         PLy0ZOa8LRV5gakxfZG52Jk52cXFcdwq2q7aspudj5q4pkxKYf+6CMpYNSob88ntEVm8
         MO8rm1GcnVM5Xl8OZxlsOTKN7nf27R0wsre+4qTyY4LLkbHudsmuaKmFRBsOlqMyjtnd
         xuoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fjjna3A9;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MUwdQ1MkJOzHRYjdCqPBybrryJcrod2pkwYgcP6HlIg=;
        b=KQdr8P3hofVqlgB7Fob8vKEWQ/lD6ZCSXVvFRdOE/ku9fDHmxRtC30qEP6PTzzFAqI
         F1MrO2UMPlXcODD9waKCEepCMJRmy1Jhkrti9j/hZZFFzblPIQ4QXO18TKdVWzdrDEUf
         3Rcz6he/AFDYA4d44d7soi95Ef2F6owAQfqGs+MaQbHrXv7A/3Y6gpDfBq/wen1djVZB
         fXMPswcotZCs/Kxy++EhD8wkd0zrL/o7+5WG5RqNESYI1N4G4uDr1alMUEegZP7LeWyj
         8rInbCQiedaec8DhMcMFKsllBoIw9crqtwCRAsUAqpwoasJgnGz+8f4vs0pIqoazYrsb
         X/rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MUwdQ1MkJOzHRYjdCqPBybrryJcrod2pkwYgcP6HlIg=;
        b=ElFbr6XuO+c+sz5OlK9ebd/oXbDEIyhJGmIeX+6lMQlzIsyVnTuGF834ODOalbdZ0n
         q+PwhtowwKuX5MAxMKjjngqq8bmveaTlbLnm8FFLDwomDTrxgsjdX0/lIKkoZtXN9gB2
         xeAh7Qqtqg5uViSEoR10CXjYHONkhQ0s6ECx2cFOYm1AQMpMB3ZPJKfP27Ooo9zJ0TU6
         8Rs9sG2u5LoyWIxOXJwFLYZmto0a0IKbEOc8oGqaTRgFM1SEY7KIgJBCVeQxJePAR9V2
         UZaz21JpZwd7XSVFzi/4LAbGNoAj/jQhNc8pBg0G4xNvHLb6eIRg73N0+H1EiKfdHljb
         roiw==
X-Gm-Message-State: APjAAAUxXk69W6K5YXbn7pduyRLt81na9BjqIX5Ln0V3owBAb3faIy4H
	7gNd6qJSsO40Tg48PkOQ/H4=
X-Google-Smtp-Source: APXvYqwaqBPFzf5yabgzeGiqkpIxmyn/gmjN4PbqLb5zb0nUgMGh7ImpZOQbJz/nJOK661j0V91AQw==
X-Received: by 2002:aed:3f47:: with SMTP id q7mr8004704qtf.209.1562960429630;
        Fri, 12 Jul 2019 12:40:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls3131082qki.1.gmail; Fri,
 12 Jul 2019 12:40:29 -0700 (PDT)
X-Received: by 2002:a05:620a:632:: with SMTP id 18mr8129042qkv.205.1562960429387;
        Fri, 12 Jul 2019 12:40:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562960429; cv=none;
        d=google.com; s=arc-20160816;
        b=l2+JMtQuGnqkR9jZbWETIwHVakTEVU7I1oier+QaAlqbH8d1RJjXlh5/psM2jcmNVm
         PJtVbjzXsvQ2rnsbMWfeSqdV4wu6AJ3TSZ7jwWwyuVJHshF9688I745UQ8fjSiEn2xCE
         oxn6mg4FgQTwzqd18zyG8UH9MXGVs38DIoVW6hv0LHxZwLzroh87PRu/uF+CAhKOIYmU
         ayErh+eU8wq5HIGUJGvCAP7oHk7b3LDr/B2OQmSOC0nHWAC8T+DgcYRF1+ZF39QF/Yac
         c27VRwWJkhCaMq2G+cTqk65dmX1MI6ARCcijQ149ri+Lmbl00UMAng2DWt4xxdvweXcF
         lHUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QmYsG2c9gdLtpTtADUB+0AnVVhFJh3Pqj6815V6+Oa8=;
        b=DuIdt2o2n0O3SAz9sBqjvo1F1ERwmafePAMGNZ2/Iiyxqin5gsIOzgq1rDXROsfWEd
         Qtq+gHVyIzeNZBnL0EY7F+zKn28jKEkSj7i+580nzNcF6gTFzUls8bokLw8pfZp5CRnD
         MXzB1nl8uYv6KWgZchmxkQBBRkgX6zHIPZblhqQCIGY9pEsgaAVNzbEeI5SGdQGSpF9C
         4+6ifoQNQMEF21iaF3UgNKDSKH/1HCoWIdvrNRAo/c0G+W6cDTCcrYvCt9O4CE4lyCWt
         3Y2NyOTinRj271/LXxCZKZv49k6YJsatkAGkGL/zds74lTizdvQ7R9+7/It59izCaF9o
         pByA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fjjna3A9;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com. [2607:f8b0:4864:20::a43])
        by gmr-mx.google.com with ESMTPS id l17si380251qkg.0.2019.07.12.12.40.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 12:40:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::a43 as permitted sender) client-ip=2607:f8b0:4864:20::a43;
Received: by mail-vk1-xa43.google.com with SMTP id 130so2310133vkn.9
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 12:40:29 -0700 (PDT)
X-Received: by 2002:a1f:9ad7:: with SMTP id c206mr6561639vke.31.1562960428682;
 Fri, 12 Jul 2019 12:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com> <20190710162114.rucn5wyrlwhkifti@willie-the-truck>
In-Reply-To: <20190710162114.rucn5wyrlwhkifti@willie-the-truck>
From: "'Peter Collingbourne' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Jul 2019 12:40:16 -0700
Message-ID: <CAMn1gO5FyAUy7VSO4YBNniwjPqEoJVpm+_fEiaF=cp_Du991vw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR relocations
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pcc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fjjna3A9;       spf=pass
 (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::a43 as
 permitted sender) smtp.mailfrom=pcc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Peter Collingbourne <pcc@google.com>
Reply-To: Peter Collingbourne <pcc@google.com>
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

On Wed, Jul 10, 2019 at 9:21 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Jul 05, 2019 at 01:02:31AM -0700, Peter Collingbourne wrote:
> > RELR is a relocation packing format for relative relocations.
> > The format is described in a generic-abi proposal:
> > https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
> >
> > The LLD linker can be instructed to pack relocations in the RELR
> > format by passing the flag --pack-dyn-relocs=relr.
> >
> > This patch adds a new config option, CONFIG_RELR. Enabling this option
> > instructs the linker to pack vmlinux's relative relocations in the RELR
> > format, and causes the kernel to apply the relocations at startup along
> > with the RELA relocations. RELA relocations still need to be applied
> > because the linker will emit RELA relative relocations if they are
> > unrepresentable in the RELR format (i.e. address not a multiple of 2).
> >
> > Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> > with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> > compressed (lz4).
> >
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > ---
> >  arch/arm64/Kconfig              |  9 +++++
> >  arch/arm64/Makefile             |  4 ++
> >  arch/arm64/kernel/head.S        | 70 ++++++++++++++++++++++++++++-----
> >  arch/arm64/kernel/vmlinux.lds.S |  9 +++++
> >  4 files changed, 83 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 697ea05107298..f0cd0d2607e70 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -1447,6 +1447,15 @@ config RELOCATABLE
> >         relocation pass at runtime even if the kernel is loaded at the
> >         same address it was linked at.
> >
> > +config RELR
> > +     bool "Use RELR relocation packing"
> > +     depends on RELOCATABLE && $(ld-option,--pack-dyn-relocs=relr)
>
> Do you know if this will also be supported by binutils and, if so, whether
> they've agreed to use the same name for the option?

A number of binutils developers (Cary Coutant, Alan Modra) expressed
support for the format on the generic-abi thread, but I don't know
what the plans of the binutils developers are in terms of
implementation.

> > +     help
> > +       Store the kernel's dynamic relocations in the RELR relocation packing
> > +       format. Requires a compatible linker (currently only LLD supports
> > +       this feature), as well as compatible NM and OBJCOPY utilities
> > +       (llvm-nm and llvm-objcopy are compatible).
> > +
> >  config RANDOMIZE_BASE
> >       bool "Randomize the address of the kernel image"
> >       select ARM64_MODULE_PLTS if MODULES
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index e9d2e578cbe67..16a8636f815c9 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -22,6 +22,10 @@ LDFLAGS_vmlinux            += -shared -Bsymbolic -z notext -z norelro \
> >                       $(call ld-option, --no-apply-dynamic-relocs)
> >  endif
> >
> > +ifeq ($(CONFIG_RELR),y)
> > +  LDFLAGS_vmlinux += --pack-dyn-relocs=relr
> > +endif
> > +
> >  ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
> >    ifeq ($(call ld-option, --fix-cortex-a53-843419),)
> >  $(warning ld does not support --fix-cortex-a53-843419; kernel may be susceptible to erratum)
> > diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> > index 2cdacd1c141b9..9b27d5e7d8f70 100644
> > --- a/arch/arm64/kernel/head.S
> > +++ b/arch/arm64/kernel/head.S
> > @@ -102,6 +102,7 @@ pe_header:
> >        *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
> >        *  x28        __create_page_tables()     callee preserved temp register
> >        *  x19/x20    __primary_switch()         callee preserved temp registers
> > +      *  x24        __primary_switch()         current RELR displacement
>
> I think the comment is a bit misleading here, since x24 is used by
> __relocate_kernel(). Maybe make the middle column say:
>
>         __primary_switch() .. __relocate_kernel()
>
> it's still not ideal, since the latter can be invoked twice, but oh well.

Done in v2.

> >        */
> >  ENTRY(stext)
> >       bl      preserve_boot_args
> > @@ -824,24 +825,63 @@ __relocate_kernel:
> >        * Iterate over each entry in the relocation table, and apply the
> >        * relocations in place.
> >        */
> > -     ldr     w9, =__rela_offset              // offset to reloc table
> > -     ldr     w10, =__rela_size               // size of reloc table
> > -
> >       mov_q   x11, KIMAGE_VADDR               // default virtual offset
> >       add     x11, x11, x23                   // actual virtual offset
> > +
> > +     ldr     w9, =__rela_offset              // offset to reloc table
> > +     ldr     w10, =__rela_size               // size of reloc table
>
> I agree with Nick that I'd prefer to leave these lines alone.

Okay, I've reverted this part in v2.

> >       add     x9, x9, x11                     // __va(.rela)
> >       add     x10, x9, x10                    // __va(.rela) + sizeof(.rela)
> >
> >  0:   cmp     x9, x10
> >       b.hs    1f
> > -     ldp     x11, x12, [x9], #24
> > -     ldr     x13, [x9, #-8]
> > -     cmp     w12, #R_AARCH64_RELATIVE
> > +     ldp     x12, x13, [x9], #24
> > +     ldr     x14, [x9, #-8]
> > +     cmp     w13, #R_AARCH64_RELATIVE
> >       b.ne    0b
> > -     add     x13, x13, x23                   // relocate
> > -     str     x13, [x11, x23]
> > +     add     x14, x14, x23                   // relocate
> > +     str     x14, [x12, x23]
> >       b       0b
> > -1:   ret
>
> So the reason you're removing this ret is because we'll end up with both a
> .relr section *and* .rela section, correct?

Right. It's likely that the rela section will be empty when
CONFIG_RELR is enabled, but it isn't guaranteed. There are currently
no relocations at odd addresses in arm64 defconfig, but I've seen a
few in at least one of our Android device kernels.

> > +1:
> > +#ifdef CONFIG_RELR
> > +     ldr     w9, =__relr_offset              // offset to reloc table
> > +     ldr     w10, =__relr_size               // size of reloc table
> > +     add     x9, x9, x11                     // __va(.relr)
> > +     add     x10, x9, x10                    // __va(.relr) + sizeof(.relr)
> > +
> > +     sub     x15, x23, x24                   // delta from previous offset
> > +     cbz     x15, 7f                         // nothing to do if unchanged
> > +     mov     x24, x23                        // save new offset
> > +
> > +2:   cmp     x9, x10
> > +     b.hs    7f
> > +     ldr     x11, [x9], #8
> > +     tbnz    x11, #0, 3f                     // branch to handle bitmaps
>
> Can we guarantee that x13 has been initialised at this point?

Yes. x13 will be initialized while processing an address entry, and
the format guarantees that each sequence of bitmap entries will be
preceded with an address entry.

> > +     add     x13, x11, x23
> > +     ldr     x12, [x13]                      // relocate address entry
> > +     add     x12, x12, x15
> > +     str     x12, [x13], #8                  // adjust to start of bitmap
> > +     b       2b
> > +
> > +3:   mov     x14, x13
> > +4:   lsr     x11, x11, #1
> > +     cbz     x11, 6f
> > +     tbz     x11, #0, 5f                     // skip bit if not set
> > +     ldr     x12, [x14]                      // relocate bit
> > +     add     x12, x12, x15
> > +     str     x12, [x14]
> > +
> > +5:   add     x14, x14, #8                    // move to next bit's address
> > +     b       4b
> > +
> > +6:   add     x13, x13, #(8 * 63)             // move to next bitmap's address
> > +     b       2b
>
> This desparately needs a block comment at the top (immediately after the
> #ifdef CONFIG_RELR) describing the algorithm and the layout of the .relr
> section, please.

Done in v2.



Peter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMn1gO5FyAUy7VSO4YBNniwjPqEoJVpm%2B_fEiaF%3Dcp_Du991vw%40mail.gmail.com.
