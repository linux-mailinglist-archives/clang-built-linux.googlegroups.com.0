Return-Path: <clang-built-linux+bncBDRZHGH43YJRBB73Y2CAMGQE6ATJ46A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A423731F1
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 23:32:56 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id v9-20020a4a97490000b02901f9df48b0cfsf63327ooi.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 14:32:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620163975; cv=pass;
        d=google.com; s=arc-20160816;
        b=0o2NsrF8DiOCfpypjcYD00tivb2rTzUpWtt/XuvQrNIAlxjY420hk1OD80oW7aoP0n
         vUT75CzjTC1CeSRjfieTn+M2Y1V/tjHdw0jWjMeOEJ5M7OLlVuz1sgJwxGPySsgTOgws
         zMchM4zuG11pEBG71Ki5zk8cbsDrGYoNr19IeXr//EUPSeXbuWxjwXUSWyUSgll4PmH3
         Qgc1ClWV0Ka1R05vEEaac91ya5o7LVPFvbllfFoGjJSyf0GNa/Irpt7UV962VrwAxTD2
         hdSECVqqhyVEZtKJRptU3vLGURmgOWDahsf5QPx9GjNzE4/9ED9wzb0KQuftT0hMart5
         Tefw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NaaT5eTMRMWgYBA7vJPPEgfRoCw+QsQ3bnMZUHN/9Cs=;
        b=PTioE0oGDoNVxlaFEtvfJueSB/r6Z1Ot81svsnIoFnsnZsJ9/xvo5JU1oJX6rkESQE
         IwPyT2Uvqg7FyuUwziIChLVdmi1s3/yMKNvZuLx8WX/E9ybi75JukNjVr6JYdRpTAuZQ
         0/5ZjBlycafemvLLSE/1R64IM78rrYMC/j8kS2sQ9GtASmn+wfYnvdEoDFeUgrjtMoPS
         eLq1rEGGj5yBl8hoSq2K/eitiGOHa5IqPNGCCdMe3PBtJkXwINXZAQZ7ZYMAF1PKLlYF
         bREoqEP6UypO8n5S5CSJwdkG8ySVO+LmRypGGYaLP77fpN08FL7AfQoALM1XzNaiUOeZ
         lr4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cf24OFED;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NaaT5eTMRMWgYBA7vJPPEgfRoCw+QsQ3bnMZUHN/9Cs=;
        b=hpvM4f+XOeBu6yiqlGuYXDYzG/ghm+jbpzlZXnu3P4AK7aBtOneJcF7ZYzRAWCRAJn
         G+L3vu1lRs3G4qyZLfH5Je5i/6gvlyjSowzo9c4HI+oawTqXDDRMJpuBii30uwJVcfe2
         RFGVc6jN+15BF9aZMpnqqCHsxBsqtk1G9pnreHhbB27DFb/Gwr2+qswS5NQv/WR2jLEf
         1/E+Ps7hCABzeQngWmb1flQWhO+g+kYw9CSG3Ly7Sx2HgYsAepZe6/xgki+pPgGRISOQ
         Eas1W6YZkDK1z6RaX8IGATSuYEkzOx5GlQWmDkpdK5qbTZTE5MlMsUplc2W8bDRWc/aC
         6BGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NaaT5eTMRMWgYBA7vJPPEgfRoCw+QsQ3bnMZUHN/9Cs=;
        b=Fc9I7GiJWBAHkGokHD6InAYLOODKdy5mux0v9RXPisTEntABs5SdY8kyjcQQk6wCQe
         OCmkqNg0k8JW2+8q1kRFzg60dFHp+zw7X//bQJjunaNC14engSBhtgE9f5aPZTTvwmNp
         9O32jRha0dQoVW6TBp/hR8mNapcs41fOBWZnSDYFCgysOkexaawgqmvQU6x+3PqSSZjT
         X+XcSqaIYnhnlVZOVtWWPPBlR35PeKeodljN8uz2TVUIub65oYIOrIiwFccQEEK0uuup
         tDm6YsYM8Dy8Htn7fxyzGbvBA/l8hKAVjs96NTaRNLXqSy3CVVSuEEmLM/CctVEjQxtK
         L7iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NaaT5eTMRMWgYBA7vJPPEgfRoCw+QsQ3bnMZUHN/9Cs=;
        b=VIBJVSpUf0wCF3NW3TJMb7W+0BYNM2NR4gdqWOnqB9GNxioYHpLWHTfr1WacBw/Mwd
         QVWp2oLxTLLhGjfhhedp4eG5JLc6MNTvurDPqo/WdnAjZhzQmK2ciV8cmZlfmv0WQAje
         Fs62f3C+B0bMzM0mEAS7pdP+VEPK1kaeviAz1h0cjdh9DpxNuLWeZrODCQMuiaJoqCaO
         cM8Xq7zwk2ZmVRZTXq/GZO6nhwHI475SaPciQbLYzCogpWLAHfEj5MpWgK40Wk0mC27t
         dG36OqYfoRlvOwnPqLLdi/Ihvg8yhbrHypR5cIaxa7LrUXjAEdXGw5WZztS1hadlHyTy
         l35A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mnl5YTX/iuw3XmzSlwac5xLUX2YxnyEHpl8/0IEKYA4Z1QSTd
	vK3g+3AzL0zyqpIsGsTFet4=
