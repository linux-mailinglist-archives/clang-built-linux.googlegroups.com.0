Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6EM3L6QKGQEX4KFZKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5F52B9515
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 15:51:38 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id p3sf3926157plq.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 06:51:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605797497; cv=pass;
        d=google.com; s=arc-20160816;
        b=qIcmA0sa8byQoMd9ygwIf1pzeHP67IEg+PTVONPUtEM54t6uw0P6d2fcbyfmMuy7iD
         o/jW7JWSW9/7ABbqN9ba/+1oQV0zWZQzdiowPm+HQotiWiCaFx3SUGeQ6wmV7Kue8sUr
         09k527D/KHcH22yB+ljx/fSO1K6ZpFs9QzWN+xPOLcoODnUEDx/vHRCc24UPm9CY+oLX
         hHFqKJYkPl8gFXf0qq4yrPaqvTSA2NX7n0pcOGPmXJaJYGguojqodGh+BYvH2LK+eKiw
         xwKMFE4aQ9KYAKrwsyMXtypuU8j+T0X6jgvfDW7hGdtjUbT+k4gwEqfJQ4RkRcZZ0rWi
         lq2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dTle6wj5f2lP8oFt/NP6PIfc4+nvt6DE0ywldCJABRk=;
        b=SUw6h0iToqyXaanV1uxfUXpDfYjemi/3P82Z9uRGYZ+s08jkPeQfYNUeWViDU7WA06
         dhn2gW48n9KtVJstalanYmkotCNP4g84vIXs49Kv5rfSmxmCa5fqlNUdtxVqRwCTUGAr
         KpYt7hH2A2YhGx/tep5hycAki90uicllOtOg3j+PyQMp69vncY91vfPee0d0DwzkjyrR
         L+078S5o6YJeZN435EsbQR6Sg2rz8O6yLzqRlpKmpV7Au1g13zi/nHSGgr2ELMR1836o
         XGAeycCsY4j9O45+zjzcD9ob92VzrQCRMMoBZObJpxblXTrgBeNtVuKOgkW82uy7ET+e
         lZ9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dTle6wj5f2lP8oFt/NP6PIfc4+nvt6DE0ywldCJABRk=;
        b=kWm0Xlu8SlzL3q4MaHX1sPOVLZBnOYbdNzGGl7TDmicE+hzS9spTzBF6+E9X1fGHe+
         GWqW7HogFqvYeOA2VsVf4Dt6H34CyKZA6tMEwVsiauGL/3JJnkaDdZBV01uyGiE5UlN+
         CQpIiyY7mVfdygbFMB80QTPL3acJTtVBfUM9C2HdmL8wz3WXOzdBXbkLkZ4o3eKtl0P/
         dAZxV75B23ncnuposcYPXIcIXunWAStcaSZ5H41fU8+iXM9cllSUXoepYv30M7kd8QPO
         RFt6DeYRH2W57rfPrI4bYLDNP3oaqbLuYKKOnzlk/K//aojhO5D62OHbZRKKJmRFH2Lm
         Ujgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dTle6wj5f2lP8oFt/NP6PIfc4+nvt6DE0ywldCJABRk=;
        b=kSvP3wLIteooTsDjHMO8qVieyoXBAGgISSXVf+TfFUa8ekNpYaLk5pm1wzZ2fFqxMT
         xzaWp3Byp+F9z+l0PawAe6NwC2yknPFqR1NY4InhOFMn3TIJrIr87eI64OsobIfTeGJy
         lQ+ahF3Ah1Bh3A/ydRqaUG+RrWptphbp9XHPJP+g11xnTv3v53DKLwgX30zwzeMPvreZ
         h0axagOvQ0pzH/WqfWBwJVNls9RImU+Q80z2RSbbfeg5XqivBNvUBNVxSzAgKHtdMprj
         dNLpfekrTuWl9ckazQybwwF48/xnsPR7R5aHPjoDIvQm1OAm7XnxxLpsI6aycJ40jZTb
         6RZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533u3CdXFRAWZ9u3BcvTCmsr1zzzHCmCPYM76BGL9CyenY1HEaeO
	FZT/ozTXeNvQNiq7iwdMeZw=
X-Google-Smtp-Source: ABdhPJzV1i0T8YmfcaMSzSWDRaPip6oNk21q0+2sE1hRQ5PkTq67aQhTq4ztLPREZ1+YscTDZKvKIg==
X-Received: by 2002:a17:90a:4a12:: with SMTP id e18mr5126649pjh.9.1605797496693;
        Thu, 19 Nov 2020 06:51:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8616:: with SMTP id p22ls1190530pfn.3.gmail; Thu, 19 Nov
 2020 06:51:36 -0800 (PST)
