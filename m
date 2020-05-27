Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBH6EXH3AKGQEQNE75XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5AC1E42AD
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 14:50:39 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id c3sf5548286edj.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 05:50:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590583839; cv=pass;
        d=google.com; s=arc-20160816;
        b=MutYDOdqKa3/0YrvDSrmk2CstJzreAVUphCQUFA4YOn+iJF3q0SfSG8z36IIg5u4DU
         BN5UhE4H5HwQ2J5q2jVEcBwtWrCarkJKyEiP+NCgt232SyYNzX1gdlgY7oq7vgEr6Bun
         rq5R0F4+vFRGoFwlgbnnozUNrpzjFrjfVozWslxtpo6u6xuqEv0NeYvz3zLa/Uyg3LTo
         6d+77zbBZtqGrvFK+chQGvHBRGLP8PCcp9Ed4DC1PJpwXMTWY4vtgLFQQTo7jcJcJYfe
         223jPkQST3/tpKw2SVd4szRjcfPYhQd8uP/oIcTe1i/gkCeRNzfuj8xnu/OGiSqLmtsy
         cs0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=o93EeL8KVNRWVDdMXuLDEZbDL1c4Qp/5fDX8vbvP0s0=;
        b=H1YvTR6zXHta3PoxgXS60bTJ8e97/mgYOWNURFZN8i4+DK5MQk7n34IgI10hgteZVE
         xgxl2J7f8wAp92hs80qLw+j68PDqp+IW7CM1lBTixZyrOLjr9NrPTtxqJih0u9k5ku6N
         zxJ5gx/EnClhC3BQQPk8atkG2X05uSL3sjqKNZdJRggjMtrMWJNXRg46icEGvamCrW3w
         fmP2E0l7tMFakFtQXdVL/TzqmOg3/DQ+tijFm0ciy3PM6t533kbAhKsZkH1NgYz2vJ2D
         1dB3ohGu2sxBln6OZ8UwtdQv6w7GQTtSfXiBKMl6VrX87TZH0dXCMW3c0m9UYezsXt6K
         eBuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o93EeL8KVNRWVDdMXuLDEZbDL1c4Qp/5fDX8vbvP0s0=;
        b=Vwp9uon0O2V2oFK+jq8pq5iOnTYCoxgKSVNCvnTOwiUK0RpgvbRXg+1NDhcTN0eTpd
         m07SMkHqMqQ+TXQzv+xjMG3tG1cf4BxMdmceaqFktAxdtDKzFDo+9klALvIKGGBS+mho
         ya8g8rXJDCUSWZmLMl4GtvAvazBR3X92Xg4EQqtCI31yqwT5EilUlTn01P4f6rMqcxKc
         sLF5Ma6f56ppVfkU4eqEHXQBRrfd6zi7M5xOYTyz9Q+RtGM27n2d+RnieJotReJ7nFpx
         t1265kC/XsK7vxICf5jw5r4vmiyJAftP3s7ULrkMO05hi0x3YbOxHmcoqcpfMbW6jGZt
         8VFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o93EeL8KVNRWVDdMXuLDEZbDL1c4Qp/5fDX8vbvP0s0=;
        b=kmmUk7gOpItM8hsacTd719YcytNLRpDVCE+e3rYTg3cbXOlgHhfrN8Aa4gcqqcT9kU
         Ye7P+QSWL6oUYA8HssjzmNOBTNtibLdyoghxbpeUxKFAwS0WWO4HaozPX3tB8QQkTioE
         0wMZjwUDXxRvJWvNYXsedNmLJdz0izvGi2tGgHfTPw7fDxj6OUdMFwi/sh3RyhTQIlta
         hmFqGqISgNxdPkYCiIqIgQg3qBAMc7ayZM1+X2Vy/FmzQu+5rHqlVsHO1ULaXCUNcFT0
         9n7qPih2VeUf6GVM954DZkQfobV31GN8lh545+cCbv8rL9+xReC0P9qvqw5cCsG2hYMr
         sIng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532S3w7zMNaZ27Tyous6xt6KUCUeD7ymaf7F0jbBjb8EIaGzNaT/
	nLxSgPM6TaMhNgD27JyJgx8=
