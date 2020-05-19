Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB6ODR73AKGQENHLUTAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BABD1D9801
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 15:41:14 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id b5sf1201542otf.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 06:41:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589895673; cv=pass;
        d=google.com; s=arc-20160816;
        b=NLbWHfFJSkPlYnlWgTYyyN01v3/CJKf/CZmnuv89YppTdZaNbx/mplOay8dqMsB3Yd
         DdnhxvUTmkwCElHFbKc1Mgtm9C/bvHi2LyhDfyBANto97tHRg0LD+8RSJ9FJCna2GiMS
         W7ij1ZDloGShMdc8MC1unQtAiHGz5Fh8UOI4gV0UDvn94onmrnvj8ZDhDhF2EGrjR10y
         tQ+L3QZoOfyIBHyjuO02215HR+p1XrKv2fZHTKMyb3nLKlDXgRuxn+8zrcPlQbkVHOli
         E2SG9ShvI3tWK+ei11X/Gsoq9mB3ttVUUi8+lXM3uzOpub+xs1wLby8gr0bmY9KQ6nuc
         mrYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=M4ciVZzk+Y1XUcIU92tW6kgotxKZa5NHPwhVZgH4vEA=;
        b=FmgGqRXwx3R+K+L1nYKInqweDHkV4354gxr8XoJ7le2+254L423dScqsDRwJoF4Wsj
         vMh6HxC72m8LMaLOiLU8GYBiPbI4oJChSATiVkdEpp7NkYu5/bjsmatH1dNSwEMvkIo4
         G4+/X8tl/NkoIi+T4o6S+j8Qm+ue2dMfFjmL3JukNc40Wx3swCAJtUcVcFHMb3ExRXCp
         2ntyp8SNzqgnFPKAEj0fTwR0NqlGBD1KYvsqPS7iCo4jODSQN4RikzyyXN7vq9tGnenp
         DtprPnYMIgbV7mRf36+yntFTBY0nlTWjLfn+QvpjbL4v2pcMTm7accQbp8euKXVKhJx2
         eIXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nrtXpzxk;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M4ciVZzk+Y1XUcIU92tW6kgotxKZa5NHPwhVZgH4vEA=;
        b=DEbFU5IKxVWtKvLDrQXlh+/XVAqIvEHInL7KpAebwX5xBD4/6dgkiwmNKdkDd/2e+p
         enrAj5MkP+eDInz/HnexNV/VBUBk+qvHTUWyrxR0yYqPKwNYLjmq+fuyJuMgs03EC58q
         fAroaqphuVeh3IT/UTG0mWaiskN2cjZlzoPmaYfPVVp4QYrXpodznaQCh+s+LwiZ2o9V
         iV8Zj3NGd8Tj7JSJZ8wqE28e0iFOsbKkcG1/UXlU11uvaM0Lzs/8b2/JN8aLcAnG/yET
         8E1+rwQm+QIjah7DW5lMdrmBAUrcZ/fcJ4CkQ+PhwDCw4EkV8G8rlthW4ZEWFIM3jsd9
         i3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M4ciVZzk+Y1XUcIU92tW6kgotxKZa5NHPwhVZgH4vEA=;
        b=rcCcSodCgGThjQlRdwhyq/YhCnw08W7ZEFyQVGfTrCmplX4M0h0ZZgpxVUHVHe2AO3
         f5JLavdI1ICPhwnUWOhuHsAU3OVr1gS03kChIVE9syd5BaCV0UBPTUdb0yGVIpHwJWr9
         bbsV8MpYXVqWmM3kyxdjVIhMwVPcpLHTkY2zZ/yjrJwi+4SMlW4Qzs1fKJfQkg1qElxj
         f51UvJ5lnRUsbK/uJOVF914g0lmIurQJL3l/C58FAJjquebS58KgEbaXSpxmaC1t/3RZ
         LrX0wZ2OEaRPW3Zh/EL4tE1agHlz3LwgkwYzjUCPE8JTQZfQG7Rp1Zg9WjrFgbj9Ogmo
         md7g==
X-Gm-Message-State: AOAM530o4J31twNcpnNUvqO9mmgJcHQ0Hc9zuXPBYqTNRHjjvJvL1uaZ
	Vx7nuTeoxQmxhcOvHWlY9Ws=
X-Google-Smtp-Source: ABdhPJzdHdjd/UWK1Z7STWixZnLaDTDPRPfUc+DLxLQjX+9pGPtiI2+uyRTNWVr36qeQOPg16FOzLQ==
X-Received: by 2002:a4a:b389:: with SMTP id p9mr16823036ooo.84.1589895673526;
        Tue, 19 May 2020 06:41:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:170a:: with SMTP id j10ls1377425oii.8.gmail; Tue, 19 May
 2020 06:41:13 -0700 (PDT)
