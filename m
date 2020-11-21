Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG6H4T6QKGQENIVACWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4252BBFE2
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 15:26:37 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id n21sf9297486pfu.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 06:26:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605968796; cv=pass;
        d=google.com; s=arc-20160816;
        b=ii64vPuJhgowqSCgZ/NB81tjY7wwZTEbwKP2nd/JKxbcwoVfEUr0pD1Af2cnTvwmHR
         MJ/KQB3JYoFNrEidPh+578JK6UUzuggZ9MxEGAWehnNTzc/+RL3xLPfAFevXDHpqr/hb
         +rhf93p8jHNZjSpJfuK96/JeJsYqLpgrU++VTeeD3rmyYurHF9bNQYHJafztRup+zfnA
         PbwYZESFuwJIlnIxwk2Ol0pvJrO/tiPWXI44RX1I9L26vSwoC2oXhhOWLgkdfsr6de5R
         yDC/24CXVnJQBFTYOQMCQeUNFwTEWz217hkgIpeon9swBJ/TcZlYy6qrWnN6qwdyiae7
         2WbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=hEg9bvDp3e6Wjh97CgGi/IBtUxPPjEzBzuGHmA6HUtE=;
        b=XNajEN7sJIGWoSQDlOZJ1MM6KiHgiiPkaCvskYWqBwNa6vW0UsMHihQGUJIdVSVUvc
         9rp/h+btfONPvjCJrt4kdsa8hJ7swFwXc5udWcL8GBhbtfgVPNb2SaRUT55QMjaq5udz
         1utK6Sm5NeMT6ayitQX5jt0I5eeJd7t7MMZaFVL+DSjow7ygMc8FQ0s7smlufjT705wj
         M59BH+XztM+iqua46k7LQyh7LpYCnkDrARzuiDF7cE1wwSYb4Agyd9qjY/vbBtDi9SXh
         1o1sJLBwMXVLpFuwx15gsDvLNUOf10IRIBUwiVHicHD6pbf8WFDC3Z37ciVkfYpxG1V/
         zv2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hEg9bvDp3e6Wjh97CgGi/IBtUxPPjEzBzuGHmA6HUtE=;
        b=rtIfhR0MbgsvNYfvrBEk/7VvTIhk5CpqOXkYbI8nVz1A5VMG4cgKKS3KmCnV4WU3wm
         AD+9PSkJFrKZBRXgntoPO8h/PYtN8IW0z9Vt8wwXNF/FdxKaPg2dyt9FuZDUBMpfO5Va
         aHwvZ6XJofussXYIrUnx/qUeaa6Ect34BNvrqEOJSDO9w2RagSYslHnq55pJvQgDkcKu
         nq273uTpFx7v2G3Qm1bsv/3V8sB6JXdj4lyHEjcBQVOhkUaSTkdtncnAjiU19FPwjNIY
         fYatHv2Hc7r3Y0fjkahEJxmnfJ93gpxhqibWGD2TWsWPWbkNHOXF6e9sLVaIpSBKEy0v
         c92g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hEg9bvDp3e6Wjh97CgGi/IBtUxPPjEzBzuGHmA6HUtE=;
        b=az/H1PopElLQSgq1p0L/XN02PVSfJO0LuPVMhOGQS/hHYX3blSW5ImipRG3h/mJyf9
         1yNQStPap663GItfP16WnhXOPV3pdCAE84yBxQEMssX0MjSD7t1BaSWfg8SNAJjfjoZ1
         m97nOsapNghjHx5VMAR/cU8VOA3o5+moLwLoMLg/+cjMPE4/IAdNTCle891p+ibtMdCe
         xTgE1/LDscRs19N6++GXrGa5znBmJ/oC4IYx94bev6JswJLIRGdg5OxFNAgRv7Q39p4I
         mbxcLSXFDJ2tvBuH4raaTq51m2b08/pob1j9umH4++EXp+B/e139MeGIB2nwwADuO7q3
         z1Kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Z83YsuuRwMAv5PwTQDcPErgu2uouGISbAjkJjjMqD+W+sXSy0
	rjr/Si9sqGrMo8wST0h3WGU=
