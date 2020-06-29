Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJ6R5D3QKGQENDLXIGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB6B20D07A
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 19:45:12 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id a18sf11716665oib.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 10:45:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593452712; cv=pass;
        d=google.com; s=arc-20160816;
        b=aMS7GGZN/u+HQJ4f0RuMeFf6ruykbubtJM5vBXTXZQqVnx/PJyIqx/OIWlCnGcDrWW
         /PS/X2bCMTK3G257Oq6qTFTTmYCMClYsKKC109jZ5BTlXsZj8MLKpxqO0INvVTWqF/cT
         OmVc2JhTC9vD4eBSxE9BFWA/6j42CSI4THJY56AOGyPt1lwtm9l+TChTsQo4pB1s2mQ/
         b2jLaPKtZRFLGfYwpITUUrgeVn7ECVdB2Yl1DqDXd+mv7Nl5ma1QLv/4o4x1cfQRkpDU
         eih65hhCtC9w1FF5pz3HkeZFDSqatL5I6Ir4FG3RclhzP59H9AXG5P+F+NydMLi/hu8z
         vNOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=b6J/YB/C7S3sni+W5hWDUgqJllTLweXhhkUiJgmPPXE=;
        b=M++DiZSGfHckN6TkQCFrUDVIKaV3NBzIm+TqjCnp3gJQD4ZL/Mlq2SYSnHQXP2iNJy
         vm1Ghk79sXO8eY9fM6Re9y+BecrNBJC0+92IKbLk6HpBxjQP1npmmM3BWuxa+fv0dLwg
         P8BcJnPSwgPpaJW/yOHlhly0SRY060XMY+bGFFVq609aE+ZBkkThH6133nGE2v9NKySk
         h32JD25sn/k+BulGU/gliADKgXNhlKwTGxINigk0V4clVkVmXplSqRMCnhhT1ttSzjEF
         VhP8SkurorzrnT1F1kX71eeVVACc9WfJmjsBEsKartnwrnxSL4d8ju7ePi2JrUnLNAM+
         grqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b6J/YB/C7S3sni+W5hWDUgqJllTLweXhhkUiJgmPPXE=;
        b=P4evIcFrOl0tW+bpl7gSKTa0XBwNyfBW8lCWsns4+Ef67d7Q4YwOIz2HidTjQoJxH4
         tJcD6R+SZUuuPzAw2cmKsR5kLtnw0bHWN4/6RqjLAtrnK88hDUWkfoC7rXXkbWYAyE5s
         ad4E9qK+313p72fcCFx3KtgIwZIGZw6hlv2YcyrSPXW4RvYpzN/KuAcitREOc3pPiXlI
         6RcINfQF8rqGTLTzF9ytONuyEpMimHS8uuRFLrAQdI8N8tYmE8Ih+t3maz/Pb+a6aLnO
         btYwyj8cvtk2973ZsJ0ng467QssEJXv9SPFchUb66xyIhFF9pfhY9fSI7sx+9UkGpjDc
         aWpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b6J/YB/C7S3sni+W5hWDUgqJllTLweXhhkUiJgmPPXE=;
        b=eRLHtutRTRzwVYjcV9pjRf4QqCFUo6XsEU5Inyb1h4ECyKv16nJ7oBip7Vj9iv0DQH
         22zB5Brl4Sa7rwzRNUe/L/Qgv5Ut05K2QfFuaP+Rem4n4wibT0jA03qV0afnvHcVCeyk
         HtFb33QHJUaUFWnl09ktpWmgGYH+vJoVkAxaFezJmunBF9h/G+a5kxBwzvTFhTYOeyIU
         qb5/v/xvEGfg+8p1OaFcNNnwjWSQShEIR3ucJ1toyk5F+UZdDzLQaTLsiyafFHFN1KtQ
         4R2zmvWFtUp+Sb4aSf81KfYc/b0JgvWT6iJWp89sNuIFbv5NBkkPeU68rbr3GDT5LvRR
         Yc6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531v4gc03+jU/RBhatLcDrdOmFYh5v5H9c91YJ3SrJRhQ2nwpNCM
	zyaEUgfF8jf30rtLphC57+M=
