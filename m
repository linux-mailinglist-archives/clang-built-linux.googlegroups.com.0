Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV5SRH5QKGQEUWIXQPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A1926C780
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 20:28:40 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id b18sf6835364qto.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 11:28:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600280919; cv=pass;
        d=google.com; s=arc-20160816;
        b=lGB0d8u9noxOjxn4+BFz6dDgR5aJGUEgYgUmMsMLcTQQK2bme/WyS0+snZN+jvlabV
         zzK96hTOs89j9LQQutmqYM4Olm8mPq4DDfmngF0uKxs5MlRIj9iqVPbwoPj/6eTAybvR
         vWdfiH9CQb+TwZT/ZWjs+G39ix5KCEa98JTZyXx9RmkoOQM95KlvuRBSkGXcrsM/uhaG
         BJ60d8DNoFEV/KISySjQlGRSXAsMYkBmlJSx/ueLozEqP1CxbUQgGTsHAy+HUsXzjaGf
         mO9aZNaea4Cp92tAffcBiQhMJdCgEwwucyvO64cKd0HE3Z7GyN/5YXmzZfCb1RhsBs3x
         yeUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+G49TcgvsXCA8fDUiBwbqM51nX+JyF+nHAhPNhd8QIg=;
        b=wPmX00Uww4YOAXRUwfr7ooVtyrz7a9z9WdUBxRBgAdDhdMGiOL7afqxPg4+sPEgUxV
         8suo6FeKNCTDL2FXsHIMoldjIQf7yl913xGvReG7Ek2jSIfPQd0+OnEybVYIfA4d1hJr
         4dF1zultK1zh+d7wMqnP6lNaxh5Ggkn1hmr806lQKg6BNx70ZD0KMKTSKWWAYNLRUmih
         F8Q4oZcjvlVV5i+TjRqDrgirpB3oerHp5KySwpJRic7w65AGlc4zmdajnSMzwIgChjCv
         YG7SF2cA9AozDG08jgzG09IyanmdqWKPut45Azgdgdy8SmCAbfTJ06OscnxIx22Qbe2u
         kSjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UJn3OxXs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+G49TcgvsXCA8fDUiBwbqM51nX+JyF+nHAhPNhd8QIg=;
        b=QDioRs4SLxIwOz8l/fBlEG6kmLP54tZGhu+lBkU7jnP0EZQmuxy0NAvLyCZT7mC/oZ
         XswHAtIvzYRDvwCVgVKQYlzkNB/sUy/Gu3U5blPGkLwc9eemiRLd00/7YkXrhHi1oztg
         zmPbimfQFwfduhs07nfbjnC8eu5UMf3e7EkA0caN8+sJZ/SfqXkilRa5C0YLS73HmZNM
         Tw6sk798+T5DPQGastUQ+ygBPzwmhlGA8p3pwoiK7BaJHVsqjzKQW858F6svQfWS9LTg
         Sgll6hBIxuk4v/1hIjq1ikBvOo1ZL16sKRKfqFoViuANDZUc6rNadMXA3JYb5cQ4OIV3
         Y38A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+G49TcgvsXCA8fDUiBwbqM51nX+JyF+nHAhPNhd8QIg=;
        b=VV+ic9GFT9OJFaLT8m0DY1DWKVkzNrCLBaElMwDsx6YQ89HBJW0CFmuknQtP8Vc35F
         hCmpX3U0lq8EfMTgLn3c+HKyXKI/bjglRMfSmA3AW829N7LlNK81UMb+nX2quBurTW7+
         Zh/BLbgWQitgAD5i+pjqsBxNfilBGvjruVgY/5MVwdNVdbJ5YO2Wx9aWOY8DYatN3Siu
         4Hh+D5Cee0kKsePDr37XWNh0Fa7BMI8qwcMKKkLgsTriXjt7GLYavMq9rjbFlzfIizBh
         LemGNfrKFHbmx9TFcglqAswY7sUZOqRhY5PTMwZABLXwLonImyJiKy0R22Tgbfsv6ane
         3zfw==
X-Gm-Message-State: AOAM532lg8UbYGka+9dexesuwV9qGqK7XCKlujrOHrNvRSC24nhUAsWk
	jd5FzkacN5dXXY2mlBDKT/4=
X-Google-Smtp-Source: ABdhPJxxKDdWJRXkjxdjtbMxeuZ1YKz5EoY/Avr4nSLWLfiAc5AdtRQbqde6tK7trNppCvCl6yhULQ==
X-Received: by 2002:ac8:7b95:: with SMTP id p21mr23812413qtu.139.1600280919575;
        Wed, 16 Sep 2020 11:28:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:21a8:: with SMTP id l37ls997897qtc.7.gmail; Wed, 16 Sep
 2020 11:28:39 -0700 (PDT)
