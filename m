Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBP7SVT6AKGQEMGN7KWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id C53D82913B0
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 20:34:39 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id u5sf3682734wme.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 11:34:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602959679; cv=pass;
        d=google.com; s=arc-20160816;
        b=szjeRQKXZDWAwM/p+aZFlz3d5oSiB3ZTt42SgVqClntu94sKISjgyVkEeyLr4NjCt8
         G4HoDRYK2TAW9Hvkvv8C0ud4QqIdQKtyw5S6sRLXn62h+gpD18lK3yncOd8ihXYRYU9+
         yGV6pT0NO64Qu6ODeyLS9T60QcDH/T1EAvbyoKOaQg6io07v+E8Np6cvefyprGGDjupH
         sMt78MA4djU4+0+RhzwQmUahBmD2OArI7yhK11ta8Ub1Vc/KQW+0PS383/+EE7M3Augn
         0TNKbIQI9UhlZ7P3I67diqgZtzx/gqwsx9lpnHER88KsOKWSV8ixG9gF2NhAzphirqJh
         H/zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3C+omLIKz+ULtozjCS36Xnep/C2Imp9prVRyJrp4/9g=;
        b=XuAEj/GW3L5DstkGrpfY3oAV/LRNGBQemXIyd9AZOp3NZO0ZzmvAeQj9AeQlxwGr+p
         iL4RuDvMTudue0co/DmuZ4HcfTbubaVJvO01lj5UakhQIzl+GWsKWRflX4cDWegPlxhP
         6mPOs50kYmnIwSbnTKNSVRFtNAuOu9vI7tuGdOC0N2ITXkXxhnQT+Q1QtlQzMkmy2mJe
         sJggsKCe5SOndWe/fpCBdIqkYxscGNS4ey8+xRYjT2S6U78Bwu6A+nagMMsDw3PukMJ5
         KULFeneIYF48hzg2gTa6q6T69hk8Bq8+tiAVrS0PwkM0vqgP/7IQVpSTH1dnQjEcm0d1
         npNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 82.165.159.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3C+omLIKz+ULtozjCS36Xnep/C2Imp9prVRyJrp4/9g=;
        b=Fjpuvn5UNJ30g1Uo4OyJbEBGXukD1PIIkBEaKE9rJ4v3RTtH3s7BCfHrRdmxatYi9D
         iFMRQMHvdDdvx6y2a4Y1V0dQjLs71J+vBSZ7VJc8dYa7hWJKZDjoMPqDfs5GzmE7YMmw
         VzOsaa4YpBlBwrrMiMXp6jGK7mOpXZwtM6NMAh8/HfPl1T2MMbHE+i2AEqDqpBFsWutC
         Fzs4UhCcpyNeV+VsEHKQXrOCoviz+blSvuuPestyASF13cOaLAQ5GpKayWrJMcANqReu
         rszBiCcsXJVtry7DcBZMUFkmdrRO7xBg9IkhVPPWJFhBGObzrfjEmkNAd8EIuccET/F4
         rcpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3C+omLIKz+ULtozjCS36Xnep/C2Imp9prVRyJrp4/9g=;
        b=pnCSg90KCULdNmXFEyBZbsM0NZKNpiJ46qfSuNxtzWDG1gy56GZG7V8a94sl8J+rxo
         hlbuVK8n53wPMgU+2jNWeVR77Gr6m0XwqJ7mGPOWqjtXtU2TxUqYcSaSorVTouMsL4Rv
         ZaGwanDrwWT4RGM84lMQ/1qHt14PNhDjMrnBd71QqQY6nnZxNe/MxWbPUkv2Sh5c0jhV
         1eGYiC+luwhCpJuX0gN8ZsXiuT4JYxRoBhNq7/gFFJotdfCiNTcGf9IcSs5C56PxFMaE
         IQk3/zJTX7FPNCqalZo9hrjQ2SIQ4dJ1uIGMSrYVRkkWB87hvk1mtc1bsSD9JrjP+Chc
         SR4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lDUrQWj/pGhQTxUeKs4/PLiwrwH2QRNDXVDeEV6p8IYzyCpVf
	9nEJqMrjYLPSF+XM29sDLsk=
