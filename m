Return-Path: <clang-built-linux+bncBAABBSMHVSCQMGQENNMND3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2F438DEF0
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 03:39:22 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id 59-20020a9d0dc10000b02902a57e382ca1sf18685635ots.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 18:39:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621820361; cv=pass;
        d=google.com; s=arc-20160816;
        b=XlIm0Ru1vhGDCCKijMjpAcOd3IyUA1JpzxpidV7e+u1Fv9hxaD+7mq6jfWr3MHjb7T
         6I6+PNov8VmmcBWFGOgJy9O17o+HDZXTY0d/Fniv6lfWF0HNyWY/maRykiNwxbn1Wc/4
         OIxRIi5shth9D8+ZCTlLLf9JvzIT/mkOooc3V8AJPF9+oOh+d4ncDDG8Dc6cYKRCOERp
         UE7g0j7i/wxQtMNXX2OHA+ofyZBqgg2l3qRHXcSnF68xCoNC4sitXsYAJT+XbGCJ27In
         G2tMkfibIz2RWmzAqwrJF456YOEjsxtsL9bQ8vUVl6ospoxFgtT4iGik8zJaAsmkCCBA
         lK+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=xWsmiXBy1Sv3et46Kt7YyuPsVHHU+uQ2S62hvnnIL8A=;
        b=TGfwy4YwOlBG6fCSR3ZrZHqN0VphU04z4WWoTk1whankJCUFVxpRd+HPDYSR/M7eMF
         2uXoddh1z5ECpz+QSWDJMWmeN9oihSaAOoscXB+u8YlKenYWYvx1g8t+TRuOQO0o+cVa
         jutAkzDrav2m/oJnLlJAJZd4ZVOhXgBSho0pRu21TgQt65HjK5ECTCi3kTZTOZbOyXuA
         rP92jrDdFKygAtoRK58FNVDkGl82VFR3f8dBbOpASIdLnOn+anxVU2q9f7nLz1pMhmrM
         qxhlZ7nBaKFg2ZpPsSF5jMxIkaJtVDulZ2nhLs4ds2e9c+5f3GidknhedpsIGJsNEsF+
         /5rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of huan.feng@starfivetech.com designates 202.66.151.217 as permitted sender) smtp.mailfrom=huan.feng@starfivetech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xWsmiXBy1Sv3et46Kt7YyuPsVHHU+uQ2S62hvnnIL8A=;
        b=C9Ey0OqS2th2rskwmgX/R7LdIHBdjLJvEcgkhDmEpUGCdjlEG2tnEV6xYYErcZjgzD
         j3wUshXLqvoNIwR69TQukR7faJi8EjLLqREFocFv3bw6dFxWQGk0vDg49cnaNOqrRrw+
         QtiDCgivlKZrbREhgWT9Rg1AwlKd35Y9QH4iCSTH6vL+iYka7MRyzv594fbzP9O3FNWV
         EEZ3/YcF8Oyj2PuqWzCdH9j+tBSnkJaMrPcu+3eWYz2fE4yjdJqlnEWGzCBtSy6s+7RG
         bgSG+GQt2U/pJrE9nNcXJjI7TyIWpTYSUMQ/1w7YRKJUo0Ey5H3Igt0FvYdjHBGTWO5M
         iSSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xWsmiXBy1Sv3et46Kt7YyuPsVHHU+uQ2S62hvnnIL8A=;
        b=Jp7+h2LZxyxzdfO/DmMhvp409ecMkunLme0ug6ex0j5vF1KuQaYzv/vw5c0KfNRUZd
         PmdQFRkZdH2FziblJ6wxVq6htGmj3AVIwPTXiaDoMnnDA0FD/WOFra6NHhl/5QXCTLLn
         21xcIGfrtortu52i3ForFY/zJj4wx2QOm2eVIxWEawh8JXygTbIDCU8jcX/1z9txmqQq
         4vFofIXmZJfn15ngnMdzI15dBIVMJcWpR5WZgzN6c03nCo6IQaCTCYXfyhVhg5sqLIyd
         iPMxhDnHm3u6hXYL+T1f93nomb4Yb4zCTiarYm9/i0YbqxMLdCY4UA/y8FYHR+Ja6Tp6
         WPsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NoKh1b1Goc1KKlaFqpekw5JREMdGV/TwUGGT+/SFL1HIlO7Qa
	XXefyVNDX8EljVZEjQthWgw=
