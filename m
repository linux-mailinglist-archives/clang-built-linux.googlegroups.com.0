Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGE7TXVAKGQE3I5TIFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B3B80CC0
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Aug 2019 23:35:22 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id i26sf52048500pfo.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Aug 2019 14:35:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564954521; cv=pass;
        d=google.com; s=arc-20160816;
        b=djT1+vcH8/uhv70rgShJcr4o2FUqs8Qe+B+nUlQtTa9Wqwsn98oByJV4F+y391gl9p
         wZtVjB9nnVi0D7z4q1zLyrwYQ6sgF7AlvC0qZATvoqmULg8SDvoQSCJIocZT2gDnINwL
         HZDn4bXb16kbC8aXbpy3maHGtZkJmCjoKh3BwbCyHGa+eL6ZehAcoCflq0xn6GQeCxyA
         Prep0Sti7VGee3RikfYrrzh+TNB1zrcQBuj5zzOciy/SmkPb5yDi6Yx7JK3nN2s2vB3b
         detZIrpx7oA+qdIwbXF9uJ6Y6iL3NkL0OxbwIGfVoTdKyPg3Wz+YrN8pOrb+fgST00X+
         kxQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jqAtYmt0lFTMI6cXBAUdr/x6HvvF9mQjhoq6CqtqMk4=;
        b=W0UUIHiJdWN3n0NzvWZ47MnHx6oUY3k0dDPOW5GgRfrRj5cf+bMMNMAqEHnQMbTje5
         rn7nJ5DtJYeOW2BXRdSpuxPavqNjPZ4TtjVP9D0HtxoY2nsFvqRxwRZdcGu+gk+BoZi5
         JdXP+LKQHjrxi2IejGXBXoaTDw+GSqcPtwn1NhAYZSnu4VUsXnK+GMoD3WjjJwsr5PXv
         JkqUtLQpJg593sfENBD9jzgHBHDrqW0O3Do2KYB/fo590CGUWzkX1yaGVCXqvOyw3uwZ
         wrdrobxDI6WVdy/ZFqNgQ32waPv/Zir5dMi2hxH4sazk2kJUYq6hkNdFavmrtbPifoU5
         xgbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jqAtYmt0lFTMI6cXBAUdr/x6HvvF9mQjhoq6CqtqMk4=;
        b=ZgmCQ6UFS08rKD0YOiDavHfn6zkNjP80vEFZaLpgqUwP5IM+eUC1mS8DF+eIzeTP5l
         XQYNrkgRgyoypDWpTHJiQx/iPZ3xliYZPtsSSsrnW+OI00ETv6yl0N7xs4zeQhX2vPvD
         SIfsgHR+2Im1kZCHTODxszUL/iLhiIZ3BB+cXof1gg4VvsFk0omeRHnJojNYQB/pwfOz
         CcZU47/E1DHBOEiigGVcwPB90oc4dZB4+2tvBzB1pEOH5hxokFD3YN4+ISAEqVVTYHve
         9W0W4yQ0zPhu3tvWeRy1jQT4IMH5sK9tr72yZtGkzNvsL5E5TvRkSQKC64DSKfS450+c
         1P6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jqAtYmt0lFTMI6cXBAUdr/x6HvvF9mQjhoq6CqtqMk4=;
        b=OQ7RQ0fQ9UISZgs2CnRb6vp2+NnVomP6mGc9KQqNM8FOOnHqtgzJHn5pouVqUyNhnu
         lVpllAJ0cEhUjPoPv2ZjIkzZGZqeOMFx2GV+F569RtDvUJ4zziZmQTz8hjDU/9u3trhe
         ErsVAnSzqJnpMqKvgzi9sQo7T9hiph/1W4lYxIMyrJgAgKJB9IxTyO/0ia2GYcqVtMIm
         7Bvw8KiSTRzOTg56ymUtjmTJvnuU1JBg68SeotzL2P1lWmriYCihD+JkH/hx7hpFKKgl
         v/2z1hDjz8yJ7l1052eFBTf8oWABUrWgPd1CeFj/FF4e3k7xqWRZo8NQTncK5jD1nACD
         kz0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX+b1diwg0ARLf8pYbSnXMPansL5RN9YFvw9bWc+KuYwSrywmBA
	ooNjGImjEHL6ZuHJyaNaXIA=
X-Google-Smtp-Source: APXvYqw69wdVcBWhXhYzQ6zlborq8rixJt83cdG0EPiGvdJT3fr1NBVkzS1peT+FFM0NTPQHHS+now==
X-Received: by 2002:a63:2ec9:: with SMTP id u192mr130715413pgu.16.1564954520776;
        Sun, 04 Aug 2019 14:35:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:32d:: with SMTP id 42ls22984213pld.11.gmail; Sun, 04
 Aug 2019 14:35:20 -0700 (PDT)
