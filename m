Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2V7ZCAAMGQEQ53YKCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id DA438306B06
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 03:22:35 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id z20sf1951670ooe.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 18:22:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611800554; cv=pass;
        d=google.com; s=arc-20160816;
        b=qB1aJ2L0BC3sYonJUpYSJhCZCVr0HlZ3Ahh+p1V4SdarCEwCEaI5Wq8LytMK09Vjkx
         LN3wei2g8yXRFfV+op/y8Uh/ndTM0mTi5a7jX87acDRu1B7pYI9Sd6HwBcnWeXB9HUfj
         Eynah1gZV4ojuclj61x2oF/F0Hy3LH9feZ/qEeJbK5m9dmr68OVJfBg34jXdHFo8ja97
         p6HrGm+sJzoeVCodmbH0nxTbnw0flXo9r/L/hSgSmkoLxYeOAALQfFCRhWlsYjLNfV/j
         U0QMsoFyJN17ILySxw4IAOy+7ZITOyjuJnUJQLv/v337RvM4L89n3tPjUiN2w3YqIHsj
         xbPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=6h7NCrs150MEg82EdNs6d0fcLPXd3HMwi7bvIOt+s6E=;
        b=iJY5b4SiPzbQP34rVi12Xemqkz0iM4XF6VydtONuv1dKRtQ23gFaBhfwC5qoQWJ1+0
         5AJ8YZE0w62WBsLKjkV3tGYp1ch4J3y/tqk1TKGIG0GwLik/wOkdrs9PG+13r9O8QWMn
         06b4eYh+/Ym/SkU/vsQPyRNKFeaRPgkoyS3nj8cwNAPdItCjXExjH3rE5XSUH/wSb3rs
         6tBHDl0ggMY496Hy8DJuwH6YWSRHSasqD/6DXiUC6OT2UbGKk9Nw/g48qf0UoAArjZL5
         GnB8ocP6CUeXp9G+Alvr4IwDbgoRk3UJ+nCd9Vg5+jUuN9r6tXyZM/N45aF1QVOxajoc
         63RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6h7NCrs150MEg82EdNs6d0fcLPXd3HMwi7bvIOt+s6E=;
        b=pn7geRSyYafognrLVnxXhX6np/74TVjJ8SfltVO5MIr8Z4xSXh7QtZkSCQ6PF+E8Ry
         y9ioHEzW988JDsrJZfgTIVn5pPpgKlrE58WPssrYf6LB8g5pGUvtw5wJlL6cxupJtuKD
         Wf4cYIyjonj4LAeHp2Xj3kx8TwZc2COZfQCl5JEnUieAdD6Xf3z9eXCR7kTKsEJNSzao
         EKQhwVSi2wKS4uueOxIewBqC66bu3Hl/ClIVjT0+w0otGe17g8mlC81Gw2BZh1gxcqrE
         A5sEAGWEuwO3uYLk/8N5qYG1wrXzNhuAicEU9erVmVJYxHEzoEE2Ja+805TUDASEHqmk
         RJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6h7NCrs150MEg82EdNs6d0fcLPXd3HMwi7bvIOt+s6E=;
        b=n1bH/tWvpKxLliHjoVmgGF+Qa1VqbWNjisuucbQQ2yChkdXPY7uSFujmcJzYdkMYj6
         3yF3rSPIcIC0sMAzQFcW+mWoVBL20/ZSZ5GLYe26fub6oD1R7VlrUdWRvPqXBL7Sktkd
         M7wh+aILc/fsk0yQnpq1wI6SRrfMftySqf44CX682hK/tgaYPI/0pp++atRY262/v1VH
         4pNp8fEY+PAwnjT4QvBHB8Ow/T+vi2zmgqoaBFAmt3hNTNsrkdAZXfFzkuJamPCUf3rN
         m+aQUWLd5+4cAV9aU2xcvEPMtTR7rF4vxKp3BRZkFtMMf/GHwo+C2pefM79wek7GToAy
         iO9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531neOUxT3F2NbvzyWOjQ4X73SSAD1qKrGq2axpJ+snBwMQCwKln
	fUpegVru7jd832AZ1svHW4o=
