Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBNXJRGAAMGQEX64DDZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EAB2F8B61
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 06:08:07 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id p77sf8976995iod.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:08:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610773686; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENmCm76UGyPD7oqOQw0MtS1kQbKTqcfDwoxs/vZ608z8XNLFeQFglSMXu/MDkSj8pM
         qgzINMRVBUNY4/Lkpg5zd/aIuyNzcxAGE6FthNXZkQPX33LhxhgwBbjvYK+0U7R+opMk
         gqQUuNVODdGoi/+uRntZB7l8/xiJkCVUqqb0w178kltQfl9snmcLYlZS7sbRcpvH5Y2b
         /FugNqTYi3bmj56uoj+koE6LYgSfM9XukbwXMvKKrfjjs3tsPXBT3T2JY4dr7Y9VJlrp
         j7sryzFBfOYgal3Zf2EY8bbtTc6tk//GojsqwrX0Ew6n0Ma4/zHGd1O9iWjWsWyKjF9G
         jy6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xso6w4EO0tvBtMys0PmTe1DJVy1gdE3E43CXxVaEJ/g=;
        b=pfqrYvNzotwn0nrc5FzwfqxGo1KD3/npWzCsAoiAcBkuBYcN8H+mtg0+U29XRGPjSH
         SWNMrIyjqyXXyrvCWHoWdyWd6Bg1sxRWgN9v0hZCOs/ZzhK5gtwp6Ku0/cqQUMgDXxQr
         M0joYBweN7WRBWskWYwgx1Cne1qfR/LLvQdkIO2B2SxMz5vgEAw5nK7nrSruMYFlmMAS
         HCWmIgMu69/I8SmXAl10qqQBcQdFsI1EKpP7fcpo7VZMG0J9rd8s+oRTDF976FZl6Vzz
         su8YoE/7zU7W0KGzTtuSDK+tX3gmF5k0pfN4OuV/s32XpTlZvbDp784MvNjEPw+gj4AN
         z0OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BCEzZ30P;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xso6w4EO0tvBtMys0PmTe1DJVy1gdE3E43CXxVaEJ/g=;
        b=ATOCtKVLXq4NOcQcDj0B+ILzEVGK56hsTVNzXh248pehQZXPOafZGg41kSHhjacro1
         52pl/fEZLBtOi5W5V2PpJpg3YG04EdzNkoKntgkYg25OTp5K5ePqhxun+ZRAq37E6DkT
         VPI0m+g9seyGRzhxaEPDVtvRuVlG237DrP4mQxHXplteaXy9Wt8GiXcdDlH4bkA7uW7i
         MN97d1GMJBrm3Cd7gDMPeXIBRPTjv0Hgpv8uRWZyzg3r/e+hm7ZFtBEcYwW1Zi+5s7tK
         H82ykfIIHTs/ATvUqVuEfk/6eIhhOHp/28+H1xYlBKkuNM3Bzr+Ff4zEBKx/8SLpVyRX
         goUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xso6w4EO0tvBtMys0PmTe1DJVy1gdE3E43CXxVaEJ/g=;
        b=afb85nyimWGP0/FpJHuRiPJ+ODetm4ruRahVd/ECp5zbiFxH4D2VsuSqPyiu1MtQ51
         JW3pXnaTnz3j059gWoIzTrCVF0hh/w3YCd300SWtodUj5VmVuH1yaec5GngrYbchlasD
         d1h/LlCKGgptBm4uq9XEG/RArUYSl94jv9PyT6b5DnY+E0CgrHUNpCtB5sXdwMJYTkNa
         8dRIJiGqwmuwcCZ9l8AubveDPMgvQFIqPRgD6HaxwvmRyo5LsxJ2FNXEbEwziezC8Jj0
         Wc6DAFL06PtvwUI454UCgxXXE5sSBD09X7nxWvYfqKme5tl6HYo6qEQwj5yogsQJbbft
         4blg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xso6w4EO0tvBtMys0PmTe1DJVy1gdE3E43CXxVaEJ/g=;
        b=XPX4Wv59ozJ2G1L50eOo6ENIZcjVp6VGz8+8Oy8dGEtjMPjqfkz60AmZpFP1zPEeqZ
         nenUt/l60werhXWRhaR0O0KpTVJwSPD5buY9hv06x9TDRZyHaJ7cN4dvsFdKavOsYHB0
         K1jIuhR3bh7zEhdC/ogb7AM3TGXlX2Y+TSYqLCE3CBu3st5kfKk1YhjpKIB0g9nSzEtQ
         91Qdlv1xWKy05bw8z5375FG0q8iyPsN+9MuC6OvBxEU7KWerbmnntzO+zP6BNsIbT81L
         LO0xIvzVuLEs4/8VKzwtzHIASi1KZSY+VJBBPfT6URb4Z2skSE4vJv+IJYbJSzTLt3f2
         ILrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iB+CKF+FLDirbYhC6mlNUiSPlwxZgYs8sgLHj7O+EKmBT6MXd
	rI6GxF4qY3q8sGWoqlxq0lA=
