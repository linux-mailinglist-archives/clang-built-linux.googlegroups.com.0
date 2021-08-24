Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLXMSOEQMGQEMFZODKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7063F5F53
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 15:37:57 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id v5-20020a92ab050000b02902223cc2accasf11770913ilh.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 06:37:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629812271; cv=pass;
        d=google.com; s=arc-20160816;
        b=KP+g6xU+bv1g2FA1LhSFlBPfvSJSfidpRMw5zpf0/4esGvBiHNEgODtHbq0/G1W6Y7
         5gZLZuj/uKvScduFwijCKMmpnTgogg2OJF7197tX5nG8cFd+e2dCBNzrpXgn0YghpJje
         5pImIZW6H1ZzuPszpjjt+A4Swewpx66ey5UH5GXk1xd7vYm1k8VZMyRiFvaqxe4ipsSU
         h3pnQwBX1xB7+aw3EKub6VNKbpjl0lQGpbwvUsTeVotk5zYlfzJK5neticO7sr+7dKtX
         A0Pj+z5W7yZrZn8QBPacCIIJNKpDkBNQ5NiTo6efcdOwdLzra8mOTJffkCmEWfUhTaoD
         9ykA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=YQvAYHn5el/wxjWg7MQlLJqyTjN+qMWalpgncXfVJ7M=;
        b=mqRgcmkrwg5fgYD3dI+pqStURMwUoQmQEF9QMSTGa4fpOkrPaq23HLPNgaJLSEn9WU
         P2hgJipyhzQTXboEGUq/FPGbc/u6WLmvCfEmuuhzcI2aXrdevZtjxZMrgRH815fUXZ++
         HsUTL6AABujnwhNAHxiwPKZoUbKzP8pgPZG0X/IoAF15JQSIg/ADY2H554uyWXsfm/JR
         IjAjdjSTikBbGG3mzvZaTk6jJy7DgrT0UFK6+Fagu6+b3X4FFcADEuu5t3OZ7K4pM2xQ
         dmcNFewGhNg+sgG1L/MVIZEHVJuJd0Wuscj+g8WXAAVHgTronNYt0CWlcLhh0/J9Y2a6
         PEFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YQvAYHn5el/wxjWg7MQlLJqyTjN+qMWalpgncXfVJ7M=;
        b=nF9MYJROtSDk2T48go0oJZuF/S1aBAtxv9DCHvJXzb2FRe5rYcq+QZ7Nkyhz8RRBu0
         IK3pFFPfnhNExLctCi5koHjzVIYt+MSEQFvAHktcjIv8xx6Rf4fKe4zPwpC4tf4WReM0
         xoocmjKWb6VMLPOivRQ697TaIdrXp3DAzunHqRb93jecOeqzWAWIzj5D1mSlgxJIOR6h
         MRfoMzB1yELiRoU04SAGMSLexZA2vENUvJku9Fly3eaNqk8oxUMW3OdqACOsbWwoMdgV
         G7zQaaQucxqSYa4cYmTaBhjrwkUsPZRuV7TD1JncToJvbBy1ytxp+lG6wOgbMZsFQm0T
         AmKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YQvAYHn5el/wxjWg7MQlLJqyTjN+qMWalpgncXfVJ7M=;
        b=sWLGfaGK+ekZ4lwAuEcinUg/BA3nH7zcWkwWm7lvldaIreG/9jjPvYQbobXs6tBijl
         XkSrM+3mTyLuROh4SF3wQunjHmG4eIq5G0knqdJLC66l82dBJHKgmxFb2a3rq3QJ4kDl
         EOy+tok5PGU9phtMuh1cbzGfP8cTH/r15SwO9ntVXPDoqrhH7IdGEkzaLlxqwuvyPhwY
         f9+KY5C7ExzTvgmdLS8+f59kiNef2FeuYiTuVgOZBl8FP3QqyTwwL0bPV2nkXG0jiKhh
         8kLO1+cUPnpk05rlJ6uXCqaB8PKlcNaIbT8sS8YZvF3VygNxiS2qD2figcM/zSX7VR/S
         UAVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GjqD9MaozHYJzk0C2fx2XaGpANPg3q+prHYW0mPg8pOwuZJ/a
	y50OPq79y860Jwog7WZWA9g=
