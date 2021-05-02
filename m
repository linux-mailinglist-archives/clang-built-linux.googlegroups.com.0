Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBAGRXOCAMGQERBWALOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E81F3370E51
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 19:59:28 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id q18-20020adfc5120000b029010c2bdd72adsf2573869wrf.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 10:59:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619978368; cv=pass;
        d=google.com; s=arc-20160816;
        b=SLsm75k/7k+U6VFxJprRaUejQjBY+lVDxfa2qo3fgXDkFI4vfqldsrr/lqnkW/ps1k
         J0qayjbAFzIRyYqHoHmfsBCKH3tOubyN5Kh/WQalonJC2jLyLPOMSQA5ut1d/28RZKpy
         rqbUsDxFAARaK5wJOVZtpBHf5V3We1DrsN+R8zb7utBaAnDPi9pAr2VudXAiYs9PA9qB
         rzoeHoaJKBfXmj0OA5m3lU8uMcinKXT9GHdCoGJHWTHFxDWv14KOLvz11sgo8mytFJ0w
         TMV626ZNKTmgxY9ogFLBwkzs4zME0Qko7TSYeJbGQlj6LUc91Mup97N5P3QlnP87D0j5
         3BGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Rdt+R40rY/zK1QZJlGWGnCBtWXSZdjA21R3wT2c+vNc=;
        b=A4i6I2lMULb3ofRGFMUNpsZdjsTGJSw7NxjpOqREdGtDu9C5V7QHYHqCdC+B8kFlGZ
         mVbE+L7brU0LKQ5aa0b1PdMXZkR2Z0OPPJ1o2FODaMO16btdLGuwjj9uFDabp5B1SWU5
         F+w0FjRao63AHq9dGTt9wPPJvZEp6qfRfkfj5fjSa1j4EwyLbk9G1V48l4MB9NawpVqJ
         jrIk0P0IWXGc9+zP5ISTjA3Nb8YC/lqM3PwoN/2GVcOB0XLgC8XIjjtffS4zriAdMT6Y
         pqL9VUJmJBsdoRm0DIyfzO/CLiRkhI4dm0DXFl6s+By/IM3C10uptRsxLPlDyGnCWhn3
         7Vnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=bvEm7xjc;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rdt+R40rY/zK1QZJlGWGnCBtWXSZdjA21R3wT2c+vNc=;
        b=CC14y03Px4eoXKLbIOUZQUYs7ZBRZUQlcTOt3a/jy5FI/F/WGUUfrGW3Fr/7MFBHx7
         hC4STfXkPtqPtEPIjeI1HqJu7+aID7kW0+yEFMHwOLTCALsjPEf9bjet6uBpsVIixuNT
         kaH6F/pqtNuqnn1kT4cdZ7VskKaPXrmhNKe45KFjSG3euXsA8EACEDgqVl0spY2rSxQ4
         pnIWjN+fo+/hungCcweX/+UC3KaPwnDKewVGp9T/Evy4WFqGXIFhx3zqJpgE+rjHMHdA
         dVP4/ycuupenjASaKaP0ZRnfrYGfYqtY+4eZZjL70oP0C09pAo97YMOqo/Vvo0qJjuw1
         4tbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rdt+R40rY/zK1QZJlGWGnCBtWXSZdjA21R3wT2c+vNc=;
        b=eQAAna7wc4OUWvZ13dqBVNP+jGtUytGevDx65wheFHZ6piQHcCf6TOPNER3aN7r2G6
         BtcHNBU7dArMNSP/cP38MgVw7OhuX/GrjjKKzIr1iZHdoCILXZjqrpZfYeUuoe4rMLyX
         xE1x+hrepo9iOOmN1LZtV56azVfC8p/+ByajJ4K7DzKuNlqeqmKDr2Humridb0/tRleg
         iZNhEvEo8RH5u5+SBrbmR3Rea4XUoQtwdNsUOwMfvcer943G4cDnbpP9j2X+g+e7A4Bj
         NObXmc96q+RIPRDcJ9C6WyPtEm0xeg9n/CVpfkiGDF92sbBEEmZkhi0j5PPE0Ro5YIHE
         Cmtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LghNnLyH18yT/Oozl7vew8ZLYiGlVziyF0I6w/YE/NxKPwW4+
	x8SVwDo8S97rneJGvHVhaVI=
X-Google-Smtp-Source: ABdhPJxRUYO8HNhi6uwAlGTFCI3LYa5Sf3v0t2RIXkt14Xqzwh1FaXY+qGB1FiR6XjNmuJR+JZOiZg==
X-Received: by 2002:a1c:2b03:: with SMTP id r3mr27189051wmr.173.1619978368723;
        Sun, 02 May 2021 10:59:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls699346wrx.3.gmail; Sun, 02
 May 2021 10:59:27 -0700 (PDT)
