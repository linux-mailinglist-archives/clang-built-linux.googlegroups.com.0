Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOEO2T5QKGQENTZ5G3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2DE27F527
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:31:21 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id h96sf1036436oth.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:31:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601505080; cv=pass;
        d=google.com; s=arc-20160816;
        b=xA2wAWXUxdXc0rbGwbX3GoVKQ1KcEXafyrnssJR+hM13FGcrTWdGOORbs5CHyMvLtE
         7ISuAYdWwErR/CguVFBzBEAtoG5PEk8cEHP6/TSdtXDqQITn+ynBJKuOwk+ht8+09BfG
         bCxn8yADtS8P4DDJbUTIMrfg8XDvoXLTD9K6SppI1EQ//FOGTbWZigxGHOuZUi7CYGlA
         qHS5ZALTVo1+gQbYqRiHa8afhgTt+9h5s6mfnD9bLK2SVFif/ISeGhypgopzHZ9Y5/G/
         BxbhkHl5dC3H2j3dur0hNivJ/Vh2N2s+DjHcN1rqjd76qKosrrQeZco55u7Xkh7jxRSR
         0/yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=eGzjXB0kOVT2xv3KNfeOBzZk4W/BhSx95nwFHILoFfg=;
        b=wxV299pdInrsU7LgmNffEYCPXuEMqLmW7UKVhf/6dfsgGWdoAqZVM+EOYdC/5kKGcO
         RIwpJIS22ciE+IHPZrwQfj7jjFqrz31I4aa3zvaDPbsR0C5jxEmd0oW7c1Hn4a71zOnv
         eNtqfp0Fj7BA0uBcbyLXhPdw+ygKVEiyv3Svd/ttjNCD71yZwyM4HBlziIle7/gCiIP2
         3QAJd5fd0Bk3izgVOkBwhD7q4kqdju3hYU86eSpnFeCApvUmatZho0CIsBkbj9gDjZER
         ulwcfFcXwKOFHIVETg1JNcwO3LVPIk6sTpqzTav2rfGZLQR7e945+1V6sSe3Qvyrgr8u
         0aAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eGzjXB0kOVT2xv3KNfeOBzZk4W/BhSx95nwFHILoFfg=;
        b=VMW19DtI3Cgju50aFBWOb3WIqjr4DKXSXkPBSMtIq3cIU15CRKZMXPCp7ITxTTdW9K
         IwrfpVcyNAxYsNM5xHJ1z+Md3qR/A4S/eLPQJ8ynczDV01NaOQdPWA3Qth/zI9R3jAMs
         YASwUnsUysd7gQtysYkTV98zeMTd6DsMa6EOzAguQSOv15dyzFCDT0hMFo15z/d117xI
         doQ8yHV0/V9Paem5ATkkOJHKJiN1uiiWNcc0SBAzSABwDLT9qlNZPh8+wMHyA5vhG1j4
         qBqS6OzYKsx9FFmegy4tRLeELHMLi0z9y75HIlomrG0v8zZ/oVp56nQtzlE/BIVUTW1+
         vprQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eGzjXB0kOVT2xv3KNfeOBzZk4W/BhSx95nwFHILoFfg=;
        b=pacO1112ZpemVlX5cYH28qw5uUOLs3oH6UdiBDLUP1m9RtmGmuHXavHIxb4KgPT2S4
         WnFaULlgCkbipyAXmW+gAsVXV9UenhOUmo3toLRi/gpBOe6GFgXdjiPZssnpwSUeXqDO
         kknRxXB6Q0C+li2u4htr3ZGJVuYMaM668ISXuzBtxtGOx0rIfrIArVYbHCS3HqEda4uQ
         mjOIjBga4NTB9YQoqYvIMTlHBh/ezltJUSCcQkljFHlzfb0T/yecZB2xKh/mTrPHmcrV
         VbNlITnlQqCAgdXo6vjBDgGkkOXm62kVK4E7dQmV31dwDttPp/34AMra6nzMPcOCik7k
         zmzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530s5f9MoxAnIhEnIfjEiqMg9gvq/Fp2i5HuicJpNeROufeB8TRf
	w/q7ewazW8nrs4qa9hwbH3g=
X-Google-Smtp-Source: ABdhPJykF7IZzywgW+0oBjSrvpYPbClKsmghMVcPfZeXoT35t9a4lrFZlbM+YAwtbQv1Gcc4vIAUEw==
X-Received: by 2002:a05:6830:1f09:: with SMTP id u9mr2692687otg.175.1601505080548;
        Wed, 30 Sep 2020 15:31:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ad8:: with SMTP id m24ls874451otn.8.gmail; Wed, 30 Sep
 2020 15:31:20 -0700 (PDT)
