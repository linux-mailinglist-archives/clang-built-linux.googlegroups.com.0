Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRPXVSCQMGQEIDHAIVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E7A38E0AE
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 07:38:15 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id c19-20020a0568303153b0290315c1232768sf16828131ots.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 22:38:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621834694; cv=pass;
        d=google.com; s=arc-20160816;
        b=LgxbCDW1788XwXSJQTeR2D/Qlu/yAjN2sDarMNAIoPlmi3Y0OGzvBYkEA1iSldpxFD
         QSs4NULwIJDlzI7RU5VddqTGM3b9WkRiOAehVnMh/IxX/2szCm6a6aJChi3WJF5ny/lP
         ipfLv9sUrknlpISFr5IeplG4V9/2gSWz7rDuo6g/SQX+ws/MkShSG2Ecwe3N+JXcehtd
         MA8MT+WUc+L0/KipDj7uTAEmxgXZYVjfmPbe5t8D6XmKo6bKRH7urKenWDY7vjOrOpOq
         S0N2u7epEWpTB4HgYIvihUXFvda7xZkpvhHSg1qtPOcXISrzrIqxZXslnao5mnDSR5cY
         J5nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0iOTvOFyh/18+6vIfymkixibuJYqNH6uKVcLNBgB2o0=;
        b=LyBY/Q/7+z5mpgAxuD6keRHq8uOBH/jPTKQH0BjOkpScQHPJXbEtpT3dosW0lZRMgo
         2wsSEUH8Rdo1EMGfnGzlKq09ItZX1Rp3B56adbUGsu26anqoELA+qrQmdVt9y5cwzkP2
         UPhrkru0ExbJUcQlMhSJ+8pe3yC/uL1FmZ9UCFvHtGanNnG80SM9KOsAMjGtF1DKhai6
         uRLUNcGkz3ODno54yJ770jeHiKrlH5RIwp0o4/BwWJqqq327F6ptO+1nEmYNJkkI9K72
         y/Sx3+ZEBVyoSmELMG+armPf+wjHAkJbdoLsIDDYXh2o+23hJczB6qiKZuWdrkp1GKwv
         f8YA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0iOTvOFyh/18+6vIfymkixibuJYqNH6uKVcLNBgB2o0=;
        b=nnoSSamWGIs09yZgIjkcHDXK4GPB++PnJoKjeqnEoZch6yzv/2pdekaFciuVpi7SFc
         h3k1XLgsnMOEIFSMHCi2L8kWJk7qgfjKlyddLZAOH7nkYnBchEkkZsdrr6rHbE0lGnk/
         H+16PoqC9tbjU7nRoDYZT4lwtCAqWYzPcSfE63mLSrXSmJcMtofHyx5iw507JfDA9obn
         K8QfASmEV8Yg03sqX/x/McPAGIuHPlkX97kXRZpKxxoBWByAJdjmiB5tXGEFRQ4MM3x6
         8Na7GPiAlnMARl4gnjhoAssdU6HwPRVCHwlghsPfTTnEucej9b2GoqYdEvlrp8wJ5m6a
         9miA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0iOTvOFyh/18+6vIfymkixibuJYqNH6uKVcLNBgB2o0=;
        b=J9zHTUAcyTZ5hC7a/uidXnwA3smgQnnRXbzizC6wr+yFjl+TajG3a4ZUBfAus/iOY/
         L0KKuszQngU+VreP4E5fkmOt/a5Y41Wn6C7+ZqEu2fu3j7PcCZvxQ8EW7fF3uheoWUNH
         pnSOxNWw9kb4n8RQl8woI5uPx8f02OW+atEgE08a5seook4GgHNjyDFAfSuAAaXdT4pI
         9qnA+e+plYtQGawnk9j2Gs7oNCr++jevwe9hfgSB2OqXbRZZFRV0SjnjlSOrnG6IO8rH
         mJ1Os6SGyDJjzaLkjt2pJQFLuZFncyN4eCZ9Be9x0JRTunV038XvxIrxE5JoYQJ8IiHN
         s8CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JKGhhwRMugBWrdoI6X6D+M7UMRc7cBmbDfds/SAEt0WU5WLAX
	n9rRAT3xf1lZkTWDJmW/ftE=
X-Google-Smtp-Source: ABdhPJzLvc5LuzN9NAglWZCRtc295acGfTIOcu20OmA2WVPoQ3bvNENtbsoY1ZAuD+oRLwMd3v8Q6Q==
X-Received: by 2002:a05:6830:1386:: with SMTP id d6mr18044884otq.122.1621834693921;
        Sun, 23 May 2021 22:38:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a18:: with SMTP id v24ls3945798oth.1.gmail; Sun, 23 May
 2021 22:38:13 -0700 (PDT)
