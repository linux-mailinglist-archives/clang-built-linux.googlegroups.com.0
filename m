Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRG3XWCAMGQE6KNFUTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FBF3710AC
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 05:28:05 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id t190-20020a1f46c70000b02901eba03cbf81sf83568vka.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 20:28:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620012484; cv=pass;
        d=google.com; s=arc-20160816;
        b=ROYhbw0lttGg8sfqul/BRrVv+l3c0B57FihDExQT7yC/LT2BTISizdnuieduto8wTx
         LEqG9JmQjcbmydvXs/JHVkL0DjZyqgyhUQGeH30NGEEtGRD/GbrLbtJfFzyi9qVtv/No
         YSdse4V/g205Q7nPdgWHx3rP+g4iAXzHZUQMn9jAylFBRxVuNmJMbnzFgOyiUFrwUXDe
         hIhMBr+W7p1Ynn0lNq19XjtJ+FBpP61iLtuNubKmrbKEpixJCgdosUnhn3+GRL8Bk8bt
         vdo9n0jDewskMc6fv4+Dniwe9y35LubmZzo92keM4bgWKMFITHmcqw6hGtDrEg1ae4Qe
         u5bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Xu3YbGRoi5v1TJgYb3cQL+lWDLYGQrRvMexMGp40L/c=;
        b=tqRxZQbMK6wb6fwrDSSlycmM+SacvzaDmM43f97aeK4B1V6cqmUdZNLl3xhymblK0h
         ZdDAuJ62QdaqX3VbOdm0usF6XYHAKm91ifcxdDo366YO3RlMrfWsMvgvooUdor8L1mXa
         dN6DgTAMe8gqpF/FdijqHoiuIlTVIR0uR37qMNKnx4oLkwtBceTeOn2/BRZjeRKeDgUF
         F2ncP+6K0VJD8UrW/kOlEKGQATQ0eyyzAI8b7pAojBKh9WCC9U0xMSPJQvkjniBzMziK
         UlsR17l0YwtUolEBob7/wT5UL8bui1/BUwMhwxNTFRLqxv1JN3Dxx/EkX8ZQSw2jr/Ro
         NoWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xu3YbGRoi5v1TJgYb3cQL+lWDLYGQrRvMexMGp40L/c=;
        b=BCjHB7NjSkcFM8HkosI2GqA9shW5hw4igVYQi8kPtRT1ofFSha6KJjBrZJNI0jafaK
         KYVa6f/3sY6If/JsWdWAIooKVVb6WPFOChmzkCL+WZVRgojGVtvKlhsCuPVdKIypfjSU
         NRHfCqIF4yUnVt0rbcYtHj+G8xXzItiT58EBsmnr2ENvrKVTlVA5q9e5IHoj7VqsBUzP
         NctpmIMbFRe5GqJe9wpGFEBg0kY9MWClw0dtMar6t7+qJuHcX7SixS5fwdE184GvqRsK
         ue1zP6/QWxMRVgDWlT294XrZpF9yfMMdIFDCEpWHzD53UVdlHnJZZtWxAWjmP5VM5zmJ
         e5ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xu3YbGRoi5v1TJgYb3cQL+lWDLYGQrRvMexMGp40L/c=;
        b=qXiLyM6R23WemptdeNkF/S7GqhMuMFHY3N+pUK6hkFjkujfWG2hAyUEARRb2O9QtTK
         PHs4PV8bm76xMvJ5GWbuZgYhBCyjxSML9qLiQXrLsXHVBQPO5qlUh8lePUkQekcnC4tV
         PrQBRxTh4WFN5ImVEGtQW2LRAz9pIL8VR0b5G6AyyXbS+9DIOytjnUXxSfM4JqfXdeWe
         HkThQBtNfsWzAA4vnVjWhmyuSfmRi1ZoqmvRWd55zEJUrVHIB3xVDoGPj5pfVs/pmi4r
         tJUL6N77aPhLoCUaSEtBSAfve8tk4lYoJazMk775TnoJjX00WSk3QyPYLq5AtCPLGkD9
         9WSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aucExko3/mGGPO7bm4eO43mw3rnba9+iAFaY57Xt2H72C8PID
	pmSulrAM8NG0lMpWrpiBcsc=
