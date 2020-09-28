Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK5DZH5QKGQEAVNJMJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C34527B6DA
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 23:12:12 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id j9sf867813vsf.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 14:12:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601327531; cv=pass;
        d=google.com; s=arc-20160816;
        b=KwcmQhvOdyU4I1YDeVruKuQQ0Zb4bKbqpT5b8Q2qrLghuHdcGNws7NyiwZWztGJ2QV
         ebaz+2kjNMRes4BD7sRLKBhc83zVfMChqP/wZnJJxIODY5I0s+HVqSrpVKG3fNMYzB2o
         alY0OtXfBFqK6bkj3vYepR0jxJJYw/n4YvIsM4jrOrF/PuHK7hesPkU3kJpAy3EwHFns
         ZvSRA26Hr5R2P/OFPLAZs4AzEGgLeQ9TghBG6pCLpNvRT2Hl481rIG5rRHv9v5YPwlJX
         TmIbNxGY+5tkuXDT4kRsW858dwwvSU7lMFUC3qBEOu/moQSSThDtIblvRNmml/TAFrWp
         3RBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Qgx5VFqHGLGrz4X32UH2Ty/7GvmB+kQqZxkgj5HiDCc=;
        b=YTm2tjTOONqDZCkoXkKDnWY8JIk+2mCKrbolEqTaocFiwkFsQFgzl7b9pgHaq4O8XU
         C1MVvPei1LOvyTKwzC2RbmawYSQRel8wf+R4oSOAe5cnBNeZ7vpDD1zjALTVn9lBiLRm
         Y9XDk5GASZwJaWpDS9F00xXwz1mqvTrgu8XNcuvmDM4i7PoW8pULIx47aRuvNsf0h/3E
         qR9OmAFTvDZl9X8HLKoDN3r0xeJ/V1rQ6yMUkeQRZTiuOTRvok+nruDW0YUZi6nWo6iz
         L+zbdaIrWTsq1a7ThErMCCgbIVb8mo4MPmkwSVVPArVbU1DfnxXk0Wr76k4jba0FrXs2
         fNDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XaSY8D8F;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qgx5VFqHGLGrz4X32UH2Ty/7GvmB+kQqZxkgj5HiDCc=;
        b=dj6ZmuhD37vL+LbQeKbZprnwOdLPhW15EWi6ZK8e9lxeJHyIzEkIdhMmb9q3JyPpzQ
         p0HxK3BD8iifJDgS0AJLNx1F2zNkr7dzfvEkY/BVrrCDBMFcxJntCU1+7pnbUpSk0PMz
         Ylgrm6tc1Ue3bSun5hmRpdrZGnymKQLgTS66JDY9d1/WzgrMPHzs/Q1Rz6USSj7QFTJY
         rcRseNknDMpdVoLqJAgjzbnSF/GzbF9cdmSGLcufpd2pEqgOvOHjjypjFk50OjlLyDPp
         oFTrbKZCKmiNB3vZcQ5Ydcqmfn4amGBG7oHhHKSl5GKRi5rg+AYJNNMFlFETxGGhPCh6
         eABA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qgx5VFqHGLGrz4X32UH2Ty/7GvmB+kQqZxkgj5HiDCc=;
        b=iWHV7i6Xhaq0J2ZsuU7EP8ft1w8jM0doRzy10yK6flxLs4HXzaTX0GuVsSVcmT0rfB
         Lg9Bf47BFymb4C1zUeJe8/Qpg5+lWs2i7mBsomCY+9LoFQvTpH15QyVhyO4qb/SRBApm
         k/tSDvhvAI/LGEKhEMXst3ZTI1Fkbue6U9pYAbJnMH5JVfzgmh2+DYJshNNK+MwBIoMl
         6uzmbYIRnSErw4Jiuf3TkZ+kw94z1PmIeHJRP7gFB9gnwfWOAvub1yxEo14OyYrF8uec
         OAUfO+sdH8l14jh43U3koXPfiiYyx0MXOcAXrkn9zaRHqxzPk7yBXXT2HZfGf4HIsWH7
         UOZA==
X-Gm-Message-State: AOAM533nQbUkc8mzDUcf/w9H1RHLyr4w1zYfD2n4G/waPh2/iPwjkiPG
	YPv7GeHd1H+IE/CIjzPh/z0=
X-Google-Smtp-Source: ABdhPJyHb/e8h1/ag+ENeJyxgDTddBwlSH4AewfFOGoVGANbJsfE5P8dfyFQhF2p5hzQ67xPVfrgKw==
X-Received: by 2002:a67:fe8f:: with SMTP id b15mr1138419vsr.46.1601327531133;
        Mon, 28 Sep 2020 14:12:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bb07:: with SMTP id m7ls362022vsn.4.gmail; Mon, 28 Sep
 2020 14:12:10 -0700 (PDT)
