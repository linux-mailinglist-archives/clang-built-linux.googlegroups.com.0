Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWM3SGAQMGQEH2VPYHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D9831722F
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 22:19:22 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id v1sf1686899oto.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 13:19:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612991961; cv=pass;
        d=google.com; s=arc-20160816;
        b=v4I3yd6zhzUu7/lNJREV9dQDUB3SxgHEHXybEd48AbtF/k5LuDnIjXDZIE1CPyQdPd
         /dvuIEcXKvVCk7Ea71VUlhmapT6LwSWvNQwzAODc5u2WCEWRT34TD7m1cP8LvWh5oooP
         Wbzyrd2q3RvE51/kLC83Bixrr1tALSVatcZbolXFHP3VBAXgxV0Sr83EO9z0OEcNcJKg
         5wtiDxBi1Spl1sR78Rsm/Jreehv57iQQ5yWOlhF9NGksfM9VibBZ1pZnWqnVQdVJI8wv
         0drfovwbeSdCWJ81mh2yA3Xm3wL3EnvlzaGynjc1qcMY29ZCev2O57ftQon8CyIu0Lzn
         VysQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6Vl415ono5f9GLl6qWk0MGwCbUcsj/SAd63eAUA9faY=;
        b=fhJoHOyzlBgHE1J/oIBSIe22upqt5MOvQQ8crurlDYHH7n2KNBj8PGFtcq1SuvgVlF
         fSdVaRjbJ8m8YI/D/jvcw6ndcKCal70bQIkVjfHpKwv5Kdi21j0+RQVApdNFmOq21Yps
         RUH3NfV9BYlYOhGbqJq9iHLE2qPAcTnGverjoqNmlwMdV7KScPPcrQsR/QK40J/tuUEB
         UBRQ520tgWbB9l8u3KepfoUplLONczrZuV9U++hTZDdCmMaMPK7tWvA/iUlHkW8gVbYq
         5ijwk1HTA/ma6skGRmu5XzHEbGrZSHf5ZkjF/am4+rq7LOiBTjqhgVWJAZPSSW6um6Rg
         TGyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LwCCYM3b;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6Vl415ono5f9GLl6qWk0MGwCbUcsj/SAd63eAUA9faY=;
        b=r2h9se+sRUsj9dIlI8t5y0SvEBKEoYWWMedANteMeaKEpQWaJ0p6oBi07UziUSVOpG
         3f8CpoNoxyMoPv++oJD2RjC2p1GN93r9dqdTHNxAx5D/yG3I2oSt1b6Dwlw38O4cayN9
         s2Xr8MIudLJr5ASKu5TjWg/3XwXenOK/8wjAQeNfsbqQCe4rTMM6GN9PTghDu4Ysl08Y
         yIpUSgBdGgIIDBitbCKUbNxv7DATrNLoSDPao04mMgJCIghvhEg23W38U5fVyF8RXYrV
         J7vDyVCSrDzMSp3pkVZU1+NAdmjksyl5yGN6bounV2E0y8igULeiiyaD4C+KKB0N7eHa
         OppA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Vl415ono5f9GLl6qWk0MGwCbUcsj/SAd63eAUA9faY=;
        b=fcyV/yBGv1qyT5K9o5IUpeimxhfaKVi/QnOac1GpRxdJG7Kbzyys59cQ7FOeXufu68
         Tx2hXXBDnQqE3vzPs92jsLteRUT2dUZHXPkHtp8YgaEDwoqmjhIzO884DannyKPCF/F5
         bUXv7jdfJBCB1xnqw8cd5iefGdbL6gzmMUor9X0Prew8a2z27IwyxWLQPsR0kBkvdp/z
         jFOl084l1+SOkUMlR1asUXkiNuPSJ58jbU4zj7KuDdsvfnExUQ6Ei74Hk9nJm2risaWF
         J3RG/KbnSKUcGRMSm1ZECovLues2KhaQWd+aGxGcM4klYiVUa+iHE84YLVO8I0NP41rX
         fLRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Vl415ono5f9GLl6qWk0MGwCbUcsj/SAd63eAUA9faY=;
        b=Y4wfPSm6K3oLMyRjLGUWZbQnQJD6MW1cT++5Cph8KBsvVyL+1Cd2ZrNavuNFNWTAQy
         I3ktmEHoGtLE1U/ZSo/r4N7ujE+3yWOnFqPJEGXmbhRnbIGKR8nbLmR0SM2Ex322V1Yq
         gl77pWRt3jX9hg4lHrrhg2OW4JiKebyXktJ+3284vkGfyZT6WrA67cmlG6wNB3l3lJRs
         xfThldmgMNTIBVcPAxkrJMhjAbuiGtfYiBy0baass2MZKh4v5l6CRq3VWksx+tmiKGLr
         iVgXDVUC0LI/XMYP9n/SocWu2DyKZicgu/g8esE9Pj5jHqIF9Cyiuz6oNpmQtPGAAiRM
         D5FA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cetjm0RFqhFDF38YWA3Fvbl5kcKtLOyDc6BIggrMXHV1NnJpU
	oS65OkNHHTkgKW4NlLAzpRo=
