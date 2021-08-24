Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZPUSOEQMGQEFWHYZ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF023F5F96
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 15:55:51 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id z11-20020a170902834b00b00130c1b330bcsf3748488pln.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 06:55:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629813350; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzZoOvToFYxJbLTJN6gWeNPoumK8n7UQfErGlWqPgUAS+RyamQbtuHcJpkMiSiN/hP
         w2kgROb1gkscKG3nytAQMVdAZ6Kpd0wsK1VgEzIQQgn+HsHYiTtKiBUDrJYzoi7nj0K7
         8V4NxrRozKgLAdy8FouXv06YfFHUrhAWI3LTLcyqPCkFm6y5myIhafemLE+Nc35W/Eg3
         O2O1n/tM2ODo4/HMFfOZvsPDeLYaN+vGlElgzEeIDmzxjeKADg20NiQIFMC3wbKCyXf3
         LE5Ye5X/n1EXYaY9DUqFeJAzofbAlxxSQd4IN+gRTME37BWMrebfeVWppRHM/M5o9BTo
         iiDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=K+kalMn928BQ6mrbMlQCCG2oeZo20xrhqM8nAiWzQMQ=;
        b=nyuFgYej8kVw7479c0NVCvQRkjzOZTeIXIpkcGnT1FCceGEMGBPg61IHTMMG22chQq
         No0C1sPQXT/iEbexaUe5rIMGW7FJ250YGfrObSP58QySlBupeeoyXNyp4rGceZW16Da5
         zv7Sg7BGOjD4f4Hv6p48MoqajYms9jMXmfIhnveXuWPy49ApkX04epH1dhns74evLLMv
         NI8qOq8AZ2mz8jERaIbNT/YhMvcElkTrEbNgEI8soQ7nZKkydLFefa8eyyRLsQ4SvouR
         XWq3sRgwxbBjyOZ62ABjIx/SfiEEq4/8qPJaRnSsu7pWVAteu1K/2ApGuCnnHuKNCnya
         24ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K+kalMn928BQ6mrbMlQCCG2oeZo20xrhqM8nAiWzQMQ=;
        b=ZV2ICZug2+t4TXHPoA09JBIkKLJsv9NWCJIFzp9ZpCK7yQSs0Sixscwul3LW6ewfAu
         Ej6o15Oeubm1YZ3FmTpE3kzFse760zDJqm7h9CYV6wQ86wWeuNhNuAmUQOa3muoqJddr
         i5xHtArmwvh49khZk2S2Ikek/OhjaQ2kjVDfc8EiOtaw2PD8edwVJ2engsnpTPl4pTnF
         XLdtN8pQQnz92t7+hL9mVhN6ydLhLAIrwWCcOnlsLqp2T1Uo+UWyQk/jc3xZVzbECJh8
         oq3TfQZtsiMi1uUOO1Umoo/GVmdjbewK2PsGN+XaJIllVE8WYZGPkk6N/gofIqLeCF8R
         2OXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K+kalMn928BQ6mrbMlQCCG2oeZo20xrhqM8nAiWzQMQ=;
        b=Pp5t3PMOQKtsFdhInf9cvY6B3fmSgC0V9AIZ4Uk0OQL3ACSSJn8oYpJSOrF4HFo6xe
         ypjOd48eB+zIrukMi+ekj/CFXFa19pgPmLJwby4EGjx1aJzqRPwfHUr3a3TlrUcK8DWJ
         2A+He6DERWYNUN4WC4a6PW87+y8e+8REFkEJBEs+U+XVXAXG8srlZqrq9dLeExc9k9UV
         2j6VTIjMP9jdUJny9pEDwUKJGfo2dNe/sdEdGk5/ZvvEEZTZb/OzWmEXLmBnXQrsB0Yo
         63EmgSpdryxPldSAtGXlQV74Wmet9gPwTBC/aGXn1bdqxvPH9gk6Er6MNWtQ5wSAvDZz
         UMzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ANsyvXmVKMuN2L86sNZwH3zPUBdgdqcmol9OF4kpK+3tQPwJV
	E0M75TUjU02end/Qz2V6OEM=
