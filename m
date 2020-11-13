Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3G5XD6QKGQEJEYWD3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 425C92B161B
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 07:59:58 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id w63sf2361253vka.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:59:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605250797; cv=pass;
        d=google.com; s=arc-20160816;
        b=b9WRN8yOhmoVQa1IYq7eQhFHAA65zjrhndCP+iUEmif2oDRq1IYHpP1Wrg4b0EhBZt
         J/uJYNCNv0oqpxf6t86dXlYRcjweF0FGOhI5MdIoNlmTBvSJlzDvFc3N9h30jlMmsfsO
         2hiH5i1MrwSzSIlGcCZDIhUw65S1wRzNLDRHgoGuvlUrW/Svk5GU2UDhFsH/meYrA2ew
         c/xgEZzVh7Tw2tAoXiOsLGUh94KgGEuq4f7f6Svo2AnecgW31IwBhKTSz6TO3nQWU+Fs
         ipzQfrVoH9qhmZhCnsR1g3QgSE7CMEGZZXsSGwxDZz6o192CmPEg9cU5Vu+RJYbrJsCF
         D7OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=/x8bMdplOyxGnoxsy9spWtk83iSCyO1hiLfW4pHZ6BM=;
        b=rN6+NoL9D5iwr6sNDxlo3MvFbBjT7MAPS59QsU0Y8Ou1QlE7WXPHWvKN/2fYas2EUv
         vZFMMbUzNAnqLsIHuXvABn+esSfkKk3gc0MNUfTBApvncb138RGDG5cFQHVxDQLvV5Qq
         5FQkMNBa5h+JtNtbfaDqGYVVn/fM23TCmfGm4TuhhNvkRK2guHZSq0Upa0CBIj1mOggY
         A9EVAP359y5s00QYNmP5jffnz21N7qxl9Sa8Xf0mB3hbUo88j2fRILUez5hCGTQA9Es9
         HimZCVHNjnI7jwFmhXz0WpEIxJsK2KJgKN8L6vDklRfibmpu41UlcN+G+RxD3PzId/Ln
         vIbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/x8bMdplOyxGnoxsy9spWtk83iSCyO1hiLfW4pHZ6BM=;
        b=QiGDRCy5AQQhb2+6EChenelPtqiHwFRjLXQQ5MX2EAWe/ef5QIA55MMKgY6rtUIy0j
         4Ce1jNP2XozY4fgKRyGOCJ0jKtWZQkYQKBCV8/nGr93a3IUUYVPR97fOw+FvheHN7aAH
         G0xDbL62KPl5IYTd2uNYrZrGp9Xcf6uMCQb6JFoj1RNlV5KaqLJ9g04lYghTehoNjAgg
         hLiIjKRhnXtXJi/KLFwZGPN3Zo4UQtRmse+pSijLMJqeHyC/DkVoAw8+H7Oy9QHRPSKc
         4pUvzBwHLJ956xQaWnwl7FX91lwTpqPQhh2X/3eX86mB0Ihz6LVkKb11UzgrPYmAHTbC
         a7eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/x8bMdplOyxGnoxsy9spWtk83iSCyO1hiLfW4pHZ6BM=;
        b=SKTyrYT5P+ngs5Oh20pin4Hw/ysXwzvSka9xOdFXEOB2FCJMxS8I+KY4opZl6iod8R
         ByZjA1Cpx6B+GRhQfE7CfFxWFqXDHr+WDD6sDbikp0OSzAMmo+TibDVhahCVPboz/+hC
         aaaOMUtafiqO8S145VkaoWZWgULvGLrCafqAql8Y03/UI6rAFJ2o+mW0rkLu4a7v86Wv
         /nKmWdiytARvghJFxNW5BzrosToA0qdA39pX8dUzOhdy8HfD9y1lleQGyGkR90ewyfMH
         VCNvuGvX6l6BhSAMWy+wfEgg+PUmqC22+AXcF+NVGSNpBiV6wn0zUeQpAeCWkabFYzgB
         mDAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nnn5FIW3fYIP335yNQzc+0UfE7Q3fppDFHdVmyfbZUDm32ztI
	riBszYysogUxusfkFg0NZJg=
