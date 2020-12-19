Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBHNB7L7AKGQEXF4SIKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 503CE2DF241
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 00:45:35 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id q5sf2853679otc.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 15:45:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608421534; cv=pass;
        d=google.com; s=arc-20160816;
        b=N170biRpykpaxTssCssjN9/Vv2IP1Mfc89kzCbYA98J16dBAQGk548iRN7YnlO+UEL
         TeTHTSpTRTDp93YzAJAuFB30eI+CXyIR6JZ+6ap5MROI+IZNxsyKCj6w+h4nO3SRX72l
         uxrct8YMZ2gLeZ4Sl/LRTw9Mf6sHgnXtG0d5R5T0BiCIGy1KEwKQP1a3qQZOoUqywmJ/
         mzBKxavaGZXkpOrgczYZUaZK3Owb2XS7ZfUv4TZTYIH6AG08X69IfzXB2VrYLlPZEnNI
         EPmyF+VcjCOISQm9DEB55geUow91SV4ITrskoj2jToD1LR6H5kH4thoGKFlDfC27+w2c
         JpLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=dbtb0TZvjv5GkQmubqSPF2QLIuRGoVQCKD0BFVQoyxQ=;
        b=FAqlxvergzm1sSzILLofgoVhahzX9D9gcpQauVIo351P8CsZyXYAVaWJg8IBy087hB
         24j+GoyKngxkxpi4jkLaeuYMpCONMyaNNRw32sOeg6/lehIqPgS2OSmRjlvIZ9w6VOG3
         EzSn4g61SoqmDiWXaTEW23zDr+nzcZvU8NhduGIp0IonPWFgXNRLEuVTJeeiN2BxB7Gp
         nsZiisP6xQO6SoMSE/mH7FGEA34YIMnedtNykYnyTE+EXWHKwyAVRgcNg5+65IWi7NK2
         QrN+bWluGmNeEqJkzB9FNHh73szUq5NSn4//i7dceccJyHpFSJ3cWWwpQR8lrwX21LP+
         4/5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dbtb0TZvjv5GkQmubqSPF2QLIuRGoVQCKD0BFVQoyxQ=;
        b=AChra2cjiYiFJJTCelGUDN8D1y6OM8MnPITpLEmAskKCPwAPbTX2aU3WqMrG8oj21E
         2qgNwNxN3mcvQUe04aXm3KG2wTlTyaaCzMFZLnwUWfHYDH+Dr6GW/BxY8Kh523oHDEAp
         xB0Zy/wZYnD36byHGZ807gyUex8GWqr8+O6MhCv++620xpRrBiCz9roMaemEymMwAtgw
         6wWW/3c2LbscAFXEemGexRLx0YdhTazyy5zi1GiabPblKEXtDUO1BSYeVvMknkRmlP/5
         Oom98BVADyJV4ceWt191rUwJBAJ+O7hifzUzd12lU5hCPIjAXgvJOqpY1eyGOqSbcQSz
         88Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dbtb0TZvjv5GkQmubqSPF2QLIuRGoVQCKD0BFVQoyxQ=;
        b=HOW4X66V8KLGfTQS9ERZUjMBYPRLOyod3qjvdzUYC6baIPbRw7RWbfJt2+whpH8l84
         9tKvNR64Lb836LgtwtS5xKZlrf6O0AfeL8gmt0O9kz/F07ubbqSexAKBBoKtTww9Ns4n
         9utsb3TH1QUuM2lqYiBQ1FpZD8IStrJ7+bDhKrFGS9R6oDn7Dni/GW9WkgHdYiP2czCH
         aqi0/QZTCdvxJni2//IEmNdWi+LqZ+Msi6w4Q0+WDZVsc6GRxCgZxJ+v1KM5je7gs+Kg
         Knfk0N/Yau8v1uMVLepxIpd57XkIUpXnIUHHTkQrHmLW/5rwjy1tACMsIoRCi+BljpgZ
         JBGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BymcjwdLrY0XLfrTmyUYTsx88RE3KH1VEOfyRs52nx06hADWL
	NYJyjSVWtABuE6TQ5bDaEWs=
