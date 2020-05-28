Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBRVLX73AKGQEQHL2K5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A2E1E65B4
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 17:16:23 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id y6sf7766165ual.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 08:16:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590678982; cv=pass;
        d=google.com; s=arc-20160816;
        b=liMHSxO64VgrAdbDdItDGg2DWIr8tI/FVtmliKenvJu8Dg/R3KtB85af5bZ2EjMR6P
         JKNKUMDpek/1h17vv5nP32h8Jaj+wfV7pmqMD0QTROtenv7BGF4DPNoJlLSO+1XE5bKO
         hg8j+STgHerqe/FzCDBfclrtE3aSeJ4q9grpAWYOZc2Cd9L3YohHZ55+auXHcWqyjTxD
         9GsEqZOBrfyRtw/AbcMZKKV54YymrPdNRLSsc1MeO1ib0N9yejvYmgpRAIqRscSoxsPO
         JjPE6STGTvQ/6WPycm/EdGbFMrhZotPKO7diFVTJCrl+0CSC92lsARus1dJv6CBaHMTW
         5W5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Fb/TF/v8qyd6i8nq/8OsgpdszGaPHDz6PWQH0y/wKaE=;
        b=VVhc0BDQoOE3xUdH0ACs3LgxMn/4IXr/0BpDvfuOaHVrnHCCwUVFN0kTCrsPA88oQy
         ZkcrcZv+5AHKMp6GJok0ZFIjIHZ0ZSpoyRZoaoWNUW2alOlR1YB0PCQyi7lzGdgqmxN+
         xYqTK15E2c6VQLeaynObwstUbtH7LbrRqA7QMHVUeN0u0rCT7Upm2Fysm6yeWWETyZ44
         HdVkyN9i+f0qKDr+Ff3xFD8kQvaBXG6aDewGFwNv2ZPnDTR3axKnoOcUnO+aDOO7aC3p
         gC+YSDFHzi3IwCGi5pE62qJrCSQJ3ecs7KsHvsxckoZS60sqEI7YVpaso5JYzr5MZxrs
         G+aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A4SBl6/w";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fb/TF/v8qyd6i8nq/8OsgpdszGaPHDz6PWQH0y/wKaE=;
        b=g9r28YLlw5F47CYK+soRR90YO/sYIxs/Ys/l15J0OmLs1eMdTt7mF0O2Q40mWCv+Nz
         8DPd5yXWWayEVA3jNxAydEIhxD3dF18h8GDCVaSqmccg6TGKJocGu7UIiNfr8VvEUqJs
         3W7ncSI1Iaqavu7VzFdBLeqAomWO5HykDE9AGDBF224s4We+yLh5FCxXfktGXEAWToiI
         1tyhOVajSB4lWmqboMUjN14c9OyEudTfoRIG6infzm529/7UyOxPfDQq67SwuHPWDVtX
         +qubfacpb80g8vwVmmQBQetzHcGA37ggwsD/h5+rqzvimzUWq6u4AKRRjGxqn4rQwecG
         AwaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fb/TF/v8qyd6i8nq/8OsgpdszGaPHDz6PWQH0y/wKaE=;
        b=sFw9uZaxNsjflErZ25yPvYAp2ObT6EGQ29zSx6+JSev3VCVJjmFjyypTuAn2wShzV9
         aNs1fP7B9oLpSjMMcVsriqKNJC9y5BoQjrpj37P687aexx13k83jxXOHHbtdZiuAZtO5
         mD89s517rOg0ASrOs2ZG8y1dq55vpBhpcF00VxjPwow+/f59cq9ucdGRM0K9z8ErGHB8
         WzSMi9uMSJOT/2Z5WEbgKm4AY86UvAgD7215cICnofizo3nCE1cf+jjTC5q4HstXCX54
         sqEejQLCUBQpQXb9Z56I+ZR9EBMSgS/RwaugTpPrEvRKzEDvRfveCNRCc8JUPO3qpbwb
         5n2A==
X-Gm-Message-State: AOAM532U84oheIwdhN9Hrn0QyeuPighc2AiPtvo4C8GgaLq1YilVV9nL
	+laabSnhqlYn+3Tgb+IomY8=
X-Google-Smtp-Source: ABdhPJzpKVGbSbsvWzv+HmdBsi2sx4uc4QYWxJbKNgMeeMI1RpgzRtzCQWUKr6WS7BLJ7Bgyl4L2Jw==
X-Received: by 2002:a05:6102:20cb:: with SMTP id i11mr2412791vsr.137.1590678982413;
        Thu, 28 May 2020 08:16:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:7b8:: with SMTP id x24ls318080vsg.11.gmail; Thu, 28
 May 2020 08:16:22 -0700 (PDT)
