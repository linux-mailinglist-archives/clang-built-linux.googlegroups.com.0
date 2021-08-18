Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWHE6SEAMGQEAC5C3FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A3D3F08DB
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 18:16:26 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id 184-20020a6303c10000b029023d089ffadfsf1716846pgd.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 09:16:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629303384; cv=pass;
        d=google.com; s=arc-20160816;
        b=kbxFl5vcidG2wq/qQfPTcJ2NWp+e6HAta9xCdke3BP+rUFxXlq6spdmKw3ztIFAePH
         o+1iC/62M8GD9ZyF93AhF+CpEz4Viz5XyUVG0K7IiE60vSAKaQd+X726rghM5j+kt9/a
         RBcN1BtUNdMlPqnDtzmtqnwl0pfNkKfLJnv0zeJDK0a4D4ZNqvD/P3XJbl8MtgvqPUvz
         K4JtHEmtsS402QaG677/tYBRUzh0zOLfQOKrRDnJ3DxUV9p5MacoYgxbM61H0f1a2ZYo
         /oxqZwyuvMG4iCG+tQicYL6DXaZDdE2lI4QyTzxPRMbSUOrM0m6++pz8q9hslJvajHsX
         PoZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=isXUB7FcIEMqEG+y7T4RbdyiyGBfmfQssxC2WXBuD5A=;
        b=SxLSgN2U7AByY8AFt80g1L5HCWk411xmYIDCI6DUESUHoPRRFi9hDV24ZPPzuyoyVf
         7A74AwGq+FpI7FBuN3dGDvwa2x255dU0GgvTUjiG2b6SgIkEi1CwMXD6hVhcxk3ubj7E
         KYqM9Cjrkwe9y0YM2n2u6CG8ggZlYraIkabv35bIciAv0lAEvRf+rekFcYX0v0fRvk7z
         CsakBbVQbSJ0+Ys5kiQUFLEJhZimZITmHSkz3QHI906sKIvCDJ/MTQoISSF4NstG6Tgv
         0wog2HnvlAc4IqEsCLWC7YVXCFX4U6Y/eGiOoKJCUfHKKWKKELbLARSC8kSWiFZcWdfl
         Q0Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=isXUB7FcIEMqEG+y7T4RbdyiyGBfmfQssxC2WXBuD5A=;
        b=q+DpSagTKDZw2iQEcbJEBWvfDTHz5KhiAP24ze3pH7evFqdryyw5r51IGAuktEXgCP
         6geFwKii/PibdhqoQouIPgCneznF5V60b/zcDYXp66eKjAqcrwFK0/WbcTOhnNntnLGn
         gZoJtia27rwvSG2LlbMnl0khAsMTLix3ErSAACsWRSlYSQWbeldCs/rI37wyMnm9/a8K
         gbXO0fWFCW/ifQgfZEU0l1BccARrZ9s7v1E79DuStKttlefS8zR6ViVgjAeZR+tHbvQd
         HSHSoAFWH/wVivGia1iYGa00rkK7hhQ9z57jq8XlWrVDVpsED1N/kX9wx0trDREeYWFO
         4Vfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=isXUB7FcIEMqEG+y7T4RbdyiyGBfmfQssxC2WXBuD5A=;
        b=FlV16zdIAfb6mdVIKPLI+bDx3G+mSLNsHIKD08uaeTfNbYsgusJhjnd4QwBj/WZRXs
         WvKo8neVOWGhiLov3XX03Btx7u7qWGp8N3H+rZ7aq70eiih7cfWmRSTwaYvTrsIlicDW
         07dSwWnW1QHV4bwjg/wJpLpsqTeTa5fj06ur+uEvV8/6doRJC0sSIDcq3jG0cg+p6/hP
         JKqVYUUbeF2MZ2Nm5lg4Gf5tANAi8RYd6oE7DP/veaiFA8XF0lDBuOhuWjxRCRe40Ghj
         FVQ6mBINLEjLJo9L/r/TRV+upA/RYezUdjpDacdZHAxK1oQv84g3tHAzJNL0Bkxh1QLJ
         JBfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SdiuvqS+Kew91kuTOaKdRM54uW5U4c465Bn+a32kMaBRDORfR
	YyDKU53nFKsmeN4ECA0mqo4=
