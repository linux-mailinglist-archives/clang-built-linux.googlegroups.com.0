Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMER6H6AKGQEAJ2NDQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDAC2A0C1B
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 18:09:05 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id j24sf2958213oie.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 10:09:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604077744; cv=pass;
        d=google.com; s=arc-20160816;
        b=u+IyubQ1igDrO36JiyRXHcyWi/DJlNdaPuwug3LrOYj6RFXBEwCh0VG+CFpZ6CckCT
         BDsseaa+cb/Bm25hAMO+fAqkXuyrPhHyHiybWsXn5nFKa1+kLZ7c+qEMutkAMMNyUOaD
         5E6QnzuKyIo8GQ/V20eNYDRx4gM+ht+8/VoRsQRihky+1VAMnuN0w2aelpfBFqpltAmm
         v4swFVZIsaRBsu5sXeZo6qYlW2h9qPenqG49iwsAq/iWvCtScpH6NZVd2YfKs/s5jt84
         0pYe3E4+vitwENirYsGq+02d2IXPNK3/4oTbbNUPi7GYQJ/ZdCpFqKMT49A82BvrdLW7
         a/qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=qYg2ffde1u/os8YjZwM/gWiCXGftUkzxqq8l4loXcQA=;
        b=ENjlrqZc71r7qStiJs3agTtk++GN8xxCnfTe6hyxJq3V8sKUO6BS3/YRq21r0k7dpk
         8fKlGZ5NVRXFU8JO8P6UcYy4zo4ISgdSFkWhHhXioSqfTkVUIVI77PwaJszHZiIh9/UN
         nPETXWap5qZAoBif98IVvwxh2ivupFpSJbmBgV52Z5fj1zB8G5nPsSm+vgTaXnzofJm3
         nr9JU1TUj3R9nIjh7BK9UK1ViFI+9BqcTmSPToBRRFBdZICrtfqvoANM846ezNMDw5Cd
         UxH65cjUZLaiKB7y2VWz/YKUCrFnooXlRhdWcIJOS9pwtE/aed+47dSIa3T0JMpG/tF7
         yxGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qYg2ffde1u/os8YjZwM/gWiCXGftUkzxqq8l4loXcQA=;
        b=Tork5ccVdHG0MhAiIheO1qU6k8DuJKuuAupv/IY8gWZFMPpQm9aRMnt5cdDyIOl0Tu
         1O+LAmqqHfdha7LgJhPIK1p1iGJyPIiCclorl2eBobPLTpUYB3JFLQ5XYzxISHhmmfd4
         M2/fZiDCVBkny4EdloK4hVEz7J+62YR9GIfVqEdUV2g75HsSyriQXzeC9FV9f5OFyr2v
         lWM0tPoWDDjwdqgILmbxGbD0AQZc/fB7Wq0s3WZvU2pVia6QTx3VcueejSyAqY8jCcwA
         4m+E3DhrKmnIkxcmJFBltlUfnd73GsxVdRvqKrvzAAfhUecmyDTF7hiU5zBWWTvfq1py
         Z1Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qYg2ffde1u/os8YjZwM/gWiCXGftUkzxqq8l4loXcQA=;
        b=tyJZBY+ytNaEmJiNmLtA4oqEqMQ+Kp0o8D7KOL02vP+XANNE1Rjn2OUcYFh46g93bH
         mR+iGQr0JWW4efcB9nEYSmdCZZU7Uj7RTD6wYg86GmFSVA/pYb/No05McFX7NQMH3onz
         bAlpZVvUfFrzxbYmGSY1wUCUqrYcS0syVWrDEoejepi25nBvvFL1xHOtUHRevZAKEi/9
         C1iFRhHid1ohfI+5MeYD6OdFCQ3JdhD+qkggqbO6zxGeN7e1ngCpDRc9KNOctqiTOtOO
         Y7KannWEyoY3mLk1dfe+mjDJnJPorRuvR6puXzTXaN+mIZ4KpWpWZtnwoabWJjKGKq2L
         ng6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XIJ+hSFJHZ2RaJg8u7IOcdGTtJtf3f0jcH/h3tIrCWdiM2pWt
	/K4YBb/N7TSiCYPywKA1Ub8=