X-Received: by 2002:a63:1707:: with SMTP id x7mr3021987pgl.251.1605797495911;
        Thu, 19 Nov 2020 06:51:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605797495; cv=none;
        d=google.com; s=arc-20160816;
        b=aRr1OFzXKkzx6XKrTtfEWVlSpS8/62tqV1gIA7s2FAWAI/dL9XCVVrn9HWfY//Q7PB
         ojFlcrYp38JEuxLhF3jg8p88QHS2OSywObTpNLmDR8sPIyVpfYkRJlmQwHBpAi+ZIozw
         A61R2nr3lUbo7BfSXC8d5dvM+ICdNNSQqKvMlZF2ORNMzn2SXke+65aNH+t3doLuxnk5
         uspGvQ82h+q8p20V4kJofE06g/931+09shZZ29ad6V7+x/EgUTSFwQN2gYq8H9UJh7SJ
         vUzBdJ5XjNWV4JzvQdNucIFyGmZLZi0IkCdnI4Q4XhhVoKgkTsFP8ifeVT+tQVu4RF15
         8HRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=aD5xvsCadaB+sPGP9CVLbdZO3B1Y/JryULzBjN6/l5g=;
        b=YYl+ZlRl0zfzHtpVZo/2L6zgrcZVH3bsIi1YHERPNvIWcSLTLL6yVR6sJXQHbOpIbE
         jm/35FKG9pGSiENJQufdtyQ/EFtGMFH1UZNIpx0rr7daCGHJNnlYqC2I+zzfqtILuw00
         dr6CKaxlQ3lqdMPxonN460LmC80LdU85vVtZnnta/jMU0T1WCAbfuKyg7rU4aVhjeh7s
         IOuaefmzlzuE38Vibl3hiGdINDQ4zeStL5a8lOPeBucXuDzmv4iM3Vx9w8ppiquManlI
         8A8Ky6jchQ3OZZ6BJTjE79r45+VBIyy6Q/acU6Y4a3ZylBaaS9FWxDgq3KMqRpska+4U
         LvJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id g4si540088pju.0.2020.11.19.06.51.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Nov 2020 06:51:35 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: L/rp9WMjIxRh8pgE1azbqNHFF9ItqM8NGefYQRKQCE5eieGXDIjdI1OcmuAm97ezzUYZcq1hlK
 wCi32JZSfKfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="232917327"
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; 
   d="gz'50?scan'50,208,50";a="232917327"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Nov 2020 06:51:34 -0800
IronPort-SDR: gVXT8t4ps+3bqulhuBW1rn1y9R0fWkCe8M7l4B3w+LtGEHHJN1EmIAKMNRehmz3L4hGBw0D3M9
 jLukCn0GHfNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; 
   d="gz'50?scan'50,208,50";a="311093182"
Received: from lkp-server01.sh.intel.com (HELO 1b817e3f8ad2) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 19 Nov 2020 06:51:32 -0800
Received: from kbuild by 1b817e3f8ad2 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kflHX-00004D-B5; Thu, 19 Nov 2020 14:51:31 +0000
Date: Thu, 19 Nov 2020 22:51:09 +0800
From: kernel test robot <lkp@intel.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: drivers/clocksource/timer-riscv.c:28:16: error: implicit declaration
 of function 'get_cycles64'
Message-ID: <202011192206.hvVRHbKV-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   c2e7554e1b85935d962127efa3c2a76483b0b3b6
commit: d5be89a8d118a8e8d09cd74a921a808f17fbdd09 RISC-V: Resurrect the MMIO timer implementation for M-mode systems
date:   9 weeks ago
config: riscv-randconfig-r001-20201119 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
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

62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04 @10  #include <linux/clocksource.h>
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  11  #include <linux/clockchips.h>
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  12  #include <linux/cpu.h>
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  13  #include <linux/delay.h>
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  14  #include <linux/irq.h>
033a65de7eced89 drivers/clocksource/timer-riscv.c Anup Patel        2020-06-01  15  #include <linux/irqdomain.h>
92e0d143fdef1fa drivers/clocksource/riscv_timer.c Anup Patel        2018-12-04  16  #include <linux/sched_clock.h>
4f9bbcefa142862 drivers/clocksource/timer-riscv.c Christoph Hellwig 2019-10-28  17  #include <linux/io-64-nonatomic-lo-hi.h>
033a65de7eced89 drivers/clocksource/timer-riscv.c Anup Patel        2020-06-01  18  #include <linux/interrupt.h>
033a65de7eced89 drivers/clocksource/timer-riscv.c Anup Patel        2020-06-01  19  #include <linux/of_irq.h>
f99fb607fb2bc0d drivers/clocksource/riscv_timer.c Atish Patra       2018-10-02  20  #include <asm/smp.h>
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  21  #include <asm/sbi.h>
2bc3fc877aa9c4c drivers/clocksource/timer-riscv.c Anup Patel        2020-08-17  22  #include <asm/timex.h>
4f9bbcefa142862 drivers/clocksource/timer-riscv.c Christoph Hellwig 2019-10-28  23  
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  24  static int riscv_clock_next_event(unsigned long delta,
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  25  		struct clock_event_device *ce)
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  26  {
a4c3733d32a72f1 drivers/clocksource/timer-riscv.c Christoph Hellwig 2019-10-28  27  	csr_set(CSR_IE, IE_TIE);
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04 @28  	sbi_set_timer(get_cycles64() + delta);
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  29  	return 0;
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  30  }
62b0194368147de drivers/clocksource/riscv_timer.c Palmer Dabbelt    2018-08-04  31  

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011192206.hvVRHbKV-lkp%40intel.com.

--6TrnltStXW4iwmi0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--6TrnltStXW4iwmi0--
