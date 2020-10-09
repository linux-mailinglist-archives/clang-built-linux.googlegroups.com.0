Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHPG775QKGQEHBRXURI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id D86E62881A6
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 07:20:30 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id m126sf620384qkd.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Oct 2020 22:20:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602220829; cv=pass;
        d=google.com; s=arc-20160816;
        b=zwcjB9PasiWHv1AKfnrm9wsAuzaNscwkUe9DotkSIEhrnlGrsHH0cJ62UmLNSAfSoC
         P/V7/q5jShImvlA5DtSe30kC5GZoPkoV6mwsMxW16NNVnBkrHdffbeHCxigXM3xaMTXi
         Ccl3yL8EniaUlyLxsQVjXDYFOpbKIMIADslgimwGz19fHYcrKwYoJADsk4Kk3WtieAc4
         +z4QDF2LYSWvdJvJ4u0CGpw3ciJ7mt53ETi2hc3isswFEbKJcT1Y2ob4OQlHs0QaqMKp
         89qNpZAKU42OaASkLoynqfCt3uIJsHN0p9h75fYQWOy0/JCenJO54Vr5Nl46G9EJWMs4
         pSjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=wSKD3iccz67WmQPtLtW6b6zP70btlqZx0CRbnBKdR74=;
        b=V5Kzf7sWQfhcSgEZQbWjSY8BKTX25+ZlkAHf3V0NHv/Rmrx41NBOTTXZnxZrwxmdlF
         jVjbPrSkp1fh7K9PRfYSeBjQUNd3+FQlLRTbdmiYaeDYxdQmVj/9ebEx19/44bZ5HZ8v
         t33UKgIPH2Cm8wmXVM8Df1ddlbIcOwWYbRxEgtGAVHnM2dBxvoeorIOCdkyjitjJ7wf5
         cOAfU3rJgU+HKS4UJHYL2xLXGYNF/MdtbX0fo6SV0EJw8KDGVIHvCpzmE8TPA05Q4k5y
         c52BwXbaEiQOfWyi7xge4AI5hfyXGuvJiy3s7WGJsAPmsSxS/4kz/vuCvea+3LYrKBxA
         572A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wSKD3iccz67WmQPtLtW6b6zP70btlqZx0CRbnBKdR74=;
        b=Jq58ukRwp2IEnWxha5RIK8cHN5SJdcJ26pkrqbzXDZaSFUQOjwVmgQgIZsgzSPHJJN
         tqzxZc/ZwD1sIm0CT8RPSLIlBtgRlUNwQFtik/xCTuz2DM8lYkBUN06h2UlrXEwR9ynI
         QX1wTpmfrTQCktn9rRu6ruYYe7AXmWGY1eAylTEBs29ZKb8hQ5svMxwE0092iqMRROxZ
         R0Y/A/eBeJgkM1yH4Guyllz5AMpTXJuA7HK2wCUVB9FGBKxkeb+2wgJGUoPuakDgAok9
         HmhdXjutTLFsb1pzIbu3pz5oVSsbSwPcjLWbiJPxf7xiditrmNU+QYqcxPGsclnxdwhI
         ZB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wSKD3iccz67WmQPtLtW6b6zP70btlqZx0CRbnBKdR74=;
        b=trxMwSe3ydqH0qUr7NpUl09J8J9beexCQOFqCSXidt3+4K33Lnk/l2jiuIxNA8cH8z
         2CwNndHbOUtysXyPMGV0I/ULDRbaWX80iN3+nWOThqPIs/JycE7t4EaVgJHzvdnhGsko
         qlLnug1Q9S9vlvDBigQtr3ehg44gzORjDCHyFS55D6byAtOcD0suiP7yulGVEZ/XF/Ca
         9olM2eErZ6Xoj28F0RfV+udNO4Nh058oXozZ/5gOu9yzT7FZAul10vIQWs6TBe1wdMMX
         uO/ynCosJuMlo3IcD92sQDtHRFOT2Jtsvez4Iy43H9yu6gpBOIbSduZJgETp3lFlJVBM
         isUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EbGwNbbjb/lw0WZsZzc12UWOZEUivgnSYKVFJikdm1LfT90az
	PX12DdtoyHCFsZsRtNkfIJw=
X-Google-Smtp-Source: ABdhPJwqcVOLCDqo/eyD/2xiir5LTtIvEqaoZn0lhvdlVWQKw7JmvPfKWebNCbJK4mfXZIdMSLIoUQ==
X-Received: by 2002:ac8:5cc8:: with SMTP id s8mr11801441qta.58.1602220829515;
        Thu, 08 Oct 2020 22:20:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5749:: with SMTP id q9ls1921092qvx.8.gmail; Thu, 08 Oct
 2020 22:20:29 -0700 (PDT)
X-Received: by 2002:a05:6214:11b3:: with SMTP id u19mr11760391qvv.51.1602220828879;
        Thu, 08 Oct 2020 22:20:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602220828; cv=none;
        d=google.com; s=arc-20160816;
        b=Fj+H6b0Oj1kLK+2IkSCrJjv0hHnb3ExQZnH3++gyvQA045eo/82U3kv//gWAyxQPnt
         QDvGERKjK+OKasT7mTZBjnk+NyRJa2930KuPp7By7gYZEVuqsEkFSTOyQMNMXBY5qGmR
         ndv6a7r8fhSnswKODtHKzuh1XH2hQvb54iNOjbNHBqp/IqyvhQbjJahQR/lE18mqWsbT
         Uu+eWRMLrXhmOby9rP8Lbm4WwXgR/hZLgyP9pGlIIiptIhfEi2+z2EACvHiqlrrbYLR6
         acmsjx/Hr+AxANx12RzcE5z9aZsNZZ6Ygzl3SFLZZB2jVj/9YNgGuFauEGtiJlT/GuU4
         Q0iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Rd1Fc1S3IV2LU73Cg798ikM1AxRSeMZ7R9lL26eIlDE=;
        b=cSE/n99dTXnD8dv/abwSgsHYfQhHTfimrQ9YQmIgr0ZW48Od5lmLYeNf4GsozGwik9
         8HFCYJsWs90x4Wm/8DkOXkYrwbt6Mi3FShmeXOYOqmOXboDDMNCx0PlAG8sVys+OzEmU
         gLx3nLVHYlSRbikx8ne2V0odp4lmezLdozqWh9vmYeGGvlWGzewHinMZaeNMRLyRzdcH
         eqitcbAGuxpPjOzoi/owph4PmZtjJwvclNk5bJE0d+iRz1VrFKRVOjxMUkMAzHsKU6rE
         4QTgzDIvhQi4HG7bgdib7ExCjEAEVBBu88njTQKHMWP4m1BqSOZ6vXX8/QD3pNTYo482
         6wkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id g19si350626qtm.2.2020.10.08.22.20.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 22:20:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: CXQPfmfJUD27ghPH7ZXwd6TPxL+fl8hhu0dY1svoxZBz5lTzNMUN4Zu0R+jyj7ScM9sUhnUimU
 ajui0ejbItlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="229629904"
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; 
   d="gz'50?scan'50,208,50";a="229629904"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2020 22:20:26 -0700
