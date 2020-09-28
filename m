Return-Path: <clang-built-linux+bncBCMIZB7QWENRBHXEYX5QKGQEXPDM65Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E76D227A6DB
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 07:18:23 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id b3sf10101687ybg.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Sep 2020 22:18:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601270303; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4WmhZFE0iaDUdJW8AJtpoF9Wn7JRWjQSD5FBV3KGF3KgCdrlStqdANt0OxkqUHzQ5
         n2mnyizjNtuO916ZPTXuvPnucO+B875R9mKXROkhPn9UNQlscrDX243DpsG+J7+LbAEy
         8nh23P8l0v5iCh4kfGNHATXofPxpzYgWKe2mejU6X5LyWui6LggR16NwymDLzA7FOiB2
         UI3cuLouJIiHShEPctVaFCwtv8OElHcmGELPUVsYCTZKYCjPnzjp/Oy484TOzwKgWzj1
         HIw+4UxU2lO0IKh84YMFV+7+6t1FzGrDo+drFViIshVcaUk8TKO5k7n27HY2cmtv48Rf
         1Ffg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=13jLKr3UrlBcRKB8d5ajfMCj7rSMB2DBSSahdpyq3bg=;
        b=08nQH7f0gJuAUsGyIaFDAFvuerMZnpZGz7eQiyjGqLW18QoTDL9yxOx0WmEqtOm7JP
         5h1rqPPGCv7t9AKsEqbqIas/a6ak+WXjaxxVnNlzje3d8TFfb8MlicmrlmtoP1hCDpgh
         IoxCjWzGimLsyh01PGzeeio3np/xswZLoqCEMNoOlpAV2HFus5EI8t8LGn9GadEQ78Cr
         L0Aoa3WVU3RhaMTyH/F1ti2R5q+yaHNDwOADyn+K8jbkvf6wJWnuqh3EDsiljzqPanKQ
         Ea1RtZQ+6/XvEwborBGEAcL7XfvFJ+SFKQkheyX6i3fzxYQuud9UnMQOW5oqqFwlqQnz
         4b5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oEiMtOX4;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=13jLKr3UrlBcRKB8d5ajfMCj7rSMB2DBSSahdpyq3bg=;
        b=drisru9LyLt3rtP1hCfxgjKeSHWmXfNX3/mKeiTuQjoonW2Vw1B22IvqNGN0rSmSml
         wJzsIciN1W6VshyX1biZBzjx54OjqYiUhqQ98lm9AtEsxXg3UjOS0hCHBjIr9/+1pBLB
         uts7QurVMZ26V31Y1nTINHmAEzqaR0M5IvPgLuWXsdm/M23zR8uO9lEn7NTMshHq2FVv
         48CRGIUqh++atQbVJJi8XDCmNmtN2u8uWyCDJaajV+493E2yuwV0ycGLNIDRtuZRzyZi
         3bbtXOFupIed/ePtN1USKTy9cjAy7weLg00sMteORkLm5DbLG5sk0Ei+tfVn5GHaXJnj
         h0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=13jLKr3UrlBcRKB8d5ajfMCj7rSMB2DBSSahdpyq3bg=;
        b=fq0YgY7em73ouOLST6rg7Hj928K+27/oVUnrJTo4p1qd6YT2EVufIIpueBwrFaN0AN
         T39KzQxOsfSxYk5pX9B4EIoSTyXw0aqRpKaLmTC4uzDJhPSixfmyJdRAIpkRDdx6Ko+J
         l8rAUj/49vg5ZG1Eqfux6Vq0WDqpmiBqPgDpndTcskjWNyiSO5pnqNtq0TDcpLiUTh6N
         9fPWqwm0J2G1YtsS5s0Dsd3is6GsMhbUjlLqqleUXoC/bHKj8uqAVBZbvuzSuIDbAv+E
         pwLo8ZzgNd05IRnZiC7+OFWzQt3crBskSaTWGb5wgtAq46PyxVE/apd76X42BYMJgEYb
         dvhg==
X-Gm-Message-State: AOAM53132ZEi/hoPjgBZC26Tuh9Xamj4dsGIGEMpGrAxJCdR1Rj/CAbT
	nXJMfvdVt5Y0+By3wYDmlBs=
X-Google-Smtp-Source: ABdhPJy/xxau0SK0umEjVhjilMnaaSoh8IBUFqTd3Q0APmwoMOGiRzbMs0mMc1LpPQ7lp3EjXoGLMA==
X-Received: by 2002:a25:bccd:: with SMTP id l13mr13606193ybm.39.1601270302814;
        Sun, 27 Sep 2020 22:18:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ceca:: with SMTP id x193ls1584ybe.2.gmail; Sun, 27 Sep
 2020 22:18:22 -0700 (PDT)
