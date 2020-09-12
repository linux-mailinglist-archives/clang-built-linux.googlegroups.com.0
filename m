Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYWH6H5AKGQEW3CG4MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BECC26780D
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Sep 2020 08:00:04 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id p15sf5623392oop.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 23:00:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599890403; cv=pass;
        d=google.com; s=arc-20160816;
        b=DOkEK/zoYIwvd6h1ag1aB4puO0S4cDsqnveu623Eg7blRzt72vtieEtSnUOo8qsVwo
         CJQ7N2gMCod/IVEuRwSLfN2mabyNAbRk3JnY5KQXqCmWGqR3a+DiTjFmqJv/mSO8EYFm
         7EbUUhckvfeiIe5fBFuS9IaD2l6zuHlpRAN9RkgG9Km10X+ZhRx+tO8AR+HkonBeAMXl
         xzF8EbBOhXHqug/kTA6rCZ/7bItuBG3oR3cy+X38lLmLtEFONNok6kRHOT5l8qYIZI45
         VxjUUykwJH5m+BZTrbnb24cZbkVHsamAGznxuWgWhQd69hboPqYKE3zobgrHkaBamXns
         lCmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bHBKKzqLuNuezhNpBgfuow9amG4M+LppruERVii5ajA=;
        b=VYjVROczMX22h6E7RZesdgpQKd98zPnyw/AXHCgUkfK2H4qRt7vTCSCrIMu+HpPeRY
         UTj/fOcnfmpCOn+So6OliWFe8SeLnCQEq6NDiu/EI/93VeI4Qnb8AkJ+CgyynhFmKwvn
         /p//AdQH8qEsMdzxEufC2o1f4MwfwOg3dhxhrNtGqmkzkf26Gp4A7TBoDQAuV6wQFrfX
         rS1FlOmfgn+UF8YO2NR4jTwrAKO4XAZndoN7iHcj/J61cr2OmqlEIIAgF4lyK9AtNdfK
         oM1BGK4ntDRbs84VPDwOo1mVMDTqMOW0MkN9AbfJAcnCis3DWHl8e764tQAmr05FMaS3
         0VPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nh54qlCh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bHBKKzqLuNuezhNpBgfuow9amG4M+LppruERVii5ajA=;
        b=DZoqoy0h90AS2XiL6U3bn2+Zpi+a48CnJcd3MuNnU4fwrIXay1BK4EaYQBashoRdHg
         QSKfxc92XvCy+zP0yMoDAsI/F08pi6q3BpyiIJ9AkcNPdiCaAUUm63+xgbwtypGDFHP8
         cRFbELrRePIvFIqzrCQJx19wIT8N3xT8LfrvxKh/ldr6MyCC02C5TPNM+FxaSQrck3Tf
         ebeQ8cqGGGcbUjSiTa0NrV6MiLxs03A+j8p6GUghdK8614bJpFKHt7u9a6JbBqNplzRD
         w4P7ZUFPD8xPe0Y+35SnfrnzEnkofo2e3HZrFO2sn+1fvcKUZdw5/lf9NakxaapFhE5D
         1Xuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bHBKKzqLuNuezhNpBgfuow9amG4M+LppruERVii5ajA=;
        b=IuBKcx2/kS8fFL3xNBwpqWvdo9NsCNu/vvThFYe6E5P3XggJd4yhKfL4meTD8I7pLG
         P+fIyGBEC6RPVpuglGMHvSdQiRA+o0kxaakf8J2IJSKpwbW6UKsuMhsfppx3FD/AMEHx
         GMlFriRp7ZSsm3b1MczygjNbBRI7Edm+5Q7ZcNxUIBQSI1mtP/gRcKYqf+C9IFTkYiz9
         5mVsRmDV3p9MRnbVp784Nh0tAolDSwEISpRj3UDczAoV4v3t1KnNVD6w7KkxvlsFGXre
         XQikok/dhQ2uk1waBfFsYJFwKGHvlMn9LR5UDawu6SVhB11+kJ7JxMwC5Itv5iSbzdkq
         JxcA==
X-Gm-Message-State: AOAM530qTWxVaElhY96MD3v6RUDqsToqA092QBcrDvGO/lVCF7rhpHI6
	fr/jGY5CzWTrJpQ3t5u5MT4=
