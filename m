Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXFCZH5QKGQEOPB46AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFDB27B6D8
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 23:10:53 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id q5sf1845151pfl.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 14:10:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601327452; cv=pass;
        d=google.com; s=arc-20160816;
        b=JxBJEUZmwtCkPB71LtrrQv5W+TxGpJg8mzOxPS43PX+nXKduFXxYJmBWiCGtn0sPiv
         QQaZNf0McpZ3uU4aAbipNNDJ0HwxwBdGJMuAPBlitpvyi1sB3Qbvf4ufdIQioPFkeYCs
         g75FOAfROcUilO4WRwEmINDE8yEukGCOO4fzNgRzN/1cgv9QdE0gYkklTGCFZdaR0uTK
         4B01+UjQAZXvnFQlIuDaDQsw3IxSGu8uWn/mpPEnE4tog3kNdDdfbe6q/vfW+CwPXGaU
         Zr6xHBWSQQuarr3FohG5usLEU+F1l0SYAmWBGL4z/YY3H7F6ZNsPeyKa7fyBhELgLO4T
         N6Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=njMJHaCOZKw3o46Ip2Kj3l450joVSVSAfTvNkoBUhhQ=;
        b=qXbuM4vdDrEhE5Y5ln6O3/ttiOPkbopP2BsUNmCcVIy1T9Zq8vvuPVFDNbrGqwHVpT
         Id53pHJ90Zzb2aLRRpBEIYpCsLrDUfGRk+ix7gQHlQJoBmRldqYedtG4NZtPEuue8eHR
         bA/ETLMjuQl5GdeeXdzR9qDJMHQRlBPAWPu1N5CSmw9lehcYBL2josYs/IyDo760SIfu
         r5UweUXXaVHwCYr60bnHffCJVLBXwxOJAQS8F8bUz8weEs6XpTssYdy8iga4K3/fjewK
         QTF+QVsOgiJLRDuPQcrgXVXfMXn/1vQrCzyVfXfthBzsER+1nqbsXfkzYyAnpQnQm2zV
         o59w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uaGC6jxR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=njMJHaCOZKw3o46Ip2Kj3l450joVSVSAfTvNkoBUhhQ=;
        b=OTJZDl1pSZaTZsxoyh578U4/GNntjoaSFmZOUqlQP2dmMMrmeQ8AOUpfisdQFfnhNy
         n9M1138fvaCROq69qcXWRH+vrXcjeq2bKNsYRRLIHpYxvkbtt8YcAK7gvtxaZMxucI1k
         tbpoEmcb5WenW3KF6Hcg4WOU7zDghGEMnj3/vuqvFS2GDmnPLCAOytA5EVu0OkzxBf0G
         /DWbMoi32MaNHUnz74edSodZw17FTUVwMaMQMr2JcAxKf2Ur13aD5ycbhRxvu/r1N4RF
         1h5vw8yV7Pe8jnBkzQr5u64E2/0hB4N3d7SVV3TdCYEaUtBQnH3SmPqUMec3YUZBnMY3
         dxCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=njMJHaCOZKw3o46Ip2Kj3l450joVSVSAfTvNkoBUhhQ=;
        b=rD4pWKtZBgtWOIJvfyGQtXGL7+Scls3ukUgnWSuZJhOAZbq6NFNBZtiBwPSh08ISO+
         RcKpT2pWygUDOOHq6i2qypT3lT5OwGPZOd5GjIQadpl/se2pOT2jzkPzveAKC43ZX3+9
         qD0C6qOv4Mu4EzuHofYNAF1iBTZAJZPTIPa4dOEWrbr1vstDlD4axVZsH7Vz11g3BET8
         p++Qn1OnF5tS6kusc849ThQ63td2A6iJ0ClqM1D8r9xJTjBsoimXM4c+qcpQ6Qje3qqX
         2pcM5tD7mWwWRCFjgKjDs2Zi/TigwnQtJdI+nX4XTJl8STbW6ht2/C0Ruks0+qeezZcZ
         ycfQ==
X-Gm-Message-State: AOAM531Gj2dIdppjlX1Gp6QWpLHVtsDEw8zwodaKQrl7xZYU8zCBSiXP
	PpP/tAMzLfZCDQVEtJLiHoI=
