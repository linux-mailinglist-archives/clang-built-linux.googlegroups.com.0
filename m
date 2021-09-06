Return-Path: <clang-built-linux+bncBD4LX4523YGBBZXQ3CEQMGQEBJZVUDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB24401DC1
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 17:48:55 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id d23-20020a056602281700b005b5b34670c7sf5251654ioe.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 08:48:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630943334; cv=pass;
        d=google.com; s=arc-20160816;
        b=JsxwDKcikA9AenUBPJAZJ1t/KBKmDQB/ALVIarp5r76Yx+TrBtM73778iv7SDU0bT9
         JRdACki1cGKXvNzwnedepWMVcAQgXzO35Cg4GLcedLVC59133r7V/YpeOfk8EmHTsyex
         FkiKADY2HHSbfYbSKifgOZEBLz3Et2PI6NX+YFi8Q7Wgn7GlQHTXAcdXLpbctQPsBCT2
         /yViYDafTXexep1qJ0yPcBFibV8H8NhS0qymuS2I5ejBqyukqiIdb4R7O8fQ66tlH0x8
         E0PmWgc/ZmTdmlrUxr87VlMTB7xCNsqG9UJ0PmivI60PbokDcdu8SsranLVuDRgTGI69
         TNuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+wjrKiY2icClvWnkMjY9AvyPEdF2wzPW0rSZdhZAShs=;
        b=ini9ldQahtWd1MoytJlI4z8pjaXM1Wh2XnuI8c1wyxzELgwOPgwd4QV/1p5D46z0Bw
         ycQb0vv6TfH9wrLx/8U1JpJkbAfXli7pcy9NHsF7zjLRgma87Jx4lJ9iUiGVXOJzAUSg
         /kv5pNnstoJyxqmAEJSgkc9xRmiJrXm0/bpW9eJqCWv67tjGKRWp39dJyvGWVBUUD1LQ
         1pMCl0tJ3FaMgbcmyaqHF9D36fahm9fSz3KFdn20rvoCJV5V7b0vdu8jMXzyvhSLQv9C
         ThybUPnwV8PJ2zaJ5RUOUAlSWseZmZ5Su8gPMSpXtoInCQuIdL5Fkd6ON9Z2K9ZuT2Gw
         NC1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+wjrKiY2icClvWnkMjY9AvyPEdF2wzPW0rSZdhZAShs=;
        b=WbGloskgfXdHLJVrzuIl0d/JoYsWO7LpCALk/ed7aZNH6TkunnjTtCMoxrY4l6lHld
         AOGv2n80OFNGKDi/zgVM9HrhCY3+J9DeE6fdRZbuFO57l9ikA5ZvogwvUDjl0/ktYtOE
         YJX86ld1AYQdbJtm5XfGgLbqpBNbmYCrhE5SzvTqcvalalqzbe/sAWY+sv4D/HOpp7JW
         X94NFD5eq0jFtk7CCaAmCguTyVXS80VKH0X7IHt++QEzJowZKUXEh1HALjocuOr4fkEJ
         Uqk1JcZqp2VKN7MnTJCaZlMz1RNpPHEJHGaR3U4iE7yVD3oR5z2z307g6zaSHeStN36Y
         YsVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+wjrKiY2icClvWnkMjY9AvyPEdF2wzPW0rSZdhZAShs=;
        b=QaH/opfO4V8FgLlXHp8ZgXZyyV5I8XORO6w/i8MdgpgDPmKkJ6BgUZIJRXclo3Os34
         bJW8imzXolbm1DZM5hCw862Gh8uwNuTvliwOrzlicNbFU3pcPwrxlBNlMMgwMcG8Ydbw
         uFxVEoOKrYFWpL4hzImgZcrlBbPdSEf9+k9Oe/WuJ0x/Hq8EAo81rco9+L36RkHjatWk
         vW0uC68IueWY5NufvEj3qMJ2VvYzhEJfXf/DDjc3S/RQCMH7eM+OieMdiLcz92xSm4n/
         iw+UDteiLQmKSdfzL0C/Sm5XTzp+acWiAynSnmTErDv8ZJsJj2CM5SOGaY76o4cbrWla
         giog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oUInMNJdseOaSVXiiMedjMupVLx+WACagknPB6RV3RwWYC/ed
	uyOnjgd87F0Nzwqy1wf9kqM=
X-Google-Smtp-Source: ABdhPJyyyAxIm6gV77pnGlnHsDM21IELjqqwbE9JJ+o4HG/UeNa1hTrY4FmjmqMRLpGaNqTIyPoVIg==
X-Received: by 2002:a92:d085:: with SMTP id h5mr8385880ilh.246.1630943334702;
        Mon, 06 Sep 2021 08:48:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:148b:: with SMTP id a11ls1023540iow.8.gmail; Mon,
 06 Sep 2021 08:48:54 -0700 (PDT)
