Return-Path: <clang-built-linux+bncBDZKLXNI4ACBBHXE637AKGQE6RU5IUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 335622DEDC6
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 08:56:16 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id o12sf2927512pls.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 23:56:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608364574; cv=pass;
        d=google.com; s=arc-20160816;
        b=tNmTKZE8nXmAmi3aKvxNCYZrYaVZaJoVx2N8vGjqYXzjkKmp+tYD3n5m8BOGdog2GC
         +DkEOBvKEluAI2dR8/xoHD3aRPj6fVNF3GiVswHRDxIasT9UQeREVAPmet1uHXin3tsa
         o6LcqXQaP9WVQJfvi11v0Rapml1K8ZPmjqqJe8crr+y4heJ+h3vP1DPGwaw5kb1NeiES
         3fiJ09xXQXXnR+7+N1aLmHtHZrbYHPnitwwmGUjdm6fD7NH1RwtMK8D0DgdNhTWQuajB
         0cA/9hw1uc7GDou0WyzNkHAfXZm8J4PJHaKu07mtn8yBGU4yMN/zTz3HZp1u7b81/XcT
         PlKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5UCs9TjhFB+7gD8RQSjWTPwk4o+UdBGrJRj1BkarwzM=;
        b=tHslffzTIh1dX3fGIbeFlYX3dqdEr/VSVlOqprAjIJRVLW762wRcTI4imUgkiobnp5
         s1PQnACsg6Qze/VMPQkq9rgx5UJJEhq/8C7GCd2Hp4YgofwVDVyRwlY9UBjLEWDonF6Z
         1/O/Mxuj552ipWQjOwjzYdu+A0KYTWrfenwhaqxR5M5h/CKJwi0Y5FGXOd9BxlQHwTz0
         KZBZyvbpEHie8ES47L0IfKmGbuZ43Bc8OiM5uT5MlhkWAIRY6gaq8IAjPLq069QZRlUW
         aleC8F7fxOceBJCSpHr4LG1fog7XPS9kYkPCz/TOh57C3zdovjF66UbzmDjksD7eWJe1
         xZ0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5UCs9TjhFB+7gD8RQSjWTPwk4o+UdBGrJRj1BkarwzM=;
        b=ieBEICUNItXfZqNDR0CSE6i7oLer8sqlwwmfyjL193iYjRHA5nHgkBHpLtLF0UGv6i
         dUFRJER5U/o6FWKoBKUrL+zBvhYvQ9jYB0Awv3/5/G6j+CLSN7J8usFYxJiSvsI9iwdU
         f5cqbo1IF/tKmssmxqzuhm/XLAzQx6cCgg2Pu6rA1cJik8R9WfFbO9K43ZUeeVzaq0eI
         dh99Cm4odHLJ/kv32YqvGxCJYjstiwwiT8lZk39E9/xfnMkWVSECJa4YjS9nfdLHGY8b
         Gka7Iv2/I1Hi5uy2KwwbCAwP8N6RdUsK5rr5LMO6NCPZZ/VJfxVczBMDP4u9lNCyhBUc
         emUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5UCs9TjhFB+7gD8RQSjWTPwk4o+UdBGrJRj1BkarwzM=;
        b=JxevxgYeAImYsD5dtv49l9O8SErqmlxq+1MaJkA/gB0OZ3BaHErS3sSStZ6Z2RyaQD
         i1rLytP46qLipzuXgQjKqUzKlCEGgCk7zsVEcsjU5aLJaP85cctvmO+In815dd93YT/+
         U/YVhVNoPgok3ntvLyWPSGx7mm+aSYfZFy4pKhjXUjxGznovqCEFMKU0qzWrS6kFVuer
         n5LRbSEyRcnDsNMJmO+DkAJPOVlI/3aATMzgsKkxvi7xY1N/shK8b4hnrukbzJjzA1Gn
         n0Q7ayJX3y3+o1LoW81rbIlTXB/yS7bI9G5IXtmUeSps1DcTAaGFnBZVarS7uF2pidZy
         K2vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hWEWbDRY+qaXqLZJmf8LZ5BvMp8Nc6M/ZYQX8omvl5hdbtw6k
	/veP3ICPCOvoyjd95iLsNqU=
X-Google-Smtp-Source: ABdhPJzPhJNeNKfJ4Rx+dKBADap/Fo+Wtaz4nXiGwK95ycNDCV+SODNO0Vj1N4KO/tCKxOBTsjjJIw==
X-Received: by 2002:a63:6305:: with SMTP id x5mr7269994pgb.216.1608364574411;
        Fri, 18 Dec 2020 23:56:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls15793433pll.0.gmail; Fri, 18
 Dec 2020 23:56:13 -0800 (PST)
