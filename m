Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBEGMQSBAMGQEE4TFFIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DC632D962
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 19:25:22 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id b12sf18659578pfb.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 10:25:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614882321; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vtcd58Np0YlDkOHn297bteJdLf5I5JTQKaUHZxIL3l/T2n23jDe8pxbw/KABequvKi
         LmgvoNYfVyWT63W7e79BLwQVhLdMjgPrwDmIP8dRCwoFFpgqJSw/MY3AUj0kBy+gaP7s
         yDNUUmr11IldLroBCApo7/QD0UbYWg+ndMet4wqKK91NW7JpgHGULOOXaszmZySNY4zu
         FiaEDTwa/2UsGNJYKld/6VN+DESVgQqkPv4nJfoRx7HkeYvKMt+1m7m+FwX8DsD0HbCh
         YyNbhS7fcHT0SAGZj5HYymoJM9Mlx6hvgfTjdRXoJXrp35j9AsGYwt5VDkYTu71RduzV
         2Y3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=9z/Zph6ztWSaOHAeolKULyEZ5MVwAzQ1F6jYIgbtDFE=;
        b=oiIPOIQPf8pikDJAggYIqQZi63IifgTEur7JFyvkMTtiw+VxZakOVJVS/ruNMAGQCe
         SFx0zjgESPbH47/qt/IJag4yzyCZNzVtg2T7Dj6ib6/eMX5POf0TCU69o3I+J8CZ1ZNW
         IWIG+3CaXGKiLNGFcP27OY3XtcYtz+gu1+RpH9cmJGI7BTVaOMfcpOlNzHDlBiRXDWQz
         8rMuuoraDMj5IK4V8JxZcHdTh14SjcTI+5b3uG7XkfxU9C++vSH6pZawW65u6M2NQnEf
         S6kmJZsouXGY7YtXAR5BnXzs9Ip8wZ0LHSAT4BeN4r7qZR7aCwHARowWsB5ygMGze8ML
         4rbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lw9zWDpz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9z/Zph6ztWSaOHAeolKULyEZ5MVwAzQ1F6jYIgbtDFE=;
        b=sRhcJAlFmyGom1hFd3NKLaLBL9GjV81s3uNi9Ny/ayeVFe2F8grKpk8sdN6iIAMZ3X
         dUcbvgAF6ZH4SnB8Hxiy1Q2FsVCy8GAx3ik8oxGibkVwmWXIRsXIg8ZyUQAz5ZGt9RPQ
         fPtG8GNVEToJUM3jV+VFsPwk0bs55KM2k2mVu+B8JH13J+JT7ct0nRsnqCpXoELcuYQu
         l/mFfW9L5hWZEjR0xdmNeAXplDxXAvr28ZDiCNVG0cBikzEXw8GZbarx7Mo8AW0ThfAw
         4pyGsV5XXuute+xMt6AvmCtynh0KeHrmmDoK+/JOiHmngClpX7wi/CMTa+oxGq/ikADf
         HC+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9z/Zph6ztWSaOHAeolKULyEZ5MVwAzQ1F6jYIgbtDFE=;
        b=lAwAwVpnH2T1aNyq7ZIg/MhM2+SZS1gAvVIOLxhRKeZF9xH3iye+lXnLcJdWU9uxSy
         n/llPVn4IcagudqkGbvS+aoFggD7b8i6FVV5bLsGbQyTdeZGmfgCaF+43sD8q9pgYhiz
         Aksvs9ayCvM/OXUP5LI7pIFg+4uQ9T4O3XLkp5SBsZmeAPmsH4Qe8ZB7VS+coSMLnHWR
         2naHyV9XFXIAeRWM7BsOq5mnDydXpv/PdmcGfOY6dfsqJyUeKtMZLy9m0xmX0JgvP7IV
         7QmAxykxHwphugK26YbCokrFQJNzd5O/JyJsUUv9MgaK4IIK36f3VFCByo7BO0FuDjm3
         p5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9z/Zph6ztWSaOHAeolKULyEZ5MVwAzQ1F6jYIgbtDFE=;
        b=kppdpYhUJkzo9Sl6B2LKZtG+Um+n2akXMuJbZOhqcjx7LPUmLNEowEcJiwntyNaEFK
         hhcBHHq7RUJ/BtnRb6TOeF7oCuStqaNcQhNYl8Yc8VnPYUlms5OeKr5trFc4DEtTmaaL
         rdfZApuDAl5wjrNgvzVd+ux01RN1dPP8HmZCyp+VrgW1UyptQjAZIJrL60eyCBL3Mw9O
         SvaiyYsxIfkAF7Qx/tNr8j5oqdOTbF7XbzNu3YdAVuWIVy2FCnAEWVKt5+MM8pUWwXVl
         bYRoLYL0s5+24AaEPmY2abg0ZIpQ6lK4jpvo3dob20IKYXpeoQUabjijR5KD82PKJgTk
         HFoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jeWOxcLkISILqvDazwinNv0+yyQiyxbZK/YGMDgx5GRhtDON5
	oMZXiE42MilAkqmoP0InyeY=
