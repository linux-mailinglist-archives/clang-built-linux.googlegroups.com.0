Return-Path: <clang-built-linux+bncBD26TVH6RINBBI7TVOCQMGQEZPG2Q2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 188F238DE80
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 02:56:05 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id e10-20020a4ab14a0000b029020e1573bdb7sf15958188ooo.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 17:56:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621817764; cv=pass;
        d=google.com; s=arc-20160816;
        b=1AneKW+TzBeGwr9W67Slh1ovdiX3DwcHPS1sOPArniyhxZTNsXKsMPqPAYP7p5vUFM
         Agf5L0NZsHH6/e2XCLWdsM9UxqqCf2SlvgTRJiEMI347cS9oft/fmwr+ka4m3doH3tO+
         DHo8WhF3ex7WOnvAhHOSEnRs+SF1H148Xx4klf6kbO5W45rrdSdgPqntJT1RqP7MWL2R
         RG7aFdZ6CvyZEcP5glQM2u11N9cEf7tKXkqBBHyhB9y96Sofuj14fV4eTiTscDkjFxc0
         rIN03ROwN4T3Fd9/Fa8X5vZYkYJ7MHrCE4prUK9W2DK8EiIgwiX+Bn4IFz1DqOJ81gSy
         XVww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=AMcz0CFX8sOYYYlKa+nWaYmikdNbVoQBg6AYsdflbeM=;
        b=gfFI0dObtJ/zlD+IO9/dZVJuiB6W35u2DBy6BSYjPnF15UeyN3kZ89WCqN40BKNBtV
         srffBgL74+9QOFF1x7OYjTaiQU+AhmzMI3qsb5nskaUXGAKDcoJfVGt8VQAkiMeYTGzQ
         HKqgogROYeuYRFuJh2M/541Gsq9MdBrm2FXFP9RH4D0msR3qggnQ1MzS/yTzgRW7Hxay
         OCxfTHnM/ZRsl9l6rEb30gtrHVl5P3Qqcf5X8CRPed3697RrkZLCkpt3AbSMzzA8EYcM
         Pp+3VGZC7T1eirpE6qrFWHiK1mOz3dBZ/0jDpnWIAuvZ7EKrdGcUQ4zrvzvHcKzDNQQ4
         rR0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AMcz0CFX8sOYYYlKa+nWaYmikdNbVoQBg6AYsdflbeM=;
        b=Ghtqg661hbVT8kgS4d1158KaOK/KY9m4BP1QFajw5vGvxFZ/N0geFIOH75BIq+aqAn
         mXn6+939ugRjUsIkQmjwS3qrL53ZcxSyadJpkk4rfhZmXO2pgsch3c0hLaDa9yK9e73F
         D+c1Mm5WI1LoEg5IAEpw6rSr2dO+7V268sDIvKmq2Iyfjf1HDc1oH+RYNjm9GRIxxTjs
         psRxOgOA+I1WuVraE3F82od+YImJ3KAtI3lCzn/x6srJX3I+rUihZZ/SX4KWVhlq2ECt
         2oxol2C1sqnjsi9xZFaRIx7+2odsX+n7Zu0inih21E1JuKSAAu7nqYKdo74bgzi7bWk2
         jfpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AMcz0CFX8sOYYYlKa+nWaYmikdNbVoQBg6AYsdflbeM=;
        b=jc9ROTAsXfwFMPoVw2yjb1aWGpgNMz5Ho7G5etTwwxv/xMXzIqkqXKGPlj290QcPUW
         JayzwEeLHERLWrRLd0vtsGWzLOlTGjQ3usxbBaWriXCr7zRrx++iiKI+HfFsG7medzk/
         T0CMRi6RP/izDuC8v0AyiHB58UAFU4NazPQNM33isPxIhCAgOK5gqTc16Q4/SrWaYnOt
         aUhG9k22J2Q+tE6LpC0E2yUbYdNLk9gsa7vGe6mkHArVuHkAFQSpwHTX79xouOHI9gie
         KVvpfI/q5BOeuole8URQ9XoA38vEjiC7/2mxjRqEtKOe17bbL5fnnngdideZXXtPoTuC
         kaGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BX3ipfVskP2W1xX91eYgp7S22EJ1kaW9YWBl0O+q6U7iE1zlX
	1EfmwtGcmegUMMF19Q0vEnk=
