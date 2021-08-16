Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB77X5OEAMGQEOVMO5ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 704B63EE09A
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:00:01 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id w10-20020a170902e88a00b0012dbc24039dsf3215111plg.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:00:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629158400; cv=pass;
        d=google.com; s=arc-20160816;
        b=joj1bFfXepSwP31LdKrU/JLuIcpUr+ablWUxF03Dl8CQXxU8BahqIh6Epdr+s6HOZQ
         v0Mx6D5ACx/nm7+gwgYaig49GyTp5inkc7G/KwN1hesW+zHCfNFh3RbKXwlGIDLZKy7K
         VNI3lLMWROPvTKgWHJvz97Mjb3kKMSEKGko9XxTL+UZsWwD9GBfj2WVvkNqGo2c8dXHV
         eBlpwfJyxezvF2xGlhaNe4dKHnuH5/6nVwhU9glv13B3QWe3oFB3eqdraFx6Gua2GJfM
         CX9Nr1RLEOgAZBsCLDU+egnK8kABDqoiBzxCr0hXg8ShhpyKIUFez4cbC+DC3ykyySEX
         nVrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KbC/1TZdkGST+xS5OgB4PfEkPTLJoyh9y8GikgLF5QA=;
        b=FsFY1zCi+llY+gwHS4lHzjOwtjB1l05uRmZrJWvTNNjFV114SDm32+Mwrpnjx16tQu
         zOF4NKqMRw9Hu15b3kaYmYmNay2xyHtND7114THZBLNKwGrrQdsz1BtXIOzNX5e44DKB
         xVc16XJ8d24YZ/HEg1w99TEpAxw6Hi0rxuoVZBnzyMhTOPf9dnNugaw8AUTk6s9kEWdV
         PACjr9N8IQYMVzgF4uraaBwO0pTGRA6aNdJjuJA2xyOT6uKzDCTEMuSwxNAe9d7BRhI6
         7f3/49VW4oJwrSJR3G9NFdKdOe3ZpRR6E4Bsm4g+WxptngA+XJsgKteul7dm1i9Hy6Rx
         YjGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KbC/1TZdkGST+xS5OgB4PfEkPTLJoyh9y8GikgLF5QA=;
        b=Ix1GAalourelyc5uxi5hDHAJSD4ckLh6kinvu3iUS7YYkNi6fWTI0xfFGy2uKZGVHG
         JvJf6qtl01aro2CjkCKKHbD7MZmO4nY0c/ohwpM2FNKIoqVLHdedXFWyUNgY5qhABJkN
         DUCAf9TzOGExLgp3I4tB9h6GmTz6rMIgosYSbAu2dsExZV0ct5ztnOASoRFMlzUF/wgh
         we3ZxHigNP4wNxCWVJ8FxvwrD6kxxKM488qAUaNkmXSY5wPxgZWexPo0GZ7fgJrmg1mi
         pjjj0fhnATSn8KGaf7kfWYRzMjGauofzv8Uq7QYPLGFNyhrPfeQss8+r4+9FA+NQQ2K9
         mwEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KbC/1TZdkGST+xS5OgB4PfEkPTLJoyh9y8GikgLF5QA=;
        b=ibO/hf5igQK+qVbAnMaj7LfPBQ7mPLBDnUtoSFSoL8uxRaphnrkYiSdeczFcBNAMeV
         uDUtdkT2S6IoKnqzY0b4gslEZp09lsnF63dNAtT4NnxjsIxOWJZCaqPeiF1pIQYjx8ax
         BtNNd4o6CsBefibOkQKp527wTxMltubFLsLf3U1//gYin7adxBh66vhyNQMWR9kJ3Z1R
         6Rgky8Ah2QRu9Q8uzCDgioSMoHCExF/pSLrY7zsokFPKNgz61c56ZCnNxKM/eBe8dE5z
         eLLVIjT0rBHRssR9e66SHXEJhz/U1UByop+QWqi0d7qdMIShFyLlqiJz9BL4PVZ11goT
         Bz9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530F1TbKB1LkywpZDWGoA941tSbGgb99UuLQizoOtY9MMUfgMNOL
	/n0QDq4j08uHT3hVcQ4BKNE=
