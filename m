Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZU3VPXQKGQEXOBBIAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC491158D7
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 22:53:44 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id e8sf6022216qtg.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 13:53:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575669223; cv=pass;
        d=google.com; s=arc-20160816;
        b=e+bQJVMPOJKNQT7DM9dWC0ClvVEa4iL1y5hziJHzC3b2V2v224uFF+TtMcAz++G1hL
         pTG0IRUivZks61O+MD42FdUTiTUMxBy/5H5QYXloiUhBjbuptFblUlO3uC0BiOqwZdsM
         Xt84tjCZ46B4XQntdmZHS3BAKntlf27iKx0MX+UdUyzjsgwY7y3swhSpuU81OaoRrmjZ
         9/CQFmZAj/X0ftMBbPWblkR2VuVYnmeAVYsKGnvF5xq1H9RpF4N60b9DCctdvURW3NM4
         jcx/HxIBXaSd4ynvxzwMu0+hfIaIPhOKrlVlN2iU6OSQqmapA7ZeP1b8Hawjdo8mK7qO
         SkOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=364YzKWPD5iZFSshfJBIQ2PN0m7u6nxzEHVdqfg7x0c=;
        b=UnLErBptV8+MYAysv18jJyTqfcuvZg574mJGSJZWfZW+rpWK3SKr+7081ouwzl0tPP
         znql54Hwhg1pK27xdT6684dGAXIemGTIudHRvt1ZnEgqc5dJ9uWU+LqSfVKIC9iC267t
         pLBUpRgaoUgOoVcVlSoAPA8SZTgzzm75a7v5AdoWFT1ntP58AmiTZ4eZOPzGhdcQSq5/
         N2i1MdhaP6Qn58TxQR6JkixaeG0nOSlvhPmFXVijPT4ApZ+e5aodysRjdQR7i91hdoM4
         h+o1ousHFrFhgM6JoQhF2fQ4Zp6aEZQRg9iQSauVY3hpvN1GyHUo9DI4USDUtK0kKSUU
         D4kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ozemrwwu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=364YzKWPD5iZFSshfJBIQ2PN0m7u6nxzEHVdqfg7x0c=;
        b=aJD2UWA4oTQwbwZmA0IaN1Jjs19bkeLpNpDPfK8SrzKCXTB4Tt1qwJDOgM6W2T9cL/
         xlpMr/e0ktxqRpgOZS2NkNXvHR/c6plpydffGG06Ht2U2v5eG/JD29R2eOS2ZO1p+2Ph
         XiCEFo4jfEZNpFC3SRQY7ub0Tka1QRXpJjspNCTyhv9ZvgE0mO6EjZGBfTDt/LYfff4x
         YtbzNeXaldQP1BBYVeNNGOSENWWQD6CMQJKtf5jOA/bcs6YgcDT8ffu10x8Wish8ciOk
         AuSGM/kK9xSitvmdTy+KLFbclDSBQSFELoz/iqmlZp/k4QSrUMnSpcJLsfJVWqtecrdt
         Mp8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=364YzKWPD5iZFSshfJBIQ2PN0m7u6nxzEHVdqfg7x0c=;
        b=KI6tyE/0ErJYA+beaHM+ZhCoVcPku3TUUIgh9mNgQ+T2x9rhCry1BoHl2nvT7rnTNk
         IScD0lES0FbqD4yNiOZ+w+6UGHU89nYsetHkfHAlOErQyO9GNrEIY8gKOsrxZ/YNhv5R
         kGGcMpIHKxFvMd0fbFbkWSYi/esO8ldNO5/mB63iMIY7Qg1TNts+8wgk8oAUIgt94WOw
         Wszs+179VhYEENfuU9zPVWNQ63aokdAq0atIjuzZMoF/mv0mmQSKpcMNeMPUtEY8ZUfi
         Vf3tHa1UE1ynjcm1wk3LRdGXtndBJcNT/019I3sHXIcJZRLIT5TAkr5+jvLPMH6klgsr
         QNyQ==
X-Gm-Message-State: APjAAAXkHoaDOY2pkcDU/wuj1LFHxW4qVrG7rS61bxcQ+kynYdEHZFs0
	lP7in2O4H8Ft+++UGvS0bbA=
X-Google-Smtp-Source: APXvYqwDwd/EokPeQZPkmtzWeF+YwWmLzxAW3Nbt2aO+M+C3cTi+mJfH+BvokCXHWnyxa1MnIGQbwg==
X-Received: by 2002:a37:9f94:: with SMTP id i142mr16508154qke.244.1575669222917;
        Fri, 06 Dec 2019 13:53:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ad29:: with SMTP id u38ls1339415qvc.6.gmail; Fri, 06 Dec
 2019 13:53:42 -0800 (PST)
