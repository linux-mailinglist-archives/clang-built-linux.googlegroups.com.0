Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN576L4QKGQEDHQJIHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 01952249389
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 05:42:49 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id p138sf24581292yba.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 20:42:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597808568; cv=pass;
        d=google.com; s=arc-20160816;
        b=w84rO+Wa+anPDLdYus31MQnWu+3deat1oGPai6EweJQNqo+AGeD+P1KPEjelh8KkN8
         n9ou5qEUFcM0FrF3cCCaIWhgIBXPiqrE9tW5P5CFhyKcg93ek2ecA3DeSagZa2w51WPg
         41FBhC8fMdpE9k/ejQjPE8ID+67uzFeYIDBKmr4FjrD+VZseMfYxn+EFcyZTppazN+tw
         FsiHqWPzxZNLshMioM/Dd24wHyqkCYw+ls6Bas0t+cP2+Thqd90SjxCsWlWpkof4R1ja
         bitGP38qaCPYPlzh5iI9sxC4tsuSCzonNmFxNamrNEBWZDNXQkGyDvEYsZf4EgpKhMhX
         k4fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0hvOeg7eLOcEJab64AqSpucmBa7qifaRIini3eXwbqE=;
        b=zTMTgW31GuMYPB31kKEfaOKFFyXK0JYeaT+caBLg0+CCxKmQ8BVUQe9blb0vaIfGYR
         6fJyZ/q1T5o0UMhW4fuqDh2Ma9yKhAfj2j5JdGNOwc14uAoNTSCBHrCi5eY27Ycur4HR
         1lQdR9P49Lm0RvG96SJ0AQlSLfXquIwP02XW9tOp/nTcgndGDl3XsJ+JCuZ7iGyo1cDS
         r7OOngK9PIe5XKKVPqRF5ZBAR1gCYfrBZIs+VC5fAwXuh+jTnS7MHNCLGR2jx62OSdaz
         NyM+wijPmS2DwXWKiBr7H396kElCBWy/xuraKgwGgQZs0SPHTS1nIJ/kqR3vroxZqfws
         6GZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0hvOeg7eLOcEJab64AqSpucmBa7qifaRIini3eXwbqE=;
        b=HveGb49ZB+Y3E/GetKzDrYNTAvFglhp9dFy337IQnOiS6XnahxYGMN7MeZMLTv/Gmd
         mwEPGK0yfakuDcWq/pGXV6ccLf17ki1kyihzdRxCK6HB3uTJjDSQfKEk0ziOk9KNqGZ4
         YiCcw7yU46y8EIXMMefuHC2JytdJ4z2LheFQr/0oynurxqMJvngeIT6owWxLgVaDPNpg
         J1IYTAXQBzw8/+127dFvYLpA97Zuvt5yCwJ3XeTz25FL4c9FnLh0f0QUdVJHYRFQgFoY
         iTUhN5ChzV/0oYcBwigwak7t6KNpGWBbmG7sfcaSYO9tMfDPlGaOiF3NNRsV9p8TPGQj
         eNWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0hvOeg7eLOcEJab64AqSpucmBa7qifaRIini3eXwbqE=;
        b=HOxR5delzOjVpxzf4pRRC2Lqavd4m7DMktVWOXwtiACS6cez/eY3dZ+X5PKRacOV4O
         GvqOR/QGxKIdh9cYBS8cQO0UrWjm7jmrToPYuLKE3Bvw/Ue6pz7cQegDJ7YIR5d6cnhG
         //B3kvkECrq/tuRAApLg3HTfwUN/rrxLzKNQjnepSwCQ1kuDp0sPOHKVZQAVXZPbkFT1
         X7Cg+F0oKbGb2l6DUd5exjtJ7VEYY+pRzyLrt/SPGXiUsv/qYQrpbZiUDJ7yS11VKQSN
         jvrgHH1KvWZ7B6NSdCpTqvwe07yjX3xT1RkzNDJsyMvgScyroS0aZO3KZ6szTNovcPTu
         si1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gvbJv2UpfDybwEsyNVS8FWiIUDckKWg23mnLtkdD+wP6UqVfS
	WaNDXGU4G/9D6k+aFjRzzyo=
X-Google-Smtp-Source: ABdhPJxz+g5zUF6vBu+1Au6sW9XKk275M0oFIy3U7/LPAJZnbk6n9qIwf6lQ+zXrW9yFFuewOS9DKA==
X-Received: by 2002:a25:4642:: with SMTP id t63mr32015677yba.329.1597808567732;
        Tue, 18 Aug 2020 20:42:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:70d:: with SMTP id k13ls4007337ybt.9.gmail; Tue, 18
 Aug 2020 20:42:47 -0700 (PDT)
X-Received: by 2002:a25:c094:: with SMTP id c142mr33899699ybf.477.1597808567292;
        Tue, 18 Aug 2020 20:42:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597808567; cv=none;
        d=google.com; s=arc-20160816;
        b=oW+MFx8LCtCEIJ9JMaGKH2X3FSTQz4a822diqidGnGU0Q2YR2BqxjoCmUKGnxF/Myj
         khtwtkUWDadOQ753sYrNerw5QVgOh5QhwywAhEj8R77uTzSWOorLCZL02l4WQy0pOyyE
         /0iXDuht47JNzsEMcGZqGUQB7sS1rOtozD39yaqCOZtRRg6U7pD0lHxUfkAh3usiVg9e
         5+ZYNTUe7k+ruUzfJzP/03rtNgWOZpcvww7qF0FUjok1rSxd/RN2sz0QzREKSFpIPp8L
         8OfsyzuIZbcKAHrZYg2VE6pO0Fbyw8HovaHLq9RZ19QYxHFbjBvqIzkEzxJJ8acuWZIF
         +4qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=wK78sshCtQ+PNNdMdA+cYhBZUO83oFm5aMTByWCVpLE=;
        b=ZDV0yGoZ6jZNAha1Ps98kXIaa6Wa8CEnwL/6Sup/LYGl72fXpsgpyxYPHcL/9WBsve
         yCzA4pl3qFA4rafBzzh+c6GigwYrAX5FkWvCd9VxWxyzh2wgRH2H8GpRpQrKQPeTyijE
         op/ope1/Wj5FBMmCRBSJmSlfqla23p2HQehy13dRN/K87JQQk1RSfzaBiE9ToL5rUYub
         jzWwmQxaMbSHdkzOoxA96ID1azhwE6PFOjMx84GozL3rVXiSB+mVgz0od3M5/snaUYtm
         CPkG9Z4+EI/zR1tw5MUydPik7coabPFy1cOxQ6AdgMLG+jmqttepIsh4kzgkvakk4bqj
         c+ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id p67si1086469ybg.2.2020.08.18.20.42.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Aug 2020 20:42:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: tsy+6LaOIDJhRpvz+Af9IK3JuzdODXvTgZSN+we9zlFCGxO1Ncd+A2yxf8ljc04ALrE07WL8ic
 rOhD9WNYF2HA==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="155010543"
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; 
   d="gz'50?scan'50,208,50";a="155010543"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2020 20:42:45 -0700
IronPort-SDR: v2+BXtYoo1q95mnO1EkP1J3zfB2G4YioVuLBFizfwTDs2nr3bRJ9otVVLV9TAwqy17OWv/CqzR
 ZP/B9gQdi28Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,329,1592895600"; 
   d="gz'50?scan'50,208,50";a="310642609"
Received: from lkp-server01.sh.intel.com (HELO 4cedd236b688) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 18 Aug 2020 20:42:44 -0700
Received: from kbuild by 4cedd236b688 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k8Ezr-00005p-AW; Wed, 19 Aug 2020 03:42:43 +0000
Date: Wed, 19 Aug 2020 11:42:06 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-misc:dma_alloc_pages 28/30] drivers/crypto/ccp/tee-dev.c:70:10:
 error: implicit declaration of function 'ioread32'
Message-ID: <202008191102.CsJgMDPf%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
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


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/misc.git dma_alloc_pages
head:   43a18af742023face57c43633bca9b5f1aa21c3b
commit: 84a45a398f32ef52e3cbe97ea88822c96b4c538a [28/30] dmapool: add dma_alloc_pages support
config: x86_64-randconfig-a006-20200818 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b34b1e38381fa4d1b1d9751a6b5233b68e734cfe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 84a45a398f32ef52e3cbe97ea88822c96b4c538a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/crypto/ccp/tee-dev.c:70:10: error: implicit declaration of function 'ioread32' [-Werror,-Wimplicit-function-declaration]
                   *reg = ioread32(tee->io_regs + tee->vdata->cmdresp_reg);
                          ^
