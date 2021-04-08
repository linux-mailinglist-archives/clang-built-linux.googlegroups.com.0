Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSOSXKBQMGQESNO7APY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E5825357CD1
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 08:57:14 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id z19sf553484oot.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 23:57:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617865034; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLVmypCdvs//FWhie3uEEPNto//dfn7ODL+ieF8fqFLWmM0qj2cuX0cpmMoen8HEFv
         PNfaQVQARlluBd4qWuq2zo8+4APBbNMBdPoueS72ojG7jmEM7Jw6lDf13Jtb9ffMMF+n
         5xEJqsHNJnXszSB6XWLBLk9y2muX+XzrvnmkvwVmdf9wWdEhTwCSFkgljxzNbyc2HsNJ
         aH1reb0MFUtadEk6SH9g3wc8BDfNJej817+SoKP29xnkESbC4ozxpd2nOvezj25/IORF
         9h0JCxkhAbha1dJYpWpsoET1bNpllSCtGG/lB1/gMUCow3SZS3MwklEnvnZK/vYHitSQ
         tZBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=9nVP/hZvWxyXN/sJUdyTLVlv2s0oraDvwnXWJeEmWHE=;
        b=N6+NzPd1WN4+0YHpYYUSu5hBpgFScvX/zjDqotlacGI7LoLIAQ8CesuxY9n+f8XIj1
         sP6lNfDonshX1agA0EpbTpoYFMKBLjsSQC/FIyML31u6HK69NOHF5DNhBLEOdhTbBauQ
         WQCcUMZB/bK6NpzzrdXuduqJOsrjZw9Kz5H5FAsb49/vWBo9hbmFOu/axwu3sK8xC+HR
         EotcmtRCMU4L00t/L46wgLa+IIzUCj/Ubn0cElDvjofD2dcPkopHQca2qSnv5kqmC0A6
         Uvgx/Q/LAVesfhgxjmsSK6SxGOZugACuWILvO3PNzy8rOgMG2eVQGx8gqSyYiCSm9A2s
         x2nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9nVP/hZvWxyXN/sJUdyTLVlv2s0oraDvwnXWJeEmWHE=;
        b=J/+Tb1aF4AnzyMbu95juLlSV+7gTi0xMBJKmoCrwfw6sR93myWV3YQ52LeZVYVJLy0
         3Igbs09rFwYlQVFRURPypUrl3bLHkzFXoonMz4fP6SViqjaFyMIi2AGmxFRzueaWDwl4
         kiJkGkkP6fRtgkAsOC5tExZm6NkXYVlUtCvaTT7MM4qWgmx/bKVGoxiKES6mbPPVmoCj
         1LUvUfcR4wCc6YVlY1F1P645MIM/veH8YytcYWNBd7JJ1crMACpr93vVuXfJUPRmntQs
         TqHOO74mCm8+77IvqxsAacXp4AsjQwo+MEOvKAorY/nr6UQZ7456F+DnjR+zXu9elidE
         0DqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9nVP/hZvWxyXN/sJUdyTLVlv2s0oraDvwnXWJeEmWHE=;
        b=qJ7M1YiM9DLqk/w/yOz72H4CCpSw6CNaBNu5eX5120rpq2dDjHgUzp/HLVejGG2BcF
         caowK0GHrxKsVpRvNKG2Obx2ZhOsmNqJf+iuE4mDCIrCatBk6qmYaOuzGcjECbC4+Oar
         KaXkFEbX58M2HtsjPR+FUVuTivpxAS3BW7ouRZE4etLCJGGZYyrS/X+rM7LwpL8zh7y0
         VqbLhtszwhHgOEwRrlrSA5bJu/Y7BLgJAbsLeWPz11660QUwN2H9t8hy3qAZ3asWCCIB
         WFGotvV6XPXiTszBdAv75BKjwmqxHutwQQ+ZvYOBuDpqPZ9u296XssG25yPFwBWrNhzt
         tw+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tlDN/nfmMabG82owpXn6SfQLWqoYXIuCx5FnBBhSS25Rs6+ST
	dTEM9ag8QGcSWgMjDghOf/Q=
