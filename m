Return-Path: <clang-built-linux+bncBAABBOMCRKCQMGQEWXKSUKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D483831FD
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 16:44:10 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id f77-20020a1f9c500000b02901ebb5d0b1cbsf647083vke.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 07:44:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621262649; cv=pass;
        d=google.com; s=arc-20160816;
        b=p5BjMeiYhxmjEX40V69Z3GqmUafiffJn2PGty9Z2ccK3GwUWJVlGCpD2DyZYPt/QgM
         3LueriN2etX/U7ltJvMAflT8MmpiNJ1jbJ1r1JvYzT28XtLTOam/K6g1bfaordMwNE9w
         AQTs+tMeZaOqkzGIWPKfBVNEI4X8MYXW/JEqG30MY7PnFqDg0jZzyoWpN10LhgfNMAwL
         e2dsZdPVr8VHr9VoiX7y3IWVBN3XS3vOG37ur6n7WdqbGsK+2IXT8MBVTHApRPNPZde1
         b6jXT1YbLgxxTC9R3pVWE4paJvx3Ojvh2sdERQvyO4ACYKVXrx8XtzdQxJtrVEiKUxeB
         knww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=fbLkHqCmOANRcAZKgNZsI8hZxwVKMzzV/bVFAFgq4Qs=;
        b=s5+2zdYNgMqTeiwdO0b7VbYBQANa5Fkt/5lATBB41MBWM/L/tASBrjyK+9f+DlQwOV
         4U22pg5FpXncKpWr3c194m7js1zyCknp8w4V14rKZttH3zMTyXB0ERdZn0Xy/clQKTlB
         hgM10G4Le6OqaMppBuXblrJU4Oxx/xMcDEsY4W/wamFqJUGkvOYtiNQuDI9BpkOONuAa
         huXaMulArACA93gXSuTlpoyE7oRIO+HjEYx2k2sDaqhbbacKddKLk2oGKTBJ1p/1fZuU
         9C4ERDJTJ67ASpJixRXTGiD+BHppjfCQlR4dkwgCz6PbRfxt5HPkpf06e3QXBvZQaZ4C
         xkNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mail.ustc.edu.cn header.s=dkim header.b=KztkkXQP;
       spf=pass (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) smtp.mailfrom=jszhang3@mail.ustc.edu.cn;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fbLkHqCmOANRcAZKgNZsI8hZxwVKMzzV/bVFAFgq4Qs=;
        b=LdSgHpG3Lvqacyu03MuWNWfss8gV/G0eW2HdQjs+8yuR1n9JYzw4aQpH12L71kO9Ll
         M38hIYkIBHt/3BHrcSW4hEv5XUUw1Pwk4IUNCWQbSwhaOzL7Mf5+R7sb7usMHmZj05FZ
         SiIgncMxLltuPjhdEiV4UOLrSWVXhcq+n/GaJhYPQp6IKrp2/EDp7IfO23EQgNBP/ZU5
         WFPxZCiEQq/U1VsbXhH4IDeAEizAIYBai+GRIsT1QYVf4SqtKY3NMB7QQkMD7V5XSmOy
         0e7E8sdG1AyW3SdAOk4eUMMYyEdTt8kEqM1R3+w7SMdageSNY/MJPr81S6CkCdwm2HT/
         QV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fbLkHqCmOANRcAZKgNZsI8hZxwVKMzzV/bVFAFgq4Qs=;
        b=fm+F8rbvLTtEpBsleRly4N4MnJQ3CA+1f1oji80pOjqpqPyV4JShn6hgG3F7kqu58B
         M3WVQ1u8VkDbj/LTFLNhXm7yrLxApWn2Z/mVyrsK+TJ70w+h0yBBXSLBa4ZrrEq4pRsP
         /zCzrRz8p6XzxYaV2vNwaTJr2foIKXYaSLNZNHT6wjQtokXKt+c8qHmxkNEvw/j3W3OS
         O8OHUYp+KmgBTZqcMxIXVo5PpyZ9m0bBLWtKrjyzZIZOkgTaC+C6Z6SVLHrm5xO0ZnuM
         kov3aHfM/rd3edrXYblfIK6dEVwHAay6x9P0kVVD9IdlfH93y60HeslEUZiK9YxJOKWk
         VJ/g==