X-Received: by 2002:a05:6830:2472:: with SMTP id x50mr17302632otr.277.1621834693447;
        Sun, 23 May 2021 22:38:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621834693; cv=none;
        d=google.com; s=arc-20160816;
        b=TxjlBhRaXQPVH4E02vFgFcrAHtCc5aYLzcbAAXSNXjJVxZ/37f+3/vDRLMB0Y6LNd+
         YCdd3twGP2BexWj+znzC3qPaGiBcCiw7onsL+xhhQOlQQPb5X1aJPWSIyqqn01PUGUOE
         bkDXK9VKNUfV3EmGn7jRZEPkymI6xJ/DBII4id9NHfvrUGq+lWeh4faeT/sSnKvQ+px5
         tm7KtT+M32gfREVMRZQLuoqDoDoGUm4e4MWsnbqmO0IpMz1nymlq4gQjn4fNXIiVT0hx
         n/+DXv6kp7FXFVUiQ6sCnHAP5h/Co39RPqgjng1vkRvVLV7cASgi6C8JWrJQiJSL+E3S
         YrjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=0ufsMCkM5YQ9nyBBZhjjTRc1jgPtKNlHSSJ6prCNqus=;
        b=uh7fT01DrPiNtiQK6eyGEI4iXdUfrKzZpp77//UlQJ2Uu69H57794AL+vyc11unEeF
         A2k8JORD0yQ9HIPH095geU23IvzqXurhpDr3Ws0/4bia439/WXpvOHT2iDIODhdna3oe
         Ta1ksfgi3rjuPX4ubuC3tWVyh+p4a1ykOTyqlbvO27skfyNuerWdCZkjp3jov8M4hryP
         0KHzDOpiio8KRLVb1F1Amn89y9apzElp0rR/KbPrF/h2K8XY5g/b8jj7ILMCbUecHrxQ
         HlsMlRGOiLd+qjmlGrMT1A3FZosB+ldFlnQ2tIvvGhC0vq8+LJOHkQ177RDQsCw/P8Aj
         e/Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id c4si2417076oto.0.2021.05.23.22.38.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 May 2021 22:38:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: BgOw2+eSOPW4p0hKU632iNMnVHdverxnX7eFKm8NQbKmu4o2IlmPPgv4Nitrzy3z0gBrk4h1UT
 RTZgfEW5G+EA==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="199954424"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="199954424"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 May 2021 22:38:01 -0700
IronPort-SDR: CiQQledCWrx4fEhIEqJEzaJqXn3Lpwzoc232amIN415lZ42dzW9oD3TnNo9JVZD0dGrU/kZDJB
 jTew3I380Kdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="442670513"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 23 May 2021 22:37:59 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ll3Hq-000155-PF; Mon, 24 May 2021 05:37:58 +0000
Date: Mon, 24 May 2021 13:37:04 +0800
From: kernel test robot <lkp@intel.com>
To: Stanislaw Kardach <kda@semihalf.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Palmer Dabbelt <palmerdabbelt@google.com>
Subject: [riscv:next-misc 3/5] drivers/pci/pci-sysfs.c:1098:4: warning:
 performing pointer arithmetic on a null pointer has undefined behavior
