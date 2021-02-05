Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVX562AAMGQEKWWBG6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 475533113F8
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 22:55:35 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id p20sf6288329qtn.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 13:55:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612562134; cv=pass;
        d=google.com; s=arc-20160816;
        b=J7dxebvYksDz+vMtrRkhMAIOiS1KjGSncAhwV+Dnsoszv1l9DbpU0qn8Ej3Xs3ZWVz
         0PXqHhKoiMSy6ZiE0nfsBdaoN/mTzw3SFD7nk84ctvuIycznZeoFSOW7/mq15xhXMFaq
         2XibGa6UGbTKDQP1GjDxmnBz7IuD8E1OO5kkl8WR62JD5vhMqSrGOqyb4Y/F9Ak5fjeG
         FBQzWjSFZqYQvus3XV6Xfkb/OsnAXYeY1JC1ECGNXcIlQEjydbAOwP1YJcBKEmCTRBfQ
         TVEz5oHUkiTMp5GoC6/+ZcriaqJkTWBZTvNFZ+T2j9pVwSbXufWt5uNnMVLffxuhFfVo
         RC3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=W4QI2IT4Ju/ql6uZcO/MS4hiRh6L2GGw+y9jMZcxuiI=;
        b=scpsBeD6yuvvcTwqUIzDt6zcq3sQgk+SbnjHPx8ZXghxTJktj5G50CKwzO2mPLD2/y
         JBeh/fPbmGgyYSR+p2G5AaM9AQyzmxNw61ZTiP2oXTi7O1pVpu1C8up2nBB6MC97W8fG
         RedEpHO8dLCquDwDkRBr70R/+bcgK71CyJkZ8QkniqaONhTcLDG6D4pTMFdVYwVoB7N3
         e5a3EwmMkT4ZzVMnfogV/sVW/8IUMiR5h+iWpWRxZj4/o4Q9ZeGPGE0r9GLA++vWdTlX
         vAG6OePX7Hncu4As3SEAyphALTZAMGQBhcVLxxFxH7Dpgo+BiL0xXeqMDxlYCxfu8nZK
         9fNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sqdwdU7B;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W4QI2IT4Ju/ql6uZcO/MS4hiRh6L2GGw+y9jMZcxuiI=;
        b=PjyuTUVLf24llvubu+7u+gnz2tKmT8RF1Ttg2P6aTFCT8470/7vEYVsdXcxBGeCE/+
         KkBl5tSLHkHe1zx+qb+0+R4p+91+HdZ5/iIQwZhFrPYFFla/KGAvjpPsCYPzUyhYNqHd
         rmpspQzHTwHQBUBwcK9+No0kEz56p56Qj5fXJSchfHyOOMEsQ6yDXwARhevVA1fbjjU+
         n3edd5MqrFD+6VAfnDth0UJhfeGaudzjkTyrv4/HKiqct2ETUq4aAJDKuYksqa/LiyK2
         zMhbjuu35Px1JlzIvXK6OpCL2p2y7fRlRfrwhSt4O6UxYrY3QMVvE91kcNKLbYZ5uBkS
         H5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=W4QI2IT4Ju/ql6uZcO/MS4hiRh6L2GGw+y9jMZcxuiI=;
        b=Q1GepUG+bkFEqDRHiw3/8qIHvhoLftPAtikauliHyLiokqQPZWo8xc1ScG8uWiPRVq
         FLi3eAfQxCWp+gttMPOgIXemsS17BpNvdTqA1pL5zgi0SKiK1KzBV+HeH9xvtGQvb1Gr
         Pp0FtKL2EL4KCo3+MGCjtjK/YFDQVvvLOG7qg2MYAYQNEbfmZhsKnd+VbTPsgaSMaa9Y
         XhCHWDAx7Oo/RTtb51BBMYShv/zOTmk75mHaUqTxeKwFLzFsm90lkGYLKZpLNeH/m1Ki
         3Ze94aSLG4eDUCe1m0ivGCV5z6nl4r28UZO10uUbsAMrjCJOJ/bjxg+QXqGWtaLeMWi8
         rZfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Jea9hRmH2XF+EoZX11hzyZ8oI/ByLt0tkWa6MvFnswFImhrT2
	HJNSs8RUWBZjIqrJPFQc6sA=