IronPort-SDR: vTfINADNOg0EksotL8lj27jRfvLXYF+xLI9FYz86a8WPNdptsHWjopK71H1Jqnzl0tRxsy8RkS
 iWmwPyFrgqrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; 
   d="gz'50?scan'50,208,50";a="298165099"
Received: from lkp-server02.sh.intel.com (HELO 80eb06af76cf) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 08 Oct 2020 22:20:24 -0700
Received: from kbuild by 80eb06af76cf with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kQkpL-0000Dl-Li; Fri, 09 Oct 2020 05:20:23 +0000
Date: Fri, 9 Oct 2020 13:19:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: [gustavoars-linux:for-next/clang-ft 2/3]
 drivers/media/dvb-frontends/m88ds3103.c:910:2: warning: unannotated
 fall-through between switch labels
Message-ID: <202010091336.B4hdfmE8-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
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


--ibTvN161/egqYuK8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git for-next/clang-ft
head:   de6b606b07e40c037ed4f83b53ee541692a78c6e
commit: 7d30604536de43168b1eae0a4a938bcbca7786d2 [2/3] Revert "kbuild: Do not enable -Wimplicit-fallthrough for clang for now"
config: x86_64-randconfig-a003-20201009 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4cfc4025cc1433ca5ef1c526053fc9c4bfe64109)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/commit/?id=7d30604536de43168b1eae0a4a938bcbca7786d2
        git remote add gustavoars-linux https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git
        git fetch --no-tags gustavoars-linux for-next/clang-ft
        git checkout 7d30604536de43168b1eae0a4a938bcbca7786d2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/media/dvb-frontends/m88ds3103.c:8:
   In file included from drivers/media/dvb-frontends/m88ds3103_priv.h:11:
   In file included from include/media/dvb_frontend.h:48:
   In file included from include/media/dvbdev.h:23:
   In file included from include/linux/poll.h:10:
   In file included from include/linux/fs.h:33:
   In file included from include/linux/percpu-rwsem.h:7:
   In file included from include/linux/rcuwait.h:6:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:241:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:241:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:241:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:253:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:253:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:253:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
>> drivers/media/dvb-frontends/m88ds3103.c:910:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           default:
           ^
   drivers/media/dvb-frontends/m88ds3103.c:910:2: note: insert '__attribute__((fallthrough));' to silence this warning
           default:
           ^
           __attribute__((fallthrough)); 
   drivers/media/dvb-frontends/m88ds3103.c:910:2: note: insert 'break;' to avoid fall-through
           default:
           ^
           break; 
   3 warnings generated.
--
   In file included from drivers/media/cec/core/cec-pin.c:10:
   In file included from include/media/cec-pin.h:12:
   In file included from include/media/cec.h:11:
   In file included from include/linux/poll.h:10:
   In file included from include/linux/fs.h:33:
   In file included from include/linux/percpu-rwsem.h:7:
   In file included from include/linux/rcuwait.h:6:
   In file included from include/linux/sched/signal.h:6:
   include/linux/signal.h:241:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:241:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:241:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
   include/linux/signal.h:253:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1: ;
           ^
   include/linux/signal.h:253:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1: ;
           ^
           __attribute__((fallthrough)); 
   include/linux/signal.h:253:2: note: insert 'break;' to avoid fall-through
           case 1: ;
           ^
           break; 
>> drivers/media/cec/core/cec-pin.c:421:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case CEC_ST_TX_DATA_BIT_0_HIGH:
           ^
   drivers/media/cec/core/cec-pin.c:421:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case CEC_ST_TX_DATA_BIT_0_HIGH:
           ^
           __attribute__((fallthrough)); 
   drivers/media/cec/core/cec-pin.c:421:2: note: insert 'break;' to avoid fall-through
           case CEC_ST_TX_DATA_BIT_0_HIGH:
           ^
           break; 
   drivers/media/cec/core/cec-pin.c:449:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case CEC_ST_TX_DATA_BIT_HIGH_CUSTOM:
           ^
   drivers/media/cec/core/cec-pin.c:449:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case CEC_ST_TX_DATA_BIT_HIGH_CUSTOM:
           ^
           __attribute__((fallthrough)); 
   drivers/media/cec/core/cec-pin.c:449:2: note: insert 'break;' to avoid fall-through
           case CEC_ST_TX_DATA_BIT_HIGH_CUSTOM:
           ^
           break; 
   drivers/media/cec/core/cec-pin.c:463:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case CEC_ST_TX_START_BIT_HIGH:
           ^
   drivers/media/cec/core/cec-pin.c:463:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case CEC_ST_TX_START_BIT_HIGH:
           ^
           __attribute__((fallthrough)); 
   drivers/media/cec/core/cec-pin.c:463:2: note: insert 'break;' to avoid fall-through
           case CEC_ST_TX_START_BIT_HIGH:
           ^
           break; 
   5 warnings generated.
--
>> drivers/media/test-drivers/vivid/vivid-vbi-gen.c:302:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           case 1 ... 7:
           ^
   drivers/media/test-drivers/vivid/vivid-vbi-gen.c:302:2: note: insert '__attribute__((fallthrough));' to silence this warning
           case 1 ... 7:
           ^
           __attribute__((fallthrough)); 
   drivers/media/test-drivers/vivid/vivid-vbi-gen.c:302:2: note: insert 'break;' to avoid fall-through
           case 1 ... 7:
           ^
           break; 
   1 warning generated.