X-Google-Smtp-Source: ABdhPJzAAZ0HacH6WXxskdl0v2aZeHI8s/ODfzv/6nioqrY3xIVrtVBoZ1Jz/duGH0Xu4CK9p9gkmQ==
X-Received: by 2002:a17:902:a5c7:b029:d8:edae:f4ea with SMTP id t7-20020a170902a5c7b02900d8edaef4eamr18267611plq.75.1605968795791;
        Sat, 21 Nov 2020 06:26:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a0e:: with SMTP id o14ls5224984pjo.1.canary-gmail;
 Sat, 21 Nov 2020 06:26:35 -0800 (PST)
X-Received: by 2002:a17:90b:396:: with SMTP id ga22mr7655237pjb.194.1605968795169;
        Sat, 21 Nov 2020 06:26:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605968795; cv=none;
        d=google.com; s=arc-20160816;
        b=zqcjU9Ig/tBm7pld+V9QAzUQquofogoZQ8BKveEH4Fll0MVpkkeY9vB4t+naIEBoxd
         QM5fbaT0fPbPBDhGRV5zmmaa/g26j8EVW1MRG1OZSFIYwao/EyLlyNXm72naT4ViMk6M
         172nYk9p9weW1QDU3pIjGclmK3CdNl5U0YcMoFc3khZtnwxi9uDbC6+Hzij+hkJlWMG1
         i/9xfGnVNASFoXaixAKoTKFpUHBCwKzjtdCPCO2sT/sdVK6XUjiEMLWYvHPSL5RoP5AY
         GlYmFR4k9JCWzDoqicoW/A96whRXSvb2l3Aq3KQoWUF+Uxm7kr3ddcKdE2Xb5lhH+bXt
         zxwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=LDooBuu/OqUaHdh1URX5Vl/TZo+D1/8hOwvkO/ZvuZA=;
        b=0Ocka40ulEQ4yeeL43GRh89Q9crInpHLEuKq9Rk8YqnPTEqC8kdf5lOgqSndquhUo6
         KVeP9EBGfEj/QKGuQviIJhuc7BPkixq9tvS0YuVCImXPjjU2+QGx+4oSe2QxQOjazI7E
         NsvjMtcQpC1YLaBhRHusTVTLhmEkKpxZrRKIriKRHQ5VQ0GQYfQQYY+Xp2tyrns1/mHK
         wggOF4YGKy5qL3BBxuJ6FrHxxsMFLLq7ATGFCCAm4oMLMNqgCjolGH7i5PrA2yFjBApx
         7MgEUsO8lDbvk0ef+TfOi3Nlp/RyW6axgMfTxPz92pbjAWWhX120M8D5NX4Mk7N3W5ol
         xFuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id z12si619148pjf.3.2020.11.21.06.26.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Nov 2020 06:26:35 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: QNha2KIaqru88oDl11nlymqOLaMsOTFCl0hBqLuiKccL8GXFz0MO6hXIIFLfFUMkkAElymfmC+
 ewMIZ0tNJqvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="168084871"
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; 
   d="gz'50?scan'50,208,50";a="168084871"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Nov 2020 06:26:34 -0800
IronPort-SDR: UyY6swMQZMJQoGAF7JHYuGLogrEYFaPo3Q5WQM3JXHLBdJfQdpJCegXzw7b7nk6Ar7y2XNzT32
 36YRdkQ7NgIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,359,1599548400"; 
   d="gz'50?scan'50,208,50";a="545828357"
Received: from lkp-server01.sh.intel.com (HELO 00bc34107a07) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 21 Nov 2020 06:26:32 -0800
Received: from kbuild by 00bc34107a07 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kgTqR-0000KL-FO; Sat, 21 Nov 2020 14:26:31 +0000
Date: Sat, 21 Nov 2020 22:26:22 +0800
From: kernel test robot <lkp@intel.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: drivers/clocksource/timer-riscv.c:28:16: error: implicit declaration
 of function 'get_cycles64'