X-Google-Smtp-Source: ABdhPJzkoTXFOaNZzo5n1W6eiMH1xvve0z6KjNCVXoUyJY5Rd0UO3oIemVv4ktbzEeYGKRhJqT0KmA==
X-Received: by 2002:a62:aa0a:0:b029:1ef:fe5:b172 with SMTP id e10-20020a62aa0a0000b02901ef0fe5b172mr4993848pff.9.1614882320807;
        Thu, 04 Mar 2021 10:25:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:4115:: with SMTP id r21ls3282442pld.1.gmail; Thu, 04
 Mar 2021 10:25:20 -0800 (PST)
X-Received: by 2002:a17:902:ed8d:b029:e2:b3fb:ca95 with SMTP id e13-20020a170902ed8db02900e2b3fbca95mr5083933plj.17.1614882320159;
        Thu, 04 Mar 2021 10:25:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614882320; cv=none;
        d=google.com; s=arc-20160816;
        b=OH6oeOobSbKqpihd8EubEEpqPYdv6Z7AwT9GRPuQQMfoUkZgSDdRSeCzbogCBQlg6k
         kPWA7oLFYy2qoHpD8iCcUrUdFNMjCaI25/+SCmQBO3yna7sK30AHEnmCb7kyJVJyG7Sk
         naKt/7gnIB4d84ukRMa40vX/NfXdZdKnud/YPj3fRMFxAZwqo4SmMdqZla7leZ/HwWVI
         eScea57PC2oid4xakKxb0prq/O5RatD3fWLjzk2rc/Y2JMAyPKztwjZOGAcXuhvP/qoM
         4Zd1U5QGYP8ovUBHa9Ezt8PHRagtjguglF8wdP+50uSSbg19/YsI8ToPVM84chFBTJUR
         z/dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=7HgUeD5bwOAzWP+7Vvt95HJxa5oED3iD/QXXgkxTfuw=;
        b=E4LXwdHVf4+n8VWt82i7uq/3+68VH0N4ewxqLgMiwFulnzb0zSYP/ReVNxdS05xcyz
         z8hrP8io2nxDmga570/xziKs1qpy7kSwo4dS729cZigYltv0jEDjJuC3/prmdLdHLTHt
         6cqQQWUWE1193jE7zUpvj6xBQF1OPp5Kn6BYthHlDTYOC9CE+DSf30bGwKQV59mZVqFY
         i7iuk2d2iTKZBwcaHhAn7TkddGKz2BZT4F/CkuHLp9rmbZA+8JVVY266QUV0Mat/cnbT
         UbOYrW+JredEvlyTwsYii4FHeG1JuBaJYd384lTCj2ljzUFmvgkEOKVliJWENiIFQy/A
         RViQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lw9zWDpz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com. [2607:f8b0:4864:20::134])
        by gmr-mx.google.com with ESMTPS id z16si17706pju.0.2021.03.04.10.25.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 10:25:20 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) client-ip=2607:f8b0:4864:20::134;
Received: by mail-il1-x134.google.com with SMTP id e2so25700823ilu.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 10:25:20 -0800 (PST)
X-Received: by 2002:a92:444e:: with SMTP id a14mr4969120ilm.215.1614882319769;
 Thu, 04 Mar 2021 10:25:19 -0800 (PST)
MIME-Version: 1.0
References: <YD9dUkGhlRT8vvcy@hirez.programming.kicks-ass.net>
 <20210303224653.2579656-1-joshdon@google.com> <CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA@mail.gmail.com>