X-Google-Smtp-Source: ABdhPJzNxzcArnV4lBBtnnxJe07uSA6qYTWxjZJTCyL7/wXOTJLZU2TZnNeb+XTMer3DYG7zYg33jA==
X-Received: by 2002:a1c:9854:: with SMTP id a81mr9791082wme.72.1602959679537;
        Sat, 17 Oct 2020 11:34:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4e19:: with SMTP id g25ls2576183wmh.2.gmail; Sat, 17 Oct
 2020 11:34:38 -0700 (PDT)
X-Received: by 2002:a7b:ca42:: with SMTP id m2mr9759495wml.145.1602959678621;
        Sat, 17 Oct 2020 11:34:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602959678; cv=none;
        d=google.com; s=arc-20160816;
        b=Y4s4h5wlMAvpawOoOa59hg0Xs9g8LIBnRbyGs7quRUTEGDF7plm6iVt9PRo1/0A0PQ
         PGqKeCKW4+e9B+/xl2D2oSu/DrR/o6OzLuDzQEbDxCaD9aDVCZZv6Qeg6Dg5AbDnUZof
         aeXaN0cDGiI+uJ3ETizx7p67ooZlCeVwDCiDgQr/2yL/YlnJnPguiSqk0FJn+ocV2PlE
         kRU2qp+1l4XK0BJkpgukia6+QjZZOHoXFZtMV5hgz2oT8m7BAE1Vl+m7NiachEGS6L3L
         73UUrvbopyT5ygvGxCVKJMovkolnOAfBSmN8ULBUcEcOjeiYgWhBS7kLcOvAwbXX3+Bm
         JAYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=YC3yYLCWw0jefjtxg/76GbCF1/Xt94hbNqGzXgIhmQo=;
        b=HSOyDctQFXLoTfrj4jdweaDSMZFdDrr/92yohcWxINz0Ic95iIB2gpHAZ+HKY16dCQ
         X5ma48PZKNd/vG5SDj577kR4KHHI/w+boG30JLS6ARPv//fxQkMDmBsg7BRhSqfxg35q
         I7mtVzRx6pS2+qU1zmu0o1Bqq5+kLYnBRZKuc+Smrh0JNQr24jDskSeGQrNHj3BpULSt
         CTr4Bl1ETpPojNRtUPzLwvxZbY+RfqImgcG0CLDwdDUqTsAuGNESwu6orfwMvFvQ+uxT
         X6nZL6YZiQm7oGt5wWgLdeT9UoAiWZicH4FU8uXuFfwQ8izHZ+CFVGuMZpRZE+eGA/a/
         TUog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 82.165.159.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout-xforward.kundenserver.de (mout-xforward.kundenserver.de. [82.165.159.10])
        by gmr-mx.google.com with ESMTPS id f144si112915wmf.0.2020.10.17.11.34.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:34:38 -0700 (PDT)
