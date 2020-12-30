Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVEXWT7QKGQEQQGPLMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A912E7D26
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 00:23:02 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id f2sf16322876ils.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 15:23:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609370581; cv=pass;
        d=google.com; s=arc-20160816;
        b=MvIVw0AQYkLmiARIGscD/BUPpokKbpir2CgNa3DaxDUsTxvIds/HEtrTwE5mdjHn1j
         DRGqCqQAeO9ri5uP4iwnGi+ag4LSWSNtqfc0cAuR20ENvw/s9XflBj3yQSA9dNJErzSc
         rEjQHBfyp3AM0uqgqxnoUUYaAvDvTkkTvfKgVhm3fOvknLfH8uGHTTUFsHHSkcrqNYKI
         z7h+47tVMkAe98o+NY7lwrVCWf1tm4LaHaLKDKbIShfE93gxaMAFmGBpzzTrcgNlWl/1
         1Hphm1V2U9U+e0tdjwc9Z5IXm+bn96JEYWtllVXoZjV2y7lOaKz7wcce+SSjk7l4qEIk
         pP3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=/qdZBnb9TcV541/Q6iWx+5WO8p3Ru+qktfn1zMago/I=;
        b=VIbIZWRae6RWP5AzTn2b5b5v5VA9uWoQipHYDjgqjqTLp0AsClS10KA8KJbbsWyLsD
         A+KBZINSoeGDL7m8sPzfDTkiabd0dadlgtRDB8fJM9p5RhvvKX6cILT5/TdqRpKWd3Mq
         F2S9mi+fU7hYES9UprzOHQdl060ZbgLYMXmHnv+xQ4joRr+reGLTZxTvQYIrqsKDPmaa
         EgWrXRERR1YyIzrtul8P2zLjNEAcrVmpbk+GvRsD+xNeh1/1dVZLCkSyJuVplTf+hetO
         gfVAhjbyIUSHHyjYpmzvt+2eZ4rp4+CVHXECclyXMpQIipfij/xXqspkNYK4XNCONvXM
         fNVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/qdZBnb9TcV541/Q6iWx+5WO8p3Ru+qktfn1zMago/I=;
        b=FHPfMrYiLfkD9p4Q9MhryW+8PoSvXztbgEX+qy6vZbkr5P2zfEu75olyGynlBFybf9
         wypQ95QpA3LE73UKzCLTUd6VE/tF6A1vDi9jGvZ9ntAWkPnHLPSNOQLIHvgc2LFOmzfr
         BrQLm+hHeyWtio+S1ZX+2LKVIdtn9lYpodsDgWSBs9OS0xCxp94gpBmwrLHx6jnDihHh
         5yc/ATehIZuJ4RL4tTB7Lei/WO4fAwWyLpRYuly2Wjlp3J359ms65NIVqUlEymwPHxRz
         Ioul7oHpKWNNObFRhrmvopHzFqvb00gfGM7WO8wTwYyjcikZ7JQiWLZk3Tl+gGoz/4Eo
         +NUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/qdZBnb9TcV541/Q6iWx+5WO8p3Ru+qktfn1zMago/I=;
        b=offMDUoijidzkzBsATdNscj4r7XYIK44ZcDVmhHu2BSxEwWLOM6aVjTTMXfuAaC10V
         dsaIsBUAdoc1uRRrqYsMWqIb87BjOxYpZMZLzJsxu/tTeZDzF4a82m/+aGVakNaoSTAK
         Jqpa8C2gwuRD14hPvN1Yw9a29El+dL+ZhTNt1hJT7TcRwp3bSYLYLkfwCoFUC6if5l3s
         tQD3vUCZoMJRHfNdnQamFwip2tsytOW1l40yo9Fgpm33N55PW1EG2vENJDZJGxJyAlug
         bikjVWdnQIMU6/GaC1pAWKMUBfHW385pDd/TxKLDZBy49PrriX4z9RKmV9PRSQzNdyi4
         yLqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WgHUmOf1JzNDMDDt0ynyh1un84HeQvx/pwtCV0njHKzapIb9z
	PptRc0yIyuNAnsPvWQFawws=
X-Google-Smtp-Source: ABdhPJzJnaIWtRh/aHvGG8TylUqxW7Lt0YjpXxZJ/yGC1VKjkQeIPG4dSkL8TQKuFlim44Z7w/nbqQ==
X-Received: by 2002:a05:6638:1a:: with SMTP id z26mr47426391jao.52.1609370580889;
        Wed, 30 Dec 2020 15:23:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f48:: with SMTP id y8ls16935437ilj.7.gmail; Wed, 30
 Dec 2020 15:23:00 -0800 (PST)
