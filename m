Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM6TQWBAMGQE5EM7UVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id C60B132DDA6
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 00:13:56 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id a1sf341630ios.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 15:13:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614899635; cv=pass;
        d=google.com; s=arc-20160816;
        b=tRR6WSTLz7Ez7ovQYjSaLTxCx7cpcu8NF24lDonH8ytT4RipG23eMzWMY9h2ePb0Ps
         VaRaw/C+PrXLLu+1EizZC6hzIPvoVNJS4DP40ELxGFJONqs4nPtgNIaU9ug1HHe3vDpx
         Owj1eowVaAbAalZ4T0PZYuqG1q5/cwRRdky77hQJ64i98oGc/AbvQn7w2z4s9zrgC7vF
         R+GMrCxjBkHWJsxwtXL+IKEPjVy6LAECrukYlFafaaA8znjZ15P4v1ZLNXOleq5e5w52
         klzGoovI68hxqhZY1E99Ja6mxu8yH+SCvhNPSZtV2Rnm36IAVxvOoKiftnmj6VI13PLK
         G6Ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=8g9JTfXmi15fIRehjLOG3NlkiwJpjjfDnqX0Mg3KchU=;
        b=YjwFcqawUelnbS2UY01DfoOBwVt5Ho8w6oAsNZ7PPAz5Mm884eukdlXqOZAZAq+9fW
         f8JaYf4OaWrkoLIt4Atkg3e4NArQsyFMd2UT6PAvXh7gVYzAw0nFdD3hsXaOU62ODwne
         j6OKGU3wuB/OeN0TEZRyJN07tPTss9Vwo8fFziOeM4SW2b6zxaiauWwra7xlUB7gaFSR
         tW43iudmRAoGBrS/LjtPN4kLg4t5gm0sKJY4s56pm+hamg/liTkWcGyvm3HxsGqAa5FK
         /I0bLugLV3q8uwT+BP4NLSU4t8ajHDM8kja6yqjFcpvN21FxX7NCSrwTn9zH+Rb4DJ27
         N59g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8g9JTfXmi15fIRehjLOG3NlkiwJpjjfDnqX0Mg3KchU=;
        b=ZY6Xh+LU5DQd85+gXJsoy/RTqtrYz6bN+9+cJtQCPjUG+k6d2GH9kObJ806gQQlELo
         ioRSo+arNyb64uRELv8giZ+xBNIimaOLdNRr/ZYFmkBEs3gSlntmQnpKudMc32Ys/WqO
         CoDmT+/Az4vAuCsGFHbbLvMiYt8Us0ZNXC4mmeov41IvxJqamhhJ4c61mUiEv9qjNapi
         ztmqSzKs/cbmb6Ah/R+O4LXK9gdnvMXwWN1BSmnrY2l6JZ2eOmo3gD7Sw4lkjYoDtCIY
         1vxZYBOWRgXK61OXJYiPHEGikV4raKGDJ+Zn6WkEihng0XuKLUY5+e6FkDZxfynHi0yG
         JUCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8g9JTfXmi15fIRehjLOG3NlkiwJpjjfDnqX0Mg3KchU=;
        b=Zl/4sCplUQKQQGmEBx5uaiGIImMdXkuoMaYgKkqIYmbKqRw9bv+o6clI2evBuWAC1z
         3WnyRTyEaMm6ZCzEfWLxvTG0PW/hHGj1oVpFd83IQxscbnIcIpHWjc324lvlZumz82Yb
         RhtIDFIOycSJf3MNJCD81hbxxAsPiYGRq8nnL2KGC65tucyKeFGmuuhyZsh+EDrAgtXX
         wrJrrMlSTU+epfSAdr/4hBodORMrQ9Z7yqVZ9MPsFRv0MUnEtFTpq2xmd0s3dsEEr9it
         9MGDe67P0+NAjzI9BKXnD1XDLFCC3qTgTbFc6d4tQX7ji720LcBxXOql4kzIYibWEHeL
         Rqyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fPVGBskdSQsLewDfufnejYo6vusm/2/5SHcyZhNdOZtd4eC8S
	hRLEI0E0ejAKHsdfbZQlOvU=
X-Google-Smtp-Source: ABdhPJyAn6POXgpuTlVQb2rDaDqAZQiOrIUkgM7lPSU+viMuaW76/TIc7aM1WtJJ6GrtC13kFFpZwQ==
X-Received: by 2002:a5d:9418:: with SMTP id v24mr5545332ion.61.1614899635656;
        Thu, 04 Mar 2021 15:13:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls1875738ilj.10.gmail; Thu, 04 Mar
 2021 15:13:55 -0800 (PST)
