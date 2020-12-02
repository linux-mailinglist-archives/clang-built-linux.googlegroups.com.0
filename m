Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNF2TX7AKGQEAGK6GOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC072CB8A1
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 10:24:05 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id r124sf759130qkd.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 01:24:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606901044; cv=pass;
        d=google.com; s=arc-20160816;
        b=mvFAhNWpATsSxybzcG6+K7JUjedU14uRdJMCg6lBecmtjNkDg0domFS6JE7HleTy5Q
         Wn2d1pzDn9GFNVSQRtlAZEb4PsPRluqdzSLDczSOWPxO4cZY0BC7HT13PTeVHHwMDB5k
         QF3R9NufU5qgTAm7f5zTwRQlJVQFuM27FA+gHiegSpeDjgVMpE1bxKmaRcbIHyPuAXnW
         CJIuAi+o4B7sPtGBxIpTc3yC3h5ju4OWumAtr4XFdnW5v4BGPErE6TDhkUnWFgbd+1nt
         /Bs7mftbHXrLIbOzsYWslGTFnUwBzsT3wyEby7yFGWJEpf+U9QiG2ybaXpCoFuSJqPzu
         CUSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=lXO1knRx04DsO0bvutIilNX+VcHDZDKKtwByE3xw5eY=;
        b=tWVzu0eDLwgPNKNGfV9RqnzRCcBaO8uomLcScAJyezvP/Ti87pY0fAUxTHZsItWxmW
         NysXGOVOYXud1vDgsHjtpdXm3YjjVH+FeT905ytYj6pk9+1X4rqxGpb7PWfwJain6Zqu
         Ff5GgL6P6/zGMZIdLAW254S4hi/kDZCRJPQgF83z4ma1qSVFoACNZmNnvvVDqvYRdKp2
         uiLR8crqk6rav7FdvM5dByLvprJaftDfkcGU0fBhcDT5GRDb7G6ddSHdUhaewq7g79W8
         C7gPUWlXPPzbTF/J6kr9NV73Lk3oDunyx3at0RCuazl1N3ON/7R5SWY+3Al2p6BBebO8
         NF4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lXO1knRx04DsO0bvutIilNX+VcHDZDKKtwByE3xw5eY=;
        b=qvzrhuAAWUj+wkCzYkzneWe4LHj2wWX5192+H2YVrgZyDimr6v58CZtYNJgHxemTM9
         KD8NA1njYKR+0f86KKwot47zq3jmTLxI38jbAfok+T+ds867UVhIraywmUHpvbOHs9Wn
         obfBVDzuv9B6n60yN3sCwdd5O5Xe2ipwadf/3xpS1mJz6EMUqrGEMYxfuK3Nh2ym+aTB
         AG+VkuGrcHNx1C3lDlgkfoQBK9r3/stDZdG91E2tvpLEddhOxZETimI5kaLw7Zt/MCG1
         z2fT6MxRl2cXUhOML+Bk1xle1xueZkDbjXHp63/cokqk8/pmNejnNMWo8iuKmr4V1SAE
         lKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lXO1knRx04DsO0bvutIilNX+VcHDZDKKtwByE3xw5eY=;
        b=ZoScAEYBPdkJ92MVKUMNLsXxD1LL3ljD00wwOteWgA1mTzBAeAvSZIAQXxnNrbiqnh
         BDN/0ZVIkl/OX+rm/5OWJNbLzAZ0aWAA5i1poD7ihIKnFagXfOHqTjB4Lf8xyObG06s/
         TWoB9yi231uJe/CNwAoFH1Wa6fPPWLNuKb2vnqpuQ3qME5v/Qt2XxhgBrUc5nlO7KsrC
         yxS+Z8OomPMWKVzBbdXJ3bi5RRq15HYBl9DBZmFsRs3jJ5aJ1L4kIie518Dyj3tDu+02
         DHbKYEl8DddXfqv4SVGpg5sBP+SP3gO1C3jRadRyBj7Gg9ka8d8laYNRhvM+r6ISp3qN
         xzSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oz54nndOhkQZsAwOMUrAFLKV7OLnCSE23fftLqHuHsOi4784g
	U7Waas5RYndaaF8i/UONRPQ=
X-Google-Smtp-Source: ABdhPJzEG9kmz+JpU3t94x43Oq80TM6JH7rzXNvRSCXzvAJUXHOQILpxxV3Iz8mLsbe82Sd0b/e68A==
X-Received: by 2002:a0c:a9d0:: with SMTP id c16mr1436247qvb.5.1606901044360;
        Wed, 02 Dec 2020 01:24:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7196:: with SMTP id w22ls423539qto.6.gmail; Wed, 02 Dec
 2020 01:24:04 -0800 (PST)