X-Gm-Message-State: AOAM533pg4c56RpFVo39s+yeM8KELfEmnPqyuu9GD/RubMq4ICkH3ZYv
	kj3p1uV1OT2/rlP9DJt6cYQ=
X-Google-Smtp-Source: ABdhPJy3YW3hW8kk7M5bHeRROSEtcJArgYQZ5D32HRhWMPPbVDS2+B9yxkA0yPGNmQrMizOlK1gHXQ==
X-Received: by 2002:a1f:c345:: with SMTP id t66mr312987vkf.20.1621262649595;
        Mon, 17 May 2021 07:44:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ac06:: with SMTP id v6ls238962vke.7.gmail; Mon, 17 May
 2021 07:44:09 -0700 (PDT)
X-Received: by 2002:a1f:a388:: with SMTP id m130mr159520vke.1.1621262649135;
        Mon, 17 May 2021 07:44:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621262649; cv=none;
        d=google.com; s=arc-20160816;
        b=Z7lkxIL6y/uj+Zo9NkQk8yDT9gOVCvTGDxjYGh1eDTrvXqQOAYpvBe3PoJHQs6uluh
         QEFHBb/2ji8dgWH9bc/lEx2KMl2FRkm6l0DT7pHMjUKlJmGkB6U4Da5UZnmpC3KOQeMJ
         7irMpSg8NsA/jMrP05KS22NRe0MvLjWf6Hh/sGG7aFYLsNttmnK7ABUvwcZULLR/i6Fr
         zf8f+v9q05vHyEAwvSy/55zqlQdvDvP3iveqdlBoq3xe48gf7BeWjQREHgB3BJSbKgIb
         AmWFTSabGELVeV+MQLNy98YexH9xEqkJzxRFzxCDFSdNIibrnemF/9P0rEgPO4fvSAA8
         3x2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WGx65fce1oBfuRHn2aIcVVMFYx4c1v7iBPTdHW/wnEw=;
        b=n16eXZ2ngIJ3WxpmteGjc2cEF48ayIiB1IIln1fDfPnVvFNtHqxMHXtyv67F6wLueJ
         enwZrFfv7MW/Symarx33LqlWnmK1C4Nxi73mQzRUptnMr36OgyUDBVN5JjMMIzVY56/+
         NZ0LjHfhFy7TVPztjaYi362HOkm9sUsyqXa/LkkDgzpZjhsvhARkWFapUJqnOaU2KNIF
         2PD3043I3HzSEM5o9eImJ0iSH0T2p/kkw2NDnHH8eSX7feK7bLYHhMdO4LPKbZerQcBZ
         oIu2jY8X34Yk220DahjZK1CPGKeRP2MddgKV+xQaz4CIBXDEcpP2F5YnNrIiC4GdclQw
         C+Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mail.ustc.edu.cn header.s=dkim header.b=KztkkXQP;
       spf=pass (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) smtp.mailfrom=jszhang3@mail.ustc.edu.cn;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
Received: from ustc.edu.cn (smtp2.ustc.edu.cn. [202.38.64.46])
        by gmr-mx.google.com with ESMTP id p6si791196vkm.2.2021.05.17.07.44.07
        for <clang-built-linux@googlegroups.com>;
        Mon, 17 May 2021 07:44:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) client-ip=202.38.64.46;
Received: from xhacker (unknown [101.86.20.15])
	by newmailweb.ustc.edu.cn (Coremail) with SMTP id LkAmygDn7Z0PgaJgHhLyAA--.21660S2;
	Mon, 17 May 2021 22:43:27 +0800 (CST)
Date: Mon, 17 May 2021 22:38:06 +0800
From: "'Jisheng Zhang' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: kernel test robot <lkp@intel.com>, Jisheng Zhang <jszhang@kernel.org>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmerdabbelt@google.com>
Subject: Re: arch/riscv/kernel/probes/kprobes.c:90:22: error: use of
 undeclared identifier 'PAGE_KERNEL_READ_EXEC'