X-Google-Smtp-Source: ABdhPJxg5r4IDkqDFJmYsmDnKiSPLcyvnld4vyI5LFt/cRMQXRMs11RrJ/9NoKX72D0clSh8Cw2X1g==
X-Received: by 2002:a63:4610:: with SMTP id t16mr9476995pga.176.1629303384700;
        Wed, 18 Aug 2021 09:16:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:91d6:: with SMTP id z22ls1134062pfa.5.gmail; Wed, 18 Aug
 2021 09:16:24 -0700 (PDT)
X-Received: by 2002:a63:d14c:: with SMTP id c12mr9569714pgj.412.1629303384197;
        Wed, 18 Aug 2021 09:16:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629303384; cv=none;
        d=google.com; s=arc-20160816;
        b=JtPYnl5i1la8+7DJM5yHZprMWTfZToDWsGRLNtPsl0+MPE/9rNXWMN6kRgt+CIK4Nr
         sUHhF0Atdt1Hz9N2zswC98xF7V2+CIApZ8UpizpqV2rnpoC52Cu7FhyD4ZB/1YplZJLh
         Cw8bpFzSNUaUYWeo694XHXXD1U3yAcsiCQEC1FaWIBQAuj5OidDhRd8Ppno06FSSzRlc
         YnWw2odczgO5Y9E6RgaMXi7ZILZyGRjwCL6l1ndM7/EMZ3gtcR80uDGILz+cd1ZrACPm
         GQbnjqTry0JukYEH/FrYipz4bYLq4DkmR1T7j6KrNgmwP1zFJucqvyac812dGShx8Es9
         EJKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=qiYc7oFTplvw9kMeOFShKi1qclKhvZWwNnkDtDRUeQU=;
        b=cfo+T4NXr3AN2K8imdJ6RSE13Zb6NVSGJtgWxzN3h8sFDIYgln5pWF6BpfIKx4iBR9
         NtBdWGijrJld+GXaedAoeAflNtOXM6OCVf6+Ya3qVbW/Xai00lou2c92Q4um3JubLV5f
         cYnKLDMOoT6G9oXGuwbYnbnYrlb2S6d46q8o1uqQrkH1nSVEL19LpWbpzoZ+y9iCvUiG
         RUjO9e7uJGnIZqHBK+VZReA0Ctbdxo7ztR71b8quI8WaeDC4ztpyZbx3510B0/PSazoC
         aw8Rs5W9vQwQarky+TB5hZ4SBnthLSCYsLnJJfCt36E7/BY4xCQpqFMXY8ahPdSRjBhD
         tHjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id p3si38467pfo.3.2021.08.18.09.16.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 09:16:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216399302"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="216399302"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 09:16:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="678632522"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2021 09:16:02 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGOET-000T7d-9H; Wed, 18 Aug 2021 16:16:01 +0000
Date: Thu, 19 Aug 2021 00:15:44 +0800
From: kernel test robot <lkp@intel.com>
To: John Garry <john.garry@huawei.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Hannes Reinecke <hare@suse.de>,
	Bart Van Assche <bvanassche@acm.org>,
	Christoph Hellwig <hch@lst.de>
Subject: [linux-next:master 8730/8804] drivers/scsi/arm/fas216.c:993:20:
 error: no member named 'tag' in 'struct scsi_cmnd'