X-Received: by 2002:a05:6000:108f:: with SMTP id y15mr15761984wrw.115.1619978367754;
        Sun, 02 May 2021 10:59:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619978367; cv=none;
        d=google.com; s=arc-20160816;
        b=QdezhmV30/WmFtYDQmCijnxhnRPNmknOgRIS2iHXkFng3N1Y2AjtAGZourGnfIhiNN
         kanQf0M7NyC76YmCXuPbZEmO0vaQAdxnA6MTs5sjvSSWWdqrzoVyirqvj3b/CQOF6mWf
         0m3twtlkLtp3ygkIIqpvqcyVEJOY57OJjKaNkeDd2ipk+AiP4T5pcerXcikvG+qBQqcU
         Mucxa5a6mvam1IkKyN1Uiz1+roQnM9JY4Hr5w3r69UX6q0EA/1aBiGtIsCLI3U5poTN6
         Itfh4qCvnR74e7E0gMo2+XNATgWVFPfnxcCKm+bpNni8wtjGg6avc4ZIg+BmOtI3xQLz
         k65w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0+2IqC1NfiFUmwmucN3Vw1P1FIIB9EUQ8fTZ/TGu//I=;
        b=D7ozuFovChIMCOkMJEPJFRTyBsuuQFO7s/XvYFFsGatQu9rSyj0QwwH8PA9EFiF6iK
         Jydyaj7QprAWQOZdrd/eebhHZPvgWbbZIoy2qkApRVxbxFyIe2B/Z5Iog73frwPXIEFT
         CcK6w0K8uHK804kmMvvWulr7MAnD7BIansAsFjQbpb8NPqhgjzRauHsLrN4hNRkNK6s4
         XI4WIBak48SRXjiiUaUyg//HQCX5m9dgzZ0rv9ywhTyn4KxLx59l46NyFfF8k/rd3b5B
         dlfvSxt/0JkFvryTg2aW9pP0ctyvq38ZlsYcUXs+/y1Acmbf2dAcK9iBJyW6r936MfE6
         nbPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=bvEm7xjc;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id c9si872113wml.2.2021.05.02.10.59.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 May 2021 10:59:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id d15so4165447ljo.12
        for <clang-built-linux@googlegroups.com>; Sun, 02 May 2021 10:59:27 -0700 (PDT)
X-Received: by 2002:a05:651c:543:: with SMTP id q3mr10892404ljp.46.1619978367036;
        Sun, 02 May 2021 10:59:27 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id i14sm900983lfv.28.2021.05.02.10.59.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 May 2021 10:59:26 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id 124so4780643lff.5
        for <clang-built-linux@googlegroups.com>; Sun, 02 May 2021 10:59:26 -0700 (PDT)
X-Received: by 2002:a05:6512:3763:: with SMTP id z3mr10113824lft.487.1619978365953;
 Sun, 02 May 2021 10:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost> <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
 <20210502164542.GA4522@localhost> <CAHk-=winSraiwc4gC5WFWSehFq+s7AqCJZoMqUuHLX0nYVG0nQ@mail.gmail.com>
 <20210502175510.GB4522@localhost>
In-Reply-To: <20210502175510.GB4522@localhost>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 2 May 2021 10:59:10 -0700
X-Gmail-Original-Message-ID: <CAHk-=whTjJwCt2E0_JM2dDq=+UybvJN7QK+6K6e80A9Zd8duYg@mail.gmail.com>
Message-ID: <CAHk-=whTjJwCt2E0_JM2dDq=+UybvJN7QK+6K6e80A9Zd8duYg@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Adrian Bunk <bunk@kernel.org>
Cc: Tom Stellard <tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=bvEm7xjc;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sun, May 2, 2021 at 10:55 AM Adrian Bunk <bunk@kernel.org> wrote:
>
> Are you happy about libclang.so being a shared library?

Honestly, considering how I don't have any other package that I care
about than clang itself, and how this seems to be a *huge* performance
problem, then no.

But you are still entirely avoiding the real issue: the Fedora rule
that everything should be a shared library is simply bogus.

Even if the llvm/clang maintainers decide that that is what they want,
I know for a fact that that rule is completely the wrong thing in
other situations where people did *not* want that.

Can you please stop dancing around that issue, and just admit that the
whole "you should always use shared libraries" is simply WRONG.

Shared libraries really can have huge downsides, and the blind "shared
libraries are good" standpoint is just wrong.

          Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhTjJwCt2E0_JM2dDq%3D%2BUybvJN7QK%2B6K6e80A9Zd8duYg%40mail.gmail.com.
