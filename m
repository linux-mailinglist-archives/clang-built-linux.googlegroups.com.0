Return-Path: <clang-built-linux+bncBCWIHX4L7AKRB2724WDAMGQEA36UXMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE523B59E8
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 09:42:37 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id g4-20020aa787440000b02903020544da0fsf8762894pfo.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 00:42:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624866156; cv=pass;
        d=google.com; s=arc-20160816;
        b=sqfZ/OFCn6vcOGGe1jeask/MaYi1geMvZ6h1kcStM0kZfr0W0ne0VjjyVLcjWbRvp1
         /fqAAy+JonStdMsn2gDlB5z7doOYfwyY8dN2DIsFtx0dvXPIl34pPGXhAQOkB9bEbYcz
         UE6DMgCpSXmKA6x/4hQdjq7gdNe9F2MqYVvUQ36lMf2FM4a54cCwLwgCRgDy6HXP21fw
         ZFzm0ebAaumjH5v23N8jQCbbFnRAaR3eZ5W6azqG/N1KkrAshpsLLXWwH00g4ndWJURu
         u3NljdQfwaLrbtWOq4WR/faaipCySRYkEP4hdnxEjdnN0kUgAo1XC/cmZQKbt/n4kf6+
         l1IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=F3fIP1PLiTcLvs9mhhg/8qXPudEDUuHyWcfMqwpT33o=;
        b=eKkJ0k3KZgi724crJ8BFtoHb4A2phS15ne7c1uSLQoMSfDGxo3o2s5KeKqfQKflpQP
         hsIrdUSwGGV9uoy/1G2T9CRYg+h/ZYbs/KQ/P1MBO3nfDpMAvyG/cRg+CzuG6PHdAOwV
         jab8IcFZ4TRekGXPgglhxyVKLnbCvpJVGsDfWEZEXzOzWI24uw7HbFiEfv0Jt3b7t7PM
         4rrgxBFJlPjd1gHzxlHT/HAGe2G6QYKOk4om9748GhV3Je6w+gJxQ9S6keH07tsiEnW1
         E64VSZ0GWytpQVY5nbeEHgY45wnMI6kS1TUkf3yJm8Ofe0EfE9+wHeIGS5ac1J6r1Dzz
         VRnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BpDWuGTe;
       spf=pass (google.com: domain of idryomov@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=idryomov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3fIP1PLiTcLvs9mhhg/8qXPudEDUuHyWcfMqwpT33o=;
        b=c4jpkq+Y+0V0G7H6sQbu6WrLaqdywPRHooyPtv5hq/E6zC2x3voywXa3FnFfeQc6oV
         5YL3ZwTlvBSG13c6RoW63KNuxmygRw7ZxiArOyDSaVzSstxoWQNIt5IJh2rGKD23eTz6
         vNB5doGdCqOnXy7a5W5xPjMbuRfJtlsL9oXvvpwhgEdh7w+xTWif8fc8/DPlXEQlJquP
         LPj/hci6NqpS8E8sG13NpTImVx5Z1UTbdMSgUb2mcPtuPMsyr7R0APJtLvDRRciowV0M
         8+HX8oqc8GwzftVXN4Q+N6PjH7BzCiM4ERY+qXLyomLP2OtSSilv+WysNMCxtCgoq63B
         4QHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3fIP1PLiTcLvs9mhhg/8qXPudEDUuHyWcfMqwpT33o=;
        b=nC354rNwxhm298+hcy7lCUTZ7cYUrY/gh3bs1yNN22UBmiNW0E8P4D04wbrGIuBq0y
         KY8u6DlaFDcBwlUHILcs/fOCehFhCxRMc06S359E1EE/aWZw74SIXFsblKvCNag/Fxhq
         FvKJOo+CHFfq9aTn8ziX0wDPEFpuNVge8gxXPK/3D8b2RI8Xeutd+ajMVHe2aCWanLmP
         jpY4E4ThknJRCvdRAupdH9BCbWIdxzaU30Pu5+wj2zW2JD8KMU2+7Opno5cKmEuFZONN
         qatDjeS6e3lGYwO2vDwuS+UtijqzIPj2hBL13jUQ0pTTnuXhWQv4zno/OoLhBCN9T0wL
         EpyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3fIP1PLiTcLvs9mhhg/8qXPudEDUuHyWcfMqwpT33o=;
        b=UF0mW3KH2bpJGOX+rUKxCh2vA4DCXmaIq/Ekm2BDL8SJEKCN+rnA/ogRMATdOQrr3R
         S+SuEttPaRMg+KUzvQPm8AfMdQ0MsD5pspQKjbWedbZ5QUziMytfCHtN4Iyrv8ctIE9C
         OptoFPJi+9Bas838FRtCX6Fi0o4zz8+IkkdlJ4T9A0z5rIQ1pF1qO2vhqxtKS+IGd5Ci
         U/pNgKD6FTd12TH1BR1G/o63O8+aYivPmNWr95EpEGVq9JfeUfP5S32tpYFzl89Mb6W5
         vRkyw11jY8no6bJHiA7ZTpwBN9emQZt9fXzqzgjrwNnhBhehImIVXx13pPml8bsnl5i6
         rmDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532M5zNtZWakwH5m4I1SBJDXndYxX3GT5r+UY+x9e3Py2FDgOmAm
	J29qWURNIjY07CwgvFkPIVo=
X-Google-Smtp-Source: ABdhPJy7H0HoI3VSI0kPirMuH7SX96pSHqTyZqE7IGcolBQDBS1jo19HRt+OQsBuGbm/QExrwUxVfA==
X-Received: by 2002:a63:d710:: with SMTP id d16mr21751895pgg.214.1624866155773;
        Mon, 28 Jun 2021 00:42:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7747:: with SMTP id s68ls7568195pfc.0.gmail; Mon, 28 Jun
 2021 00:42:35 -0700 (PDT)
X-Received: by 2002:a62:8097:0:b029:306:7dfc:fa0 with SMTP id j145-20020a6280970000b02903067dfc0fa0mr23474737pfd.17.1624866155247;
        Mon, 28 Jun 2021 00:42:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624866155; cv=none;
        d=google.com; s=arc-20160816;
        b=SLc8yGG2nsdilH5o6gjtZuLA/WFMKt700yPNw/hUcQzsP4bOCniLztyNzv2bgrqQyF
         vSkMq9HckNJdwsVLJd8PXAuv5+Gku2YMtne3g6NSwaLCGkIQaRnTAKssIjlq8cesrR+S
         bwBHd9pEZZyOKKJWUXO6tAH9C0LQai7CKNd3Q2F5iqezl0+XbeuJvP5JH5C7TSE7so0F
         dvevHsqM24F2fQ/1osWEPG6Lw1V0NctJMjt3t7XdoNTYATrgYx50ZykOxtJfv3luN+SU
         L7fNro+P8o6QQTGvHXjQV99iuprLw59T5YznZxWD8RKBkjrjUxzrRKzxZYrRC19XtGr0
         40cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SrHjTh56+CpfcNwqSDKgtu+WM7Qz/2fMTLpPKx03AZQ=;
        b=xHdEFdElsIfMMFsewBZoOPHqPQ75n7xPUHbB64VOsZHR5CG8e22xbxluYkSIE3eeHI
         aaD8GyImqLX7xbtDSKT6AubfsVE9smnyFs14m3n9YIyP1l+9AMpbNTwYA70Aw+LTedYh
         HWbwp205jvRjHGIvbm/rJYV2xok9l46upf7mSdGtB8IFoKXF9b6jGNOWl9jTukXGhHLE
         Yox9nZJNVV6ztuezWtH6vkdO8IBddy3sSUchE2XEwhT+YvJx3cHt4WopIVrdztB3zTxK
         l+slRGLHKSNZAXUGTuj6jTd2aDTzVKt/q9O1tSBeG5MKJFSeJjH7IXKZ50C5EyFNquaq
         YMBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BpDWuGTe;
       spf=pass (google.com: domain of idryomov@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=idryomov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id n2si2035029pjp.2.2021.06.28.00.42.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 00:42:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of idryomov@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id s19so21137540ioc.3
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 00:42:35 -0700 (PDT)
X-Received: by 2002:a6b:5906:: with SMTP id n6mr7091819iob.7.1624866154709;
 Mon, 28 Jun 2021 00:42:34 -0700 (PDT)
MIME-Version: 1.0
References: <202106281329.JLKL1c31-lkp@intel.com>
In-Reply-To: <202106281329.JLKL1c31-lkp@intel.com>
From: Ilya Dryomov <idryomov@gmail.com>
Date: Mon, 28 Jun 2021 09:42:17 +0200
Message-ID: <CAOi1vP9NJ3nw9aWxtbzY2CA4WOx+A2kVeOvuiCFX5ZEidWTe5A@mail.gmail.com>
Subject: Re: net/ceph/messenger_v1.c:1204:5: warning: stack frame size (2880)
 exceeds limit (2048) in function 'ceph_con_v1_try_read'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: idryomov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BpDWuGTe;       spf=pass
 (google.com: domain of idryomov@gmail.com designates 2607:f8b0:4864:20::d29
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

On Mon, Jun 28, 2021 at 7:16 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Ilya,
>
> FYI, the error/warning still remains.

We won't be fixing the stack frame size warning here.  Please add it to the
allowlist.

Thanks,

                Ilya

>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   62fb9874f5da54fdb243003b386128037319b219
> commit: 2f713615ddd9d805b6c5e79c52e0e11af99d2bf1 libceph: move msgr1 protocol implementation to its own file
> date:   7 months ago
> config: powerpc64-randconfig-r034-20210628 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 59558129276098d62046c8cda92240d292cbfb1c)
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
>    <scratch space>:246:1: note: expanded from here
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
>    <scratch space>:250:1: note: expanded from here
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
>    <scratch space>:254:1: note: expanded from here
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
>    <scratch space>:4:1: note: expanded from here
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
>    <scratch space>:8:1: note: expanded from here
>    __do_outsl
>    ^
>    arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
>    #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
> >> net/ceph/messenger_v1.c:1204:5: warning: stack frame size (2880) exceeds limit (2048) in function 'ceph_con_v1_try_read' [-Wframe-larger-than]
>    int ceph_con_v1_try_read(struct ceph_connection *con)
>        ^
>    14 warnings generated.
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
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOi1vP9NJ3nw9aWxtbzY2CA4WOx%2BA2kVeOvuiCFX5ZEidWTe5A%40mail.gmail.com.
