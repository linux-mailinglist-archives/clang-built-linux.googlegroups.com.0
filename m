Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPWLQT5QKGQEVQQYZEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F89226AEBC
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 22:36:16 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id f9sf503035pjp.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 13:36:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600202174; cv=pass;
        d=google.com; s=arc-20160816;
        b=OBGby+prrHmZpFW+wx0fzu09blcxQrAB5AW0I31Pi5PEOO2XYGS549vwYHBNac7zen
         lNV1Edew3bG+3Z8Hr9uUVMxsDvIaJ1zDsQgdv24j25O5Q7PYmghtU19vQnxpjVJncZYP
         bHIgAnAxcnQK9BF4/CmPkXqiZtG42y1dt4vLvh+XGNTRZAJ14EEbZxYJxOXR50SwNsrM
         7izfHr7xTTMJcw2sARRobSy7xPJ01ZYZ1kBewgGkz4Vxq+jJqjiFKjP3g4L+s6fGjlCi
         lqLe+ckBSfyXNC5m7Nx2/s5q5HmdWODBhWPi0hnMFo4dTbec1GqCkm9BSi3Xred7YA2L
         a8yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=+gzKarxzl4GZCMx39wDCn0GVIFp4jrXXFGEEk+KFx5w=;
        b=paO0+7XItwH1MG+Sh/elDox5n/66XBSZEfyGe+AhMnQeHZb5kAjHhtKscwx/fLFYff
         DsGJcUHrkTFP5FaCTFmL18D2vbU3SSWDxB8ID07aLuNVWMAHPKNefrLFcW3PoWsFHUUy
         KmVrAEmcfr1XZ0c5Ytmt+u7kBKqIVanEQV3lY+o+Ws0nX+RDAY70T3zeO69DgStAGzXE
         YVPEiyTft/SuDh+qVeKCCkKGQpBLJr5Q4xua9EErgyrsc9KNsWP4Tt4Dvfuhtf1y9/WX
         fueWwNFTT1ShEtxYj0zzkFKhrR9YtIa9enNqEjO3XYkTbAic4OTHgTcM/OR28m2OBxHv
         wThw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+gzKarxzl4GZCMx39wDCn0GVIFp4jrXXFGEEk+KFx5w=;
        b=N5AwfDDQOWUvKBZM3IEcA3BxHcw06o4JSwZC5CvK9q9wvn7Nb8ekoinxP2+yFZTtyn
         WFyieooygmxo5n1LKITJ1B7a4Ix+G74dCRnDVjlwfNTrzMIajhEMyJULLVJwPiHUZVVR
         jjBnLbfkC39Un8HzeyPTxPqN4Z9DUT6LHfAWZsPcch+Xt54IrJQlYXKx68PQkpRPjuvk
         m1APJcTlI/oXEFq3gWC5K+zVNxLQRck0Oi4urQgxV522SqeGHdk06NVxscy1pXJs4g3f
         duOM5hEW0cQpBfAL+l2L2BfpF7nI1LKUZtZDhFOVPO7+hBsTgcDR/ydK+8yIT8BVa4JV
         m69w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+gzKarxzl4GZCMx39wDCn0GVIFp4jrXXFGEEk+KFx5w=;
        b=r3GacXpabMbW8G0o3cEvePF4D2cBGRj5/JX1h38eCgFHAfsgdLmAlzeM5EQrf8ky1/
         AaHg7zJaJ+nW2SgIttP0DS2T8odtkNi7I5+Z9zR7Y0OgdPP9HB+GchyDHoeRv06EvJ58
         gSOMDn3hYD5QqGAUV6mZzyuHHFz/VWo+HBEzEmmbIXutNCSm189YVBkK0GWN6kyLUdsm
         f5SYlrTn064W8WQ7VocBnkXkOQmOQmYJZqs4GVYwTRd8G6f8YxAci1+cNClYbeRbf2hT
         hTSYx7+wn/p8bm06tVuHSJAg/b9YzqnbWTA7aGn/njL98ywsmHwtVlCpwWZP6latqjr4
         +heg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pfLG199jHk3Hu57B3LOBcMK6H8tPl931m6z0oofUhM9bLiApb
	RDKwgazEDcczGEtf/fJiNW8=
