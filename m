Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB4XDR33AKGQEIMOBTWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 546DC1D9422
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 12:16:19 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id d19sf7514876qvk.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 03:16:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589883378; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZTDP4XKGeSjriWDFdqxb6eF71stNQ6RsUN2Xveo6g5gGIXvB52Bk24XdhqyzG6y+UJ
         QV+KTw9qQfhd18FkQ4eG09R3DIMcKz2Cj9wtohZ4OnuvgHuPTobswUGPjVd/Ai7J2kB8
         D5w7sf4icbDOBzfWhtgVJQgU6soYKDTQV3DYnl74+loX6HnUG4gA00P6c7Sy1N0+uVnN
         VRydXlB3kAGKr60v1zUZK47qK64lChggkmW0yfZ+dXdAuNsc45FwqOCea060DuyV3qhg
         nU6t8+rWPrmmlHmQwqA5fBmzxOcbGMoil/ivEJ0+zd8ZY9lZ4e4TmkuRlwbyzeOVuoJk
         jiDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=z43nZqL68cf0cBXvRqHEYn2MV8MMsH0potuBib+q+/k=;
        b=Jcs53dsDz4/7p1UyYKo62oNvdbWBRKgMT/d8HAUewNBErq7qQ58RhcxUgM5lF3hvyT
         ujXIGU4TUSGN3V/oXjeltzDxDcVXAF/fUBD7uQKv5dakTqnd15LC03cmZ3MgdJgr+JrI
         nkTjR0BoY5Dbnl+ghpCXlF2IOEpnpHny+J0fUdcNVhmmLTIO7yOpYVSyVuNGVUYdv0/E
         yBv5/JuCZy9YUlnGrsQRd8Cc8tZ2KLXpr5ndMmIBGhrOwRCAqF7i0YITqfJ9xGNlKXQI
         OOfjRUldBrT/wNQZdBmfTylwLYQPIFvxo28J/JONZYLyDlYQyIfMv/TXeAXvoHgZ+elc
         aOzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qhrBnwjJ;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z43nZqL68cf0cBXvRqHEYn2MV8MMsH0potuBib+q+/k=;
        b=bpP8k/8GdE751wZbpvUjHVxkhw015VNiHm16+2WRW47CxkxfnBlNRSyPDD6JBsjv0a
         kbYHN7KUbLOp6VOdWVZSjL/DeDX3sTBK5D/htYOhsVETINtQ9WGMmvb30UEHe4DfcNEN
         HVdyf21SpxpZkjie1ZUjbEsnBncaN9t64k9ClM41V/Rm96aPVk1VwphW3l02nz1fYMpP
         nNqWwWQY40eHY2enXlo8bjOxiH6MDxtLVDCVoD4i44ydRNB8BK/ZEhhdQi5kv5ZBmYwb
         W/juDO2HkehPuq9uucV8oPGxuKmGM+PfiASDzfgAKQ/j5qZvgsB5SZdoZqAaX4ZIRzTJ
         X2cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z43nZqL68cf0cBXvRqHEYn2MV8MMsH0potuBib+q+/k=;
        b=UwO/C4uJLTaHIS/mZxaKz4F/qXfdGWBPGwOe4gQYc505fde2xvmkGzbxFYs29VUzgH
         roGnrawG+EnWQc18esI2gtDK66x914oLX+rudEOw4OEMmuYPEXzaLK61mAVaNr8hnoxi
         1hlYXw5IBpvPsxzo8RsGaPv2VfA8EbUN8vmmfwnvUts5i+i98dsZHkd0do+HxkSbxbBi
         YGmFl1DIDq+Jy1w/DUcX26JuAtk2Dc3VBDtiMAt4R1RJeGB2GHoP4VKpqEIbtJMQ7ODs
         mblh/Ur+OAlsc2RdcwSRCXR7ymHat89t6nZTaNYd1s3Ku9gzTwLlCCR/F1Aoa+hhBi1y
         /SYA==
X-Gm-Message-State: AOAM530C8x36Ok5VLrTeujH3yOI1Y1cG8QVjyfXjuFXmQh0v2/Bf/BdK
	BtbzzDGahchjeMDG7Y1K8DY=
X-Google-Smtp-Source: ABdhPJynA58jYzqWkVWg+d7f9qHjeRbAOjihW0v6mVwa3Vu5oykDw4QHDvhux1IKIPdZQiBo2uN4FQ==
X-Received: by 2002:a0c:a892:: with SMTP id x18mr20011579qva.247.1589883378124;
        Tue, 19 May 2020 03:16:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b1c1:: with SMTP id a184ls6122405qkf.3.gmail; Tue, 19
 May 2020 03:16:17 -0700 (PDT)
