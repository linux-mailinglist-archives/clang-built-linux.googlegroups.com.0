Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBO7J6X5QKGQENSRCDAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 400EB2859FF
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Oct 2020 09:56:45 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id l5sf502784uap.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Oct 2020 00:56:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602057404; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y5UDwqf56GBtjUobxa98EHCS+0AYwwyFt/W9OYl1pnircx46cdARyQKHNH6AAC82Ef
         S2WpcMWTHYu6u/GA3ACbPpvWJnflDAJ4X4v+JSLQ04Vz8stZSLJX+dICJkyGhY8VQm9N
         dQvQ/KcP6EXw65vP95o36oJtjIR7ifp/RI2KHvSvSwh3Uy2mtb6OqyIkP58LFYQl8n9n
         aTCsRuzPSlcLWgYOqmqFnyTduNVddzxoePRYKc7d06JbPRe35yp7xSteg+/PLpE3bTvQ
         cRYt+HDb9H8uVXfkFeUv2ck8X8t2KdSB4r+64i8Pq2FyoGnh6rLfm1Ue1TnTSvvtDUBn
         H/Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=1x0t4IrDiRC544SjVKoAQeTInRp2mRguTyNRqXX/Mys=;
        b=S9rOJVOKNZqXCTff3oc6rneOODfAOAoIwgvcRakQEh7D5QXn0sHSJg1PVyDtw2cv4k
         8ttNMVUrqyZUN/RsSKxcQ2KjgRQiS/ldZScoLDbjcuWxAyeMx4g3/LdkfxucO1bk1Fv7
         Dj6+5str5vIyErcATfbJY/yzol0pL7vCP5j4Ta5CM8zKX6+T8nUmsfsnIPDqJ6E+z5rd
         KGDzJEervgejBi+H1TmjP//5dBpcTlPMhssTnuE9HjevL2aCQ2yW8+ndmBk3j1zIpZ3T
         F+a/FeHlyE5PH395jPLb1D/t2avYmrpQYd7trXi120iyR0iDfh2mvQj0c17gFUL+IFx+
         iyPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1x0t4IrDiRC544SjVKoAQeTInRp2mRguTyNRqXX/Mys=;
        b=NjatT9hYjDpr9WLYNo+yrb5nbC1bpnoAB8YKbtuoCKObi6kggZlYWAQ4xrv+EGSPrf
         U5tVKzQd5k4+0GUpg8GRIavP9D6JXDlklLvZadnYAB144TDllI/FUyb7RZvgV5tJu0Sx
         98Bd3y+8JStguX3+ZSseihtaKVwqaPOJGvhn6N9+sL1U9tLEFo2wfQhdj7HRl/9Es2ED
         zDl87uVIJpIbMLGhTDC0vSAwCfmvg207JThieyGr5+F00sgyHDlRvFB/8qK3CFZqiGtM
         DNIs+5n6PrxdjnBQf3Q8pJ1ftmgn2up+dSxqEgKiJyEJrVjMKpXu5x/cLDjVsti5AJJ7
         gSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1x0t4IrDiRC544SjVKoAQeTInRp2mRguTyNRqXX/Mys=;
        b=WwcAmeE/HchE1bfeFVlUPn8bDbwNeIBM1qDGkk96SCLvYZUWqCBE9AEAw+EMTzAsDb
         X1RnFqPY1xdwjDu+37QlSBtGatc6nb40GsveY2Yry10Zs9xyJ8jooISTh2iDA4kR9wB/
         TPNm7ae+wvPpVwSgBM1F2OuOR/9K6HCx67Sqq0nYEcmpQ86LTVNX8+3T2mXarTFihFxd
         zsbV/yh4+Y9aJTmPysUHRs6UtQwusC/udhG2kgbuBh7hy0Gf+Aj2QmioO8qcBeu+wp2O
         ob985j4KPKHdvUjQLeAbOnXyM1UE2+5UDCdR4ccWZIQ7VvOppwSoOZzLCq3rZkqBC89r
         Y8pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330yGSypRiuoaULRYRd30wl2V2JUng78Dmhbo55vo3g/eZ20cgS
	4Fx2IbcWl6ldlBZl6cO3Xzs=