X-Google-Smtp-Source: ABdhPJzXyf/QzSf6ED/88HQGGMDxiGL4I9NfgQGFu9oY3GZ7ViFsRG4hNcUEug5DJCxKqrG95ALPXg==
X-Received: by 2002:aca:4ec9:: with SMTP id c192mr3329984oib.2.1599890402777;
        Fri, 11 Sep 2020 23:00:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0b:: with SMTP id u11ls921278otg.3.gmail; Fri, 11
 Sep 2020 23:00:02 -0700 (PDT)
X-Received: by 2002:a9d:758a:: with SMTP id s10mr3503998otk.4.1599890402325;
        Fri, 11 Sep 2020 23:00:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599890402; cv=none;
        d=google.com; s=arc-20160816;
        b=f+Lfr5uMD/SQwbLRrzBM3uh4/PV8ls5OuacKEzZgojMiTm1jZs0RyfqnEcqRV6/FBd
         yfm8e4jIJ1QbKW1WVnEECRZEWM97xTqvOSC0+xKkakct1kUYbAv/7ZAopJe96L9aLR8U
         EDZ61OWbmbluwC/7FXguFQf5Jb7wwgiuujCS9ejki9z00bb9VdNLlPrygtsucwv8KhVD
         a6LgJeItFmy7sBhcFGUbBm3DOy+d/U1KeLL/0ZEaxzMBou11Pg+qeeinvZMdvWWC77/2
         ai56wiK2wixqFICVRZLsQdzw4VbxmBNI3Dvh5Rua0p6FZZhBEc5Gp3vTeaKL1eA3OUvc
         rm+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i+v3rArBRN+Jr26Nz9Z1UhOqEASp3DTKqb2bYrGlYOs=;
        b=CHZxR9UfjfSKQV3Ab3MaT/yIygu4220bDixd1LCq17ONDWq8/9DzG+CkqNJtdwQjGj
         wHxW+FFDMPQP5UuLC2ElTqkLD1x+i2xRpftkPy7hYYACRGS+NevD+zo8pZG6mU70VRB8
         E/tOh0GLwHQTFmmvtP64gw9X6RcQq06ldqp3vzU3EGE+f7DeFx2/jh+batmipbbcHbCn
         esew7f8pt09+43pBHLpBfIvDcjmGZqf9V6s2GYyG5odJ/YwnA6wOXnOwAAWQH+LCnur1
         jY6A5GkDbBqXu1tAY3vDWzJETdNoWAqVaZtc7S6mTuyfhsdRh1sCKprFmOo9l0/pENiM
         wVMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nh54qlCh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id b6si416258ooq.2.2020.09.11.23.00.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 23:00:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id bh1so1906442plb.12
        for <clang-built-linux@googlegroups.com>; Fri, 11 Sep 2020 23:00:02 -0700 (PDT)
X-Received: by 2002:a17:902:c3d2:b029:d1:9bc8:15f8 with SMTP id
 j18-20020a170902c3d2b02900d19bc815f8mr5308059plj.29.1599890401116; Fri, 11
 Sep 2020 23:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <202009120721.0ZIcBj7D%lkp@intel.com>
