Return-Path: <clang-built-linux+bncBDNOHVNAXAGRBVNL7H6QKGQEYXOOAOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAEE2C40C1
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 14:02:15 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id u3sf1548817pfm.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 05:02:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606309334; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tjh+zl8FHDQfMQcY8K717qnj5A4NcnknwAMutEm0RuXnfoMRRdzS6FQTyO7d6Qhsy+
         HNq6ZlwY6gHZuM1ejlPeF1CUkfQVfFUgPrb6NgNurytgHNmS1XV3cgG5F61WTlFMvC/5
         vctojbyWI5z7FQ7+7eR/t21GsctovNwUqdzO7fvNlbBFE1ThJtw/0sOusgH/i8cczrRU
         otyKQcZT7oKi+Mx49RQVqITPepYBPzDE9P4csW36ANHRNalZnkuwhtGun2iv7RLekLOb
         Cx2CbKqlDmqJOvke0/JDOV/hC1T/kKHwu/UqZQ/Vm4EhmpP7xUuzqh3cTZv5T0J/ggye
         BFRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=w5pWatp42FDNRF8VGncU3bLXlk2ouxDNOKYoS/XX5ow=;
        b=VPwY8++YpJY8qoHAHiRes0GoUeILeUx7PJcELlKmIldTTIQwdS+xbHBzzOkESrmvj+
         EK/fB/fclCdxSlU3nntkFwyUE6o5KXk7evmAREDRH1Icr6vxShzDp8aiTYmAvYa4givC
         QC/6fRJxuzpxhlE2ihnZJ3Ybb/12ev0Sod26He9MBbkRAME+DaSaZVfQR5fJhFZ8/hqR
         KSvHDfnXpuDhUA5UGcjRt0uQkApSRqmujXTio10TZJEcumGlglPfU8MZ84fa/EEvcg8L
         K3N5QDUu6Bmzw0zzuJfxc+DISo6Ui3AjBPt3cHjvz5Nquz9wdmqG4T/+NAHWpkM1gGup
         Rwew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KsqDdSuc;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w5pWatp42FDNRF8VGncU3bLXlk2ouxDNOKYoS/XX5ow=;
        b=YgVScmqfhlfMSqVPAeeZFXyZ7xN7jbh6K27bGytfDW/oKW9bYLhAljxOE8ESF+cAgn
         PDFslgElaS0hEY/DemOLb1hBbmTS7NsJqE0BV3VcAPwFb0rJO2IDCtND2A8GJm/CmCxt
         UcxYrdQHymnV7vupMRsCdPv+tdpkd1T7AD42VSzA4rrHMxbek+sFpS6Klh/HewaK0t3/
         9TEzZiTAsZwfbF4Ieix6JUgR9mR82F+CNonu2WTY2L6Hc9K1HZqJ9V0BMnNMQvpatKGo
         tfeCdt4xoAPAM7GTlOb/ke1k6rkL0otU7DmpZ2ivFGHDsyqksK/jv9WM4EbgUbq7mo6+
         jYmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w5pWatp42FDNRF8VGncU3bLXlk2ouxDNOKYoS/XX5ow=;
        b=u/nSUO/zAYSQBQ88UonhSxfpjf0M3Ep/f2vW+5QC0l3Qhl1XS3iKSY81+4mNJNAXtS
         Xxs1rzsodpAAlVs6Ri2dun3TLv6+fILeYl3KIsEtodNp6apuIlLRPQlEKH/8X8ynRRZe
         HVqS0gPesWciZq6mXlJ+lDrGJbqV2Oc4edfy692ZvAx+i4TEUuogdNZhuf1TX+nPmRdz
         MpXJMLt9/Q0oJIyVth8l14LjjjUqaLANWG0gN11dmbktGN5CQIRF1BMDWWggI8pu2C7k
         7r4ruRL994ywxanLKRc+d41PTU5zYYgXT8xyOWQGzCVz3qclCi3iqipLP+ONn6p3ZXej
         GKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w5pWatp42FDNRF8VGncU3bLXlk2ouxDNOKYoS/XX5ow=;
        b=bh5BpfrQ97B7Bc028JG986tD9KcYIQKZ5DLxzbpAdiRFrxhqMHS/gaVhPBLCNgsI+g
         zXKOCSWpupbFEywn258iHrq6oGFr33XF4KZFNc4kDNQAo9SKF5mA6p2Rd+WJX+h2zyc8
         xfPa593uNLkSxAcdRBdsjFmG5xo/6m+DS+kDW66PVSGRWvCpsSl/X7sG2IQyesUrsel/
         zKPwkDNMhQkaHHa8nL1x+v2ToCl4VYuTU422wzV2KhhLXHcp40cArNPo3GBiGt63XcXv
         26IAtPkqFob6+eZlwXSNtiZP5reTZrlqnIb2KW1DeoekvmMFUj5IhbuJqaZz9COIpg3J
         ZtGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530O7Dx4gDQP/twgaZilYghvBIoKIeHMOTiuz8omflf6HrFOlTGz
	1GlRo6hXXBIFoSoJl49cnq4=