Message-ID: <202108190026.egvxoyfF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   f26c3abc432a2026ba9ee7767061a1f88aead6ec
commit: 4c7b6ea336c1e415fc002c756449835de768914c [8730/8804] scsi: core: Remove scsi_cmnd.tag
config: arm-randconfig-r035-20210818 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d2b574a4dea5b718e4386bf2e26af0126e5978ce)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=4c7b6ea336c1e415fc002c756449835de768914c
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 4c7b6ea336c1e415fc002c756449835de768914c
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=arm SHELL=/bin/bash drivers/scsi/arm/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/scsi/arm/fas216.c:993:20: error: no member named 'tag' in 'struct scsi_cmnd'
                       info->SCpnt->tag         == tag) {
                       ~~~~~~~~~~~  ^
   drivers/scsi/arm/fas216.c:1793:13: error: no member named 'tag' in 'struct scsi_cmnd'
           if (SCpnt->tag)
               ~~~~~  ^
   drivers/scsi/arm/fas216.c:1794:65: error: no member named 'tag' in 'struct scsi_cmnd'
                   msgqueue_addmsg(&info->scsi.msgs, 2, SIMPLE_QUEUE_TAG, SCpnt->tag);
                                                                          ~~~~~  ^
   drivers/scsi/arm/fas216.c:2119:9: error: no member named 'tag' in 'struct scsi_cmnd'
           SCpnt->tag = 0;
           ~~~~~  ^
   drivers/scsi/arm/fas216.c:2225:9: error: no member named 'tag' in 'struct scsi_cmnd'
           SCpnt->tag = 0;
           ~~~~~  ^
   5 errors generated.
--
>> drivers/scsi/arm/queue.c:217:17: error: no member named 'tag' in 'struct scsi_cmnd'
                       q->SCpnt->tag == tag) {
                       ~~~~~~~~  ^
   1 error generated.


vim +993 drivers/scsi/arm/fas216.c

^1da177e4c3f415 Linus Torvalds 2005-04-16   930  
^1da177e4c3f415 Linus Torvalds 2005-04-16   931  /**
^1da177e4c3f415 Linus Torvalds 2005-04-16   932   * fas216_reselected_intr - start reconnection of a device
^1da177e4c3f415 Linus Torvalds 2005-04-16   933   * @info: interface which was reselected
^1da177e4c3f415 Linus Torvalds 2005-04-16   934   *
^1da177e4c3f415 Linus Torvalds 2005-04-16   935   * Start reconnection of a device
^1da177e4c3f415 Linus Torvalds 2005-04-16   936   */
^1da177e4c3f415 Linus Torvalds 2005-04-16   937  static void
^1da177e4c3f415 Linus Torvalds 2005-04-16   938  fas216_reselected_intr(FAS216_Info *info)
^1da177e4c3f415 Linus Torvalds 2005-04-16   939  {
^1da177e4c3f415 Linus Torvalds 2005-04-16   940  	unsigned int cfis, i;
^1da177e4c3f415 Linus Torvalds 2005-04-16   941  	unsigned char msg[4];
^1da177e4c3f415 Linus Torvalds 2005-04-16   942  	unsigned char target, lun, tag;
^1da177e4c3f415 Linus Torvalds 2005-04-16   943  
^1da177e4c3f415 Linus Torvalds 2005-04-16   944  	fas216_checkmagic(info);
^1da177e4c3f415 Linus Torvalds 2005-04-16   945  
^1da177e4c3f415 Linus Torvalds 2005-04-16   946  	WARN_ON(info->scsi.phase == PHASE_SELECTION ||
^1da177e4c3f415 Linus Torvalds 2005-04-16   947  		info->scsi.phase == PHASE_SELSTEPS);
^1da177e4c3f415 Linus Torvalds 2005-04-16   948  
^1da177e4c3f415 Linus Torvalds 2005-04-16   949  	cfis = fas216_readb(info, REG_CFIS);
^1da177e4c3f415 Linus Torvalds 2005-04-16   950  
^1da177e4c3f415 Linus Torvalds 2005-04-16   951  	fas216_log(info, LOG_CONNECT, "reconnect phase=%02x cfis=%02x",
^1da177e4c3f415 Linus Torvalds 2005-04-16   952  		   info->scsi.phase, cfis);
^1da177e4c3f415 Linus Torvalds 2005-04-16   953  
^1da177e4c3f415 Linus Torvalds 2005-04-16   954  	cfis &= CFIS_CF;
^1da177e4c3f415 Linus Torvalds 2005-04-16   955  
^1da177e4c3f415 Linus Torvalds 2005-04-16   956  	if (cfis < 2 || cfis > 4) {
^1da177e4c3f415 Linus Torvalds 2005-04-16   957  		printk(KERN_ERR "scsi%d.H: incorrect number of bytes after reselect\n",
^1da177e4c3f415 Linus Torvalds 2005-04-16   958  			info->host->host_no);
^1da177e4c3f415 Linus Torvalds 2005-04-16   959  		goto bad_message;
^1da177e4c3f415 Linus Torvalds 2005-04-16   960  	}
^1da177e4c3f415 Linus Torvalds 2005-04-16   961  
^1da177e4c3f415 Linus Torvalds 2005-04-16   962  	for (i = 0; i < cfis; i++)
^1da177e4c3f415 Linus Torvalds 2005-04-16   963  		msg[i] = fas216_readb(info, REG_FF);
^1da177e4c3f415 Linus Torvalds 2005-04-16   964  
^1da177e4c3f415 Linus Torvalds 2005-04-16   965  	if (!(msg[0] & (1 << info->host->this_id)) ||
^1da177e4c3f415 Linus Torvalds 2005-04-16   966  	    !(msg[1] & 0x80))
^1da177e4c3f415 Linus Torvalds 2005-04-16   967  		goto initiator_error;
^1da177e4c3f415 Linus Torvalds 2005-04-16   968  
^1da177e4c3f415 Linus Torvalds 2005-04-16   969  	target = msg[0] & ~(1 << info->host->this_id);
^1da177e4c3f415 Linus Torvalds 2005-04-16   970  	target = ffs(target) - 1;
^1da177e4c3f415 Linus Torvalds 2005-04-16   971  	lun = msg[1] & 7;
^1da177e4c3f415 Linus Torvalds 2005-04-16   972  	tag = 0;
^1da177e4c3f415 Linus Torvalds 2005-04-16   973  
^1da177e4c3f415 Linus Torvalds 2005-04-16   974  	if (cfis >= 3) {
^1da177e4c3f415 Linus Torvalds 2005-04-16   975  		if (msg[2] != SIMPLE_QUEUE_TAG)
^1da177e4c3f415 Linus Torvalds 2005-04-16   976  			goto initiator_error;
^1da177e4c3f415 Linus Torvalds 2005-04-16   977  
^1da177e4c3f415 Linus Torvalds 2005-04-16   978  		tag = msg[3];
^1da177e4c3f415 Linus Torvalds 2005-04-16   979  	}
^1da177e4c3f415 Linus Torvalds 2005-04-16   980  
^1da177e4c3f415 Linus Torvalds 2005-04-16   981  	/* set up for synchronous transfers */
^1da177e4c3f415 Linus Torvalds 2005-04-16   982  	fas216_writeb(info, REG_SDID, target);
^1da177e4c3f415 Linus Torvalds 2005-04-16   983  	fas216_set_sync(info, target);
^1da177e4c3f415 Linus Torvalds 2005-04-16   984  	msgqueue_flush(&info->scsi.msgs);
^1da177e4c3f415 Linus Torvalds 2005-04-16   985  
^1da177e4c3f415 Linus Torvalds 2005-04-16   986  	fas216_log(info, LOG_CONNECT, "Reconnected: target %1x lun %1x tag %02x",
^1da177e4c3f415 Linus Torvalds 2005-04-16   987  		   target, lun, tag);
^1da177e4c3f415 Linus Torvalds 2005-04-16   988  
^1da177e4c3f415 Linus Torvalds 2005-04-16   989  	if (info->scsi.disconnectable && info->SCpnt) {
^1da177e4c3f415 Linus Torvalds 2005-04-16   990  		info->scsi.disconnectable = 0;
^1da177e4c3f415 Linus Torvalds 2005-04-16   991  		if (info->SCpnt->device->id  == target &&
^1da177e4c3f415 Linus Torvalds 2005-04-16   992  		    info->SCpnt->device->lun == lun &&
^1da177e4c3f415 Linus Torvalds 2005-04-16  @993  		    info->SCpnt->tag         == tag) {
^1da177e4c3f415 Linus Torvalds 2005-04-16   994  			fas216_log(info, LOG_CONNECT, "reconnected previously executing command");
^1da177e4c3f415 Linus Torvalds 2005-04-16   995  		} else {
^1da177e4c3f415 Linus Torvalds 2005-04-16   996  			queue_add_cmd_tail(&info->queues.disconnected, info->SCpnt);
^1da177e4c3f415 Linus Torvalds 2005-04-16   997  			fas216_log(info, LOG_CONNECT, "had to move command to disconnected queue");
^1da177e4c3f415 Linus Torvalds 2005-04-16   998  			info->SCpnt = NULL;
^1da177e4c3f415 Linus Torvalds 2005-04-16   999  		}
^1da177e4c3f415 Linus Torvalds 2005-04-16  1000  	}
^1da177e4c3f415 Linus Torvalds 2005-04-16  1001  	if (!info->SCpnt) {
^1da177e4c3f415 Linus Torvalds 2005-04-16  1002  		info->SCpnt = queue_remove_tgtluntag(&info->queues.disconnected,
^1da177e4c3f415 Linus Torvalds 2005-04-16  1003  					target, lun, tag);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1004  		fas216_log(info, LOG_CONNECT, "had to get command");
^1da177e4c3f415 Linus Torvalds 2005-04-16  1005  	}
^1da177e4c3f415 Linus Torvalds 2005-04-16  1006  
^1da177e4c3f415 Linus Torvalds 2005-04-16  1007  	if (info->SCpnt) {
^1da177e4c3f415 Linus Torvalds 2005-04-16  1008  		/*
^1da177e4c3f415 Linus Torvalds 2005-04-16  1009  		 * Restore data pointer from SAVED data pointer
^1da177e4c3f415 Linus Torvalds 2005-04-16  1010  		 */
^1da177e4c3f415 Linus Torvalds 2005-04-16  1011  		info->scsi.SCp = info->SCpnt->SCp;
^1da177e4c3f415 Linus Torvalds 2005-04-16  1012  
^1da177e4c3f415 Linus Torvalds 2005-04-16  1013  		fas216_log(info, LOG_CONNECT, "data pointers: [%p, %X]",
^1da177e4c3f415 Linus Torvalds 2005-04-16  1014  			info->scsi.SCp.ptr, info->scsi.SCp.this_residual);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1015  		info->scsi.phase = PHASE_MSGIN;
^1da177e4c3f415 Linus Torvalds 2005-04-16  1016  	} else {
^1da177e4c3f415 Linus Torvalds 2005-04-16  1017  		/*
^1da177e4c3f415 Linus Torvalds 2005-04-16  1018  		 * Our command structure not found - abort the
^1da177e4c3f415 Linus Torvalds 2005-04-16  1019  		 * command on the target.  Since we have no
^1da177e4c3f415 Linus Torvalds 2005-04-16  1020  		 * record of this command, we can't send
^1da177e4c3f415 Linus Torvalds 2005-04-16  1021  		 * an INITIATOR DETECTED ERROR message.
^1da177e4c3f415 Linus Torvalds 2005-04-16  1022  		 */
^1da177e4c3f415 Linus Torvalds 2005-04-16  1023  		fas216_cmd(info, CMD_SETATN);
^1da177e4c3f415 Linus Torvalds 2005-04-16  1024  

:::::: The code at line 993 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108190026.egvxoyfF-lkp%40intel.com.

--mYCpIKhGyMATD0i+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--mYCpIKhGyMATD0i+--