X-Received: by 2002:ac8:580c:: with SMTP id g12mr1731077qtg.340.1606901043873;
        Wed, 02 Dec 2020 01:24:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606901043; cv=none;
        d=google.com; s=arc-20160816;
        b=aAUDLqkFtrdFxq44Cfu8ZXOF9aYLWLrLm9LkAAYfsaBQY7ON2RdadMFZ42yVrft7HR
         lb6Dd135ROSM/k5POydIIyyErcDU1gonf6EFAJjQJGgPvpYjR0C3dE61MXN7qwfMHR6Q
         CHAAgT0jzLrEkgsN652qUHH+sQAdi8jUb0oNXIltm3IY0kKYs1haPrHhLORjXCEvKNms
         J9N9fBFILqEkBhj+WSqgAzHf4V5mcLsF5nGyDon8JjwBw1upQoHWubrHXO9U1HYkIg5a
         F9XOWLFDnz1IHEdfYysqh4s4x8A5jfpMC88icSwHcE5UeZ/zV57JD3z2fXDl2esV+3KR
         XXsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=8XFQuTKCLAOu0+13aftJYxgZXOTktwweIYq8M298kkw=;
        b=HF/ACV/g69fgJOP9Xyts1yc+bqAk6ou0Ev792dTCbMZUTtzCTO9ZRhO3X3jlSg+RPb
         Mcym4swInZvLH1nr0R2jlrnTR2RnMgN7zs/UZ40nWuPSL4JXAOwVpJ8h1O/fmAlH8s25
         QqE9I3Kvp1OV1Owo7S0zCmJDGia1QUPDdPm+wwvlzRbuKtM3zmBrvQK8OD/LIwM7OLEP
         A+ZVM02NCLTsi5Hew3myNuHwVTmuNtEB6KsD/+0lHz3zrWhzI4QFhrZogSylrmPVBNmD
         jiwI6sXRGLebvVtXFJuX9ykPEitFS4hPRn3vr0G6bZC3PbARVnh4tSnwPIs7r1c7B6of
         sMuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id k54si123531qtk.4.2020.12.02.01.24.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Dec 2020 01:24:03 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: lUrf9RTDOhKePAwGDiwlILbfGYYZNpGEDtB7f+8lj5noitXDyD0qHN3WgJeV1f+JJw3/8LtYs/
 o86Pe+Sy/XYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="152242287"
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; 
   d="gz'50?scan'50,208,50";a="152242287"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Dec 2020 01:24:01 -0800
IronPort-SDR: dZL74JOvn2Ip9sLd6iP/40DLiF45/UW7gC8c/uogaHc2q9mBlme8xUz293/Ra0hJ0kd0Fa8TaB
 OBHHM/gMULBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; 
   d="gz'50?scan'50,208,50";a="549974038"
Received: from lkp-server01.sh.intel.com (HELO 54133fc185c3) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 02 Dec 2020 01:23:58 -0800
Received: from kbuild by 54133fc185c3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kkOMg-000031-8x; Wed, 02 Dec 2020 09:23:58 +0000
Date: Wed, 2 Dec 2020 17:23:16 +0800
From: kernel test robot <lkp@intel.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [linux-stable-rc:linux-5.4.y 4127/5583]
 drivers/staging/octeon/ethernet-tx.c:358:2: error: implicit declaration of
 function 'skb_reset_tc'
Message-ID: <202012021706.3FGjX7dC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
head:   12a5ce113626ce8208aef76d4d2e9fc93ea48ddf
commit: f8c60f7a00516820589c4c9da5614e4b7f4d0b2f [4127/5583] net: Fix CONFIG_NET_CLS_ACT=n and CONFIG_NFT_FWD_NETDEV={y, m} build
config: x86_64-randconfig-a016-20201202 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 2671fccf0381769276ca8246ec0499adcb9b0355)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=f8c60f7a00516820589c4c9da5614e4b7f4d0b2f
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.4.y
        git checkout f8c60f7a00516820589c4c9da5614e4b7f4d0b2f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging/octeon/ethernet-tx.c:358:2: error: implicit declaration of function 'skb_reset_tc' [-Werror,-Wimplicit-function-declaration]
           skb_reset_tc(skb);
           ^
   drivers/staging/octeon/ethernet-tx.c:358:2: note: did you mean 'skb_reserve'?
   include/linux/skbuff.h:2340:20: note: 'skb_reserve' declared here
   static inline void skb_reserve(struct sk_buff *skb, int len)
                      ^
   1 error generated.

vim +/skb_reset_tc +358 drivers/staging/octeon/ethernet-tx.c