X-Google-Smtp-Source: ABdhPJzLe9CnlSBkVmn1n3/89NhiVWwPrmekFR7LJSZWEL60pc7zF72NL3MveCIgVrk/TRc9LphAPQ==
X-Received: by 2002:a05:6a00:2171:b029:3ab:eca3:af59 with SMTP id r17-20020a056a002171b02903abeca3af59mr39241666pff.46.1629813349730;
        Tue, 24 Aug 2021 06:55:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6d82:: with SMTP id a2ls1451991pjk.2.canary-gmail;
 Tue, 24 Aug 2021 06:55:49 -0700 (PDT)
X-Received: by 2002:a17:902:dac2:b029:12d:78d8:a15d with SMTP id q2-20020a170902dac2b029012d78d8a15dmr32632421plx.45.1629813348889;
        Tue, 24 Aug 2021 06:55:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629813348; cv=none;
        d=google.com; s=arc-20160816;
        b=LUJIHVSBDv0Zt/8gjyKnB5bOJEjoXRxerVO3pLcFFgjPgylfPY+/6qywdrB+CuWYJU
         03bBIeJq+KH9bxC8XO9hfpoMnghxxOb+Ff2iSrmUiwDs7igBOm5a6rNNe+3A1SHi9lPk
         NYeGQCutvgy4rjxVznuw8Paf6U2c4uJFYeiIeD7j5CP1O//wRqpqFm76q/L8TkYPP9Ev
         mHW4WM/ENz3VK7PuIkfOHXVc45B36bhXxf7+bTAxdzcs2sTkU+yLn267uCCq5IxDdTtm
         wCY0h+idW/WcJOBC0XpC0ha9Y9GxEw4jCE1kZME77fWoc4XUxCGLJ5n12MD9e19GIDRq
         h8JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=UguINgLyuLqtBhrUWkdQAlQ06YrA/p3CZNEKNCeTY0s=;
        b=FAYtPYY3Afxx9yn9Ek7KiCIAclWytmF9R0TGPkdeeayNWCRTvzJ9/JeruY5xxPJqVs
         zi8HGR7ooedp2+WEI8Q9ybdFPxYZvgwlxJ7t1opsypd71JdC3EJ1OieVXGmHMTiq6ELB
         Bm1yJbLqr6HpTT2OMjo4sq/VxfxLfbVN5SSZ4MyQqvfSfYGri8F7RWOwEk5/9jIwpFo7
         xC1fboy3Rl9mv7+b3Y9Rvv+A91h/r52aTz02+rEb1l3PYTN2b3m8uYvfCNxsZQomuREX
         tCdaWIpKEGt8BehM1gxi02vnahfCZzL9wIkzqdxneu95K3H4yfhOTsoRlzUX3oaY0XTN
         FFzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id my17si165548pjb.1.2021.08.24.06.55.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 06:55:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="278325611"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; 
   d="gz'50?scan'50,208,50";a="278325611"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2021 06:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; 
   d="gz'50?scan'50,208,50";a="685373626"
Received: from lkp-server02.sh.intel.com (HELO 181e7be6f509) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 24 Aug 2021 06:55:46 -0700
Received: from kbuild by 181e7be6f509 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mIWu1-0000au-Pa; Tue, 24 Aug 2021 13:55:45 +0000
Date: Tue, 24 Aug 2021 21:55:13 +0800
From: kernel test robot <lkp@intel.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Subject: Re: [RFC PATCH 4/5] usb: core: hcd-pci: Let usb_hcd_pci_probe()
 indicate if RH has to be registered
Message-ID: <202108242143.1s4q7tYq-lkp@intel.com>
References: <20210824105302.25382-5-kishon@ti.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
In-Reply-To: <20210824105302.25382-5-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--EVF5PPMfhYS0aIcm
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
config: x86_64-randconfig-a016-20210824 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d26000e4cc2bc65e207a84fa26cb6e374d60aa12)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/fd3b9b5ae10e49551c8b9635c004d54e8cf085ae
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Kishon-Vijay-Abraham-I/Fix-cold-plugged-USB-device-on-certain-PCIe-USB-cards/20210824-185502
        git checkout fd3b9b5ae10e49551c8b9635c004d54e8cf085ae
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/usb/core/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/usb/core/hcd-pci.c:177: warning: expecting prototype for usb_hcd_pci_probe(). Prototype was for __usb_hcd_pci_probe() instead


