Return-Path: <clang-built-linux+bncBDYJPJO25UGBBREEZTVQKGQELQV2D4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BC4AC3C7
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 03:05:09 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id 16sf6013770ybn.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 18:05:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567818308; cv=pass;
        d=google.com; s=arc-20160816;
        b=LVrJxogO3yfuJNX10B0VlnK9ZpCI+VZtzjkmLYfcXRP4OzXUsIj40g3vQXwjzmAH5m
         FKOOfKGrx7eDpvxENWKsZqzun56jaIxeRpCzjOGLrhc6R4y5jHqHEO5Zqjs1FCfo31Jv
         jNcIGuaTxTgyt06oaiRWsfMnjIIjqaaOVV1Hsa5SEr/M6rUG1Y+Rh3cOpUztY20glRk/
         VCguOYfqMtkDj9dMm192W4RlI6NL4kzo4iSRF/u2ztvRn0UBHOxqqaN8DzzsQYwd6PUZ
         T4UEpUitaNtA92DOj1QJcoGeFVm2ICrNlzpc+SUdPAdlY8Wbo4PJPw/KAx05VYpbkDvP
         0xZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TEmjWovJv0j194lBrDlqOQi61gDNMAOnR12O45ZkIMY=;
        b=WEqiQC8wyrkf5xbrzxF7+nsOxJBD0dO+A+9JC1PHxAtrETwB0w9Pcn6ST9WPexTZlF
         V9x0mc6JKii0qj9t2pXCIGQpXZb/tUwomuPmOdwLPEm5+8S9SgI/vhuctXqdfMPyEJpR
         zcjkVwzsFXpkZfV+qRN/48VnvOrEoHkjv7GCVOqMIL2y6+rOOgYCdxmKLiA/r44mfMCH
         1K1UDfWADNMUZcSZ8UVj97VRuDpJrU/djAOJFcyGMCOCUEyhSaR33Itijl/iGPl6fhEv
         OMbapxAiD/dvnCGq/PCLtvZ3LO23ZUG2iyrFIPZF6kCBlOX47mX0moOIf3UXj0aAl3nu
         YUbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oWfEuh3B;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TEmjWovJv0j194lBrDlqOQi61gDNMAOnR12O45ZkIMY=;
        b=HrcIYuru3dPR2kRvTAU+Vt7qzUICYm7nJdVxGsESe7MAp6wx3uxhmggRB3zqlTPrc2
         jgNbTeDxJXS/yE1GQ+oRY2j1ar26RG6A0hfXt6YCif4tIsjlp+Y6cN0ZQAcBJ3dIFxXo
         CxQe1U4Y8gYlfDi62VP/IVcUGFvt+lYwJLIIaHn0qRWHNo86tujDEC8MzdAT74C0HEUb
         g8l8wnCuY8rRAqvBX9XRbtnAyWC6vEL7V5cB5DzpTn0gTUKz10Dz2Fto4hb4SbIPt4sb
         BhMGH+QnUkX1WvVwanrQtAOfdiDHTs6gJxCahYo0Z/TlA9lSzsTk+xjtVFI6us5DNoR3
         smvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TEmjWovJv0j194lBrDlqOQi61gDNMAOnR12O45ZkIMY=;
        b=Dth1VWkzphDOOUlzXd7/tLZotgcDplrpXyukwx30rgbPeVUxEBOYY3VjryH4MPDQ2M
         iQKqjkEq7YINTf/XGS5mdDDhTaY3dx1lNSpsSgwKrbbLexcyRZLh+U4+fwEnZtTNvejl
         MN8CsOzbHi8ntB945h7g0HUYsMmavnj80dmqq43RQZpC6e1B3u5kPrBdNBpMfoNw/AKK
         1G3v9H6wA5DqjddiYy0BT2lWUxLvlpzuwsKdfBuI/P3h090dOeunMYSV92524aAZ7FDy
         2Uusf9TfvK7nI4SBzpX5NSqBZLPI9ECpnvvmwYMKuR4qWYrB3XxQvt7BYG6ZhJ+20+Py
         j4xQ==
X-Gm-Message-State: APjAAAVN1O4Dalnm+t3WYpnVxaZgUImart9V8bsRn1e051OwM0xBRBf4
	FEyZrglkT1RMwr+lpkoLnq4=
X-Google-Smtp-Source: APXvYqxELvXcFUeSXTzAP6FifRhm9GSOz0t04rek3NpSLotym+yoE/Nh37tpEAs5vqYG4iOC3aWpDA==
X-Received: by 2002:a81:94c2:: with SMTP id l185mr8577693ywg.359.1567818308706;
        Fri, 06 Sep 2019 18:05:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b9c4:: with SMTP id y4ls1242344ybj.8.gmail; Fri, 06 Sep
 2019 18:05:08 -0700 (PDT)