X-Google-Smtp-Source: ABdhPJzk+K5zN4s69gkn+fWael4owwyh9JnZyVzcj+rLfWCjRPz48wenpm1MBEcijUuQBbal9XRs0w==
X-Received: by 2002:a4a:1d83:: with SMTP id 125mr14814944oog.18.1593452711844;
        Mon, 29 Jun 2020 10:45:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:159:: with SMTP id j25ls283913otp.8.gmail; Mon, 29
 Jun 2020 10:45:11 -0700 (PDT)
X-Received: by 2002:a05:6830:20cf:: with SMTP id z15mr14973814otq.248.1593452711458;
        Mon, 29 Jun 2020 10:45:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593452711; cv=none;
        d=google.com; s=arc-20160816;
        b=nC0xBzFsvrupg4/bmPWM5tHcXhFK7FBiVB6ktqL/YyHbQxY2ExLjQCYp7nkgrLdP6j
         zbGW6OELJ9OEVGgo+QH+ixq+9bZtvIHI0xS+tOUQ2zXeY+TlkqUNa7bDv04/rzZYkfXp
         ysCUHCBxMa3fw790FmxIxqsgLfIuBKd5VqOz2G44m0+M4nlDRZBuQ4aoAO+uUkraVMqq
         p7zCq6okbBKTFIOzY62PJdnUnTBDVA2Z8Kpj4OnlGuS4NNuLtHkt/ofPzVYLC7YwWWgM
         ZIgvStVeMB/cH1ICPeg4he++msUzcrTFW6f0YWz5+ZnE4RqUm4OFUfgURz4nCt+n2CPl
         9N4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=w5nqvTKzAnogxvsD/PxS8JLXZWajUYQy+y6zEdz9a7U=;
        b=wZUBMyX23khBpAwa74FaHD1WcWtaP+psxcIo0Vf/m3mXuoVlCshtZC0URPwxJrjxw+
         Exg0r86OxNtCN3QYx1yKD43HnOzDHf3o0h/mCAVGSTNM0FzWclSQgUPUYuhcqKijfXX9
         HOe8xlfc7oR7vGdj+1Aog0fYg+H9jDG2lhpfdSEyR3OGriq6mG1BPtOcxWAw4g6IJBLU
         EEwbPGE3JLcjl1UUo19rd8Wh1NmsXfFYwtXs3/vOW8MaooDTpMyXR9w5QGFj5i2PIxfO
         7eok8Q12erO3ytO6KxWI1uJwLgg2Lip95SLC6O9ugBymTYVLscrdxCUP1MpngZqtA4oY
         IVcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id l18si38003oil.2.2020.06.29.10.45.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 10:45:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: /bZbx0FSsck4J4uV0yy/VJBMg9JGunAbCowpN3RqKrp4QYPzkAYWCy6c9qmUtjnZLwZXg9sTwH
 avhwdauBQkWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="164030248"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; 
   d="gz'50?scan'50,208,50";a="164030248"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2020 10:45:10 -0700
IronPort-SDR: eEJCpdoi61cIB92waRZ8uxHuEzp6LP6bsySgNY5lyh6H8lCKPjo1IN+rf+uLdzJbfk8KrKBRpL
 a8zXgZDywTfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; 
   d="gz'50?scan'50,208,50";a="355525364"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 29 Jun 2020 10:45:08 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jpxq7-00016O-Bk; Mon, 29 Jun 2020 17:45:07 +0000