X-Received: by 2002:a92:cec4:: with SMTP id z4mr53808891ilq.217.1609370580347;
        Wed, 30 Dec 2020 15:23:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609370580; cv=none;
        d=google.com; s=arc-20160816;
        b=P/WFCwuTCSvc1i6i2UiSGnvphYKRE/s82ilhO2I1DYAkQBjdJ1oK2wdXQcTyg+dUtt
         Q8xakvzhXQu9eNFi7NwFEIU6pPxVUsli2gBO+1dX9hWlOGOoEXGDiq/IZmyh1owzPkkn
         PMatW7QuyT/CI8/ZWX+UQrsdKSHiYousoZDhVAViyYqa6+kP/ii723V8Oq2zcmk592cc
         GYAkengiHEBlxXD6ZGL4E5oKPKqRV3TscPqfAqajFMNWW6BIXXOpIuv5hdQ2F8dFvmog
         TPG04hq7pBq9Y28yy9cUawJIfKp3KDFkFJ0+pxtMhzvRJzAkKf7zjRFRXoZ1ys5P69eU
         A3VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=K8r0GevSEoryhCTt2WgkS2i9udL4VYGl88MzanHNCwM=;
        b=x+7GKSV276XoNlCbg70BprO9yyvOkqirT/YuuvgraVc6rjefsZxXANI+zdHffAXOZC
         j/py5Dfwqa23T3tNSwT/fO2Yf/qpyxWbXx3QGjnPSkuSqj6QcAGDl8rgiIJ3MxGZZHdz
         w0bTHj/9q23aYjsYp75MQ1clFI4AJ4R3CFdBG0nhkHASKE8MgYQJWncLOOCCI+cfwS5/
         Ta5iNgRHUH7OYcuigcLgNAnzxbJBkCTxx6OD4GFqRt4Zveep0U5wLjhmAEQguIE4Cbim
         xZ4ISVQnsC4njGBQoT4dFxyv+dRHYfDZyEqG6D6h9Uf9kQjQS5fjMsNNOSXzp18KDOLG
         5G8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id i5si2979454ilu.5.2020.12.30.15.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Dec 2020 15:23:00 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 2l4PQBUsQAEZegz9xn1Dl4oHQhU2oHCN9jWVYYgg7vrTdkd9M6LoH54q6ZoS7P8jmVy2EMLkdR
 aj9rAofsI5bQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="261403242"
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; 
   d="gz'50?scan'50,208,50";a="261403242"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Dec 2020 15:22:58 -0800
IronPort-SDR: P0qyGFRMpFI9MNxOATfNjXljUQ9Q3Pt4zIjPeSm32O9Xj3TwdybVJC+XTOrvisQ7NvZcqY2jAG
 ycVI9QX2Z+aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; 
   d="gz'50?scan'50,208,50";a="348299553"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 30 Dec 2020 15:22:55 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kuknu-0004ZW-HW; Wed, 30 Dec 2020 23:22:54 +0000
Date: Thu, 31 Dec 2020 07:22:22 +0800
From: kernel test robot <lkp@intel.com>
To: Timon Baetz <timon.baetz@protonmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Lee Jones <lee.jones@linaro.org>,
	Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/8] power: supply: max8997_charger: Set CHARGER
 current limit