X-Received: by 2002:a17:902:1129:: with SMTP id d38mr143209535pla.220.1564954520310;
        Sun, 04 Aug 2019 14:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564954520; cv=none;
        d=google.com; s=arc-20160816;
        b=l0iySOe9X2Kug3jPW3MrCD/yd8vK0nawt+25z5XDN3GAjMTFQmpTq9P7v/v/ED+BwX
         4qauAs3sk5l6Ci1YVkwCCpneJE4UNgEvk7E5ztDe1l9979nAD++Wa2tIPkNpbyaz4jFb
         MdoUZ6FejtTML+VGsD6mQTdhjRSO8JizTR0NGTJuMwvjGqvehOMICJhoNhxCAuFX87k9
         abALgRSw6HdQ4RCu4deBJrEXzGc6Jt2Pqx9SoHKaJGfcLlI3fBsrMsEWE5qcL1vW3u5z
         9djpUQGGcmmk1ePXcWetdnvCugGn57Z7YGlUeDHEyRM0/gaPPUWLuUcA6Zaap4SpOrFy
         PXaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=4Bbjib0VLxCkyaXfcy984h684EznUYsYL2yGqskhr2s=;
        b=OOGyEPAnuXgGHP4zuBdi8y+VCCFH5syW7tErUINddzNte2VKnkdTNEKejPf6fkgqiQ
         t4tHBCt1UKlxggj4Dyspfy2lIB4ZPvITIf9yjzoyP46IMDov4NJHjlai+wzuisAIRveb
         yBtmwyKRabsBS7dshUfQxaAzC8USD048upcqc874cIppgpRpkHqK7zbTuZ2rALaCdavj
         RvxS8Dcw88dY53VtpudjXZX5i23j5JNrPFoljlgqnVwET5+0qZMagJaLaW+LUilJDqTN
         Djwv+HKIPP7ziyvfDQl0Q31DSgTcVOOhgQUKHJ5tRqqaBOvouWok6DHZyt+WtIq19y9/
         l+HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id s60si487370pjc.2.2019.08.04.14.35.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Aug 2019 14:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Aug 2019 14:35:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,347,1559545200"; 
   d="gz'50?scan'50,208,50";a="175413286"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 04 Aug 2019 14:35:16 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1huO9t-0000L1-Bz; Mon, 05 Aug 2019 05:35:17 +0800
Date: Mon, 5 Aug 2019 05:34:31 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 2/2] linux/bits.h: Add compile time sanity check of
 GENMASK inputs
Message-ID: <201908050550.HYVoa5wb%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="myho43vkzm2qpecd"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--myho43vkzm2qpecd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
In-Reply-To: <20190801230358.4193-2-rikard.falkeborn@gmail.com>
References: <20190801230358.4193-2-rikard.falkeborn@gmail.com>
TO: Rikard Falkeborn <rikard.falkeborn@gmail.com>
CC: rikard.falkeborn@gmail.com
CC: akpm@linux-foundation.org, joe@perches.com, johannes@sipsolutions.net, linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com