X-Google-Smtp-Source: ABdhPJzSE33yFhShHfObgFq78orKXc/aQ3yEtpfSVb37F6TQWLflHZpFdmoV8bmqPpn55EuNG7mllA==
X-Received: by 2002:a05:6830:55b:: with SMTP id l27mr6290337otb.260.1617865033845;
        Wed, 07 Apr 2021 23:57:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a47:: with SMTP id h7ls1131230otn.9.gmail; Wed, 07 Apr
 2021 23:57:13 -0700 (PDT)
X-Received: by 2002:a9d:24c7:: with SMTP id z65mr6544001ota.243.1617865033204;
        Wed, 07 Apr 2021 23:57:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617865033; cv=none;
        d=google.com; s=arc-20160816;
        b=00oePjeyMiDRlZ1kx/LRNJWcuaAibGnV1+eUjstindmuRgPVafDTPxVpV/rWX8jPnC
         ROagbOryDZUjNV7jgS6yryA0Q0vfhuPXzwaYNzDcRbf1aXUdaDhS0ysIEGuNtvEEF+Vb
         w7Ky23mmq6FhYe3R3wIk8CMpNcTKVEf/i6wboQNJHnrWBNLvEggyI3I4E9Dnowwp4Nx1
         oMe2EMXUegSZe+WsdQFL5LO4b9qULb97UhYDvXr8W7W6iP4l+NDAXJWOSC3dD3b372N6
         pw9OSZktQyWXS3AVxyZzkCPaNlLZZsYcNs6PpXlxwQeGozatHQhJRlgQYnTBY8iTw8NE
         pQdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=8QYT/yCy7Ak4FYDsF+cqVgtBhBAy/mlCuMjdMDLs2sU=;
        b=vMPAK+2ZTweDzWkmztRXdOVKBMCSFxbWcq25T5cn6U7/ZOOI1ex8HUxau/6Sajd3FT
         y2hr4enhfkY9nwXLNdYqrczwd+Qjl1ZkR8i74q1zd8hYCpMWuDywCTTc5dVJuN2jaaac
         B/bAe6/B1ovUWUHx7kShKhNDX9dzMS3eBLiyNUP9UVmX/AOFnlqXGFRijQq4N1IvKore
         LNIjmHxBZAwNYB7GRJy37T1gnlI5Ee3HxKHZrLjcHD90Ijtf1zSzYDa/S8/xg/0Q/qgq
         QhalczdWoqgX/qsxBLlRUQrVgckQTT2IDf6MvXDtNd5OqIGm2o3p3jwEcRBOXMtxVJxe
         A9fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id x38si2526347otr.3.2021.04.07.23.57.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 23:57:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: fUbzCoH+P61N4x+FGl6gQC7D9BLxgXhwVB4MSWiaCgQqK6NpP6Dhqzxvj54LO3oSFY+GbbEv1Y
 OodChPcTx5fQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="190270264"
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; 
   d="gz'50?scan'50,208,50";a="190270264"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2021 23:57:11 -0700
IronPort-SDR: I0edacJJ1pjCgbeWqyZG/kKoHosVhcScauT6bNipItwGXUnjhOCRqwMKoaK6pu6QD/oXXTpbMm
 4f9NuzUsxGCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; 
   d="gz'50?scan'50,208,50";a="448545848"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 07 Apr 2021 23:57:09 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUObE-000EO1-Jv; Thu, 08 Apr 2021 06:57:08 +0000
Date: Thu, 8 Apr 2021 14:56:47 +0800
From: kernel test robot <lkp@intel.com>
To: Yury Norov <yury.norov@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [norov:bitmaps2 5/9] include/linux/find.h:250:23: error: implicit
 declaration of function 'BITMAP_FIRST_BYTE_MASK'
Message-ID: <202104081441.AoMfobip-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/norov/linux bitmaps2
head:   352293284677497a59bea658f248c48d4952403e
commit: 942c587cda940e9da8b2677e88155aee139cac61 [5/9] add find_first_le
config: powerpc-randconfig-r036-20210407 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 56ea2e2fdd691136d5e6631fa0e447173694b82c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/norov/linux/commit/942c587cda940e9da8b2677e88155aee139cac61
        git remote add norov https://github.com/norov/linux
        git fetch --no-tags norov bitmaps2
        git checkout 942c587cda940e9da8b2677e88155aee139cac61
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:14:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:5:
   In file included from include/linux/spinlock.h:59:
   In file included from include/linux/lockdep.h:14:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:12:
   In file included from include/linux/bitmap.h:9:
