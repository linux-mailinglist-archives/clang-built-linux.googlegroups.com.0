Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB3FZRL3AKGQE67MMXNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA6A1D7B56
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 16:34:22 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id g8sf7358134qtc.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 07:34:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589812461; cv=pass;
        d=google.com; s=arc-20160816;
        b=bVklpf9NZmTYLr+XKlKbBaTmwYeAp8ZD3CLAPRYCj7TjtNcTfsWk6w3XUTcjJkSwf6
         lJEWCXq8HYUCt2xEyLDHMR0/hab69yX4FJY/QH7uO+X4SLghXLYlnlLUnFuIM1/HQ6Y3
         ogUTErpwbA71A8LFQAaexhtAkbwhU39p32eosmy/L/kpdTDUeO74Z3Xm/fkMniPuYQv2
         49IsoC68VxNbD6JKxnb8NrUG0XgMdcB0tncijB1B6sNqU6XU12exP6WQbP2Lztlny7rC
         eBjSaJa8BgdwAKKx/Vfy797GG1vc1yDg3hkirpEEfAX3jJLXI9TP9UpQCmC7zGuxem2v
         3OHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pk5tjSFlAmGjXX8nSpnnrd95idqtA+BK1jGZGcZVucU=;
        b=WaGMk2VDE1e9sRYBAQ5jb3YJ1NgNM7JXVqsEc4K2JitswFdUifRmCWxR68c8ibmn/S
         GyqKZCJe7HKipYy8Md15DTyeWTEI6pna4RCSlUTBONNkPbSmjCtT0XwCgqcrGbtky84r
         6Sdfhi01hx/l+3hpnNHJqxxZudHD0mZ2UnpLQSBZnBjkXfjNVjHqOUsUPCRuBCGU5WJv
         tiSQpUjqx/0JjXkCBeuIk6bR9knsEDfA5bIhrcqPjcQN9GxQQqYnG5WAAkPTCmQUnbWQ
         oYRk8h09oC5ZEVa+eluxldG4BhkgFQf2/5zA4t9ALj7AGxPysGnkNZ+SFYbZzuYmG5up
         zhcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hyxzuMqE;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pk5tjSFlAmGjXX8nSpnnrd95idqtA+BK1jGZGcZVucU=;
        b=MkpsL9nr/etEWLeMnDNDY+MjZIQZQ42xCfI9uR944LcPS6f6DZU1x3JET9kPqTLCFe
         InpE1SKrmfi5ii4FXwypg9iwxFd0/6u6MgpaLi5V/hOvaHRcShKsrPusdwYkKUUHpWIz
         18Q1nEsHVQ2yStiTfvRN+DUvnzX4b/hUbBBtdw1gTNOQzMHGlVk9XOD2lxbzUIXpmr+U
         ocpwRpGvWlTdfBhyb5G9klqZAtO3WqrMX4H/t9h5xe8ih28BiHHcD5VstsYLD+64vwXb
         +t7dmKIsW/LLr+vO5ps5lROmgv2bwGZScQ1HzbqYylm96Apq1ehwS5ruiCJqes2Q7qWY
         JQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pk5tjSFlAmGjXX8nSpnnrd95idqtA+BK1jGZGcZVucU=;
        b=Vy9HYOBV/E0Xdb3buIJ0cflMBAxD7kB+b+GNBCNjIQh4CWWEPGQRxTQHUccbVXtgFo
         AchsP0/6l9qNAQt3kFihUPFC7vBtO28oXCeLhjpfhDivXY1FgVYhcop7pZqfg0Ph7uNK
         CcbOhy5rr/pY1noD78E42j6OW8dYk7W/73He7CsDtrXr/XYIeP22msb0HHPiQZMEJ8KN
         N1RHup2bMoWyFPbxoCoNKCGv8wclyyDXi11QT+qtJP54fHPTlldpJOx5FzRXdahx2vX6
         8jIAQF+GWEk951LK/pdg3FY1NZFbu6KrB/gsYtOxQ+2SHsqroRf0gsOp9d9n1YL3rqLy
         Gt3w==
