Return-Path: <clang-built-linux+bncBD63HSEZTUIBB4U35D3QKGQE5HDRRRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FD920CFD6
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 17:51:16 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id j6sf12060259qvl.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:51:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593445875; cv=pass;
        d=google.com; s=arc-20160816;
        b=BMCKTQP2jasVfaV7j8qScSwhjosaxjaP8xoR6CjxUotDyhqU+AUXxHRWtfFVb5fQxs
         WHj+uPb/GW20HO1kghVdBTK2Hm9pw0T/Pc2A/Icj5kS2MKcN1G3JhTKLeykV9akk8VKN
         cWMiVGUFAIAXjT5EUgLtsKJpJQYJaL/gAOfHDJRaUtPP/06KNFFdR8IOTIbZEohSmQyG
         j6iMwobatcEhi7PsJ7H5d6TbeRa+4gjVl38tg4o1c+CNKdkOGN5DnmIXQ4c6F1sdp+gE
         5qxTv2i7zckogbex8Mtn93Htbeg6pkCUfFAldqt9TajqdNFuSc8qsVa6tVisV2Xnw4xr
         plPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=t1r+d+m7RsozCC/89KPAqy95mnUwH2Kpgo7/i6XmFmY=;
        b=AXYAWa9RDp4HYNrR6dYki7MI5ze1TNYCDXPry/gqrEgyGoZb5B+8dYV6IEHI5x9cLN
         ek7Bc7INUFSZAvM/97nLOYCybqSx5/dZVhEFPJbYiGoNWqBdmge+jSrabSqMzEoU2JAd
         mF0LOf/WQAIzCojEl7JRt78SlwweVphSgwyBKaeyhJfwyGCrBNptUIikHuSCyR6ysGzO
         o7zwVcxaLRJ88dtRI67Th1IocYIi9ROxX2xpcqfw/A0HAmQfzpDGowhDvFInUeLWMPYH
         elUbUyjbKrQld3glvX1AGfTEUs35zf6P5Kzq2szf4avf5fnNr/jkz7eU11UT6cSNlbrs
         t70w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sWtK2vH7;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t1r+d+m7RsozCC/89KPAqy95mnUwH2Kpgo7/i6XmFmY=;
        b=tBvJ11+GKb5dhbwIPsn/A+Ec2h59O/nuIlcsWcL3xJRZJwSUDls3xLpoO1J7evSYV6
         wMFOKREOv/6DisoiqqFgNamiv2z2QjM5lCqPPAdct18c5NvQxViBCp0lkNP6I9ihXVzv
         hcLHD/mZ7XbXNupvC7Pp3qxix2zwJlwkXrT3RiudkwFST4YU0Ded4ALqZLuFxa8eZ0xI
         qiqstVCTBgTc1bkSKBONtSycKx2uZ4PsLlGk6OYidSWKa2ZkDF5j4c6zjl1h/YWSiXxU
         MtN8CTINva41kaTDnbeJKfSONyAN1AhE5U7oltFezLYfZpejDrcQKa3rvbD5y+mrjsfx
         7sHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t1r+d+m7RsozCC/89KPAqy95mnUwH2Kpgo7/i6XmFmY=;
        b=mdcO6BllodQcX85ChHmyYh63GYtVejPFWGmybgmrV2lcTCRKbQYJRVs8kM28T0hdtK
         84uJhM+BccyhQtWaxq6cCLP79nsKA9Sd7BFvg1BUP2cMziOrnrCyuS1C0p5qaJUe6e1y
         ra2YY9Yh4WonqebGjt2CaGT70OGkOF/pPWshmiOlGq6G4qAD6kppzSRjT6vbgmZZD6I2
         BBfgVgFkIqs91dcUuGwKkzpfQszOeJvtSEV/xfr0XqnqDJBHls/r63i4o3fM1eSxlzFB
         Zpua/fMpeTdM2/JjIZaMAGo3f4DIAbBKwI5daEgEkaig4O2U6okMmiKaUX41quvvObzn
         +idw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XsXO7jd+LfH+922IRJoJ1jJ+8aD/T2xd83SgZaYV/ULT2+86S
	SHt3kpNPVBxhMICJQ8Ld70o=
X-Google-Smtp-Source: ABdhPJwGdAs6YP9qDn5ZHL1BKN3AwemCY5PInJ8MOhJASIdQx6EDtz0hEI9iO74kkcs/nWIxSHzP4A==
X-Received: by 2002:a05:620a:91b:: with SMTP id v27mr14842285qkv.499.1593445875058;
        Mon, 29 Jun 2020 08:51:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:120e:: with SMTP id u14ls8146797qkj.10.gmail; Mon,
 29 Jun 2020 08:51:14 -0700 (PDT)
