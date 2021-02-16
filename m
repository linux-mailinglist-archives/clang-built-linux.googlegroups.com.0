Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBI7AVSAQMGQENY4GBCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id EA56331C599
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 03:38:28 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id c16sf6763997ile.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 18:38:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613443108; cv=pass;
        d=google.com; s=arc-20160816;
        b=eDw4Ws6KtWzwr3zV5Wrcietm/dGXPI7j7MdiNwMpRknQa+LpsIbTks4HrK5YTGpGbj
         1+PaDoYYa/F82iEfLPnZnYWa2slGNSzk0zRJBgimruC6kHwt7XUg4CWpnQPY+k8tH6M+
         m861EcHIuPoNbWW3lvopdN30kcQ9z0Bj3X38KW+/8XwZ6rjNYPUQdm5K/VeoV+JjSsuz
         Cz1x5DsD9gzMLh0j7VR+m3DhWzupLVTphSdptScgDgStD9HhR8oRhdQMfZBCbsTdvpRD
         +Lr+kw9HMfC5tIgvcD/LYzYaPHo9XcoRb3qK7wzl1r2F91gLH1oO9uocV4XjFVA5vvGR
         e2/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=IFd+dF4JTqgkFq/EZObwfZ2WMfptfNS+TQFeDmiaVhs=;
        b=J5VcpgWlMtoB9fhY3XZs3Pihou/yDq3J3sU1C/KIbnTlLUnphjnI3hjOyGrQ+dSI9B
         A1o8wLwjjKbVrYIe1Zl9VjTejh4cTnx9kcOqPC7NNoQW2Smmvoj6DrxWjugMWasVO6+A
         PypwaKr8FqSKx3FMAkFWekXjSE+mkrHrmLtJlgLTn2oIE2ZTJgJw+mmgliW4KmHvxz9t
         RHecnnZatiXoZWP8RpyXL2H6PBenamCou8cEiq+J2+YwyuBfp68ki5W5mW7qAeCFQGtq
         8UX/JZi+/LPgzqhH31PHGuLgm65vSvV21i+Lj1GnZBTeNntigYnYz46zj9ruaIvmb5UG
         2Keg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IFd+dF4JTqgkFq/EZObwfZ2WMfptfNS+TQFeDmiaVhs=;
        b=VyL2crJ8XDQfAeWi2bFNT7hKWgAsce7Pq9KxKUKTSHDz8H3n3CBQuhnliLVJlPjgtf
         w1ldHXSotWTKqIeYnmJ46FUuSW7CtJdwuS7k80mavLJt9iTDRg9ycWHiUqTOhfhDVDJS
         LOOe9uk6JPv3php7KzVw63xb9NXPC/ozcjqrI0+qZpgIcdjRkVb2et4DrhWLqrOBJjeL
         rUbeYNANmJjetBUrVze0I4UyuapOqG6lAN5DY51lMcvaYcYuFKChneTyRTjjna/pVbs8
         v8Fd+miluc4eV1dbTW8fSNkkKOsClD+obYHydXrUUmPnm5VvRVb2jB9EkLMCryJtnkeG
         1sxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IFd+dF4JTqgkFq/EZObwfZ2WMfptfNS+TQFeDmiaVhs=;
        b=OdA/AxOAloU53zVevsHj9A0kuVauDzeVlJpHVMVp860/r9KJOCOI0lNTQDEkG1QIJY
         r+XTPEje6WtECbZ/i41SlTZueUPaPxLcBqj9djiCT4wVaXmiqN6zPZ8OKaXdi7FItrc1
         /84SqFtyWV7P51oiIHf+9MS35MSkh5uAo5xgZamqVQQk637KQ2Do1jhaQLnAohOvUdWw
         XwsMkj+gCJffXMdWQ6eAVZg5jdQKDEe7YTEBsGtEsvvDhqp7HFou4UjzYpgNa7oZzezK
         pJknqrbWZjml6ntwcc6VY0jYPOorkpJOH/1x/KBBLtu0QlbcauO2D5EsiWxsE69D3q4j
         sCyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317bWrGS+oMWXV2AmO6MIGcXeJhGVqB5okAaf0WhyPybCOJHK/5
	vlxqc0lii+Bysw0GXhSEyxY=