X-Google-Smtp-Source: ABdhPJy5pjC2oUxytYq06Jw4/U7RvR42uqDPZ5HDL1l4CyG+4qM/Rhk5Y6xzfmykI0UwnPopjw4ZPQ==
X-Received: by 2002:a9d:3625:: with SMTP id w34mr9597029otb.330.1611800554352;
        Wed, 27 Jan 2021 18:22:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls959239oic.0.gmail; Wed, 27 Jan
 2021 18:22:34 -0800 (PST)
X-Received: by 2002:a05:6808:115:: with SMTP id b21mr5149310oie.16.1611800553844;
        Wed, 27 Jan 2021 18:22:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611800553; cv=none;
        d=google.com; s=arc-20160816;
        b=W7l5ApWz3qhhdmVDVTW7C5so1vKJ/2447n8sCxas7zK6//lLfm8AMl3/23rgwE/PeG
         E1cVV0grDKLaDM6r3jWpWIAOu1U5xbNM/x5MI1yE72zmutgz/0GHseXboqtA+GHUxM7O
         WUoheQpljoVBeZaYl4JMkP/VF/PgiPLELW6s/u3miLueFmRo+kA9lwNbTGUnszRf00mP
         Wt8qRNw4yEkUcuqPEcv3XYWCIDvCa2SRSpDs1MI+U7Fuv/0QeWvIiEzA2hfiJdf2Rlwj
         R7O83RSFwyGRdUKR4cMJx+FOA3/uOfJGhYHZJAF0rWd9p18KrsRTeRq9wW8IadOnDfgH
         GdgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=FHTeht3AJCkaMgqmD7pzuZw45UOiKAz+hGadwv4PrFI=;
        b=xFf8RohbRYn4UCh8whtusW7m0dfeP5pEzEa/DgU1qF/7MhoZrdRNGs1u0G4uyDjrD1
         IpOD3lyvc8lIH1uZ/UcivEuS8QaKF2qFNerUSIlfLx82C/7i5/9zBv8180AChzOCG1Ei
         E/KlUMxXpPXRMuzsqjOvAz53GLLPhCALREHkSNtsPiFWMgH7hhNacNcOMr3VbC//TNq2
         N9DjQGaDsVVNR7hM7STxweyLsb1S7/iCQeLKMZW4k/wGPgJahl3I2z3OsZcso1x533j8
         MRzu53r5TIG7Vuk0RvL546nYSGCJ22auQFbrAF0LjX14As/xClBZosh4/5+eRYAdmWZB
         qfKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id i2si279337otk.1.2021.01.27.18.22.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2021 18:22:33 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: //15puYNYY63Alyt6CnqWaZR+bmfJBeyEfmvopUXJY+CzXMd1XbslfYqBaS0SdpNDn5jlbDJuh
 nCJ18yz0qucA==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="159340517"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; 
   d="gz'50?scan'50,208,50";a="159340517"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2021 18:22:32 -0800
IronPort-SDR: vns6Ex8OvpSppaXvCXmHtwbLUhB52pbv2+K0icNxTOeLob+8sWW+ZTqZANG+Ke8+DaMPRUOVgC
 t/Qu5t1uty6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; 
   d="gz'50?scan'50,208,50";a="410740031"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 27 Jan 2021 18:22:28 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l4wx2-0002G8-4s; Thu, 28 Jan 2021 02:22:28 +0000
Date: Thu, 28 Jan 2021 10:22:10 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: fs/f2fs/gc.c:1358:12: warning: stack frame size of 1056 bytes in
 function 'gc_data_segment'