In-Reply-To: <CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Mar 2021 19:24:43 +0100
Message-ID: <CA+icZUUw0T2NpTcN4witbzYr1L7dF=rHKWq14ji_426G02QoEw@mail.gmail.com>
Subject: Re: [PATCH v2] sched: Optimize __calc_delta.
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Don <joshdon@google.com>, Ingo Molnar <mingo@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>, 
	Vincent Guittot <vincent.guittot@linaro.org>, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>, 
	Daniel Bristot de Oliveira <bristot@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Clement Courbet <courbet@google.com>, 
	Oleg Rombakh <olegrom@google.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Lw9zWDpz;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::134
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Mar 4, 2021 at 6:34 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Wed, Mar 3, 2021 at 2:48 PM Josh Don <joshdon@google.com> wrote:
> >
> > From: Clement Courbet <courbet@google.com>
> >
> > A significant portion of __calc_delta time is spent in the loop
> > shifting a u64 by 32 bits. Use `fls` instead of iterating.
> >
> > This is ~7x faster on benchmarks.
> >
> > The generic `fls` implementation (`generic_fls`) is still ~4x faster
> > than the loop.
> > Architectures that have a better implementation will make use of it. Fo=
r
> > example, on X86 we get an additional factor 2 in speed without dedicate=
d
> > implementation.
> >
> > On gcc, the asm versions of `fls` are about the same speed as the
> > builtin. On clang, the versions that use fls are more than twice as
> > slow as the builtin. This is because the way the `fls` function is
> > written, clang puts the value in memory:
> > https://godbolt.org/z/EfMbYe. This bug is filed at
> > https://bugs.llvm.org/show_bug.cgi?id=3D49406.
>
> Hi Josh, Thanks for helping get this patch across the finish line.
> Would you mind updating the commit message to point to
> https://bugs.llvm.org/show_bug.cgi?id=3D20197?
>
> >
> > ```
> > name                                   cpu/op
> > BM_Calc<__calc_delta_loop>             9.57ms =C2=B112%
> > BM_Calc<__calc_delta_generic_fls>      2.36ms =C2=B113%
> > BM_Calc<__calc_delta_asm_fls>          2.45ms =C2=B113%
> > BM_Calc<__calc_delta_asm_fls_nomem>    1.66ms =C2=B112%
> > BM_Calc<__calc_delta_asm_fls64>        2.46ms =C2=B113%
> > BM_Calc<__calc_delta_asm_fls64_nomem>  1.34ms =C2=B115%
> > BM_Calc<__calc_delta_builtin>          1.32ms =C2=B111%
> > ```
> >
> > Signed-off-by: Clement Courbet <courbet@google.com>
> > Signed-off-by: Josh Don <joshdon@google.com>
> > ---
> >  kernel/sched/fair.c  | 19 +++++++++++--------
> >  kernel/sched/sched.h |  1 +
> >  2 files changed, 12 insertions(+), 8 deletions(-)
> >
> > diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
> > index 8a8bd7b13634..a691371960ae 100644
> > --- a/kernel/sched/fair.c
> > +++ b/kernel/sched/fair.c
> > @@ -229,22 +229,25 @@ static void __update_inv_weight(struct load_weigh=
t *lw)
> >  static u64 __calc_delta(u64 delta_exec, unsigned long weight, struct l=
oad_weight *lw)
> >  {
> >         u64 fact =3D scale_load_down(weight);
> > +       u32 fact_hi =3D (u32)(fact >> 32);
> >         int shift =3D WMULT_SHIFT;
> > +       int fs;
> >
> >         __update_inv_weight(lw);
> >
> > -       if (unlikely(fact >> 32)) {
> > -               while (fact >> 32) {
> > -                       fact >>=3D 1;
> > -                       shift--;
> > -               }
> > +       if (unlikely(fact_hi)) {
> > +               fs =3D fls(fact_hi);
> > +               shift -=3D fs;
> > +               fact >>=3D fs;
> >         }
> >
> >         fact =3D mul_u32_u32(fact, lw->inv_weight);
> >
> > -       while (fact >> 32) {
> > -               fact >>=3D 1;
> > -               shift--;
> > +       fact_hi =3D (u32)(fact >> 32);
> > +       if (fact_hi) {
> > +               fs =3D fls(fact_hi);
> > +               shift -=3D fs;
> > +               fact >>=3D fs;
> >         }
> >
> >         return mul_u64_u32_shr(delta_exec, fact, shift);
> > diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
> > index 10a1522b1e30..714af71cf983 100644
> > --- a/kernel/sched/sched.h
> > +++ b/kernel/sched/sched.h
> > @@ -36,6 +36,7 @@
> >  #include <uapi/linux/sched/types.h>
> >
> >  #include <linux/binfmts.h>
> > +#include <linux/bitops.h>
>
> This hunk of the patch is curious.  I assume that bitops.h is needed
> for fls(); if so, why not #include it in kernel/sched/fair.c?
> Otherwise this potentially hurts compile time for all TUs that include
> kernel/sched/sched.h.
>

I have v2 as-is in my custom patchset and booted right now on bare metal.

As Nick points out moving the include makes sense to me.
We have a lot of include at the wrong places increasing build-time.

- Sedat -

> >  #include <linux/blkdev.h>
> >  #include <linux/compat.h>
> >  #include <linux/context_tracking.h>
> > --
> > 2.30.1.766.gb4fecdf3b7-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA%40m=
ail.gmail.com.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUUw0T2NpTcN4witbzYr1L7dF%3DrHKWq14ji_426G02QoEw%4=
0mail.gmail.com.
