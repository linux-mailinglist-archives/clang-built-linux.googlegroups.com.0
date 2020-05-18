Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIEVRP3AKGQE2QZKXXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B731D8193
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 19:49:22 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id f19sf1233951vsr.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 10:49:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589824161; cv=pass;
        d=google.com; s=arc-20160816;
        b=y23yIHVly3ManzfFG8B11ZVGRa5yq0FNg2lqVdL400gm6aWt698W6D43+7fK7OqdTm
         UofP5awSDN+60QNqGlNVTgN720iQyGXtWZrNXqPrUtgNySdFC71fXvE4InnkPkWcnzot
         5L/NOnKkXsrY8/gyzQ9c7oz4uPUTivj8rKdX2xKdBksVRC/sbSLY4OeuES4SBeWfCn56
         W0zuAGtlh3Y5IZ0rICyldHvNYbapfUuuL68tJlHcnbcVtNx1svh6H670GRXcIxA9s6yz
         S6KNUaagCgVAy1ZIIXPvmZyh5tbFESTW2pe4WjZlxcmd4owiAQNzmRzNFaC/owKcyNIi
         w4iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ab3XTxowoWnghM7vsUE1W2U1wijkeg6hBIi2Ql1xgWA=;
        b=bbvAQkruCw4Q7nIItfl3nzM6FxaRTQrn6ailxl1ZcvArdkcdKz4FVAEQX+j5LH/DZq
         RtNIXJDkUsSHnG5xW9+nSykItjxQAYH9wtrYAXp6ji9IWPf989XTqy7V4D663OfrNVET
         UHc5mlM/r0hFQAmcNiU67sKAhz3qmy1UDsgmXI7LNZdcyZCw9ja/UoT31G/EdOdgGJxE
         neYc3e05zHRRW6DHwIn2rwwjzeegZQZ8gQs+kVs5oHHO8tTv1h8c/fo8xDbqa+gTErKm
         mUBHK8KlPeyX3W2tIwU0iKchfEXJxOCB+E6Y6RazBIdxpLI7AUmfOSeN22/7LetiXmg5
         aD6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VZ/6zRNA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ab3XTxowoWnghM7vsUE1W2U1wijkeg6hBIi2Ql1xgWA=;
        b=p9ioGA40Bn2Ku2bDStzyKszPYm+7d9Z3uu/AgPQhrMASVpnbT19u7sedyCedZ5/jYI
         xoSmzCe3rBomnf63xvXN528rBENUdJ5Vh+huqGyNFtw4VLEQjfkXWj+AoXe/zTyvSrji
         PhxWHOdjLmyO2+jQJ2nhZQYM42VyRaSddwnftJrvenkkOIOgX+45msL39HRNKxxAMs+s
         c2pnymVUgo6WF1MYYzQmQbvqhskKOCRCGav7WuhRyXCugAwZ5o1vdjRpvQYUvRZWaxrV
         b0KT5F4/+nOC77ZFh2iNW2zzl+rNe/2d+MeywTf3yCKYUdARAHFMa1Fcod95uGyZmKHK
         QGIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ab3XTxowoWnghM7vsUE1W2U1wijkeg6hBIi2Ql1xgWA=;
        b=dvLhKv4jtEIjf8A+rn2EuxJnDtxOtifMItJls7Dqa9emnf7UCFeXiV2Vl+AvDp2UO2
         4JvKxN3c9D/YlSOuhEl0S8mrBaVG/3GcLr0gJ+Glr/wOlX4jTWyjOl2nR0tn2+eILhQQ
         8BkzlOC+bsf2JnUyEOk4f6Zl6fJnICOeHBZx5ZqZCairIog2pfL4qFhuxxlrt3IMgNvU
         2OpxaCzT4a9p5Y4poLNziM0y17wPSHyJ7Zr15fpAKeyiXZGI6bzModZj8zRLYSUThHvD
         Kz+7ffCRt3POfd/UiX9tFn9gJ8wvE787HSEvEz9M0yGW7J6xiF2xobSyr5xaxATdtJD/
         zN3Q==
