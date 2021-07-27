Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBF74QGEAMGQEYCM3UZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CA63D81FC
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:43:52 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id d9-20020a056e021c49b02902095727d18dsf336145ilg.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:43:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627422231; cv=pass;
        d=google.com; s=arc-20160816;
        b=a5FAVUX3YmFg26jyJICaaUWLu1YvByAbPn6qyXJVL9J5EmDzSYVPcBwMlvDKh23Qos
         Jg6YeWSh22h7RkXQkm+pfauNkaz4wTHvQfRbsj7Gj1BQ5VFfkVbRuPWw4tl/OhYJsCFg
         l7JZD5dCDW2waNlVnnbhQDJHwoOBKwCzeLtF72CuSS+ilhy/uVe6tTnN7fkKvOe/JqbR
         iFAl0QBYhif+BbYeQGenMl2BO4svcYHhkEF1FloG0k4NMc1Ue7m8y1QJhTE6jADFS272
         0k4BQxMgER45xI3R91FubWde6WQ7rZ2fTHIiNEz52MjFMNFcOd//xYA38h0xAtFBtaPz
         ZDjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=mlwZn4GePByMP0UPeJO8jPQ4VNLw0ZZ8PXN9UyzDrW8=;
        b=tSuNQv7De4k5O/wBSV3pVFRrNVYhArX//LntySMqg3HuVKrgmsIe25wVKcpbCWpYS/
         MAlqITK1tg0ML8utBtOnQInzfR8e5MaqjGj2HuSXWK4B3iIMb7nzSeat0rfwepqMURLD
         YfqhmPuJ9KxbSlv8vZ7vNq+yG8L/hdVBRgt2i3zzN6S90dXIGctHpwlgOw56wIdGumpA
         n3Pdozl2t4QYwHyC0urQI3YEScVK8h8PL7PgPvJSt/5GZ48MDtOLqAJ32OA8BtFj/qEJ
         NpooWXMxe8OkpoCEYZABp4fOrllrCmhPVI4cTedoFWY4WeAjhGrkOXrTzEyM2yyc8WLt
         r13A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZwLmxb1T;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mlwZn4GePByMP0UPeJO8jPQ4VNLw0ZZ8PXN9UyzDrW8=;
        b=RULKIdXwqOUwA8ckUHK9C6EKgzB12X3BxK3nYeFqIRtg3LZllnc6D81uP1EOTLIFom
         GiBx8THwZG2ymo2MlFL605TQmc+EQEJkbWWIAaWnPLaaEn5zf7J2PSHLLxEEpwtZYUso
         3a7TZtXrrJCBoVJh9WhH7WFqqhgkLvheQPgauJJUy6cG41YUxAXPo/kOeDFGLAUBI+Sw
         b+yX7FjEjUExkSEJFIeiUu9hrwQAvT6/czIN8T5ISjHWXec8Q/aXx7/5cGJXfcWURy3v
         fsOUAYWsXVo2hGroHK49qjjPgYPQdoQC1H2vc5UcCvkHBV/l132+Xb2zP/7sxZtn1h7Z
         iSPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mlwZn4GePByMP0UPeJO8jPQ4VNLw0ZZ8PXN9UyzDrW8=;
        b=nqZXyFOPIQWynA3cm8WSpw62CyJfcFWo8PwX+Wc/B9jVtXZ8ewupNSjXv/QktZqnYs
         xe3BfWMxcrVfs6izbf1LvzT/V4GWjLLNhnLK6nd3K3P29bx9d7XP6Wl+Fk9rWkRrSd1l
         UJAvLvgbe9wcFkPtr2qa4Qw1CFEOnzazk6Z+5pu+ycubafmFuUsfXGem/b6tJ8gwgNU0
         VbjPFTMaXUIecQ+IbErNFD44Q+iLJJgw8OeJtiGdsaVk4IcOblIE1jNayi2uucXjbg8m
         J8OoHOJ4jSJ/nKgKRKNPNm3YXAgh1nUrXQcyVj23hSweTVMKKcCC7qbDQTTquLihxHHO
         kLbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mlwZn4GePByMP0UPeJO8jPQ4VNLw0ZZ8PXN9UyzDrW8=;
        b=oqc1mB1gUD2sRStzT8qopL6jyfbT9myEn4gw1LN14itirzS3c71wnF2VYD9In9UBIZ
         7hgE3CKTgUjqJOf6KJ9gMtqov53+fLKudmVfZFwBhP2i1pBusnS15+bIOb95I31W3Eio
         aJpbhgPdbqCBzkSNb2tpeLuYFWorYIw8mpBena62/wKdvZ5NL/PvDBnYR4v9HueOXwuv
         5+h3a6DRnWCE7FstETbU9JHK2EcCPbEt6T3dHvvQbLqD9mVYYQ0Qc5X+lQ8ytZjFAs1u
         8tHxvd8cwOEqswMOePcv2LH1T+AQRX0eAUcwRe6MJJ8TGGwh6jk9ZA0R5stJtDsNA9Gc
         AfYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303YuWGvjai6qtvRjwgvhinSB4O0KgaC+LbSYPL2viCFh2om4G8
	j5nyK04PVELUAwgMRVb5zCI=
X-Google-Smtp-Source: ABdhPJzriyEcoO769ZZvd2cX+KqkTlaYe6iBL7b5Gk8UYc4XqCvyLTu+5dQKaYQCShkxLHDfS57VGA==
X-Received: by 2002:a05:6e02:2194:: with SMTP id j20mr18288904ila.108.1627422231298;
        Tue, 27 Jul 2021 14:43:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6017:: with SMTP id r23ls38884iog.11.gmail; Tue, 27 Jul
 2021 14:43:51 -0700 (PDT)