X-Google-Smtp-Source: ABdhPJzIQ+kMYft8pqWKa7AINbmegWusg9jawBw/pIgj8P84oVYMxv2GsEKOeffrKlkcjP1CpV84YA==
X-Received: by 2002:a9d:4a8a:: with SMTP id i10mr16719857otf.282.1621820361608;
        Sun, 23 May 2021 18:39:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fdd2:: with SMTP id b201ls3796552oii.8.gmail; Sun, 23
 May 2021 18:39:21 -0700 (PDT)
X-Received: by 2002:aca:342:: with SMTP id 63mr9123596oid.151.1621820360947;
        Sun, 23 May 2021 18:39:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621820360; cv=none;
        d=google.com; s=arc-20160816;
        b=WnGFTibUIkw9Mm+JqZXnXiNYTsc7nT6NMJGTzZukT9a/Yijpx12+BATZwtUiPJYJnF
         u6e2xla/rRKGDdN67RLjrrDK2bFHP+ZBq7bUgm58/jffHunjCgWQhN0DC3/J+FZHmNgt
         1s+OiM8FChLpACO732qQctCPw6nnaY0WGHsi6ZEhuMacdomYr/TzBZdfeBIjLtMjIaSW
         plGeFbTzTjmL+Q6ygiwi5V3KomMJpVeAzPPZ0yo5Sx3omVB2lscSnsuoutrvlSQApiaS
         AfbWHsNZMblYY+xLcADsHGuWkCFQcCBHxWvq3Ebxp8rgsOvg1f5XzOouwMGfYm46QOPf
         yGKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from;
        bh=GgtjPtqyjGKL74dI5UeqO0YMLraovrLrmg44lU4UQ0M=;
        b=OmRnJe5qMbP+tcLVXAoIQbjAGhEn+5XZgP1cjMDPdG+S8QKA5CzyDJBGNbuy5v5NFC
         cvRSs1UR+k8Ad3u10ikhahd/SFKf+U0m3UE7ChWppntXvp0wp72gNbhDoQnZSZGKIxK+
         Pb+2FpAtY+FbeNoJU04i02MYYuV8nEqOilcrgqOhFXyRyzO38/vxyURz+y1PuPmo6bO/
         SXNlQgV8G6xFpCNhsxO+WigmFThUBKZIUfezVq3gjr3DiOngZ6hRwJNMDqcHreI0D7Sv
         1/q9w+LMXkswpSzo5MjLDvlBJpijXmx/W4lV4ljWa226MqSD4or+gOzyfdXxa6j3yXBw
         kNNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of huan.feng@starfivetech.com designates 202.66.151.217 as permitted sender) smtp.mailfrom=huan.feng@starfivetech.com
Received: from Mid217.euchost.com (static-ip-217-151-66-202.rev.dyxnet.com. [202.66.151.217])
        by gmr-mx.google.com with ESMTPS id o7si2604880otk.1.2021.05.23.18.39.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 May 2021 18:39:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of huan.feng@starfivetech.com designates 202.66.151.217 as permitted sender) client-ip=202.66.151.217;
Received: from ex01.ufhost.com (unknown [61.152.239.75])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by Mid217.euchost.com (Postfix) with ESMTPS id 64A5421390
	for <clang-built-linux@googlegroups.com>; Mon, 24 May 2021 09:38:45 +0800 (CST)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 1B69924DFDE;
	Mon, 24 May 2021 09:39:15 +0800 (CST)
Received: from EXMBX166.cuchost.com (172.16.6.76) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Mon, 24 May
 2021 09:39:14 +0800