X-Received: by 2002:a17:90b:1087:: with SMTP id gj7mr7901620pjb.41.1608364573739;
        Fri, 18 Dec 2020 23:56:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608364573; cv=none;
        d=google.com; s=arc-20160816;
        b=ItpW4h0Mo5CmV8ILQq0YHrdgHEl/MnRnQFfBh0qHQDgqQ5d7Z+q20GxqH+bWaoqQBj
         4+A96PEFiEDL7B7qoAXN7M9IbduXvyzxvOqfmJhxqRu7msyXxzxUcCstC11Tu1OY/0j8
         YqSwHZpbC6PmWYjF5u9gV+we3U+tBY0URvt/Uh34IxkN1muI8x1moun78u4MyWu7qm+Y
         ipO1hs76MVo+h4eUIWQkNCNQ4iOlXcQGAlGR0+Vql8a0NC/T4Z0T72H2wdAxVgd2nC6V
         5KVMrJWkO7Jrqe9G1DhRjKHpvzXY21Lv5Jqq8ZcVhw9/9b38ZwpiffThjkANpbwwMCxp
         cKxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=4rlMctzTe5Fhyy9yWOBYVm+Bg3PWk+0bGi6rhhJ20jk=;
        b=vUYN7ENtpbebeO6BkDlVXVm32GwrFQSsmJnD6SBIgcPGY9b47zESMSbTmUgnQiosU6
         EM6+GFraL8vW2PZrxKiukjoSdxtHsgvGRTQBqzHEQsLUj64D3v86CzzLrUgdi6ar3b5G
         6Yfc7yv31qdJvKsNYZsceFc/s0xBiXZ0Vltuv599QLqyAculDVZ3tEZ9c4lnwVoxit8E
         pMqhjqN/G8HVKdBxRWwyuu0X9i7cScCvr07TQsAohgTqgvYCGC+yczlXUowx9NWWnxq0
         g5r3/ka2ACDM3TNZ6d5tYQ05R1oskkjIBx9Ngo+dJhTGWY1DyDAVVvLNelAoc+RTbabT
         8Zjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id b18si703821pls.1.2020.12.18.23.56.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 23:56:13 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 2CE5A1C0B77; Sat, 19 Dec 2020 08:56:08 +0100 (CET)
Date: Sat, 19 Dec 2020 08:56:06 +0100
From: Pavel Machek <pavel@ucw.cz>
To: kernel test robot <lkp@intel.com>,
	kernel list <linux-kernel@vger.kernel.org>
Cc: Zheng Yongjun <zhengyongjun3@huawei.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 13538/13785] /tmp/metronomefb-846872.s:300:
 Error: unrecognized opcode `zext.b a2,a2'
Message-ID: <20201219075606.GA20870@amd>
References: <202012191403.y8Aomjpm-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline
In-Reply-To: <202012191403.y8Aomjpm-lkp@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: pavel@ucw.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pavel@ucw.cz designates
 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
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


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Crazy robot, stop spamming. This report is obviously bogus, yet, you
sent me 5 copies.

Whoever is responsible for this, please sign emails with your real
name!

								Pavel


On Sat 2020-12-19 14:19:16, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   0d52778b8710eb11cb616761a02aee0a7fd60425
> commit: f08fdc654a5940aa23259e1ed53ab0f401ca7068 [13538/13785] leds: ss4200: simplify the return expression of register_nasgpio_led()
> config: riscv-randconfig-r014-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f08fdc654a5940aa23259e1ed53ab0f401ca7068
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout f08fdc654a5940aa23259e1ed53ab0f401ca7068
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> Note: the linux-next/master HEAD 0d52778b8710eb11cb616761a02aee0a7fd60425 builds fine.
>       It may have been fixed somewhere.
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from include/asm-generic/hardirq.h:17:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:564:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return inw(addr);
>                   ^~~~~~~~~
>    arch/riscv/include/asm/io.h:56:76: note: expanded from macro 'inw'
>    #define inw(c)          ({ u16 __v; __io_pbr(); __v = readw_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
>                                                                            ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:88:76: note: expanded from macro 'readw_cpu'
>    #define readw_cpu(c)            ({ u16 __r = le16_to_cpu((__force __le16)__raw_readw(c)); __r; })
>                                                                                         ^
>    include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
>    #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
>                                                      ^
>    In file included from drivers/video/fbdev/metronomefb.c:28:
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
>    In file included from drivers/video/fbdev/metronomefb.c:28:
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
>    In file included from drivers/video/fbdev/metronomefb.c:28:
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
>    In file included from drivers/video/fbdev/metronomefb.c:28:
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
>    In file included from drivers/video/fbdev/metronomefb.c:28:
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
>    7 warnings generated.
>    /tmp/metronomefb-846872.s: Assembler messages:
> >> /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
> >> /tmp/metronomefb-846872.s:313: Error: unrecognized opcode `zext.b a5,a6'
> >> /tmp/metronomefb-846872.s:350: Error: unrecognized opcode `zext.b a3,a3'
> >> /tmp/metronomefb-846872.s:371: Error: unrecognized opcode `zext.b a4,a4'
>    /tmp/metronomefb-846872.s:409: Error: unrecognized opcode `zext.b a2,a2'
> >> /tmp/metronomefb-846872.s:433: Error: unrecognized opcode `zext.b s1,t1'
> >> /tmp/metronomefb-846872.s:521: Error: unrecognized opcode `zext.b a1,a1'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
http://www.livejournal.com/~pavelmachek

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219075606.GA20870%40amd.

--oyUTqETQ0mS9luUI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl/dshYACgkQMOfwapXb+vKdBACgrK0DHje10cw77P3gk5GCAIQI
6BAAn06l39O+pM3prYSBuhShhaZMqlWM
=FjUP
-----END PGP SIGNATURE-----

--oyUTqETQ0mS9luUI--
