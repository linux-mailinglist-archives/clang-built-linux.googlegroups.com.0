Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHPE2P5QKGQEENUA4YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4BB27F3CF
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 23:01:18 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id f4sf2614449ilk.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 14:01:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601499677; cv=pass;
        d=google.com; s=arc-20160816;
        b=dKaDIS7vVbYzJllmPKzES+qLkNeDqOpcoAJ7S0HLFWs6VHa0adf/Mo6E4ScP9QnKxS
         9jtDve3rnDBC+Q/u43kFVyZyTLHvx5cXRyXJ5CghCfiLNtOtS7VyjTQyuUYmjUMHRBJ7
         pFATMsKexNxmInkP9V72OUfOfIKjn1LEC1s/FeZYIjG4n3WvG41G8ypSZdyaT/9pAEoW
         zIzv/0vz92DjHnO51f9bTI3yDNTREPOycepPYrfh1OrugTAyzhFRuApCjukHLGr33ygT
         BiVmRPZPWOm22TWCcPZOfO8DvLcU7hcvRyejJ1+4lzhdguGYG40bsTgXYtPun5FCT6EA
         ArSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8YgXwoxbENbscU20OwyQvYAa9Jm5C29LSygvLiPRRu4=;
        b=sFSAekPPB4mNe1MCBTcmsBIl1F9T/Wotcwr4c1+8/C37rC1kMi3HvALIuH/y7Zjz9l
         e5wwtlNnmZo0mw+CCFmAtjb18qO7+6yfZICy/Dlz93tEuGgg/FOS18l1ZDPgLufgVVxJ
         eb2f0fmDOI2J4OqnrH8X2k+itWt3pmwqr9SPbxeezPqmy6aKMoOrEb0r1TGuD+Ued+it
         EdLVgi9CTeAvnf16bHz2SrmPDCTheIH7z5e0AB20hFi2NfTr9ZBH2J8Ts6bKmFnng1SU
         lcpi9VwhCrqhUI9uhY67ApT33MgQ1IYuGg9GKJEflc12b50K0kUYs4vVEKI5iQk/hQyQ
         Kwyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kGYBHbPs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8YgXwoxbENbscU20OwyQvYAa9Jm5C29LSygvLiPRRu4=;
        b=YWHVsbfQIt/M4j6eCeC08odA9ZMpqQD6poDNhwJeP79wJ67C6Xvwsl1Vg+jXi5k4YE
         fDA9zifW95IrwOL7W8F4mPSGdblrVFYdBebN/wPgtpIq9RTDOq+G0Z8MxjTSCuk2P9A/
         PXKhdx50pJ1U2P3arShOFuYK91kFH/UlaWl8H5O21WWCO7tiI2sHJ2FMK6Fnj529PuG/
         /cUmDbMRhJj1f2jvisllQrxzzgTMnn8xM8ASg9gjUYwshqUIwKzxW2ilhJ6YsraRwNf5
         2gcsUr4CpIPzAlOzsFdtfyZyzsPdEx0jJlikY0qPgHT1Q3mkz7JYV7zq93xrwcm+bsbs
         LcTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8YgXwoxbENbscU20OwyQvYAa9Jm5C29LSygvLiPRRu4=;
        b=ssYA+ccS9gt/tN7/pdRCcxQ/4svh2j59LHMpjhJ5M91EkdxYqu4R/rWa9vx0NqSPpw
         cbS8+zfADKVriZyxrby3MuW8wbC+01YcvKvlPPtgtn59XoHVw+iKeKRxt2f0wow9dYW1
         8+3ZevEsnCXgNyE4UnbG1omeMnZFc1L9HPEiTfb0abMn98p6AbXDKeTo75SVIyQ/Dyed
         Ym+6lMTmoIleuxHoJHT85UnsIlIdNLNYRcEN5K8jbqtyxdat4HXrMyhu0jjMRtwrIBKo
         b299pyz7037OD9yznlnSNmbcZl7aKa22vQE23X+wRJSITDpKUKEENwOmdzZAg4JRLJ95
         cvOA==