X-Google-Smtp-Source: ABdhPJzzf6XH/gADtt2tlpIxJJBOJ/WP0/v4T/NyF1yQkdvmGFZaF3mSI/PBAEBkCmPIhNMRK7T82g==
X-Received: by 2002:a1f:ad09:: with SMTP id w9mr310321vke.9.1605250797038;
        Thu, 12 Nov 2020 22:59:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:29d4:: with SMTP id p203ls309995vkp.0.gmail; Thu, 12 Nov
 2020 22:59:56 -0800 (PST)
X-Received: by 2002:a1f:38d2:: with SMTP id f201mr293210vka.17.1605250796413;
        Thu, 12 Nov 2020 22:59:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605250796; cv=none;
        d=google.com; s=arc-20160816;
        b=PP76TZ0TBkMDHPSauOLVGwn3ZcuOD418fQKsk2nZ/FOmTwlZTeFSpdMwc3Ahkh/0N+
         2lIBWYFSlu3X8yzK7ttC8Ly9ZfWL/XAS6fUE26hGK0aqS+W0IpG1H6GXUkYMoGmFV0vH
         UKB/yu38OHzH4in1kB9VSrb9pbErVB0S+hckZc8EfoAjfm9w7gYWFwDfxwo8+k6VjNLJ
         j6GdiW4HA3b82MrqE8pdV1oYaRfqkZcgxjVtGFk0jTkd26puv6Y3++PucvPUQmMWndTs
         cbuF9sb0Wysbotmf6D28K9OVV7UVMxeyLsnV8HuWKoZIUzLTPBEAmHHtcMFzn7acM4Rk
         cqRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Lozt+wSvGsxADXEIz57QuvqGu/TqfBec+UxqDb4lCJ4=;
        b=aj6b5Zf4WNpRQJUCJnEa3XWXd0p7eOqNxqlNX/2N4VE/6Fcp45r0dnDH0h3F3HBFcw
         pPtJ+4eZXPJNDzsM96LsG6sKDIm/WHfKs8vbAEuZ0gf21fNwRTFRQ9cQwAX4q1s5TKJg
         XxGJGgvpYyuMR/jLW/YDB7odofJYoqS3OYPjwzkImvEyed5Kcn4q5QiBLGRx4SjQaAyh
         AAVlilQXT4QjkD2S4ZiRc/e2b8/l4lDFAe5CaXhCb/lkADoR1BRDTFxvlC58q+soynpG
         qGo92hkDEzeqtQSvr6HRAICXcyGKMiLag63pXJvdqN6JHby5Cx0HLym46zTk+R097coX
         oPvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id b16si638116vkn.5.2020.11.12.22.59.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 22:59:56 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: N9R0bCpWFLIhZZmgKKfAFtyGODWwTpdOBaHLKQOf9sned5rI1VxjOc27llfa+/nDYWnhjpjq/2
 X0HJLlEfEizg==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="158213988"
X-IronPort-AV: E=Sophos;i="5.77,474,1596524400"; 
   d="gz'50?scan'50,208,50";a="158213988"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 22:59:54 -0800
IronPort-SDR: 1Yj/a1JIHCnP8fH2SOOQ87kUYeRwbe7z/G5evMVAI/nTIhcOoSy3jWIvOou+GvCH0l8EXn/mX7
 Bqg6BFOW7+QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,474,1596524400"; 
   d="gz'50?scan'50,208,50";a="361248427"
Received: from lkp-server02.sh.intel.com (HELO 697932c29306) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 12 Nov 2020 22:59:48 -0800
Received: from kbuild by 697932c29306 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kdT3j-00007f-Ob; Fri, 13 Nov 2020 06:59:47 +0000
Date: Fri, 13 Nov 2020 14:58:54 +0800
From: kernel test robot <lkp@intel.com>
To: Dmitry Safonov <dima@arista.com>, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Andy Lutomirski <luto@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: Re: [PATCH 02/19] elf: Move arch_setup_additional_pages() to generic
 elf.h
