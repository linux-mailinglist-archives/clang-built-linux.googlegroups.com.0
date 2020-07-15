Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRXIXT4AKGQE5OTHTXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 2557F221301
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 18:52:24 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id jx16sf3199445pjb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 09:52:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594831942; cv=pass;
        d=google.com; s=arc-20160816;
        b=dU3IeJZMkfisMQBoEE5rm8wvCY9HmgUoVzH0lHR14r+azWgyOEuAXhlViViPFM3JUQ
         sWbAhBP4FekW4yK3AYCrxx1biBWuYIKKvxYfJWDimU7JvD/T4i0tG5UpgxGP81+tREjz
         J2sEDQwjiwpERCBrkvRE+H2HMgNDahKfYa3Vxpq6WpSf1vbz6ptyMYqP7bIsluiJlJ79
         or1WnBAnQBbZeQkRIGuwdX6xIyF+VcZVoui9Cn3gLDj6Mp1tRNJn6eYPwSEVuFMxmPHf
         vOfXFNLF9mDl1WEtGD3VamVKOg5/fvkyEt43ssORW47RzGYh/iTDaON0nk6siIzd92DW
         lLdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=qgxebJ4NK+cfoRg93JbK05okX5VuHY3lYuo23q1YSEE=;
        b=zGrChivtbcxXlcz+AvJrzs5Wrke6D1H5uz1lrNsxIXVdNQQdp7clPNLcmQqepQph/g
         rLhIUaI7MSZ8KLo7W/xsOlUnt3cykc1b4CtMle7H2S1qAM23GWeudzfaUKd07ueU+jpd
         d/X92f0nwC5FWRMemcpGtA3RWv6bXPEO35/kVvOxNhWwuhx5QsOAcCrPu5U/xRk/+E7d
         f3wd5BuRM/4hflRSty0vwj6p0+tANsg4Z8/t0VQBZV6rG2ykqGUIsuH7b1hdlRrLDRoZ
         In20mrwdd6zxMeICkKg/XB04s1PM96r2AWm8YeC/1MEta1m5Nw7KL80JOFXJr6aqXvMY
         P3nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qgxebJ4NK+cfoRg93JbK05okX5VuHY3lYuo23q1YSEE=;
        b=owhEKg9NOWBiathjYWWKZR/PuWauaMc2+rgxp6nxV35NKJvCsbS3AtYJARXkDk2k45
         n+x3wnLOpbteiaPPnBuRD6nke+mT62XQQAxDxfYLMn9D8Zoe86vz17AbKNLjAmE99di9
         6EMyRfpIUOryW+QMBUm59Y2DLulc2BXfnApnmh3p1BNDNeHulh+uWkLWR+Gw209UiKqS
         KAGPqok0pth6xsbBjlENfyYdSLn1v2lrQOHGh9OJUDdbQaT79GRexGqJfxYBSsXNvq5/
         t5zwT8l2sXz0raa+lB9tvhTA30FIdJ7gcEX1hVUNtVecy+NEfAwfRvw3ALhgEXo0pVTt
         1e6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qgxebJ4NK+cfoRg93JbK05okX5VuHY3lYuo23q1YSEE=;
        b=h5hHgihwPB+FJrhorK0bCI7xutfVKzoGZNYDlwdGSCyF/tgq9sarmzBhJ5hOcAbnPH
         50vX4AyMrXcIfJiSm/6aCJZ4ASsXflAK3qdieDT/+uQQkQ4ayQAf/fbKoVeTH7+r4/F+
         X9e2DXCw72+mxDoFRXBEi3alyizgBbd7gokFGyHDc9RP25stASV/yYOG3ubTrVCV0dXX
         FbTWwBAQVNMUD7mWXsLEGPKLn6mQI7eK1NUhLHFDp67caLG1mxn1tkHxa73oXcHQme/v
         TpMkGyUz/Cy+cxK+9khtez9oXCAzmKGygN7LvNvqVtB2AEmqce/81k4oRRZX/ps3AMYZ
         5Ysw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OpSOql0gkcHrJ05hWLEpnbDbSbTONt0puIRSXJqUAdUQZ/v7H
	k0VcWeyUz9t5ARLI1SGt9mY=
X-Google-Smtp-Source: ABdhPJy/PTf8yG4tAPzh3y8V61oF+94/TvUb7rOPCjEflc6T/NGqxtkFT2zU4lOVmwPkmEv9fA13FQ==
X-Received: by 2002:a62:7942:: with SMTP id u63mr193079pfc.54.1594831942228;
        Wed, 15 Jul 2020 09:52:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8c01:: with SMTP id m1ls71675pfd.2.gmail; Wed, 15 Jul
 2020 09:52:21 -0700 (PDT)
