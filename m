Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZMAY34AKGQEH7DNRQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 876AD223984
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 12:41:42 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id n141sf437252yba.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 03:41:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594982501; cv=pass;
        d=google.com; s=arc-20160816;
        b=AZ7s1h3EZo/fxOCoFVPQyMJyHxLzUQV1yRugaR+U6Fgde/A/HJqgFvRmENieSvAMG1
         eUXHxN+7FokPQxPpnjykDRMyNY/sU/vY6yCLLPPSTAeCqSAwAneiX2mVsbHbWQWW8azk
         WoHRaFVss8+MYiMLJdZoCnR2D9xayGSGnLBNDLxuUKwzJsQWzRMcq+fD0nc+Ut2pJL5j
         GCgo5EzHCFqmrqGh0Nc3X1Tg/MPQ/C5yBhVbK4quuAKlBtBTHH1s9o9bro36juANK0Nk
         qQcYJmDpB77Uny76VZZhYPVgmdL+bLYHpIm3WEjekC7+5muAtC7IGyMmeEF4tUrti/DJ
         ZsdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=sBzFN7dTDBZYAaaUPORTKtOJUjnmlgwicaCJpNQ6VLo=;
        b=BI1vdcJhY8nY2J9ArSC4Ua4OZQVjjkpbFX7LZmjDNC97KhoAKMkKduFos15EbLrvZv
         WWce10y9vGw861cPNuB0H10D2VPm2DDF6YKA6H3abaEZ+KT+5fi6IDqJhXzrItBEhzUf
         fqfJ/avqkhuw8Lca7vxJO0PkEFycgu9ZVr/gbRP16sUn4gD4knPLof9wam8BkclgH620
         uUvNG7AeuUCnXugPEMfNYfiR+QQHaiGRtkaRlUX0SuVT2ZgKkROWn0lyNl0XR8Jvdj+N
         2J0nm96FvbT3U6eceiNusb3KgqhIpkXqLM/SnCS/MaVCgvIH+4NPfskW9X51AxQYITSV
         I7Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sBzFN7dTDBZYAaaUPORTKtOJUjnmlgwicaCJpNQ6VLo=;
        b=HD5mqUyu4e40C8wNvd5Wkp9V7Rq4tX+ZSXYvDq26ARydbqgH2e45/ELbn48/gor0K6
         n70e5be8bgm8ICo5r60uPAeT4IlwpeRfG947v2TpvM1nObWKb1a8SNSzP54sC8xSFTed
         Zjvl3UA7UUCd3yyDvGg3qhP0x0nYcV1DX+VT596BO5ZCWBRQPNxL+fftATRnKaHbWozr
         aXEVMOJlK6FyBUPeBRf2rNeQVm3Tw8uYMKvLKTGCYPNalPUR8NfiOeurH6mDzO3Q4zrS
         kWp95dNPY5U/LyND1hY7rLhgqGd0LPp4nSwGH/sj6td2UmOA00rEtOGFiXaTNyrN/8JE
         Oe2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sBzFN7dTDBZYAaaUPORTKtOJUjnmlgwicaCJpNQ6VLo=;
        b=ZOwanSTaKXcSXkU8ULW6zk7LCqKsgFGZS5392xI6S8bmHqLHw/2P/nHUMDB/LDjzSt
         S2FFw0Dspi8/YzyvwafubLmzP8Hy03CcTaweYfo2xvs5FWNykXV73qAFeOQJ7BB3e6fO
         nq4ENdeT16+canjg0Ye1DsOtUuHZ2nNFkTerU2jKUAnJIsbEJJOLrcj9ZIIdl1vOxOUl
         LU4YJbT100VbNFJCKGr9p5jF8F0rk8fqGYPjLmeU0b/MiRd4tzcSzPZLc2/ovvHZ0gnN
         jstBxUEcxvzEElAvAQ1sQHpul6O5Xp7RUcACm0pYGOVdEM71PWghbEp13cKIuDuT/hkg
         ZL9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LT2nMMF8TVZ6eJF3gM4g55/Gu98AoyKjoVtSCbboh8CsqRMoP
	iB4Qru1K1vkbkS5weNA1+VY=
X-Google-Smtp-Source: ABdhPJw1+YSjmkijTsKwPEBmz7Lss6lwBM5I+mcliXB51muH7tGM5g9boXUgXR8RL85KrhWtl8BFLQ==
X-Received: by 2002:a25:698a:: with SMTP id e132mr13808907ybc.177.1594982501195;
        Fri, 17 Jul 2020 03:41:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa48:: with SMTP id s66ls3476177ybi.3.gmail; Fri, 17 Jul
 2020 03:41:40 -0700 (PDT)
