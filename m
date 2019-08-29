Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2PHUDVQKGQEXAPS6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E5EA27DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 22:22:03 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id c14sf2639575plo.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 13:22:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567110122; cv=pass;
        d=google.com; s=arc-20160816;
        b=VCfevWcRokvvkyGDr2qoHG8XkWHzdQ4+Jdt3b9FrgVvyxDPVRa5dHdOVar5f3Oyc3X
         OGgxzePAyvMRbDYW3NqklI93hIUQ/ruFl7Eg8MomwQoUTrVNmh7ETBrg4X8/OxDIIJLD
         Hx2Qlz3UenLgAAg4QIQMd2HvREJSapTaUGf/6P6/r2Mp6bTSW2LKgVhVi0Ah+wTPoGEm
         0jRWEqfkaHQAEaJrGx2BETORqlN3bIILNzDAiQPUNWYGUfAAKOCHfFcGdQlblTB8Z8Xk
         3YL+agFjJ1f6FK1vwuZ/93h3aFByEviaJe6ToYydoVcQ+X8JcJuzpFxp1d/svAti8gsd
         Qjcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LUHa5hEScXLmxlT0jeSflXPgSgIV3qtlij2dCbER2sA=;
        b=cq+Km6LQZLnmx/ZAmfYqFm/7JBpJ76RDWtJGnprjSVjPBGrML9q5COagzt7ENlqDSO
         1l2cbhT/e3MA6kDrw+6u0BG5bnt1C8A7yNVvktxs1jtBpfwWHG5p1+Iq3GogiiPl6tJR
         i9HcouQ1K1qezAUXH2KfO9i+vRf4TkxufZYDJV1X4OLfrsHqVJ/G8MMZI48xKVnqqA2e
         4SqzHGGOFCcD0jR6xmLOC7iRQrwaR+0cGEihBn/QbaZjkGuCHhGVJR6OtB3Gzt3Ch9+E
         9JgVP/rdvHffC/6dMiUhgRWzqbDIhT+2DwgsDso4+lqmGKzgU4YHi3FrIIUYkkxhH4Rf
         373w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LUHa5hEScXLmxlT0jeSflXPgSgIV3qtlij2dCbER2sA=;
        b=fEBhBqOmuBW12BJxhv7FT8UJY5MxB6yyXtiDsFkuBiQw2IF/MvE0qjT5fNJL5BnoHM
         B8v4tbLYxJiUa2QDoEO22PkDAkkUlRpmE2WQO406R3E4tHbOZ4euqiENyx0089CUtxgG
         vlgaH7uyuzXA9lKx86p9QDHSorvvIPVM8xHKhEWGzu2E9uOpLdgDj9WoRKDKKjDyUEhZ
         QqPn6PvySMqLhTCwugeLcT9R+LSYyZ4gfmxtehLVFayWcISjPlZjXLpN/J1MmpKX/R83
         X6vjTD/UosEUBB05XuQO12JmmQu3Dnbx3apg4YWBWlKgaQIuk7HzRZ7mXVAVCXsLZBZR
         eWhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LUHa5hEScXLmxlT0jeSflXPgSgIV3qtlij2dCbER2sA=;
        b=A/qPSPDZhuYZHb76CUjjlG+mafS82SjnsOIchbqWYkdE4b1XSESXtFBuosPB8/maBi
         cbH1uUhgZ8IaZpC2//cNbrBUy9o/46bq/G2fubIX74lAZ+Psb/I2eSLCLkWkagKfMkzI
         +Rx3CzB0e5h/rT3ToSke599//f4A1Dz9G8F+I33KmwJ96T9TDZ3kYzSjDvn3i7meshyD
         sbLbe38h7gQQI3FspZxTwkrshGOrqETOfCQfu1zoMhbew3itWuh5q485DlVU4WBdC5Xl
         WVq9FFeY30WY3MvdW8QrOnpbQDWPEGgTSR4nUhxGowLs6Uun0E6xs3sVYNhlaryrFtQY
         IMfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWpAcp2Jky3Ch1klbg0rUIhaQjf1snG6AshlptU8xbLd7jqTgFk
	Qnl36mmEf/ZK2YOozvrVXiM=
