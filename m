Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBROYVKAQMGQEYIEIJ4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D39931C03E
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 18:15:51 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id d8sf6978012plo.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 09:15:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613409350; cv=pass;
        d=google.com; s=arc-20160816;
        b=Joa556wQc8rNr2C+iaYOD2TCUywfWhVLSTzLIHsnLiwSdzxwcpe/av6HGOlXvhTs+E
         cod71dsLvgR1W0GbT/a+UgKRYNimsXrVvOpDuoww2sSxf2GbQZgIiMyJPu4ggGDgejdg
         SxcQnf1CQ2bmNhBO+jnFuBotT9qi5ckyLOhrzfr1xeCPX89rnejkJhXGuAk/n0M4AdTq
         YFKzq/pm8rKqvkpORI7JFFpi6JOcNgyBDeYmN08+3hJL9sTnNnwJwc0/0S8o7Wu8dv4I
         Ussh8qj9yVUw0tKmTy2BUD7UjWRgpfY1rQGkOP/RJPxrddY5g5TMT9ylDVf/OSAt0wuk
         vLmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dMA2Ce3/uVdF7CzgsRqoHXksUbCe85bEbUz/ZDhGnN4=;
        b=xcH1DG2o34vNVpNYweDuVg9JMZER5QuIzk+EyzBg/ECntzjdnfWuZo3FTJmjVc0kzR
         CIVpEX3KQfYMoICxVJ6zsOPG1riBWnuxnrcsuEqKHHVl4Slf5haG1Lfsqm0j86UnwdZG
         ZDlCFCdCA9ARZh6yEZqm9C7fZwh850P9KyuHuX56jGNy0BDgE4QqCnf0po7y4cmD7s8n
         hNQwwPtiNXZHbFC5wT8qOl3GEsioacwQzNxTNPd4anEFskeSLZ0f6RfqY8/mTMJlAQDS
         b9BMXw7PRz1v1qyoOdjPvfoWpeE7nCnr50wCloT49CkTbPar82/paSot/4A6fciIByuG
         dSuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dMA2Ce3/uVdF7CzgsRqoHXksUbCe85bEbUz/ZDhGnN4=;
        b=scQKH/noLBzWgYyWGibzQb2Ol5wi32QdvLWBJzysDykQhPMU2fB9bkp93vTF3Gf9U3
         Jb+auaym7Ncpa+tSDwCsSveK7e3FmyuuRebt7gC6OqY2t37B/47axMB9hp5pABBSwfJn
         TpRK9Db409tZQsBa2cAq35S8vqo8o2/BSfI1paFBaRgP5zx97tgZSaAZ7iVlbxnPDnHa
         pbHskfGoltpE/Qc7uZEiXkAMaKA1x8af5ykuxWr9WVwSEokYB2EqruReabYnnHaN6H+D
         leAjSqmFYwRCGZUMuxeISXoQg5pdSgAhqh4ih1tr/b1C6nY4NxqV1IShsG0LVNQzje8g
         DBKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dMA2Ce3/uVdF7CzgsRqoHXksUbCe85bEbUz/ZDhGnN4=;
        b=iScs+Zigv1uWikCsF0yPo2Y4tYBzPX1aSseOFb0PKFqTdBqszXVqJbVzskifLj9bdk
         HTOyyg0UPVq4mYLPiBFArHqCoJlMlzVBClWju4tycCPj8vtGmYK0QCcfhYgEVZn/LsFQ
         1yiIS18L//doNpHKf73t5U0h2YklrQVUkH67TliifCHP8bfkV00IGSbuBoq5b5abIy90
         QkPJQuOdY68taTphi5PED+bc7sooIUJqcahsGKo8pT1XvWapjtdGmL5JgGioWsDisG2+
         b1oH4YZJjghQG/knCrxcKjsYVtC/6aypcMzVvp1rWwe0MSWrxVZMDXLSlmrGofP3L/it
         7QFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gQ5Zvrf7rGuaq3mISa3lpS3f+QrHIrjPIbT1TRB+jA0hg6eIq
	6HiPirSW3JNTPX2kXWWMYYM=