X-Received: by 2002:a25:cfd2:: with SMTP id f201mr13236154ybg.286.1594982500695;
        Fri, 17 Jul 2020 03:41:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594982500; cv=none;
        d=google.com; s=arc-20160816;
        b=wirPSSmG32aGi5461RH/Gw8lBrwsGlozRx7QgzSi2lDJbdLn0dmGch7nJoCq7iKeAo
         ki+2TjxyrD/3qfyKH0RmaPTOfdq5fNqK4c7zxrarA0lJli26Vs18AoTupstLh4ZXx1in
         N+HDqqE2oWzNoNkPZWcbt7OJ/GrHd/TAiSXRAt+yfVxcF0Forl7c+Ib8XGuwUjZwl2hR
         L4rQdQwxv0Q4PkzvHsCsWXanx7LWOM5TzbHxPN2bKijvS/4TOiN8UCKMRfyYH7wky8tx
         5OtjvlrLmMIqf6rDkyjFQgbvlS+5013CzBZg3SCSJSNnvJVY2+HRgHic0UGOtHtooRI7
         pNpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Ke35JY/+iTYtiBizN1VyKzfK8deSdVUUIEHoj3rY7Hs=;
        b=RsNGHTQg83fkKLd1mDKrTDjtLCsjrqL3g9w/kDsyLWpuEnF65MyrXbWsl4ya3xPY65
         TWDyD+NMcdnGfc4Ba7RY8VnIRpMDgHL5uG5GocOiEHi3Qp6BlbfyPtufg775Z6Ab5b/y
         nj7usSuvtzbXI+Z0VeRFxhJZZsmwcLjkUEkH45AFyW14fw3yHs+a9Mm7IUwGpHOK5fwc
         Gb6LzB9fpaHwnbFjLz353/nrmhvsMHwrXD9m89aTnq21TyJLfChxgN6Zl0OXN+p6MIIZ
         BHHTA9pjVoG6GfdOnz4Mwl8r63+032nONz6O2DmghlYl8AvPn26YTrkcsanxSh01sQlb
         ronw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id h3si663408ybp.2.2020.07.17.03.41.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jul 2020 03:41:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: b1/NT23TiV/0aBNkU9qW6LDCMJMtmaBxm9ThhdDc6qKUj3EkBPnTOHMrZzxQaNMCNpA8N3hAae
 8rJMjMuj5Mbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137684290"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; 
   d="gz'50?scan'50,208,50";a="137684290"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jul 2020 03:41:38 -0700
IronPort-SDR: cvwFDIoIvZ0Tpgky7DLEQe20wXLHkl/8PyIarW95mqFpXBygWidF9WthJ2A1wv+vyoBQhWkXbj
 cKG5QdfAXERw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; 
   d="gz'50?scan'50,208,50";a="391358306"
Received: from lkp-server02.sh.intel.com (HELO 50058c6ee6fc) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 17 Jul 2020 03:41:35 -0700
Received: from kbuild by 50058c6ee6fc with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jwNo6-0000GB-HW; Fri, 17 Jul 2020 10:41:34 +0000
Date: Fri, 17 Jul 2020 18:40:30 +0800
From: kernel test robot <lkp@intel.com>
To: Joakim Zhang <qiangqing.zhang@nxp.com>, tglx@linutronix.de,
	jason@lakedaemon.net, maz@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.or