X-Received: by 2002:ac8:7c90:: with SMTP id y16mr11504620qtv.45.1600280919139;
        Wed, 16 Sep 2020 11:28:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600280919; cv=none;
        d=google.com; s=arc-20160816;
        b=edt0Cb3VYZDFwQPNn/t/gKEZifH3LSCixDbKYnoKFlDvUReKJ5wYPXYj6WfsSOHCa6
         ZB8AnCbydcwnE15U/4LpODe1cx6nxhHrqcOnrlWjD38kzQwF4xySy/ANDp8+rnhEnipV
         aLWz8BD8UXX1kBswBciE2STkZrfZlrspi6lnYZj7YO83Z0rz4lLjtYiTCYMTrJk3XFY6
         Sk5vskuejvHtocshZuproMJdiFQPe7I/74kbCwmJ3Pk5LnFTbEjes6U+gfA60wvC/jv3
         h5MuyUPQwqi1i1DJjaeCxtwvf23Pyb82JLnUC8tH0hwOMU8Vt8Wb234QZuoB4GFNaSAg
         fNmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+hNBdZ8eBcNPHlpjzcCHTGcOrY0T16QrOvnANJBRf5g=;
        b=coJYFxUZ7yqcvk+m0jJgMH2tZqtzFdWCUEh2oWeWcjl5ivKD2LCGpKaXJXtcafT1lp
         rEjel57nQmUHJtxcBuVHJ0PNeoQg1ZTo4bEDVpAVgRdhGwtTq9StNEeIdz+IYt2MU9oe
         GmG/i3TzIRu3VL+5STr94S5N2BrrLq6Uuf3ZU9Oa2NghIAmXlep+qcSlUFESoLHubIUf
         4K7IN+Z989jLCW7swpX7Ho5P7AChaS/LvLnfpcvj8ahpnmbUgXHJSHsU6fSmgcwa0SoU
         3q6qJ1NGMdhE+iKgacZ9CD7f+Ujxl/DdTrpvBKKn3scEpyOkGejB0dPbskm0ENw/byAW
         SLrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UJn3OxXs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v189si970228qka.7.2020.09.16.11.28.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 11:28:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id k8so1127070pfk.2
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 11:28:39 -0700 (PDT)
X-Received: by 2002:a63:5d57:: with SMTP id o23mr3347261pgm.263.1600280918024;
 Wed, 16 Sep 2020 11:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic> <20200915215054.GA1104608@rani.riverdale.lan>
 <20200916113449.GH2643@zn.tnic>
In-Reply-To: <20200916113449.GH2643@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 11:28:26 -0700
Message-ID: <CAKwvOdkjAHv_=+167x6paXpO6QsEEPivZd=tj+WGpzg+pKjgtg@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>, 
	"Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Marco Elver <elver@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UJn3OxXs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Wed, Sep 16, 2020 at 4:34 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Tue, Sep 15, 2020 at 05:50:54PM -0400, Arvind Sankar wrote:
> > On Tue, Sep 15, 2020 at 10:49:12PM +0200, Borislav Petkov wrote:
> > >
> > > (Btw, clang doesn't need to add that "xor %eax,%eax" - panic() should=
 not be
> > >  returning, ever. :-))
> > >
> >
> > I think this is because panic() is varargs, and clang doesn't support
> > gcc's -mskip-rax-setup. The normal ABI requires the caller to set RAX t=
o
> > the number of arguments in vector registers.
> >
> > https://patchwork.ozlabs.org/project/gcc/patch/20141218131150.GA32638@i=
ntel.com/
>
> Ah, good point. Found this in the ABI doc:
>
> "For calls that may call functions that use varargs or stdargs
> (prototype-less calls or calls to functions containing ellipsis (...) in
> the declaration) %al is used as hidden argument to specify the number of
> vector registers used. The contents of %al do not need to match exactly
> the number of registers, but must be an upper bound on the number of
> vector registers used and is in the range 0=E2=80=938 inclusive."

pt. 3 https://nickdesaulniers.github.io/blog/2014/04/18/lets-write-some-x86=
-64/

...2014, jesus...

"But you never can tell exactly what the compiler is doing. It doesn=E2=80=
=99t
always come out the way you want. Like a dusty pane or warped mirror."
Seems I'd learn more about that than I'd could have ever envisioned...
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkjAHv_%3D%2B167x6paXpO6QsEEPivZd%3Dtj%2BWGpzg%2BpK=
jgtg%40mail.gmail.com.
