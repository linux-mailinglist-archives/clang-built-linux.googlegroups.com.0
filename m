Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBT4VSKAAMGQETJTA6KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C712F94CB
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 20:06:56 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id f23sf11408748oov.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 11:06:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610910415; cv=pass;
        d=google.com; s=arc-20160816;
        b=ousHE9KqpWTibmIESObKPE7i6/56P9iPFvRgNXDhy4XAzHA9kj/WAMdSOzbCxPdKaI
         Ivda+ALmU9cwI4aGnbaB8Iw8kV7T5deJTzr4CKuaGrCmiA44PTHKtLmSqJxwQ4yU1pPG
         ADgIobQbOddZTe8zncjlNwhq1C8AkC1SmKlkuea8+fUa1MJS5sGbXPIR24l4F8fOG092
         7m8eV1/eZxEYj1gmrbBrJX0LZ9LILz+x7hvGPAzg1UxYIVOTR9s4oSY4xyfvK2b/5/Cd
         hvvrk+9Qay/9+keZdrxxQ0hJGF6llVSQE9tA102g1dQi5Zhxg8OA6HdYU0+pARmkm0iP
         AKjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=HkYY3Hj1MiI0KboYekL6LaV84A6pY2fvLsWzzNZpTEE=;
        b=u5Fj/NlD4MOCFCDN5rr5rHdn+5LW7vCky88YGV6yZgKhP0rLIJz8CsskscRWYsdxSY
         1GETsBAfIUYvazwOi5PpZkvzfTz7MHaOSnsIzTxO5er+ACrOIuL9R00cdcryb8rMRovS
         /MwHCriNIEIg4E95+dcWrqZJrRoTRrn5IZXVe4NqeugICTyC9jJ1lA1PLH3gJFyMHgDs
         P8BgYWPlOduSYEsgrjPiNS6jpPBVaCqGe6mN1uBCQSbnIHxUyc6UJCQtk26KNuXc5Emt
         ghBxBxkQyEKg0ZxNbqXuiurAW+4xQGAWwgcU6+1FHQG9ZBq/K1FWJHCOWEmcKHQ7lK1v
         GNXw==
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
        bh=HkYY3Hj1MiI0KboYekL6LaV84A6pY2fvLsWzzNZpTEE=;
        b=q5dUB3KMN0wPVK9+UsjcuuCH8q9nHEkhjy4xlPkR727V0xwz4IfnUp9/2KWX041rFs
         zXj+r2j9LduOp5mYboYWH4LReiTArPLgWweQaj/q0Z6zptoaUmt+5Mkqs47Zq57GFRwN
         4Hr8j3YMOj5xBa4AaqbQ+U0GaV3zTkdvJV873MO8lqpnstM3BH0vJjEtas4C7ADuNRd2
         VRKkdyfqs1CA2wOdut6tpdk7tsuPYEcjJZlBjNzhGxbV1V7Bp5r2PNnR6kQy4lYvzWIL
         n5/71bdz1LYGj6GIKbAk6x2bL2RDoUqVR+wg+RLS8UaFDRILvFSnSS0GM3xjcBkFzxvh
         WxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HkYY3Hj1MiI0KboYekL6LaV84A6pY2fvLsWzzNZpTEE=;
        b=ekgKAhDFsj6t5benJpZCAlKJCiD5mvnY+6MNVM9Dir5o8SAiUJxE3bi3ngpJJ8WMfO
         fYXMKw5TQ4uekEU3VAzlxFcWBMxKx9pJgff7U59nHkopaVvT+myHPLr+FyFhyOay0ZWn
         aydr5blO0RZi879v/oPvgnTqut0Sv3aq4yso86gHigVJqmBHxM1lzLPw5Vv0/caQnTpq
         /p3ku3cFrDBLtqsNdcT0l4ibGK++qhNOmcvC8QCyTRi3xCb5DRftUPG/LF2x9p7pq8pD
         XO5WosUN+BPZZNLprqtDh30wK0k7PXUsJ/RRRjd1AqlKC8mqrwPDyqhac9h7li3tkITX
         XkaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ElO3xmK5RhTdkAMRfEHCEgA9E6/R5h74p+0vWALahuAc9QEcC
	e3oXcm7b0k7EcXJhRj9UwkU=