Date: Tue, 30 Jun 2020 01:44:37 +0800
From: kernel test robot <lkp@intel.com>
To: Anup Patel <anup.patel@wdc.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 4/5] clocksource/drivers: Add CLINT timer driver
Message-ID: <202006300148.zu1Oqqwx%lkp@intel.com>
References: <20200627161957.134376-5-anup.patel@wdc.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline
In-Reply-To: <20200627161957.134376-5-anup.patel@wdc.com>
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


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Anup,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on linus/master v5.8-rc3 next-20200629]
[cannot apply to tip/timers/core]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Anup-Patel/Dedicated-CLINT-timer-driver/20200628-002253
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: riscv-randconfig-r036-20200629 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a28d38a6bca1726d56c9b373f4c7dc5264fc7716)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/clocksource/timer-clint.c:11:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:54:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:93:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/clocksource/timer-clint.c:11:
   In file included from include/linux/clocksource.h:21:
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
   In file included from drivers/clocksource/timer-clint.c:11:
   In file included from include/linux/clocksource.h:21:
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
   In file included from drivers/clocksource/timer-clint.c:11:
   In file included from include/linux/clocksource.h:21:
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
   In file included from drivers/clocksource/timer-clint.c:11:
   In file included from include/linux/clocksource.h:21:
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
   In file included from drivers/clocksource/timer-clint.c:11:
   In file included from include/linux/clocksource.h:21:
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
   In file included from drivers/clocksource/timer-clint.c:11:
   In file included from include/linux/clocksource.h:21:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/clocksource/timer-clint.c:47:29: error: variable has incomplete type 'struct riscv_ipi_ops'
   static struct riscv_ipi_ops clint_ipi_ops = {
                               ^
   drivers/clocksource/timer-clint.c:47:15: note: forward declaration of 'struct riscv_ipi_ops'
   static struct riscv_ipi_ops clint_ipi_ops = {
                 ^
>> drivers/clocksource/timer-clint.c:222:2: error: implicit declaration of function 'riscv_set_ipi_ops' [-Werror,-Wimplicit-function-declaration]
           riscv_set_ipi_ops(&clint_ipi_ops);
           ^
   7 warnings and 2 errors generated.

vim +47 drivers/clocksource/timer-clint.c

    46	
  > 47	static struct riscv_ipi_ops clint_ipi_ops = {
    48		.ipi_inject = clint_send_ipi,
    49		.ipi_clear = clint_clear_ipi,
    50	};
    51	
    52	#ifdef CONFIG_64BIT
    53	#define clint_get_cycles()	readq_relaxed(clint_timer_val)
    54	#else
    55	#define clint_get_cycles()	readl_relaxed(clint_timer_val)
    56	#define clint_get_cycles_hi()	readl_relaxed(((u32 *)clint_timer_val) + 1)
    57	#endif
    58	
    59	#ifdef CONFIG_64BIT
    60	static u64 clint_get_cycles64(void)
    61	{
    62		return clint_get_cycles();
    63	}
    64	#else /* CONFIG_64BIT */
    65	static u64 clint_get_cycles64(void)
    66	{
    67		u32 hi, lo;
    68	
    69		do {
    70			hi = clint_get_cycles_hi();
    71			lo = clint_get_cycles();
    72		} while (hi != clint_get_cycles_hi());
    73	
    74		return ((u64)hi << 32) | lo;
    75	}
    76	#endif /* CONFIG_64BIT */
    77	
    78	static int clint_clock_next_event(unsigned long delta,
    79					   struct clock_event_device *ce)
    80	{
    81		void __iomem *r = clint_timer_cmp +
    82				  cpuid_to_hartid_map(smp_processor_id());
    83	
    84		csr_set(CSR_IE, IE_TIE);
    85		writeq_relaxed(clint_get_cycles64() + delta, r);
    86		return 0;
    87	}
    88	
    89	static DEFINE_PER_CPU(struct clock_event_device, clint_clock_event) = {
    90		.name			= "clint_clockevent",
    91		.features		= CLOCK_EVT_FEAT_ONESHOT,
    92		.rating		= 100,
    93		.set_next_event	= clint_clock_next_event,
    94	};
    95	
    96	static u64 clint_rdtime(struct clocksource *cs)
    97	{
    98		return readq_relaxed(clint_timer_val);
    99	}
   100	
   101	static u64 notrace clint_sched_clock(void)
   102	{
   103		return readq_relaxed(clint_timer_val);
   104	}
   105	
   106	static struct clocksource clint_clocksource = {
   107		.name		= "clint_clocksource",
   108		.rating	= 300,
   109		.mask		= CLOCKSOURCE_MASK(64),
   110		.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
   111		.read		= clint_rdtime,
   112	};
   113	
   114	static int clint_timer_starting_cpu(unsigned int cpu)
   115	{
   116		struct clock_event_device *ce = per_cpu_ptr(&clint_clock_event, cpu);
   117	
   118		ce->cpumask = cpumask_of(cpu);
   119		clockevents_config_and_register(ce, clint_timer_freq, 200, ULONG_MAX);
   120	
   121		enable_percpu_irq(clint_timer_irq,
   122				  irq_get_trigger_type(clint_timer_irq));
   123		return 0;
   124	}
   125	
   126	static int clint_timer_dying_cpu(unsigned int cpu)
   127	{
   128		disable_percpu_irq(clint_timer_irq);
   129		return 0;
   130	}
   131	
   132	static irqreturn_t clint_timer_interrupt(int irq, void *dev_id)
   133	{
   134		struct clock_event_device *evdev = this_cpu_ptr(&clint_clock_event);
   135	
   136		csr_clear(CSR_IE, IE_TIE);
   137		evdev->event_handler(evdev);
   138	
   139		return IRQ_HANDLED;
   140	}
   141	
   142	static int __init clint_timer_init_dt(struct device_node *np)
   143	{
   144		int rc;
   145		u32 i, nr_irqs;
   146		void __iomem *base;
   147		struct of_phandle_args oirq;
   148	
   149		/*
   150		 * Ensure that CLINT device interrupts are either RV_IRQ_TIMER or
   151		 * RV_IRQ_SOFT. If it's anything else then we ignore the device.
   152		 */
   153		nr_irqs = of_irq_count(np);
   154		for (i = 0; i < nr_irqs; i++) {
   155			if (of_irq_parse_one(np, i, &oirq)) {
   156				pr_err("%pOFP: failed to parse irq %d.\n", np, i);
   157				continue;
   158			}
   159	
   160			if ((oirq.args_count != 1) ||
   161			    (oirq.args[0] != RV_IRQ_TIMER &&
   162			     oirq.args[0] != RV_IRQ_SOFT)) {
   163				pr_err("%pOFP: invalid irq %d (hwirq %d)\n",
   164				       np, i, oirq.args[0]);
   165				return -ENODEV;
   166			}
   167	
   168			/* Find parent irq domain and map timer irq */
   169			if (!clint_timer_irq &&
   170			    oirq.args[0] == RV_IRQ_TIMER &&
   171			    irq_find_host(oirq.np))
   172				clint_timer_irq = irq_of_parse_and_map(np, i);
   173		}
   174	
   175		/* If CLINT timer irq not found then fail */
   176		if (!clint_timer_irq) {
   177			pr_err("%pOFP: timer irq not found\n", np);
   178			return -ENODEV;
   179		}
   180	
   181		base = of_iomap(np, 0);
   182		if (!base) {
   183			pr_err("%pOFP: could not map registers\n", np);
   184			return -ENODEV;
   185		}
   186	
   187		clint_ipi_base = base + CLINT_IPI_OFF;
   188		clint_timer_cmp = base + CLINT_TIMER_CMP_OFF;
   189		clint_timer_val = base + CLINT_TIMER_VAL_OFF;
   190		clint_timer_freq = riscv_timebase;
   191	
   192		pr_info("%pOFP: timer running at %ld Hz\n", np, clint_timer_freq);
   193	
   194		rc = clocksource_register_hz(&clint_clocksource, clint_timer_freq);
   195		if (rc) {
   196			iounmap(base);
   197			pr_err("%pOFP: clocksource register failed [%d]\n", np, rc);
   198			return rc;
   199		}
   200	
   201		sched_clock_register(clint_sched_clock, 64, clint_timer_freq);
   202	
   203		rc = request_percpu_irq(clint_timer_irq, clint_timer_interrupt,
   204					 "clint-timer", &clint_clock_event);
   205		if (rc) {
   206			iounmap(base);
   207			pr_err("registering percpu irq failed [%d]\n", rc);
   208			return rc;
   209		}
   210	
   211		rc = cpuhp_setup_state(CPUHP_AP_CLINT_TIMER_STARTING,
   212					"clockevents/clint/timer:starting",
   213					clint_timer_starting_cpu,
   214					clint_timer_dying_cpu);
   215		if (rc) {
   216			free_irq(clint_timer_irq, &clint_clock_event);
   217			iounmap(base);
   218			pr_err("%pOFP: cpuhp setup state failed [%d]\n", np, rc);
   219			return rc;
   220		}
   221	
 > 222		riscv_set_ipi_ops(&clint_ipi_ops);
   223		clint_clear_ipi();
   224	
   225		return 0;
   226	}
   227	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006300148.zu1Oqqwx%25lkp%40intel.com.

--+HP7ph2BbKc20aGI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
B01SW8fpl21y/wE6ZB3tVpwBAA==

--+HP7ph2BbKc20aGI--