X-Google-Smtp-Source: ABdhPJyITPlMBEfDvGNTxacVAi5idPoo1bwfZZ5MPhF8wcKWMvU3VMOJrQ4v+WCyf1PgWUuUcxM31w==
X-Received: by 2002:a05:6830:2485:: with SMTP id u5mr3542461ots.48.1612991961142;
        Wed, 10 Feb 2021 13:19:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1156:: with SMTP id u22ls928898oiu.6.gmail; Wed, 10
 Feb 2021 13:19:20 -0800 (PST)
X-Received: by 2002:aca:d405:: with SMTP id l5mr702066oig.100.1612991960782;
        Wed, 10 Feb 2021 13:19:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612991960; cv=none;
        d=google.com; s=arc-20160816;
        b=hvgnjNX6qH3GSjmCt/dBJyGmT1mOjiZy0t+y4AMrIMmGU/oKyqQtc3I3Fzoh48w9CC
         pH3cMHfzEGjyxeX7In5Pko3jKQVbg2i9sj5k0/jrh9GQJq+rnkc+KsycGlFmtJ8RALKT
         gjReEy8h6qZ7rdVTVdXAL+WNy/h+OBlxZ3ag/rz/A0VQTKqqxE0zk1jRNPOk9U6vW/EG
         xLFnjJWBxxFdqO6PdFmvWFE205D8uOQVo+w4X+X5NCOLTy+n/1LkqLwuXYXJToHWjzKe
         krgoDTf4pRJaniXmcUMNCPmY/TWO551n0BezSfTSx19JSjdxg992SMGl/iYoo8UnaYFq
         +aGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=14Y8qDCbnNKYzEXdtGGzgL5cpUwl74Q0e1dubyGRh54=;
        b=MJmIOzxs/wgaGnvXBcLg5iBQU2BeoHkCUsLV3q+ErJT+pBO+h6RdOpgPeuOAIcLgAL
         D+fr7SgmmrhNmam6YnP76yCJz6/b//gj16Vu5bboSfBFFkTbSLbRYhlcqe/maqEImiFp
         STtxlcxw0j4lCcquzrAioZvIg+RNJ3mzNqJ2KHcUFwKQmxSLiNgO7aj8GRiIlahOQwDP
         p141MPSB2VNvWCnKyS/VBKM7OjbfQXWmMaUMQiGD4hqRQob7eVZYKp2xYlJrGw8Rij1U
         BdL/3irbrSNc8BQoi0g1CUY57ApbZgNF4er72KgWNul6HoQ73yP8vRXu/kx4J5zjSBQm
         Un2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LwCCYM3b;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id g62si285393oif.2.2021.02.10.13.19.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:19:20 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id a16so3239399ilq.5
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 13:19:20 -0800 (PST)
X-Received: by 2002:a05:6e02:4c9:: with SMTP id f9mr2814150ils.186.1612991960465;
 Wed, 10 Feb 2021 13:19:20 -0800 (PST)