X-Google-Smtp-Source: ABdhPJzJ/y5dySHMKzDkyeTBYY827lFw0NYy0+uPl6OoshrXWEym/5pECoqdIM+w29e5gLbkdJ2n+Q==
X-Received: by 2002:a05:6638:185:: with SMTP id a5mr1737255jaq.31.1629812270564;
        Tue, 24 Aug 2021 06:37:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:965:: with SMTP id q5ls3971485ilt.5.gmail; Tue, 24
 Aug 2021 06:37:50 -0700 (PDT)
X-Received: by 2002:a05:6e02:17cb:: with SMTP id z11mr11892982ilu.68.1629812269912;
        Tue, 24 Aug 2021 06:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629812269; cv=none;
        d=google.com; s=arc-20160816;
        b=ovx+b2MN4f4GqNU/x49VYfgxIP88k5IS0VcU5nePvoHvHaIPIq5T90wrqDz8cZar4h
         nNLpTtmpEFyTBKoPufRKItd02ke/57b4nD0MnW0+KD0P1u8rVu86zO0NuWBF/+UqYbD2
         oa2X6PArDTa0aSCypyHj/jgTRkV7Nu5hygLzFF4enzOjNHb4htW5AH+xnsjSfMxMO6Qe
         kjWP8j4Lbw3OnG6tLQOpsmKK61f2bLs2++s9w72vypCAw2ZC7LumPDMZqbKG+Zincazl
         ZkRM26XgyXcELX//D82u//Qe/F3kJkUJ8n41/ZKL/T77T1fJrUz/DNiReuP8c5iiJm0L
         CkCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=UpTfmWiyboFWkIp0nhY9Fw3f1M2Les1AfAGZW7EjwQU=;
        b=Tgzp2ctOUvTXryJlxKkKEXRDjwdzJDcrN3+hoUvKBbj1TJKXbe139Uc82Uu/fA8ZOz
         KlRWCXlN2oc/jteyC5JsT63weaMXjkbUsJGISTnxfyWx8eT9hc9eUfllXEr2jMmPLXGG
         l5m3/aS4XuuRpNHeEarH+wsYworD3taiwo/6jiOPSUcT5W/tb3u/84Sur4DJTgbnE+i8
         KMaFjd9nbX1WObd9ShXDGl7W/gsE+eW/WHjX8tQFIV84hRPZabZ9H2zFcKen+SdAbY5k
         K106b3sjYI8QIsjEZgr/TR0jOAyOwHqLv9oV+gmxl/7/kgndEiUQ2pT4Zqu0EazpBoRU
         4bNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id z12si1384552iox.0.2021.08.24.06.37.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 06:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="302892808"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; 
   d="gz'50?scan'50,208,50";a="302892808"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2021 06:37:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; 
   d="gz'50?scan'50,208,50";a="683976810"
Received: from lkp-server02.sh.intel.com (HELO 181e7be6f509) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 24 Aug 2021 06:37:46 -0700
Received: from kbuild by 181e7be6f509 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mIWcb-0000aU-LK; Tue, 24 Aug 2021 13:37:45 +0000
Date: Tue, 24 Aug 2021 21:37:28 +0800
From: kernel test robot <lkp@intel.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [RFC PATCH 2/5] usb: core: hcd: Let usb_add_hcd() indicate if
 roothub has to be registered
Message-ID: <202108242101.4o4y1bxa-lkp@intel.com>
References: <20210824105302.25382-3-kishon@ti.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
In-Reply-To: <20210824105302.25382-3-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Kishon,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on usb/usb-testing]
[also build test WARNING on v5.14-rc7 next-20210824]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Kishon-Vijay-Abraham-I/Fix-cold-plugged-USB-device-on-certain-PCIe-USB-cards/20210824-185502
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
config: hexagon-buildonly-randconfig-r002-20210824 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d26000e4cc2bc65e207a84fa26cb6e374d60aa12)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/fe4b8457078ee059441628dfa331b8e3e145e335
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Kishon-Vijay-Abraham-I/Fix-cold-plugged-USB-device-on-certain-PCIe-USB-cards/20210824-185502
        git checkout fe4b8457078ee059441628dfa331b8e3e145e335
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=hexagon SHELL=/bin/bash drivers/usb/core/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/usb/core/hcd.c:2799: warning: expecting prototype for usb_add_hcd(). Prototype was for __usb_add_hcd() instead


