Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBYU4RP3AKGQEJTDJMEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 799061D836A
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 20:05:23 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id t2sf1809568lfq.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 11:05:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589825123; cv=pass;
        d=google.com; s=arc-20160816;
        b=J+D6EGVt8gldaBe1w2XDM9bCPkxoxsYn04JrbeGUWqHkTMAtI/uplzSm4UTgS8dTvy
         23otX1zHyCal8X7KieKq+CPy/4T02GStMxVlwnZ2i5y+EDHofeXq+7aNnucfEfThDL6a
         pkLVMbSJ3UGFjNWDJLTrP21opvFALWTr+530o0ATD2NFRF1IK3zJrDfdjdHy9U1gVORn
         Q45mTikAnxFYM2eKlGktfbBYupeSL4S5qiXtSxCRP0M60Vqeq9Nkm24kubC1P+UqjSGr
         hilAIVBVb9SbXdFcJNDI/TqmP1i0VrQmKDXYrJALI+J12zDHgqx8iVE2sE3jp669UA4A
         d+lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=BsRsu0p7Xaxs2TytEzZMo/HR390MjzXBVVb5ZsgEZPo=;
        b=tq/00nKEHf9DJVEb5ERmkDE4j4AIWTsMakuW/xyp/f89XC2mW9N6D9Hyz6tsD8CB9L
         4NqaJ0myIPspFHhEKrSDqc0vI1j0i2X+h59dYDAmDt5i/faM42IZJxmi53y0KJ2BTSqK
         ISeLSI4/TiAhXOnrFshqmH3tL7je+09s2qDmNDSfu7oeubBQ90kNuoiGZqfebteCqIbL
         imE8jRaR53wy/w0tpFguR66qfVRkTVEP+eY/d+i+uKNRWpqqxnwaS6QtMrU7udWsroux
         A9SPAbUoMrQubSTp3HeCFKN1M/NZqjKNFRY/c+PirXY3I/Kd9e/mjBlau0c6/e/QFlQ1
         Hv/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z3ybWwqd;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BsRsu0p7Xaxs2TytEzZMo/HR390MjzXBVVb5ZsgEZPo=;
        b=MPj6GTe97yTzxi3oQuQ4s6bFnculvzLLhRzhu9aZMWTNASW7gl1ibosPdIyge5voMl
         vBlBju+mLKOeomPqhpMfaxrb+lFbx7nt741VdPfvrGyhnXs6YXaylLYAvJKXCXgXaMwI
         3nSpMFfcu74UEDrpjThJnbfG1/e4MLTnNjXK2uPn6MPYrLdagLsj2jTCbuKsDMMhyzSo
         BNKWzyEUTqUFmfoAgcOzT7ZFeOEgL99ZHjzYoaI/1/JgGqbN9mrtnjFdLHYx9UTAEWPr
         UO6EIFxX981xmzijCb2JGnf+kw5ffIwVZTMjCfMvTg+Hu5GChvNEO3fbZ+mQkEaJt5lE
         x0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BsRsu0p7Xaxs2TytEzZMo/HR390MjzXBVVb5ZsgEZPo=;
        b=imD4IwMJNUeb5pjpuGrMeCslHhPLGiTJcNA2cMpiKwYlm1DpqtGrNr6agYpWJpEqWO
         NaJWGWhaP+FAmqxCRCz8KB/u/DU5TGRhUss9wlY5gJe+C+WQQTcOb6vQqoaHN0hfYgyb
         f2ngts2P2lp+hhNzdDMsrkTMsSOD/d9v9kZ4bo3XeZOiP7YS5jnRAvZhk2voGQTp2/ta
         IGFfcnII0USSnebYXIT9rRM09mfBXK7qjvDX9Rc6mpljQoQfJ51HCJAYuwQWkLZ690lU
         vCJexreLfElBm/xYTBnpcMUsJ7gshgEHrrIBaSDHYbETRfz6nuv6qN1GLGDbDokADy68
         KRkA==
X-Gm-Message-State: AOAM5325zKTy0v98OQRDiws0LAt3gmbZ+4l2vXlhqKRE7KlZnq5vtS1Q
	0OJzAwiRBjOJcFOLm0wNKLM=
X-Google-Smtp-Source: ABdhPJyNR6eOF7+1+IGnra3B7thE4kT+1MhGqQ4jlnmqE84ZWjq5g24La1PFRH7sTN6VCfEemmx8vw==
X-Received: by 2002:a19:c3c5:: with SMTP id t188mr5049833lff.149.1589825122945;
        Mon, 18 May 2020 11:05:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4193:: with SMTP id z19ls595019lfh.11.gmail; Mon, 18 May
 2020 11:05:22 -0700 (PDT)
