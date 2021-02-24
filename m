Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN4U3KAQMGQEPMVI45I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7FA32430A
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 18:17:44 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id p136sf2998645ybc.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 09:17:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614187063; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gf5i9W2dX2x9K4HKxVQzDq4JXMVUFlByTWyke7c18Qx1MCcBO2K9OvHVQNGH8JceTG
         RXlTn1tIuVbNWwGDOV3SQdudH2xvn4ST8SvDwFtTXJs3QJKwhmrQfuiFYmdL2Br0gLVa
         Q5rW2UZGb/7CRhEf6/te2oIqt9IkoIslQTP+8ZtFvLNdjFqE9lCsFJ8Kw28sOYfalQzH
         ghkmmp8FXAfljfzkuyM5mRnJXxTFTm2vUuGnz6uGS2kuFxzfun8Y7v7dx1r2uFO8ICnx
         9rOOKuRUM3opUTYWZ1FfpSjik3/GClW1tq62asvXOLn+F/xTxtos1NhyMBHTgkYeAK0X
         Umng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6YME35jH1YoXHK6JvUCFJ9Hjmk2bOFmOd72BIYAkg2s=;
        b=QfwT/zDBW4w24sxMZ8B61gTEuiFWOIwEGTrNlWle23LHp5zpLEzpA+nZZ8+fvDpiF6
         kNj7MI7ryDXO43jZ9gxoZaE9fH7MNfM3YAWRkUoSMmkCdXgdyTEdGbXAjOqR77stJhaE
         Xm6LhyY8T2Tp8zPqYWL8nZy3AgKapvDxO2rcTQTZ1yE5lBRwhYGRfv/rMCv210kFsHxG
         8AGUOU/GrSvq+MCycAYHCLSRbfQWGbziP8+SXRe2plFRTvMTRyR+x7u56vV2wSNIAS1u
         EpGGE36LpxMKpstZ8MZedSe4MqpWemjWkecRpWnaHugalVBG79L9Rt0wVyeZFGvERvK2
         SqSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DPpJPlXn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6YME35jH1YoXHK6JvUCFJ9Hjmk2bOFmOd72BIYAkg2s=;
        b=VyWkI9GNcXCuWUmJ+8y9qILz7ehjOPTbJTFf11BK1COmGdK2ToKZ757koQN511PUnh
         qvkJSYetsfk93uZyitqDP4wzuzfwP9HCYDlsTys/DnHPRfe9/61lDJ/GKTaZRFJVBb5B
         KObB06ZzDtNrbAKelgEH/AF0WKK3dQqRrqLBEkjiJdMsgcxmbOevcD5Ks2goR7yKC5B2
         oHhY/DiAEZzAmzej5pJ1AzD3VN9tCCJMVrFjxvlyvcNb1rIJoh/SBrd8JQJVH+JOVoUX
         z78iDVgDE6InlUjJ2eGrLd+qVdIeTQJ14HYU2p0QEkX576bxsFl8fl/6Jp1+MvWZjisi
         wdRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6YME35jH1YoXHK6JvUCFJ9Hjmk2bOFmOd72BIYAkg2s=;
        b=I0C/5m4ZiezXqnkf17f4MEVv+Ei0ij9s+BruzoXiwzUoE7clscDozmyj/xHN8La8A4
         CngWmA65VHaTzxfNqBTK8c2YTCI8sKFlIDl/U+llKMwIWkFf2ZR25ZhqvYBp0to6+KBW
         2TwQVJhtVXKbCDdWOppIkNIup3lc20vXlsMa7FVV9LZlDREKOv51bbw6eJGQ9S8Tk7UY
         BYHGKAVGg7Yx/IBEXEJR0mbSysE6MJQnxmojjy2fvw/4o4wiST1drPhm7YnAJlLxLrvG
         04HnutFDA6aZ7BRjssf5ZFo0kCigt3xh1Y7FdkyY6EbNuOwKNhJ6U6CtTUUUyYuyGpRE
         +5qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ydw0toWvU9NbI45uyr93qYI6GFMPuDOjXAWt30fc+OUXubIUD
	gF3QVWs3APj23w65GWH6anw=
X-Google-Smtp-Source: ABdhPJzHeldKqbfzBdJaqvlv3UCd6fqJgAt3/eWqwQGLTm9HHP4mcC1yw6aLN09pVMQxXi7cZ5PjYg==
X-Received: by 2002:a25:76d2:: with SMTP id r201mr53936103ybc.282.1614187063519;
        Wed, 24 Feb 2021 09:17:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bc4c:: with SMTP id d12ls1311263ybk.0.gmail; Wed, 24 Feb
 2021 09:17:43 -0800 (PST)
