Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMNC6GCQMGQEHJSNUZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id B383139CCF9
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 06:38:10 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id j8-20020a17090a8408b02901651fe80217sf6187245pjn.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 21:38:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622954289; cv=pass;
        d=google.com; s=arc-20160816;
        b=U76Egb55hAfOj1iCGETwPvxP2knF29H8ZC2i2ee8Tw87/dI/HmeBnfMP7r35QjFGig
         9Ys2N1eS9fauDV+oZ1Z5S7SXIVop5JZJm4cOovHRf5Wts/d8R2lWXccGfLQfZi5G2wYq
         t0fAS3ko5j9UwRdZUxR3+ZOtRQBqhM5tE1uquovnjxIkIC/JODmfD4x170xeoUReyAaF
         DQMWyt/PpDLwtU+5wNsoYfc4yU1I3yJC5tQw1o2q5Lsoy+En3BGyLjRblno3LuKGBy+3
         yM385kSqOlhq1073qb8cQFEDW1GWaKuj46zufY7kCp9DT9R685gERW/DRho2A1PzI7Ji
         J6tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=G87oFtNS654p5OuQo2vEqiEPQhJ8i16Ne2JFsazJF/U=;
        b=rhmvl59OMjjqhyTMm2PsfEwQJd9zquq5y3/ow2TN3OB58h650hMCNdzfpa08t7E9zh
         9cQDpVctcjbNKaYk6GNgw8dwO3O5BRbOSfMREdyXxuVOz8kFNDglnYzm+9iVn2XPbvG0
         WIhogYE4ED5F8JNsALRIsfRWXuXUQ3kHccdWxc3JdESxYfFA+N/H6E/H6Oi0oABZ7TSH
         5I2beMjHIwZrYJPAZyeQONzNZj5VZEMDH8b98bleAipXp51K/CBDS53g2IFPeaGmP9q0
         3OHENzN0ADONLutarvHjJzmxXAec/kVY+S863xyHRTD5mw/NgAk7Lh2xBucF7woYaQi9
         YEug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G87oFtNS654p5OuQo2vEqiEPQhJ8i16Ne2JFsazJF/U=;
        b=BJFo68WOkDhsPihinlkwYqkV9KxdjBHOvNW6+i0FA9rQVtifCr5rgAzJltGzVXttqW
         rjSUD2F1CJx/ie2LYh1nRoM+uz5usvEJF3uf8fFxb552gXcvxwDl6NnxT3EiZGwLoWph
         o1MdukKQgHGZGxtaQgYUnk8AgN6yTwyJXQnlhOdXVEJlAdeg3GPsqPWc9G4XTa4WOgIH
         txh9SGDWYXUi/sJ8heuAFjpxjcEx0FSF513iFYgY8yOPsNpoZMW93BiHFReBAGsZa295
         SKxP8pI3TmWWh3HIWAE/0x7hTKDmXos+7YpY2WBKT7Cgn9w4sA8Bgvj+29r6+Uz7lSWc
         r7GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G87oFtNS654p5OuQo2vEqiEPQhJ8i16Ne2JFsazJF/U=;
        b=tojsdqpFizP7JE9aWbvBqg6wqRBbm1vezCytrIETutgw2zMLUinRtJ6ZThP8KlpP+t
         fe23cV38cJdRtASf6Ee28+IpeAuHZAkSXGwzrlIM5YTOryS6iLi9+qTMBmJYOOczAtfC
         vTunFKzt4tynqlhIW2g1R/4AOLAQJUi0YxRDRFaL0j8md7mVOgrhhVj6P7gJ6F8K/tHF
         bf4dQFOSn6pp+dA9yve0llu92tBxC7n86P+wFAp7KGDym3Ay6QWmorFTYNBho7ojzbdu
         cBH74elGLuiarc7+IdTQ2bhtEIK34MDZ60Lqyr5xBId6rqmO2Gt08FE3bBLtgiseCXtE
         yVdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ENcOaUYKvT0yvNewZMB0sbKEw53uVyaM8V6BmHD8h7nNs6lOu
	euMEZg6RWGoXEhTSGi+H0gc=