X-Google-Smtp-Source: ABdhPJwQu3123/wbWaal1+0JkVMAWK2RmAmViLBGwGdB0GjvujRw2MtpsCovcduOVXGCvgKmb641Vg==
X-Received: by 2002:a67:11c5:: with SMTP id 188mr1354768vsr.17.1620012484591;
        Sun, 02 May 2021 20:28:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d182:: with SMTP id w2ls2311402vsi.6.gmail; Sun, 02 May
 2021 20:28:04 -0700 (PDT)
X-Received: by 2002:a67:f314:: with SMTP id p20mr3591242vsf.23.1620012483832;
        Sun, 02 May 2021 20:28:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620012483; cv=none;
        d=google.com; s=arc-20160816;
        b=0z7gJj0qA0u71llfyT4T30/Dx6hBwvGbI8fCkIcVrFZmwuHdkBOs+qIShPdPG56AS6
         4ubTl3wB9zdcNVItR8IPL0CTq4PSKTf0tktJ0rxKtCv16lSr+n0T+mOLnZPkThT72mS4
         amKgGlawpx6r+h07KKfAtuudYjEInS8CsFOrhFwFFIe9KXyWztLH1Dn8aMIit005n09x
         /BJrNUWTbe2ZztSwsD5Jk9n31o34mSGiaYhylBlX1KS1DegXqGRq6cbuvOpTmK9p050w
         lSYNSJfcHujfZCtLihE/CoFI1heLxjtCD8/oden3CRwrCUFvg+asCr6g+k+dZENGiTPB
         EvFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=FWLgXOyBREuJhE7+8i5SVsinWJNtva9c+ONSG4lJeQs=;
        b=qRN80UddKgmVbgMD3TKadO1/dhCFvOlU4QBTlLMpAqM9GsQ06f0zscRPyfjOt54krt
         GRvwr18YprrIrbFjpGKY/0DymCrgL2i6OD14hR15uxD+S+SrR8Y6eI+yZpgyNVrvEijg
         mu2Q7FFv5CUl/9Byt2r6VE9YoZgEteoulxu2Gm4DQS12WwmfCF30AeeUQLbAoUskXi/m
         etlJ7QDElA3iaORahd+I/OvWhF8r7GGdasOwv1vxLVz2XBlkqs3Ow0NXZwgQaxUrJwdk
         KlpasnlIlUfIWsbosfxTlmkSs+F2m/PLZaYwT9JRbQfWMOcNaJzFmPZnxlxOz1G9XpwQ
         oJPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id a6si1181341vkh.0.2021.05.02.20.28.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 May 2021 20:28:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: oTQJtcHYm0gVwyvsHZZHxare3PI4UhmmSu/v/M62a7G02hHhdnLQrWNa01gu3m+1AChNtgnMAB
 w2Zq6Cfbp0RA==
X-IronPort-AV: E=McAfee;i="6200,9189,9972"; a="197757808"
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; 
   d="gz'50?scan'50,208,50";a="197757808"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 May 2021 20:28:01 -0700
IronPort-SDR: DwiSr/xIOP+cdFVpt8mNYK6yQYKV2LRWXZiOigyT6FHKK6EldSF9bd8+EV3VsmFGfREWCKcHRg
 D92h8sa2NtVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; 
   d="gz'50?scan'50,208,50";a="529906865"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 02 May 2021 20:27:59 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ldPFW-00097e-Jc; Mon, 03 May 2021 03:27:58 +0000
Date: Mon, 3 May 2021 11:27:40 +0800
From: kernel test robot <lkp@intel.com>
To: Oliver O'Halloran <oohall@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
	Joel Stanley <joel@jms.id.au>
Subject: arch/powerpc/platforms/powernv/eeh-powernv.c:1454:12: error: stack
 frame size of 3024 bytes in function 'pnv_eeh_next_error'
Message-ID: <202105031135.4eWRJHtF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   9ccce092fc64d19504fa54de4fd659e279cc92e7
commit: 3b70464aa78917e88c1d4bfc2100c344c0eda8e0 powerpc/powernv: Staticify functions without prototypes
date:   8 months ago
config: powerpc64-randconfig-r026-20210430 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3b70464aa78917e88c1d4bfc2100c344c0eda8e0
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 3b70464aa78917e88c1d4bfc2100c344c0eda8e0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/platforms/powernv/eeh-powernv.c:1454:12: error: stack frame size of 3024 bytes in function 'pnv_eeh_next_error' [-Werror,-Wframe-larger-than=]
   static int pnv_eeh_next_error(struct eeh_pe **pe)
              ^
   1 error generated.