Received: from EXMBX166.cuchost.com ([fe80::2dd5:9cd8:37df:1738]) by
 EXMBX166.cuchost.com ([fe80::2dd5:9cd8:37df:1738%16]) with mapi id
 15.00.1497.018; Mon, 24 May 2021 09:39:14 +0800
From: Huan Feng <huan.feng@starfivetech.com>
To: kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Emil Renner Berthing <kernel@esmil.dk>
Subject: Re: [stffrdhrn:starfive-bad-dcache-flush 2/39]
 drivers/gpio/gpio-starfive-vic.c:522:8: error: implicit declaration of
 function 'devm_request_irq'
Thread-Topic: [stffrdhrn:starfive-bad-dcache-flush 2/39]
 drivers/gpio/gpio-starfive-vic.c:522:8: error: implicit declaration of
 function 'devm_request_irq'
Thread-Index: AQHXTx0nthKO3Tp3MUSMTXGBGTXN86rx3PiA
Date: Mon, 24 May 2021 01:39:14 +0000
Message-ID: <BCEC1050-F930-4BEF-8201-75C09359BE71@starfivetech.com>
References: <202105222357.YzsLZZiy-lkp@intel.com>
In-Reply-To: <202105222357.YzsLZZiy-lkp@intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.16.6.231]
x-yovoleruleagent: yovoleflag
Content-Type: multipart/mixed;
	boundary="_002_BCEC1050F9304BEF820175C09359BE71starfivetechcom_"
MIME-Version: 1.0
X-Original-Sender: huan.feng@starfivetech.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of huan.feng@starfivetech.com designates 202.66.151.217
 as permitted sender) smtp.mailfrom=huan.feng@starfivetech.com
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

--_002_BCEC1050F9304BEF820175C09359BE71starfivetechcom_
Content-Type: text/plain; charset="UTF-8"
Content-ID: <0571A7B673606E4591840F70F5EA63C8@cuchost.com>
Content-Transfer-Encoding: quoted-printable

Hi:
	I can not get the source code from github.=20
	Starfive vic gpio and rng hardware is on Starfive vic7100 Soc, which is RI=
SCV ARCH. So maybe they are not used on other Soc or ARCH.
=09
	May be the attach patch file is usefull.

--=20

Best Regards,
=20
Huan Feng
E-mail: huan.feng@starfivetch.com
Mobile.: 18111603721
Address: ChengDu China

=EF=BB=BFOn 2021/5/22, 11:14 PM, "kernel test robot" <lkp@intel.com> wrote:

    tree:   https://github.com/stffrdhrn/linux.git starfive-bad-dcache-flus=
h
    head:   a5c948a9cc2b8944f00056c067fb7bde19b34843
    commit: 4482cc40078eac952205e48d9937419f5808d6a2 [2/39] gpio: starfive-=
vic: Add StarFive VIC GPIO driver
    config: powerpc64-randconfig-r012-20210522 (attached as .config)
    compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e8=
4a9b9bb3051c35dea993cdad7b3d2575638f85)
    reproduce (this is a W=3D1 build):
            wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
            chmod +x ~/bin/make.cross
            # install powerpc64 cross compiling tool for clang build
            # apt-get install binutils-powerpc64-linux-gnu
            # https://github.com/stffrdhrn/linux/commit/4482cc40078eac95220=
5e48d9937419f5808d6a2
            git remote add stffrdhrn https://github.com/stffrdhrn/linux.git
            git fetch --no-tags stffrdhrn starfive-bad-dcache-flush
            git checkout 4482cc40078eac952205e48d9937419f5808d6a2
            # save the attached .config to linux build tree
            COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dpowerpc64=20

    If you fix the issue, kindly add following tag as appropriate
    Reported-by: kernel test robot <lkp@intel.com>

    All error/warnings (new ones prefixed by >>):

       In file included from include/linux/irq.h:20:
       In file included from include/linux/io.h:13:
       In file included from arch/powerpc/include/asm/io.h:619:
       arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer=
 arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithm=
