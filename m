Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMXAUT4QKGQEEW2D5MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C8323B83D
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Aug 2020 11:53:56 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id f25sf1815095vsp.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Aug 2020 02:53:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596534835; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wk5bzK6AOnhG2zR/Jk0XaoR10CQb3gdJWBOFXTtd50Xi3KzeWcXuc6FGAPaLTcjPMe
         83mhSHHlkDQwaczCmTmGyFSq56SidNSh8313b48ctLBww/zZJoIXKmtPjg+gbrchSYZo
         yEThHoxRvIFry6JHnrtjQdnWBeg9BcxfecS5xfApNm5+bfGd0jGfQcCkWM9O+0N0B6ZM
         ctMQASkr2HPQUNaqWsZMn3QPZAg04KaThRsnR5AN00hGosuS8xMlXojYfrpMpKJ/PYTx
         D+HAsKQgNadWXZMEE6cBK59qlhA5ye9bgFx3IGp3NM+nJgMJdyzQnk7q2udP3bZyhdEv
         OhdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=f7cXd2VkE1l0jKOssoBlQ/UMqtudGAk0W0H84Qlm8r0=;
        b=w2gjkqDKUhY+gMiRyZ6nHFuPQl/+dj3+isK9A7eykeJuWULmetPATlbwhkN3tE6PAT
         81k43gO4brH6Ye8m5aeUAWfr7i00Vj/kIHYyn2F1OiQIFuFsj6EaKIwYrq7En4lpmjlW
         GEOYLRGlAvnXGn+SQwnscsusUofI22zG73paPSx/q8ZOQL1H0meTwLgXc4laoGCvDLMX
         tmR0N/siriuO6Ecg54JX4ggCeIUoi1dFzp70RjB5OPokonAirnmcj7yGVL64o710M6jX
         WHkL+uFeBU5SHfk1YgE32hkX18cbIN8dSAV6LvtIsG1oXsdaTsSfukLzOwAShC39yybD
         H1JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f7cXd2VkE1l0jKOssoBlQ/UMqtudGAk0W0H84Qlm8r0=;
        b=QFLUEiaHC/auSGcNBkiD4LvJSF/g8fmIG2Nm/GNdrfQe4aSfFhEIP1CfDDXIn2TurC
         eNeooCYrb9qEP9I9WeyYNHsUpx3xubf6kTAbjj+QNU/6CcGBZIlNiOYzXeqPt9s2ZyIy
         EMxHLGfylyziStPVh37jvOAP7ITvmoWO2GG98O7rak4h99SH3ijTjsGeK1Gpd0FEJzoO
         Gipl2qo+iYythvXjL9D9po/mQOtdC6k9LJ7eHELLJVF8Yr4WidhRIN0nAfZOkbAZey/S
         bfMD2+1lhZeJcH7yQEhIRXExfmLD8DGoKD6mZyoI/+faYwpAaEj4QN34WtALMSQw+gMM
         oB1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=f7cXd2VkE1l0jKOssoBlQ/UMqtudGAk0W0H84Qlm8r0=;
        b=d2+X7amHClDVtfRV2ORsAySSBslrhcQl8Z/Z7g/LNYgmS0Oe80fJQW2UY1Axpif/Dh
         BrZ5Npv3apJbKOCV9Q9gqM7mOcnU+oOA8CjDT7jx/mWwYQbQkz3HcLOMrQm9+5f7uMn9
         Fa4fHa+uRQdrgsGi19wPbk4FvcPrTJa4shggyYEnWRdS2wgzacGKoW4BQJuB6xO7opyJ
         IbMwfzDx2IRBeM7+XfhsGCdmaqM4pR0EhZPkqsZhIRsnHBfYJ8ECTSus0U+b9I24e1BF
         aYL3UsbX+FYcho/6YC2SnPVX4+d0rHKcqy3F16KnPGEODiWksYs9xliWBOm7szvWll/G
         5lmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335tRxiKwzk4OLWDhRneBOLHBisjfiiim0Fg+2Cdky7vE7FZMmG
	9oUauSl6s9Fx9EXx70itDgQ=
X-Google-Smtp-Source: ABdhPJx0vlGvpqwcdKYyG7RpS0xeEneINvdoNTZyOsUBzp3Wx0o9suKRc6MSebLPzy6Bg4LL/gEoNw==
X-Received: by 2002:a67:e445:: with SMTP id n5mr2522658vsm.55.1596534835018;
        Tue, 04 Aug 2020 02:53:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7241:: with SMTP id n62ls2215267vsc.2.gmail; Tue, 04 Aug
 2020 02:53:54 -0700 (PDT)