X-Received: by 2002:a37:634f:: with SMTP id x76mr20194570qkb.194.1589883377773;
        Tue, 19 May 2020 03:16:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589883377; cv=none;
        d=google.com; s=arc-20160816;
        b=zmxvOPHxKJnvQhJ2msBf8V+obM39ZtX7LguJSlQqI+9yzC/F5rONSKsqZg8H6zVh8h
         isE+GmVhLasbGJcHfBvFa8IANrqpb3GlWVw6IoNECsNqBPoQoROPIHooFF0+2Rf8+KUi
         hSESdb/hESiDiuqwLV+8l8r8BnKC3lAHHbxyI8lz+NXOGKc8ZfR0EP+7Ur5R+cvFxrr/
         mMgdVyO2yawzMxzl8HqQoWBYwq+K0cpl7E/6JFatxrnpGzjl1C6mJJEcc8d4UbA9U/Pn
         lCF4fR4dvpuaYNGifZDy4DeItwDlHlePQDzIhc4dSWlSJOXRktL+cHOzQoRw4Tyc2aD4
         tY9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eSUUGwovgEAFUWOh5GaQ33PRSsYhOgKLOqbhYaUm0d4=;
        b=eGcOpiS1bdjTe0F2P+I9Rqt21Tc0lZNxK5oJS99DSlgHdfJiboMoc783BLQdSFN/KO
         /dVIrJoZB8a7/Bbu5yshHn9s4wHYu4QbSN03bCz8WzaFF+VBZ06Y7n24/VS75zrgS6eP
         9FMtKQVYBH3Y3zUpr2vc24KhesXDFRc6Tv8nDp80pxVrdJVswD9kbtM/e7j1KWyUhKUj
         Ux2iyJqw5otefSDUgfb0DdPBaWZ5CG2kRehVpEVIhIwLZn8Ft0omMruUxtkTTkAIVc8+
         15Dbvp7BaLmiObmgMRZYQAHxfk6/xss58TvECyQvIS7PiXbZLg2LK68CUySlFLUCxrVA
         MdfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qhrBnwjJ;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id c186si793016qkb.7.2020.05.19.03.16.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 03:16:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id 19so11825318oiy.8
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 03:16:17 -0700 (PDT)
X-Received: by 2002:aca:3254:: with SMTP id y81mr2617327oiy.172.1589883377228;
 Tue, 19 May 2020 03:16:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200517011732.GE24705@shao2-debian> <20200517034739.GO2869@paulmck-ThinkPad-P72>
 <CANpmjNNj37=mgrZpzX7joAwnYk-GsuiE8oOm13r48FYAK0gSQw@mail.gmail.com>
 <CANpmjNMx0+=Cac=WvHuzKb2zJvgNVvVxjo_W1wYWztywxDKeCQ@mail.gmail.com>
 <CANpmjNPcOHAE5d=gaD327HqxTBegf75qeN_pjoszahdk6_i5=Q@mail.gmail.com>
 <CAKwvOd=Gi2z_NjRfpTigCCcV5kUWU7Bm7h1eHLeQ6DZCmrsR8w@mail.gmail.com> <20200518180513.GA114619@google.com>
In-Reply-To: <20200518180513.GA114619@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 May 2020 12:16:05 +0200
Message-ID: <CANpmjNMTRO0TxxTQxFt8EaRLggcPXKLJL2+G2WFL+vakgd2OUg@mail.gmail.com>
Subject: Re: [rcu] 2f08469563: BUG:kernel_reboot-without-warning_in_boot_stage
To: Nick Desaulniers <ndesaulniers@google.com>, george.burgess.iv@gmail.com
Cc: Kan Liang <kan.liang@linux.intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	kernel test robot <rong.a.chen@intel.com>, Peter Zijlstra <peterz@infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, LKP <lkp@lists.01.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qhrBnwjJ;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as
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