Message-ID: <202101281058.QUzWxzF7-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   76c057c84d286140c6c416c3b4ba832cd1d8984e
commit: cdf8a76fda4ae3b53c5a09e5a8c79e27b7b65d68 ubsan: move cc-option tests into Kconfig
date:   6 weeks ago
config: powerpc64-randconfig-r031-20210128 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 48bdd676a1d1338c10541460bf5beb69ac17e451)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cdf8a76fda4ae3b53c5a09e5a8c79e27b7b65d68
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout cdf8a76fda4ae3b53c5a09e5a8c79e27b7b65d68
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:142:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:146:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:150:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:154:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/f2fs/gc.c:10:
   In file included from include/linux/backing-dev.h:15:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:158:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/f2fs/gc.c:1358:12: warning: stack frame size of 1056 bytes in function 'gc_data_segment' [-Wframe-larger-than=]
   static int gc_data_segment(struct f2fs_sb_info *sbi, struct f2fs_summary *sum,
              ^
   7 warnings generated.
--
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:155:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/xfs/libxfs/xfs_bmap.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:159:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/xfs/libxfs/xfs_bmap.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:163:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/xfs/libxfs/xfs_bmap.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:167:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from fs/xfs/libxfs/xfs_bmap.c:6:
   In file included from fs/xfs/xfs.h:22:
   In file included from fs/xfs/xfs_linux.h:31:
   In file included from include/linux/blkdev.h:14:
   In file included from include/linux/pagemap.h:11:
   In file included from include/linux/highmem.h:10:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:171:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> fs/xfs/libxfs/xfs_bmap.c:5256:1: warning: stack frame size of 1296 bytes in function '__xfs_bunmapi' [-Wframe-larger-than=]
   __xfs_bunmapi(
   ^
   7 warnings generated.


vim +/gc_data_segment +1358 fs/f2fs/gc.c

7bc0900347e069 Jaegeuk Kim     2012-11-02  1350  
0a8165d7c2cf13 Jaegeuk Kim     2012-11-29  1351  /*
7bc0900347e069 Jaegeuk Kim     2012-11-02  1352   * This function tries to get parent node of victim data block, and identifies
7bc0900347e069 Jaegeuk Kim     2012-11-02  1353   * data block validity. If the block is valid, copy that with cold status and
7bc0900347e069 Jaegeuk Kim     2012-11-02  1354   * modify parent node.
7bc0900347e069 Jaegeuk Kim     2012-11-02  1355   * If the parent node is not valid or the data block address is different,
7bc0900347e069 Jaegeuk Kim     2012-11-02  1356   * the victim data block is ignored.
7bc0900347e069 Jaegeuk Kim     2012-11-02  1357   */
48018b4cfd07dd Chao Yu         2018-09-13 @1358  static int gc_data_segment(struct f2fs_sb_info *sbi, struct f2fs_summary *sum,
7dda2af83b2b75 Changman Lee    2014-11-28  1359  		struct gc_inode_list *gc_list, unsigned int segno, int gc_type)
7bc0900347e069 Jaegeuk Kim     2012-11-02  1360  {
7bc0900347e069 Jaegeuk Kim     2012-11-02  1361  	struct super_block *sb = sbi->sb;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1362  	struct f2fs_summary *entry;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1363  	block_t start_addr;
437275272f9e63 Jaegeuk Kim     2013-02-04  1364  	int off;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1365  	int phase = 0;
48018b4cfd07dd Chao Yu         2018-09-13  1366  	int submitted = 0;
de881df97768d0 Aravind Ramesh  2020-07-16  1367  	unsigned int usable_blks_in_seg = f2fs_usable_blks_in_seg(sbi, segno);
7bc0900347e069 Jaegeuk Kim     2012-11-02  1368  
7bc0900347e069 Jaegeuk Kim     2012-11-02  1369  	start_addr = START_BLOCK(sbi, segno);
7bc0900347e069 Jaegeuk Kim     2012-11-02  1370  
7bc0900347e069 Jaegeuk Kim     2012-11-02  1371  next_step:
7bc0900347e069 Jaegeuk Kim     2012-11-02  1372  	entry = sum;
c718379b6b0954 Jaegeuk Kim     2013-04-24  1373  
de881df97768d0 Aravind Ramesh  2020-07-16  1374  	for (off = 0; off < usable_blks_in_seg; off++, entry++) {
7bc0900347e069 Jaegeuk Kim     2012-11-02  1375  		struct page *data_page;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1376  		struct inode *inode;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1377  		struct node_info dni; /* dnode info for the data */
7bc0900347e069 Jaegeuk Kim     2012-11-02  1378  		unsigned int ofs_in_node, nofs;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1379  		block_t start_bidx;
7ea984b0604ac3 Chao Yu         2016-08-27  1380  		nid_t nid = le32_to_cpu(entry->nid);
7bc0900347e069 Jaegeuk Kim     2012-11-02  1381  
803e74be04b32f Jaegeuk Kim     2019-11-22  1382  		/*
803e74be04b32f Jaegeuk Kim     2019-11-22  1383  		 * stop BG_GC if there is not enough free sections.
803e74be04b32f Jaegeuk Kim     2019-11-22  1384  		 * Or, stop GC if the segment becomes fully valid caused by
803e74be04b32f Jaegeuk Kim     2019-11-22  1385  		 * race condition along with SSR block allocation.
803e74be04b32f Jaegeuk Kim     2019-11-22  1386  		 */
803e74be04b32f Jaegeuk Kim     2019-11-22  1387  		if ((gc_type == BG_GC && has_not_enough_free_secs(sbi, 0, 0)) ||
2bac07635ddf9e Jaegeuk Kim     2020-02-09  1388  				get_valid_blocks(sbi, segno, true) ==
2bac07635ddf9e Jaegeuk Kim     2020-02-09  1389  							BLKS_PER_SEC(sbi))
48018b4cfd07dd Chao Yu         2018-09-13  1390  			return submitted;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1391  
437275272f9e63 Jaegeuk Kim     2013-02-04  1392  		if (check_valid_map(sbi, segno, off) == 0)
7bc0900347e069 Jaegeuk Kim     2012-11-02  1393  			continue;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1394  
7bc0900347e069 Jaegeuk Kim     2012-11-02  1395  		if (phase == 0) {
4d57b86dd86404 Chao Yu         2018-05-30  1396  			f2fs_ra_meta_pages(sbi, NAT_BLOCK_OFFSET(nid), 1,
7ea984b0604ac3 Chao Yu         2016-08-27  1397  							META_NAT, true);
7ea984b0604ac3 Chao Yu         2016-08-27  1398  			continue;
7ea984b0604ac3 Chao Yu         2016-08-27  1399  		}
7ea984b0604ac3 Chao Yu         2016-08-27  1400  
7ea984b0604ac3 Chao Yu         2016-08-27  1401  		if (phase == 1) {
4d57b86dd86404 Chao Yu         2018-05-30  1402  			f2fs_ra_node_page(sbi, nid);
7bc0900347e069 Jaegeuk Kim     2012-11-02  1403  			continue;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1404  		}
7bc0900347e069 Jaegeuk Kim     2012-11-02  1405  
7bc0900347e069 Jaegeuk Kim     2012-11-02  1406  		/* Get an inode by ino with checking validity */
c1079892f4e8ec Nicholas Krause 2015-06-30  1407  		if (!is_alive(sbi, entry, &dni, start_addr + off, &nofs))
7bc0900347e069 Jaegeuk Kim     2012-11-02  1408  			continue;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1409  
7ea984b0604ac3 Chao Yu         2016-08-27  1410  		if (phase == 2) {
4d57b86dd86404 Chao Yu         2018-05-30  1411  			f2fs_ra_node_page(sbi, dni.ino);
7bc0900347e069 Jaegeuk Kim     2012-11-02  1412  			continue;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1413  		}
7bc0900347e069 Jaegeuk Kim     2012-11-02  1414  
7bc0900347e069 Jaegeuk Kim     2012-11-02  1415  		ofs_in_node = le16_to_cpu(entry->ofs_in_node);
7bc0900347e069 Jaegeuk Kim     2012-11-02  1416  
7ea984b0604ac3 Chao Yu         2016-08-27  1417  		if (phase == 3) {
d4686d56ec912d Jaegeuk Kim     2013-01-31  1418  			inode = f2fs_iget(sb, dni.ino);
4eea93e3ff98aa Jaegeuk Kim     2019-12-20  1419  			if (IS_ERR(inode) || is_bad_inode(inode)) {
4eea93e3ff98aa Jaegeuk Kim     2019-12-20  1420  				set_sbi_flag(sbi, SBI_NEED_FSCK);
7bc0900347e069 Jaegeuk Kim     2012-11-02  1421  				continue;
4eea93e3ff98aa Jaegeuk Kim     2019-12-20  1422  			}
7bc0900347e069 Jaegeuk Kim     2012-11-02  1423  
bb06664a534ba4 Chao Yu         2017-11-03  1424  			if (!down_write_trylock(
b2532c694033fb Chao Yu         2018-04-24  1425  				&F2FS_I(inode)->i_gc_rwsem[WRITE])) {
bb06664a534ba4 Chao Yu         2017-11-03  1426  				iput(inode);
6f8d4455060dfb Jaegeuk Kim     2018-07-25  1427  				sbi->skipped_gc_rwsem++;
bb06664a534ba4 Chao Yu         2017-11-03  1428  				continue;
bb06664a534ba4 Chao Yu         2017-11-03  1429  			}
bb06664a534ba4 Chao Yu         2017-11-03  1430  
6aa58d8ad20a33 Chao Yu         2018-08-14  1431  			start_bidx = f2fs_start_bidx_of_node(nofs, inode) +
6aa58d8ad20a33 Chao Yu         2018-08-14  1432  								ofs_in_node;
6aa58d8ad20a33 Chao Yu         2018-08-14  1433  
6aa58d8ad20a33 Chao Yu         2018-08-14  1434  			if (f2fs_post_read_required(inode)) {
6aa58d8ad20a33 Chao Yu         2018-08-14  1435  				int err = ra_data_block(inode, start_bidx);
6aa58d8ad20a33 Chao Yu         2018-08-14  1436  
6aa58d8ad20a33 Chao Yu         2018-08-14  1437  				up_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
6aa58d8ad20a33 Chao Yu         2018-08-14  1438  				if (err) {
6aa58d8ad20a33 Chao Yu         2018-08-14  1439  					iput(inode);
6aa58d8ad20a33 Chao Yu         2018-08-14  1440  					continue;
6aa58d8ad20a33 Chao Yu         2018-08-14  1441  				}
6aa58d8ad20a33 Chao Yu         2018-08-14  1442  				add_gc_inode(gc_list, inode);
6aa58d8ad20a33 Chao Yu         2018-08-14  1443  				continue;
6aa58d8ad20a33 Chao Yu         2018-08-14  1444  			}
6aa58d8ad20a33 Chao Yu         2018-08-14  1445  
4d57b86dd86404 Chao Yu         2018-05-30  1446  			data_page = f2fs_get_read_data_page(inode,
6aa58d8ad20a33 Chao Yu         2018-08-14  1447  						start_bidx, REQ_RAHEAD, true);
b2532c694033fb Chao Yu         2018-04-24  1448  			up_write(&F2FS_I(inode)->i_gc_rwsem[WRITE]);
31a3268839c1aa Changman Lee    2014-11-27  1449  			if (IS_ERR(data_page)) {
31a3268839c1aa Changman Lee    2014-11-27  1450  				iput(inode);
31a3268839c1aa Changman Lee    2014-11-27  1451  				continue;
31a3268839c1aa Changman Lee    2014-11-27  1452  			}
7bc0900347e069 Jaegeuk Kim     2012-11-02  1453  
7bc0900347e069 Jaegeuk Kim     2012-11-02  1454  			f2fs_put_page(data_page, 0);
7dda2af83b2b75 Changman Lee    2014-11-28  1455  			add_gc_inode(gc_list, inode);
31a3268839c1aa Changman Lee    2014-11-27  1456  			continue;
31a3268839c1aa Changman Lee    2014-11-27  1457  		}
31a3268839c1aa Changman Lee    2014-11-27  1458  
7ea984b0604ac3 Chao Yu         2016-08-27  1459  		/* phase 4 */
7dda2af83b2b75 Changman Lee    2014-11-28  1460  		inode = find_gc_inode(gc_list, dni.ino);
7bc0900347e069 Jaegeuk Kim     2012-11-02  1461  		if (inode) {
82e0a5aa5ddf79 Chao Yu         2016-07-13  1462  			struct f2fs_inode_info *fi = F2FS_I(inode);
82e0a5aa5ddf79 Chao Yu         2016-07-13  1463  			bool locked = false;
48018b4cfd07dd Chao Yu         2018-09-13  1464  			int err;
82e0a5aa5ddf79 Chao Yu         2016-07-13  1465  
82e0a5aa5ddf79 Chao Yu         2016-07-13  1466  			if (S_ISREG(inode->i_mode)) {
b2532c694033fb Chao Yu         2018-04-24  1467  				if (!down_write_trylock(&fi->i_gc_rwsem[READ]))
82e0a5aa5ddf79 Chao Yu         2016-07-13  1468  					continue;
82e0a5aa5ddf79 Chao Yu         2016-07-13  1469  				if (!down_write_trylock(
b2532c694033fb Chao Yu         2018-04-24  1470  						&fi->i_gc_rwsem[WRITE])) {
6f8d4455060dfb Jaegeuk Kim     2018-07-25  1471  					sbi->skipped_gc_rwsem++;
b2532c694033fb Chao Yu         2018-04-24  1472  					up_write(&fi->i_gc_rwsem[READ]);
82e0a5aa5ddf79 Chao Yu         2016-07-13  1473  					continue;
82e0a5aa5ddf79 Chao Yu         2016-07-13  1474  				}
82e0a5aa5ddf79 Chao Yu         2016-07-13  1475  				locked = true;
73ac2f4e8256b9 Chao Yu         2017-08-23  1476  
73ac2f4e8256b9 Chao Yu         2017-08-23  1477  				/* wait for all inflight aio data */
73ac2f4e8256b9 Chao Yu         2017-08-23  1478  				inode_dio_wait(inode);
82e0a5aa5ddf79 Chao Yu         2016-07-13  1479  			}
82e0a5aa5ddf79 Chao Yu         2016-07-13  1480  
4d57b86dd86404 Chao Yu         2018-05-30  1481  			start_bidx = f2fs_start_bidx_of_node(nofs, inode)
c879f90da96c63 Jaegeuk Kim     2015-04-24  1482  								+ ofs_in_node;
6dbb17961f46b2 Eric Biggers    2018-04-18  1483  			if (f2fs_post_read_required(inode))
48018b4cfd07dd Chao Yu         2018-09-13  1484  				err = move_data_block(inode, start_bidx,
48018b4cfd07dd Chao Yu         2018-09-13  1485  							gc_type, segno, off);
4375a33664de17 Jaegeuk Kim     2015-04-23  1486  			else
48018b4cfd07dd Chao Yu         2018-09-13  1487  				err = move_data_page(inode, start_bidx, gc_type,
d4c759ee5faa51 Jaegeuk Kim     2017-09-05  1488  								segno, off);
82e0a5aa5ddf79 Chao Yu         2016-07-13  1489  
48018b4cfd07dd Chao Yu         2018-09-13  1490  			if (!err && (gc_type == FG_GC ||
48018b4cfd07dd Chao Yu         2018-09-13  1491  					f2fs_post_read_required(inode)))
48018b4cfd07dd Chao Yu         2018-09-13  1492  				submitted++;
48018b4cfd07dd Chao Yu         2018-09-13  1493  
82e0a5aa5ddf79 Chao Yu         2016-07-13  1494  			if (locked) {
b2532c694033fb Chao Yu         2018-04-24  1495  				up_write(&fi->i_gc_rwsem[WRITE]);
b2532c694033fb Chao Yu         2018-04-24  1496  				up_write(&fi->i_gc_rwsem[READ]);
82e0a5aa5ddf79 Chao Yu         2016-07-13  1497  			}
82e0a5aa5ddf79 Chao Yu         2016-07-13  1498  
e1235983e385af Changman Lee    2014-12-23  1499  			stat_inc_data_blk_count(sbi, 1, gc_type);
7bc0900347e069 Jaegeuk Kim     2012-11-02  1500  		}
7bc0900347e069 Jaegeuk Kim     2012-11-02  1501  	}
c718379b6b0954 Jaegeuk Kim     2013-04-24  1502  
7ea984b0604ac3 Chao Yu         2016-08-27  1503  	if (++phase < 5)
7bc0900347e069 Jaegeuk Kim     2012-11-02  1504  		goto next_step;
48018b4cfd07dd Chao Yu         2018-09-13  1505  
48018b4cfd07dd Chao Yu         2018-09-13  1506  	return submitted;
7bc0900347e069 Jaegeuk Kim     2012-11-02  1507  }
7bc0900347e069 Jaegeuk Kim     2012-11-02  1508  

:::::: The code at line 1358 was first introduced by commit
:::::: 48018b4cfd07dd2df9a067fb3a6a3221c19eed11 f2fs: submit cached bio to avoid endless PageWriteback

:::::: TO: Chao Yu <yuchao0@huawei.com>
:::::: CC: Jaegeuk Kim <jaegeuk@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101281058.QUzWxzF7-lkp%40intel.com.

--jRHKVT23PllUwdXP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--jRHKVT23PllUwdXP--