X-Google-Smtp-Source: ABdhPJyLp4L2WX+Z/vjVkgigIHdnmkfv3bWSGtKYBV4bHKQPrU4iFgXTMuYJqzbYGvr0OIte/O2Pmg==
X-Received: by 2002:a92:845c:: with SMTP id l89mr13810618ild.114.1610773686741;
        Fri, 15 Jan 2021 21:08:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:1445:: with SMTP id 66ls1621797iou.11.gmail; Fri, 15 Jan
 2021 21:08:06 -0800 (PST)
X-Received: by 2002:a5d:9252:: with SMTP id e18mr11171676iol.146.1610773686221;
        Fri, 15 Jan 2021 21:08:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610773686; cv=none;
        d=google.com; s=arc-20160816;
        b=BaHPEmLPdv/77McRCKVwJterVNPj8NzMLv4tcOfvAcwqf+06nKPsow9kIwWSst283E
         ywQGiR/lv1paFu45Y2JJKX2zYS0ygpZLsDY2xxAADKfeUzEtjXNWdkGOwkCZrQW8ecYV
         4ElNzVW6twCXQdqBw76paJnWVZaQFyJnMw2gQpAeyweXbhuvtsetVtY1FpRg0nVeWC0B
         05V28JuSMw+FYmwDKfKpxRunyWZDcz9+ZHDOwmGpWhZCy1B2SIWk+ZL66cGNLarX/gZI
         uaQbMag5cQKd1FXhwkXtiFYhO53KidugBJSF/Ffm4uVZrgajfEUl4m2zkQGDvDsZW29u
         ltJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nIQUS/B/jxToiqnwVuNwCI5mEHFlIKg/uOPqX0C2Wtw=;
        b=bpdsoDF1oGfWj0vPEn1o8aKbCkf9fVlpQwhlQLNt7FpR8ADNUs9IzWxXEgCMFAn5hj
         /ukSx5ooBAaPsMPnYM+q0FB1IGnUT6JJ3/FWmzVSV2pbTv/3IbTQkXVDIJT7Tb1BzZRW
         Stn8lYc6bt9IyYQAbXEPTdZE3bbJ2tbDvjkzVgzuAxesy1EUwNM22+38MlD9/+uq85gR
         WB1kGZK4xz6jilvg5n0FAKSEp5i55zwqblZxKoqD3GOBiRB8YtQOOkepbZ4a3lJCdfDa
         CrYmx4RFn8uUOcN2Bn5eATn1aricZQ3W4FSu3Jr+S8MnjtP9SZHiRNMM85+Lsq1c+jtH
         kqYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BCEzZ30P;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id l3si602190iol.1.2021.01.15.21.08.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 21:08:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id n4so22336976iow.12
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 21:08:06 -0800 (PST)
X-Received: by 2002:a92:8593:: with SMTP id f141mr9063480ilh.112.1610773685903;
 Fri, 15 Jan 2021 21:08:05 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=rEngs-8DR6pagynYc5-=a06brTOOx5TT1TC+v7-3m2Q@mail.gmail.com>
 <20210116001324.2865-1-nick.desaulniers@gmail.com>