Message-ID: <20210517223752.425cbcf8@xhacker>
In-Reply-To: <22c9edf5-1112-40e4-bd61-ad8ddf2d4732@infradead.org>
References: <202105070646.RiY8StjM-lkp@intel.com>
	<22c9edf5-1112-40e4-bd61-ad8ddf2d4732@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-CM-TRANSID: LkAmygDn7Z0PgaJgHhLyAA--.21660S2
X-Coremail-Antispam: 1UD129KBjvJXoW3JF1rXw4kAF4fJF1kXrWkJFb_yoWfXrWDpF
	s5ur1qqFZ5Zr15Gws093W2y34Utw45G342yry5Wry29F17trWxuwn8urWDKF1vvr4q9ay8
	KrW7C3yagryUXaUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUy2b7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwV
	C2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
	0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Jr0_Gr
	1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JMxAIw28IcxkI7VAKI48JMxC20s02
	6xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_Jr
	I_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v2
	6r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj4
	0_WFyUJVCq3wCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j
	6r4UYxBIdaVFxhVjvjDU0xZFpf9x07b0a0QUUUUU=
X-CM-SenderInfo: xmv2xttqjtqzxdloh3xvwfhvlgxou0/
X-Original-Sender: jszhang3@mail.ustc.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mail.ustc.edu.cn header.s=dkim header.b=KztkkXQP;       spf=pass
 (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as
 permitted sender) smtp.mailfrom=jszhang3@mail.ustc.edu.cn;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
X-Original-From: Jisheng Zhang <jszhang3@mail.ustc.edu.cn>
Reply-To: Jisheng Zhang <jszhang3@mail.ustc.edu.cn>
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

On Sun, 16 May 2021 12:10:01 -0700
Randy Dunlap <rdunlap@infradead.org> wrote:

