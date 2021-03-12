Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2HUVKBAMGQEVJTZAAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6BD33828F
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 01:48:42 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id 41sf9318386pla.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 16:48:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615510120; cv=pass;
        d=google.com; s=arc-20160816;
        b=IZNNnG6DSo3lY1UsnFSMF7U/g1qd67ykFTwvV1X92/13BEuO89mQd4e4xS1oJMzSrg
         WFBuGIjsBKqHp6/H66P9GcsFdYDl9Ahp7pKT/6GhBbQ83KrNrpE4dpUTB/gW7EDB3uKm
         Nc98ZdDYl61X84B9RzM5fDaE8L7mScwOlXoNN9Oh5gai410jZ7y7I27cVyitoMjMMJK1
         BHBdPyjvukotZ7rpE2sxlT1OMe/SytDlZHAui+f84rEesDu0KfdV22oGPqbxu4xTGc1o
         7P8tYUc4pkvzFq1mMB4FYifTW23rHd1a7BqUUQRZfpKfmcBIUB9Om8Vz6JAufsesB22D
         CLkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=0vW+vbRTxEVXwzu9gMFQXiIQRXb2gspvGKftNQU0Klw=;
        b=Pu/K7yEmpDCbgxL6NKP2tnXtng6fl6+a+8lez3f8g7helghpd2LSg6AkmTQCsnUvzB
         HQRQtpOvVQN6N32+Jzi5cJO5OIgiMxhg8V6AqKXugG+iKpp5Egl45TT6I4MXqznENl5K
         lr8+thF2Pt1bsIZsuHBd0x96dE0zOKGYYjJ6oe4HS4LBxNP7A7PJkGGUbhsBVYfsS7Wm
         QpY9a1wKzzO1coA8DpY7lb2rlpNDahhDMx+krsCBnbh1MiVZjP5ItnT4BlE95UekGyJd
         4+D6WPj4szmOqxap0x54kgEzxjg/R7S9P7FHCSn2F6kb+Lygb8uilH53j8MhRYFQ0Q6w
         QI9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0vW+vbRTxEVXwzu9gMFQXiIQRXb2gspvGKftNQU0Klw=;
        b=aP5MSAmezcnpC1CEkzVvxDJIyUvCY23yaVxPG32epx+UEaNR35v0aFYNvGU4YM0lCZ
         YmSVlbcCxO9cpTYm3bPEhD3Rl6mEuE1tMcOATjDi8qrJQipDlYWABPpz6d36PB6MJwbF
         qH3ElwViOaOwReBoLIQQNzyTkHNCoMem33yJBPpvKbvhOXVP1xawk48+m5FyElVWq+Jh
         1N/+aL4UhZ7P6EHZctU8W2r/te3KtndgNKYkNlihM4X9pd8ioG1IAkdmi/87KliChvQk
         qncl4NCoj5gQ4XieU0aIyTcGLYDewJ+sptbvd7KjQyxdniV2KA43JkDRuA6oM6FR4w6o
         6kjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0vW+vbRTxEVXwzu9gMFQXiIQRXb2gspvGKftNQU0Klw=;
        b=o12/fARu8PWIPRnoqaGbWjFCvcjr1qm3/vqGrus8unw+/DBq5F8etyZhr83Rrg5Oit
         Z2Q1iCsomT24wViWC3hS2Uo6aiXEYjKND+uJR7108XGnsBl0xWi+rqFHp7auycbGsQMY
         yCe0QkBs+r46bgelCXBwCZkDAcPMo1ZyZMQnq5s2dRtn6tFNZyT323vJFA8UARRIMmeZ
         VqcKQe8MenYF/1EhCW3bCk6/i4I/7UFGEs2Z1OpEkILMXNXV7GaLsUwatGeyNEY27ucJ
         EcTc7daMZ01v3hT2GeIHuIiOI29p4GA07GnNMrHxcm7p6fU6Gkv4moRywPMzBWeYcIZ9
         IhWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OCzJU64+MTkSLUYGPytsgGufF5AeWsku/SmWZRADCo/gCffbN
	daJ2+GPdUMdjeooc0QFrLag=
X-Google-Smtp-Source: ABdhPJyYh8KIvMB9THDM7O5/ZZcAw/J8iORtS3TeIVEB4/udXHhP2WAb9/2o6SrrYTPCB/BCXKFC2Q==
X-Received: by 2002:aa7:8bd4:0:b029:1fa:9f1b:1cd1 with SMTP id s20-20020aa78bd40000b02901fa9f1b1cd1mr9937631pfd.31.1615510120676;
        Thu, 11 Mar 2021 16:48:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:4115:: with SMTP id r21ls4003772pld.1.gmail; Thu, 11
 Mar 2021 16:48:40 -0800 (PST)
