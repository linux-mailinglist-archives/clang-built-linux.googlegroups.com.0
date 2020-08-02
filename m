Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4UDTL4QKGQEODHZEDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 357C323560E
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Aug 2020 11:05:56 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id q12sf16503567qvm.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 02:05:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596359155; cv=pass;
        d=google.com; s=arc-20160816;
        b=ROM4nlxRYgZvwkgkI1pKraklg2/aBh/NHfL63bdEE5RW0+IbetBYrB1euCA1h2LYIW
         iv4gUzddPjs3eh6TbcxO26tTPC7OqPZ422DTfewCnVXC3trE1z2YcOsXu5U0QNlTwhyt
         5KGuhNyTfko/4QKmBTitP4DBIembHkByDRDHggAnjQTLgNrGhkYboHUzp92iRZnv/QUZ
         QRVqApZSGfl4IF9lEs6myLPuhQTEeXbHQ6dRKaFyUJCWeQdzrG2U8epH9tCOv6pajXy/
         430xSKDpi2JyIlqDYzcCz8OYy3/3Sj0NadRHJnSktYE8Q4xjtTfKaopsnGFDg45qnd/c
         OcUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=qjWANC6Bj/KD9HY9i8KJBw/GIXAtndzdAXu31Xf7Eeo=;
        b=QLmHD7pUaS6a7KAliucajFoHLKDXt8tY0YivzEv3InEpsr4lSGC8N5USxXvWd1bRxg
         nzd9OZ/WKZM8QHuAiQl5jc/cGtacaogD4Ir/IyShaQ5z32ydKOR/raPnWM2J81MzwcJH
         QEiyGTJxPIJAyk1Pguc6CfvCwyIjk/Mwxf8YOJ05H8IkRxzNdWbg3oIjO9Putrmooryl
         Lzt28oqZAKM8Tajyi+PSCNqFbb52X0OQjjc0IHwbOTKEirLmuaOV7tqVjtxb+LWLJmGg
         2C+UGBFJKtHquk5uoNL9IfP+mfswsBiIgDM7jPRdPEH19B69iwXkzCwCei4gx4+75Lrl
         rjNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qjWANC6Bj/KD9HY9i8KJBw/GIXAtndzdAXu31Xf7Eeo=;
        b=m3DAvipu+qICICWGiFSvxwzN1QgF3UWCI1snECwPmkQP+rKtAPm/qENM77T/KKiCMC
         33mZhEyv+4GYx3K9NG7fSdUXVhq9un1mRqAupM3nk6xaJ9UXDrpF35ApckV1FnRR3i86
         Mm2mnM2U4icWlXjTgiOd8oQMaZXBC9d1V5fsexeK93pD+aTKYFYL7ewoiOJxyWf0FVHZ
         Pa3xQYB53coBiyLK6wT8aM8caL92OJ0yUinbso70al9rt0iM6rK0VrjzOa09cqqDl6t+
         gwihN5dhqy+Jkoa1s2gSqV1a+Ziz4BB59+iCsJbi7ihdK+/MWzJb7rqXXgZCLJV006ws
         8JaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qjWANC6Bj/KD9HY9i8KJBw/GIXAtndzdAXu31Xf7Eeo=;
        b=o4E0MC6yTi+T1LxJKuf/wwWvRwLUeklq/V9N76W0lCISC2IOixcbZgfhLt1BW0jGvt
         7nvpEnrBjCp0R8LMWdvknbJfESR+U+9qSJltmkxm5Gi+mHlnTuJQVHTT0BCXgd+u92aj
         QMR4uq/y4pFUIgnAe+1SUqhl6ZatiDxUESXPp9EK+c7t2sWkrqxPNX/MnW9auTk6QobZ
         cr0rPfIN5yIpKfzfSu4buBsVwMA8JISIvor69KH6XUkaHCPJdk8omtLC48QUg40jd/rJ
         a0b/OZLHq/UP758TgArkxr8Ca7a+wr6m7s9EQaOBLbGNMPSXdlAw+OmSfKrgvSlTOh/p
         vegQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zUZYxiotZiROcMIvpYs070Jhu2dUTQUdDB2BAMDERvOv5eXHb
	GmPK3DtGPQhor5nOgbNFDrs=
X-Google-Smtp-Source: ABdhPJyvjVbf7dd009F7RxbaAihR+ZPDrEdD36kSV9OcsNwQzfoqaiL/wwCGvP5YgMZ2VhneExdk+Q==
X-Received: by 2002:a0c:8c0e:: with SMTP id n14mr3915788qvb.86.1596359154586;
        Sun, 02 Aug 2020 02:05:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:22ca:: with SMTP id g10ls5433293qta.3.gmail; Sun, 02 Aug
 2020 02:05:54 -0700 (PDT)
