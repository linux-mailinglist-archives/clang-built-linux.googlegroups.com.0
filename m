Return-Path: <clang-built-linux+bncBCQYDA7264GRBLGPQCDQMGQEYX3FDKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1133BA7FA
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Jul 2021 11:02:37 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id p12-20020a92d28c0000b02901ee741987a7sf7324541ilp.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jul 2021 02:02:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625302956; cv=pass;
        d=google.com; s=arc-20160816;
        b=DOE0P+Ur2IXwu8YULubPUOdo2K3NlSLnQtC8FYW+lpZsSPOp1DiayXgFwJafxeHA1/
         J5BLIjHn4S9E0qv2drMxEKN9ij+3hzEAINQUlOZdPlu5wm2Wa4x7X73ir/KjG4QJ8cFr
         gHVkDV4HCzBT1wlsFwP5nK7w0Lf2EZIpvG9YsPrwdakgd9+EvrFZ+bSdxW2AZ39MLz3V
         q/os/Hgxcg5jh5JRjrcjVnstNgepT7PDB+8FYSDoa8dWHIHttzKPpfZajsUgJa8quT+G
         wBLopIpdEMfX3pqrJGoVPIMNvjRa7DI40o2svIqmbtj/iPWsbixSca+HwZVgUnNnj/1+
         c3Pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dLM3rN1KaThngo9eMEt1nE9dlXPs0A4Z+Tcz7BfHx8o=;
        b=HsGDL6TJ+8jH2OFfeeg+M4oROBfAI/XaM/qRqHeZQKGCcuHsHh7/SP8bDCqJp+lDDb
         M4qy+cpX/SbeZoqxoGWeCQBYDzuydL0ItXJONlkes8uw0rnbS+M9WoTyrEvYlsHP2eKJ
         NSmVwTikvMmL/K50Za1bpsbLrz837+8ncQiQvcYFDAqh/E/9MtlHLLQ5vDiZS56V2/8I
         AloDVw9W7AngzCckLbokkipjbTzTj8BkSq1KJMIXF9CfYnHbUFtbLlpAX4ldLKlSsOa3
         Dgn5QJ043puqWYsZmu4GUY4oPDU9RrR1VGew8NArfW3hzJu+Hkb2/zm4rUkWTvcQhxIX
         Vcwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V4UfEy1q;
       spf=pass (google.com: domain of mst@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dLM3rN1KaThngo9eMEt1nE9dlXPs0A4Z+Tcz7BfHx8o=;
        b=ZdY+sotHsLR747NIDZy1256WahLyLpehaVzNrggp14S50qah1CIwyV4m/VDB5baFC3
         2AnEguyZX+7cb7ljBEyDMWWMCgN/l4XcQaJH3pCyq4vrNiMIga3SPsO8+fAtnMsdTkFt
         qh9/q5N7JePstqnkgibMsQiXqiYOMN1JRsGZP6G/sSlb6NCjSICYp88fr4AeOKpK+yDP
         7zFPpbFRnrjfPoY5crSfbQcNFb5Z5SyTWmm+rj5iBhR6t+/PVj1WRUHa81r4e6KktCkv
         xBuraE26On+zSAsGYkE7pagwiUyy5ZboNnDFFeWlL6irrxuaRfP08Jg2e2OHEMYbNyNk
         TOzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dLM3rN1KaThngo9eMEt1nE9dlXPs0A4Z+Tcz7BfHx8o=;
        b=NKV7vtf14X2f3+KPB01dQHxMkMgWWkoWta6oOMRCgLCU4bY9x6OO78LgW/L37shYzU
         +gI2mLWzS2mH6SVExBBz7u+Vkc3ULnfJVedxs7wWOaQu4TG8QzRCRwwyCrPlLZ+XxdKg
         MDDgD9iEQSRiswtMyufiTwaoQBo/mOODh5Q5kS8lbRisHuD4av7QKVlXBm2zUQJ3ma9K
         xE/OeGwMIvRT0Wjv6jQQD5xZs9EqQVBujB/+7ayWjAMSJI6acQlk+bdCoRQTpHIyZnXj
         vlcAwG/4fonoHYHmddHwC+UcZMs2KnFMdyHjFxTRvTVK5HwRRJEfo0qT5vhBABl4pl44
         dvbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YntLaRbKaPzL2u4u8we00gCbG1Cef/wUm6egv1I8s5CXKoGaH
	3YdyWTu432cFPpjosiP537M=
X-Google-Smtp-Source: ABdhPJyZUMIjemU1AM/k0iCzVd4gBb2fxM8clmYN+/u5i6yyC5DimAZIlg2gJXdLU9f1Um5n3yOPbA==
X-Received: by 2002:a5d:9051:: with SMTP id v17mr3287214ioq.81.1625302956343;
        Sat, 03 Jul 2021 02:02:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d02:: with SMTP id p2ls2353293ioj.6.gmail; Sat, 03 Jul
 2021 02:02:35 -0700 (PDT)
X-Received: by 2002:a6b:b2d6:: with SMTP id b205mr3307673iof.107.1625302955909;
        Sat, 03 Jul 2021 02:02:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625302955; cv=none;
        d=google.com; s=arc-20160816;
        b=i/Q6xI1Y6nFnKDwlHWUfrxpVZOHXqMF0NzQk+4DPH4mq+d6q0kfiBPrhhK1YlI0+Mx
         z1xMAfIb3h5VQ3N6kRV2k+wZyfKnSsbDh03g2eOgL578ps9RkhDOJ2TFe6DS1BSb+qyA
         0WLK2IUz2LSYNY98SNqW357/qKINFUF1bjObJfpvoUH+akj17AFpsbg9VvBKLptn81v4
         CBtZc+5YAP3dx9yM7xq1n8unl+35WCZWOy5mfutFnUVjpnWe9xu2HNjhFKiDfvWI8SoM
         7vNXQ2Rf0qu/Rtgwbr23j4oOs4207mtjziTiHDilEOhyoJy1SFQRmF/2w9/MVpRctcue
         VOmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xv+xkO4lgJG88m3AquNVw5YTZ0JyMWWfOa5ZsUkDJhE=;
        b=D2F/IQTpyEO0loBhWEw4Gg9V0cZwDGHsnQhFaUF5YucaWwq4Umn2hRQhbFE9tNijpa
         Z4e+0q0yKc1BdXG3FZzVHEl1jqsmmtc5MsJkpMiRkN3pwmP5Er377HEx3vl++1aXqyny
         YjM9XQ7tM7fe1CGDRG/OrWtY9IkbmbWEwFbUNX4ZK8OrLRrRBFlc3OO18iAASjYNABo5
         jKElv2c8+8p5bBfW9ENPliLRLTVvkeHDdb3mBuBZ/r+tiGaE55XTHWBJBxP8gIj0tRRy
         z39Q/lYTo6dFRKTtZl6yTouYOq9QoE9L9nJbPWNTZz06mNubLhGEgN25Yl2yarIuR2d6
         9VKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V4UfEy1q;
       spf=pass (google.com: domain of mst@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id w8si438219ioc.1.2021.07.03.02.02.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Jul 2021 02:02:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mst@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-416-5SiI4FYMNUOxbGgniapmhA-1; Sat, 03 Jul 2021 05:02:26 -0400
X-MC-Unique: 5SiI4FYMNUOxbGgniapmhA-1
Received: by mail-wm1-f69.google.com with SMTP id t82-20020a1cc3550000b02901ee1ed24f94so7522053wmf.9
        for <clang-built-linux@googlegroups.com>; Sat, 03 Jul 2021 02:02:26 -0700 (PDT)
X-Received: by 2002:a05:6000:551:: with SMTP id b17mr4224313wrf.32.1625302944699;
        Sat, 03 Jul 2021 02:02:24 -0700 (PDT)
X-Received: by 2002:a05:6000:551:: with SMTP id b17mr4224298wrf.32.1625302944507;
        Sat, 03 Jul 2021 02:02:24 -0700 (PDT)
Received: from redhat.com ([2.55.4.39])
        by smtp.gmail.com with ESMTPSA id g15sm5858731wri.75.2021.07.03.02.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jul 2021 02:02:22 -0700 (PDT)
Date: Sat, 3 Jul 2021 05:02:17 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: Zhu Lingshan <lingshan.zhu@intel.com>, jasowang@redhat.com,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	virtualization@lists.linux-foundation.org, netdev@vger.kernel.org,
	kvm@vger.kernel.org
Subject: Re: [PATCH 2/3] vDPA/ifcvf: implement management netlink framework
 for ifcvf
Message-ID: <20210703050022-mutt-send-email-mst@kernel.org>
References: <20210630082145.5729-3-lingshan.zhu@intel.com>
 <202107010221.pN7dwv6A-lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <202107010221.pN7dwv6A-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: mst@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=V4UfEy1q;
       spf=pass (google.com: domain of mst@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Jul 01, 2021 at 03:04:09AM +0800, kernel test robot wrote:
> Hi Zhu,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.13 next-20210630]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Zhu-Lingshan/vDPA-ifcvf-implement-management-netlink-framework/20210630-162940
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 007b350a58754a93ca9fe50c498cc27780171153
> config: x86_64-randconfig-a015-20210630 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d21d5472501460933e78aead04cf59579025ba4)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/7ea782fbd896e1a5b3c01b29f4929773748a525f
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Zhu-Lingshan/vDPA-ifcvf-implement-management-netlink-framework/20210630-162940
>         git checkout 7ea782fbd896e1a5b3c01b29f4929773748a525f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/vdpa/ifcvf/ifcvf_main.c:612:14: warning: variable 'adapter' is uninitialized when used here [-Wuninitialized]
>            put_device(&adapter->vdpa.dev);
>                        ^~~~~~~
>    drivers/vdpa/ifcvf/ifcvf_main.c:546:31: note: initialize the variable 'adapter' to silence this warning
>            struct ifcvf_adapter *adapter;
>                                         ^
>                                          = NULL
>    1 warning generated.


compiler being silly again?

> 
> vim +/adapter +612 drivers/vdpa/ifcvf/ifcvf_main.c
> 
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  541  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  542  static int ifcvf_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  543  {
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  544  	struct ifcvf_vdpa_mgmt_dev *ifcvf_mgmt_dev;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  545  	struct device *dev = &pdev->dev;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  546  	struct ifcvf_adapter *adapter;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  547  	u32 dev_type;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  548  	int ret;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  549  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  550  	ifcvf_mgmt_dev = kzalloc(sizeof(struct ifcvf_vdpa_mgmt_dev), GFP_KERNEL);
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  551  	if (!ifcvf_mgmt_dev) {
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  552  		IFCVF_ERR(pdev, "Failed to alloc memory for the vDPA management device\n");
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  553  		return -ENOMEM;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  554  	}
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  555  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  556  	dev_type = get_dev_type(pdev);
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  557  	switch (dev_type) {
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  558  	case VIRTIO_ID_NET:
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  559  		ifcvf_mgmt_dev->mdev.id_table = id_table_net;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  560  		break;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  561  	case VIRTIO_ID_BLOCK:
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  562  		ifcvf_mgmt_dev->mdev.id_table = id_table_blk;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  563  		break;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  564  	default:
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  565  		IFCVF_ERR(pdev, "VIRTIO ID %u not supported\n", dev_type);
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  566  		ret = -EOPNOTSUPP;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  567  		goto err;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  568  	}
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  569  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  570  	ifcvf_mgmt_dev->mdev.ops = &ifcvf_vdpa_mgmt_dev_ops;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  571  	ifcvf_mgmt_dev->mdev.device = dev;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  572  	ifcvf_mgmt_dev->pdev = pdev;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  573  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  574  	ret = pcim_enable_device(pdev);
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  575  	if (ret) {
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  576  		IFCVF_ERR(pdev, "Failed to enable device\n");
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  577  		goto err;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  578  	}
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  579  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  580  	ret = pcim_iomap_regions(pdev, BIT(0) | BIT(2) | BIT(4),
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  581  				 IFCVF_DRIVER_NAME);
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  582  	if (ret) {
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  583  		IFCVF_ERR(pdev, "Failed to request MMIO region\n");
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  584  		goto err;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  585  	}
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  586  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  587  	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  588  	if (ret) {
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  589  		IFCVF_ERR(pdev, "No usable DMA configuration\n");
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  590  		goto err;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  591  	}
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  592  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  593  	ret = devm_add_action_or_reset(dev, ifcvf_free_irq_vectors, pdev);
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  594  	if (ret) {
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  595  		IFCVF_ERR(pdev,
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  596  			  "Failed for adding devres for freeing irq vectors\n");
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  597  		goto err;
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  598  	}
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  599  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  600  	pci_set_master(pdev);
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  601  
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  602  	ret = vdpa_mgmtdev_register(&ifcvf_mgmt_dev->mdev);
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  603  	if (ret) {
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  604  		IFCVF_ERR(pdev,
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  605  			  "Failed to initialize the management interfaces\n");
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  606  		goto err;
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  607  	}
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  608  
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  609  	return 0;
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  610  
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  611  err:
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26 @612  	put_device(&adapter->vdpa.dev);
> 7ea782fbd896e1 drivers/vdpa/ifcvf/ifcvf_main.c        Zhu Lingshan 2021-06-30  613  	kfree(ifcvf_mgmt_dev);
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  614  	return ret;
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  615  }
> 5a2414bc454e89 drivers/virtio/vdpa/ifcvf/ifcvf_main.c Zhu Lingshan 2020-03-26  616  
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210703050022-mutt-send-email-mst%40kernel.org.