X-Google-Smtp-Source: ABdhPJw5p/OtHYqevmvEXJeG5/zXR4Bt8QiFRZ5elCxCjX4LK+63F2ZQqXhZ1Xu2lBJ8oX5UX0ICBQ==
X-Received: by 2002:a05:6808:14c7:: with SMTP id f7mr9120236oiw.63.1621817763736;
        Sun, 23 May 2021 17:56:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d487:: with SMTP id l129ls3763976oig.11.gmail; Sun, 23
 May 2021 17:56:03 -0700 (PDT)
X-Received: by 2002:aca:bcc5:: with SMTP id m188mr9026037oif.15.1621817763085;
        Sun, 23 May 2021 17:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621817763; cv=none;
        d=google.com; s=arc-20160816;
        b=ib18qY29nwQKEU9KkyD01mYmyOXPJamAQ15Oavf1Db2cXe4PhDc7X6ikBYW3Ut4ahJ
         tDTeRxrru8c9oOIeXf2FGmB45MD6xGKSUeyLS5QiLeeeu5AEePoUjudMxZg+WSTpEjHf
         Ex0WJk7JIwFCrLHFEhrBAOBextJZhK46O/zviLdI3XVuiCok0PP1nNZGI5F6wt0gzZNJ
         BENg+ioRH8QWEj/ziKoCg9Fjo9NZyXDTu5OrF2Cl8lZV0WG01WZu/HZlI2hN1bAauHsT
         dNc9ASFB1+uUIaByH/7cAXIM0+uWi0L5d9XQk6L5DJycZMEPBeTJZViXXvSFizRx7+xK
         hiyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=SMXKmv76EuLObS6g4Mh90Qmgz5M+rrgDcvKzLUJeCmE=;
        b=WnxwWTakxUackCfd1LKSQuxvGPHi1TK7m8KX6Wfvofdbkjy9gmcqtAtV6s1I5DDPip
         Jp3sDuTHCaUu6nslabtKju5dUv6fbUM5pPqwnLshziSGX2/DwdF4VZT3F8e+VIU9CpLU
         /tibXdIZf/eHTb5r27y9JH/ei94DGBToNJnK9uURB59+OkAxUr5JAs5K8ix6Yo3JznKr
         PDfHCEA6ds6pxwU4OjDsZVvaXbf+iK+xt4imUWf94frSKcuhecHF8FOpAiSs2fD1J/3b
         9D5c/nTv0heUyFAZGr9pexsdxIwT1dqsRysJwsFDKn+H6c3o62rcZvBNf4572XG59Ot7
         01MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id c4si2299035oto.0.2021.05.23.17.56.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 May 2021 17:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: VK/e2f4VPbzcfcVs33l+WyhrnUZkeQ4Vtoax3qrK7DQ7dsU/oVxa8W8LUdVG5uXKT9PR7Jn5pa
 v+dMLUvBXNeg==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="265728589"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="265728589"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 May 2021 17:56:01 -0700
IronPort-SDR: uoNQEH0dcqp3WzW/XkBAMPzm22qque6gv6vlM3nXD4uWzKdxQVMoW6noGqtuV3dBp591B+sIRp
 jxno2/yeTeqw==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="442582151"
Received: from shao2-debian.sh.intel.com (HELO localhost) ([10.239.13.11])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 May 2021 17:55:55 -0700
Date: Mon, 24 May 2021 08:54:43 +0800
From: kernel test robot <rong.a.chen@intel.com>
To: Stephan Gerhold <stephan@gerhold.net>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Nikita Travkin <nikita@trvn.ru>,
	~postmarketos/upstreaming@lists.sr.ht,
	Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH 6/6] extcon: sm5502: Add support for SM5504
Message-ID: <20210524005442.GM2687475@shao2-debian>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+mQruWSI2c46YBtV"
Content-Disposition: inline
In-Reply-To: <20210520112334.129556-7-stephan@gerhold.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.100 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