Hi Rikard,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3-rc2 next-20190802]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Rikard-Falkeborn/linux-bits-h-Clarify-macro-argument-names/20190805-024030
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anonymous bit-field has negative width (-1)
                   inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
                                          ^
   drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:201:50: note: expanded from macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
   #define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)         UPDATE(x, 7, 9)
                                                           ^
   drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:24:42: note: expanded from macro 'UPDATE'
   #define UPDATE(x, h, l)         (((x) << (l)) & GENMASK((h), (l)))
                                                   ^
   include/linux/bits.h:39:3: note: expanded from macro 'GENMASK'
           (GENMASK_INPUT_CHECK(high, low) + __GENMASK(high, low))
            ^
   include/linux/bits.h:24:18: note: expanded from macro 'GENMASK_INPUT_CHECK'
           ((unsigned long)BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
                           ^
   include/linux/build_bug.h:16:47: note: expanded from macro 'BUILD_BUG_ON_ZERO'
   #define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))
                                                 ^
   1 error generated.

vim +1046 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c

53706a1168631fa Zheng Yang 2018-09-07  1005  
53706a1168631fa Zheng Yang 2018-09-07  1006  static int
53706a1168631fa Zheng Yang 2018-09-07  1007  inno_hdmi_phy_rk3328_power_on(struct inno_hdmi_phy *inno,
53706a1168631fa Zheng Yang 2018-09-07  1008  			      const struct post_pll_config *cfg,
53706a1168631fa Zheng Yang 2018-09-07  1009  			      const struct phy_config *phy_cfg)
53706a1168631fa Zheng Yang 2018-09-07  1010  {
53706a1168631fa Zheng Yang 2018-09-07  1011  	int ret;
53706a1168631fa Zheng Yang 2018-09-07  1012  	u32 v;
53706a1168631fa Zheng Yang 2018-09-07  1013  
53706a1168631fa Zheng Yang 2018-09-07  1014  	inno_update_bits(inno, 0x02, RK3328_PDATA_EN, 0);
53706a1168631fa Zheng Yang 2018-09-07  1015  	inno_update_bits(inno, 0xaa, RK3328_POST_PLL_POWER_DOWN,
53706a1168631fa Zheng Yang 2018-09-07  1016  			 RK3328_POST_PLL_POWER_DOWN);
53706a1168631fa Zheng Yang 2018-09-07  1017  
53706a1168631fa Zheng Yang 2018-09-07  1018  	inno_write(inno, 0xac, RK3328_POST_PLL_FB_DIV_7_0(cfg->fbdiv));
53706a1168631fa Zheng Yang 2018-09-07  1019  	if (cfg->postdiv == 1) {
53706a1168631fa Zheng Yang 2018-09-07  1020  		inno_write(inno, 0xaa, RK3328_POST_PLL_REFCLK_SEL_TMDS);
53706a1168631fa Zheng Yang 2018-09-07  1021  		inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
53706a1168631fa Zheng Yang 2018-09-07  1022  			   RK3328_POST_PLL_PRE_DIV(cfg->prediv));
53706a1168631fa Zheng Yang 2018-09-07  1023  	} else {
53706a1168631fa Zheng Yang 2018-09-07  1024  		v = (cfg->postdiv / 2) - 1;
53706a1168631fa Zheng Yang 2018-09-07  1025  		v &= RK3328_POST_PLL_POST_DIV_MASK;
53706a1168631fa Zheng Yang 2018-09-07  1026  		inno_write(inno, 0xad, v);
53706a1168631fa Zheng Yang 2018-09-07  1027  		inno_write(inno, 0xab, RK3328_POST_PLL_FB_DIV_8(cfg->fbdiv) |
53706a1168631fa Zheng Yang 2018-09-07  1028  			   RK3328_POST_PLL_PRE_DIV(cfg->prediv));
53706a1168631fa Zheng Yang 2018-09-07  1029  		inno_write(inno, 0xaa, RK3328_POST_PLL_POST_DIV_ENABLE |
53706a1168631fa Zheng Yang 2018-09-07  1030  			   RK3328_POST_PLL_REFCLK_SEL_TMDS);
53706a1168631fa Zheng Yang 2018-09-07  1031  	}
53706a1168631fa Zheng Yang 2018-09-07  1032  
53706a1168631fa Zheng Yang 2018-09-07  1033  	for (v = 0; v < 14; v++)
53706a1168631fa Zheng Yang 2018-09-07  1034  		inno_write(inno, 0xb5 + v, phy_cfg->regs[v]);
53706a1168631fa Zheng Yang 2018-09-07  1035  
53706a1168631fa Zheng Yang 2018-09-07  1036  	/* set ESD detection threshold for TMDS CLK, D2, D1 and D0 */
53706a1168631fa Zheng Yang 2018-09-07  1037  	for (v = 0; v < 4; v++)
53706a1168631fa Zheng Yang 2018-09-07  1038  		inno_update_bits(inno, 0xc8 + v, RK3328_ESD_DETECT_MASK,
53706a1168631fa Zheng Yang 2018-09-07  1039  				 RK3328_ESD_DETECT_340MV);
53706a1168631fa Zheng Yang 2018-09-07  1040  
53706a1168631fa Zheng Yang 2018-09-07  1041  	if (phy_cfg->tmdsclock > 340000000) {
53706a1168631fa Zheng Yang 2018-09-07  1042  		/* Set termination resistor to 100ohm */
53706a1168631fa Zheng Yang 2018-09-07  1043  		v = clk_get_rate(inno->sysclk) / 100000;
53706a1168631fa Zheng Yang 2018-09-07  1044  		inno_write(inno, 0xc5, RK3328_TERM_RESISTOR_CALIB_SPEED_14_8(v)
53706a1168631fa Zheng Yang 2018-09-07  1045  			   | RK3328_BYPASS_TERM_RESISTOR_CALIB);
53706a1168631fa Zheng Yang 2018-09-07 @1046  		inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
53706a1168631fa Zheng Yang 2018-09-07  1047  		inno_write(inno, 0xc7, RK3328_TERM_RESISTOR_100);
53706a1168631fa Zheng Yang 2018-09-07  1048  		inno_update_bits(inno, 0xc5,
53706a1168631fa Zheng Yang 2018-09-07  1049  				 RK3328_BYPASS_TERM_RESISTOR_CALIB, 0);
53706a1168631fa Zheng Yang 2018-09-07  1050  	} else {
53706a1168631fa Zheng Yang 2018-09-07  1051  		inno_write(inno, 0xc5, RK3328_BYPASS_TERM_RESISTOR_CALIB);
53706a1168631fa Zheng Yang 2018-09-07  1052  
53706a1168631fa Zheng Yang 2018-09-07  1053  		/* clk termination resistor is 50ohm (parallel resistors) */
53706a1168631fa Zheng Yang 2018-09-07  1054  		if (phy_cfg->tmdsclock > 165000000)
53706a1168631fa Zheng Yang 2018-09-07  1055  			inno_update_bits(inno, 0xc8,
53706a1168631fa Zheng Yang 2018-09-07  1056  					 RK3328_TMDS_TERM_RESIST_MASK,
53706a1168631fa Zheng Yang 2018-09-07  1057  					 RK3328_TMDS_TERM_RESIST_75 |
53706a1168631fa Zheng Yang 2018-09-07  1058  					 RK3328_TMDS_TERM_RESIST_150);
53706a1168631fa Zheng Yang 2018-09-07  1059  
53706a1168631fa Zheng Yang 2018-09-07  1060  		/* data termination resistor for D2, D1 and D0 is 150ohm */
53706a1168631fa Zheng Yang 2018-09-07  1061  		for (v = 0; v < 3; v++)
53706a1168631fa Zheng Yang 2018-09-07  1062  			inno_update_bits(inno, 0xc9 + v,
53706a1168631fa Zheng Yang 2018-09-07  1063  					 RK3328_TMDS_TERM_RESIST_MASK,
53706a1168631fa Zheng Yang 2018-09-07  1064  					 RK3328_TMDS_TERM_RESIST_150);
53706a1168631fa Zheng Yang 2018-09-07  1065  	}
53706a1168631fa Zheng Yang 2018-09-07  1066  
53706a1168631fa Zheng Yang 2018-09-07  1067  	inno_update_bits(inno, 0xaa, RK3328_POST_PLL_POWER_DOWN, 0);
53706a1168631fa Zheng Yang 2018-09-07  1068  	inno_update_bits(inno, 0xb0, RK3328_BANDGAP_ENABLE,
53706a1168631fa Zheng Yang 2018-09-07  1069  			 RK3328_BANDGAP_ENABLE);
53706a1168631fa Zheng Yang 2018-09-07  1070  	inno_update_bits(inno, 0xb2, RK3328_TMDS_DRIVER_ENABLE,
53706a1168631fa Zheng Yang 2018-09-07  1071  			 RK3328_TMDS_DRIVER_ENABLE);
53706a1168631fa Zheng Yang 2018-09-07  1072  
53706a1168631fa Zheng Yang 2018-09-07  1073  	/* Wait for post PLL lock */
53706a1168631fa Zheng Yang 2018-09-07  1074  	ret = inno_poll(inno, 0xaf, v, v & RK3328_POST_PLL_LOCK_STATUS,
53706a1168631fa Zheng Yang 2018-09-07  1075  			1000, 10000);
53706a1168631fa Zheng Yang 2018-09-07  1076  	if (ret) {
53706a1168631fa Zheng Yang 2018-09-07  1077  		dev_err(inno->dev, "Post-PLL locking failed\n");
53706a1168631fa Zheng Yang 2018-09-07  1078  		return ret;
53706a1168631fa Zheng Yang 2018-09-07  1079  	}
53706a1168631fa Zheng Yang 2018-09-07  1080  
53706a1168631fa Zheng Yang 2018-09-07  1081  	if (phy_cfg->tmdsclock > 340000000)
53706a1168631fa Zheng Yang 2018-09-07  1082  		msleep(100);
53706a1168631fa Zheng Yang 2018-09-07  1083  
53706a1168631fa Zheng Yang 2018-09-07  1084  	inno_update_bits(inno, 0x02, RK3328_PDATA_EN, RK3328_PDATA_EN);
53706a1168631fa Zheng Yang 2018-09-07  1085  
53706a1168631fa Zheng Yang 2018-09-07  1086  	/* Enable PHY IRQ */
53706a1168631fa Zheng Yang 2018-09-07  1087  	inno_write(inno, 0x05, RK3328_INT_TMDS_CLK(RK3328_INT_VSS_AGND_ESD_DET)
53706a1168631fa Zheng Yang 2018-09-07  1088  		   | RK3328_INT_TMDS_D2(RK3328_INT_VSS_AGND_ESD_DET));
53706a1168631fa Zheng Yang 2018-09-07  1089  	inno_write(inno, 0x07, RK3328_INT_TMDS_D1(RK3328_INT_VSS_AGND_ESD_DET)
53706a1168631fa Zheng Yang 2018-09-07  1090  		   | RK3328_INT_TMDS_D0(RK3328_INT_VSS_AGND_ESD_DET));
53706a1168631fa Zheng Yang 2018-09-07  1091  	return 0;
53706a1168631fa Zheng Yang 2018-09-07  1092  }
53706a1168631fa Zheng Yang 2018-09-07  1093  
53706a1168631fa Zheng Yang 2018-09-07  1094  static void inno_hdmi_phy_rk3328_power_off(struct inno_hdmi_phy *inno)
53706a1168631fa Zheng Yang 2018-09-07  1095  {
53706a1168631fa Zheng Yang 2018-09-07  1096  	inno_update_bits(inno, 0xb2, RK3328_TMDS_DRIVER_ENABLE, 0);
53706a1168631fa Zheng Yang 2018-09-07  1097  	inno_update_bits(inno, 0xb0, RK3328_BANDGAP_ENABLE, 0);
53706a1168631fa Zheng Yang 2018-09-07  1098  	inno_update_bits(inno, 0xaa, RK3328_POST_PLL_POWER_DOWN,
53706a1168631fa Zheng Yang 2018-09-07  1099  			 RK3328_POST_PLL_POWER_DOWN);
53706a1168631fa Zheng Yang 2018-09-07  1100  
53706a1168631fa Zheng Yang 2018-09-07  1101  	/* Disable PHY IRQ */
53706a1168631fa Zheng Yang 2018-09-07  1102  	inno_write(inno, 0x05, 0);
53706a1168631fa Zheng Yang 2018-09-07  1103  	inno_write(inno, 0x07, 0);
53706a1168631fa Zheng Yang 2018-09-07  1104  }
53706a1168631fa Zheng Yang 2018-09-07  1105  
53706a1168631fa Zheng Yang 2018-09-07  1106  static const struct inno_hdmi_phy_ops rk3328_hdmi_phy_ops = {
53706a1168631fa Zheng Yang 2018-09-07  1107  	.init = inno_hdmi_phy_rk3328_init,
53706a1168631fa Zheng Yang 2018-09-07  1108  	.power_on = inno_hdmi_phy_rk3328_power_on,
53706a1168631fa Zheng Yang 2018-09-07  1109  	.power_off = inno_hdmi_phy_rk3328_power_off,
53706a1168631fa Zheng Yang 2018-09-07  1110  };
53706a1168631fa Zheng Yang 2018-09-07  1111  
53706a1168631fa Zheng Yang 2018-09-07  1112  static const struct inno_hdmi_phy_drv_data rk3228_hdmi_phy_drv_data = {
53706a1168631fa Zheng Yang 2018-09-07  1113  	.ops = &rk3228_hdmi_phy_ops,
53706a1168631fa Zheng Yang 2018-09-07  1114  	.clk_ops = &inno_hdmi_phy_rk3228_clk_ops,
53706a1168631fa Zheng Yang 2018-09-07  1115  	.phy_cfg_table = rk3228_phy_cfg,
53706a1168631fa Zheng Yang 2018-09-07  1116  };
53706a1168631fa Zheng Yang 2018-09-07  1117  
53706a1168631fa Zheng Yang 2018-09-07  1118  static const struct inno_hdmi_phy_drv_data rk3328_hdmi_phy_drv_data = {
53706a1168631fa Zheng Yang 2018-09-07  1119  	.ops = &rk3328_hdmi_phy_ops,
53706a1168631fa Zheng Yang 2018-09-07  1120  	.clk_ops = &inno_hdmi_phy_rk3328_clk_ops,
53706a1168631fa Zheng Yang 2018-09-07  1121  	.phy_cfg_table = rk3328_phy_cfg,
53706a1168631fa Zheng Yang 2018-09-07  1122  };
53706a1168631fa Zheng Yang 2018-09-07  1123  
53706a1168631fa Zheng Yang 2018-09-07  1124  static const struct regmap_config inno_hdmi_phy_regmap_config = {
53706a1168631fa Zheng Yang 2018-09-07  1125  	.reg_bits = 32,
53706a1168631fa Zheng Yang 2018-09-07  1126  	.val_bits = 32,
53706a1168631fa Zheng Yang 2018-09-07  1127  	.reg_stride = 4,
53706a1168631fa Zheng Yang 2018-09-07  1128  	.max_register = 0x400,
53706a1168631fa Zheng Yang 2018-09-07  1129  };
53706a1168631fa Zheng Yang 2018-09-07  1130  
53706a1168631fa Zheng Yang 2018-09-07  1131  static void inno_hdmi_phy_action(void *data)
53706a1168631fa Zheng Yang 2018-09-07  1132  {
53706a1168631fa Zheng Yang 2018-09-07  1133  	struct inno_hdmi_phy *inno = data;
53706a1168631fa Zheng Yang 2018-09-07  1134  
53706a1168631fa Zheng Yang 2018-09-07  1135  	clk_disable_unprepare(inno->refpclk);
53706a1168631fa Zheng Yang 2018-09-07  1136  	clk_disable_unprepare(inno->sysclk);
53706a1168631fa Zheng Yang 2018-09-07  1137  }
53706a1168631fa Zheng Yang 2018-09-07  1138  
53706a1168631fa Zheng Yang 2018-09-07  1139  static int inno_hdmi_phy_probe(struct platform_device *pdev)
53706a1168631fa Zheng Yang 2018-09-07  1140  {
53706a1168631fa Zheng Yang 2018-09-07  1141  	struct inno_hdmi_phy *inno;
53706a1168631fa Zheng Yang 2018-09-07  1142  	struct phy_provider *phy_provider;
53706a1168631fa Zheng Yang 2018-09-07  1143  	struct resource *res;
53706a1168631fa Zheng Yang 2018-09-07  1144  	void __iomem *regs;
53706a1168631fa Zheng Yang 2018-09-07  1145  	int ret;
53706a1168631fa Zheng Yang 2018-09-07  1146  
53706a1168631fa Zheng Yang 2018-09-07  1147  	inno = devm_kzalloc(&pdev->dev, sizeof(*inno), GFP_KERNEL);
53706a1168631fa Zheng Yang 2018-09-07  1148  	if (!inno)
53706a1168631fa Zheng Yang 2018-09-07  1149  		return -ENOMEM;
53706a1168631fa Zheng Yang 2018-09-07  1150  
53706a1168631fa Zheng Yang 2018-09-07  1151  	inno->dev = &pdev->dev;
53706a1168631fa Zheng Yang 2018-09-07  1152  
53706a1168631fa Zheng Yang 2018-09-07  1153  	inno->plat_data = of_device_get_match_data(inno->dev);
53706a1168631fa Zheng Yang 2018-09-07  1154  	if (!inno->plat_data || !inno->plat_data->ops)
53706a1168631fa Zheng Yang 2018-09-07  1155  		return -EINVAL;
53706a1168631fa Zheng Yang 2018-09-07  1156  
53706a1168631fa Zheng Yang 2018-09-07  1157  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
53706a1168631fa Zheng Yang 2018-09-07  1158  	regs = devm_ioremap_resource(inno->dev, res);
53706a1168631fa Zheng Yang 2018-09-07  1159  	if (IS_ERR(regs))
53706a1168631fa Zheng Yang 2018-09-07  1160  		return PTR_ERR(regs);
53706a1168631fa Zheng Yang 2018-09-07  1161  
53706a1168631fa Zheng Yang 2018-09-07  1162  	inno->sysclk = devm_clk_get(inno->dev, "sysclk");
53706a1168631fa Zheng Yang 2018-09-07  1163  	if (IS_ERR(inno->sysclk)) {
53706a1168631fa Zheng Yang 2018-09-07  1164  		ret = PTR_ERR(inno->sysclk);
53706a1168631fa Zheng Yang 2018-09-07  1165  		dev_err(inno->dev, "failed to get sysclk: %d\n", ret);
53706a1168631fa Zheng Yang 2018-09-07  1166  		return ret;
53706a1168631fa Zheng Yang 2018-09-07  1167  	}
53706a1168631fa Zheng Yang 2018-09-07  1168  
53706a1168631fa Zheng Yang 2018-09-07  1169  	inno->refpclk = devm_clk_get(inno->dev, "refpclk");
53706a1168631fa Zheng Yang 2018-09-07  1170  	if (IS_ERR(inno->refpclk)) {
53706a1168631fa Zheng Yang 2018-09-07  1171  		ret = PTR_ERR(inno->refpclk);
53706a1168631fa Zheng Yang 2018-09-07  1172  		dev_err(inno->dev, "failed to get ref clock: %d\n", ret);
53706a1168631fa Zheng Yang 2018-09-07  1173  		return ret;
53706a1168631fa Zheng Yang 2018-09-07  1174  	}
53706a1168631fa Zheng Yang 2018-09-07  1175  
53706a1168631fa Zheng Yang 2018-09-07  1176  	inno->refoclk = devm_clk_get(inno->dev, "refoclk");
53706a1168631fa Zheng Yang 2018-09-07  1177  	if (IS_ERR(inno->refoclk)) {
53706a1168631fa Zheng Yang 2018-09-07  1178  		ret = PTR_ERR(inno->refoclk);
53706a1168631fa Zheng Yang 2018-09-07  1179  		dev_err(inno->dev, "failed to get oscillator-ref clock: %d\n",
53706a1168631fa Zheng Yang 2018-09-07  1180  			ret);
53706a1168631fa Zheng Yang 2018-09-07  1181  		return ret;
53706a1168631fa Zheng Yang 2018-09-07  1182  	}
53706a1168631fa Zheng Yang 2018-09-07  1183  
53706a1168631fa Zheng Yang 2018-09-07  1184  	ret = clk_prepare_enable(inno->sysclk);
53706a1168631fa Zheng Yang 2018-09-07  1185  	if (ret) {
53706a1168631fa Zheng Yang 2018-09-07  1186  		dev_err(inno->dev, "Cannot enable inno phy sysclk: %d\n", ret);
53706a1168631fa Zheng Yang 2018-09-07  1187  		return ret;
53706a1168631fa Zheng Yang 2018-09-07  1188  	}
53706a1168631fa Zheng Yang 2018-09-07  1189  
53706a1168631fa Zheng Yang 2018-09-07  1190  	/*
53706a1168631fa Zheng Yang 2018-09-07  1191  	 * Refpclk needs to be on, on at least the rk3328 for still
53706a1168631fa Zheng Yang 2018-09-07  1192  	 * unknown reasons.
53706a1168631fa Zheng Yang 2018-09-07  1193  	 */
53706a1168631fa Zheng Yang 2018-09-07  1194  	ret = clk_prepare_enable(inno->refpclk);
53706a1168631fa Zheng Yang 2018-09-07  1195  	if (ret) {
53706a1168631fa Zheng Yang 2018-09-07  1196  		dev_err(inno->dev, "failed to enable refpclk\n");
53706a1168631fa Zheng Yang 2018-09-07  1197  		clk_disable_unprepare(inno->sysclk);
53706a1168631fa Zheng Yang 2018-09-07  1198  		return ret;
53706a1168631fa Zheng Yang 2018-09-07  1199  	}
53706a1168631fa Zheng Yang 2018-09-07  1200  
53706a1168631fa Zheng Yang 2018-09-07  1201  	ret = devm_add_action_or_reset(inno->dev, inno_hdmi_phy_action,
53706a1168631fa Zheng Yang 2018-09-07  1202  				       inno);
53706a1168631fa Zheng Yang 2018-09-07  1203  	if (ret)
53706a1168631fa Zheng Yang 2018-09-07  1204  		return ret;
53706a1168631fa Zheng Yang 2018-09-07  1205  
53706a1168631fa Zheng Yang 2018-09-07  1206  	inno->regmap = devm_regmap_init_mmio(inno->dev, regs,
53706a1168631fa Zheng Yang 2018-09-07  1207  					     &inno_hdmi_phy_regmap_config);
53706a1168631fa Zheng Yang 2018-09-07  1208  	if (IS_ERR(inno->regmap))
53706a1168631fa Zheng Yang 2018-09-07  1209  		return PTR_ERR(inno->regmap);
53706a1168631fa Zheng Yang 2018-09-07  1210  
53706a1168631fa Zheng Yang 2018-09-07  1211  	/* only the newer rk3328 hdmiphy has an interrupt */
53706a1168631fa Zheng Yang 2018-09-07  1212  	inno->irq = platform_get_irq(pdev, 0);
53706a1168631fa Zheng Yang 2018-09-07  1213  	if (inno->irq > 0) {
53706a1168631fa Zheng Yang 2018-09-07  1214  		ret = devm_request_threaded_irq(inno->dev, inno->irq,
53706a1168631fa Zheng Yang 2018-09-07  1215  						inno_hdmi_phy_rk3328_hardirq,
53706a1168631fa Zheng Yang 2018-09-07  1216  						inno_hdmi_phy_rk3328_irq,
53706a1168631fa Zheng Yang 2018-09-07  1217  						IRQF_SHARED,
53706a1168631fa Zheng Yang 2018-09-07  1218  						dev_name(inno->dev), inno);
53706a1168631fa Zheng Yang 2018-09-07  1219  		if (ret)
53706a1168631fa Zheng Yang 2018-09-07  1220  			return ret;
53706a1168631fa Zheng Yang 2018-09-07  1221  	}
53706a1168631fa Zheng Yang 2018-09-07  1222  
53706a1168631fa Zheng Yang 2018-09-07  1223  	inno->phy = devm_phy_create(inno->dev, NULL, &inno_hdmi_phy_ops);
53706a1168631fa Zheng Yang 2018-09-07  1224  	if (IS_ERR(inno->phy)) {
53706a1168631fa Zheng Yang 2018-09-07  1225  		dev_err(inno->dev, "failed to create HDMI PHY\n");
53706a1168631fa Zheng Yang 2018-09-07  1226  		return PTR_ERR(inno->phy);
53706a1168631fa Zheng Yang 2018-09-07  1227  	}
53706a1168631fa Zheng Yang 2018-09-07  1228  
53706a1168631fa Zheng Yang 2018-09-07  1229  	phy_set_drvdata(inno->phy, inno);
53706a1168631fa Zheng Yang 2018-09-07  1230  	phy_set_bus_width(inno->phy, 8);
53706a1168631fa Zheng Yang 2018-09-07  1231  
53706a1168631fa Zheng Yang 2018-09-07  1232  	if (inno->plat_data->ops->init) {
53706a1168631fa Zheng Yang 2018-09-07  1233  		ret = inno->plat_data->ops->init(inno);
53706a1168631fa Zheng Yang 2018-09-07  1234  		if (ret)
53706a1168631fa Zheng Yang 2018-09-07  1235  			return ret;
53706a1168631fa Zheng Yang 2018-09-07  1236  	}
53706a1168631fa Zheng Yang 2018-09-07  1237  
53706a1168631fa Zheng Yang 2018-09-07  1238  	ret = inno_hdmi_phy_clk_register(inno);
53706a1168631fa Zheng Yang 2018-09-07  1239  	if (ret)
53706a1168631fa Zheng Yang 2018-09-07  1240  		return ret;
53706a1168631fa Zheng Yang 2018-09-07  1241  
53706a1168631fa Zheng Yang 2018-09-07  1242  	phy_provider = devm_of_phy_provider_register(inno->dev,
53706a1168631fa Zheng Yang 2018-09-07  1243  						     of_phy_simple_xlate);
53706a1168631fa Zheng Yang 2018-09-07  1244  	return PTR_ERR_OR_ZERO(phy_provider);
53706a1168631fa Zheng Yang 2018-09-07  1245  }
53706a1168631fa Zheng Yang 2018-09-07  1246  
53706a1168631fa Zheng Yang 2018-09-07  1247  static int inno_hdmi_phy_remove(struct platform_device *pdev)
53706a1168631fa Zheng Yang 2018-09-07  1248  {
53706a1168631fa Zheng Yang 2018-09-07  1249  	of_clk_del_provider(pdev->dev.of_node);
53706a1168631fa Zheng Yang 2018-09-07  1250  
53706a1168631fa Zheng Yang 2018-09-07  1251  	return 0;
53706a1168631fa Zheng Yang 2018-09-07  1252  }
53706a1168631fa Zheng Yang 2018-09-07  1253  
53706a1168631fa Zheng Yang 2018-09-07  1254  static const struct of_device_id inno_hdmi_phy_of_match[] = {
53706a1168631fa Zheng Yang 2018-09-07  1255  	{
53706a1168631fa Zheng Yang 2018-09-07  1256  		.compatible = "rockchip,rk3228-hdmi-phy",
53706a1168631fa Zheng Yang 2018-09-07  1257  		.data = &rk3228_hdmi_phy_drv_data
53706a1168631fa Zheng Yang 2018-09-07  1258  	}, {
53706a1168631fa Zheng Yang 2018-09-07  1259  		.compatible = "rockchip,rk3328-hdmi-phy",
53706a1168631fa Zheng Yang 2018-09-07  1260  		.data = &rk3328_hdmi_phy_drv_data
53706a1168631fa Zheng Yang 2018-09-07  1261  	}, { /* sentinel */ }
53706a1168631fa Zheng Yang 2018-09-07  1262  };
53706a1168631fa Zheng Yang 2018-09-07  1263  MODULE_DEVICE_TABLE(of, inno_hdmi_phy_of_match);
53706a1168631fa Zheng Yang 2018-09-07  1264  
53706a1168631fa Zheng Yang 2018-09-07  1265  static struct platform_driver inno_hdmi_phy_driver = {
53706a1168631fa Zheng Yang 2018-09-07  1266  	.probe  = inno_hdmi_phy_probe,
53706a1168631fa Zheng Yang 2018-09-07  1267  	.remove = inno_hdmi_phy_remove,
53706a1168631fa Zheng Yang 2018-09-07  1268  	.driver = {
53706a1168631fa Zheng Yang 2018-09-07  1269  		.name = "inno-hdmi-phy",
53706a1168631fa Zheng Yang 2018-09-07  1270  		.of_match_table = inno_hdmi_phy_of_match,
53706a1168631fa Zheng Yang 2018-09-07  1271  	},
53706a1168631fa Zheng Yang 2018-09-07  1272  };
53706a1168631fa Zheng Yang 2018-09-07  1273  module_platform_driver(inno_hdmi_phy_driver);
53706a1168631fa Zheng Yang 2018-09-07  1274  
53706a1168631fa Zheng Yang 2018-09-07  1275  MODULE_AUTHOR("Zheng Yang <zhengyang@rock-chips.com>");
53706a1168631fa Zheng Yang 2018-09-07  1276  MODULE_DESCRIPTION("Innosilion HDMI 2.0 Transmitter PHY Driver");
53706a1168631fa Zheng Yang 2018-09-07  1277  MODULE_LICENSE("GPL v2");

:::::: The code at line 1046 was first introduced by commit
:::::: 53706a1168631fa5bf2e6d47de4647ea7e69f270 phy: add Rockchip Innosilicon hdmi phy

:::::: TO: Zheng Yang <zhengyang@rock-chips.com>
:::::: CC: Kishon Vijay Abraham I <kishon@ti.com>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908050550.HYVoa5wb%25lkp%40intel.com.

--myho43vkzm2qpecd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--myho43vkzm2qpecd--