X-Received: by 2002:a05:6214:1645:: with SMTP id f5mr14570927qvw.129.1575669222541;
        Fri, 06 Dec 2019 13:53:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575669222; cv=none;
        d=google.com; s=arc-20160816;
        b=0anYKqDmiQOo2fFXD2g77Juz7GdjIuyS+5h4ZyEyYwRdQrUYHr1OrIQKv4BX5DyYmp
         jNkMa2IYlHSgsiQiAV6uBpEbj+FSLrFfwuVe0+45IPh1oF493in1yQg0EWa/x8kx7mHd
         h/351kG3cp7bT1Z4a73UbsbeIigDM1g66oHkmsJcSWQ3YT+H6RPTsPIhRsEAJ/d7wSX9
         LOl1RXkwg2RzazXYohr0e++ibFHCeLjYJhMnjSRO2bkki2fVE/Ug1UrkwduB+ljXJKLn
         1YoMLYeMJ/OlaGqDa9/wCSeNKXZw1wwqjAvNbS1oduudLpADNCxNLXwfRCijwn4c476L
         b9ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wgbrrDuo9KT2VuS+Gs4279E2o1vOVAlLL3nSGtqW8DY=;
        b=xaCqLm1Y+njHaiats2fdo2EN88S0NS7xMsrbgQ9D5il1s04P7q1QcsvPfDGwKF9XOQ
         L1j+W8DPeRMI3Y5BdOY5evbQyp9HoFnwQk/wQEjqS5LzoABe78BSa/4kROuio4/5mKcj
         CSL5JNPva7MZ1tsn65CcB6UKm8/pPQV0nEUGDzYsG0IFNIxnbPfnjd/WiiNfI5jBpvC+
         WQBs19fXF5vDUzswZCEZCtHSdiBc02JMcTyfaqo9zoUVqkIBiGYBEe5VXiSWabJ+Dv6b
         LrCtN34rnTWjFiLZy4f6joMcEpIjC67HaaWudHFa/bnmfLJ4ztVX4XcExLC+zMT54Hr6
         d+yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ozemrwwu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 123si623255qkh.3.2019.12.06.13.53.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 13:53:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id w7so3261038plz.12
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 13:53:42 -0800 (PST)
X-Received: by 2002:a17:90b:8cf:: with SMTP id ds15mr18285159pjb.134.1575669221285;
 Fri, 06 Dec 2019 13:53:41 -0800 (PST)
MIME-Version: 1.0
References: <20191118175223.GM6363@zn.tnic> <20191126144545.19354-1-ilie.halip@gmail.com>
 <CAKwvOdn0x4jc0=25O+Xy5BsUisAPrz_hjzmBbMS0ubpfPMLgrg@mail.gmail.com>
In-Reply-To: <CAKwvOdn0x4jc0=25O+Xy5BsUisAPrz_hjzmBbMS0ubpfPMLgrg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Dec 2019 13:53:30 -0800
Message-ID: <CAKwvOd=1B4Fqqwfu58mObS37N5Ocg4Hm35BwzOvbKVX4c10uKQ@mail.gmail.com>
Subject: Re: [PATCH v3] x86/boot: discard .eh_frame sections
To: Borislav Petkov <bp@alien8.de>, Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Andy <luto@kernel.org>, 
	Ilie Halip <ilie.halip@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ozemrwwu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Bumping for review (I couldn't find if this was merged already in tip/tip)

On Tue, Nov 26, 2019 at 9:16 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Nov 26, 2019 at 6:46 AM Ilie Halip <ilie.halip@gmail.com> wrote:
> >
> > When using GCC as compiler and LLVM's lld as linker, linking
> > setup.elf fails:
> >       LD      arch/x86/boot/setup.elf
> >     ld.lld: error: init sections too big!
> >
> > This happens because GCC generates .eh_frame sections for most
> > of the files in that directory, then ld.lld places the merged
> > section before __end_init, triggering an assert in the linker
> > script.
> >
> > Fix this by discarding the .eh_frame sections, as suggested by
> > Boris. The kernel proper linker script discards them too.
> >
> > Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> > Link: https://lore.kernel.org/lkml/20191118175223.GM6363@zn.tnic/
> > Link: https://github.com/ClangBuiltLinux/linux/issues/760
> > Suggested-by: Borislav Petkov <bp@alien8.de>
>
> Ilie, thanks for following up with a v3.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> > ---
> >
> > Changes in V3:
> >  * discard .eh_frame instead of placing it after .rodata
> >
> > Changes in V2:
> >  * removed wildcard for input sections (.eh_frame* -> .eh_frame)
> >
> >  arch/x86/boot/setup.ld | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> > index 0149e41d42c2..3da1c37c6dd5 100644
> > --- a/arch/x86/boot/setup.ld
> > +++ b/arch/x86/boot/setup.ld
> > @@ -51,7 +51,10 @@ SECTIONS
> >         . = ALIGN(16);
> >         _end = .;
> >
> > -       /DISCARD/ : { *(.note*) }
> > +       /DISCARD/       : {
> > +               *(.eh_frame)
> > +               *(.note*)
> > +       }
> >
> >         /*
> >          * The ASSERT() sink to . is intentional, for binutils 2.14 compatibility:
> > --
> > 2.17.1
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D1B4Fqqwfu58mObS37N5Ocg4Hm35BwzOvbKVX4c10uKQ%40mail.gmail.com.