X-Google-Smtp-Source: ABdhPJw/bGe4pYX+sRxH+rK7km2cxJikptX8fpdaWZvDtu/132CGQ0gbjq84CxApDnzIcmFumG3Odw==
X-Received: by 2002:a63:155b:: with SMTP id 27mr15201177pgv.269.1613409349872;
        Mon, 15 Feb 2021 09:15:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1c1:: with SMTP id e1ls7743897plh.10.gmail; Mon, 15
 Feb 2021 09:15:49 -0800 (PST)
X-Received: by 2002:a17:902:b212:b029:df:ec2e:6a1f with SMTP id t18-20020a170902b212b02900dfec2e6a1fmr16116570plr.24.1613409349053;
        Mon, 15 Feb 2021 09:15:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613409349; cv=none;
        d=google.com; s=arc-20160816;
        b=csCYKoEajakprlQWo7/P2tMDiZNaz3lmaBvYgpVoxjOhqgYwxnZy+ZD5vgBW6C3uhb
         ob1RJ1+Rj1oKBV029J1E22QH3/u66l5ZXug+y5s5IEfLRAc33xTdi7eBmYfXi3KeF58H
         DFnjD6ETU6RFHbrnXimaWBP6JcFgvQfrqr7JJDlx87uaFtwPNYUZ0OnHJGVR+HY7Opxp
         brigLSOpYqpt8i/FDDX49ekJga+bb3KYyjn8WYqzYkKOfKz1t1IKmQKGAO4zTn1WIrGH
         foNWlT3feZzVxNc2XhZ2kdUAwON+SMJ4pJ+R8Tee9MUK3WwoUHS+nO440QGYiKtk7WkS
         wf9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=25A7mgqIFomuVvgfAkDNr9vUJnX0xqGrASHKurwQt64=;
        b=kdP8RoIzxB3Wnb09ySLR14f1DIQzufYR9pWsvh0m8f4SyNCuPrQMtL9QdCOPrbJHKS
         225guKIIOgxugoj5Sfa8X8bdnW8DkcjjZz4pvQsQNrsarb0ut3/khK5seTSevxerD4+x
         aaLkZQGiBWeK9InVwop0IZgN8mqSdR7Mmu6Sxdof3D2hXrEgJqmxn0VqeLp0KwtjrfEU
         RzcQxYHZkKsDFFUAeMVma9idu9Y40AuEbgvWhs4xkT6A4vZ1xKA60w21UlnOJfjbZCZj
         VVdi6XKmQAiu9qfllGDwuAUXNPvS4+1D3bJD4mawST8IKCKLUeQ+bKCYgC+pkyorhsYN
         ADXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id q10si956909pjp.0.2021.02.15.09.15.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 09:15:49 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: pMa+HWdtuS32rMUUuMF+V57sATpRYvg5zCyEAmOH3O9oG1kQuplFpqYH3sAQtmsVX83cyfWvEn
 LtVNnH7wKulg==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="170386506"
X-IronPort-AV: E=Sophos;i="5.81,181,1610438400"; 
   d="gz'50?scan'50,208,50";a="170386506"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2021 09:15:47 -0800
IronPort-SDR: 9ySOH/+cqS2+jACTI9V/AJyj6vmTguBNDS4YQYzGHo9tw8op0DR/uADCrwDFHZzfSw42X8bbz/
 ikLS0HwP89bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,181,1610438400"; 
   d="gz'50?scan'50,208,50";a="383491773"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 15 Feb 2021 09:15:45 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lBhTM-0007QY-Qo; Mon, 15 Feb 2021 17:15:44 +0000
Date: Tue, 16 Feb 2021 01:15:22 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?Q?Andr=E9?= Almeida <andrealmeid@collabora.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH 03/13] futex2: Implement vectorized wait
Message-ID: <202102160111.Mov9i7x9-lkp@intel.com>
References: <20210215152404.250281-4-andrealmeid@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210215152404.250281-4-andrealmeid@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi "Andr=C3=A9,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on tip/locking/core]
[also build test ERROR on tip/x86/asm arm64/for-next/core tip/perf/core lin=
us/master v5.11]
[cannot apply to next-20210212]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Andr-Almeida/Add-futex2-sy=
scalls/20210215-233004
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 3765d01=
bab73bdb920ef711203978f02cd26e4da
config: powerpc64-randconfig-r036-20210215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439c=
a36342fb6013187d0a69aef92736951476)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/4911d0983833ed16da856a76c=
9ed94231a705243
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Andr-Almeida/Add-futex2-syscalls/2=
0210215-233004
        git checkout 4911d0983833ed16da856a76c9ed94231a705243
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/powerpc/kernel/asm-offsets.c:14:
>> include/linux/compat.h:666:12: error: expected ')'
                                          struct __kernel_timespec __user *=
