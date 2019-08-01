Return-Path: <clang-built-linux+bncBD52JJ7JXILRBIP4RDVAKGQEZXOX2XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BEC7D2BF
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 03:19:31 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id v11sf77282200iop.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 18:19:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564622370; cv=pass;
        d=google.com; s=arc-20160816;
        b=sS8JIH/jW4/jPO/tQoPw69e811HvUWf7imx7muXm0/nDM0e4WPb5GSulZzk+MTK+n2
         L1dKvvf4dkG7hINfkM/rlz8+uiUeocN3QnIxKzXUjSiIOwSSR3YsOz7uwX7r1Qb/LIOO
         ub2yAsp7R0ofOMQDufjLrxbLUIViyOwZjiyAggI/4XqCLFxjsppf2jGOa8NmpTDqXB75
         RRKIALtKn09Cuh69jMPxHXk4NkmCLn0X1l25fn7rFq1hdT9ekRYWaWekyYwxYYyh27BE
         Tdmm1R5bfECfHJX8OWx8VBEUVwP0D/jKIm3QEdc/+IrGAyungDLCPuD7zmj9pYYWzEdx
         TWTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hn5+nHuI0xEJjRkV+lS6uAE+P2PTAofuRbfE3Emcors=;
        b=zcNjLwZCcQxI9TWGK5NGop5m7eDXLIxEx3nGPq4mme2xvX5ZTPc/xJRt9KY9EZs2ja
         Ov32ptv8V9JZo7E7/g2APbm1i5F582MUX1JMQsqs36dtpJID7g4t+iTKKfW8Jqe83RiR
         SsldIC79/OC+/gGGXqrbF4xM8FbyAtMKE69HDEHMwnFx4pdTNtmDJIwnU9tZ6k6eEEuQ
         wE/xJAZyXtAc/8qf4qqiWthsLe3O+OWH/CMeoU/sSE4wX3gfrelOZPVrlTy8sy+C8R0T
         sNZQ5T0pOxrLjK3TdFZCBC7eAn6JJI30RlMU4me+P+Hyy/vN9VIE9sLwC/IdCL8VeojE
         zoow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BIabTuIU;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hn5+nHuI0xEJjRkV+lS6uAE+P2PTAofuRbfE3Emcors=;
        b=bMLGsfw81Xzxxv9f2dI6drc1tjR1MST2sqKLrSjlsJe+S/vQqmV428m4M1efcuCv5b
         G7WyI5f80dN9Fs5kw5P2u+p7yITRmKuOoPoAxQ0NL7+5Y118CxNgVu8HOTSOcLkQJNSC
         9FKpzERIZvFLLYYdShtrGl8PMNUrV3iQFKzrLl5YpknAKn6/riHz3KvfM9mn84BlcGgH
         XfFqNA2C1TJ1TZsXl3BIED8uI1yF98z7llpZdDTJo3MB5lyUZUzHL2LcKIW5OzO99vEB
         pfpSp8SgsI/j9gta9DD0L9/zg2MwMGB+KrU8Loi0OsOczHjY8taKEdKE+3dFsd5qNaH2
         0cQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hn5+nHuI0xEJjRkV+lS6uAE+P2PTAofuRbfE3Emcors=;
        b=ZspflGAqwyfk5CQld6Xs0Mh1YaWYA8iltjVRlmNmaGfbO4YbRXRRzej8DKa6YVvCvu
         /y3enlaEGDuCveZwaSi3ZqyJ0G74PxipiiWTN2aq9syx6teaarTQRgPCXMkeOySyrNJp
         NSuzbU1HDbHsDhN3BTUJrL8Bza6a2g3X9MsVqAC5u/VfQ/Jg1Row2KZuWTVoccFsNrBz
         ntBPUFD9sEvNHaDscIgf/Q21byz6wRBph4n0CynqzqWxeOWMeGPHpGYsSfJ0HNFH3YZM
         xS1s3La31X9Tr01zGnAi7fErgIlhL2Qb09rDdTIgqpGqPdPx/qBj7C7S2YGp748tXxnA
         VHMg==