X-Google-Smtp-Source: ABdhPJxsQ7qhjaBDargUL+pNmsa5hrOLc2/8vx8mBP7ePKL5XIWVmqopncskC/lGcmZT7tbZZhEHIg==
X-Received: by 2002:a92:3006:: with SMTP id x6mr15550102ile.269.1613443107666;
        Mon, 15 Feb 2021 18:38:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls4591280ilj.10.gmail; Mon, 15 Feb
 2021 18:38:27 -0800 (PST)
X-Received: by 2002:a92:2a04:: with SMTP id r4mr14516112ile.56.1613443107044;
        Mon, 15 Feb 2021 18:38:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613443107; cv=none;
        d=google.com; s=arc-20160816;
        b=tSy7BTsT3CgS8A3byDl2Z90BoiYz7OsSM7VxBkkmlgbesXN25usbeHb8yJ5XbRG8vd
         X7VQa6ms/Ukh4pbsE+2l1mqHkNDz9Qswg1ozsLJ2dZSgQi7/DMNmdOA0HHuRgqGDDCjq
         0lYxtydrC0jVKgMBM0g5k2RDInG1Zg96zMsjfKZiQ6rRZdgiTlS8Pwr6GrWZUYLslYGW
         V2cf94hpLyx04Q8q7CVMdQD3ZQrIxmuwfAUFDd9tRuB+YsytNEGAADlZl8FCdXYHrftu
         Y3U3U26MnelPNqqCHeGnVFwliDEc2VagmA1+5lPt4i8643CnL5dm+SdsNvgbwAyQkHeM
         uy+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=AQfs9lqNKNQbqfvrC3939HPFQo/wzUawqvFxfLsr4nk=;
        b=q/Ez9ZiASo5OwjkL4DqfPS0ANFSV0Cs4GsIMD7rQHdQgbNaNcgnd+8pwTQ/5D4i6DU
         FdccIWtOssC7b1sIuGUxQETemRAi8cZXCqtar3WUNNwXNzztqwuJJt0NskotvwzrOkDY
         UFiZEVOJWX7gBurHv4SVZ502HflOh4S4d/4Ws5KrrLnGM95tW1TUtf8Qo3jfyY02swwc
         +HjxKR9EwZ8XTOZP4hAzp3zoLliVGPp0fVccWIQ9Nc4ik6h8yJ/ukVfTecE4kC0t607z
         UtWgFiySGnxUQdJ1CfKdCquWCmZ/SLyg+7QQCftpmo3y3JZ/mfHYmv75K5rBR9i0Y8Mb
         wsww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id m132si908070ioa.3.2021.02.15.18.38.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 18:38:27 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: znc0RtpBHlhRpc71xFbcU3/AfbXRDGevJdqgxlesIKrubQnugNKTwLMCg7uZw3Ll1aMPhOmIiH
 KNRFwtTaSV3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="161931879"
X-IronPort-AV: E=Sophos;i="5.81,182,1610438400"; 
   d="gz'50?scan'50,208,50";a="161931879"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2021 18:38:21 -0800
IronPort-SDR: 5ms8nH4Aadp5Kdnuu/ts+AJsVPBlQ1nW2obCsJCjWnp7w7WFg5FVGNaKI9c+kDYOt4cfCwlQAa
 Pjypb/DioLEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,182,1610438400"; 
   d="gz'50?scan'50,208,50";a="361444585"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 15 Feb 2021 18:38:19 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lBqFm-0007mx-6i; Tue, 16 Feb 2021 02:38:18 +0000