X-Gm-Message-State: AOAM5332o4Lqrqsr6KBPVdHbacZ0f0VHgZJYrysI3WwVvVufLHIgPxcU
	qtJvrZxIcCdJ+psj+bNqGGc=
X-Google-Smtp-Source: ABdhPJxZ/k6yXLUYP0CO2usYix8MIrobh7lAncndZv2hqUtzkvha9x+08rL1ktM6onwkuklNCXrf5Q==
X-Received: by 2002:ac8:45d5:: with SMTP id e21mr12034280qto.336.1589812460988;
        Mon, 18 May 2020 07:34:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1acb:: with SMTP id h11ls3996941qtk.8.gmail; Mon, 18 May
 2020 07:34:20 -0700 (PDT)
X-Received: by 2002:ac8:38f2:: with SMTP id g47mr16686877qtc.118.1589812460541;
        Mon, 18 May 2020 07:34:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589812460; cv=none;
        d=google.com; s=arc-20160816;
        b=wkBzucYIyV+hXA7W+mIgSqd8/fEqtDtk1Lwkf7WDtK5yQ5afmRPMdCbYKOK04HZkAP
         AsUC9J9mhmnWO6hSUibUscmJh4KvayfENaW/JC1bsnLbezuHWsLbDuGfCT0By1ng+wk9
         FHw4A+FxW7aqypVpxAxwwirMesousWMMw6FPV1outOYZrYZgrVLZUDWcqLDZRtaBXoNN
         WQ6fYDhlskO3JP4YbBfqwwAi/P3KoZ44Jcgn0ni5T2Xz5sGZ0brLHL+XqSOE/tWNOlv4
         bOFOVTWfqUoeDh6XvTKadDfZg+2PfGCpMAYxqvu4WpwupfmwuVaiMmdzXjPFXoCkfrsB
         1INg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DCFSvoO5nHEFutdDZ7u001WboaSd8JW+ksXM71B70LQ=;
        b=Gk7WI+Av7EQKj/WEZLvQaexesVpcXrXWBI9XybvXkQrQbHy2eWFAEitoIae4NbgfTG
         J/k9plrVK7VLQdiknKSb/fsQK8aDw+V45HMmpuUJqJpMDDlqnxxHdfpkBIU2I4h8xz82
         pNt4s3jKBAL8v/WoiYNLvyGctpeIAA/1BoUXmZTQgzFe2zPRxmiTCLQMxKbOjJ9Yy58D
         nbDUsJGrmljisWqXoBtCZVu5xDuV2aB8TPR4anGS+R5B1JlFXZBqX4u+81C57BT89lJQ
         RG0lb6hJBgzFDadQl2aM76C6+cnlQw3mRyWUsY42Gsdc8/gaY8nKWT2CzNV7KC84+nPT
         sXiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hyxzuMqE;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id c7si278604qtq.3.2020.05.18.07.34.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 07:34:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-oo1-xc43.google.com with SMTP id q6so2078106oot.0
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 07:34:20 -0700 (PDT)
X-Received: by 2002:a4a:2809:: with SMTP id h9mr13202991ooa.36.1589812459734;
 Mon, 18 May 2020 07:34:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200517011732.GE24705@shao2-debian> <20200517034739.GO2869@paulmck-ThinkPad-P72>
 <CANpmjNNj37=mgrZpzX7joAwnYk-GsuiE8oOm13r48FYAK0gSQw@mail.gmail.com> <CANpmjNMx0+=Cac=WvHuzKb2zJvgNVvVxjo_W1wYWztywxDKeCQ@mail.gmail.com>