X-Received: by 2002:a25:ccd0:: with SMTP id l199mr8800615ybf.146.1567818308411;
        Fri, 06 Sep 2019 18:05:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567818308; cv=none;
        d=google.com; s=arc-20160816;
        b=Br41lFZV5Nw6Vk5FaNXLZr0Mbj99lR1RkXOZ4oSD+peAaNgXPphroHeeTf9HsB98NV
         NuWqF4HH9efnEIFiT3+Y08mhVdFAcU3+ZeCcsYhiMx4XCIoOTcb4Wi6z3V2zeDglZ+wC
         GYIrUsIBgkKrK32C5oxDB86MpHKvPrDCsR++Owjl15mvjQNtynC6i6Hv1wzcNuDucadT
         p7aGOLYwLdnbcJtwspKVbXBRXgNA44aUAWHunbKgBp/+2z2JL3w+z5JP1Zzxwf4pCc/r
         +sD0vxdJKoRJoNS7YrrXF3i4kxZmcs+/JY9LYHwPBqxDVG3dtuYW1kx+q3BTbWeyJtck
         I/ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xqepLaTSTfQY83HVDfCAAUaqMIJ3Bo3dybU2p4C5Hp4=;
        b=PRXxZTDRkUu/wmwPDlFXNERnUK0hCPTMewvOvifJhxrNlUwp0nk8xhrmiofM/zuPAU
         oRPTYFfYieXBN56jB28l/VowINuztjyTcq9uFNoRgb5kzRaqYidW7FW8qHUwaGIEBnhW
         eYBUzbQFP9Uh+1k4tMWzc42lNucSqlukZyXfmXyBLo63wvnXgdFILbiK5G8PoUCR3QFe
         HiFtPBZ280onnoFHSV9fyHmObhjsO80LXl0mpot1JFF1Tyd9DUZH9ljI0sp6f/eqL3jL
         2/MO4Y5fkkQacIsFQKLeSPWkLymqYy6Wty6FlFq61FnG9O0z8dA42VmxDUtdY2UNOZnt
         2wQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oWfEuh3B;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id j72si402215ybg.0.2019.09.06.18.05.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 18:05:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id w10so4469699pgj.7
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 18:05:08 -0700 (PDT)
X-Received: by 2002:a63:6193:: with SMTP id v141mr10638089pgb.263.1567818306938;
 Fri, 06 Sep 2019 18:05:06 -0700 (PDT)
MIME-Version: 1.0
References: <CANiq72nXXBgwKcs36R+uau2o1YypfSFKAYWV2xmcRZgz8LRQww@mail.gmail.com>
 <20190906122349.GZ9749@gate.crashing.org> <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com>
 <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak>
 <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com>
 <20190906220347.GD9749@gate.crashing.org> <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com>
 <20190906225606.GF9749@gate.crashing.org> <CAKwvOdk-AQVJnD6-=Z0eUQ6KPvDp2eS2zUV=-oL2K2JBCYaOeQ@mail.gmail.com>
 <20190907001411.GG9749@gate.crashing.org>
In-Reply-To: <20190907001411.GG9749@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 18:04:54 -0700
Message-ID: <CAKwvOdnaBD3Dg3pmZqX2-=Cd0n30ByMT7KUNZKhq0bsDdFeXpg@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Jakub Jelinek <jakub@redhat.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oWfEuh3B;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Fri, Sep 6, 2019 at 5:14 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Fri, Sep 06, 2019 at 04:42:58PM -0700, Nick Desaulniers via gcc-patches wrote:
> > Just to prove my point about version checks being brittle, it looks
> > like Rasmus' version check isn't even right.  GCC supported `asm
> > inline` back in the 8.3 release, not 9.1 as in this patch:
>
> Yes, I backported it so that it is available in 7.5, 8.3, and 9.1, so
> that more users will have this available sooner.  (7.5 has not been
> released yet, but asm inline has been supported in GCC 7 since Jan 2
> this year).

Ah, ok that makes sense.

How would you even write a version check for that?

Which looks better?

#if __GNU_MAJOR__ > 9 || __GNU_MAJOR__ == 8 && __GNU_MINOR__ >= 3 ||
__GNU_MAJOR__ == 7 && __GNU_MINOR__ >= 5 || __CLANG_MAJOR__ == 42
// make use of `asm inline`
#endif

or

#ifdef __CC_HAS_ASM_INLINE__
// make use of `asm inline`
#endif

>
> > Or was it "broken" until 9.1?  Lord knows, as `asm inline` wasn't in
> > any release notes or bug reports I can find:
>
> https://gcc.gnu.org/ml/gcc-patches/2019-02/msg01143.html
>
> It never was accepted, and I dropped the ball.

Ah, ok, that's fine, so documentation was at least written.  Tracking
when and where patches land (or don't) is difficult when patch files
are emailed around.  I try to keep track of when and where our kernel
patches land, but I frequently drop the ball there.

> > Segher, next time there's discussion about new C extensions for the
> > kernel, can you please include me in the discussions?
>
> You can lurk on gcc-patches@ and/or gcc@?

Please "interrupt" me when you're aware of such discussions, rather
than me "polling" a mailing list.  (I will buy you a tasty beverage of
your preference).  I'm already subscribed to more mailing lists than I
have time to read.

> But I'll try to remember, sure.
> Not that I am involved in all such discussions myself, mind.

But you _did_ implement `asm inline`. ;)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnaBD3Dg3pmZqX2-%3DCd0n30ByMT7KUNZKhq0bsDdFeXpg%40mail.gmail.com.