X-Google-Smtp-Source: ABdhPJz4aYRy2uRlr0jX6ZtipxAcgs1CAWWy9yqxcetGIR9+G1X5ZkIVxV/vkjndvnS6YnzeDGj0sA==
X-Received: by 2002:a9d:65d3:: with SMTP id z19mr7109199oth.57.1608421534059;
        Sat, 19 Dec 2020 15:45:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e1d3:: with SMTP id n19ls2288185oot.5.gmail; Sat, 19 Dec
 2020 15:45:33 -0800 (PST)
X-Received: by 2002:a4a:8ed2:: with SMTP id c18mr7321117ool.33.1608421533599;
        Sat, 19 Dec 2020 15:45:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608421533; cv=none;
        d=google.com; s=arc-20160816;
        b=rhTiaztfjt0cWUdb1/55dk9mM5ArZDbDRa86Ec09BHvLi3DZdHBR5ZFibuooctN/BL
         9eHja3gJ3AUwmWXQxTPEEsNq+HAMnSzMrod6mfwJeI6gzaieNccLqCmA4kTh6cfVuf8I
         A7cprB/UQHpDDyKM6RsewuKX4nC5GLeWXdkmkOWFytDSHRr6WyEdSzcf3bQiabn4eofX
         V+8VFocmRwE0Wl9tjCb5Vg+9CDDN2/9+UXUOtmUYzoZUK4d6LHbMo4jrrT1dYbKFVPKG
         SlW+1D+aJi5YA0hNCOZhV07jWI456O7OpnX2AQcwx+oYyjYiRlT0py+8J6usmigr7RTu
         L4nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=BpoIT4YHn1WuhKogIHmBmy0NSLm9eMCcjNW13wI86NM=;
        b=PLd/ImfT2uy+ro5hU7Mcdm/yDJbXu9zYwyzrYpEdIeH2Ku72j/Ig9a1zYuWwH4Cpqz
         VL5wBMqyFEoGvBtNJPrh50kH4NRuxGCE2wB5wNCg2a/RqlGNfVgcyfETgnH/nvunE2Y0
         8hnYRcM0rVu1jIQ3RXP9QLY9Oy+obLyUyY2DQyxQu6VP+CFVLSzV5m6pBnpAD9XnJo8x
         hTVoAalJK73xSVl1VYsPv9hYszzQ02fY6QRIQp1BX5QIDgrcAnmzHPg7KZVFFQH9Ry7q
         5L+TnxvhHhHWNpeGWSWNBqolfC+ujOb2IQlrEdUPx5vfvh7qDjLklfxbWjz2w8zD7uPT
         V3+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id 7si798624otq.5.2020.12.19.15.45.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 15:45:32 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: QFRZAReoahu8xOh7iOQjnMTKq6NXKIVQHF+Wam5tMVWdxdQ0QEs5PJBQhmJ/+A0AkjANs584cI
 w+TFYDOqTP4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="175703566"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="175703566"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 15:45:31 -0800
IronPort-SDR: EURG8+/eRstrvRkZWpki19Hcp4AY6I6tkcfs3Y3NnSmzKKVbx6fkBKbVgkvbZHA4/0goH7yElx
 e7+QQSEe9p7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="455210618"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga001.fm.intel.com with ESMTP; 19 Dec 2020 15:45:29 -0800