Message-ID: <202011131427.jE6N1lwG-lkp@intel.com>
References: <20201108051730.2042693-3-dima@arista.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
In-Reply-To: <20201108051730.2042693-3-dima@arista.com>
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


--5vNYLRcllDrimb99
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dmitry,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on c34f157421f6905e6b4a79a312e9175dce2bc607]

url:    https://github.com/0day-ci/linux/commits/Dmitry-Safonov/Add-generic-user_landing-tracking/20201109-090354
base:    c34f157421f6905e6b4a79a312e9175dce2bc607
config: riscv-randconfig-r026-20201109 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/c46ac7ddea192a97f9b0b3aa3536566a37389bec
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Dmitry-Safonov/Add-generic-user_landing-tracking/20201109-090354
        git checkout c46ac7ddea192a97f9b0b3aa3536566a37389bec
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #ifndef _ASM_RISCV_ELF_H
    ^
   In file included from arch/riscv/kernel/traps_misaligned.c:9:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from arch/riscv/kernel/traps_misaligned.c:9:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
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
   In file included from arch/riscv/kernel/traps_misaligned.c:9:
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
   In file included from arch/riscv/kernel/traps_misaligned.c:9:
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
   In file included from arch/riscv/kernel/traps_misaligned.c:9:
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
   In file included from arch/riscv/kernel/traps_misaligned.c:9:
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
   In file included from arch/riscv/kernel/traps_misaligned.c:9:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   arch/riscv/kernel/traps_misaligned.c:240:5: warning: no previous prototype for function 'handle_misaligned_load' [-Wmissing-prototypes]
   int handle_misaligned_load(struct pt_regs *regs)
       ^
   arch/riscv/kernel/traps_misaligned.c:240:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int handle_misaligned_load(struct pt_regs *regs)
   ^
   static 