X-Received: by 2002:a25:6110:: with SMTP id v16mr48602897ybb.435.1614187063109;
        Wed, 24 Feb 2021 09:17:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614187063; cv=none;
        d=google.com; s=arc-20160816;
        b=IsVw0mPW1fSxR3tI8hLKOH/44eTubY/7ll6kjijx8XTMIszZB/JIf/7JH++eKta4so
         /kuI3F+XCkc6AEVQ3eyzEHaB005g+NE7FyIYNccdNfYo04pcpBB1UeF0m5I/nAMQJXca
         Ox1cEEKCHD9OodgW72ybsS6GeuW4Y11bLIk6vr1sIUutx3p6k4GpCTpxJehTELB1uBCb
         JGQSCQLMrg/40qC9L/jU91of9P1cp8JH8N2kr+Yf/oS65E+JhnOWHwbC1X0KAY0sAfCD
         d/yTul0yKcCz1zC+Mwj9mMBOkbO1SU3yTzIqzyZLw+55GFev4UE3YDv832CbNmJyLT52
         +0SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2/WlO5N1ldzJjli5ysaUKyRH46Z9bC4uqHVozyYL+NU=;
        b=fHjmLkg1ggRZroaZ4TL2iGBKRNmslhDUf2Amb193vIODcWetO+XaC4dGSnMahVk1Qz
         W5WD4ECzdYp5v31ppyevqs7WE/mR8K+6KIukgdcSKJ9MWKinqca+8OHLASX1KTgLnVVI
         f1TN6fs4QlPv4pr+GMLfUD+ZFQh2N+JDNRJmgkFNgVx75augXgkLvtkc6dH6x9dCyMX1
         ClE229kKdkt+3r1y3oL1nQysI6Aqv7lUwDg2gm/U9BmVOleCx4qdFJWCODOanVDitaJb
         BfHIvZ9zmRI2KOFsxr0OAnLOpkdWKe4JngrOH7zFR2ILsrzYDowgKoO0Ce/s7jBOg/Qy
         ejfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DPpJPlXn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i194si152619yba.2.2021.02.24.09.17.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 09:17:43 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8E7E664F0B;
	Wed, 24 Feb 2021 17:17:41 +0000 (UTC)
Date: Wed, 24 Feb 2021 10:17:40 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] Makefile: reuse CC_VERSION_TEXT
Message-ID: <20210224171740.GA7180@24bbad8f3778>
References: <20210205220125.2931504-1-ndesaulniers@google.com>
 <CAK7LNARKHvjTcnic=ZKntH3NY5meehQbJuBr34y9_tn8b-Ym0w@mail.gmail.com>
 <CA+icZUVkFOZq=5K=dKsQAFJPTmEE2gr_hVmYM=Q+rn70bSOh2w@mail.gmail.com>
 <CAK7LNAQGUnzLSOHAwF6ebH7oOuNETAyf3nrdNgNNq7JsDgiFkA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQGUnzLSOHAwF6ebH7oOuNETAyf3nrdNgNNq7JsDgiFkA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DPpJPlXn;       spf=pass
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

On Wed, Feb 24, 2021 at 12:14:04PM +0900, Masahiro Yamada wrote:
> On Sat, Feb 6, 2021 at 12:46 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Sat, Feb 6, 2021 at 2:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Sat, Feb 6, 2021 at 7:01 AM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > I noticed we're invoking $(CC) via $(shell) more than once to check the
> > > > version.  Let's reuse the first string captured in $CC_VERSION_TEXT.
> > > >
> > > > Fixes: 315bab4e972d ("kbuild: fix endless syncconfig in case arch Makefile sets CROSS_COMPILE")
> > >
> > >
> > > I did not touch this hunk because I have a plan
> > > for different refactoring, but I have never got
> > > around to do it.
> > >
> > > Anyway, you beat me, and I will pick this up.
> > > But, the Fixes tag is questionable because
> > > this is code refactoring.
> > >
> >
> > When I see this... and hear refactoring... As a suggestion/improvement...
> >
> > Can we have LD_VERSION_TEXT analogue to CC_VERSION_TEXT?
> > Both are shown when doing a `cat /proc/version` (and IIRC in file
> > include/generated/compile.h).
> 
> Sorry, I had forgotten to answer this question.
> 
> Probably, we should do so.
> 
> Feeding it to Kconfig allows us to re-evaluate
> config settings when tools are upgraded.
> 
> One question is where we should draw a line.
> If we record the version text of CC, LD,
> we should do that for more tools?
> 
> For LD, I will be probably OK because
> some features rely on LD_VERSION or $(ld-option ).
> 
> 
> -- 
> Best Regards
> Masahiro Yamada

It probably makes sense to do this for tools that we depend on in
Kconfig, like CC and LD. Those will usually paint a good enough picture
for what tools were used on a whole since CC will tell us about the GCC
or LLVM version used (as well as distribution usually) and LD will tell
us about the binutils or LLVM version.

LTO does check $(AR) and $(NM) but it also depends on LLVM=1 LLVM_IAS=1,
which would get covered by the $(CC) and $(LD) print outs.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224171740.GA7180%4024bbad8f3778.