>> include/linux/find.h:250:23: error: implicit declaration of function 'BITMAP_FIRST_BYTE_MASK' [-Werror,-Wimplicit-function-declaration]
                   val = swab(*addr) & BITMAP_FIRST_BYTE_MASK(size);
                                       ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:23:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_RET(inb, u8, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:225:1: note: expanded from here
   __do_inb
   ^
   arch/powerpc/include/asm/io.h:538:53: note: expanded from macro '__do_inb'
   #define __do_inb(port)          readb((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:24:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_RET(inw, u16, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:227:1: note: expanded from here
   __do_inw
   ^
   arch/powerpc/include/asm/io.h:539:53: note: expanded from macro '__do_inw'
   #define __do_inw(port)          readw((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:25:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_RET(inl, u32, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:229:1: note: expanded from here
   __do_inl
   ^
   arch/powerpc/include/asm/io.h:540:53: note: expanded from macro '__do_inl'
   #define __do_inl(port)          readl((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:26:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outb, (u8 val, unsigned long port), (val, port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:231:1: note: expanded from here
   __do_outb
   ^
   arch/powerpc/include/asm/io.h:535:62: note: expanded from macro '__do_outb'
   #define __do_outb(val, port)    writeb(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
--
   error: no override and no default toolchain set
   init/Kconfig:70:warning: 'RUSTC_VERSION': number is invalid
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:14:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:5:
   In file included from include/linux/spinlock.h:59:
   In file included from include/linux/lockdep.h:14:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:12:
   In file included from include/linux/bitmap.h:9:
>> include/linux/find.h:250:23: error: implicit declaration of function 'BITMAP_FIRST_BYTE_MASK' [-Werror,-Wimplicit-function-declaration]
                   val = swab(*addr) & BITMAP_FIRST_BYTE_MASK(size);
                                       ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:23:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_RET(inb, u8, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:225:1: note: expanded from here
   __do_inb
   ^
   arch/powerpc/include/asm/io.h:538:53: note: expanded from macro '__do_inb'
   #define __do_inb(port)          readb((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:24:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_RET(inw, u16, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:227:1: note: expanded from here
   __do_inw
   ^
   arch/powerpc/include/asm/io.h:539:53: note: expanded from macro '__do_inw'
   #define __do_inw(port)          readw((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:25:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_RET(inl, u32, (unsigned long port), (port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:607:9: note: expanded from macro 'DEF_PCI_AC_RET'
           return __do_##name al;                                  \
                  ^~~~~~~~~~~~~~
   <scratch space>:229:1: note: expanded from here
   __do_inl
   ^
   arch/powerpc/include/asm/io.h:540:53: note: expanded from macro '__do_inl'
   #define __do_inl(port)          readl((PCI_IO_ADDR)_IO_BASE + port);
                                         ~~~~~~~~~~~~~~~~~~~~~ ^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:26:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outb, (u8 val, unsigned long port), (val, port), pio, port)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:231:1: note: expanded from here
   __do_outb
   ^
   arch/powerpc/include/asm/io.h:535:62: note: expanded from macro '__do_outb'
   #define __do_outb(val, port)    writeb(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/asm-offsets.c:23:
   In file included from include/linux/suspend.h:5:


vim +/BITMAP_FIRST_BYTE_MASK +250 include/linux/find.h

   243	
   244	#ifndef find_first_bit_le
   245	static inline
   246	unsigned long find_first_bit_le(const unsigned long *addr, unsigned long size)
   247	{
   248		if (small_const_nbits(size)) {
   249			unsigned long val = swab(*addr) & GENMASK(size - 1, 0);
 > 250			val = swab(*addr) & BITMAP_FIRST_BYTE_MASK(size);
   251	
   252			return val ? __ffs(val) : size;
   253		}
   254	
   255		return _find_first_bit(addr, size, 1);
   256	}
   257	#endif
   258	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104081441.AoMfobip-lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--vkogqOf2sHV7VnPd--
