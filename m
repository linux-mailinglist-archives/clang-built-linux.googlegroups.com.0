Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBK4D7P7QKGQEFQT2XSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id F00C42F47EB
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 10:47:24 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id 25sf906801pjb.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 01:47:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610531243; cv=pass;
        d=google.com; s=arc-20160816;
        b=XhoYcndQaWCjP9IDe3wcaSWEQzRPynm5dTfbDwn3QBnBIrL4JuppHuYq0SPJrDWUJd
         ZKy/6j7pu7MmGzhsCAjGViPvWQagIvj+VchBrACAVy1T5XCZ/bAXwA6aabZds1qHHR8S
         GLqj7GVm4wXXA/F2A9+6uo5YXC5qx7g+GnIqkNWP362SMghKq6nKmFPtZyNctPorpB/F
         Oe7elqgobgBK7CE90bRBveHJODlEQwG8PTE51XuNSOgdaBHDFsogC6hperxm8MU3wOUD
         XHaAaVvjCwmCK/WPVwxUCLHN8s1hcEG/N51wgwbqknRo7eHcYP6I1nNOuJ5bJvPYtYQh
         ssyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=R2koYEHihvtutpOq0OKaRyGNPEgqDUmhVOMX0C/mUPo=;
        b=d12n3Tbtgm8ulDPr4jWgeMQp6cq5uVfbVgdK2oTtGfgA7Iz6MmhY1RMfpfS4DDR6vZ
         nrv7bIFCJirtllFkdaeUXbN5UFDQetPnUacs/XUYt7Z9DIK3XCRdxh0Yx2HDKscwxmZc
         Io+oBGwCWqk1HcyIvnGDEGEoZfXLrgVJSts4lcQd+HeeJ13Y+VOX6S0VfC70BcSnAJ7C
         HNsa0ufuBR300d7pOGP0hRAv09CoVEdHHp7/1AV37FiRqU9UoqXckziZHp/9r/fggvNY
         LR0dxADIru253XFYpsExWZdN84k9OjJydGBBlo+/R7HlewxrHXNJNWfRwD54dFCaJOqp
         gWFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2koYEHihvtutpOq0OKaRyGNPEgqDUmhVOMX0C/mUPo=;
        b=HGrItQhmbgSZlAPDOxPjo79iYVw+VjkwDsWFGBtBkjl4AFDLR/gxoOxu6qcuEj+itP
         gBas8O5qnKHD/D3wLd4/GX3xmDpqAoYFsGnP76lgL0QJnTlNKsuai6QOXTNQx86edbaa
         WNOYrQNNhSZtOAXmbnf7S02+EwnVYS8F8RDdxEbVM/tqowPtzoIquqmEKYF4TAtxnrEK
         spH5mK4glYLpzFuLxIjTAgCO3oPUaHGJsEJeoSspNYXEqyXFAExJstr6zo5zjYYTCwWT
         921edLBfpCNiyh5gI8zLztczgjP4YSSdYxNH/FZwz4g4tuPDLZeV6HaeHW/xbBl7/3Kb
         zewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2koYEHihvtutpOq0OKaRyGNPEgqDUmhVOMX0C/mUPo=;
        b=b9c3qQs5v7IL9ziFVz4tLo2Di0RPRcAS0RSJq5trxCT7vFuhnjatR9ZzZZLtP+1btR
         8L2sbWmM7Or74R4kk5J7WkRbPzmfpZkEEZx3R9KdBA6LZ28BvIYIP8Rg66tbvI8Qn86q
         G3PYbaRYSVpfFDnVOr7RU3B3WXaBfCS2C6aQ/te1rT+ROHkxWLFQtShPcFnjEco4pGEG
         ihaSMeOR7dwjerntGC8F1HvHi/bcJl4v+xukvM75TGIR+fMahtqd08meZw+C06J/8WRF
         2ZJ9D8Rlh7qO1JrCBKK1qg/V+cEMREX01mAeMkHjkKXqwIz2um1UaWrbBIehXyTDN4Vh
         Svvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QtOeL4qfvYoG907yilmw7EnaEGWrBQh42PCVt5eqvHzaoDj1L
	1SASYwhjLl+PO5X99itZyTE=