X-Gm-Message-State: APjAAAXLkSCfpNgyiH5PeAZqSoDVpy0lpm7mYEjBiQ2YlqkWDaHcowpw
	fBDX/O/Ycu+PnxOOBlJu4nQ=
X-Google-Smtp-Source: APXvYqyt3sS7d7GgA08hnJ6FhgI9/twWxYiSedRi/IfJ7U6AuW/tfFfVBOvDAFgnlAfp/PrrBAmZBQ==
X-Received: by 2002:a6b:6409:: with SMTP id t9mr49165544iog.270.1564622370093;
        Wed, 31 Jul 2019 18:19:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:18d:: with SMTP id m13ls18146544ioo.7.gmail; Wed,
 31 Jul 2019 18:19:29 -0700 (PDT)
X-Received: by 2002:a05:6602:220a:: with SMTP id n10mr251757ion.205.1564622369777;
        Wed, 31 Jul 2019 18:19:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564622369; cv=none;
        d=google.com; s=arc-20160816;
        b=z+5l53KmAYKTlwxLLjjhCibJFJ9lA7iiDWF5QLmLKw28+Ov/BHBv8E+pV1b/VCc94x
         4wXZla/JoxvQDxEBfUfzLG7oYqBt6fNHpiTAbWihw/3vx1k0PUB2h5dqCKBbKJcBD/Wy
         0jjWfvouDffmnsVI+BtdwVLC+fDIqP57ztBuPIEDf3qJL9/jl2qurZ2XGie39fzodc+v
         HNYGDlP1Hhjb0A4t9RY90UWiMOpZore5wixA7GWGy+5M4nHjntNv+iKWDmRLnEuFFd1Z
         PmWTN2zuTAJbvnKFkH8kv3KfyoizmhMBTTC2W64wPJpv9M9jxiOo8LetA4hK9T3nXLQI
         U0qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=13TUXhRMp3FAWj7cl2ooNj24+BeTIKfGauogLqkOLOo=;
        b=mDTxcpXWQ40Zi+cE2OYuG37AQrz/8I249zLiqLfsLQsiuq4PPCzW3TNKX9q7l0giYS
         z2ciCtOq0wc9Q8CrvHo7ixk5xNG9GqrXldGq2lHTm4GbHU2dNsFyBaDZVQ100Go5zI53
         WWZ3eeLgHdXM2+uoC0BZl1sQ0wb1INr7bX/tXVsSJ1vwouwDSWk53WkXsHZSxVwJc1tv
         n/n0uRNnJe0VKksFybjN1wDhrllT1OxZSZaKlGul+Nl5TgiR4ZPZBFKhs77nt1cGS/4a
         ZgSRPojmMp1652ZMcEMCzzh8RqAzy7/IX2UQOHxSQTlZ+vTKUfKNn7iaybggy0eki6Yi
         oHFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BIabTuIU;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id t12si2580292iol.0.2019.07.31.18.19.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 18:19:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id v6so47737895vsq.4
        for <clang-built-linux@googlegroups.com>; Wed, 31 Jul 2019 18:19:29 -0700 (PDT)
X-Received: by 2002:a67:e906:: with SMTP id c6mr32908601vso.82.1564622368701;
 Wed, 31 Jul 2019 18:19:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com> <20190712193846.174893-1-pcc@google.com>
 <20190731164818.m2und6msyhlbf5oi@willie-the-truck>