X-Received: by 2002:a67:c595:: with SMTP id h21mr1234021vsk.12.1601327530569;
        Mon, 28 Sep 2020 14:12:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601327530; cv=none;
        d=google.com; s=arc-20160816;
        b=KUUfT1s5nfwW1couyAkFpBlu58C+ThegXrUNUPJkAQhNZJfMzzO83zetxT1USSOlKC
         QxeeeYF2JnkZdajIwKpBHoWuEF3kMF6JMjxkh1Q2351NRlBD5M+zxQmovlYLeLAhCSnq
         gpQT5HbQsTnvX0T56e4a6M994xKvYoWc03WpFNcLF8fd+hYF6EOPxrDe5+2+scKnCKIy
         aVd185hoYqe05xJ2YefzsmRrKQM6JHBIucPdXV9O1knxVrmcu699SqrAVsJ3v0KGTMqB
         G8f8fj9zkMXmx7lF60ZVvhwZP7EKvq/6SFm4TIW8CCjU37/VoJ3/t8nMYllymYNfFSvY
         f4Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=earHwIIsjVzUeFr7VsjIlhcKS+9hqTLj0BQurp2UatA=;
        b=flTus6ygJQfUCQC9P2K0i7SBLNMGJThr2HICRvDA/68SLlwwUvJ7pHJFX3Vubh3v0O
         MiZqTBTmNJX41sILKbcuQtgHwHZZDQx8jxskFHf1D9H//hSiJaEJ/JpExENm6x2i5D//
         d9MVlnOGCu5gkhLWlDSyeqlG2GPGAA353JR52iyVV/y4nRqjH+R0b3djAX1P8L6Wv+o8
         1Bn7lOG5RX7Py9uOwxOuvtdW6QsnedI779fgFwoSPCDuLmi66F+ogAc6XIabW1pRl8cZ
         UUwNW2ACN4JSu1Jr3M+Mc6glKyXPbDA0X4rN4/npRhRXOtY1vwxgUOq2FYTp3I6HxhAp
         VeXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XaSY8D8F;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id s9si197588uar.0.2020.09.28.14.12.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 14:12:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id b124so2292603pfg.13
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 14:12:10 -0700 (PDT)
X-Received: by 2002:a17:902:c151:b029:d2:42a6:2fb with SMTP id
 17-20020a170902c151b02900d242a602fbmr1293347plj.10.1601327529331; Mon, 28 Sep
 2020 14:12:09 -0700 (PDT)
MIME-Version: 1.0
References: <202009120721.0ZIcBj7D%lkp@intel.com> <CAKwvOdm7yrbevMyDYc20ymFBRQgDVL2PgAX__PkZBBQOKHSnJA@mail.gmail.com>
In-Reply-To: <CAKwvOdm7yrbevMyDYc20ymFBRQgDVL2PgAX__PkZBBQOKHSnJA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 14:11:57 -0700
Message-ID: <CAKwvOdnN2Q3R0kpXbv38vVKXkDT1KAS1-O33mONzb4tHbopx5w@mail.gmail.com>
Subject: Re: [linux-next:master 7069/7089] ld.lld: warning:
 arch/arm/built-in.a(kernel/dma.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
To: Kees Cook <keescook@chromium.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XaSY8D8F;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435
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

On Fri, Sep 11, 2020 at 10:59 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + Kees
>
>
> On Fri, Sep 11, 2020, 4:55 PM kernel test robot <lkp@intel.com> wrote:
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> head:   d5b2251d63b5344ee827d3680fa79bdb9f9ddfa1
>> commit: f1187720d7c95127a3db17501c921cb7a3574e30 [7069/7089] Merge branch 'akpm-current/current' into master
>> config: arm-randconfig-r023-20200911 (attached as .config)

^ randconfig

>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0448d11a06b451a63a8f60408fec613ad24801ba)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install arm cross compiling tool for clang build
>>         # apt-get install binutils-arm-linux-gnueabi
>>         git checkout f1187720d7c95127a3db17501c921cb7a3574e30
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text) is being placed in '.ARM.extab.ref.text'

^ so these three probably need to be explicitly mentioned in a linker script?