X-Google-Smtp-Source: ABdhPJwq/cQe6D+5E3e0whxYEhl1Wa3myTe83mBUyH2SyRNQOoCHfopcpRMCP//NnV6dPWprEvdTfg==
X-Received: by 2002:a17:906:33c1:: with SMTP id w1mr6300933eja.313.1590583839259;
        Wed, 27 May 2020 05:50:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d2d2:: with SMTP id k18ls14972946edr.3.gmail; Wed, 27
 May 2020 05:50:38 -0700 (PDT)
X-Received: by 2002:a05:6402:5:: with SMTP id d5mr24296464edu.247.1590583838689;
        Wed, 27 May 2020 05:50:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590583838; cv=none;
        d=google.com; s=arc-20160816;
        b=FOVLRMJ3iuUwH8WJzHIgqWAV7OjrK/rAAjMJT+VzQJmCS6MVbuWkYzb9olb0OYuDMU
         jGmRndsTkXKr3BQrcoTb1Oy4971X46PQ0Y8TqHF4vJxZwTbGu92NOjgEEc7OP3wDSvK8
         1F/daHqYk97li7x8Q6Vl7uMVXO8ai50AZFRzqHabsO/pFInABIF+Tn2PGFgoLkaoXypj
         2u4wU8AN52684tk7pblvezfubqCdwjeLqZ3+kDYZOPNl1MdLkOBRjg9jsaZ3zFiFCwPi
         A52XTgm8oQlOMhtbCu09yuj+ZVyVgwxwxjjCjkbnEwUXzgmw5E4W8CVgUmavP5jFQurr
         YhOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=SjlUDgGaLjzHIwqSWSWLPaSWF5QMnSb3qK3mK7SdDCk=;
        b=E/RqGezqm7FTUJGeQi2qSS7ko6Pi37NgzZGQTt2+6C6aptLB+8n0ZOyFQRHEHPbv67
         OLD//Tad+RaLnuV9zTRnel8arZp6FFeLezj01ru4bFOqcm5HjgQUBwOZJDw2iWozawzo
         rD5zTQOlzVJX281ivL0LAB875NeL6B63JPzLVtrWoTSDejBP35GtJbM9J43mPw03CVYf
         aHEiK8+YzOo6ZwLdOc0ic+0JVrH914/vHp3i646pW5mc23FuCKaSlBsKVLImi3lsN5RS
         KkmklWNhBYp6vsJZQ2APiqXRNwsOuNMDFTJoxms/MXkTuzz6CXoV5pfqjX5xIeXwLWXt
         gqEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id o23si137898edz.4.2020.05.27.05.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 05:50:38 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-qt1-f173.google.com ([209.85.160.173]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M1IRY-1jbBQK0D7a-002lLd; Wed, 27 May 2020 14:50:38 +0200
Received: by mail-qt1-f173.google.com with SMTP id j32so4059536qte.10;
        Wed, 27 May 2020 05:50:37 -0700 (PDT)
X-Received: by 2002:ac8:1844:: with SMTP id n4mr3896231qtk.142.1590583836877;
 Wed, 27 May 2020 05:50:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
 <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com> <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com>
In-Reply-To: <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 14:50:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com>
Message-ID: <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com>
Subject: Re: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Marco Elver <elver@google.com>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:Gd7aGXUyty0UAbLIe5ipkPsFNX4oQZqBROlo3KrEdFqu167d2Am
 b5+eiRFIO4KbIiRVfruuAzeQ9H32JYesB55IbiiBr7FUxZnDqwEyPAkaSIXQAZOFr4e3brN
 VzhKzGHACtRt4zaMdQcFol5V3tTxGXAb0huKIMjXjMF8mBAuKu5VTtaMVHKJf4CW6DE2yLl
 eV4Z/t7moqAFGWB+rDj/A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pnZykpW+VLk=:yZ+cob4Fjn9wcuRbtUWmFm
 49eSE1ulxXa+D43doQgnd2vdR53UWWrozgu/JPH5lD7IbfwuS2pniZm0rLTnPvlRZ9E901euh
 YFNitCIWiVOzZMAECAx1KyF8kBbSCnWX+RM6h502FpW6X5DrmNOJZE5G1Qb4Shp/2iTC+2w0B
 k7usy69Cul1Ct6EWANpqxU/ygmQ2TAvUCxHUSi+UucVFKzfHxIg7QPHDWJWdFyiJpsnq3suqd
 fhTrWOLtRHtVJ+1mkGE2Y1G+uFyWPx2fsJ82BWoCpayro08ih1Hx8b89bj3aXXLEvMOzPBZe+
 vr6IrPjhhFE8ERLEVJDTyUZNo6ojhu7KOdrAfcsYjYGOFQ6x/etbhxeTZ3Kg4f8XIh9D1Swks
 D5sr+wZ2CZ1ZhMwHpAHqvi8VREIzXjdZ45lzJxaUzQzY8X7nod3Kk6pRnTbeSy5GmDPMh8nwG
 qOce4bqE/slekra/dDBZTWVylY02gkoE9OwfCZEf+UpRwdlEE46pjJK1MnNS42Qy+Ivp8Xhr2
 w9IP8FTf+yZ9u7vaWt/LVFIjtkRTipJbMH49clwZYqQC6vMkgZzzNROl1s6sVGnAjpNV540qv
 Z3eOeRUmgCpVbKkKEbCl5feuqaa2s3mML4amReLpc0hq4dlb0U2RZeagsnTKN0ZtsVtUvZ/ho
 NG28+WhhT6RZS73vAwbGcRUWRHKa4y6UxeQUhEMsd39bmJiDA7KNM6Gmi5r/TsYHxLWP0ehBn
 HMUSyq4ypn7waioiVS90yjU7Z5SHYBEDpY6rdnJkTzuhYcpre4Y0laUTaGIvNPAyEPq7U3J0C
 4gCJQRbOi2npeF/PiFvOdPBuyX/X78XOTYCEUCsxdjQO+46PJo=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
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

On Wed, May 27, 2020 at 2:35 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> On Wed, May 27, 2020 at 2:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Wed, May 27, 2020 at 1:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
> > > >
> > > > This gives us back 80% of the performance drop on clang, and 50%
> > > > of the drop I saw with gcc, compared to current mainline.
> > > >
> > > > Tested-by: Arnd Bergmann <arnd@arndb.de>
> > > >
> > >
> > > Hi Arnd,
> > >
> > > with "mainline" you mean Linux-next aka Linux v5.8 - not v5.7?
> >
> > I meant v5.7.
> >
> > > I have not seen __unqual_scalar_typeof(x) in compiler_types.h in Linux v5.7.
> > >
> > > Is there a speedup benefit also for Linux v5.7?
> > > Which patches do I need?
> >
> > v5.7-rc is the baseline and is the fastest I currently see. On certain files,
> > I saw an intermittent 10x slowdown that was already fixed earlier, now
> > linux-next
> > is more like 2x slowdown for me and 1.2x with this patch on top, so we're
> > almost back to the speed of linux-5.7.
> >
>
> Which clang version did you use - and have you set KCSAN kconfigs -
> AFAICS this needs clang-11?

I'm currently using clang-11, but I see the same problem with older
versions, and both with and without KCSAN enabled. I think the issue
is mostly the deep nesting of macros that leads to code bloat.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3i0kPf8dRg7Ko-33hsb%2BLkP%3DP05uz2tGvg5B43O-hFvg%40mail.gmail.com.