X-Received: by 2002:a9d:6250:: with SMTP id i16mr3124856otk.77.1601505080062;
        Wed, 30 Sep 2020 15:31:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601505080; cv=none;
        d=google.com; s=arc-20160816;
        b=zXD2MoGp0TR2g2xV7Yv2xf8TWPTPYt19hSFRc7+AmguX/ZC0SHz7BW6injlMLwC6pr
         phXGRV5lOy8iVxn8oG5cGWUl7TEBujS7RnQbj17Futmv6nWlGjuEraEgK4Ekave/1W9j
         B+6dj1zU+CbLod9o96zWuZ6qdrBvmAefvbt3FLqlqPSVyByD64oa7Zj9DSRglTcPETQH
         3prWQUjAoSwk50gp9VBEcBp3fKO1YG/BwyfJ6vysQKUk2ZrmK4t82O45gRZqwf0/70BD
         +D1lvyXnxICyFTWIG/neUIOQd/Vi4w5FLhMbKTEZKgkLb+i6NEZzNgbDKAl2L4Ilnddm
         /asw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=thorI9u8zRrfT3ZzB+KcnetApZ8caXlRFoH5Khl2D9U=;
        b=MINjNW2mnYjbvaQ20RoUjE8WSdmKZBE8+ddejK+XwQdivBuFSfE6rrw6tAm2Ps93Om
         viNfSaXHh97ZfbLG7FcRVoK2+Q/Uop4X+CoWuOTOMi1yhd/Du+PIowL9MJcWmJ+SkxtJ
         HddyJf0Bc1Lu4oZQlzGMPx0bLbOAjbjZcZNWVv4E10sMjixDSvTYdNzi2hUKXQ8iazID
         HVNnENPj+62PUK/g5N+E/TCknWouBfkiRV+jETNjuUqvufVoMAXJtUcGM3e0xsYtXK/g
         HpVA2228dMe4HI7DQbWbWeOXiHZjBp1J6qu77RYJvGgVcEtX14YDq6Y89ZFAc4cBg1yL
         Rl/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id q10si236666oov.2.2020.09.30.15.31.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 15:31:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: 2+hQBXIul/PippBCsfsmiPb5sg1ymvgPWI9q0MUIIfGDKldSD6SvEOwEp+eZ2XQYrTlyH09266
 c47x6z5KpdLw==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="163422535"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; 
   d="gz'50?scan'50,208,50";a="163422535"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2020 15:31:16 -0700
IronPort-SDR: gV/XknTVIm725hasA7gGNZoOa15pXx0B6WZRJivz4xDcrUSp+pFR+qKF36kyl+K2Re6CVlG7NS
 z5VWJtzxGJ2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; 
   d="gz'50?scan'50,208,50";a="312756123"
Received: from lkp-server02.sh.intel.com (HELO de448af6ea1b) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 30 Sep 2020 15:31:13 -0700
Received: from kbuild by de448af6ea1b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kNkcy-0000Pv-Fh; Wed, 30 Sep 2020 22:31:12 +0000
Date: Thu, 1 Oct 2020 06:30:28 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [linux-next:master 10422/12330]
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:970:13:
 warning: variable 'userdata' is used uninitialized whenever 'if' condition
 is false