X-Received: by 2002:a05:6602:3304:: with SMTP id b4mr20572914ioz.186.1627422231008;
        Tue, 27 Jul 2021 14:43:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627422231; cv=none;
        d=google.com; s=arc-20160816;
        b=jV85+JKMD+Ta9bgp2ivkOnDH//P43mzBqZ2F6ABHuzcoWcOHWoJap20CjcvKprdVQO
         coH+2ZM/8F9hRfZO+dQrQrKZLufTkIuxmbKyJB5g+ud/EouPmLr+9Y250BoWZXixh0Bz
         nh9grUNjATCUmHGlL6eCIyqLhbmhz1PI4amy3gQEyqB65yNkmggnCh+FYWqbf/BPiuxr
         RZvBZOLcAL48sbfQxPuuFBf6GEkU2qXahzPHkcGxk4T5WkT7cRIza8oPG28UE+uPJ2lB
         f9BhH/DRf4vTvOXLfPV14NvCux00Tj5BlAiDmgxEEZFYeAED8iEapgUeBkQTn0hc2+N0
         uu6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6u6wypJQeJmb/YfTyzmyqM0UJtBE0z6heRiSyMm9WoU=;
        b=k7lnOyRzWBs/le3AlmiofQgMboT0DX6dw2/xogwtE5SUv5abxMyJWRMZgYKSiWsLtB
         JS2MAMH7IZuLagEFe218imuhu4VW+VZ40P9LVZuhwPBUta1WnQAl5PlabYhdGaBd1eKD
         dp3jqDyd5CgK4V8C9RKMZCI9JDJjiba99PcQOczHpq0vgbPBTieAJ/yTad6Wh+WgCPne
         EFHzJCUmTCzepoFzo/L29zInt4HZPl3bbDraubPuOw7wpaBJK8h4smTHZLYn5DVTTfX1
         kFvwJX0XYzRHzMDInYucV3BLxPrxxdDIoMEkGiHh5gQbY3XoHIIdJMMDe6u0B7A16BZa
         BZWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZwLmxb1T;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id q12si370608iog.2.2021.07.27.14.43.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:43:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id s48so428840ybi.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:43:50 -0700 (PDT)
X-Received: by 2002:a25:cdc7:: with SMTP id d190mr32876992ybf.425.1627422230617;
 Tue, 27 Jul 2021 14:43:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
 <20210727141119.19812-2-pavo.banicevic@sartura.hr> <CAKwvOdkwwXV9rN6bzRs_+hbq5thHNSbEtqwOZ7340a79=NqjSg@mail.gmail.com>
In-Reply-To: <CAKwvOdkwwXV9rN6bzRs_+hbq5thHNSbEtqwOZ7340a79=NqjSg@mail.gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 27 Jul 2021 14:43:39 -0700
Message-ID: <CAEf4Bza2zZK2m4fmDUXKoURxMmUcfr8gvLR9wxF1vFPBmc2gHA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm: include: asm: swab: mask rev16 instruction for clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Pavo Banicevic <pavo.banicevic@sartura.hr>, Arnd Bergmann <arnd@linaro.org>, linux@armlinux.org.uk, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, john fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, matt.redfearn@mips.com, 
	Ingo Molnar <mingo@kernel.org>, dvlasenk@redhat.com, 
	Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>, robert.marko@sartura.hr, 
	Luka Perkov <luka.perkov@sartura.hr>, Jakov Petrina <jakov.petrina@sartura.hr>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZwLmxb1T;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 27, 2021 at 10:53 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jul 27, 2021 at 7:12 AM Pavo Banicevic
> <pavo.banicevic@sartura.hr> wrote:
> >
> > From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> >
> > The samples/bpf with clang -emit-llvm reuses linux headers to build
> > bpf samples, and this w/a only for samples (samples/bpf/Makefile
> > CLANG-bpf).
> >
> > It allows to build samples/bpf for arm bpf using clang.
> > In another way clang -emit-llvm generates errors like:
> >
> > CLANG-bpf  samples/bpf/tc_l2_redirect_kern.o
> > <inline asm>:1:2: error: invalid register/token name
> > rev16 r3, r0
> >
> > This decision is arguable, probably there is another way, but
> > it doesn't have impact on samples/bpf, so it's easier just ignore
> > it for clang, at least for now.
>
> NACK
>
> The way to fix these is to sort out the header includes, not turning
> off arbitrary things that are used by the actual kernel build for 32b
> ARM.

Would it be too horrible to just get rid of `clang -emit-llvm` and use
vmlinux.h (we don't need to do CO-RE, btw, just generate vmlinux.h
from the matching kernel)? Kumar has already started moving in that
direction in his recent patch set ([0]). Would that get rid of all
these issues?

  [0] https://patchwork.kernel.org/project/netdevbpf/list/?series=519281&state=*


>
> >
> > Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> > ---
> >  arch/arm/include/asm/swab.h | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm/include/asm/swab.h b/arch/arm/include/asm/swab.h
> > index c6051823048b..a9fd9cd33d5e 100644
> > --- a/arch/arm/include/asm/swab.h
> > +++ b/arch/arm/include/asm/swab.h
> > @@ -25,8 +25,11 @@ static inline __attribute_const__ __u32 __arch_swahb32(__u32 x)
> >         __asm__ ("rev16 %0, %1" : "=r" (x) : "r" (x));
> >         return x;
> >  }
> > +
> > +#ifndef __clang__
> >  #define __arch_swahb32 __arch_swahb32
> >  #define __arch_swab16(x) ((__u16)__arch_swahb32(x))
> > +#endif
> >
> >  static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
> >  {
> > --
> > 2.32.0
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bza2zZK2m4fmDUXKoURxMmUcfr8gvLR9wxF1vFPBmc2gHA%40mail.gmail.com.