X-Google-Smtp-Source: APXvYqyr3K9JWWzd8jI2e51kVE2BLB9SyUHw62JGha6F/I291MpnisVBdOjW/4kegbnGv0EW7FvjEg==
X-Received: by 2002:aa7:93aa:: with SMTP id x10mr14040936pff.83.1567110122023;
        Thu, 29 Aug 2019 13:22:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7449:: with SMTP id e9ls1076959plt.0.gmail; Thu, 29
 Aug 2019 13:22:01 -0700 (PDT)
X-Received: by 2002:a17:90a:94c3:: with SMTP id j3mr11673739pjw.10.1567110121638;
        Thu, 29 Aug 2019 13:22:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567110121; cv=none;
        d=google.com; s=arc-20160816;
        b=bMbLsJUt8qdZsaX2X0l4ypWmg0MQNEAGtJ578MQuTsb/BjyrrYx4PJw1D68VE0jWR5
         /G8HSZUXREYfxGwxxGyBcjTGjLkkkoAmFAMqGwCnGBkra4ZH+/JZvZGekzux6iwD8AnS
         /Y0kf2utFXsoZ7TsliLL5sutOWBFE4ZZJ//7mMXyYzIMfJBrmki9U37eFMkzhSaVr8Gi
         ZbqKca8O4CH6/T48AG9JyAV8fAT6CdwF5pMFSwYKeD9HvGstuTIuC2JtS5hiI5wEAH3Z
         c6rwNSUQ2yCyw3CfkuGfaUijLJrxTcWC8iGIGoIjd/LXyx9DO6s+Q0cDXsFlWTdP/GiG
         j2LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=XIH6tsXstVG0i0l8PzAWx+GMnOxW2udp89Gezjs+3a4=;
        b=UqIOQMWHhq45cGEGPF5yw8xOkqMq3ISyQuLQsEvLvYg1zhCSDT6dFAmdBPgT17ehZd
         9KQsFJwE3sMjZMKQ6vLBFj+O7BQDbyJ2GeoLYVtZKnCL9MNVqQW7Yp8qkD/Cl9Q4rfgd
         S6lPdA7HUZF83ll3IOmy5/u24CsnqRV53v4KTLNdvl2nejdUNeAUdNmLmjUgCRxb2hDd
         nvqdyJxm/KBFnZB6QO3BgVi3y/rRtNkapnKTL63Pd51pN63kJUZzlAiPh0NH3U9nC9bI
         AZYNJ/DNxUy4fkScPWPvx/cNzwsZU+nJjAZSQKXLKVi6Kdz9Eawy9JVcrcTKiSf+zwNb
         Ultw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id cb6si97453plb.4.2019.08.29.13.22.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 13:22:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id w18so4230615qki.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 13:22:01 -0700 (PDT)
X-Received: by 2002:a37:bd44:: with SMTP id n65mr11608757qkf.286.1567110120585;
 Thu, 29 Aug 2019 13:22:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble> <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
In-Reply-To: <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 29 Aug 2019 22:21:44 +0200
Message-ID: <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>, 
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Thu, Aug 29, 2019 at 8:30 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Thu, Aug 29, 2019 at 10:35 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> So:
>
>  - we do want "memcpy()" to become "__builtin_memcpy()" which can then
> be optimized to either individual inlined assignments _or_ to an
> out-of-line call to memcpy().
>
>  - we do *not* want individual assignments to be randomly turned into
> memset/memcpy(), because of various different reasons (including
> function tracing, but also store tearing, yadda yadda)
>
> Conceptually, "-ffreestanding" is definitely what a kernel needs, but
> it has been *too* big of a hammer and disables real code generation,
> iirc.

I just tried passing just "-fno-builtin-memcpy -fno-builtin-memset".
This avoids going all the way to -ffreestanding and prevents the insertion
of unwanted memcpy and memset calls, but unfortunately (and
unsurprisingly) it also prevents the optimization of trivial memset calls.

On the other hand, I could not produce any trivial case like this without
CONFIG_KASAN, see https://godbolt.org/z/v440Qy

clang seems to behave similarly to gcc here, it will produce
calls to memset or memcpy when setting a lot of adjacent
members (17 for x86-clang, 29 for arm64 gcc), but not for two
or three of them. x86 gcc appears to always use string instructions
over memset().

Maybe we can just pass -fno-builtin-memcpy -fno-builtin-memset
for clang when CONFIG_KASAN is set and hope for the best?

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ%40mail.gmail.com.
