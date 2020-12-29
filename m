Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDGUVL7QKGQES3NS7FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id B48A52E6DB4
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 05:01:17 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 33sf9327709pgv.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 20:01:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609214476; cv=pass;
        d=google.com; s=arc-20160816;
        b=s+/02PUlcXFzFuCVseeacKEHMq9tBoG0nbzGVhhgP8Z+IEUTFq3oEfiqmgY+OicVgv
         iYurXnrtCibeHGy2u7wiZIod+4qxO4PYj5esHJ8GpWnvG/uMnlFVdI5BLPlJ33GD8bIn
         p/W9vuvKYd4dtvru30IfbhzOvlgKzRGAHvQCWZRG9ZTJW+bzjy7xPA0aB5OJWT7BnIiZ
         GRVqrPHdNFzSDhrvH9TyDmO/7c/7uBfb7SNFuFHznYvaRaVCs346WGvF43wr44Z1pCD4
         XMmUIIIlco76GhJnfb4ZRJAn22ZRV4lUGcyb13yUJwBSuV8vOzOeqlSUvLPP/Mf9c3qt
         3S0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=n5GTAE8sQZdU4wX6kaqOl3cT7i2CcUpgMZXO7EVjayM=;
        b=R1muqJp5VzaT43UEvf1QxiK9sDNQhQrBSNhuA3JbqYXNjk2dwa2s2aubEIp6BurFW/
         wqNWT+rZxo29Fov8dQPwb/+2wEo77+IRZcHkvAFwA6T84LCDAlPGSXwB5WNMpJcIs1OZ
         X+nclI0Uqrn2guAf9/XT53RKui64gqy3R4J/HInJxEgFb3T3tJOwwSRfX5akMZawpH3a
         YAiGDKQYHILHSdKHPg89UV8bR3CrF9cptCywU9Jsv7FoRfFkTRkZwrLprG76IC/qgctb
         pM3M/ph1YFO+Q+V7gOx2/mTw68mgtjx7d61dYrbDTuN2b7zxLAPk080rWI6oCczufP1D
         9qWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n5GTAE8sQZdU4wX6kaqOl3cT7i2CcUpgMZXO7EVjayM=;
        b=ETaOGSyOhmvjyesaAwhe3wc8REOY40S5+Vgi8VTUw8r779nvhgJetKclK3jZ/wA2R9
         TB5rbHaShooauJyLgmvhrpYnzZvH1ynA2q4OjdYjaE4m6aNPwVumRQ7EAXeq0tB1F6dU
         YTkato4UIsFmd6BfbqJGHc5d50zDG6NyKuCcJIFz6Jqo/d7JnEbbFfM8i6XS6fCJnWZG
         rDFmktHyxx5f83VN1/L8g5rnBlq4rbDKu0ppVDOYb8/EWSGrgXqmfksRbNyi89adWHte
         0oqSWEVQgLm0pGg5ZjMEvQi6x+tfwvkkPeYWGYiNp/ROxeV77rFS0aGtTW8aJAaek1oc
         WCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n5GTAE8sQZdU4wX6kaqOl3cT7i2CcUpgMZXO7EVjayM=;
        b=rU07IQqCyGID33jY0tHUBeLcogIv/Hx1JpXc5/WsVsYoob2UmCcCV7g6joJsIs961G
         k7exNExiVk3/Ahs1QTqsZkID1j64fieMLcmW+Id3kbeAlfzpNxUenkEaxBHikyuS8LeG
         AAylydlxpUbwRHT+T5y6O0TcXWatzaUnB9/fyTwpB1IJRJVxU9erE5XJyqAMqbgvrrpO
         FNq4x6V5ZpfTmeIZhK+Ojz03waTzH1d9fdlFepzd6GjqSAuqTwJn7wKH40Ftq1GBpqjQ
         IUiNicxSnNtgca2Pj3rEYNbpICqMAdNAKCEErn4R4NnlaQht3NWmxd0ukYy01evBWCQS
         siHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530at8KVZf1SfzSCYyOnAyuX65gfVbPWConkY7cCIP0KT1mmszcv
	mdIIwUkxDaTPxmaFxNcwFSA=
X-Google-Smtp-Source: ABdhPJzIrItNo9/elY0rqaceImpJw8Yx57QLSWpbQyA8GpdyX9wSc/viqjK9mTBCpx4vqDS4W8DbZw==
X-Received: by 2002:a63:4c52:: with SMTP id m18mr38711893pgl.280.1609214476287;
        Mon, 28 Dec 2020 20:01:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls17271265plq.7.gmail; Mon, 28
 Dec 2020 20:01:15 -0800 (PST)