X-Google-Smtp-Source: ABdhPJx3V8nufK3/wSG9ORs7yRNJmFaVfJaEY3HYklyeR7wdjKZM/Jo5D7lPk+dXMGfK624lT4+zqw==
X-Received: by 2002:a4a:8f15:: with SMTP id e21mr2707215ool.8.1604077744074;
        Fri, 30 Oct 2020 10:09:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1a04:: with SMTP id a4ls1738234oia.6.gmail; Fri, 30 Oct
 2020 10:09:03 -0700 (PDT)
X-Received: by 2002:aca:4f55:: with SMTP id d82mr2324598oib.172.1604077743721;
        Fri, 30 Oct 2020 10:09:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604077743; cv=none;
        d=google.com; s=arc-20160816;
        b=BrEVDh+OPNFGROzh48+XRE05ngVyKHAt93YtAic2dtc2Wzo3hOZvLlhMXJumyR/p8R
         5sufTWRX8nt0NWxV4jiR3tLA/U/oUxcSRDgmzXzVxd/tbXp3kMp95agrRtfx9Hj7bPBR
         oBM1s+lYnkXdtibKutm2ZKkXv4kKoydLAg329icCB11Fr6qiOMCt0+U4PMV1UXEikP3D
         /wWAIhxWwQEVsfkKuRuDDwmRzzQjMF/i+FD3jEnIqa4wXygxWqEchcAauT5aocwMNyIh
         L8/rsqfsVT5TrAaZHG96KSKZBep/pjqMHWp1TiAMu0U1l061X6ULxPew5Is4cbhnm7A+
         p+Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=uJ3MmbTMM3rg3pybJeEmpkTHlzPX6rlDM/cl9CmknhI=;
        b=go7dzu4fBI8JGVGOAAiM4Ch8Aml1U/oVZ5gNzlVsNiovp7WiLcd32RlBep3WZoRlKl
         0KlhOmH6Uy0IAZ6bVCepsWX4QUezZieyqvM/KRN0qzLpKrQNvLOOlgtzVsNaD+uDQ98L
         lmUojK0GXrhEuEoPmj2ruzXzTMYMwso7cHi1tegTQ6fs/AVBlIdchEAXylnCR0OyQKtt
         bTcpB1iA3FVhsrCNM5/aZbnv317NcovdFh1HHS21NvSte2VWm8SeeGswPm6CFCtg9CH8
         lBCxhZ4OYmpOaWRpxJduOVGpbn7aAw7MhjhJ2Wcb/2KJu/4cbGxvuGFVuW/UVKXAWRGk
         EIVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id i23si626072otk.5.2020.10.30.10.09.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 10:09:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: tJWu9gI6thcZt0jK0/bHli480Gmvh1eUe7REQl4vSSvDFvrB3KYo55JGCM/2cRY0o0kkRFPtVw
 Aov+KeDIvzjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="168767417"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; 
   d="scan'208";a="168767417"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 10:09:02 -0700
IronPort-SDR: i0Y6wd8dTGLXXQKn4+vOxH23rosXZ3J0hO6vfehpHsPhG1q1gevDZRviG4OU2I3QdZ0mKP0ERn
 D5wqBCs/fILg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; 
   d="scan'208";a="304992077"
Received: from lkp-server02.sh.intel.com (HELO fcc9f8859912) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 30 Oct 2020 10:08:59 -0700
Received: from kbuild by fcc9f8859912 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kYXta-0000Dy-S6; Fri, 30 Oct 2020 17:08:58 +0000
Date: Sat, 31 Oct 2020 01:08:09 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org
Subject: [asm-generic:asm-generic-timers 1/15] arch/arm/Kconfig:271: syntax
 error
Message-ID: <202010310100.VJcGP2Sk-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.gi=
t asm-generic-timers
head:   9e49c5debd62585e5b2097a625d18425d6ce513b
commit: 3621395d9bdc98541ffb77efdf99330a998988cd [1/15] ARM: remove ebsa110=
 platform
config: arm-randconfig-r036-20201030
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project fa5a13=
276764a2657b3571fa3c57b07ee5d2d661)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/arnd/asm-generic.=
git/commit/?id=3D3621395d9bdc98541ffb77efdf99330a998988cd
        git remote add asm-generic https://git.kernel.org/pub/scm/linux/ker=