X-Received: by 2002:a05:6602:340a:: with SMTP id n10mr10181700ioz.188.1630943334333;
        Mon, 06 Sep 2021 08:48:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630943334; cv=none;
        d=google.com; s=arc-20160816;
        b=IWNhFNa2x/bP92CpvqhdGb5MymHyYdWtGDb8uZQZKv1kKmnPoGW4BqAG/J+iMM0kfR
         nMWVx+Vxvgnl092PB2PUYJSbWk6CY/uNpcI+Gli7pfOWp+LinxEdsufGRahCnRIjhoSP
         3pYDPtZGJNytlCTSMaaIaOxY/joe6GNRFsq81fAWZoJIjEng1RMFhk6ZGcDbRKzLMCoz
         GxVjoBiDlrxpSriT6xJAG2UZwozTdf+XZZ4lsV7JCXY1caFcbIkjMXblPMk9iEdJTmG4
         lo0f1ulqPCEAx86eMQQigOQMChj3UrDZJRN0yB1TMF2t7TEX7LHpBqROVGMn9bFBJWem
         Sa6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=u19ScTp2L3m9If2SsiRMLSEngM+47Ao87wLKhmL+53E=;
        b=OCaT9so0iAQ3sLJ7rV83T6BYuWpJ1G1qJBOfx9hRWa16Dy0xxv0Fo0wCoSRqGvIp4D
         UeozHOkaSLn7A6pcnMzAoPbOie4ieWADwmmTvuxpPYQcW49RnCwK9Sm9vH9pvbqrCw1H
         nxuZvJJ4n+mJaZ+TmGZXCQtrbp2iOgOII3dW0MUlKyWFek963ZaZKQ3IHs8FcOjFeQEg
         o4fGlKxFCcHAsrQfF/HSr2mmXuKKRXcjd63tijHBCYrWH6p3NzpVJqqyXe1MWPG8qmC2
         gb+xaPoFOEM4bGpiaGXiloekah0J1vRa0Nl4J9eXSeDaYm5AQxE8/PiKIyBMcBPDJqXr
         ZvUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id x11si494502iog.4.2021.09.06.08.48.52
        for <clang-built-linux@googlegroups.com>;
        Mon, 06 Sep 2021 08:48:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 186Fkn6J005485;
	Mon, 6 Sep 2021 10:46:49 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 186Fkmi9005477;
	Mon, 6 Sep 2021 10:46:48 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 6 Sep 2021 10:46:42 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: Florian Weimer <fweimer@redhat.com>, Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210906154642.GV1583@gate.crashing.org>
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com> <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com> <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com> <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com> <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com> <20210904191531.GS1583@gate.crashing.org> <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sat, Sep 04, 2021 at 12:58:50PM -0700, Linus Torvalds wrote:
> On Sat, Sep 4, 2021 at 12:18 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > And the C standard requires you to use these headers to use some
> > features of the C language
> 
> That's really the point here: we don't care AT ALL.
> 
> The C standard headers are simply not relevant for the kernel. Never
> have been, never will be.

Yes they are.  It is the single standard way to get the functionality
you want.

These are not library headers.  These headers are provided by the
compiler itself.  (The one exception is limits.h, but you have no use
for that in the kernel anyway).

> We care about the low-level compiler infrastructure, not the standard C headers.

I don't know why you think you can separate that.  Take <stdarg.h> --
there is no other (portable, standard) way to implement receiving
variadic arguments.

Yes you can mimic what GCC currently does in its <stdarg.h>, and hope
that keeps working on later versions of GCC, and on all older compiler
versions you care about, and that it works on other compilers as well.

> Those standards are designed for - and try to cater to - a completely
> different audience.

"""
  This International Standard specifies the form and establishes the
  interpretation of programs expressed in the programming language C.
  Its purpose is to promote portability, reliability, maintainability,
  and efficient execution of C language programs on a variety of
  computing systems.
"""

Is the kernel not written in C?  The C standard is not the POSIX
standard, or anything like it.

> We do our own type system, and again, we don't care at all about the C
> "official" type system and odd name rules that change from one version
> to the other.

<stdint.h> has existed since C99, and has not relevantly changed since.

And you *do* care about this feature, deeply.  That is why the kernel
has u8, for the exact same reason standard C has uint8_t: to get exact
width integer types.  The kernel could just include the standard header
and then
  typedef uint8_t u8;
instead of the dance it currently goes through.

> We generally *cannot* use the system header files, because they bring
> in things that the kernel simply cannot handle.

Like?

These header files are part of the compiler.  The compiler is required
to provide these to be a C compiler.  Without using those header files
there is no portable way to use some important features of C.

These are not library headers.  These are not headers provided by some
third party.  These headers are an intricate part of the compiler
itself.

> > You also need <stdint.h> and <stddef.h>.
> 
> No, you really don't.
> 
> We avoid those intentionally, and always have. Because the system
> header files have never been a good match.

Linux re-implements all of it.  It *does* need it, it just has its own
implementation if it.  It needs the features it provides.

> But it does look like gcc and clang have both ended up exposing the
> interfaces the same way, using the __buildin_xyz model to just wrap
> the standard names in a namespace-clean way.
> 
> That really wasn't historically true. Back in the bad old days of
> varargs etc, you literally had "va_list" be a "char *" and the
> accessor functions were magic macros that updated things by hand by
> the size of the arguments etc...

Before C90 there was <varargs.h> instead, and that was like that indeed.
The standard C <stdarg.h> header *cannot* be implemented in terms of
other building blocks in C.  This is the underlying theme of all
standard C headers.

> In ways that a lot of other "standard C header files" very much are
> *not* - many of those are about the types that the system provides.
> 
> And in fact often the kernel is the *source* and definition of parts of them.

That is not true at all.  These headers in no way depend on Linux or any
other OS.  Some of it is mandated by the C standard, some of it is
mandated by the low-level ABI used (the size of an int for example, that
kind of thing).  But none of it is from any kernel.


I get that long ago in the dark ages Linux had to implement many things
from scratch.  And that implementing things from scratch is more fun
anyway.  Also, everything seems to work now, tinkering with it is not
necessarily the best idea.

But that does not mean that if you had to start over you should not use
the standard C headers, or that it would be a bad idea to use them more
often now.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210906154642.GV1583%40gate.crashing.org.