In-Reply-To: <202009120721.0ZIcBj7D%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 11 Sep 2020 22:59:47 -0700
Message-ID: <CAKwvOdm7yrbevMyDYc20ymFBRQgDVL2PgAX__PkZBBQOKHSnJA@mail.gmail.com>
Subject: Re: [linux-next:master 7069/7089] ld.lld: warning:
 arch/arm/built-in.a(kernel/dma.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
To: kernel test robot <lkp@intel.com>, Kees Cook <keescook@chromium.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000000a223505af178376"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Nh54qlCh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a
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

--0000000000000a223505af178376
Content-Type: text/plain; charset="UTF-8"

+ Kees


On Fri, Sep 11, 2020, 4:55 PM kernel test robot <lkp@intel.com> wrote:

> tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   d5b2251d63b5344ee827d3680fa79bdb9f9ddfa1
> commit: f1187720d7c95127a3db17501c921cb7a3574e30 [7069/7089] Merge branch
> 'akpm-current/current' into master
> config: arm-randconfig-r023-20200911 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> 0448d11a06b451a63a8f60408fec613ad24801ba)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout f1187720d7c95127a3db17501c921cb7a3574e30
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=arm
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text) is being
> placed in '.ARM.extab.ref.text'
>    ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning:
> init/built-in.a(do_mounts_initrd.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
>    ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(kernel/elf.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(kernel/irq.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/irq.o):(.ARM.extab.init.text) is being placed in
> '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(kernel/opcodes.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(kernel/process.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/process.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(kernel/ptrace.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/ptrace.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(kernel/reboot.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(kernel/setup.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/setup.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(kernel/signal.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(kernel/stacktrace.o):(.ARM.extab)
> is being placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(kernel/sys_arm.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(kernel/time.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/time.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/traps.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(kernel/traps.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/return_address.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/atags_parse.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/atags_compat.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(kernel/bugs.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/bugs.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
> >> ld.lld: warning:
> arch/arm/built-in.a(kernel/dma.o):(.ARM.extab.init.text) is being placed in
> '.ARM.extab.init.text'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/dma.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(kernel/module.o):(.ARM.extab) is
> being placed in '.ARM.extab'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/module-plts.o):(.ARM.extab)
> is being placed in '.ARM.extab'
> >> ld.lld: warning:
> arch/arm/built-in.a(kernel/dma-isa.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/dma-isa.o):(.ARM.extab) is
> being placed in '.ARM.extab'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/bios32.o):(.ARM.extab) is
> being placed in '.ARM.extab'
> >> ld.lld: warning:
> arch/arm/built-in.a(kernel/bios32.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
> >> ld.lld: warning:
> arch/arm/built-in.a(kernel/isa.o):(.ARM.extab.init.text) is being placed in
> '.ARM.extab.init.text'
> >> ld.lld: warning:
> arch/arm/built-in.a(kernel/patch.o):(.ARM.extab.kprobes.text) is being
> placed in '.ARM.extab.kprobes.text'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/insn.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(kernel/devtree.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(kernel/devtree.o):(.ARM.extab) is
> being placed in '.ARM.extab'
> >> ld.lld: warning: arch/arm/built-in.a(kernel/perf_regs.o):(.ARM.extab)
> is being placed in '.ARM.extab'
> >> ld.lld: warning:
> arch/arm/built-in.a(kernel/perf_callchain.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(kernel/io.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/extable.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/fault.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/fault.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
> >> ld.lld: warning:
> arch/arm/built-in.a(mm/fault.o):(.ARM.extab.kprobes.text) is being placed
> in '.ARM.extab.kprobes.text'
>    ld.lld: warning: arch/arm/built-in.a(mm/init.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(mm/init.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/iomap.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/dma-mapping.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(mm/dma-mapping.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(mm/fault-armv.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(mm/fault-armv.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(mm/flush.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/idmap.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(mm/idmap.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/ioremap.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(mm/ioremap.o):(.ARM.extab.init.text) is being placed in
> '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(mm/mmap.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/pgd.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/mmu.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(mm/mmu.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/pageattr.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(mm/alignment.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(mm/alignment.o):(.ARM.extab) is
> being placed in '.ARM.extab'
> >> ld.lld: warning: arch/arm/built-in.a(mm/highmem.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(mm/copypage-v4wb.o):(.ARM.extab)
> is being placed in '.ARM.extab'
> >> ld.lld: warning:
> arch/arm/built-in.a(probes/decode.o):(.ARM.extab.init.text) is being placed
> in '.ARM.extab.init.text'
> >> ld.lld: warning:
> arch/arm/built-in.a(probes/decode.o):(.ARM.extab.kprobes.text) is being
> placed in '.ARM.extab.kprobes.text'
> >> ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/core.o):(.ARM.extab.kprobes.text) is
> being placed in '.ARM.extab.kprobes.text'
> >> ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/core.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
> >> ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/core.o):(.ARM.extab) is being placed in
> '.ARM.extab'
> >> ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/actions-common.o):(.ARM.extab.kprobes.text)
> is being placed in '.ARM.extab.kprobes.text'
>    ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/checkers-common.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/actions-arm.o):(.ARM.extab.kprobes.text)
> is being placed in '.ARM.extab.kprobes.text'
>    ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/checkers-arm.o):(.ARM.extab.kprobes.text)
> is being placed in '.ARM.extab.kprobes.text'
>    ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/checkers-arm.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/opt-arm.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(probes/kprobes/opt-arm.o):(.ARM.extab.kprobes.text) is
> being placed in '.ARM.extab.kprobes.text'
>    ld.lld: warning:
> arch/arm/built-in.a(probes/decode-arm.o):(.ARM.extab.kprobes.text) is being
> placed in '.ARM.extab.kprobes.text'
>    ld.lld: warning:
> arch/arm/built-in.a(crypto/aes-cipher-glue.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/built-in.a(crypto/aes-cipher-glue.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: arch/arm/built-in.a(crypto/sha1_glue.o):(.ARM.extab)
> is being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(crypto/sha1_glue.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(crypto/sha256_glue.o):(.ARM.extab)
> is being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(crypto/sha256_glue.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning: arch/arm/built-in.a(crypto/sha512-glue.o):(.ARM.extab)
> is being placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/built-in.a(crypto/sha512-glue.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(common.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(common.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(dma.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(isa-irq.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(isa-irq.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(dc21285-timer.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(dc21285-timer.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(netwinder-hw.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(netwinder-hw.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(isa-timer.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(isa-timer.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(dc21285.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(dc21285.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(ebsa285-pci.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(netwinder-pci.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(isa.o):(.ARM.extab.init.text) is being
> placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> arch/arm/mach-footbridge/built-in.a(isa-rtc.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(fork.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(fork.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> kernel/built-in.a(exec_domain.o):(.ARM.extab.init.text) is being placed in
> '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(exec_domain.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(panic.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(panic.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(cpu.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(cpu.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(exit.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(softirq.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning:
> kernel/built-in.a(softirq.o):(.ARM.extab.softirqentry.text) is being placed
> in '.ARM.extab.softirqentry.text'
>    ld.lld: warning: kernel/built-in.a(softirq.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(resource.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(resource.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sysctl.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sysctl.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(capability.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(capability.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(ptrace.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(user.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(user.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(signal.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(signal.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(sys.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(umh.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(workqueue.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(workqueue.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(pid.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(pid.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(task_work.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(extable.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(extable.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(params.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(params.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(kthread.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sys_ni.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(nsproxy.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(nsproxy.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(notifier.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(ksysfs.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(ksysfs.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(cred.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(cred.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(reboot.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(reboot.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(async.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(range.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(smpboot.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(ucount.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(ucount.o):(.ARM.extab.init.text) is
> being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(regset.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(kmod.o):(.ARM.extab) is being placed
> in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(groups.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sched/core.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sched/core.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> kernel/built-in.a(sched/core.o):(.ARM.extab.sched.text) is being placed in
> '.ARM.extab.sched.text'
>    ld.lld: warning: kernel/built-in.a(sched/loadavg.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sched/clock.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning:
> kernel/built-in.a(sched/clock.o):(.ARM.extab.init.text) is being placed in
> '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(sched/cputime.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sched/idle.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sched/idle.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning:
> kernel/built-in.a(sched/idle.o):(.ARM.extab.cpuidle.text) is being placed
> in '.ARM.extab.cpuidle.text'
>    ld.lld: warning: kernel/built-in.a(sched/fair.o):(.ARM.extab.init.text)
> is being placed in '.ARM.extab.init.text'
>    ld.lld: warning: kernel/built-in.a(sched/fair.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sched/rt.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sched/deadline.o):(.ARM.extab) is
> being placed in '.ARM.extab'
>    ld.lld: warning: kernel/built-in.a(sched/wait.o):(.ARM.extab) is being
> placed in '.ARM.extab'
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/202009120721.0ZIcBj7D%25lkp%40intel.com
> .
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm7yrbevMyDYc20ymFBRQgDVL2PgAX__PkZBBQOKHSnJA%40mail.gmail.com.

--0000000000000a223505af178376
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">+ Kees<div dir=3D"auto"><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 11, 2020, 4=
:55 PM kernel test robot &lt;<a href=3D"mailto:lkp@intel.com">lkp@intel.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">tree:=C2=A0 =C2=A0<=
a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it" rel=3D"noreferrer noreferrer" target=3D"_blank">https://git.kernel.org/=
pub/scm/linux/kernel/git/next/linux-next.git</a> master<br>
head:=C2=A0 =C2=A0d5b2251d63b5344ee827d3680fa79bdb9f9ddfa1<br>
commit: f1187720d7c95127a3db17501c921cb7a3574e30 [7069/7089] Merge branch &=
#39;akpm-current/current&#39; into master<br>
config: arm-randconfig-r023-20200911 (attached as .config)<br>
compiler: clang version 12.0.0 (<a href=3D"https://github.com/llvm/llvm-pro=
ject" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/ll=
vm/llvm-project</a> 0448d11a06b451a63a8f60408fec613ad24801ba)<br>
reproduce (this is a W=3D1 build):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 wget <a href=3D"https://raw.githubusercontent.c=
om/intel/lkp-tests/master/sbin/make.cross" rel=3D"noreferrer noreferrer" ta=
rget=3D"_blank">https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross</a> -O ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 chmod +x ~/bin/make.cross<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # install arm cross compiling tool for clang bu=
ild<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # apt-get install binutils-arm-linux-gnueabi<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git checkout f1187720d7c95127a3db17501c921cb7a3=
574e30<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # save the attached .config to linux build tree=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dc=
lang make.cross ARCH=3Darm <br>
<br>
If you fix the issue, kindly add following tag as appropriate<br>
Reported-by: kernel test robot &lt;<a href=3D"mailto:lkp@intel.com" target=
=3D"_blank" rel=3D"noreferrer">lkp@intel.com</a>&gt;<br>
<br>
All warnings (new ones prefixed by &gt;&gt;):<br>
<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being=
 placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text=
) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text)=
 is being placed in &#39;.ARM.extab.ref.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab.init=
.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab) is =
being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(do_mounts_initrd.o):(.ARM.ext=
ab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab.init=
.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab) is =
being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab.init=
.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab) is =
being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/elf.o):(.ARM.extab=
) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/irq.o):(.ARM.extab=
) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/irq.o):(.ARM.extab=
.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/opcodes.o):(.ARM.e=
xtab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/process.o):(.ARM.e=
xtab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/process.o):(.ARM.e=
xtab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/ptrace.o):(.ARM.ex=
tab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/ptrace.o):(.ARM.ex=
tab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/reboot.o):(.ARM.ex=
tab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/setup.o):(.ARM.ext=
ab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/setup.o):(.ARM.ext=
ab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/signal.o):(.ARM.ex=
tab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/stacktrace.o):(.AR=
M.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/sys_arm.o):(.ARM.e=
xtab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/time.o):(.ARM.exta=
b) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/time.o):(.ARM.exta=
b.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/traps.o):(.ARM.ext=
ab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/traps.o):(.ARM.ext=
ab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/return_address.o):=
(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/atags_parse.o):(.A=
RM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/atags_compat.o):(.=
ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/bugs.o):(.ARM.exta=
b) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/bugs.o):(.ARM.exta=
b.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/dma.o):(.ARM.extab.ini=
t.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/dma.o):(.ARM.extab) is=
 being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/module.o):(.ARM.ex=
tab) is being placed in &#39;.ARM.extab&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/module-plts.o):(.ARM.e=
xtab) is being placed in &#39;.ARM.extab&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/dma-isa.o):(.ARM.extab=
.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/dma-isa.o):(.ARM.extab=
) is being placed in &#39;.ARM.extab&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/bios32.o):(.ARM.extab)=
 is being placed in &#39;.ARM.extab&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/bios32.o):(.ARM.extab.=
init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/isa.o):(.ARM.extab.ini=
t.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/patch.o):(.ARM.extab.k=
probes.text) is being placed in &#39;.ARM.extab.kprobes.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/insn.o):(.ARM.extab) i=
s being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/devtree.o):(.ARM.e=
xtab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/devtree.o):(.ARM.e=
xtab) is being placed in &#39;.ARM.extab&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/perf_regs.o):(.ARM.ext=
ab) is being placed in &#39;.ARM.extab&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(kernel/perf_callchain.o):(.AR=
M.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(kernel/io.o):(.ARM.extab)=
 is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/extable.o):(.ARM.extab=
) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/fault.o):(.ARM.extab) =
is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/fault.o):(.ARM.extab.i=
nit.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(mm/fault.o):(.ARM.extab.kprob=
es.text) is being placed in &#39;.ARM.extab.kprobes.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/init.o):(.ARM.extab.in=
it.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/init.o):(.ARM.extab) i=
s being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/iomap.o):(.ARM.extab) =
is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/dma-mapping.o):(.ARM.e=
xtab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/dma-mapping.o):(.ARM.e=
xtab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/fault-armv.o):(.ARM.ex=
tab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/fault-armv.o):(.ARM.ex=
tab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/flush.o):(.ARM.extab) =
is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/idmap.o):(.ARM.extab.i=
nit.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/idmap.o):(.ARM.extab) =
is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/ioremap.o):(.ARM.extab=
) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/ioremap.o):(.ARM.extab=
.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/mmap.o):(.ARM.extab) i=
s being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/pgd.o):(.ARM.extab) is=
 being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/mmu.o):(.ARM.extab.ini=
t.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/mmu.o):(.ARM.extab) is=
 being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/pageattr.o):(.ARM.exta=
b) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/alignment.o):(.ARM.ext=
ab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/alignment.o):(.ARM.ext=
ab) is being placed in &#39;.ARM.extab&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(mm/highmem.o):(.ARM.extab) is=
 being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(mm/copypage-v4wb.o):(.ARM=
.extab) is being placed in &#39;.ARM.extab&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(probes/decode.o):(.ARM.extab.=
init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(probes/decode.o):(.ARM.extab.=
kprobes.text) is being placed in &#39;.ARM.extab.kprobes.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(probes/kprobes/core.o):(.ARM.=
extab.kprobes.text) is being placed in &#39;.ARM.extab.kprobes.text&#39;<br=
>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(probes/kprobes/core.o):(.ARM.=
extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(probes/kprobes/core.o):(.ARM.=
extab) is being placed in &#39;.ARM.extab&#39;<br>
&gt;&gt; ld.lld: warning: arch/arm/built-in.a(probes/kprobes/actions-common=
.o):(.ARM.extab.kprobes.text) is being placed in &#39;.ARM.extab.kprobes.te=
xt&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(probes/kprobes/checkers-c=
ommon.o):(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(probes/kprobes/actions-ar=
m.o):(.ARM.extab.kprobes.text) is being placed in &#39;.ARM.extab.kprobes.t=
ext&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(probes/kprobes/checkers-a=
rm.o):(.ARM.extab.kprobes.text) is being placed in &#39;.ARM.extab.kprobes.=
text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(probes/kprobes/checkers-a=
rm.o):(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(probes/kprobes/opt-arm.o)=
:(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(probes/kprobes/opt-arm.o)=
:(.ARM.extab.kprobes.text) is being placed in &#39;.ARM.extab.kprobes.text&=
#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(probes/decode-arm.o):(.AR=
M.extab.kprobes.text) is being placed in &#39;.ARM.extab.kprobes.text&#39;<=
br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(crypto/aes-cipher-glue.o)=
:(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<b=
r>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(crypto/aes-cipher-glue.o)=
:(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(crypto/sha1_glue.o):(.ARM=
.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(crypto/sha1_glue.o):(.ARM=
.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(crypto/sha256_glue.o):(.A=
RM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(crypto/sha256_glue.o):(.A=
RM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(crypto/sha512-glue.o):(.A=
RM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/built-in.a(crypto/sha512-glue.o):(.A=
RM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(common.o)=
:(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<b=
r>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(common.o)=
:(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dma.o):(.=
ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-irq.o=
):(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<=
br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-irq.o=
):(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dc21285-t=
imer.o):(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text=
&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dc21285-t=
imer.o):(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(netwinder=
-hw.o):(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(netwinder=
-hw.o):(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&=
#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-timer=
.o):(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39=
;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-timer=
.o):(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dc21285.o=
):(.ARM.extab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dc21285.o=
):(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<=
br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(ebsa285-p=
ci.o):(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#=
39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(netwinder=
-pci.o):(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text=
&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa.o):(.=
ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-rtc.o=
):(.ARM.extab.init.text) is being placed in &#39;.ARM.extab.init.text&#39;<=
br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(fork.o):(.ARM.extab) is bei=
ng placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(fork.o):(.ARM.extab.init.te=
xt) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(exec_domain.o):(.ARM.extab.=
init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(exec_domain.o):(.ARM.extab)=
 is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(panic.o):(.ARM.extab) is be=
ing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(panic.o):(.ARM.extab.init.t=
ext) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(cpu.o):(.ARM.extab) is bein=
g placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(cpu.o):(.ARM.extab.init.tex=
t) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(exit.o):(.ARM.extab) is bei=
ng placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(softirq.o):(.ARM.extab) is =
being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(softirq.o):(.ARM.extab.soft=
irqentry.text) is being placed in &#39;.ARM.extab.softirqentry.text&#39;<br=
>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(softirq.o):(.ARM.extab.init=
.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(resource.o):(.ARM.extab.ini=
t.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(resource.o):(.ARM.extab) is=
 being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sysctl.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sysctl.o):(.ARM.extab.init.=
text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(capability.o):(.ARM.extab.i=
nit.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(capability.o):(.ARM.extab) =
is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(ptrace.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(user.o):(.ARM.extab) is bei=
ng placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(user.o):(.ARM.extab.init.te=
xt) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(signal.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(signal.o):(.ARM.extab.init.=
text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sys.o):(.ARM.extab) is bein=
g placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(umh.o):(.ARM.extab) is bein=
g placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(workqueue.o):(.ARM.extab) i=
s being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(workqueue.o):(.ARM.extab.in=
it.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(pid.o):(.ARM.extab) is bein=
g placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(pid.o):(.ARM.extab.init.tex=
t) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(task_work.o):(.ARM.extab) i=
s being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(extable.o):(.ARM.extab.init=
.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(extable.o):(.ARM.extab) is =
being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(params.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(params.o):(.ARM.extab.init.=
text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(kthread.o):(.ARM.extab) is =
being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sys_ni.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(nsproxy.o):(.ARM.extab) is =
being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(nsproxy.o):(.ARM.extab.init=
.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(notifier.o):(.ARM.extab) is=
 being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(ksysfs.o):(.ARM.extab.init.=
text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(ksysfs.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(cred.o):(.ARM.extab) is bei=
ng placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(cred.o):(.ARM.extab.init.te=
xt) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(reboot.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(reboot.o):(.ARM.extab.init.=
text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(async.o):(.ARM.extab) is be=
ing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(range.o):(.ARM.extab) is be=
ing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(smpboot.o):(.ARM.extab) is =
being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(ucount.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(ucount.o):(.ARM.extab.init.=
text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(regset.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(kmod.o):(.ARM.extab) is bei=
ng placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(groups.o):(.ARM.extab) is b=
eing placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/core.o):(.ARM.extab) =
is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/core.o):(.ARM.extab.i=
nit.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/core.o):(.ARM.extab.s=
ched.text) is being placed in &#39;.ARM.extab.sched.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/loadavg.o):(.ARM.exta=
b) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/clock.o):(.ARM.extab)=
 is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/clock.o):(.ARM.extab.=
init.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/cputime.o):(.ARM.exta=
b) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/idle.o):(.ARM.extab) =
is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/idle.o):(.ARM.extab.i=
nit.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/idle.o):(.ARM.extab.c=
puidle.text) is being placed in &#39;.ARM.extab.cpuidle.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/fair.o):(.ARM.extab.i=
nit.text) is being placed in &#39;.ARM.extab.init.text&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/fair.o):(.ARM.extab) =
is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/rt.o):(.ARM.extab) is=
 being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/deadline.o):(.ARM.ext=
ab) is being placed in &#39;.ARM.extab&#39;<br>
=C2=A0 =C2=A0ld.lld: warning: kernel/built-in.a(sched/wait.o):(.ARM.extab) =
is being placed in &#39;.ARM.extab&#39;<br>
<br>
---<br>
0-DAY CI Kernel Test Service, Intel Corporation<br>
<a href=3D"https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org" re=
l=3D"noreferrer noreferrer" target=3D"_blank">https://lists.01.org/hyperkit=
ty/list/kbuild-all@lists.01.org</a><br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank" rel=3D"noreferrer">clang-built-linux+unsubscribe@googleg=
roups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/202009120721.0ZIcBj7D%25lkp%40intel.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://groups.google.com/d/ms=
gid/clang-built-linux/202009120721.0ZIcBj7D%25lkp%40intel.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdm7yrbevMyDYc20ymFBRQgDVL2PgAX__PkZBBQOK=
HSnJA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAKwvOdm7yrbevMyDYc20ymFBRQgDVL2PgA=
X__PkZBBQOKHSnJA%40mail.gmail.com</a>.<br />

--0000000000000a223505af178376--