vim +/pnv_eeh_next_error +1454 arch/powerpc/platforms/powernv/eeh-powernv.c

2a485ad7c88ddf Gavin Shan      2015-02-16  1443  
29310e5e860697 Gavin Shan      2013-06-20  1444  /**
01f3bfb7804ae2 Gavin Shan      2015-02-16  1445   * pnv_eeh_next_error - Retrieve next EEH error to handle
29310e5e860697 Gavin Shan      2013-06-20  1446   * @pe: Affected PE
29310e5e860697 Gavin Shan      2013-06-20  1447   *
2a485ad7c88ddf Gavin Shan      2015-02-16  1448   * The function is expected to be called by EEH core while it gets
2a485ad7c88ddf Gavin Shan      2015-02-16  1449   * special EEH event (without binding PE). The function calls to
2a485ad7c88ddf Gavin Shan      2015-02-16  1450   * OPAL APIs for next error to handle. The informational error is
2a485ad7c88ddf Gavin Shan      2015-02-16  1451   * handled internally by platform. However, the dead IOC, dead PHB,
2a485ad7c88ddf Gavin Shan      2015-02-16  1452   * fenced PHB and frozen PE should be handled by EEH core eventually.
29310e5e860697 Gavin Shan      2013-06-20  1453   */
01f3bfb7804ae2 Gavin Shan      2015-02-16 @1454  static int pnv_eeh_next_error(struct eeh_pe **pe)
29310e5e860697 Gavin Shan      2013-06-20  1455  {
29310e5e860697 Gavin Shan      2013-06-20  1456  	struct pci_controller *hose;
2a485ad7c88ddf Gavin Shan      2015-02-16  1457  	struct pnv_phb *phb;
2a485ad7c88ddf Gavin Shan      2015-02-16  1458  	struct eeh_pe *phb_pe, *parent_pe;
2a485ad7c88ddf Gavin Shan      2015-02-16  1459  	__be64 frozen_pe_no;
2a485ad7c88ddf Gavin Shan      2015-02-16  1460  	__be16 err_type, severity;
2a485ad7c88ddf Gavin Shan      2015-02-16  1461  	long rc;
2a485ad7c88ddf Gavin Shan      2015-02-16  1462  	int state, ret = EEH_NEXT_ERR_NONE;
2a485ad7c88ddf Gavin Shan      2015-02-16  1463  
2a485ad7c88ddf Gavin Shan      2015-02-16  1464  	/*
79231448c929cc Alistair Popple 2015-05-15  1465  	 * While running here, it's safe to purge the event queue. The
79231448c929cc Alistair Popple 2015-05-15  1466  	 * event should still be masked.
2a485ad7c88ddf Gavin Shan      2015-02-16  1467  	 */
2a485ad7c88ddf Gavin Shan      2015-02-16  1468  	eeh_remove_event(NULL, false);
29310e5e860697 Gavin Shan      2013-06-20  1469  
29310e5e860697 Gavin Shan      2013-06-20  1470  	list_for_each_entry(hose, &hose_list, list_node) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1471  		/*
2a485ad7c88ddf Gavin Shan      2015-02-16  1472  		 * If the subordinate PCI buses of the PHB has been
2a485ad7c88ddf Gavin Shan      2015-02-16  1473  		 * removed or is exactly under error recovery, we
2a485ad7c88ddf Gavin Shan      2015-02-16  1474  		 * needn't take care of it any more.
2a485ad7c88ddf Gavin Shan      2015-02-16  1475  		 */
29310e5e860697 Gavin Shan      2013-06-20  1476  		phb = hose->private_data;
2a485ad7c88ddf Gavin Shan      2015-02-16  1477  		phb_pe = eeh_phb_pe_get(hose);
2a485ad7c88ddf Gavin Shan      2015-02-16  1478  		if (!phb_pe || (phb_pe->state & EEH_PE_ISOLATED))
2a485ad7c88ddf Gavin Shan      2015-02-16  1479  			continue;
2a485ad7c88ddf Gavin Shan      2015-02-16  1480  
2a485ad7c88ddf Gavin Shan      2015-02-16  1481  		rc = opal_pci_next_error(phb->opal_id,
2a485ad7c88ddf Gavin Shan      2015-02-16  1482  					 &frozen_pe_no, &err_type, &severity);
2a485ad7c88ddf Gavin Shan      2015-02-16  1483  		if (rc != OPAL_SUCCESS) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1484  			pr_devel("%s: Invalid return value on "
2a485ad7c88ddf Gavin Shan      2015-02-16  1485  				 "PHB#%x (0x%lx) from opal_pci_next_error",
2a485ad7c88ddf Gavin Shan      2015-02-16  1486  				 __func__, hose->global_number, rc);
2a485ad7c88ddf Gavin Shan      2015-02-16  1487  			continue;
2a485ad7c88ddf Gavin Shan      2015-02-16  1488  		}
2a485ad7c88ddf Gavin Shan      2015-02-16  1489  
2a485ad7c88ddf Gavin Shan      2015-02-16  1490  		/* If the PHB doesn't have error, stop processing */
2a485ad7c88ddf Gavin Shan      2015-02-16  1491  		if (be16_to_cpu(err_type) == OPAL_EEH_NO_ERROR ||
2a485ad7c88ddf Gavin Shan      2015-02-16  1492  		    be16_to_cpu(severity) == OPAL_EEH_SEV_NO_ERROR) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1493  			pr_devel("%s: No error found on PHB#%x\n",
2a485ad7c88ddf Gavin Shan      2015-02-16  1494  				 __func__, hose->global_number);
2a485ad7c88ddf Gavin Shan      2015-02-16  1495  			continue;
2a485ad7c88ddf Gavin Shan      2015-02-16  1496  		}
2a485ad7c88ddf Gavin Shan      2015-02-16  1497  
2a485ad7c88ddf Gavin Shan      2015-02-16  1498  		/*
2a485ad7c88ddf Gavin Shan      2015-02-16  1499  		 * Processing the error. We're expecting the error with
2a485ad7c88ddf Gavin Shan      2015-02-16  1500  		 * highest priority reported upon multiple errors on the
2a485ad7c88ddf Gavin Shan      2015-02-16  1501  		 * specific PHB.
2a485ad7c88ddf Gavin Shan      2015-02-16  1502  		 */
2a485ad7c88ddf Gavin Shan      2015-02-16  1503  		pr_devel("%s: Error (%d, %d, %llu) on PHB#%x\n",
2a485ad7c88ddf Gavin Shan      2015-02-16  1504  			__func__, be16_to_cpu(err_type),
2a485ad7c88ddf Gavin Shan      2015-02-16  1505  			be16_to_cpu(severity), be64_to_cpu(frozen_pe_no),
2a485ad7c88ddf Gavin Shan      2015-02-16  1506  			hose->global_number);
2a485ad7c88ddf Gavin Shan      2015-02-16  1507  		switch (be16_to_cpu(err_type)) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1508  		case OPAL_EEH_IOC_ERROR:
2a485ad7c88ddf Gavin Shan      2015-02-16  1509  			if (be16_to_cpu(severity) == OPAL_EEH_SEV_IOC_DEAD) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1510  				pr_err("EEH: dead IOC detected\n");
2a485ad7c88ddf Gavin Shan      2015-02-16  1511  				ret = EEH_NEXT_ERR_DEAD_IOC;
2a485ad7c88ddf Gavin Shan      2015-02-16  1512  			} else if (be16_to_cpu(severity) == OPAL_EEH_SEV_INF) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1513  				pr_info("EEH: IOC informative error "
2a485ad7c88ddf Gavin Shan      2015-02-16  1514  					"detected\n");
2a485ad7c88ddf Gavin Shan      2015-02-16  1515  				pnv_eeh_get_and_dump_hub_diag(hose);
2a485ad7c88ddf Gavin Shan      2015-02-16  1516  				ret = EEH_NEXT_ERR_NONE;
2a485ad7c88ddf Gavin Shan      2015-02-16  1517  			}
2a485ad7c88ddf Gavin Shan      2015-02-16  1518  
29310e5e860697 Gavin Shan      2013-06-20  1519  			break;
2a485ad7c88ddf Gavin Shan      2015-02-16  1520  		case OPAL_EEH_PHB_ERROR:
2a485ad7c88ddf Gavin Shan      2015-02-16  1521  			if (be16_to_cpu(severity) == OPAL_EEH_SEV_PHB_DEAD) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1522  				*pe = phb_pe;
2a485ad7c88ddf Gavin Shan      2015-02-16  1523  				pr_err("EEH: dead PHB#%x detected, "
2a485ad7c88ddf Gavin Shan      2015-02-16  1524  				       "location: %s\n",
2a485ad7c88ddf Gavin Shan      2015-02-16  1525  					hose->global_number,
2a485ad7c88ddf Gavin Shan      2015-02-16  1526  					eeh_pe_loc_get(phb_pe));
2a485ad7c88ddf Gavin Shan      2015-02-16  1527  				ret = EEH_NEXT_ERR_DEAD_PHB;
2a485ad7c88ddf Gavin Shan      2015-02-16  1528  			} else if (be16_to_cpu(severity) ==
2a485ad7c88ddf Gavin Shan      2015-02-16  1529  				   OPAL_EEH_SEV_PHB_FENCED) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1530  				*pe = phb_pe;
2a485ad7c88ddf Gavin Shan      2015-02-16  1531  				pr_err("EEH: Fenced PHB#%x detected, "
2a485ad7c88ddf Gavin Shan      2015-02-16  1532  				       "location: %s\n",
2a485ad7c88ddf Gavin Shan      2015-02-16  1533  					hose->global_number,
2a485ad7c88ddf Gavin Shan      2015-02-16  1534  					eeh_pe_loc_get(phb_pe));
2a485ad7c88ddf Gavin Shan      2015-02-16  1535  				ret = EEH_NEXT_ERR_FENCED_PHB;
2a485ad7c88ddf Gavin Shan      2015-02-16  1536  			} else if (be16_to_cpu(severity) == OPAL_EEH_SEV_INF) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1537  				pr_info("EEH: PHB#%x informative error "
2a485ad7c88ddf Gavin Shan      2015-02-16  1538  					"detected, location: %s\n",
2a485ad7c88ddf Gavin Shan      2015-02-16  1539  					hose->global_number,
2a485ad7c88ddf Gavin Shan      2015-02-16  1540  					eeh_pe_loc_get(phb_pe));
2a485ad7c88ddf Gavin Shan      2015-02-16  1541  				pnv_eeh_get_phb_diag(phb_pe);
2a485ad7c88ddf Gavin Shan      2015-02-16  1542  				pnv_pci_dump_phb_diag_data(hose, phb_pe->data);
2a485ad7c88ddf Gavin Shan      2015-02-16  1543  				ret = EEH_NEXT_ERR_NONE;
29310e5e860697 Gavin Shan      2013-06-20  1544  			}
29310e5e860697 Gavin Shan      2013-06-20  1545  
2a485ad7c88ddf Gavin Shan      2015-02-16  1546  			break;
2a485ad7c88ddf Gavin Shan      2015-02-16  1547  		case OPAL_EEH_PE_ERROR:
2a485ad7c88ddf Gavin Shan      2015-02-16  1548  			/*
2a485ad7c88ddf Gavin Shan      2015-02-16  1549  			 * If we can't find the corresponding PE, we
2a485ad7c88ddf Gavin Shan      2015-02-16  1550  			 * just try to unfreeze.
2a485ad7c88ddf Gavin Shan      2015-02-16  1551  			 */
2a485ad7c88ddf Gavin Shan      2015-02-16  1552  			if (pnv_eeh_get_pe(hose,
2a485ad7c88ddf Gavin Shan      2015-02-16  1553  				be64_to_cpu(frozen_pe_no), pe)) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1554  				pr_info("EEH: Clear non-existing PHB#%x-PE#%llx\n",
0f36db77643b6f Gavin Shan      2015-05-12  1555  					hose->global_number, be64_to_cpu(frozen_pe_no));
2a485ad7c88ddf Gavin Shan      2015-02-16  1556  				pr_info("EEH: PHB location: %s\n",
2a485ad7c88ddf Gavin Shan      2015-02-16  1557  					eeh_pe_loc_get(phb_pe));
79cd95200035fb Gavin Shan      2015-05-12  1558  
79cd95200035fb Gavin Shan      2015-05-12  1559  				/* Dump PHB diag-data */
79cd95200035fb Gavin Shan      2015-05-12  1560  				rc = opal_pci_get_phb_diag_data2(phb->opal_id,
5cb1f8fdddb747 Russell Currey  2017-06-14  1561  					phb->diag_data, phb->diag_data_size);
79cd95200035fb Gavin Shan      2015-05-12  1562  				if (rc == OPAL_SUCCESS)
79cd95200035fb Gavin Shan      2015-05-12  1563  					pnv_pci_dump_phb_diag_data(hose,
5cb1f8fdddb747 Russell Currey  2017-06-14  1564  							phb->diag_data);
79cd95200035fb Gavin Shan      2015-05-12  1565  
79cd95200035fb Gavin Shan      2015-05-12  1566  				/* Try best to clear it */
2a485ad7c88ddf Gavin Shan      2015-02-16  1567  				opal_pci_eeh_freeze_clear(phb->opal_id,
d63e51b31e0b65 Gavin Shan      2016-08-02  1568  					be64_to_cpu(frozen_pe_no),
2a485ad7c88ddf Gavin Shan      2015-02-16  1569  					OPAL_EEH_ACTION_CLEAR_FREEZE_ALL);
2a485ad7c88ddf Gavin Shan      2015-02-16  1570  				ret = EEH_NEXT_ERR_NONE;
2a485ad7c88ddf Gavin Shan      2015-02-16  1571  			} else if ((*pe)->state & EEH_PE_ISOLATED ||
2a485ad7c88ddf Gavin Shan      2015-02-16  1572  				   eeh_pe_passed(*pe)) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1573  				ret = EEH_NEXT_ERR_NONE;
2a485ad7c88ddf Gavin Shan      2015-02-16  1574  			} else {
2a485ad7c88ddf Gavin Shan      2015-02-16  1575  				pr_err("EEH: Frozen PE#%x "
2a485ad7c88ddf Gavin Shan      2015-02-16  1576  				       "on PHB#%x detected\n",
2a485ad7c88ddf Gavin Shan      2015-02-16  1577  				       (*pe)->addr,
2a485ad7c88ddf Gavin Shan      2015-02-16  1578  					(*pe)->phb->global_number);
2a485ad7c88ddf Gavin Shan      2015-02-16  1579  				pr_err("EEH: PE location: %s, "
2a485ad7c88ddf Gavin Shan      2015-02-16  1580  				       "PHB location: %s\n",
2a485ad7c88ddf Gavin Shan      2015-02-16  1581  				       eeh_pe_loc_get(*pe),
2a485ad7c88ddf Gavin Shan      2015-02-16  1582  				       eeh_pe_loc_get(phb_pe));
2a485ad7c88ddf Gavin Shan      2015-02-16  1583  				ret = EEH_NEXT_ERR_FROZEN_PE;
2a485ad7c88ddf Gavin Shan      2015-02-16  1584  			}
29310e5e860697 Gavin Shan      2013-06-20  1585  
2a485ad7c88ddf Gavin Shan      2015-02-16  1586  			break;
2a485ad7c88ddf Gavin Shan      2015-02-16  1587  		default:
2a485ad7c88ddf Gavin Shan      2015-02-16  1588  			pr_warn("%s: Unexpected error type %d\n",
2a485ad7c88ddf Gavin Shan      2015-02-16  1589  				__func__, be16_to_cpu(err_type));
2a485ad7c88ddf Gavin Shan      2015-02-16  1590  		}
2a485ad7c88ddf Gavin Shan      2015-02-16  1591  
2a485ad7c88ddf Gavin Shan      2015-02-16  1592  		/*
2a485ad7c88ddf Gavin Shan      2015-02-16  1593  		 * EEH core will try recover from fenced PHB or
2a485ad7c88ddf Gavin Shan      2015-02-16  1594  		 * frozen PE. In the time for frozen PE, EEH core
2a485ad7c88ddf Gavin Shan      2015-02-16  1595  		 * enable IO path for that before collecting logs,
2a485ad7c88ddf Gavin Shan      2015-02-16  1596  		 * but it ruins the site. So we have to dump the
2a485ad7c88ddf Gavin Shan      2015-02-16  1597  		 * log in advance here.
2a485ad7c88ddf Gavin Shan      2015-02-16  1598  		 */
2a485ad7c88ddf Gavin Shan      2015-02-16  1599  		if ((ret == EEH_NEXT_ERR_FROZEN_PE  ||
2a485ad7c88ddf Gavin Shan      2015-02-16  1600  		    ret == EEH_NEXT_ERR_FENCED_PHB) &&
2a485ad7c88ddf Gavin Shan      2015-02-16  1601  		    !((*pe)->state & EEH_PE_ISOLATED)) {
e762bb891a294a Sam Bobroff     2018-09-12  1602  			eeh_pe_mark_isolated(*pe);
2a485ad7c88ddf Gavin Shan      2015-02-16  1603  			pnv_eeh_get_phb_diag(*pe);
2a485ad7c88ddf Gavin Shan      2015-02-16  1604  
2a485ad7c88ddf Gavin Shan      2015-02-16  1605  			if (eeh_has_flag(EEH_EARLY_DUMP_LOG))
2a485ad7c88ddf Gavin Shan      2015-02-16  1606  				pnv_pci_dump_phb_diag_data((*pe)->phb,
2a485ad7c88ddf Gavin Shan      2015-02-16  1607  							   (*pe)->data);
2a485ad7c88ddf Gavin Shan      2015-02-16  1608  		}
2a485ad7c88ddf Gavin Shan      2015-02-16  1609  
2a485ad7c88ddf Gavin Shan      2015-02-16  1610  		/*
2a485ad7c88ddf Gavin Shan      2015-02-16  1611  		 * We probably have the frozen parent PE out there and
2a485ad7c88ddf Gavin Shan      2015-02-16  1612  		 * we need have to handle frozen parent PE firstly.
2a485ad7c88ddf Gavin Shan      2015-02-16  1613  		 */
2a485ad7c88ddf Gavin Shan      2015-02-16  1614  		if (ret == EEH_NEXT_ERR_FROZEN_PE) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1615  			parent_pe = (*pe)->parent;
2a485ad7c88ddf Gavin Shan      2015-02-16  1616  			while (parent_pe) {
2a485ad7c88ddf Gavin Shan      2015-02-16  1617  				/* Hit the ceiling ? */
2a485ad7c88ddf Gavin Shan      2015-02-16  1618  				if (parent_pe->type & EEH_PE_PHB)
2a485ad7c88ddf Gavin Shan      2015-02-16  1619  					break;
2a485ad7c88ddf Gavin Shan      2015-02-16  1620  
2a485ad7c88ddf Gavin Shan      2015-02-16  1621  				/* Frozen parent PE ? */
2a485ad7c88ddf Gavin Shan      2015-02-16  1622  				state = eeh_ops->get_state(parent_pe, NULL);
34a286a4ac576d Sam Bobroff     2018-03-19  1623  				if (state > 0 && !eeh_state_active(state))
2a485ad7c88ddf Gavin Shan      2015-02-16  1624  					*pe = parent_pe;
2a485ad7c88ddf Gavin Shan      2015-02-16  1625  
2a485ad7c88ddf Gavin Shan      2015-02-16  1626  				/* Next parent level */
2a485ad7c88ddf Gavin Shan      2015-02-16  1627  				parent_pe = parent_pe->parent;
2a485ad7c88ddf Gavin Shan      2015-02-16  1628  			}
2a485ad7c88ddf Gavin Shan      2015-02-16  1629  
2a485ad7c88ddf Gavin Shan      2015-02-16  1630  			/* We possibly migrate to another PE */
e762bb891a294a Sam Bobroff     2018-09-12  1631  			eeh_pe_mark_isolated(*pe);
2a485ad7c88ddf Gavin Shan      2015-02-16  1632  		}
2a485ad7c88ddf Gavin Shan      2015-02-16  1633  
2a485ad7c88ddf Gavin Shan      2015-02-16  1634  		/*
2a485ad7c88ddf Gavin Shan      2015-02-16  1635  		 * If we have no errors on the specific PHB or only
2a485ad7c88ddf Gavin Shan      2015-02-16  1636  		 * informative error there, we continue poking it.
2a485ad7c88ddf Gavin Shan      2015-02-16  1637  		 * Otherwise, we need actions to be taken by upper
2a485ad7c88ddf Gavin Shan      2015-02-16  1638  		 * layer.
2a485ad7c88ddf Gavin Shan      2015-02-16  1639  		 */
2a485ad7c88ddf Gavin Shan      2015-02-16  1640  		if (ret > EEH_NEXT_ERR_INF)
2a485ad7c88ddf Gavin Shan      2015-02-16  1641  			break;
2a485ad7c88ddf Gavin Shan      2015-02-16  1642  	}
2a485ad7c88ddf Gavin Shan      2015-02-16  1643  
79231448c929cc Alistair Popple 2015-05-15  1644  	/* Unmask the event */
b8d65e9662b1ff Alistair Popple 2015-07-30  1645  	if (ret == EEH_NEXT_ERR_NONE && eeh_enabled())
79231448c929cc Alistair Popple 2015-05-15  1646  		enable_irq(eeh_event_irq);
79231448c929cc Alistair Popple 2015-05-15  1647  
2a485ad7c88ddf Gavin Shan      2015-02-16  1648  	return ret;
29310e5e860697 Gavin Shan      2013-06-20  1649  }
29310e5e860697 Gavin Shan      2013-06-20  1650  

