Return-Path: <clang-built-linux+bncBCQYDA7264GRBD6QQCDQMGQEKXJATKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id D38BB3BA7FD
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Jul 2021 11:04:16 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id l44-20020a9d1b2f0000b029048596759dfcsf1827850otl.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jul 2021 02:04:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625303055; cv=pass;
        d=google.com; s=arc-20160816;
        b=XUCXX2egMutqRiFr9gIIE3KY5OIiFb0nUUgwQ/h2fAxT3aPZ0cdW97kX3bMzh3IYVN
         3CaZeuxOz1KHWkB/CLpMBoZyRngd2+qpkQrNxg1A3BJXPfB6tBh7L5bGReih7vNQlr6L
         kXPjVWXTMhkLnqXgp/J0Z9rqHLTpUYiqlS76n6ms7KcQTOzQY8z6UymD6yg1ouggPsL/
         eieyPJw8OQYWq0EjQDTvSTYbCY/wMlwYxQ2+EDbh4lKcBKfh1Hood++lKY10kD8roDkj
         cELxonXnz31INCCTN4SoZ0u8VmYLudPQcYBszu3GpkhAq+8dDUCO1W6huLsPZ+ojEUG9
         pIHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HRJKDy0+hGgjqu9X80iqQkSXslUX2OYagyUBJ+YrYM4=;
        b=gIYjkDqnJQtWZh2OdHBYTfahaTiiOk4MIC7rCX+FtoqfUrqFYwONQ844gIZYg7rhXK
         kduYtjqK2ZKCOSoIaTffNzmHeqrBkA6i83wdWBfB4yiXWqeGdZpbkNvAMKmvdvGDDx1U
         jMlOEPOjgF6BtCiW22ZxqOKCGNT8m7yw/oU9tRsMCPXAY3kD0O462LZVX1oZDqBoUw21
         xccgnmmIxGYP6ROM8LfPx3XQjURla8U7VJArXm6dMNUfhXpMlVGOThPX7Re9nlP6uRL8
         EIIYjluYlSDcEQXyNXac1xMLlimJ3bWreP2PS0W02CNtTSjLKLDwrMPL0XcdSfUNKATP
         tMgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="bjQgOb/5";
       spf=pass (google.com: domain of mst@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HRJKDy0+hGgjqu9X80iqQkSXslUX2OYagyUBJ+YrYM4=;
        b=OzQpK2HHYcjQz7HpZbhQsgVZS/lHzoh5G25mhKtF8QzLQ579lWgZShU9y6eHhi7V2S
         M9rjQ5K6TENWo2iEccx/I/i1LnCMpAEMI14FGFIwsjNInnhaooEFFbpntdYfwX49B1cE
         NTt8mjqrj2HjWqac4oW8WW7uFLuZhPkjtpdxk4WULuB4bnGjHNiXQJ8Tymknm+f4dVE3
         D3iO60BT2PLXvTbIX5g0nBkUmkQws7BpqBjNlZ2S6fVeYX6r0lSywfMkQGVg2DWswL4F
         HUvwZsqhzK8uqbAB3Okbky1yvLDPQXiVPHps1filIqSOr04r6Tl/GLRI9gMD53qktuMs
         yUiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HRJKDy0+hGgjqu9X80iqQkSXslUX2OYagyUBJ+YrYM4=;
        b=Es1VBRwABxSrJS2xw+MJufSh+p5eqYWcne8NF4KdsD7cXQTkQKzr3TMOyWW1r7UF9v
         vxzGnx9tD1VVoHzfwhRgy2zyqmrXv/Qi3t9VgV7ccd1VM9k1YEG9LuJsQgmsMipBZ5w8
         q95OXG0vMmYDeTvL8S6D+yK1Bq0eKKjLj7/XuIdPu+B9xN6O9908uezLcMel6mfdmN5I
         VlB1gpRWmUm6Sfq1Ke/s32doNkvhQG9cU4+SdawSW/uNCax1WJnNfDFx2+iYlljcXqTs
         5d7oPDFGZCA7b526zmHiuSqA8fbtxbv+ayxP/5lwY8NyD6pkAbvDWI9PCPvgqgFTLeAo
         3Zrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RcjaMPx09MXBJKYSoegChivFgTuwQkrIRUmrMmqbTi1zYxE27
	Cl1RjTtGSrT7VvkiSRq/B40=
X-Google-Smtp-Source: ABdhPJw/2OSohYotj6VdYE5ju7UQks23FVAsc0RW1Tx25mRqJvfPprnWF3CG81sAASibkLmWXgdL4w==
X-Received: by 2002:a9d:2649:: with SMTP id a67mr2801511otb.181.1625303055837;
        Sat, 03 Jul 2021 02:04:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:641:: with SMTP id 62ls4700020oig.0.gmail; Sat, 03 Jul
 2021 02:04:15 -0700 (PDT)
X-Received: by 2002:aca:b906:: with SMTP id j6mr3183588oif.40.1625303055419;
        Sat, 03 Jul 2021 02:04:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625303055; cv=none;
        d=google.com; s=arc-20160816;
        b=Nfx+qP11OgpbtASz/j+e3R3p1Xu++9JwOrYlt6KA7wtKHyy/f1EBkYqxwmuvTLdb5D
         eJ0KhhVwVo/8fRizZWF2rs7jl8Q7Fu7AQhFNqVUYr3h2JL4k4uXHpj+xMaUZnYHIZpaS
         3gtBfiKsXI9PYG2flUglqPUSEIBlL41XCvV9BMAcFCZq5+qWm+53iCfH5vrBWobE4lyl
         FnHMGC7ofVAE8zTdNw/iSR1JdjXGQCGkfVOMzPtsuRmfvkgMY0A/ed1/WePkhxLO42QO
         AyEZlO1AprxuXDLkFczgJQA1X5+ELukBZZ0d91MuutcuCgffueaXv5gpbAOU4jOWkhhL
         KnAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TVu0raAXHHac8RYBeboQlPHsVSFx1+2WCdPZevKx+R0=;
        b=Cvkt6rwCdBNvdVmQKYbNVinoSsOyA8XJCB7qWq9HTLxs++WdC1GRx4E4Pnmn2fpv40
         wif8GCDMbtJWL6F9FuHrQ7gr5bh89ICj2RT2QbKviVZ4p2s5+W0jyStyEjb6ktaW1832
         Ljnkk9LJQHO/4tnV1hoMiHifQ1s+co+vdW77Wx4/KYiW/7GFOr//nU3zmY1hRuEjzd4x
         e/zhVR6CA5tldvyp6+hgcz+fuwjWiq/tsB/UcKjJPmFPxR9QAk7wVsUBy5zTYV8DkAyu
         Umew5YmOLBM9g9g5+6WLk8Mlfa13cINIz+JtLNyCJDlRBhNLLVu7c8whR5a5Hq//RgpB
         uz+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="bjQgOb/5";
       spf=pass (google.com: domain of mst@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=mst@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id c22si489029oiy.1.2021.07.03.02.04.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Jul 2021 02:04:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mst@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-DkhLlAb0NoOg2Hcgcy8xdQ-1; Sat, 03 Jul 2021 05:04:13 -0400
X-MC-Unique: DkhLlAb0NoOg2Hcgcy8xdQ-1
Received: by mail-wm1-f71.google.com with SMTP id d16-20020a1c73100000b02901f2d21e46efso4516741wmb.6
        for <clang-built-linux@googlegroups.com>; Sat, 03 Jul 2021 02:04:13 -0700 (PDT)
X-Received: by 2002:a05:600c:1d06:: with SMTP id l6mr1310980wms.111.1625303051843;
        Sat, 03 Jul 2021 02:04:11 -0700 (PDT)
X-Received: by 2002:a05:600c:1d06:: with SMTP id l6mr1310965wms.111.1625303051644;
        Sat, 03 Jul 2021 02:04:11 -0700 (PDT)
Received: from redhat.com ([2.55.4.39])
        by smtp.gmail.com with ESMTPSA id 2sm5714024wrz.87.2021.07.03.02.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jul 2021 02:04:11 -0700 (PDT)
Date: Sat, 3 Jul 2021 05:04:07 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: Zhu Lingshan <lingshan.zhu@intel.com>, jasowang@redhat.com,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	virtualization@lists.linux-foundation.org, netdev@vger.kernel.org,
	kvm@vger.kernel.org
Subject: Re: [PATCH 2/3] vDPA/ifcvf: implement management netlink framework
 for ifcvf
Message-ID: <20210703050320-mutt-send-email-mst@kernel.org>
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
 header.i=@redhat.com header.s=mimecast20190719 header.b="bjQgOb/5";
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
> 


Actually the problem is real and this is almost surely the wrong fix.
We need an extra label to skip using put_device when adapter was not
yet initialized.



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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210703050320-mutt-send-email-mst%40kernel.org.