X-Received: by 2002:a37:6552:: with SMTP id z79mr15601148qkb.252.1593445874752;
        Mon, 29 Jun 2020 08:51:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593445874; cv=none;
        d=google.com; s=arc-20160816;
        b=RH/6CYn3pcrfdOLFmDA8zAmLhqCXOUjWsZFWy0yAUrLfdepw6JDvCLnm46R4BiRSF2
         cwEjpgWVvmGH+WnqemAsGGTdZFsciUYhcq9ALwfsdRRsPdCMDTWgjXLkqKxYGcmr4M2n
         kW5KuDLtAzDNK2zAUpAMz0d+Jj7oSZkWCQyxS2WjGwMytAwEigOrYsH2kekf1EiUAGz1
         V4weqH21WQ+B4xh5rAr7NEmt7Cyt2DY5taBZvQaEF1aBuI9WjZM+qr0lvvCsJxh9Pa0r
         8DV6Rl+jG5bGUOm63b7R5XKf+o6b86c1XGw5+dvfVyy69u0REra/dD9vXauDME+9dSMC
         xuog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0lZXh50AD5hTdzGfIns1A+oqNRPm9tukhEcGmv1GzA8=;
        b=RboCUthaiynBSKqQJCQwR36MVNw7KDAWzKg853UOe6xiPBsKy4yenIXPwcy44G+Wqk
         rnCfFrrpMVGCSfWompqGQm7DxHeze20vFg/Ae00eFHOBWvqFg98+h+rku7UASXwvtZr7
         SbdRbZKNxG1EWe2Mcm1UdcO/l1YnvjUAdGYID178KrjIaoegUJrrO8MJEJ8wxBfy3KDJ
         5qx/Vo87e9hJDlgBCHvu6JtnPb28CFlES01YzgGzNkQFXr8xcPBxOorpU/qtg9bLcVhe
         6Cg3zuXbNovPIaQL2aFosC+YTcyAEY+JWNySLzexzIgdhBxKfcZE2MrFBWSCcSjAkExD
         PAkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sWtK2vH7;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b26si4906qtq.3.2020.06.29.08.51.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 08:51:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BA0762549D
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 15:51:12 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id 5so13952840oty.11
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:51:12 -0700 (PDT)
X-Received: by 2002:a9d:688:: with SMTP id 8mr13766245otx.108.1593445871914;
 Mon, 29 Jun 2020 08:51:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-2-nivedita@alum.mit.edu> <202006290846.5A5C76A4D7@keescook>
 <20200629155011.GA900899@rani.riverdale.lan>
In-Reply-To: <20200629155011.GA900899@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 29 Jun 2020 17:51:00 +0200
X-Gmail-Original-Message-ID: <CAMj1kXH1Fx3c4fZRVgNPeXnPFbHWVhgywU0Jvu65=wBaR_5yjA@mail.gmail.com>
Message-ID: <CAMj1kXH1Fx3c4fZRVgNPeXnPFbHWVhgywU0Jvu65=wBaR_5yjA@mail.gmail.com>
Subject: Re: [PATCH v3 1/7] x86/boot/compressed: Move .got.plt entries out of
 the .got section
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Kees Cook <keescook@chromium.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sWtK2vH7;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 29 Jun 2020 at 17:50, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Mon, Jun 29, 2020 at 08:48:05AM -0700, Kees Cook wrote:
> > On Mon, Jun 29, 2020 at 10:09:22AM -0400, Arvind Sankar wrote:
> >
> > This is also being done on arm64, and the section was specified slightly
> > differently (with INFO) which maybe should be done here too?
>
> I was actually just about to email you to ask what that INFO is for :)
> What does it do?
>

It makes the section non-allocatable, so it is dropped from the final image

> >
> >        .got.plt (INFO) : { *(.got.plt) }
> >        ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, ".got.plt not empty")
> >
> > Otherwise, yes, looks good.
> >
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> >
> > > +
> > >     .data : {
> > >             _data = . ;
> > >             *(.data)
> > > @@ -77,3 +80,9 @@ SECTIONS
> > >
> > >     DISCARDS
> > >  }
> > > +
> > > +#ifdef CONFIG_X86_64
> > > +ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> > > +#else
> > > +ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> > > +#endif
> > > --
> > > 2.26.2
> > >
> >
> > --
> > Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXH1Fx3c4fZRVgNPeXnPFbHWVhgywU0Jvu65%3DwBaR_5yjA%40mail.gmail.com.