> On 5/6/21 3:11 PM, kernel test robot wrote:
> > Hi Jisheng,
> > 
> > FYI, the error/warning still remains.
> > 
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   38182162b50aa4e970e5997df0a0c4288147a153
> > commit: cdd1b2bd358ffda2638fe18ff47191e84e18525f riscv: kprobes: Implement alloc_insn_page()
> > date:   10 days ago
> > config: riscv-randconfig-r006-20210506 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install riscv cross compiling tool for clang build
> >         # apt-get install binutils-riscv64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cdd1b2bd358ffda2638fe18ff47191e84e18525f
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout cdd1b2bd358ffda2638fe18ff47191e84e18525f
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=riscv 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> >    include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
> >    #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
> >                                                      ^
> >    In file included from arch/riscv/kernel/probes/kprobes.c:3:
> >    In file included from include/linux/kprobes.h:29:
> >    In file included from include/linux/ftrace.h:10:
> >    In file included from include/linux/trace_recursion.h:5:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:572:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            return inl(addr);
> >                   ^~~~~~~~~
> >    arch/riscv/include/asm/io.h:57:76: note: expanded from macro 'inl'
> >    #define inl(c)          ({ u32 __v; __io_pbr(); __v = readl_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
> >                                                                            ~~~~~~~~~~ ^
> >    arch/riscv/include/asm/mmio.h:89:76: note: expanded from macro 'readl_cpu'
> >    #define readl_cpu(c)            ({ u32 __r = le32_to_cpu((__force __le32)__raw_readl(c)); __r; })
> >                                                                                         ^
> >    include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
> >    #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
> >                                                      ^
> >    In file included from arch/riscv/kernel/probes/kprobes.c:3:
> >    In file included from include/linux/kprobes.h:29:
> >    In file included from include/linux/ftrace.h:10:
> >    In file included from include/linux/trace_recursion.h:5:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:580:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            outb(value, addr);
> >            ^~~~~~~~~~~~~~~~~
> >    arch/riscv/include/asm/io.h:59:68: note: expanded from macro 'outb'
> >    #define outb(v,c)       ({ __io_pbw(); writeb_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
> >                                                                  ~~~~~~~~~~ ^
> >    arch/riscv/include/asm/mmio.h:91:52: note: expanded from macro 'writeb_cpu'
> >    #define writeb_cpu(v, c)        ((void)__raw_writeb((v), (c)))
> >                                                              ^
> >    In file included from arch/riscv/kernel/probes/kprobes.c:3:
> >    In file included from include/linux/kprobes.h:29:
> >    In file included from include/linux/ftrace.h:10:
> >    In file included from include/linux/trace_recursion.h:5:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:588:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            outw(value, addr);
> >            ^~~~~~~~~~~~~~~~~
> >    arch/riscv/include/asm/io.h:60:68: note: expanded from macro 'outw'
> >    #define outw(v,c)       ({ __io_pbw(); writew_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
> >                                                                  ~~~~~~~~~~ ^
> >    arch/riscv/include/asm/mmio.h:92:76: note: expanded from macro 'writew_cpu'
> >    #define writew_cpu(v, c)        ((void)__raw_writew((__force u16)cpu_to_le16(v), (c)))
> >                                                                                      ^
> >    In file included from arch/riscv/kernel/probes/kprobes.c:3:
> >    In file included from include/linux/kprobes.h:29:
> >    In file included from include/linux/ftrace.h:10:
> >    In file included from include/linux/trace_recursion.h:5:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:596:2: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            outl(value, addr);
> >            ^~~~~~~~~~~~~~~~~
> >    arch/riscv/include/asm/io.h:61:68: note: expanded from macro 'outl'
> >    #define outl(v,c)       ({ __io_pbw(); writel_cpu((v),(void*)(PCI_IOBASE + (c))); __io_paw(); })
> >                                                                  ~~~~~~~~~~ ^
> >    arch/riscv/include/asm/mmio.h:93:76: note: expanded from macro 'writel_cpu'
> >    #define writel_cpu(v, c)        ((void)__raw_writel((__force u32)cpu_to_le32(v), (c)))
> >                                                                                      ^
> >    In file included from arch/riscv/kernel/probes/kprobes.c:3:
> >    In file included from include/linux/kprobes.h:29:
> >    In file included from include/linux/ftrace.h:10:
> >    In file included from include/linux/trace_recursion.h:5:
> >    In file included from include/linux/interrupt.h:11:
> >    In file included from include/linux/hardirq.h:10:
> >    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
> >    In file included from include/asm-generic/hardirq.h:17:
> >    In file included from include/linux/irq.h:20:
> >    In file included from include/linux/io.h:13:
> >    In file included from arch/riscv/include/asm/io.h:149:
> >    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
> >                                                      ~~~~~~~~~~ ^  
> >>> arch/riscv/kernel/probes/kprobes.c:90:22: error: use of undeclared identifier 'PAGE_KERNEL_READ_EXEC'  
> >                                         GFP_KERNEL, PAGE_KERNEL_READ_EXEC,
> >                                                     ^
> >    7 warnings and 1 error generated.
> > 
> > 
> > vim +/PAGE_KERNEL_READ_EXEC +90 arch/riscv/kernel/probes/kprobes.c
> > 
> >     86	
> >     87	void *alloc_insn_page(void)
> >     88	{
> >     89		return  __vmalloc_node_range(PAGE_SIZE, 1, VMALLOC_START, VMALLOC_END,  
> >   > 90					     GFP_KERNEL, PAGE_KERNEL_READ_EXEC,  
> >     91					     VM_FLUSH_RESET_PERMS, NUMA_NO_NODE,
> >     92					     __builtin_return_address(0));
> >     93	}
> >     94	
> > 
> > ---  
> 
> >>> arch/riscv/kernel/probes/kprobes.c:90:22: error: use of undeclared identifier 'PAGE_KERNEL_READ_EXEC'  
> >                                         GFP_KERNEL, PAGE_KERNEL_READ_EXEC,  
> 
> is due to
> # CONFIG_MMU is not set
> 
> 

I have sent out patch to fix this isue:
http://lists.infradead.org/pipermail/linux-riscv/2021-May/006291.html

thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210517223752.425cbcf8%40xhacker.
