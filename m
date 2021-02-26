Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4OT4WAQMGQE7Q7VF3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BFF3269A2
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 22:36:50 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id d19sf1096717vsf.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 13:36:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614375410; cv=pass;
        d=google.com; s=arc-20160816;
        b=GCA1Urc1G9CnDDQ8h6mMzhEJDjzsd303mXl0wc3oXz9/6PMvsKzgixwtO8RM9mRduV
         2oZUx3fTTf7iuWSbgasjD1HcnfceGgWkEuRAo5LMfPMCFJ/I6eXh55nRczNKTFZDYa26
         V4gLo4HVg+7gh68gHID/m5IKF7B38Zd+vJ6429pZFYi9/GXOyA+BKz+5IOTIFKo7M77I
         e5i0u1bt5VjsER6dSw9MKnEaT8l0VlDYmkAjfSUc94PYp1FtKPV1LqcrcXZtJ6N2RoTq
         VEf8cSo4jd3iph53t043YcpZzgxhTaCJd4/t3/CQHfwzFdkZQNUiF6uMbZdBrwNnkTKa
         pRyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DiCgY+EtpUoJoGRDffOYB9xjUNQT7ZMvCmO8vxqup6U=;
        b=BDnxZkI5CHgsOoRNX12MmgEFRih2vfRwwKoLZ1G6pqMnfkfByJIHaVO7fpwLmR9FDN
         lDCAsJ6WYod6czZorlszlKgBYJa4gskvzaL1xTr0VJuHB5lYhOl8HtvoOeCNXY6SYhPt
         CzT50mv27KwhH0vS8VX8rf57rUeL7o4lJIFiOhRGT5uFnIF+kRpy6dwMp6SbRMlF+g4K
         FRNUWPeJBznRoIbnVsd0V2ouuaZ4YnTY47GkRuqhY0/PGH+KeDVv4diUHEcZPMhx3Cjv
         vW9PcI7T3KDys44bz+AGKp7+vPRl1ogmW5FBh+U+TaGkSH2p325uFHovQDJ4WqkZ7tuW
         AbiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JI1QxUL8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DiCgY+EtpUoJoGRDffOYB9xjUNQT7ZMvCmO8vxqup6U=;
        b=Nnkc3sybMPS4JfWZPDRKT4gBaZX0IGIwAJrVp74z7LKEqEybFEpldhLo33tHN7gMUs
         3uc15vFSjfou2Z6xvVrbj4xzmDte0DC1H7h4hRt+mhzVoBkbgmgOWGjnDF7PtUO+KW+U
         m2CTv0uV7RSpsJ69o912mwl2b9/b9PGDOOKmViqoxOsrSVDRns6M6DwAF/qKw9KMW54x
         tbN1tSwwliE+gEJO33ZhHS8gCKUtzAIwYSRjynCt7nQiLnT5pudFJVEGMreSzbF8hmOk
         4ePB49y63oBD4s4Sw7/aBcnddZRhwRGx8/eANUJQ4lgDlciQA1eJ2Ab5Y+F7ytEZIVtZ
         53Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DiCgY+EtpUoJoGRDffOYB9xjUNQT7ZMvCmO8vxqup6U=;
        b=GHl0TCVVav6AsyLeOkrAlh8K0SIGIoC64xTOC9BJJylV19aavy88ZDKyEG2tzvEuHH
         n0Un5U8bT9x9i6E/AEcGdeFZ7XFmLEN3pjtYBFARefi9T1RzdDhgIxC7ooiM6D0EpmKq
         RCYuFHymKi/jzicG1BBfNFDn5Wz6WT6f6a79OndxvSH8wwKFLJACpIcHYrmMisO8Fjv6
         kbE/pZBMl8R1m8GhK8FA9S1NqeVk3MRSpwLpT3O+TFUEj80a3ed01nFD42W1JpMjRvhr
         BVe+552PvefOft0cL0apcbCgBECeEDdtGdNP90reev+7euYtvG0pJoDhIXGyrk3K9DKM
         mmCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OGxQ9lQvG8W/l26uDCD6UU0PJn4JvyHfmnpstpYdT5B0CRdMG
	pG1WCW6mGOLUBT1eFViMNiI=
X-Google-Smtp-Source: ABdhPJyYxguj0fj/bxrGcr/3IgJ88GRvzGSRymAQDiDh90LwczilOOnmgWeDhMKitaNldPNRyfVZQg==
X-Received: by 2002:ab0:66c3:: with SMTP id d3mr3313395uaq.2.1614375409932;
        Fri, 26 Feb 2021 13:36:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3004:: with SMTP id w4ls1309317vsw.9.gmail; Fri, 26 Feb
 2021 13:36:49 -0800 (PST)