In-Reply-To: <20190731164818.m2und6msyhlbf5oi@willie-the-truck>
From: "'Peter Collingbourne' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 31 Jul 2019 18:19:17 -0700
Message-ID: <CAMn1gO51aDnLLMNkr36T3UFVEN48QczOa46YriznYrSqaJF=wA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Add support for relocating the kernel with RELR relocations
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pcc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BIabTuIU;       spf=pass
 (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::e44 as
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

On Wed, Jul 31, 2019 at 9:48 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Jul 12, 2019 at 12:38:46PM -0700, Peter Collingbourne wrote:
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
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes in v2:
> > - Reverted change to RELA processing
> > - Added more comments, as requested by Nick and Will
> > - Added a feature test for NM and OBJCOPY
> > - Made CONFIG_RELR=y the default if the tools support it
> >
> >  arch/arm64/Kconfig              | 10 ++++
> >  arch/arm64/Makefile             |  4 ++
> >  arch/arm64/kernel/head.S        | 96 ++++++++++++++++++++++++++++++---
> >  arch/arm64/kernel/vmlinux.lds.S |  9 ++++
> >  init/Kconfig                    |  3 ++
> >  scripts/tools-support-relr.sh   | 16 ++++++
> >  6 files changed, 132 insertions(+), 6 deletions(-)
> >  create mode 100755 scripts/tools-support-relr.sh
> >
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 7442edbcabfc3..cf3907d21d097 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -1476,6 +1476,16 @@ config RELOCATABLE
> >         relocation pass at runtime even if the kernel is loaded at the
> >         same address it was linked at.
> >
> > +config RELR
> > +     bool "Use RELR relocation packing"
> > +     depends on RELOCATABLE && TOOLS_SUPPORT_RELR
> > +     default y
> > +     help
> > +       Store the kernel's dynamic relocations in the RELR relocation packing
> > +       format. Requires a compatible linker (currently only LLD supports
>
> Drop "currently" because it will just rot

Done in v3.

> > +       this feature), as well as compatible NM and OBJCOPY utilities
> > +       (llvm-nm and llvm-objcopy are compatible).
> > +
> >  config RANDOMIZE_BASE
> >       bool "Randomize the address of the kernel image"
> >       select ARM64_MODULE_PLTS if MODULES
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index bb1f1dbb34e8f..11f84450c7784 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -22,6 +22,10 @@ LDFLAGS_vmlinux            += -shared -Bsymbolic -z notext -z norelro \
> >                       $(call ld-option, --no-apply-dynamic-relocs)
> >  endif
> >
> > +ifeq ($(CONFIG_RELR),y)
> > +  LDFLAGS_vmlinux += --pack-dyn-relocs=relr
> > +endif
>
> RELR isn't arm64-specific, right? So we could put this in the top-level
> Makefile and have arm64 select ARCH_HAS_RELR if relocatable, so that other
> architecture can easily support this in future.

Makes sense, done in v3.

> >  ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
> >    ifeq ($(call ld-option, --fix-cortex-a53-843419),)
> >  $(warning ld does not support --fix-cortex-a53-843419; kernel may be susceptible to erratum)
> > diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> > index 2cdacd1c141b9..cc23302e9d95e 100644
> > --- a/arch/arm64/kernel/head.S
> > +++ b/arch/arm64/kernel/head.S
> > @@ -102,6 +102,8 @@ pe_header:
> >        *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
> >        *  x28        __create_page_tables()     callee preserved temp register
> >        *  x19/x20    __primary_switch()         callee preserved temp registers
> > +      *  x24        __primary_switch() .. relocate_kernel()
> > +      *                                        current RELR displacement
> >        */
> >  ENTRY(stext)
> >       bl      preserve_boot_args
> > @@ -834,14 +836,93 @@ __relocate_kernel:
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
> > +
> > +1:
> > +#ifdef CONFIG_RELR
> > +     /*
> > +      * Apply RELR relocations.
> > +      *
> > +      * RELR is a compressed format for storing relative relocations. The
> > +      * encoded sequence of entries looks like:
> > +      * [ AAAAAAAA BBBBBBB1 BBBBBBB1 ... AAAAAAAA BBBBBB1 ... ]
>
> I assume these are treated as an array of u64 types for the purposes of
> endianness?

Yes, the element type is defined as an integer whose endianness
matches the ELF endianness and whose size matches the ELF bitness.
This may be one of the many things that would need to be adjusted for
a hypothetical ILP32 kernel however because ILP32 on aarch64 uses
32-bit ELF according to the latest spec.

> (have you tested with a big-endian kernel?).

Unfortunately I have no easy way to test that because LLD doesn't
currently support big-endian aarch64.

Peter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMn1gO51aDnLLMNkr36T3UFVEN48QczOa46YriznYrSqaJF%3DwA%40mail.gmail.com.