X-Received: by 2002:a67:12c4:: with SMTP id 187mr2459089vss.100.1590678981916;
        Thu, 28 May 2020 08:16:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590678981; cv=none;
        d=google.com; s=arc-20160816;
        b=AskXAGaPuHmf2mGoWgZz1qiOmjqU6r43o13mWVaw/usUUKFC1/nFomQ9WZ2HFxrHTz
         EyWzKcv4Wda0dSWkhNgT0tDXpbYWWrPE5ZCIFY0mU1iU0pRecz7nPY4ManIxOZpmgMcv
         ex6m53zawyXC9LP9JI7fAORQB3xzpbP/yu8tzmGO2lSnJ1stkIVB53nyrCO/g0rwxrYs
         TpMzfoQW+t59KUwlGVXexKSdXeoLDKx1GWoY4ZHR0VXSIlXebo/hn2TZyP7kS6fb7Cay
         jXcuTCfU/G3T4pztRz8LuEMhxWp+bchTHLY9NDb2bteqBENuVBxcqOvd3OurxGJV7XHv
         c8fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VBOMR4dl3vHE3pgP6stmXiAZ6B3bsjHJjxfDsRtyI4A=;
        b=X7a990pXQpGi4U51OjlgX64wB7oEZIWbXYkZtbQFelz2VzE5QGg7AT/S9sAZi4Ctp+
         1fe8fGlHxPCdC5ZkJI1TIEc0JThzSrrpTLaFRBHFJoX2Hg/ECeJfYP0muI6WeR7dzsQ7
         PQC6GVVsm9hcKjKGZxua6HOmNoBt1Z2PKs495qNINzkpuTSRscxr8BqtDXotSTAld802
         iH+4zzVs6lJpaw9Fh2aBi1ubWvIOxlpSl/noA2i0qS+tRWsdC1fGU3tsMXdvusPq+Od/
         v0eNNUPvPHGqOtbySd1S7ENSMbR42XZHvEqJOofV8xHX7823aPdgAMLua/HZdWaF2QHE
         wYPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A4SBl6/w";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id b10si474593vso.1.2020.05.28.08.16.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 May 2020 08:16:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id y85so297681oie.11
        for <clang-built-linux@googlegroups.com>; Thu, 28 May 2020 08:16:21 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr2580409oih.70.1590678980942;
 Thu, 28 May 2020 08:16:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
 <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
 <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com>
 <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com>
 <CA+icZUWr5xDz5ujBfsXjnDdiBuopaGE6xO5LJQP9_y=YoROb+Q@mail.gmail.com>
 <CANpmjNOtKQAB_3t1G5Da-J1k-9Dk6eQKP+xNozRbmHJXZqXGFw@mail.gmail.com>
 <CA+icZUWzPMOj+qsDz-5Z3tD-hX5gcowjBkwYyiy8SL36Jg+2Nw@mail.gmail.com>
 <CANpmjNOPcFSr2n_ro8TqhOBXOBfUY0vZtj_VT7hh3HOhJN4BqQ@mail.gmail.com>
 <CA+icZUVK=5agY_FPdPeRbZyn3EoUgnmPToR3iGWuCzY+KHtoAA@mail.gmail.com>
 <CANpmjNOA2Oa=AJkKYadbvEVOaqzgD840aC5wfGGrFvDqUmjhpg@mail.gmail.com> <CA+icZUXu15=NK8wQgy=eeu=JcOGfB4Qr6UnwzTVvcH4T1L4pUQ@mail.gmail.com>
In-Reply-To: <CA+icZUXu15=NK8wQgy=eeu=JcOGfB4Qr6UnwzTVvcH4T1L4pUQ@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 28 May 2020 17:16:09 +0200
Message-ID: <CANpmjNNFxvL2Mrq1eJeRsyU19wgSdZrtLaTo2ksOfTzPTGKOzQ@mail.gmail.com>
Subject: Re: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
To: sedat.dilek@gmail.com
Cc: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="A4SBl6/w";       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Thu, 28 May 2020 at 04:12, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
[...]