vim +2799 drivers/usb/core/hcd.c

c8195df4a79699 Kishon Vijay Abraham I    2021-08-24  2785  
^1da177e4c3f41 Linus Torvalds            2005-04-16  2786  /**
^1da177e4c3f41 Linus Torvalds            2005-04-16  2787   * usb_add_hcd - finish generic HCD structure initialization and register
^1da177e4c3f41 Linus Torvalds            2005-04-16  2788   * @hcd: the usb_hcd structure to initialize
^1da177e4c3f41 Linus Torvalds            2005-04-16  2789   * @irqnum: Interrupt line to allocate
^1da177e4c3f41 Linus Torvalds            2005-04-16  2790   * @irqflags: Interrupt type flags
fe4b8457078ee0 Kishon Vijay Abraham I    2021-08-24  2791   * @register_hub: Flag to indicate if roothub has to be registered.
^1da177e4c3f41 Linus Torvalds            2005-04-16  2792   *
^1da177e4c3f41 Linus Torvalds            2005-04-16  2793   * Finish the remaining parts of generic HCD initialization: allocate the
^1da177e4c3f41 Linus Torvalds            2005-04-16  2794   * buffers of consistent memory, register the bus, request the IRQ line,
^1da177e4c3f41 Linus Torvalds            2005-04-16  2795   * and call the driver's reset() and start() routines.
^1da177e4c3f41 Linus Torvalds            2005-04-16  2796   */
fe4b8457078ee0 Kishon Vijay Abraham I    2021-08-24  2797  int __usb_add_hcd(struct usb_hcd *hcd, unsigned int irqnum, unsigned long irqflags,
fe4b8457078ee0 Kishon Vijay Abraham I    2021-08-24  2798  		  bool register_hub)
^1da177e4c3f41 Linus Torvalds            2005-04-16 @2799  {
^1da177e4c3f41 Linus Torvalds            2005-04-16  2800  	int retval;
8ec8d20b21f00a Alan Stern                2005-04-25  2801  	struct usb_device *rhdev;
^1da177e4c3f41 Linus Torvalds            2005-04-16  2802  
29bca25e1bc474 Chunfeng Yun              2018-03-22  2803  	if (!hcd->skip_phy_initialization && usb_hcd_is_primary_hcd(hcd)) {
63cb03f5c11eef Martin Blumenstingl       2018-04-18  2804  		hcd->phy_roothub = usb_phy_roothub_alloc(hcd->self.sysdev);
bc40f53417410b Johan Hovold              2018-04-18  2805  		if (IS_ERR(hcd->phy_roothub))
bc40f53417410b Johan Hovold              2018-04-18  2806  			return PTR_ERR(hcd->phy_roothub);
178a0bce05cbc1 Martin Blumenstingl       2018-03-03  2807  
63cb03f5c11eef Martin Blumenstingl       2018-04-18  2808  		retval = usb_phy_roothub_init(hcd->phy_roothub);
63cb03f5c11eef Martin Blumenstingl       2018-04-18  2809  		if (retval)
890fa45d01eb89 Greg Kroah-Hartman        2018-04-30  2810  			return retval;
63cb03f5c11eef Martin Blumenstingl       2018-04-18  2811  
b97a31348379f7 Miquel Raynal             2019-01-29  2812  		retval = usb_phy_roothub_set_mode(hcd->phy_roothub,
b97a31348379f7 Miquel Raynal             2019-01-29  2813  						  PHY_MODE_USB_HOST_SS);
e671765e521c57 Chen-Yu Tsai              2019-03-22  2814  		if (retval)
e671765e521c57 Chen-Yu Tsai              2019-03-22  2815  			retval = usb_phy_roothub_set_mode(hcd->phy_roothub,
e671765e521c57 Chen-Yu Tsai              2019-03-22  2816  							  PHY_MODE_USB_HOST);
b97a31348379f7 Miquel Raynal             2019-01-29  2817  		if (retval)
b97a31348379f7 Miquel Raynal             2019-01-29  2818  			goto err_usb_phy_roothub_power_on;
b97a31348379f7 Miquel Raynal             2019-01-29  2819  
178a0bce05cbc1 Martin Blumenstingl       2018-03-03  2820  		retval = usb_phy_roothub_power_on(hcd->phy_roothub);
178a0bce05cbc1 Martin Blumenstingl       2018-03-03  2821  		if (retval)
178a0bce05cbc1 Martin Blumenstingl       2018-03-03  2822  			goto err_usb_phy_roothub_power_on;
178a0bce05cbc1 Martin Blumenstingl       2018-03-03  2823  	}
178a0bce05cbc1 Martin Blumenstingl       2018-03-03  2824  
^1da177e4c3f41 Linus Torvalds            2005-04-16  2825  	dev_info(hcd->self.controller, "%s\n", hcd->product_desc);
^1da177e4c3f41 Linus Torvalds            2005-04-16  2826  
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2827  	switch (authorized_default) {
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2828  	case USB_AUTHORIZE_NONE:
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2829  		hcd->dev_policy = USB_DEVICE_AUTHORIZE_NONE;
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2830  		break;
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2831  
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2832  	case USB_AUTHORIZE_ALL:
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2833  		hcd->dev_policy = USB_DEVICE_AUTHORIZE_ALL;
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2834  		break;
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2835  
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2836  	case USB_AUTHORIZE_INTERNAL:
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2837  		hcd->dev_policy = USB_DEVICE_AUTHORIZE_INTERNAL;
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2838  		break;
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2839  
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2840  	case USB_AUTHORIZE_WIRED:
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2841  	default:
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2842  		hcd->dev_policy = hcd->wireless ?
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2843  			USB_DEVICE_AUTHORIZE_NONE : USB_DEVICE_AUTHORIZE_ALL;
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2844  		break;
ff8e2c560eca32 Stefan Koch               2015-08-25  2845  	}
7bae0432a64aa7 Dmitry Torokhov           2019-02-16  2846  
8de98402652c01 Benjamin Herrenschmidt    2005-11-25  2847  	set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
8de98402652c01 Benjamin Herrenschmidt    2005-11-25  2848  
6b2bd3c8c69c48 Stefan Koch               2015-08-25  2849  	/* per default all interfaces are authorized */
6b2bd3c8c69c48 Stefan Koch               2015-08-25  2850  	set_bit(HCD_FLAG_INTF_AUTHORIZED, &hcd->flags);
6b2bd3c8c69c48 Stefan Koch               2015-08-25  2851  
b1e8f0a6a8805c David Brownell            2006-01-23  2852  	/* HC is in reset state, but accessible.  Now do the one-time init,
37ebb54915dc42 Petr Mladek               2014-09-19  2853  	 * bottom up so that hcds can customize the root hubs before hub_wq
b1e8f0a6a8805c David Brownell            2006-01-23  2854  	 * starts talking to them.  (Note, bus id is assigned early too.)
b1e8f0a6a8805c David Brownell            2006-01-23  2855  	 */
0faaad461547e2 Kris Borer                2015-07-14  2856  	retval = hcd_buffer_create(hcd);
0faaad461547e2 Kris Borer                2015-07-14  2857  	if (retval != 0) {
a8c06e407ef969 Arnd Bergmann             2017-03-13  2858  		dev_dbg(hcd->self.sysdev, "pool alloc failed\n");
00433254952221 Sergei Shtylyov           2014-09-24  2859  		goto err_create_buf;
^1da177e4c3f41 Linus Torvalds            2005-04-16  2860  	}
^1da177e4c3f41 Linus Torvalds            2005-04-16  2861  
0faaad461547e2 Kris Borer                2015-07-14  2862  	retval = usb_register_bus(&hcd->self);
0faaad461547e2 Kris Borer                2015-07-14  2863  	if (retval < 0)
8ec8d20b21f00a Alan Stern                2005-04-25  2864  		goto err_register_bus;
^1da177e4c3f41 Linus Torvalds            2005-04-16  2865  
c688d6211f57e1 Greg Kroah-Hartman        2015-04-30  2866  	rhdev = usb_alloc_dev(NULL, &hcd->self, 0);
c688d6211f57e1 Greg Kroah-Hartman        2015-04-30  2867  	if (rhdev == NULL) {
a8c06e407ef969 Arnd Bergmann             2017-03-13  2868  		dev_err(hcd->self.sysdev, "unable to allocate root hub\n");
b1e8f0a6a8805c David Brownell            2006-01-23  2869  		retval = -ENOMEM;
b1e8f0a6a8805c David Brownell            2006-01-23  2870  		goto err_allocate_root_hub;
b1e8f0a6a8805c David Brownell            2006-01-23  2871  	}
d8521afe35862f Dan Williams              2014-05-20  2872  	mutex_lock(&usb_port_peer_mutex);
6d88e679257449 Alan Stern                2010-06-09  2873  	hcd->self.root_hub = rhdev;
d8521afe35862f Dan Williams              2014-05-20  2874  	mutex_unlock(&usb_port_peer_mutex);
6b403b020c1f42 Sarah Sharp               2009-04-27  2875  
a2d49572e11ef5 Mathias Nyman             2018-04-19  2876  	rhdev->rx_lanes = 1;
a2d49572e11ef5 Mathias Nyman             2018-04-19  2877  	rhdev->tx_lanes = 1;
0299809be41556 Thinh Nguyen              2021-03-10  2878  	rhdev->ssp_rate = USB_SSP_GEN_UNKNOWN;
a2d49572e11ef5 Mathias Nyman             2018-04-19  2879  
83de4b2b90887b Sarah Sharp               2010-12-02  2880  	switch (hcd->speed) {
6b403b020c1f42 Sarah Sharp               2009-04-27  2881  	case HCD_USB11:
6b403b020c1f42 Sarah Sharp               2009-04-27  2882  		rhdev->speed = USB_SPEED_FULL;
6b403b020c1f42 Sarah Sharp               2009-04-27  2883  		break;
6b403b020c1f42 Sarah Sharp               2009-04-27  2884  	case HCD_USB2:
6b403b020c1f42 Sarah Sharp               2009-04-27  2885  		rhdev->speed = USB_SPEED_HIGH;
6b403b020c1f42 Sarah Sharp               2009-04-27  2886  		break;
1a81f8814cbc79 Thomas Pugliese           2013-05-31  2887  	case HCD_USB25:
1a81f8814cbc79 Thomas Pugliese           2013-05-31  2888  		rhdev->speed = USB_SPEED_WIRELESS;
1a81f8814cbc79 Thomas Pugliese           2013-05-31  2889  		break;
6b403b020c1f42 Sarah Sharp               2009-04-27  2890  	case HCD_USB3:
6b403b020c1f42 Sarah Sharp               2009-04-27  2891  		rhdev->speed = USB_SPEED_SUPER;
6b403b020c1f42 Sarah Sharp               2009-04-27  2892  		break;
ffe95371d2a84f Mathias Nyman             2018-04-19  2893  	case HCD_USB32:
a2d49572e11ef5 Mathias Nyman             2018-04-19  2894  		rhdev->rx_lanes = 2;
a2d49572e11ef5 Mathias Nyman             2018-04-19  2895  		rhdev->tx_lanes = 2;
0299809be41556 Thinh Nguyen              2021-03-10  2896  		rhdev->ssp_rate = USB_SSP_GEN_2x2;
0299809be41556 Thinh Nguyen              2021-03-10  2897  		rhdev->speed = USB_SPEED_SUPER_PLUS;
0299809be41556 Thinh Nguyen              2021-03-10  2898  		break;
5f9c3a668b3f75 Mathias Nyman             2015-12-10  2899  	case HCD_USB31:
0299809be41556 Thinh Nguyen              2021-03-10  2900  		rhdev->ssp_rate = USB_SSP_GEN_2x1;
5f9c3a668b3f75 Mathias Nyman             2015-12-10  2901  		rhdev->speed = USB_SPEED_SUPER_PLUS;
5f9c3a668b3f75 Mathias Nyman             2015-12-10  2902  		break;
6b403b020c1f42 Sarah Sharp               2009-04-27  2903  	default:
1d15ee4cd7c9dd Sebastian Andrzej Siewior 2011-04-14  2904  		retval = -EINVAL;
96e077ae347912 Alan Stern                2010-06-09  2905  		goto err_set_rh_speed;
6b403b020c1f42 Sarah Sharp               2009-04-27  2906  	}
b1e8f0a6a8805c David Brownell            2006-01-23  2907  
db4cefaaea4c6d David Brownell            2006-05-01  2908  	/* wakeup flag init defaults to "everything works" for root hubs,
db4cefaaea4c6d David Brownell            2006-05-01  2909  	 * but drivers can override it in reset() if needed, along with
db4cefaaea4c6d David Brownell            2006-05-01  2910  	 * recording the overall controller's system wakeup capability.
db4cefaaea4c6d David Brownell            2006-05-01  2911  	 */
a6eeeb9f45b5a4 Alan Stern                2011-09-26  2912  	device_set_wakeup_capable(&rhdev->dev, 1);
db4cefaaea4c6d David Brownell            2006-05-01  2913  
9b37596a2e8604 Alan Stern                2011-03-07  2914  	/* HCD_FLAG_RH_RUNNING doesn't matter until the root hub is
9b37596a2e8604 Alan Stern                2011-03-07  2915  	 * registered.  But since the controller can die at any time,
9b37596a2e8604 Alan Stern                2011-03-07  2916  	 * let's initialize the flag before touching the hardware.
9b37596a2e8604 Alan Stern                2011-03-07  2917  	 */
9b37596a2e8604 Alan Stern                2011-03-07  2918  	set_bit(HCD_FLAG_RH_RUNNING, &hcd->flags);
9b37596a2e8604 Alan Stern                2011-03-07  2919  
b1e8f0a6a8805c David Brownell            2006-01-23  2920  	/* "reset" is misnamed; its role is now one-time init. the controller
b1e8f0a6a8805c David Brownell            2006-01-23  2921  	 * should already have been reset (and boot firmware kicked off etc).
b1e8f0a6a8805c David Brownell            2006-01-23  2922  	 */
0faaad461547e2 Kris Borer                2015-07-14  2923  	if (hcd->driver->reset) {
0faaad461547e2 Kris Borer                2015-07-14  2924  		retval = hcd->driver->reset(hcd);
0faaad461547e2 Kris Borer                2015-07-14  2925  		if (retval < 0) {
0faaad461547e2 Kris Borer                2015-07-14  2926  			dev_err(hcd->self.controller, "can't setup: %d\n",
0faaad461547e2 Kris Borer                2015-07-14  2927  					retval);
b1e8f0a6a8805c David Brownell            2006-01-23  2928  			goto err_hcd_driver_setup;
b1e8f0a6a8805c David Brownell            2006-01-23  2929  		}
0faaad461547e2 Kris Borer                2015-07-14  2930  	}
6d88e679257449 Alan Stern                2010-06-09  2931  	hcd->rh_pollable = 1;
b1e8f0a6a8805c David Brownell            2006-01-23  2932  
34c7ed72f4f04e Marek Szyprowski          2019-08-29  2933  	retval = usb_phy_roothub_calibrate(hcd->phy_roothub);
34c7ed72f4f04e Marek Szyprowski          2019-08-29  2934  	if (retval)
34c7ed72f4f04e Marek Szyprowski          2019-08-29  2935  		goto err_hcd_driver_setup;
34c7ed72f4f04e Marek Szyprowski          2019-08-29  2936  
fb669cc01ed778 David Brownell            2006-01-24  2937  	/* NOTE: root hub and controller capabilities may not be the same */
fb669cc01ed778 David Brownell            2006-01-24  2938  	if (device_can_wakeup(hcd->self.controller)
fb669cc01ed778 David Brownell            2006-01-24  2939  			&& device_can_wakeup(&hcd->self.root_hub->dev))
b1e8f0a6a8805c David Brownell            2006-01-23  2940  		dev_dbg(hcd->self.controller, "supports USB remote wakeup\n");
b1e8f0a6a8805c David Brownell            2006-01-23  2941  
94dfd7edfd5c9b Ming Lei                  2013-07-03  2942  	/* initialize tasklets */
94dfd7edfd5c9b Ming Lei                  2013-07-03  2943  	init_giveback_urb_bh(&hcd->high_prio_bh);
94dfd7edfd5c9b Ming Lei                  2013-07-03  2944  	init_giveback_urb_bh(&hcd->low_prio_bh);
94dfd7edfd5c9b Ming Lei                  2013-07-03  2945  
68d07f64b8a11a Sarah Sharp               2012-02-13  2946  	/* enable irqs just before we start the controller,
68d07f64b8a11a Sarah Sharp               2012-02-13  2947  	 * if the BIOS provides legacy PCI irqs.
68d07f64b8a11a Sarah Sharp               2012-02-13  2948  	 */
68d07f64b8a11a Sarah Sharp               2012-02-13  2949  	if (usb_hcd_is_primary_hcd(hcd) && irqnum) {
23e0d1066f429a Sarah Sharp               2010-10-21  2950  		retval = usb_hcd_request_irqs(hcd, irqnum, irqflags);
23e0d1066f429a Sarah Sharp               2010-10-21  2951  		if (retval)
8ec8d20b21f00a Alan Stern                2005-04-25  2952  			goto err_request_irq;
c56354378426e5 Sarah Sharp               2010-10-28  2953  	}
^1da177e4c3f41 Linus Torvalds            2005-04-16  2954  
4814030ce11f08 Sarah Sharp               2011-03-11  2955  	hcd->state = HC_STATE_RUNNING;
abc4f9b099e9e7 Sarah Sharp               2010-12-01  2956  	retval = hcd->driver->start(hcd);
abc4f9b099e9e7 Sarah Sharp               2010-12-01  2957  	if (retval < 0) {
^1da177e4c3f41 Linus Torvalds            2005-04-16  2958  		dev_err(hcd->self.controller, "startup error %d\n", retval);
8ec8d20b21f00a Alan Stern                2005-04-25  2959  		goto err_hcd_driver_start;
^1da177e4c3f41 Linus Torvalds            2005-04-16  2960  	}
^1da177e4c3f41 Linus Torvalds            2005-04-16  2961  
b1e8f0a6a8805c David Brownell            2006-01-23  2962  	/* starting here, usbcore will pay attention to this root hub */
fe4b8457078ee0 Kishon Vijay Abraham I    2021-08-24  2963  	if (register_hub) {
0faaad461547e2 Kris Borer                2015-07-14  2964  		retval = register_root_hub(hcd);
0faaad461547e2 Kris Borer                2015-07-14  2965  		if (retval != 0)
8ec8d20b21f00a Alan Stern                2005-04-25  2966  			goto err_register_root_hub;
541c7d432f7677 Alan Stern                2010-06-22  2967  		if (hcd->uses_new_polling && HCD_POLL_RH(hcd))
d5926ae7a827bd Alan Stern                2005-04-21  2968  			usb_hcd_poll_rh_status(hcd);
fe4b8457078ee0 Kishon Vijay Abraham I    2021-08-24  2969  	}
a6eeeb9f45b5a4 Alan Stern                2011-09-26  2970  
^1da177e4c3f41 Linus Torvalds            2005-04-16  2971  	return retval;
^1da177e4c3f41 Linus Torvalds            2005-04-16  2972  
8ec8d20b21f00a Alan Stern                2005-04-25  2973  err_register_root_hub:
c8195df4a79699 Kishon Vijay Abraham I    2021-08-24  2974  	usb_stop_hcd(hcd);
8ec8d20b21f00a Alan Stern                2005-04-25  2975  err_hcd_driver_start:
cd70469d084fde Felipe Balbi              2012-02-29  2976  	if (usb_hcd_is_primary_hcd(hcd) && hcd->irq > 0)
^1da177e4c3f41 Linus Torvalds            2005-04-16  2977  		free_irq(irqnum, hcd);
8ec8d20b21f00a Alan Stern                2005-04-25  2978  err_request_irq:
b1e8f0a6a8805c David Brownell            2006-01-23  2979  err_hcd_driver_setup:
96e077ae347912 Alan Stern                2010-06-09  2980  err_set_rh_speed:
d8521afe35862f Dan Williams              2014-05-20  2981  	usb_put_invalidate_rhdev(hcd);
b1e8f0a6a8805c David Brownell            2006-01-23  2982  err_allocate_root_hub:
^1da177e4c3f41 Linus Torvalds            2005-04-16  2983  	usb_deregister_bus(&hcd->self);
8ec8d20b21f00a Alan Stern                2005-04-25  2984  err_register_bus:
^1da177e4c3f41 Linus Torvalds            2005-04-16  2985  	hcd_buffer_destroy(hcd);
00433254952221 Sergei Shtylyov           2014-09-24  2986  err_create_buf:
178a0bce05cbc1 Martin Blumenstingl       2018-03-03  2987  	usb_phy_roothub_power_off(hcd->phy_roothub);
178a0bce05cbc1 Martin Blumenstingl       2018-03-03  2988  err_usb_phy_roothub_power_on:
178a0bce05cbc1 Martin Blumenstingl       2018-03-03  2989  	usb_phy_roothub_exit(hcd->phy_roothub);
bc40f53417410b Johan Hovold              2018-04-18  2990  
^1da177e4c3f41 Linus Torvalds            2005-04-16  2991  	return retval;
^1da177e4c3f41 Linus Torvalds            2005-04-16  2992  }
fe4b8457078ee0 Kishon Vijay Abraham I    2021-08-24  2993  EXPORT_SYMBOL_GPL(__usb_add_hcd);
^1da177e4c3f41 Linus Torvalds            2005-04-16  2994  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108242101.4o4y1bxa-lkp%40intel.com.

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
35IQ1qfk8BMdOxB6YYWUUbP8Z55fRF3ND3VVyZ5a5YLRzpynLPP1K5+7LCTCz2zfWgLVXXh1
mjsF1DWtBJfKyM2uSJv6At2wKDS3+rbIq/psyQU1CGkeJ+mRTj8a9LTpxjDvciK2fbkv8oZl
oSXGBB6lgSzJsIcIv5xycvF4QMHt9IiV/VdKacztApey91qPp2aNPx0KBr3gEdzmemCarVNy
un5UHzont5ree+bYkYti6IuOKwH1slQd2orRSMuPZknq1hxupKhYRf5X5fA0HszMyL6WVl/n
lWzHCr1h1nDHiqfqale8kaqXfF15vpJainqBp47eIw/NovN709aql5fQFYTuIZly5vR7W6cp
w4+CCJZzgmw4T5LOszxFzEuu29pMSM44vmSaPCcXqlb/iC5npZNMRwKe0xMvf5n7qil6dMFZ
Vdj0RazUEflTZgK6ZFEJ0hu+n+snStUw2GZ0/5iTM1xt5ygVpchznxh0J6mvnKp3p7YXnfai
5PmwJwtraERktmQfHj7mrVOIC5Pznk+Zc17Wtsa9cinzJonStZtlovmb5ONTRqZtZUtOJep2
MB7yzOiprH1djr9MDlY01vxapk0YjpE6pkdhwIpUZmQv9ti81V5fMncM47fjI3uWWx4qx/zt
bG4O5s28DVfvBnRz9jNPZJZ3fUq5zzsu4aMzMJNoP2tWzmvybDBVqPKcUzR8XBEYVZb/rZQf
QWTaC+W2Vk6DTAynNDNStBNiVSU1apoPVX4Zfbe5DlLMCNvUpqP3E7PbRudfA/kL5MKq80Gm
zyveKZ3I5/5v1aceT2uqibujMnD7tCt0skYNCM7ofhX1wHV0OyHl2Ssu5O5LNfUxb4lA/eNr
RrmEkasLOe+QExny1x+aaZXmzHAX7W/ff5CLwSncRmY/4lCduEmuq9XYRUayV5KqU+oX+X2b
lqLbe4qdj5+b7aiobV131DpD5zSkwruOJEHFY1hK/CAKkLjMcqiatEzmpxkGSmZ55cFkM7PW
g7FuvvN2g8QJEPPrU1ULAJRnaxhWgpwuK9CTr+t0VonctQ+D1alx25iLJgg2VwxEmxB19kFK
ML1jPEETRUkZu0brMEAf129JSk8u0pYYRLENgoXM2y1Fv9klbp2ogfZpyewyqc4U/gFIOMVC
UT6+vVxtXuVCajD5/5OrkmiQaWfJD+mX5+8gyLMav6nVc8qXYm5J2SWzuLrytg1SyQn5nw+q
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
s4s1lyhlOai9qffA/guaL7cUs3YCAA==

--KsGdsel6WgEHnImy--