nel/git/arnd/asm-generic.git
        git fetch --no-tags asm-generic asm-generic-timers
        git checkout 3621395d9bdc98541ffb77efdf99330a998988cd
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Darm  randconfig
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Darm=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/arm/Kconfig:271: syntax error
   arch/arm/Kconfig:270: invalid statement
   arch/arm/Kconfig:271: invalid statement
   arch/arm/Kconfig:272: invalid statement
   arch/arm/Kconfig:273: invalid statement
   arch/arm/Kconfig:274: invalid statement
   arch/arm/Kconfig:275: unknown statement "Please"
   arch/arm/Kconfig:276:warning: ignoring unsupported character '.'
   arch/arm/Kconfig:276: unknown statement "location"
   make[2]: *** [scripts/kconfig/Makefile:71: oldconfig] Error 1
   make[1]: *** [Makefile:604: oldconfig] Error 2
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'oldconfig' not remade because of errors.
--
>> arch/arm/Kconfig:271: syntax error
   arch/arm/Kconfig:270: invalid statement
   arch/arm/Kconfig:271: invalid statement
   arch/arm/Kconfig:272: invalid statement
   arch/arm/Kconfig:273: invalid statement
   arch/arm/Kconfig:274: invalid statement
   arch/arm/Kconfig:275: unknown statement "Please"
   arch/arm/Kconfig:276:warning: ignoring unsupported character '.'
   arch/arm/Kconfig:276: unknown statement "location"
   make[2]: *** [scripts/kconfig/Makefile:71: olddefconfig] Error 1
   make[1]: *** [Makefile:604: olddefconfig] Error 2
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'olddefconfig' not remade because of errors.

vim +271 arch/arm/Kconfig

