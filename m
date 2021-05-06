Return-Path: <clang-built-linux+bncBCCMHRGGVMEBBFFD2CCAMGQEH6L5QJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 075F93757FA
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 17:56:05 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id c4-20020a05651c0144b02900d41930170esf3037431ljd.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 08:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620316564; cv=pass;
        d=google.com; s=arc-20160816;
        b=tjj3jL1rD+kbQwkN7cwcLEKKmkY8yc9RklQN86oU+PFlTqCZnsqK89/BQlHMF2DE5U
         S6D30sqB00nAGXNrfw1da3M36Q1QBQu0NUGH8w8NZL/67uQGsXKbBWel/JHmZGVUNfXo
         3AhKtP2TY+eilmXmNRJxp3RwOwpOHOgZj16ysJ5BR59g2yRb+3YF81VI+pQzA98/V5O+
         ThxL4g/sjUsfFSRBbxL7ku84cxom9L21UNN44HYvY9AUxZtq639QXOIO4Y4ykrIcF4pn
         vRFeKCSQkFo3chccQf8onc+qq5OQtMUFANkDoWI+X37EQNDMy9XrLgY2me4JabY86o4p
         V3ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:references:from:subject
         :cc:to:message-id:date:mime-version:sender:dkim-signature;
        bh=vr9d3F8hyik42i9+IahwFgNWQl9XeXrF2wf2a/J6ITM=;
        b=o9niDRlVSELX8DcR6uLs8FHl6Yfs8EWg4CToAHHXCfkmJZDU2OmIM/qtWrBLdUK5eC
         pwJzz+Zp+1/4Flrxg5+jxtA+2CMxzeVVdXeg+ltEJ6Ziw/SJYOiwEnJ5hiGr0Mo5wZRH
         A/01USvb3aWf3rWmA0TPEW8EURTu+ukaK43TK23DyWkDnlIB42vGxBlP1bjcdyyzC9tl
         TYhJqx7R54xHx5RYVLEcGR8sKfzlcQ2CqryWTC+7dbD5y9LYZxeUmfXJuBVp/L1g/+EQ
         PMEx5F8aCRUD3BTkaNW639pb4Wg9tFhf50YA7sujhcRcm+dmzecfT+088EfSz4a2neDb
         gqUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uOa74sUO;
       spf=pass (google.com: domain of rui.silva@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=rui.silva@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:message-id:to:cc:subject:from:references
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vr9d3F8hyik42i9+IahwFgNWQl9XeXrF2wf2a/J6ITM=;
        b=CIwOrnYgsIdWRK/U04v/05fml4zMf3wuwAIMqAcLiMHF608p8LTMY+A/8st//s8j3d
         y0VtQPSlchdiKjNiNvsK7PJdy5bweFd15UYL5KAzvhI4KHQco7RzD42jNAn39aGsj28Z
         lmb59md6e6ULAA80UgUsqc1mxVzhGwDu4aW+FPUISi7Ruylu7fLUtV14ckZGKC70CNhx
         S60iB4FzEr4NkDmyXcofWI58K/tTB1FtnxNFEv2VaqnQaNBjr7dAzErQeFgMeJ4XKPvX
         /GCT4eKkeVon3iKvveCLJu484pcFcaKuR2WEfBJudzAWnWwDK0WTMjG7sqpi0Ze7FRqP
         g+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:to:cc
         :subject:from:references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vr9d3F8hyik42i9+IahwFgNWQl9XeXrF2wf2a/J6ITM=;
        b=oqiaXGJSHK5AzZXX2MvlEukwK9Q5K78mES6gLdV6EHz0DVjD18+GhD6fqjZACYCPfl
         Qbq4HY38cMQ26bZ1RyU8eo0gFIVXfk1canabzr/E3pgZnAFuIFZWFPnlfdyh6RgsO7+e
         UJZVBQK74nVgw6YZItUMWaN3nGt3Sb+tlaX9vwuaOgZPHYwAPN5r1mxtv+JQLapxfJKg
         8VaoNbcmSBRErFe43d2Li5GnjKqUYmkNQr5nko2/HlsvEuK9rCjYHZAgjC9uig8eAXBi
         VPPYoIaKanmiI6D5dfFpvaRzGis5MeIg8lxJqswSNbPaib662mYjXrcZJDkR52O+g3px
         z4iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kPPh6sXULkCOYqLL7C3FP9/tYvB3zifnpmpuJXyIenbyroQX1
	axSpDye+kpN0RUP4hhdOhm4=
X-Google-Smtp-Source: ABdhPJw9JEWe94an6wpuxmntfDC6vJLJIPKH9vsjg5JcGVEaOxPCWj+9BF60Jvthv1AqwDx0EbqLfg==
X-Received: by 2002:ac2:4acb:: with SMTP id m11mr3387148lfp.620.1620316564546;
        Thu, 06 May 2021 08:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1409:: with SMTP id u9ls640455lje.1.gmail; Thu, 06
 May 2021 08:56:03 -0700 (PDT)
X-Received: by 2002:a05:651c:104e:: with SMTP id x14mr4159508ljm.345.1620316563428;
        Thu, 06 May 2021 08:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620316563; cv=none;
        d=google.com; s=arc-20160816;
        b=T0/UDqlgTN498dNHgP3bilbXCzcPVM//5q73Yx19rDddaY4aVx0IxZC87GWnf3BDm1
         cHGKQJUcJCV2wponp/2M+s6v4+3YeCHjhA5cvfNB+PSnJNfXjRGic3skaW16FGbFWnMx
         iyUBbdC97oY2AZZxDKy5FsGSueQFXnUv5I5Ccru+K//JZNJgXzZtJsNsKiSBPseYsoXE
         s1dBlVq0bkBN9yB6sLgEAVonNlETvQLsnKrHH65YvJCKY9coZoXilxWoLPtw35lgnwHM
         wz44V3Os2R7L7ff2z3lINwiRxSS1AfObDWAjJkEcHyMhy8J+19Rm3vYyt1VzSVJhJFi6
         p8bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:dkim-signature;
        bh=7agjYRwKseOIztF+M9K5GTqoM0Z01wOz9Xek1eNk4fs=;
        b=HL2doOy+NNhABaIUysUzleYBz1honGWMIbR6IdBaSsTMWj15hiFCVfBEIetziR/0HB
         xDXOfj2IiEVMNZrD8VMeK71JD5S132PFBhkuuJPGPcUXjk6YInZlz2zC5NtP7ED3ipSy
         ErO/YtnH/dXU4Efb+ETj2SqMMJ8JLYFOFRn9yENZGB29HPPMJrjTw/70vHCEoyrF/akm
         csg6Xp0yf6hxdkCH3XcSKveb/yFCSyeJS2gQe0jM/hy8RlIkhbZX944KSLRhYITg0cAZ
         K4aC2WxAm0p2Yd+swIGu+Zkmkq60S3R6fhr7Mo11h139f6CTjnlN/pMxxkYOkmJgv51T
         myYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uOa74sUO;
       spf=pass (google.com: domain of rui.silva@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=rui.silva@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id 17si91062lfp.2.2021.05.06.08.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 08:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of rui.silva@linaro.org designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id h4so6154591wrt.12
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 08:56:03 -0700 (PDT)
X-Received: by 2002:a5d:694c:: with SMTP id r12mr6190550wrw.224.1620316562498;
        Thu, 06 May 2021 08:56:02 -0700 (PDT)
Received: from localhost (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id f7sm5750749wrg.34.2021.05.06.08.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 08:56:02 -0700 (PDT)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 06 May 2021 16:56:01 +0100
Message-Id: <CB6AA86KSN8C.2UEPEE2H5WFKY@arch-thunder>
To: "kernel test robot" <lkp@intel.com>
Cc: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
 <linux-usb@vger.kernel.org>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>
Subject: Re: [usb:usb-testing 7/9]
 drivers/usb/isp1760/isp1760-regs.h:286:21: warning: initializer overrides
 prior initialization of this subobject
From: "Rui Miguel Silva" <rui.silva@linaro.org>
References: <202105062318.xxK3ju2U-lkp@intel.com>
In-Reply-To: <202105062318.xxK3ju2U-lkp@intel.com>
X-Original-Sender: rui.silva@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=uOa74sUO;       spf=pass
 (google.com: domain of rui.silva@linaro.org designates 2a00:1450:4864:20::431
 as permitted sender) smtp.mailfrom=rui.silva@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Greg,
I have this all fixed in my v2 branch. So, I think  it is better to
drop the first 3 from your branch, sorry about that.

Cheers,
    Rui

On Thu May 6, 2021 at 4:43 PM WEST, kernel test robot wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
> head:   83a9d2a05296bf5a5fee13206dc4499a40978908
> commit: 54dacbcc6b8921a211bd736d2f208d3c78594241 [7/9] usb: isp1760: move to regmap for register access
> config: riscv-randconfig-r006-20210506 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=54dacbcc6b8921a211bd736d2f208d3c78594241
>         git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
>         git fetch --no-tags usb usb-testing
>         git checkout 54dacbcc6b8921a211bd736d2f208d3c78594241
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=riscv 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
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
>    In file included from drivers/usb/isp1760/isp1760-if.c:13:
>    In file included from include/linux/usb.h:16:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:11:
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
>    In file included from drivers/usb/isp1760/isp1760-if.c:13:
>    In file included from include/linux/usb.h:16:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:11:
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
>    In file included from drivers/usb/isp1760/isp1760-if.c:13:
>    In file included from include/linux/usb.h:16:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:11:
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
>    In file included from drivers/usb/isp1760/isp1760-if.c:13:
>    In file included from include/linux/usb.h:16:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:11:
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
>    In file included from drivers/usb/isp1760/isp1760-if.c:13:
>    In file included from include/linux/usb.h:16:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:11:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:17:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1024:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    In file included from drivers/usb/isp1760/isp1760-if.c:22:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
> >> drivers/usb/isp1760/isp1760-regs.h:286:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_OTG_DISABLE]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 10, 10),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:279:21: note: previous initialization is here
>            [HW_OTG_DISABLE]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 10, 10),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-if.c:22:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:287:22: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_SW_SEL_HC_DC]       = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 7, 7),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:280:22: note: previous initialization is here
>            [HW_SW_SEL_HC_DC]       = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 7, 7),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-if.c:22:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:288:19: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_VBUS_DRV]           = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 4, 4),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:281:19: note: previous initialization is here
>            [HW_VBUS_DRV]           = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 4, 4),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-if.c:22:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:289:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_SEL_CP_EXT]         = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 3, 3),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:282:21: note: previous initialization is here
>            [HW_SEL_CP_EXT]         = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 3, 3),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-if.c:22:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:290:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_DM_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 2, 2),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:283:21: note: previous initialization is here
>            [HW_DM_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 2, 2),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-if.c:22:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:291:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_DP_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 1, 1),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:284:21: note: previous initialization is here
>            [HW_DP_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 1, 1),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-if.c:22:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:292:20: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_DP_PULLUP]          = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 0, 0),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:285:20: note: previous initialization is here
>            [HW_DP_PULLUP]          = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 0, 0),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
> --
>    In file included from drivers/usb/isp1760/isp1760-core.c:15:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:556:9: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return inb(addr);
>                   ^~~~~~~~~
>    arch/riscv/include/asm/io.h:55:76: note: expanded from macro 'inb'
>    #define inb(c)          ({ u8  __v; __io_pbr(); __v = readb_cpu((void*)(PCI_IOBASE + (c))); __io_par(__v); __v; })
>                                                                            ~~~~~~~~~~ ^
>    arch/riscv/include/asm/mmio.h:87:48: note: expanded from macro 'readb_cpu'
>    #define readb_cpu(c)            ({ u8  __r = __raw_readb(c); __r; })
>                                                             ^
>    In file included from drivers/usb/isp1760/isp1760-core.c:15:
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
>    In file included from drivers/usb/isp1760/isp1760-core.c:15:
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
>    In file included from drivers/usb/isp1760/isp1760-core.c:15:
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
>    In file included from drivers/usb/isp1760/isp1760-core.c:15:
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
>    In file included from drivers/usb/isp1760/isp1760-core.c:15:
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
>    In file included from drivers/usb/isp1760/isp1760-core.c:15:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1024:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    In file included from drivers/usb/isp1760/isp1760-core.c:21:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
> >> drivers/usb/isp1760/isp1760-regs.h:286:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_OTG_DISABLE]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 10, 10),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:279:21: note: previous initialization is here
>            [HW_OTG_DISABLE]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 10, 10),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-core.c:21:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:287:22: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_SW_SEL_HC_DC]       = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 7, 7),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:280:22: note: previous initialization is here
>            [HW_SW_SEL_HC_DC]       = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 7, 7),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-core.c:21:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:288:19: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_VBUS_DRV]           = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 4, 4),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:281:19: note: previous initialization is here
>            [HW_VBUS_DRV]           = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 4, 4),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-core.c:21:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:289:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_SEL_CP_EXT]         = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 3, 3),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:282:21: note: previous initialization is here
>            [HW_SEL_CP_EXT]         = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 3, 3),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-core.c:21:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:290:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_DM_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 2, 2),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:283:21: note: previous initialization is here
>            [HW_DM_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 2, 2),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-core.c:21:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:291:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_DP_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 1, 1),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:284:21: note: previous initialization is here
>            [HW_DP_PULLDOWN]        = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 1, 1),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    In file included from drivers/usb/isp1760/isp1760-core.c:21:
>    In file included from drivers/usb/isp1760/isp1760-core.h:19:
>    In file included from drivers/usb/isp1760/isp1760-hcd.h:8:
>    drivers/usb/isp1760/isp1760-regs.h:292:20: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
>            [HW_DP_PULLUP]          = REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 0, 0),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-regs.h:285:20: note: previous initialization is here
>            [HW_DP_PULLUP]          = REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 0, 0),
>                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/regmap.h:1210:37: note: expanded from macro 'REG_FIELD'
>    #define REG_FIELD(_reg, _lsb, _msb) {           \
>                                        ^~~~~~~~~~~~~
> >> drivers/usb/isp1760/isp1760-core.c:163:41: warning: variable 'base' is uninitialized when used here [-Wuninitialized]
>            hcd->regs = devm_regmap_init_mmio(dev, base, &isp1760_hc_regmap_conf);
>                                                   ^~~~
>    include/linux/regmap.h:988:39: note: expanded from macro 'devm_regmap_init_mmio'
>            devm_regmap_init_mmio_clk(dev, NULL, regs, config)
>                                                 ^~~~
>    include/linux/regmap.h:974:18: note: expanded from macro 'devm_regmap_init_mmio_clk'
>                                    dev, clk_id, regs, config)
>                                                 ^~~~
>    include/linux/regmap.h:666:52: note: expanded from macro '__regmap_lockdep_wrapper'
>    #define __regmap_lockdep_wrapper(fn, name, ...) fn(__VA_ARGS__, NULL, NULL)
>                                                       ^~~~~~~~~~~
>    drivers/usb/isp1760/isp1760-core.c:129:20: note: initialize the variable 'base' to silence this warning
>            void __iomem *base;
>                              ^
>                               = NULL
>    15 warnings generated.
>
>
> vim +286 drivers/usb/isp1760/isp1760-regs.h
>
>    240	
>    241	static const struct reg_field isp1761_dc_reg_fields[] = {
>    242		[DC_DEVEN]		= REG_FIELD(ISP176x_DC_ADDRESS, 7, 7),
>    243		[DC_DEVADDR]		= REG_FIELD(ISP176x_DC_ADDRESS, 0, 6),
>    244		[DC_VBUSSTAT]		= REG_FIELD(ISP176x_DC_MODE, 8, 8),
>    245		[DC_SFRESET]		= REG_FIELD(ISP176x_DC_MODE, 4, 4),
>    246		[DC_GLINTENA]		= REG_FIELD(ISP176x_DC_MODE, 3, 3),
>    247		[DC_CDBGMOD_ACK]	= REG_FIELD(ISP176x_DC_INTCONF, 6, 6),
>    248		[DC_DDBGMODIN_ACK]	= REG_FIELD(ISP176x_DC_INTCONF, 4, 4),
>    249		[DC_DDBGMODOUT_ACK]	= REG_FIELD(ISP176x_DC_INTCONF, 2, 2),
>    250		[DC_INTPOL]		= REG_FIELD(ISP176x_DC_INTCONF, 0, 0),
>    251		[DC_IEPRXTX_7]		= REG_FIELD(ISP176x_DC_INTENABLE, 25, 25),
>    252		[DC_IEPRXTX_6]		= REG_FIELD(ISP176x_DC_INTENABLE, 23, 23),
>    253		[DC_IEPRXTX_5]		= REG_FIELD(ISP176x_DC_INTENABLE, 21, 21),
>    254		[DC_IEPRXTX_4]		= REG_FIELD(ISP176x_DC_INTENABLE, 19, 19),
>    255		[DC_IEPRXTX_3]		= REG_FIELD(ISP176x_DC_INTENABLE, 17, 17),
>    256		[DC_IEPRXTX_2]		= REG_FIELD(ISP176x_DC_INTENABLE, 15, 15),
>    257		[DC_IEPRXTX_1]		= REG_FIELD(ISP176x_DC_INTENABLE, 13, 13),
>    258		[DC_IEPRXTX_0]		= REG_FIELD(ISP176x_DC_INTENABLE, 11, 11),
>    259		[DC_IEP0SETUP]		= REG_FIELD(ISP176x_DC_INTENABLE, 8, 8),
>    260		[DC_IEVBUS]		= REG_FIELD(ISP176x_DC_INTENABLE, 7, 7),
>    261		[DC_IEHS_STA]		= REG_FIELD(ISP176x_DC_INTENABLE, 5, 5),
>    262		[DC_IERESM]		= REG_FIELD(ISP176x_DC_INTENABLE, 4, 4),
>    263		[DC_IESUSP]		= REG_FIELD(ISP176x_DC_INTENABLE, 3, 3),
>    264		[DC_IEBRST]		= REG_FIELD(ISP176x_DC_INTENABLE, 0, 0),
>    265		[DC_EP0SETUP]		= REG_FIELD(ISP176x_DC_EPINDEX, 5, 5),
>    266		[DC_ENDPIDX]		= REG_FIELD(ISP176x_DC_EPINDEX, 1, 4),
>    267		[DC_EPDIR]		= REG_FIELD(ISP176x_DC_EPINDEX, 0, 0),
>    268		[DC_CLBUF]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 4, 4),
>    269		[DC_VENDP]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 3, 3),
>    270		[DC_DSEN]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 2, 2),
>    271		[DC_STATUS]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 1, 1),
>    272		[DC_STALL]		= REG_FIELD(ISP176x_DC_CTRLFUNC, 0, 0),
>    273		[DC_BUFLEN]		= REG_FIELD(ISP176x_DC_BUFLEN, 0, 15),
>    274		[DC_FFOSZ]		= REG_FIELD(ISP176x_DC_EPMAXPKTSZ, 0, 10),
>    275		[DC_EPENABLE]		= REG_FIELD(ISP176x_DC_EPTYPE, 3, 3),
>    276		[DC_ENDPTYP]		= REG_FIELD(ISP176x_DC_EPTYPE, 0, 1),
>    277		[DC_UFRAMENUM]		= REG_FIELD(ISP176x_DC_FRAMENUM, 11, 13),
>    278		[DC_FRAMENUM]		= REG_FIELD(ISP176x_DC_FRAMENUM, 0, 10),
>    279		[HW_OTG_DISABLE]	= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 10, 10),
>    280		[HW_SW_SEL_HC_DC]	= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 7, 7),
>    281		[HW_VBUS_DRV]		= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 4, 4),
>    282		[HW_SEL_CP_EXT]		= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 3, 3),
>    283		[HW_DM_PULLDOWN]	= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 2, 2),
>    284		[HW_DP_PULLDOWN]	= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 1, 1),
>    285		[HW_DP_PULLUP]		= REG_FIELD(ISP1761_DC_OTG_CTRL_SET, 0, 0),
>  > 286		[HW_OTG_DISABLE]	= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 10, 10),
>    287		[HW_SW_SEL_HC_DC]	= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 7, 7),
>    288		[HW_VBUS_DRV]		= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 4, 4),
>    289		[HW_SEL_CP_EXT]		= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 3, 3),
>    290		[HW_DM_PULLDOWN]	= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 2, 2),
>    291		[HW_DP_PULLDOWN]	= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 1, 1),
>    292		[HW_DP_PULLUP]		= REG_FIELD(ISP1761_DC_OTG_CTRL_CLEAR, 0, 0),
>    293	};
>    294	
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CB6AA86KSN8C.2UEPEE2H5WFKY%40arch-thunder.
