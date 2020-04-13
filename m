Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKPI2L2AKGQECESJTPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8371A6C34
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 20:49:15 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id a8sf8204238oia.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 11:49:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586803754; cv=pass;
        d=google.com; s=arc-20160816;
        b=XplQB/fhe8uK8nBx90w/yOdRta5yEzd2VDe4JE/VcSItqwJovmvpRQrkMQJccIQYzu
         Mr5/VzMVD/GLjjffbLtpgwmsbBs97/V5hB1KAIDoqRoGpYKn2+V47Imt17TziT+GiyMC
         U2sXPASLLavqYRiTTpDjxva7EuzQjQNwLcXQij7znQC9mKPbOz7w0tcu6dMLYDSHPkmV
         zuo3IHMoJrSGDZj892pqVR/J/9JjzZkjaAg4ml1mNdViGmIfPJhd3R2w8oG3Y5uDMvhZ
         Dlgx/Pp4yMH8VGwX2DoDH2wUyr21KsVI+80Ih4DwTNHIt9NYyeCzuxtG2R7AKHh6WUhY
         wz2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=M2WnWFNG9HuhZvFu/Mpk5hH6OkmELViqqaP+vZbQFDg=;
        b=a7Ah8ML9+zv7mib0F2wuGNN1tyClTgVoCFtlVhHXm79Y5Eyio1FLXZ4MkapVuLeUqR
         ORjV22j070/LerVKj6DJKi9r6Jruts4vjw5dY35x8P+JmuvxpvYwIUpsHfhswnKJNcae
         a2P6rbXWzxMvUkTPZ+8Q2da44nYzj8Lml4F1R1IQNpwLetjDl4YiliJcHI5GvTDorONa
         UEvp5XR8n2OP8jRTOK42H8C84c5I80hEZsN/ucD8aB3pf5S5npZTyY8rDeyATG0v7MnX
         jtY1J8Z/WQncg1Tprq6r8hooXOZfIeHOLeXuEcIIJNl2+LnoaNh8RJm8546asMsr/sXa
         c2Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IuL2Xlc6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M2WnWFNG9HuhZvFu/Mpk5hH6OkmELViqqaP+vZbQFDg=;
        b=D4oLBTDHE1QIW5U4XUd7OsRmyp/W0+nTbjv85PZnQ9jPXDFaSfaHG+PfuKAg/pBu3f
         PBTAvuNwrFu0luT5/nCI6wBuG1yPDb74P6Dp/2kEqlPPCVulsExg1KLewjhox03TTYo/
         77q4rnOS2Zxf0I49OzhLyqDQ7w69jHRO9Phs0n2UIej2bvTRCCKZiwKhfiGe34eVEECq
         Jo9DKrAKC8KBRsTXA2gMoAkTBEl9TebXwhYmopRTT4WhpxCsoOZiHa3uAcFG9ctOsxYQ
         yfU3qzIVV0YFvFEa51xAomNOpdaXZnykcrBg0ijeateLcfwROC0v0fG2cAaRZW/nmfBd
         h7RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M2WnWFNG9HuhZvFu/Mpk5hH6OkmELViqqaP+vZbQFDg=;
        b=aN8ogBbncRNSmPqdcrQ6cfY272/O91au6ZNerSLBosA/aIBMbQJqomPcgkVHNH46wC
         l0RDbMTBwMReVG2EXqBcy5zuTVQb0vuPuj/z4HR2XPPptJsyPE9R60NVoPjZflHNca/z
         WjS11DJ1i7fdP362hUy5Gv/1oITxIe09PoPPEO9kiRxX5T90ko3WQsV4Gv5MsWPlJCyW
         Uac0WvN5FeXMFiIvxU8i+0eHO4Htyt40cTbugQpm7+PUZa/mzFHg6rfWgPfEt7vYF4Q6
         J16+3LRZr+vfqXNH9Ia3ccRGncpDa+iw5zIz1fIpk96kFjIZsv6bnoBJ5I+wZYXGCGa7
         YM+A==