X-Gm-Message-State: AOAM530ZLKXdUbLAD7W9KpHxWiALrEtK+8lv4ITe2mD8wAB5PpG78qmU
	lNGEDqnz6sCKvfk3ryKBhek=
X-Google-Smtp-Source: ABdhPJxCG5RAKMrwRn3jto6z7YDglWFViVutLyC1HFjgfGzBk4OCX+tLqRrT3XPLhHCYcc1CVhRXfQ==
X-Received: by 2002:a05:6102:3137:: with SMTP id f23mr4480215vsh.146.1589824160816;
        Mon, 18 May 2020 10:49:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3092:: with SMTP id w140ls1191888vsw.1.gmail; Mon, 18
 May 2020 10:49:20 -0700 (PDT)
X-Received: by 2002:a05:6102:300f:: with SMTP id s15mr10558766vsa.199.1589824160490;
        Mon, 18 May 2020 10:49:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589824160; cv=none;
        d=google.com; s=arc-20160816;
        b=W+E6EHMUe58Bur71UwF10zXNXYnDrIyAi+akVKK5PAF51qsYImgMd1pkz8CKpuWmBs
         2ltXHUIzah7aKpkfYSZ3a9Vw1+BE+FIRFfIWf6HUkeIvfpO2ZnH5Od31O1/bGWgIdokp
         //KcSwnqH/Xs+j8PPvv5xWQof1MFAvp/vt5xPQGLivP7l6jwOG5CQFyi6ulaMFoAejjt
         S1pTgkrvMd+Brg56Ld4CDM0LugHzd8EBQR+vGU2pPrjHCios9if1rAeHHNdmXJaUpikg
         b8aJxLZCwqNC7MynbDqFUaoOcnsj/sqTWxx90WgCpZacgDukzcnTd0fh0li4Q24QVXhM
         lZYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mBq4CNh2SzaiNVBNhEkzgkxU7yRKv+pxY1QX3ny6bNo=;
        b=RSF6m+mQGLVNG7cFTwbnJ7p2Uahj3EEKOo/mhW4WBhgoVzctv4kL+GmKAdP13quKvk
         /tK9GZyTjg+h6qcgmEMtGaUlvmgjM1rY1wCO6+/qdehljOqlaB5uAYreqSkVANCSLywg
         PSjmxV3cbWL/uFBCgdtlii7ZaBfGDTys+BRfXAYJNf63JCW5K7oUmgK24/cc8FsM8u36
         sVMZToM/oGE/X9OM/D31EBxgxf9hK/frNcE0TuyM1zZofKQoaCIbUaOoB+gOeQU74Uxw
         +zmtgAm3SbYc5FYfQHqU+nhqTzVVjU+Th5yHsmNhcU2YBH1E8T6272p9wRHGhW4LVg3/
         5//w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VZ/6zRNA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e22si838872vkn.4.2020.05.18.10.49.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 10:49:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id y18so5282925pfl.9
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 10:49:20 -0700 (PDT)
X-Received: by 2002:a63:d010:: with SMTP id z16mr5906980pgf.381.1589824159213;
 Mon, 18 May 2020 10:49:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200517011732.GE24705@shao2-debian> <20200517034739.GO2869@paulmck-ThinkPad-P72>
 <CANpmjNNj37=mgrZpzX7joAwnYk-GsuiE8oOm13r48FYAK0gSQw@mail.gmail.com>
 <CANpmjNMx0+=Cac=WvHuzKb2zJvgNVvVxjo_W1wYWztywxDKeCQ@mail.gmail.com> <CANpmjNPcOHAE5d=gaD327HqxTBegf75qeN_pjoszahdk6_i5=Q@mail.gmail.com>