X-Google-Smtp-Source: ABdhPJyZ1SpxQSQ1A9STPFD1j+ETK/qe9VgDuPYsHw3QLvofma+4AaSr/C9zRd8EeMXBxSaT0lPHWA==
X-Received: by 2002:a17:902:d907:b029:da:3483:3957 with SMTP id c7-20020a170902d907b02900da34833957mr460481plz.38.1606309334130;
        Wed, 25 Nov 2020 05:02:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5909:: with SMTP id f9ls778859pgu.10.gmail; Wed, 25 Nov
 2020 05:02:13 -0800 (PST)
X-Received: by 2002:a63:1b11:: with SMTP id b17mr2859411pgb.1.1606309333338;
        Wed, 25 Nov 2020 05:02:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606309333; cv=none;
        d=google.com; s=arc-20160816;
        b=l4oW01qUAl7t77xEIOAz9SqPVh5RJjpY2oWgWO145uT5Kg1JkAG4krlcI1QR2MSu/Z
         ZYb6MXid3dq9cTntimb4dS9T9dGLkEshUPpWRdiNgaEp3KxRgp6ODumOThJ41j6b49nY
         kHD+swfi7+L6OaepbxVpRVG1std+WG7L1GSjLq9tKY+h1YMMeUwm5d2alaBLKVCjvvVz
         TAHrNVI0ghueXzAT/1hYw/3BzBYo3whWLKsARUscMtdPtOA7Xiek5HXOMkSM7KXEwik4
         v8WjERQMk2xV2YO9LJMp9ALN8v4IIKWipGtzIEeSQjsbMiEoA3Ou4hJINhpnf+4TgqRf
         GN2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ATan0gymAo+S4kUjhoZzwHhviZm/A30ZFQsZE+zprVM=;
        b=qc1r35t5X1Xq4vnoyzLYNHommpY3/pgw13ym/Qyl489it5ejvbauzSKOJAhCiZ+OmY
         xiRu2q2V8hF2XT+gfi+wwLhml/l+Fd/K2azYErPBAeQXJaLpw9980htjM/HSuNC7mR2q
         qGimhhvrumSG5CdcIiB061tmAD+qU0r2t2mpIswYkAIbULsuayVeA4Gszksz9f95VKFK
         obc+NlZJYapwPR82El86gF/PmpMjdQMPutPdrrbBixGvb053MvOMyKwBTfVA/8XmTFfl
         oa/AiqnJyzlHys15UM9nEPZZ+EjJwQ1EkX71+uha4RcB5XffA52LnsbnTNgcG2+qbC4u
         z0Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KsqDdSuc;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id x24si118866pll.5.2020.11.25.05.02.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 05:02:13 -0800 (PST)
Received-SPF: pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id l2so4265995qkf.0
        for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 05:02:13 -0800 (PST)
X-Received: by 2002:a05:620a:15f7:: with SMTP id p23mr3021782qkm.98.1606309332365;
        Wed, 25 Nov 2020 05:02:12 -0800 (PST)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
        by smtp.gmail.com with ESMTPSA id t126sm2350334qkc.76.2020.11.25.05.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 05:02:11 -0800 (PST)
Date: Wed, 25 Nov 2020 08:02:09 -0500
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v6 1/5] counter: Internalize sysfs interface code
Message-ID: <X75V0U6lHiSCo0RZ@shinobu>
References: <950660d49af7d12b09bc9d3b1db6f8ff74209c26.1606075915.git.vilhelm.gray@gmail.com>
 <202011250429.NVAm6jT3-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YeZ1+eQwIFiscu8X"
