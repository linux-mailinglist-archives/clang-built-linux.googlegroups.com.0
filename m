Return-Path: <clang-built-linux+bncBD4LX4523YGBBPUK32EQMGQEPOMFOPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A683402BCB
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Sep 2021 17:29:03 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id f23-20020aa782d7000000b003eb2baced8bsf5292293pfn.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 08:29:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631028542; cv=pass;
        d=google.com; s=arc-20160816;
        b=y670X3z5DkksJkqwhlHPR7M1/yjavGshnyOxOdQ0a5og8uWL4UWG3DheTEe/cGFzU7
         OgmRHtl4irdieVst9MmfkIxUIjyEf6/yjyHSnsHYoiGGkxbkYNH1u4qpyAO2lhKWxlfk
         0r98tfRimv6857WMSrtkQCWsYhCkO2fv0XRj+r/AF8FJfsqZODbsTy7uuAxwC5nhiWJz
         ke7JiCLZmGdyvyuUbVBw1WeLVF9CNp/SIenSErRUvVFLRPA7P33p1phQ9DekqAB/IPXW
         IPT5LrQjyMy8tm1U5PJaWAoDB7u0n9CG6B4568z14GbDU1Q1aizt7AdCdqrbhOrDPUxT
         8wfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=iPguKdfgLe70eKXPP+Z74R+7cXizUwJdGwxsrZk3SMk=;
        b=ulcjX7dfeThTwkj2rST49eTyhkT93/YDM9XSlM60WD/8OXZP9o+pylR4am94IjCxMQ
         ipwXIO64dBeltTkhb2ZFBSH6ZY83B8rg3i+oH01W/qQUILHEO8jyOcvYExe/xq0QOJNO
         qtoHM7MLcv3AXHFcdIPqbpuck+NjQJDGQxrFE5fktcMNmrBvSCk9EZa1I2OXs7j2y0iL
         ArtlWVew3OrY/7qukGhhsbmeNyUvhAZxgfprMWFnJGtU7qmXDEh+a8o9jrkzrEcEPD3F
         +/VXeqaKJDCqy2/CuHV0Ns8AO76+Ud89kFN1Aa3k6yWmHYw4b20M9az0di59ff2s5i0H
         gsXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iPguKdfgLe70eKXPP+Z74R+7cXizUwJdGwxsrZk3SMk=;
        b=RwPpsLOrkHwzSPFKXsUx2ErRhGXqiZlhw+WLFEWyXV3p2k5V5f145cttZLmZAmSPDt
         drBtIwwMKWgJsAAloCMz20V0VUbLldC8ajX9CKRWnxiVOwGe2JOFyt1f6ooE07E+Ao+T
         r5COQQhxKPr2J5CjzG6wolQHVlHKkqkvl/JbdQDlqcs43vpOTmHOER8Z1w2MJa78Nv01
         muT8hTj/6KBcDOU3vur1ESSS3qN4zvWJ7WMoK/BG2DLgHptIjQywPEk02Fzqd2sV5JBN
         qiaTiksCNk9v/vU4JcNLSRRPMaDo5mp6leLzGiSk7FuUetZw9wODAPFgv8QO+nkYw7lt
         QXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iPguKdfgLe70eKXPP+Z74R+7cXizUwJdGwxsrZk3SMk=;
        b=L5DMXRjc1bmPpu9fNOSNz/59OMyd58LjCFfU5ESCYqEetJ9LeK5Q7tYThTYqR/u+a2
         bVaYMhjGWnWaq8k58jfN29a6ryyYeAt8ZjaH+jH42LoSTLBkGFztXgmviGf1LpbPH5U0
         HKLMPbtia19uche/HNnJ/O91swHVJwukPb6w1LUzes4H79WqgB0w81nGmWkKs1wvFpF0
         4XJWhd7XDhKIlLV0Qpn+DQ8g8tYNiiBuatP1kPJRDi9O8x4kgUFamr77tfYlAGWtUlZO
         2ZbyZy2ppmpvct4KieZaC2TeVqkm75EGZ978L7JhsoaevLIQQLvPopzeUd6Qz4Mj1Cce
         fikg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pEVfXDdcFfYDTD5aiyewesWdQ3ttNgPrSlbDkkhkOq86sU/Ix
	lxDjSP5FwbuGvh6cxYVQxzE=
X-Google-Smtp-Source: ABdhPJz5JvDDIEMg5rRjgXK40ge5Vy3rRSIIrauUEshwnntfLEGcJ4DgU/O7UN+q8P5Hq7OgVveGvQ==
X-Received: by 2002:aa7:8718:0:b0:405:1645:16c3 with SMTP id b24-20020aa78718000000b00405164516c3mr17102972pfo.32.1631028542272;
        Tue, 07 Sep 2021 08:29:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fe18:: with SMTP id g24ls5226799plj.0.gmail; Tue, 07
 Sep 2021 08:29:01 -0700 (PDT)
