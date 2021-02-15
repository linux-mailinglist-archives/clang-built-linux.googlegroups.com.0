Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB75VU6AQMGQEQN4OGHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C4831B41B
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 03:22:56 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id g201sf1026334vke.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Feb 2021 18:22:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613355775; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9QIboLzQ8wiF6DYSpJcLpr9j5flukow6t4mlVFjL5hEJz6YlA9ht5559yw2vMW+K6
         /yaeiBjX0JMTx3ldPSE1JqrFITC2J1eznEKN4iifGMkCQsfOKWxeuaZqGdJLqyOQ1n1u
         H6BMFZGRhiBFHGccnCYr5Vn2mDRdJgbaQhvs0RWiKd9mseQTJtX7SRUp7vsrijDaTYnf
         nrz61MPfP0vbbYzpvlptyZUvIfRU4pgouM9dsud1Lj7ZlsKhhcLzUK+I8gF4+PK4rbQV
         NHJG8mZU4WbFTB+jxYH2RcQvL1K6CV8UWsQI59zJQz4O+JxFwINqG97A5bW45sM0GhaZ
         p1ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=LKMDOAFoQOCwvnXnwckSsOrpMZCijh3GCWriKjI16UY=;
        b=Ubq8jjGxqVbraQT5T+cf60AcUzMAZCj8TT5TJ30X0gUl4770HPCHBj6OEGjYIZeolc
         kaHMGbIlawUBE55+9QstqJAnyr4wDh8cVxjzizRe2qb4GJyCQpCCDvw+kQI/02AJ5phr
         U/zUKi/p5XaA9f6ccgSvq7pt5NLudxyuEvOVWiZsEFrL9qtCHmaEDKTFACuwImuS/fVg
         mnhh+AY223nS4qE3tCmbsXLp6Ios2rRvI57H+jy/J3PPP8r2Hs9EX3AkMrwlxxR7m/DV
         lnb3sC8SLB7/5CDVmlz6eCoI0zUkWaFzrIVZAGHTbCu8IfjxYdJWaIzRICty+LSg8sQg
         xTAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LKMDOAFoQOCwvnXnwckSsOrpMZCijh3GCWriKjI16UY=;
        b=DkNH7966nemyaax2ub6ypTn5ZlgzpR+NOXi3k7E4b9M2V2NUARbjYE5TuQc77JwTiD
         6Dlz96/sDwnePzY53QyCQlzm8ArEuB1sUPGkq8IFAkVPDMTiZWz+E0MrFrcOZiHMonsP
         3hNRazY7iyYjnVTPUe7BO6Lf4v3neL9VzSzbSWSUURC31QP1HbnYRczPZn157yMp6Fta
         85ldYRn80JS0YU2dXCnB42YExiRfbmTTuLvJQzOwEmO/c+hZp3y55PrIA1eTFbOgg3l+
         173/6+Dwn5O/sQ3/EjXAgrJP1Qk0yh+7CeAW2IufNliLskYWmRb1dWmuUr0Fjn5Q57Bv
         FzIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LKMDOAFoQOCwvnXnwckSsOrpMZCijh3GCWriKjI16UY=;
        b=Rw4O76nOoRaqhH4fnTkShturrzvkdR3+uvLy6oaAJRIQptEmnEK3IqYnNtV4fTzqBz
         T4SvON9dpy2BlI6aT/RKb8zsGrjdHVPCqHRSad9amkOPrEZTkytiV5PRJnKOQkltk9te
         9xMHwmNkWLvarLPmihr/TpMZntpxluRPAuzybSIL+UGn+hCT1AlgcdPD8r79ZLO49lEP
         /PJbqKZ8lbDX5ZgIFfppa2ts0FVo8WrHSY9RhqlF/CmP5muN5mYAHhmil7qFEkDDlizq
         HkbSuwLN13mOoRTYpps3UAe6Lqhn+6tXyWvG9sQ7FC+0gBkPposvxmdbCZSfWCaAo+6M
         GLZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fi67IGLeC9Rq/zqWtuEGLi0IsGZsDwdH99+l4hOmzXgCzmkVZ
	b8fNe4M5w9gGG1R245Y6u2M=
X-Google-Smtp-Source: ABdhPJwteweDEgoJ6gtO5BYmazMWIwQDDzNfUHWpc3b1z/PnisykVl3aVa5VtBRbQDt86Dx6Fp938Q==
X-Received: by 2002:a05:6102:833:: with SMTP id k19mr7248292vsb.16.1613355775625;
        Sun, 14 Feb 2021 18:22:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:69c8:: with SMTP id u8ls221866uaq.2.gmail; Sun, 14 Feb
 2021 18:22:55 -0800 (PST)