vim +910 drivers/media/dvb-frontends/m88ds3103.c

e6089feca460cb4 Brad Love        2020-02-01   621  
395d00d1ca89478 Antti Palosaari  2013-02-25   622  static int m88ds3103_set_frontend(struct dvb_frontend *fe)
395d00d1ca89478 Antti Palosaari  2013-02-25   623  {
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   624  	struct m88ds3103_dev *dev = fe->demodulator_priv;
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   625  	struct i2c_client *client = dev->client;
395d00d1ca89478 Antti Palosaari  2013-02-25   626  	struct dtv_frontend_properties *c = &fe->dtv_property_cache;
06487dee53ae157 Antti Palosaari  2013-12-02   627  	int ret, len;
395d00d1ca89478 Antti Palosaari  2013-02-25   628  	const struct m88ds3103_reg_val *init;
b6851419409664b nibble.max       2014-11-05   629  	u8 u8tmp, u8tmp1 = 0, u8tmp2 = 0; /* silence compiler warning */
f4df95bcbb7b142 nibble.max       2014-10-30   630  	u8 buf[3];
334ef18e879980e Antti Palosaari  2016-06-29   631  	u16 u16tmp;
e6089feca460cb4 Brad Love        2020-02-01   632  	u32 tuner_frequency_khz, target_mclk, u32tmp;
395d00d1ca89478 Antti Palosaari  2013-02-25   633  	s32 s32tmp;
981fbe3da20a6f3 James Hutchinson 2019-01-13   634  	static const struct reg_sequence reset_buf[] = {
981fbe3da20a6f3 James Hutchinson 2019-01-13   635  		{0x07, 0x80}, {0x07, 0x00}
981fbe3da20a6f3 James Hutchinson 2019-01-13   636  	};
41b9aa0040526d1 Antti Palosaari  2014-08-21   637  
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   638  	dev_dbg(&client->dev,
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   639  		"delivery_system=%d modulation=%d frequency=%u symbol_rate=%d inversion=%d pilot=%d rolloff=%d\n",
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   640  		c->delivery_system, c->modulation, c->frequency, c->symbol_rate,
395d00d1ca89478 Antti Palosaari  2013-02-25   641  		c->inversion, c->pilot, c->rolloff);
395d00d1ca89478 Antti Palosaari  2013-02-25   642  
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   643  	if (!dev->warm) {
395d00d1ca89478 Antti Palosaari  2013-02-25   644  		ret = -EAGAIN;
395d00d1ca89478 Antti Palosaari  2013-02-25   645  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   646  	}
395d00d1ca89478 Antti Palosaari  2013-02-25   647  
f4df95bcbb7b142 nibble.max       2014-10-30   648  	/* reset */
981fbe3da20a6f3 James Hutchinson 2019-01-13   649  	ret = regmap_multi_reg_write(dev->regmap, reset_buf, 2);
f4df95bcbb7b142 nibble.max       2014-10-30   650  	if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   651  		goto err;
f4df95bcbb7b142 nibble.max       2014-10-30   652  
f4df95bcbb7b142 nibble.max       2014-10-30   653  	/* Disable demod clock path */
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   654  	if (dev->chip_id == M88RS6000_CHIP_ID) {
e6089feca460cb4 Brad Love        2020-02-01   655  		if (dev->chiptype == M88DS3103_CHIPTYPE_3103B) {
e6089feca460cb4 Brad Love        2020-02-01   656  			ret = regmap_read(dev->regmap, 0xb2, &u32tmp);
e6089feca460cb4 Brad Love        2020-02-01   657  			if (ret)
e6089feca460cb4 Brad Love        2020-02-01   658  				goto err;
e6089feca460cb4 Brad Love        2020-02-01   659  			if (u32tmp == 0x01) {
e6089feca460cb4 Brad Love        2020-02-01   660  				ret = regmap_write(dev->regmap, 0x00, 0x00);
e6089feca460cb4 Brad Love        2020-02-01   661  				if (ret)
e6089feca460cb4 Brad Love        2020-02-01   662  					goto err;
e6089feca460cb4 Brad Love        2020-02-01   663  				ret = regmap_write(dev->regmap, 0xb2, 0x00);
e6089feca460cb4 Brad Love        2020-02-01   664  				if (ret)
e6089feca460cb4 Brad Love        2020-02-01   665  					goto err;
e6089feca460cb4 Brad Love        2020-02-01   666  			}
e6089feca460cb4 Brad Love        2020-02-01   667  		}
e6089feca460cb4 Brad Love        2020-02-01   668  
478932b16052f5d Antti Palosaari  2015-04-16   669  		ret = regmap_write(dev->regmap, 0x06, 0xe0);
f4df95bcbb7b142 nibble.max       2014-10-30   670  		if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   671  			goto err;
f4df95bcbb7b142 nibble.max       2014-10-30   672  	}
f4df95bcbb7b142 nibble.max       2014-10-30   673  
395d00d1ca89478 Antti Palosaari  2013-02-25   674  	/* program tuner */
395d00d1ca89478 Antti Palosaari  2013-02-25   675  	if (fe->ops.tuner_ops.set_params) {
395d00d1ca89478 Antti Palosaari  2013-02-25   676  		ret = fe->ops.tuner_ops.set_params(fe);
395d00d1ca89478 Antti Palosaari  2013-02-25   677  		if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   678  			goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   679  	}
395d00d1ca89478 Antti Palosaari  2013-02-25   680  
395d00d1ca89478 Antti Palosaari  2013-02-25   681  	if (fe->ops.tuner_ops.get_frequency) {
f5d9b88db7222bf Antti Palosaari  2016-06-29   682  		ret = fe->ops.tuner_ops.get_frequency(fe, &tuner_frequency_khz);
395d00d1ca89478 Antti Palosaari  2013-02-25   683  		if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   684  			goto err;
2f9dff3f39f0d6d Antti Palosaari  2014-02-01   685  	} else {
2f9dff3f39f0d6d Antti Palosaari  2014-02-01   686  		/*
2f9dff3f39f0d6d Antti Palosaari  2014-02-01   687  		 * Use nominal target frequency as tuner driver does not provide
2f9dff3f39f0d6d Antti Palosaari  2014-02-01   688  		 * actual frequency used. Carrier offset calculation is not
2f9dff3f39f0d6d Antti Palosaari  2014-02-01   689  		 * valid.
2f9dff3f39f0d6d Antti Palosaari  2014-02-01   690  		 */
f5d9b88db7222bf Antti Palosaari  2016-06-29   691  		tuner_frequency_khz = c->frequency;
395d00d1ca89478 Antti Palosaari  2013-02-25   692  	}
395d00d1ca89478 Antti Palosaari  2013-02-25   693  
e6089feca460cb4 Brad Love        2020-02-01   694  	/* set M88RS6000/DS3103B demod main mclk and ts mclk from tuner die */
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   695  	if (dev->chip_id == M88RS6000_CHIP_ID) {
f4df95bcbb7b142 nibble.max       2014-10-30   696  		if (c->symbol_rate > 45010000)
f5d9b88db7222bf Antti Palosaari  2016-06-29   697  			dev->mclk = 110250000;
f4df95bcbb7b142 nibble.max       2014-10-30   698  		else
f5d9b88db7222bf Antti Palosaari  2016-06-29   699  			dev->mclk = 96000000;
395d00d1ca89478 Antti Palosaari  2013-02-25   700  
f4df95bcbb7b142 nibble.max       2014-10-30   701  		if (c->delivery_system == SYS_DVBS)
f5d9b88db7222bf Antti Palosaari  2016-06-29   702  			target_mclk = 96000000;
f4df95bcbb7b142 nibble.max       2014-10-30   703  		else
f5d9b88db7222bf Antti Palosaari  2016-06-29   704  			target_mclk = 144000000;
395d00d1ca89478 Antti Palosaari  2013-02-25   705  
e6089feca460cb4 Brad Love        2020-02-01   706  		if (dev->chiptype == M88DS3103_CHIPTYPE_3103B) {
e6089feca460cb4 Brad Love        2020-02-01   707  			m88ds3103b_select_mclk(dev);
e6089feca460cb4 Brad Love        2020-02-01   708  			m88ds3103b_set_mclk(dev, target_mclk / 1000);
e6089feca460cb4 Brad Love        2020-02-01   709  		}
e6089feca460cb4 Brad Love        2020-02-01   710  
f4df95bcbb7b142 nibble.max       2014-10-30   711  		/* Enable demod clock path */
478932b16052f5d Antti Palosaari  2015-04-16   712  		ret = regmap_write(dev->regmap, 0x06, 0x00);
395d00d1ca89478 Antti Palosaari  2013-02-25   713  		if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   714  			goto err;
f4df95bcbb7b142 nibble.max       2014-10-30   715  		usleep_range(10000, 20000);
f4df95bcbb7b142 nibble.max       2014-10-30   716  	} else {
f4df95bcbb7b142 nibble.max       2014-10-30   717  	/* set M88DS3103 mclk and ts mclk. */
f5d9b88db7222bf Antti Palosaari  2016-06-29   718  		dev->mclk = 96000000;
395d00d1ca89478 Antti Palosaari  2013-02-25   719  
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   720  		switch (dev->cfg->ts_mode) {
395d00d1ca89478 Antti Palosaari  2013-02-25   721  		case M88DS3103_TS_SERIAL:
395d00d1ca89478 Antti Palosaari  2013-02-25   722  		case M88DS3103_TS_SERIAL_D7:
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   723  			target_mclk = dev->cfg->ts_clk;
395d00d1ca89478 Antti Palosaari  2013-02-25   724  			break;
395d00d1ca89478 Antti Palosaari  2013-02-25   725  		case M88DS3103_TS_PARALLEL:
395d00d1ca89478 Antti Palosaari  2013-02-25   726  		case M88DS3103_TS_CI:
b6851419409664b nibble.max       2014-11-05   727  			if (c->delivery_system == SYS_DVBS)
f5d9b88db7222bf Antti Palosaari  2016-06-29   728  				target_mclk = 96000000;
b6851419409664b nibble.max       2014-11-05   729  			else {
395d00d1ca89478 Antti Palosaari  2013-02-25   730  				if (c->symbol_rate < 18000000)
f5d9b88db7222bf Antti Palosaari  2016-06-29   731  					target_mclk = 96000000;
395d00d1ca89478 Antti Palosaari  2013-02-25   732  				else if (c->symbol_rate < 28000000)
f5d9b88db7222bf Antti Palosaari  2016-06-29   733  					target_mclk = 144000000;
395d00d1ca89478 Antti Palosaari  2013-02-25   734  				else
f5d9b88db7222bf Antti Palosaari  2016-06-29   735  					target_mclk = 192000000;
b6851419409664b nibble.max       2014-11-05   736  			}
395d00d1ca89478 Antti Palosaari  2013-02-25   737  			break;
395d00d1ca89478 Antti Palosaari  2013-02-25   738  		default:
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   739  			dev_dbg(&client->dev, "invalid ts_mode\n");
395d00d1ca89478 Antti Palosaari  2013-02-25   740  			ret = -EINVAL;
395d00d1ca89478 Antti Palosaari  2013-02-25   741  			goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   742  		}
f4df95bcbb7b142 nibble.max       2014-10-30   743  
f4df95bcbb7b142 nibble.max       2014-10-30   744  		switch (target_mclk) {
f5d9b88db7222bf Antti Palosaari  2016-06-29   745  		case 96000000:
f4df95bcbb7b142 nibble.max       2014-10-30   746  			u8tmp1 = 0x02; /* 0b10 */
f4df95bcbb7b142 nibble.max       2014-10-30   747  			u8tmp2 = 0x01; /* 0b01 */
f4df95bcbb7b142 nibble.max       2014-10-30   748  			break;
f5d9b88db7222bf Antti Palosaari  2016-06-29   749  		case 144000000:
f4df95bcbb7b142 nibble.max       2014-10-30   750  			u8tmp1 = 0x00; /* 0b00 */
f4df95bcbb7b142 nibble.max       2014-10-30   751  			u8tmp2 = 0x01; /* 0b01 */
f4df95bcbb7b142 nibble.max       2014-10-30   752  			break;
f5d9b88db7222bf Antti Palosaari  2016-06-29   753  		case 192000000:
f4df95bcbb7b142 nibble.max       2014-10-30   754  			u8tmp1 = 0x03; /* 0b11 */
f4df95bcbb7b142 nibble.max       2014-10-30   755  			u8tmp2 = 0x00; /* 0b00 */
f4df95bcbb7b142 nibble.max       2014-10-30   756  			break;
f4df95bcbb7b142 nibble.max       2014-10-30   757  		}
56ea37da3b93dfe Antti Palosaari  2015-10-03   758  		ret = m88ds3103_update_bits(dev, 0x22, 0xc0, u8tmp1 << 6);
f4df95bcbb7b142 nibble.max       2014-10-30   759  		if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   760  			goto err;
56ea37da3b93dfe Antti Palosaari  2015-10-03   761  		ret = m88ds3103_update_bits(dev, 0x24, 0xc0, u8tmp2 << 6);
f4df95bcbb7b142 nibble.max       2014-10-30   762  		if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   763  			goto err;
f4df95bcbb7b142 nibble.max       2014-10-30   764  	}
f4df95bcbb7b142 nibble.max       2014-10-30   765  
478932b16052f5d Antti Palosaari  2015-04-16   766  	ret = regmap_write(dev->regmap, 0xb2, 0x01);
f4df95bcbb7b142 nibble.max       2014-10-30   767  	if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   768  		goto err;
f4df95bcbb7b142 nibble.max       2014-10-30   769  
478932b16052f5d Antti Palosaari  2015-04-16   770  	ret = regmap_write(dev->regmap, 0x00, 0x01);
f4df95bcbb7b142 nibble.max       2014-10-30   771  	if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   772  		goto err;
f4df95bcbb7b142 nibble.max       2014-10-30   773  
f4df95bcbb7b142 nibble.max       2014-10-30   774  	switch (c->delivery_system) {
f4df95bcbb7b142 nibble.max       2014-10-30   775  	case SYS_DVBS:
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   776  		if (dev->chip_id == M88RS6000_CHIP_ID) {
f4df95bcbb7b142 nibble.max       2014-10-30   777  			len = ARRAY_SIZE(m88rs6000_dvbs_init_reg_vals);
f4df95bcbb7b142 nibble.max       2014-10-30   778  			init = m88rs6000_dvbs_init_reg_vals;
f4df95bcbb7b142 nibble.max       2014-10-30   779  		} else {
f4df95bcbb7b142 nibble.max       2014-10-30   780  			len = ARRAY_SIZE(m88ds3103_dvbs_init_reg_vals);
f4df95bcbb7b142 nibble.max       2014-10-30   781  			init = m88ds3103_dvbs_init_reg_vals;
f4df95bcbb7b142 nibble.max       2014-10-30   782  		}
f4df95bcbb7b142 nibble.max       2014-10-30   783  		break;
f4df95bcbb7b142 nibble.max       2014-10-30   784  	case SYS_DVBS2:
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   785  		if (dev->chip_id == M88RS6000_CHIP_ID) {
f4df95bcbb7b142 nibble.max       2014-10-30   786  			len = ARRAY_SIZE(m88rs6000_dvbs2_init_reg_vals);
f4df95bcbb7b142 nibble.max       2014-10-30   787  			init = m88rs6000_dvbs2_init_reg_vals;
f4df95bcbb7b142 nibble.max       2014-10-30   788  		} else {
f4df95bcbb7b142 nibble.max       2014-10-30   789  			len = ARRAY_SIZE(m88ds3103_dvbs2_init_reg_vals);
f4df95bcbb7b142 nibble.max       2014-10-30   790  			init = m88ds3103_dvbs2_init_reg_vals;
f4df95bcbb7b142 nibble.max       2014-10-30   791  		}
395d00d1ca89478 Antti Palosaari  2013-02-25   792  		break;
395d00d1ca89478 Antti Palosaari  2013-02-25   793  	default:
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   794  		dev_dbg(&client->dev, "invalid delivery_system\n");
395d00d1ca89478 Antti Palosaari  2013-02-25   795  		ret = -EINVAL;
395d00d1ca89478 Antti Palosaari  2013-02-25   796  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   797  	}
395d00d1ca89478 Antti Palosaari  2013-02-25   798  
395d00d1ca89478 Antti Palosaari  2013-02-25   799  	/* program init table */
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   800  	if (c->delivery_system != dev->delivery_system) {
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   801  		ret = m88ds3103_wr_reg_val_tab(dev, init, len);
395d00d1ca89478 Antti Palosaari  2013-02-25   802  		if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   803  			goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   804  	}
395d00d1ca89478 Antti Palosaari  2013-02-25   805  
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   806  	if (dev->chip_id == M88RS6000_CHIP_ID) {
f5d9b88db7222bf Antti Palosaari  2016-06-29   807  		if (c->delivery_system == SYS_DVBS2 &&
f5d9b88db7222bf Antti Palosaari  2016-06-29   808  		    c->symbol_rate <= 5000000) {
478932b16052f5d Antti Palosaari  2015-04-16   809  			ret = regmap_write(dev->regmap, 0xc0, 0x04);
f4df95bcbb7b142 nibble.max       2014-10-30   810  			if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   811  				goto err;
f4df95bcbb7b142 nibble.max       2014-10-30   812  			buf[0] = 0x09;
f4df95bcbb7b142 nibble.max       2014-10-30   813  			buf[1] = 0x22;
f4df95bcbb7b142 nibble.max       2014-10-30   814  			buf[2] = 0x88;
478932b16052f5d Antti Palosaari  2015-04-16   815  			ret = regmap_bulk_write(dev->regmap, 0x8a, buf, 3);
f4df95bcbb7b142 nibble.max       2014-10-30   816  			if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   817  				goto err;
f4df95bcbb7b142 nibble.max       2014-10-30   818  		}
56ea37da3b93dfe Antti Palosaari  2015-10-03   819  		ret = m88ds3103_update_bits(dev, 0x9d, 0x08, 0x08);
f4df95bcbb7b142 nibble.max       2014-10-30   820  		if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   821  			goto err;
e6089feca460cb4 Brad Love        2020-02-01   822  
e6089feca460cb4 Brad Love        2020-02-01   823  		if (dev->chiptype == M88DS3103_CHIPTYPE_3103B) {
e6089feca460cb4 Brad Love        2020-02-01   824  			buf[0] = m88ds3103b_dt_read(dev, 0x15);
e6089feca460cb4 Brad Love        2020-02-01   825  			buf[1] = m88ds3103b_dt_read(dev, 0x16);
e6089feca460cb4 Brad Love        2020-02-01   826  
e6089feca460cb4 Brad Love        2020-02-01   827  			if (c->symbol_rate > 45010000) {
e6089feca460cb4 Brad Love        2020-02-01   828  				buf[0] &= ~0x03;
e6089feca460cb4 Brad Love        2020-02-01   829  				buf[0] |= 0x02;
e6089feca460cb4 Brad Love        2020-02-01   830  				buf[0] |= ((147 - 32) >> 8) & 0x01;
e6089feca460cb4 Brad Love        2020-02-01   831  				buf[1] = (147 - 32) & 0xFF;
e6089feca460cb4 Brad Love        2020-02-01   832  
e6089feca460cb4 Brad Love        2020-02-01   833  				dev->mclk = 110250 * 1000;
e6089feca460cb4 Brad Love        2020-02-01   834  			} else {
e6089feca460cb4 Brad Love        2020-02-01   835  				buf[0] &= ~0x03;
e6089feca460cb4 Brad Love        2020-02-01   836  				buf[0] |= ((128 - 32) >> 8) & 0x01;
e6089feca460cb4 Brad Love        2020-02-01   837  				buf[1] = (128 - 32) & 0xFF;
e6089feca460cb4 Brad Love        2020-02-01   838  
e6089feca460cb4 Brad Love        2020-02-01   839  				dev->mclk = 96000 * 1000;
e6089feca460cb4 Brad Love        2020-02-01   840  			}
e6089feca460cb4 Brad Love        2020-02-01   841  			m88ds3103b_dt_write(dev, 0x15, buf[0]);
e6089feca460cb4 Brad Love        2020-02-01   842  			m88ds3103b_dt_write(dev, 0x16, buf[1]);
e6089feca460cb4 Brad Love        2020-02-01   843  
e6089feca460cb4 Brad Love        2020-02-01   844  			regmap_read(dev->regmap, 0x30, &u32tmp);
e6089feca460cb4 Brad Love        2020-02-01   845  			u32tmp &= ~0x80;
e6089feca460cb4 Brad Love        2020-02-01   846  			regmap_write(dev->regmap, 0x30, u32tmp & 0xff);
e6089feca460cb4 Brad Love        2020-02-01   847  		}
e6089feca460cb4 Brad Love        2020-02-01   848  
478932b16052f5d Antti Palosaari  2015-04-16   849  		ret = regmap_write(dev->regmap, 0xf1, 0x01);
f4df95bcbb7b142 nibble.max       2014-10-30   850  		if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   851  			goto err;
e6089feca460cb4 Brad Love        2020-02-01   852  
e6089feca460cb4 Brad Love        2020-02-01   853  		if (dev->chiptype != M88DS3103_CHIPTYPE_3103B) {
56ea37da3b93dfe Antti Palosaari  2015-10-03   854  			ret = m88ds3103_update_bits(dev, 0x30, 0x80, 0x80);
f4df95bcbb7b142 nibble.max       2014-10-30   855  			if (ret)
f4df95bcbb7b142 nibble.max       2014-10-30   856  				goto err;
f4df95bcbb7b142 nibble.max       2014-10-30   857  		}
e6089feca460cb4 Brad Love        2020-02-01   858  	}
f4df95bcbb7b142 nibble.max       2014-10-30   859  
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   860  	switch (dev->cfg->ts_mode) {
395d00d1ca89478 Antti Palosaari  2013-02-25   861  	case M88DS3103_TS_SERIAL:
395d00d1ca89478 Antti Palosaari  2013-02-25   862  		u8tmp1 = 0x00;
79d0933032d657e nibble.max       2014-08-11   863  		u8tmp = 0x06;
395d00d1ca89478 Antti Palosaari  2013-02-25   864  		break;
395d00d1ca89478 Antti Palosaari  2013-02-25   865  	case M88DS3103_TS_SERIAL_D7:
395d00d1ca89478 Antti Palosaari  2013-02-25   866  		u8tmp1 = 0x20;
79d0933032d657e nibble.max       2014-08-11   867  		u8tmp = 0x06;
395d00d1ca89478 Antti Palosaari  2013-02-25   868  		break;
395d00d1ca89478 Antti Palosaari  2013-02-25   869  	case M88DS3103_TS_PARALLEL:
79d0933032d657e nibble.max       2014-08-11   870  		u8tmp = 0x02;
e6089feca460cb4 Brad Love        2020-02-01   871  		if (dev->chiptype == M88DS3103_CHIPTYPE_3103B) {
e6089feca460cb4 Brad Love        2020-02-01   872  			u8tmp = 0x01;
e6089feca460cb4 Brad Love        2020-02-01   873  			u8tmp1 = 0x01;
e6089feca460cb4 Brad Love        2020-02-01   874  		}
395d00d1ca89478 Antti Palosaari  2013-02-25   875  		break;
395d00d1ca89478 Antti Palosaari  2013-02-25   876  	case M88DS3103_TS_CI:
79d0933032d657e nibble.max       2014-08-11   877  		u8tmp = 0x03;
395d00d1ca89478 Antti Palosaari  2013-02-25   878  		break;
395d00d1ca89478 Antti Palosaari  2013-02-25   879  	default:
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   880  		dev_dbg(&client->dev, "invalid ts_mode\n");
395d00d1ca89478 Antti Palosaari  2013-02-25   881  		ret = -EINVAL;
395d00d1ca89478 Antti Palosaari  2013-02-25   882  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   883  	}
395d00d1ca89478 Antti Palosaari  2013-02-25   884  
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   885  	if (dev->cfg->ts_clk_pol)
79d0933032d657e nibble.max       2014-08-11   886  		u8tmp |= 0x40;
79d0933032d657e nibble.max       2014-08-11   887  
395d00d1ca89478 Antti Palosaari  2013-02-25   888  	/* TS mode */
478932b16052f5d Antti Palosaari  2015-04-16   889  	ret = regmap_write(dev->regmap, 0xfd, u8tmp);
395d00d1ca89478 Antti Palosaari  2013-02-25   890  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   891  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   892  
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   893  	switch (dev->cfg->ts_mode) {
395d00d1ca89478 Antti Palosaari  2013-02-25   894  	case M88DS3103_TS_SERIAL:
395d00d1ca89478 Antti Palosaari  2013-02-25   895  	case M88DS3103_TS_SERIAL_D7:
56ea37da3b93dfe Antti Palosaari  2015-10-03   896  		ret = m88ds3103_update_bits(dev, 0x29, 0x20, u8tmp1);
395d00d1ca89478 Antti Palosaari  2013-02-25   897  		if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   898  			goto err;
334ef18e879980e Antti Palosaari  2016-06-29   899  		u16tmp = 0;
334ef18e879980e Antti Palosaari  2016-06-29   900  		u8tmp1 = 0x3f;
334ef18e879980e Antti Palosaari  2016-06-29   901  		u8tmp2 = 0x3f;
b6851419409664b nibble.max       2014-11-05   902  		break;
e6089feca460cb4 Brad Love        2020-02-01   903  	case M88DS3103_TS_PARALLEL:
e6089feca460cb4 Brad Love        2020-02-01   904  		if (dev->chiptype == M88DS3103_CHIPTYPE_3103B) {
e6089feca460cb4 Brad Love        2020-02-01   905  			ret = m88ds3103_update_bits(dev, 0x29, 0x01, u8tmp1);
e6089feca460cb4 Brad Love        2020-02-01   906  			if (ret)
e6089feca460cb4 Brad Love        2020-02-01   907  				goto err;
e6089feca460cb4 Brad Love        2020-02-01   908  		}
e6089feca460cb4 Brad Love        2020-02-01   909  		/* fall through */
b6851419409664b nibble.max       2014-11-05  @910  	default:
334ef18e879980e Antti Palosaari  2016-06-29   911  		u16tmp = DIV_ROUND_UP(target_mclk, dev->cfg->ts_clk);
334ef18e879980e Antti Palosaari  2016-06-29   912  		u8tmp1 = u16tmp / 2 - 1;
334ef18e879980e Antti Palosaari  2016-06-29   913  		u8tmp2 = DIV_ROUND_UP(u16tmp, 2) - 1;
395d00d1ca89478 Antti Palosaari  2013-02-25   914  	}
395d00d1ca89478 Antti Palosaari  2013-02-25   915  
f5d9b88db7222bf Antti Palosaari  2016-06-29   916  	dev_dbg(&client->dev, "target_mclk=%u ts_clk=%u ts_clk_divide_ratio=%u\n",
334ef18e879980e Antti Palosaari  2016-06-29   917  		target_mclk, dev->cfg->ts_clk, u16tmp);
395d00d1ca89478 Antti Palosaari  2013-02-25   918  
395d00d1ca89478 Antti Palosaari  2013-02-25   919  	/* u8tmp1[5:2] => fe[3:0], u8tmp1[1:0] => ea[7:6] */
395d00d1ca89478 Antti Palosaari  2013-02-25   920  	/* u8tmp2[5:0] => ea[5:0] */
334ef18e879980e Antti Palosaari  2016-06-29   921  	u8tmp = (u8tmp1 >> 2) & 0x0f;
334ef18e879980e Antti Palosaari  2016-06-29   922  	ret = regmap_update_bits(dev->regmap, 0xfe, 0x0f, u8tmp);
395d00d1ca89478 Antti Palosaari  2013-02-25   923  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   924  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   925  	u8tmp = ((u8tmp1 & 0x03) << 6) | u8tmp2 >> 0;
478932b16052f5d Antti Palosaari  2015-04-16   926  	ret = regmap_write(dev->regmap, 0xea, u8tmp);
395d00d1ca89478 Antti Palosaari  2013-02-25   927  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   928  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   929  
395d00d1ca89478 Antti Palosaari  2013-02-25   930  	if (c->symbol_rate <= 3000000)
395d00d1ca89478 Antti Palosaari  2013-02-25   931  		u8tmp = 0x20;
395d00d1ca89478 Antti Palosaari  2013-02-25   932  	else if (c->symbol_rate <= 10000000)
395d00d1ca89478 Antti Palosaari  2013-02-25   933  		u8tmp = 0x10;
395d00d1ca89478 Antti Palosaari  2013-02-25   934  	else
395d00d1ca89478 Antti Palosaari  2013-02-25   935  		u8tmp = 0x06;
395d00d1ca89478 Antti Palosaari  2013-02-25   936  
e6089feca460cb4 Brad Love        2020-02-01   937  	if (dev->chiptype == M88DS3103_CHIPTYPE_3103B)
e6089feca460cb4 Brad Love        2020-02-01   938  		m88ds3103b_set_mclk(dev, target_mclk / 1000);
e6089feca460cb4 Brad Love        2020-02-01   939  
478932b16052f5d Antti Palosaari  2015-04-16   940  	ret = regmap_write(dev->regmap, 0xc3, 0x08);
395d00d1ca89478 Antti Palosaari  2013-02-25   941  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   942  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   943  
478932b16052f5d Antti Palosaari  2015-04-16   944  	ret = regmap_write(dev->regmap, 0xc8, u8tmp);
395d00d1ca89478 Antti Palosaari  2013-02-25   945  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   946  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   947  
478932b16052f5d Antti Palosaari  2015-04-16   948  	ret = regmap_write(dev->regmap, 0xc4, 0x08);
395d00d1ca89478 Antti Palosaari  2013-02-25   949  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   950  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   951  
478932b16052f5d Antti Palosaari  2015-04-16   952  	ret = regmap_write(dev->regmap, 0xc7, 0x00);
395d00d1ca89478 Antti Palosaari  2013-02-25   953  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   954  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   955  
f5d9b88db7222bf Antti Palosaari  2016-06-29   956  	u16tmp = DIV_ROUND_CLOSEST_ULL((u64)c->symbol_rate * 0x10000, dev->mclk);
395d00d1ca89478 Antti Palosaari  2013-02-25   957  	buf[0] = (u16tmp >> 0) & 0xff;
395d00d1ca89478 Antti Palosaari  2013-02-25   958  	buf[1] = (u16tmp >> 8) & 0xff;
478932b16052f5d Antti Palosaari  2015-04-16   959  	ret = regmap_bulk_write(dev->regmap, 0x61, buf, 2);
395d00d1ca89478 Antti Palosaari  2013-02-25   960  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   961  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   962  
56ea37da3b93dfe Antti Palosaari  2015-10-03   963  	ret = m88ds3103_update_bits(dev, 0x4d, 0x02, dev->cfg->spec_inv << 1);
395d00d1ca89478 Antti Palosaari  2013-02-25   964  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   965  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   966  
56ea37da3b93dfe Antti Palosaari  2015-10-03   967  	ret = m88ds3103_update_bits(dev, 0x30, 0x10, dev->cfg->agc_inv << 4);
395d00d1ca89478 Antti Palosaari  2013-02-25   968  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   969  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   970  
478932b16052f5d Antti Palosaari  2015-04-16   971  	ret = regmap_write(dev->regmap, 0x33, dev->cfg->agc);
395d00d1ca89478 Antti Palosaari  2013-02-25   972  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   973  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   974  
e6089feca460cb4 Brad Love        2020-02-01   975  	if (dev->chiptype == M88DS3103_CHIPTYPE_3103B) {
e6089feca460cb4 Brad Love        2020-02-01   976  		/* enable/disable 192M LDPC clock */
e6089feca460cb4 Brad Love        2020-02-01   977  		ret = m88ds3103_update_bits(dev, 0x29, 0x10,
e6089feca460cb4 Brad Love        2020-02-01   978  				(c->delivery_system == SYS_DVBS) ? 0x10 : 0x0);
e6089feca460cb4 Brad Love        2020-02-01   979  		if (ret)
e6089feca460cb4 Brad Love        2020-02-01   980  			goto err;
e6089feca460cb4 Brad Love        2020-02-01   981  
e6089feca460cb4 Brad Love        2020-02-01   982  		ret = m88ds3103_update_bits(dev, 0xc9, 0x08, 0x08);
c4ed27cfed45c16 Sean Young       2020-04-16   983  		if (ret)
c4ed27cfed45c16 Sean Young       2020-04-16   984  			goto err;
e6089feca460cb4 Brad Love        2020-02-01   985  	}
e6089feca460cb4 Brad Love        2020-02-01   986  
7978b8a1bc8ae0f Antti Palosaari  2015-04-16   987  	dev_dbg(&client->dev, "carrier offset=%d\n",
f5d9b88db7222bf Antti Palosaari  2016-06-29   988  		(tuner_frequency_khz - c->frequency));
395d00d1ca89478 Antti Palosaari  2013-02-25   989  
f5d9b88db7222bf Antti Palosaari  2016-06-29   990  	/* Use 32-bit calc as there is no s64 version of DIV_ROUND_CLOSEST() */
f5d9b88db7222bf Antti Palosaari  2016-06-29   991  	s32tmp = 0x10000 * (tuner_frequency_khz - c->frequency);
f5d9b88db7222bf Antti Palosaari  2016-06-29   992  	s32tmp = DIV_ROUND_CLOSEST(s32tmp, dev->mclk / 1000);
395d00d1ca89478 Antti Palosaari  2013-02-25   993  	buf[0] = (s32tmp >> 0) & 0xff;
395d00d1ca89478 Antti Palosaari  2013-02-25   994  	buf[1] = (s32tmp >> 8) & 0xff;
478932b16052f5d Antti Palosaari  2015-04-16   995  	ret = regmap_bulk_write(dev->regmap, 0x5e, buf, 2);
395d00d1ca89478 Antti Palosaari  2013-02-25   996  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25   997  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25   998  
478932b16052f5d Antti Palosaari  2015-04-16   999  	ret = regmap_write(dev->regmap, 0x00, 0x00);
395d00d1ca89478 Antti Palosaari  2013-02-25  1000  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25  1001  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25  1002  
478932b16052f5d Antti Palosaari  2015-04-16  1003  	ret = regmap_write(dev->regmap, 0xb2, 0x00);
395d00d1ca89478 Antti Palosaari  2013-02-25  1004  	if (ret)
395d00d1ca89478 Antti Palosaari  2013-02-25  1005  		goto err;
395d00d1ca89478 Antti Palosaari  2013-02-25  1006  
7978b8a1bc8ae0f Antti Palosaari  2015-04-16  1007  	dev->delivery_system = c->delivery_system;
395d00d1ca89478 Antti Palosaari  2013-02-25  1008  
395d00d1ca89478 Antti Palosaari  2013-02-25  1009  	return 0;
395d00d1ca89478 Antti Palosaari  2013-02-25  1010  err:
7978b8a1bc8ae0f Antti Palosaari  2015-04-16  1011  	dev_dbg(&client->dev, "failed=%d\n", ret);
395d00d1ca89478 Antti Palosaari  2013-02-25  1012  	return ret;
395d00d1ca89478 Antti Palosaari  2013-02-25  1013  }
395d00d1ca89478 Antti Palosaari  2013-02-25  1014  

:::::: The code at line 910 was first introduced by commit
:::::: b6851419409664bc564ce5148bbec1141944c710 [media] m88ds3103: change ts clock config for serial mode

:::::: TO: nibble.max <nibble.max@gmail.com>
:::::: CC: Mauro Carvalho Chehab <mchehab@osg.samsung.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010091336.B4hdfmE8-lkp%40intel.com.

--ibTvN161/egqYuK8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Rtprkf8AkcnmHL0LAgA=

--ibTvN161/egqYuK8--