On Mon, 18 May 2020 at 20:05, Marco Elver <elver@google.com> wrote:
>
> On Mon, 18 May 2020, 'Nick Desaulniers' via kasan-dev wrote:
>
> > On Mon, May 18, 2020 at 7:34 AM Marco Elver <elver@google.com> wrote:
> > >
> > > On Mon, 18 May 2020 at 14:44, Marco Elver <elver@google.com> wrote:
> > > >
> > > > [+Cc clang-built-linux FYI]
> > > >
> > > > On Mon, 18 May 2020 at 12:11, Marco Elver <elver@google.com> wrote:
> > > > >
> > > > > On Sun, 17 May 2020 at 05:47, Paul E. McKenney <paulmck@kernel.org> wrote:
> > > > > >
> > > > > > On Sun, May 17, 2020 at 09:17:32AM +0800, kernel test robot wrote:
> > > > > > > Greeting,
> > > > > > >
> > > > > > > FYI, we noticed the following commit (built with clang-11):
> > > > > > >
> > > > > > > commit: 2f08469563550d15cb08a60898d3549720600eee ("rcu: Mark rcu_state.ncpus to detect concurrent writes")
> > > > > > > https://git.kernel.org/cgit/linux/kernel/git/paulmck/linux-rcu.git dev.2020.05.14c
> > > > > > >
> > > > > > > in testcase: boot
> > > > > > >
> > > > > > > on test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 8G
> > > > > > >
> > > > > > > caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
> > > > > > >
> > > > > > >
> > > > > > >
> > > > > > >
> > > > > > > If you fix the issue, kindly add following tag
> > > > > > > Reported-by: kernel test robot <rong.a.chen@intel.com>
> > > > > > >
> > > > > > >
> > > > > > > [    0.054943] BRK [0x05204000, 0x05204fff] PGTABLE
> > > > > > > [    0.061181] BRK [0x05205000, 0x05205fff] PGTABLE
> > > > > > > [    0.062403] BRK [0x05206000, 0x05206fff] PGTABLE
> > > > > > > [    0.065200] RAMDISK: [mem 0x7a247000-0x7fffffff]
> > > > > > > [    0.067344] ACPI: Early table checksum verification disabled
> > > > > > > BUG: kernel reboot-without-warning in boot stage
> > > > > >
> > > > > > I am having some difficulty believing that this commit is at fault given
> > > > > > that the .config does not list CONFIG_KCSAN=y, but CCing Marco Elver
> > > > > > for his thoughts.  Especially given that I have never built with clang-11.
> > > > > >
> > > > > > But this does invoke ASSERT_EXCLUSIVE_WRITER() in early boot from
> > > > > > rcu_init().  Might clang-11 have objections to early use of this macro?
> > > > >
> > > > > The macro is a noop without KCSAN. I think the bisection went wrong.
> > > > >
> > > > > I am able to reproduce a reboot-without-warning when building with
> > > > > Clang 11 and the provided config. I did a bisect, starting with v5.6
> > > > > (good), and found this:
> > > > > - Since v5.6, first bad commit is
> > > > > 20e2aa812620439d010a3f78ba4e05bc0b3e2861 (Merge tag
> > > > > 'perf-urgent-2020-04-12' of
> > > > > git://git.kernel.org/pub/scm/linux/kernel//git/tip/tip)
> > > > > - The actual commit that introduced the problem is
> > > > > 2b3b76b5ec67568da4bb475d3ce8a92ef494b5de (perf/x86/intel/uncore: Add
> > > > > Ice Lake server uncore support) -- reverting it fixes the problem.
> > >
> > > Some more clues:
> > >
> > > 1. I should have noticed that this uses CONFIG_KASAN=y.
> >
> > Thanks for the report, testing, and bisection.  I don't see any
> > smoking gun in the code.
> > https://godbolt.org/z/qbK26r
>
> My guess is data layout and maybe some interaction with KASAN. I also
> played around with leaving icx_mmio_uncores empty, meaning none of the
> data it refers to end up in the data section (presumably because
> optimized out), which resulted in making the bug disappear as well.
>
> > >
> > > 2. Something about function icx_uncore_mmio_init(). Making it a noop
> > > also makes the issue go away.
> > >
> > > 3. Leaving icx_uncore_mmio_init() a noop but removing the 'static'
> > > from icx_mmio_uncores also presents the issue. So this seems to be
> > > something about how/where icx_mmio_uncores is allocated.
> >
> > Can you share the disassembly of icx_uncore_mmio_init() in the given
> > configuration?
>
> ffffffff8102c097 <icx_uncore_mmio_init>:
> ffffffff8102c097:       e8 b4 52 bd 01          callq  ffffffff82c01350 <__fentry__>
> ffffffff8102c09c:       48 c7 c7 e0 55 c3 83    mov    $0xffffffff83c355e0,%rdi
> ffffffff8102c0a3:       e8 69 9a 3b 00          callq  ffffffff813e5b11 <__asan_store8>
> ffffffff8102c0a8:       48 c7 05 2d 95 c0 02    movq   $0xffffffff83c388e0,0x2c0952d(%rip)        # ffffffff83c355e0 <uncore_mmio_uncores>
> ffffffff8102c0af:       e0 88 c3 83
> ffffffff8102c0b3:       c3                      retq
>
> The problem still happens if we add a __no_sanitize_address (or even
> KASAN_SANITIZE := n) here. I think this function is a red herring: you
> can make this function be empty, but as long as icx_mmio_uncores and its
> dependencies are added to the data section somewhere, does the bug
> appear.

I also tried to bisect Clang/LLVM, and found that
https://reviews.llvm.org/D78162 introduced the breaking change to
Clang/LLVM. Reverting that change results in a bootable kernel *with*
"perf/x86/intel/uncore: Add Ice Lake server uncore support" still
applied.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMTRO0TxxTQxFt8EaRLggcPXKLJL2%2BG2WFL%2Bvakgd2OUg%40mail.gmail.com.