Received-SPF: neutral (google.com: 82.165.159.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=82.165.159.10;
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N17l4-1kITHI09W6-012U5m for <clang-built-linux@googlegroups.com>; Sat, 17
 Oct 2020 20:34:38 +0200
Received: by mail-qk1-f174.google.com with SMTP id s14so4628838qkg.11
        for <clang-built-linux@googlegroups.com>; Sat, 17 Oct 2020 11:34:37 -0700 (PDT)
X-Received: by 2002:a05:620a:22c9:: with SMTP id o9mr9457586qki.286.1602959676899;
 Sat, 17 Oct 2020 11:34:36 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-2-andrew@lunn.ch> <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch> <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
 <20201005194913.GC56634@lunn.ch> <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
 <20201005210808.GE56634@lunn.ch> <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
 <20201016141237.GD456889@lunn.ch> <CAK8P3a1nBhmf1PQwHHbEjiVgRTXi4UuJAbwuK92CKEbR=yKGWw@mail.gmail.com>
 <20201017145722.GJ456889@lunn.ch>
In-Reply-To: <20201017145722.GJ456889@lunn.ch>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 17 Oct 2020 20:34:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a303K0wRFnF4p16XYnoL1_=12EKOMkyus0-bvpxSvWFOA@mail.gmail.com>
Message-ID: <CAK8P3a303K0wRFnF4p16XYnoL1_=12EKOMkyus0-bvpxSvWFOA@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Andrew Lunn <andrew@lunn.ch>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:lx8ft6TvmuY1FHcjNLtsg/yA/Hpv7tTI/RZvW4w4nZFbkQXHPk6
 B/lQYd6Lu/hya7wfWqvoKKHnFOvVtFPkKG3iIfiXpK/gh7lm31QGgQAJJiiUK3HYxV3OmZn
 MbLeCGYRyQJszGo1DuWzKagzBeTOtK43VJIFFJ8DjbzjlbUKAJU2/4cpsVn9Suikw4CFmw1
 l/vIYXdSVNikDAgHOSw5A==
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:yJQ3avz+Iz4=:HIHvJebdqMA1n5SdUC8kaKL+
 lLRAQ4EJqgdjJFpplsSweq1jYD+7SQXQakvoze0eP4LWBktb7hQbHf56m9Aa+9KUwXNf7jLGm
 eXnt4ShEIxEhzmZ8td87xSyoTKYQmDTUlYEQA+VEuf0GhAOuDwgbDPf9UweJRGSlRfpGw9liv
 2eQ/AMlTauxOaJVbKSxXmSo7SOD4IHojoM+MzFRh3xo5OkAK6If5kZLuJTAdHZOK5ePLrVOWr
 9snZWH1rLvS0hFmdx+V8nbq6hFEFxkk3xfrfwOCKN7uIqpdBG0pgUyIPKP5eOfGysKSHnwOeU
 xg7HNvDLgJ4eCXMR/W4VbUR+HoAGpuX3WAgks/5uAYHuxufSlF5PjoHC2bf1Rsh0YYlhPEmDG
 jBOnKQS7UZ5Pc/o1Cnz4WAbrpfOHUaUncpYWFFtsi3jW9aqHSPzSxiWlR0xGk/aJSHGfa6rS1
 vvWRrOYcVdsLaDlo39QHC8O1b/OUgzkq6CEM0OCmLIuhRZv5zKAedPw5Y2mGIq01xvfQJtIh6
 tPhnR9/2pG4cYDjTV+y2I/BA7YC4PwCS2IAcuBO7cFlNGncgXmldEmpwcfdkUDU2EcpX0KnzC
 JSVBkwZmCgh14CKK4C3oSPHjnGmRdcrywgu0RVEEwBcWK4R/sGjFmg==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 82.165.159.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Sat, Oct 17, 2020 at 4:57 PM Andrew Lunn <andrew@lunn.ch> wrote:
> On Sat, Oct 17, 2020 at 02:48:56PM +0200, Arnd Bergmann wrote:
> > I tried to get a better grasp of what kind of warnings we are actually talking
> > about and looked at the x86 allmodconfig W=1 output on today's linux-next.
>
> The work done to cleanup drivers/net/ethernet was mostly done by an
> Intel team. When built for ARM there are few warnings left, mostly due
> to missing COMPILE_TEST. I have fixes for that.
>
> But this raises the question, can we be a bit more tolerant of
> warnings for not x86 to start with? 0-day should help us weed out the
> remaining warnings on other architectures.
>
> As for the plan, it looks O.K. to me. I can definitely help with
> driver/net and net.

I think there is a bit of a gradient: I generally try to keep arm (both 32
and 64 bit) warning free, and I know some of the other architecture
maintainers try the same, but generally x86 is ahead because of the
number of people looking at it. Other architectures (powerpc, s390,
mips) are somewhat behind but not too bad, and a lot of the rest
don't generally build cleanly to start with once you try anything beyond
a plain 'make defconfig' build.

While we don't have a formal definition of primary and secondary
architectures, I think we can take the number of existing warnings
as a baseline: if a build is currently clean (such as x86 allmodconfig
typically), don't break it by enabling additional warnings, but don't
worry too much about adding a small number of warnings on builds
that already have a lot of them. This is similar to how we deal with
warnings added by new compiler versions: the more actively
maintained architectures are the first to fix them, and anything that
seems like too much work gets disabled, but the less active
architectures just end up with more warnings.

          Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a303K0wRFnF4p16XYnoL1_%3D12EKOMkyus0-bvpxSvWFOA%40mail.gmail.com.