X-Gm-Message-State: AOAM531kSEDnq0oHItO0wKQ2+LDy0nrgAgtkp76pn7eZ/L92F7HAnujk
	zQpziS18Yla2ZiwDy8whYso=
X-Google-Smtp-Source: ABdhPJxs8hSTZ9qs/F+kUS5vRaLFr2ab7h4nR2MUr3NKU1Vl9GucLHvn4W20H+N0kipTh12lVRnx2w==
X-Received: by 2002:a05:6e02:cd3:: with SMTP id c19mr3624151ilj.249.1601499677203;
        Wed, 30 Sep 2020 14:01:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8897:: with SMTP id d23ls491105ioo.10.gmail; Wed, 30 Sep
 2020 14:01:16 -0700 (PDT)
X-Received: by 2002:a05:6602:2e87:: with SMTP id m7mr3019532iow.106.1601499676729;
        Wed, 30 Sep 2020 14:01:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601499676; cv=none;
        d=google.com; s=arc-20160816;
        b=qYBoPnmpbM/SMayHp+17eSZBXtu7bG8YRHGICcStrcBOSBUxS9G7nIu38ZJCdJZxAq
         3ol5KemRY3E94wWMtEK/5xR/0OStkCWxMH1A1rzEWI4SwORecoi57TXvJiwwXQ4uFt4P
         KTGw2nPm829uPJ3E5Kj2+J+Tl43KUiSU+OAVvvPF6gFRy5W9ZfuHUev5xXL08Pe28rQF
         T4D+dP7fOnYNmqsBm/T7eqe64h9CmC1OZtI7n0dbtOjI5tI+BDvMnYRsStYxjTz2uGXL
         Am1D3TLS2MZc/ht7QxpCA9WAv+WMeGu8rIc0GZupFmube2FqVTSxxvRgLQsAhGGhfEGA
         SJVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z4mLdBnr1hXF1bQerxOPi1eRC2Yg6qBTozut30jfFoM=;
        b=WUTchoVe8nLYrlN49OclbkN3RiwcZsYvhT3gyMvIcGYaabnCyKjbu0x20OgrOXuu2w
         TkuBexq0zRbP/w4ab+Q23uABVO6i/s4XwFkmKvACjPdrt+GRpI1pxeBWiZ/rl56j7h6y
         CExMg/LQnkPpNcOxFvM+Mn9ALHsaFpk09YneI0oejn46isfwC5vjdbg3reavmb6/SryE
         MCbSc/ewh9hRKCddhVgQ+nOpm7jAlrtXvHNTIDPuVs4ygVXYB0Rl2h0q/W4K1qrPB+S1
         MsYfCx0QYSW8jdownIqVl9VjRuJQi+bTNHuhUkwNYsiz13D3CZIfEv/dRIyEt870XRgf
         xPGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kGYBHbPs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id n14si43791ilt.3.2020.09.30.14.01.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 14:01:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id x16so1921037pgj.3
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 14:01:16 -0700 (PDT)
X-Received: by 2002:a63:f74a:: with SMTP id f10mr3646159pgk.263.1601499675343;
 Wed, 30 Sep 2020 14:01:15 -0700 (PDT)
MIME-Version: 1.0
References: <202010010456.5bTQt2eS-lkp@intel.com>
In-Reply-To: <202010010456.5bTQt2eS-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 14:01:03 -0700
Message-ID: <CAKwvOdmaZ91yFP5SX6aHWphF8uyF9FysLM1T1WVuOrCRkMi1Cg@mail.gmail.com>
Subject: Re: [tip:master 30/30] ld.lld: warning: arch/arm/built-in.a(mm/init.o):(".discard.ksym")
 is being placed in '".discard.ksym"'
To: Ingo Molnar <mingo@kernel.org>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kGYBHbPs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532
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

Known pre-existing issue. I sent a patch for this this week.
https://lore.kernel.org/lkml/20200929190701.398762-1-ndesaulniers@google.com/T/#u