:::::: The code at line 1454 was first introduced by commit
:::::: 01f3bfb7804ae20aaf66884cf537f7dc2cdc1671 powerpc/powernv: Shorten EEH function names

:::::: TO: Gavin Shan <gwshan@linux.vnet.ibm.com>
:::::: CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105031135.4eWRJHtF-lkp%40intel.com.

--MGYHOYXEY6WxJCY8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPtjj2AAAy5jb25maWcAlFxbc+M2sn7Pr1BNXnYfkvg+M3vKDyAJiliRBAcgJcsvKI2s
mfjEtryyJpv8+9MN8AKAoGZOqjYboRuNW6P760bTP//084x8O+6fN8fH7ebp6e/Z193L7rA5
7h5mXx6fdv8zS/is5PWMJqz+FZjzx5dvf/32uv/v7vC6nV3/+vHXs18O24vZYnd42T3N4v3L
l8ev30DA4/7lp59/inmZsrmKY7WkQjJeqpre1bfvtk+bl6+zP3eHN+CbnV/+evbr2ewfXx+P
//rtN/j38+PhsD/89vT057N6Pez/d7c9zj58ud5cbK4/XN5stx92V9vzh92Xi88Pu89nFxe7
95+vPt7cXFxeXX7857tu1Pkw7O1Z15gn4zbgY1LFOSnnt39bjNCY58nQpDn67ueXZ/CPJSMj
UhFZqDmvudXJJSje1FVTB+mszFlJLRIvZS2auOZCDq1MfFIrLhZDS9SwPKlZQVVNopwqyYU1
QJ0JSmAxZcrhX8AisSsczs+zuT7sp9nb7vjtdTguVrJa0XKpiIB9YAWrby8vgL2fVlExGKam
sp49vs1e9keU0G8cj0nebdK7d0M/m6BIU/NAZ70UJUleY9e2MSNLqhZUlDRX83tWDWuzKXf3
Q7vL3M+g5wyMnNCUNHmtF2+N3TVnXNYlKejtu3+87F92/7TWJddyyarYltnTKi7ZnSo+NbSh
QYYVqeNMjejdVgsupSpowcVakbomcWavp5E0Z1GgH2ngvnrbRAQMpAkwYTiJfKB7rVo3QM1m
b98+v/39dtw9D7oxpyUVLNZaKDO+GoT4FJXTJc3D9ILNBalRQaw5igRIUsmVElTSMgl3jTNb
AbAl4QVhpdsmWRFiUhmjAjdiPRZeSIack4TgOCkXMU3aO8Zs+yErIiRtJfYnZq8koVEzT6Wr
FruXh9n+i7f7/oz0XV+OjrEjx3DTFrD5ZW2ZDX38aGlqFi9UJDhJYiLrk71PshVcqqZKSE07
lakfn8Gih7Qmu1cV9OIJi+3dKDlSWJKH74Yhp02eh64GL9GXqFqQeGF23rJQLs0c0/QYQUrG
5hlqot5tET6m0Yqtmy8oLaoaBihDN7sjL3nelDURa3v+LdHupjc4rprf6s3bH7MjjDvbwBze
jpvj22yz3e6/vRwfX74OW75kolbQQZE45jCEt0VaC1xycBcCYlQJV3cZWlSIGfTFvTJaeZ1J
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
gLjhEbNs1Lu1raIl/gu9oiVojq0BAA==

--MGYHOYXEY6WxJCY8--