X-Received: by 2002:a17:902:dac2:b029:e6:30a6:4c06 with SMTP id q2-20020a170902dac2b02900e630a64c06mr11214380plx.65.1615510120041;
        Thu, 11 Mar 2021 16:48:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615510120; cv=none;
        d=google.com; s=arc-20160816;
        b=XzooczWyxlQAKAOl/uRSyMZpIF9kNkWPYfYscXcukBjQEjQ7USwqQ6stPXDqLgQzdh
         yfl78vh4iXBpCL85D7myUuxOcP2UEH+FgCVXHNJo3Z8jlZbGWQYXUeXR0UNu6FlMinda
         0o3M8yS22JBovdDzxm2T8ekYGTyL1ucI4aZSOiq4qOKiMJ3c4TYe6NnDMcCb4gOnbjKW
         xq3mLxeDJxW/KoRSCwI06GnAiSDRlg6krIOOCsoQoOAk95Uzof2sdKNfx2rjoQPymJff
         IfY/nyn9jHhJxvtmGjgLPiYj7Jwk7xrxooJtbFPGKTBDudqBUD0uMT7jpUd5OSuOSQOJ
         NFDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=ytLm8PIArS+36BHg9icik0Wh/3Bd0ptb4kwTyPF7w7g=;
        b=nuj9wOvYb2HgY2dchEwtlEWGz2UumQO4iZdE94hcMEeQRiQZ3nz54szvfuifE2aq8+
         nQHguTrKdFdTejAkPcsl4zmWnJh5i/3Krnjgs9+ASf0B12hR6PeTFvI29L+53CsnOKgC
         n9qHdu1IG8BJn3q1hPA6ydD+VehhyyuP/TMWch7Rg8dCo4ByQ6QkLV5W9ISEpvc4Trzp
         pNjbR0/ich1eCPhpKcZnlxntK+Ej8Qqtma1WFzR1miN0riRje7z4/TbSfaallWkISzZN
         xVWaC8UL5g09Pkl8cNA0a6es73Y8RI4IExDXOij/s9GMYvUZMVPC3xh8Iged9Obf2VAV
         2alg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id h7si331522plr.3.2021.03.11.16.48.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 16:48:40 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: qQHc97l9jDn0dv9IdyRikoSbDusnBilq4Pc0qZkDDlUbCQwtqejgMULJun35Y1lWvOl1ha9RoZ
 e8BRCT+hhozw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="176355484"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; 
   d="gz'50?scan'50,208,50";a="176355484"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2021 16:48:38 -0800
IronPort-SDR: L6Di6/hwh/lUSwALX7qFESpI1fCdP48N+v1qDWGGbzqzz08Uze98bzY7Gxu1m4M+c1h+/wG8wh
 dX9IH1gVm9VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; 
   d="gz'50?scan'50,208,50";a="603741908"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 11 Mar 2021 16:48:36 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lKVyl-00013g-Gv; Fri, 12 Mar 2021 00:48:35 +0000
Date: Fri, 12 Mar 2021 08:48:20 +0800
From: kernel test robot <lkp@intel.com>
To: Robert Hancock <robert.hancock@calian.com>, mturquette@baylibre.com,
	sboyd@kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	mike.looijmans@topic.nl, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Robert Hancock <robert.hancock@calian.com>
Subject: Re: [PATCH 6/9] clk: si5341: Allow different output VDD_SEL values
Message-ID: <202103120829.FkEPVdNq-lkp@intel.com>
References: <20210311222436.3826800-7-robert.hancock@calian.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
In-Reply-To: <20210311222436.3826800-7-robert.hancock@calian.com>
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Robert,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on clk/clk-next]
[also build test WARNING on v5.12-rc2 next-20210311]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Robert-Hancock/Si5341-driver-updates/20210312-062821
base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next
config: arm64-randconfig-r034-20210312 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 7b153b43d3a14d76975039408c4b922beb576735)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/636016363158ea8e30592ff4974f344ca0043f82
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Robert-Hancock/Si5341-driver-updates/20210312-062821
        git checkout 636016363158ea8e30592ff4974f344ca0043f82
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/clk/clk-si5341.c:1710:5: warning: no previous prototype for function 'si5341_remove' [-Wmissing-prototypes]
   int si5341_remove(struct i2c_client *client)
       ^
   drivers/clk/clk-si5341.c:1710:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int si5341_remove(struct i2c_client *client)
   ^
   static 
   1 warning generated.


vim +/si5341_remove +1710 drivers/clk/clk-si5341.c

  1709	
> 1710	int si5341_remove(struct i2c_client *client)
  1711	{
  1712		struct clk_si5341 *data = i2c_get_clientdata(client);
  1713		int i;
  1714	
  1715		for (i = 0; i < SI5341_MAX_NUM_OUTPUTS; ++i) {
  1716			if (data->clk[i].vdd_reg)
  1717				regulator_disable(data->clk[i].vdd_reg);
  1718		}
  1719	
  1720		return 0;
  1721	}
  1722	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103120829.FkEPVdNq-lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Q68bSM7Ycu6FN28Q--
