Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBTFBYH4AKGQEV5YQDCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 87245222387
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 15:06:21 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id p15sf1657714lji.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 06:06:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594904781; cv=pass;
        d=google.com; s=arc-20160816;
        b=DG8nmXOnI9SZ9URRP6ufmH51cbxoH7d8oXb9JjCT0EkuIO/luxzFPvidX7BBM/84fB
         Pa4Dx/RjctG8uGun+B+M2iaOn4SNQFb/FFHZAaxG4OLgKIjNeRTrM6xdUzH7zyX5SvWw
         OupYuhqo5dVAxtNdQFD+SA6Y2elFkX/PA7bMFs4qKIlm5rB7FUlKxb+wJU0qhXYBVO4G
         2TObnt5n6GS+Ntw+S5bz3IyfxDcoP2nmTJNsNGZAxs6SWjGtyj1YmT2+XE8UYBYCv48P
         CtQrUKUOI+vQ1IksAS57z1PU/lt70+LFhccZvbqYr0LilDQt/dfXSirt5gFg6s0w+6YJ
         17FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cJVQty+eybYd3FnBsTKTmpFLjhu4xO2jqPxgpdcABKg=;
        b=JhIE/hL0vCGxn9U09ZR9W6nxA/JjQvuRDrddOvbEpYPpZRGje17OFiKquYZTijw2iX
         t2h+4uoToa0ysF69Wm/qAzi6uLYzOW6xRpTtu0a/rUYFOnzwfnQNKvj8hE/RgQe4fr1b
         3sXsY+6C6v7HulCDNSlyvJIAXfwCQu9sMnMkvHuI+GqeUhhs65USpTKva6CaH4w/WT/S
         KRjwhgmcuv/HtsUl4IcyjveHAqLmMdgvcbn/1IL9xpO5NH5RSW2pbfft2durYbhQRW/q
         4XaGGQ99AClpEG8dbWdoSR6fpGsBw7n1pqilv4oWVbijL1jv18Byr726Ie+P+n77a3sC
         y61g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cJVQty+eybYd3FnBsTKTmpFLjhu4xO2jqPxgpdcABKg=;
        b=HTzZlqx6dQfYTB1BjHGfDjv0O2kOXs9PemvkITcAGhPuGO7tThoPOUSoTRnyc1scB+
         r62IypQSbeaC5lGr6UouJQeCZHZtWMyft1LWjVA2ZIu6PgMaMbcQB1XqP7f7J9zN90P6
         NkuDr8L2i6UOYHxa/sGNFU75J7Uta7qOY0GDmvYDbM3ZD3+6AUUOd7pr0JnRzudBhvYu
         OzSrnnwBBH5VaSNAtGugFjaslY+VslzKVvH7WqpBS8Im2E59LC65t9Y4sWIT40NS9f8r
         DhqPRkC3k6BRMzVkkV/xL3+HHs3jgf5shUf8w1wieu/B9n0I8WZXb1B4R1OsjW3vh1Dp
         Ygaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cJVQty+eybYd3FnBsTKTmpFLjhu4xO2jqPxgpdcABKg=;
        b=baoIHQ70DCbbjhTcAUNfA7c6zPqEz4dhYNAsXi0UnxiWHqKkdo515EyF+6qpdfj8NI
         x8E6AaZxdybElDrdBCJwgYZSGKgFlD9EM5ZTVLHSGsi2XLJd/8McQmeFAy0O1wrpx5tQ
         JSuYUNuolfgGRt10Ohq1qvJqL4sbM9/hVIfDy58jN1yrRBRrOhGftJBkA+Vj5HeQXuzv
         hkNdiG0Xqi5x3ogKz/yA43qPXAaGJpxvmu1MRb5Z9AcEOPJ+lRVbJpw6/SWikA2vSQZQ
         VRRQFCAi7587T+y8UHjPuG+pNUD9pwlMypBYj9eVrvvZ2MMuEOYVHf8cliV4WWIaqGgQ
         fMqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532saG6vEbs2DPmcSwET5cduQ5eqTWVJoLVGfErUl9NQ8WBlx9nx
	LLO3vGKSPsP7+gpqqUxqo7E=
X-Google-Smtp-Source: ABdhPJyhI3bC/AQpsw9KL/QplDEQgVk3JQitnQh+cxJFwyb8UAxRRIpqoDpy6dItZ7KVsYRyBOTgag==
X-Received: by 2002:a19:230e:: with SMTP id j14mr2041595lfj.19.1594904780991;
        Thu, 16 Jul 2020 06:06:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8592:: with SMTP id b18ls641001lji.0.gmail; Thu, 16 Jul
 2020 06:06:20 -0700 (PDT)
