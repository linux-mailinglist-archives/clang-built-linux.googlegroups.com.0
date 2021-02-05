Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBS7462AAMGQE2VBYBGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DD73113F0
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 22:53:16 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id s29sf4230454otg.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 13:53:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612561995; cv=pass;
        d=google.com; s=arc-20160816;
        b=xOlSIHAz+or/h13AuPgSJPpdbgKKAtEHOoM5YOxmx8tHEqvmc7o9QgmpynIhcD0CXp
         QGk4wqfRxDMSWTA40tBk9ZbD1XxYZh/VohCSWBt6VPUfVkTxUgPmPdUbFJJW7Jq18gGc
         svv/kgWvygs4zSOGUCyJDLpUDQG0Zrj3GLU4VbAd5piHpke242QMOuejpKo3ZoHGTN5U
         2VR+W5DqijycaBAgjiH3nnBxjruLj5/W9DPbdSMlJexEjHXm0SFEfNptn+XSWFcEyJQx
         0wwi1OKoyDhQ7MaDIStVVVb3kGx+WOmXafOSt7cz1qlRnvKbLt2GOEtYM+xkwBVuvxe0
         xNKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0vMKwCN1/CfcV6ElkMjQbvl4n9rc7S6HqKxtXUd2iD4=;
        b=wZo8q4n/SwJ435qPLk4aHm/b1biTwV7eGpkAM1OKcmL1ZapFyZpUYqErs+g8A0oG+y
         pteEJCLrDU/rUAlMuBltw6SiuW9e7BR4J+21c+Ogz6QJ1i3mjpdUd9k8nWe8rl3Vxd3J
         JR1czEjuzHQ/+fizbO1m2gJcZfs8Lo/hz1q0vPvWHyrE8iIbfV35+4lfaRYEDWTvvZB1
         3fEkpc6QUOCkOJPS2KItewtw1rXw3dSzeErB/IjSO7vgwVSI/4EqpVJoTm8v2NsbZ7TA
         I+cXJZLAIwARIZySOgzKLSCpE7hdrEoG5RlzsxuOKtLUCmby9yCaM0b22Er+B54BunLw
         amXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fwz9o8BD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0vMKwCN1/CfcV6ElkMjQbvl4n9rc7S6HqKxtXUd2iD4=;
        b=ZwCXfI5OTKkL3vGncxNbXZFG6MJcnXiMbBe1ROdqcqn4j4fmEKI5Z4enBnGl1IaY/y
         9XVUcVcwQpvux3DU7YuVeD8EQ+5P9GwQIaPj01NU7oSDwqimHTnVvJ87Dksa5eBvgdE4
         uiB47Lc3I91g8oIcCa2x/MWZicE9TAF89NWblygF+fefp7onmCOvY0/Km3KgfLgaa40u
         OjGkwlDOh2boD0FN3FK22L5kVum0rc6WzRCC/8G9mgJBjU7Y4vp8WnatN3AeDtOvPMIP
         dv0N3KVtaYSczu+SwiFwxogevUnYIL+iKt0Uv/k9tOf83LMxPu3IWBfRLRDLfKlcJlXF
         IaGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0vMKwCN1/CfcV6ElkMjQbvl4n9rc7S6HqKxtXUd2iD4=;
        b=Wv8VzgDbawRgXogg8wuIna6OieR6mvhbIJSxq4TLmRbOW89PQI8jYcYUuaQym0J0b2
         Kp22yaQ1MCfSpdvDXVAMNqHmnMTmX65nk+d1pCh6g8zh1MrC/YSIP+mitsjKSe5ipCjo
         fc5MWt52fS4f+5qy0mdHMNKmY8crbdo7Cf2UdvxLxUkHxKMvt1YDTu9PPTK6yhdrrdRt
         X72H4otI0pj2lPvU3eiI63kcdJwuQ2wO9TjWUxjTKTpLTfV9fZhdxnwjtyZzK7X003RW
         cn8hPwhbJ+6tiLlKA8QnWLKuv7c6Dp8ixcfo3kykucrqwPkTwNNbrhbHXfHFKxAJVtWu
         axCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0vMKwCN1/CfcV6ElkMjQbvl4n9rc7S6HqKxtXUd2iD4=;
        b=NfKUAF1pJhtmvoAQEwv2byO11pccKBA+LREEk42O4hgOoNEOtFC7OTEkIBABR+Zj0O
         G52jgHhz7amvEtfUBLFki7I/2cFc5rTxKdRKhJUECN5MVlyAJA2QEHgMzoJZp2L8AlPa
         0DepmExt2cTITuRuD9Bo+XKnO98Bsqv/YG9zZ+M4/r2YkfRx3Gxxxj0Luht5gCsuUMIg
         5VaF35SD1LsZ8a5djnRR7lo/wTanNDVqML+2LvjTp+bDGXoRwsuwU52XIsn3cku5PA2q
         RFWVr9G6s7/JZMoRiwoBj6SsRCBe0uyFawEANt0Ygg31HmXl6lYsv6Q5CBF5/gcaHJnC
         V1+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HI3Yrvy/1mCdRqtVlU4b+HDy24W3mzfgqDsNFsJ922VJU0N7s
	hqxV4NzT+Lz6ASbswC/A0AM=