MIME-Version: 1.0
References: <0000000000003a897d05bb01d0f3@google.com> <CAKwvOdmkB057s-oXyOnNC6p5pR9BaVNGfCAJUZtb+NqE8QTu4g@mail.gmail.com>
In-Reply-To: <CAKwvOdmkB057s-oXyOnNC6p5pR9BaVNGfCAJUZtb+NqE8QTu4g@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 10 Feb 2021 22:19:09 +0100
Message-ID: <CA+icZUVfiQpCJHSDcExF5W4knNcspcptYfvDNFfD1Qp=+t_MDA@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - Feb 10, 2021
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Android-LLVM <android-llvm@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LwCCYM3b;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135
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

On Wed, Feb 10, 2021 at 10:12 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> also: Reminder that Sunday is Valentine's day. Don't wind up in the
> dog house because you were chasing compiler bugs! :P
>

Linux-kernel in 1 sec (see TCC compiler talk of Michael Matz) - our
new great goal :-)?

- Sedat -

> On Wed, Feb 10, 2021 at 1:09 PM <ndesaulniers@google.com> wrote:
> >
> > http://go/clang-built-linux-notes
> > Meeting: Hangouts Meet
> >
> > Feb 10, 2021
> >
> > Integrated as
> >
> > Arm32 patches
> >
> > https://reviews.llvm.org/D95872
> > https://reviews.llvm.org/D96285
> > https://reviews.llvm.org/D96304
> > Arnd filed a ton of bugs via randconfigs
> > Need https://lore.kernel.org/linux-arm-kernel/20210205223557.3097894-1-ndesaulniers@google.com/T/#u reviewed.
> >
> > 0day bot GCC report
> >
> > X86 (64b & 32b) and aarch64 enabled for Android S 4.19+, CrOS 5.4+
> >
> > (Bill) pahole + LTO
> > Different stack sizes objtool
> >
> > https://github.com/ClangBuiltLinux/linux/issues/612
> >
> > (Nick) DWARFv5
> >
> > https://lore.kernel.org/bpf/20210207071726.3969978-1-yhs@fb.com/ BTF fix
> > V9 is probably final version: https://lore.kernel.org/lkml/20210205202220.2748551-1-ndesaulniers@google.com/
> > Requires integrated assembler for old GNU binutils.
> >
> > LLD BE support!
> >
> > https://lore.kernel.org/lkml/20210209005719.803608-1-nathan@kernel.org/T/#u
> > 32b ARM, s390, ppc?
> >
> > Mips be enable
> >
> > https://youtu.be/GpiWVXKs9Z0 : "ClangBuiltLinux: What's Next?" - Nick Desaulniers (LCA 2021 Online)
> > 32b ARM LLD bug fixed
> >
> > https://lore.kernel.org/linux-arm-kernel/20210205085220.31232-1-ardb@kernel.org/T/#u
> >
> > vfs_truncate BTF BTI
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1297
> >
> > NPM causing one issue for ppc, -Werror though
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1292
> >
> > Tuxsuite working well, adding many tests
> > PGO? (needs chasing upstream)
> > Inlining kasan experiment
> > Mailing list?
> >
> >
> > ________________________________
> >
> > Sent by http://go/sendnotes
> >
> > --
> > You received this message because you are subscribed to the Google Groups "clang linux fellowship" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-linux-fellowship+unsubscribe@google.com.
> > To view this discussion on the web visit https://groups.google.com/a/google.com/d/msgid/clang-linux-fellowship/0000000000003a897d05bb01d0f3%40google.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmkB057s-oXyOnNC6p5pR9BaVNGfCAJUZtb%2BNqE8QTu4g%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVfiQpCJHSDcExF5W4knNcspcptYfvDNFfD1Qp%3D%2Bt_MDA%40mail.gmail.com.