X-Gm-Message-State: AGi0PuaZItZSf3b47z7s1s+sZ/t51AqJ8RzJaYhagAuDh+3m0RKxP4fo
	a/0Yod84e5m1kFDr0atRWcs=
X-Google-Smtp-Source: APiQypItBYZqY2KHUBZhQgMYLYgFQquEGIBzNQemR1LG4LtZyZx6hLehbrlOmwcFscJe3AaEX/GBVg==
X-Received: by 2002:a9d:6e02:: with SMTP id e2mr5894259otr.317.1586803753694;
        Mon, 13 Apr 2020 11:49:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls218438ots.0.gmail; Mon, 13
 Apr 2020 11:49:13 -0700 (PDT)
X-Received: by 2002:a05:6830:1606:: with SMTP id g6mr16406639otr.315.1586803753218;
        Mon, 13 Apr 2020 11:49:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586803753; cv=none;
        d=google.com; s=arc-20160816;
        b=TBfvTs2u7xCXRa7GyiShaOw/R32zz1fxa5HVFO1TmtDacEpBpurQ0IDOs39dmUZOqC
         CoyGldDvrQSgqwfA2P/jr5FuInf1glNHMG/6/yapylRwtY7c+f0ycN3StVw1egZMaWdo
         2qm1Crnfitxuw8bpYEausdYV9Y5jOxTYlQselSh6Oj4wYpkPAhve2FgO6zgEyekey0XS
         vL4HeR6ZgDWyW6XXoZ0Y9yL967ouH98H6hS+dxRFw5BoXzBfXO1ZzlF3G2ykFwf+kf1l
         9/PSxK4GWdNeFMK+fjyuKMRwKfou6+XqrjRNGG0uTRJvQGm0I4gEvbC4ecSyafLhpeTs
         XfnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zWzgyXi8WfP9fFqRcnSoD6ax3gruQnjDGFT7CkNEe90=;
        b=eAEESJhB7OCC/Mj17fSH2lRRNSsRpvau0U9noY5W8hoomappFQX+jAHCAs+qKMWNnM
         6lWY83fD8W3vT+POOzcUNV1aJPza+6+4/TfjMMouun3dIvomdwSYEqd5pEr1p5vw+JNP
         W4KBFRTw6C6b/onS+hRd/uWNyJi3nWFAvk/TnVKc5RR/jPvLyLqoumYBLYGUROi/FUbW
         6qbBVlDmDWGk8OVEcEFUVZtpl6k4A23N8RV2eR4ifXmtIsKSRVfR/mp+Y4xVvk7slU4V
         ST6SUmr0ybjuC3Rjz6BVbVE9O4gUsiO5cLa4vPK29gX6TTNqcYQPWLfHJAsFzpC+5Q2m
         UQbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IuL2Xlc6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id f7si537572oti.0.2020.04.13.11.49.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 11:49:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id u65so4912845pfb.4
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 11:49:13 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr17387267pgc.381.1586803751929;
 Mon, 13 Apr 2020 11:49:11 -0700 (PDT)
MIME-Version: 1.0
References: <202004131704.6MH1jcq3%lkp@intel.com>
In-Reply-To: <202004131704.6MH1jcq3%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 11:49:00 -0700
Message-ID: <CAKwvOdnfKF5FqGENvv=BaN-S+V_pE+hLPhVWYuxNdNqhOPUWmA@mail.gmail.com>
Subject: Re: arch/powerpc/platforms/52xx/mpc52xx_pm.c:58:5: error: stack frame
 size of 1040 bytes in function 'mpc52xx_pm_prepare'
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Rob Herring <robh@kernel.org>, David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IuL2Xlc6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e
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

Apologies for the wrong report.  This did uncover three new issues for us:
https://github.com/ClangBuiltLinux/linux/issues/989
https://github.com/ClangBuiltLinux/linux/issues/990
https://github.com/ClangBuiltLinux/linux/issues/991

