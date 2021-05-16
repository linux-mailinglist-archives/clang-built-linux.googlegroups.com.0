Return-Path: <clang-built-linux+bncBDV2D5O34IDRBDO4QWCQMGQE4RKODXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC32382091
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 21:10:06 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id l25-20020a6357190000b02901f6df0d646esf3097430pgb.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 12:10:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621192205; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZfS3omQSg9/v1Vdt6PrdJPNMAbejcJPdcW2TLCP0e8V+6/1VOv0fMEHFo1aV61wPdo
         r7nxdzDoJVJPYQyivsnCi/mco3HI1bKRRJQ/jRPO2JUAumCC2FJzjTqVZNCdIJHVTwo6
         QkJiC2grEGeZauujmZ/a/0wuNCbRewwEJj/ktt+JpaXoSyr+34LnxMTzpUO2L/581Ibi
         0MCrl9G/vEW5984bjXufaR7539KmQrgE09J9dJNmQg7tXWGAdluRyDbQmjunF/w8I3I9
         aUS5/xJwpuQc07HBk9rKPCS0W7tOh8/JYeYhxajXlVOJPMYhLrfoCv/3CFyBuLFucSUN
         reYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=sw84WZ8hp4pbEHDTVWEphgqhObcMXPjs1pnqxu5QFeg=;
        b=MzffeXb/rXc6rf1AYDgIsgPygUyQUYxxDpklPwv7aGwNrEOSul37mKqj5IbKR+6vcj
         Dgjib+gZTZuwobcK7ezJTBxo/j9FqhbYLP7U0SEmk5x5grCOFMOhhtv3CWghZPIAoEar
         9KGeI6i0dyFQ491jMLBbIvC1wweWHhOH526TfSCkHAqsa+6JcImPv+wqLahJYNZR9yLI
         Iq6sfmuJDMm7hoxyyL3kKNeHXQbpabO4C7Ik7Cg1dUE5MK4aGEKacSzxqCzcw3CRjm2t
         uHzL3q41uwRnknuYJTdI/bUccRPyqr8QMVLmE3nSvohr8kFjaEy/WAHbRt7vaRyEU2ls
         6ZMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mVeNtOKP;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sw84WZ8hp4pbEHDTVWEphgqhObcMXPjs1pnqxu5QFeg=;
        b=qYtwh/0TlTu9a3VE9h7r1fTrIzJLhRrcnq469XeVEnjGcn6WfIURlfg7ErD5wTospB
         6CEAZm6Z5ijKD96aBS+0ELywkcbzxf8NiU3bHh1gLQjWc28NwXON7HrVe0ShM2oGsnov
         rhCNJ4gS+0onWafdr5aY7QZfWo7LUsUoBmTaZU8DIMIUs9xEINFlQY7Rz3L8j/746OA1
         agFa7Z1YDZLKeZ8hLbsSHk79L2F3pbDOiHgArJckCbrn6iiCFzqESY1wL40U5uvWYLoV
         rB923ihViua7nVkihfopdbtIhPR2uAWJXTL4nnF8GLTtaZsZDPbS5bXauPpbC9+jaa9E
         Y2Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sw84WZ8hp4pbEHDTVWEphgqhObcMXPjs1pnqxu5QFeg=;
        b=TTJPrvhAAXLNRApQ3bKFQMmEVju2D4dmixqweKDI2kqp0EolcXbshMWoQvzjmOPb29
         MhX8ti2JVchB8kMolndY4G/6SxKoAXMx6iJwBXXsLAItIg+7o/L8B3NFXZHPRntBA1R3
         +V0r4HKfJp2qxHVdyz4HIvCKzcOelU1Y9XRoL42qOTenC5jiNFUqDmE8vH1SCQV12tRz
         JEuKDp8l6vNYpikuHnnC4vTW4JmvGG4fx4+dXL0k2tbCmUcl9FpQZZr5waQZWLVA8SEE
         /euEYpXjOXqTmvKdd4coynlrjnzusxgMAbt/R48qwbOAlpQOKBcOXUF1qPeVLYV11YFp
         CxwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UMEziDts7C8bpOtQC9qHWoronXYY5ZAF/MzdgFOvGx4rKFPng
	2xGZ11oY5T6MIbB/vQCyNbE=
X-Google-Smtp-Source: ABdhPJxZkew6RON5x04fr4c4e/0Ts546ZcphsLTnz041vvIcw1iVXSNVjJxoWjx4qGl5/rp1qOMvbA==
X-Received: by 2002:a63:3d87:: with SMTP id k129mr57237861pga.57.1621192205285;
        Sun, 16 May 2021 12:10:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f48e:: with SMTP id bx14ls8450417pjb.2.gmail; Sun,
 16 May 2021 12:10:04 -0700 (PDT)