>>    ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: init/built-in.a(do_mounts_initrd.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/elf.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/irq.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/irq.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/opcodes.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/process.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/process.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/ptrace.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/ptrace.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/reboot.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/setup.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/setup.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/signal.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/stacktrace.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/sys_arm.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/time.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/time.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/traps.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/traps.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/return_address.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/atags_parse.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/atags_compat.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/bugs.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/bugs.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/dma.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/dma.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/module.o):(.ARM.extab) is being placed in '.ARM.extab'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/module-plts.o):(.ARM.extab) is being placed in '.ARM.extab'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/dma-isa.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/dma-isa.o):(.ARM.extab) is being placed in '.ARM.extab'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/bios32.o):(.ARM.extab) is being placed in '.ARM.extab'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/bios32.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/isa.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/patch.o):(.ARM.extab.kprobes.text) is being placed in '.ARM.extab.kprobes.text'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/insn.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/devtree.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/devtree.o):(.ARM.extab) is being placed in '.ARM.extab'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/perf_regs.o):(.ARM.extab) is being placed in '.ARM.extab'
>> >> ld.lld: warning: arch/arm/built-in.a(kernel/perf_callchain.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(kernel/io.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/extable.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/fault.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/fault.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>> >> ld.lld: warning: arch/arm/built-in.a(mm/fault.o):(.ARM.extab.kprobes.text) is being placed in '.ARM.extab.kprobes.text'
>>    ld.lld: warning: arch/arm/built-in.a(mm/init.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(mm/init.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/iomap.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/dma-mapping.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/dma-mapping.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(mm/fault-armv.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/fault-armv.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(mm/flush.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/idmap.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(mm/idmap.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/ioremap.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/ioremap.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(mm/mmap.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/pgd.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/mmu.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(mm/mmu.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/pageattr.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/alignment.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(mm/alignment.o):(.ARM.extab) is being placed in '.ARM.extab'
>> >> ld.lld: warning: arch/arm/built-in.a(mm/highmem.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(mm/copypage-v4wb.o):(.ARM.extab) is being placed in '.ARM.extab'
>> >> ld.lld: warning: arch/arm/built-in.a(probes/decode.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>> >> ld.lld: warning: arch/arm/built-in.a(probes/decode.o):(.ARM.extab.kprobes.text) is being placed in '.ARM.extab.kprobes.text'
>> >> ld.lld: warning: arch/arm/built-in.a(probes/kprobes/core.o):(.ARM.extab.kprobes.text) is being placed in '.ARM.extab.kprobes.text'
>> >> ld.lld: warning: arch/arm/built-in.a(probes/kprobes/core.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>> >> ld.lld: warning: arch/arm/built-in.a(probes/kprobes/core.o):(.ARM.extab) is being placed in '.ARM.extab'
>> >> ld.lld: warning: arch/arm/built-in.a(probes/kprobes/actions-common.o):(.ARM.extab.kprobes.text) is being placed in '.ARM.extab.kprobes.text'
>>    ld.lld: warning: arch/arm/built-in.a(probes/kprobes/checkers-common.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(probes/kprobes/actions-arm.o):(.ARM.extab.kprobes.text) is being placed in '.ARM.extab.kprobes.text'
>>    ld.lld: warning: arch/arm/built-in.a(probes/kprobes/checkers-arm.o):(.ARM.extab.kprobes.text) is being placed in '.ARM.extab.kprobes.text'
>>    ld.lld: warning: arch/arm/built-in.a(probes/kprobes/checkers-arm.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(probes/kprobes/opt-arm.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(probes/kprobes/opt-arm.o):(.ARM.extab.kprobes.text) is being placed in '.ARM.extab.kprobes.text'
>>    ld.lld: warning: arch/arm/built-in.a(probes/decode-arm.o):(.ARM.extab.kprobes.text) is being placed in '.ARM.extab.kprobes.text'
>>    ld.lld: warning: arch/arm/built-in.a(crypto/aes-cipher-glue.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(crypto/aes-cipher-glue.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(crypto/sha1_glue.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(crypto/sha1_glue.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(crypto/sha256_glue.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(crypto/sha256_glue.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/built-in.a(crypto/sha512-glue.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/built-in.a(crypto/sha512-glue.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(common.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(common.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dma.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-irq.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-irq.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dc21285-timer.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dc21285-timer.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(netwinder-hw.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(netwinder-hw.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-timer.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-timer.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dc21285.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(dc21285.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(ebsa285-pci.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(netwinder-pci.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: arch/arm/mach-footbridge/built-in.a(isa-rtc.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(fork.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(fork.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(exec_domain.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(exec_domain.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(panic.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(panic.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(cpu.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(cpu.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(exit.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(softirq.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(softirq.o):(.ARM.extab.softirqentry.text) is being placed in '.ARM.extab.softirqentry.text'
>>    ld.lld: warning: kernel/built-in.a(softirq.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(resource.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(resource.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sysctl.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sysctl.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(capability.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(capability.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(ptrace.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(user.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(user.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(signal.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(signal.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(sys.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(umh.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(workqueue.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(workqueue.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(pid.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(pid.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(task_work.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(extable.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(extable.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(params.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(params.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(kthread.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sys_ni.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(nsproxy.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(nsproxy.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(notifier.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(ksysfs.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(ksysfs.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(cred.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(cred.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(reboot.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(reboot.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(async.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(range.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(smpboot.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(ucount.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(ucount.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(regset.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(kmod.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(groups.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sched/core.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sched/core.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(sched/core.o):(.ARM.extab.sched.text) is being placed in '.ARM.extab.sched.text'
>>    ld.lld: warning: kernel/built-in.a(sched/loadavg.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sched/clock.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sched/clock.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(sched/cputime.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sched/idle.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sched/idle.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(sched/idle.o):(.ARM.extab.cpuidle.text) is being placed in '.ARM.extab.cpuidle.text'
>>    ld.lld: warning: kernel/built-in.a(sched/fair.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
>>    ld.lld: warning: kernel/built-in.a(sched/fair.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sched/rt.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sched/deadline.o):(.ARM.extab) is being placed in '.ARM.extab'
>>    ld.lld: warning: kernel/built-in.a(sched/wait.o):(.ARM.extab) is being placed in '.ARM.extab'
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009120721.0ZIcBj7D%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnN2Q3R0kpXbv38vVKXkDT1KAS1-O33mONzb4tHbopx5w%40mail.gmail.com.