X-Google-Smtp-Source: ABdhPJwXZBUwwIr8N1peU9ymRM2sHpt/gYpTFYcuDq1eBpoXt1HgDoR3bvEo1fEbXxrWcuY2wbPnkA==
X-Received: by 2002:aa7:96bb:0:b029:142:440c:6ebc with SMTP id g27-20020aa796bb0000b0290142440c6ebcmr205464pfk.22.1600202174559;
        Tue, 15 Sep 2020 13:36:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4901:: with SMTP id p1ls111975pgs.5.gmail; Tue, 15 Sep
 2020 13:36:14 -0700 (PDT)
X-Received: by 2002:a63:e144:: with SMTP id h4mr16253341pgk.161.1600202173903;
        Tue, 15 Sep 2020 13:36:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600202173; cv=none;
        d=google.com; s=arc-20160816;
        b=QkfhvETcvY+xWlq6cf3G5ABLUWsRRncethohCRugBHE6lDDavVVQZPcTOO3GBA1yO9
         JQcXqsvSpgHGpj0j/8yJvaoyy90OxEPjKc6nJEa9hq1nxmjRewGOWolLY0bGUzrzCgIa
         aIaxHV7V9N6DJG7idL/WLasr4Lp0SaLiL8eM1gv6vFpbAWeDXaiPftHG5gPV9F0IJhiD
         LqDi+RwhhAtDXW+cIuC7gjEGBs6f3JpHFheAM5AK6oUz1ao5icT0a40zqaoviqEAVST6
         TxZ/rmZW5ET+2yJV4pqqixH0ED124DwWp1iqJ3Vjgv6l7aKpVEs8pOZp33j9nWjl00n9
         zmNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ufHgrD+HBZHljMLhvu7gUTr416TzYe/vvhRD9qJXPPc=;
        b=QM8hERLUA/Y9SkZBLi/97jTRIMHIit3CRhFS4F0j9IsqXPOdiR1saWJuK7WX3cuZWp
         XW1KcBAXVuDfMY8xEmPlh7Mv90FCN0di4f0rYK0mbvHOyRNkoryIitWTE16Bz9trXZDf
         STQglkjfwlrOASEZDs2aDnkiS40FkHZgx704vrVVBjiurfzKD5GgtmbxvmRd5R1HS8CZ
         yT6aY0i3dCi/TL2V56jSI9R5qLl54ZedXp4aGvNeAOpUR5Vs/aVPtxZXvP4RjPnEaADS
         /qD9vmiaME8XwP1nuvPsmQqOn6Nx0O08BWJBvdsm+A1WvWHaUmrNbAklx69mi/9v+1Gm
         dKNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id y1si37094pjv.0.2020.09.15.13.36.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 13:36:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: padbBjfmgzsyOkW5fDU+UECv5iIvlqpeda41fKGe9ceIb9YY6ANXfxayE0ioe4ElzWXmuN3lrw
 CJvwpOg0PGnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="138847562"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; 
   d="gz'50?scan'50,208,50";a="138847562"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2020 13:36:12 -0700
IronPort-SDR: 8wNCSAvd4FmQhGZle8hPgdgSnU1GmgGu1FWHVjlJGIKKKaUWLqc0Q7eA3aH1FmrNzWuZPO1g03
 Ik+Xo91hJURg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; 
   d="gz'50?scan'50,208,50";a="319593450"
Received: from lkp-server01.sh.intel.com (HELO 96654786cb26) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 15 Sep 2020 13:36:10 -0700
Received: from kbuild by 96654786cb26 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kIHgP-0000GW-HE; Tue, 15 Sep 2020 20:36:09 +0000
Date: Wed, 16 Sep 2020 04:35:27 +0800
From: kernel test robot <lkp@intel.com>
To: Sowjanya Komatineni <skomatineni@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Hans Verkuil <hverkuil@xs4all.nl>
Subject: [hverkuil-media:tegrav5 4/16] drivers/media/i2c/imx274.c:1864:10:
 warning: variable 'ret' is uninitialized when used here