X-Received: by 2002:a17:902:34f:b029:ef:3d14:1c27 with SMTP id 73-20020a170902034fb02900ef3d141c27mr35967749pld.65.1621192204696;
        Sun, 16 May 2021 12:10:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621192204; cv=none;
        d=google.com; s=arc-20160816;
        b=uyPCW2owqjNpR5w83hvvdoltDq0lmH2N4TeY547FH2G2GP/8JFUHm3IS5Cp3SQ5rHd
         e6HdnZDI9DA3YHJxnc/ARCblyXLfmVFcWLBuJDsIZtZJPT+jF+uFYvFPMEm64AQO0H2L
         P7ih4DWdNyc1u1BKymARuFXe1Cn+2Q41Q/OvbEuFbJkgPBJ/zf0PumpR1kQX7+0hvdFt
         JSk1FRRChGujP6yxv31lX1Uz5OKs0HLGJyl1mZPVAyWjrRpF5RxPFxYXkfOVYj+R5yJ+
         R+w1LNYTmHSOq0qeqwu5j3srMdEjfcb+9V0n98Cnfqe80WmOmPCMBITpl0ptyiyAIYJj
         qq1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=UKMFsY8/zFvweWvQhqbUk5fU84dFty1APN7OalYnItE=;
        b=GuOQi9/ns7ErwMMggrZc36V/pIMgeBu/j95B0H8sK3d7SOhbmaCfQfHmm0EvocLmyK
         4r4umzQs+pudRSXK+xpyBoI7xdS8o2o3qJ4XuhyWTdhhmnqcT9CuVx47Bk12hX6veCIV
         6xRjIRsGbrlsMHhy1nkBmbtj4JuTy1xqHnUMa+WG8LIzcHMu+bARY3UJeRPWpjVzR5g+
         MhN0GG8n33cBv/QXGHF7lUSOLATIs0VULjByfjd4Uvq3iblNR31Rajtlgv/N8qsO9xc4
         zfR3llZq7iyhyOEUhTMdKY1SWolD3PTbIE+7BnHzhQOVnrQZBDbgzIrnnopdw7XnIRU/
         ZSRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=mVeNtOKP;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id b17si1150942pgs.1.2021.05.16.12.10.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 May 2021 12:10:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0::7376]
	by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1liM9K-00D9ue-IF; Sun, 16 May 2021 19:10:02 +0000
Subject: Re: arch/riscv/kernel/probes/kprobes.c:90:22: error: use of
 undeclared identifier 'PAGE_KERNEL_READ_EXEC'
To: kernel test robot <lkp@intel.com>, Jisheng Zhang <jszhang@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmerdabbelt@google.com>
References: <202105070646.RiY8StjM-lkp@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <22c9edf5-1112-40e4-bd61-ad8ddf2d4732@infradead.org>
Date: Sun, 16 May 2021 12:10:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <202105070646.RiY8StjM-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=mVeNtOKP;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 5/6/21 3:11 PM, kernel test robot wrote:
> Hi Jisheng,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   38182162b50aa4e970e5997df0a0c4288147a153
> commit: cdd1b2bd358ffda2638fe18ff47191e84e18525f riscv: kprobes: Implement alloc_insn_page()
> date:   10 days ago
> config: riscv-randconfig-r006-20210506 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cdd1b2bd358ffda2638fe18ff47191e84e18525f
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout cdd1b2bd358ffda2638fe18ff47191e84e18525f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
>    #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
>                                                      ^
>    In file included from arch/riscv/kernel/probes/kprobes.c:3:
>    In file included from include/linux/kprobes.h:29:
>    In file included from include/linux/ftrace.h:10:
>    In file included from include/linux/trace_recursion.h:5:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return inl(addr);
>                   ^~~~~~~~~
>    arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
>    #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
>                                                                            ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
>    #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
>                                                                                         ^
>    include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
>                                                      ^
>    In file included from arch/riscv/kernel/probes/kprobes.c:3:
>    In file included from include/linux/kprobes.h:29:
>    In file included from include/linux/ftrace.h:10:
>    In file included from include/linux/trace_recursion.h:5:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            outb(value, addr);
>            ^~~~~~~~~~~~~~~~~
>    arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
>    #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
>                                                                  ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
>    #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
>                                                              ^
>    In file included from arch/riscv/kernel/probes/kprobes.c:3:
>    In file included from include/linux/kprobes.h:29:
>    In file included from include/linux/ftrace.h:10:
>    In file included from include/linux/trace_recursion.h:5:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            outw(value, addr);
>            ^~~~~~~~~~~~~~~~~
>    arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
>    #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
>                                                                  ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
>    #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
>                                                                                      ^
>    In file included from arch/riscv/kernel/probes/kprobes.c:3:
>    In file included from include/linux/kprobes.h:29:
>    In file included from include/linux/ftrace.h:10:
>    In file included from include/linux/trace_recursion.h:5:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            outl(value, addr);
>            ^~~~~~~~~~~~~~~~~
>    arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
>    #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
>                                                                  ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
>    #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
>                                                                                      ^
>    In file included from arch/riscv/kernel/probes/kprobes.c:3:
>    In file included from include/linux/kprobes.h:29:
>    In file included from include/linux/ftrace.h:10:
>    In file included from include/linux/trace_recursion.h:5:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>>> arch/riscv/kernel/probes/kprobes.c:90:22: error: use of undeclared identifier 'PAGE_KERNEL_READ_EXEC'
>                                         GFP_KERNEL, PAGE_KERNEL_READ_EXEC,
>                                                     ^
>    7 warnings and 1 error generated.
> 
> 
> vim +/PAGE_KERNEL_READ_EXEC +90 arch/riscv/kernel/probes/kprobes.c
> 
>     86	
>     87	void *alloc_insn_page(void)
>     88	{
>     89		return  __vmalloc_node_range(PAGE_SIZE, 1, VMALLOC_START, VMALLOC_END,
>   > 90					     GFP_KERNEL, PAGE_KERNEL_READ_EXEC,
>     91					     VM_FLUSH_RESET_PERMS, NUMA_NO_NODE,
>     92					     __builtin_return_address(0));
>     93	}
>     94	
> 
> ---

>>> arch/riscv/kernel/probes/kprobes.c:90:22: error: use of undeclared identifier 'PAGE_KERNEL_READ_EXEC'
>                                         GFP_KERNEL, PAGE_KERNEL_READ_EXEC,

is due to
# CONFIG_MMU is not set


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/22c9edf5-1112-40e4-bd61-ad8ddf2d4732%40infradead.org.
