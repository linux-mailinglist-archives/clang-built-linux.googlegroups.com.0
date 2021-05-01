Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJGHWKCAMGQEGCR3SLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 677B7370482
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 02:41:09 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id 19-20020ac24d530000b02901ca2d4d7c63sf525543lfp.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 17:41:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619829669; cv=pass;
        d=google.com; s=arc-20160816;
        b=oayNmMIMIn0CWiSv6s8tZjHsgGHqP7EqeD0v6gkoDf7Rh0/dOOCX/4T9uiM2qeoybZ
         W0I1Shx8mBOFcttPuracrlbEjZCSdi5zigtzFX2icdlYI/eoL3/V332ABPgAakvaJIR5
         mnINNMevfxrzxN8hUJG3/ZEQEcEh9dSr95U2OgKfNJIGHAIZO+9K4asrSZir+KVP0CbH
         oVzynkj3LKGGBmRFP+jTX2DYdZKr8UBeTpXeCII0TEIqGwhnfooR7l1kzu+QsNIiWnhp
         HcNNdGTTUZbOn2736uQf88whZSIgJnYYmocn5gKMxJwMxHiAoHnrl/uWE/KY1mcN2XAw
         5KtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=capHtgOg/EqPFD88aMMVMWhZX7N+liC0xHvO65gQu6Y=;
        b=acKWrF9sid9/kJVv62J9XisaBi21m+/X9gUd57YJDP23dRlhA6lCifRqDuR7GbGbbi
         pu1vbXHV6d8PIs0Wz5wJ/4z9OwGtkLmk7d/Odug+nfcko7xFU59DKoV8FzbhosQV4rCF
         tCkH12xyPB/LmMSJG8aUL9OWcGHWykXDWfs47k/Q4zxBvA0+x81s1RlPDy4ZDo/YBj6i
         g3/8Czz1rADBAW3AOG9RU+NArkMf6UYtIDtKl8ziadcVXqUaC1RuAHgywR2DnnWRzDN3
         lp6Z24Jf9VsldugPYGOc4qd4MdEcLHTVUI+6E4VeWCHu9GCI+wkutnGItAoie/dUYUSJ
         ODqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s+Jgcfoh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=capHtgOg/EqPFD88aMMVMWhZX7N+liC0xHvO65gQu6Y=;
        b=Fs6SQxSjLia5Hr2p1ZHfF3N2VZaO+HClbftyducVdMnfiXIWrfpAdipIf9AO3Xhuzy
         oGf1lt6JiBK2413nv8ptypxODVFF21re3/KjDMvRwbFDshOF7OmREUd5XsTHM0TtHszn
         q56TfA6bahxUgati9lUQbN9FRH7vE2/ShMuoF5wfr25YbML94oFKQqIqJHMrrfo8U1LM
         491D2AkyMYyTAVo5V4wB1hFE0X2MtKJdv/09JYE8qHKRiSbAa8AYqruKDbJ6WO+Ox/dq
         hcyPMSeaB7/2frn4YwvB6e83WdEOLywALtO7vUHOkQowvsJ2IyONe7evbTlGW73Jv0aJ
         GLvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=capHtgOg/EqPFD88aMMVMWhZX7N+liC0xHvO65gQu6Y=;
        b=eOtILuhcVMHuqoSG74d4d+rEylK9Ftt/pkN6ww3YWKYOm2UgVoKtCg63mwfPla62x2
         VPd+9MMX4oDcOIys0uXdbV0VtmOEjPnKrjCrQSRuM/GpZznPYYHKv0RP/VfTyavMNhwm
         1dJanwDb165/nZWSYcWiK/5umwwnVH0t9drvxGVn/i34bcsIRwTu9z75l82h2y+bj5QF
         EfCEgF6YyzlV5k7DNV1MFZBMK4rV8OWJI5VhVp6F+hTtLC2gwhBMxAAqY6cGrJW2wfjM
         Ok24+RTLi9Xb6I3Kfh2ppphhRWFpup8oCG65SmDsTHuOios+EaIbojYf/em+Q9S9vRRM
         nS4g==
X-Gm-Message-State: AOAM530llrF20qqmax0aL/gqyIrgdRmTz/l/ylRdyh2p3Wn8VqahwS+b
	m7OQonB0ZXIKjNNR4MJs5HU=