Message-ID: <202011212217.9IAK7t1V-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
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


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Palmer,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   27bba9c532a8d21050b94224ffd310ad0058c353
commit: d5be89a8d118a8e8d09cd74a921a808f17fbdd09 RISC-V: Resurrect the MMIO timer implementation for M-mode systems
date:   9 weeks ago
config: riscv-randconfig-r034-20201121 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bec968cbb367dd03439c89c1d4ef968ef662d7c0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d5be89a8d118a8e8d09cd74a921a808f17fbdd09
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout d5be89a8d118a8e8d09cd74a921a808f17fbdd09
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/clocksource/timer-riscv.c:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/clocksource/timer-riscv.c:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/clocksource/timer-riscv.c:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/clocksource/timer-riscv.c:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/clocksource/timer-riscv.c:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/clocksource/timer-riscv.c:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/clocksource/timer-riscv.c:10:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/clocksource/timer-riscv.c:28:16: error: implicit declaration of function 'get_cycles64' [-Werror,-Wimplicit-function-declaration]
           sbi_set_timer(get_cycles64() + delta);
                         ^
   drivers/clocksource/timer-riscv.c:28:16: note: did you mean 'get_cycles'?
   arch/riscv/include/asm/timex.h:18:24: note: 'get_cycles' declared here
   static inline cycles_t get_cycles(void)
                          ^
   drivers/clocksource/timer-riscv.c:47:9: error: implicit declaration of function 'get_cycles64' [-Werror,-Wimplicit-function-declaration]
           return get_cycles64();
                  ^
   drivers/clocksource/timer-riscv.c:52:9: error: implicit declaration of function 'get_cycles64' [-Werror,-Wimplicit-function-declaration]
           return get_cycles64();
                  ^
   7 warnings and 3 errors generated.

vim +/get_cycles64 +28 drivers/clocksource/timer-riscv.c

62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04 @10  #include <linux/clocksource.h>
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  11  #include <linux/clockchips.h>
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  12  #include <linux/cpu.h>
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  13  #include <linux/delay.h>
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  14  #include <linux/irq.h>
033a65de7eced8 drivers/clocksource/timer-riscv.c Anup Patel        2020-06-01  15  #include <linux/irqdomain.h>
92e0d143fdef1f drivers/clocksource/riscv_timer.c Anup Patel        2018-12-04  16  #include <linux/sched_clock.h>
4f9bbcefa14286 drivers/clocksource/timer-riscv.c Christoph Hellwig 2019-10-28  17  #include <linux/io-64-nonatomic-lo-hi.h>
033a65de7eced8 drivers/clocksource/timer-riscv.c Anup Patel        2020-06-01  18  #include <linux/interrupt.h>
033a65de7eced8 drivers/clocksource/timer-riscv.c Anup Patel        2020-06-01  19  #include <linux/of_irq.h>
f99fb607fb2bc0 drivers/clocksource/riscv_timer.c Atish Patra       2018-10-02  20  #include <asm/smp.h>
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  21  #include <asm/sbi.h>
2bc3fc877aa9c4 drivers/clocksource/timer-riscv.c Anup Patel        2020-08-17  22  #include <asm/timex.h>
4f9bbcefa14286 drivers/clocksource/timer-riscv.c Christoph Hellwig 2019-10-28  23  
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  24  static int riscv_clock_next_event(unsigned long delta,
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  25  		struct clock_event_device *ce)
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  26  {
a4c3733d32a72f drivers/clocksource/timer-riscv.c Christoph Hellwig 2019-10-28  27  	csr_set(CSR_IE, IE_TIE);
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04 @28  	sbi_set_timer(get_cycles64() + delta);
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  29  	return 0;
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  30  }
62b0194368147d drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  31  

:::::: The code at line 28 was first introduced by commit
:::::: 62b0194368147def8c5a77ce604a125d620fc582 clocksource: new RISC-V SBI timer driver

:::::: TO: Palmer Dabbelt <palmer@dabbelt.com>
:::::: CC: Palmer Dabbelt <palmer@sifive.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011212217.9IAK7t1V-lkp%40intel.com.

--pf9I7BMVVzbSWLtt
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
HexHYtT/D96vzcuV2QEA

--pf9I7BMVVzbSWLtt--