X-Received: by 2002:a63:9d45:: with SMTP id i66mr544898pgd.25.1594831941708;
        Wed, 15 Jul 2020 09:52:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594831941; cv=none;
        d=google.com; s=arc-20160816;
        b=d5wLXAkOSKJO7xqUVzrPYPR82Lvv+aVGNZ4Z6s9BEI0AMkKkN9kDubgWH6d5k/OeCI
         C4MxaIqh8Tai6CinKox+Ju5kdRhTpzFrTXaF26mmq6sHquKlY0cOmEBvY6E1NgvnqmDF
         RtigDHfx74WeYN9EjbP6gFL+2y44oRIx0Siwk72/9gVtnC4tug5t6p3petbVw6jfXXXa
         VRMXXVlw3klIyqro1b5HoEFBuiVEs4y72Qizu5fufonvaaHfCaxqOPp3I8ZydYvpV4O6
         4DtywIDjWykJqp0Sg9dH+boFAAJF6VDNY4+fRZksU8UH4P1OE5lCcgqGgzW2xjCRLKKC
         TdVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=3i3e/SFlLYT2Ak6sc1XkxmMZ2kRQfD3OMKV1XKj8EQs=;
        b=iJce2XqPsHLf4lvdG1nB7+7GAhBXL+LOwMiEDxDIKuLFNrJPWXLDevrXuOEFOIqfxm
         d1jQRDQGjZAmxKCgTe6Qc8JaZvHI4wWxIkJVnpM/+FHV6FfT/dH9SCP4ZbEmUM7CvQ5R
         HNlzGVOq642m/O2dJb3iBazHHxb8n/dlVfJWmfSXbclt+DIQvtJdE0zIU7/ER2oOpg0o
         pCpWhP+zxYu1QfBG67J0icb580NaNUsi+EfOUQX+ZDQXcZBCkndltdcl3/LZYArtmHZE
         aNqhzNdxwHwzwkaV3PoEGU7639iqMihcoNRvpBXMWmv8M/uzjDGKShgdHVkMkgMdyWsx
         YW2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id s7si119497pjq.2.2020.07.15.09.52.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jul 2020 09:52:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: TJq5sHHQ8ZS9nPP/dQiU9rWEc66vBRx6Hr9JR5KbmUm3fmeBkRyPwMYbUfK2OiRhyr5MVOUSyY
 Y94NHd6zggSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="213962871"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; 
   d="gz'50?scan'50,208,50";a="213962871"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2020 09:52:19 -0700
IronPort-SDR: L5cXiY4S1z9ULDY8NbzY9gYlrg0ikQLGAZl1a9YCF61uVK17YMTsPC3dNFe7aRs+z2Ek0UEcD2
 VegXzDnPl13g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; 
   d="gz'50?scan'50,208,50";a="390842487"
Received: from lkp-server01.sh.intel.com (HELO e5b4d2dd85a6) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 15 Jul 2020 09:52:17 -0700
Received: from kbuild by e5b4d2dd85a6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jvkdl-00002p-6p; Wed, 15 Jul 2020 16:52:17 +0000
Date: Thu, 16 Jul 2020 00:51:23 +0800
From: kernel test robot <lkp@intel.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [rcar:gmsl/dev 23/24] drivers/regulator/gpio-regulator.c:245:54:
 warning: format specifies type 'int' but the argument has type 'long'
Message-ID: <202007160020.VI9uUcEr%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kbingham/rcar.git gmsl/dev
head:   73e3ee66deb28072d44a06d4996854442f049d23
commit: ad66c71305dbc51e01c94cf22fd62d179c34a52f [23/24] DNI: Regulator: Debug
config: riscv-randconfig-r015-20200715 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git checkout ad66c71305dbc51e01c94cf22fd62d179c34a52f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/io.h:13:
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
   In file included from drivers/regulator/gpio-regulator.c:26:
   In file included from include/linux/regulator/machine.h:16:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/regulator/gpio-regulator.c:26:
   In file included from include/linux/regulator/machine.h:16:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/regulator/gpio-regulator.c:26:
   In file included from include/linux/regulator/machine.h:16:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
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
   In file included from drivers/regulator/gpio-regulator.c:26:
   In file included from include/linux/regulator/machine.h:16:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:13:
   In file included from include/linux/cgroup.h:26:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from ./arch/riscv/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/riscv/include/asm/io.h:148:
   include/asm-generic/io.h:1017:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
                                                     ~~~~~~~~~~ ^
>> drivers/regulator/gpio-regulator.c:245:54: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
                           dev_err(dev, "OF_GET_GPIO_REGULATOR_CONFIG %d\n", PTR_ERR(config));
                                                                      ~~     ^~~~~~~~~~~~~~~
                                                                      %ld
   include/linux/dev_printk.h:104:32: note: expanded from macro 'dev_err'
           _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                 ~~~     ^~~~~~~~~~~
   8 warnings generated.