>> arch/riscv/kernel/traps_misaligned.c:316:2: warning: shift count is negative [-Wshift-count-negative]
           SET_RD(insn, regs, val.data_ulong << shift >> shift);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:142:36: note: expanded from macro 'SET_RD'
   #define SET_RD(insn, regs, val)         (*REG_PTR(insn, SH_RD, regs) = (val))
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:132:28: note: expanded from macro 'REG_PTR'
           (ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:129:3: note: expanded from macro 'REG_OFFSET'
           (SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:123:18: note: expanded from macro 'SHIFT_RIGHT'
           ((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
                           ^  ~~~~
   arch/riscv/kernel/traps_misaligned.c:323:5: warning: no previous prototype for function 'handle_misaligned_store' [-Wmissing-prototypes]
   int handle_misaligned_store(struct pt_regs *regs)
       ^
   arch/riscv/kernel/traps_misaligned.c:323:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int handle_misaligned_store(struct pt_regs *regs)
   ^
   static 
   arch/riscv/kernel/traps_misaligned.c:333:19: warning: shift count is negative [-Wshift-count-negative]
           val.data_ulong = GET_RS2(insn, regs);
                            ^~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:137:32: note: expanded from macro 'GET_RS2'
   #define GET_RS2(insn, regs)             (*REG_PTR(insn, SH_RS2, regs))
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:132:28: note: expanded from macro 'REG_PTR'
           (ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:129:3: note: expanded from macro 'REG_OFFSET'
           (SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:123:18: note: expanded from macro 'SHIFT_RIGHT'
           ((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
                           ^  ~~~~
   arch/riscv/kernel/traps_misaligned.c:346:20: warning: shift count is negative [-Wshift-count-negative]
                   val.data_ulong = GET_RS2S(insn, regs);
                                    ^~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:139:33: note: expanded from macro 'GET_RS2S'
   #define GET_RS2S(insn, regs)            (*REG_PTR(RVC_RS2S(insn), 0, regs))
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:132:28: note: expanded from macro 'REG_PTR'
           (ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:129:3: note: expanded from macro 'REG_OFFSET'
           (SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:123:34: note: expanded from macro 'SHIFT_RIGHT'
           ((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
                                           ^  ~~~
   arch/riscv/kernel/traps_misaligned.c:350:20: warning: shift count is negative [-Wshift-count-negative]
                   val.data_ulong = GET_RS2C(insn, regs);
                                    ^~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:140:33: note: expanded from macro 'GET_RS2C'
   #define GET_RS2C(insn, regs)            (*REG_PTR(insn, SH_RS2C, regs))
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:132:28: note: expanded from macro 'REG_PTR'
           (ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:129:3: note: expanded from macro 'REG_OFFSET'
           (SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:123:34: note: expanded from macro 'SHIFT_RIGHT'
           ((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
                                           ^  ~~~
   arch/riscv/kernel/traps_misaligned.c:354:20: warning: shift count is negative [-Wshift-count-negative]
                   val.data_ulong = GET_RS2S(insn, regs);
                                    ^~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:139:33: note: expanded from macro 'GET_RS2S'
   #define GET_RS2S(insn, regs)            (*REG_PTR(RVC_RS2S(insn), 0, regs))
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:132:28: note: expanded from macro 'REG_PTR'
           (ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:129:3: note: expanded from macro 'REG_OFFSET'
           (SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:123:34: note: expanded from macro 'SHIFT_RIGHT'
           ((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
                                           ^  ~~~
   arch/riscv/kernel/traps_misaligned.c:358:20: warning: shift count is negative [-Wshift-count-negative]
                   val.data_ulong = GET_RS2C(insn, regs);
                                    ^~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:140:33: note: expanded from macro 'GET_RS2C'
   #define GET_RS2C(insn, regs)            (*REG_PTR(insn, SH_RS2C, regs))
                                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:132:28: note: expanded from macro 'REG_PTR'
           (ulong *)((ulong)(regs) + REG_OFFSET(insn, pos))
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:129:3: note: expanded from macro 'REG_OFFSET'
           (SHIFT_RIGHT((insn), (pos) - LOG_REGBYTES) & REG_MASK)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/riscv/kernel/traps_misaligned.c:123:34: note: expanded from macro 'SHIFT_RIGHT'
           ((y) < 0 ? ((x) << -(y)) : ((x) >> (y)))
                                           ^  ~~~
   15 warnings and 1 error generated.
--
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inb(addr);
                  ^~~~~~~~~
   arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
   #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
                                                                           ~~~~~~~~~~ ^
   arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
   #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
                                                            ^
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return inw(addr);
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
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
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
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/riscv/include/asm/io.h:149:
   include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:20:
   In file included from include/drm/drm_fb_helper.h:39:
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
>> drivers/gpu/drm/vkms/vkms_drv.c:146:9: warning: shift count >= width of type [-Wshift-count-overflow]
                                              DMA_BIT_MASK(64));
                                              ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   9 warnings and 1 error generated.

vim +316 arch/riscv/kernel/traps_misaligned.c

956d705dd279f7 Damien Le Moal 2020-03-16  239  
956d705dd279f7 Damien Le Moal 2020-03-16  240  int handle_misaligned_load(struct pt_regs *regs)
956d705dd279f7 Damien Le Moal 2020-03-16  241  {
956d705dd279f7 Damien Le Moal 2020-03-16  242  	union reg_data val;
956d705dd279f7 Damien Le Moal 2020-03-16  243  	unsigned long epc = regs->epc;
956d705dd279f7 Damien Le Moal 2020-03-16  244  	unsigned long insn = get_insn(epc);
956d705dd279f7 Damien Le Moal 2020-03-16  245  	unsigned long addr = csr_read(mtval);
956d705dd279f7 Damien Le Moal 2020-03-16  246  	int i, fp = 0, shift = 0, len = 0;
956d705dd279f7 Damien Le Moal 2020-03-16  247  
956d705dd279f7 Damien Le Moal 2020-03-16  248  	regs->epc = 0;
956d705dd279f7 Damien Le Moal 2020-03-16  249  
956d705dd279f7 Damien Le Moal 2020-03-16  250  	if ((insn & INSN_MASK_LW) == INSN_MATCH_LW) {
956d705dd279f7 Damien Le Moal 2020-03-16  251  		len = 4;
956d705dd279f7 Damien Le Moal 2020-03-16  252  		shift = 8 * (sizeof(unsigned long) - len);
956d705dd279f7 Damien Le Moal 2020-03-16  253  #if defined(CONFIG_64BIT)
956d705dd279f7 Damien Le Moal 2020-03-16  254  	} else if ((insn & INSN_MASK_LD) == INSN_MATCH_LD) {
956d705dd279f7 Damien Le Moal 2020-03-16  255  		len = 8;
956d705dd279f7 Damien Le Moal 2020-03-16  256  		shift = 8 * (sizeof(unsigned long) - len);
956d705dd279f7 Damien Le Moal 2020-03-16  257  	} else if ((insn & INSN_MASK_LWU) == INSN_MATCH_LWU) {
956d705dd279f7 Damien Le Moal 2020-03-16  258  		len = 4;
956d705dd279f7 Damien Le Moal 2020-03-16  259  #endif
956d705dd279f7 Damien Le Moal 2020-03-16  260  	} else if ((insn & INSN_MASK_FLD) == INSN_MATCH_FLD) {
956d705dd279f7 Damien Le Moal 2020-03-16  261  		fp = 1;
956d705dd279f7 Damien Le Moal 2020-03-16  262  		len = 8;
956d705dd279f7 Damien Le Moal 2020-03-16  263  	} else if ((insn & INSN_MASK_FLW) == INSN_MATCH_FLW) {
956d705dd279f7 Damien Le Moal 2020-03-16  264  		fp = 1;
956d705dd279f7 Damien Le Moal 2020-03-16  265  		len = 4;
956d705dd279f7 Damien Le Moal 2020-03-16  266  	} else if ((insn & INSN_MASK_LH) == INSN_MATCH_LH) {
956d705dd279f7 Damien Le Moal 2020-03-16  267  		len = 2;
956d705dd279f7 Damien Le Moal 2020-03-16  268  		shift = 8 * (sizeof(unsigned long) - len);
956d705dd279f7 Damien Le Moal 2020-03-16  269  	} else if ((insn & INSN_MASK_LHU) == INSN_MATCH_LHU) {
956d705dd279f7 Damien Le Moal 2020-03-16  270  		len = 2;
956d705dd279f7 Damien Le Moal 2020-03-16  271  #if defined(CONFIG_64BIT)
956d705dd279f7 Damien Le Moal 2020-03-16  272  	} else if ((insn & INSN_MASK_C_LD) == INSN_MATCH_C_LD) {
956d705dd279f7 Damien Le Moal 2020-03-16  273  		len = 8;
956d705dd279f7 Damien Le Moal 2020-03-16  274  		shift = 8 * (sizeof(unsigned long) - len);
956d705dd279f7 Damien Le Moal 2020-03-16  275  		insn = RVC_RS2S(insn) << SH_RD;
956d705dd279f7 Damien Le Moal 2020-03-16  276  	} else if ((insn & INSN_MASK_C_LDSP) == INSN_MATCH_C_LDSP &&
956d705dd279f7 Damien Le Moal 2020-03-16  277  		   ((insn >> SH_RD) & 0x1f)) {
956d705dd279f7 Damien Le Moal 2020-03-16  278  		len = 8;
956d705dd279f7 Damien Le Moal 2020-03-16  279  		shift = 8 * (sizeof(unsigned long) - len);
956d705dd279f7 Damien Le Moal 2020-03-16  280  #endif
956d705dd279f7 Damien Le Moal 2020-03-16  281  	} else if ((insn & INSN_MASK_C_LW) == INSN_MATCH_C_LW) {
956d705dd279f7 Damien Le Moal 2020-03-16  282  		len = 4;
956d705dd279f7 Damien Le Moal 2020-03-16  283  		shift = 8 * (sizeof(unsigned long) - len);
956d705dd279f7 Damien Le Moal 2020-03-16  284  		insn = RVC_RS2S(insn) << SH_RD;
956d705dd279f7 Damien Le Moal 2020-03-16  285  	} else if ((insn & INSN_MASK_C_LWSP) == INSN_MATCH_C_LWSP &&
956d705dd279f7 Damien Le Moal 2020-03-16  286  		   ((insn >> SH_RD) & 0x1f)) {
956d705dd279f7 Damien Le Moal 2020-03-16  287  		len = 4;
956d705dd279f7 Damien Le Moal 2020-03-16  288  		shift = 8 * (sizeof(unsigned long) - len);
956d705dd279f7 Damien Le Moal 2020-03-16  289  	} else if ((insn & INSN_MASK_C_FLD) == INSN_MATCH_C_FLD) {
956d705dd279f7 Damien Le Moal 2020-03-16  290  		fp = 1;
956d705dd279f7 Damien Le Moal 2020-03-16  291  		len = 8;
956d705dd279f7 Damien Le Moal 2020-03-16  292  		insn = RVC_RS2S(insn) << SH_RD;
956d705dd279f7 Damien Le Moal 2020-03-16  293  	} else if ((insn & INSN_MASK_C_FLDSP) == INSN_MATCH_C_FLDSP) {
956d705dd279f7 Damien Le Moal 2020-03-16  294  		fp = 1;
956d705dd279f7 Damien Le Moal 2020-03-16  295  		len = 8;
956d705dd279f7 Damien Le Moal 2020-03-16  296  #if defined(CONFIG_32BIT)
956d705dd279f7 Damien Le Moal 2020-03-16  297  	} else if ((insn & INSN_MASK_C_FLW) == INSN_MATCH_C_FLW) {
956d705dd279f7 Damien Le Moal 2020-03-16  298  		fp = 1;
956d705dd279f7 Damien Le Moal 2020-03-16  299  		len = 4;
956d705dd279f7 Damien Le Moal 2020-03-16  300  		insn = RVC_RS2S(insn) << SH_RD;
956d705dd279f7 Damien Le Moal 2020-03-16  301  	} else if ((insn & INSN_MASK_C_FLWSP) == INSN_MATCH_C_FLWSP) {
956d705dd279f7 Damien Le Moal 2020-03-16  302  		fp = 1;
956d705dd279f7 Damien Le Moal 2020-03-16  303  		len = 4;
956d705dd279f7 Damien Le Moal 2020-03-16  304  #endif
956d705dd279f7 Damien Le Moal 2020-03-16  305  	} else {
956d705dd279f7 Damien Le Moal 2020-03-16  306  		regs->epc = epc;
956d705dd279f7 Damien Le Moal 2020-03-16  307  		return -1;
956d705dd279f7 Damien Le Moal 2020-03-16  308  	}
956d705dd279f7 Damien Le Moal 2020-03-16  309  
956d705dd279f7 Damien Le Moal 2020-03-16  310  	val.data_u64 = 0;
956d705dd279f7 Damien Le Moal 2020-03-16  311  	for (i = 0; i < len; i++)
956d705dd279f7 Damien Le Moal 2020-03-16  312  		val.data_bytes[i] = load_u8((void *)(addr + i));
956d705dd279f7 Damien Le Moal 2020-03-16  313  
956d705dd279f7 Damien Le Moal 2020-03-16  314  	if (fp)
956d705dd279f7 Damien Le Moal 2020-03-16  315  		return -1;
956d705dd279f7 Damien Le Moal 2020-03-16 @316  	SET_RD(insn, regs, val.data_ulong << shift >> shift);
956d705dd279f7 Damien Le Moal 2020-03-16  317  
956d705dd279f7 Damien Le Moal 2020-03-16  318  	regs->epc = epc + INSN_LEN(insn);
956d705dd279f7 Damien Le Moal 2020-03-16  319  
956d705dd279f7 Damien Le Moal 2020-03-16  320  	return 0;
956d705dd279f7 Damien Le Moal 2020-03-16  321  }
956d705dd279f7 Damien Le Moal 2020-03-16  322  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011131427.jE6N1lwG-lkp%40intel.com.

--5vNYLRcllDrimb99
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
eM62xs72fxpAnszS/QEA

--5vNYLRcllDrimb99--