Date: Sun, 20 Dec 2020 07:41:48 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Borislav Petkov <bp@suse.de>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: Re: [kbuild-all] [bp:rc0+0-tip-handbook 2/2]
 /tmp/da903x-935962.s:478: Error: unrecognized opcode `zext.b s5,s2'
Message-ID: <20201219234148.GB3505@intel.com>
References: <202012190437.UDP5blKH-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012190437.UDP5blKH-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Sat, Dec 19, 2020 at 04:02:49AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git rc0+0-tip-handbook
> head:   47ae0d02015ba6e9658a19786003f7cb0ee75b93
> commit: 47ae0d02015ba6e9658a19786003f7cb0ee75b93 [2/2] Documentation/process: Add tip tree handbook
> config: riscv-randconfig-r022-20201217 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git/commit/?id=47ae0d02015ba6e9658a19786003f7cb0ee75b93
>         git remote add bp https://git.kernel.org/pub/scm/linux/kernel/git/bp/bp.git
>         git fetch --no-tags bp rc0+0-tip-handbook
>         git checkout 47ae0d02015ba6e9658a19786003f7cb0ee75b93
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
Hi Thomas, kindly ignore this false positive report.

> 
> All errors (new ones prefixed by >>):
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
>    In file included from drivers/mfd/da903x.c:14:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
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
>    In file included from drivers/mfd/da903x.c:14:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
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
>    In file included from drivers/mfd/da903x.c:14:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
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
>    In file included from drivers/mfd/da903x.c:14:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
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
>    In file included from drivers/mfd/da903x.c:14:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:10:
>    In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
>    In file included from include/asm-generic/hardirq.h:13:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    7 warnings generated.
>    /tmp/da903x-935962.s: Assembler messages:
>    /tmp/da903x-935962.s:216: Error: unrecognized opcode `zext.b a1,s3'
>    /tmp/da903x-935962.s:279: Error: unrecognized opcode `zext.b a1,s2'
>    /tmp/da903x-935962.s:280: Error: unrecognized opcode `zext.b a2,s5'
>    /tmp/da903x-935962.s:341: Error: unrecognized opcode `zext.b a1,s2'
>    /tmp/da903x-935962.s:403: Error: unrecognized opcode `zext.b a1,s2'
>    /tmp/da903x-935962.s:404: Error: unrecognized opcode `zext.b a2,s5'
> >> /tmp/da903x-935962.s:478: Error: unrecognized opcode `zext.b s5,s2'
> >> /tmp/da903x-935962.s:507: Error: unrecognized opcode `zext.b s4,a0'
>    /tmp/da903x-935962.s:599: Error: unrecognized opcode `zext.b s5,s2'
>    /tmp/da903x-935962.s:626: Error: unrecognized opcode `zext.b s4,a0'
>    /tmp/da903x-935962.s:723: Error: unrecognized opcode `zext.b s6,s2'
>    /tmp/da903x-935962.s:754: Error: unrecognized opcode `zext.b s4,a0'
>    /tmp/da903x-935962.s:1401: Error: unrecognized opcode `zext.b a2,s5'
>    /tmp/da903x-935962.s:1960: Error: unrecognized opcode `zext.b a2,s2'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> --
>    In file included from drivers/gpio/gpio-dwapb.c:10:
>    In file included from include/linux/gpio/driver.h:7:
>    In file included from include/linux/irq.h:20:
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
>    In file included from drivers/gpio/gpio-dwapb.c:10:
>    In file included from include/linux/gpio/driver.h:7:
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
>    In file included from drivers/gpio/gpio-dwapb.c:10:
>    In file included from include/linux/gpio/driver.h:7:
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
>    In file included from drivers/gpio/gpio-dwapb.c:10:
>    In file included from include/linux/gpio/driver.h:7:
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
>    In file included from drivers/gpio/gpio-dwapb.c:10:
>    In file included from include/linux/gpio/driver.h:7:
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
>    In file included from drivers/gpio/gpio-dwapb.c:10:
>    In file included from include/linux/gpio/driver.h:7:
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
>    In file included from drivers/gpio/gpio-dwapb.c:10:
>    In file included from include/linux/gpio/driver.h:7:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
>    In file included from arch/riscv/include/asm/io.h:149:
>    include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                      ~~~~~~~~~~ ^
>    7 warnings generated.
>    /tmp/gpio-dwapb-382013.s: Assembler messages:
> >> /tmp/gpio-dwapb-382013.s:1135: Error: unrecognized opcode `zext.b a2,s5'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219234148.GB3505%40intel.com.
