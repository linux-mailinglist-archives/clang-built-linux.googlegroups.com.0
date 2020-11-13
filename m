Return-Path: <clang-built-linux+bncBD66FMGZA4IOPNVX7UCRUBBP2VBA2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 417AB2B13A2
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 02:03:36 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id 194sf2643120lfm.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 17:03:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605229415; cv=pass;
        d=google.com; s=arc-20160816;
        b=blwlJhIbjVNwr9L/BtrqOjLLs7mbTfogCwVQ3lbmrIsmSbVkJ3BiJGlP3z2OVAS143
         WX8DEOGhUVFIN1KkFKzXsqcwyIXAd0ONX/Cm8Y6iCcHN/ijnXk0n04iLup0srt8+HfFO
         kYVcqUBrPHIj3Jq7kNeje00PfJyv4jkjB6Eb4VWgAQZOb8zoAt04ngeAnjMaLZB8+0/+
         0lj3x/WwjfImv0zncQV0x6rtmVa3B4T34YmLAAnve8Jd5o+zgNnbndlAh16z4Xg49LrI
         /xXHUjUlJbXMbq69a1SHCjiOrCa12CVkf7vox6O0sLlubf6EEiCjcoU6WJqg5SAPbJfV
         aM8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eVwRRlWCs8Z5S6m3hfHkaIHpNzksn/DjgJqGrLIkGw8=;
        b=NJ/lqoRhgUQdGeU+XQKeCNoMJcCwGFemEBjybtZvPvLjbpIniuO4WDe7aW90UkBc9J
         wjfGusJUjSBrKYVrjPz2Vrhjux1a6+6gpJhY65KRoPKrXyrPmsNoWdAVcQk30+Qa7Wtg
         7evzLzYGJ1/hx5aHvyhsSowavsknZZj7C9y4oqwmuNG6bq0CUQUpwIlGCC6yv/O2vvzv
         IJpDfJohRHWuBWB5cS7GXt1V30iLFNGcHFxbnqf3PvWchgDpZwbrd+WKDffo9mtSE/3M
         uCipoAZCjsFiZxPheAi9wSAEjfxDsVa2TsmGWmDkjN56s1/CnlUh40BDTypMdRuMRRzH
         bWWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZFi5IgqO;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eVwRRlWCs8Z5S6m3hfHkaIHpNzksn/DjgJqGrLIkGw8=;
        b=dd8sg2g5xBkwAB6l04+u4RF9qMxU09pPIeAx+OSAFDQ9BCtj+sn9upSdwG8MRNW7tv
         /Bz6yT5Qw5IrurzpyYeS1f3fB97EREU1UCxXSxE919lRLyCp6ML9/3GT0Z/PFF/FTQzW
         3UPJonmxP8L+tdUe74t4pxx9o4owzk6uUzoSk4kNdCrViG0Nz1Bx0nkskukObiw5X2pT
         l7Ht0YE0o6IgkYkaaS1rJfn7iDLp9f7HdY8IV0E6ojHXzBczXM2Lcni7qlwiQS/kpd1+
         iFvsee8SHDUugCU0vvV4VuO+r6wgXGNajqfHq4GP3n/5ct/pdWWHd00zGLxSZ1P340Ri
         ZEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eVwRRlWCs8Z5S6m3hfHkaIHpNzksn/DjgJqGrLIkGw8=;
        b=j3EQ7XjJ+9fgePkKbnQoIU7RjGRjEXDRQnD8824E2oXwtY25jN7J0dxKem5inQIpDo
         uH3LVwqrD7T/zAOTzs6Oy8xJb3LsDZLfw8AFR/xLpTrSuErsksd5KAg2Bp9nvOZvy69T
         emn1w/rH0xeJCY+nRylnOqZc+/CaYC/iGxLeEzYfZz+bdzJLnITNbvRg9teee4jWvshT
         DaZgoOSaOBJ7LcyaOCVG8WVyxLbPEb8ma939WQzupXrMhmc6VFHbNbyghbt3WDRvJJuv
         R8iHygXP/I2TfzV2ZdyUyz5yfnPVlYlP3ZAI9Y0ds+3NfHguhVuwooifijSZ6nmeahcK
         ERog==
X-Gm-Message-State: AOAM532SnyFEtUs+JBawdrL6K+OzLDvnyqiFwfkXGaUK0apflRRmCdP9
	/WwNUicnM7+htV6sF9WhP28=
X-Google-Smtp-Source: ABdhPJzyaemsUVPdD5xT9qceExeXsOfnPpeiF//wQw8eF178P00cbJcet3RoZYjtpw6i31dheLRV5Q==
X-Received: by 2002:a2e:585e:: with SMTP id x30mr1019435ljd.426.1605229415785;
        Thu, 12 Nov 2020 17:03:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:d0e:: with SMTP id 14ls3469164lfn.0.gmail; Thu, 12 Nov
 2020 17:03:34 -0800 (PST)