X-Google-Smtp-Source: ABdhPJxPOPDn4P3yZuY19R4THunGD18P+BsZzsGuAKxKLwDzSP6MpO26Cio9H9nCNpwbh45p+F+Gug==
X-Received: by 2002:a63:1f1d:: with SMTP id f29mr1324860pgf.47.1610531243364;
        Wed, 13 Jan 2021 01:47:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f0a:: with SMTP id p10ls178001pjh.2.experimental-gmail;
 Wed, 13 Jan 2021 01:47:22 -0800 (PST)
X-Received: by 2002:a17:902:a412:b029:db:cf5a:8427 with SMTP id p18-20020a170902a412b02900dbcf5a8427mr1572656plq.48.1610531242326;
        Wed, 13 Jan 2021 01:47:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610531242; cv=none;
        d=google.com; s=arc-20160816;
        b=AxoXHYxOrS+gVjgjSttpoY7R+sdWcNmwa//O54UZoAffFP7euUpRz/+fqe7rxDvtP3
         rICwLkxmjMUb++N7zJ67EwRg4CKpUZAjxq67Ahn6LravOdVMqyfGI5NLvH4Y9PbjsSst
         H4Ai93Sb7Nezh2SPZa9GTvT76J8BXrZwDbEzZRo75ZTW0iDJ1czX1D9mmZuh/rxikiCL
         4SuELI6eSZ0QksKtrfMmR5yZzSH3KXtz+3YdRo5X5WrgkMEHQ51AwsHC0LMBHHoHk+XT
         ovox5WdsiQYRH7UFMXrs55vd3t4XxAflHJzOykYz/UUhn+kFBeKC3/tDW7ZjBl8OKPG7
         fVpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=O/LS2Q7XaL8xc7t4BDiROsjLL1mx3Nho/sboCDtIoMA=;
        b=G/AVAIH3sn/l37WB9sz8Go86+aI3QpFwWWX5fe2OJicGb6uDdhTz2+YdiECi4j+NVb
         zkmrNbbLbpgkR0+dIFue7oQAXiO4cQ4FS0fj1F5A7bMX9KHegmbBGve+wWr3641iI2Os
         YX7X+7yQX5vWiJ/qJWgNtu5RqHXHcP3HMVWiCp2iEEKEUhKQfiPn+PmUlChWD5yurj54
         ogbU56iPa2nxvThrMMcNTby6MDvVFB6Bif0/wzHJrE6UCTXjXJsKmW5JwqYaw//RFJXk
         bLRkKC6RQf49iwcHzQErM5PYoa2h4zPhXY5Cpj/s/XV526YB2t6rFvno9jzowe3aLxgC
         5DoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id e193si77889pfh.2.2021.01.13.01.47.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 01:47:22 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: ElgcN3JJdlmGo9nNJep0XyFxgMNZFSX8w8msAM7X6h8H+9K5w2zCTTPpE3pF94jjElo4AGPiaw
 PAClL9FdyZKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="242255214"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; 
   d="gz'50?scan'50,208,50";a="242255214"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2021 01:47:19 -0800
IronPort-SDR: fl5D9wuNFXsuf07xEI4rpi3YSzlW4T181dcOijmtYkZjf831ePzbJyM+Td+wDJbEeUBL5X8Crp
 YqM57Pi8gCtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; 
   d="gz'50?scan'50,208,50";a="569374031"
Received: from lkp-server01.sh.intel.com (HELO d5d1a9a2c6bb) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 13 Jan 2021 01:47:16 -0800
Received: from kbuild by d5d1a9a2c6bb with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kzckF-0000A8-JD; Wed, 13 Jan 2021 09:47:15 +0000
Date: Wed, 13 Jan 2021 17:46:33 +0800
From: kernel test robot <lkp@intel.com>
To: Troy Lee <troy_lee@aspeedtech.com>, openbmc@lists.ozlabs.org,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>, Jonathan Corbet <corbet@lwn.net>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Ryan Chen <ryan_chen@aspeedtech.com>,
	"open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 4/4] hwmon: Support Aspeed AST2600 PWM/Fan tachometer