Message-ID: <202009160415.DMyxTWQ2%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://linuxtv.org/hverkuil/media_tree.git tegrav5
head:   34c5bfcb69d84e693fc4cac946f5104292a8b880
commit: 1db17015125eb03cd05ce850e47e21f033b950ba [4/16] media: i2c: Add support for IMX274 supplies and external clock
config: x86_64-randconfig-a005-20200913 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3ed89b51da38f081fedb57727076262abb81d149)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 1db17015125eb03cd05ce850e47e21f033b950ba
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/media/i2c/imx274.c:1864:10: warning: variable 'ret' is uninitialized when used here [-Wuninitialized]
                   return ret;
                          ^~~
   drivers/media/i2c/imx274.c:1852:9: note: initialize the variable 'ret' to silence this warning
           int ret;
                  ^
                   = 0
   1 warning generated.

git remote add hverkuil-media git://linuxtv.org/hverkuil/media_tree.git
git fetch --no-tags hverkuil-media tegrav5
git checkout 1db17015125eb03cd05ce850e47e21f033b950ba
vim +/ret +1864 drivers/media/i2c/imx274.c

  1847	
  1848	static int imx274_probe(struct i2c_client *client)
  1849	{
  1850		struct v4l2_subdev *sd;
  1851		struct stimx274 *imx274;
  1852		int ret;
  1853	
  1854		/* initialize imx274 */
  1855		imx274 = devm_kzalloc(&client->dev, sizeof(*imx274), GFP_KERNEL);
  1856		if (!imx274)
  1857			return -ENOMEM;
  1858	
  1859		mutex_init(&imx274->lock);
  1860	
  1861		imx274->xclk = devm_clk_get(&client->dev, "xclk");
  1862		if (IS_ERR(imx274->xclk)) {
  1863			dev_err(&client->dev, "Failed to get xclk\n");
> 1864			return ret;
  1865		}
  1866	
  1867		ret = clk_set_rate(imx274->xclk, IMX274_DEFAULT_CLK_FREQ);
  1868		if (ret < 0) {
  1869			dev_err(&client->dev, "Failed to set xclk rate\n");
  1870			return ret;
  1871		}
  1872	
  1873		ret = imx274_get_regulators(&client->dev, imx274);
  1874		if (ret) {
  1875			dev_err(&client->dev, "Failed to get power regulators, err: %d\n", ret);
  1876			return ret;
  1877		}
  1878	
  1879		/* initialize format */
  1880		imx274->mode = &imx274_modes[IMX274_DEFAULT_BINNING];
  1881		imx274->crop.width = IMX274_MAX_WIDTH;
  1882		imx274->crop.height = IMX274_MAX_HEIGHT;
  1883		imx274->format.width = imx274->crop.width / imx274->mode->bin_ratio;
  1884		imx274->format.height = imx274->crop.height / imx274->mode->bin_ratio;
  1885		imx274->format.field = V4L2_FIELD_NONE;
  1886		imx274->format.code = MEDIA_BUS_FMT_SRGGB10_1X10;
  1887		imx274->format.colorspace = V4L2_COLORSPACE_SRGB;
  1888		imx274->frame_interval.numerator = 1;
  1889		imx274->frame_interval.denominator = IMX274_DEF_FRAME_RATE;
  1890	
  1891		/* initialize regmap */
  1892		imx274->regmap = devm_regmap_init_i2c(client, &imx274_regmap_config);
  1893		if (IS_ERR(imx274->regmap)) {
  1894			dev_err(&client->dev,
  1895				"regmap init failed: %ld\n", PTR_ERR(imx274->regmap));
  1896			ret = -ENODEV;
  1897			goto err_regmap;
  1898		}
  1899	
  1900		/* initialize subdevice */
  1901		imx274->client = client;
  1902		sd = &imx274->sd;
  1903		v4l2_i2c_subdev_init(sd, client, &imx274_subdev_ops);
  1904		sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE | V4L2_SUBDEV_FL_HAS_EVENTS;
  1905	
  1906		/* initialize subdev media pad */
  1907		imx274->pad.flags = MEDIA_PAD_FL_SOURCE;
  1908		sd->entity.function = MEDIA_ENT_F_CAM_SENSOR;
  1909		ret = media_entity_pads_init(&sd->entity, 1, &imx274->pad);
  1910		if (ret < 0) {
  1911			dev_err(&client->dev,
  1912				"%s : media entity init Failed %d\n", __func__, ret);
  1913			goto err_regmap;
  1914		}
  1915	
  1916		/* initialize sensor reset gpio */
  1917		imx274->reset_gpio = devm_gpiod_get_optional(&client->dev, "reset",
  1918							     GPIOD_OUT_HIGH);
  1919		if (IS_ERR(imx274->reset_gpio)) {
  1920			if (PTR_ERR(imx274->reset_gpio) != -EPROBE_DEFER)
  1921				dev_err(&client->dev, "Reset GPIO not setup in DT");
  1922			ret = PTR_ERR(imx274->reset_gpio);
  1923			goto err_me;
  1924		}
  1925	
  1926		/* initialize controls */
  1927		ret = v4l2_ctrl_handler_init(&imx274->ctrls.handler, 4);
  1928		if (ret < 0) {
  1929			dev_err(&client->dev,
  1930				"%s : ctrl handler init Failed\n", __func__);
  1931			goto err_me;
  1932		}
  1933	
  1934		imx274->ctrls.handler.lock = &imx274->lock;
  1935	
  1936		/* add new controls */
  1937		imx274->ctrls.test_pattern = v4l2_ctrl_new_std_menu_items(
  1938			&imx274->ctrls.handler, &imx274_ctrl_ops,
  1939			V4L2_CID_TEST_PATTERN,
  1940			ARRAY_SIZE(tp_qmenu) - 1, 0, 0, tp_qmenu);
  1941	
  1942		imx274->ctrls.gain = v4l2_ctrl_new_std(
  1943			&imx274->ctrls.handler,
  1944			&imx274_ctrl_ops,
  1945			V4L2_CID_GAIN, IMX274_MIN_GAIN,
  1946			IMX274_MAX_DIGITAL_GAIN * IMX274_MAX_ANALOG_GAIN, 1,
  1947			IMX274_DEF_GAIN);
  1948	
  1949		imx274->ctrls.exposure = v4l2_ctrl_new_std(
  1950			&imx274->ctrls.handler,
  1951			&imx274_ctrl_ops,
  1952			V4L2_CID_EXPOSURE, IMX274_MIN_EXPOSURE_TIME,
  1953			1000000 / IMX274_DEF_FRAME_RATE, 1,
  1954			IMX274_MIN_EXPOSURE_TIME);
  1955	
  1956		imx274->ctrls.vflip = v4l2_ctrl_new_std(
  1957			&imx274->ctrls.handler,
  1958			&imx274_ctrl_ops,
  1959			V4L2_CID_VFLIP, 0, 1, 1, 0);
  1960	
  1961		imx274->sd.ctrl_handler = &imx274->ctrls.handler;
  1962		if (imx274->ctrls.handler.error) {
  1963			ret = imx274->ctrls.handler.error;
  1964			goto err_ctrls;
  1965		}
  1966	
  1967		/* power on the sensor */
  1968		ret = imx274_power_on(&client->dev);
  1969		if (ret < 0) {
  1970			dev_err(&client->dev,
  1971				"%s : imx274 power on failed\n", __func__);
  1972			goto err_ctrls;
  1973		}
  1974	
  1975		/* setup default controls */
  1976		ret = v4l2_ctrl_handler_setup(&imx274->ctrls.handler);
  1977		if (ret) {
  1978			dev_err(&client->dev,
  1979				"Error %d setup default controls\n", ret);
  1980			goto err_power_off;
  1981		}
  1982	
  1983		/* load default control values */
  1984		ret = imx274_load_default(imx274);
  1985		if (ret) {
  1986			dev_err(&client->dev,
  1987				"%s : imx274_load_default failed %d\n",
  1988				__func__, ret);
  1989			goto err_power_off;
  1990		}
  1991	
  1992		/* register subdevice */
  1993		ret = v4l2_async_register_subdev(sd);
  1994		if (ret < 0) {
  1995			dev_err(&client->dev,
  1996				"%s : v4l2_async_register_subdev failed %d\n",
  1997				__func__, ret);
  1998			goto err_power_off;
  1999		}
  2000	
  2001		dev_info(&client->dev, "imx274 : imx274 probe success !\n");
  2002		return 0;
  2003	
  2004	err_power_off:
  2005		imx274_power_off(&client->dev);
  2006	err_ctrls:
  2007		v4l2_ctrl_handler_free(&imx274->ctrls.handler);
  2008	err_me:
  2009		media_entity_cleanup(&sd->entity);
  2010	err_regmap:
  2011		mutex_destroy(&imx274->lock);
  2012		return ret;
  2013	}
  2014	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009160415.DMyxTWQ2%25lkp%40intel.com.