X-Received: by 2002:a05:6e02:13cb:: with SMTP id v11mr5795383ilj.105.1614899635169;
        Thu, 04 Mar 2021 15:13:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614899635; cv=none;
        d=google.com; s=arc-20160816;
        b=kK4aJ7FB/XwI+dOkSXfBSjcK3AZBEszCoppapZny1j4OfmYP3xu0U/mQxcYKnl2s2S
         CwuSzS24VSFcDcpS9rSkx/N2HB9CoJPkIbMRJupL1f8f0rR2KgZ4dnmT6rO0hFwC7GyG
         eSg9oGXv7i5ohh8DW+PZrpMATC3XzcrFNkOdRPqg+Lf1nBY/Azd5XVS2Kcrufi6G1c9V
         w5sEfBvo6qBBmHuoSIqiK2K+OSSlSwVLOvx6mJNahMbSOu0TKETuksgGkdXzkKC6EC1o
         67HUTkY0iaWNImw3U8WCqL8WmGWdthPgMKZwORXXW2sr9Lw3XcbZhNlDV1IrNCKGQTbG
         rlHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=A5rZ8qtVlVJB48GaOyG5RI0jbmjf6QS5/fmZUNsnC+E=;
        b=rOoDoq0WyCffiBPdiBrvJ2J+TF5y50hu7dMKmPjfWT0Ks66BXrURuqdeqvUqJi4w62
         SDeV57712C349DrklMX5seFTqa0x96SFfnFkQub7EI9nNFfUp2hHdcay/7F6zXlee2lV
         gSuy5TirzwkYeHPA4Hivk62lAgmDZra/gEI+71ZVc3OtuGiceJtFzK7xcfTXN3iu3jnY
         gGvqqZ+E0rb6seevlDJgMKtOc16SkHruOQ5RCIx1uYoc2aI2mGLQGxfgcy/OseV09zOP
         Q0q4u7PQqq7syxu4G7igCt83S3JdYl2yq17cQIMSz6qWdkOKqz8xk567PjBChBUE+Zau
         869A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id r19si60445iov.3.2021.03.04.15.13.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 15:13:55 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: /x8ynEOQz0vAbFcgsyjnxz5D0bLjycKvHaN+ni83twDHHwK+RKppVqFKjwgGfBrD4SuTAQaV7B
 LBQPijuyyfkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="185117744"
X-IronPort-AV: E=Sophos;i="5.81,223,1610438400"; 
   d="gz'50?scan'50,208,50";a="185117744"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Mar 2021 15:13:53 -0800
IronPort-SDR: spb9NRE+szUa1yUuvttevx8jSNyVrjTC8cIkCSCwkSW55DBGUTjBqzxjyMcuQUzD2AsNPAt8PS
 CpDIT90eqcLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,223,1610438400"; 
   d="gz'50?scan'50,208,50";a="507782370"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 04 Mar 2021 15:13:51 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lHxAE-0002Rc-Gw; Thu, 04 Mar 2021 23:13:50 +0000
Date: Fri, 5 Mar 2021 07:13:02 +0800
From: kernel test robot <lkp@intel.com>
To: Vitaly Rodionov <vitalyr@opensource.cirrus.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: clang-built-linux@googlegroups.com, patches@opensource.cirrus.com,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] ALSA: hda/cirrus: Add jack detect interrupt
 support from CS42L42 companion codec.