X-Google-Smtp-Source: ABdhPJxFKaiQ+0e16M6k5mTCNnaljI/Zxk3KWBopjOQfrkLvhy4pVqsZL5cZlW57MFzh6iLo8wlKPg==
X-Received: by 2002:aca:b845:: with SMTP id i66mr19409184oif.152.1620163975239;
        Tue, 04 May 2021 14:32:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5e07:: with SMTP id s7ls5248590oib.5.gmail; Tue, 04 May
 2021 14:32:54 -0700 (PDT)
X-Received: by 2002:aca:f30b:: with SMTP id r11mr4622167oih.133.1620163974879;
        Tue, 04 May 2021 14:32:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620163974; cv=none;
        d=google.com; s=arc-20160816;
        b=lhKoaCrrkjYFbSU4evdLLwt/bDCDfgXGcl6IPisa6Wo5C+PGI72mo0fas7WJo6oRqM
         OmZHh+JByv1BLdCZ5AFdF3j9eYT0Ocs0e6LWd28OG5tAub3GHqxeNopcPi5gDVyVLn5l
         vYyjKZmGO2jVU1ZAuy0+cfUBatJt/zjShK/YwTPgvjDODkuUwGMc5RyfqqPREKPN/zHL
         IH/pEZB6fBVpYOkTQzn9DnsLvBe3PbwyJUkNmhfXkd+SmJ3RHhAtwVgFg6eNGK9kvFLm
         RP0uWSfpmhY5i2LVvm8lZ7plmlzTIIPEkDOAaBwYJ7ZXSkltkc9nZqZixMh1F4pfVU4+
         97Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eQ92J3zGhDndMNfx+X1VxssfAKQc44gkgZYOFajMJdE=;
        b=PAvux7NXIb2QO72FS8LhGil7twpN8Zi9JLh7B//v0AGhL4VD0yf+PZRGFK2xFUEry8
         s+OVKhASSixl8Ri1uQa2fBRTI7+HwqYEfXtZZEeX34Rozo2U49xj8CBZyNuG98oRN9CB
         E6NmFvf1Tn7hDL1Oyo3kE+b5KPxQL0RZdPlA1/hYwfkMp2U5ePTB47dRCKSqfTIXqfg1
         MzSHONyCMM12bNwBffTGzDeEudzUjZulXpOyZScfZ6QmC6/yR+lFiS6//igm7jVaCDDw
         I3dzori0BuxDbxhBjDO3WfxLVxMNynXVmbcGHjW+trbdqdKDl/m95/fqggy6+A1quKxk
         UOxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cf24OFED;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id b17si357206ooq.2.2021.05.04.14.32.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 14:32:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id m9so164294ybm.3
        for <clang-built-linux@googlegroups.com>; Tue, 04 May 2021 14:32:54 -0700 (PDT)
X-Received: by 2002:a25:9942:: with SMTP id n2mr38988639ybo.230.1620163974661;
 Tue, 04 May 2021 14:32:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost>
In-Reply-To: <20210502093123.GC12293@localhost>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 4 May 2021 23:32:42 +0200
Message-ID: <CANiq72=aK-JJhpnZdeeGBtADrnXhyEp1Whw5+5rK6a4u85PhxA@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Adrian Bunk <bunk@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Tom Stellard <tstellar@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Cf24OFED;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, May 2, 2021 at 11:31 AM Adrian Bunk <bunk@kernel.org> wrote:
>
> Some of the new language ecosystems like Go or Rust do not offer
> shared libraries.

This is a bit misleading. Rust offers shared libraries, including the
option to offer a C ABI.

The problem are generics which, like C++ templates, cannot be swapped
at runtime. Distributions have had to deal with the STL, Boost, etc.
all these years too.

In fact, Rust improves things a bit: there are no headers that need to
be parsed from scratch every time.

> What happens if you use a program provided by your distribution that is
> written in Rust and handles untrusted input in a way that it might be
> vulnerable to exploits based on one of these CVEs?
>
> The program has a known vulnerability that will likely stay unfixed.

Why? I fail to see what is the issue rebuilding (or relinking) all
packages except distributions lacking enough compute resources.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DaK-JJhpnZdeeGBtADrnXhyEp1Whw5%2B5rK6a4u85PhxA%40mail.gmail.com.
