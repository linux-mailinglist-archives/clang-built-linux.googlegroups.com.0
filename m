Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH444LUQKGQEE7ZFHZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 244D573455
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 18:58:09 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id b188sf12664758vsc.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 09:58:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563987488; cv=pass;
        d=google.com; s=arc-20160816;
        b=TTI5eD6UblmCquxRibvn1w+0wD88KrpZ2mSKi1Z4Z5EfqfxklN83hfRMPKudBevlpb
         h5RUcPd3VVdLYjTsYCj95qsV/+pf9xwOz7HDPIBIf7BEO/PTO0AZ/gTwlEKol8CahOIF
         piX3Tmk1nNi+Bupa5LAawizQp9Cw2XiV7P1xPRYZrDUfWxznOiuezE7oATK0iTi3q9tJ
         Uov9vMDL3IatIP1FNI8C0KHGOD/iHHT20rqnERThmdBbspVoY5oln03HzWmfNR6K6ysb
         W5plFpyVSI1MQrOPcz23lBCBTPWz+86aLGA1CQNM1pOrEdTK8m9zLC53W9WtkIB5JfGx
         wOig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MYz26l0y4fd6nJFaUdzYhXxjkdBSCCg2S+pYQzeZgQQ=;
        b=aCex3jQzLUeKrDzDNCMFH6K2sgEs608HipoJkYTEWbx4WCkL11gHZYy7w5IQY9dCIc
         OqaY6zKUAJBEL5nwxVb4ETxRF/L6ql8yqz8V2Bx/uwgy3muGIkGqqQEeMv3oYNaMT2bN
         RDel+URbkLQU2mhfIZ+E41tsrWU27N+TcfatEmof1zCwCmoG+Pu585836u/FofXmdSGS
         GX/EGbFvqDr9FbSP87DpDKB9JKPWDMvLOp5EJFO9E+TopyCnSQFJnFrjS/1iLl3UJyRk
         kP84WQF7LLH4g2QchsyHi2PN76G3wWty+wCwEdO6rGFgPTJ414WMIgQ4pgyUyq8KKPm2
         plsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ckdL9xNk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MYz26l0y4fd6nJFaUdzYhXxjkdBSCCg2S+pYQzeZgQQ=;
        b=BXVtd4wzO9rdEVzezP7srnKwls0yIn6RqkBZnfVUeXgz2T1VY3BYU7S/QMp4lvZo/V
         wdgcvfqucKoW6+AMwgFCGc9l/0SSZ9sZQyEqM05gfTJ+uysgltfPCDwSFgB+yZlvsnk3
         T1KlbHiXFo6DlFlJeNx6E7tWOvYapsfvKjNbhUrboLSGkl3ARvpksyX0fIhY/giyN4HJ
         SxlHUV4nmvtrecMK17OrgtpOKyhNle++Ifhmve59v4hwRLrNBzvVFeDlvqtEx5C94IeR
         UJI8x6443HTfvjWImtVsccJOeP3y+RyMetZjHGQqw++NtW+YjHw5fLeOekaNPev4YHsV
         oHNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MYz26l0y4fd6nJFaUdzYhXxjkdBSCCg2S+pYQzeZgQQ=;
        b=iRCuX7p60M16hUY0tWWkxYgBKMWmB9A8ShKJFsXJiCLINoa9/XjYXs4FabhbR32P5D
         viuVTkI88F8tBCZt7gSUNlM5PmEos3j56PX+T9EOdX02GVhdKvhxhjpKtJBUqbMdmiZv
         U5nILLBj70xjKx2yMO8ie7CfbM9MfWbiymzS5XaxmUB/CRywY9gqhR8xT38StMOxw4aV
         qUksU5FL5cLLLIo2rHEzF3AllKS4kIRzzn04KkZw6WjnPH8PFcQx0ZvNq6O4lpTXpb4x
         iIHj23aLA0DZRfUtq4/lgl4xJUYX3YB24ZqZNsoujunIuII1EPwWQJ6F78CdXT+wl2p0
         fp6A==
X-Gm-Message-State: APjAAAUsg/usrkffQPUStXPw+Tu1G7mwkvbzFcdBNUClLyyJq0V8DSGP
	WTD5S+mK00WvTql4MRQaZJw=
X-Google-Smtp-Source: APXvYqzL92igtewwLh8zljJgj1ajOis+vZv/5MT5zDbxwNqe6TwKPWgM25GgyBoUsBMWtjECBZu5qg==
X-Received: by 2002:a1f:2909:: with SMTP id p9mr31946188vkp.23.1563987487978;
        Wed, 24 Jul 2019 09:58:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f0dc:: with SMTP id j28ls6018248vsl.11.gmail; Wed, 24
 Jul 2019 09:58:07 -0700 (PDT)