X-Received: by 2002:a05:651c:222:: with SMTP id z2mr2034630ljn.395.1594904780271;
        Thu, 16 Jul 2020 06:06:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594904780; cv=none;
        d=google.com; s=arc-20160816;
        b=VTtOolP7jH9hKKxs7DlX2sgIYbe6QIw1Kt2HShjSkckJupzNmoC6dopzNVtPNJk9tK
         89aCKiSFRiGrNwCxln344lMSevdyiQyLEa4GvnH4uV2J25zvaUD/POX9NRadADvAdsVq
         Rdh0Cv3Bmdmfu/wq+z9GSDp7chgFQljGctNfkBkcWAj/ouT18FJMr9Hq4mkyot2dcsvN
         M+VQ07C/imC+Yjnlx1tHmU81lSLX4bc5evBWuDEia5gYNbG/pWTVBZU6MVofA++uBoNj
         m8ThgMjluoypcc/8fONGrTMEoCIFS36I0luiEb7zGK1th7A0hxnafSte6p/zhVT7h6aZ
         Xbng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=RA0r0C5MSd1Ci9p9tjfzhkcOecKa0qZWKEO9yGw+FOo=;
        b=W0o5UHFJVmLEcPDDSp2z4n6LVl49tUqMIjMABRMa+BVHWtw+dr2jPeKQCGWz9CCQCF
         k+pwyO37FSjMQqgM5Edb4f6SvYqCbFKP2evrRauMbwrK2xyO8L5LnXX6MlD8lV4DcegG
         Lo/fepmh2tNrV4sreE9O7dnZNZx1Dnrhkn3RGT5dkpiK+wGjyezP8U7nfdAgnzE5uHmK
         uzrnpo3GXu1jDOL06uHqs+rhViAdYm43pBMeCSYZ0xgF51dgimtkszGgbllb9gIkfl+W
         zcv9OWZ0vtpCk2G+1mJOnVqkrDgVqPzUe1HU/EgOZ7rEn4MolS+KBaoHxh9lGFecv9CI
         pIOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id o10si243645ljp.3.2020.07.16.06.06.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 06:06:20 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-qv1-f43.google.com ([209.85.219.43]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N49Ul-1kw20o1BNh-0105gB for <clang-built-linux@googlegroups.com>; Thu, 16
 Jul 2020 15:06:19 +0200
Received: by mail-qv1-f43.google.com with SMTP id t7so2628333qvl.8
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jul 2020 06:06:19 -0700 (PDT)
X-Received: by 2002:ad4:4c09:: with SMTP id bz9mr3944948qvb.210.1594904778075;
 Thu, 16 Jul 2020 06:06:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200712123151.GB25970@localhost> <20200712193944.GA81641@localhost>
In-Reply-To: <20200712193944.GA81641@localhost>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 16 Jul 2020 15:06:01 +0200
X-Gmail-Original-Message-ID: <CAK8P3a20UQvQO0U=p1kBEUvRdwm8VFBa31aCe7C70hwTzcu_yw@mail.gmail.com>
Message-ID: <CAK8P3a20UQvQO0U=p1kBEUvRdwm8VFBa31aCe7C70hwTzcu_yw@mail.gmail.com>
Subject: Re: Linux kernel in-tree Rust support
To: Josh Triplett <josh@joshtriplett.org>
Cc: Adrian Bunk <bunk@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com, 
	geofft@ldpreload.com, jbaublitz@redhat.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg KH <gregkh@linuxfoundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:25UJHLr+Ennd44ZIU6MBN2FxQ5RcrhPv2YXfAfoP9tWaZlGiBET
 nFmfqFVw7LcOjMevNX6ZqjPsF7PKYGZqpPebTKBA3RjpstW7AL1t0WmTdGnFkO5lYHL2m1Z
 Bz4n4I1kJDig31fPo9j2CILi1EOJBR3O5nZLwGGjU0dhDkHjqtTaXBxFEWvw/cfonbRVbvb
 JMtNCrk4HmllUzjws/6HA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/8TlSyDI4rY=:s2YjKBc3oBwPBXnIpZmI2b
 7sATHzH0mFV8mPyaz2dLGAyYWUDv+L7Rux38Yil04IA7tg5q4DP3rTYxMOES5AnzpwCF0s4te
 rrCJRkAERj8PbHb2H3Ef0cm9F5srIpuVLimF5VwVrQgRvYOzoiYaeILM519dk/ZkdXyrAMKtZ
 W1UJ0jKvBRmdehIzkDz/vCzgqtLBrKsRZ8l3ROwzf18EYAaf39bd7edgHCvBfb9lzpGkzCiK7
 kROK33PJf5VQe94FK4p8Gj2+s0oBfkfyqleGrdB+IrGdchqLmfzbtnHgnrkpvpEKyWDiRJ9MI
 ItsYqgyKPG0sv1TzLSKfFVEinP74J2QzUI5yxh1FAdB97KZlC3h3hGgW/DT1HVvg2/nEmcCgc
 ljCB+Qx0tJ+koqNnIXpl1cV9HQb+QqPBbF2OTcCUX0yJYLZ/rVvl72M918m5QXc/LWDwCSnQk
 +WGwuiXScK7ha/9JPK4LepBZjKG5IvzjjZN2IKUYObcHclmXIJyIZNmrgXYH0ynQWj2khi5Fx
 S9dLHuROJAgzz3lW7p7PB4AQfgV5OX35W2HDhq9HIVGlrEaDt366rJaSI/KVtsHIiNsHB48Jb
 XraMqtxMNVWJQYNe+C9+Gf/DGTWzafw+GwY53k2IcR2cmsejQanrPUWh/eETWC1s9HZMzmGF6
 bl/erzQvhAHpqPloC/cbAEhlqK7MZnnS6PFjzrQz0lTVfdJujhddilaFK6SFoFr55JE4KkH/U
 YwRAnmcvpMASLrZ+VOILHkmtKmDTgtQupvGsverDzlic9dcA/Hw11ICAoSOJ7ZX7+RgGDSudX
 4P0fiB9QVDxPgPbvZ4eailKfpv2nYZqs/sudGnwBZA9ZJaYmoYFEgOcgewQOCFwssnFg+b6zC
 hCGAK2C+zlV55CM6W/nL6Klo6tSNWV4LcyrjLwvAP8DyOOICR89PbVU4ZlVm/aJ1py9OCaJFx
 Q2JKhBY2FyPQsZ6aPyp/S+DB3YmtVwHENlJnom53EBNExr6cc1ZV6
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
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

On Sun, Jul 12, 2020 at 9:39 PM Josh Triplett <josh@joshtriplett.org> wrote:
> On Sun, Jul 12, 2020 at 03:31:51PM +0300, Adrian Bunk wrote:
> >
> > As an example:
> > Ubuntu LTS releases upgrade to a new Rust version every 1-2 months.
> > Ubuntu 16.04 started with Rust 1.7.0 and is now at Rust 1.41.0.
> >
> > It would not sound good to me if security updates of distribution
> > kernels might additionally end up using a different version of the
> > Rust compiler - the toolchain for the kernel should be stable.
> >
> > Would Rust usage in the kernel require distributions to ship
> > a "Rust for Firefox" and a "Rust for the kernel"?
>
> Rust has hard stability guarantees when upgrading from one stable
> version to the next. If code compiles with a given stable version of
> Rust, it'll compile with a newer stable version of Rust. Given that, a
> stable distribution will just need a single sufficiently up-to-date Rust
> that meets the minimum version requirements of both Firefox and Linux.
>
> (That would not apply if the kernel used nightly Rust, since
> nightly-only features are allowed to change before becoming stable;
> that's one reason why we should use stable Rust, and try to get Firefox
> to stick to stable Rust.)

I would expect we'd want a fairly tight coupling between kernel
releases and minimum rust releases at first. Whatever is the latest
stable rust version during the kernel's merge window might be
assumed to be the minimum version for the life of that kernel, but
an LTS release would not suddenly start relying on features
from a newer compiler (thought it might warn about known bugs).

This might mean that linux-next requires a beta version of rust, if
the release is expected before the merge window and it contains
an important change. Staying with fairly recent versions of clang
certainly helped in getting clang and the kernel to co-evolve and
get to the point we are now in using it as an alternative to gcc.

While Linux used to build with 12 year old compilers (4.1 until
2018), we now require a 6 year old gcc (4.9) or 1 year old
clang/llvm. I don't know whether these will fully converge over
time but it seems sensible that the minimum rust frontend version
we require for a new kernel release would eventually also fall
in that range, requiring a compiler that is no more than a few
years old, but not requiring the latest stable release.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a20UQvQO0U%3Dp1kBEUvRdwm8VFBa31aCe7C70hwTzcu_yw%40mail.gmail.com.