60460abffc71523 Seung-Woo Kim     2013-02-06  163 =20
75e7153abd220f1 Ralf Baechle      2007-02-09  164  config SYS_SUPPORTS_APM_=
EMULATION
75e7153abd220f1 Ralf Baechle      2007-02-09  165  	bool
75e7153abd220f1 Ralf Baechle      2007-02-09  166 =20
bc581770cfdd8c1 Linus Walleij     2009-09-15  167  config HAVE_TCM
bc581770cfdd8c1 Linus Walleij     2009-09-15  168  	bool
bc581770cfdd8c1 Linus Walleij     2009-09-15  169  	select GENERIC_ALLOCATO=
R
bc581770cfdd8c1 Linus Walleij     2009-09-15  170 =20
e119bfff1f102f8 Russell King      2010-01-10  171  config HAVE_PROC_CPU
e119bfff1f102f8 Russell King      2010-01-10  172  	bool
e119bfff1f102f8 Russell King      2010-01-10  173 =20
ce816fa88cca083 Uwe Kleine-K=C3=B6nig  2014-04-07  174  config NO_IOPORT_MA=
P
5ea817699400348 Al Viro           2007-02-11  175  	bool
5ea817699400348 Al Viro           2007-02-11  176 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  177  config SBUS
^1da177e4c3f415 Linus Torvalds    2005-04-16  178  	bool
^1da177e4c3f415 Linus Torvalds    2005-04-16  179 =20
f16fb1ecc5a1cb2 Russell King      2007-04-28  180  config STACKTRACE_SUPPOR=
T
f16fb1ecc5a1cb2 Russell King      2007-04-28  181  	bool
f16fb1ecc5a1cb2 Russell King      2007-04-28  182  	default y
f16fb1ecc5a1cb2 Russell King      2007-04-28  183 =20
f16fb1ecc5a1cb2 Russell King      2007-04-28  184  config LOCKDEP_SUPPORT
f16fb1ecc5a1cb2 Russell King      2007-04-28  185  	bool
f16fb1ecc5a1cb2 Russell King      2007-04-28  186  	default y
f16fb1ecc5a1cb2 Russell King      2007-04-28  187 =20
7ad1bcb25c5623f Russell King      2006-08-27  188  config TRACE_IRQFLAGS_SU=
PPORT
7ad1bcb25c5623f Russell King      2006-08-27  189  	bool
cb1293e2f594558 Arnd Bergmann     2015-05-26  190  	default !CPU_V7M
7ad1bcb25c5623f Russell King      2006-08-27  191 =20
f0d1b0b30d250a0 David Howells     2006-12-08  192  config ARCH_HAS_ILOG2_U3=
2
f0d1b0b30d250a0 David Howells     2006-12-08  193  	bool
f0d1b0b30d250a0 David Howells     2006-12-08  194 =20
f0d1b0b30d250a0 David Howells     2006-12-08  195  config ARCH_HAS_ILOG2_U6=
4
f0d1b0b30d250a0 David Howells     2006-12-08  196  	bool
f0d1b0b30d250a0 David Howells     2006-12-08  197 =20
4a1b573346ee0d6 Eduardo Valentin  2013-06-13  198  config ARCH_HAS_BANDGAP
4a1b573346ee0d6 Eduardo Valentin  2013-06-13  199  	bool
4a1b573346ee0d6 Eduardo Valentin  2013-06-13  200 =20
a5f4c561b3b19a9 Stefan Agner      2015-08-13  201  config FIX_EARLYCON_MEM
a5f4c561b3b19a9 Stefan Agner      2015-08-13  202  	def_bool y if MMU
a5f4c561b3b19a9 Stefan Agner      2015-08-13  203 =20
b89c3b165fbec60 Akinobu Mita      2006-03-26  204  config GENERIC_HWEIGHT
b89c3b165fbec60 Akinobu Mita      2006-03-26  205  	bool
b89c3b165fbec60 Akinobu Mita      2006-03-26  206  	default y
b89c3b165fbec60 Akinobu Mita      2006-03-26  207 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  208  config GENERIC_CALIBRATE=
_DELAY
^1da177e4c3f415 Linus Torvalds    2005-04-16  209  	bool
^1da177e4c3f415 Linus Torvalds    2005-04-16  210  	default y
^1da177e4c3f415 Linus Torvalds    2005-04-16  211 =20
a08b6b7968e7a6a Al Viro           2005-09-06  212  config ARCH_MAY_HAVE_PC_=
FDC
a08b6b7968e7a6a Al Viro           2005-09-06  213  	bool
a08b6b7968e7a6a Al Viro           2005-09-06  214 =20
5ac6da669e2476d Christoph Lameter 2007-02-10  215  config ZONE_DMA
5ac6da669e2476d Christoph Lameter 2007-02-10  216  	bool
5ac6da669e2476d Christoph Lameter 2007-02-10  217 =20
c7edc9e326d53ca David A. Long     2014-03-07  218  config ARCH_SUPPORTS_UPR=
OBES
c7edc9e326d53ca David A. Long     2014-03-07  219  	def_bool y
c7edc9e326d53ca David A. Long     2014-03-07  220 =20
58af4a244fa9f7e Rob Herring       2012-03-20  221  config ARCH_HAS_DMA_SET_=
COHERENT_MASK
58af4a244fa9f7e Rob Herring       2012-03-20  222  	bool
58af4a244fa9f7e Rob Herring       2012-03-20  223 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  224  config GENERIC_ISA_DMA
^1da177e4c3f415 Linus Torvalds    2005-04-16  225  	bool
^1da177e4c3f415 Linus Torvalds    2005-04-16  226 =20
^1da177e4c3f415 Linus Torvalds    2005-04-16  227  config FIQ
^1da177e4c3f415 Linus Torvalds    2005-04-16  228  	bool
^1da177e4c3f415 Linus Torvalds    2005-04-16  229 =20
13a5045d4ee5a24 Rob Herring       2012-02-07  230  config NEED_RET_TO_USER
13a5045d4ee5a24 Rob Herring       2012-02-07  231  	bool
13a5045d4ee5a24 Rob Herring       2012-02-07  232 =20
034d2f5af1b9766 Al Viro           2005-12-19  233  config ARCH_MTD_XIP
034d2f5af1b9766 Al Viro           2005-12-19  234  	bool
034d2f5af1b9766 Al Viro           2005-12-19  235 =20
dc21af99fadcfa0 Russell King      2011-01-04  236  config ARM_PATCH_PHYS_VI=
RT
c1becedc8871645 Russell King      2011-08-10  237  	bool "Patch physical to=
 virtual translations at runtime" if EMBEDDED
c1becedc8871645 Russell King      2011-08-10  238  	default y
b511d75d6150892 Nicolas Pitre     2011-02-21  239  	depends on !XIP_KERNEL =
&& MMU
dc21af99fadcfa0 Russell King      2011-01-04  240  	help
111e9a5ce66e64c Russell King      2011-05-12  241  	  Patch phys-to-virt an=
d virt-to-phys translation functions at
111e9a5ce66e64c Russell King      2011-05-12  242  	  boot and module load =
time according to the position of the
111e9a5ce66e64c Russell King      2011-05-12  243  	  kernel in system memo=
ry.
dc21af99fadcfa0 Russell King      2011-01-04  244 =20
111e9a5ce66e64c Russell King      2011-05-12  245  	  This can only be used=
 with non-XIP MMU kernels where the base