X-Google-Smtp-Source: ABdhPJyvBcbFX35JLG3lJ2emgvWqsBhHyN3+QHPetfsVeA3AfVqZquAfVH/3qEkN3PxxRRYvWemIAQ==
X-Received: by 2002:ac8:6ecf:: with SMTP id f15mr69757qtv.381.1612562134411;
        Fri, 05 Feb 2021 13:55:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:90b:: with SMTP id 11ls5587919qkj.9.gmail; Fri, 05 Feb
 2021 13:55:34 -0800 (PST)
X-Received: by 2002:a37:b07:: with SMTP id 7mr6687317qkl.164.1612562134068;
        Fri, 05 Feb 2021 13:55:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612562134; cv=none;
        d=google.com; s=arc-20160816;
        b=BxBRrb4XfXdBMwRcEZZZNvmJJrMDjwqI73nj8V5gVI6wTc+NLox0Z7N3E21I+dPHlf
         g7+wC3k6WFTQ15zkpJsbv/7OYqpXm9wfFBP8hUjGLb8qiFp21i2OzsOW5UawM3t+ekrX
         tOWRII3pWqy6zG0zoA5HR3vBMaWTI1bogWKXLWvS2bo5u3IpvJl6QAWN8Z6pxQafesSR
         b8KXp+Hknta2qJghii63SIlmYuHD73YUEzt8N2KarBDCvDppnaWhTTaL/WMioSmLonS8
         pJ+ZsrXjIzR8Vlk6qiXqOu6fF1lMEzNKckFztMtn2LkG/t/CUtyAWG9I3K6Kofpx+8Rj
         czew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZN32tWTFGn3myceLu9h2MCG8Fs6QpxAqk0HB3IMnPmM=;
        b=G/zqbUg9SRnX0wWwzmDaInpbixC3P5LoOGniJBcq8boUsk4J9Qj4P5f/FVDNH0blzY
         iwhfvj2nZWRXhsEIaVu5fQO24sbRPM468Pjt0zTq0LXiSELqD4yHxci+cFvzJWbiTKol
         n2RHeju3zoIv12G1rJ/TitPiHkrm97r6frFjLrzBE2KP6853YDkCMrDWMJPhvCD0mr1L
         jzBBp9RE0OLpiYohkv+IuxiOULOMbrOgdmBniYbVyrlLQXZOvrs2siLd0Lo0WUgiq+7v
         uReiVzcbMk0lLB2nMeBwJhhKH55lip0XOvacUNNqF2jLZbpcfXItLaVSXE3diRNSvaFG
         ifgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sqdwdU7B;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m10si373141qkn.7.2021.02.05.13.55.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 13:55:34 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D1E7E64FBC;
	Fri,  5 Feb 2021 21:55:32 +0000 (UTC)
Date: Fri, 5 Feb 2021 14:55:31 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Subject: Re: Using GNU AS from a selfmade binutils v2.35.2
Message-ID: <20210205215531.GA8294@ubuntu-m3-large-x86>
References: <CA+icZUUjb_71mWwWFMYN_OPZir2vStLq1kDY1O+JCFjtmEEBjA@mail.gmail.com>
 <20210205213651.GA16907@Ryzen-5-4500U.localdomain>
 <CAKwvOdk8vp5z71pQHG04REENSy15Z3DvY1MehS_GGVxnhXx_cg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk8vp5z71pQHG04REENSy15Z3DvY1MehS_GGVxnhXx_cg@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sqdwdU7B;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Feb 05, 2021 at 01:44:44PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
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

Yes, we could probably move the 'ifneq ($(LLVM_IAS),1)' block up because
all other build tools should be called directly (really, just "$(LD)")
but I do think that is orthogonal to the issue that is going on here.

I am happy to send patches if you feel this is worthwhile.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205215531.GA8294%40ubuntu-m3-large-x86.
