Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVW55SAAMGQETRSXHMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DC730E70F
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 00:16:39 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id x5sf560881pjk.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 15:16:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612394198; cv=pass;
        d=google.com; s=arc-20160816;
        b=cfeCm5u/JnfWA+O9x4espR6OXDO53aTY9BKHaX2MNy/+H74xg6Z3kLbzVYFbpcogYk
         WTpsCzwSkiLQS0hXz17rs8Yi5RlCdt4a54iCRngasL2PeAOv/aV6msqefDH5YyCq6uuN
         6akMJTdr9aVI4g6vsiSm3cWUW4Wt2NDTs0bQ65BTojlWVR1G8QzPledpyPd5NYLsKQOf
         56BBJc3N/Fv9g+jOAGjxze7LIH2G2j24MEneZen1zfQPinkJMFsc1PXYNzvoD8zrUEgX
         6PjlwZBJF7HiJPmZYxhXdtpUfsunN5Xx6MyzhFjyrTDI1YHY/8AKTWwa7vY/aWD9mGFD
         mRZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=35zOjr0rFh9Lui7tN+KdVM2q6kQpYyYT+3oMVeyvrb0=;
        b=n9/+jXrtk/IIueIcLm2BXlDYR10dNlvRtTaiyPr7v+CeiVuG2S4qFYKKHdZM3sH8os
         KO6Erq2AQ1nw5jNNJpuzhmnqOKS0xoXepfCN8pn46AaEVr4FHMRGxqHTV8gVUCm+72dB
         NLPhbFAE4NeRetIu97zRB3BWapaHTgrsPquzw6wzOSGWvUcSbzlyBNHr8YqstKrH249r
         fqoqbSi/8q8x1Yk5FBLEFFmoLjPdhtRwKaOPiYvrXbb51rLfo11JKraxo/O2kwQ5GKD9
         BmCc+smLFXETmINT70KXovJml1S5gWH5K/KVHABdFopTclgI+ZUVTmQWrZpIMO1oA2ct
         oQTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L805BloR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=35zOjr0rFh9Lui7tN+KdVM2q6kQpYyYT+3oMVeyvrb0=;
        b=OHLVaVnoDBa2flFASxP/IRxwPBwEbVO6BgIrLszz0UNEh90MrpJeLJne0SUwQmz4X5
         CGBFVAUFg773oEb2BbewgPHxwhDafLcJOmVD1wdtj5E2cs7cE32gFSoBjH0RBVcEIS74
         o1Xzte0xDBhBpjCyKP1IawCak4xzedwJ9h0nTZHsHCP9hH6GH6p9OvG3j4yy3aGZX62e
         9yKv9IA8v+vkBFoS4bLvL+w18hj3PsWGMjKbkxd46P09ELKFRVWBAdfhpwsg1s8z0hrp
         Pmh17fj4BXgG6GBbpW8ZkNtRCAKJs80oad5gSp/1ODTmpqsk/DJCLzrneP8VtPofTKD8
         jc4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=35zOjr0rFh9Lui7tN+KdVM2q6kQpYyYT+3oMVeyvrb0=;
        b=Rowg8msrB28j5N+I/IvKT/iFF3LxM5E6Oc2EpgRQwmrxjuISusAf6sCezU4TyigrKS
         PGbnptnEViQVWTIjwdGwbagkuiiBkjd1GtcxzWlUeKD1IIA84uhs9Gjvsc6fqNYfC+iC
         uHjLXcoZBB0OSFk82Ss6tKdwE0GsGhI4rXE0veyLMNn9hdZV8oUBogH00UToj1le2oAr
         mXk339yu2ixkN8AGZeoPCBwdS6BFaKetfi6xfkAQWmaXsAJ7lnFlPQd/YPOgxAamn9qK
         D1NofqyTS4PCYaM2Pup9DgwhrBB+ifpnkf/ROSNcHRjeasXbOd8wtX1dLW74Cmg8DuJh
         rebg==
X-Gm-Message-State: AOAM53198w7PSzI4oFnxnTkPYW4LQWBZQbs+7rT4OTIQQCWSzu1bKrLu
	j5kLJ9ZxfjKqXdNgmGi/MIY=
X-Google-Smtp-Source: ABdhPJzZrJnnQEGx5t9MTVSoHTT4vbpND+pxnA6NNBaKJx7h8mlf2R1JJnc6p2/zaIvXnFrZS1ctKg==
X-Received: by 2002:a62:1c9:0:b029:1cc:6b56:9a44 with SMTP id 192-20020a6201c90000b02901cc6b569a44mr4980068pfb.45.1612394198504;
        Wed, 03 Feb 2021 15:16:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c401:: with SMTP id k1ls1140553plk.1.gmail; Wed, 03
 Feb 2021 15:16:37 -0800 (PST)