X-Received: by 2002:aca:383:: with SMTP id 125mr3302325oid.52.1589895672865;
        Tue, 19 May 2020 06:41:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589895672; cv=none;
        d=google.com; s=arc-20160816;
        b=GI4S16sCd2/28mG22QSzRwEtN3u26sfuzneWms9y33bM0nc4YjO9Ph5Ccbd7+diYnE
         EgTctPboS6h6lLAzpcns35e95K2RGLTxIUBA9zRtB4D9gHk9eThDGgdnq7U6HuwO4yel
         a84eNeeCwlgJ4cJn89L36tQVDhKRJafkKjRzvNLWtDrkNEqfEbspHlctzOoX4fCEoh0M
         w0ROdLRqHOXMkMUVZoZKw1lTQDrQwCIW0WfGgDKo0eUgbrPAOX5VTaCIArZ5fHUMHwDK
         rSDVTDUpaHMX09LpTX5+OhSREkDtBPnK4vBTSHlp4BJdJ86nSzmJvcVfQ2BzcofmQoJb
         UYbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OJ0/X+KDsYJg8CyaNbUZIzyGPtenDDvVDD3jODmVGao=;
        b=GV6hacXbGzVvEJJ9qQ/GOrkdt85Jn3ZTDbj6VImues0QSejt1DuGl/z/Qun60EX3P9
         HZpkCs+GfgK4aggV/OhGpJH6GopeQq4c+KnPGbpduS3h6iyem39sI/KWwhA246/GxmvQ
         UpilcwhZEB/CSIsxFcdTeXaqBwv0Sb8zwXBwbuE1z/Cgzlpt9m8lF+1PY2b2oxA0OHCq
         xOKP+tmWIlYC1mdq9f6PWCrybkm5+pa8DQ5KnBfWtAXP51LTheEnIFbiihHJ916q7Qky
         2eVtTSNIpAjbT/vRQUZQY/tBmK5Wz6j9lNF1erw/z4y3pe9MmNHHLzlMS5XMUYmLSjG3
         TW+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nrtXpzxk;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id t2si781499otr.1.2020.05.19.06.41.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 06:41:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id b3so4359923oib.13
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 06:41:12 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr3278271oih.70.1589895672315;
 Tue, 19 May 2020 06:41:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200517011732.GE24705@shao2-debian> <20200517034739.GO2869@paulmck-ThinkPad-P72>
 <CANpmjNNj37=mgrZpzX7joAwnYk-GsuiE8oOm13r48FYAK0gSQw@mail.gmail.com>
 <CANpmjNMx0+=Cac=WvHuzKb2zJvgNVvVxjo_W1wYWztywxDKeCQ@mail.gmail.com>
 <CANpmjNPcOHAE5d=gaD327HqxTBegf75qeN_pjoszahdk6_i5=Q@mail.gmail.com>
 <CAKwvOd=Gi2z_NjRfpTigCCcV5kUWU7Bm7h1eHLeQ6DZCmrsR8w@mail.gmail.com>
 <20200518180513.GA114619@google.com> <CANpmjNMTRO0TxxTQxFt8EaRLggcPXKLJL2+G2WFL+vakgd2OUg@mail.gmail.com>
In-Reply-To: <CANpmjNMTRO0TxxTQxFt8EaRLggcPXKLJL2+G2WFL+vakgd2OUg@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 May 2020 15:40:59 +0200
Message-ID: <CANpmjNO0kDVW4uaLcOF95L3FKc8WjawJqXKQtYbCad+W2r=75g@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=nrtXpzxk;       spf=pass
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

