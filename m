Return-Path: <clang-built-linux+bncBDF5JWWZ6YKRBRO6Y34AKGQECA24LDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A011A223D8E
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 16:01:42 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id g85sf6914747pfb.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 07:01:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594994501; cv=pass;
        d=google.com; s=arc-20160816;
        b=jl8lPc3+5YgUfZg9Phf3NDbEg5akDAWT6MU9/YhA3qWDMa0dYicMriDvc/yhOT+PED
         Tqu6ysfImYowZW+pWfjDkd9xy7A98cjaUnbxf2E6LoQ++xgPVCWxYKzZq0XIFEKL3X3U
         tZxke4+xCPIB+6VOjQ7scYVZprAtOlGIuZzzygr6+qauXQuAbx52CFIA1+g4TILo7MW1
         o7CtJkEMqvbhkzVXWp7YlcrgOB75UZnQ2bXobxq4Z048HXCeoaK5HDlCHzeWkXHkhZ42
         TIb+7FJqoG8+jLVfvRJbxN57lAgu4PogFwf6kfyvcgxi4u3BLyhGG40e+LOdA704CLmT
         9wYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=cDrnMVuqsTymxfRY8TwP4crqsITmnRWbusi6jWSsLic=;
        b=DHVJTWlXUK8z4KJ6krMYug0JQcHaJc4IMdHmRLhUGcRCzLyaexcNj2LoJv5wufHiok
         yU/RwOExWpBde7nPGiLk2cji2n+MbvALMnVA+e+5drnHGD0NOmUuRU9+2mCgNKYp4bvS
         Me56F70e5DhjlOiNG8WKW8WlUl+g+qLskjldwZniNkBVdYDH5CkgF5u+QX1yvTDom2pj
         XDhOgWNTXxYrT0yUzxhLaq9hfizQrewdQVc3fnzQ6T0N5EhnMjgn9T5LwPxXbelHtcWq
         7vA2CmXcpflT0JZEaPAEPR3ngVaHcH4+wrt/8hQnrhWtJxVe5BFEJtunQsEs5DRx0khu
         Olyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YZk0K44t;
       spf=pass (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=zhengdejin5@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cDrnMVuqsTymxfRY8TwP4crqsITmnRWbusi6jWSsLic=;
        b=AFSUVabSvWyWN93JysBB4Jv6nHOOvsA6aNyqLkm36SgibkbJ3IvVvzdq7tK3JKEpK/
         o97zWX09RXTM0VkLComt5fPtxC/OHKZi8ed+EWZ4Ck7YFFu8SwGWPLCb6VU3xMA/dSGM
         W5jhNzAIusZyU28RQf7XzDQCy7aHC7YxqdgASqdnqXbbssz59M541FCo5C5wxZGut8n3
         90oUmHa5K8pxU4Smul5eUtZns37/VY9TMkl5m3xCjYGJa3xj+3Em6lYKKcicbChoXaty
         vUT2Oc97tatE188Z4qfqO47kEHtstYS9YjclQXkOFszP2uvqMaaqu7t6iewdiOg0837V
         GIqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cDrnMVuqsTymxfRY8TwP4crqsITmnRWbusi6jWSsLic=;
        b=Tuq4zYh4yBXkKv0uulKF1QK3JqJCgBZMBn9Zv4PUO3nDwChv5fD1XXN1FfvWbFqAkn
         iqtln7Iw6YohARzXR2TSHHcSewZwAQzFYXFicxac7ncqhghRXxbTb5VC6DiIVUSyMftt
         3WxzRnhgayBptH44Ou/EdeS1AqC8AnMF2zVNaJdaGMVZCUxvJTOhx7gl/TFuNfkQJKVi
         vdQGCTFA2G5yBi9cw1sBrN31dMoml2xY6rS5VXSvXrI7qjW4YoyLLDdZsGwjgzANx7Eg
         ApqlJaGkYkvFajg6MhUhM4uPUbb7O8v059lmW+WzwiOmSsSvMleriOSSThgDHyYt7nfl
         OsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cDrnMVuqsTymxfRY8TwP4crqsITmnRWbusi6jWSsLic=;
        b=TDDHeCD309FO/zxis5gKpxx/wY9lVV+dTTpzfgf0qfO8QDvriLZ1D79keejyhHpGLr
         MpnQ+ZavSZCFURwx27Ed5rOgyDBJfEQJXPWtNU8PcKH7wGNleE3Vxs439diZLjMSmzFZ
         56hhl12m51/d4cEqQXijpU6nkb9Nw0YcnBet4nEehqYAeTzI6ZLtpIFyqzV9Izir887A
         017XrDYhFQWnHIUXiE4rDZcGbiFcOkLGJ+32NsU5mHzZ5bSK/cr4Cdm2HFcne52CkpPI
         /1rhy64aogZ13driKx0Xlp6pqnAPEj5mMXAsrUaf5kawtCa8AdP+Autk8UJJt2op/uOH
         5mfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Boc4lVXLSkMF04E9gcdtQjgWLFXEmIWqjzyAnEMoKfw4fv/7K
	ku0nsqka62a94r9XTOP5i3s=
X-Google-Smtp-Source: ABdhPJwSpsGOP9hCpXWOJYIpE5WRBtodwzG1HWsixoiK79X10JYPxr48iW7au8KxyrfGxTiJH5pNEw==
X-Received: by 2002:a63:5412:: with SMTP id i18mr8983441pgb.63.1594994501183;
        Fri, 17 Jul 2020 07:01:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls4064pls.3.gmail; Fri, 17 Jul
 2020 07:01:40 -0700 (PDT)
X-Received: by 2002:a17:90a:728d:: with SMTP id e13mr10721615pjg.51.1594994500781;
        Fri, 17 Jul 2020 07:01:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594994500; cv=none;
        d=google.com; s=arc-20160816;
        b=JXpRzAmSIFfGhGD/me/zKafKXEaJy6aHebUE61i2RCIrmW174nhvya5+WRC9cAoaOQ
         od/DFP2mHHl8GzvBmhSCVmQUkhdkht84NZbP+wKEMJR0prOz1Ws+/jh7ktZOtvA+o3lb
         JbOGJ8s6UvZ5FX5ZN6yO73S4VSI8ss2W1U/gCbYwVms1+UG8QJx7/QXZDvgD9ZwASZ2i
         b04v1FdcfKAKqEn19kvhaSwcktODj3kUH5Pzkxb1QyFHr3QvJjnjleynM9XIjUkNeujG
         COUVho6i/tGoWCpR8PC49ofNL3fG6kRRWSRoTBLiehIE6Hf4xW3DIWZojf06OTG7en81
         jvWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jYn3BuCyKPcdW+eQ+NrXSQWIztxFgWquyWjrL3QsRmc=;
        b=Mpoq6iV1BivvsF7LWx1itrg8KK0kdwokfCTGuOFJrpIYH0ivapl+o5z6JNy9rSFjy0
         WsAkOM83wgHyCst5Biixwm9TBs/pO/9J7hcdtx0rEQaImDqnjr6JNLwHa8zVDCrkZjzY
         SO20M0xB3fsA7ZXbWQb5l/mUuENETMw/JS611NHvP/7ruGMGhmmLr1n3q/d+U/NdJEpM
         zjuFwjFWvk2V1HcDn12HsQ9wJHFBVIi3ImRkB6E1kruMq8AQmxOANKanK9OZR8/JRPqt
         HI66+5fQ5XcoOlT4iw32d0tPlRj7vCQvjdJjoLDHQ8zOt8rf58JRD6eu0hh+nNAgH47f
         r0Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YZk0K44t;
       spf=pass (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=zhengdejin5@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y19si473147pga.4.2020.07.17.07.01.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 07:01:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id m16so5476884pls.5
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 07:01:40 -0700 (PDT)
X-Received: by 2002:a17:90a:9312:: with SMTP id p18mr2086894pjo.82.1594994499697;
        Fri, 17 Jul 2020 07:01:39 -0700 (PDT)
Received: from localhost ([89.208.244.139])
        by smtp.gmail.com with ESMTPSA id c14sm7910888pfj.82.2020.07.17.07.01.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 17 Jul 2020 07:01:39 -0700 (PDT)
Date: Fri, 17 Jul 2020 22:01:32 +0800
From: Dejin Zheng <zhengdejin5@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Bjorn Helgaas <helgaas@kernel.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Rob Herring <robh@kernel.org>
Subject: Re: [lpieralisi-pci:pci/dwc 13/13]
 drivers/pci/controller/dwc/pci-keystone.c:1236:18: warning: variable 'res'
 is uninitialized when used here
Message-ID: <20200717140132.GA25657@nuc8i5>
References: <202007171416.mvPsOLTD%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007171416.mvPsOLTD%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: zhengdejin5@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YZk0K44t;       spf=pass
 (google.com: domain of zhengdejin5@gmail.com designates 2607:f8b0:4864:20::643
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

On Fri, Jul 17, 2020 at 02:36:24PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/lpieralisi/pci.git pci/dwc
> head:   c59a7d771134b52ec346ecf0d4483fd6bb6473a1
> commit: c59a7d771134b52ec346ecf0d4483fd6bb6473a1 [13/13] PCI: dwc: Convert to devm_platform_ioremap_resource_byname()
> config: arm64-randconfig-r014-20200717 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ed6b578040a85977026c93bf4188f996148f3218)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout c59a7d771134b52ec346ecf0d4483fd6bb6473a1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/pci/controller/dwc/pci-keystone.c:1236:18: warning: variable 'res' is uninitialized when used here [-Wuninitialized]
>            ks_pcie->app = *res;
>                            ^~~
>    drivers/pci/controller/dwc/pci-keystone.c:1201:22: note: initialize the variable 'res' to silence this warning
>            struct resource *res;
>                                ^
>                                 = NULL
>    1 warning generated.
>
Hi all:

I am sorry, Due to my carelessness causing this problem, I am so sorry for that, 
and thanks very much for kernel test robot tell me this issue. I sent a new
patch to fix it, the patch is here:

https://patchwork.kernel.org/patch/11670229/

Sorry!

BR,
Dejin

> vim +/res +1236 drivers/pci/controller/dwc/pci-keystone.c
> 
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1186  
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1187  static int __init ks_pcie_probe(struct platform_device *pdev)
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1188  {
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1189  	const struct dw_pcie_host_ops *host_ops;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1190  	const struct dw_pcie_ep_ops *ep_ops;
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1191  	struct device *dev = &pdev->dev;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1192  	struct device_node *np = dev->of_node;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1193  	const struct ks_pcie_of_data *data;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1194  	const struct of_device_id *match;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1195  	enum dw_pcie_device_mode mode;
> 442ec4c04d1235 drivers/pci/dwc/pci-keystone.c            Kishon Vijay Abraham I 2017-02-15  1196  	struct dw_pcie *pci;
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1197  	struct keystone_pcie *ks_pcie;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1198  	struct device_link **link;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1199  	struct gpio_desc *gpiod;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1200  	void __iomem *atu_base;
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1201  	struct resource *res;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1202  	unsigned int version;
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1203  	void __iomem *base;
> b4f1af8352fda6 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1204  	u32 num_viewport;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1205  	struct phy **phy;
> fbb2de891cc4d6 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1206  	int link_speed;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1207  	u32 num_lanes;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1208  	char name[10];
> 1e9f8dcf892ddb drivers/pci/host/pci-keystone.c           Murali Karicheri       2016-04-11  1209  	int ret;
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1210  	int irq;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1211  	int i;
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1212  
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1213  	match = of_match_device(of_match_ptr(ks_pcie_of_match), dev);
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1214  	data = (struct ks_pcie_of_data *)match->data;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1215  	if (!data)
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1216  		return -EINVAL;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1217  
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1218  	version = data->version;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1219  	host_ops = data->host_ops;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1220  	ep_ops = data->ep_ops;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1221  	mode = data->mode;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1222  
> 21fa0c51f02fcf drivers/pci/host/pci-keystone.c           Bjorn Helgaas          2016-10-11  1223  	ks_pcie = devm_kzalloc(dev, sizeof(*ks_pcie), GFP_KERNEL);
> 6670070742991c drivers/pci/host/pci-keystone.c           Jingoo Han             2014-11-12  1224  	if (!ks_pcie)
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1225  		return -ENOMEM;
> 6670070742991c drivers/pci/host/pci-keystone.c           Jingoo Han             2014-11-12  1226  
> 442ec4c04d1235 drivers/pci/dwc/pci-keystone.c            Kishon Vijay Abraham I 2017-02-15  1227  	pci = devm_kzalloc(dev, sizeof(*pci), GFP_KERNEL);
> 442ec4c04d1235 drivers/pci/dwc/pci-keystone.c            Kishon Vijay Abraham I 2017-02-15  1228  	if (!pci)
> 442ec4c04d1235 drivers/pci/dwc/pci-keystone.c            Kishon Vijay Abraham I 2017-02-15  1229  		return -ENOMEM;
> 442ec4c04d1235 drivers/pci/dwc/pci-keystone.c            Kishon Vijay Abraham I 2017-02-15  1230  
> c59a7d771134b5 drivers/pci/controller/dwc/pci-keystone.c Dejin Zheng            2020-07-09  1231  	ks_pcie->va_app_base =
> c59a7d771134b5 drivers/pci/controller/dwc/pci-keystone.c Dejin Zheng            2020-07-09  1232  		devm_platform_ioremap_resource_byname(pdev, "app");
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1233  	if (IS_ERR(ks_pcie->va_app_base))
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1234  		return PTR_ERR(ks_pcie->va_app_base);
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1235  
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25 @1236  	ks_pcie->app = *res;
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1237  
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1238  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbics");
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1239  	base = devm_pci_remap_cfg_resource(dev, res);
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1240  	if (IS_ERR(base))
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1241  		return PTR_ERR(base);
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1242  
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1243  	if (of_device_is_compatible(np, "ti,am654-pcie-rc"))
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1244  		ks_pcie->is_am6 = true;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1245  
> b1dee41b769277 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1246  	pci->dbi_base = base;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1247  	pci->dbi_base2 = base;
> 442ec4c04d1235 drivers/pci/dwc/pci-keystone.c            Kishon Vijay Abraham I 2017-02-15  1248  	pci->dev = dev;
> a1cabd2b42fd77 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1249  	pci->ops = &ks_pcie_dw_pcie_ops;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1250  	pci->version = version;
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1251  
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1252  	irq = platform_get_irq(pdev, 0);
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1253  	if (irq < 0) {
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1254  		dev_err(dev, "missing IRQ resource: %d\n", irq);
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1255  		return irq;
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1256  	}
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1257  
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1258  	ret = request_irq(irq, ks_pcie_err_irq_handler, IRQF_SHARED,
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1259  			  "ks-pcie-error-irq", ks_pcie);
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1260  	if (ret < 0) {
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1261  		dev_err(dev, "failed to request error IRQ %d\n",
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1262  			irq);
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1263  		return ret;
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1264  	}
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1265  
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1266  	ret = of_property_read_u32(np, "num-lanes", &num_lanes);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1267  	if (ret)
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1268  		num_lanes = 1;
> c0464062bfea9c drivers/pci/dwc/pci-keystone.c            Guenter Roeck          2017-02-25  1269  
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1270  	phy = devm_kzalloc(dev, sizeof(*phy) * num_lanes, GFP_KERNEL);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1271  	if (!phy)
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1272  		return -ENOMEM;
> 25de15c958e987 drivers/pci/host/pci-keystone.c           Shawn Lin              2016-03-07  1273  
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1274  	link = devm_kzalloc(dev, sizeof(*link) * num_lanes, GFP_KERNEL);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1275  	if (!link)
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1276  		return -ENOMEM;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1277  
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1278  	for (i = 0; i < num_lanes; i++) {
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1279  		snprintf(name, sizeof(name), "pcie-phy%d", i);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1280  		phy[i] = devm_phy_optional_get(dev, name);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1281  		if (IS_ERR(phy[i])) {
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1282  			ret = PTR_ERR(phy[i]);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1283  			goto err_link;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1284  		}
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1285  
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1286  		if (!phy[i])
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1287  			continue;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1288  
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1289  		link[i] = device_link_add(dev, &phy[i]->dev, DL_FLAG_STATELESS);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1290  		if (!link[i]) {
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1291  			ret = -EINVAL;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1292  			goto err_link;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1293  		}
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1294  	}
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1295  
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1296  	ks_pcie->np = np;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1297  	ks_pcie->pci = pci;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1298  	ks_pcie->link = link;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1299  	ks_pcie->num_lanes = num_lanes;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1300  	ks_pcie->phy = phy;
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1301  
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1302  	gpiod = devm_gpiod_get_optional(dev, "reset",
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1303  					GPIOD_OUT_LOW);
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1304  	if (IS_ERR(gpiod)) {
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1305  		ret = PTR_ERR(gpiod);
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1306  		if (ret != -EPROBE_DEFER)
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1307  			dev_err(dev, "Failed to get reset GPIO\n");
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1308  		goto err_link;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1309  	}
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1310  
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1311  	ret = ks_pcie_enable_phy(ks_pcie);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1312  	if (ret) {
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1313  		dev_err(dev, "failed to enable phy\n");
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1314  		goto err_link;
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1315  	}
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1316  
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1317  	platform_set_drvdata(pdev, ks_pcie);
> 8047eb55129aba drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1318  	pm_runtime_enable(dev);
> 8047eb55129aba drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1319  	ret = pm_runtime_get_sync(dev);
> 8047eb55129aba drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1320  	if (ret < 0) {
> 8047eb55129aba drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1321  		dev_err(dev, "pm_runtime_get_sync failed\n");
> 8047eb55129aba drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1322  		goto err_get_sync;
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1323  	}
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1324  
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1325  	if (pci->version >= 0x480A) {
> c59a7d771134b5 drivers/pci/controller/dwc/pci-keystone.c Dejin Zheng            2020-07-09  1326  		atu_base = devm_platform_ioremap_resource_byname(pdev, "atu");
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1327  		if (IS_ERR(atu_base)) {
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1328  			ret = PTR_ERR(atu_base);
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1329  			goto err_get_sync;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1330  		}
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1331  
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1332  		pci->atu_base = atu_base;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1333  
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1334  		ret = ks_pcie_am654_set_mode(dev, mode);
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1335  		if (ret < 0)
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1336  			goto err_get_sync;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1337  	} else {
> 156c6fef75a41b drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1338  		ret = ks_pcie_set_mode(dev);
> 156c6fef75a41b drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1339  		if (ret < 0)
> 156c6fef75a41b drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1340  			goto err_get_sync;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1341  	}
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1342  
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1343  	link_speed = of_pci_get_max_link_speed(np);
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1344  	if (link_speed < 0)
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1345  		link_speed = 2;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1346  
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1347  	ks_pcie_set_link_speed(pci, link_speed);
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1348  
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1349  	switch (mode) {
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1350  	case DW_PCIE_RC_TYPE:
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1351  		if (!IS_ENABLED(CONFIG_PCI_KEYSTONE_HOST)) {
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1352  			ret = -ENODEV;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1353  			goto err_get_sync;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1354  		}
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1355  
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1356  		ret = of_property_read_u32(np, "num-viewport", &num_viewport);
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1357  		if (ret < 0) {
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1358  			dev_err(dev, "unable to read *num-viewport* property\n");
> b0de922af53eed drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2020-01-21  1359  			goto err_get_sync;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1360  		}
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1361  
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1362  		/*
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1363  		 * "Power Sequencing and Reset Signal Timings" table in
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1364  		 * PCI EXPRESS CARD ELECTROMECHANICAL SPECIFICATION, REV. 2.0
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1365  		 * indicates PERST# should be deasserted after minimum of 100us
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1366  		 * once REFCLK is stable. The REFCLK to the connector in RC
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1367  		 * mode is selected while enabling the PHY. So deassert PERST#
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1368  		 * after 100 us.
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1369  		 */
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1370  		if (gpiod) {
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1371  			usleep_range(100, 200);
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1372  			gpiod_set_value_cansleep(gpiod, 1);
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1373  		}
> 156c6fef75a41b drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1374  
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1375  		ks_pcie->num_viewport = num_viewport;
> 18b0415bc802a8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1376  		pci->pp.ops = host_ops;
> a1cabd2b42fd77 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1377  		ret = ks_pcie_add_pcie_port(ks_pcie, pdev);
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1378  		if (ret < 0)
> 8047eb55129aba drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1379  			goto err_get_sync;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1380  		break;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1381  	case DW_PCIE_EP_TYPE:
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1382  		if (!IS_ENABLED(CONFIG_PCI_KEYSTONE_EP)) {
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1383  			ret = -ENODEV;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1384  			goto err_get_sync;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1385  		}
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1386  
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1387  		pci->ep.ops = ep_ops;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1388  		ret = ks_pcie_add_pcie_ep(ks_pcie, pdev);
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1389  		if (ret < 0)
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1390  			goto err_get_sync;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1391  		break;
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1392  	default:
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1393  		dev_err(dev, "INVALID device type %d\n", mode);
> 23284ad677a94f drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1394  	}
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1395  
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1396  	ks_pcie_enable_error_irq(ks_pcie);
> 0790eb175ee0d8 drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2019-03-25  1397  
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1398  	return 0;
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1399  
> 8047eb55129aba drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1400  err_get_sync:
> 8047eb55129aba drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1401  	pm_runtime_put(dev);
> 8047eb55129aba drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1402  	pm_runtime_disable(dev);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1403  	ks_pcie_disable_phy(ks_pcie);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1404  
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1405  err_link:
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1406  	while (--i >= 0 && link[i])
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1407  		device_link_del(link[i]);
> 49229238ab47fa drivers/pci/controller/dwc/pci-keystone.c Kishon Vijay Abraham I 2018-10-17  1408  
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1409  	return ret;
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1410  }
> 0c4ffcfe1fbc1e drivers/pci/host/pci-keystone.c           Murali Karicheri       2014-09-02  1411  
> 
> :::::: The code at line 1236 was first introduced by commit
> :::::: b1dee41b76927747c1c63c5196ce9eaec6d0e81a PCI: keystone: Move resources initialization to prepare for EP support
> 
> :::::: TO: Kishon Vijay Abraham I <kishon@ti.com>
> :::::: CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717140132.GA25657%40nuc8i5.