X-Google-Smtp-Source: ABdhPJw22S2kNPhfeh2knrFEgtr3h5DXWOOub7WOSwN3lsq7cJNkj298qKbdvqigLr984lSqPDlN+Q==
X-Received: by 2002:a4a:901a:: with SMTP id i26mr15046567oog.42.1610910415387;
        Sun, 17 Jan 2021 11:06:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2413:: with SMTP id n19ls3690137oic.7.gmail; Sun, 17 Jan
 2021 11:06:55 -0800 (PST)
X-Received: by 2002:aca:6708:: with SMTP id z8mr6633589oix.55.1610910414873;
        Sun, 17 Jan 2021 11:06:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610910414; cv=none;
        d=google.com; s=arc-20160816;
        b=UbPeIpZHvM7iIlWZzEaiRwRvPA9X0R1v/S2TuLiEoGs5secJXdkttDvRHM4AqrBk7i
         pK4PHy1uBDxgC/un8dMMG6YZc1FbG/Q1AJ2LLzOqilz6OSfIGFTpakkb9vwbRbtFj6By
         9zB4RYDcgzpMMSohOrIjcubJFCPywhlC9/uU9G+zHDL1chUWU9V7sEhOQaIHe/H96Tfb
         UD6Kv774G3+q9yV3YSJydSUuonVGasPdGxexgcY1iEr0Ds8GRaJ9Uj9gjZzIkOjpaT6E
         FrcnLs8fF07UE6q+JUD22cf261A8hgaeGaXrWnVr/oIpan+6Lvc46UyoZCV0cB87+YVp
         clbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=1nECsIf/HA78CVyzfAeR6fFHZn1Z+CJ/2byG58Y29XA=;
        b=GICGDeTvLcn1flB6rbZCF+Pw0ymnqLorts9Dmh6JwAApWoYC1iuwqIo8ULlkXhF5PS
         CLV103Jlz8v9yocdk1FitdmoOLuEJFDRxXSjLrFoiw4Ogre8Ec9vz5ljDOI2nh6UwkeL
         YYRMvwpYkVqV5DZhxsAZROrxdprNFbqZ/5tzQcIbglz+gPFe7r1EjW7frRhMlrHeyBIx
         g/oDkEI/cjwzIZ2OhYBtMCagepBwRY8pluSgUklG1TLEiKiWvvxBjCmpC6DmwI+nESil
         klkF4wKk63pxb6A4Kk1PJUPW7zVVlSAH+0VUzgEc8wEyTzGnhS0wYImrvJ8srnQzF94m
         cKBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id v23si1805033otn.0.2021.01.17.11.06.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Jan 2021 11:06:54 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 2pxfgrxYxT72iTAEHR4s4gUlSDPaxgYIEWivcl6MEgD3Eal25a2s6pYe8qtC2d/8be3WkgEq/5
 UUWastBKhUnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="263533888"
X-IronPort-AV: E=Sophos;i="5.79,354,1602572400"; 
   d="gz'50?scan'50,208,50";a="263533888"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2021 11:06:53 -0800
IronPort-SDR: hQN9S46cz6drqQ2m3PbOJ/9IkQempHc4p+GV7ZFM5aJxUwVBO1fJ4b9XVvXf74OUAzYdFwedJl
 CFju2T9jYr4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,354,1602572400"; 
   d="gz'50?scan'50,208,50";a="346678158"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 17 Jan 2021 11:06:49 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l1DNx-0003l1-8E; Sun, 17 Jan 2021 19:06:49 +0000
Date: Mon, 18 Jan 2021 03:06:08 +0800
From: kernel test robot <lkp@intel.com>
To: Hans de Goede <hdegoede@redhat.com>, Lee Jones <lee.jones@linaro.org>,
	Cezary Rojewski <cezary.rojewski@intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Jie Yang <yang.jie@linux.intel.com>,
	Mark Brown <broonie@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	alsa-devel@alsa-project.org,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Christian Hartmann <cornogle@googlemail.com>,
	patches@opensource.cirrus.com