X-Received: by 2002:a17:90a:4e47:: with SMTP id t7mr2177111pjl.13.1609214475588;
        Mon, 28 Dec 2020 20:01:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609214475; cv=none;
        d=google.com; s=arc-20160816;
        b=xARydjqaE+kgiKOrLR0803NQx2aITx8XQVOouK1BcV1Pt9ES+psDr2ePF6eeUdPs18
         oKjJMVYJN7nnaYukgqZ57+yuqtvQfedvVkQOXe2Pbx9bHPttVfYvHxyAkzqBQCVZLaMe
         axnK5wYFTiOAa/YQGmYHm7yUGoIzht1y6LVx8uTsTwxpAiuud9s+59mhxB76GQ/+kPv8
         neU4C6T55QjvDQkIjg/r3TwC05+hqiqeBZX2PQhddZBB9nv0fcc6IQDFwILZwSoP5AjS
         lEBZxv8cr1N69HlCC5MSmyAKt6WZx0O2swgpbm/ZupsxMpJMWVVrVuSnWd+d96gkQ4px
         3UrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=X4gi4A7abAnp+SDIHQawDZ5r+oot60LGlhnMQAVWVRg=;
        b=GN8DmmZ1LJPMmBVOQhujnNHWHft7jPaKeRtFVkbE45EES87o6LYnwmhp03OZb7VXZZ
         RRb/5HkisulTko9v9XiA7lY665ea3kCffgvo/s4Q27s5ruyllkpzlAZ3PwQfwtWAGhn4
         ZKPN3fw30FS7WPIIy+vPcwhWztMI9l2G6COyGIIaErwmz5vhErntAdjGAEIlLb+0REz9
         IAoHtCfGqeFXEDb9TWjADlZ1ARSTHrRxt2+K/cE4J/OfRZ2nZSNEfUrL9vSbZDyL38tp
         JGL6vmFR19PZu3NdpvyLXZE2DTWWCT9UVdYTe+COjeHTi7JgSys/iFdfgoEsVBMJHLlx
         TlAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id l192si2124800pfd.6.2020.12.28.20.01.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Dec 2020 20:01:15 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: /KvHTBSrjtE5QfHatloxj3mwF6Rt+/mSXSp1euOoh7CWeBR3Z6LZ3+Z5kFYI0sdAwwudDJmhBP
 7nsRHJuMoViw==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="163516839"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; 
   d="gz'50?scan'50,208,50";a="163516839"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2020 20:01:14 -0800
IronPort-SDR: DPaaRC0zuCEWRzx5p8sjxm/dkQsTmke3avEzQqOwFm2tv3Xi5L85eLwOn98AEBobOq/NP9gp65
 m+CwSDg3aEoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; 
   d="gz'50?scan'50,208,50";a="341051829"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 28 Dec 2020 20:01:11 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ku6C6-0003JZ-DJ; Tue, 29 Dec 2020 04:01:10 +0000
Date: Tue, 29 Dec 2020 12:00:47 +0800
From: kernel test robot <lkp@intel.com>
To: chensong <chensong_2000@189.cn>, greg@kroah.com,
	linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	abbotti@mev.co.uk, hsweeten@visionengravers.com,
	chensong@tj.kylinos.cn, chensong <chensong_2000@189.cn>
Subject: Re: [PATCH] staging: comedi: remove warnings of comedi_lrange
Message-ID: <202012291137.QKhNid2b-lkp@intel.com>
References: <1608690263-29411-1-git-send-email-chensong_2000@189.cn>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
In-Reply-To: <1608690263-29411-1-git-send-email-chensong_2000@189.cn>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi chensong,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/chensong/staging-comedi-remove-warnings-of-comedi_lrange/20201223-104542
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 5e60366d56c630e32befce7ef05c569e04391ca3
config: x86_64-randconfig-r012-20201223 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/fec78f1f56c0e63e9240b5b30c3b98d29ecc9a49
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review chensong/staging-comedi-remove-warnings-of-comedi_lrange/20201223-104542
        git checkout fec78f1f56c0e63e9240b5b30c3b98d29ecc9a49
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging/comedi/drivers/das16.c:971:18: error: cannot assign to variable 'lrange' with const-qualified type 'const struct comedi_lrange *'
                   lrange->length = 1;
                   ~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/das16.c:961:31: note: variable 'lrange' declared const here
                   const struct comedi_lrange *lrange;
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~
>> drivers/staging/comedi/drivers/das16.c:972:10: error: assigning to 'struct comedi_krange *' from 'struct comedi_krange const[]' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
                   krange = lrange->range;
                          ^ ~~~~~~~~~~~~~
   drivers/staging/comedi/drivers/das16.c:1005:18: error: cannot assign to variable 'lrange' with const-qualified type 'const struct comedi_lrange *'
                   lrange->length = 1;
                   ~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/das16.c:995:31: note: variable 'lrange' declared const here
                   const struct comedi_lrange *lrange;
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~
   drivers/staging/comedi/drivers/das16.c:1006:10: error: assigning to 'struct comedi_krange *' from 'struct comedi_krange const[]' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
                   krange = lrange->range;
                          ^ ~~~~~~~~~~~~~
   4 errors generated.