Date: Tue, 16 Feb 2021 10:38:07 +0800
From: kernel test robot <lkp@intel.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: [linux-next:master 2048/11541] omap4-keypad.c:undefined reference to
 `devm_ioremap_resource'
Message-ID: <202102161003.uEuTf3vU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   52a0bcb60e40f30211cb5cbbb0f582ec4e91d896
commit: 60dc45119465d086724851d2a5fd09daeb3c515e [2048/11541] Input: omap4-keypad - switch to use managed resources
config: s390-randconfig-r002-20210215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=60dc45119465d086724851d2a5fd09daeb3c515e
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 60dc45119465d086724851d2a5fd09daeb3c515e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   s390x-linux-gnu-ld: drivers/irqchip/irq-al-fic.o: in function `al_fic_init_dt':
   irq-al-fic.c:(.init.text+0x2e): undefined reference to `of_iomap'
   s390x-linux-gnu-ld: irq-al-fic.c:(.init.text+0x224): undefined reference to `iounmap'
   s390x-linux-gnu-ld: drivers/dma/altera-msgdma.o: in function `msgdma_probe':
   altera-msgdma.c:(.text+0xb6): undefined reference to `devm_ioremap'
   s390x-linux-gnu-ld: altera-msgdma.c:(.text+0x134): undefined reference to `devm_ioremap'
   s390x-linux-gnu-ld: altera-msgdma.c:(.text+0x1b2): undefined reference to `devm_ioremap'
   s390x-linux-gnu-ld: drivers/dma/dw/platform.o: in function `dw_probe':
   platform.c:(.text+0x98): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/idma64.o: in function `idma64_platform_probe':
   idma64.c:(.text+0x78): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/sf-pdma/sf-pdma.o: in function `sf_pdma_probe':
   sf-pdma.c:(.text+0x60): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/qcom/hidma_mgmt.o: in function `hidma_mgmt_probe':
   hidma_mgmt.c:(.text+0x3de): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/qcom/hidma_mgmt.o: in function `hidma_mgmt_of_populate_channels':
   hidma_mgmt.c:(.init.text+0x10e): undefined reference to `of_address_to_resource'
   s390x-linux-gnu-ld: hidma_mgmt.c:(.init.text+0x126): undefined reference to `of_address_to_resource'
   s390x-linux-gnu-ld: drivers/dma/qcom/hidma.o: in function `hidma_probe':
   hidma.c:(.text+0x3e): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: hidma.c:(.text+0x74): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/mtd/nand/raw/denali_dt.o: in function `denali_dt_probe':
   denali_dt.c:(.text+0xb2): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: denali_dt.c:(.text+0xe4): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `release_cis_mem':
   cistpl.c:(.text+0x88): undefined reference to `iounmap'
   s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `pcmcia_read_cis_mem':
   cistpl.c:(.text+0x1b4): undefined reference to `ioremap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x234): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x246): undefined reference to `ioremap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x334): undefined reference to `ioremap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x37c): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x3be): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x3d0): undefined reference to `ioremap'
   s390x-linux-gnu-ld: drivers/pcmcia/cistpl.o: in function `pcmcia_write_cis_mem':
   cistpl.c:(.text+0x532): undefined reference to `ioremap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x5ae): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x5c0): undefined reference to `ioremap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x6ae): undefined reference to `ioremap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x6f6): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x72e): undefined reference to `iounmap'
   s390x-linux-gnu-ld: cistpl.c:(.text+0x740): undefined reference to `ioremap'
   s390x-linux-gnu-ld: drivers/input/serio/apbps2.o: in function `apbps2_of_probe':
   apbps2.c:(.text+0x5a): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/input/keyboard/bcm-keypad.o: in function `bcm_kp_probe':
   bcm-keypad.c:(.text+0x362): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/input/keyboard/omap4-keypad.o: in function `omap4_keypad_probe':
>> omap4-keypad.c:(.text+0xbc): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/input/touchscreen/imx6ul_tsc.o: in function `imx6ul_tsc_probe':
   imx6ul_tsc.c:(.text+0x130): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: imx6ul_tsc.c:(.text+0x14a): undefined reference to `devm_platform_ioremap_resource'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102161003.uEuTf3vU-lkp%40intel.com.

--fUYQa+Pmc3FrFX/N
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
dST+P/LUz8yb6QAA

--fUYQa+Pmc3FrFX/N--