X-Received: by 2002:ac8:1c6c:: with SMTP id j41mr11752495qtk.226.1596359154184;
        Sun, 02 Aug 2020 02:05:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596359154; cv=none;
        d=google.com; s=arc-20160816;
        b=S9i40t4wvmy8JI2P1+dinkvPWmdzRmmHDjDXxFFeWCg2XKsFubZIsv6GVevGt8+hrE
         BH1NbZRQtgdUF/TGFEtw5RWtDKN/kel0shKqjODGze9BJgwgZhxZRPmYTfIy/XM3/qow
         VeBHjWzI8QPs3DWyLaTzvaTfXDg2fl6Mjrp4MYBPM319bue3oBdpBaqozfFOUTEA2fnI
         OX1TuxI7lpufCuEEgdWPpElkHnxzRi3qv9Hs1Ysm76s4kL1E0CdmPH9ScbFjkr14sPer
         O5mQx8JvdbVgMJzo/2nTzDBJJP7cbLPS1frjNyDDpnOikN3kmQ3BAxeKC/6lFwbHWT9A
         o1cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=lpkNK0pmm2H5cyXLuptHjpm6az3YkoaZ6hwl9c27SzQ=;
        b=NE5B9q7hZfUt0F5hlVLjmwthQWk35LbsXWJIWG+EVcNZ0/5RwIfg61TKD7fMPWVKhe
         Q/oeEztZLuKIKBiWzVyM+xPhoR09nzoHauMO/LS+2DF8YMrKZ+EPahlm3PWvp8Lu/P60
         T+H5f8+Xk5yvr77VqsEf/asX4kbx/q/kpDttWbq5J03ZYs8lSdCiIZBHjjqRChZ1+fHV
         FhkjHD8iBFpK3XScW/550TX/7EP1mNrlDQHDfK0eiP1QyCFyyytJdxojxdAMtSkmomPC
         l938G6VEAoxTNEeUiZSPmVvntPXfWZ6Yl/IpPDTkwqERTtOxG4dhpaqn/E5K1W+/d7F2
         3UIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id d1si774602qtw.2.2020.08.02.02.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 02:05:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: R9Mf3i0wLYRu/dxTyQENL2ChNY1hKHMev1k45jRdnSkWH5VsDoimdjrFw9gdd9YOZPwOPGiO0d
 yHt4GLoQRzsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9700"; a="139556581"
X-IronPort-AV: E=Sophos;i="5.75,425,1589266800"; 
   d="gz'50?scan'50,208,50";a="139556581"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Aug 2020 02:05:52 -0700
IronPort-SDR: FArTmOhZgc55wq73oLIBRXVOvuqX6krrlWR1UvJimCYPLo0UpOk6uc1ptjsOYOhozRw98IeRbr
 0rHo8VUk7Pjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,425,1589266800"; 
   d="gz'50?scan'50,208,50";a="366011478"
Received: from lkp-server01.sh.intel.com (HELO e21119890065) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 02 Aug 2020 02:05:50 -0700
Received: from kbuild by e21119890065 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k29wD-0001ZM-BU; Sun, 02 Aug 2020 09:05:49 +0000
Date: Sun, 2 Aug 2020 17:05:07 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Pedersen <thomas@adapt-ip.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Johannes Berg <johannes.berg@intel.com>
Subject: [linux-next:master 12702/13260]
 drivers/net/wireless/ath/ath10k/mac.c:558:11: warning: 5 enumeration values
 not handled in switch: 'NL80211_CHAN_WIDTH_1', 'NL80211_CHAN_WIDTH_2',
 'NL80211_CHAN_WIDTH_4'...