X-Google-Smtp-Source: ABdhPJzylzLfqiLaAWAskoYbncnJYJ32GnjD3EIHsNQIxXnOfoSxomOUE7efyS4XkKpwEgt31/C4Kg==
X-Received: by 2002:a05:6a00:140f:b029:3ad:1fe4:70ff with SMTP id l15-20020a056a00140fb02903ad1fe470ffmr637056pfu.71.1629158399982;
        Mon, 16 Aug 2021 16:59:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a38c:: with SMTP id x12ls186589pla.6.gmail; Mon, 16
 Aug 2021 16:59:59 -0700 (PDT)
X-Received: by 2002:a17:90a:384b:: with SMTP id l11mr530709pjf.208.1629158399152;
        Mon, 16 Aug 2021 16:59:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629158399; cv=none;
        d=google.com; s=arc-20160816;
        b=asHUpy0IKocZcmw33iB/SN+IR243Q/rxjjgg4jO7YoXi/ryv4oec5UTBtZjwlkaNxn
         MMjBfgbVwDfHcmhV0pn4rRjAhA6iBxUDJAT5v3qRW3ZZrZIHd5aQy8zSNO/OQ3dwSMzR
         +NGjA1lny5TFrs5ZSL3O9s6Wq0DTLTVAkpc82q8x8DDFkdPcDeA+qh+IfpNiuVE59m3w
         FfVQs02u2LWW5IRpUMcDGXxXk/vD6cDkPhh5j4xCi+AV/kcsiMbraO86DOaNQdb8FAku
         MaANuNvXUGRnw+DmOFcIv6Hwrp5JUEmVQwQNDy/ndbLpwyI5BQP0Z5bufXliSdsCipeL
         kuew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=545WQFLWnCG1nN69RsU+khlKCFdVE/FrrE86va/nxB4=;
        b=NHTuxo1iB4Tcm7PM7dk3HngdCI0bTprBOhC1Ao/YVP2Zry7U2x2rA6YV6WYpxEaqC+
         BBmkh0I7DFRxiqzacycV+MV1hDwTWny+RNUF9TqgQSzR0l//y2a7hEnhvtzdOTFHJD+6
         GvrGjVP8Qo/cunhpYo8xGdgvVXhy2amGRPK6cEw/1uY6n0lxl+LvdHWGxMp9tM4ceAPu
         SsPZzDlHPQ0nlJa5bjSBVHVaxde8dbWO0kgbAn0IO/07uqapLgG+zWRIPZk7dsDPRuKy
         ceQNfowq6vEbOpc0Z9gLkFR0Hwk5tCEKXFRR6YOMduDbNRfZTVb73iaMWVA0KG0LPOpa
         cBiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id i123si16908pfb.1.2021.08.16.16.59.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 16:59:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="203119507"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; 
   d="gz'50?scan'50,208,50";a="203119507"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2021 16:59:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; 
   d="gz'50?scan'50,208,50";a="487704321"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2021 16:59:56 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFmWJ-000R6E-Bv; Mon, 16 Aug 2021 23:59:55 +0000
Date: Tue, 17 Aug 2021 07:59:20 +0800
From: kernel test robot <lkp@intel.com>
To: Viorel Suman <viorel.suman@nxp.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Subject: sound/soc/fsl/fsl_xcvr.c:1048:17: warning: Value stored to 'dev'
 during its initialization is never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108170717.mAVdaKk4-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   a2824f19e6065a0d3735acd9fe7155b104e7edf5
