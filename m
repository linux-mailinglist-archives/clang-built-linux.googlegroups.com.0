Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBUHHYX3QKGQENWYQEZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1EF2047D9
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 05:15:29 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id n129sf5587625vkn.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 20:15:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592882129; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+YOSKe3XU2Nn0nhEviKuLxbrAAwPAF+pow2cmfBk9Whu/zIWFptKY7fXvwFybdZmV
         rrbWrvj/kfx78oPW5mzqg84LVPJOGDfRmfjXGf2sYTajIGKoRoiVdbOZzrbvdKab76Jj
         lVeVYLCn6VhC4h4Q+dA5wXQzzKJwjm9uSwWUOkIUYchaQQP0rTCddJYTmfQjbGMRte7w
         vqWrTJQnH3o4HCXy0S21+uV2N1aJ3yKHmxG5qIGFV0oV1EzOdbTMrdRZtatDSHYT8uGz
         4ZCR9Ds0oxw4hRNulUqMCN0AJirokv77rbnBw3smIjjZ1bVp5IAM9LNxyUnlK0e6enr3
         j0dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=aQRY9x9PuSm6XkPA/xhbV7tUouJL5dXop1a0OuvkXug=;
        b=z9PNcwtwMNplembVuXi2EbyJBXAFaYf347TD09L/g1532EHq8oV9yQKFc3BVLUu01R
         Vh1Nukkjr9coAeB9/exSS5m5e4jLmVjtAqL3APZPX9TjTfyf7M4YY9s15RIrIbK8vD50
         s2mYIISZsKWbzbUZ0srLUURt0DH+NCbX07BtdJp31EpqhIsVJ53Sl3kxWa8PH0YInUrI
         4bIlFK78DCsJNyGLq6M6ewh8GcWLneIgO2fgyQCRqAQWeObadiKDAsB9G2ZkSF1RDnI1
         3+E75JTf9QeXQ8LPhMyEbISAQSupE6s/7JBctrlLoOoP3xWrWFlgiYyqlLY/ZdmMqezW
         a+GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RD9+BaGc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aQRY9x9PuSm6XkPA/xhbV7tUouJL5dXop1a0OuvkXug=;
        b=epnpPsD+CGOZLAeW5E4yEii4+Q0oruqRHHuGKmH4nyWS0sqKpxBmrEfrETNaITuf6r
         ila0yilYdrEdEo1M1uuleF+YVCXRqnv/oEXNKLJQg8SG3CBu4mBHnqPLPF8w2cD8pQPv
         Jm4npQvMBBLUl8EVEJD/WIpQGbjm1NSuLZQrxQ08r/Aff8jmVuFNGB0Azf9PNZ92B5t3
         g+79fqx6/D9bnIzOTgAiWZdJA5cdI98oVMFhiY0utykB675a5gWxGbbUKz8LOC/P8wc8
         Cva6HRwQ/eCYkgVzK89PJr7ReYYV8SPEAx6jYsHxmGiacDjwzy2RP+liZcVqmHWQ+FGV
         gYeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aQRY9x9PuSm6XkPA/xhbV7tUouJL5dXop1a0OuvkXug=;
        b=UpHaJPV3rcoo4gnzhXIlFPjtLJoKkYfWsg0bM/VdB+bt2z2GO9pNoD9IS4MAgp8UCD
         j9xZPpZbSZAJZ++CG5x4NTP2Tnt14QEQ36a5s4VUZI0hrVFqC/JXhnnHrOxQOsKesCkM
         A5N6kC2NB2js3p3BWZkHBmJ9hKFihCGG4pNxL7kkVIoefvAAIETaKoY7SNSbQQHK7eIY
         gN29YLDEmT9lZxzv8VOdCd96Hedse9qN6f/H0bSbzFnIrbJkAeREtmCAsEIIyHzQoqvS
         5lYZhnVNrbsgyHQOjOUbTDbx4Wharb6uZ6ecMVY00GbSkME+TzNdZXTM/6WWlzUFOxEe
         oNiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aQRY9x9PuSm6XkPA/xhbV7tUouJL5dXop1a0OuvkXug=;
        b=IjuoZACDxdQWs/YtYCE3Vwz4IFfOb54wtEdkqOBoXqm1kXr8S0YScGxTDD/om6KceE
         AoBmg+8ECs5CI3zR41WTSYMCmGOagM0Trg/uXtVZAfYyFb/DmCkXKriRK7xEt4vK/bqQ
         ZbOelcrRS5kgIpj3kh2DPAZYUXuRr2nRTO7WWnz5RJOYQroxUQ+u5LraKgJGiFznrQPY
         GIyBWUdxZCuqqTwNoSL4hqDWDxkFTVZJm8l2TOa2qcjGdG4VVGdXRCks1vySoafbcGMm
         Zf07305ce6xauy38qb9B9zSC0xFs3mjKOKlpDAkJlT7EtpVrElw8P0fF5NZguROfsI+d
         wkPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532g8ySe6JdOW1WfJ72GfJpOiYnK1CDUAtb6gGf/f5k8YCKUNZFd
	J6soYXc/Ldd67mioAXs3JsU=