X-Google-Smtp-Source: ABdhPJx7A8opojyIGpIv+UR8k8ZkINvEezP7YR4UGoWZRcvm1CuPQOt5JX9T6P17uPv05WDb2pk4eg==
X-Received: by 2002:a17:90a:bf8c:: with SMTP id d12mr967085pjs.157.1601327452239;
        Mon, 28 Sep 2020 14:10:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:123:: with SMTP id 32ls1771349plb.1.gmail; Mon, 28
 Sep 2020 14:10:51 -0700 (PDT)
X-Received: by 2002:a17:902:ff0b:b029:d2:cc1:615f with SMTP id f11-20020a170902ff0bb02900d20cc1615fmr1147262plj.27.1601327451504;
        Mon, 28 Sep 2020 14:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601327451; cv=none;
        d=google.com; s=arc-20160816;
        b=0ZYw3eLP6mko7pmMnlE2FDVkkAXhJW++h1Dw0T7FjzVYg0VD0KsLvaUxK2pTXo7LBw
         0KMWPPfl9xEo/MFw9pCc60XIvUYJ+v76kGInG46IUcyVs3aEoDYVwkqFkhKw/nY7g6TK
         ntaDLRL+G9i8QYeniIuOtDgzGjxdYApMRSSoqDMYNpyodRuGCTcehhgxl5tVCQH3Lozl
         15Djy7996pkwo0Vrj0lJFA9Wc7w5YlCsL/2VTHFcdE9xUfezII36T3jNVI7cdidcpN3z
         9NCrWHm+r3qdAcC/w8p+iGr7HMgWCQ+MDiKIUwpk7GF3oTrfu73zCIchtZYKa4IJ4e77
         mQzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZiftkLxpXwj1qlF3N1uj7X6DGOCVpWF+qm2PkXK9Iic=;
        b=ccDzzo/0KvernT0S0ORne2P0I2KsuARMSDiGvW3KYP7BWaCwfwQ6g5JggFglD4zaq1
         bewY16qjDFJtJPAdcOYa45+TLM6pNdRVkHd/25wrp7jXPd94pucZP9Hb0wNwCbsCNALN
         OVMEsuaVO+7DXc7bSES9rjnr6WiYY4ZP+i96xIOzwAF/lHQmIMrWl+y2YmCwcWRoj9WS
         R1RPHuh0CvCc7I8hrSCkPmVJNFHn1qD6J2gqaNgVbPcHD0hJFTFe6n7Ik3OtIbgXIAhr
         hazaQfrDMT7CAioUE3Sw1ccOBjAoK4VzPZonSsqd7HTM3ryRp7kV5odt/44kOp3CR9Dy
         mlfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uaGC6jxR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id i4si583036pjj.2.2020.09.28.14.10.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 14:10:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id b124so2289407pfg.13
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 14:10:51 -0700 (PDT)
X-Received: by 2002:a63:28c9:: with SMTP id o192mr667822pgo.381.1601327450752;
 Mon, 28 Sep 2020 14:10:50 -0700 (PDT)
MIME-Version: 1.0
References: <202009262204.3foBZGl2%lkp@intel.com>
In-Reply-To: <202009262204.3foBZGl2%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 14:10:39 -0700
Message-ID: <CAKwvOdnc9dGor-3FT3DG0U7im7TzR-6u8aHctH+NybA+4i8b9A@mail.gmail.com>
Subject: Re: [linux-next:master 11142/11173] ld.lld: warning:
 arch/arm/built-in.a(kernel/elf.o):(".discard.ksym") is being placed in '".discard.ksym"'
To: Kees Cook <keescook@chromium.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uaGC6jxR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430
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

On Sat, Sep 26, 2020 at 7:07 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   20dc779fdefc40bf7dd9736cea01704f29228fae
> commit: ebf18610b8fcacb3bb5c147e4256d05711c55bf2 [11142/11173] Merge branch 'akpm-current/current' into master
> config: arm-randconfig-r022-20200925 (attached as .config)

^ randconfig

> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a83eb048cb9a75da7a07a9d5318bbdbf54885c87)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ebf18610b8fcacb3bb5c147e4256d05711c55bf2
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout ebf18610b8fcacb3bb5c147e4256d05711c55bf2
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    ld.lld: warning: lld uses blx instruction, no object with architecture supporting feature detected
>    ld.lld: warning: lld uses blx instruction, no object with architecture supporting feature detected
>    ld.lld: warning: init/built-in.a(main.o):(".discard.ksym") is being placed in '".discard.ksym"'

Hi Kees, did your orphan section placement series explicitly add .discard.ksym?

>    ld.lld: warning: init/built-in.a(version.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: init/built-in.a(do_mounts.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: init/built-in.a(init_task.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/elf.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/opcodes.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/process.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/reboot.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/setup.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/stacktrace.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/traps.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/armksyms.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/unwind.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/io.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/paravirt.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(mm/iomap.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(mm/dma-mapping-nommu.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(mm/nommu.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(mm/proc-syms.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/built-in.a(crypto/sha1_glue.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/mach-ep93xx/built-in.a(core.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >> ld.lld: warning: arch/arm/mach-ep93xx/built-in.a(clock.o):(".discard.ksym") is being placed in '".discard.ksym"'
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
>    ld.lld: warning: kernel/built-in.a(locking/mutex.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/semaphore.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/rwsem.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/percpu-rwsem.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/mutex-debug.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/lockdep.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/spinlock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/rtmutex.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(locking/spinlock_debug.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(power/qos.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(power/main.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(power/suspend.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(printk/printk.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/irqdesc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/handle.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/manage.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq/resend.o):(".discard.ksym") is being placed in '".discard.ksym"'
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
> >> ld.lld: warning: kernel/built-in.a(dma/direct.o):(".discard.ksym") is being placed in '".discard.ksym"'
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
>    ld.lld: warning: kernel/built-in.a(kcov.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(tracepoint.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_clock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/ring_buffer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_output.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_seq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_printk.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_preemptirq.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/blktrace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_events.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_event_perf.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_events_filter.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/trace_events_trigger.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/power-traces.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(trace/rpm-traces.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(irq_work.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(cpu_pm.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(bpf/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(events/core.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(events/ring_buffer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(torture.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(iomem.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: kernel/built-in.a(watch_queue.o):(".discard.ksym") is being placed in '".discard.ksym"'
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
> >> ld.lld: warning: mm/built-in.a(nommu.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(page_alloc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(memblock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(dmapool.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(sparse.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(page_poison.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(slab.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(frame_vector.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: mm/built-in.a(usercopy.o):(".discard.ksym") is being placed in '".discard.ksym"'
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
>    ld.lld: warning: fs/built-in.a(buffer.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(block_dev.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(direct-io.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(mpage.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(notify/fsnotify.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(notify/notification.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(notify/group.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(notify/mark.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(anon_inodes.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(aio.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(io_uring.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(crypto/crypto.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(crypto/fname.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(crypto/hooks.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(crypto/keyring.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(crypto/keysetup.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(crypto/policy.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(crypto/bio.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(locks.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(mbcache.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(posix_acl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs_common/grace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(coredump.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(iomap/buffered-io.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(iomap/direct-io.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(iomap/fiemap.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(iomap/seek.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(quota/dquot.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(quota/quota_tree.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(quota/kqid.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(proc/generic.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(proc/proc_sysctl.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(proc/proc_net.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(kernfs/dir.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(kernfs/file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(sysfs/file.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(sysfs/dir.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(sysfs/symlink.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(sysfs/group.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(dcookies.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(jbd2/transaction.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(jbd2/journal.o):(".discard.ksym") is being placed in '".discard.ksym"'
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
>    ld.lld: warning: fs/built-in.a(nfs/nfstrace.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/fs_context.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(nfs/nfs3client.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(exportfs/expfs.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(lockd/clntlock.o):(".discard.ksym") is being placed in '".discard.ksym"'
>    ld.lld: warning: fs/built-in.a(lockd/clntproc.o):(".discard.ksym") is being placed in '".discard.ksym"'
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009262204.3foBZGl2%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnc9dGor-3FT3DG0U7im7TzR-6u8aHctH%2BNybA%2B4i8b9A%40mail.gmail.com.