On Mon, Apr 13, 2020 at 2:29 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Dirk,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   8f3d9f354286745c751374f5f1fcafee6b3f3136
> commit: e33a814e772cdc36436c8c188d8c42d019fda639 scripts/dtc: Remove redundant YYLOC global declaration
> date:   2 weeks ago
> config: powerpc-randconfig-a001-20200413 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project dd030036f0a2ace74d0bd2242cfdbcf726ef565d)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout e33a814e772cdc36436c8c188d8c42d019fda639
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> arch/powerpc/platforms/52xx/mpc52xx_pm.c:58:5: error: stack frame size of 1040 bytes in function 'mpc52xx_pm_prepare' [-Werror,-Wframe-larger-than=]
>    int mpc52xx_pm_prepare(void)
>        ^
>    1 error generated.
> --
> >> arch/powerpc/platforms/embedded6xx/wii.c:195:7: error: attribute declaration must precede definition [-Werror,-Wignored-attributes]
>            if (!machine_is(wii))
>                 ^
>    arch/powerpc/include/asm/machdep.h:248:19: note: expanded from macro 'machine_is'
>                            __attribute__((weak));           \
>                                           ^
>    arch/powerpc/platforms/embedded6xx/wii.c:175:1: note: previous definition is here
>    define_machine(wii) {
>    ^
>    arch/powerpc/include/asm/machdep.h:243:23: note: expanded from macro 'define_machine'
>            struct machdep_calls mach_##name __machine_desc =
>                                 ^
>    <scratch space>:89:1: note: expanded from here
>    mach_wii
>    ^
>    1 error generated.
> --
> >> arch/powerpc/platforms/embedded6xx/mvme5100.c:135:58: error: incompatible pointer types passing 'phys_addr_t *' (aka 'unsigned long long *') to parameter of type 'u32 *' (aka 'unsigned int *') [-Werror,-Wincompatible-pointer-types]
>            early_read_config_dword(hose, 0, 0, PCI_BASE_ADDRESS_1, &pci_membase);
>                                                                    ^~~~~~~~~~~~
>    arch/powerpc/include/asm/pci-bridge.h:139:32: note: passing argument to parameter 'val' here
>                            int dev_fn, int where, u32 *val);
>                                                        ^
>    1 error generated.
> --
> >> lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                    umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                    ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:790:20: note: expanded from macro 'umul_ppmm'
>            : "=r" ((USItype) ph) \
>                    ~~~~~~~~~~^~
>    1 error generated.
> --
> >> lib/mpi/generic_mpih-mul2.c:36:13: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                    umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                    ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:790:20: note: expanded from macro 'umul_ppmm'
>            : "=r" ((USItype) ph) \
>                    ~~~~~~~~~~^~
>    1 error generated.
> --
> >> lib/mpi/generic_mpih-mul3.c:36:13: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                    umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                    ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:790:20: note: expanded from macro 'umul_ppmm'
>            : "=r" ((USItype) ph) \
>                    ~~~~~~~~~~^~
>    1 error generated.
> --
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:750:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:751:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:757:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:758:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:764:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:765:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:771:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:772:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:778:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:779:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:18: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:725:21: note: expanded from macro 'add_ssaaaa'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:22: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~
>    lib/mpi/longlong.h:726:20: note: expanded from macro 'add_ssaaaa'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:18: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:732:21: note: expanded from macro 'add_ssaaaa'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:22: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~
>    lib/mpi/longlong.h:733:20: note: expanded from macro 'add_ssaaaa'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:18: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:739:21: note: expanded from macro 'add_ssaaaa'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:22: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~
>    lib/mpi/longlong.h:740:20: note: expanded from macro 'add_ssaaaa'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:129:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                            umul_ppmm(n1, n0, d0, q);
>                                            ~~~~~~~~~~^~~~~~~~~~~~~~
>    lib/mpi/longlong.h:790:20: note: expanded from macro 'umul_ppmm'
>            : "=r" ((USItype) ph) \
>                    ~~~~~~~~~~^~
>    lib/mpi/mpih-div.c:137:17: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                            sub_ddmmss(n1, n0, n1, n0, 0, d0);
>                                            ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:750:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:137:21: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                            sub_ddmmss(n1, n0, n1, n0, 0, d0);
>                                            ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:751:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    fatal error: too many errors emitted, stopping now [-ferror-limit=]
>    20 errors generated.
>
> vim +/mpc52xx_pm_prepare +58 arch/powerpc/platforms/52xx/mpc52xx_pm.c
>
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   57
> e6c5eb9541f219 Rafael J. Wysocki       2007-10-18  @58  int mpc52xx_pm_prepare(void)
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   59  {
> 75ca399e82726f Grant Likely            2008-01-18   60          struct device_node *np;
> 66ffbe490b6156 Grant Likely            2008-01-24   61          const struct of_device_id immr_ids[] = {
> 66ffbe490b6156 Grant Likely            2008-01-24   62                  { .compatible = "fsl,mpc5200-immr", },
> 66ffbe490b6156 Grant Likely            2008-01-24   63                  { .compatible = "fsl,mpc5200b-immr", },
> 66ffbe490b6156 Grant Likely            2008-01-24   64                  { .type = "soc", .compatible = "mpc5200", }, /* lite5200 */
> 66ffbe490b6156 Grant Likely            2008-01-24   65                  { .type = "builtin", .compatible = "mpc5200", }, /* efika */
> 66ffbe490b6156 Grant Likely            2008-01-24   66                  {}
> 66ffbe490b6156 Grant Likely            2008-01-24   67          };
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   68          struct resource res;
> 75ca399e82726f Grant Likely            2008-01-18   69
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   70          /* map the whole register space */
> 66ffbe490b6156 Grant Likely            2008-01-24   71          np = of_find_matching_node(NULL, immr_ids);
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   72
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   73          if (of_address_to_resource(np, 0, &res)) {
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   74                  pr_err("mpc52xx_pm_prepare(): could not get IMMR address\n");
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   75                  of_node_put(np);
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   76                  return -ENOSYS;
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   77          }
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   78
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   79          mbar = ioremap(res.start, 0xc000); /* we should map whole region including SRAM */
> fb73538e10c7fc Dmitry Eremin-Solenikov 2010-06-11   80
> 75ca399e82726f Grant Likely            2008-01-18   81          of_node_put(np);
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   82          if (!mbar) {
> 75ca399e82726f Grant Likely            2008-01-18   83                  pr_err("mpc52xx_pm_prepare(): could not map registers\n");
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   84                  return -ENOSYS;
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   85          }
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   86          /* these offsets are from mpc5200 users manual */
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   87          sdram   = mbar + 0x100;
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   88          cdm     = mbar + 0x200;
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   89          intr    = mbar + 0x500;
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   90          gpiow   = mbar + 0xc00;
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   91          sram    = mbar + 0x8000;        /* Those will be handled by the */
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   92          sram_size = 0x4000;             /* bestcomm driver soon */
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   93
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   94          /* call board suspend code, if applicable */
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   95          if (mpc52xx_suspend.board_suspend_prepare)
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   96                  mpc52xx_suspend.board_suspend_prepare(mbar);
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   97          else {
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   98                  printk(KERN_ALERT "%s: %i don't know how to wake up the board\n",
> 2e1ee1f76684c5 Domen Puncer            2007-05-07   99                                  __func__, __LINE__);
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  100                  goto out_unmap;
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  101          }
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  102
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  103          return 0;
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  104
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  105   out_unmap:
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  106          iounmap(mbar);
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  107          return -ENOSYS;
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  108  }
> 2e1ee1f76684c5 Domen Puncer            2007-05-07  109
>
> :::::: The code at line 58 was first introduced by commit
> :::::: e6c5eb9541f2197a3ffab90b1c7a3250a9b51bf6 PM: Rework struct platform_suspend_ops
>
> :::::: TO: Rafael J. Wysocki <rjw@sisk.pl>
> :::::: CC: Linus Torvalds <torvalds@woody.linux-foundation.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004131704.6MH1jcq3%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnfKF5FqGENvv%3DBaN-S%2BV_pE%2BhLPhVWYuxNdNqhOPUWmA%40mail.gmail.com.