X-Google-Smtp-Source: ABdhPJxKxPXwBZ4kjMeTv0Qern4CHLOOat73GlWbZ/yYtKxPMhuMCRVIFwXrOw3rqbDDBSTC4AFF0Q==
X-Received: by 2002:a63:b243:: with SMTP id t3mr12278343pgo.253.1622954289248;
        Sat, 05 Jun 2021 21:38:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9517:: with SMTP id b23ls5214787pfp.3.gmail; Sat, 05 Jun
 2021 21:38:08 -0700 (PDT)
X-Received: by 2002:a63:d710:: with SMTP id d16mr12043374pgg.214.1622954288568;
        Sat, 05 Jun 2021 21:38:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622954288; cv=none;
        d=google.com; s=arc-20160816;
        b=tFD93HmfneQEPZE1fPD3DEfjK18cAxV7MVlyUlbnO1CvQKHM9UarLueazFopleQ64q
         8mx5IP1c7Bx8a1wMFbZpHlvu8r/v8ZaaGNpkPw2K/jufTOb5K57UaAnCNRGKJS61dlk/
         yaBlKLWSZKp2MjU2NrKNdMDomBRUSbUe7rnsNaWoopPkWe0iC2BcC/2wOc6s7K5Lx+tX
         vl4S2oWxEXzCdNMBaoeJpjOHWK76Ok0SGG19RrOR3p46n+JyWt7UpmKn0uPQT5R2twVJ
         wBo4RHj1B8R2oFV9fvzUq0k8vDnqHMzQvY6PnlEpvhFCHEIPs+GMsxVSJYz8JibZ3red
         o3qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=4FqWtNw9QAGW1pi2O05QMVsX83EL+WWDweZIPy3N0yw=;
        b=kufO3VZtm1nmCJlg0HWfeH62PCw2lIGpSNb9a+v8VKQ2gFXJU7MzvnEOh8zkZClqg+
         /3PB7g0hR5ZI8TfsDot3MGbJxikZcLM2qwm7+qcRn3XkSvvdDC8gdruBvD81/GzXJcD4
         WU0qYAmFpFli9kqg4FumCbOIgjHWxcCTRba6RTzN/Iz/i4BUbvlvovJvIjMvwlDQAaje
         mG3uLYvHDhVNgJI820F/M82zdtiCKhMBQk5SeJKm29FF/Be6SfFbYJaJqW47DHKhDav9
         Rosjvciq/WLvNDcMF7+SXFFqJ/ZAwq/4Cdea9T99NwWw8DOUiYL1sTzEB2g3xU8J8It2
         FCGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id n5si677095pgf.5.2021.06.05.21.38.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Jun 2021 21:38:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: AN0xi+YN7LYAgyXwmp1KrE7C+HA+Lz8q65hWlMQF2benARVB8H0kzG/PgrPra8z99LWGolNRrO
 GqJKMosvJUAg==
X-IronPort-AV: E=McAfee;i="6200,9189,10006"; a="184848750"
X-IronPort-AV: E=Sophos;i="5.83,252,1616482800"; 
   d="gz'50?scan'50,208,50";a="184848750"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2021 21:38:07 -0700
IronPort-SDR: S7BfzcTkd/1ZTlduEEl20QHf1FD915wu4niAVse6pX+3SsqWS3/vfH+U4+hVN6DH5sHdZAQSJm
 4Wv/KYNMcizw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,252,1616482800"; 
   d="gz'50?scan'50,208,50";a="551558336"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 05 Jun 2021 21:38:06 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lpkY1-0007nc-EV; Sun, 06 Jun 2021 04:38:05 +0000