>> drivers/crypto/ccp/tee-dev.c:137:2: error: implicit declaration of function 'iowrite32' [-Werror,-Wimplicit-function-declaration]
           iowrite32(lower_32_bits(cmd_buffer),
           ^
   drivers/crypto/ccp/tee-dev.c:175:2: error: implicit declaration of function 'iowrite32' [-Werror,-Wimplicit-function-declaration]
           iowrite32(TEE_RING_DESTROY_CMD,
           ^
   drivers/crypto/ccp/tee-dev.c:258:10: error: implicit declaration of function 'ioread32' [-Werror,-Wimplicit-function-declaration]
                   rptr = ioread32(tee->io_regs + tee->vdata->ring_rptr_reg);
                          ^
   drivers/crypto/ccp/tee-dev.c:295:2: error: implicit declaration of function 'iowrite32' [-Werror,-Wimplicit-function-declaration]
           iowrite32(tee->rb_mgr.wptr, tee->io_regs + tee->vdata->ring_wptr_reg);
           ^
   5 errors generated.

git remote add hch-misc git://git.infradead.org/users/hch/misc.git
git fetch --no-tags hch-misc dma_alloc_pages
git checkout 84a45a398f32ef52e3cbe97ea88822c96b4c538a
vim +/ioread32 +70 drivers/crypto/ccp/tee-dev.c

33960acccfbd7f Rijo Thomas 2019-12-04   62  
33960acccfbd7f Rijo Thomas 2019-12-04   63  static int tee_wait_cmd_poll(struct psp_tee_device *tee, unsigned int timeout,
33960acccfbd7f Rijo Thomas 2019-12-04   64  			     unsigned int *reg)
33960acccfbd7f Rijo Thomas 2019-12-04   65  {
33960acccfbd7f Rijo Thomas 2019-12-04   66  	/* ~10ms sleep per loop => nloop = timeout * 100 */
33960acccfbd7f Rijo Thomas 2019-12-04   67  	int nloop = timeout * 100;
33960acccfbd7f Rijo Thomas 2019-12-04   68  
33960acccfbd7f Rijo Thomas 2019-12-04   69  	while (--nloop) {
33960acccfbd7f Rijo Thomas 2019-12-04  @70  		*reg = ioread32(tee->io_regs + tee->vdata->cmdresp_reg);
33960acccfbd7f Rijo Thomas 2019-12-04   71  		if (*reg & PSP_CMDRESP_RESP)
33960acccfbd7f Rijo Thomas 2019-12-04   72  			return 0;
33960acccfbd7f Rijo Thomas 2019-12-04   73  
33960acccfbd7f Rijo Thomas 2019-12-04   74  		usleep_range(10000, 10100);
33960acccfbd7f Rijo Thomas 2019-12-04   75  	}
33960acccfbd7f Rijo Thomas 2019-12-04   76  
33960acccfbd7f Rijo Thomas 2019-12-04   77  	dev_err(tee->dev, "tee: command timed out, disabling PSP\n");
33960acccfbd7f Rijo Thomas 2019-12-04   78  	psp_dead = true;
33960acccfbd7f Rijo Thomas 2019-12-04   79  
33960acccfbd7f Rijo Thomas 2019-12-04   80  	return -ETIMEDOUT;
33960acccfbd7f Rijo Thomas 2019-12-04   81  }
33960acccfbd7f Rijo Thomas 2019-12-04   82  
33960acccfbd7f Rijo Thomas 2019-12-04   83  static
33960acccfbd7f Rijo Thomas 2019-12-04   84  struct tee_init_ring_cmd *tee_alloc_cmd_buffer(struct psp_tee_device *tee)
33960acccfbd7f Rijo Thomas 2019-12-04   85  {
33960acccfbd7f Rijo Thomas 2019-12-04   86  	struct tee_init_ring_cmd *cmd;
33960acccfbd7f Rijo Thomas 2019-12-04   87  
33960acccfbd7f Rijo Thomas 2019-12-04   88  	cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
33960acccfbd7f Rijo Thomas 2019-12-04   89  	if (!cmd)
33960acccfbd7f Rijo Thomas 2019-12-04   90  		return NULL;
33960acccfbd7f Rijo Thomas 2019-12-04   91  
33960acccfbd7f Rijo Thomas 2019-12-04   92  	cmd->hi_addr = upper_32_bits(tee->rb_mgr.ring_pa);
33960acccfbd7f Rijo Thomas 2019-12-04   93  	cmd->low_addr = lower_32_bits(tee->rb_mgr.ring_pa);
33960acccfbd7f Rijo Thomas 2019-12-04   94  	cmd->size = tee->rb_mgr.ring_size;
33960acccfbd7f Rijo Thomas 2019-12-04   95  
33960acccfbd7f Rijo Thomas 2019-12-04   96  	dev_dbg(tee->dev, "tee: ring address: high = 0x%x low = 0x%x size = %u\n",
33960acccfbd7f Rijo Thomas 2019-12-04   97  		cmd->hi_addr, cmd->low_addr, cmd->size);
33960acccfbd7f Rijo Thomas 2019-12-04   98  
33960acccfbd7f Rijo Thomas 2019-12-04   99  	return cmd;
33960acccfbd7f Rijo Thomas 2019-12-04  100  }
33960acccfbd7f Rijo Thomas 2019-12-04  101  
33960acccfbd7f Rijo Thomas 2019-12-04  102  static inline void tee_free_cmd_buffer(struct tee_init_ring_cmd *cmd)
33960acccfbd7f Rijo Thomas 2019-12-04  103  {
33960acccfbd7f Rijo Thomas 2019-12-04  104  	kfree(cmd);
33960acccfbd7f Rijo Thomas 2019-12-04  105  }
33960acccfbd7f Rijo Thomas 2019-12-04  106  
33960acccfbd7f Rijo Thomas 2019-12-04  107  static int tee_init_ring(struct psp_tee_device *tee)
33960acccfbd7f Rijo Thomas 2019-12-04  108  {
33960acccfbd7f Rijo Thomas 2019-12-04  109  	int ring_size = MAX_RING_BUFFER_ENTRIES * sizeof(struct tee_ring_cmd);
33960acccfbd7f Rijo Thomas 2019-12-04  110  	struct tee_init_ring_cmd *cmd;
33960acccfbd7f Rijo Thomas 2019-12-04  111  	phys_addr_t cmd_buffer;
33960acccfbd7f Rijo Thomas 2019-12-04  112  	unsigned int reg;
33960acccfbd7f Rijo Thomas 2019-12-04  113  	int ret;
33960acccfbd7f Rijo Thomas 2019-12-04  114  
33960acccfbd7f Rijo Thomas 2019-12-04  115  	BUILD_BUG_ON(sizeof(struct tee_ring_cmd) != 1024);
33960acccfbd7f Rijo Thomas 2019-12-04  116  
33960acccfbd7f Rijo Thomas 2019-12-04  117  	ret = tee_alloc_ring(tee, ring_size);
33960acccfbd7f Rijo Thomas 2019-12-04  118  	if (ret) {
33960acccfbd7f Rijo Thomas 2019-12-04  119  		dev_err(tee->dev, "tee: ring allocation failed %d\n", ret);
33960acccfbd7f Rijo Thomas 2019-12-04  120  		return ret;
33960acccfbd7f Rijo Thomas 2019-12-04  121  	}
33960acccfbd7f Rijo Thomas 2019-12-04  122  
33960acccfbd7f Rijo Thomas 2019-12-04  123  	tee->rb_mgr.wptr = 0;
33960acccfbd7f Rijo Thomas 2019-12-04  124  
33960acccfbd7f Rijo Thomas 2019-12-04  125  	cmd = tee_alloc_cmd_buffer(tee);
33960acccfbd7f Rijo Thomas 2019-12-04  126  	if (!cmd) {
33960acccfbd7f Rijo Thomas 2019-12-04  127  		tee_free_ring(tee);
33960acccfbd7f Rijo Thomas 2019-12-04  128  		return -ENOMEM;
33960acccfbd7f Rijo Thomas 2019-12-04  129  	}
33960acccfbd7f Rijo Thomas 2019-12-04  130  
33960acccfbd7f Rijo Thomas 2019-12-04  131  	cmd_buffer = __psp_pa((void *)cmd);
33960acccfbd7f Rijo Thomas 2019-12-04  132  
33960acccfbd7f Rijo Thomas 2019-12-04  133  	/* Send command buffer details to Trusted OS by writing to
33960acccfbd7f Rijo Thomas 2019-12-04  134  	 * CPU-PSP message registers
33960acccfbd7f Rijo Thomas 2019-12-04  135  	 */
33960acccfbd7f Rijo Thomas 2019-12-04  136  
33960acccfbd7f Rijo Thomas 2019-12-04 @137  	iowrite32(lower_32_bits(cmd_buffer),
33960acccfbd7f Rijo Thomas 2019-12-04  138  		  tee->io_regs + tee->vdata->cmdbuff_addr_lo_reg);
33960acccfbd7f Rijo Thomas 2019-12-04  139  	iowrite32(upper_32_bits(cmd_buffer),
33960acccfbd7f Rijo Thomas 2019-12-04  140  		  tee->io_regs + tee->vdata->cmdbuff_addr_hi_reg);
33960acccfbd7f Rijo Thomas 2019-12-04  141  	iowrite32(TEE_RING_INIT_CMD,
33960acccfbd7f Rijo Thomas 2019-12-04  142  		  tee->io_regs + tee->vdata->cmdresp_reg);
33960acccfbd7f Rijo Thomas 2019-12-04  143  
33960acccfbd7f Rijo Thomas 2019-12-04  144  	ret = tee_wait_cmd_poll(tee, TEE_DEFAULT_TIMEOUT, &reg);
33960acccfbd7f Rijo Thomas 2019-12-04  145  	if (ret) {
33960acccfbd7f Rijo Thomas 2019-12-04  146  		dev_err(tee->dev, "tee: ring init command timed out\n");
33960acccfbd7f Rijo Thomas 2019-12-04  147  		tee_free_ring(tee);
33960acccfbd7f Rijo Thomas 2019-12-04  148  		goto free_buf;
33960acccfbd7f Rijo Thomas 2019-12-04  149  	}
33960acccfbd7f Rijo Thomas 2019-12-04  150  
33960acccfbd7f Rijo Thomas 2019-12-04  151  	if (reg & PSP_CMDRESP_ERR_MASK) {
33960acccfbd7f Rijo Thomas 2019-12-04  152  		dev_err(tee->dev, "tee: ring init command failed (%#010x)\n",
33960acccfbd7f Rijo Thomas 2019-12-04  153  			reg & PSP_CMDRESP_ERR_MASK);
33960acccfbd7f Rijo Thomas 2019-12-04  154  		tee_free_ring(tee);
33960acccfbd7f Rijo Thomas 2019-12-04  155  		ret = -EIO;
33960acccfbd7f Rijo Thomas 2019-12-04  156  	}
33960acccfbd7f Rijo Thomas 2019-12-04  157  
33960acccfbd7f Rijo Thomas 2019-12-04  158  free_buf:
33960acccfbd7f Rijo Thomas 2019-12-04  159  	tee_free_cmd_buffer(cmd);
33960acccfbd7f Rijo Thomas 2019-12-04  160  
33960acccfbd7f Rijo Thomas 2019-12-04  161  	return ret;
33960acccfbd7f Rijo Thomas 2019-12-04  162  }
33960acccfbd7f Rijo Thomas 2019-12-04  163  

:::::: The code at line 70 was first introduced by commit
:::::: 33960acccfbd7f24d443cb3d0312ac28abe62bae crypto: ccp - add TEE support for Raven Ridge

:::::: TO: Rijo Thomas <Rijo-john.Thomas@amd.com>
:::::: CC: Herbert Xu <herbert@gondor.apana.org.au>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008191102.CsJgMDPf%25lkp%40intel.com.

--pf9I7BMVVzbSWLtt
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICMGQPF8AAy5jb25maWcAjFxde9w2rr7fXzFPetO9aOuPxM2e8/iCkigNO5KoktR47Bs9
jjPJ+tSxs2O7Tf79AUh9kBQ0W18kMwBEUiQIvADB+eEfP6zY68vTl9uX+7vbh4fvq8/7x/3h
9mX/cfXp/mH/v6tMrmppVjwT5mcQLu8fX7/98u39RXfxdvXu5/c/n6w2+8Pj/mGVPj1+uv/8
Cs/ePz3+44d/pLLORdGlabflSgtZd4bvzOWbu4fbx8+rP/eHZ5BbnZ79fAJt/Pj5/uV/fvkF
/v1yfzg8HX55ePjzS/f18PR/+7uX1Yfztx9O9+fvz9+ffrp9+/H0w+nHf/367vT24sO7s/Pz
Dxfv97+ev737tP/nm6HXYur28mQgltmcBnJCd2nJ6uLyuycIxLLMJpKVGB8/PTuBP6+NlNVd
KeqN98BE7LRhRqQBb810x3TVFdLIRUYnW9O0huSLGprmHkvW2qg2NVLpiSrU792VVN64klaU
mREV7wxLSt5pqbwOzFpxBm9f5xL+ARGNj8Jq/rAqrGI8rJ73L69fp/VNlNzwuoPl1VXjdVwL
0/F62zEF8ykqYS7Pz6CVcbRVI6B3w7VZ3T+vHp9esOFxAWTKymGy37yhyB1r/Zmzr9VpVhpP
fs22vNtwVfOyK26ENzyfkwDnjGaVNxWjObubpSfkEuMtzbjRBvVsnBpvvP7MxHw76mMCOHZi
av3xzx+Rx1t8e4yNL0J0mPGctaWxGuGtzUBeS21qVvHLNz8+Pj16W1hfscYfo77WW9Gk5Aga
qcWuq35vectJgStm0nU34w/aqKTWXcUrqa47ZgxL19NatZqXIvFHwlowhkQzdlWZgo6sBAwY
1LUc9g9sxdXz64fn788v+y/T/il4zZVI7U5tlEy8Le2z9Fpe+fqjMqBqmKROcc3rjH4qXftK
j5RMVkzUFK1bC65w9Nd0WxUzCiYZ3gh2IVgZWgpHo7Zg7mCHVjLjYU+5VCnPeisjfJOrG6Y0
RyF/pv2WM560Ra7D5d0/flw9fYrmdrLZMt1o2UKfTgEy6fVoF8oXsQr6nXp4y0qRMcO7kmnT
pddpSayStanbadEjtm2Pb3lt9FEmGlSWpdDRcbEKVoxlv7WkXCV11zY45EH7zP0X8LiUAoJn
2oD55qBhXlPrm66BtmRm/da4ILVEjshKeptZNrUzRLFG1bCTZP3TuHSzgXm7WnFeNQZarenu
BoGtLNvaMHVNdN3LTG82PJRKeGZGRofTT1natL+Y2+c/Vi8wxNUtDPf55fbleXV7d/f0+vhy
//g5mkR4oGOpbdfp9jjQrVAmYuNiEcNFTbeaRDeU6AytRMrBXoGEIacFvTZCDk1PmhbkHvob
r2unRaXtShNqBPPXAW8+0Y449g9fO74D5aJMqA5asG1GJHw320av7ARrIqEczERZIuCoZB1y
ag62SPMiTUpht9E4F+E7hhgjEfWZ16vYuA9zil0on7wGo8d9dFZKbDQH4y5yc3l2Ms2cqA3A
RpbzSOb0PHA2LWA+h+LSNbyLtQ+D+uq7f+8/vj7sD6tP+9uX18P+2ZL7NyS4gWHUbdMAMtRd
3VasSxjA3zQw2FbqitUGmMb23tYVazpTJl1ettrzoD1qhXc6PXsftTD2E3PTQsm28SarYQV3
m5Z7vgecdlpEXwfoENA28J8HF8tN30PcY3elhOEJSzczjp3kiZozobqQM+HbHAw5q7MrkZk1
uQ3BIHjPUqDEsRuR6aBlR1YZie56bg4b58afpp6+bgsOC0S0l/GtSGkr20uAfVi0OMNYucqP
8a0Lp3a9TDejDDMs8DiADQEcgMWjW17zdNNI0B70LwBLKHzndgcGDMOS+6gSlirjYKwA1ZAL
oXjJrkPVgdmycEF56mC/swpac6jBw7oqG8KPafmzOYKfWGHcAQQ/3LB8GTUWYfOJEYcXiZTo
+/AzPaFpJ8ENVuKGI1yzaypVBdufRM6RtIYPHqgDMGTK+DtY/5RbTwsGHhY2CouaVDcb6Ldk
Bjv2Jr7Jpy/Og3ibHGIJAVDd03kNul6BT+gmTBYte88g3itfw+b1UZ6LMEb4Ehjq+HtXV8KP
TD37xMscJl/5Dc9ed1oqBog4b+kBtobvPFuEX8FWeD010oehWhQ1K3NPX+27+AQLLH2CXjub
OQU+QlKQRXatinAKy7YCBt9PsD4aLOGq2Vgwz7qr0G4nTCnhr+kGW7uu9JzSBah7pNo5xB1s
xJYHk9vkR9Z/8m5DnIryv/kBgjfsyKehs5sGD73UabToEOoEcY41jJZKjAVa4lnmex63T6D7
bgwoJniXnp4EpsB6/T5H1+wPn54OX24f7/Yr/uf+EeAdAzyQIsADFD6huYXG3TgtE16/21Y2
GiTh5N/s0cPIletw8PGU0uiyTdwggs2M1N7z230tKWSNKScG62iTYd6zLFnoKBSTtBjDnhUg
k15P4ratK0Z42SmwKLIibW4oiME9YNuMFl23eQ6Az6KhMRZfiI5kLkrYmOT6hOm84YUu3ia+
ju9snjf47js8l3BEQ57xFIJ9b6O6zGVnXYe5fLN/+HTx9qdv7y9+unjrp/M24HkHDOgZHgPw
y/qGOa+q2mi7VQg7VY3I3MXFl2fvjwmwHaYiSYFBR4aGFtoJxKC504tZKkSzLvN9+MAIvIFH
HG1UZ8FM4GVc5+x68I9dnqXzRsCSiURhliILActokzAAxW52FI8BRsJsNY98+CgBugTD6poC
9MpEtkhz4+CfC3IV997cRlkDy9oyaEphHmXd+gnzQM6qNynmxiMSrmqXZQLPrEVSxkPWrW44
rNUC29p2O3Ws9GBxL3IjYR5g/c69vLDN6dmHl0KY3jrC0O3G9L2RZjVsXZbJq07mOUzX5cm3
j5/g7+5k/KMbbW1S0NOGHHAIZ6q8TjHF5gc1TeGCwRLsaKkv30XxF4yBu62FK8hTl8Oz7qE5
PN3tn5+fDquX719d8B8EjdG00JapaggLiRYk58y0ijso7xtIZO7OWCPorC6yq8YmBkl+Icss
F3pNYnYD+McdkATtuT0AMFRRbh8l+M6A3qAuEpAMBahuAwHcvyXYD9qCTxJlo+mgBkVYNY2A
iM5G7KXzrkqEP8aBNg+3prWyAZGsQKFziFlGo0PhtGvYkwDmANwXLfezjbAwDBNbAfroaYuh
Hr7aeovGqsQYu9sOeji9PJkX2wA8iPp3CdymxWwkKHhpesQ7DWZLr9E4yCjRRmUPB9EhtTI2
8hsT5VoiCrLDIjtiqaqPsKvNe5re6JQYS4UY8swfA7jWBUQxOoWmXVgEu941OO3e9Lv80oUv
Up4u85wGIwZOZeM5G+ThpDRgY1xwrtsqZDcXXS2bkGZ0GhLSqtml6yICH5jZ3oYUcNOiaiu7
sXNWifL68uKtL2A1EcLOSnvwRIBpt3apCwJUlN9Wu5nFmhAVZl4xzuUlKK6XX4HewWS7aZmT
YTPPievrws9IDuQUMDBr1Zxxs2Zy55/drBvudFhFNA7RMAIBZbxZzarAShQMtFpIgFOEgtTW
C2vErOCHE15At6c0E8+eZqwBDMeMiQDvY4cYHrpYrcND3g6dQkiHMHNOVFwB0nS5h/4k2iY4
8HAstttVaEGd4/PCky9Pj/cvT4cgr+/FQYPK11H8PpNQrCmP8VPMzQeOyZexdl9ecUWi9oXx
+lNyejGD8Fw3gBrivTScVfXqInxldBPelPgP95Mw4n1gBSuRwp4AK7JgZdymiz2woNJsyHtn
oUs4jEwo2GpdkSCwmi1q2jBXXqGNSGlvijMKOAk0NVXXDXXq4BCXBRpOkBF4cmRPkV7AtxZh
OETGo0/vPURZ8gK0unezeKDYcoSA+9uPJ95f+G4N9oYPpteLMMGaWIhEpMYUg2ptXm1hdt3Z
LB4pXHk2sjIqWCP8jlhRGIgD6MjSDo4tzqSLdOOV0hA9LQysrUTkD3oI5Sazh6sI9jf8WlOS
Ru/snCO6jjuOJer/AstGSUwYk7I8F8SbaJ5iYOh3v77pTk9OyDaAdfbuhAJcN935ycm8FVr2
8nwKHByqWys8jPSf3/AdpwCFpWNcR4V7jtm0qsAEw/WsPcwo0glkxfS6y1oyHGjW11qgfYc9
qzAIOg1jHwhPMaMR7j+nT5hixmxeuPw2arRP+X566AVC4qKGXs6CTrJr8OsAjnr1gmBZ+kVW
U3dOYJkzddSwzNYznHybqs3sxo2tbGD3Y5GdrEt6q8eSi0fiaZXZIB68IBXggF6LHF45M92s
UsFG8qXY8gYP9C6949Bj4eFMcWAmusFU+zxnVYeZW0vTlG18ntjL6KaEyKRBT2h63E1IYdRu
8wSVKBTzT+6bp7/2hxV4ydvP+y/7xxc7YpY2YvX0FasTg6C2TxTQm3TKM9CRRLXoTYb4Hbv1
xj/7Niyt1XkNtllu/ENJl/sRxdr0GXN8pPHzP5YCi2nAWVjgYP0hNDWlzryApOnDwoIM9lxb
Taq6aAu6kTY+sLAkxbed3HKlRMb9VEvYI1gLonrHl2DxCyXMgKO8jqmtMT5MscQt9C0jWs7q
+XuDJi31b6MHxX/vICSPmppA/wjcaLbIZjM2MmeDmR5jRaF4EWdxfVmzBgjGSsJIO7bdDW0D
myCLBxDzCE1YiFxxjKnAxPdSbIvTJiFWAXOzOPR+mwOM7LF7+LxOFiCbfXYhBe56bjXEvmBN
zFoeEVM8a7HiDHPqV0yh91+wsFYcPi0X9lk9bbiILOZI74/9whaRQfaXNSangP5oWQQerYJm
LNmeYQHgM7mvHIKM40Odi8upvmmVH/b/ed0/3n1fPd/dPrjQZ/Il/aZYKhcinh4bFh8f9l4R
OLQUbo+B0hVyCx44c4cHQdcju+J1Szs7X8pwGqwFQkOaiFxkxxpSSr4DHN/Iy7JZrDivhBtc
5n91QXaqktfngbD6Efbbav9y9/M/vfgTtqALgDx0A7Sqcl/8cxH8gCmQ05N1EFyCeFonZycw
Bb+3Qm3IWcIDi6Sl9Kg/ysDg2zMu4Jvr4ITMQvxrnSfkdCy8p5uD+8fbw/cV//L6cDvzzjZR
Mwaoi8h9d35G9ztr2zae3x++/HV72K+yw/2fwcEnz/wTcYAyLqDoCblQlTUjgGIqv8Yoq4QI
yiyA4A4jqYpo5OHlgIqlawRrgOYwpoDFc1lRv6H8qkvzYrGtQsqi5OPAggyPY+mKNkA9G7MZ
NmViXcUxSTxhlbWW8NHmaWaB6RQdjQcUg60x+8+H29WnYdo/2mn369EWBAb2bMECE7zZehkK
TNe2APxvBkg4xS1bOlmKuWWww4r2wOBlt7t3p/5JkMaznNOuFjHt7N1FTDUNa/VYhjucut4e
7v59/7K/Qwz908f9V3hNNBITPA2CqTDj5MKvkDbke3ltfNBkZ0e6g2BPeqCgxxodxDQd7sSJ
nKrfIKwDc51w2oJCbzzPRSrwHL+tbfiFlVcpYp0Iv2CWGCsqjai7JKzYsw0JeEE8cCWOGzfx
mZij4qEPxZANTe+bwbsrOVWJlLe1yzpY3QCL/5vLQkRiQbXPVNZiW1wDnI+YaEsRN4milS1R
C65hhq2/clXyBOrLAdVjFNfXmc0FNDez2DVg9jm1ajbpbuTuEpA73e+u1sLwvkDWbwtPUPUY
SxtbaGWfiJvUFYad/bWdeA0A4MAGqzN3MNlrSuhrnJyrmCGXB68YLT64vuoSeB1XIxjxKrED
7ZzY2g4nEsIzDjxPbFUNhhomPihIiktxCG1A7IlRrC2AdOeu9gmqEaL/odpG9VOEmRVq1aat
eZzrV0ON2KHtIAKBMKMPGLAWhWRj2TQl0muX2w2ucLk/wYkH05uEXrkwfo8k+ufcOcACL5Nt
EJ5O79kn4fpqBQ/3LtC9J3F2S1CFiDk7MR9a/Ft0fFFZz2bBbiBhwPv3q2qPYeOlRzPBd8aa
ko2YtbJwqyC2o+SNgmAbSFSzKi4wG6xYjalvNOhDwuXvynVNS7aJfKwdi9MctibDMjH1A+5U
0Ussc2vBTOzowMoMuXqewj71cgrAajG9gk4HazBxDxC20bKGJB/Vd1BKFAnwnTC00Q6fmqqT
Jv0arhjNvQuMVLik2FgU5UVRrhDp/CwR7iSQGjPOtHua8gYGfI4ZrvCpq52vyIus+HE3veTj
FGsaGwS4JQD8Pu0b+ocRJYArC6DAlBXFunGvaJBML3kVmcMR0IjGUrn96cPt8/7j6g9Xrvj1
8PTpPo6DUayfhmMdWLEBWQ31xkO13ZGeglnBi8uYMRF1cEvqb+LGoSmwCxVWBPsWxVbCaqzY
nE5h+23hz2m/XvamHkwwo5MrvVRbH5MYXP6xFrRKxwu9YVg+k1w4b+jZuBUUXyio6WWwLOsK
vL7WaCrHmwWdqGyulny0rUEFwRpdV4ksaRFQ9GqQ22DVMZ14twbIXmmKk7xJmOTGGwY61Zi9
+j0seRnuHiS6IInuompEx0xFoYQh7zD0rM6cBkdOgwBWfNHrO0iAwZPGzMtMPbHhTMKeoNLp
LhS7SuhM43RXB2ICPEKpF85DA8FUkjfL3bCxTi/X8Qvj+smG0VqIAu7O/WBFonyEO3m4Pbzc
415cme9f935BNQPM7tBqtsXLFEG2gEE0V08ylJURu4nvRXI6p8gAyQtGMgxTImB4xUQpPYJJ
QmdSHx1lmVV048hYvP1TLIyoLe2N4+OD0u3xidswVZFTgWkKgozXzC/e0wPyFJka0ZD6i3TA
V73qd8zHhRsRaIjkhJyRlSshdtfH5XRnz9MrkBLSHfxmADzC34TwmJvrJIzyB0aS0/ndsL8p
oVGfTu23db8jdANAFp3BDGNM52BGYpyoqivCw9uL+Zltxl67XhZRV5QAul9MouFRVMmaBs07
yzL0B5018RR0Ga5ldAnP8T+MscIr656sO3a9UtC4Hz5MF+3sIvFv+7vXl9sPD3v76ykrW6vz
4i1XIuq8MogzPUUs8zCZYweFYd54+QRx6ez2aN+WTpXw7zf3ZPByadhkHziOK7w0WPsm1f7L
0+H7qpoS2LPc1NGKl6lcpmJ1yygOJQzRDkA9TrG2Luc6q86ZScRpAryzX7ThxSIcsdCynOUI
w+Npylq5s2l7Lu1q2t5OkwxoPI1btJGQ4rgL6BpT//h6bAnzQ11URo7VBlatOxNf1HDlrBJT
+F6iUHtzPKiSnUP34wGZunx78q8LH8jMg7hjl6MAzqyb6LZtUMa/8QaQQmxd23pSf/vAi4bP
p/6tCfgyv+4zEsmEOHLxAoK+/HV65Ab7IN3HTUMXStwkfux6o6thLbw2HW0su6+c4aEaG0Tx
AHme8bPJ8iHfGdjobLjpM2QAjsUfjb36QcTVYNi0+wkGYHZ5yQrKfjZ9bZVflWhLTxd/SQA2
FdjOOl1XTJEn6/7IbEzu24F+ulwkD9atbKJfhlg2QZOu+ZeGNomr3R/SjNaO1fuXv54Of0Cc
NTdgsFk3PCpfRwoMiVEzDe7OC2LxGxjfKqLgs36Thrz9uMv9okr8Bpu9CC71WmK7BJgt1xYT
5mzh3rYV0W3S4U2IpRJClHEG6FgjZIFlMPh19DYQWUUU0fTVcdPiYTmf/8o96eiAdEWVsolA
FUTj7gOHv6IC1AF7d7ZqOMRDmBtMMJbjR1R+aLkp+9/PWhRzdclOmBnqjsooBKAlkX5hG3Ca
uom/d9k6baIhIxlP76hau56tmGriSRaNoJ5wrALRB6/aXbhW0Jxp65qX88YK8tY9zpV7wfHH
N4J5tDzKw17X8ITcCD974TraGhGS2swblUfPpXdLEJUj0FBLcBrqnec7Gh74LiY1BiHYeCnt
T4QbKKr6gprOxmuJvdkI5NKGIuMrx0bGMhS7mlmuUAK5sLSYkqbNAXYJH4txoxDvMMqkbeKn
WAeAMfAv39y9fri/exO2XmXvokTOqBFb/24pfOs3KeYI81B3/p+zJ1tu3Fb2V/R0K6k6uRGp
jXrIA0RSEiJuJiiJnheWx1YyquPYU7bnnHz+RQNc0GBDTt0Hz4jdDRDE0mj0hg6n8tQ5FqCk
0ZkJgG81EaM+BTplOZoZS2pqLP/R3FiSkwMR2GxQtTTlxdJuhGKa1FxZEutQ1SJXh7szBOnZ
pFCjlwBwV8YWBK8p1WzMCi2s3HpA22WD9bofNT41GeZn3FXSFzwVUuSnU+Dp98e7ZZOc9dd9
QiZFGDoGUU+2IrldUVrQQy5HC7IvgvUJZCTMo4qqgLSSQvCtvQuqQlLcVzp9uRultmBpEmuT
Fq20KsbIgQNHYVjYbCgcmI6SnwAwCUMevbsSfLYVNUDk99I6gZw5wK4y1bYMG6TRRJjhXNDK
i86mDh/SJiXYPzz+G4X5dBXTdVqljEIirHA2GfncRJtdk29+DzMywZWiaFml3uXU5APGOK6J
oAPPE1owcpWwfcVN+nELXFh4rzVZ9ButraiMKCFRrmkzU5d8kidtWRR2MwuudKu5BcT7IKtw
WpIqlQuJlGgAlTAcBgywtMip9EmA2pT+MpjbBTRUjrlzQSV+ZXwKPHWnVKQIBfhpRo2HWXyn
hbaOvZgPm5JHpg1WPzd8l8r5mOV5YaeM0/iT7IbW+u3U1WtK+TaXc49iEYJhPqYBSCSUIMnA
4QS4ns3o6WqSbcqQ9syyiUAWcDrrm8Q7cXZKuB0N9SEKEd/4orSi/SdNmoP48ilNWSXzhg6k
N8nyMHY5YJtkd+HnVcnxX8+ms0/pxO/M86aLTzqvKhlPTE2oml/B1PfuKFizO5lz2ECkCBHF
ITrJ6efhuNatogSpYuQjlUiLVSw5mHWdGlZI2QKDeRFFhfUIJh6siql9qkcSVhjbU7HPUeOX
SX4ucCBCC6KTmVo02Z486cZxDD23MKI5B1iTJe0PlSBLSg9ZxbCkONBC2rWYnlwGVdscSnHJ
wr4laCqNUtoNbrEhlUYnysDzSuSQ2xmxLsl5mbKYkZXlkhWc5EKvQup4fdKfZ4ifHcTaTXpw
IpknTvx30t6+pzTkZn19C7TdpkdRrcAUozyUsrtUinDcpLRIrLMvQCRXyzGNWhgWvwfqzJGd
Yi+onUsNmepGuUTwa5OZHGUBpzCN6mu6Kyta5FSvDwUVINnaZpXsW5rmLgOhBeIIt6KsQbF9
3+CUZps7NLHbBF0jk2yrAZx8XN4/LMcO1ZJDZWVixVyxzOWhNc/4KMtSKyGOqrcQpubRGAiW
lizijogFcrVtkKZyA5ms4sgh9suBo0Q+BcfpJCUoFVvwMnPVdItVSbSIk60ji7vEdokUOsFa
O/w//7h8vL5+fJs8Xf5zfey8vU0zWWVnUpCQfcg31VFsSKAK1m1D+azv60k2DinDpHHt7yaN
3Lvpr1UUIuL5uAVHRua7bQuFqT+d1US7C+ZN61sN2soGOes97ZGtWQ51eUpGgKZt8QBl1X52
sGdJdRCjCdtFWbgG1JCht3IVl4707RJ5CKlQStDIlkekWjjzMk60N/mwYLY72Ii80drvES+X
y9P75ON18vUiGw02zyewd07aLcwzDOotBJTAYLyAzFu1zok1HdqQmkm01GPrVaITGATGeWh7
4GS8EXCXtaUPXxeDKwBiQ+txxlcb73KvCBk3jM3wRJjUACrrkUzewZE4+CBTMy2Mi31jJcjv
YCCuV9W9O8ywJwQLvykFUP21NU6Q8kFumTtemRYlAGYhisFrQY1j+QF6Py4h9lESEhvJw9tk
e708Q/rCv/768XJ9VPqFyU+yzM/t1EfBS1BXGnPQ5DheLniK2w9mYk+F/xvArSmgtoCG+6Hd
7iJbzGb2OBEUsqijPZhBdJBGc138XQB3VySqdihGsLbh5gDVxZi4BY6pxWx7LrMFCew7pd+D
/9GQGQZAwaRc5UhuD5r9LY2jtIOdcAs57LDZewe5keLElvHk6sN3yGgn6jxHcs5WHrxyeonE
1b6S1J1QOVSk/ZOHFKZaI6Z59SgEThNzfAaGZ5dWAHk02Q/t7RICAZU3hPZVGLpegpkrGhZw
oqC3b0A2RXUDuTm7cFL4oSRVwKhYSbuFTi4LuFLn/evyE7QX1KDiojrSixOQkJHWwhtYVuE+
VN7PsBO2QcAYyc08Wary0hqXgiE5W9XYRo8MYmobvg0RmzY7BNjj68vH2+szpJEfZLh2cr1f
/3w5Q8geEIav8of48f3769uHGfZ3i0z7Ib1+lfVenwF9cVZzg0rz44enC6RMUuih0XDtxKiu
z2l7Rz+6B/reiV+evr9eXz7MLQG6WYqoKtyIlKVQwb6q9/9ePx6/0f2NJ9i5PcpVMZ2X93Zt
w2wIWRnh2SsPwWTKeUmol3Lb2l8eH96eJl/frk9/mh6w96CKGOabemxylM9Ow0oe5vTxVeMd
Vq4WmYs931DtLFnBLdG8BTWV4Cvfc5eRoobQF7xAopjZ1Ea3C14eU6ta7eDGSu2rSJmk2yH/
zB6HDSBDtccU3PZx4oQOC2439Lm1o1Be7U1oCXX6Eo+H79cncPHUM2F0ADN6ZrGqx00LC9HU
taMvF8vgRl9CUXni9qnCZa1wM3LmOto8xNVeH9vNbJLbrj5HHSWivYyGz0FgSGm1RzdUnaq0
2Bpj2UGaFN8dI48KWcSSHNsZpPCrau+DxtX9IaOh6EObn18l53kb2rw9q/gL5G7agZRoEMHF
IAMSfCfZEAk+fMhQSoUR9p0wiBQUQR+NTs6xoQgdeGHHbbcf1x+ZdGr1E3ZM7Y6DKkzDxNK6
RHXgikpOC0MtOj6VOMBFw0Fl0ZaV+zZEwNEOEUDGlKtwS6xihonXGRk31c7vuMsL0KdjAnmH
NzzhFXJyKeMd8t7Tz1gEbmFSGOIjYJqaB/mudGlo5IELqcA6NXe2eBoAchtnoXY3pPNaOBZa
n8yCOAWle26nlkB5IXopvNtQcilJ21lhIV9OG2JLDtQuc4X+VLQmOt8Sg2hnWypUSISdRakF
UXKa6bWlXLbUZEvl8mgzYnXplj9eH1+fTV/ErMC5odr4GqSFaUNusmOSwAOtF2qJtuSdMlGJ
E/N11CAmCxHJ3uLFzK9pldOXkjkUaG0txzS+TQAa9psEUbm5HW6UfYIXh0/wNZ1zt8O7PlH1
HCiLw+jkyDcE4gxwiNhx409rCvhs4D7rgVLg4dG6iVMaG4Jxd6iUUCtRRN+PpxRtVoqU9FbE
JPtz6gjEUWi3kgqwW1r9p3AuhzqNZOXOtlR1R3zzy/WR4fr+SPEhFi38Rd1I2ZvWdcuNJr0H
dklZ3TYpJDJAXGAv97Cc0lpWfJta3a5Aq7r2kCkuFOuZL+ZTSvSUfDjJBejOIWknD1FwuOTq
CZJkWRGJdTD1GeltzEXir6fTGXq5gvl0ckoRZyIvhRTmEn9BZqnsKDZ7b7Uy1FUdXDVoPUUi
4j4Nl7MF7bEVCW8Z0KjWCLcBscAVBOZatuZxa3TZ7GDchWsy6kZEW/vQ1FVzKljGKV1X6OPr
KfSznEuyRaxsfG8x7bh+HMtNLDWOnN1IK7jkHz4ypLbgG/lfW4qU1ctgRZmnW4L1LKyXRNU8
qppgvS9iQfP7liyOvel0Ti4+65MMdrlZeVO1Bkasqrr8/fA+4S/vH28//lIXwrx/kxLi0+Tj
7eHlHeqZPF9fLpMnuYyv3+GnuYgr0KGQbfl/1Due8AkXI/WoIZdWUmwDab+gFH1dzlqcjL8D
yj/a0t4TVDUlVxom6G4i8ZePy/MklfPxfyZvl2d1WfdoVnWXEIQ4JkiEfNtYmrdTXjgFtFvv
MmTb8x2WdeXzcHuBTp9TxiFsj/eDGSUO94iJQcia7OQQ8qOE9CFfkZSQofdzCpcefM82LGMN
o6/BRLsHUnNydJtt1Od0Kp4vD+8XWctlEr0+qrmnlMy/Xp8u8Pe/b+8fytj07fL8/dfryx+v
k9eXiaxAH2ENIRCSaNZSKLdvzpVg8GTOzLgdAEqRo+CUOAdIIbHULJWoHdLsaEhjkRPogu7x
XnaLkwMnLddDq8LI0dww6sIg9HRx2JuHArI59IIyaFS+Pdc3qYxFPA9JY65KZwpHjm0vtMOA
PX67fpdU3Qr49euPP/+4/m0P4XAz6VjObtfEjV4K02g5J4PxNUbuZ/uRbz719fJIcXsw1GFQ
pbfr9YzGR76PeYpZuanm18+wJCUbafIS6Sy6Qvl2u8mZeWNihxnd5NoXKSq+9L0xovwCeaPH
8PajRiHWyvUrDpd+XROIhHuLekb1OEuj1RyL2zZFxXldOEfrVtGq5Nskrqmy+6KaLZc3yv6u
Eu9n5BSTDbo17lXgrXyi66rA98hOUJhbVWYiWM29xbjOIgr9qezzJk+IYe+xWXym3itO58Nt
NiA4T+kQ1YFCLBb0Z4kkXE9j3MsjoqpMpZR8k+TEWeCHtePM3FcUBstwSkr6ePJ2qxESgHTu
FKOFqLKDyE3CVMxy4NFVifZ6wfETvpNMQUa2QgW1eJ9qTNsKnQP8JylG/ftfk4+H75d/TcLo
FykG/jxmFMK89mRfahiRz8S8mqWn2xEw8/It1dD+mGQOscLI36CXJb3yFEGS73aW75yCq9Sc
Suc3kl1VP1SdPPluDYiAfL/jIZDHXhLM1b8URkDSSQc84Rv5H1mAjT9Fwve5qByXc2masuhf
NlwPbX2oVW+Sn5WjC30YUxNtT0pX1KzulW+meQikF9V00xqujD+dHIQUL0h2oBR7kkalNBqq
A1CrchuaDsAC95U+fRh2wP9eP75J7Msvcu+cvEhR7z+XyRVus/zj4dHIeazqYsgDS4HSfAMJ
opIibQNzf5taDYBCpKSAybg8kXpyS3NTMLDNqercNIIn/pxEK+yWvtA5JSMDlZam03wMR7ZQ
HjVViiOqjERCwixTcQ2wAjOvzjW3fQdWZMB8G2uIWvT2KFBqBf0Ma3UE2yKRrSNkFANpkco1
bBf/5vnBqKAlWNrolvuMZhp4Xk+82Xo++Wl7fbuc5d/PyEzdVcPLGHzhqMa1qCbLxb25qm/W
bQwuC+XpMYdbPJTNg+oA7SyG1VIpx55U7Vyg9ezIU14/N54/9cbA6WIMLNl5BAutxAf6/el6
+vffiF0gjMMFt3sNl1P3FoGsxZ9aWrR++aRd/5lMJ9V6RgyqcGB3G7Vkn1ANbJxRbiuAgcEX
VRmzFL/iCxE09UU1x+HRAjjJYeCiFrtcC1Zee+LobIpJxqNqtZJDiRuloP7Cp6G2XRzhyvCE
r3xG2K5ldstZumFCsMixSaRyyyn5F5wxqweS7WH2Kzi72aWQakhOmRhX00FVw+FkmqDlYVJU
NWSjLe+NW2cRXjdyihu1J1ehRIhcik/mJ2gH0fG611491/ePt+vXH6AFas3wzMhISDmlbBa3
Q442ktmLLa357WicZqOeQMp5/G4c9TUiTKvVYkat1p7gFATxcrqc2pxMIdVtZ3teQIjXer5a
3X6XSR2s1rdCqvRr69rKuYBQzS7JNyzxyZb1REV1uwf+QUjeXciC21Fu4OlWxQdnbvmOTqQi
7ALPnGpVkjh1BUd01CdexQLuIBfhagbfTcpLnZvZP5y3vWYSkh2jHSqNxk7ZpziTjKSZhY5L
OA0aFrGiIi/hMol2sWkziitv5lkToqNMWFjKDgjRTQ9CSpO5wwyOClcxnWNQ67crMxWJWS5l
X6zQpQGF0xmmUeB5ntMSWsDead/YMJRt6h3pYmG+8O4ISx4z3ztHCkCzXBnSHwADnlvHioQO
Kkw8i8yjmWvimZcaJbVj+rCjPLJQmlqDZlPmLApzY0vfzOfoQbuIQgyMdTNpi1M55W7gkYYk
TEElR8arZDXiP6FlFTPsNLvc9uMy6nAcWtQtVg7fClnMbLZ8kkdX5OaqYNtE3YHVZuqwkMp6
TU4A2cMhuj5pkzGSEKgy8xwppeUNflKb+P6s8jYg+wbgXHYL9IoTP37KUsJ9nAjMJAkieTpC
fCumzZhmEZWozkzCVjdxaOYtixBnNIpGcWhP8uqY3NiSu3KggbrdKrgCJjaVt7Gf4XOghowd
FDB6E/t2JfK/2QiWgIq9HIHF4X7Pzgfy6+MvsNmTKH2DConaH9k55iSKB/7Clgg6VBsdN4yr
R14QGbd6ckQ3dVgid7S9TMJPtBaA164iNgcfMHPn22lG8rvDbmp0RsrKU+yMseqIJAXLcqM7
06SeN2a6fAWwtRcK6BLo+xKdR+sAX1A1LZptsaPNbH2Rhrz/XKLF2XIqGWA2YzMwo8vjNA6Z
SDQI3Az/wiDtSs43NLz27SogyV9Vmhd+a7i6pFs2wqxmeyZnNkjNZuDnQQTBHO05AFl4sgpq
xEHUDuY1/j6r+rxdp32NcmKs5jPKxGGXFHE60nF0+PuSOghvpaicufb+jFVQ4+0Xy59xaSUV
Fb5DPD7VpD0EV1fmWZ7S7AgfmTMuZTHIbJlJ2RRyCTQOucCs4cQjLJgpxWvkEgaNovmB6gq4
4o+W2tp0jdqtHl3HoG7WMttwH4NT8Za0T5s1xpmA+x+QgjH/dM+8S/IdNvjeJWzmsgndJbbY
NNRYxxnoTYZvuYsj9NALPUN1MXn9ttm8I3hVpEj/cxeCa48r7VWZfjrOpXkJabmczkdH5o5Q
HxY/qU1OLGTXMHGQO8HYi+1ng1SwVBwtmw7sRc6jiFk2jinXP5MiT1i5lX/Y2uRwaxQQqAkd
784u0NXLEzLkH5Ggw4l8XJMbvkR46yndN6mZEToueIgCTQG99swDp4LMfUdteSgXRlxXjlEX
lWKYn3768bMPv8/yQuDMtNE5bOpk55q8Rukq3h+rT/hrhRhFBZfBwga5v4fcBpTJIsE5XYyq
TmSElEFw5l+Q8Kyfm/MCDUUPtS4Cb+HgZKFv8CJeZtDwrL86kqqCZWRU8tBY7RZplm4dJVnN
3ayjpUkS2fkWTbcfRBHq8ijekj4W4rA1k3nzAhvr4ExcQtStOxGJ2DguTk912BUYMLCOB3vL
dWRlbANBbXkEoSa0EbzaMPOKJQXdFVh9pIByeYVgNKGPeprk5PJiU+hqf8wix/crgrogc/bK
yW1FGgPAOMaKs4QgEUnuPFXJ4d5oO5xdO11zPgH4KKOHwQ7pcyCLeOaIkAddkG5HB2jVPo3V
OlYHwWq93Nj1mCqNldKOuvHBaowfsDpXjNVLnVrGbo6kX8y9+fTm6+ZB4DneF/KQRaOPbA/m
jjIRk5N53JSoCGaB7ztbAvgqDLxRU3AN8+A2frn6BL92NHurruCzGs3DIpEMylWjdm2tz+ze
UWkCjiGVN/W8EM+fpK4woD062g3owN5053iFPqZYlfUKf7u6HlG5+7k/X7jSRag7AtiorZAo
oYKcbc7py6pgOqvtcnfUuwbm2mr43Xglr7nxUkbruoJi7aDrR50nqtibYk860EbLZcfD0Wu6
w05rA7C+rN2BdpIn+SX8S3HAwozUKopmIyKcmBeAcmdKGE5WC2BnDkhApkUxKqACaxxKLonP
LdssgGitR1GQqb6hQJt/Er135MWEsCqssaroARR0Qk2R7I0dD7Ih6SxZnZ27Lw+okFXU/g+o
AztLkRzXVMQ7Jo6jWsoqCTwyCGXA+nYhONIHpFQBWPlnaQ+7L4GdxFu5yg0U68ZbBWzcE2EU
KuMRiWli89YTE5GFBEKrBt14QKQbnlLfEaXrJelt2BGIcr0yZU4DHpBwuWJXSB1pYtYkZpcs
/SnRSRkw52BKtRsYP5UBo8OnoVgFM7JoKcVd7e52ozz0mThuhFIb4ItkxiT2W1jCm3SxnFF2
IYXP/JU/atvG5RevipSp5AvH2i4UFyLP/CCgIunV+gl9dM7rGv+FHUtTgu0/qg78mTdtRosO
kAeWpFhl02Hu5BZxPpOH045E7sYLr/ZwrdCHdjpMgPNiP2qB4HFZsoZYkKdkOaWdb/vP2q/9
T0jYXeh5tMH7bB27lbh6vqasnoBv1PPl/X2yeXt9ePr68PJkhBT2Zynw/+L+fDo1VqcJbVC6
OoSx04W1lupP395Xhg+hdsaqTvhKTD0oPIHPmpmfTHJCR4zEkALU7QZ2Smsw5SJt3/F3Xolj
40jeninHMeE49MCA3UhwxEVkaLnhCby+0KkwBSglPp0Qn5SPTWGF4rbBVd9/fDgdr3lWHM0r
ReCxy6mIYNstXCWVoGvPNQaSWFqB3RqhL7I6pIy+PABIUgY34h10kgDV3OP75e0Z5kfvgfpu
tRaSVYgYZfbEcEh6ZV72YWGFFHTjrKl/86b+/DbN/W+rZYBJfs/viVfHJxJo5IjUw+BKUaUL
HOL7LqJkMA60MHmspNaDgS4WiyAw7AwYs6Yw1WFDv+xO7mekhIIoVlNHYd9b0jysp4naJLHl
MljcpkwOB0cAeU8CyohbbQW8mqYx/bVVyJZzjwpPMUmCuUd1r57CBCJJg5n/f4xdyZLbOJD9
lTrOHHqai7gd5kCRlEQXIdIEtdgXRbVd03aM7XJUV8e4/34yAS5YElQfXGHlS4DYkQByCR1A
SAGwkiVhRPUUSAkUtet91ZpoBo7VZdDfV2YIfQzjOxq9mM1s473zHaahveRwal1rOMjFNcgG
FtyG9lQcgLLa9pdm44UeUc/rOIBNOh48b/rb/dJoAxwCWe2IjrEsAys4rAEYhIU6/EgGEetD
2/0lRUpIRVWQ0VtUnrqDw+pSMwXaD0VLAof8eMn1pwIFfdzCD7JOCtN4YHGXjVd9DSf2Sw5H
y4294ovelGune8mXcRyNlGnasTT2rrf2SI8GhW3iMtfbvEz8jbXuS6ruc0YiW5ZLa3Z91Q6v
3m17Ggb1/Xnc6QrePfYmFWdtEmchdEA31ETdgCHNguhO1QRXlrhzKfwQTgq37tLL0rlzYrBW
2RXLu9wIvYNUsTZuq8rwoKSAZVW0rjtZhe1cb3uHwa38/NDk/LYdHOGzJ6ZaeC8aKupIMu+S
IFkcRz6zPo/X4V1mdRyqULHc5v5Q5fq9sSQXzPcyuzn6an9q8gGVXEQnOYvYV8Np6Sgz93E9
u88gmtQET6TI1sGJB2+vXFl2xS7y4hCGDzsRWBolxHTuLmwcGitdhkxW39vDo2+HvP+A5m2t
Zk0rWco886KAntaIxSGNXWAr9XE5sGf9tQmpxUCQTV+zEqwZNGBxWqlr/Z4HceauacHyULPj
1cjUGoRG3V1e4u0UHKByu2H6c4DLohxwluwt4DhSYKPEkmFaVaiVvWe1rSQkiC79ZgFyRt1q
CGjnKcLNRBFbR2vQg3J0VGHy+75FCUyKfmky0mjLLwlGmqQppPLD0+tn4c6t/r19ME0g9QIT
rrQMDvHzVqfeJjCJ8Nd0uiWBYkiDIvFdXmuQpSvqjlPLoYSbeguwnXOf005iJTqqRhsZm1/m
AV70Oj8NTXIjvy0FbrLQp6nR5iT7nFWmiux8fUB10OLKgzjZyhe6L0+vT5/e0A+oeccxDNrV
+pm8WzvW1yy9dcMHZcJJvzVOIkwhdKEYRLMRSyOcbKKK8qi4Ky1un1+/Pn2zHVSOkpUInVto
8dslkAbqjq4QYX/uetRnrUrhX6BVXROrfNKXm9ZTE+THUeTlt3MOJJdDOpV/hy9WlPirMgGJ
t1pga7XQmt22WkrNvlQBqqu6OqrIsRfu0JXA1SraQ7fUrJpZyAqJOLslGR5SK/XFcAyvg3fb
rR+CNCU1AxSmpuOOHmT1PIyOLz9+QxpkIsaTMGQnrCrH5Fj5pqajk0oOXRNTISr9aOb6jjus
eSUsjZjWOHhRHK/0K/rM4cc1TxyKZyPTuJi9G/K96RffwXqXrXeoQEm479zLJsA7DpXv7n1D
cNVHdJlxj5V3fUkuj8ZqYnQfK4a+sVQ1RvAo3QmUuZn1yHa87R3de2w/ti47KfTk6HqBE044
b9x4NTTLhddvlvOmZfFGv99HR0yT0SHhOGBpOQ6O/nhSLhuXUNux7ahIQ4ejHvkOF9hhj6Vq
wjKThGdl2OVYpV3RLrh48F/L1DRAWoBtvnFYuy08tNaWio8hOSbRpuvQ0korLLvkZ6reGJBd
rxZQHl1+Mo9nlyM7EdzX7er2bIpLh84R2Qs6c18cKjSlx1an7i4K+NfRHdVpVRGcNXn/IRGU
idHMVD1HqxBM5/pYqdu3ih5P53YwwaOqxIiEKXutVFPG9LQAhqKn5HFEzgN6Zujb6we7VHwI
w49dsHEj+qEFhm2Bjg/U4l3rpvngcrdmS2LqEJB90J8wokRHH7w0JowMLr00288ccFixXzfU
sqNvDNENLchLe82HAlLF7SDGX9YOUQCgFkVOxhpG8ACptKt/IMpQ41KN7O9vb19/fnv+BS2A
RSy+fP1JlhMTWUv1RG+GYhN6tGefiacr8izaUC/kOscvq6x4r0F9lTXXomvojWe1Xmr+o+/t
MXaEAuTNvt3Wg02EYs6PJpDzfAJA18pLy40evh7gHAr0Ly9/vd0JJiCzr/0opOyWZzQOzaYY
3Wm5ErEyiWKjFoJ245s0DSwEDUmtTzC8zHeEfsZlJfXoNV+AvKBVwSXIXEMX/Wpt9OIdhWVD
QBKhOlkamSWXxhEwcE+OrwiHVVmkZwnEWD++j9QspqRjBM91rucBBFjUppEiPOM5ep0XzI72
IdaLf/56e/7+8Af67JZJH/7jO4ykb/88PH//4/nz5+fPD7+PXL+BwI2O5P7TzL1A1WPHCxTi
ZcXr/VH4vDRvWQyYN7nDa7vBuOJ0z+TUDWERrVh1Ji9XAaPWH3GWl0GY6+M74cfckfqxYp3q
F02steKtSafBBJ+rYI4LNujPNkiV6m9WD1a/YFv5AdIv8Pwul4Gnz08/37TprzZL3WKU1lNg
faBsjq4W6dttO+xOHz/eWi7CjmkJhxzfmc60hCMY6uMHR5wxOYY79PMkn3xFpdq3L3JFHWuk
jE1z4BHLszos5RPYTYZxEgWfrk1ci6oxa+jIPQLCgWr0XCOCLAn3ufYQR80Q03MOwYKr/x0W
p1tXZftX0oWOY1xHqVCOIQgWyZIOpdTpMZQ6bltTLvLv0CGHNXaR9unbV+nV15QGMMuiqdE6
7VHItOb3RlBcMNElnFjGCT1/80+MdvD09vJqb6VDByV6+fS/RHmgEn6UprdJ9JPTT0QdfJAq
5A+osXGshkvbCxVbIYsLe3F0CfX28oDOZGFowwz9/BV9ycK0FV/7679c37k96gouBlqXQxp0
IW2Rb/M6ImUajGd2IUeX3ThKFvURj9lEP2Dja+r1IwFWUz6gV3o4/jOQgCI/UDluetyEKVHd
v9fNseWEGHtYTc8/cDXIi6AtLkmlWPr8/eX1n4fvTz9/wh4ndi9ilZGlYWVHiRDybfAiA0br
SfCqzpViihtibwACrnUPIILGtmnME/oGSD49XtOI1iIRsL1/WDW87UwZapJz3Q0lpw0Mht9G
FK+oV5tyl/jG9Z+O10OauNpN8xQ5UUJp3qbncqmP29YRUl4ycD8uNik90tfqMwtOgvr86yfM
em2blc1paiKp1DF6i9HBqPdCmjUtcGBXdKQ7IhzINwg88oR20pFuJiWYEvppZmTAh9OVDh26
ughS83VH2bKMhpRzc1faDWyMWOG+i35tl/NSvKc6Z22j2vYLkim7yfqJR2WD2BfREKWhQbV0
dORIE8+zqvBBVG721bw+quyTk1RdGGiteDlCmlvd2guKiCeI1mQ+faSemCrJpbuT1NqiLMJA
ryBREanXCELgagU1WXDOjkhmjoX9Hs7vuRXOW2sH2NxOlBbmRXlnvfh4czrtEP5v//d1lA/Z
ExyA9FEIvGMYdVR/a6kOWFhKHmxU1W4dUY/IKuJfGAWYR5QF4XvaAT5RE7WG/NuT5rMeMpTC
rHA0oRVB0rlx/zkDWBuPulzQOVIiTwmgkVKJXkEdHLrfZz0xPZI1noAWllSe1KP3US0f0t+c
zuE7C+qQ2HQeOqSRyhN5jjE3cySpRzdjkjpLl1ZmXBCSyU/WBto4oGapVrhvys/aqUE4Kyg6
R3BYkQKOzaTHAonyU9c12ku2SndHdVWZJh8rSxZoo4kc9EoySm55Wdy2+QBTzmH3N6q7WTlN
bSl1dnCcnxRxdiSLVNrtN0asc+U1lmNWH1QT4tUsWvei5OHF9P3ZlL64BJ5PTd2JAcdNrDro
V+ipi+476IFN51tOlR3IjjZGByZufMp2+z5IrrS//6lAQlKwCwS96CeGDwwDo+8rNSbDz75V
v6nfiAJOLJPmGtU8Ne+wICupxWBU9ZEmYBFYrFybLk0CShBXGVQBd6Kbe9NSCNFbqy3RDGEc
Ubf3Sk2Emin1AejmjR+ttaLgUDdhFQiixJVrEtIbgsITGV8meVJH0IF5oLNtuKHdj8491vE4
8jJq85nG3D4/7St8LQmyjU+N3H6IvJC6yp8+0g/ZJoqo1hAXaiCOdfTJaq5smWVZRA1Jw6WV
+AlSn/HOyya3vDc87VsXR0fpnp1yRzAFKtvWw2l/6qkLeYtHmRgzViYbf+Ogp7oiwYQw3wvo
BVbnoVZYnSOmPoxA5gB0UUOFfIc7W4UnA8HpDs8AtV6LFyc5fKp0AMQBXTqAkru5JhGZmIeO
M+nCUSTxvf641rddfkSJH+R36vZq4nxM0YWlXb9H3xsBK/NdzvzosCJKzKVgJTrg6vekSf0c
ea9rKs4KoomFOxS6kbrKEVBoZhmu3XobFfAnr3uU0+hr6YlR6DFgY6zUouRx4NlVwDCBATF6
SvTWwBkjEKkqnZdEg9TRI3oEtwG8efKiHdlZeCkV7Oj764UpCpPIpRgoeSYDBdpQbc6JFwdd
t2VGBjjGnYZ8qMgIJyPXvon8lBPtAkDgkQAIbjlJDmzqoT7EfkiOqRoO0i5nnEsHRB7Ry/j2
Qc8ivPKzqe+KDVE2mE+9HwRk4Zr6WNGRg2YOsSuSS4qEEqfCt8ZHbsAKBwgi5JKMUEDK2BpH
QFRcAM6ib4L4XpGCmJhiKKDGXkxmKzA/W8lWcMTkfohQtr73AEvoJ+H6Oo5xMI11nOIIia1R
ABty8xHQaghUwZERw1KWOiMGOCu60AvIfh+KmBSH5qTVcRf4W1bY59G5C1lMyWwLnBByDFAj
kkpUDKhkTzYsXR1aLCU/nJIfpiZ6w6jWBCo1C5gu/Cv0KHAYPmg8pHKQzkEUvCvSJIyJUiKw
CYhKHYdCXp7V3Ah6PnMUA8ydtT5FjoTqQADgwE00DwKZtyE/1wlvWastJO7yM6qFOqYHHJ0S
0GSUPANactuif6Ud/Qg+7wdbdit2u259q62PvDvB8bfj9xj7MAruiILAk3rx+vip+45HG4cS
0szEmzgFGWB1lAVwmCeEfLG1JKkTWGzvHLtAmPr0SdVY7tfrKVf1O/UEpsD7F4s3MEV3c4IF
NV3bFJFls9lQa25+TeOUXLe6awXb19rSBYfpjbcJyB0CsCiMk7Xd71SUmUdJOggEtEx+LbsK
xJfVBvnYxL7D/cnEwg/DnZ4GjjtDHjjCXyvVA7wgN7NRm239NMAq2NrXZkEFovLGI7YOAALf
AcQXLZjUXCLGi03C6NKOWEZbj6lM25Da8EFWj+LrFVVgmW6TpODUFiCAMCYLNQw8IW+6lhKx
OCaWfjhY+EFapj6xTOQlT9KAAqDlUuqEVR/zwCNEJ6Rfr1TJAQmDVXlsKBLi5mQ4sCIi5srA
Op/ayQSd3OoFQnlQUhg21ChBukM8Y13k028yE8u5zlE9+84BF7jiNCYOWufBD3zy2+cBfTit
fvuShkkSUk8ZKkfql/Z3EcicQOACyIYXyPq0B5YGlnKn9ZzKFR/v1Agm1WFHFhCQioSmp/ZV
ddh5VqAu/L+4nxkePZ/cRxYv/MtDjSRNAVjJjCceDsf8mjsskiemilX9vjqifSWWtN3t8Fok
/3BjfIm5PjFbh4cJuPS1cF6B3l67tc+VldRy3bcY07XqbpeaV1SOKuMOL4j4IXfoNlJJ0AIW
fSMV60ncuROMq+VFBnThK/7c/ea/LB7GL8nN+ESjp6O352+o7Pf6XTN0nbOQ7k5FnxZNzmj7
P8nE2+JWDnz6qvUtMc6BNdx41zufRBYqn/n5djUvq/TFYTUzuhHox1Qin5Hrkg/FoWwV58sT
xbDXnMnH9pJ/aFX/EDMkrd6EDc3oKrAkuNA/kNDexEyUoHszg9AutDri8vT26cvnlz8futfn
t6/fn1/+fnvYv0Clf7wYmiNTPl1fjZ/BYefO0OUyi7e7gWig8XqUBuLQBWgplmfW+W5iQmnt
gDKHopSk93L5qm1/dfTpSn31Y133qGtAfXNkGYM2kcnLy1rKybeIXSK89sHAc1SewqHJSq55
8f6EAVqhEdRkeXnOjxjVzdE6eVMzNMgZ0ynUxPd8M7dqW9zgnLdxZCbuuFOrDLxDX/QgmlEG
Ghyy3NVDV9D9X536dqX49TaBnI3vwQk+56TeQ76DlVWraR2HnlfxrUHFwIcGCYpvfQhpc9SB
znahMPOliR/sXHUA1Mz50K2Pd6ks6MiQg5But4q4LPJDR5ojxpPXns5jTzYBNfa7U2R1Mrpf
HhViXeUCljDZJnZ1h/cMTtJmshlG8dcxuUdBTe8roKZJsjO/AuRsJBNZYXyXj1atYHRWHRy/
wvX+kFsSq2pnHY51hh6z3XCReH7qxGEdvOWBb+KT5uZvfzz99fx5WbKLp9fPykqNDkwKYisr
B2meNOlH3skG396JbDj6LWs5rzXft1z1U4osfLRMUVMVtYglT6aeUCOXsm5X0kywTpVmznPQ
QjqpzqSNggV1mJltC5YT2SJZ/3WTZcdo7CT3jKvfXwCQxlxfX4pvJZ3KDkP8VjDagllj7Byh
oCSTqdm2mNn+z98/PqFtiR2zYRrGu9IOYgY0fFJ3eNRFT4FSdz2gr6VE+nwI0sRzBQdHFoyg
kHn6vYKgl1mU+Oxydmd+7QLvar7NqTUaLb0MH6wIMTSVptXERcVQ9CHDhM2oqhqGOY7ileE/
a0aom8wJjImsdGvbkUr7Rhegprgualj4oRZlWCFSpWRdEAcZ2SKHobh1Oa8L+jYEYciQtrjD
rOUq/P6U94+qMeXI0XTFaNyiELhu7bKceUT7F4cBTweUEdryvdFbjFbJBREH/bvpzWm7oB2I
vturY1NArvc8dsQ+RfhdfvwIc74tyWULOUy7A6RJJ4+eWSJJdo0wSgNUToGrv4kS6jp2hCet
OpOabmxqmnkJQQwigpglRFmATCs3C3yIQ/ItewIz8+PT+UQna6YECh2leJ2iKFfOm/XoKFBT
MJmp+qAWmc42ECpR6NkZNNNwBIm8KsglmdebJL6uraicRepN50yyQxMh8vghhWFAPz7IpKQp
Zb69Rp5nlTDfhr63ut7DKbnQ76OQOtS3nIVhdL0NvDD0ZDTGpguzDfU+KsFR/dTMu2GU0p/o
Z8OSB3UpfS/SZovUr6Rv+wSUWJNL0lPKc/ICZ9ZMxqJCHUL3wiFSpvEdhszhN09hCFY2TmCB
ZSZUBtF0ODbCku5mH8S3/GTETQcAQwW6zZsx9aXxgyRcGy8NC6PQ2gzlycSZrWX3qIoN0kRM
r8VIpDbGgm+SJqBfR0UVGByjqXekCfQ9/VsXNi6BJs0auUDd0EHNJBiaq8t4qULUApHIcyoy
zWUw6qk6NXFJkVMB1IdokySlUwqQYaHObTPke93T5syCXplOwunakZ9oT0YLM97SikvamZ3O
FLbFfUo61dB4mBYixYBidc9bsLwY0lR9p1OgMgqzlEIoOVhpPpfZos6iSpIaEvieM+PAp17u
lB7Kj1EYRWR99F1vode8yUKPTILKEEHi5xSGq3viO5GAroMwS1jvSWSha2CaLCjIUIQyPAD1
TQDjhFrfFx6UsGCtpjMQSgobWuA2uBwhA3QukL/uFUYXxwwocjTuKLHdy9uywDDQNLjTVuPJ
RN9gdDxRZSQdSjNX8bs0jSiFDYUF5Ef9GVbHHNaBOlNEPT7rLLrYu2BSBLnzDTS53kT3BsIk
ja6WpdudPlaGeriCntPUuzviBFf6r7hItViF58LogghLQPQ8cucjgk/EEHI5R1x4R0l7tUCz
hE6k5wHrcjLYls7DfXIR4xFLk9gxDHizj8wYpgQb6iD5RmAqmk3Isf+CLaCPVjpT5AXk5FME
YAeWOQaaQH0ywpbGNEmiVBZS9lzNQbG0p4dOk2/rLR0Aoi9WpNcK3XsVVbH6xCC5CA5xObd/
ffr55esnwtNNvldU4uEHGoTEmgonEi1vmRrKa3o6IEY7wjzvc5CElfvhkYBLOHoy4//tx8r1
P4D8Ug/Foepb6hqj7HV3mD27lVCT03VyDkgWT7AJOy9Gu6ZZGHjV7NAKlv727ZHx0cueVQyR
HArDOMbm6Nqm3X+AgbGjWwyT7Lbof5V83Nf40AvjDXq9BMm2Z5fcMXzGxoDx4yj8MCiX8iMB
nUPDdrHHq/K20WH0J7rU1khH0fcVLK8HVino7Mbk+cenl8/Prw8vrw9fnr/9hP+hhzftuRqz
kH4eE8+j9vaJgdeNrw/dCRHxTEEAzRyuXyw+c/9T/IW4SiyVIXqm+Dtf9BoUsv7VPi9dLkUR
hsm4d3jlRPjYns5V7sbrjLT2EL24r6w5c4Zx7GJnl/3uaiUQVBixBWmSIzqf5ZEuAYxUVxi+
EQ5j8jyK6Kk0RmSuPvcgge3zfaAep5D4/tqYxdi2xcFZY+nJGJpfz6YbQ7iI/i2//vXz29M/
D93Tj+dvWpcbiJrDtq/LfUXkuiBa5vUUhu1h+/r185+qpwxR+2MOi0p9hf9cMT6p0TYTWko7
QaN4dt56C1XDMT/X7vWzqPv+xG/vK+YehXvmB6fQ8XgjmnrbXs81TAT3Wiec/Dt6SrZd+/+U
PclyI7mO9/kKxTtMdB96SrvkmXgH5iIly7lVMlOW6pLhtlVVjmdbfrIc0TVfPwCZC8kEVT2H
7rIAcE0SBEgsBYZbkyyzRkuIW9HO4+Z8/3Ic/fnx7Rts1sDORrDxaj/BXGjaFwFYmpV8c9BB
+uJpOa7kv0S3oIJAv7yF39LoZxeK7pA2sD78t+FxXIT+EOFn+QEaYwMET4BFezE3i4iDoOtC
BFkXIui6NiCV8G1ahymIF6k1oDLq4f3UAAb+UQjygwIFNFPGIUFkjSLLhdFmEG7CogiDWr8M
AHgU+pVnjQmkBiP0G3aM+bcx5g8xoEkWhM3RZLZW8ljOSMnTLbmYfrQxHAfvnPiB5NawpiZP
aHka6Q9eWEzHJNvbYFZXcz0xOO4wVYQB5CBmlFaTMA9kYj1AVbgebXIA0dSp4WSNs741p7xL
bGd+iEnQPhDq7aiwta7JKPjO0Qu+0j0xcC2F6/FC91vBuWQFbADMwJLqD374sWWwJAJUJ1Ai
THmVkEhMN/elCinclgIaca+1etgutLfLUAbQvnJ5mEzNsSmQYy0zM7eKgtQ+rTM02C11o9Xg
9Fb0coJSbRHOdtbtagd0Xgn3FMz3yaD8SMHtrQSQmg5Z1yInC2Nudnyw1kFlCjjySYzO7m8o
WaAh2zdByLkH2640DoY6DTNgntz84LeHIrOamwUbWv7ENrIsyDJK4UdkuV7qWjHyJhAVQmv3
s+J2wG4c3wk2SKKOPIMFKSicqiDihzvSINag8StRZuaGsR4FJUT41cbe/yDFOTa4ByLDvpwb
btzyK8jLeXNXhbCr0iyx9qUH07XfUzBpebO1juYWZ71myGWU5I40FnJgq4nFzhvxihQ55Pnh
3T/86/np+4/L6D9HsR84swIDrvZjJkSTCUPvGOKuBKDu9qxdwQA/fPLSyuos9GoruR4mrgcP
wxq1mP6GmGhXxpogZ7ynkdcpdzGZLKinEgyUf0a3oi5rrhZnQb5emwGnDNSKRGlGEMOJIuIo
GR9jORtTp55Fc+Mon68XZAAig8R6ttY6h1keHJZKPZXL/K1vYreYjldxTo3fC5aT8crx2Qt/
76cpuZt+sWe0OyR0atFWehSY4aRBE8rIFgb3Y30ZkVVmJFeVtQ7E/sGejaxIQjzog4uVRZhu
S2ojAVnB7vSCVUQqFVifFURYvB0fMPsQFhjIoEjP5mg8rc0Iwvyi2tsdlcB6s3G0K3elVU0F
akRswrwwvuWpXTfe2xWU9qaQHH4dzHqauC+DirJqy2h/KUQnzGdxTIfEk8XlJamrH4e8MFKr
IxC+zDZLC+XV08B7GEyXSR4mYgiLQyuvj4R+tRLRGthtmHjckRRK4jcFfWMpkTGowhmZQhjR
0K7MEWz36PZAc13E3bG4zGgnIUTveHgnspRTN4yyR4dC6uXmxHD0oLB7YSVIM3CfGZ3iFHHl
HU8jZrVwG6YCVLfSbjn22xCHOjAcbF5QB7IdfSkh0dmW4+5ydEmKhDKPtV1vAtNZOG79FP6w
gZObTimCBKABy0XoroGjSWq2oS6sJT7DvFqhtesw0yQnF0dKmkAiJitUlmyDHM4S9KiCheji
Y3lYsviQDthQDswAWbyjFOazK3ClWfs0LzgIFSYMGIiRwFvBZE51C4iBqpocxEZnRBkySsBq
cGGM+dJCqytQfx5XFrBIuAnYYoJuUOEN8aQDuvmwSFhRfs4OTRP9KaXB3aVLvsvMfsC2FqHu
hSaBEeyaxIZh+icV51dvWIdbDRtzWeEhV+ek3ihZDOdmLmkE7nmaWB3+GhaZOb8tZMB5vx4C
ONXsza8ca+uo8ki40miaX4NDMraDfbRJAIlzuIs5bcoK/SmPCeOdB33eJ5ps6/BOQJafT5fT
w4lIX6pSzBtMDEGSA5Gd/kW9NpmR3lVmMKHHJVNOcTpnlV1M81blwO9IqUqZQQPalq96RHcd
G2R36TA7meUSOmipy3Sr90ybwiwCpdG4suyXDuIHF7oItAM2IAzOGFTctya0inNee+Z+VjWk
qUvgRrxMhxwxUUd+YNRoVm9ZlsuSaQpSrR/WaXjXqIdDf9Lk6f3h+Px8/3o8fbzLVXB6Q6s8
a8m1ftV4e8qFNQnBIWVoR5/wNCsGA8xK9EHNgsovYy7oO6qWLuBCupBjmtgiRW/zin5Kb+ZZ
yInGcKDotGS9ietTUZWZqOAISAPl2v7P6X8Yuyc1tiEmOfP7JGcDl1j53Zar/XjcfBWjX3tc
SJFPC3ZIEBIE+kTsq+lkHOWDLy7D8E6We6rRDUwflLpWbdOqWWULpRZQhxNkYiWzeJ9mxKij
uj7WajKbDjsl4vVkcgUME5GZqGLNlsvFzYqaGiyALk3O73F9iIiVsbHxBUFfJo3DtP98/07m
jpILz5EPR27ZQuY9dTR7FyTmEMukUwhTOEP/eySnpARtfhuCsvwG7O19dHodCV/w0Z8fl5EX
38okryIYvdz/bPMP3T+/n0Z/Hkevx+Pj8fF/RpgwSK8pOj6/jb6dzqOX0/k4enr9djLXfUNn
fRkFtM1ydRSqkZYQaZRkJdsw1zdoqTYgO/lZQrfARWA8B+s4+JuVrrZFEBRjyqjPJtJNPnXc
5yrJRZSVNJbFrAoYjcvSsBXFCewtKxJHwUaRrWHafI8mCVMYt7c08pnLPceEvoz5y/33p9fv
wwzukjMGvuUhJKGoeNCJyQHNc8vsUsF2FP/p4TWyb/HPNYFMQZADXWBiohr/T71jAHWnCJNM
O0hJ2VQOSm72QH+A68GqLeWH+3x/gf3xMto+fxxH8f3P47ndW4lkC8BpXk6PR80dUu52nsHX
jg9m7cGdPxtCpLBAgN3dUEfUSNACqCyMCVPokau6mf4K24CnQ4jRie394/fj5VPwcf/8BxyW
Rznw0fn474+n81GJE4qklbgwRRkwn6PMafZI9HNq93NIcP0TSxLMgH0Ly1QIkMVAQ6btsNoj
dWUaLHY7Q3bYwdhVEm2ymClSOcqHCV9StooNbrq09xwLqrKiLn5Vb3bCzC2rBKRtVjoSOki8
fcC2TMU/rPzlzMa1eVrM+QsGqoculZQBr0HesiRkec8Isl6OkphuhIjwOtlwmblNRXp3jZiD
POftthZ7jK0RlfiwAaKvV5ieJLLrGWgTBbfBeNabkDASYalkgA3fl5XF22AN4eX25s6EHoBu
b09X+FVOy562D5CspvLw3+lisndKJAKEbfhjtjCjl+m4+ZJM1yDniKe3Ncw8hvoPBzwUjSkz
4bq3lF+vTMh1n//4+f70APqx5Im06ppHGgNMs1wJzH7Id3Y3VK4mZ4J6Fu0yR8LPdlvPxsrO
V9NwHV20WmbB1pEDvTzkIf28LYXQDFavMmElupUY3qPo79tkebRBrR611i5+MD1WxUj9Bss1
31EdQon/SQSfsMgVTaarGou7stggTgSRz81eSlAtEyiCSiky3aCmx9u+zoAouJ9F+Bc5hX1R
lzN1X3dcbhK7doXa4L+kETfS3HkiMDtb8k1Si8CuzPdWpIcm4tBSQASD77mrvJnlTZ3gXoxI
v0iJCiK+hFUzNivyv0TDuYsElXxPjiATEfcYNeFJSYeH66drH6aOG+YkTDBwHCXk4YUCat99
t6UuLh+iKVgtL7r1zmk4eR/tZ7Ejr5qk9ArksCmeTdEdcqh0Gw6f6/CpmDhuZQ1UAhyTgjlM
cBVSzJbzBfUuIdHyiX08GKAE06y+x1PyaIu1Qot34LEj3Y8kGDoZ6ViVkXFYbQN3RwWRVI6L
KtUx9KWeD/sLYNLXsMGa/nLNwgh3mHaSxxZCdtL0ptbhV7uHNMvZsGzj5IqPyuRzmiSyzRxU
jbpJhIQQPqtq/QZTI5a2BDZRKMTc0FrVJ7Td09Rdl8/QOcaGxv7iZrIfDsztatctvsVfw1Jt
qIMr20veD/z5/PT6r98mv8uDtdh6o8ZS4wOzJ1J35aPf+meH3zUbGDlBKJQkw84MU28PCGDO
3Xh033VjMRzT2ruylZSvf3PL65pIysdfIsQ2mU3mQ90CJ6o8P33/bohH+nWmzUXbW842SzWF
y4A9qjsIawwNHuRt+jAwqKIQpAwvZJSkYRCSNoMGhX+NobZEzC/5jpeU3YBBZwebMIfW3E4T
QTKf3i6oar6PLmrC+xWaHi/fnp4xi/3D6fXb0/fRb/hdLvdnUFft5dnNP6gTghsWeeaQGXwf
5uxnzqznc5osDUuXN5NVHZqd0Ke3OclV4GDqSoJrzB2Jb8Dh/ykIF6kmNfUwFcM0YdaDjYlW
TVytG5TboJlcspkeXSvkhqZLyshnbox9PQnMY06OEBCLXw0984sgYY6B79RDVb5DGnLiNWKk
2dH6BqLqYk9bS0ik4He/qp/nGaf0JI1EFLljJIAhoxlq1QvzrVgfWYk5eWLcML+cBCSFmnYO
fq3PfM7qHW2HEgbMB/00w9co4Rf6669EDd7wEGrRKC8UO7m7RLXrp+uVhIarhSM0k0Tz9fRm
5fCcVQQzl5tug55eRYezyVWCvSPLqyq9mF+tfHG9awtXEgGFdiQbL0qYZd1pAwEYqn+5nqyH
GEutQFDkg9JzoIGtJew/zpeH8T90AkCWWeSbpRqgu5QdagRA6U6lJpYnDABGT62DlaF4ICkI
eZthKF+bAO3SzSYkWEWaI6B1xUPpPGqig2JnXAXgQzx2j1CKWvIriUENEjPgV4tinrf4GgpH
RIOOKMy+kjETOoL9WrelbeGBmMxMS1ITU/vAWCpHdlyddEVdhWkEy9V02PogkkcDx/C9N0YU
lx5hhi0zEKYltIGiw2E0FIVY+DOqf1zEsPGJDirElCiyBzjZDZmUh9QZDQorjKCBm5GpowyS
K6XpIArtJM0n5XpMTp/EOEK9tkTel9n0djgZdqiubgNRMQLaj+EO+NBQCNDob8aMKrwBbcCR
zKarHzYCee2kESz0dMd6QXqFhclsPKWTpHWFd0BCBhzpCNZrPVtKN9hFQjUpAticRn3KjDnn
FjfSOdsUDm6UN/IuUi3S378+/h0uFojZlA790C+y6WRK7E059huf2CwK0+U7MB/dnOPAkn6S
CQfXmpIx3DSCxYT4ughfkJsHmdd6gYlAeUzJ7xrdak4MUqa0nxNw675Dh9PbWJS3k1XJri2j
ZL4u10uCPwJ8RrNHwNDhdloCkSyn1MC8L3N14zJc7fnCdySeaknwy1/bhXasNG2VWVEeuyWh
Yse26+j0+gdqx79Y1ZsS/rrODwZhWTtEGyGoc2QQx9f305leuQEGsJUGYn1NPWwo92q4HR0o
GPWegRc2KixhujW8sBHWRWSLWJqGsdkJ+RqgN452JAWDT7+1lKtOVZAWg4Bcaiu7gWasDBJm
g1Ff2GOkSUuly+N97dLgmsQCXw/plySvg9xFJ92YIuxOnWwTWhHqaYjxBHfYh2H4zgZ+pUSu
v9xEorKHJ0DytNrsPp7//HR8vWgfj4lD6tfl3q4EfrqCpnSfuy5Yb+kKYK/aDO0MZf0bbgTs
vpNQvbmqKU5No0LVSbYLG9f+a2RtuBdHkBZFFIXMYQ1sDaMbtH4Dwao98cwdBfP5yhHtiic4
0z7ndeywIMRncfQN9OI6c5hi6yTUtaWGH7zMVOQNOu7QJm64cbRhUIdtRX9+FVujn4wm1kYS
ptUAaKzUHtYo40aLCumxOM7IwTUEPM317Cxt44l5jaiB2wARlKlsTx/kZKQjGbadZ2WsRzsy
I9QrGmv0EpaGxiWqAkozPldLO2E8HSsgnjGiMV3uJ66x8n04n95P3y6j6Ofb8fzHbvT94/h+
oQy7o0MeFjtyxf+qlr6SbREeXE/3omTAEqjnZkwO0dqR1v15pF1W5hzOXto8iPlhEQX0fkBc
fceLMLZuIi3Lk21S0fc0TFSijlnu8o+SeKqBjikEHjPG0uQd93jmYD+ILzxHvBVVOAOpnOYi
m+ozL4HfX+lySyJzdtGn0jYP6hwWWlhi0E6SJMqH7vw68sqcoAd4URrRetp0aFEwYLoNBb4e
3eYsGJgIaBeFeKBL77ud+95RygJpOR6Pp/XO+eTZ5vtI48x1y4oEO6+kZ0dUxQZDx85UEq46
y4tw64r21RLnRTarvaosHXS5r85U+WJNJpxU7k/Nxzfmt8F8ccRzbi0JvLIuNrc8pj9rSxW5
PpLcp36S008dOUuZ9CO8tjrxVi5MVkv3d0afppIV1ypBnVJaF2Ae35KlJWcOx8ME5DzK195e
MY4BK2zhcG5o3nnRdwsgaegPI/cplxXxdjw+gpz+fHy4jMrjw4/X0/Pp+8/+dpF0xFG1o3cb
SjQY5UKalW8GieUM95i/35bdVCWjv6Ap9hd8jSmLjArx0Kc1MG2BG3iVcuhnbkh2zUj8ymkC
qlG4AyNgm8yIV6El7+iBflRkSdhVJGxMJvoNZCNyNLE2ZPEOVVov5y2+a74v0qQTcQVM6fAi
Kun13VLE+ZUmkZ+U2aDhW086w/bPuFdqaMIrahPRNowFPVYMMVIp3AhqvIrJW449No35+CLB
6OET9BG7+r0LhyFLM3oDtycRpnnzY01kgh94jw4y5G2lfeKWELPm5UxfuMoGwKqkgxFxQTVk
wvY38zWd1lQjE3wxm9M3ExaVI921STWng8xrRH7gh6sxHfdeJxMYsKr2qay0epN2pFoNZ1+2
6igzYm90J3Keoh3kgEv6z6eHf43E6eNMJR2CusJdic9tC+0CRv6sTUtLoPTioKPsOCNZv7bQ
GI9B3aE5E4yncgZmLY4vp8vx7Xx6IC4NQ/SIbR6A+iugDgofybYFaLpL1Kpae3t5/07eK+WJ
aFUeukajpHYaY3QMFOWGd7qZP/pN/Hy/HF9G2evI//H09vvoHW1/vj09aOamKm7mCxwxABYn
89qrjZ9JoFW5d3VYOYoNsSoGz/l0//hwenGVI/HKvWqff9qcj8f3h/vn4+jL6cy/uCr5Famy
QfmvZO+qYICTyC8f98/QNWffSXwn/2Vo1dqqfvun56fXvwYVtSqXusTa+RW5IKjCnTf03/r0
mtwndToUG6iH+z3KRm2fw78uD6fXYUbS/nlZksukrp+ZT5s1NTQbwYD3UneoDYFtWdSAOx1h
Nr+hOWRDCMx9NiPTg/QEVuojHaGyHxGV2u+CNsmVOO8tRZkuJo4g7w1JUa5vVjPqSqMhEMli
Yd6jN4jWRv9a7RUmVmzOdFruBjZHxozh+sURx/uearPRTd96WO0bQTs1BJoKu3N8IOHthm8k
uVlxYzeF4lHbrFG/+pN80teKm3W2PRHoQ92RTM2KReuoTR8yiqIpO+DF7OEBxPnz6eV4sbYL
C/bxbDVI0dPhvYTRiWFAmIUFpFT8fjg61A6nFrCp42YzYDNH7r8AVKNgTOeukDjyCUQL56B6
MgvMGRdli2B7Lhw41BFbfNfo7V4E1KvT7d7/fDsZT8z8Qf5s6njWTRK2mi8W7jQ5gF/SicgS
tp4bOQETtHCeDHN4KThdxc1CF4WSvQ9f2XhnA9BySvIuUd6CQKt1AAEeW4x1gclacWoVvt7D
MY5+fo9P358u989oXgn8e7gmV+ObSUG1DajpjfH+DpDleFlzdUHCChbHrkj1wermxnGJF/Aa
vnTtygfm+5gvYeLEY1JEJzLar8i8N8qKpEny1lHHpT+dr+jdIHEOZUHiSHMRTA4zs7I8gtax
JDuV+PlsrhuIpKxaWc+l6ngBFm+NuEHLF6sdHsB2CIwu0UbNjdR2PXxnzUaPAQS1IEqJGa8n
RjEJFbAd6blqM4kl9ABkPjFAywGaTwJtUj/nx26kpv0A3+6La3tA3yWb8+n1MgpfH02JdoBs
xOe3Z5CtrH0UJf58uqC70RdQJX4cX6T3m3oKNrdjGcPXzqOGpdIbSNKEX7NrRF4SLh0ngO+L
teMI4OyLMzWG8IPZlbxv2BdeYEBwsc0djFjkgnQJ231d3+wNFdCeIvV8/vTYPp/D4THyQfI+
vZoh+JqTSJ305oaw0L100IekIevXz6tEdJfj6sBV2pfI23Jdn3r5fIC0DkCzQhrXHDdNpHq1
lmFZ36sVanD2jssuxvq7O6YoW4+N3/P50mTui8XNzLHkgsXyZuk8QAMxn08p475kOZ3N9OOT
7RcTM0+on89X9sbpOUvA/MXC5tBdWP0rE6Huc+ErPn68vPxs1Cb9uwxwTcTx478/jq8PP0fi
5+vlx/H96X/RZSYIxKc8jlsNWt1QbI+vx/P95XT+FDy9X85Pf37gE7TexlU6Zcn04/79+EcM
ZKA7x6fT2+g3aOf30beuH+9aP/S6/78l+2i5/0fZkzU3jvP4V1L9tFvVM2PLceJsVT/IEm2r
oyuiZDt5UbkTT9o1uSp26uveX78AKco8QGf2oQ8DEG+CAInjZA+NJfb4+/11f//6toWBV6yq
5y/zoRGvVfx2ovquQx7AcU7mpNQ25Py2KqTgeFwYZTMauLkNzf0hvyPlSoHSxUqFruejYGDI
T/7uSraz3TwdfmrcWkHfD2fV5rA9y15fdgebkc/Y+fnAk18SVNWBz2S7Q9KhjslKNaTeTtnK
j+fdw+7wW5vAYxOzYESnLFnUZua0RYwyGS3OGWHesiS2HFiOdDUPAvrUWdSNB8OTywGZAhkR
gTGJTk+7Fx3gB+gA97zd7D/et89bOMs/YOSMkZhmSbd46TfadcEn0BAvwXW2vvAcqPmyTaLs
PLg48TkSwXK/IJa7qXTWbcqzi5ivycVxoq/S301E9aUWAj4UhimlR4fxd5heK5FeGDfr4cCT
YyRMR7StHCBg4+lWOWXMryxXbQG7InWx6WJ4OTaIEUJeKUXZKBjq9rkIMJ1tAUJ75wLi4mJs
9HdeBmE5ILPBShR0azCYUU/oCU+Dq8GQdv0wiQKaSCCHAbUJdNU7NTRnDVNWBeVV8J2Hw0BX
LKuyGoyDIdUJ1z9a04SqsceKM13COjiP6Ksx4HLAHv0sEJH0TURehMMRyROKsobVpM16CV0M
Bh1M4ynDoac3iDqnZRHQu0cjz3s97MtmmXByjuqIj86HmiAmALojgRrlGibass0XoAndVsRd
XlJrEjDnYz3Nc8PHw0mgXcssozzF0Tf0LQEb0b1fskyoaSeQlx5kejH06CF3MGEwP7RwZzIr
aT21eXzZHuQtB8nGridXl3T7w+vB1ZVH5+mu0bJwnvuSZ4fzkZHvWdte+Bmri4xhSNaRHb9i
NA7OPQaGkp+LWoWEcpJDgHY5npyPvKeDoqsykajdIVOWY9QIyrHFVNBvT9tflpRpwLsT9f5p
9+KfBV3NyiNQ0PuxOc3B5IVrWxW1Cl+tHWxElaJO5b599sfZ/rB5eQAt4GVrmGUIE0Sov2rK
mrqyNScE37tpqq4pdIXd8foC0plwldi8PH48wf/fXvc7kVtbH6d+gX9Obgjjb68HONB35L3y
OLik41vEHHYfzUBQFzv3hMVArcw6tTTM2PTKqcvUK7B6Gk92DAbUFMvSrLxyc6d6SpZfS6Xq
fbtHAYhkEtNycDHIKLvHaVYGE0Olwd/OzXq6AG5H2wTHJR99dkmuAt8fN0zpmaAkKod+NaFM
h0PnSvuIBIZlXjHzsecSEhCjS0d9suLz61DzpqIen5vhrxZlMLig2dRdGYIYdkHOpzNpR5n1
BeMiklvIRnbT//pr94yqAG6uhx1u1HtyMQjZakxm/k2TGK3akpq1S0NwzKbDwLNrSsuetkdU
s/jy8tzeIop3VzOPnsjXV/RyAoSV5xELoeVHPNdtPxrtdB6P0sHae2B8MpSdVcX+9Qmjkfjf
GnpLiZOUkqNvn9/wtsSzfbWNVLOMtsfK0vXV4GLo0b0F0jOBdVYOPHY4AkXd+NdwaJgCpoAE
dExuqnv97X9tvKDCT0xJSgvBNYb8o+0cBc6bQhixMjZaTSapRTyu47LI53Zr6qLwF1qyioqE
L77DkBGdw/9x6WWsnZKRfox4PvCjN0M7brRVdiL8JGJPvXYjPi0599o3HglO2aIilQhmNKHk
fsTWq9TsCAC61BdSlKpuRD5bw55UyTw2TuNaJUbV9KdFxyiJ8AMtQlPifbpc3J7xjx97YTJy
vNDrkt10oQGP0nGUtddFHopgiIikx2Jx25brsA0meSZiH35OheV5qSIY2NKOK2hQ9PnhF/Qw
WDQnWqSsse0GaSQ14EBbNjguwqVxCnMi6SnuaYx0XyDaoEP3XJvbKizp/ZXEKQOa78yTWzCL
pu40b9/RRVbw62d5V0its1Nk/dWA6TOBYS2d6sKXh/fX3YP2AJHHVWHmEOhA7TTJY9AIEtsy
vX93k0VpgmAyzZdxklE2pbGeikRFhNB/uuyjA+NLJ49DN4rmYnV2eN/cC8HCTpDAa8NMEn5K
y952GvoW2ZEGw2JQFr5IETdZpgXlRBAvmgpUIoDwImV2tR32VKQouazqhbvU6sUn1t1A4An/
2OPnnoI5mXmrR8Nu0+TKvjV1QkCPHq/qltedGvXRrJwbDpGdf2qJC83/bIlftdm8UuTR0uOn
g3QyZbQfH888rhqM/qjJE1wSywTkGa+fVuKxdeVpkvk+Eipv5Ho5HK8/i8YOen/kJoXtQaFU
LtMQUD6Y7Z5AkhEcTvcwjsJowdpVga/3IvCUcfSHKF2DZA3KdhlWnLQLA1xSZKFmFM7WddAa
wYAkoF2HdW0YhylEWXBM1R1RnhGKhrOoqYwko4AZtSbH6ECfFTjyFnhuN/zcKM5FeUqxouB8
n8aB+cumgKKyqZgN7aqXYbAowOht6oFAGhn5AXqMsINO8hnlmaqV6c6Hjjw1hDqdOwDfVYv7
cr9/Ut53bzmOK70gxasnDLZKb6q1qJ9EzWc8aElDREx0G1jNVrC2CCJawukpsEn+YkUv2izk
12mhzbmONGue1pXTCXUoJmnfUrV2AmfEBQgb5RuJ7hu5BqhtHaglRpUs4wdKScfnoKdqwBTB
eB2R0OmcuSkZ+HYbqiX2XpewLgp0UVKjhf7xwp0h0ROcZSDhYNjRWxt/bDx6BkfVbenvHpwH
rKLDAM6463cTux72/SEgMCL8nzYQYV9GB7lpito4OQUA3aFFiHKPG5uSZjF7SvfFKqxy3xWI
pPBFuJbYumKGlHMzy+p2Sd/aSxwlsIuyolqbZUw7NOMmC5Ywew02mGeSXtgFzEoa3lpoeTex
uf+px9eYccVwtVmVJ6Kznx2KBXCgYl6RufAUjcO9FKKY4s5p7QRP6tBHGlyZugdQD3NL1XBk
q452LnIA5GDEf1RF9le8jIVscBQNtFu34uriYkCzoSaeqUlRhdMFyivkgv81C+u/2Br/zmur
yn7J18bcZxy+MyBLmwR/q3CmURGzEnPtnI8uKXxSoGceaN3fvuz2r5PJ+OqP4RdtbjTSpp55
ogCuZw5PVYy5dtapAPn2kkBWK8PA5dQwSW1xv/14eD37mxo+cexbFzAIuraFah0Jcq2xBwUQ
RxGzfCW1me5POlgtkjSuGMXM5ceYExCzsMkQ0ceir1mV63NneS3WWWk2XgBoucGicQ4xCw8c
NmYXlOHbopkD+5zq7ehAYhC0tcikWywzcin32ebmyRwdpiPrK/nPcV0oZd6dRU2sT7iM6yKd
umkuBEwfhPZrH52i0mMDwQ+1vo0NoKHVDmrPR4bxn4G7HFHXqybJ5dist8dMTMsQC0dfNFlE
1C2eReJv/IQ0WbFIhic+p04yi2Tk67tu52lhvON1ceHFXHkwV6MLbweuPP5NVgGf9vLq3Ff7
5PLcrh0OElxsLfVOaXw7NJJv2ShnWkTgH0+Zqk7nI4XwrzVFQVkd6XhrNhV4TIMvaPAlDb6i
wcORB+5pi/m2iJjrIpm0lMDfIxuzKAyMBee6npNIgSOGqSjsGiQGhNGmor3deqKqAD0upA6S
nuS2StI0idy65yFL6boxYTDt4qgokghzLHlebBRN3iSUbGYMSUKNSt1U1wlfmAgUKMzXaU+i
wzzBJU9pCUW7utEPEeNGR9q3b+8/3vER0IkVds1uTY8t+A1a/A2GopLiI600yPSlMJn4BWgQ
c0+YGUx3zEQadeoY6jSpjsBqRxsvQHdjMhk69bW6GGjjjHHxblJXSWS8USmSE1/rJ7xgKCKQ
D26U1E7DjjENRAiHnMmY7FFR3rYYQCsyc1U4RCdQIF6mKUaP0NvtUmHTeOmJHjQDfRcVRXmj
7LnDDmuR0YpVmH9zwdKSvLVTgu5xcPXA3inPvn1Bm/iH1/+8fP29ed58fXrdPLztXr7uN39v
oZzdw1cMffKIy+3rj7e/v8gVeL19f9k+nf3cvD9sxYP/cSVK86Xt8+s7Rk3ZoQHs7n83nSW+
EpciIUyhztcuQzRMSmoVtl8TqigqTHitX0wDCMYium7zIjc0PA0FM3IyKYBFilX46dC/GpeI
J7uCQ4y5Ob20yqqLHi6F9o9279Ric4R+DHFDFuqBM3r//XZ4PbvHFKav72c/t09vwgnDIIbu
zUM9z6IBDlw4C2MS6JLy6ygpF6zyItxPFqHOYjWgS1rpVz9HGEnYS8hOw70tCX2Nvy5LlxqA
bgl4ReaSwgETzolyO7j7gXmBZFL3uaJFCEeHaj4bBhMjQHqHyJuUBrrVi3+IKW/qBcutWD4C
44mDqeY+ydzC5mmDT2nI1TD+nYPvwqU+d9ryx4+n3f0f/2x/n92LJf74vnn7+dtZ2RUPnZJi
d3mxKCJg8YLoGouqmNMBTtVoNdWSBePxkDafdqiwu+5r7sfhJ1rV3W8O24cz9iJ6iZaJ/9kd
fp6F+/3r/U6g4s1h43Q7ijJ3gAlYtAAJIQwGZZHeok030d+QzRMM13yqL4oG/sPzpOWcUWqG
mn12kyyJ0V6EwECXinFNheMWZlHdu72bUmsumtGBlCSydvdPROwWpucQ7mBpd5VjQotT1ZWy
iSZwTdQHYtKqMi0R1E5cqElxxvMEabj0ZNRUM4UxMeuGFlHVGHCeLJ0Fudjsf/rmIwvd3i4k
0C58DSPjH7el/EgZp273B7eyKhoF5PwLhGt4RVARDA6gMGupZJROo9d4/pwas2kaXrOAfkoy
SGgx2ySxGYLT1no4iJMZ1QuJOfbEYgHk2aptfhoh4pHqVxzqAIopmFtOlsDmlsGl3ZM5i4Fx
kGDdufEIDsbu2QDgUeBS80U4JIGwozgbUSgo3Y8cD4OTX3q+IRYUIGiLY4XPTqPxnWZa0O88
6gieV8OrE2x4VdJNE2ukFeunzRN3O0mxcvf204w5pg4CThQJ0LamTV00CqoyiypvponLQ8Mq
ctfhNC1Ws4RY7QrheKfbeM+ix8xmaZq4YoVCfPZhd0gCp/73lIGfFNV8uieIo050AdfqP8Fq
gNJd1QJ6qv0xcycJYKOWxcz3zUz8656Pi/COUDZ4mPKQ2PFKnvEijtU7e4oxyj+mx1alke3O
hIsj2tc1RXNixDSS4EQTsxNzVTN3SdargtwDHdy3cBTa01gT3Y5WZlB3i4peZ5KLvD6/oc+B
eVOg1sssNR5klDB2Vziwybl7oqd3bsMBtqAkhzteuzl0q83Lw+vzWf7x/GP7riIIqOgCNl/i
SRuVFRnLW/Wnms6tmOc6xiMtSZwlexAklHiLCAf4PcFLEYamyfqllqZmtqGZZMJCfdKansyr
+PcUlPLeI7srBvfgo41xlMyJRxeaR1nXH0+7H++b999n768fh90LIcGmybQ7uwi4PF7spiCK
EOmco2khrx2RXDIhshKJUibgnuok0alzVFCR6qdLR3FphPdSX8WTO/ZtODzZJ6/waBR1ul+K
7NOeWdrq6f55ZLLFijibMAlWbMVGdXAe6Uan4KenB0nDOkOL9cgX69gixF4Mzqm4hBppFLlX
Tx28jd3TE1G8PPmV/On7suSUxtrXKEMen27yTegeph28jReTq/GviGSIHUmEyX4+G0FBeBFQ
zveeGpezz+pcehKNuLUuKWccja7LCvJMFsLDGVv70gnoiyRLi3kStfM1JTeH/DbLGD6qiPeY
+rbULRyOyLKZph0Nb6Ym2Xo8uGojhu8TSYQmw9JeWB+n8jriE7RDWyIeS3Ftig3iSzgJOce3
GpdQ8m2Mo/G3uPzaixzb+93ji/TZuv+5vf9n9/Kon8PSTkJ/rKp8VnAdKXBuDPfNa5pYGT79
i2Z0TpK+AwYTqYRVW4X53OQe6EJEZ/+YJqDeYX4ZbRaUbxBofnmEb06VcKzRz1edJGW5B5sz
tIFKdPMRhZoleQx/VTAo0ARtdxZVrGvuMNEZa/Mmmxr5ueU7X5i6BWP+GsuSXKEssDhb0AQw
ysp1tJgLA86KzSwKfCSaoeYjkhqUaaL3tC8D1jeIZnnnzm4cdhEwKpCEDNDwwqRwL1mguXXT
ml+Zl0l4i6SyKTlw2GJsejsxOYyG8UQplyRhtfLlbJAU08TjZ1BFF96SaX0i0kwX4CTtb9yO
BNqFjbwb0zsFaz0uMm0kiEpAZO/Nh49lITRmLvwOz3OQ60yN4E5KMRYUFASiZIRSJYNKQFKD
okDD6faBAkEi1ncItn937xv9gHVQ4ZbmyRXSkSQhqa532LDKiGIBWi9gs/q/48CF3UZOo+8O
zFzXxx6387ukJBHpnZ5kTkOs7zz0BQnHIXbZB/F0H3JeRAlseRBQw6oKjad74dGi+6dJEJqb
twYjQriRHg9TuBWlbnQn8oxIBLBb6Yql40Seu7AUOottWCiy+Ylc7qAXG8yWr6zkWUgaiZbI
W/Ht35uPpwN6bR92jx+vH/uzZ/mWvHnfbs4wltz/aOqNSIx+x9psegtz923gIDjey0qkEZtJ
Q5esQquf0ON3ZRaV0G/jJlFIimQ4JmkyzzO8aJloFjWIAJ3QZ27L56lcCBqLEu4NHAoL60ZP
XhHf6OdTWkzNXwTzztPOl0YVnd6hhckRkFQ3qMFo5WZlYuTujpPM+I0emJj/CE5qY3XCilUL
exnzwl3uc1bXcPYWs1hf1vo3bS3OZt2OusDrKTvdu4BOfulnngCh6YVMnqMtSfSYLVJrCeMO
KdGL07Ac6FGNdDprZ2nDF5b3k7Ihjq5XoZ5FRIBiVhZ65bA7jJ0JvMowWSum38O5YTSPVkT5
nDx9tMAVlsBmGrkoCVNA3953L4d/ZPyF5+3+0TXCEi4Y12LsDRFPgqPQ9gLvBSvhVgpCzjwF
gS/tTRQuvRQ3TcLqb+f9SuvEaKeE82MrpkVRq6bELA09qSBv8xCTf/qd+g0Kx52zF6+zaYG6
BKsqINd3nvgM/iwxqDCXA9XNhneE+2vC3dP2j8PuuZO794L0XsLf3fmQdXUXQQ4M9l7cRMy4
X9KwHORJMonnkSRehdVMu1+cx8A5oiop9RdelgurjKzBG/rOo09ttQqGRjjrfJsMrwJz6ZZw
hKHLNGn3XbEwFsUCjd7+BcAxpL7I75VSuqBsPpduXWiKnoV1pJ1ZNkY0ry3y9NYdp1mBfs+z
JpefCK7djgJKxJBGVp2/qYoqRRS2YuG1SAiA6YBJXezfrgKxZsR97e5e7eh4++Pj8RENqZKX
/eH949nM6JqFqEODaljdaFz8COytueScfhv8GlJUoHAluv7j4tD4oWF5xL59+WJOjG7FqCDi
VFvh38SocWH3IwgydCWm96xZElrMUa4SoZCVYM6vYSXrdeFv6l6h5/JTHuagnORJjYd7qJ+C
AqcXJonrKqTSJ0nkFPPrcKsM4Tdhw6w6rUp6OYI2akXbWEFIrrR/tXbMuUIHGD0xROcWKtut
20f2hWmHBzJwtq4xeje1PxAvxBv6OgW/Lla577ZFXLIUCeYZJC8bZB1VAbsztMT7fpYlzWpt
90+H9Lp+HTeZflyL3062hg5MXBVavZf+dB7H/LSZKjLK1lzgxZOBJWV1kwbSSwpsx+7WZ3D0
GBISUSsvyC8Gg4Hd7J7WlUBout5edEZdG1rEwkCWR7oY1LF3wW0bbrgqcTh94g7F8tg+jKxp
XkLf5sKE2i58mbkQYbFjSnc9qpq6i1mUDhr7nDrc/A2w2yjTpDt10mCZW0eY51rrQPK8kIe2
kfgRgR20dAtppCyxx4cNCos5aqCrDhYdvFBEzYsjGwNt0Lg6sJplV3dk0QJRNOgqTDF3iU/y
NDGtpbsWdqsCh9v7sSD6NrC/7UbGz2IF2Snz5yM3tJbxIhEncafxAtFZ8fq2/3qGwdY/3uTB
v9i8PBperWWIuVRBHiloj3EDjyJJw44KsUQK7aqp9b7yYlbjLWSD3KoGXlRQojza+3dUUvfE
kmDcMuOhRKOiytL2CiLbBQZFqkNO+7ysbkBEA0Et9tgBiSmQtZFzcHpcpdsJyFkPHyhcEeeW
ZCuOy7IAE07Wym6dKNJmEjh214zZwfzMU7FiLBMGI/ICHq1Fjyf1f+3fdi9oQQp9e/44bH9t
4T/bw/2ff/7539rdPD7ZieLmQmHslWRNgyuWfRQBoi3y0a8Oa5vn4H1SU7M1c8Q6ldTR4VI0
+WolMXCYFasyNAP+dHWtOO0kKtHy6dLkYQgDRdstq0N4C8N8sijTpsz3NY6kMADo1G/66BaN
guWPtzP+M/LY+ZO6/P9j7g21BETRyOCJQuVBh5AmR3MgWN7yLvvUAS4FFOcFS+6uf6QI+bA5
bM5QdrzHtyODaXUDl5yUEspP8Ny/T0SoiUQ+1ByvBITE1AqZDyQzjMzrBMMwuISnH2ZVEejV
DHNLi8claUQTNQbrOL4RYOpiVs38c48Uny4QJKrYDGWh1CXTiECrbIVm3LP4YGjVVVkBNjQc
u9FjM6hYmkbf7CkB7iwV24pQac0rEbEXQAHAB126m/jCkUe3VnpvpfGgzcxxPbt3fUKi6ZV1
QVT5sHPQzhY0jbr/malt40e2q6Re4BWnI3gTZHFS4WGHt2Q2eUeWiVhZUB6+RFokGOVATCtS
/l9hV9PTMAxD/xKIaYIDh67rtKjtOrJNjNPEYeKIBAjt5+NnZ2uSxuaEVJssTeOvZ8ehQGcz
cfZXqHbKcdY6jCZDj0QMo9iClbZDYCTckqKwde3uH55mDFgHb3M0i+QKdE1JS0cOZz31RPkZ
p6JcN8lyikfMvfRciPGbaIHkOGXgiCfDrYQj2kR7XR7nJZMvn4N8M/bgpzsto2/Q3i/nQS1g
gAAZmjwkdqSpfPcW0EpDZtDYAcCytpx974ZcGsa8GM0AmSV0QCwblnGZGDA93R2VBvoRR7F6
9EY/8J/sGwgpB2Vy9cDwbeUrpV9EvS009cnGYAkw6PyhrJWQJWMsKdVlVxHga+zhHNz05FU7
bV6l1+Tgk7Dl9lywUJZcpeN7uhljoH5//v6ByYfbWn/+nr/eP5Le8y2mVXyhq1kETs198s1+
V3pPrFwa23qIzzZJuEcSTI+DdGwjNyxwj/MFW8CNIfKVB3BTUhrMCbDXH3ouHI6RNyH6F5pW
I2m357sLbpu4RTuelB4SRfjgUHehMHU0OO1yX/Z6JKpA4cwuu+A7ZendBqB0uZUjc6j/vxhN
Ge1Jw/gvcAzCoHOGdugGXLCuCzn2HQWDJ3swJEHJh1Dp4hjPZ7Yc8YuvmyPAL2NlJIElhyGV
c/mBb1dvy4ItAThx7IuXzzCZ1WxS8caPJeOmj0p0Ep2u3GVBsNWDM6hHTsvrdPT5WpEp0zk8
Sk72OWaRrbJ2Youpblku1JR14RSjsf1bQzZodTL4IaX/i5qwP4eWAcZvbMtViEJEadsaWUMy
7mV9hkIvmudpQV7luq982dTyaCvnewqLjIWWPlPG++hJx7CLubFB3mEiZUoAPkPrNH1d0Qc0
Nheni83ZIIZVzMb1R1QGoqlxqmm0Jif/JQX9B0TFMVNe8AEA

--pf9I7BMVVzbSWLtt--