Message-ID: <202010010624.1kQbwfjp-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   de69ee6df1cfbf3c67787d8504fd21b59da39572
commit: 4184da4f316a549ae732d91088571fef46a2f58d [10422/12330] staging: vchiq: fix __user annotations
config: arm64-randconfig-r035-20200930 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bcd05599d0e53977a963799d6ee4f6e0bc21331b)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=4184da4f316a549ae732d91088571fef46a2f58d
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 4184da4f316a549ae732d91088571fef46a2f58d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:970:13: warning: variable 'userdata' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           } else if (args->mode == VCHIQ_BULK_MODE_WAITING) {
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:1001:10: note: uninitialized use occurs here
                                        userdata, args->mode, dir);
                                        ^~~~~~~~
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:970:9: note: remove the 'if' if its condition is always true
           } else if (args->mode == VCHIQ_BULK_MODE_WAITING) {
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:953:16: note: initialize the variable 'userdata' to silence this warning
           void *userdata;
                         ^
                          = NULL
   1 warning generated.

vim +970 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c

f618affa770c5da Arnd Bergmann 2020-09-18   945  
a4367cd2b231686 Arnd Bergmann 2020-09-18   946  static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
a4367cd2b231686 Arnd Bergmann 2020-09-18   947  				      struct vchiq_queue_bulk_transfer *args,
a4367cd2b231686 Arnd Bergmann 2020-09-18   948  				      enum vchiq_bulk_dir dir,
a4367cd2b231686 Arnd Bergmann 2020-09-18   949  				      enum vchiq_bulk_mode __user *mode)
a4367cd2b231686 Arnd Bergmann 2020-09-18   950  {
a4367cd2b231686 Arnd Bergmann 2020-09-18   951  	struct vchiq_service *service;
a4367cd2b231686 Arnd Bergmann 2020-09-18   952  	struct bulk_waiter_node *waiter = NULL;
4184da4f316a549 Arnd Bergmann 2020-09-25   953  	void *userdata;
a4367cd2b231686 Arnd Bergmann 2020-09-18   954  	int status = 0;
a4367cd2b231686 Arnd Bergmann 2020-09-18   955  	int ret;
a4367cd2b231686 Arnd Bergmann 2020-09-18   956  
a4367cd2b231686 Arnd Bergmann 2020-09-18   957  	service = find_service_for_instance(instance, args->handle);
a4367cd2b231686 Arnd Bergmann 2020-09-18   958  	if (!service)
a4367cd2b231686 Arnd Bergmann 2020-09-18   959  		return -EINVAL;
a4367cd2b231686 Arnd Bergmann 2020-09-18   960  
a4367cd2b231686 Arnd Bergmann 2020-09-18   961  	if (args->mode == VCHIQ_BULK_MODE_BLOCKING) {
a4367cd2b231686 Arnd Bergmann 2020-09-18   962  		waiter = kzalloc(sizeof(struct bulk_waiter_node),
a4367cd2b231686 Arnd Bergmann 2020-09-18   963  			GFP_KERNEL);
a4367cd2b231686 Arnd Bergmann 2020-09-18   964  		if (!waiter) {
a4367cd2b231686 Arnd Bergmann 2020-09-18   965  			ret = -ENOMEM;
a4367cd2b231686 Arnd Bergmann 2020-09-18   966  			goto out;
a4367cd2b231686 Arnd Bergmann 2020-09-18   967  		}
a4367cd2b231686 Arnd Bergmann 2020-09-18   968  
4184da4f316a549 Arnd Bergmann 2020-09-25   969  		userdata = &waiter->bulk_waiter;
a4367cd2b231686 Arnd Bergmann 2020-09-18  @970  	} else if (args->mode == VCHIQ_BULK_MODE_WAITING) {
a4367cd2b231686 Arnd Bergmann 2020-09-18   971  		mutex_lock(&instance->bulk_waiter_list_mutex);
a4367cd2b231686 Arnd Bergmann 2020-09-18   972  		list_for_each_entry(waiter, &instance->bulk_waiter_list,
a4367cd2b231686 Arnd Bergmann 2020-09-18   973  				    list) {
a4367cd2b231686 Arnd Bergmann 2020-09-18   974  			if (waiter->pid == current->pid) {
a4367cd2b231686 Arnd Bergmann 2020-09-18   975  				list_del(&waiter->list);
a4367cd2b231686 Arnd Bergmann 2020-09-18   976  				break;
a4367cd2b231686 Arnd Bergmann 2020-09-18   977  			}
a4367cd2b231686 Arnd Bergmann 2020-09-18   978  		}
a4367cd2b231686 Arnd Bergmann 2020-09-18   979  		mutex_unlock(&instance->bulk_waiter_list_mutex);
a4367cd2b231686 Arnd Bergmann 2020-09-18   980  		if (!waiter) {
a4367cd2b231686 Arnd Bergmann 2020-09-18   981  			vchiq_log_error(vchiq_arm_log_level,
a4367cd2b231686 Arnd Bergmann 2020-09-18   982  				"no bulk_waiter found for pid %d",
a4367cd2b231686 Arnd Bergmann 2020-09-18   983  				current->pid);
a4367cd2b231686 Arnd Bergmann 2020-09-18   984  			ret = -ESRCH;
a4367cd2b231686 Arnd Bergmann 2020-09-18   985  			goto out;
a4367cd2b231686 Arnd Bergmann 2020-09-18   986  		}
a4367cd2b231686 Arnd Bergmann 2020-09-18   987  		vchiq_log_info(vchiq_arm_log_level,
a4367cd2b231686 Arnd Bergmann 2020-09-18   988  			"found bulk_waiter %pK for pid %d", waiter,
a4367cd2b231686 Arnd Bergmann 2020-09-18   989  			current->pid);
4184da4f316a549 Arnd Bergmann 2020-09-25   990  		userdata = &waiter->bulk_waiter;
a4367cd2b231686 Arnd Bergmann 2020-09-18   991  	}
a4367cd2b231686 Arnd Bergmann 2020-09-18   992  
4184da4f316a549 Arnd Bergmann 2020-09-25   993  	/*
4184da4f316a549 Arnd Bergmann 2020-09-25   994  	 * FIXME address space mismatch:
4184da4f316a549 Arnd Bergmann 2020-09-25   995  	 * args->data may be interpreted as a kernel pointer
4184da4f316a549 Arnd Bergmann 2020-09-25   996  	 * in create_pagelist() called from vchiq_bulk_transfer(),
4184da4f316a549 Arnd Bergmann 2020-09-25   997  	 * accessing kernel data instead of user space, based on the
4184da4f316a549 Arnd Bergmann 2020-09-25   998  	 * address.
4184da4f316a549 Arnd Bergmann 2020-09-25   999  	 */
a4367cd2b231686 Arnd Bergmann 2020-09-18  1000  	status = vchiq_bulk_transfer(args->handle, args->data, args->size,
4184da4f316a549 Arnd Bergmann 2020-09-25  1001  				     userdata, args->mode, dir);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1002  
a4367cd2b231686 Arnd Bergmann 2020-09-18  1003  	if (!waiter) {
a4367cd2b231686 Arnd Bergmann 2020-09-18  1004  		ret = 0;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1005  		goto out;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1006  	}
a4367cd2b231686 Arnd Bergmann 2020-09-18  1007  
a4367cd2b231686 Arnd Bergmann 2020-09-18  1008  	if ((status != VCHIQ_RETRY) || fatal_signal_pending(current) ||
a4367cd2b231686 Arnd Bergmann 2020-09-18  1009  		!waiter->bulk_waiter.bulk) {
a4367cd2b231686 Arnd Bergmann 2020-09-18  1010  		if (waiter->bulk_waiter.bulk) {
a4367cd2b231686 Arnd Bergmann 2020-09-18  1011  			/* Cancel the signal when the transfer
a4367cd2b231686 Arnd Bergmann 2020-09-18  1012  			** completes. */
a4367cd2b231686 Arnd Bergmann 2020-09-18  1013  			spin_lock(&bulk_waiter_spinlock);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1014  			waiter->bulk_waiter.bulk->userdata = NULL;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1015  			spin_unlock(&bulk_waiter_spinlock);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1016  		}
a4367cd2b231686 Arnd Bergmann 2020-09-18  1017  		kfree(waiter);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1018  		ret = 0;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1019  	} else {
a4367cd2b231686 Arnd Bergmann 2020-09-18  1020  		const enum vchiq_bulk_mode mode_waiting =
a4367cd2b231686 Arnd Bergmann 2020-09-18  1021  			VCHIQ_BULK_MODE_WAITING;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1022  		waiter->pid = current->pid;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1023  		mutex_lock(&instance->bulk_waiter_list_mutex);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1024  		list_add(&waiter->list, &instance->bulk_waiter_list);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1025  		mutex_unlock(&instance->bulk_waiter_list_mutex);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1026  		vchiq_log_info(vchiq_arm_log_level,
a4367cd2b231686 Arnd Bergmann 2020-09-18  1027  			"saved bulk_waiter %pK for pid %d",
a4367cd2b231686 Arnd Bergmann 2020-09-18  1028  			waiter, current->pid);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1029  
a4367cd2b231686 Arnd Bergmann 2020-09-18  1030  		ret = put_user(mode_waiting, mode);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1031  	}
a4367cd2b231686 Arnd Bergmann 2020-09-18  1032  out:
a4367cd2b231686 Arnd Bergmann 2020-09-18  1033  	unlock_service(service);
a4367cd2b231686 Arnd Bergmann 2020-09-18  1034  	if (ret)
a4367cd2b231686 Arnd Bergmann 2020-09-18  1035  		return ret;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1036  	else if (status == VCHIQ_ERROR)
a4367cd2b231686 Arnd Bergmann 2020-09-18  1037  		return -EIO;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1038  	else if (status == VCHIQ_RETRY)
a4367cd2b231686 Arnd Bergmann 2020-09-18  1039  		return -EINTR;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1040  	return 0;
a4367cd2b231686 Arnd Bergmann 2020-09-18  1041  }
a4367cd2b231686 Arnd Bergmann 2020-09-18  1042  

:::::: The code at line 970 was first introduced by commit
:::::: a4367cd2b2316862c5085a6beb12511f9f57608b staging: vchiq: convert compat bulk transfer

:::::: TO: Arnd Bergmann <arnd@arndb.de>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010010624.1kQbwfjp-lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--IS0zKkzwUGydFO0o--