X-Received: by 2002:a67:1446:: with SMTP id 67mr743097vsu.151.1596534834604;
        Tue, 04 Aug 2020 02:53:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596534834; cv=none;
        d=google.com; s=arc-20160816;
        b=w/08+sSH79ZPphypiEWZN9tp8Zwmh/KSRsve0r9DRCd1FMD3HCaSzfYtXLdmvXL+jS
         ZevY4T8Yn+JfB5xdsaLLGhOezQpxwXFKSsLB2GGTjoU/eTU3pWDVeFCrDWozLS4hAba1
         95+GxnO9O34A+04zsaLcfIpfit+6gLVpQKr9udQnTZxw20frhJw4Ku9b1BjfVCB9N42g
         521xkgAqkLdhni3+nM189I8l2tpTYhBD2VgI/kmhb0CyTOxgnWELmA9vCj4EtHA/Rfpo
         zbyopfaQ2eShGrrGRkEHnUcZ2DPavz2wWLJp5oyBlV0VkMyWKsE+lIWB2n5gFd8ckvoo
         rVDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=MYEKe5UMASqQHSgU1vr+Ok2umh7pEoBkAyfxePmQ9iQ=;
        b=A7dDTRCQkUZnXNmDypzFKFGS+1FguHdKosD3yZpP9Rt+NXB666ewQAJcWeAz+Rcjvp
         cr9LJNNTIPFIgf/AkrW6zVg+C6YLxtAE0uYciwxpRcG5H0NIeEI955ZxPWAJjNmTk+RP
         Hny3+s7uhpe53estZjlgAyF9tuCTNFVLLF4AsQMaQ6Jifre9TKV8Jt86eoNIMNv6VsKd
         lyFs5ZhJPWhhbho5d8uPlZTH5//bIpSNTbNbdieIHLuuXJ/7UwtZ1PHedEZlPyUHlszg
         GsJm4TMjiKWJnpOVO6Ktyv87oLYea2m9/xa+H77AketV45k7qSxB6vyzBhRetL/D/+d5
         HzFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id x6si145114vko.1.2020.08.04.02.53.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Aug 2020 02:53:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: VMWipFDNvhKUb45u8xUptYSj+3f/0HbRywxG/wZIXT23DyFzPw/awJJBoBp1ypIXwD/+aVXlVJ
 guWiafPkgpdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="170367099"
X-IronPort-AV: E=Sophos;i="5.75,433,1589266800"; 
   d="gz'50?scan'50,208,50";a="170367099"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Aug 2020 02:53:51 -0700
IronPort-SDR: I4/q9EcdN3IYLDn2LXgAFSm1HheWsp8tCucM0xYvd8subh/jnyJrWOYwIB8z1Fea5alfFI680Q
 44S5vGxO1gBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,433,1589266800"; 
   d="gz'50?scan'50,208,50";a="332433841"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 04 Aug 2020 02:53:49 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k2tdk-000048-H7; Tue, 04 Aug 2020 09:53:48 +0000
Date: Tue, 4 Aug 2020 17:53:13 +0800
From: kernel test robot <lkp@intel.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [linux-next:master 12038/13515]
 drivers/accessibility/speakup/serialio.c:87:2: warning: performing pointer
 arithmetic on a null pointer has undefined behavior