etic]
       DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_=
PCI_AC_NORET'
                       __do_##name al;                                 \
                       ^~~~~~~~~~~~~~
       <scratch space>:202:1: note: expanded from here
       __do_insb
       ^
       arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__d=
o_insb'
       #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b=
), (n))
                                              ~~~~~~~~~~~~~~~~~~~~~^
       In file included from drivers/gpio/gpio-starfive-vic.c:22:
       In file included from include/linux/gpio/driver.h:7:
       In file included from include/linux/irq.h:20:
       In file included from include/linux/io.h:13:
       In file included from arch/powerpc/include/asm/io.h:619:
       arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer=
 arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithm=
etic]
       DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_=
PCI_AC_NORET'
                       __do_##name al;                                 \
                       ^~~~~~~~~~~~~~
       <scratch space>:204:1: note: expanded from here
       __do_insw
       ^
       arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__d=
o_insw'
       #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b=
), (n))
                                              ~~~~~~~~~~~~~~~~~~~~~^
       In file included from drivers/gpio/gpio-starfive-vic.c:22:
       In file included from include/linux/gpio/driver.h:7:
       In file included from include/linux/irq.h:20:
       In file included from include/linux/io.h:13:
       In file included from arch/powerpc/include/asm/io.h:619:
       arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer=
 arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithm=
etic]
       DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_=
PCI_AC_NORET'
                       __do_##name al;                                 \
                       ^~~~~~~~~~~~~~
       <scratch space>:206:1: note: expanded from here
       __do_insl
       ^
       arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__d=
o_insl'
       #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b=
), (n))
                                              ~~~~~~~~~~~~~~~~~~~~~^
       In file included from drivers/gpio/gpio-starfive-vic.c:22:
       In file included from include/linux/gpio/driver.h:7:
       In file included from include/linux/irq.h:20:
       In file included from include/linux/io.h:13:
       In file included from arch/powerpc/include/asm/io.h:619:
       arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer=
 arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithm=
etic]
       DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned lo=
ng c),
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~
       arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_=
PCI_AC_NORET'
                       __do_##name al;                                 \
                       ^~~~~~~~~~~~~~
       <scratch space>:208:1: note: expanded from here
       __do_outsb
       ^
       arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__d=
o_outsb'
       #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b=
),(n))
                                               ~~~~~~~~~~~~~~~~~~~~~^
       In file included from drivers/gpio/gpio-starfive-vic.c:22:
       In file included from include/linux/gpio/driver.h:7:
       In file included from include/linux/irq.h:20:
       In file included from include/linux/io.h:13:
       In file included from arch/powerpc/include/asm/io.h:619:
       arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer=
 arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithm=
etic]
       DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned lo=
ng c),
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~
       arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_=
PCI_AC_NORET'
                       __do_##name al;                                 \
                       ^~~~~~~~~~~~~~
       <scratch space>:210:1: note: expanded from here
       __do_outsw
       ^
       arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__d=
o_outsw'
       #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b=
),(n))
                                               ~~~~~~~~~~~~~~~~~~~~~^
       In file included from drivers/gpio/gpio-starfive-vic.c:22:
       In file included from include/linux/gpio/driver.h:7:
       In file included from include/linux/irq.h:20:
       In file included from include/linux/io.h:13:
       In file included from arch/powerpc/include/asm/io.h:619:
       arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer=
 arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithm=
etic]
       DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned lo=
ng c),
       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~
       arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_=
PCI_AC_NORET'
                       __do_##name al;                                 \
                       ^~~~~~~~~~~~~~
       <scratch space>:212:1: note: expanded from here
       __do_outsl
       ^
       arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__d=
o_outsl'
       #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b=
),(n))
                                               ~~~~~~~~~~~~~~~~~~~~~^
    >> drivers/gpio/gpio-starfive-vic.c:348:6: warning: no previous prototy=