Message-ID: <202012310753.axvdsSG1-lkp@intel.com>
References: <20201230205139.1812366-3-timon.baetz@protonmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
In-Reply-To: <20201230205139.1812366-3-timon.baetz@protonmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--5vNYLRcllDrimb99
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Timon,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on regulator/for-next]
[also build test ERROR on pinctrl-samsung/for-next krzk/for-next v5.11-rc1 next-20201223]
[cannot apply to robh/for-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Timon-Baetz/extcon-max8997-Add-CHGINS-and-CHGRM-interrupt-handling/20201231-045812
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
config: arm-randconfig-r004-20201230 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3c0d36f977d9e012b245c796ddc8596ac3af659b)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/3a597219bbfc1f9a0b65b9662b7b95bbb7cf728f
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Timon-Baetz/extcon-max8997-Add-CHGINS-and-CHGRM-interrupt-handling/20201231-045812
        git checkout 3a597219bbfc1f9a0b65b9662b7b95bbb7cf728f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/power/supply/max8997_charger.c:261:9: error: implicit declaration of function 'devm_extcon_register_notifier_all' [-Werror,-Wimplicit-function-declaration]
                   ret = devm_extcon_register_notifier_all(&pdev->dev, charger->edev,
                         ^
   drivers/power/supply/max8997_charger.c:261:9: note: did you mean 'devm_extcon_register_notifier'?
   include/linux/extcon.h:263:19: note: 'devm_extcon_register_notifier' declared here
   static inline int devm_extcon_register_notifier(struct device *dev,
                     ^
   1 error generated.


vim +/devm_extcon_register_notifier_all +261 drivers/power/supply/max8997_charger.c

   165	
   166	static int max8997_battery_probe(struct platform_device *pdev)
   167	{
   168		int ret = 0;
   169		struct charger_data *charger;
   170		struct max8997_dev *iodev = dev_get_drvdata(pdev->dev.parent);
   171		struct i2c_client *i2c = iodev->i2c;
   172		struct max8997_platform_data *pdata = iodev->pdata;
   173		struct power_supply_config psy_cfg = {};
   174	
   175		if (!pdata) {
   176			dev_err(&pdev->dev, "No platform data supplied.\n");
   177			return -EINVAL;
   178		}
   179	
   180		if (pdata->eoc_mA) {
   181			int val = (pdata->eoc_mA - 50) / 10;
   182			if (val < 0)
   183				val = 0;
   184			if (val > 0xf)
   185				val = 0xf;
   186	
   187			ret = max8997_update_reg(i2c, MAX8997_REG_MBCCTRL5,
   188					val << ITOPOFF_SHIFT, ITOPOFF_MASK);
   189			if (ret < 0) {
   190				dev_err(&pdev->dev, "Cannot use i2c bus.\n");
   191				return ret;
   192			}
   193		}
   194		switch (pdata->timeout) {
   195		case 5:
   196			ret = max8997_update_reg(i2c, MAX8997_REG_MBCCTRL1,
   197					0x2 << TFCH_SHIFT, TFCH_MASK);
   198			break;
   199		case 6:
   200			ret = max8997_update_reg(i2c, MAX8997_REG_MBCCTRL1,
   201					0x3 << TFCH_SHIFT, TFCH_MASK);
   202			break;
   203		case 7:
   204			ret = max8997_update_reg(i2c, MAX8997_REG_MBCCTRL1,
   205					0x4 << TFCH_SHIFT, TFCH_MASK);
   206			break;
   207		case 0:
   208			ret = max8997_update_reg(i2c, MAX8997_REG_MBCCTRL1,
   209					0x7 << TFCH_SHIFT, TFCH_MASK);
   210			break;
   211		default:
   212			dev_err(&pdev->dev, "incorrect timeout value (%d)\n",
   213					pdata->timeout);
   214			return -EINVAL;
   215		}
   216		if (ret < 0) {
   217			dev_err(&pdev->dev, "Cannot use i2c bus.\n");
   218			return ret;
   219		}
   220	
   221		charger = devm_kzalloc(&pdev->dev, sizeof(*charger), GFP_KERNEL);
   222		if (!charger)
   223			return -ENOMEM;
   224	
   225		platform_set_drvdata(pdev, charger);
   226	
   227		charger->dev = &pdev->dev;
   228		charger->iodev = iodev;
   229	
   230		psy_cfg.drv_data = charger;
   231	
   232		charger->battery = devm_power_supply_register(&pdev->dev,
   233							 &max8997_battery_desc,
   234							 &psy_cfg);
   235		if (IS_ERR(charger->battery)) {
   236			dev_err(&pdev->dev, "failed: power supply register\n");
   237			return PTR_ERR(charger->battery);
   238		}
   239	
   240		charger->reg = devm_regulator_get_optional(&pdev->dev, "charger");
   241		if (IS_ERR(charger->reg)) {
   242			if (PTR_ERR(charger->reg) == -EPROBE_DEFER)
   243				return -EPROBE_DEFER;
   244			dev_info(&pdev->dev, "couldn't get charger regulator\n");
   245		}
   246		charger->edev = extcon_get_edev_by_phandle(&pdev->dev, 0);
   247		if (IS_ERR(charger->edev)) {
   248			if (PTR_ERR(charger->edev) == -EPROBE_DEFER)
   249				return -EPROBE_DEFER;
   250			dev_info(charger->dev, "couldn't get extcon device\n");
   251		}
   252	
   253		if (!IS_ERR(charger->reg) && !IS_ERR(charger->edev)) {
   254			INIT_WORK(&charger->extcon_work, max8997_battery_extcon_evt_worker);
   255			ret = devm_add_action(&pdev->dev, max8997_battery_extcon_evt_stop_work, charger);
   256			if (ret) {
   257				dev_err(&pdev->dev, "failed to add extcon evt stop action: %d\n", ret);
   258				return ret;
   259			}
   260			charger->extcon_nb.notifier_call = max8997_battery_extcon_evt;
 > 261			ret = devm_extcon_register_notifier_all(&pdev->dev, charger->edev,
   262								&charger->extcon_nb);
   263			if (ret) {
   264				dev_err(&pdev->dev, "failed to register extcon notifier\n");
   265				return ret;
   266			};
   267		}
   268	
   269		return 0;
   270	}
   271	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012310753.axvdsSG1-lkp%40intel.com.

--5vNYLRcllDrimb99
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
lLRyWjw8P+qTPrnDBanO1vX8P70rut9lOQEA

--5vNYLRcllDrimb99--