timo);
                                          ^
   include/linux/compat.h:664:39: note: to match this '('
   asmlinkage long compat_sys_futex_waitv(struct compat_futex_waitv *waiter=
s,
                                         ^
   In file included from arch/powerpc/kernel/asm-offsets.c:21:
   include/linux/mman.h:155:9: warning: division by zero is undefined [-Wdi=
vision-by-zero]
                  _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:133:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   include/linux/mman.h:156:9: warning: division by zero is undefined [-Wdi=
vision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:133:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:23:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_RET(inb, u8, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_=
AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:229:1: note: expanded from here
   __do_inb
   ^
   arch/powerpc/include/asm/io.h:538:53: note: expanded from macro '__do_in=
b'
   #define __do_inb(port)          readb((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:24:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_RET(inw, u16, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_=
AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:231:1: note: expanded from here
   __do_inw
   ^
   arch/powerpc/include/asm/io.h:539:53: note: expanded from macro '__do_in=
w'
   #define __do_inw(port)          readw((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:25:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_RET(inl, u32, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_=
AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:233:1: note: expanded from here
   __do_inl
   ^
   arch/powerpc/include/asm/io.h:540:53: note: expanded from macro '__do_in=
l'
   #define __do_inl(port)          readl((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
--
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
>> include/linux/compat.h:666:12: error: expected ')'
                                          struct __kernel_timespec __user *=
timo);
                                          ^
   include/linux/compat.h:664:39: note: to match this '('
   asmlinkage long compat_sys_futex_waitv(struct compat_futex_waitv *waiter=
s,
                                         ^
   In file included from arch/powerpc/kernel/asm-offsets.c:21:
   include/linux/mman.h:155:9: warning: division by zero is undefined [-Wdi=
vision-by-zero]
                  _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:133:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   include/linux/mman.h:156:9: warning: division by zero is undefined [-Wdi=
vision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:133:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:23:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_RET(inb, u8, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_=
AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:229:1: note: expanded from here
   __do_inb
   ^
   arch/powerpc/include/asm/io.h:538:53: note: expanded from macro '__do_in=
b'
   #define __do_inb(port)          readb((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:24:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_RET(inw, u16, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_=
AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:231:1: note: expanded from here
   __do_inw
   ^
   arch/powerpc/include/asm/io.h:539:53: note: expanded from macro '__do_in=
w'
   #define __do_inw(port)          readw((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:25:1: warning: performing pointer ari=
thmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic=
]
   DEF_PCI_AC_RET(inl, u32, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_=
AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:233:1: note: expanded from here
   __do_inl
   ^
   arch/powerpc/include/asm/io.h:540:53: note: expanded from macro '__do_in=
l'
   #define __do_inl(port)          readl((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:


vim +666 include/linux/compat.h

   647=09
   648	/* kernel/exit.c */
   649	asmlinkage long compat_sys_waitid(int, compat_pid_t,
   650			struct compat_siginfo __user *, int,
   651			struct compat_rusage __user *);
   652=09
   653=09
   654=09
   655	/* kernel/futex.c */
   656	asmlinkage long
   657	compat_sys_set_robust_list(struct compat_robust_list_head __user *he=
ad,
   658				   compat_size_t len);
   659	asmlinkage long
   660	compat_sys_get_robust_list(int pid, compat_uptr_t __user *head_ptr,
   661				   compat_size_t __user *len_ptr);
   662=09
   663	/* kernel/futex2.c */
   664	asmlinkage long compat_sys_futex_waitv(struct compat_futex_waitv *wa=
iters,
   665					       compat_uint_t nr_futexes, compat_uint_t flags
 > 666					       struct __kernel_timespec __user *timo);
   667=09

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202102160111.Mov9i7x9-lkp%40intel.com.

--fdj2RfSjLxBAspz7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AgA=

--fdj2RfSjLxBAspz7--