Date: Sun, 6 Jun 2021 12:37:43 +0800
From: kernel test robot <lkp@intel.com>
To: Jeff LaBundy <jeff@labundy.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size of
 2560 bytes in function 'iqs626_probe'
Message-ID: <202106061241.dpaJ49Wc-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jeff,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
commit: f1d2809de97adc422967b6de59f0f6199769eb93 Input: Add support for Azoteq IQS626A
date:   2 months ago
config: powerpc-randconfig-r023-20210606 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 551a697c5cf33275b66add4fc467fcf59084cffb)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f1d2809de97adc422967b6de59f0f6199769eb93
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f1d2809de97adc422967b6de59f0f6199769eb93
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/input/misc/iqs626a.c:13:
   In file included from include/linux/completion.h:12:
   In file included from include/linux/swait.h:5:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size of 2560 bytes in function 'iqs626_probe' [-Wframe-larger-than=]
   static int iqs626_probe(struct i2c_client *client)
              ^
   2 warnings generated.


vim +/iqs626_probe +1645 drivers/input/misc/iqs626a.c

  1644	
> 1645	static int iqs626_probe(struct i2c_client *client)
  1646	{
  1647		struct iqs626_ver_info ver_info;
  1648		struct iqs626_private *iqs626;
  1649		int error;
  1650	
  1651		iqs626 = devm_kzalloc(&client->dev, sizeof(*iqs626), GFP_KERNEL);
  1652		if (!iqs626)
  1653			return -ENOMEM;
  1654	
  1655		i2c_set_clientdata(client, iqs626);
  1656		iqs626->client = client;
  1657	
  1658		iqs626->regmap = devm_regmap_init_i2c(client, &iqs626_regmap_config);
  1659		if (IS_ERR(iqs626->regmap)) {
  1660			error = PTR_ERR(iqs626->regmap);
  1661			dev_err(&client->dev, "Failed to initialize register map: %d\n",
  1662				error);
  1663			return error;
  1664		}
  1665	
  1666		init_completion(&iqs626->ati_done);
  1667	
  1668		error = regmap_raw_read(iqs626->regmap, IQS626_VER_INFO, &ver_info,
  1669					sizeof(ver_info));
  1670		if (error)
  1671			return error;
  1672	
  1673		if (ver_info.prod_num != IQS626_VER_INFO_PROD_NUM) {
  1674			dev_err(&client->dev, "Unrecognized product number: 0x%02X\n",
  1675				ver_info.prod_num);
  1676			return -EINVAL;
  1677		}
  1678	
  1679		error = iqs626_parse_prop(iqs626);
  1680		if (error)
  1681			return error;
  1682	
  1683		error = iqs626_input_init(iqs626);
  1684		if (error)
  1685			return error;
  1686	
  1687		error = devm_request_threaded_irq(&client->dev, client->irq,
  1688						  NULL, iqs626_irq, IRQF_ONESHOT,
  1689						  client->name, iqs626);
  1690		if (error) {
  1691			dev_err(&client->dev, "Failed to request IRQ: %d\n", error);
  1692			return error;
  1693		}
  1694	
  1695		if (!wait_for_completion_timeout(&iqs626->ati_done,
  1696						 msecs_to_jiffies(2000))) {
  1697			dev_err(&client->dev, "Failed to complete ATI\n");
  1698			return -ETIMEDOUT;
  1699		}
  1700	
  1701		/*
  1702		 * The keypad may include one or more switches and is not registered
  1703		 * until ATI is complete and the initial switch states are read.
  1704		 */
  1705		error = input_register_device(iqs626->keypad);
  1706		if (error)
  1707			dev_err(&client->dev, "Failed to register keypad: %d\n", error);
  1708	
  1709		return error;
  1710	}
  1711	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106061241.dpaJ49Wc-lkp%40intel.com.

--T4sUOijqQbZv57TR
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
JyMj0bCXxpn1tfosYxvOgPLx+v8BPRMOtwCCAQA=

--T4sUOijqQbZv57TR--