X-Google-Smtp-Source: ABdhPJycQi2LINAosh9/OVrVYLk80i1AvvoypJvKyRva3hw6CVjkOt6IQ1w2VPAfuKeuArFfmJvKwQ==
X-Received: by 2002:a67:db90:: with SMTP id f16mr17382831vsk.132.1592882128844;
        Mon, 22 Jun 2020 20:15:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e417:: with SMTP id d23ls2189613vsf.8.gmail; Mon, 22 Jun
 2020 20:15:28 -0700 (PDT)
X-Received: by 2002:a67:fd78:: with SMTP id h24mr17174142vsa.22.1592882128462;
        Mon, 22 Jun 2020 20:15:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592882128; cv=none;
        d=google.com; s=arc-20160816;
        b=o/zHPm9EugTGfNAqIwBtffrPD9bltzyB/k91GV6AAv30NUda/AX2kUb7Z2CCBtbilG
         pYleRd1I4Ryc26CQTD1tYgDaTyDm9JhWx7PB4xRmqFq3s6Wd5YZuH3S1w7ZOZG/dENV1
         jfdc7wNls03VlyiGoGLg3WHrbVyYklRBvf+vL3NNstXppF+hbcWhXpUKSPMJYGnSq9oE
         pzOTIQHlplCYAssQOOLnvwsw5EkXzuzOP4c92wmORrPTOWXRcvpLbyHXWdmtzgtkelnU
         BDoC37ok79XoXK/QobIoAtUUgPirMWyiFO+z5qr90BydpIRrELIX3C1n9CAeVjLPfel2
         EJvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fycVmvQpV3ngTb7UtojX19Ert3cNTVVV8Z4M/O1NFbE=;
        b=cLoOsmGaA8eF29dmwwRscuaU3Mhb0SSC7KI4+vUlwjQkTPd/jCx2YBI8Iz3zJbVyRT
         iA2N9QGHw8eF/Uk2tuRA2W1w4ETeOsvVTgYD36qXkwsRkYZSrGxfopud7Re3tp7DEwUh
         LTcEz3Z8FfpHu7U0xRaipPIwtQfSF7d90n5iDkcsw+YqPYNoElJWYkz5RJvncZ0m0DiP
         3F5wM98S65u2j3GFkxX/vahyzbFY3zCpwtx/KP0KeGXlv3paQjSOn6ndiM04owa4Q5l+
         G4Pl/XQIr/wdjMGZ8PIbgprvQqzrR0S9EVVkoAWKy0OuaqluzFVeVSs0dF77rZr5PNd3
         y7yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RD9+BaGc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id y7si568573vko.5.2020.06.22.20.15.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 20:15:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id l9so3190561ilq.12
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 20:15:28 -0700 (PDT)
X-Received: by 2002:a92:5b8d:: with SMTP id c13mr7460218ilg.226.1592882127586;
 Mon, 22 Jun 2020 20:15:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200622155018.6043-1-sedat.dilek@gmail.com> <CAKwvOdn0EnKnGToVC1Bw5di6ucSFkKNOUko1yekkcVhw5nzXZg@mail.gmail.com>
In-Reply-To: <CAKwvOdn0EnKnGToVC1Bw5di6ucSFkKNOUko1yekkcVhw5nzXZg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 23 Jun 2020 05:15:20 +0200
Message-ID: <CA+icZUW53PLenrduqQh6nm126RACiXUJMwa6kugzLdoWKBA7xA@mail.gmail.com>
Subject: Re: [PATCH 5.7] x86/crypto: aesni: Fix build with LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Craig Topper <craig.topper@intel.com>, 
	Craig Topper <craig.topper@gmail.com>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RD9+BaGc;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jun 22, 2020 at 10:33 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jun 22, 2020 at 8:50 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > When building with LLVM_IAS=1 means using Clang's Integrated Assembly (IAS)