On Wed, Sep 30, 2020 at 1:58 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git master
> head:   e9542fdb89751d93026a48a5fba66facc22df6fd
> commit: e9542fdb89751d93026a48a5fba66facc22df6fd [30/30] Merge branch 'core/build'
> config: arm-randconfig-r016-20200930 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bcd05599d0e53977a963799d6ee4f6e0bc21331b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=e9542fdb89751d93026a48a5fba66facc22df6fd
>         git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
>         git fetch --no-tags tip master
>         git checkout e9542fdb89751d93026a48a5fba66facc22df6fd
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    ld.lld: warning: init/built-in.a(main.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: init/built-in.a(version.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: init/built-in.a(do_mounts.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: init/built-in.a(init_task.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/elf.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/opcodes.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/process.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/reboot.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/setup.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/stacktrace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/traps.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/armksyms.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/unwind.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/io.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(kernel/paravirt.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(mm/init.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(mm/iomap.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(mm/dma-mapping-nommu.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(mm/nommu.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/built-in.a(mm/proc-syms.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(fork.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(panic.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(cpu.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(exit.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(softirq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(resource.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sysctl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(capability.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(ptrace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(user.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(signal.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sys.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(umh.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(workqueue.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(pid.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(params.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(kthread.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(notifier.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(ksysfs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(cred.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(reboot.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(async.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(smpboot.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(regset.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(kmod.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(groups.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/loadavg.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/clock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/cputime.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/idle.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/fair.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/wait.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/wait_bit.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/swait.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/completion.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(sched/autogroup.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: kernel/built-in.a(sched/cpufreq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/mutex.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/semaphore.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/rwsem.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/percpu-rwsem.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/mutex-debug.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/rtmutex.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/spinlock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/spinlock_debug.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(power/qos.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(power/main.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(power/suspend.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(printk/printk.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/irqdesc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/handle.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/manage.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/chip.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/dummychip.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/devres.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/generic-chip.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/autoprobe.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/irqdomain.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/irq_sim.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/pm.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(rcu/update.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(rcu/srcutiny.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(rcu/tiny.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(dma/mapping.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: kernel/built-in.a(dma/dummy.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(freezer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(profile.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(stacktrace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/time.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/timer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/hrtimer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/timekeeping.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/clocksource.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/jiffies.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/timeconv.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/timecounter.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/alarmtimer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/posix-clock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/clockevents.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(time/tick-common.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(up.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(module.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(kallsyms.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(cgroup/cgroup.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(cgroup/namespace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(cgroup/cgroup-v1.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(gcov/clang.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(watchdog.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_clock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/ring_buffer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq_work.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(cpu_pm.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(bpf/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(bpf/syscall.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(bpf/verifier.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(bpf/inode.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(bpf/tnum.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(bpf/offload.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: kernel/built-in.a(bpf/cgroup.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(events/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(events/ring_buffer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(crash_dump.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(torture.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(iomem.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(watch_queue.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: certs/built-in.a(blacklist.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(filemap.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(mempool.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(oom_kill.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(fadvise.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(maccess.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(page-writeback.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(readahead.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(swap.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(truncate.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(vmscan.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(shmem.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(util.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(vmstat.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(backing-dev.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(mm_init.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(percpu.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(slab_common.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(list_lru.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(debug.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(gup.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(nommu.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(memblock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(dmapool.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(slab.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: mm/built-in.a(cleancache.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: mm/built-in.a(balloon_compaction.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: mm/built-in.a(page_reporting.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(open.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(read_write.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(file_table.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(super.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(char_dev.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(stat.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(exec.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(pipe.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(namei.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(fcntl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(ioctl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(readdir.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(select.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(dcache.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(inode.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(attr.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(bad_inode.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(filesystems.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(namespace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(seq_file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(xattr.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(libfs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(fs-writeback.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(splice.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(sync.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(d_path.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(stack.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(fs_struct.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(statfs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nsfs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(fs_types.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(fs_context.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(fs_parser.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(notify/fsnotify.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(notify/notification.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(notify/group.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(notify/mark.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(anon_inodes.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(eventfd.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(aio.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(io_uring.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(locks.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(posix_acl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs_common/grace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(proc/generic.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(proc/proc_sysctl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(proc/proc_net.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(proc/vmcore.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(kernfs/dir.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(kernfs/file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(sysfs/file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(sysfs/dir.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(sysfs/symlink.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(sysfs/group.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(configfs/dir.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(configfs/item.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(dcookies.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/client.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/dir.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/inode.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/super.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/direct.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/pagelist.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/read.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/write.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/namespace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/fs_context.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/nfs3client.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(exportfs/expfs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(lockd/clntlock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(lockd/clntproc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(lockd/svc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(lockd/svcsubs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nls/nls_base.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(fuse/dev.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(fuse/file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(fuse/inode.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(debugfs/inode.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(debugfs/file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: security/built-in.a(keys/key.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: security/built-in.a(keys/keyring.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: security/built-in.a(keys/permission.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: security/built-in.a(keys/process_keys.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: security/built-in.a(keys/request_key.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: security/built-in.a(keys/user_defined.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: security/built-in.a(device_cgroup.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: crypto/built-in.a(api.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: crypto/built-in.a(cipher.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: crypto/built-in.a(compress.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: crypto/built-in.a(memneq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: crypto/built-in.a(hash_info.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(lockref.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(bcd.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(sort.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(parser.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(debug_locks.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(random32.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(kasprintf.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(bitmap.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(scatterlist.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(list_sort.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(uuid.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(iov_iter.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(clz_ctz.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(bsearch.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(find_bit.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(llist.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(memweight.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(kfifo.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(percpu-refcount.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(rhashtable.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(once.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(refcount.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(usercopy.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(errseq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(bucket_locks.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(generic-radix-tree.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(string_helpers.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(hexdump.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(kstrtox.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: lib/built-in.a(kunit/test.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: lib/built-in.a(kunit/assert.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: lib/built-in.a(kunit/try-catch.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(math/div64.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(math/gcd.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(math/lcm.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(math/int_pow.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(math/int_sqrt.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(math/reciprocal_div.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(math/prime_numbers.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(math/rational.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(crypto/chacha.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(crypto/sha256.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(iomap_copy.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(devres.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(hweight.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(list_debug.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(linear_ranges.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(packing.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(crc16.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(crc-itu-t.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(crc32.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: lib/built-in.a(crc64.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(genalloc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(zlib_inflate/inflate_syms.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(lzo/lzo1x_decompress_safe.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(lz4/lz4_decompress.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(nlattr.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(atomic64.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(dynamic_queue_limits.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(glob.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(strncpy_from_user.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(strnlen_user.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(net_utils.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(irq_poll.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/built-in.a(stackdepot.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: lib/built-in.a(ubsan.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: arch/arm/lib/lib.a(delay.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(argv_split.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(cmdline.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(ctype.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(dec_and_lock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(dump_stack.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(idr.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(irq_regs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(klist.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(kobject.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(kobject_uevent.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(memcat_p.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(nodemask.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(radix-tree.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(ratelimit.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(rbtree.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(seq_buf.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(sha1.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(siphash.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(string.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(timerqueue.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(vsprintf.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(win_minmax.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: lib/lib.a(xarray.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(irqchip/irqchip.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: drivers/built-in.a(bus/vexpress-config.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(phy/phy-core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(phy/phy-core-mipi-dphy.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(pinctrl/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(pinctrl/pinctrl-utils.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(pinctrl/pinmux.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(pinctrl/devicetree.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(pinctrl/pinconf-generic.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(gpio/gpiolib.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(gpio/gpiolib-devres.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(gpio/gpiolib-legacy.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: drivers/built-in.a(gpio/gpiolib-devprop.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(gpio/gpiolib-of.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(gpio/gpio-mmio.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(gpio/gpio-max730x.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(pwm/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(pci/of.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(video/hdmi.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(video/backlight/lcd.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(video/backlight/backlight.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(video/fbdev/core/fb_cmdline.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(video/fbdev/core/fb_notify.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(video/display_timing.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(video/videomode.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(video/of_display_timing.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(video/of_videomode.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(char/ipmi/ipmi_plat_data.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(amba/bus.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-devres.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-bulk.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clkdev.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-divider.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-fixed-factor.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-fixed-rate.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-gate.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-multiplier.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-mux.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-composite.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-fractional-divider.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(clk/clk-conf.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: drivers/built-in.a(clk/at91/pmc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma/dmaengine.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma/virt-dma.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma/of-dma.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma/dw/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma/dw/dw.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma/dw/idma32.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: drivers/built-in.a(dma/qcom/hidma_mgmt.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: drivers/built-in.a(dma/qcom/hidma_mgmt_sys.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(soc/bcm/brcmstb/common.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: drivers/built-in.a(virtio/virtio.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: drivers/built-in.a(virtio/virtio_ring.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(vdpa/vdpa.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(regulator/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(regulator/helpers.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(regulator/devres.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(regulator/of_regulator.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(reset/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(reset/reset-simple.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/tty_io.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/n_tty.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/tty_ioctl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/tty_ldisc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/tty_buffer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/tty_port.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/tty_mutex.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/tty_baudrate.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/tty_jobctrl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/sysrq.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: drivers/built-in.a(tty/hvc/hvc_console.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/serial/serial_core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/serial/8250/8250_core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/serial/8250/8250_port.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/serial/8250/8250_dma.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/serial/8250/8250_fsl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(tty/serial/serial_mctrl_gpio.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(char/random.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(char/misc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(char/hw_random/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(gpu/drm/drm_mipi_dsi.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/component.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/bus.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/dd.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/syscore.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/driver.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/class.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/platform.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/cpu.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/firmware.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/devres.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/attribute_container.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/transport_class.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/property.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/devcon.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/swnode.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/power/sysfs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/power/generic_ops.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/power/common.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/power/qos.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/power/runtime.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/power/wakeirq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/power/main.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/power/wakeup.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/power/clock_ops.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/firmware_loader/fallback_table.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/firmware_loader/main.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/regmap/regmap.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/regmap/regcache.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/regmap/regmap-i2c.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/regmap/regmap-mmio.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/regmap/regmap-irq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/regmap/regmap-w1.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(base/soc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(misc/atmel-ssc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(misc/c2port/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(misc/echo/echo.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(misc/cardreader/rtsx_usb.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/88pm80x.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/sm501.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/stmpe.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/tmio_core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/lochnagar-i2c.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/arizona-core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/arizona-irq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/wm5110-tables.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/wm8997-tables.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/cs47l24-tables.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/wm8350-core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/wm8350-gpio.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/twl-core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/twl6030-irq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/twl4030-audio.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/twl6040.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/mfd-core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/da903x.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/lp8788.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/da9055-core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/max14577.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/max8997.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/abx500-core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/tps6586x.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/syscon.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/stm32-timers.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(mfd/stmfx.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dax/super.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dax/bus.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma-buf/dma-buf.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma-buf/dma-fence.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma-buf/dma-fence-array.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma-buf/dma-fence-chain.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma-buf/dma-resv.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma-buf/seqno-fence.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(dma-buf/sync_file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(spmi/spmi.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(net/loopback.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(auxdisplay/charlcd.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(pcmcia/cs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(pcmcia/rsrc_mgr.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/common/common.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/usb.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/hub.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/hcd.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/urb.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/message.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/driver.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/notify.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/generic.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: drivers/built-in.a(usb/core/phy.o):(".discard.ksym") is being placed in '".discard.ksym"'
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010010456.5bTQt2eS-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmaZ91yFP5SX6aHWphF8uyF9FysLM1T1WVuOrCRkMi1Cg%40mail.gmail.com.