X-Received: by 2002:ab0:2893:: with SMTP id s19mr5111995uap.32.1613355774998;
        Sun, 14 Feb 2021 18:22:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613355774; cv=none;
        d=google.com; s=arc-20160816;
        b=cua3BUx7YjmXoAVdR/Lst/3hHN6oqGSY6vpcoHAhTnlrcpUi2Lv6UaC+0iagbTVamo
         Jmu5KPvqQZqKA1fLu0Wtj6BeqZNxjPmrPAD0dUfmq4Nffh2IEGef88eyulQqXZmGrSLK
         KNZJUk2W5r9yydvPV8L+67Kgvkgua1BLuMqcDJOegPbETp0m8aesvAzDKDcP1POpHYUp
         LRzpiUKRU9oNkoFQ+A0sp3woAUv4E1LNytn50YjxH09H7QvDEK5BbIai1ll1IE2ozDV9
         BACcGJRiMrnXDvzQZ2T2y6CF8Om9AedmwxdE/KhsbWUrMfay0MORTVqLR4U6pOEhUdNo
         mkzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=0v5C4mkc/qHcRu14Rfc6D3cWQqT5ogaZY66LzD4U9+Y=;
        b=amKz8xNcEMRHyaaQkO9Fyg0aJUJmvLPXio1C4MKrFTdiIPLXEO7X9Kb1EyEU0ninVk
         nnbbjBnm1SLZZAS9IYMfDqznO0k7STI7+jSxw24RP19nBsFM9smEOhPV3HHQ+CdSDj3X
         ydvIdlwBqhC5QwenEyOgTcSv5E5GYtYSxWQasJo7Mr8AnLU/+N2ya8TXy1NVHgUzqtQD
         iLKfIw1fLt307a9LHQoG4YScPrzh5sKPOoZB4mPJxXn4WhCkd6UDBKZvIGHTKD4uFBak
         p/6fMtFQ72rdSlATnI4URoUFmDwa6khR53xnWz4o4hjBDQUkSHjKti50Ss4rmGDc7jLe
         jK3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id z9si1200847uaq.1.2021.02.14.18.22.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2021 18:22:54 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: TbsghDugKReI2Nmki6IvZ3lGvA7euceYAaFqoA3noTR4zDIuYTzIfECT+jycRAq/bSr9qgT/oW
 yyRrG6qO6eqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9895"; a="244096256"
X-IronPort-AV: E=Sophos;i="5.81,179,1610438400"; 
   d="gz'50?scan'50,208,50";a="244096256"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Feb 2021 18:22:53 -0800
IronPort-SDR: y20WTvrVA+yTVpzOv4p6Gy1yS56pRO/bCjujiwUPsQ1c40Fpmndtf2WvpMB7hwh4H9OsHzQkwA
 6/W8RicZmpsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,179,1610438400"; 
   d="gz'50?scan'50,208,50";a="588677318"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 14 Feb 2021 18:22:49 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lBTXE-00072t-MD; Mon, 15 Feb 2021 02:22:48 +0000
Date: Mon, 15 Feb 2021 10:22:02 +0800
From: kernel test robot <lkp@intel.com>
To: Don Bollinger <don@thebollingers.org>, arndb@arndb.de,
	gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	brandon_chuang@edge-core.com, wally_wang@accton.com,
	aken_liu@edge-core.com, gulv@microsoft.com, jolevequ@microsoft.com,
	xinxliu@microsoft.com, Don Bollinger <don@thebollingers.org>
Subject: Re: [PATCH] eeprom/optoe: driver to read/write SFP/QSFP/CMIS EEPROMS
Message-ID: <202102151001.9e9E5ZjT-lkp@intel.com>
References: <20210215002532.2850-1-don@thebollingers.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline
In-Reply-To: <20210215002532.2850-1-don@thebollingers.org>
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


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Don,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on a2ea4e1d9091cd8bc69f1c42c15bedc38618f04c]

url:    https://github.com/0day-ci/linux/commits/Don-Bollinger/eeprom-optoe-driver-to-read-write-SFP-QSFP-CMIS-EEPROMS/20210215-083817
base:   a2ea4e1d9091cd8bc69f1c42c15bedc38618f04c
config: riscv-randconfig-r001-20210215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/9089aa757bfb70c473ca54face762582908bdd28
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Don-Bollinger/eeprom-optoe-driver-to-read-write-SFP-QSFP-CMIS-EEPROMS/20210215-083817
        git checkout 9089aa757bfb70c473ca54face762582908bdd28
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/misc/eeprom/optoe.c:615:16: warning: no previous prototype for function 'optoe_make_regmap' [-Wmissing-prototypes]
   struct regmap *optoe_make_regmap(struct i2c_client *client)
                  ^
   drivers/misc/eeprom/optoe.c:615:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct regmap *optoe_make_regmap(struct i2c_client *client)
   ^
   static 
   1 warning generated.


vim +/optoe_make_regmap +615 drivers/misc/eeprom/optoe.c

   605	
   606	
   607	/*
   608	 * optoe_make_regmap creates the regmap for the client.
   609	 * IMPORTANT: Don't call the regmap read/write calls directly
   610	 * for these devices.  These devices are paged, and you have to
   611	 * set the page register before accessing the data in that page.
   612	 * Use the nvmem interfaces, those read/write calls use this
   613	 * driver to manage pages correctly.
   614	 */
 > 615	struct regmap *optoe_make_regmap(struct i2c_client *client)
   616	{
   617		struct regmap_config regmap_config = { };
   618		struct regmap *regmap;
   619	
   620		/* setup a minimal regmap - 8 bits, 8 bit addresses */
   621		regmap_config.val_bits = 8;
   622		regmap_config.reg_bits = 8;
   623	
   624		/* I'll handle the locking */
   625		regmap_config.disable_locking = true;
   626		regmap = devm_regmap_init_i2c(client, &regmap_config);
   627		return regmap;
   628	}
   629	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102151001.9e9E5ZjT-lkp%40intel.com.

--vtzGhvizbBRQ85DL
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
RqfcKF/Ge8r/AwQa38ytLQEA

--vtzGhvizbBRQ85DL--