> > > >
> > > > In general, CONFIG_KCSAN=y and the defaults for the other KCSAN
> > > > options should be good. Depending on the size of your system, you
> > > > could also tweak KCSAN runtime performance:
> > > > https://lwn.net/Articles/816850/#Interacting%20with%20KCSAN%20at%20Runtime
> > > > -- the defaults should be good for most systems though.
> > > > Hope this helps. Any more questions, do let me know.
> > > >
> > >
> > > Which "projects" and packages do I need?
> > >
> > > I have installed:
> > >
> > > # LC_ALL=C apt-get install llvm-11 clang-11 lld-11
> > > --no-install-recommends -t llvm-toolchain -y
> > >
> > > # dpkg -l | grep
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261 | awk
> > > '/^ii/ {print $1 " " $2 " " $3}' | column -t
> > > ii  clang-11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  libclang-common-11-dev
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  libclang-cpp11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  libclang1-11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  libllvm11:amd64
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  lld-11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  llvm-11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  llvm-11-runtime
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > >
> > > Is that enough?
> >
> > Just clang-11 (and its transitive dependencies) is enough. Unsure what
> > your installed binary is, likely "clang-11", so if you can do "make
> > CC=clang-11 defconfig" (and check for CONFIG_HAVE_KCSAN_COMPILER)
> > you're good to go.
> >
>
> I was able to build with clang-11 from apt.llvm.org.
>
> [ build-time ]
>
> Normally, it takes me approx. 05:00 to build with clang-10
> (10.0.1-rc1) and Linux v5.7-rc7.
>
> This time start: 21:18 and stop: 03:45 means 06:27 - took 01:27 longer.
>
> Samsung Ultrabook 2nd generation aka Intel Sandybridge CPU with 'make -j3'.
>
> [ diffconfig ]
>
>  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
>  CLANG_VERSION 100001 -> 110000
> +CC_HAS_ASM_INLINE y
> +HAVE_ARCH_KCSAN y
> +HAVE_KCSAN_COMPILER y
> +KCSAN y
> +KCSAN_ASSUME_PLAIN_WRITES_ATOMIC y
> +KCSAN_DEBUG n
> +KCSAN_DELAY_RANDOMIZE y
> +KCSAN_EARLY_ENABLE y
> +KCSAN_IGNORE_ATOMICS n
> +KCSAN_INTERRUPT_WATCHER n
> +KCSAN_NUM_WATCHPOINTS 64
> +KCSAN_REPORT_ONCE_IN_MS 3000
> +KCSAN_REPORT_RACE_UNKNOWN_ORIGIN y
> +KCSAN_REPORT_VALUE_CHANGE_ONLY y
> +KCSAN_SELFTEST y
> +KCSAN_SKIP_WATCH 4000
> +KCSAN_SKIP_WATCH_RANDOMIZE y
> +KCSAN_UDELAY_INTERRUPT 20
> +KCSAN_UDELAY_TASK 80
>
> I am seeing this data-races:
>
> root@iniza:~# LC_ALL=C dmesg -T | grep 'BUG: KCSAN: data-race'
> [Thu May 28 03:51:53 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:00 2020] BUG: KCSAN: data-race in mark_page_accessed
> / workingset_activation
> [Thu May 28 03:52:02 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:08 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:52:10 2020] BUG: KCSAN: data-race in dd_has_work /
> dd_insert_requests
> [Thu May 28 03:52:11 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:13 2020] BUG: KCSAN: data-race in
> page_counter_try_charge / page_counter_try_charge
> [Thu May 28 03:52:15 2020] BUG: KCSAN: data-race in ep_poll_callback /
> ep_send_events_proc
> [Thu May 28 03:52:21 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:25 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:26 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:52:31 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:52:38 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:52:53 2020] BUG: KCSAN: data-race in dd_has_work /
> dd_insert_requests
> [Thu May 28 03:52:56 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:52:59 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:53:25 2020] BUG: KCSAN: data-race in
> rwsem_spin_on_owner+0x102/0x1a0
> [Thu May 28 03:53:25 2020] BUG: KCSAN: data-race in
> page_counter_try_charge / page_counter_try_charge
> [Thu May 28 03:53:39 2020] BUG: KCSAN: data-race in do_epoll_wait /
> ep_poll_callback
> [Thu May 28 03:53:39 2020] BUG: KCSAN: data-race in find_next_and_bit+0x30/0xd0
> [Thu May 28 03:53:41 2020] BUG: KCSAN: data-race in dd_has_work /
> dd_insert_requests
> [Thu May 28 03:53:43 2020] BUG: KCSAN: data-race in do_epoll_wait /
> ep_poll_callback
> [Thu May 28 03:53:45 2020] BUG: KCSAN: data-race in dd_has_work /
> dd_insert_requests
> [Thu May 28 03:53:46 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:53:47 2020] BUG: KCSAN: data-race in
> rwsem_spin_on_owner+0x102/0x1a0
> [Thu May 28 03:54:02 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:54:11 2020] BUG: KCSAN: data-race in find_next_and_bit+0x30/0xd0
> [Thu May 28 03:54:19 2020] BUG: KCSAN: data-race in
> rwsem_spin_on_owner+0x102/0x1a0
> [Thu May 28 03:55:00 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:56:14 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:56:50 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:56:50 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:56:52 2020] BUG: KCSAN: data-race in
> tick_nohz_next_event / tick_nohz_stop_tick
> [Thu May 28 03:56:58 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:57:58 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:58:00 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:58:07 2020] BUG: KCSAN: data-race in
> tick_nohz_next_event / tick_nohz_stop_tick
> [Thu May 28 03:58:44 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:58:49 2020] BUG: KCSAN: data-race in __bitmap_subset+0x38/0xd0
> [Thu May 28 03:59:46 2020] BUG: KCSAN: data-race in
> tick_nohz_next_event / tick_nohz_stop_tick
> [Thu May 28 04:00:25 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 04:00:26 2020] BUG: KCSAN: data-race in
> tick_nohz_next_event / tick_nohz_stop_tick
>
> Full dmesg output and linux-config attached.

Thank you for the report. There are a number of known data races. Note
that, we do not think it's wise to rush fixes for data races,
especially because each one requires careful analysis of what the
appropriate response is. In the meantime, also have a look at these 2
articles (if you haven't already), which describes the current state
of things:

1. https://lwn.net/Articles/816850/
2. https://lwn.net/Articles/816854/

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNFxvL2Mrq1eJeRsyU19wgSdZrtLaTo2ksOfTzPTGKOzQ%40mail.gmail.com.