X-Received: by 2002:a25:2a55:: with SMTP id q82mr14269981ybq.160.1601270302237;
        Sun, 27 Sep 2020 22:18:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601270302; cv=none;
        d=google.com; s=arc-20160816;
        b=wuGNhJq8pf1Ooa8EdqhrcEKZHXFU6X1qAGmfC8qD5TO+cYY35fc+0e1l9PmkEBrAKA
         uehueHdHPlktGaTRjTCB517uW6YruWvD3FiCLJ9XbVj2iwFDae994PvOBP59e0G4er+h
         +d1Ra4YsGTEXEhzXzz3PgeFfZG0QNuGe9v5gJ+qiHAj8TvRADnsrPdKqsyXlBxEOzgdL
         sQ/Te4jJVIeif2NQkdneJ+ZLFfYz9lpCxKIVFEDesldyJT8wTgc3VYDWNzTcmy1HUi+a
         B65ZcpaAqd6BUvrhIFhNsSx5hqm3zfakKSTy3x18ueBlvelxL1wTypQjFQ9tt33mNc+Y
         vLjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d2XXl28aJw72nA+d+RIQVO2h1O+NhlGZHiug4WRWF1k=;
        b=lBqmKEJbbsKgMKWd0Phi/b3kalyAc+wu/Vf7PsMzeTkN7bDeBTAfdEW8CV9gV2nwyR
         VKguSuM0xkQ090qu6mOF/yOuqOVULuVqnPvM+kY5iWRHBhCJKZk+2zW14+VE+3ETdQd1
         YxlJRhgodAeBF0dY+nQ4ciRJ7gWPge4zeIPszYSUAEg2ZbJufnar7UyLEKAu7vZCrtRT
         u6/uikDcghIJ4TdljorWW0s7LWhq22f9uPX4j7euTXEErT6xhW2THRBOhCsmjuV++Flu
         2wRQXYhMCPoXGQsvcdDVG1/7tkfcupFPbE2pRZBAfvjDMwasLFQYYicx8Krn8zpUN1q3
         pw1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oEiMtOX4;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id t12si737912ybp.2.2020.09.27.22.18.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Sep 2020 22:18:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id y11so7233128qtn.9
        for <clang-built-linux@googlegroups.com>; Sun, 27 Sep 2020 22:18:22 -0700 (PDT)
X-Received: by 2002:ac8:4806:: with SMTP id g6mr12484qtq.380.1601270301549;
 Sun, 27 Sep 2020 22:18:21 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200927145737.GA4746@zn.tnic>
In-Reply-To: <20200927145737.GA4746@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 07:18:10 +0200
Message-ID: <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>
Cc: syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oEiMtOX4;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Sun, Sep 27, 2020 at 4:57 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Sat, Sep 19, 2020 at 01:32:14AM -0700, syzbot wrote:
> > Hello,
> >
> > syzbot found the following issue on:
> >
> > HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> > git tree:       upstream
> > console output: https://syzkaller.appspot.com/x/log.txt?x=1069669b900000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> > dashboard link: https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
>
> All below is AFAICT:
>
> This compiler you're using is not some official release but some random
> commit before the v10 release:
>
> $ git show c2443155a0fb245c8f17f2c1c72b6ea391e86e81
> Author: Hans Wennborg <hans@chromium.org>
> Date:   Sat Nov 30 14:20:11 2019 +0100
>
>     Revert 651f07908a1 "[AArch64] Don't combine callee-save and local stack adjustment when optimizing for size"
> ...
>
> $ git describe c2443155a0fb245c8f17f2c1c72b6ea391e86e81
> llvmorg-10-init-10900-gc2443155a0fb
>
> The v10 release is:
>
> $ git show llvmorg-10.0.0
> tag llvmorg-10.0.0
> Tagger: Hans Wennborg <hans@chromium.org>
> Date:   Tue Mar 24 12:58:58 2020 +0100
>
> Tag 10.0.0
>
> and v10 has reached v10.0.1 in the meantime:
>
> $ git log --oneline c2443155a0fb245c8f17f2c1c72b6ea391e86e81~1..llvmorg-10.0.1 | wc -l
> 7051
>
> so can you please update your compiler and see if you can still
> reproduce with 10.0.1 so that we don't waste time chasing a bug which
> has been likely already fixed in one of those >7K commits.

+Alex, Marco,

There is suspicion that these may be caused by use of unreleased clang.
Do we use the same clang as we use for the KMSAN instance? But this is
not KMSAN machine, so I am not sure who/when/why updated it last to
this revision.
I even see we have some clang 11 version:
https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce

Is it possible to switch to some released version for both KMSAN and KASAN now?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZxt3-Dj6r53mEkwv24PazPzTxQ7usV1O%2BRB0bk2FzO8g%40mail.gmail.com.