X-Google-Smtp-Source: ABdhPJyt93SmNRRzIY1F0ZRuArCoitcRl12OCO7906dE7hj1ujGx2cYunKzqNLa42G8Sr26aI+H95A==
X-Received: by 2002:a05:6830:8c:: with SMTP id a12mr4792327oto.167.1612561995558;
        Fri, 05 Feb 2021 13:53:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:2185:: with SMTP id u127ls664760oou.8.gmail; Fri, 05 Feb
 2021 13:53:15 -0800 (PST)
X-Received: by 2002:a4a:ce90:: with SMTP id f16mr4991763oos.61.1612561995176;
        Fri, 05 Feb 2021 13:53:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612561995; cv=none;
        d=google.com; s=arc-20160816;
        b=xvPCdFkqSFtvEXGqLWhFso0Lblpmmh0tJgWRiegdG/3JIG1CnLJZCg7Bm69KYjs1Ox
         2M7bHwpjC2l09Eb+8dNDuK33Sr+5RHYApOJp/a+EYL2xrVbXO2gSc+YXq0uDBw6xnBk6
         G1ho8xwJThHr6eh5UPf616SZduX0mibWr0n+OXX4tFFj7Mn/O9Nvzdhd0JDEwafvWe44
         CaSSAe8QPqh0GZjRi32nnRZdK4L78KLT10M8763ZttppvgdcbgDb8YfU9aJvUC+M56iY
         uZvRJEATXPBBIrB06f8H/epCL53Xn41pHfEORfVHT90ihqNQqd6kE5IB88hQufINkjHK
         RPsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z1LEn6yxJuon6YlG2B6eLh3pMTBV9iCgiAzgEn6jtMA=;
        b=qt9xwXTqoUPsUlyM4s1KVwGOAiTKNC/0CjQ1aeAiU4i8pTA/q7NgH3tMkzSS0PGtAk
         U7ExcklZitD/Q95bAJfzt0orky3KcxiwMfO+FGSqZl4q4i5B2t2TnXDjYaaIc3yp6fMz
         Jv1JWew1Vg9tI2psuJMze+8bNJKbbfFJQAVx4cwgtfu0Q8TsISP8IN5UZyv33lItaEYm
         qF8AB/mK3it/kLqVjIDW2EfwFVrFeQpE5gmj+K3XUOWA3532hOB/Xyl1HmkBlPcmqYct
         yb8UcpnfuXfdefOrwLcpJMveM7Tt3dmz3Lr0wUc65GBpjczIBlYqbU/jLadDFD4E162U
         RXog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fwz9o8BD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id j1si989467oob.0.2021.02.05.13.53.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 13:53:15 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Received: by mail-io1-xd35.google.com with SMTP id q7so8777165iob.0
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 13:53:15 -0800 (PST)
X-Received: by 2002:a05:6638:251:: with SMTP id w17mr6875651jaq.138.1612561994965;
 Fri, 05 Feb 2021 13:53:14 -0800 (PST)
MIME-Version: 1.0
References: <CA+icZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O+JCFjtmEEBjA@mail.gmail.com>
 <20210205213651.GA16907@Ryzen-5-4500U.localdomain> <CAKwvOdk8vp5z71pQHG04REENSy15Z3DvY1MehS_GGVxnhXx_cg@mail.gmail.com>
In-Reply-To: <CAKwvOdk8vp5z71pQHG04REENSy15Z3DvY1MehS_GGVxnhXx_cg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 5 Feb 2021 22:53:03 +0100
Message-ID: <CA+icZUXf0P-Fe00tg1ZqehNf=D6aiJVsy2DH85E_fJF7pPm9dQ@mail.gmail.com>
Subject: Re: Using GNU AS from a selfmade binutils v2.35.2
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fwz9o8BD;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35
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

On Fri, Feb 5, 2021 at 10:44 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Feb 5, 2021 at 1:37 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > It is entirely possible that '--prefix=' should always be present though:
> >
> > diff --git a/Makefile b/Makefile
> > index f5842126e89d..409822f45bfd 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -562,10 +562,10 @@ endif
> >  ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
> >  ifneq ($(CROSS_COMPILE),)
> >  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> > +endif
> >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> >  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> >  GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
> > -endif
> >  ifneq ($(GCC_TOOLCHAIN),)
> >  CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
> >  endif
>
> I'm unsure. Consider the case where I'm building with `LLVM=1
> LLVM_IAS=1 CROSS_COMPILE=aarch64-linux-gnu`, ie. no GNU binutils and
> am cross compiling.  In that case, we should not be setting any
> --prefix or --gcc-toolchain, and yet today we are.  Perhaps that is
> orthogonal though?
>

Nathan and Nick, Guys - you are really great.

Big thank-you for your feedback.
But I am out - the whole today I build Linux-kernels...
"My head is empty." (Kofi Anan)

Today, I remembered it is exactly one year we met in Zurich @ 1st
ClangBuiltLinux meeting :-).

- Sedat -

P.S.: I asked Matthias Klose why binutils v2.35.2 is delayed - it's
ready on <salsa.debian.org> Git.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXf0P-Fe00tg1ZqehNf%3DD6aiJVsy2DH85E_fJF7pPm9dQ%40mail.gmail.com.