In-Reply-To: <20210116001324.2865-1-nick.desaulniers@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 16 Jan 2021 06:07:54 +0100
Message-ID: <CA+icZUW-H4LjVhJHSr2W3UJotvB6Eq1bFO_bQWT8=GQqcB4A1A@mail.gmail.com>
Subject: Re: [PATCH v4] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, akpm@linux-foundation.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, corbet@lwn.net, 
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, masahiroy@kernel.org, 
	Bill Wendling <morbo@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BCEzZ30P;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34
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

On Sat, Jan 16, 2021 at 1:13 AM Nick Desaulniers
<nick.desaulniers@gmail.com> wrote:
>
> > On Wed, Jan 13, 2021 at 8:07 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Wed, Jan 13, 2021 at 12:55 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > However, I see an issue with actually using the data:
> > > >
> > > > $ sudo -s
> > > > # mount -t debugfs none /sys/kernel/debug
> > > > # cp -a /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > > # chown nathan:nathan vmlinux.profraw
> > > > # exit
> > > > $ tc-build/build/llvm/stage1/bin/llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > warning: vmlinux.profraw: Invalid instrumentation profile data (bad magic)
> > > > error: No profiles could be merged.
> > > >
> > > > Am I holding it wrong? :) Note, this is virtualized, I do not have any
> > > > "real" x86 hardware that I can afford to test on right now.
> > >
> > > Same.
> > >
> > > I think the magic calculation in this patch may differ from upstream
> > > llvm: https://github.com/llvm/llvm-project/blob/49142991a685bd427d7e877c29c77371dfb7634c/llvm/include/llvm/ProfileData/SampleProf.h#L96-L101
> >
> > Err...it looks like it was the padding calculation.  With that fixed
> > up, we can query the profile data to get insights on the most heavily
> > called functions.  Here's what my top 20 are (reset, then watch 10
> > minutes worth of cat videos on youtube while running `find /` and
> > sleeping at my desk).  Anything curious stand out to anyone?
>
> Hello world from my personal laptop whose kernel was rebuilt with
> profiling data!  Wow, I can run `find /` and watch cat videos on youtube
> so fast!  Users will love this! /s
>
> Checking the sections sizes of .text.hot. and .text.unlikely. looks
> good!
>

Is that the latest status of Bill's patch?

Or do you have me a lore link?

- Sedat -

[1] https://github.com/gwelymernans/linux/commits/gwelymernans/linux


> >
> > $ llvm-profdata show -topn=20 /tmp/vmlinux.profraw
> > Instrumentation level: IR  entry_first = 0
> > Total functions: 48970
> > Maximum function count: 62070879
> > Maximum internal block count: 83221158
> > Top 20 functions with the largest internal block counts:
> >   drivers/tty/n_tty.c:n_tty_write, max count = 83221158
> >   rcu_read_unlock_strict, max count = 62070879
> >   _cond_resched, max count = 25486882
> >   rcu_all_qs, max count = 25451477
> >   drivers/cpuidle/poll_state.c:poll_idle, max count = 23618576
> >   _raw_spin_unlock_irqrestore, max count = 18874121
> >   drivers/cpuidle/governors/menu.c:menu_select, max count = 18721624
> >   _raw_spin_lock_irqsave, max count = 18509161
> >   memchr, max count = 15525452
> >   _raw_spin_lock, max count = 15484254
> >   __mod_memcg_state, max count = 14604619
> >   __mod_memcg_lruvec_state, max count = 14602783
> >   fs/ext4/hash.c:str2hashbuf_signed, max count = 14098424
> >   __mod_lruvec_state, max count = 12527154
> >   __mod_node_page_state, max count = 12525172
> >   native_sched_clock, max count = 8904692
> >   sched_clock_cpu, max count = 8895832
> >   sched_clock, max count = 8894627
> >   kernel/entry/common.c:exit_to_user_mode_prepare, max count = 8289031
> >   fpregs_assert_state_consistent, max count = 8287198
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210116001324.2865-1-nick.desaulniers%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW-H4LjVhJHSr2W3UJotvB6Eq1bFO_bQWT8%3DGQqcB4A1A%40mail.gmail.com.