X-Received: by 2002:a17:902:bcc8:b0:13a:8c8:92b8 with SMTP id o8-20020a170902bcc800b0013a08c892b8mr15239658pls.88.1631028541588;
        Tue, 07 Sep 2021 08:29:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631028541; cv=none;
        d=google.com; s=arc-20160816;
        b=fvFY4iS6+QLMuaJUKkjHYQ0QKLCCsPslfZf24O5oF+/Oui73mBxsbiyCRszaN/4khW
         7PvhkauxvdoTkajxjkny/8rf53uwBK8TNtKhg7WnJDL5hm4AHoMKaWWfc2WJ2qmB+xha
         r2GV4rukkGluwQakuQ0c6vzekYDP0GkAVHcg+m0f3K5A7ppnTig6AkbaJ257R8z5daKB
         p+QRI0cvy434W86se9GnBrU6HxrGaRf9xJDF+4kyrhXpOUUu29Y+AQrEux+K4PmPyaRO
         5+bLTcXm/L53w55EzxNgaFY3UU12LfJhdNqqwukrUAjsGqKp3CK9DQwGtrcC8mRWL5Cj
         AixQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=RxPUL4Fz6ueYkWOA5l/E6gb1g8mBLW1NR7jxxFF5iDE=;
        b=RspjXZ7gPyxlMu1voyBh37imPz/xlcy6K/UwCmHf0REzHQ7DnMGCyjIVpvXkMzevyH
         3YQSnLzuths1nAHviklKxE/6mPpGaQlCy5CvBiwXWN7H8Tc28TZIlfOMgj26Jwjea1lA
         7ZEibSswpXmABZULcGOOeolvzGXfcGI/Nh29o+69ooZXoSvXmnowpDJN1btrSHdhgtHQ
         mdvPSBsiJecX87FYR2cO/54HJBhsCnwVezCXt/iF9ZZPULmSpLF2WpnP6QSozgL+GQTq
         n1bYTUyq+z0o+eVtVw/hU1nQJh+yF/1W6dToh2e8ADAEwgI2KanxMGtjCt749BLBqOA2
         Laog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id c186si567493pfc.5.2021.09.07.08.29.00
        for <clang-built-linux@googlegroups.com>;
        Tue, 07 Sep 2021 08:29:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 187FQwd6012880;
	Tue, 7 Sep 2021 10:26:58 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 187FQuaU012874;
	Tue, 7 Sep 2021 10:26:56 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 7 Sep 2021 10:26:56 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: Jakub Jelinek <jakub@redhat.com>, Florian Weimer <fweimer@redhat.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210907152656.GI1583@gate.crashing.org>
References: <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com> <20210906172701.GX1583@gate.crashing.org> <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com> <87lf49wodu.fsf@oldenburg.str.redhat.com> <20210906194808.GY1583@gate.crashing.org> <20210906201432.GZ920497@tucnak> <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com> <20210906215218.GA920497@tucnak> <CAHk-=wiKy45R2vMHhjr16_Q+iYea-70byuj=mHLvp1GURqdYPA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wiKy45R2vMHhjr16_Q+iYea-70byuj=mHLvp1GURqdYPA@mail.gmail.com>
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

On Mon, Sep 06, 2021 at 03:24:41PM -0700, Linus Torvalds wrote:
> On Mon, Sep 6, 2021 at 2:52 PM Jakub Jelinek <jakub@redhat.com> wrote:
> >
> > It is actually not that bad, stdlib.h is indeed included there because of 2
> > intrinsics out of more than 5000 and when one doesn't need those, just
> > #define _MM_MALLOC_H_INCLUDED
> 
> .. and on clang?

Clang apparently has __MM_MALLOC_H  as header guard here.  But Clang
does say
  #if __STDC_HOSTED__
  #include <mm_malloc.h>
  #endif
so they do not have this bug in the first place.  GCC should fix this as
well.  I filed <https://gcc.gnu.org/PR102231>.  Thanks for bringing thisd
to our attention!

> There, I think you have to undefine __STDC_HOSTED__. Maybe by using
> -ffreestanding?

That defines it to 0, instead, as required by the C standard:
$ :|gcc -E -dM -|grep HOSTED
#define __STDC_HOSTED__ 1
$ :|gcc -E -dM - -ffreestanding|grep HOSTED
#define __STDC_HOSTED__ 0

Yes, that is how this works: the command line flag says how the macro
should be defined by the compiler (and changing it in your code is UB
btw).

> Except if you use -ffreestanding, you lose some very bvasic
> functionality (*),

(see below)

> And they should very much *not*at*all* be considered some kind of
> sacred "this is the only way to do things". Because that is clearly
> not true, and has *never* been true.

Take for example <stdint.h>.  There is no other way to find out what
types to use for exact-width integers.  Unless you really want to do
  typedef unsigned int __attribute__((mode (DI))) u64;
but that is rather unportable to other compilers but GCC.

<stdint.h> *is* the only portable way for getting exact-width integers
(and some other things).  This is not something we decide, it is not
something you can decide, it follows directly from the C standard.

Using it is easy.  Not using it leads to the forest of include files and
preprocessor conditionals the kernel currently uses.

> The usable header files are the odd special case, not the general case.
> 
> Really.
> 
> Is it really so hard to just admit that the kernel shouldn't use those
> headers? When we have 30 years of experience in doing exactly that?

That isn't the core issue at hand.  Yes, Linux has implemented all of it
manually historically, and there even were good reasons for some of
that.  That does not mean that it would be a good idea to throw out the
few standard C headers it does use, and implement those with compiler
internal interfaces instead, which we advice you against.

> (*) iirc, with -ffreestanding gcc doesn't do all the basic memcpy()
> optimizations. But I forget the exact details.

I would love to hear any details about that.

I do know the Glibc headers do (or did?) some premature optimisation
wrt. some mem* and str*, hurting performance on newer compilers.  But
you should not be using the Glibc headers for compiling the kernel at
all anyway, so maybe there was some bug thereabouts?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210907152656.GI1583%40gate.crashing.org.