Subject: Re: [PATCH v2 3/5] mfd: arizona: Add support for ACPI enumeration of
 WM5102 connected over SPI
Message-ID: <202101180352.D075IBWE-lkp@intel.com>
References: <20210117154717.77969-4-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
In-Reply-To: <20210117154717.77969-4-hdegoede@redhat.com>
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


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Hans,

I love your patch! Yet something to improve:

[auto build test ERROR on lee-mfd/for-mfd-next]
[also build test ERROR on asoc/for-next v5.11-rc3 next-20210115]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Hans-de-Goede/MFD-ASoC-Add-support-for-Intel-Bay-Trail-boards-with-WM5102-codec/20210117-235249
base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
config: arm-randconfig-r021-20210118 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bfd75bdf3fd62d4f5e7028d4122f9ffa517f2a09)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/ff3c43e0ca3dd07a3b671ee3be84b9c607dff305
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Hans-de-Goede/MFD-ASoC-Add-support-for-Intel-Bay-Trail-boards-with-WM5102-codec/20210117-235249
        git checkout ff3c43e0ca3dd07a3b671ee3be84b9c607dff305
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/mfd/arizona-spi.c:194:7: error: assigning to 'int' from incompatible type 'void'
                   ret = arizona_spi_acpi_probe(arizona);
                       ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 error generated.


vim +194 drivers/mfd/arizona-spi.c

   135	
   136	static int arizona_spi_probe(struct spi_device *spi)
   137	{
   138		const struct spi_device_id *id = spi_get_device_id(spi);
   139		const void *match_data;
   140		struct arizona *arizona;
   141		const struct regmap_config *regmap_config = NULL;
   142		unsigned long type = 0;
   143		int ret;
   144	
   145		match_data = device_get_match_data(&spi->dev);
   146		if (match_data)
   147			type = (unsigned long)match_data;
   148		else if (id)
   149			type = id->driver_data;
   150	
   151		switch (type) {
   152		case WM5102:
   153			if (IS_ENABLED(CONFIG_MFD_WM5102))
   154				regmap_config = &wm5102_spi_regmap;
   155			break;
   156		case WM5110:
   157		case WM8280:
   158			if (IS_ENABLED(CONFIG_MFD_WM5110))
   159				regmap_config = &wm5110_spi_regmap;
   160			break;
   161		case WM1831:
   162		case CS47L24:
   163			if (IS_ENABLED(CONFIG_MFD_CS47L24))
   164				regmap_config = &cs47l24_spi_regmap;
   165			break;
   166		default:
   167			dev_err(&spi->dev, "Unknown device type %ld\n", type);
   168			return -EINVAL;
   169		}
   170	
   171		if (!regmap_config) {
   172			dev_err(&spi->dev,
   173				"No kernel support for device type %ld\n", type);
   174			return -EINVAL;
   175		}
   176	
   177		arizona = devm_kzalloc(&spi->dev, sizeof(*arizona), GFP_KERNEL);
   178		if (arizona == NULL)
   179			return -ENOMEM;
   180	
   181		arizona->regmap = devm_regmap_init_spi(spi, regmap_config);
   182		if (IS_ERR(arizona->regmap)) {
   183			ret = PTR_ERR(arizona->regmap);
   184			dev_err(&spi->dev, "Failed to allocate register map: %d\n",
   185				ret);
   186			return ret;
   187		}
   188	
   189		arizona->type = type;
   190		arizona->dev = &spi->dev;
   191		arizona->irq = spi->irq;
   192	
   193		if (has_acpi_companion(&spi->dev)) {
 > 194			ret = arizona_spi_acpi_probe(arizona);
   195			if (ret)
   196				return ret;
   197		}
   198	
   199		return arizona_dev_init(arizona);
   200	}
   201	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101180352.D075IBWE-lkp%40intel.com.

--+QahgC5+KEYLbs62
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--+QahgC5+KEYLbs62--