Message-ID: <202101131741.tGzZZxXq-lkp@intel.com>
References: <20210113070850.1184506-5-troy_lee@aspeedtech.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wRRV7LY7NUeQGEoC"
Content-Disposition: inline
In-Reply-To: <20210113070850.1184506-5-troy_lee@aspeedtech.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--wRRV7LY7NUeQGEoC
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Troy,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on hwmon/hwmon-next]
[also build test WARNING on joel-aspeed/for-next v5.11-rc3 next-20210113]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Troy-Lee/hwmon-aspeed2600-pwm-tacho-Add-driver-support/20210113-151325
base:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-next
config: riscv-randconfig-r023-20210113 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 68ff52ffead2ba25cca442778ab19286000daad7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/19a51124badf28349d26657b611da77d5dfba2f1
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Troy-Lee/hwmon-aspeed2600-pwm-tacho-Add-driver-support/20210113-151325
        git checkout 19a51124badf28349d26657b611da77d5dfba2f1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/hwmon/aspeed2600-pwm-tacho.c:581:5: warning: no previous prototype for function 'aspeed_pwm_tacho_read' [-Wmissing-prototypes]
   int aspeed_pwm_tacho_read(struct device *dev, enum hwmon_sensor_types type,
       ^
   drivers/hwmon/aspeed2600-pwm-tacho.c:581:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int aspeed_pwm_tacho_read(struct device *dev, enum hwmon_sensor_types type,
   ^
   static 
>> drivers/hwmon/aspeed2600-pwm-tacho.c:615:5: warning: no previous prototype for function 'aspeed_pwm_tacho_write' [-Wmissing-prototypes]
   int aspeed_pwm_tacho_write(struct device *dev, enum hwmon_sensor_types type,
       ^
   drivers/hwmon/aspeed2600-pwm-tacho.c:615:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int aspeed_pwm_tacho_write(struct device *dev, enum hwmon_sensor_types type,
   ^
   static 
   2 warnings generated.


vim +/aspeed_pwm_tacho_read +581 drivers/hwmon/aspeed2600-pwm-tacho.c

   580	
 > 581	int aspeed_pwm_tacho_read(struct device *dev, enum hwmon_sensor_types type,
   582				u32 attr, int channel, long *val)
   583	{
   584		struct aspeed_pwm_tachometer_data *priv = dev_get_drvdata(dev);
   585		long rpm;
   586	
   587		switch (type) {
   588		case hwmon_pwm:
   589			switch (attr) {
   590			case hwmon_pwm_input:
   591				*val = priv->pwm_channel[channel].falling;
   592				break;
   593			default:
   594				return -EOPNOTSUPP;
   595			}
   596			break;
   597		case hwmon_fan:
   598			switch (attr) {
   599			case hwmon_fan_input:
   600				rpm = aspeed_get_fan_tach_ch_rpm(dev, priv, channel);
   601				if (rpm < 0)
   602					return rpm;
   603				*val = rpm;
   604				break;
   605			default:
   606				return -EOPNOTSUPP;
   607			}
   608			break;
   609		default:
   610			return -EOPNOTSUPP;
   611		}
   612		return 0;
   613	}
   614	
 > 615	int aspeed_pwm_tacho_write(struct device *dev, enum hwmon_sensor_types type,
   616				u32 attr, int channel, long val)
   617	{
   618		switch (type) {
   619		case hwmon_pwm:
   620			switch (attr) {
   621			case hwmon_pwm_input:
   622				return set_pwm(dev, channel, val);
   623			default:
   624				return -EOPNOTSUPP;
   625			}
   626			break;
   627		default:
   628			return -EOPNOTSUPP;
   629		}
   630		return -EOPNOTSUPP;
   631	}
   632	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101131741.tGzZZxXq-lkp%40intel.com.

--wRRV7LY7NUeQGEoC
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
QkXwkXsD9OB24d1J0yfU/wdgWuro1lIBAA==

--wRRV7LY7NUeQGEoC--