--fUYQa+Pmc3FrFX/N
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKUVYV8AAy5jb25maWcAlDxbd9s2k+/9FTrpS7+HprbjuOnu8QNIghIqkmAAUJL9wqPY
cuqtY2dlu23+/c4AvADQUM36IZEwg9tg7hjoxx9+nLHXl6cv25f7m+3Dw7fZ593jbr992d3O
7u4fdv89y+SskmbGM2HeAnJx//j6zy//fLhoL85n79/+9vbk5/3N+Wy52z/uHmbp0+Pd/edX
6H//9PjDjz+kssrFvE3TdsWVFrJqDd+Yyzc3D9vHz7O/dvtnwJudnr09eXsy++nz/ct//fIL
/Pvlfr9/2v/y8PDXl/br/ul/djcvs3e72w+/fXp/ert99+Hu5MPp3e720/tffz379eTXi7OL
s+2nTx9Ob0/Pf/vPm37W+Tjt5UnfWGSHbYAndJsWrJpffvMQobEosrHJYgzdT89O4M8bI2VV
W4hq6XUYG1ttmBFpAFsw3TJdtnNp5CSglY2pG0PCRQVDcw8kK21Ukxqp9Ngq1Md2LZW3rqQR
RWZEyVvDkoK3WipvArNQnMHuq1zCP4CisSuc5o+zuWWOh9nz7uX163i+ohKm5dWqZQoIJ0ph
Lt+dAfqwrLIWMI3h2szun2ePTy84wojQsFq0C5iUqwOk/jhkyoqe9G/eUM0ta3w62k22mhXG
w1+wFW+XXFW8aOfXoh7RfUgCkDMaVFyXjIZsrqd6yCnAOQ241ga5biCPt16SfP6qjyHg2o/B
N9fHe8vj4HPi2MIddY0Zz1lTGMs23tn0zQupTcVKfvnmp8enx90o0HrNvAPTV3ol6vSgAf9P
TeETsJZabNryY8MbTu5hzUy6aKfhqZJatyUvpbpqmTEsXRCbbTQvROJPzBpQmwSmPW2mYE6L
gStmRdFLGQjs7Pn10/O355fdl1HK5rziSqRWnmslE0/wfZBeyDUN4XnOUyNw6jxvSyfXEV7N
q0xUVmnQg5RirkCTgRR6vKsyAGk4oFZxDSPQXdOFL3DYksmSiSps06KkkNqF4ApJdjWxLmYU
HDKQEVQCKEAaC5enVnb9bSkzHs6US5XyrFOAwrcGumZK844qw/H6I2c8aea5Dtln93g7e7qL
DnQ0JzJdatnAnI4BM+nNaLnDR7HS8o3qvGKFyJjhbcG0adOrtCBYw6r71chpEdiOx1e8Mvoo
sE2UZFkKEx1HK+HEWPZ7Q+KVUrdNjUuOFKAT1LRu7HKVtsanN15WNsz9F/AaKPFYXAPzKiEz
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
JsVa1mOS3Bf9tku1zDme37V+0/9f1/SQ/CjsAQA=

--fUYQa+Pmc3FrFX/N--