X-Received: by 2002:a19:f704:: with SMTP id z4mr774546lfe.312.1605229414760;
        Thu, 12 Nov 2020 17:03:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605229414; cv=none;
        d=google.com; s=arc-20160816;
        b=kxYdETyIharnfrm6B1KSri+KDD/S7A5KJ63GcUaW2YckSMcmMfMnpjh7XGTjq/gCvW
         yNX2pAiNLQ2bKsKKy+L1TqBwufaKgXCXpEh8Ec+xAqc+jbXD9mIcNGAFYJqjWPd/RjjH
         egrm7XOvvmPeFE/EGRz/27LQOSE1Ae3NJUU+k3psfaMorA3IT3Vguy96BVMWnllz6JxP
         v76dgxFFQ3ok10wOw8GZSMA61IBCbXO1FwXLp1r77kp1R5xYC5QxohM5WO2KBh+iaO7H
         Yqp9wa6/pF+Y8D+7JOcHY30sx0wFnW1JUsGwQ092LqBb+gM2Ee2A2N/OKt0RpK2nsEOL
         CsEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4rHcsSn4tvPHdEd3aSA+VI5udp3Ct0q3o9hwij9UMEQ=;
        b=ct+xRmEDg3ANkAZZzb6jL5jkmdRbzgz/G2bUSdrJPpwEpkmnyJmMPFgGrQjJ80miKt
         akkYT1pHH2OIZ8mvAa7paAWe2E5kA942QXXq2vQneYT1CG8zfosqBa9rXcxAKyd06TWC
         fDtt2+QonTKg7qJSpObwGWiNw1RJWz5mcUTZT9ms0WU345z3okzZp2Rv6btSpLIXHtWE
         8ozkLKHTl8rgkAtC1vHVAs//d4oaDUZMOBF75l68dKl7VU3Byc+TrL5y/GkA0Y46livu
         OvvMJoCEmtcAYFcmy5jVFL9dVJQxHwg322lmtKBBNQFTfqBdg362L8RPPeUfqrb+4fxM
         gpTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZFi5IgqO;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id x206si86623lfa.8.2020.11.12.17.03.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 17:03:34 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id t9so8704130edq.8
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 17:03:34 -0800 (PST)
X-Received: by 2002:a50:99d6:: with SMTP id n22mr19914edb.261.1605229413879;
 Thu, 12 Nov 2020 17:03:33 -0800 (PST)
MIME-Version: 1.0
References: <20201108203737.94270-1-natechancellor@gmail.com> <CAKwvOd=P2yFxkAXh9TUpJ=D5=jNnxnx7O5Nr3iTDeqV40UA19A@mail.gmail.com>
In-Reply-To: <CAKwvOd=P2yFxkAXh9TUpJ=D5=jNnxnx7O5Nr3iTDeqV40UA19A@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 17:03:22 -0800
Message-ID: <CAGG=3QVQTQsHhsb5cSEejZ=D4Gq60cz7kMfD8moXWeVU1odTdQ@mail.gmail.com>
Subject: Re: [PATCH] riscv: Explicitly specify the build id style in vDSO
 Makefile again
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Palmer Dabbelt <palmerdabbelt@google.com>, 
	linux-riscv@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZFi5IgqO;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::541 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Thu, Nov 12, 2020 at 4:53 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sun, Nov 8, 2020 at 12:37 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Commit a96843372331 ("kbuild: explicitly specify the build id style")
> > explicitly set the build ID style to SHA1. Commit c2c81bb2f691 ("RISC-V:
> > Fix the VDSO symbol generaton for binutils-2.35+") undid this change,
> > likely unintentionally.
> >
> > Restore it so that the build ID style stays consistent across the tree
> > regardless of linker.
> >
> > Fixes: c2c81bb2f691 ("RISC-V: Fix the VDSO symbol generaton for binutils-2.35+")
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Thanks for the fixup!
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> (I'm curious what --build-id linker flag does, and what kind of spooky
> bugs that led to a96843372331?)
>
--build-id generates a unique "build id" for the build. It can use
several different algorithms to do this. The BFD linker uses sha1 by
default while LLD uses a "fast" algorithm. The difference is that the
fast algorithm generates a shorter build id. This shouldn't matter in
general, but there are some tools out there that expect the build id
to be of a certain length, i.e. the BFD style's length, because BFD is
more prevalent. The obvious response "well, why don't they just change
the expected length?" is difficult in all situations. (Once an
assumption is made, it's hard to backtrack.)

You can add this if you like:

Reviewed-by: Bill Wendling <morbo@google.com>

> > ---
> >  arch/riscv/kernel/vdso/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> > index cb8f9e4cfcbf..0cfd6da784f8 100644
> > --- a/arch/riscv/kernel/vdso/Makefile
> > +++ b/arch/riscv/kernel/vdso/Makefile
> > @@ -44,7 +44,7 @@ SYSCFLAGS_vdso.so.dbg = $(c_flags)
> >  $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
> >         $(call if_changed,vdsold)
> >  SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> > -       -Wl,--build-id -Wl,--hash-style=both
> > +       -Wl,--build-id=sha1 -Wl,--hash-style=both
> >
> >  # We also create a special relocatable object that should mirror the symbol
> >  # table and layout of the linked DSO. With ld --just-symbols we can then
> >
> > base-commit: c2c81bb2f69138f902e1a58d3bef6ad97fb8a92c
> > --
> > 2.29.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201108203737.94270-1-natechancellor%40gmail.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVQTQsHhsb5cSEejZ%3DD4Gq60cz7kMfD8moXWeVU1odTdQ%40mail.gmail.com.