X-Received: by 2002:a67:29c7:: with SMTP id p190mr3292249vsp.13.1614375409494;
        Fri, 26 Feb 2021 13:36:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614375409; cv=none;
        d=google.com; s=arc-20160816;
        b=rYc5cIbn57bi5IMfXBmif57F1DMGAw9UEXybZJTQERgT5VTXLIbVhWLbmsG96Nut9s
         1mMVi9v8MIiAbeu068b93zdpkts6nLvCaIJHOgWC1760P/T7mkNbJJ4jSFxXFft1HEia
         HKZ25nbGUhi/+hVuUTJ86M40VRCSkeDQYScY3J2K5GBidtUHQtMcQs5yfH3BzYIHjR3Q
         AJpW1v0ysIrX9fuluQns1nm7QoMB3hNTheOatuqBU3Wqtjy+rAq4lbqrAIi2uLPr9Rp/
         7BSPCOVPCFDEex22CyvSLB3KbdSZiXNfAFobVt1HGJa4bkoIbi2cGVusnyhsHNC18wnb
         cVfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3qexfSOlrFkYq2xDB+wo8/ibYXBnO+smzNTN+H08svQ=;
        b=YhA3JZkWOnBy24JAXgx/VafbGqwbhXMfebvN21YQUgfjaUiJhAJI4gy7iAo/DwKSQt
         OZfJCchHpGZxc1eiuWcjqQ8Sknue5z7QIM0S6fvdF73mfrA1+ch2J4Wgpl5Skmw6oQPL
         1SKx6x5jTUcMWttHNYzqj+5Ygh77CoKMu8UKsh1BKek8qHA9aN1BXdJAbDm4AQifdLfN
         TF7AagQKRshr10lNcYNwuixVJkxlNL3B84whAODHFATTjIf2lkFkJObQJdyCsU1wv5C5
         ls7gmPXTq1HDOcb5oCsdYz7L0Qrjaj5ZwiItkHdVfQmlRkhxtTx7+kysxkTy+AV3p7fX
         sr8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JI1QxUL8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id r5si209939vka.3.2021.02.26.13.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 13:36:49 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id m6so7140199pfk.1
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 13:36:49 -0800 (PST)
X-Received: by 2002:a65:6096:: with SMTP id t22mr4586121pgu.66.1614375408730;
        Fri, 26 Feb 2021 13:36:48 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u128sm10988830pfc.192.2021.02.26.13.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 13:36:48 -0800 (PST)
Date: Fri, 26 Feb 2021 13:36:47 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Congrats, Nathan!
Message-ID: <202102261326.D9B7A0B5@keescook>
References: <CAKXUXMw6H4rSNtbjxp03kgx7QYTniUT=F42KYvyBox1em_1KiQ@mail.gmail.com>
 <CA+icZUWFE-NyoxrgtWAa_Z=oc1mYJZk_i1tGoP9+7Q5NT4d3ow@mail.gmail.com>
 <20210226211154.GA21392@MSI.localdomain>
 <CAKwvOd=YikDtyz5Be6x5zyi+52zgqtG4+MZaLEpsH8qCnmJGRw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=YikDtyz5Be6x5zyi+52zgqtG4+MZaLEpsH8qCnmJGRw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JI1QxUL8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Feb 26, 2021 at 01:18:52PM -0800, Nick Desaulniers wrote:
> On Fri, Feb 26, 2021 at 1:12 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Fri, Feb 26, 2021 at 10:12:19AM +0100, Sedat Dilek wrote:
> > > On Fri, Feb 26, 2021 at 7:54 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> > > >
> > > > My news ticker just pointed me to some random news repetition of:
> > > >
> > > > https://www.linuxfoundation.org/en/press-release/google-funds-linux-kernel-developers-to-focus-exclusively-on-security/
> 
> What a lot of the coverage missed was that the effort is in large part
> to avoid another heartbleed like scenario in which people realize that
> heavily used F/LOSS infra isn't getting the attention needed which can
> lead to various security flaws.  For us, keeping the kernel building
> with clang enables us to ship mitigation technologies built on LLVM.
> And Nathan has kicked more ass than anyone at keeping the lights on.
> 
> > > >
> > > > Great to see to have such a great supporter for Clang-Built Linux
> > > > long-term on board now and some media coverage on it :)
> > > >
> > > > ...and of course to Nick pulling the required strings, and to Google
> > > > having those strings :)
> 
> It was all Kees.  I'm just the assistant to the regional puppet master.

Heh. It was a team effort, but, just to keep up appearances: "Muhahaha!"[1]

-Kees

[1] https://www.youtube.com/watch?v=MPImhprnUsE&t=11s

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102261326.D9B7A0B5%40keescook.