--
>> drivers/staging/comedi/drivers/jr3_pci.c:527:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[0].l.range[0].min = -get_s16(&fs->fx) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:528:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[0].l.range[0].max = get_s16(&fs->fx) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:529:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[1].l.range[0].min = -get_s16(&fs->fy) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:530:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[1].l.range[0].max = get_s16(&fs->fy) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:531:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[2].l.range[0].min = -get_s16(&fs->fz) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:532:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[2].l.range[0].max = get_s16(&fs->fz) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:533:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[3].l.range[0].min = -get_s16(&fs->mx) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:534:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[3].l.range[0].max = get_s16(&fs->mx) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:535:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[4].l.range[0].min = -get_s16(&fs->my) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:536:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[4].l.range[0].max = get_s16(&fs->my) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:537:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[5].l.range[0].min = -get_s16(&fs->mz) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:539:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[5].l.range[0].max = get_s16(&fs->mz) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:540:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[6].l.range[0].min = -get_s16(&fs->v1) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:541:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[6].l.range[0].max = get_s16(&fs->v1) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:542:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[7].l.range[0].min = -get_s16(&fs->v2) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:543:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[7].l.range[0].max = get_s16(&fs->v2) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:544:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[8].l.range[0].min = 0;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;


vim +971 drivers/staging/comedi/drivers/das16.c

742c4a095973f69 H Hartley Sweeten 2015-01-12  949  
0ce8280e2876091 H Hartley Sweeten 2015-01-26  950  static const struct comedi_lrange *das16_ai_range(struct comedi_device *dev,
0ce8280e2876091 H Hartley Sweeten 2015-01-26  951  						  struct comedi_subdevice *s,
0ce8280e2876091 H Hartley Sweeten 2015-01-26  952  						  struct comedi_devconfig *it,
0ce8280e2876091 H Hartley Sweeten 2015-01-26  953  						  unsigned int pg_type,
0ce8280e2876091 H Hartley Sweeten 2015-01-26  954  						  unsigned int status)
0ce8280e2876091 H Hartley Sweeten 2015-01-26  955  {
0ce8280e2876091 H Hartley Sweeten 2015-01-26  956  	unsigned int min = it->options[4];
0ce8280e2876091 H Hartley Sweeten 2015-01-26  957  	unsigned int max = it->options[5];
0ce8280e2876091 H Hartley Sweeten 2015-01-26  958  
0ce8280e2876091 H Hartley Sweeten 2015-01-26  959  	/* get any user-defined input range */
0ce8280e2876091 H Hartley Sweeten 2015-01-26  960  	if (pg_type == das16_pg_none && (min || max)) {
fec78f1f56c0e63 chensong          2020-12-23  961  		const struct comedi_lrange *lrange;
0ce8280e2876091 H Hartley Sweeten 2015-01-26  962  		struct comedi_krange *krange;
0ce8280e2876091 H Hartley Sweeten 2015-01-26  963  
0ce8280e2876091 H Hartley Sweeten 2015-01-26  964  		/* allocate single-range range table */
0ce8280e2876091 H Hartley Sweeten 2015-01-26  965  		lrange = comedi_alloc_spriv(s,
0ce8280e2876091 H Hartley Sweeten 2015-01-26  966  					    sizeof(*lrange) + sizeof(*krange));
0ce8280e2876091 H Hartley Sweeten 2015-01-26  967  		if (!lrange)
0ce8280e2876091 H Hartley Sweeten 2015-01-26  968  			return &range_unknown;
0ce8280e2876091 H Hartley Sweeten 2015-01-26  969  
0ce8280e2876091 H Hartley Sweeten 2015-01-26  970  		/* initialize ai range */
0ce8280e2876091 H Hartley Sweeten 2015-01-26 @971  		lrange->length = 1;
0ce8280e2876091 H Hartley Sweeten 2015-01-26 @972  		krange = lrange->range;
0ce8280e2876091 H Hartley Sweeten 2015-01-26  973  		krange->min = min;
0ce8280e2876091 H Hartley Sweeten 2015-01-26  974  		krange->max = max;
0ce8280e2876091 H Hartley Sweeten 2015-01-26  975  		krange->flags = UNIT_volt;
0ce8280e2876091 H Hartley Sweeten 2015-01-26  976  
0ce8280e2876091 H Hartley Sweeten 2015-01-26  977  		return lrange;
0ce8280e2876091 H Hartley Sweeten 2015-01-26  978  	}
0ce8280e2876091 H Hartley Sweeten 2015-01-26  979  
0ce8280e2876091 H Hartley Sweeten 2015-01-26  980  	/* use software programmable range */
0ce8280e2876091 H Hartley Sweeten 2015-01-26  981  	if (status & DAS16_STATUS_UNIPOLAR)
0ce8280e2876091 H Hartley Sweeten 2015-01-26  982  		return das16_ai_uni_lranges[pg_type];
0ce8280e2876091 H Hartley Sweeten 2015-01-26  983  	return das16_ai_bip_lranges[pg_type];
0ce8280e2876091 H Hartley Sweeten 2015-01-26  984  }
0ce8280e2876091 H Hartley Sweeten 2015-01-26  985  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012291137.QKhNid2b-lkp%40intel.com.

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--PEIAKu/WMn1b1Hv9--