Message-ID: <202008021758.8WOKqUOL%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
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


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   01830e6c042e8eb6eb202e05d7df8057135b4c26
commit: e5cb3d34a66de6294974056cc0cb70c4ea977c10 [12702/13260] nl80211: S1G band and channel definitions
config: x86_64-randconfig-r023-20200802 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 25af353b0e74907d5d50c8616b885bd1f73a68b3)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout e5cb3d34a66de6294974056cc0cb70c4ea977c10
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/wireless/ath/ath10k/mac.c:558:11: warning: 5 enumeration values not handled in switch: 'NL80211_CHAN_WIDTH_1', 'NL80211_CHAN_WIDTH_2', 'NL80211_CHAN_WIDTH_4'... [-Wswitch]
                   switch (chandef->width) {
                           ^
   drivers/net/wireless/ath/ath10k/mac.c:581:11: warning: 5 enumeration values not handled in switch: 'NL80211_CHAN_WIDTH_1', 'NL80211_CHAN_WIDTH_2', 'NL80211_CHAN_WIDTH_4'... [-Wswitch]
                   switch (chandef->width) {
                           ^
   drivers/net/wireless/ath/ath10k/mac.c:7954:7: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                              vifs[i].old_ctx->def.chan->center_freq,
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath10k/debug.h:285:37: note: expanded from macro 'ath10k_dbg'
                   __ath10k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   drivers/net/wireless/ath/ath10k/mac.c:7955:7: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                              vifs[i].new_ctx->def.chan->center_freq,
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath10k/debug.h:285:37: note: expanded from macro 'ath10k_dbg'
                   __ath10k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   drivers/net/wireless/ath/ath10k/mac.c:8027:6: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                      ctx->def.chan->center_freq, ctx->def.width, ctx);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath10k/debug.h:285:37: note: expanded from macro 'ath10k_dbg'
                   __ath10k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   drivers/net/wireless/ath/ath10k/mac.c:8051:6: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                      ctx->def.chan->center_freq, ctx->def.width, ctx);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath10k/debug.h:285:37: note: expanded from macro 'ath10k_dbg'
                   __ath10k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   drivers/net/wireless/ath/ath10k/mac.c:8116:6: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                      ctx->def.chan->center_freq, ctx->def.width, ctx, changed);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath10k/debug.h:285:37: note: expanded from macro 'ath10k_dbg'
                   __ath10k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   7 warnings generated.

vim +558 drivers/net/wireless/ath/ath10k/mac.c