> > from LLVM/Clang >= v10.0.1-rc1+ instead of GNU/as from GNU/binutils
> > I see the following breakage in Debian/testing AMD64:
> >
> > <instantiation>:15:74: error: too many positional arguments
> >  PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
> >                                                                          ^
> >  arch/x86/crypto/aesni-intel_asm.S:1598:2: note: while in macro instantiation
> >  GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
> >  ^
> > <instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
> >  GHASH_4_ENCRYPT_4_PARALLEL_dec %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
> >  ^
> > arch/x86/crypto/aesni-intel_asm.S:1599:2: note: while in macro instantiation
> >  GCM_ENC_DEC dec
> >  ^
> > <instantiation>:15:74: error: too many positional arguments
> >  PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
> >                                                                          ^
> > arch/x86/crypto/aesni-intel_asm.S:1686:2: note: while in macro instantiation
> >  GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
> >  ^
> > <instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
> >  GHASH_4_ENCRYPT_4_PARALLEL_enc %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
> >  ^
> > arch/x86/crypto/aesni-intel_asm.S:1687:2: note: while in macro instantiation
> >  GCM_ENC_DEC enc
>
> === I think from here to...
>
>
> >
> > Craig Topper suggested me in ClangBuiltLinux issue #1050:
> >
> > > I think the "too many positional arguments" is because the parser isn't able
> > > to handle the trailing commas.
> > >
> > > The "unknown use of instruction mnemonic" is because the macro was named
> > > GHASH_4_ENCRYPT_4_PARALLEL_DEC but its being instantiated with
> > > GHASH_4_ENCRYPT_4_PARALLEL_dec I guess gas ignores case on the
> > > macro instantiation, but llvm doesn't.
>
> Yep, see also:
> commit 6f5459da2b87 ("arm64: alternative: fix build with clang
> integrated assembler")
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6f5459da2b8736720afdbd67c4bd2d1edba7d0e3
>
> >
> > First, I removed the trailing comma in the PRECOMPUTE line.
> >
> > Second, I substituted:
> > 1. GCM_ENC_DEC dec -> GCM_ENC_DEC DEC
> > 2. GCM_ENC_DEC enc -> GCM_ENC_DEC ENC
> >
> > With these changes I was able to build with LLVM_IAS=1 and boot on bare metal.
> >
> > As llvm-toolchain I used v10.0.1-rc1+ and v11.0.0-git pre-releases:
> > 1. release/10.x Git: 2dc664d578f0e9c8ea5975eed745e322fa77bffe
> > 2.       master Git: 8da5b9083691b557f50f72ab099598bb291aec5f (default)
> >
> > Just for the sake of completeness:
> > 1. CONFIG_DEBUG_INFO_DWARF4=y
> > 2. OBJDUMP=llvm-objdump (passed to my make-line)
> >
> > Please have a look into "llvm.rst" kernel-doc for further informations and
> > how to pass LLVM kbuild-options to your make-line.
> >
> > I confirmed that this works with Linux-kernel v5.7.3 and v5.7.5 final.
> >
> > NOTE: This patch is on top of Linux v5.7 final.
> >
> > Thanks to Craig and the folks from the ClangBuiltLinux project.
>
> ===...here can be cut out from the commit message.
>
> >
> > Cc: Craig Topper <craig.topper@intel.com>
> > Cc: Craig Topper <craig.topper@gmail.com>
>
> I'd pick one or the other email addresses, and just use that one.
> Craig seems to commit to LLVM with craig.topper@intel.com, so I
> recommend that one.
>
> > Cc: Nick Desaulniers ndesaulniers@google.com
>
> Thanks for the explicit CC, though I do monitor the below list actively.
>
> > Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1050
> > Link: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst
>
> ^ probably don't need that link either.
>
> >
> > ---
> >  arch/x86/crypto/aesni-intel_asm.S | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/arch/x86/crypto/aesni-intel_asm.S b/arch/x86/crypto/aesni-intel_asm.S
> > index cad6e1bfa7d5..983eb2eec51a 100644
> > --- a/arch/x86/crypto/aesni-intel_asm.S
> > +++ b/arch/x86/crypto/aesni-intel_asm.S
> > @@ -266,7 +266,7 @@ ALL_F:      .octa 0xffffffffffffffffffffffffffffffff
> >         PSHUFB_XMM %xmm2, %xmm0
> >         movdqu %xmm0, CurCount(%arg2) # ctx_data.current_counter = iv
> >
> > -       PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
> > +       PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7
> >         movdqu HashKey(%arg2), %xmm13
> >
> >         CALC_AAD_HASH %xmm13, \AAD, \AADLEN, %xmm0, %xmm1, %xmm2, %xmm3, \
>
>
> There's a comparison on L386
>  386 .ifc \operation, dec
> Also, L407, L393, L672, L808, L841, L935, L941, L947,
>
> If we change the `\operation` macro parameter to be `DEC` instead of
> `dec`, does this comparison still hold true?  I would expect not if
> LLVM's integrated assembler is case sensitive?  Otherwise we're
> probably missing instructions for the case of `DEC`.  In that case,
> that should probably get fixed.
>
> Interesting, looks like GAS *is* case sensitive for `.ifc` directives?
> ```
> $ cat foo.s
> .macro foo op
> .ifc \op, dec
>   subq r8, r9
> .else
>   addq $0, r8
> .endif
> .endm
> foo DEC
>
> $ clang foo.s -c
> $ llvm-objdump -d foo.o
> ...
>        0: 48 83 04 25 00 00 00 00 00    addq    $0, 0
> $ as foo.s -c
> $ llvm-objdump -d foo.o
> ...
>        0: 48 83 04 25 00 00 00 00 00    addq    $0, 0
> ```
> In that case, it seems that this patch probably breaks the DEC case
> for both toolchains.
>
> Just to triple check, forgetting LLVM for a minute, let's compare the
> disassembly before and after.
>
> $ make -j71 defconfig
> $ make -j71 menuconfig
> <enable CRYPTO_AES_NI_INTEL>
> $ make -j71 arch/x86/crypto/aesni-intel_asm.o
> $ llvm-objdump -dr arch/x86/crypto/aesni-intel_asm.o > prepatch.txt
> <apply your patch>
> $ make -j71 arch/x86/crypto/aesni-intel_asm.o
> $ llvm-objdump -dr arch/x86/crypto/aesni-intel_asm.o > postpatch.txt
> $ diff -u <(cat prepatch.txt | tr -s ' ' | cut -d '   ' -f 2-) <(cat
> postpatch.txt| tr -s ' ' | cut -d '      ' -f 2-) | less
>
> It's not the easiest to tell, since I should have left off `-r` for
> relocations from objdump, but you can clearly see cases of different
> disassembly.  Even the address of labels changes due to missing
> instructions.
>
> In that case, it's probably a smaller change to just renamed the macros
> GHASH_4_ENCRYPT_4_PARALLEL_ENC
> GHASH_4_ENCRYPT_4_PARALLEL_DEC
>
> to
>
> GHASH_4_ENCRYPT_4_PARALLEL_enc
> GHASH_4_ENCRYPT_4_PARALLEL_dec
>
> respectively, though using ALL CAPS is likely more consistent at the
> cost of more lines changed.  Also, sorry I didn't catch this on the
> earlier thread; my mistake.
>
> > @@ -1596,7 +1596,7 @@ SYM_FUNC_START(aesni_gcm_dec)
> >         FUNC_SAVE
> >
> >         GCM_INIT %arg6, arg7, arg8, arg9
> > -       GCM_ENC_DEC dec
> > +       GCM_ENC_DEC DEC
> >         GCM_COMPLETE arg10, arg11
> >         FUNC_RESTORE
> >         ret
> > @@ -1684,7 +1684,7 @@ SYM_FUNC_START(aesni_gcm_enc)
> >         FUNC_SAVE
> >
> >         GCM_INIT %arg6, arg7, arg8, arg9
> > -       GCM_ENC_DEC enc
> > +       GCM_ENC_DEC ENC
> >
> >         GCM_COMPLETE arg10, arg11
> >         FUNC_RESTORE
> > @@ -1719,7 +1719,7 @@ SYM_FUNC_END(aesni_gcm_init)
> >  */
> >  SYM_FUNC_START(aesni_gcm_enc_update)
> >         FUNC_SAVE
> > -       GCM_ENC_DEC enc
> > +       GCM_ENC_DEC ENC
> >         FUNC_RESTORE
> >         ret
> >  SYM_FUNC_END(aesni_gcm_enc_update)
> > @@ -1734,7 +1734,7 @@ SYM_FUNC_END(aesni_gcm_enc_update)
> >  */
> >  SYM_FUNC_START(aesni_gcm_dec_update)
> >         FUNC_SAVE
> > -       GCM_ENC_DEC dec
> > +       GCM_ENC_DEC DEC
> >         FUNC_RESTORE
> >         ret
> >  SYM_FUNC_END(aesni_gcm_dec_update)
> > --
>

Thanks for your feedback and double-checking Nick.

I have submitted a v3 of my patch - should have all relevant material.

- Sedat -

[1] https://lore.kernel.org/lkml/20200623030600.18848-1-sedat.dilek@gmail.com/
[2] https://lore.kernel.org/patchwork/patch/1261340/
[3] https://github.com/ClangBuiltLinux/linux/issues/1050#issuecomment-647879758

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW53PLenrduqQh6nm126RACiXUJMwa6kugzLdoWKBA7xA%40mail.gmail.com.
