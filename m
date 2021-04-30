Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU5OVWCAMGQEUJJP5YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F2B36F360
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 03:03:16 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id m7-20020a0566023147b02903c31e071e26sf37392403ioy.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 18:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619744595; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rqm/1fnOa1ctK9lGo2gzeoUG1Mr4KGCK2GnXtL1vxauidM74+yvQqYsD3KlT3bGUP+
         aT/eo/wTwd3oZSoqC9tecc7yG8QnvWQAWmDoaHAbSDIXKmEbynkym7nebdKgYg4U7/2B
         FUUiuESkIeS5M9Bc7Ccoy1Q/hKZGELNMx6XexQf5yFT0soU7IF8GN94Ig3MZJ8Z/FdvS
         pJDFxpif3uDi+gn1vUYWOGFI0AymcELBeWQnZYiNLSuRPzXzEhHeQEDhwIpRs+tzA7+O
         tKKjQBFhjgiFaR93i+sj47A3s3rsip+hFMfm431DjqB8tWZnQhfHS4b2OM6Bwx/SGESb
         TTVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=NMqpLRwfvcSpRXud9ihNmIOM0pjLdjkZLKjOLaWImdU=;
        b=Krhwm7XAnkOpIvzLmePqboDdmqM0XKPACvl2A2HuGCSOMLfVAnqFQelmP5EyQqMwCB
         gqYkaVsHM1e3KbWvK2s00brQs+P8e7gYiIdy7+r14xWBTG7so0737fLc9DCU/4hgCC98
         eEI1EDW+tShG7cR03Ad0yntdFOh3ZZFhZ/6mJc7SSP5ApOsSzJCpJl9Jc0yldNq7cPen
         cOXfYTOrjaeyp3V6RUIjwKZOERUXsUstnTg142xv1B6b3hFHM2gEgLej8yjYDYnb2iDV
         Gg/b/FQZiJ0sxtdsw0EVjnpg6GNSgkuPhV3oEgQt2dx3gaqOYXmUaWRZAL6+n8Rpi+/f
         vuHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NMqpLRwfvcSpRXud9ihNmIOM0pjLdjkZLKjOLaWImdU=;
        b=Om6rmwZOZHGCHyN1JBMqNXeFcwGKunP1k/eJFjGsKvkU69+ALewWmAUVwZE9JImTPT
         P2ZpWusbjpN6v51q4JcEX3/Wu/KIOJjPkfTfNontNI4BF0DOYubvxJ9NubqLr+AIihlL
         jJW2FYkNVfhTPhWb5dZEDdGFtatz7/JS4ADUt02yDohOn1kwvLd6QWT6ulRDWWWtrLre
         dMi6Bh/DT8jJNZjDDv4MqgyZzre4rAdPy2j6GtLIdVWf/rq4UNof+kK0FeDo2XUKGcx+
         OuzerghrhQJtg24FE2FHCeddWa298YTMia67L1P4+FNUgk1vRVz36/7kcVKSaMO8L2Of
         rK2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NMqpLRwfvcSpRXud9ihNmIOM0pjLdjkZLKjOLaWImdU=;
        b=Rk/K5ANen7/iResCN1EDjDrQJUQ1SFoaRyQ0ft/yrYDR49G1RIyFRiOPo+FzQLwS5Y
         CMRwcgw9WxHfrqeotaw/3omB9SJGkyY3ZJIkneobs69lV6nx6zhdK6nHUfLFVLKI9iNA
         JVGNi2+ftmOKsnOrxnLKTnzGgN5R06N8D3vynBLagBasq1XSD8xCNFQ55odaDtS04zBm
         ZdPZC78zKFu0rOIzsAs45KXizWrNRbvPO7nCsKdG83vDaDp6of4hIts6IaUd6XDJW39f
         8XdlMnbbCvSsOnRq96apFSqrZEvtQSzcFf4f5tBxLvu3oqEToLS4XXu3cLYFeOsw7Gi9
         q/wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fADgmEJYq9OaSvpjn2hw/oVRfXRIFk0F+ez3uTc5+9jKoEjKd
	guPRCbwvm88wjv81CGhlQQY=