Message-ID: <202008041703.6h8RZ8Ns%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Samuel,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   de44d2b59b0fc49b84d711d815dfc2ef0a272912
commit: 2067fd92d75b6d9085a43caf050bca5d88c491b8 [12038/13515] staging/speakup: Move out of staging
config: riscv-randconfig-r024-20200804 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 8c39e70679e93da3af9f881d314940c570d5d822)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git checkout 2067fd92d75b6d9085a43caf050bca5d88c491b8
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:94:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:95:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:98:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:99:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/accessibility/speakup/serialio.c:2:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/accessibility/speakup/serialio.c:87:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(cval | UART_LCR_DLAB, ser->port + UART_LCR);       /* set DLAB */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:88:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(quot & 0xff, ser->port + UART_DLL);        /* LS of divisor */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:89:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(quot >> 8, ser->port + UART_DLM);          /* MS of divisor */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:90:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(cval, ser->port + UART_LCR);               /* reset DLAB */
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:93:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(0, ser->port + UART_IER);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:94:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(UART_MCR_DTR | UART_MCR_RTS, ser->port + UART_MCR);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:97:6: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           if (inb(ser->port + UART_LSR) == 0xff) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   drivers/accessibility/speakup/serialio.c:139:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(UART_MCR_DTR | UART_MCR_RTS | UART_MCR_OUT2,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:142:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(UART_IER_MSI | UART_IER_RLSI | UART_IER_RDI,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:58:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:97:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/accessibility/speakup/serialio.c:144:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           inb(speakup_info.port_tts + UART_LSR);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   drivers/accessibility/speakup/serialio.c:145:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           inb(speakup_info.port_tts + UART_RX);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   drivers/accessibility/speakup/serialio.c:146:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           inb(speakup_info.port_tts + UART_IIR);

vim +87 drivers/accessibility/speakup/serialio.c

1e441594e509c3 drivers/staging/speakup/serialio.c Okash Khawaja          2017-03-14   45  
3ee0017e03cd79 drivers/staging/speakup/serialio.c Jiri Slaby             2012-03-05   46  const struct old_serial_port *spk_serial_init(int index)
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   47  {
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   48  	int baud = 9600, quot = 0;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   49  	unsigned int cval = 0;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   50  	int cflag = CREAD | HUPCL | CLOCAL | B9600 | CS8;
327b882d3bcc1f drivers/staging/speakup/serialio.c Samuel Thibault        2016-01-15   51  	const struct old_serial_port *ser;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   52  	int err;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   53  
327b882d3bcc1f drivers/staging/speakup/serialio.c Samuel Thibault        2016-01-15   54  	if (index >= ARRAY_SIZE(rs_table)) {
327b882d3bcc1f drivers/staging/speakup/serialio.c Samuel Thibault        2016-01-15   55  		pr_info("no port info for ttyS%d\n", index);
327b882d3bcc1f drivers/staging/speakup/serialio.c Samuel Thibault        2016-01-15   56  		return NULL;
327b882d3bcc1f drivers/staging/speakup/serialio.c Samuel Thibault        2016-01-15   57  	}
327b882d3bcc1f drivers/staging/speakup/serialio.c Samuel Thibault        2016-01-15   58  	ser = rs_table + index;
327b882d3bcc1f drivers/staging/speakup/serialio.c Samuel Thibault        2016-01-15   59  
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   60  	/*	Divisor, bytesize and parity */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   61  	quot = ser->baud_base / baud;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   62  	cval = cflag & (CSIZE | CSTOPB);
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   63  #if defined(__powerpc__) || defined(__alpha__)
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   64  	cval >>= 8;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   65  #else /* !__powerpc__ && !__alpha__ */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   66  	cval >>= 4;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   67  #endif /* !__powerpc__ && !__alpha__ */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   68  	if (cflag & PARENB)
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   69  		cval |= UART_LCR_PARITY;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   70  	if (!(cflag & PARODD))
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   71  		cval |= UART_LCR_EPAR;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   72  	if (synth_request_region(ser->port, 8)) {
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   73  		/* try to take it back. */
3a046c19158e89 drivers/staging/speakup/serialio.c Keerthimai Janarthanan 2014-03-18   74  		pr_info("Ports not available, trying to steal them\n");
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   75  		__release_region(&ioport_resource, ser->port, 8);
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   76  		err = synth_request_region(ser->port, 8);
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   77  		if (err) {
3ee0017e03cd79 drivers/staging/speakup/serialio.c Jiri Slaby             2012-03-05   78  			pr_warn("Unable to allocate port at %x, errno %i",
baf9ac9ff8864c drivers/staging/speakup/serialio.c William Hubbs          2010-10-15   79  				ser->port, err);
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   80  			return NULL;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   81  		}
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   82  	}
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   83  
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   84  	/*	Disable UART interrupts, set DTR and RTS high
13d825edd4441d drivers/staging/speakup/serialio.c Aleksei Fedotov        2015-08-14   85  	 *	and set speed.
13d825edd4441d drivers/staging/speakup/serialio.c Aleksei Fedotov        2015-08-14   86  	 */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  @87  	outb(cval | UART_LCR_DLAB, ser->port + UART_LCR);	/* set DLAB */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   88  	outb(quot & 0xff, ser->port + UART_DLL);	/* LS of divisor */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   89  	outb(quot >> 8, ser->port + UART_DLM);		/* MS of divisor */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   90  	outb(cval, ser->port + UART_LCR);		/* reset DLAB */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   91  
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   92  	/* Turn off Interrupts */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   93  	outb(0, ser->port + UART_IER);
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   94  	outb(UART_MCR_DTR | UART_MCR_RTS, ser->port + UART_MCR);
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   95  
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   96  	/* If we read 0xff from the LSR, there is no UART here. */
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   97  	if (inb(ser->port + UART_LSR) == 0xff) {
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   98  		synth_release_region(ser->port, 8);
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07   99  		serstate = NULL;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  100  		return NULL;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  101  	}
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  102  
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  103  	mdelay(1);
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  104  	speakup_info.port_tts = ser->port;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  105  	serstate = ser;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  106  
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  107  	start_serial_interrupt(ser->irq);
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  108  
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  109  	return ser;
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  110  }
c6e3fd22cd5383 drivers/staging/speakup/serialio.c William Hubbs          2010-10-07  111  

:::::: The code at line 87 was first introduced by commit
:::::: c6e3fd22cd538365bfeb82997d5b89562e077d42 Staging: add speakup to the staging directory

:::::: TO: William Hubbs <w.d.hubbs@gmail.com>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008041703.6h8RZ8Ns%25lkp%40intel.com.

--YZ5djTAD1cGYuMQK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--YZ5djTAD1cGYuMQK--
