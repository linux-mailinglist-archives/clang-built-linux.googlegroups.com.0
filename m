Return-Path: <clang-built-linux+bncBDF5JWWZ6YKRBJ4C3L3AKGQEIKC7BYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 742461EC03A
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 18:41:12 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id g84sf2659774oif.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 09:41:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591116071; cv=pass;
        d=google.com; s=arc-20160816;
        b=uGt8byW6Skj391J7Cz2m5QwIQ4WvHGj4fJWs9CGMsIAYt33WvD4zgHVZ4ZLJ+NKmBA
         aLfMLEMuugAe64ghVDB+xjK1M7nmUFKKUT3zm46Af/vYQCMswfClH9Pvt8KnyywRkCWm
         ThhJd1Xkx3E1AeFoerCag/xehZc3LoMn0SIx0/pPMRwWF9PyaGx6N3d5O+leIA8u/hDN
         wZyYvJQSdA6vnpjZGwWP0fX2t3MrvK4r6FMBVKfT7rQmVTX4W1hQFcSTUNE7VxxCZSOe
         JmchHH7VNLG9aX/3BWbz7FDMAXdSzwry9FUOCn//G+jnlANZGHjHftCtxoZ0DGWg2J4E
         hD3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=g4IJiM1xxMMaeApVTJkWymZVcD3dtggfue0rTuD+wUM=;
        b=fNqFA9xPRM3HHXqptInfs9NhEtw7U7NfI0iry4VLVcrEh564nFqK3CIoK63R5iTZxy
         b0Sm7e//VqWwfQNapU+doByErvNSS3PceQMrxugozRPkAeWqp8VN/nTyv3qZ4+0yQPpZ
         +8EcDRrjIGPCZIUWaKxWNAp9rbq3lZT14m1Qh7RnJ3MG51qx7ARECnXe5kZSSUZYRyZv
         Dg14llGyU9K7R0L/fuj2PyhF64jsLHZL1yHnilZQgpNmGXS5cnWpynJV/19c8jEYhq8G
         3CsO7pnzGboeNVK5F5XxSswqjmZPT4+P/70jcVQ7DmeGV2nYEgp5a85rHcMF2lKRD11P
         vLlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lz2GUi0c;
       spf=pass (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=zhengdejin5@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g4IJiM1xxMMaeApVTJkWymZVcD3dtggfue0rTuD+wUM=;
        b=grgZ6DQ4c9FNpiCJzL8Z4euUZeDzUD+jcybW1+PFgZWneLQoweDGV4FoA/E7gq4ZPG
         Hm8qoQqQVj5fMweLdwFjGRN93PtPnKVYacy7cw3jo3PXG0gyMEzvu+HtKwiWTAGlcHSg
         TbVMRqxgtNyDXl17Xcg4aOi29G6+S0Qg9k6EluUY4ek1ab1rSTBdBsdNXMa9ivV8TdjM
         jKDC8NM35bGjwQvkNdD3oegY53iyaaT5TWhVBAkOI6/DbBVcI41TfPD298lj5VyV3EK4
         RAvLSIVVEq6CIl4rB7+sW98X+Ac3Rl4ul6qGHWYTn++rfNUBnp1eZrBUg2BRtS8rJ+nh
         F9kg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g4IJiM1xxMMaeApVTJkWymZVcD3dtggfue0rTuD+wUM=;
        b=CcMyCVsLFGwrocMm5cTznHhBJxFSrk4D/GAWjaQCbybiSxhCG6KosH1IDQ4s4JD0vy
         iOWTlJZsKsq/oioChKDW6S3wsS4iY/44x/xL1BTV8kUOI/nF1/3dqPc89OFmql7aY8oG
         RtPBNVliEn0e2aumzOJSiQW4QEiGYf06nsOBWCaKCfhDKTIw/Rp5HFIxirAsVZgF2Lld
         oEe1nfhQlRRKp6aKJhuwKWalX1g4x8xmltGf71VeC8etL34u3b2+YZ+/5qeu0lOtGGZH
         CD0kC/plWSv1BP3/8bC20Zx4z+TZR2bGCpNtdxD0ANRVcroNVvTRTF9m+M65EltSytS7
         1hqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g4IJiM1xxMMaeApVTJkWymZVcD3dtggfue0rTuD+wUM=;
        b=lmM7+fJ4z6xEhHPaP9xVrEPNnyEBMEWirL+Xxq9z56Ogt+KnkT8r4q/1F27bLZL7dz
         X+pjyvyF0UaViVq2AKDxzLRrVuB8rmAxB407zO1ym9iuaj5VicL2XMKSYG0228SVu1jV
         CWjpN/nvH7FPs6/pSzL9j8oLN31XaAdCwbc8e7a/44eLu0J/Op04ZPB1gnmErwG6YB17
         SBiwGg8oog+mBDSQNwPaOrwbzzHNOU5JTIENcY/WmqfHFAolia/voG06pMnnPoD2ADv+
         bQTxSByrFG2TnGku/KRI6dIxNsRmf26s7RPeOLhjwupWCWJyQonlDBt475svg511VLsX
         G66A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530n53/B1PkF0U5mQ8TESZKZaawa1Tr9HEUGCLVF5dZcVfxJs8Sq
	64mrBqS0zSP+9urPvxOUT8c=
X-Google-Smtp-Source: ABdhPJwMYnW8pYg7tqlcqjNdeEdlwLnEz21AppnOG9S6vJIYBI13OiNoqii4MDafNdWUq2yjfU3Eaw==
X-Received: by 2002:a05:6830:3109:: with SMTP id b9mr135026ots.41.1591116071363;
        Tue, 02 Jun 2020 09:41:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:460f:: with SMTP id p15ls3479163oip.7.gmail; Tue, 02 Jun
 2020 09:41:11 -0700 (PDT)
X-Received: by 2002:aca:554c:: with SMTP id j73mr1410497oib.172.1591116071037;
        Tue, 02 Jun 2020 09:41:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591116071; cv=none;
        d=google.com; s=arc-20160816;
        b=ZFg6gT6AdsG6P2Ct3at052a5eFEi3xmX8ssCH3mXlOogSYU72kmrT/2dksjRUZR2+p
         27JThvZP1fM9Rynd2OeI3XJMd0f0U1601+jPd+byHLdUZ73Rc6hek2/aaK+q5Szt/Uqt
         IUteY5KjbcVsvVrCJYdGGFcXZs35c+gZhynUb3XjJ/nXArmSnA+f5oZ2QnfgBUv8/d5F
         vbge0KgdxbH0jZ6z0TX2wV65sXkmLatDPbg8xxH6C3c+yjVnjUbLFgGEJyZeUq/6H/It
         AnzSgBdFSGTwBDpnc4Vh4MyemtOUMPoji4hbiNMcZNCHIf2FV1S89OL3fAwW8XjmsaXH
         2jGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=dkUX8aic7LWkaq+DlQPnbFi8QT9tEsByVD1eipCxzd4=;
        b=LTg0kwq224JDjVHWu27246Mgr8TI0ffXzp1Ed9Ef6SWjHTeogEROCAAkl4Z8fFOkLd
         iH7O9o+mAOiC4jSnWtixl/qn564bPQUCJx+NFHgqE+DYdgZAVtWovURLrwdcEy4/bsI8
         YfyeoeTkUGX+SnGbI6Ryb5r0GLUY1CS7CHmsdT0A3yBGMcY26+5cmmNI6Av9OWXyGiLh
         0QAi17mkXi1rhqYoO9324/RQ+LeJAGScNEk6I/Iq1dWFbp9FT0IuP/vbYQqUr6x/Mm8R
         88Kmw6O5bBpUY+PfqF2k8rnZAXkQnaujBlmFy7yisQiN34+gHFuKADItaQjgWEo0ua24
         zIpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lz2GUi0c;
       spf=pass (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=zhengdejin5@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id e69si243524oob.2.2020.06.02.09.41.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 09:41:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id i12so1631312pju.3
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 09:41:10 -0700 (PDT)
X-Received: by 2002:a17:90a:f198:: with SMTP id bv24mr59552pjb.206.1591116070341;
        Tue, 02 Jun 2020 09:41:10 -0700 (PDT)
Received: from localhost ([162.211.223.96])
        by smtp.gmail.com with ESMTPSA id f29sm2752960pgf.63.2020.06.02.09.41.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 02 Jun 2020 09:41:09 -0700 (PDT)
Date: Wed, 3 Jun 2020 00:41:03 +0800
From: Dejin Zheng <zhengdejin5@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: tjoseph@cadence.com, lorenzo.pieralisi@arm.com, robh@kernel.org,
	bhelgaas@google.com, thierry.reding@gmail.com,
	toan@os.amperecomputing.com, ley.foon.tan@intel.com,
	shawn.lin@rock-chips.com, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v1] PCI: controller: convert to
 devm_platform_ioremap_resource_byname()
Message-ID: <20200602164103.GB6169@nuc8i5>
References: <20200601143345.24965-1-zhengdejin5@gmail.com>
 <202006020223.1gKcICcv%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006020223.1gKcICcv%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: zhengdejin5@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lz2GUi0c;       spf=pass
 (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=zhengdejin5@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jun 02, 2020 at 02:13:23AM +0800, kbuild test robot wrote:
> Hi Dejin,
> 
> Thank you for the patch! Perhaps something to improve:
>
Yes, you are right, I should not modify this file drivers/pci/controller/pcie-xilinx-nwl.c.
I will sent the patch v2. Thanks very much!

BR,
Dejin

> [auto build test WARNING on pci/next]
> [also build test WARNING on tegra/for-next rockchip/for-next v5.7 next-20200529]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Dejin-Zheng/PCI-controller-convert-to-devm_platform_ioremap_resource_byname/20200601-223757
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/pci/controller/pcie-xilinx-nwl.c:783:25: warning: variable 'res' is uninitialized when used here [-Wuninitialized]
> pcie->phys_breg_base = res->start;
> ^~~
> drivers/pci/controller/pcie-xilinx-nwl.c:778:22: note: initialize the variable 'res' to silence this warning
> struct resource *res;
> ^
> = NULL
> 1 warning generated.
> 
> vim +/res +783 drivers/pci/controller/pcie-xilinx-nwl.c
> 
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  773  
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  774  static int nwl_pcie_parse_dt(struct nwl_pcie *pcie,
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  775  			     struct platform_device *pdev)
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  776  {
> adf9e284b4f76d drivers/pci/host/pcie-xilinx-nwl.c       Bjorn Helgaas       2016-10-06  777  	struct device *dev = pcie->dev;
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  778  	struct resource *res;
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  779  
> 213cf573e1a8b2 drivers/pci/controller/pcie-xilinx-nwl.c Dejin Zheng         2020-06-01  780  	pcie->breg_base = devm_platform_ioremap_resource_byname(pdev, "breg");
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  781  	if (IS_ERR(pcie->breg_base))
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  782  		return PTR_ERR(pcie->breg_base);
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06 @783  	pcie->phys_breg_base = res->start;
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  784  
> 213cf573e1a8b2 drivers/pci/controller/pcie-xilinx-nwl.c Dejin Zheng         2020-06-01  785  	pcie->pcireg_base =
> 213cf573e1a8b2 drivers/pci/controller/pcie-xilinx-nwl.c Dejin Zheng         2020-06-01  786  		devm_platform_ioremap_resource_byname(pdev, "pcireg");
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  787  	if (IS_ERR(pcie->pcireg_base))
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  788  		return PTR_ERR(pcie->pcireg_base);
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  789  	pcie->phys_pcie_reg_base = res->start;
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  790  
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  791  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "cfg");
> cd00f084ed1d50 drivers/pci/host/pcie-xilinx-nwl.c       Lorenzo Pieralisi   2017-04-19  792  	pcie->ecam_base = devm_pci_remap_cfg_resource(dev, res);
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  793  	if (IS_ERR(pcie->ecam_base))
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  794  		return PTR_ERR(pcie->ecam_base);
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  795  	pcie->phys_ecam_base = res->start;
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  796  
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  797  	/* Get intx IRQ number */
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  798  	pcie->irq_intx = platform_get_irq_byname(pdev, "intx");
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  799  	if (pcie->irq_intx < 0) {
> adf9e284b4f76d drivers/pci/host/pcie-xilinx-nwl.c       Bjorn Helgaas       2016-10-06  800  		dev_err(dev, "failed to get intx IRQ %d\n", pcie->irq_intx);
> 5fd4bf6a659e45 drivers/pci/host/pcie-xilinx-nwl.c       Fabio Estevam       2017-08-31  801  		return pcie->irq_intx;
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  802  	}
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  803  
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  804  	irq_set_chained_handler_and_data(pcie->irq_intx,
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  805  					 nwl_pcie_leg_handler, pcie);
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  806  
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  807  	return 0;
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  808  }
> ab597d35ef11d2 drivers/pci/host/pcie-xilinx-nwl.c       Bharat Kumar Gogada 2016-03-06  809  
> 
> :::::: The code at line 783 was first introduced by commit
> :::::: ab597d35ef11d2a921e0ec507a9b7861bcb44cbd PCI: xilinx-nwl: Add support for Xilinx NWL PCIe Host Controller
> 
> :::::: TO: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
> :::::: CC: Bjorn Helgaas <bhelgaas@google.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602164103.GB6169%40nuc8i5.