commit: 28564486866fa889b78264360022c94836fa8072 ASoC: fsl_xcvr: Add XCVR ASoC CPU DAI driver
date:   10 months ago
config: arm-randconfig-c002-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=28564486866fa889b78264360022c94836fa8072
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 28564486866fa889b78264360022c94836fa8072
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm clang-analyzer 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
   drivers/media/i2c/st-mipid02.c:747:21: warning: Value stored to 'client' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct i2c_client *client = bridge->i2c_client;
                              ^~~~~~   ~~~~~~~~~~~~~~~~~~
   drivers/media/i2c/st-mipid02.c:747:21: note: Value stored to 'client' during its initialization is never read
           struct i2c_client *client = bridge->i2c_client;
                              ^~~~~~   ~~~~~~~~~~~~~~~~~~
   drivers/media/i2c/st-mipid02.c:919:3: warning: Value stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
                   ret = -EINVAL;
                   ^     ~~~~~~~
   drivers/media/i2c/st-mipid02.c:919:3: note: Value stored to 'ret' is never read
                   ret = -EINVAL;
                   ^     ~~~~~~~
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   drivers/media/tuners/tuner-xc2028.c:1037:3: warning: Value stored to 'rc' is never read [clang-analyzer-deadcode.DeadStores]
                   rc = send_seq(priv, {0x00, 0x00});
                   ^
   drivers/media/tuners/tuner-xc2028.c:1037:3: note: Value stored to 'rc' is never read
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   6 warnings generated.
   Suppressed 6 warnings (6 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   sound/soc/soc-pcm.c:1955:2: warning: Value stored to 'err' is never read [clang-analyzer-deadcode.DeadStores]
           err = dpcm_be_dai_hw_free(fe, stream);
           ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/soc-pcm.c:1955:2: note: Value stored to 'err' is never read
           err = dpcm_be_dai_hw_free(fe, stream);
           ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   5 warnings generated.
   sound/soc/soc-ops.c:370:26: warning: The result of the left shift is undefined because the right operand is negative [clang-analyzer-core.UndefinedBinaryOperatorResult]
           unsigned int mask = (1U << (fls(min + max) - 1)) - 1;
                                   ^  ~~~~~~~~~~~~~~~~~~~~
   sound/soc/soc-ops.c:370:26: note: The result of the left shift is undefined because the right operand is negative
           unsigned int mask = (1U << (fls(min + max) - 1)) - 1;
                                   ^  ~~~~~~~~~~~~~~~~~~~~
   sound/soc/soc-ops.c:408:26: warning: The result of the left shift is undefined because the right operand is negative [clang-analyzer-core.UndefinedBinaryOperatorResult]
           unsigned int mask = (1U << (fls(min + max) - 1)) - 1;
                                   ^  ~~~~~~~~~~~~~~~~~~~~
   sound/soc/soc-ops.c:408:26: note: The result of the left shift is undefined because the right operand is negative
           unsigned int mask = (1U << (fls(min + max) - 1)) - 1;
                                   ^  ~~~~~~~~~~~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   5 warnings generated.
   drivers/mmc/core/core.c:2010:19: warning: Value stored to 'host' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct mmc_host *host = card->host;
                            ^~~~   ~~~~~~~~~~
   drivers/mmc/core/core.c:2010:19: note: Value stored to 'host' during its initialization is never read
           struct mmc_host *host = card->host;
                            ^~~~   ~~~~~~~~~~
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
>> sound/soc/fsl/fsl_xcvr.c:1048:17: warning: Value stored to 'dev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct device *dev = &xcvr->pdev->dev;
                          ^~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_xcvr.c:1048:17: note: Value stored to 'dev' during its initialization is never read
           struct device *dev = &xcvr->pdev->dev;
                          ^~~   ~~~~~~~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.

vim +/dev +1048 sound/soc/fsl/fsl_xcvr.c

  1044	
  1045	static irqreturn_t irq0_isr(int irq, void *devid)
  1046	{
  1047		struct fsl_xcvr *xcvr = (struct fsl_xcvr *)devid;
> 1048		struct device *dev = &xcvr->pdev->dev;
  1049		struct regmap *regmap = xcvr->regmap;
  1050		void __iomem *reg_ctrl, *reg_buff;
  1051		u32 isr, isr_clr = 0, val, i;
  1052	
  1053		regmap_read(regmap, FSL_XCVR_EXT_ISR, &isr);
  1054	
  1055		if (isr & FSL_XCVR_IRQ_NEW_CS) {
  1056			dev_dbg(dev, "Received new CS block\n");
  1057			isr_clr |= FSL_XCVR_IRQ_NEW_CS;
  1058			/* Data RAM is 4KiB, last two pages: 8 and 9. Select page 8. */
  1059			regmap_update_bits(xcvr->regmap, FSL_XCVR_EXT_CTRL,
  1060					   FSL_XCVR_EXT_CTRL_PAGE_MASK,
  1061					   FSL_XCVR_EXT_CTRL_PAGE(8));
  1062	
  1063			/* Find updated CS buffer */
  1064			reg_ctrl = xcvr->ram_addr + FSL_XCVR_RX_CS_CTRL_0;
  1065			reg_buff = xcvr->ram_addr + FSL_XCVR_RX_CS_BUFF_0;
  1066			memcpy_fromio(&val, reg_ctrl, sizeof(val));
  1067			if (!val) {
  1068				reg_ctrl = xcvr->ram_addr + FSL_XCVR_RX_CS_CTRL_1;
  1069				reg_buff = xcvr->ram_addr + FSL_XCVR_RX_CS_BUFF_1;
  1070				memcpy_fromio(&val, reg_ctrl, sizeof(val));
  1071			}
  1072	
  1073			if (val) {
  1074				/* copy CS buffer */
  1075				memcpy_fromio(&xcvr->rx_iec958.status, reg_buff,
  1076					      sizeof(xcvr->rx_iec958.status));
  1077				for (i = 0; i < 6; i++) {
  1078					val = *(u32 *)(xcvr->rx_iec958.status + i*4);
  1079					*(u32 *)(xcvr->rx_iec958.status + i*4) =
  1080						bitrev32(val);
  1081				}
  1082				/* clear CS control register */
  1083				memset_io(reg_ctrl, 0, sizeof(val));
  1084			}
  1085		}
  1086		if (isr & FSL_XCVR_IRQ_NEW_UD) {
  1087			dev_dbg(dev, "Received new UD block\n");
  1088			isr_clr |= FSL_XCVR_IRQ_NEW_UD;
  1089		}
  1090		if (isr & FSL_XCVR_IRQ_MUTE) {
  1091			dev_dbg(dev, "HW mute bit detected\n");
  1092			isr_clr |= FSL_XCVR_IRQ_MUTE;
  1093		}
  1094		if (isr & FSL_XCVR_IRQ_FIFO_UOFL_ERR) {
  1095			dev_dbg(dev, "RX/TX FIFO full/empty\n");
  1096			isr_clr |= FSL_XCVR_IRQ_FIFO_UOFL_ERR;
  1097		}
  1098		if (isr & FSL_XCVR_IRQ_ARC_MODE) {
  1099			dev_dbg(dev, "CMDC SM falls out of eARC mode\n");
  1100			isr_clr |= FSL_XCVR_IRQ_ARC_MODE;
  1101		}
  1102		if (isr & FSL_XCVR_IRQ_DMA_RD_REQ) {
  1103			dev_dbg(dev, "DMA read request\n");
  1104			isr_clr |= FSL_XCVR_IRQ_DMA_RD_REQ;
  1105		}
  1106		if (isr & FSL_XCVR_IRQ_DMA_WR_REQ) {
  1107			dev_dbg(dev, "DMA write request\n");
  1108			isr_clr |= FSL_XCVR_IRQ_DMA_WR_REQ;
  1109		}
  1110	
  1111		if (isr_clr) {
  1112			regmap_write(regmap, FSL_XCVR_EXT_ISR_CLR, isr_clr);
  1113			return IRQ_HANDLED;
  1114		}
  1115	
  1116		return IRQ_NONE;
  1117	}
  1118	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108170717.mAVdaKk4-lkp%40intel.com.

--qMm9M+Fa2AknHoGS
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
yLhoidHY/wfk47neM7wBAA==

--qMm9M+Fa2AknHoGS--