80ff0fd3ab64514 David Daney             2009-05-05  146  
80ff0fd3ab64514 David Daney             2009-05-05  147  	/*
215c47c931d2e22 Justin P. Mattock       2012-03-26  148  	 * Prefetch the private data structure.  It is larger than the
215c47c931d2e22 Justin P. Mattock       2012-03-26  149  	 * one cache line.
80ff0fd3ab64514 David Daney             2009-05-05  150  	 */
80ff0fd3ab64514 David Daney             2009-05-05  151  	prefetch(priv);
80ff0fd3ab64514 David Daney             2009-05-05  152  
80ff0fd3ab64514 David Daney             2009-05-05  153  	/*
80ff0fd3ab64514 David Daney             2009-05-05  154  	 * The check on CVMX_PKO_QUEUES_PER_PORT_* is designed to
80ff0fd3ab64514 David Daney             2009-05-05  155  	 * completely remove "qos" in the event neither interface
80ff0fd3ab64514 David Daney             2009-05-05  156  	 * supports multiple queues per port.
80ff0fd3ab64514 David Daney             2009-05-05  157  	 */
80ff0fd3ab64514 David Daney             2009-05-05  158  	if ((CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1) ||
80ff0fd3ab64514 David Daney             2009-05-05  159  	    (CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1)) {
80ff0fd3ab64514 David Daney             2009-05-05  160  		qos = GET_SKBUFF_QOS(skb);
80ff0fd3ab64514 David Daney             2009-05-05  161  		if (qos <= 0)
80ff0fd3ab64514 David Daney             2009-05-05  162  			qos = 0;
80ff0fd3ab64514 David Daney             2009-05-05  163  		else if (qos >= cvmx_pko_get_num_queues(priv->port))
80ff0fd3ab64514 David Daney             2009-05-05  164  			qos = 0;
32680d9319ad7ee Laura Garcia Liebana    2016-02-28  165  	} else {
80ff0fd3ab64514 David Daney             2009-05-05  166  		qos = 0;
32680d9319ad7ee Laura Garcia Liebana    2016-02-28  167  	}
80ff0fd3ab64514 David Daney             2009-05-05  168  
80ff0fd3ab64514 David Daney             2009-05-05  169  	if (USE_ASYNC_IOBDMA) {
80ff0fd3ab64514 David Daney             2009-05-05  170  		/* Save scratch in case userspace is using it */
80ff0fd3ab64514 David Daney             2009-05-05  171  		CVMX_SYNCIOBDMA;
80ff0fd3ab64514 David Daney             2009-05-05  172  		old_scratch = cvmx_scratch_read64(CVMX_SCR_SCRATCH);
80ff0fd3ab64514 David Daney             2009-05-05  173  		old_scratch2 = cvmx_scratch_read64(CVMX_SCR_SCRATCH + 8);
80ff0fd3ab64514 David Daney             2009-05-05  174  
80ff0fd3ab64514 David Daney             2009-05-05  175  		/*
a620c1632629b42 David Daney             2009-06-23  176  		 * Fetch and increment the number of packets to be
a620c1632629b42 David Daney             2009-06-23  177  		 * freed.
80ff0fd3ab64514 David Daney             2009-05-05  178  		 */
80ff0fd3ab64514 David Daney             2009-05-05  179  		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH + 8,
80ff0fd3ab64514 David Daney             2009-05-05  180  					       FAU_NUM_PACKET_BUFFERS_TO_FREE,
80ff0fd3ab64514 David Daney             2009-05-05  181  					       0);
80ff0fd3ab64514 David Daney             2009-05-05  182  		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH,
a620c1632629b42 David Daney             2009-06-23  183  					       priv->fau + qos * 4,
a620c1632629b42 David Daney             2009-06-23  184  					       MAX_SKB_TO_FREE);
80ff0fd3ab64514 David Daney             2009-05-05  185  	}
80ff0fd3ab64514 David Daney             2009-05-05  186  
924cc2680fbe181 David Daney             2010-01-07  187  	/*
924cc2680fbe181 David Daney             2010-01-07  188  	 * We have space for 6 segment pointers, If there will be more
924cc2680fbe181 David Daney             2010-01-07  189  	 * than that, we must linearize.
924cc2680fbe181 David Daney             2010-01-07  190  	 */
924cc2680fbe181 David Daney             2010-01-07  191  	if (unlikely(skb_shinfo(skb)->nr_frags > 5)) {
924cc2680fbe181 David Daney             2010-01-07  192  		if (unlikely(__skb_linearize(skb))) {
924cc2680fbe181 David Daney             2010-01-07  193  			queue_type = QUEUE_DROP;
924cc2680fbe181 David Daney             2010-01-07  194  			if (USE_ASYNC_IOBDMA) {
a012649d6b6ddba Ebru Akagunduz          2013-10-10  195  				/*
a012649d6b6ddba Ebru Akagunduz          2013-10-10  196  				 * Get the number of skbuffs in use
a012649d6b6ddba Ebru Akagunduz          2013-10-10  197  				 * by the hardware
a012649d6b6ddba Ebru Akagunduz          2013-10-10  198  				 */
924cc2680fbe181 David Daney             2010-01-07  199  				CVMX_SYNCIOBDMA;
a012649d6b6ddba Ebru Akagunduz          2013-10-10  200  				skb_to_free =
a012649d6b6ddba Ebru Akagunduz          2013-10-10  201  					cvmx_scratch_read64(CVMX_SCR_SCRATCH);
924cc2680fbe181 David Daney             2010-01-07  202  			} else {
a012649d6b6ddba Ebru Akagunduz          2013-10-10  203  				/*
a012649d6b6ddba Ebru Akagunduz          2013-10-10  204  				 * Get the number of skbuffs in use
a012649d6b6ddba Ebru Akagunduz          2013-10-10  205  				 * by the hardware
a012649d6b6ddba Ebru Akagunduz          2013-10-10  206  				 */
715a7148d774fac Branden Bonaby          2019-03-11  207  				skb_to_free =
715a7148d774fac Branden Bonaby          2019-03-11  208  				     cvmx_fau_fetch_and_add32(priv->fau +
715a7148d774fac Branden Bonaby          2019-03-11  209  							      qos * 4,
715a7148d774fac Branden Bonaby          2019-03-11  210  							      MAX_SKB_TO_FREE);
924cc2680fbe181 David Daney             2010-01-07  211  			}
a012649d6b6ddba Ebru Akagunduz          2013-10-10  212  			skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
ac05a587c8a7b6a Laura Garcia Liebana    2016-03-12  213  								 priv->fau +
ac05a587c8a7b6a Laura Garcia Liebana    2016-03-12  214  								 qos * 4);
924cc2680fbe181 David Daney             2010-01-07  215  			spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
924cc2680fbe181 David Daney             2010-01-07  216  			goto skip_xmit;
924cc2680fbe181 David Daney             2010-01-07  217  		}
924cc2680fbe181 David Daney             2010-01-07  218  	}
924cc2680fbe181 David Daney             2010-01-07  219  
80ff0fd3ab64514 David Daney             2009-05-05  220  	/*
80ff0fd3ab64514 David Daney             2009-05-05  221  	 * The CN3XXX series of parts has an errata (GMX-401) which
80ff0fd3ab64514 David Daney             2009-05-05  222  	 * causes the GMX block to hang if a collision occurs towards
80ff0fd3ab64514 David Daney             2009-05-05  223  	 * the end of a <68 byte packet. As a workaround for this, we
80ff0fd3ab64514 David Daney             2009-05-05  224  	 * pad packets to be 68 bytes whenever we are in half duplex
80ff0fd3ab64514 David Daney             2009-05-05  225  	 * mode. We don't handle the case of having a small packet but
80ff0fd3ab64514 David Daney             2009-05-05  226  	 * no room to add the padding.  The kernel should always give
80ff0fd3ab64514 David Daney             2009-05-05  227  	 * us at least a cache line
80ff0fd3ab64514 David Daney             2009-05-05  228  	 */
80ff0fd3ab64514 David Daney             2009-05-05  229  	if ((skb->len < 64) && OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
80ff0fd3ab64514 David Daney             2009-05-05  230  		union cvmx_gmxx_prtx_cfg gmx_prt_cfg;
80ff0fd3ab64514 David Daney             2009-05-05  231  		int interface = INTERFACE(priv->port);
80ff0fd3ab64514 David Daney             2009-05-05  232  		int index = INDEX(priv->port);
80ff0fd3ab64514 David Daney             2009-05-05  233  
80ff0fd3ab64514 David Daney             2009-05-05  234  		if (interface < 2) {
80ff0fd3ab64514 David Daney             2009-05-05  235  			/* We only need to pad packet in half duplex mode */
80ff0fd3ab64514 David Daney             2009-05-05  236  			gmx_prt_cfg.u64 =
80ff0fd3ab64514 David Daney             2009-05-05  237  			    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
80ff0fd3ab64514 David Daney             2009-05-05  238  			if (gmx_prt_cfg.s.duplex == 0) {
80ff0fd3ab64514 David Daney             2009-05-05  239  				int add_bytes = 64 - skb->len;
b9fc9cf29e5d5a5 Roberto Medina          2014-10-08  240  
80ff0fd3ab64514 David Daney             2009-05-05  241  				if ((skb_tail_pointer(skb) + add_bytes) <=
80ff0fd3ab64514 David Daney             2009-05-05  242  				    skb_end_pointer(skb))
de77b966ce8adcb yuan linyu              2017-06-18  243  					__skb_put_zero(skb, add_bytes);
80ff0fd3ab64514 David Daney             2009-05-05  244  			}
80ff0fd3ab64514 David Daney             2009-05-05  245  		}
80ff0fd3ab64514 David Daney             2009-05-05  246  	}
80ff0fd3ab64514 David Daney             2009-05-05  247  
80ff0fd3ab64514 David Daney             2009-05-05  248  	/* Build the PKO command */
80ff0fd3ab64514 David Daney             2009-05-05  249  	pko_command.u64 = 0;
8a5cc923af4298e Paul Martin             2015-03-30  250  #ifdef __LITTLE_ENDIAN
8a5cc923af4298e Paul Martin             2015-03-30  251  	pko_command.s.le = 1;
8a5cc923af4298e Paul Martin             2015-03-30  252  #endif
80ff0fd3ab64514 David Daney             2009-05-05  253  	pko_command.s.n2 = 1;	/* Don't pollute L2 with the outgoing packet */
80ff0fd3ab64514 David Daney             2009-05-05  254  	pko_command.s.segs = 1;
80ff0fd3ab64514 David Daney             2009-05-05  255  	pko_command.s.total_bytes = skb->len;
80ff0fd3ab64514 David Daney             2009-05-05  256  	pko_command.s.size0 = CVMX_FAU_OP_SIZE_32;
80ff0fd3ab64514 David Daney             2009-05-05  257  	pko_command.s.subone0 = 1;
80ff0fd3ab64514 David Daney             2009-05-05  258  
80ff0fd3ab64514 David Daney             2009-05-05  259  	pko_command.s.dontfree = 1;
924cc2680fbe181 David Daney             2010-01-07  260  
924cc2680fbe181 David Daney             2010-01-07  261  	/* Build the PKO buffer pointer */
924cc2680fbe181 David Daney             2010-01-07  262  	hw_buffer.u64 = 0;
924cc2680fbe181 David Daney             2010-01-07  263  	if (skb_shinfo(skb)->nr_frags == 0) {
7d4dea95f8281fc Geert Uytterhoeven      2019-09-19  264  		hw_buffer.s.addr = XKPHYS_TO_PHYS((uintptr_t)skb->data);
924cc2680fbe181 David Daney             2010-01-07  265  		hw_buffer.s.pool = 0;
924cc2680fbe181 David Daney             2010-01-07  266  		hw_buffer.s.size = skb->len;
924cc2680fbe181 David Daney             2010-01-07  267  	} else {
7d4dea95f8281fc Geert Uytterhoeven      2019-09-19  268  		hw_buffer.s.addr = XKPHYS_TO_PHYS((uintptr_t)skb->data);
924cc2680fbe181 David Daney             2010-01-07  269  		hw_buffer.s.pool = 0;
924cc2680fbe181 David Daney             2010-01-07  270  		hw_buffer.s.size = skb_headlen(skb);
924cc2680fbe181 David Daney             2010-01-07  271  		CVM_OCT_SKB_CB(skb)[0] = hw_buffer.u64;
924cc2680fbe181 David Daney             2010-01-07  272  		for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
d7840976e391566 Matthew Wilcox (Oracle  2019-07-22  273) 			skb_frag_t *fs = skb_shinfo(skb)->frags + i;
b9fc9cf29e5d5a5 Roberto Medina          2014-10-08  274  
715a7148d774fac Branden Bonaby          2019-03-11  275  			hw_buffer.s.addr =
7d4dea95f8281fc Geert Uytterhoeven      2019-09-19  276  				XKPHYS_TO_PHYS((uintptr_t)skb_frag_address(fs));
1fbf400b58fa70c David S. Miller         2019-07-26  277  			hw_buffer.s.size = skb_frag_size(fs);
924cc2680fbe181 David Daney             2010-01-07  278  			CVM_OCT_SKB_CB(skb)[i + 1] = hw_buffer.u64;
924cc2680fbe181 David Daney             2010-01-07  279  		}
7d4dea95f8281fc Geert Uytterhoeven      2019-09-19  280  		hw_buffer.s.addr =
7d4dea95f8281fc Geert Uytterhoeven      2019-09-19  281  			XKPHYS_TO_PHYS((uintptr_t)CVM_OCT_SKB_CB(skb));
924cc2680fbe181 David Daney             2010-01-07  282  		hw_buffer.s.size = skb_shinfo(skb)->nr_frags + 1;
924cc2680fbe181 David Daney             2010-01-07  283  		pko_command.s.segs = skb_shinfo(skb)->nr_frags + 1;
924cc2680fbe181 David Daney             2010-01-07  284  		pko_command.s.gather = 1;
924cc2680fbe181 David Daney             2010-01-07  285  		goto dont_put_skbuff_in_hw;
924cc2680fbe181 David Daney             2010-01-07  286  	}
924cc2680fbe181 David Daney             2010-01-07  287  
80ff0fd3ab64514 David Daney             2009-05-05  288  	/*
80ff0fd3ab64514 David Daney             2009-05-05  289  	 * See if we can put this skb in the FPA pool. Any strange
80ff0fd3ab64514 David Daney             2009-05-05  290  	 * behavior from the Linux networking stack will most likely
80ff0fd3ab64514 David Daney             2009-05-05  291  	 * be caused by a bug in the following code. If some field is
215c47c931d2e22 Justin P. Mattock       2012-03-26  292  	 * in use by the network stack and gets carried over when a
215c47c931d2e22 Justin P. Mattock       2012-03-26  293  	 * buffer is reused, bad things may happen.  If in doubt and
80ff0fd3ab64514 David Daney             2009-05-05  294  	 * you dont need the absolute best performance, disable the
80ff0fd3ab64514 David Daney             2009-05-05  295  	 * define REUSE_SKBUFFS_WITHOUT_FREE. The reuse of buffers has
80ff0fd3ab64514 David Daney             2009-05-05  296  	 * shown a 25% increase in performance under some loads.
80ff0fd3ab64514 David Daney             2009-05-05  297  	 */
80ff0fd3ab64514 David Daney             2009-05-05  298  #if REUSE_SKBUFFS_WITHOUT_FREE
166bdaa9aad9903 David Daney             2010-01-27  299  	fpa_head = skb->head + 256 - ((unsigned long)skb->head & 0x7f);
80ff0fd3ab64514 David Daney             2009-05-05  300  	if (unlikely(skb->data < fpa_head)) {
b4ede7922e82f95 Laura Garcia Liebana    2016-02-28  301  		/* TX buffer beginning can't meet FPA alignment constraints */
80ff0fd3ab64514 David Daney             2009-05-05  302  		goto dont_put_skbuff_in_hw;
80ff0fd3ab64514 David Daney             2009-05-05  303  	}
80ff0fd3ab64514 David Daney             2009-05-05  304  	if (unlikely
80ff0fd3ab64514 David Daney             2009-05-05  305  	    ((skb_end_pointer(skb) - fpa_head) < CVMX_FPA_PACKET_POOL_SIZE)) {
b4ede7922e82f95 Laura Garcia Liebana    2016-02-28  306  		/* TX buffer isn't large enough for the FPA */
80ff0fd3ab64514 David Daney             2009-05-05  307  		goto dont_put_skbuff_in_hw;
80ff0fd3ab64514 David Daney             2009-05-05  308  	}
80ff0fd3ab64514 David Daney             2009-05-05  309  	if (unlikely(skb_shared(skb))) {
b4ede7922e82f95 Laura Garcia Liebana    2016-02-28  310  		/* TX buffer sharing data with someone else */
80ff0fd3ab64514 David Daney             2009-05-05  311  		goto dont_put_skbuff_in_hw;
80ff0fd3ab64514 David Daney             2009-05-05  312  	}
80ff0fd3ab64514 David Daney             2009-05-05  313  	if (unlikely(skb_cloned(skb))) {
b4ede7922e82f95 Laura Garcia Liebana    2016-02-28  314  		/* TX buffer has been cloned */
80ff0fd3ab64514 David Daney             2009-05-05  315  		goto dont_put_skbuff_in_hw;
80ff0fd3ab64514 David Daney             2009-05-05  316  	}
80ff0fd3ab64514 David Daney             2009-05-05  317  	if (unlikely(skb_header_cloned(skb))) {
b4ede7922e82f95 Laura Garcia Liebana    2016-02-28  318  		/* TX buffer header has been cloned */
80ff0fd3ab64514 David Daney             2009-05-05  319  		goto dont_put_skbuff_in_hw;
80ff0fd3ab64514 David Daney             2009-05-05  320  	}
80ff0fd3ab64514 David Daney             2009-05-05  321  	if (unlikely(skb->destructor)) {
b4ede7922e82f95 Laura Garcia Liebana    2016-02-28  322  		/* TX buffer has a destructor */
80ff0fd3ab64514 David Daney             2009-05-05  323  		goto dont_put_skbuff_in_hw;
80ff0fd3ab64514 David Daney             2009-05-05  324  	}
80ff0fd3ab64514 David Daney             2009-05-05  325  	if (unlikely(skb_shinfo(skb)->nr_frags)) {
b4ede7922e82f95 Laura Garcia Liebana    2016-02-28  326  		/* TX buffer has fragments */
80ff0fd3ab64514 David Daney             2009-05-05  327  		goto dont_put_skbuff_in_hw;
80ff0fd3ab64514 David Daney             2009-05-05  328  	}
80ff0fd3ab64514 David Daney             2009-05-05  329  	if (unlikely
80ff0fd3ab64514 David Daney             2009-05-05  330  	    (skb->truesize !=
ec47ea824774046 Alexander Duyck         2012-05-04  331  	     sizeof(*skb) + skb_end_offset(skb))) {
b4ede7922e82f95 Laura Garcia Liebana    2016-02-28  332  		/* TX buffer truesize has been changed */
80ff0fd3ab64514 David Daney             2009-05-05  333  		goto dont_put_skbuff_in_hw;
80ff0fd3ab64514 David Daney             2009-05-05  334  	}
80ff0fd3ab64514 David Daney             2009-05-05  335  
80ff0fd3ab64514 David Daney             2009-05-05  336  	/*
80ff0fd3ab64514 David Daney             2009-05-05  337  	 * We can use this buffer in the FPA.  We don't need the FAU
80ff0fd3ab64514 David Daney             2009-05-05  338  	 * update anymore
80ff0fd3ab64514 David Daney             2009-05-05  339  	 */
80ff0fd3ab64514 David Daney             2009-05-05  340  	pko_command.s.dontfree = 0;
80ff0fd3ab64514 David Daney             2009-05-05  341  
a012649d6b6ddba Ebru Akagunduz          2013-10-10  342  	hw_buffer.s.back = ((unsigned long)skb->data >> 7) -
a012649d6b6ddba Ebru Akagunduz          2013-10-10  343  			   ((unsigned long)fpa_head >> 7);
a012649d6b6ddba Ebru Akagunduz          2013-10-10  344  
80ff0fd3ab64514 David Daney             2009-05-05  345  	*(struct sk_buff **)(fpa_head - sizeof(void *)) = skb;
80ff0fd3ab64514 David Daney             2009-05-05  346  
80ff0fd3ab64514 David Daney             2009-05-05  347  	/*
80ff0fd3ab64514 David Daney             2009-05-05  348  	 * The skbuff will be reused without ever being freed. We must
f696a10838ffab8 David Daney             2009-06-23  349  	 * cleanup a bunch of core things.
80ff0fd3ab64514 David Daney             2009-05-05  350  	 */
f696a10838ffab8 David Daney             2009-06-23  351  	dst_release(skb_dst(skb));
f696a10838ffab8 David Daney             2009-06-23  352  	skb_dst_set(skb, NULL);
895b5c9f206eb7d Florian Westphal        2019-09-29  353  	skb_ext_reset(skb);
895b5c9f206eb7d Florian Westphal        2019-09-29  354  	nf_reset_ct(skb);
80ff0fd3ab64514 David Daney             2009-05-05  355  
80ff0fd3ab64514 David Daney             2009-05-05  356  #ifdef CONFIG_NET_SCHED
80ff0fd3ab64514 David Daney             2009-05-05  357  	skb->tc_index = 0;
a5135bcfba73450 Willem de Bruijn        2017-01-07 @358  	skb_reset_tc(skb);
80ff0fd3ab64514 David Daney             2009-05-05  359  #endif /* CONFIG_NET_SCHED */
6888fc87768eaa2 David Daney             2010-01-07  360  #endif /* REUSE_SKBUFFS_WITHOUT_FREE */
80ff0fd3ab64514 David Daney             2009-05-05  361  
80ff0fd3ab64514 David Daney             2009-05-05  362  dont_put_skbuff_in_hw:
80ff0fd3ab64514 David Daney             2009-05-05  363  
80ff0fd3ab64514 David Daney             2009-05-05  364  	/* Check if we can use the hardware checksumming */
6646baf7041214a Aaro Koskinen           2015-04-04  365  	if ((skb->protocol == htons(ETH_P_IP)) &&
861e82d5b5a42d2 Jacob Kiefer            2015-07-10  366  	    (ip_hdr(skb)->version == 4) &&
861e82d5b5a42d2 Jacob Kiefer            2015-07-10  367  	    (ip_hdr(skb)->ihl == 5) &&
861e82d5b5a42d2 Jacob Kiefer            2015-07-10  368  	    ((ip_hdr(skb)->frag_off == 0) ||
861e82d5b5a42d2 Jacob Kiefer            2015-07-10  369  	     (ip_hdr(skb)->frag_off == htons(1 << 14))) &&
861e82d5b5a42d2 Jacob Kiefer            2015-07-10  370  	    ((ip_hdr(skb)->protocol == IPPROTO_TCP) ||
861e82d5b5a42d2 Jacob Kiefer            2015-07-10  371  	     (ip_hdr(skb)->protocol == IPPROTO_UDP))) {
80ff0fd3ab64514 David Daney             2009-05-05  372  		/* Use hardware checksum calc */
5a89a875c96a9d0 Hamish Martin           2015-12-22  373  		pko_command.s.ipoffp1 = skb_network_offset(skb) + 1;
80ff0fd3ab64514 David Daney             2009-05-05  374  	}
80ff0fd3ab64514 David Daney             2009-05-05  375  
80ff0fd3ab64514 David Daney             2009-05-05  376  	if (USE_ASYNC_IOBDMA) {
80ff0fd3ab64514 David Daney             2009-05-05  377  		/* Get the number of skbuffs in use by the hardware */
80ff0fd3ab64514 David Daney             2009-05-05  378  		CVMX_SYNCIOBDMA;
a620c1632629b42 David Daney             2009-06-23  379  		skb_to_free = cvmx_scratch_read64(CVMX_SCR_SCRATCH);
80ff0fd3ab64514 David Daney             2009-05-05  380  		buffers_to_free = cvmx_scratch_read64(CVMX_SCR_SCRATCH + 8);
80ff0fd3ab64514 David Daney             2009-05-05  381  	} else {
80ff0fd3ab64514 David Daney             2009-05-05  382  		/* Get the number of skbuffs in use by the hardware */
a620c1632629b42 David Daney             2009-06-23  383  		skb_to_free = cvmx_fau_fetch_and_add32(priv->fau + qos * 4,
a620c1632629b42 David Daney             2009-06-23  384  						       MAX_SKB_TO_FREE);
80ff0fd3ab64514 David Daney             2009-05-05  385  		buffers_to_free =
80ff0fd3ab64514 David Daney             2009-05-05  386  		    cvmx_fau_fetch_and_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE, 0);
80ff0fd3ab64514 David Daney             2009-05-05  387  	}
80ff0fd3ab64514 David Daney             2009-05-05  388  
beb6e57b50dcccf Janani Ravichandran     2016-02-10  389  	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
beb6e57b50dcccf Janani Ravichandran     2016-02-10  390  						 priv->fau + qos * 4);
a620c1632629b42 David Daney             2009-06-23  391  
80ff0fd3ab64514 David Daney             2009-05-05  392  	/*
80ff0fd3ab64514 David Daney             2009-05-05  393  	 * If we're sending faster than the receive can free them then
80ff0fd3ab64514 David Daney             2009-05-05  394  	 * don't do the HW free.
80ff0fd3ab64514 David Daney             2009-05-05  395  	 */
4898c560103fb80 David Daney             2010-02-15  396  	if ((buffers_to_free < -100) && !pko_command.s.dontfree)
80ff0fd3ab64514 David Daney             2009-05-05  397  		pko_command.s.dontfree = 1;
80ff0fd3ab64514 David Daney             2009-05-05  398  
4898c560103fb80 David Daney             2010-02-15  399  	if (pko_command.s.dontfree) {
6888fc87768eaa2 David Daney             2010-01-07  400  		queue_type = QUEUE_CORE;
4898c560103fb80 David Daney             2010-02-15  401  		pko_command.s.reg0 = priv->fau + qos * 4;
4898c560103fb80 David Daney             2010-02-15  402  	} else {
6888fc87768eaa2 David Daney             2010-01-07  403  		queue_type = QUEUE_HW;
4898c560103fb80 David Daney             2010-02-15  404  	}
4898c560103fb80 David Daney             2010-02-15  405  	if (USE_ASYNC_IOBDMA)
715a7148d774fac Branden Bonaby          2019-03-11  406  		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH,
715a7148d774fac Branden Bonaby          2019-03-11  407  					       FAU_TOTAL_TX_TO_CLEAN, 1);
6888fc87768eaa2 David Daney             2010-01-07  408  
6888fc87768eaa2 David Daney             2010-01-07  409  	spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
80ff0fd3ab64514 David Daney             2009-05-05  410  
80ff0fd3ab64514 David Daney             2009-05-05  411  	/* Drop this packet if we have too many already queued to the HW */
a012649d6b6ddba Ebru Akagunduz          2013-10-10  412  	if (unlikely(skb_queue_len(&priv->tx_free_list[qos]) >=
a012649d6b6ddba Ebru Akagunduz          2013-10-10  413  		     MAX_OUT_QUEUE_DEPTH)) {
6888fc87768eaa2 David Daney             2010-01-07  414  		if (dev->tx_queue_len != 0) {
6888fc87768eaa2 David Daney             2010-01-07  415  			/* Drop the lock when notifying the core.  */
a012649d6b6ddba Ebru Akagunduz          2013-10-10  416  			spin_unlock_irqrestore(&priv->tx_free_list[qos].lock,
a012649d6b6ddba Ebru Akagunduz          2013-10-10  417  					       flags);
6888fc87768eaa2 David Daney             2010-01-07  418  			netif_stop_queue(dev);
a012649d6b6ddba Ebru Akagunduz          2013-10-10  419  			spin_lock_irqsave(&priv->tx_free_list[qos].lock,
a012649d6b6ddba Ebru Akagunduz          2013-10-10  420  					  flags);
6888fc87768eaa2 David Daney             2010-01-07  421  		} else {
6888fc87768eaa2 David Daney             2010-01-07  422  			/* If not using normal queueing.  */
6888fc87768eaa2 David Daney             2010-01-07  423  			queue_type = QUEUE_DROP;
6888fc87768eaa2 David Daney             2010-01-07  424  			goto skip_xmit;
6888fc87768eaa2 David Daney             2010-01-07  425  		}
80ff0fd3ab64514 David Daney             2009-05-05  426  	}
6888fc87768eaa2 David Daney             2010-01-07  427  
6888fc87768eaa2 David Daney             2010-01-07  428  	cvmx_pko_send_packet_prepare(priv->port, priv->queue + qos,
6888fc87768eaa2 David Daney             2010-01-07  429  				     CVMX_PKO_LOCK_NONE);
6888fc87768eaa2 David Daney             2010-01-07  430  
80ff0fd3ab64514 David Daney             2009-05-05  431  	/* Send the packet to the output queue */
6888fc87768eaa2 David Daney             2010-01-07  432  	if (unlikely(cvmx_pko_send_packet_finish(priv->port,
6888fc87768eaa2 David Daney             2010-01-07  433  						 priv->queue + qos,
6888fc87768eaa2 David Daney             2010-01-07  434  						 pko_command, hw_buffer,
6888fc87768eaa2 David Daney             2010-01-07  435  						 CVMX_PKO_LOCK_NONE))) {
a012649d6b6ddba Ebru Akagunduz          2013-10-10  436  		printk_ratelimited("%s: Failed to send the packet\n",
a012649d6b6ddba Ebru Akagunduz          2013-10-10  437  				   dev->name);
6888fc87768eaa2 David Daney             2010-01-07  438  		queue_type = QUEUE_DROP;
80ff0fd3ab64514 David Daney             2009-05-05  439  	}
6888fc87768eaa2 David Daney             2010-01-07  440  skip_xmit:
6888fc87768eaa2 David Daney             2010-01-07  441  	to_free_list = NULL;
80ff0fd3ab64514 David Daney             2009-05-05  442  
6888fc87768eaa2 David Daney             2010-01-07  443  	switch (queue_type) {
6888fc87768eaa2 David Daney             2010-01-07  444  	case QUEUE_DROP:
6888fc87768eaa2 David Daney             2010-01-07  445  		skb->next = to_free_list;
6888fc87768eaa2 David Daney             2010-01-07  446  		to_free_list = skb;
66812da3a689e3f Tobias Klauser          2017-02-15  447  		dev->stats.tx_dropped++;
6888fc87768eaa2 David Daney             2010-01-07  448  		break;
6888fc87768eaa2 David Daney             2010-01-07  449  	case QUEUE_HW:
6888fc87768eaa2 David Daney             2010-01-07  450  		cvmx_fau_atomic_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE, -1);
6888fc87768eaa2 David Daney             2010-01-07  451  		break;
6888fc87768eaa2 David Daney             2010-01-07  452  	case QUEUE_CORE:
6888fc87768eaa2 David Daney             2010-01-07  453  		__skb_queue_tail(&priv->tx_free_list[qos], skb);
6888fc87768eaa2 David Daney             2010-01-07  454  		break;
6888fc87768eaa2 David Daney             2010-01-07  455  	default:
6888fc87768eaa2 David Daney             2010-01-07  456  		BUG();
80ff0fd3ab64514 David Daney             2009-05-05  457  	}
80ff0fd3ab64514 David Daney             2009-05-05  458  
6888fc87768eaa2 David Daney             2010-01-07  459  	while (skb_to_free > 0) {
6888fc87768eaa2 David Daney             2010-01-07  460  		struct sk_buff *t = __skb_dequeue(&priv->tx_free_list[qos]);
b9fc9cf29e5d5a5 Roberto Medina          2014-10-08  461  
6888fc87768eaa2 David Daney             2010-01-07  462  		t->next = to_free_list;
6888fc87768eaa2 David Daney             2010-01-07  463  		to_free_list = t;
6888fc87768eaa2 David Daney             2010-01-07  464  		skb_to_free--;
80ff0fd3ab64514 David Daney             2009-05-05  465  	}
6888fc87768eaa2 David Daney             2010-01-07  466  
6888fc87768eaa2 David Daney             2010-01-07  467  	spin_unlock_irqrestore(&priv->tx_free_list[qos].lock, flags);
6888fc87768eaa2 David Daney             2010-01-07  468  
6888fc87768eaa2 David Daney             2010-01-07  469  	/* Do the actual freeing outside of the lock. */
6888fc87768eaa2 David Daney             2010-01-07  470  	while (to_free_list) {
6888fc87768eaa2 David Daney             2010-01-07  471  		struct sk_buff *t = to_free_list;
b9fc9cf29e5d5a5 Roberto Medina          2014-10-08  472  
6888fc87768eaa2 David Daney             2010-01-07  473  		to_free_list = to_free_list->next;
6888fc87768eaa2 David Daney             2010-01-07  474  		dev_kfree_skb_any(t);
80ff0fd3ab64514 David Daney             2009-05-05  475  	}
80ff0fd3ab64514 David Daney             2009-05-05  476  
6888fc87768eaa2 David Daney             2010-01-07  477  	if (USE_ASYNC_IOBDMA) {
4898c560103fb80 David Daney             2010-02-15  478  		CVMX_SYNCIOBDMA;
4898c560103fb80 David Daney             2010-02-15  479  		total_to_clean = cvmx_scratch_read64(CVMX_SCR_SCRATCH);
6888fc87768eaa2 David Daney             2010-01-07  480  		/* Restore the scratch area */
6888fc87768eaa2 David Daney             2010-01-07  481  		cvmx_scratch_write64(CVMX_SCR_SCRATCH, old_scratch);
6888fc87768eaa2 David Daney             2010-01-07  482  		cvmx_scratch_write64(CVMX_SCR_SCRATCH + 8, old_scratch2);
4898c560103fb80 David Daney             2010-02-15  483  	} else {
715a7148d774fac Branden Bonaby          2019-03-11  484  		total_to_clean =
715a7148d774fac Branden Bonaby          2019-03-11  485  			cvmx_fau_fetch_and_add32(FAU_TOTAL_TX_TO_CLEAN, 1);
4898c560103fb80 David Daney             2010-02-15  486  	}
4898c560103fb80 David Daney             2010-02-15  487  
4898c560103fb80 David Daney             2010-02-15  488  	if (total_to_clean & 0x3ff) {
4898c560103fb80 David Daney             2010-02-15  489  		/*
4898c560103fb80 David Daney             2010-02-15  490  		 * Schedule the cleanup tasklet every 1024 packets for
4898c560103fb80 David Daney             2010-02-15  491  		 * the pathological case of high traffic on one port
4898c560103fb80 David Daney             2010-02-15  492  		 * delaying clean up of packets on a different port
4898c560103fb80 David Daney             2010-02-15  493  		 * that is blocked waiting for the cleanup.
4898c560103fb80 David Daney             2010-02-15  494  		 */
4898c560103fb80 David Daney             2010-02-15  495  		tasklet_schedule(&cvm_oct_tx_cleanup_tasklet);
80ff0fd3ab64514 David Daney             2009-05-05  496  	}
80ff0fd3ab64514 David Daney             2009-05-05  497  
4898c560103fb80 David Daney             2010-02-15  498  	cvm_oct_kick_tx_poll_watchdog();
4898c560103fb80 David Daney             2010-02-15  499  
6888fc87768eaa2 David Daney             2010-01-07  500  	return NETDEV_TX_OK;
80ff0fd3ab64514 David Daney             2009-05-05  501  }
80ff0fd3ab64514 David Daney             2009-05-05  502  

:::::: The code at line 358 was first introduced by commit
:::::: a5135bcfba7345031df45e02cd150a45add47cf8 net-tc: convert tc_verd to integer bitfields

:::::: TO: Willem de Bruijn <willemb@google.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012021706.3FGjX7dC-lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
JYu4B2KYAgA=

--IS0zKkzwUGydFO0o--