vim +245 drivers/regulator/gpio-regulator.c

   223	
   224	static int gpio_regulator_probe(struct platform_device *pdev)
   225	{
   226		struct device *dev = &pdev->dev;
   227		struct gpio_regulator_config *config = dev_get_platdata(dev);
   228		struct device_node *np = dev->of_node;
   229		struct gpio_regulator_data *drvdata;
   230		struct regulator_config cfg = { };
   231		struct regulator_dev *rdev;
   232		enum gpiod_flags gflags;
   233		int ptr, ret, state, i;
   234	
   235		drvdata = devm_kzalloc(dev, sizeof(struct gpio_regulator_data),
   236				       GFP_KERNEL);
   237		if (drvdata == NULL)
   238			return -ENOMEM;
   239	
   240		if (np) {
   241			config = of_get_gpio_regulator_config(dev, np,
   242							      &drvdata->desc);
   243	
   244			if (IS_ERR(config)) {
 > 245				dev_err(dev, "OF_GET_GPIO_REGULATOR_CONFIG %d\n", PTR_ERR(config));
   246				return PTR_ERR(config);
   247			}
   248		}
   249	
   250		dev_err(dev, "Probing GPIO Regulator\n");
   251	
   252		drvdata->desc.name = devm_kstrdup(dev, config->supply_name, GFP_KERNEL);
   253		if (drvdata->desc.name == NULL) {
   254			dev_err(dev, "Failed to allocate supply name\n");
   255			return -ENOMEM;
   256		}
   257	
   258		drvdata->gpiods = devm_kzalloc(dev, sizeof(struct gpio_desc *),
   259					       GFP_KERNEL);
   260		if (!drvdata->gpiods)
   261			return -ENOMEM;
   262	
   263		for (i = 0; i < config->ngpios; i++) {
   264			drvdata->gpiods[i] = devm_gpiod_get_index(dev,
   265								  NULL,
   266								  i,
   267								  config->gflags[i]);
   268			if (IS_ERR(drvdata->gpiods[i]))
   269				return PTR_ERR(drvdata->gpiods[i]);
   270			/* This is good to know */
   271			gpiod_set_consumer_name(drvdata->gpiods[i], drvdata->desc.name);
   272		}
   273		drvdata->nr_gpios = config->ngpios;
   274	
   275		drvdata->states = devm_kmemdup(dev,
   276					       config->states,
   277					       config->nr_states *
   278					       sizeof(struct gpio_regulator_state),
   279					       GFP_KERNEL);
   280		if (drvdata->states == NULL) {
   281			dev_err(dev, "Failed to allocate state data\n");
   282			return -ENOMEM;
   283		}
   284		drvdata->nr_states = config->nr_states;
   285	
   286		drvdata->desc.owner = THIS_MODULE;
   287		drvdata->desc.enable_time = config->startup_delay;
   288	
   289		/* handle regulator type*/
   290		switch (config->type) {
   291		case REGULATOR_VOLTAGE:
   292			drvdata->desc.type = REGULATOR_VOLTAGE;
   293			drvdata->desc.ops = &gpio_regulator_voltage_ops;
   294			drvdata->desc.n_voltages = config->nr_states;
   295			break;
   296		case REGULATOR_CURRENT:
   297			drvdata->desc.type = REGULATOR_CURRENT;
   298			drvdata->desc.ops = &gpio_regulator_current_ops;
   299			break;
   300		default:
   301			dev_err(dev, "No regulator type set\n");
   302			return -EINVAL;
   303		}
   304	
   305		/* build initial state from gpio init data. */
   306		state = 0;
   307		for (ptr = 0; ptr < drvdata->nr_gpios; ptr++) {
   308			if (config->gflags[ptr] == GPIOD_OUT_HIGH)
   309				state |= (1 << ptr);
   310		}
   311		drvdata->state = state;
   312	
   313		cfg.dev = dev;
   314		cfg.init_data = config->init_data;
   315		cfg.driver_data = drvdata;
   316		cfg.of_node = np;
   317	
   318		/*
   319		 * The signal will be inverted by the GPIO core if flagged so in the
   320		 * decriptor.
   321		 */
   322		if (config->enabled_at_boot)
   323			gflags = GPIOD_OUT_HIGH | GPIOD_FLAGS_BIT_NONEXCLUSIVE;
   324		else
   325			gflags = GPIOD_OUT_LOW | GPIOD_FLAGS_BIT_NONEXCLUSIVE;
   326	
   327		cfg.ena_gpiod = gpiod_get_optional(dev, "enable", gflags);
   328		if (IS_ERR(cfg.ena_gpiod))
   329			return PTR_ERR(cfg.ena_gpiod);
   330	
   331		rdev = devm_regulator_register(dev, &drvdata->desc, &cfg);
   332		if (IS_ERR(rdev)) {
   333			ret = PTR_ERR(rdev);
   334			dev_err(dev, "Failed to register regulator: %d\n", ret);
   335			return ret;
   336		}
   337	
   338		platform_set_drvdata(pdev, drvdata);
   339	
   340		return 0;
   341	}
   342	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007160020.VI9uUcEr%25lkp%40intel.com.

--FCuugMFkClbJLl1L
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
+gEA

--FCuugMFkClbJLl1L--