Message-ID: <202105241355.SEpDY9ij-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git next-misc
head:   a9672966c48014a7b3e03896b919e9e67b7de414
commit: b40f6bcb0448d69e0c842375fccdb91d60d61ab9 [3/5] riscv: enable generic PCI resource mapping
config: riscv-randconfig-r022-20210524 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 93d1e5822ed64abd777eb94ea9899e96c4c39fbe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git/commit/?id=b40f6bcb0448d69e0c842375fccdb91d60d61ab9
        git remote add riscv https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git
        git fetch --no-tags riscv next-misc
        git checkout b40f6bcb0448d69e0c842375fccdb91d60d61ab9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/pci/pci-sysfs.c:18:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inl(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/pci/pci-sysfs.c:18:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outb(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   In file included from drivers/pci/pci-sysfs.c:18:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   In file included from drivers/pci/pci-sysfs.c:18:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outl(value, addr);
           ^~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   In file included from drivers/pci/pci-sysfs.c:18:
   In file included from include/linux/pci.h:38:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1024:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   In file included from drivers/pci/pci-sysfs.c:27:
   In file included from include/linux/vgaarb.h:34:
   include/video/vga.h:215:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           outw(VGA_OUT16VAL (val, reg), port);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
>> drivers/pci/pci-sysfs.c:1098:4: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           outb(*(u8 *)buf, port);
                           ^~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
   #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
   #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
                                                             ^
   drivers/pci/pci-sysfs.c:1100:17: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           *(u8 *)buf = inb(port);
                                        ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   drivers/pci/pci-sysfs.c:1104:4: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           outw(*(u16 *)buf, port);
                           ^~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
   #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
   #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
                                                                                     ^
   drivers/pci/pci-sysfs.c:1106:18: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           *(u16 *)buf = inw(port);
                                         ^~~~~~~~~
   arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
   #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
   #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   drivers/pci/pci-sysfs.c:1110:4: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           outl(*(u32 *)buf, port);
                           ^~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
   #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
                                                                 ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
   #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
                                                                                     ^
   drivers/pci/pci-sysfs.c:1112:18: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
                           *(u32 *)buf = inl(port);
                                         ^~~~~~~~~
   arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
   #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
   #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
                                                                                        ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   14 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for LOCKDEP
   Depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && (FRAME_POINTER || MIPS || PPC || S390 || MICROBLAZE || ARM || ARC || X86)
   Selected by
   - PROVE_LOCKING && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
   - DEBUG_LOCK_ALLOC && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT


vim +1098 drivers/pci/pci-sysfs.c

^1da177e4c3f41 Linus Torvalds  2005-04-16  1078  
3c78bc61f5ef3b Ryan Desfosses  2014-04-18  1079  static ssize_t pci_resource_io(struct file *filp, struct kobject *kobj,
8633328be24267 Alex Williamson 2010-07-19  1080  			       struct bin_attribute *attr, char *buf,
8633328be24267 Alex Williamson 2010-07-19  1081  			       loff_t off, size_t count, bool write)
8633328be24267 Alex Williamson 2010-07-19  1082  {
554a60379aaa50 Geliang Tang    2015-12-23  1083  	struct pci_dev *pdev = to_pci_dev(kobj_to_dev(kobj));
dca40b186b757c David Woodhouse 2017-04-12  1084  	int bar = (unsigned long)attr->private;
8633328be24267 Alex Williamson 2010-07-19  1085  	unsigned long port = off;
8633328be24267 Alex Williamson 2010-07-19  1086  
dca40b186b757c David Woodhouse 2017-04-12  1087  	port += pci_resource_start(pdev, bar);
8633328be24267 Alex Williamson 2010-07-19  1088  
dca40b186b757c David Woodhouse 2017-04-12  1089  	if (port > pci_resource_end(pdev, bar))
8633328be24267 Alex Williamson 2010-07-19  1090  		return 0;
8633328be24267 Alex Williamson 2010-07-19  1091  
dca40b186b757c David Woodhouse 2017-04-12  1092  	if (port + count - 1 > pci_resource_end(pdev, bar))
8633328be24267 Alex Williamson 2010-07-19  1093  		return -EINVAL;
8633328be24267 Alex Williamson 2010-07-19  1094  
8633328be24267 Alex Williamson 2010-07-19  1095  	switch (count) {
8633328be24267 Alex Williamson 2010-07-19  1096  	case 1:
8633328be24267 Alex Williamson 2010-07-19  1097  		if (write)
8633328be24267 Alex Williamson 2010-07-19 @1098  			outb(*(u8 *)buf, port);
8633328be24267 Alex Williamson 2010-07-19  1099  		else
8633328be24267 Alex Williamson 2010-07-19  1100  			*(u8 *)buf = inb(port);
8633328be24267 Alex Williamson 2010-07-19  1101  		return 1;
8633328be24267 Alex Williamson 2010-07-19  1102  	case 2:
8633328be24267 Alex Williamson 2010-07-19  1103  		if (write)
8633328be24267 Alex Williamson 2010-07-19  1104  			outw(*(u16 *)buf, port);
8633328be24267 Alex Williamson 2010-07-19  1105  		else
8633328be24267 Alex Williamson 2010-07-19  1106  			*(u16 *)buf = inw(port);
8633328be24267 Alex Williamson 2010-07-19  1107  		return 2;
8633328be24267 Alex Williamson 2010-07-19  1108  	case 4:
8633328be24267 Alex Williamson 2010-07-19  1109  		if (write)
8633328be24267 Alex Williamson 2010-07-19  1110  			outl(*(u32 *)buf, port);
8633328be24267 Alex Williamson 2010-07-19  1111  		else
8633328be24267 Alex Williamson 2010-07-19  1112  			*(u32 *)buf = inl(port);
8633328be24267 Alex Williamson 2010-07-19  1113  		return 4;
8633328be24267 Alex Williamson 2010-07-19  1114  	}
8633328be24267 Alex Williamson 2010-07-19  1115  	return -EINVAL;
8633328be24267 Alex Williamson 2010-07-19  1116  }
8633328be24267 Alex Williamson 2010-07-19  1117  

:::::: The code at line 1098 was first introduced by commit
:::::: 8633328be242677fdedc42052838dd0608e7f342 PCI: Allow read/write access to sysfs I/O port resources

:::::: TO: Alex Williamson <alex.williamson@redhat.com>
:::::: CC: Jesse Barnes <jbarnes@virtuousgeek.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105241355.SEpDY9ij-lkp%40intel.com.

--uAKRQypu60I7Lcqm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--uAKRQypu60I7Lcqm--