X-Google-Smtp-Source: ABdhPJzAxB9AIh+kuCDTtCSTIdCG/O9i/S+PRRWupA/nvoSokFPgZ42SxCRIKePOJi/yN3yUvMo9jw==
X-Received: by 2002:a05:6102:2c1:: with SMTP id h1mr972386vsh.44.1602057404002;
        Wed, 07 Oct 2020 00:56:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dc17:: with SMTP id x23ls25164vsj.8.gmail; Wed, 07 Oct
 2020 00:56:42 -0700 (PDT)
X-Received: by 2002:a67:3108:: with SMTP id x8mr887447vsx.26.1602057402839;
        Wed, 07 Oct 2020 00:56:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602057402; cv=none;
        d=google.com; s=arc-20160816;
        b=vfYAEV55OQVJ+CUIp6cG2oq2GQCT77qlBF1k2jsNQqaVLKZHNR3Fdsm8cH6WvWenyG
         YfcZZ4gvn8NooCaKxZzMlI+SejsuioriPbesmql8LF/ox2OtyTU+GyUr9sW8nSDEpchh
         XZHn8m7odz0LNQSbYBaJdEMiQ1QX/DAFMqEpQW1ydaAme4vwpmR65SuF2+iHlOUqj037
         xRV/sLcjHOW2I7DwpLVFfI0fsSiS7qbedbosMORpQkZOol5Hc90r8rIHlE3XlJ7dISgG
         fblbUOzWH1ScK86cexLNik4QVU+fKD8oRZyW0wZKYFUZiB7UBLWrGS7P6v0UPsaP3ODO
         MCHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=YvIRi2Qv7n0GLSKanlF0XNA1+iQ+i42n5wYCAI6Lm+s=;
        b=DY/LkOSakwbl6ChRXAlammqm7sCqWRNhdfxy608WGUy4qmWG5vwA0Dgw9QWrJgGphh
         EO+Rep1b2K4cydolCo4km2U6xW++eSmPutRfQuDKlO87guabC8nfPJxJxv2vVlJZrL8u
         ekHDGXJPzSh3YROeLEMlzJoZrs5BuXWIrfPkJKiycpB1sMcKncf7ViJ/cSI4o/OZWA1V
         yIPLLUyH+yefvpi4UI0UC9d1Od4powIAuZzi7hhIePechBQsSqDlTnkuZQT4S62tTbC0
         YtT50KBCGtc6WA5Zrb3qDETX/5aFyTX7eV96A18SV7T+wz90TU0RLP49r80bc9ZsxoQ1
         ZfBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id u25si86887vkl.5.2020.10.07.00.56.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2020 00:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: fDioSfUveRMXuJO68ijfP2mExREN3MblT+c2HH1RyQaW+dcWEqsGeUE5YgpK4ILpAIZp1wx/vB
 0NHjsn7GJU8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="151787898"
X-IronPort-AV: E=Sophos;i="5.77,345,1596524400"; 
   d="gz'50?scan'50,208,50";a="151787898"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2020 00:56:37 -0700
IronPort-SDR: MPd74yrZH196wX2NtxqkEDVUvr2m3SmSxyg4PJAaXCGHQr/AYRbydtzfObvMVFcCtWykeFBtRo
 47yS/kTS6aTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,345,1596524400"; 
   d="gz'50?scan'50,208,50";a="517689608"
Received: from lkp-server02.sh.intel.com (HELO b5ae2f167493) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 07 Oct 2020 00:56:35 -0700
Received: from kbuild by b5ae2f167493 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kQ4JO-0001XT-Il; Wed, 07 Oct 2020 07:56:34 +0000
Date: Wed, 7 Oct 2020 15:56:08 +0800
From: kernel test robot <lkp@intel.com>
To: Dan Murphy <dmurphy@ti.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Sebastian Reichel <sre@kernel.org>
Subject: [power-supply:for-next 70/71]
 drivers/power/supply/bq25980_charger.c:1113:15: warning: variable
 'wd_reg_val' is used uninitialized whenever 'for' loop exits because its
 condition is false