X-Google-Smtp-Source: ABdhPJxfvdB2T5XKGZ38NTCzgtJpHTUiwMvHC+Ko2yNAabdpbCVkBxhV2ZZxykr1ivSvZoYbhS4quA==
X-Received: by 2002:a05:6512:2243:: with SMTP id i3mr5350308lfu.592.1619829668992;
        Fri, 30 Apr 2021 17:41:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls4125827lff.0.gmail; Fri, 30 Apr
 2021 17:41:08 -0700 (PDT)
X-Received: by 2002:a05:6512:224b:: with SMTP id i11mr5154204lfu.119.1619829667965;
        Fri, 30 Apr 2021 17:41:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619829667; cv=none;
        d=google.com; s=arc-20160816;
        b=YSAWUOznl5jM9sgmSzErFviRb/GgPnWx9XiFKNFzgapK9z9wOItZbGcXyqfFjEpgbx
         2bt0vxKehIb5bpPCyYQZKUjKiI0u/wRfiCTmCyqKW1gXiIMOVOC+zZXpPLrMrfosiM6i
         wVP+ucaTlI+KSgC+WgXs14uqaHq/DEbgN3TFQFVIkE2Oy69rpOI+kEP29Xbf3On0slaD
         U1G/9az7zuHhVGVWKaKhNx397ZtUU/9uXfsgWmrG19dRZEhrDLYnibkOTqe9akjJCc8y
         EsVW5Mw4HuR5HQj2YDYgqzjJlK4wX2EP2FZvEodvQ0zaGfGmQBZ+TwL8hqjp+IoAhCnh
         glCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=94RJ8Mzed9hEK2GvRJDwkdGFD+7EIt8LpelWc7KS5BY=;
        b=paMVlw1LDGtt0yDowPlIHgDPTN7CDRkwVBdFoP7NjjEBwBVCSy0adhq+2KG39fXZ5I
         rfbymkLSwdxemmIm743dlUpGM58ivo9JxFkxD8kMdXQyo9vp6Qzx46bjL480LOY5G18u
         C5J7yeIZyOVcanEoKY3lWyn5GGIWv/MEMnCo0jpwGafGa6YyA1Ezr4w0dARr4dbWIhgu
         ByH4Ktw0ned1K+JWbh4YoQykcAFyKVc/EzvOP3sagHqx6dqkYqMqLmoGGZdfaiH4HcAS
         jwHq9NVcyclCX4bYO9ZIRs44yKu4eRs///GZN/U+SEX+Myr83vWyVYHeGI69jyvWHFVQ
         jiuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s+Jgcfoh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id t14si479538ljo.7.2021.04.30.17.41.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 17:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id v6so276833ljj.5
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 17:41:07 -0700 (PDT)
X-Received: by 2002:a2e:7f1c:: with SMTP id a28mr5587921ljd.341.1619829667567;
 Fri, 30 Apr 2021 17:41:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com> <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
In-Reply-To: <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 17:40:56 -0700
Message-ID: <CAKwvOd=56=XJ9UPKVYJ=pTRGMNzdQe5k-rsx=66XQhWtrwtEqQ@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Linus Torvalds <torvalds@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s+Jgcfoh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Fri, Apr 30, 2021 at 5:25 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Apr 30, 2021 at 5:23 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Apr 30, 2021 at 5:19 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > A quick:
> > > $ perf record -e cycles:pp --call-graph lbr make LLVM=1 LLVM_IAS=1
> > > -j72 allmodconfig
> > > $ perf report --no-children --sort=dso,symbol
> > > shows:
> > >      2.35%  [unknown]                [k] 0xffffffffabc00fc7
> > > +    2.29%  libc-2.31.so             [.] _int_malloc
> > >      1.24%  libc-2.31.so             [.] _int_free
> > > +    1.23%  ld-2.31.so               [.] do_lookup_x
> >
> > ^ bfd
>
>
> > > +    0.63%  ld-2.31.so               [.] _dl_lookup_symbol_x
> >
> > ^ bfd
>
> Ah, no, sorry, these are the runtime link editor/loader. So probably
> spending quite some time resolving symbols in large binaries.

I don't see NOW in:
$ llvm-readelf -Wd `which clang`
so I don't think clang was linked as `-Wl,-z,now`. I also see both
.hash and .gnu.hash in
$ llvm-readelf -S `which clang`.

The presence of NOW or lack of .gnu.hash would have been my guess for
symbol lookup issues. Perhaps the length of C++ mangled symbols
doesn't help.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D56%3DXJ9UPKVYJ%3DpTRGMNzdQe5k-rsx%3D66XQhWtrwtEqQ%40mail.gmail.com.