X-Received: by 2002:a17:902:f683:b029:de:18c7:41fa with SMTP id l3-20020a170902f683b02900de18c741famr4880662plg.57.1612394197843;
        Wed, 03 Feb 2021 15:16:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612394197; cv=none;
        d=google.com; s=arc-20160816;
        b=KE2pFMEEwtagzZJPnBe/r9cdRi5cLm1dZ3i0ptM1ga/bZgJq4UAErvVGgRvtRDl1zE
         ha+PoOXjqWqnnpQdvGRtzTiQYkfYvKrve3zI4cvIyRss4mjS05U4C/q7KqwJ8dPO19cB
         /5j6kWLncjYg59UHuuq4bG1pv59kZOkQJWdTKfgZG+hhzoslM5qwWTRNrztBnIUFgowk
         shoA2n2y3zscxgX9imgT/ViAHkjjS5ksRktft585l1zO5rFyk0oG7glp1uONmCtyNLH+
         h6A+MT2WOXZ6f3H5ocC92jFKzvxrkC8GfUf4iVHRtn8O92ylgWM6bKfPzJO3Meo/Pycw
         Cr7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wll2IwjnBP1ph+olB4IOjZDnzGBUCfeA4SIYv2XGwvY=;
        b=sWPQnkTNTvP8O87scthP8sDdj823pV4kXqguDcv2/dvuUo9aO0SZxC2N4TtaszY50i
         Q6/l88+eHtl5MXe3Iq0NQ9E4mBeLQX8f1KiYRkqnKGMuNp9BLKDya0WTta+gQrNLq3if
         FEo0tkcbf5fZ54+kgcSNjPfi0gjBWIK7i3z4h67FmWvEbYK4OdyMpkLb4tRD255KB8za
         SdR9j2H0MNet9Q1M86Bu+oTcfwvvIJWnJOOS2w4pl73agYa8yIay+RuuWXXI1xth8jCL
         hAmjO1WYRvm/OoJfrWqhFkB9xJ8+0Fj0iuAP57WFFSAp719CQt8f4w4q/+IY3EE2gXKz
         7KbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L805BloR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id i23si179993pjl.3.2021.02.03.15.16.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 15:16:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id q20so835331pfu.8
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 15:16:37 -0800 (PST)
X-Received: by 2002:a62:838d:0:b029:1ba:9b85:2eac with SMTP id
 h135-20020a62838d0000b02901ba9b852eacmr5312098pfe.36.1612394197279; Wed, 03
 Feb 2021 15:16:37 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210130015222.GC2709570@localhost>
 <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com>
In-Reply-To: <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 3 Feb 2021 15:16:24 -0800
Message-ID: <CAKwvOd=YVDS8tjnN6kFqe2FAhfSzVg870VsSvkNuvVZ7X6BrVg@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L805BloR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430
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

On Wed, Feb 3, 2021 at 2:24 PM Masahiro Yamada <masahiroy@kernel.org> wrote=
:
>
> On Sat, Jan 30, 2021 at 10:52 AM Nathan Chancellor <nathan@kernel.org> wr=
ote:
> >
> > On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> > > the default. Does so in a way that's forward compatible with existing
> > > configs, and makes adding future versions more straightforward.
> > >
> > > GCC since ~4.8 has defaulted to this DWARF version implicitly.
> > >
> > > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > Suggested-by: Fangrui Song <maskray@google.com>
> > > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > One comment below:
> >
> > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> >
> > > ---
> > >  Makefile          |  5 ++---
> > >  lib/Kconfig.debug | 16 +++++++++++-----
> > >  2 files changed, 13 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 95ab9856f357..d2b4980807e0 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
> > >  KBUILD_AFLAGS        +=3D -Wa,-gdwarf-2
> >
> > It is probably worth a comment somewhere that assembly files will still
> > have DWARF v2.
>
> I agree.
> Please noting the reason will be helpful.

Via a comment in the source, or in the commit message?

>
> Could you summarize Jakub's comment in short?
> https://patchwork.kernel.org/project/linux-kbuild/patch/20201022012106.18=
75129-1-ndesaulniers@google.com/#23727667

Via a comment in the source, or in the commit message?

> One more question.
>
>
> Can we remove -g option like follows?
>
>
>  ifdef CONFIG_DEBUG_INFO_SPLIT
>  DEBUG_CFLAGS   +=3D -gsplit-dwarf
> -else
> -DEBUG_CFLAGS   +=3D -g
>  endif
>
>
>
>
>
> In the current mainline code,
> -g is the only debug option
> if CONFIG_DEBUG_INFO_DWARF4 is disabled.
>
>
> The GCC manual says:
> https://gcc.gnu.org/onlinedocs/gcc-10.2.0/gcc/Debugging-Options.html#Debu=
gging-Options
>
>
> -g
>
>     Produce debugging information in the operating system=E2=80=99s
>     native format (stabs, COFF, XCOFF, or DWARF).
>     GDB can work with this debugging information.
>
>
> Of course, we expect the -g option will produce
> the debug info in the DWARF format.
>
>
>
>
>
> With this patch set applied, it is very explicit.
>
> Only the format type, but also the version.
>
> The compiler will be given either
> -gdwarf-4 or -gdwarf-5,
> making the -g option redundant, I think.

Can I provide that as a separate patch?  I don't want any breakage
from that to delay DWARF v5 support further.  If so, should it be the
first patch or last?
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DYVDS8tjnN6kFqe2FAhfSzVg870VsSvkNuvVZ7X6BrVg%40m=
ail.gmail.com.