Message-ID: <202103050718.Itgtqg46-lkp@intel.com>
References: <20210304190241.5363-4-vitalyr@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
In-Reply-To: <20210304190241.5363-4-vitalyr@opensource.cirrus.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Vitaly,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on sound/for-next]
[also build test WARNING on v5.12-rc1 next-20210304]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Vitaly-Rodionov/ALSA-hda-cirrus-Add-support-for-CS8409-HDA-bridge-and-CS42L42-companion-codec/20210305-030714
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git for-next
config: riscv-randconfig-r025-20210304 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project eec7f8f7b1226be422a76542cb403d02538f453a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/9d4c2aa0fd6872aa8b866929c1537ce2905a6dba
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Vitaly-Rodionov/ALSA-hda-cirrus-Add-support-for-CS8409-HDA-bridge-and-CS42L42-companion-codec/20210305-030714
        git checkout 9d4c2aa0fd6872aa8b866929c1537ce2905a6dba
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   sound/pci/hda/patch_cirrus.c:1529:37: warning: variable 'retval' is uninitialized when used here [-Wuninitialized]
                                   __func__, i2c_address, i2c_reg, retval);
                                                                   ^~~~~~
   sound/pci/hda/hda_local.h:723:39: note: expanded from macro 'codec_err'
           dev_err(hda_codec_dev(codec), fmt, ##args)
                                                ^~~~
   include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
           _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                         ^~~~~~~~~~~
   sound/pci/hda/patch_cirrus.c:1519:21: note: initialize the variable 'retval' to silence this warning
           unsigned int retval;
                              ^
                               = 0
>> sound/pci/hda/patch_cirrus.c:1686:6: warning: no previous prototype for function 'cs8409_jack_unsol_event' [-Wmissing-prototypes]
   void cs8409_jack_unsol_event(struct hda_codec *codec, unsigned int res)
        ^
   sound/pci/hda/patch_cirrus.c:1686:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void cs8409_jack_unsol_event(struct hda_codec *codec, unsigned int res)
   ^
   static 
   2 warnings generated.


vim +/cs8409_jack_unsol_event +1686 sound/pci/hda/patch_cirrus.c

  1511	
  1512	/* CS8409 slave i2cRead */
  1513	static unsigned int cs8409_i2c_read(struct hda_codec *codec,
  1514			unsigned int i2c_address,
  1515			unsigned int i2c_reg,
  1516			unsigned int paged)
  1517	{
  1518		unsigned int i2c_reg_data;
> 1519		unsigned int retval;
  1520	
  1521		cs8409_enable_i2c_clock(codec, 1);
  1522		cs_vendor_coef_set(codec, CIR_I2C_ADDR, i2c_address);
  1523	
  1524		if (paged) {
  1525			cs_vendor_coef_set(codec, CIR_I2C_QWRITE, i2c_reg >> 8);
  1526			if (cs8409_i2c_wait_complete(codec) == -1) {
  1527				codec_err(codec,
  1528					"%s() Paged Transaction Failed 0x%02x : 0x%04x = 0x%02x\n",
  1529					__func__, i2c_address, i2c_reg, retval);
  1530			}
  1531		}
  1532	
  1533		i2c_reg_data = (i2c_reg << 8) & 0x0ffff;
  1534		cs_vendor_coef_set(codec, CIR_I2C_QREAD, i2c_reg_data);
  1535		if (cs8409_i2c_wait_complete(codec) == -1) {
  1536			codec_err(codec, "%s() Transaction Failed 0x%02x : 0x%04x = 0x%02x\n",
  1537				__func__, i2c_address, i2c_reg, retval);
  1538		}
  1539	
  1540		/* Register in bits 15-8 and the data in 7-0 */
  1541		retval = cs_vendor_coef_get(codec, CIR_I2C_QREAD);
  1542		retval &= 0x0ff;
  1543	
  1544		cs8409_enable_i2c_clock(codec, 0);
  1545	
  1546		return retval;
  1547	}
  1548	
  1549	/* CS8409 slave i2cWrite */
  1550	static unsigned int cs8409_i2c_write(struct hda_codec *codec,
  1551			unsigned int i2c_address, unsigned int i2c_reg,
  1552			unsigned int i2c_data,
  1553			unsigned int paged)
  1554	{
  1555		unsigned int retval = 0;
  1556		unsigned int i2c_reg_data = 0;
  1557	
  1558		cs8409_enable_i2c_clock(codec, 1);
  1559		cs_vendor_coef_set(codec, CIR_I2C_ADDR, i2c_address);
  1560	
  1561		if (paged) {
  1562			cs_vendor_coef_set(codec, CIR_I2C_QWRITE, i2c_reg >> 8);
  1563			if (cs8409_i2c_wait_complete(codec) == -1) {
  1564				codec_err(codec,
  1565					"%s() Paged Transaction Failed 0x%02x : 0x%04x = 0x%02x\n",
  1566					__func__, i2c_address, i2c_reg, retval);
  1567			}
  1568		}
  1569	
  1570		i2c_reg_data = ((i2c_reg << 8) & 0x0ff00) | (i2c_data & 0x0ff);
  1571		cs_vendor_coef_set(codec, CIR_I2C_QWRITE, i2c_reg_data);
  1572	
  1573		if (cs8409_i2c_wait_complete(codec) == -1) {
  1574			codec_err(codec, "%s() Transaction Failed 0x%02x : 0x%04x = 0x%02x\n",
  1575				__func__, i2c_address, i2c_reg, retval);
  1576		}
  1577	
  1578		cs8409_enable_i2c_clock(codec, 0);
  1579	
  1580		return retval;
  1581	}
  1582	
  1583	/* Assert/release RTS# line to CS42L42 */
  1584	static void cs8409_cs42l42_reset(struct hda_codec *codec)
  1585	{
  1586		struct cs_spec *spec = codec->spec;
  1587	
  1588		/* Assert RTS# line */
  1589		snd_hda_codec_write(codec,
  1590				codec->core.afg, 0, AC_VERB_SET_GPIO_DATA, 0);
  1591		/* wait ~10ms */
  1592		usleep_range(10000, 15000);
  1593		/* Release RTS# line */
  1594		snd_hda_codec_write(codec,
  1595				codec->core.afg, 0, AC_VERB_SET_GPIO_DATA, GPIO5_INT);
  1596		/* wait ~10ms */
  1597		usleep_range(10000, 15000);
  1598	
  1599		mutex_lock(&spec->cs8409_i2c_mux);
  1600	
  1601		/* Clear interrupts, by reading interrupt status registers */
  1602		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x1308, 1);
  1603		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x1309, 1);
  1604		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x130A, 1);
  1605		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x130F, 1);
  1606	
  1607		mutex_unlock(&spec->cs8409_i2c_mux);
  1608	
  1609	}
  1610	
  1611	/* Configure CS42L42 slave codec for jack autodetect */
  1612	static int cs8409_cs42l42_enable_jack_detect(struct hda_codec *codec)
  1613	{
  1614		struct cs_spec *spec = codec->spec;
  1615	
  1616		mutex_lock(&spec->cs8409_i2c_mux);
  1617	
  1618		/* Set TIP_SENSE_EN for analog front-end of tip sense. */
  1619		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1b70, 0x0020, 1);
  1620		/* Clear WAKE# */
  1621		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1b71, 0x0001, 1);
  1622		/* Wait ~2.5ms */
  1623		usleep_range(2500, 3000);
  1624		/* Set mode WAKE# output follows the combination logic directly */
  1625		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1b71, 0x0020, 1);
  1626		/* Clear interrupts status */
  1627		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x130f, 1);
  1628		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x1b7b, 1);
  1629		/* Enable interrupt */
  1630		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1320, 0x03, 1);
  1631		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1b79, 0x00, 1);
  1632	
  1633		mutex_unlock(&spec->cs8409_i2c_mux);
  1634	
  1635		return 0;
  1636	}
  1637	
  1638	/* Enable and run CS42L42 slave codec jack auto detect */
  1639	static void cs8409_cs42l42_run_jack_detect(struct hda_codec *codec)
  1640	{
  1641		struct cs_spec *spec = codec->spec;
  1642	
  1643		mutex_lock(&spec->cs8409_i2c_mux);
  1644	
  1645		/* Clear interrupts */
  1646		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x1308, 1);
  1647		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x1b77, 1);
  1648	
  1649		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1102, 0x87, 1);
  1650		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1f06, 0x86, 1);
  1651		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1b74, 0x07, 1);
  1652		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x131b, 0x01, 1);
  1653		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1120, 0x80, 1);
  1654		/* Wait ~110ms*/
  1655		usleep_range(110000, 200000);
  1656		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x111f, 0x77, 1);
  1657		cs8409_i2c_write(codec, CS42L42_I2C_ADDR, 0x1120, 0xc0, 1);
  1658		/* Wait ~10ms */
  1659		usleep_range(10000, 25000);
  1660	
  1661		mutex_unlock(&spec->cs8409_i2c_mux);
  1662	
  1663	}
  1664	
  1665	static void cs8409_cs42l42_reg_setup(struct hda_codec *codec)
  1666	{
  1667		const struct cs8409_i2c_param *seq = cs42l42_init_reg_seq;
  1668		struct cs_spec *spec = codec->spec;
  1669	
  1670		mutex_lock(&spec->cs8409_i2c_mux);
  1671	
  1672		for (; seq->addr; seq++)
  1673			cs8409_i2c_write(codec, CS42L42_I2C_ADDR, seq->addr, seq->reg, 1);
  1674	
  1675		mutex_unlock(&spec->cs8409_i2c_mux);
  1676	
  1677	}
  1678	
  1679	/*
  1680	 * In the case of CS8409 we do not have unsolicited events from NID's 0x24
  1681	 * and 0x34 where hs mic and hp are connected. Companion codec CS42L42 will
  1682	 * generate interrupt via gpio 4 to notify jack events. We have to overwrite
  1683	 * generic snd_hda_jack_unsol_event(), read CS42L42 jack detect status registers
  1684	 * and then notify status via generic snd_hda_jack_unsol_event() call.
  1685	 */