daece59689e76ed Nicolas Pitre     2011-08-12  246  	  of physical memory is=
 at a 16MB boundary.
dc21af99fadcfa0 Russell King      2011-01-04  247 =20
c1becedc8871645 Russell King      2011-08-10  248  	  Only disable this opt=
ion if you know that you do not require
c1becedc8871645 Russell King      2011-08-10  249  	  this feature (eg, bui=
lding a kernel for a single machine) and
c1becedc8871645 Russell King      2011-08-10  250  	  you need to shrink th=
e kernel to the minimal size.
dc21af99fadcfa0 Russell King      2011-01-04  251 =20
c334bc150524f83 Rob Herring       2012-03-04  252  config NEED_MACH_IO_H
c334bc150524f83 Rob Herring       2012-03-04  253  	bool
c334bc150524f83 Rob Herring       2012-03-04  254  	help
c334bc150524f83 Rob Herring       2012-03-04  255  	  Select this when mach=
/io.h is required to provide special
c334bc150524f83 Rob Herring       2012-03-04  256  	  definitions for this =
platform.  The need for mach/io.h should
c334bc150524f83 Rob Herring       2012-03-04  257  	  be avoided when possi=
ble.
c334bc150524f83 Rob Herring       2012-03-04  258 =20
0cdc8b921d68817 Nicolas Pitre     2011-09-02  259  config NEED_MACH_MEMORY_=
H
1b9f95f8ade9efc Nicolas Pitre     2011-07-05  260  	bool
1b9f95f8ade9efc Nicolas Pitre     2011-07-05  261  	help
0cdc8b921d68817 Nicolas Pitre     2011-09-02  262  	  Select this when mach=
/memory.h is required to provide special
0cdc8b921d68817 Nicolas Pitre     2011-09-02  263  	  definitions for this =
platform.  The need for mach/memory.h should
0cdc8b921d68817 Nicolas Pitre     2011-09-02  264  	  be avoided when possi=
ble.
1b9f95f8ade9efc Nicolas Pitre     2011-07-05  265 =20
1b9f95f8ade9efc Nicolas Pitre     2011-07-05  266  config PHYS_OFFSET
974c07249b06d94 Nicolas Pitre     2011-12-02  267  	hex "Physical address o=
f main memory" if MMU
c6f54a9b3962609 Uwe Kleine-K=C3=B6nig  2014-07-23  268  	depends on !ARM_PA=
TCH_PHYS_VIRT
974c07249b06d94 Nicolas Pitre     2011-12-02  269  	default DRAM_BASE if !M=
MU
3621395d9bdc985 Arnd Bergmann     2020-09-24  270  	default 0x00000000 ARCH=
_FOOTBRIDGE
c6f54a9b3962609 Uwe Kleine-K=C3=B6nig  2014-07-23 @271  	default 0x10000000=
 if ARCH_OMAP1 || ARCH_RPC
c6f54a9b3962609 Uwe Kleine-K=C3=B6nig  2014-07-23  272  	default 0x20000000=
 if ARCH_S5PV210
b8824c9a54bb380 H Hartley Sweeten 2015-06-15  273  	default 0xc0000000 if A=
RCH_SA1100
111e9a5ce66e64c Russell King      2011-05-12  274  	help
1b9f95f8ade9efc Nicolas Pitre     2011-07-05  275  	  Please provide the ph=
ysical address corresponding to the
1b9f95f8ade9efc Nicolas Pitre     2011-07-05  276  	  location of main memo=
ry in your system.
cada3c0841e1dea Russell King      2011-01-04  277 =20

:::::: The code at line 271 was first introduced by commit
:::::: c6f54a9b39626090c934646f7d732e31b70ffce7 ARM: 8113/1: remove remaini=
ng definitions of PLAT_PHYS_OFFSET from <mach/memory.h>

:::::: TO: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
:::::: CC: Russell King <rmk+kernel@arm.linux.org.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202010310100.VJcGP2Sk-lkp%40intel.com.