X-Google-Smtp-Source: ABdhPJy9BdIPZRpa3xYXrOjwXImjZqM44SnobgQ/4CaKJ4a2iGdNWlLyg/hk7szzzME3yCXdOL2fjg==
X-Received: by 2002:a92:d582:: with SMTP id a2mr2000011iln.206.1619744595447;
        Thu, 29 Apr 2021 18:03:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:107:: with SMTP id s7ls727449iot.2.gmail; Thu, 29
 Apr 2021 18:03:14 -0700 (PDT)
X-Received: by 2002:a5e:c319:: with SMTP id a25mr1600270iok.55.1619744594660;
        Thu, 29 Apr 2021 18:03:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619744594; cv=none;
        d=google.com; s=arc-20160816;
        b=pGsOdCfcrRtdXDxBJZEODk8XXYi6fxPLFzU4s+svIfhLWj8wu0u0eSPgjQObrloows
         a6sOgsGbagTa9so8UB3AMMmb6/kA2oPSh3aEik2DSmBLXKyyXUhV6zpO/2tGRWGhwJZB
         teBgA3tV/jXRnLG5TcBv6tIWXDVu8wksmL0kmkIHvOc4JIUwZW1rIOFxFtBZG2DMOts8
         +TQ8taXj5mLU7NjnUhizf3fgaCmtcMbWdith+YPxQtCxQWmMomDo1UhY0x6VDEu9+g/A
         IMxf6C+vVjrwOL/wxXHu8TRycf9A6zezYEpajskT9Kw2Gm6PmKKQU2SMryC2pSwNryYD
         xn2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=DycAjgDRa5AC636BAtFaSD1kaDquyRwL8uyq0oLCvv4=;
        b=chUwcJtvnYLbvqRYx5+Ui3Ay6LNxwe0Ms0ZhxBzE9+P+qF6YLvt8PU/R/f30nIyHih
         Geg5MnsJUcNs2Rb7rffYq1YSGFWeEOpUYbK5DMYzjP2isb2XW9hs5O8yLyFJC1PUdhVn
         bZlk3ae4IJ/uYSnDHp4I2UH5Rr11RLAEyAW7h1oik8vJMtwcWe7AZemZAmAmO2ohw5O7
         De2yVTtOA4JsqmOW8SW5lwWNLg0f3+u6ZRwse2Ybb7vxMTkhBQkt/ddBL+N1j1Uk3w/r
         kaTc/H7CX0jj3cSNTJKmXSFyTMroWL34rlX8AI7eTBq3+oALugjTlol+jRlYZKSBEFkl
         McBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id c1si419269iot.4.2021.04.29.18.03.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 18:03:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: 8WV3WapPa0XLdWJk1fewdvfXO64CyRJ4N1VUutxDM+CgvOG2sAOXsW4jOCTGzXxrKD+9uVmBiM
 Vu+xdIOAPzeQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="261106781"
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; 
   d="gz'50?scan'50,208,50";a="261106781"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2021 18:03:12 -0700
IronPort-SDR: ctXPF4mRZMdDgALpMlV79+fLLlmEGXDo/KkQVRHGcn57UiENH5cjs+a6xNzqhFZLqqJve/Ku5Y
 KwmyVYnjLqWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; 
   d="gz'50?scan'50,208,50";a="619942196"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 29 Apr 2021 18:03:10 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lcHYj-0007tg-Gn; Fri, 30 Apr 2021 01:03:09 +0000
Date: Fri, 30 Apr 2021 09:02:44 +0800
From: kernel test robot <lkp@intel.com>
To: Bart Van Assche <bvanassche@acm.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [bvanassche:scsi-remove-request-pointer 5/5]
 drivers/scsi/aacraid/aachba.c:758:3: warning: variable 'SCp' is
 uninitialized when used here