X-Received: by 2002:ac2:5685:: with SMTP id 5mr12424489lfr.5.1589825122175;
        Mon, 18 May 2020 11:05:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589825122; cv=none;
        d=google.com; s=arc-20160816;
        b=UKSJ/TRL+VApdLI+DolmVelycTF0GZyQD7o5nMSRADnejGVI0Psc9IQs4CiRaDt9QZ
         p9g/vJUm0J+KJfzD0m36lmKlhg8+VQUXAHUSgGW39iHvJrYX6oR44JYC/HWlaz3pMvmE
         Wsdc3FkzRNLk3Ldot7zavTc2c0M0vSTaj6lf0zeuFEws2Vick8nV0xCPD79c6uW5fbMh
         uJGDqwEXlvXvgVpEJlFqAroIzriK7h3hahAyfVS9oJMZnSkN+xLrPpy1//QYuyMr8Ah2
         BctgLKhOwUVYnRER2iJR9byh7o8VYuugrOjt1rSbhpZwkb7J4D8gd2DYlPU9EqkP9p6e
         P6Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=A1Of05sXfKMuAB6KElfJxv+kaM0ti5HUQFDuIZAc/hE=;
        b=lEDBInGQvHHJ9+gMK2MXBTpq1gYopFgCG/N8kZTVn5Il48ngdJ9wxYcHuKSdR+jelU
         kel1bEiw6EjXBGwZSvqkVAMn7BdAI2NnLcWK+zwxAZEgRMSYpDirGdYQUaIl6V8XEK/P
         2t9qhXSrS4q8nDuU28IcoC0lRPzvGo7upTIh0LFVj2z4EKhE8bpW8nLO/A7Uan0eegqg
         mxGlPT2OQvTPfXotUlkuxsTIIFVxFUmouHSU28gbxAc6zn4ocg44Dqg6V9gESLMGsFtd
         X7rWRADrdXvpongkq1wk9guuC6MXjjRJ7uznxePOY8zl130KO0dIPzRom6lhIhHQcMYo
         couQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z3ybWwqd;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id x16si692343lfn.0.2020.05.18.11.05.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 11:05:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id m12so452989wmc.0
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 11:05:22 -0700 (PDT)
X-Received: by 2002:a1c:7410:: with SMTP id p16mr627463wmc.134.1589825121166;
        Mon, 18 May 2020 11:05:21 -0700 (PDT)
Received: from google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id l11sm457783wmf.28.2020.05.18.11.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2020 11:05:19 -0700 (PDT)
Date: Mon, 18 May 2020 20:05:13 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kan Liang <kan.liang@linux.intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	kernel test robot <rong.a.chen@intel.com>,
	Peter Zijlstra <peterz@infradead.org>,
	LKML <linux-kernel@vger.kernel.org>, LKP <lkp@lists.01.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [rcu] 2f08469563: BUG:kernel_reboot-without-warning_in_boot_stage
Message-ID: <20200518180513.GA114619@google.com>
References: <20200517011732.GE24705@shao2-debian>
 <20200517034739.GO2869@paulmck-ThinkPad-P72>
 <CANpmjNNj37=mgrZpzX7joAwnYk-GsuiE8oOm13r48FYAK0gSQw@mail.gmail.com>
 <CANpmjNMx0+=Cac=WvHuzKb2zJvgNVvVxjo_W1wYWztywxDKeCQ@mail.gmail.com>
 <CANpmjNPcOHAE5d=gaD327HqxTBegf75qeN_pjoszahdk6_i5=Q@mail.gmail.com>
 <CAKwvOd=Gi2z_NjRfpTigCCcV5kUWU7Bm7h1eHLeQ6DZCmrsR8w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=Gi2z_NjRfpTigCCcV5kUWU7Bm7h1eHLeQ6DZCmrsR8w@mail.gmail.com>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z3ybWwqd;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as
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

On Mon, 18 May 2020, 'Nick Desaulniers' via kasan-dev wrote:

> On Mon, May 18, 2020 at 7:34 AM Marco Elver <elver@google.com> wrote:
> >
> > On Mon, 18 May 2020 at 14:44, Marco Elver <elver@google.com> wrote:
> > >
> > > [+Cc clang-built-linux FYI]
> > >
> > > On Mon, 18 May 2020 at 12:11, Marco Elver <elver@google.com> wrote:
> > > >
> > > > On Sun, 17 May 2020 at 05:47, Paul E. McKenney <paulmck@kernel.org> wrote:
> > > > >
> > > > > On Sun, May 17, 2020 at 09:17:32AM +0800, kernel test robot wrote:
> > > > > > Greeting,
> > > > > >
> > > > > > FYI, we noticed the following commit (built with clang-11):
> > > > > >
> > > > > > commit: 2f08469563550d15cb08a60898d3549720600eee ("rcu: Mark rcu_state.ncpus to detect concurrent writes")
> > > > > > https://git.kernel.org/cgit/linux/kernel/git/paulmck/linux-rcu.git dev.2020.05.14c
> > > > > >
> > > > > > in testcase: boot
> > > > > >
> > > > > > on test machine: qemu-system-x86_64 -enable-kvm -cpu SandyBridge -smp 2 -m 8G
> > > > > >
> > > > > > caused below changes (please refer to attached dmesg/kmsg for entire log/backtrace):
> > > > > >
> > > > > >
> > > > > >
> > > > > >
> > > > > > If you fix the issue, kindly add following tag
> > > > > > Reported-by: kernel test robot <rong.a.chen@intel.com>
> > > > > >
> > > > > >
> > > > > > [    0.054943] BRK [0x05204000, 0x05204fff] PGTABLE
> > > > > > [    0.061181] BRK [0x05205000, 0x05205fff] PGTABLE
> > > > > > [    0.062403] BRK [0x05206000, 0x05206fff] PGTABLE
> > > > > > [    0.065200] RAMDISK: [mem 0x7a247000-0x7fffffff]
> > > > > > [    0.067344] ACPI: Early table checksum verification disabled
> > > > > > BUG: kernel reboot-without-warning in boot stage
> > > > >
> > > > > I am having some difficulty believing that this commit is at fault given
> > > > > that the .config does not list CONFIG_KCSAN=y, but CCing Marco Elver
> > > > > for his thoughts.  Especially given that I have never built with clang-11.
> > > > >
> > > > > But this does invoke ASSERT_EXCLUSIVE_WRITER() in early boot from
> > > > > rcu_init().  Might clang-11 have objections to early use of this macro?
> > > >
> > > > The macro is a noop without KCSAN. I think the bisection went wrong.
> > > >
> > > > I am able to reproduce a reboot-without-warning when building with
> > > > Clang 11 and the provided config. I did a bisect, starting with v5.6
> > > > (good), and found this:
> > > > - Since v5.6, first bad commit is
> > > > 20e2aa812620439d010a3f78ba4e05bc0b3e2861 (Merge tag
> > > > 'perf-urgent-2020-04-12' of
> > > > git://git.kernel.org/pub/scm/linux/kernel//git/tip/tip)
> > > > - The actual commit that introduced the problem is
> > > > 2b3b76b5ec67568da4bb475d3ce8a92ef494b5de (perf/x86/intel/uncore: Add
> > > > Ice Lake server uncore support) -- reverting it fixes the problem.
> >
> > Some more clues:
> >
> > 1. I should have noticed that this uses CONFIG_KASAN=y.
> 
> Thanks for the report, testing, and bisection.  I don't see any
> smoking gun in the code.
> https://godbolt.org/z/qbK26r

My guess is data layout and maybe some interaction with KASAN. I also
played around with leaving icx_mmio_uncores empty, meaning none of the
data it refers to end up in the data section (presumably because
optimized out), which resulted in making the bug disappear as well.

> >
> > 2. Something about function icx_uncore_mmio_init(). Making it a noop
> > also makes the issue go away.
> >
> > 3. Leaving icx_uncore_mmio_init() a noop but removing the 'static'
> > from icx_mmio_uncores also presents the issue. So this seems to be
> > something about how/where icx_mmio_uncores is allocated.
> 
> Can you share the disassembly of icx_uncore_mmio_init() in the given
> configuration?

ffffffff8102c097 <icx_uncore_mmio_init>:
ffffffff8102c097:	e8 b4 52 bd 01       	callq  ffffffff82c01350 <__fentry__>
ffffffff8102c09c:	48 c7 c7 e0 55 c3 83 	mov    $0xffffffff83c355e0,%rdi
ffffffff8102c0a3:	e8 69 9a 3b 00       	callq  ffffffff813e5b11 <__asan_store8>
ffffffff8102c0a8:	48 c7 05 2d 95 c0 02 	movq   $0xffffffff83c388e0,0x2c0952d(%rip)        # ffffffff83c355e0 <uncore_mmio_uncores>
ffffffff8102c0af:	e0 88 c3 83 
ffffffff8102c0b3:	c3                   	retq   

The problem still happens if we add a __no_sanitize_address (or even
KASAN_SANITIZE := n) here. I think this function is a red herring: you
can make this function be empty, but as long as icx_mmio_uncores and its
dependencies are added to the data section somewhere, does the bug
appear.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518180513.GA114619%40google.com.