pe for function 'sf_vic_gpio_dout_reverse' [-Wmissing-prototypes]
       void sf_vic_gpio_dout_reverse(int gpio, int en)
            ^
       drivers/gpio/gpio-starfive-vic.c:348:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
       void sf_vic_gpio_dout_reverse(int gpio, int en)
       ^
       static=20
    >> drivers/gpio/gpio-starfive-vic.c:367:6: warning: no previous prototy=
pe for function 'sf_vic_gpio_dout_value' [-Wmissing-prototypes]
       void sf_vic_gpio_dout_value(int gpio, int v)
            ^
       drivers/gpio/gpio-starfive-vic.c:367:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
       void sf_vic_gpio_dout_value(int gpio, int v)
       ^
       static=20
    >> drivers/gpio/gpio-starfive-vic.c:385:6: warning: no previous prototy=
pe for function 'sf_vic_gpio_dout_low' [-Wmissing-prototypes]
       void sf_vic_gpio_dout_low(int gpio)
            ^
       drivers/gpio/gpio-starfive-vic.c:385:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
       void sf_vic_gpio_dout_low(int gpio)
       ^
       static=20
    >> drivers/gpio/gpio-starfive-vic.c:391:6: warning: no previous prototy=
pe for function 'sf_vic_gpio_dout_high' [-Wmissing-prototypes]
       void sf_vic_gpio_dout_high(int gpio)
            ^
       drivers/gpio/gpio-starfive-vic.c:391:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
       void sf_vic_gpio_dout_high(int gpio)
       ^
       static=20
    >> drivers/gpio/gpio-starfive-vic.c:397:6: warning: no previous prototy=
pe for function 'sf_vic_gpio_doen_reverse' [-Wmissing-prototypes]
       void sf_vic_gpio_doen_reverse(int gpio, int en)
            ^
       drivers/gpio/gpio-starfive-vic.c:397:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
       void sf_vic_gpio_doen_reverse(int gpio, int en)
       ^
       static=20
    >> drivers/gpio/gpio-starfive-vic.c:416:6: warning: no previous prototy=
pe for function 'sf_vic_gpio_doen_value' [-Wmissing-prototypes]
       void sf_vic_gpio_doen_value(int gpio, int v)
            ^
       drivers/gpio/gpio-starfive-vic.c:416:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
       void sf_vic_gpio_doen_value(int gpio, int v)
       ^
       static=20
    >> drivers/gpio/gpio-starfive-vic.c:435:6: warning: no previous prototy=
pe for function 'sf_vic_gpio_doen_low' [-Wmissing-prototypes]
       void sf_vic_gpio_doen_low(int gpio)
            ^
       drivers/gpio/gpio-starfive-vic.c:435:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
       void sf_vic_gpio_doen_low(int gpio)
       ^
       static=20
    >> drivers/gpio/gpio-starfive-vic.c:441:6: warning: no previous prototy=
pe for function 'sf_vic_gpio_doen_high' [-Wmissing-prototypes]
       void sf_vic_gpio_doen_high(int gpio)
            ^
       drivers/gpio/gpio-starfive-vic.c:441:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
       void sf_vic_gpio_doen_high(int gpio)
       ^
       static=20
    >> drivers/gpio/gpio-starfive-vic.c:447:6: warning: no previous prototy=
pe for function 'sf_vic_gpio_manual' [-Wmissing-prototypes]
       void sf_vic_gpio_manual(int offset, int v)
            ^
       drivers/gpio/gpio-starfive-vic.c:447:1: note: declare 'static' if th=
e function is not intended to be used outside of this translation unit
       void sf_vic_gpio_manual(int offset, int v)
       ^
       static=20
    >> drivers/gpio/gpio-starfive-vic.c:522:8: error: implicit declaration =