> 1686	void cs8409_jack_unsol_event(struct hda_codec *codec, unsigned int res)
  1687	{
  1688		struct cs_spec *spec = codec->spec;
  1689		int status_changed = 0;
  1690		unsigned int reg_cdc_status = 0;
  1691		unsigned int reg_hs_status = 0;
  1692		unsigned int reg_ts_status = 0;
  1693		int type = 0;
  1694		struct hda_jack_tbl *jk;
  1695	
  1696		/* jack_unsol_event() will be called every time gpio line changing state.
  1697		 * In this case gpio4 line goes up as a result of reading interrupt status
  1698		 * registers in previous cs8409_jack_unsol_event() call.
  1699		 * We don't need to handle this event, ignoring...
  1700		 */
  1701		if ((res & (1 << 4)))
  1702			return;
  1703	
  1704		mutex_lock(&spec->cs8409_i2c_mux);
  1705	
  1706		/* Read jack detect status registers */
  1707		reg_cdc_status = cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x1308, 1);
  1708		reg_hs_status = cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x1124, 1);
  1709		reg_ts_status = cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x130f, 1);
  1710	
  1711		/* Clear interrupts */
  1712		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x1b7b, 1);
  1713		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x1308, 1);
  1714		cs8409_i2c_read(codec, CS42L42_I2C_ADDR, 0x130f, 1);
  1715	
  1716		mutex_unlock(&spec->cs8409_i2c_mux);
  1717	
  1718		/* HSDET_AUTO_DONE */
  1719		if (reg_cdc_status & CS42L42_HSDET_AUTO_DONE) {
  1720	
  1721			type = ((reg_hs_status & CS42L42_HSTYPE_MASK) + 1);
  1722			/* CS42L42 reports optical jack as type 4
  1723			 * We don't handle optical jack
  1724			 */
  1725			if (type != 4) {
  1726				if (!spec->cs42l42_hp_jack_in) {
  1727					status_changed = 1;
  1728					spec->cs42l42_hp_jack_in = 1;
  1729				}
  1730				/* type = 3 has no mic */
  1731				if ((!spec->cs42l42_mic_jack_in) && (type != 3)) {
  1732					status_changed = 1;
  1733					spec->cs42l42_mic_jack_in = 1;
  1734				}
  1735			}
  1736	
  1737		} else {
  1738			/* TIP_SENSE INSERT/REMOVE */
  1739			switch (reg_ts_status) {
  1740			case CS42L42_JACK_INSERTED:
  1741				cs8409_cs42l42_run_jack_detect(codec);
  1742				break;
  1743	
  1744			case CS42L42_JACK_REMOVED:
  1745				if (spec->cs42l42_hp_jack_in || spec->cs42l42_mic_jack_in) {
  1746					status_changed = 1;
  1747					spec->cs42l42_hp_jack_in = 0;
  1748					spec->cs42l42_mic_jack_in = 0;
  1749				}
  1750				break;
  1751	
  1752			default:
  1753				/* jack in transition */
  1754				status_changed = 0;
  1755				break;
  1756			}
  1757		}
  1758	
  1759		if (status_changed) {
  1760	
  1761			snd_hda_set_pin_ctl(codec, CS8409_CS42L42_SPK_PIN_NID,
  1762					(spec->cs42l42_hp_jack_in)?0 : PIN_OUT);
  1763	
  1764			/* Report jack*/
  1765			jk = snd_hda_jack_tbl_get_mst(codec, CS8409_CS42L42_HP_PIN_NID, 0);
  1766			if (jk) {
  1767				snd_hda_jack_unsol_event(codec,
  1768					(jk->tag << AC_UNSOL_RES_TAG_SHIFT) & AC_UNSOL_RES_TAG);
  1769			}
  1770			/* Report jack*/
  1771			jk = snd_hda_jack_tbl_get_mst(codec, CS8409_CS42L42_AMIC_PIN_NID, 0);
  1772			if (jk) {
  1773				snd_hda_jack_unsol_event(codec,
  1774					(jk->tag << AC_UNSOL_RES_TAG_SHIFT) & AC_UNSOL_RES_TAG);
  1775			}
  1776		}
  1777	}
  1778	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103050718.Itgtqg46-lkp%40intel.com.

--BXVAT5kNtrzKuDFl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
kAEA

--BXVAT5kNtrzKuDFl--
