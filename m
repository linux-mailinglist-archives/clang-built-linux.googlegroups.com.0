Return-Path: <clang-built-linux+bncBCWIHX4L7AKRBKNG6OAQMGQEETCNU5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D88327D73
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 12:42:35 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id t14sf8978700plr.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 03:42:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614598954; cv=pass;
        d=google.com; s=arc-20160816;
        b=AU3Als4cWIe2h5rPGtRK3cjTMETGfTpiVOYuuGUJTJcG3VoGb41iyAPfc5FU7H0liq
         6Y+U1YJQJwo7M+JufdBkuI1QzislwR0jI0eA90XdF8HgfH1lhG3mEiDDnuK7MZSETZ6V
         j54cHBM6RbZcj1i72i0qu6/StsIu/SAz3HPcUMH6tj7yxVZAUP1lxAX6/D73TnV4rSD4
         9JbVfiEo5/EYHiHzsXYLgex/oMcBVBC8nTFa0YZSV9k6d/mezOvS+O2+G8T3YKecLrOc
         m3KYgMj34G/zDBK0N3294ctNCspaW8hOfG8vytp31LsQyXWKZRHVKDjkmk+vw0V2zV+0
         kUhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7su9vFWAcyGr8diPfCGkSGKWQAj+seSYg7koXaNPaiQ=;
        b=m/d0nNL87/XzklAVaqa7fxvArud57Jv2G3jhyyP6zMi/FsLTOBN5OxDWVR6eeIS+q8
         axp2T9eBQ/zsuwBenCLp50XZxJBONqKm1Zd9PuI/jPs4MKSuZSvuMhmHLX4ZutpBbfdW
         qLBSQooRsOQply3r6a+2ksewBnH4yl4vFpbjs2b83Fbf3vOP/d70D5kDzEeZBukiaTCq
         0qf2lnYo60cD7DQG3AzBNxMRysSm/PQbvIpe93G7SM3XbXDQA+uiHVIeM2Hzj7splQlI
         rSRf586+FHBkG48R3WxkDCmGDmopeeRu+Tiu6AcOQKhbU2nqdIRklSxhDRPkRPeYBEI3
         kmUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QZLP9vxK;
       spf=pass (google.com: domain of idryomov@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=idryomov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7su9vFWAcyGr8diPfCGkSGKWQAj+seSYg7koXaNPaiQ=;
        b=biFkpvxfh0dDHqCFK7NN1IRuHAS+9gF65r2BFwoLgCtdSwxv/J5XcQ68LaT54VmWRX
         4IgfieLg1xrckGfWhfMMPuQ93ZuWi+b5B46azlNIQ2ClgIC6GfOct9Kb6N+dM/7tRm/U
         5vSIdkBCWAMomjX7OfChe6JTQWkP8iAPd5VdWMPW8Iokz5UCIjU9BEm9QlelhLhG1GBi
         wC2DC6Ol4weKD2AQHrPYfc1k9C0PIOeOWCZWnh2OfWjVWax3+JPWt8u6huv+7pAJ/5EP
         29EtKv064pI34VzFPHEHMk80DTK4vAe6Y1Von4283RVPQ2PDsW/8VIN4p1Wy1Ae0NNvt
         VE4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7su9vFWAcyGr8diPfCGkSGKWQAj+seSYg7koXaNPaiQ=;
        b=H6WJjo6u71xLZY+m2gH5pAt+kzBAt+7Kb6oelNhpByjIjuEqtVIDgZJNf0f9BZLzh2
         GqwZvLpGIc0F/wKrygVzaGDWz7eq8G73Ntgu9MvlH7WiCc8Z4p2lM2zzIIOuv9Bru/qp
         aaHXleNUWlPmEuJzmPJ/RetMn9ASfEQDEm7tZG2J+xQOy12bpN6F/lypkljWoVAZVnw3
         hKPbaOotjI3Q4XAgc5h/X2p/PbWGZEZWHM+PW3jRHNhoyGGPmL22xQiP/VSQPQGsoT3Q
         KguGVoD9+nPmzRqPHA7J3bOhNsYjfwKCbq189BbHJ4SiIJZxliOWmPWQAo1lmowzEEfl
         im6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7su9vFWAcyGr8diPfCGkSGKWQAj+seSYg7koXaNPaiQ=;
        b=jfuGKe+VqvA2glVU8Neu0jf+ISh66VH+Trl4kNRD7jieUtyrL4Kabldp1rMcYDZhCj
         moro+dqNVZn4jsgm1tOp0GEl8zz7fkAhgq4Q6pqiqZlMoV67a/mYD1e+qUkoMx/kG88S
         r7rAMOPEhqXiQZB1RUMJIuYL0RzEOg+z084ky1to9Dgz3nDEj9Av9QOzgdIFpo5MilDB
         DthLI2rQ/OUQD8+OuAEzmtCGlzBUUmJBaJAPabeMRR9R28RRqmaACbAIvsMTfuK010GA
         O0U5TAPP72hfQYEyFnLoGXHnHP3eUKh/ZZZlSPGOWc12hIT8mVQuj/IOXk+Nyb5EIRTS
         PphQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cwFwrz1G+0boT0LfGQcBIMP3kZNVZNqV+2adzde3+hEGu0/Es
	bDY42z6a62/mArDacKqf1RM=
X-Google-Smtp-Source: ABdhPJyZYX/c/iqC5MqZHDhAIC4siB+uTDfSMTiZX/zS2KrE30uqIkoXXE5FeDuL9u8Vf14fryZPdg==
X-Received: by 2002:a17:902:8643:b029:da:d5f9:28f6 with SMTP id y3-20020a1709028643b02900dad5f928f6mr15128203plt.8.1614598954016;
        Mon, 01 Mar 2021 03:42:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:4115:: with SMTP id r21ls1357566pld.1.gmail; Mon, 01
 Mar 2021 03:42:33 -0800 (PST)
X-Received: by 2002:a17:902:a518:b029:e4:777d:33dd with SMTP id s24-20020a170902a518b02900e4777d33ddmr13937241plq.16.1614598953527;
        Mon, 01 Mar 2021 03:42:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614598953; cv=none;
        d=google.com; s=arc-20160816;
        b=bowulVS5/uDJwUx25+ogjGoKdP+1q+aS40odJNrWJGdy+QBv6JPL5KOcYjt6SjC7G9
         Tf7VxdxDEFyWK/9eUNoWcDEU1ZM/qLeev74wGaIVG8fnVkF6YtdKdg+YA8jSa+aEpNT3
         rMZaARPvtstOHqZwweARC4o2Qsi8/Q9avZwj7QB7f5ZiYSw6Qww43kX8tymFL7OwwntA
         zL+JdTZtcN9bX05QQdhrUABQcloBXXsrbBhhJfJHhTz555vVPdOepSDW7Y2DSPXl7zCz
         aEmyOQ+mxnX3ZK5eAJ+HKIUx8MUu4rcr7a5pw9uKZ+OPBstuW38sSfFflTyUD4XyEhHr
         unNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8aINR1+Bo8I3NYfvd42QRmxd/ctoiHE+DLs7UyhEye8=;
        b=Jdz48gaygDsBrItigWxwUdiOLyJG3sextBMaWKr7lGkr2O6x1Ddm21MpQYSdxnu3VI
         AdIi70DdbwUSd60z5q+Us7XRkS4gAxF4cq/6OyJ7tDO2FVEufqCHxIQ5wXM3oBYXAzQG
         RoOzS2uOlsBeYQoaGRez5bu9+BQwg3yVbMRsu/ynnCqZCm3QMFReZENIcYmGMKlEHd7p
         0IHCvFlAZJWjxAipTHQ6aVb24DVdO4VjtmoQBuyNrTcn1aF5PzVbSMogDYbM8VEnkASf
         t8GN4SP7aRMEx0WEiLte+389jJfkTSbJCbKxLmDOLQdz5vs3kJGa1edRtXgUWYxEFFZn
         ezVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QZLP9vxK;
       spf=pass (google.com: domain of idryomov@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=idryomov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id n2si1058836pjp.2.2021.03.01.03.42.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Mar 2021 03:42:33 -0800 (PST)
Received-SPF: pass (google.com: domain of idryomov@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id p16so17351364ioj.4
        for <clang-built-linux@googlegroups.com>; Mon, 01 Mar 2021 03:42:33 -0800 (PST)
X-Received: by 2002:a02:6f08:: with SMTP id x8mr15431611jab.69.1614598953257;
 Mon, 01 Mar 2021 03:42:33 -0800 (PST)
MIME-Version: 1.0
References: <202103011657.ttO1k7BO-lkp@intel.com>
In-Reply-To: <202103011657.ttO1k7BO-lkp@intel.com>
From: Ilya Dryomov <idryomov@gmail.com>
Date: Mon, 1 Mar 2021 12:42:24 +0100
Message-ID: <CAOi1vP8nq6fOC+coHdq8w63k5uq8kXHY9zgtxDs0k_aVWY88wQ@mail.gmail.com>
Subject: Re: net/ceph/messenger_v1.c:1204:5: warning: stack frame size of 2944
 bytes in function 'ceph_con_v1_try_read'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: idryomov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QZLP9vxK;       spf=pass
 (google.com: domain of idryomov@gmail.com designates 2607:f8b0:4864:20::d32
 as permitted sender) smtp.mailfrom=idryomov@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Mar 1, 2021 at 9:36 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Ilya,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
> commit: 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1 libceph: move msgr1 protocol implementation to its own file
> date:   3 months ago

It's fine.  This commit just moved the code which has been this way for
years and never caused any real issues.  Please add it to the allowlist
if possible.

> config: powerpc64-randconfig-r001-20210301 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5de09ef02e24d234d9fc0cd1c6dfe18a1bb784b0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2f713615ddd9d805b6c5e79c52e0e11af99d2bf1
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    __do_insb
>    ^
>    arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
>    #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from net/ceph/messenger_v1.c:8:
>    In file included from include/net/sock.h:38:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:32:1: note: expanded from here
>    __do_insw
>    ^
>    arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
>    #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from net/ceph/messenger_v1.c:8:
>    In file included from include/net/sock.h:38:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:36:1: note: expanded from here
>    __do_insl
>    ^
>    arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
>    #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from net/ceph/messenger_v1.c:8:
>    In file included from include/net/sock.h:38:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:40:1: note: expanded from here
>    __do_outsb
>    ^
>    arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
>    #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from net/ceph/messenger_v1.c:8:
>    In file included from include/net/sock.h:38:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:44:1: note: expanded from here
>    __do_outsw
>    ^
>    arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
>    #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from net/ceph/messenger_v1.c:8:
>    In file included from include/net/sock.h:38:
>    In file included from include/linux/hardirq.h:10:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:48:1: note: expanded from here
>    __do_outsl
>    ^
>    arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
>    #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
> >> net/ceph/messenger_v1.c:1204:5: warning: stack frame size of 2944 bytes in function 'ceph_con_v1_try_read' [-Wframe-larger-than=]
>    int ceph_con_v1_try_read(struct ceph_connection *con)
>        ^
>    13 warnings generated.
>
>
> vim +/ceph_con_v1_try_read +1204 net/ceph/messenger_v1.c
>
>   1200
>   1201  /*
>   1202   * Read what we can from the socket.
>   1203   */
> > 1204  int ceph_con_v1_try_read(struct ceph_connection *con)
>   1205  {
>   1206          int ret = -1;
>   1207
>   1208  more:
>   1209          dout("try_read start %p state %d\n", con, con->state);
>   1210          if (con->state != CEPH_CON_S_V1_BANNER &&
>   1211              con->state != CEPH_CON_S_V1_CONNECT_MSG &&
>   1212              con->state != CEPH_CON_S_OPEN)
>   1213                  return 0;
>   1214
>   1215          BUG_ON(!con->sock);
>   1216
>   1217          dout("try_read tag %d in_base_pos %d\n", (int)con->in_tag,
>   1218               con->in_base_pos);
>   1219
>   1220          if (con->state == CEPH_CON_S_V1_BANNER) {
>   1221                  ret = read_partial_banner(con);
>   1222                  if (ret <= 0)
>   1223                          goto out;
>   1224                  ret = process_banner(con);
>   1225                  if (ret < 0)
>   1226                          goto out;
>   1227
>   1228                  con->state = CEPH_CON_S_V1_CONNECT_MSG;
>   1229
>   1230                  /*
>   1231                   * Received banner is good, exchange connection info.
>   1232                   * Do not reset out_kvec, as sending our banner raced
>   1233                   * with receiving peer banner after connect completed.
>   1234                   */
>   1235                  ret = prepare_write_connect(con);
>   1236                  if (ret < 0)
>   1237                          goto out;
>   1238                  prepare_read_connect(con);
>   1239
>   1240                  /* Send connection info before awaiting response */
>   1241                  goto out;
>   1242          }
>   1243
>   1244          if (con->state == CEPH_CON_S_V1_CONNECT_MSG) {
>   1245                  ret = read_partial_connect(con);
>   1246                  if (ret <= 0)
>   1247                          goto out;
>   1248                  ret = process_connect(con);
>   1249                  if (ret < 0)
>   1250                          goto out;
>   1251                  goto more;
>   1252          }
>   1253
>   1254          WARN_ON(con->state != CEPH_CON_S_OPEN);
>   1255
>   1256          if (con->in_base_pos < 0) {
>   1257                  /*
>   1258                   * skipping + discarding content.
>   1259                   */
>   1260                  ret = ceph_tcp_recvmsg(con->sock, NULL, -con->in_base_pos);
>   1261                  if (ret <= 0)
>   1262                          goto out;
>   1263                  dout("skipped %d / %d bytes\n", ret, -con->in_base_pos);
>   1264                  con->in_base_pos += ret;
>   1265                  if (con->in_base_pos)
>   1266                          goto more;
>   1267          }
>   1268          if (con->in_tag == CEPH_MSGR_TAG_READY) {
>   1269                  /*
>   1270                   * what's next?
>   1271                   */
>   1272                  ret = ceph_tcp_recvmsg(con->sock, &con->in_tag, 1);
>   1273                  if (ret <= 0)
>   1274                          goto out;
>   1275                  dout("try_read got tag %d\n", (int)con->in_tag);
>   1276                  switch (con->in_tag) {
>   1277                  case CEPH_MSGR_TAG_MSG:
>   1278                          prepare_read_message(con);
>   1279                          break;
>   1280                  case CEPH_MSGR_TAG_ACK:
>   1281                          prepare_read_ack(con);
>   1282                          break;
>   1283                  case CEPH_MSGR_TAG_KEEPALIVE2_ACK:
>   1284                          prepare_read_keepalive_ack(con);
>   1285                          break;
>   1286                  case CEPH_MSGR_TAG_CLOSE:
>   1287                          ceph_con_close_socket(con);
>   1288                          con->state = CEPH_CON_S_CLOSED;
>   1289                          goto out;
>   1290                  default:
>   1291                          goto bad_tag;
>   1292                  }
>   1293          }
>   1294          if (con->in_tag == CEPH_MSGR_TAG_MSG) {
>   1295                  ret = read_partial_message(con);
>   1296                  if (ret <= 0) {
>   1297                          switch (ret) {
>   1298                          case -EBADMSG:
>   1299                                  con->error_msg = "bad crc/signature";
>   1300                                  fallthrough;
>   1301                          case -EBADE:
>   1302                                  ret = -EIO;
>   1303                                  break;
>   1304                          case -EIO:
>   1305                                  con->error_msg = "io error";
>   1306                                  break;
>   1307                          }
>   1308                          goto out;
>   1309                  }
>   1310                  if (con->in_tag == CEPH_MSGR_TAG_READY)
>   1311                          goto more;
>   1312                  ceph_con_process_message(con);
>   1313                  if (con->state == CEPH_CON_S_OPEN)
>   1314                          prepare_read_tag(con);
>   1315                  goto more;
>   1316          }
>   1317          if (con->in_tag == CEPH_MSGR_TAG_ACK ||
>   1318              con->in_tag == CEPH_MSGR_TAG_SEQ) {
>   1319                  /*
>   1320                   * the final handshake seq exchange is semantically
>   1321                   * equivalent to an ACK
>   1322                   */
>   1323                  ret = read_partial_ack(con);
>   1324                  if (ret <= 0)
>   1325                          goto out;
>   1326                  process_ack(con);
>   1327                  goto more;
>   1328          }
>   1329          if (con->in_tag == CEPH_MSGR_TAG_KEEPALIVE2_ACK) {
>   1330                  ret = read_keepalive_ack(con);
>   1331                  if (ret <= 0)
>   1332                          goto out;
>   1333                  goto more;
>   1334          }
>   1335
>   1336  out:
>   1337          dout("try_read done on %p ret %d\n", con, ret);
>   1338          return ret;
>   1339
>   1340  bad_tag:
>   1341          pr_err("try_read bad con->in_tag = %d\n", (int)con->in_tag);
>   1342          con->error_msg = "protocol error, garbage tag";
>   1343          ret = -1;
>   1344          goto out;
>   1345  }
>   1346

Thanks,

                Ilya

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOi1vP8nq6fOC%2BcoHdq8w63k5uq8kXHY9zgtxDs0k_aVWY88wQ%40mail.gmail.com.