of function 'devm_request_irq' [-Werror,-Wimplicit-function-declaration]
               ret =3D devm_request_irq(dev, irq, starfive_irq_handler, IRQ=
F_SHARED,
                     ^
       drivers/gpio/gpio-starfive-vic.c:522:8: note: did you mean 'can_requ=
est_irq'?
       include/linux/irq.h:701:12: note: 'can_request_irq' declared here
       extern int can_request_irq(unsigned int irq, unsigned long irqflags)=
;
                  ^
    >> drivers/gpio/gpio-starfive-vic.c:522:57: error: use of undeclared id=
entifier 'IRQF_SHARED'
               ret =3D devm_request_irq(dev, irq, starfive_irq_handler, IRQ=
F_SHARED,
                                                                      ^
       21 warnings and 2 errors generated.


    vim +/devm_request_irq +522 drivers/gpio/gpio-starfive-vic.c

       347=09
     > 348	void sf_vic_gpio_dout_reverse(int gpio, int en)
       349	{
       350		unsigned int value;
       351		int offset;
       352=09
       353		if (!gpio_base)
       354			return;
       355=09
       356		offset =3D gpio * 8 + GPIO_DOUT_X_REG;
       357=09
       358		spin_lock(&sfg_lock);
       359		value =3D ioread32(gpio_base + offset);
       360		value &=3D ~(0x1 << 31);
       361		value |=3D (en & 0x1) << 31;
       362		iowrite32(value, gpio_base + offset);
       363		spin_unlock(&sfg_lock);
       364	}
       365	EXPORT_SYMBOL_GPL(sf_vic_gpio_dout_reverse);
       366=09
     > 367	void sf_vic_gpio_dout_value(int gpio, int v)
       368	{
       369		unsigned int value;
       370		int offset;
       371=09
       372		if (!gpio_base)
       373			return;
       374=09
       375		offset =3D gpio * 8 + GPIO_DOUT_X_REG;
       376		spin_lock(&sfg_lock);
       377		value =3D ioread32(gpio_base + offset);
       378		value &=3D ~(0xFF);
       379		value |=3D (v&0xFF);
       380		iowrite32(value, gpio_base + offset);
       381		spin_unlock(&sfg_lock);
       382	}
       383	EXPORT_SYMBOL_GPL(sf_vic_gpio_dout_value);
       384=09
     > 385	void sf_vic_gpio_dout_low(int gpio)
       386	{
       387		sf_vic_gpio_dout_value(gpio, 0);
       388	}
       389	EXPORT_SYMBOL_GPL(sf_vic_gpio_dout_low);
       390=09
     > 391	void sf_vic_gpio_dout_high(int gpio)
       392	{
       393		sf_vic_gpio_dout_value(gpio, 1);
       394	}
       395	EXPORT_SYMBOL_GPL(sf_vic_gpio_dout_high);
       396=09
     > 397	void sf_vic_gpio_doen_reverse(int gpio, int en)
       398	{
       399		unsigned int value;
       400		int offset;
       401=09
       402		if (!gpio_base)
       403			return;
       404=09
       405		offset =3D gpio * 8 + GPIO_DOEN_X_REG;
       406=09
       407		spin_lock(&sfg_lock);
       408		value =3D ioread32(gpio_base + offset);
       409		value &=3D ~(0x1 << 31);
       410		value |=3D (en & 0x1) << 31;
       411		iowrite32(value, gpio_base + offset);
       412		spin_unlock(&sfg_lock);
       413	}
       414	EXPORT_SYMBOL_GPL(sf_vic_gpio_doen_reverse);
       415=09
     > 416	void sf_vic_gpio_doen_value(int gpio, int v)
       417	{
       418		unsigned int value;
       419		int offset;
       420=09
       421		if (!gpio_base)
       422			return;
       423=09
       424		offset =3D gpio * 8 + GPIO_DOEN_X_REG;
       425=09
       426		spin_lock(&sfg_lock);
       427		value =3D ioread32(gpio_base + offset);
       428		value &=3D ~(0xFF);
       429		value |=3D (v&0xFF);
       430		iowrite32(value, gpio_base + offset);
       431		spin_unlock(&sfg_lock);
       432	}
       433	EXPORT_SYMBOL_GPL(sf_vic_gpio_doen_value);
       434=09
     > 435	void sf_vic_gpio_doen_low(int gpio)
       436	{
       437		sf_vic_gpio_doen_value(gpio, 0);
       438	}
       439	EXPORT_SYMBOL_GPL(sf_vic_gpio_doen_low);
       440=09
     > 441	void sf_vic_gpio_doen_high(int gpio)
       442	{
       443		sf_vic_gpio_doen_value(gpio, 1);
       444	}
       445	EXPORT_SYMBOL_GPL(sf_vic_gpio_doen_high);
       446=09
     > 447	void sf_vic_gpio_manual(int offset, int v)
       448	{
       449		unsigned int value;
       450=09
       451		if (!gpio_base)
       452			return ;
       453=09
       454		spin_lock(&sfg_lock);
       455		value =3D ioread32(gpio_base + offset);
       456		value &=3D ~(0xFF);
       457		value |=3D (v&0xFF);
       458		iowrite32(value, gpio_base + offset);
       459		spin_unlock(&sfg_lock);
       460	}
       461	EXPORT_SYMBOL_GPL(sf_vic_gpio_manual);
       462=09
       463	static int starfive_gpio_probe(struct platform_device *pdev)
       464	{
       465		struct device *dev =3D &pdev->dev;
       466		struct starfive_gpio *chip;
       467		struct gpio_irq_chip *girq;
       468		struct resource *res;
       469		int irq, ret, ngpio;
       470=09
       471		chip =3D devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
       472		if (!chip) {
       473			dev_err(dev, "out of memory\n");
       474			return -ENOMEM;
       475		}
       476=09
       477		res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
       478		chip->base =3D devm_ioremap_resource(dev, res);
       479		if (IS_ERR(chip->base)) {
       480			dev_err(dev, "failed to allocate device memory\n");
       481			return PTR_ERR(chip->base);
       482		}
       483		gpio_base =3D chip->base ;
       484=09
       485		irq =3D platform_get_irq(pdev, 0);
       486		if (irq < 0) {
       487			dev_err(dev, "Cannot get IRQ resource\n");
       488			return irq;
       489		}
       490=09
       491		raw_spin_lock_init(&chip->lock);
       492		chip->gc.direction_input =3D starfive_direction_input;
       493		chip->gc.direction_output =3D starfive_direction_output;
       494		chip->gc.get_direction =3D starfive_get_direction;
       495		chip->gc.get =3D starfive_get_value;
       496		chip->gc.set =3D starfive_set_value;
       497		chip->gc.base =3D 0;
       498		chip->gc.ngpio =3D 64;
       499		chip->gc.label =3D dev_name(dev);
       500		chip->gc.parent =3D dev;
       501		chip->gc.owner =3D THIS_MODULE;
       502=09
       503		girq =3D &chip->gc.irq;
       504		girq->chip =3D &starfive_irqchip;
       505		girq->parent_handler =3D NULL;
       506		girq->num_parents =3D 0;
       507		girq->parents =3D NULL;
       508		girq->default_type =3D IRQ_TYPE_NONE;
       509		girq->handler =3D handle_simple_irq;
       510=09
       511		ret =3D gpiochip_add_data(&chip->gc, chip);
       512		if (ret) {
       513			dev_err(dev, "gpiochip_add_data ret=3D%d!\n", ret);
       514			return ret;
       515		}
       516=09
       517		/* Disable all GPIO interrupts before enabling parent interrupt=
s */
       518		iowrite32(0, chip->base + GPIO_IE_HIGH);
       519		iowrite32(0, chip->base + GPIO_IE_LOW);
       520		chip->enabled =3D 0;
       521=09
     > 522		ret =3D devm_request_irq(dev, irq, starfive_irq_handler, IRQF_S=
HARED,
       523				dev_name(dev), chip);
       524		if (ret) {
       525			dev_err(dev, "IRQ handler registering failed (%d)\n", ret);
       526			return ret;
       527		}
       528=09
       529		writel_relaxed(1, chip->base + GPIO_EN);
       530=09
       531		dev_info(dev, "StarFive GPIO chip registered %d GPIOs\n", ngpio=
);
       532=09
       533		return 0;
       534	}
       535=09

    ---
    0-DAY CI Kernel Test Service, Intel Corporation
    https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/BCEC1050-F930-4BEF-8201-75C09359BE71%40starfivetech.com.

--_002_BCEC1050F9304BEF820175C09359BE71starfivetechcom_
Content-Type: application/octet-stream; name="github_starfive.patch"
Content-Description: github_starfive.patch
Content-Disposition: attachment; filename="github_starfive.patch"; size=965;
	creation-date="Mon, 24 May 2021 01:39:14 GMT";
	modification-date="Mon, 24 May 2021 01:39:14 GMT"
Content-ID: <4A3DD6A2FDB7A1429CB7E47CDE9BA73C@cuchost.com>
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9od19yYW5kb20vS2NvbmZpZyBiL2RyaXZlcnMvY2hh
ci9od19yYW5kb20vS2NvbmZpZwppbmRleCBlNTE3YTJmLi4wMzAzNmY2IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2NoYXIvaHdfcmFuZG9tL0tjb25maWcKKysrIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRv
bS9LY29uZmlnCkBAIC0zMzcsOCArMzM3LDggQEAgY29uZmlnIEhXX1JBTkRPTV9QT1dFUk5WCgog
Y29uZmlnIEhXX1JBTkRPTV9TVEFSRklWRV9WSUMKIAl0cmlzdGF0ZSAiU3RhcmZpdmUgVklDIFJh
bmRvbSBOdW1iZXIgR2VuZXJhdG9yIHN1cHBvcnQiCisJZGVwZW5kcyBvbiBTT0NfU1RBUkZJVkVf
VklDNzEwMAogCWRlcGVuZHMgb24gSFdfUkFORE9NCi0JZGVmYXVsdCB5IGlmIFNPQ19TVEFSRklW
RV9WSUM3MTAwCiAJaGVscAogCSAgVGhpcyBkcml2ZXIgcHJvdmlkZXMga2VybmVsLXNpZGUgc3Vw
cG9ydCBmb3IgdGhlIFJhbmRvbSBOdW1iZXIKIAkgIEdlbmVyYXRvciBoYXJkd2FyZSBmb3VuZCBv
biBTdGFyZml2ZSBWSUMgU29DLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL0tjb25maWcgYi9k
cml2ZXJzL2dwaW8vS2NvbmZpZwppbmRleCAyMWM2MTFhLi5kZGFmMTU0IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwaW8vS2NvbmZpZworKysgYi9kcml2ZXJzL2dwaW8vS2NvbmZpZwpAQCAtNTE3LDkg
KzUxNyw5IEBAIGNvbmZpZyBHUElPX1NJRklWRQoKIGNvbmZpZyBHUElPX1NUQVJGSVZFX1ZJQwog
CWJvb2wgIlN0YXJmaXZlIFZJQyBHUElPIHN1cHBvcnQiCisJZGVwZW5kcyBvbiBTT0NfU1RBUkZJ
VkVfVklDNzEwMAogCWRlcGVuZHMgb24gT0ZfR1BJTwogCXNlbGVjdCBHUElPTElCX0lSUUNISVAK
LQlkZWZhdWx0IHkgaWYgU09DX1NUQVJGSVZFX1ZJQzcxMDAKIAloZWxwCiAJICBTYXkgeWVzIGhl
cmUgdG8gc3VwcG9ydCB0aGUgR1BJTyBkZXZpY2Ugb24gU3RhcmZpdmUgVklDIFNvQ3MuCgo=

--_002_BCEC1050F9304BEF820175C09359BE71starfivetechcom_--