X-Received: by 2002:a05:6102:8c:: with SMTP id t12mr54094737vsp.143.1563987487761;
        Wed, 24 Jul 2019 09:58:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563987487; cv=none;
        d=google.com; s=arc-20160816;
        b=Vm/jbjXcm8FwnDtmKwwvCkDSAFe/fg3OCwjjiJkIeosHyj80RNI9gMKeg0JEMrL2mP
         DswXEfukU6h0Xir72Ssx1d6QORAEFpCTfZuMl65KxclOotWdBdK5WmHJSuB/+yFplIBy
         Ftmbq6JHaA8KhYb0bGQmc8BQEXy+UZTxDH+bcsFQJ8L0FqTWpOrcxHffwmsrrwnWdsx6
         bVcWsrmJCjYx1WgfjPoc7RtK2lXhLSZxeqLJMDg+6u+PxZoA0m9Su0r79JwOID9nkZfM
         afvNBlbiNTtR2ScYBcYfOsDvwgs/vThEI7Jc6xHKtZGgZAa+UApiZw+DYW2L+YaUzW9s
         saCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s7ukXGKCr3sO7fhC6+VXw/YOnCbyLTCvDGXac4+FsVg=;
        b=y0eBjkVaigys+tthhXcknc7p+8FFVE7w8Dn0xCw0vuF9Q1xx12sv6kKLkK0MmTegCQ
         O/94o9DJDoq3496jjf2dZMOm2N/6bFciTnc4BANgloosp3SAfBfFfL1ppjwEv1l+Thx8
         AIfeXTiB6z04iyL/hKzftPlVkbfX4WS7ItWWYPRYBMLW/nYXyEb2NRTSQUadJnQqxB58
         G1HHJEwu9Bg2KCApHZRHNpM7c2gwAUm418og5Ivp5B/IxU7kOr4Rywu8sTp8K/s53Ow2
         8ShnTpOLOoi2ngMTr9J1Rgs4OLvSfIv6Bakm0z6RLKjT3erzgNtHr5c5ONtsvK6phKys
         oCcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ckdL9xNk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z67si2169214vsb.1.2019.07.24.09.58.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 09:58:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id r7so21252313pfl.3
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 09:58:07 -0700 (PDT)
X-Received: by 2002:a63:2cd1:: with SMTP id s200mr78200867pgs.10.1563987486194;
 Wed, 24 Jul 2019 09:58:06 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190718205839.GA40219@archlinux-threadripper> <alpine.DEB.2.21.1907190837350.1785@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907190837350.1785@nanos.tec.linutronix.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jul 2019 09:57:55 -0700
Message-ID: <CAKwvOdkkaypJPxfaxa_-Q0jtzX4AreNQx8rM7tw9Z78wPfV7fA@mail.gmail.com>
Subject: Re: x86 - clang / objtool status
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ckdL9xNk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Thu, Jul 18, 2019 at 11:39 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Thu, 18 Jul 2019, Nathan Chancellor wrote:
>
> > Hi Thomas,
> >
> > I can't comment on the objtool stuff as it is a bit outside of my area
> > of expertise (probably going to be my next major learning project) but I
> > can comment on the other errors.
> >
> > On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> > >  Build fails with:
> > >
> > >   clang-10: error: unknown argument: '-mpreferred-stack-boundary=4'
> > >   make[5]: *** [linux/scripts/Makefile.build:279: drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.o] Error 1
> >
> > Arnd sent a patch for this which has been picked up:
> > https://lore.kernel.org/lkml/CADnq5_Mm=Fj4AkFtuo+W_295q8r6DY3Sumo7gTG-McUYY=CeVg@mail.gmail.com/
>
> Which I applied and now I get:
>
> ERROR: "__fixdfsi" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__eqdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__truncdfsf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__nedf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__floatsidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__divdf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__adddf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__ledf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__subdf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__muldf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__fixunsdfsi" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__floatunsidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__extendsfdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__gedf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__ltdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__gtdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> ERROR: "__floatdidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
> make[2]: *** [/home/tglx/work/kernel/linus/linux/scripts/Makefile.modpost:91: __modpost] Error 1
>

Thanks for reminding me to send a v2: https://lkml.org/lkml/2019/7/22/1196
Sounds like it was picked up yesterday (but I'm not sure the
maintainer pushed it publicly anywhere yet).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkkaypJPxfaxa_-Q0jtzX4AreNQx8rM7tw9Z78wPfV7fA%40mail.gmail.com.