5e3dd157d7e70f Kalle Valo           2013-06-12  550  
5e3dd157d7e70f Kalle Valo           2013-06-12  551  static inline enum wmi_phy_mode
5e3dd157d7e70f Kalle Valo           2013-06-12  552  chan_to_phymode(const struct cfg80211_chan_def *chandef)
5e3dd157d7e70f Kalle Valo           2013-06-12  553  {
5e3dd157d7e70f Kalle Valo           2013-06-12  554  	enum wmi_phy_mode phymode = MODE_UNKNOWN;
5e3dd157d7e70f Kalle Valo           2013-06-12  555  
5e3dd157d7e70f Kalle Valo           2013-06-12  556  	switch (chandef->chan->band) {
57fbcce37be7c1 Johannes Berg        2016-04-12  557  	case NL80211_BAND_2GHZ:
5e3dd157d7e70f Kalle Valo           2013-06-12 @558  		switch (chandef->width) {
5e3dd157d7e70f Kalle Valo           2013-06-12  559  		case NL80211_CHAN_WIDTH_20_NOHT:
6faab1273f7978 Peter Oh             2014-12-18  560  			if (chandef->chan->flags & IEEE80211_CHAN_NO_OFDM)
6faab1273f7978 Peter Oh             2014-12-18  561  				phymode = MODE_11B;
6faab1273f7978 Peter Oh             2014-12-18  562  			else
5e3dd157d7e70f Kalle Valo           2013-06-12  563  				phymode = MODE_11G;
5e3dd157d7e70f Kalle Valo           2013-06-12  564  			break;
5e3dd157d7e70f Kalle Valo           2013-06-12  565  		case NL80211_CHAN_WIDTH_20:
5e3dd157d7e70f Kalle Valo           2013-06-12  566  			phymode = MODE_11NG_HT20;
5e3dd157d7e70f Kalle Valo           2013-06-12  567  			break;
5e3dd157d7e70f Kalle Valo           2013-06-12  568  		case NL80211_CHAN_WIDTH_40:
5e3dd157d7e70f Kalle Valo           2013-06-12  569  			phymode = MODE_11NG_HT40;
5e3dd157d7e70f Kalle Valo           2013-06-12  570  			break;
0f817ed52d0787 John W. Linville     2013-06-27  571  		case NL80211_CHAN_WIDTH_5:
0f817ed52d0787 John W. Linville     2013-06-27  572  		case NL80211_CHAN_WIDTH_10:
5e3dd157d7e70f Kalle Valo           2013-06-12  573  		case NL80211_CHAN_WIDTH_80:
5e3dd157d7e70f Kalle Valo           2013-06-12  574  		case NL80211_CHAN_WIDTH_80P80:
5e3dd157d7e70f Kalle Valo           2013-06-12  575  		case NL80211_CHAN_WIDTH_160:
5e3dd157d7e70f Kalle Valo           2013-06-12  576  			phymode = MODE_UNKNOWN;
5e3dd157d7e70f Kalle Valo           2013-06-12  577  			break;
5e3dd157d7e70f Kalle Valo           2013-06-12  578  		}
5e3dd157d7e70f Kalle Valo           2013-06-12  579  		break;
57fbcce37be7c1 Johannes Berg        2016-04-12  580  	case NL80211_BAND_5GHZ:
5e3dd157d7e70f Kalle Valo           2013-06-12  581  		switch (chandef->width) {
5e3dd157d7e70f Kalle Valo           2013-06-12  582  		case NL80211_CHAN_WIDTH_20_NOHT:
5e3dd157d7e70f Kalle Valo           2013-06-12  583  			phymode = MODE_11A;
5e3dd157d7e70f Kalle Valo           2013-06-12  584  			break;
5e3dd157d7e70f Kalle Valo           2013-06-12  585  		case NL80211_CHAN_WIDTH_20:
5e3dd157d7e70f Kalle Valo           2013-06-12  586  			phymode = MODE_11NA_HT20;
5e3dd157d7e70f Kalle Valo           2013-06-12  587  			break;
5e3dd157d7e70f Kalle Valo           2013-06-12  588  		case NL80211_CHAN_WIDTH_40:
5e3dd157d7e70f Kalle Valo           2013-06-12  589  			phymode = MODE_11NA_HT40;
5e3dd157d7e70f Kalle Valo           2013-06-12  590  			break;
5e3dd157d7e70f Kalle Valo           2013-06-12  591  		case NL80211_CHAN_WIDTH_80:
5e3dd157d7e70f Kalle Valo           2013-06-12  592  			phymode = MODE_11AC_VHT80;
5e3dd157d7e70f Kalle Valo           2013-06-12  593  			break;
bc1efd739b610a Sebastian Gottschall 2017-01-12  594  		case NL80211_CHAN_WIDTH_160:
bc1efd739b610a Sebastian Gottschall 2017-01-12  595  			phymode = MODE_11AC_VHT160;
bc1efd739b610a Sebastian Gottschall 2017-01-12  596  			break;
bc1efd739b610a Sebastian Gottschall 2017-01-12  597  		case NL80211_CHAN_WIDTH_80P80:
bc1efd739b610a Sebastian Gottschall 2017-01-12  598  			phymode = MODE_11AC_VHT80_80;
bc1efd739b610a Sebastian Gottschall 2017-01-12  599  			break;
0f817ed52d0787 John W. Linville     2013-06-27  600  		case NL80211_CHAN_WIDTH_5:
0f817ed52d0787 John W. Linville     2013-06-27  601  		case NL80211_CHAN_WIDTH_10:
5e3dd157d7e70f Kalle Valo           2013-06-12  602  			phymode = MODE_UNKNOWN;
5e3dd157d7e70f Kalle Valo           2013-06-12  603  			break;
5e3dd157d7e70f Kalle Valo           2013-06-12  604  		}
5e3dd157d7e70f Kalle Valo           2013-06-12  605  		break;
5e3dd157d7e70f Kalle Valo           2013-06-12  606  	default:
5e3dd157d7e70f Kalle Valo           2013-06-12  607  		break;
5e3dd157d7e70f Kalle Valo           2013-06-12  608  	}
5e3dd157d7e70f Kalle Valo           2013-06-12  609  
5e3dd157d7e70f Kalle Valo           2013-06-12  610  	WARN_ON(phymode == MODE_UNKNOWN);
5e3dd157d7e70f Kalle Valo           2013-06-12  611  	return phymode;
5e3dd157d7e70f Kalle Valo           2013-06-12  612  }
5e3dd157d7e70f Kalle Valo           2013-06-12  613  

:::::: The code at line 558 was first introduced by commit
:::::: 5e3dd157d7e70f0e3cea3f2573ed69fb156a19d5 ath10k: mac80211 driver for Qualcomm Atheros 802.11ac CQA98xx devices

:::::: TO: Kalle Valo <kvalo@qca.qualcomm.com>
:::::: CC: Kalle Valo <kvalo@qca.qualcomm.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008021758.8WOKqUOL%25lkp%40intel.com.

--x+6KMIRAuhnl3hBn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--x+6KMIRAuhnl3hBn--