In-Reply-To: <CANpmjNMx0+=Cac=WvHuzKb2zJvgNVvVxjo_W1wYWztywxDKeCQ@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 May 2020 16:34:07 +0200
Message-ID: <CANpmjNPcOHAE5d=gaD327HqxTBegf75qeN_pjoszahdk6_i5=Q@mail.gmail.com>
Subject: Re: [rcu] 2f08469563: BUG:kernel_reboot-without-warning_in_boot_stage
To: kan.liang@linux.intel.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kasan-dev <kasan-dev@googlegroups.com>
Cc: kernel test robot <rong.a.chen@intel.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	LKP <lkp@lists.01.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Alexander Potapenko <glider@google.com>, 
	Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hyxzuMqE;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c43 as
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

On Mon, 18 May 2020 at 14:44, Marco Elver <elver@google.com> wrote:
>
> [+Cc clang-built-linux FYI]
>
> On Mon, 18 May 2020 at 12:11, Marco Elver <elver@google.com> wrote:
> >
> > On Sun, 17 May 2020 at 05:47, Paul E. McKenney <paulmck@kernel.org> wrote:
> > >
> > > On Sun, May 17, 2020 at 09:17:32AM +0800, kernel test robot wrote:
> > > > Greeting,
> > > >
> > > > FYI, we noticed the following commit (built with clang-11):
> > > >
> > > > commit: 2f08469563550d15cb08a60898d3549720600eee ("rcu: Mark rcu_state.ncpus to detect concurrent writes")
> > > > https://git.kernel.org/cgit/linux/kernel/git/paulmck/linux-rcu.git dev.2020.05.14c
> > > >
> > > > in testcase: boot
> > > >
> > > > on test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 8G
> > > >
> > > > caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
> > > >
> > > >
> > > >
> > > >
> > > > If you fix the issue, kindly add following tag
> > > > Reported-by: kernel test robot <rong.a.chen@intel.com>
> > > >
> > > >
> > > > [    0.054943] BRK [0x05204000, 0x05204fff] PGTABLE
> > > > [    0.061181] BRK [0x05205000, 0x05205fff] PGTABLE
> > > > [    0.062403] BRK [0x05206000, 0x05206fff] PGTABLE
> > > > [    0.065200] RAMDISK: [mem 0x7a247000-0x7fffffff]
> > > > [    0.067344] ACPI: Early table checksum verification disabled
> > > > BUG: kernel reboot-without-warning in boot stage
> > >
> > > I am having some difficulty believing that this commit is at fault given
> > > that the .config does not list CONFIG_KCSAN=y, but CCing Marco Elver
> > > for his thoughts.  Especially given that I have never built with clang-11.
> > >
> > > But this does invoke ASSERT_EXCLUSIVE_WRITER() in early boot from
> > > rcu_init().  Might clang-11 have objections to early use of this macro?
> >
> > The macro is a noop without KCSAN. I think the bisection went wrong.
> >
> > I am able to reproduce a reboot-without-warning when building with
> > Clang 11 and the provided config. I did a bisect, starting with v5.6
> > (good), and found this:
> > - Since v5.6, first bad commit is
> > 20e2aa812620439d010a3f78ba4e05bc0b3e2861 (Merge tag
> > 'perf-urgent-2020-04-12' of
> > git://git.kernel.org/pub/scm/linux/kernel//git/tip/tip)
> > - The actual commit that introduced the problem is
> > 2b3b76b5ec67568da4bb475d3ce8a92ef494b5de (perf/x86/intel/uncore: Add
> > Ice Lake server uncore support) -- reverting it fixes the problem.

Some more clues:

1. I should have noticed that this uses CONFIG_KASAN=y.

2. Something about function icx_uncore_mmio_init(). Making it a noop
also makes the issue go away.

3. Leaving icx_uncore_mmio_init() a noop but removing the 'static'
from icx_mmio_uncores also presents the issue. So this seems to be
something about how/where icx_mmio_uncores is allocated.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPcOHAE5d%3DgaD327HqxTBegf75qeN_pjoszahdk6_i5%3DQ%40mail.gmail.com.