Subject: Re: [PATCH 1/2] irqchip: imx-intmux: add system PM support
Message-ID: <202007171825.od7xeSND%lkp@intel.com>
References: <20200716193244.31090-2-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="RnlQjJ0d97Da+TV1"
Content-Disposition: inline
In-Reply-To: <20200716193244.31090-2-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--RnlQjJ0d97Da+TV1
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Joakim,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on tip/irq/core]
[also build test ERROR on linux/master linus/master v5.8-rc5 next-20200716]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Joakim-Zhang/irqchip-imx-intmux-add-PM-support/20200716-193311
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 8fa88a88d573093868565a1afba43b5ae5b3a316
config: s390-randconfig-r014-20200717 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ed6b578040a85977026c93bf4188f996148f3218)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/irqchip/irq-imx-intmux.c:49:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/irqchip/irq-imx-intmux.c:49:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/irqchip/irq-imx-intmux.c:49:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/irqchip/irq-imx-intmux.c:49:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/irqchip/irq-imx-intmux.c:49:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/irqchip/irq-imx-intmux.c:240:9: error: no member named 'saved_reg' in 'struct intmux_data'
                   data->saved_reg = devm_kzalloc(&pdev->dev,
                   ~~~~  ^
   drivers/irqchip/irq-imx-intmux.c:243:14: error: no member named 'saved_reg' in 'struct intmux_data'
                   if (!data->saved_reg)
                        ~~~~  ^
   20 warnings and 2 errors generated.

vim +240 drivers/irqchip/irq-imx-intmux.c

   198	
   199	static int imx_intmux_probe(struct platform_device *pdev)
   200	{
   201		struct device_node *np = pdev->dev.of_node;
   202		struct irq_domain *domain;
   203		struct intmux_data *data;
   204		int channum;
   205		int i, ret;
   206	
   207		channum = platform_irq_count(pdev);
   208		if (channum == -EPROBE_DEFER) {
   209			return -EPROBE_DEFER;
   210		} else if (channum > CHAN_MAX_NUM) {
   211			dev_err(&pdev->dev, "supports up to %d multiplex channels\n",
   212				CHAN_MAX_NUM);
   213			return -EINVAL;
   214		}
   215	
   216		data = devm_kzalloc(&pdev->dev, sizeof(*data) +
   217				    channum * sizeof(data->irqchip_data[0]), GFP_KERNEL);
   218		if (!data)
   219			return -ENOMEM;
   220	
   221		data->regs = devm_platform_ioremap_resource(pdev, 0);
   222		if (IS_ERR(data->regs)) {
   223			dev_err(&pdev->dev, "failed to initialize reg\n");
   224			return PTR_ERR(data->regs);
   225		}
   226	
   227		data->ipg_clk = devm_clk_get(&pdev->dev, "ipg");
   228		if (IS_ERR(data->ipg_clk)) {
   229			ret = PTR_ERR(data->ipg_clk);
   230			if (ret != -EPROBE_DEFER)
   231				dev_err(&pdev->dev, "failed to get ipg clk: %d\n", ret);
   232			return ret;
   233		}
   234	
   235		data->channum = channum;
   236		raw_spin_lock_init(&data->lock);
   237	
   238		if (IS_ENABLED(CONFIG_PM)) {
   239			/* save CHANIER register */
 > 240			data->saved_reg = devm_kzalloc(&pdev->dev,
   241						       sizeof(unsigned int) * channum,
   242						       GFP_KERNEL);
   243			if (!data->saved_reg)
   244				return -ENOMEM;
   245		}
   246	
   247		ret = clk_prepare_enable(data->ipg_clk);
   248		if (ret) {
   249			dev_err(&pdev->dev, "failed to enable ipg clk: %d\n", ret);
   250			return ret;
   251		}
   252	
   253		for (i = 0; i < channum; i++) {
   254			data->irqchip_data[i].chanidx = i;
   255	
   256			data->irqchip_data[i].irq = irq_of_parse_and_map(np, i);
   257			if (data->irqchip_data[i].irq <= 0) {
   258				ret = -EINVAL;
   259				dev_err(&pdev->dev, "failed to get irq\n");
   260				goto out;
   261			}
   262	
   263			domain = irq_domain_add_linear(np, 32, &imx_intmux_domain_ops,
   264						       &data->irqchip_data[i]);
   265			if (!domain) {
   266				ret = -ENOMEM;
   267				dev_err(&pdev->dev, "failed to create IRQ domain\n");
   268				goto out;
   269			}
   270			data->irqchip_data[i].domain = domain;
   271	
   272			/* disable all interrupt sources of this channel firstly */
   273			writel_relaxed(0, data->regs + CHANIER(i));
   274	
   275			irq_set_chained_handler_and_data(data->irqchip_data[i].irq,
   276							 imx_intmux_irq_handler,
   277							 &data->irqchip_data[i]);
   278		}
   279	
   280		platform_set_drvdata(pdev, data);
   281	
   282		return 0;
   283	out:
   284		clk_disable_unprepare(data->ipg_clk);
   285		return ret;
   286	}
   287	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007171825.od7xeSND%25lkp%40intel.com.

--RnlQjJ0d97Da+TV1
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
FiyRO+NC4H6Ni0hyYGsc/h9aPW4aP0UCAA==

--RnlQjJ0d97Da+TV1--