On Tue, 19 May 2020 at 12:16, Marco Elver <elver@google.com> wrote:
>
> On Mon, 18 May 2020 at 20:05, Marco Elver <elver@google.com> wrote:
> >
> > On Mon, 18 May 2020, 'Nick Desaulniers' via kasan-dev wrote:
> >
> > > On Mon, May 18, 2020 at 7:34 AM Marco Elver <elver@google.com> wrote:
> > > >
> > > > On Mon, 18 May 2020 at 14:44, Marco Elver <elver@google.com> wrote:
> > > > >
> > > > > [+Cc clang-built-linux FYI]
> > > > >
> > > > > On Mon, 18 May 2020 at 12:11, Marco Elver <elver@google.com> wrote:
> > > > > >
> > > > > > On Sun, 17 May 2020 at 05:47, Paul E. McKenney <paulmck@kernel.org> wrote:
> > > > > > >
> > > > > > > On Sun, May 17, 2020 at 09:17:32AM +0800, kernel test robot wrote:
> > > > > > > > Greeting,
> > > > > > > >
> > > > > > > > FYI, we noticed the following commit (built with clang-11):
> > > > > > > >
> > > > > > > > commit: 2f08469563550d15cb08a60898d3549720600eee ("rcu: Mark rcu_state.ncpus to detect concurrent writes")
> > > > > > > > https://git.kernel.org/cgit/linux/kernel/git/paulmck/linux-rcu.git dev.2020.05.14c
> > > > > > > >
> > > > > > > > in testcase: boot
> > > > > > > >
> > > > > > > > on test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 8G
> > > > > > > >
> > > > > > > > caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
> > > > > > > >
> > > > > > > >
> > > > > > > >
> > > > > > > >
> > > > > > > > If you fix the issue, kindly add following tag
> > > > > > > > Reported-by: kernel test robot <rong.a.chen@intel.com>
> > > > > > > >
> > > > > > > >
> > > > > > > > [    0.054943] BRK [0x05204000, 0x05204fff] PGTABLE
> > > > > > > > [    0.061181] BRK [0x05205000, 0x05205fff] PGTABLE
> > > > > > > > [    0.062403] BRK [0x05206000, 0x05206fff] PGTABLE
> > > > > > > > [    0.065200] RAMDISK: [mem 0x7a247000-0x7fffffff]
> > > > > > > > [    0.067344] ACPI: Early table checksum verification disabled
> > > > > > > > BUG: kernel reboot-without-warning in boot stage
> > > > > > >
> > > > > > > I am having some difficulty believing that this commit is at fault given
> > > > > > > that the .config does not list CONFIG_KCSAN=y, but CCing Marco Elver
> > > > > > > for his thoughts.  Especially given that I have never built with clang-11.
> > > > > > >
> > > > > > > But this does invoke ASSERT_EXCLUSIVE_WRITER() in early boot from
> > > > > > > rcu_init().  Might clang-11 have objections to early use of this macro?
> > > > > >
> > > > > > The macro is a noop without KCSAN. I think the bisection went wrong.
> > > > > >
> > > > > > I am able to reproduce a reboot-without-warning when building with
> > > > > > Clang 11 and the provided config. I did a bisect, starting with v5.6
> > > > > > (good), and found this:
> > > > > > - Since v5.6, first bad commit is
> > > > > > 20e2aa812620439d010a3f78ba4e05bc0b3e2861 (Merge tag
> > > > > > 'perf-urgent-2020-04-12' of
> > > > > > git://git.kernel.org/pub/scm/linux/kernel//git/tip/tip)
> > > > > > - The actual commit that introduced the problem is
> > > > > > 2b3b76b5ec67568da4bb475d3ce8a92ef494b5de (perf/x86/intel/uncore: Add
> > > > > > Ice Lake server uncore support) -- reverting it fixes the problem.
> > > >
> > > > Some more clues:
> > > >
> > > > 1. I should have noticed that this uses CONFIG_KASAN=y.
> > >
> > > Thanks for the report, testing, and bisection.  I don't see any
> > > smoking gun in the code.
> > > https://godbolt.org/z/qbK26r
> >
> > My guess is data layout and maybe some interaction with KASAN. I also
> > played around with leaving icx_mmio_uncores empty, meaning none of the
> > data it refers to end up in the data section (presumably because
> > optimized out), which resulted in making the bug disappear as well.
> >
> > > >
> > > > 2. Something about function icx_uncore_mmio_init(). Making it a noop
> > > > also makes the issue go away.
> > > >
> > > > 3. Leaving icx_uncore_mmio_init() a noop but removing the 'static'
> > > > from icx_mmio_uncores also presents the issue. So this seems to be
> > > > something about how/where icx_mmio_uncores is allocated.
> > >
> > > Can you share the disassembly of icx_uncore_mmio_init() in the given
> > > configuration?
> >
> > ffffffff8102c097 <icx_uncore_mmio_init>:
> > ffffffff8102c097:       e8 b4 52 bd 01          callq  ffffffff82c01350 <__fentry__>
> > ffffffff8102c09c:       48 c7 c7 e0 55 c3 83    mov    $0xffffffff83c355e0,%rdi
> > ffffffff8102c0a3:       e8 69 9a 3b 00          callq  ffffffff813e5b11 <__asan_store8>
> > ffffffff8102c0a8:       48 c7 05 2d 95 c0 02    movq   $0xffffffff83c388e0,0x2c0952d(%rip)        # ffffffff83c355e0 <uncore_mmio_uncores>
> > ffffffff8102c0af:       e0 88 c3 83
> > ffffffff8102c0b3:       c3                      retq
> >
> > The problem still happens if we add a __no_sanitize_address (or even
> > KASAN_SANITIZE := n) here. I think this function is a red herring: you
> > can make this function be empty, but as long as icx_mmio_uncores and its
> > dependencies are added to the data section somewhere, does the bug
> > appear.
>
> I also tried to bisect Clang/LLVM, and found that
> https://reviews.llvm.org/D78162 introduced the breaking change to
> Clang/LLVM. Reverting that change results in a bootable kernel *with*
> "perf/x86/intel/uncore: Add Ice Lake server uncore support" still
> applied.

I found that with Clang/LLVM change D78162, a bunch of memcpys are
optimized into just a bunch of loads/stores. It may turn out that this
is again a red herring, because the result is that more code is
generated, affecting layout. So in the end, the Clang/LLVM bisection
might just point at the first change that causes data layout to change
in a way that triggers the bug.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNO0kDVW4uaLcOF95L3FKc8WjawJqXKQtYbCad%2BW2r%3D75g%40mail.gmail.com.