--+mQruWSI2c46YBtV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Stephan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on chanwoo-extcon/extcon-next]
[also build test WARNING on robh/for-next linus/master v5.13-rc2 next-20210521]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Stephan-Gerhold/extcon-sm5502-Add-support-for-SM5504/20210522-215255
base:   https://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/extcon.git extcon-next
config: x86_64-randconfig-b001-20210522 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e84a9b9bb3051c35dea993cdad7b3d2575638f85)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/f9928587360c40e166418ea5b10fc0c210b93330
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Stephan-Gerhold/extcon-sm5502-Add-support-for-SM5504/20210522-215255
        git checkout f9928587360c40e166418ea5b10fc0c210b93330
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/extcon/extcon-sm5502.c:696:15: warning: cast to smaller integer type 'enum sm5502_types' from 'const void *' [-Wvoid-pointer-to-enum-cast]
           info->type = (enum sm5502_types)device_get_match_data(info->dev);
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +696 drivers/extcon/extcon-sm5502.c

914b881f9452fd Chanwoo Choi     2014-05-22  677  
9e92a019f01894 Stephan Gerhold  2021-05-20  678  static int sm5022_muic_i2c_probe(struct i2c_client *i2c)
914b881f9452fd Chanwoo Choi     2014-05-22  679  {
914b881f9452fd Chanwoo Choi     2014-05-22  680  	struct device_node *np = i2c->dev.of_node;
f9928587360c40 Stephan Gerhold  2021-05-20  681  	const struct regmap_irq_chip *irq_chip;
914b881f9452fd Chanwoo Choi     2014-05-22  682  	struct sm5502_muic_info *info;
914b881f9452fd Chanwoo Choi     2014-05-22  683  	int i, ret, irq_flags;
914b881f9452fd Chanwoo Choi     2014-05-22  684  
914b881f9452fd Chanwoo Choi     2014-05-22  685  	if (!np)
914b881f9452fd Chanwoo Choi     2014-05-22  686  		return -EINVAL;
914b881f9452fd Chanwoo Choi     2014-05-22  687  
914b881f9452fd Chanwoo Choi     2014-05-22  688  	info = devm_kzalloc(&i2c->dev, sizeof(*info), GFP_KERNEL);
914b881f9452fd Chanwoo Choi     2014-05-22  689  	if (!info)
914b881f9452fd Chanwoo Choi     2014-05-22  690  		return -ENOMEM;
914b881f9452fd Chanwoo Choi     2014-05-22  691  	i2c_set_clientdata(i2c, info);
914b881f9452fd Chanwoo Choi     2014-05-22  692  
914b881f9452fd Chanwoo Choi     2014-05-22  693  	info->dev = &i2c->dev;
914b881f9452fd Chanwoo Choi     2014-05-22  694  	info->i2c = i2c;
914b881f9452fd Chanwoo Choi     2014-05-22  695  	info->irq = i2c->irq;
f9928587360c40 Stephan Gerhold  2021-05-20 @696  	info->type = (enum sm5502_types)device_get_match_data(info->dev);
f9928587360c40 Stephan Gerhold  2021-05-20  697  
f9928587360c40 Stephan Gerhold  2021-05-20  698  	switch (info->type) {
f9928587360c40 Stephan Gerhold  2021-05-20  699  	case TYPE_SM5502:
f9928587360c40 Stephan Gerhold  2021-05-20  700  		irq_chip = &sm5502_muic_irq_chip;
914b881f9452fd Chanwoo Choi     2014-05-22  701  		info->muic_irqs = sm5502_muic_irqs;
914b881f9452fd Chanwoo Choi     2014-05-22  702  		info->num_muic_irqs = ARRAY_SIZE(sm5502_muic_irqs);
914b881f9452fd Chanwoo Choi     2014-05-22  703  		info->reg_data = sm5502_reg_data;
914b881f9452fd Chanwoo Choi     2014-05-22  704  		info->num_reg_data = ARRAY_SIZE(sm5502_reg_data);
f9928587360c40 Stephan Gerhold  2021-05-20  705  		break;
f9928587360c40 Stephan Gerhold  2021-05-20  706  	case TYPE_SM5504:
f9928587360c40 Stephan Gerhold  2021-05-20  707  		irq_chip = &sm5504_muic_irq_chip;
f9928587360c40 Stephan Gerhold  2021-05-20  708  		info->muic_irqs = sm5504_muic_irqs;
f9928587360c40 Stephan Gerhold  2021-05-20  709  		info->num_muic_irqs = ARRAY_SIZE(sm5504_muic_irqs);
f9928587360c40 Stephan Gerhold  2021-05-20  710  		info->reg_data = sm5504_reg_data;
f9928587360c40 Stephan Gerhold  2021-05-20  711  		info->num_reg_data = ARRAY_SIZE(sm5504_reg_data);
f9928587360c40 Stephan Gerhold  2021-05-20  712  		break;
f9928587360c40 Stephan Gerhold  2021-05-20  713  	default:
f9928587360c40 Stephan Gerhold  2021-05-20  714  		return -EINVAL;
f9928587360c40 Stephan Gerhold  2021-05-20  715  	}
914b881f9452fd Chanwoo Choi     2014-05-22  716  
914b881f9452fd Chanwoo Choi     2014-05-22  717  	mutex_init(&info->mutex);
914b881f9452fd Chanwoo Choi     2014-05-22  718  
914b881f9452fd Chanwoo Choi     2014-05-22  719  	INIT_WORK(&info->irq_work, sm5502_muic_irq_work);
914b881f9452fd Chanwoo Choi     2014-05-22  720  
914b881f9452fd Chanwoo Choi     2014-05-22  721  	info->regmap = devm_regmap_init_i2c(i2c, &sm5502_muic_regmap_config);
914b881f9452fd Chanwoo Choi     2014-05-22  722  	if (IS_ERR(info->regmap)) {
914b881f9452fd Chanwoo Choi     2014-05-22  723  		ret = PTR_ERR(info->regmap);
914b881f9452fd Chanwoo Choi     2014-05-22  724  		dev_err(info->dev, "failed to allocate register map: %d\n",
914b881f9452fd Chanwoo Choi     2014-05-22  725  				   ret);
914b881f9452fd Chanwoo Choi     2014-05-22  726  		return ret;
914b881f9452fd Chanwoo Choi     2014-05-22  727  	}
914b881f9452fd Chanwoo Choi     2014-05-22  728  
914b881f9452fd Chanwoo Choi     2014-05-22  729  	/* Support irq domain for SM5502 MUIC device */
914b881f9452fd Chanwoo Choi     2014-05-22  730  	irq_flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT | IRQF_SHARED;
f9928587360c40 Stephan Gerhold  2021-05-20  731  	ret = devm_regmap_add_irq_chip(info->dev, info->regmap, info->irq,
f9928587360c40 Stephan Gerhold  2021-05-20  732  				       irq_flags, 0, irq_chip, &info->irq_data);
914b881f9452fd Chanwoo Choi     2014-05-22  733  	if (ret != 0) {
914b881f9452fd Chanwoo Choi     2014-05-22  734  		dev_err(info->dev, "failed to request IRQ %d: %d\n",
914b881f9452fd Chanwoo Choi     2014-05-22  735  				    info->irq, ret);
914b881f9452fd Chanwoo Choi     2014-05-22  736  		return ret;
914b881f9452fd Chanwoo Choi     2014-05-22  737  	}
914b881f9452fd Chanwoo Choi     2014-05-22  738  
914b881f9452fd Chanwoo Choi     2014-05-22  739  	for (i = 0; i < info->num_muic_irqs; i++) {
914b881f9452fd Chanwoo Choi     2014-05-22  740  		struct muic_irq *muic_irq = &info->muic_irqs[i];
363b389106e676 Andrzej Hajda    2015-09-24  741  		int virq = 0;
914b881f9452fd Chanwoo Choi     2014-05-22  742  
914b881f9452fd Chanwoo Choi     2014-05-22  743  		virq = regmap_irq_get_virq(info->irq_data, muic_irq->irq);
914b881f9452fd Chanwoo Choi     2014-05-22  744  		if (virq <= 0)
914b881f9452fd Chanwoo Choi     2014-05-22  745  			return -EINVAL;
914b881f9452fd Chanwoo Choi     2014-05-22  746  		muic_irq->virq = virq;
914b881f9452fd Chanwoo Choi     2014-05-22  747  
914b881f9452fd Chanwoo Choi     2014-05-22  748  		ret = devm_request_threaded_irq(info->dev, virq, NULL,
914b881f9452fd Chanwoo Choi     2014-05-22  749  						sm5502_muic_irq_handler,
005ad18727b489 Vasyl Gomonovych 2019-07-19  750  						IRQF_NO_SUSPEND | IRQF_ONESHOT,
914b881f9452fd Chanwoo Choi     2014-05-22  751  						muic_irq->name, info);
914b881f9452fd Chanwoo Choi     2014-05-22  752  		if (ret) {
fbae30d8dd3545 Chanwoo Choi     2014-08-12  753  			dev_err(info->dev,
fbae30d8dd3545 Chanwoo Choi     2014-08-12  754  				"failed: irq request (IRQ: %d, error :%d)\n",
fbae30d8dd3545 Chanwoo Choi     2014-08-12  755  				muic_irq->irq, ret);
914b881f9452fd Chanwoo Choi     2014-05-22  756  			return ret;
914b881f9452fd Chanwoo Choi     2014-05-22  757  		}
914b881f9452fd Chanwoo Choi     2014-05-22  758  	}
914b881f9452fd Chanwoo Choi     2014-05-22  759  
914b881f9452fd Chanwoo Choi     2014-05-22  760  	/* Allocate extcon device */
914b881f9452fd Chanwoo Choi     2014-05-22  761  	info->edev = devm_extcon_dev_allocate(info->dev, sm5502_extcon_cable);
914b881f9452fd Chanwoo Choi     2014-05-22  762  	if (IS_ERR(info->edev)) {
914b881f9452fd Chanwoo Choi     2014-05-22  763  		dev_err(info->dev, "failed to allocate memory for extcon\n");
914b881f9452fd Chanwoo Choi     2014-05-22  764  		return -ENOMEM;
914b881f9452fd Chanwoo Choi     2014-05-22  765  	}
914b881f9452fd Chanwoo Choi     2014-05-22  766  
914b881f9452fd Chanwoo Choi     2014-05-22  767  	/* Register extcon device */
914b881f9452fd Chanwoo Choi     2014-05-22  768  	ret = devm_extcon_dev_register(info->dev, info->edev);
914b881f9452fd Chanwoo Choi     2014-05-22  769  	if (ret) {
914b881f9452fd Chanwoo Choi     2014-05-22  770  		dev_err(info->dev, "failed to register extcon device\n");
914b881f9452fd Chanwoo Choi     2014-05-22  771  		return ret;
914b881f9452fd Chanwoo Choi     2014-05-22  772  	}
914b881f9452fd Chanwoo Choi     2014-05-22  773  
e1954452f500cb Chanwoo Choi     2014-05-28  774  	/*
e1954452f500cb Chanwoo Choi     2014-05-28  775  	 * Detect accessory after completing the initialization of platform
e1954452f500cb Chanwoo Choi     2014-05-28  776  	 *
e1954452f500cb Chanwoo Choi     2014-05-28  777  	 * - Use delayed workqueue to detect cable state and then
e1954452f500cb Chanwoo Choi     2014-05-28  778  	 * notify cable state to notifiee/platform through uevent.
e1954452f500cb Chanwoo Choi     2014-05-28  779  	 * After completing the booting of platform, the extcon provider
e1954452f500cb Chanwoo Choi     2014-05-28  780  	 * driver should notify cable state to upper layer.
e1954452f500cb Chanwoo Choi     2014-05-28  781  	 */
e1954452f500cb Chanwoo Choi     2014-05-28  782  	INIT_DELAYED_WORK(&info->wq_detcable, sm5502_muic_detect_cable_wq);
e1954452f500cb Chanwoo Choi     2014-05-28  783  	queue_delayed_work(system_power_efficient_wq, &info->wq_detcable,
e1954452f500cb Chanwoo Choi     2014-05-28  784  			msecs_to_jiffies(DELAY_MS_DEFAULT));
e1954452f500cb Chanwoo Choi     2014-05-28  785  
914b881f9452fd Chanwoo Choi     2014-05-22  786  	/* Initialize SM5502 device and print vendor id and version id */
914b881f9452fd Chanwoo Choi     2014-05-22  787  	sm5502_init_dev_type(info);
914b881f9452fd Chanwoo Choi     2014-05-22  788  
914b881f9452fd Chanwoo Choi     2014-05-22  789  	return 0;
914b881f9452fd Chanwoo Choi     2014-05-22  790  }
914b881f9452fd Chanwoo Choi     2014-05-22  791  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210524005442.GM2687475%40shao2-debian.

--+mQruWSI2c46YBtV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--+mQruWSI2c46YBtV--