Message-ID: <202104300938.D8af2wwE-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--AqsLC8rIMeq19msA
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/bvanassche/linux scsi-remove-request-pointer
head:   29371693c91457d86000b09d80a31b19b03a3675
commit: 29371693c91457d86000b09d80a31b19b03a3675 [5/5] llds-stop-using-SCp
config: powerpc-randconfig-r011-20210429 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9131a078901b00e68248a27a4f8c4b11bb1db1ae)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/bvanassche/linux/commit/29371693c91457d86000b09d80a31b19b03a3675
        git remote add bvanassche https://github.com/bvanassche/linux
        git fetch --no-tags bvanassche scsi-remove-request-pointer
        git checkout 29371693c91457d86000b09d80a31b19b03a3675
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/scsi/aacraid/aachba.c:758:3: warning: variable 'SCp' is uninitialized when used here [-Wuninitialized]
                   SCp->ptr = (void *)callback;
                   ^~~
   drivers/scsi/aacraid/aachba.c:739:26: note: initialize the variable 'SCp' to silence this warning
           struct scsi_pointer *SCp;
                                   ^
                                    = NULL
   1 warning generated.


vim +/SCp +758 drivers/scsi/aacraid/aachba.c

   736	
   737	static int _aac_probe_container(struct scsi_cmnd * scsicmd, int (*callback)(struct scsi_cmnd *))
   738	{
   739		struct scsi_pointer *SCp;
   740		struct fib * fibptr;
   741		int status = -ENOMEM;
   742	
   743		if ((fibptr = aac_fib_alloc((struct aac_dev *)scsicmd->device->host->hostdata))) {
   744			struct aac_query_mount *dinfo;
   745	
   746			aac_fib_init(fibptr);
   747	
   748			dinfo = (struct aac_query_mount *)fib_data(fibptr);
   749	
   750			if (fibptr->dev->supplement_adapter_info.supported_options2 &
   751			    AAC_OPTION_VARIABLE_BLOCK_SIZE)
   752				dinfo->command = cpu_to_le32(VM_NameServeAllBlk);
   753			else
   754				dinfo->command = cpu_to_le32(VM_NameServe);
   755	
   756			dinfo->count = cpu_to_le32(scmd_id(scsicmd));
   757			dinfo->type = cpu_to_le32(FT_FILESYS);
 > 758			SCp->ptr = (void *)callback;
   759			SCp->phase = AAC_OWNER_FIRMWARE;
   760	
   761			status = aac_fib_send(ContainerCommand,
   762				  fibptr,
   763				  sizeof(struct aac_query_mount),
   764				  FsaNormal,
   765				  0, 1,
   766				  _aac_probe_container1,
   767				  (void *) scsicmd);
   768			/*
   769			 *	Check that the command queued to the controller
   770			 */
   771			if (status == -EINPROGRESS)
   772				return 0;
   773	
   774			if (status < 0) {
   775				SCp->ptr = NULL;
   776				aac_fib_complete(fibptr);
   777				aac_fib_free(fibptr);
   778			}
   779		}
   780		if (status < 0) {
   781			struct fsa_dev_info *fsa_dev_ptr = ((struct aac_dev *)(scsicmd->device->host->hostdata))->fsa_dev;
   782			if (fsa_dev_ptr) {
   783				fsa_dev_ptr += scmd_id(scsicmd);
   784				if ((fsa_dev_ptr->valid & 1) == 0) {
   785					fsa_dev_ptr->valid = 0;
   786					return (*callback)(scsicmd);
   787				}
   788			}
   789		}
   790		return status;
   791	}
   792	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104300938.D8af2wwE-lkp%40intel.com.

--AqsLC8rIMeq19msA
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
tkMffVl6Xn/yofL/Amkcp7CGiAEA

--AqsLC8rIMeq19msA--