vim +177 drivers/usb/core/hcd-pci.c

^1da177e4c3f41 Linus Torvalds         2005-04-16  157  
^1da177e4c3f41 Linus Torvalds         2005-04-16  158  /**
^1da177e4c3f41 Linus Torvalds         2005-04-16  159   * usb_hcd_pci_probe - initialize PCI-based HCDs
^1da177e4c3f41 Linus Torvalds         2005-04-16  160   * @dev: USB Host Controller being probed
^1da177e4c3f41 Linus Torvalds         2005-04-16  161   * @id: pci hotplug id connecting controller to HCD framework
ff4c65ca48f08f Vinod Koul             2020-05-14  162   * @driver: USB HC driver handle
fd3b9b5ae10e49 Kishon Vijay Abraham I 2021-08-24  163   * @register_hub: Flag to indicate of roothub has to be registered or not
41631d3616c363 Ahmed S. Darwish       2020-10-19  164   *
41631d3616c363 Ahmed S. Darwish       2020-10-19  165   * Context: task context, might sleep
^1da177e4c3f41 Linus Torvalds         2005-04-16  166   *
^1da177e4c3f41 Linus Torvalds         2005-04-16  167   * Allocates basic PCI resources for this USB host controller, and
^1da177e4c3f41 Linus Torvalds         2005-04-16  168   * then invokes the start() method for the HCD associated with it
^1da177e4c3f41 Linus Torvalds         2005-04-16  169   * through the hotplug entry's driver_data.
^1da177e4c3f41 Linus Torvalds         2005-04-16  170   *
^1da177e4c3f41 Linus Torvalds         2005-04-16  171   * Store this function in the HCD's struct pci_driver as probe().
626f090c5cbbe5 Yacine Belkadi         2013-08-02  172   *
626f090c5cbbe5 Yacine Belkadi         2013-08-02  173   * Return: 0 if successful.
^1da177e4c3f41 Linus Torvalds         2005-04-16  174   */
fd3b9b5ae10e49 Kishon Vijay Abraham I 2021-08-24  175  int __usb_hcd_pci_probe(struct pci_dev *dev, const struct pci_device_id *id,
fd3b9b5ae10e49 Kishon Vijay Abraham I 2021-08-24  176  			const struct hc_driver *driver, bool register_hub)
^1da177e4c3f41 Linus Torvalds         2005-04-16 @177  {
^1da177e4c3f41 Linus Torvalds         2005-04-16  178  	struct usb_hcd		*hcd;
^1da177e4c3f41 Linus Torvalds         2005-04-16  179  	int			retval;
00eed9c814cb8f Hannes Reinecke        2013-03-04  180  	int			hcd_irq = 0;
^1da177e4c3f41 Linus Torvalds         2005-04-16  181  
^1da177e4c3f41 Linus Torvalds         2005-04-16  182  	if (usb_disabled())
^1da177e4c3f41 Linus Torvalds         2005-04-16  183  		return -ENODEV;
^1da177e4c3f41 Linus Torvalds         2005-04-16  184  
34bbe4c16ca06c Greg Kroah-Hartman     2008-01-30  185  	if (!id)
34bbe4c16ca06c Greg Kroah-Hartman     2008-01-30  186  		return -EINVAL;
ff4c65ca48f08f Vinod Koul             2020-05-14  187  
34bbe4c16ca06c Greg Kroah-Hartman     2008-01-30  188  	if (!driver)
^1da177e4c3f41 Linus Torvalds         2005-04-16  189  		return -EINVAL;
^1da177e4c3f41 Linus Torvalds         2005-04-16  190  
^1da177e4c3f41 Linus Torvalds         2005-04-16  191  	if (pci_enable_device(dev) < 0)
^1da177e4c3f41 Linus Torvalds         2005-04-16  192  		return -ENODEV;
^1da177e4c3f41 Linus Torvalds         2005-04-16  193  
00eed9c814cb8f Hannes Reinecke        2013-03-04  194  	/*
00eed9c814cb8f Hannes Reinecke        2013-03-04  195  	 * The xHCI driver has its own irq management
00eed9c814cb8f Hannes Reinecke        2013-03-04  196  	 * make sure irq setup is not touched for xhci in generic hcd code
68d07f64b8a11a Sarah Sharp            2012-02-13  197  	 */
8a1b2725a60d32 Mathias Nyman          2015-12-10  198  	if ((driver->flags & HCD_MASK) < HCD_USB3) {
306c54d0edb6ba Andy Shevchenko        2020-07-02  199  		retval = pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_LEGACY | PCI_IRQ_MSI);
306c54d0edb6ba Andy Shevchenko        2020-07-02  200  		if (retval < 0) {
^1da177e4c3f41 Linus Torvalds         2005-04-16  201  			dev_err(&dev->dev,
^1da177e4c3f41 Linus Torvalds         2005-04-16  202  			"Found HC with no IRQ. Check BIOS/PCI %s setup!\n",
^1da177e4c3f41 Linus Torvalds         2005-04-16  203  				pci_name(dev));
^1da177e4c3f41 Linus Torvalds         2005-04-16  204  			retval = -ENODEV;
8766c815607e57 Sarah Sharp            2010-10-15  205  			goto disable_pci;
^1da177e4c3f41 Linus Torvalds         2005-04-16  206  		}
306c54d0edb6ba Andy Shevchenko        2020-07-02  207  		hcd_irq = pci_irq_vector(dev, 0);
00eed9c814cb8f Hannes Reinecke        2013-03-04  208  	}
^1da177e4c3f41 Linus Torvalds         2005-04-16  209  
^1da177e4c3f41 Linus Torvalds         2005-04-16  210  	hcd = usb_create_hcd(driver, &dev->dev, pci_name(dev));
^1da177e4c3f41 Linus Torvalds         2005-04-16  211  	if (!hcd) {
^1da177e4c3f41 Linus Torvalds         2005-04-16  212  		retval = -ENOMEM;
306c54d0edb6ba Andy Shevchenko        2020-07-02  213  		goto free_irq_vectors;
^1da177e4c3f41 Linus Torvalds         2005-04-16  214  	}
^1da177e4c3f41 Linus Torvalds         2005-04-16  215  
7868943db1668f Huang Rui              2013-09-16  216  	hcd->amd_resume_bug = (usb_hcd_amd_remote_wakeup_quirk(dev) &&
7868943db1668f Huang Rui              2013-09-16  217  			driver->flags & (HCD_USB11 | HCD_USB3)) ? 1 : 0;
7868943db1668f Huang Rui              2013-09-16  218  
34bbe4c16ca06c Greg Kroah-Hartman     2008-01-30  219  	if (driver->flags & HCD_MEMORY) {
34bbe4c16ca06c Greg Kroah-Hartman     2008-01-30  220  		/* EHCI, OHCI */
^1da177e4c3f41 Linus Torvalds         2005-04-16  221  		hcd->rsrc_start = pci_resource_start(dev, 0);
^1da177e4c3f41 Linus Torvalds         2005-04-16  222  		hcd->rsrc_len = pci_resource_len(dev, 0);
76da906ad72704 Schmid, Carsten        2019-08-23  223  		if (!devm_request_mem_region(&dev->dev, hcd->rsrc_start,
76da906ad72704 Schmid, Carsten        2019-08-23  224  				hcd->rsrc_len, driver->description)) {
^1da177e4c3f41 Linus Torvalds         2005-04-16  225  			dev_dbg(&dev->dev, "controller already in use\n");
^1da177e4c3f41 Linus Torvalds         2005-04-16  226  			retval = -EBUSY;
05768918b9a122 Alan Stern             2013-03-28  227  			goto put_hcd;
^1da177e4c3f41 Linus Torvalds         2005-04-16  228  		}
4bdc0d676a6431 Christoph Hellwig      2020-01-06  229  		hcd->regs = devm_ioremap(&dev->dev, hcd->rsrc_start,
76da906ad72704 Schmid, Carsten        2019-08-23  230  				hcd->rsrc_len);
^1da177e4c3f41 Linus Torvalds         2005-04-16  231  		if (hcd->regs == NULL) {
^1da177e4c3f41 Linus Torvalds         2005-04-16  232  			dev_dbg(&dev->dev, "error mapping memory\n");
^1da177e4c3f41 Linus Torvalds         2005-04-16  233  			retval = -EFAULT;
76da906ad72704 Schmid, Carsten        2019-08-23  234  			goto put_hcd;
^1da177e4c3f41 Linus Torvalds         2005-04-16  235  		}
^1da177e4c3f41 Linus Torvalds         2005-04-16  236  
34bbe4c16ca06c Greg Kroah-Hartman     2008-01-30  237  	} else {
34bbe4c16ca06c Greg Kroah-Hartman     2008-01-30  238  		/* UHCI */
^1da177e4c3f41 Linus Torvalds         2005-04-16  239  		int	region;
^1da177e4c3f41 Linus Torvalds         2005-04-16  240  
c9c13ba428ef90 Denis Efremov          2019-09-28  241  		for (region = 0; region < PCI_STD_NUM_BARS; region++) {
^1da177e4c3f41 Linus Torvalds         2005-04-16  242  			if (!(pci_resource_flags(dev, region) &
^1da177e4c3f41 Linus Torvalds         2005-04-16  243  					IORESOURCE_IO))
^1da177e4c3f41 Linus Torvalds         2005-04-16  244  				continue;
^1da177e4c3f41 Linus Torvalds         2005-04-16  245  
^1da177e4c3f41 Linus Torvalds         2005-04-16  246  			hcd->rsrc_start = pci_resource_start(dev, region);
^1da177e4c3f41 Linus Torvalds         2005-04-16  247  			hcd->rsrc_len = pci_resource_len(dev, region);
76da906ad72704 Schmid, Carsten        2019-08-23  248  			if (devm_request_region(&dev->dev, hcd->rsrc_start,
76da906ad72704 Schmid, Carsten        2019-08-23  249  					hcd->rsrc_len, driver->description))
^1da177e4c3f41 Linus Torvalds         2005-04-16  250  				break;
^1da177e4c3f41 Linus Torvalds         2005-04-16  251  		}
^1da177e4c3f41 Linus Torvalds         2005-04-16  252  		if (region == PCI_ROM_RESOURCE) {
^1da177e4c3f41 Linus Torvalds         2005-04-16  253  			dev_dbg(&dev->dev, "no i/o regions available\n");
^1da177e4c3f41 Linus Torvalds         2005-04-16  254  			retval = -EBUSY;
05768918b9a122 Alan Stern             2013-03-28  255  			goto put_hcd;
^1da177e4c3f41 Linus Torvalds         2005-04-16  256  		}
^1da177e4c3f41 Linus Torvalds         2005-04-16  257  	}
^1da177e4c3f41 Linus Torvalds         2005-04-16  258  
^1da177e4c3f41 Linus Torvalds         2005-04-16  259  	pci_set_master(dev);
^1da177e4c3f41 Linus Torvalds         2005-04-16  260  
05768918b9a122 Alan Stern             2013-03-28  261  	/* Note: dev_set_drvdata must be called while holding the rwsem */
05768918b9a122 Alan Stern             2013-03-28  262  	if (dev->class == CL_EHCI) {
05768918b9a122 Alan Stern             2013-03-28  263  		down_write(&companions_rwsem);
05768918b9a122 Alan Stern             2013-03-28  264  		dev_set_drvdata(&dev->dev, hcd);
05768918b9a122 Alan Stern             2013-03-28  265  		for_each_companion(dev, hcd, ehci_pre_add);
fd3b9b5ae10e49 Kishon Vijay Abraham I 2021-08-24  266  		retval = __usb_add_hcd(hcd, hcd_irq, IRQF_SHARED, register_hub);
05768918b9a122 Alan Stern             2013-03-28  267  		if (retval != 0)
05768918b9a122 Alan Stern             2013-03-28  268  			dev_set_drvdata(&dev->dev, NULL);
05768918b9a122 Alan Stern             2013-03-28  269  		for_each_companion(dev, hcd, ehci_post_add);
05768918b9a122 Alan Stern             2013-03-28  270  		up_write(&companions_rwsem);
05768918b9a122 Alan Stern             2013-03-28  271  	} else {
05768918b9a122 Alan Stern             2013-03-28  272  		down_read(&companions_rwsem);
05768918b9a122 Alan Stern             2013-03-28  273  		dev_set_drvdata(&dev->dev, hcd);
fd3b9b5ae10e49 Kishon Vijay Abraham I 2021-08-24  274  		retval = __usb_add_hcd(hcd, hcd_irq, IRQF_SHARED, register_hub);
05768918b9a122 Alan Stern             2013-03-28  275  		if (retval != 0)
05768918b9a122 Alan Stern             2013-03-28  276  			dev_set_drvdata(&dev->dev, NULL);
05768918b9a122 Alan Stern             2013-03-28  277  		else
05768918b9a122 Alan Stern             2013-03-28  278  			for_each_companion(dev, hcd, non_ehci_add);
05768918b9a122 Alan Stern             2013-03-28  279  		up_read(&companions_rwsem);
05768918b9a122 Alan Stern             2013-03-28  280  	}
05768918b9a122 Alan Stern             2013-03-28  281  
^1da177e4c3f41 Linus Torvalds         2005-04-16  282  	if (retval != 0)
76da906ad72704 Schmid, Carsten        2019-08-23  283  		goto put_hcd;
3c9740a117d40a Peter Chen             2013-11-05  284  	device_wakeup_enable(hcd->self.controller);
3da7cff4e79e4a Alan Stern             2010-06-25  285  
3da7cff4e79e4a Alan Stern             2010-06-25  286  	if (pci_dev_run_wake(dev))
3da7cff4e79e4a Alan Stern             2010-06-25  287  		pm_runtime_put_noidle(&dev->dev);
^1da177e4c3f41 Linus Torvalds         2005-04-16  288  	return retval;
^1da177e4c3f41 Linus Torvalds         2005-04-16  289  
05768918b9a122 Alan Stern             2013-03-28  290  put_hcd:
^1da177e4c3f41 Linus Torvalds         2005-04-16  291  	usb_put_hcd(hcd);
306c54d0edb6ba Andy Shevchenko        2020-07-02  292  free_irq_vectors:
306c54d0edb6ba Andy Shevchenko        2020-07-02  293  	if ((driver->flags & HCD_MASK) < HCD_USB3)
306c54d0edb6ba Andy Shevchenko        2020-07-02  294  		pci_free_irq_vectors(dev);
8766c815607e57 Sarah Sharp            2010-10-15  295  disable_pci:
^1da177e4c3f41 Linus Torvalds         2005-04-16  296  	pci_disable_device(dev);
^1da177e4c3f41 Linus Torvalds         2005-04-16  297  	dev_err(&dev->dev, "init %s fail, %d\n", pci_name(dev), retval);
^1da177e4c3f41 Linus Torvalds         2005-04-16  298  	return retval;
^1da177e4c3f41 Linus Torvalds         2005-04-16  299  }
fd3b9b5ae10e49 Kishon Vijay Abraham I 2021-08-24  300  EXPORT_SYMBOL_GPL(__usb_hcd_pci_probe);
^1da177e4c3f41 Linus Torvalds         2005-04-16  301  
^1da177e4c3f41 Linus Torvalds         2005-04-16  302  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108242143.1s4q7tYq-lkp%40intel.com.

--EVF5PPMfhYS0aIcm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/wdXPWcvNPwBAA==

--EVF5PPMfhYS0aIcm--