In-Reply-To: <CANpmjNPcOHAE5d=gaD327HqxTBegf75qeN_pjoszahdk6_i5=Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 May 2020 10:49:08 -0700
Message-ID: <CAKwvOd=Gi2z_NjRfpTigCCcV5kUWU7Bm7h1eHLeQ6DZCmrsR8w@mail.gmail.com>
Subject: Re: [rcu] 2f08469563: BUG:kernel_reboot-without-warning_in_boot_stage
To: Marco Elver <elver@google.com>
Cc: Kan Liang <kan.liang@linux.intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	kernel test robot <rong.a.chen@intel.com>, Peter Zijlstra <peterz@infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, LKP <lkp@lists.01.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="VZ/6zRNA";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, May 18, 2020 at 7:34 AM Marco Elver <elver@google.com> wrote:
>
> On Mon, 18 May 2020 at 14:44, Marco Elver <elver@google.com> wrote:
> >
> > [+Cc clang-built-linux FYI]
> >
> > On Mon, 18 May 2020 at 12:11, Marco Elver <elver@google.com> wrote:
> > >
> > > On Sun, 17 May 2020 at 05:47, Paul E. McKenney <paulmck@kernel.org> wrote:
> > > >
> > > > On Sun, May 17, 2020 at 09:17:32AM +0800, kernel test robot wrote:
> > > > > Greeting,
> > > > >
> > > > > FYI, we noticed the following commit (built with clang-11):
> > > > >
> > > > > commit: 2f08469563550d15cb08a60898d3549720600eee ("rcu: Mark rcu_state.ncpus to detect concurrent writes")
> > > > > https://git.kernel.org/cgit/linux/kernel/git/paulmck/linux-rcu.git dev.2020.05.14c
> > > > >
> > > > > in testcase: boot
> > > > >
> > > > > on test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 8G
> > > > >
> > > > > caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
> > > > >
> > > > >
> > > > >
> > > > >
> > > > > If you fix the issue, kindly add following tag
> > > > > Reported-by: kernel test robot <rong.a.chen@intel.com>
> > > > >
> > > > >
> > > > > [    0.054943] BRK [0x05204000, 0x05204fff] PGTABLE
> > > > > [    0.061181] BRK [0x05205000, 0x05205fff] PGTABLE
> > > > > [    0.062403] BRK [0x05206000, 0x05206fff] PGTABLE
> > > > > [    0.065200] RAMDISK: [mem 0x7a247000-0x7fffffff]
> > > > > [    0.067344] ACPI: Early table checksum verification disabled
> > > > > BUG: kernel reboot-without-warning in boot stage
> > > >
> > > > I am having some difficulty believing that this commit is at fault given
> > > > that the .config does not list CONFIG_KCSAN=y, but CCing Marco Elver
> > > > for his thoughts.  Especially given that I have never built with clang-11.
> > > >
> > > > But this does invoke ASSERT_EXCLUSIVE_WRITER() in early boot from
> > > > rcu_init().  Might clang-11 have objections to early use of this macro?
> > >
> > > The macro is a noop without KCSAN. I think the bisection went wrong.
> > >
> > > I am able to reproduce a reboot-without-warning when building with
> > > Clang 11 and the provided config. I did a bisect, starting with v5.6
> > > (good), and found this:
> > > - Since v5.6, first bad commit is
> > > 20e2aa812620439d010a3f78ba4e05bc0b3e2861 (Merge tag
> > > 'perf-urgent-2020-04-12' of
> > > git://git.kernel.org/pub/scm/linux/kernel//git/tip/tip)
> > > - The actual commit that introduced the problem is
> > > 2b3b76b5ec67568da4bb475d3ce8a92ef494b5de (perf/x86/intel/uncore: Add
> > > Ice Lake server uncore support) -- reverting it fixes the problem.
>
> Some more clues:
>
> 1. I should have noticed that this uses CONFIG_KASAN=y.

Thanks for the report, testing, and bisection.  I don't see any
smoking gun in the code.
https://godbolt.org/z/qbK26r

>
> 2. Something about function icx_uncore_mmio_init(). Making it a noop
> also makes the issue go away.
>
> 3. Leaving icx_uncore_mmio_init() a noop but removing the 'static'
> from icx_mmio_uncores also presents the issue. So this seems to be
> something about how/where icx_mmio_uncores is allocated.

Can you share the disassembly of icx_uncore_mmio_init() in the given
configuration?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DGi2z_NjRfpTigCCcV5kUWU7Bm7h1eHLeQ6DZCmrsR8w%40mail.gmail.com.