Message-ID: <202010071505.bitkH93G-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
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


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dan,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-supply.git for-next
head:   8ae237ec0af9f754c1da00913646f3c46a99a1cb
commit: 5069185fc18e810715a91d80fcd075e03add600c [70/71] power: supply: bq25980: Add support for the BQ259xx family
config: mips-randconfig-r023-20201007 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d1d8ae7100ec3c7e1709addb7b3ec6f9ad0b44f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-supply.git/commit/?id=5069185fc18e810715a91d80fcd075e03add600c
        git remote add power-supply https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-supply.git
        git fetch --no-tags power-supply for-next
        git checkout 5069185fc18e810715a91d80fcd075e03add600c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/power/supply/bq25980_charger.c:1113:15: warning: variable 'wd_reg_val' is used uninitialized whenever 'for' loop exits because its condition is false [-Wsometimes-uninitialized]
                   for (i = 0; i < BQ25980_NUM_WD_VAL; i++) {
                               ^~~~~~~~~~~~~~~~~~~~~~
   drivers/power/supply/bq25980_charger.c:1122:29: note: uninitialized use occurs here
                                           BQ25980_WATCHDOG_MASK, wd_reg_val);
                                                                  ^~~~~~~~~~
   drivers/power/supply/bq25980_charger.c:1113:15: note: remove the condition if it is always true
                   for (i = 0; i < BQ25980_NUM_WD_VAL; i++) {
                               ^~~~~~~~~~~~~~~~~~~~~~
   drivers/power/supply/bq25980_charger.c:1102:16: note: initialize the variable 'wd_reg_val' to silence this warning
           int wd_reg_val;
                         ^
                          = 0
   1 warning generated.

vim +1113 drivers/power/supply/bq25980_charger.c

  1098	
  1099	static int bq25980_hw_init(struct bq25980_device *bq)
  1100	{
  1101		struct power_supply_battery_info bat_info = { };
  1102		int wd_reg_val;
  1103		int ret = 0;
  1104		int curr_val;
  1105		int volt_val;
  1106		int i;
  1107	
  1108		if (!bq->watchdog_timer) {
  1109			ret = regmap_update_bits(bq->regmap, BQ25980_CHRGR_CTRL_3,
  1110						 BQ25980_WATCHDOG_DIS,
  1111						 BQ25980_WATCHDOG_DIS);
  1112		} else {
> 1113			for (i = 0; i < BQ25980_NUM_WD_VAL; i++) {
  1114				if (bq->watchdog_timer > bq25980_watchdog_time[i] &&
  1115				    bq->watchdog_timer < bq25980_watchdog_time[i + 1]) {
  1116					wd_reg_val = i;
  1117					break;
  1118				}
  1119			}
  1120	
  1121			ret = regmap_update_bits(bq->regmap, BQ25980_CHRGR_CTRL_3,
  1122						BQ25980_WATCHDOG_MASK, wd_reg_val);
  1123		}
  1124		if (ret)
  1125			return ret;
  1126	
  1127		ret = power_supply_get_battery_info(bq->charger, &bat_info);
  1128		if (ret) {
  1129			dev_warn(bq->dev, "battery info missing\n");
  1130			return -EINVAL;
  1131		}
  1132	
  1133		bq->init_data.ichg_max = bat_info.constant_charge_current_max_ua;
  1134		bq->init_data.vreg_max = bat_info.constant_charge_voltage_max_uv;
  1135	
  1136		if (bq->state.bypass) {
  1137			ret = regmap_update_bits(bq->regmap, BQ25980_CHRGR_CTRL_2,
  1138						BQ25980_EN_BYPASS, BQ25980_EN_BYPASS);
  1139			if (ret)
  1140				return ret;
  1141	
  1142			curr_val = bq->init_data.bypass_ilim;
  1143			volt_val = bq->init_data.bypass_vlim;
  1144		} else {
  1145			curr_val = bq->init_data.sc_ilim;
  1146			volt_val = bq->init_data.sc_vlim;
  1147		}
  1148	
  1149		ret = bq25980_set_input_curr_lim(bq, curr_val);
  1150		if (ret)
  1151			return ret;
  1152	
  1153		ret = bq25980_set_input_volt_lim(bq, volt_val);
  1154		if (ret)
  1155			return ret;
  1156	
  1157		return regmap_update_bits(bq->regmap, BQ25980_ADC_CONTROL1,
  1158					 BQ25980_ADC_EN, BQ25980_ADC_EN);
  1159	}
  1160	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010071505.bitkH93G-lkp%40intel.com.

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--KsGdsel6WgEHnImy--