Content-Disposition: inline
In-Reply-To: <202011250429.NVAm6jT3-lkp@intel.com>
X-Original-Sender: vilhelm.gray@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KsqDdSuc;       spf=pass
 (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::743
 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;       dmarc=pass
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


--YeZ1+eQwIFiscu8X
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Nov 25, 2020 at 04:55:46AM +0800, kernel test robot wrote:
> Hi William,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on stm32/stm32-next]
> [also build test WARNING on linux/master linus/master v5.10-rc5 next-20201124]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/William-Breathitt-Gray/Introduce-the-Counter-character-device-interface/20201123-043634
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32.git stm32-next
> config: powerpc-randconfig-r016-20201124 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project df9ae5992889560a8f3c6760b54d5051b47c7bf5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://github.com/0day-ci/linux/commit/1bc8c3bb021f3736c23d97f1a965935821f0ac5a
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review William-Breathitt-Gray/Introduce-the-Counter-character-device-interface/20201123-043634
>         git checkout 1bc8c3bb021f3736c23d97f1a965935821f0ac5a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from include/linux/iopoll.h:14:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:170:1: note: expanded from here
>    __do_insb
>    ^
>    arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
>    #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/counter/ti-eqep.c:15:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:172:1: note: expanded from here
>    __do_insw
>    ^
>    arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
>    #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/counter/ti-eqep.c:15:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:174:1: note: expanded from here
>    __do_insl
>    ^
>    arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
>    #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                           ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/counter/ti-eqep.c:15:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:176:1: note: expanded from here
>    __do_outsb
>    ^
>    arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
>    #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/counter/ti-eqep.c:15:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:178:1: note: expanded from here
>    __do_outsw
>    ^
>    arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
>    #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>    In file included from drivers/counter/ti-eqep.c:15:
>    In file included from include/linux/regmap.h:20:
>    In file included from include/linux/iopoll.h:14:
>    In file included from include/linux/io.h:13:
>    In file included from arch/powerpc/include/asm/io.h:604:
>    arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>    DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                    __do_##name al;                                 \
>                    ^~~~~~~~~~~~~~
>    <scratch space>:180:1: note: expanded from here
>    __do_outsl
>    ^
>    arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
>    #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
> >> drivers/counter/ti-eqep.c:115:17: warning: unused variable 'ti_qep_t2c_functions_map' [-Wunused-const-variable]
>    static const u8 ti_qep_t2c_functions_map[] = {
>                    ^
>    13 warnings generated.
> 
> vim +/ti_qep_t2c_functions_map +115 drivers/counter/ti-eqep.c
> 
>    114	
>  > 115	static const u8 ti_qep_t2c_functions_map[] = {
>    116	};
>    117	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

This ti_qep_t2c_functions_map array is left over from some code I was
testing. It's not used at all -- I simply forgot to remove it -- so I'll
make sure to take it out in the next patchset. I'll give this v6
patchset some more time for people to review and comment before I submit
the v7 revision.

William Breathitt Gray

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X75V0U6lHiSCo0RZ%40shinobu.

--YeZ1+eQwIFiscu8X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl++VcQACgkQhvpINdm7
VJIJug/9Gh949zfimKUAf56BUmx5+4hxgSplAK40o3a3b4TOMo6PKETRf6RWR+dz
0n0KXy7EoO1XCov7yW/pzj6VMyzrW7Qt5aEdsR1fE1Tjz6Svzs3Szqn+YnKWAiOX
VClq0pNRlfMKrSdm+YI6a6+oZY04jjqSZ+tA8gEpfm87oavNLHuVYVGvVp+U3kRi
XmUnHlmdwVnkbR35GSGPSpiNQX3+cPXjGFlR7gbyNmxgwOU9ZeZ9O+/5DQvaCCng
w2dP33vfpxPyLtDTqXjL88LBzXF4utkvArmX1RYVYfnmcjSlbodMIYNpbZxQh4k/
UWmvNh3uxCcDHEHYTEbcsNUmT8Vpmy+3coLWji0bGufnrTy9Kramvxxg5d5sVcSM
/644MrumVRP4GsfknRGN0hmvxDdZ+53Zo93fyhfT2W/W9mrKvaXcQ0+K62ZnONCx
BY1sYNBU/W8Aqsgocwu5cX6gUXm5UKU1wJ9+98z7Byle0CPCzIb+U7EMffumkGKs
2MxeJ7Q3qZDnbfGtfQWe9R9GBczHeocH+xpOecbekEp0RDCwwLDqxK7yU23MDTy6
bJcyizirUvOyh6xKnE25/ldV2NZGwA1BiLg6m6sWc9TvLdECzjJ2truYsmnjm7HD
4PQoQ0dXv40fZBBIofdJgrpbc7aIz6vGjbCK4l5ffU2stYp+fd0=
=iDqX
-----END PGP SIGNATURE-----

--YeZ1+eQwIFiscu8X--
