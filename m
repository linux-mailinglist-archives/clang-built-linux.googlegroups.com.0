Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBWU2KAQMGQEB7JBGAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFF9322625
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 08:08:56 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id u188sf2716177pfu.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 23:08:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614064135; cv=pass;
        d=google.com; s=arc-20160816;
        b=fafqKnnnFQL6hTPcHVk2moicYCqqejigxuIPieQsyLLjqPr4sqw+L3SfvV8HmCifxG
         5gmYuKqKjkND+2+rwqxeTEu8Dyrl50YRXBfJ82yZqUaxV4dfoQxBLUjvHCdKcT8Ho+nn
         EQs+2D042BA3vZWrQu3CvhiEc2IPeTSo8Dl3B7PhQZLMHDboS7utkYhyxF3aKO8lxYQC
         IxWFkIboGGxuDyfwQdI+rdu1rHBFPxQO5IohSeqwYybnDMOpNocXlbs32nwcooIDFiIM
         G0pS4x6KlaIbN4UooP8P4coGsMg0Rn6SQ0abRAz2nvB+6ISFvia5+uT8KHHq/aMgoPWO
         XVug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CUh68PxDrcwRCOj1YSHSt5FQKGmuYiDSjupFujuqh/E=;
        b=OoUPFYWzpYDERTxIiSQsDb67LZdZY+EdNnlV0GgxqWPfs3cd5j2K5gM2BacK45wN91
         mrD6znoW9fnyofWwkCFN0TUTBHs8mAlA53h0Sasa0le5QAyJxaYJTgZnnmAqbIvSrmUD
         yIrny/mG8XR56tf/As+yjK2F9zMYeCQLMFAfq2imZmAWbxTADgqV1ChQnlQQ13V3HwcT
         5vUZ1HL17GljUHw9tc0xHTniTuwZPYfTHnvMgEgIV00Xrq2qquzrwc3OjNhS7CspzT8B
         L+tj10r8oXJ6WuK9XSV2/f2EcbviKoFZTDSpPu2njYmU+fYSPbs1z+KVsvXi3CBUeW7q
         Rdyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CUh68PxDrcwRCOj1YSHSt5FQKGmuYiDSjupFujuqh/E=;
        b=NVPgo0JIWvBxlR8PNkC+qHJgTmv2TZ59dk+k3HhZp1wG+Sp9mUQhW9KtBtW4Gk7ARl
         rjfdPH5lh4epPk/A+b2bElMyUN8RkwLfBWfow1t3gD7SDC/3Yfu+aIY/BctAABRrTQZx
         4K3q4ExyHJhE/4+pS5QXowptlaX2CcqkJYWUwCdCqukOywMtvunvyfXkZmeiv99TfF7j
         b8SIv1vzt5KOLQRcVNftEl+uZkpxX8AKZ88yAWC4OaXwEjdOlj+jca/psjhaIDv3Z89+
         dcz3tJ5YZzRonuML69Eqn1u9c3kl91IHrgGRzg5XHBO7eeJIT/7BAa+9ZuJzJGcnOJo8
         phtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CUh68PxDrcwRCOj1YSHSt5FQKGmuYiDSjupFujuqh/E=;
        b=Vtyp7CEFs9Pjm1oZIFnGckb/4kLhuov7DoavtbB1e3Apq+rTjSTIMyyDDAX61YkESW
         2Ju0E9qTgQ2M1xYRCYl32qe/YZB2VAw0kXhINPVoi31Y3iSC/mQVv6hW5y5xGcVhIEv4
         eRcAWGNaNT/gZ+tOl4mhVvmD/PDhKVdNd7udkQc5CiJ4AeS3vVCu3gFiTx52HJ6Xvc1p
         Y4IjVsTVO5rAiyyNRgJldiJBwavmHXMxyCHRIszJXyT/YyseMDMTLHj0ZEKTCppcSnEv
         PTMOvO6K7C9+h4ohdROkCcfLV8tmo3NmwijyoqKq/9dzvDysKPrF36vL3WyrAgwAlLqq
         l+hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gBIXFY1BRcKe0lFf4Ce6KX13kcf/wcFco5bg/Y2eoUBURyEcC
	n+xU4xn8h78XtQxE6AyEruk=
X-Google-Smtp-Source: ABdhPJy2YFGlSZvaJP3arrt8/zdsAKyNmQoHSamORO08FUAEONVtekhfbcd4sXd8NNvri4rfnq2WMw==
X-Received: by 2002:a63:5223:: with SMTP id g35mr23252925pgb.255.1614064134944;
        Mon, 22 Feb 2021 23:08:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:300f:: with SMTP id hg15ls920490pjb.2.gmail; Mon, 22
 Feb 2021 23:08:54 -0800 (PST)
X-Received: by 2002:a17:90b:1c0c:: with SMTP id oc12mr5982358pjb.180.1614064134277;
        Mon, 22 Feb 2021 23:08:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614064134; cv=none;
        d=google.com; s=arc-20160816;
        b=DBj9lubGv5ucbJROb1DYXp70eOQRWPzUWXHHow3WnTrOFyX6L9EVw8YOWtVlf/80UL
         5lEn8kRjW3aWNGVTOEt41icSJoGnMNwc1xYtHKq20JaHDk9OH238vTIO3sXHR1zh/LTG
         yNB2FA6jXAtiRvlX0RnUAM6fhdjuR8tiRYhaFZlr+pDgV14XrxhCBakCITP+s9BFQbwG
         /FzIPkMkWFvdMGFHGQHnqoL2MtZfZYj+kvzPYPbs7iinY9Dt1SkLmUl/6wbNOUBi0dri
         lF/JsgLKkjenJ26kiwpVMx4rsA4+eZMNroCsO+yi8l4sh01qv0JDVcGJFrWK5l70HEjs
         8VNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=GU9KPRXJBQX5tRhs9SBrHk3chIMLtKdUaylI55Iqf7k=;
        b=zaGHrdpuFdj/mOpjA+Vtw09MXjdx39KY3wyMSgzX2DEXK0RbrdZMuJzbeZdWs7Ww3z
         dyijLBFteYrdGalr5sUH301M1zh2bQdNCmQ40T6Ng9pRwIAD5pbqAPqeJQ26Mu5jX33K
         /k1LdnNeXL7Yb4uj6wW0TPXcrafcbAD9BQcunhcdPJmEpaAoHi2V21m7UyT3QnUb/Jhi
         v2wnduoeWvFum/okEznf3jpJt/tUjrS7mom0NdykEZIOKwpWHG6yFFzvZ6/+EO3m4PoS
         r2nPUnQIjVVZr1fCPQdZmWgXPKrUjHitk1FYNUuE4Fqdn5iYA0UEibYq2f5cV9snpF8Z
         SYKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id k6si473793pgt.2.2021.02.22.23.08.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2021 23:08:54 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: VGu48ZfUE+MtTC9PrjL22IUHvvXmwbok885LB6XZYqc6TWHCI0xmZelDmxCglqOEd82VgKhGGq
 92r2YPnRNOBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="181276552"
X-IronPort-AV: E=Sophos;i="5.81,199,1610438400"; 
   d="gz'50?scan'50,208,50";a="181276552"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2021 23:08:53 -0800
IronPort-SDR: Ve6fjzACUkOtXgKwx022EzeC0WH3K2QcTm88Zq3TlPspI2pP6aozhKATKRV2qrRmHS3DN8+OnU
 4Kuy8tlc2evA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,199,1610438400"; 
   d="gz'50?scan'50,208,50";a="583096004"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 22 Feb 2021 23:08:50 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lERoP-0000zf-U7; Tue, 23 Feb 2021 07:08:49 +0000
Date: Tue, 23 Feb 2021 15:08:10 +0800
From: kernel test robot <lkp@intel.com>
To: Vaibhav Gupta <vaibhavgupta40@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: drivers/video/fbdev/aty/atyfb_base.c:2002:7: error: implicit
 declaration of function 'aty_ld_lcd'
Message-ID: <202102231555.12C2po65-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Vaibhav,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   3b9cdafb5358eb9f3790de2f728f765fef100731
commit: 4e139a9abb007370e8d0266ea31192e606c800cf fbdev: aty: remove CONFIG_PM container
date:   5 months ago
config: powerpc64-randconfig-r036-20210223 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4e139a9abb007370e8d0266ea31192e606c800cf
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 4e139a9abb007370e8d0266ea31192e606c800cf
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/video/fbdev/aty/atyfb_base.c:2002:7: error: implicit declaration of function 'aty_ld_lcd' [-Werror,-Wimplicit-function-declaration]
           pm = aty_ld_lcd(POWER_MANAGEMENT, par);
                ^
>> drivers/video/fbdev/aty/atyfb_base.c:2004:2: error: implicit declaration of function 'aty_st_lcd' [-Werror,-Wimplicit-function-declaration]
           aty_st_lcd(POWER_MANAGEMENT, pm, par);
           ^
   drivers/video/fbdev/aty/atyfb_base.c:2004:2: note: did you mean 'aty_ld_lcd'?
   drivers/video/fbdev/aty/atyfb_base.c:2002:7: note: 'aty_ld_lcd' declared here
           pm = aty_ld_lcd(POWER_MANAGEMENT, par);
                ^
   2 errors generated.


vim +/aty_ld_lcd +2002 drivers/video/fbdev/aty/atyfb_base.c

^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1993  
efc08a75d3a2d4 drivers/video/aty/atyfb_base.c Ville Syrjala          2006-12-08  1994  #ifdef CONFIG_PPC_PMAC
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1995  /* Power management routines. Those are used for PowerBook sleep.
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1996   */
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1997  static int aty_power_mgmt(int sleep, struct atyfb_par *par)
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1998  {
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1999  	u32 pm;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2000  	int timeout;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2001  
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16 @2002  	pm = aty_ld_lcd(POWER_MANAGEMENT, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2003  	pm = (pm & ~PWR_MGT_MODE_MASK) | PWR_MGT_MODE_REG;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16 @2004  	aty_st_lcd(POWER_MANAGEMENT, pm, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2005  	pm = aty_ld_lcd(POWER_MANAGEMENT, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2006  
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2007  	timeout = 2000;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2008  	if (sleep) {
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2009  		/* Sleep */
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2010  		pm &= ~PWR_MGT_ON;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2011  		aty_st_lcd(POWER_MANAGEMENT, pm, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2012  		pm = aty_ld_lcd(POWER_MANAGEMENT, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2013  		udelay(10);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2014  		pm &= ~(PWR_BLON | AUTO_PWR_UP);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2015  		pm |= SUSPEND_NOW;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2016  		aty_st_lcd(POWER_MANAGEMENT, pm, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2017  		pm = aty_ld_lcd(POWER_MANAGEMENT, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2018  		udelay(10);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2019  		pm |= PWR_MGT_ON;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2020  		aty_st_lcd(POWER_MANAGEMENT, pm, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2021  		do {
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2022  			pm = aty_ld_lcd(POWER_MANAGEMENT, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2023  			mdelay(1);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2024  			if ((--timeout) == 0)
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2025  				break;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2026  		} while ((pm & PWR_MGT_STATUS_MASK) != PWR_MGT_STATUS_SUSPEND);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2027  	} else {
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2028  		/* Wakeup */
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2029  		pm &= ~PWR_MGT_ON;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2030  		aty_st_lcd(POWER_MANAGEMENT, pm, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2031  		pm = aty_ld_lcd(POWER_MANAGEMENT, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2032  		udelay(10);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2033  		pm &= ~SUSPEND_NOW;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2034  		pm |= (PWR_BLON | AUTO_PWR_UP);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2035  		aty_st_lcd(POWER_MANAGEMENT, pm, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2036  		pm = aty_ld_lcd(POWER_MANAGEMENT, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2037  		udelay(10);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2038  		pm |= PWR_MGT_ON;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2039  		aty_st_lcd(POWER_MANAGEMENT, pm, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2040  		do {
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2041  			pm = aty_ld_lcd(POWER_MANAGEMENT, par);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2042  			mdelay(1);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2043  			if ((--timeout) == 0)
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2044  				break;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2045  		} while ((pm & PWR_MGT_STATUS_MASK) != 0);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2046  	}
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2047  	mdelay(500);
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2048  
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2049  	return timeout ? 0 : -EIO;
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2050  }
b7468168631e03 drivers/video/aty/atyfb_base.c Benjamin Herrenschmidt 2009-02-05  2051  #endif /* CONFIG_PPC_PMAC */
^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2052  

:::::: The code at line 2002 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102231555.12C2po65-lkp%40intel.com.

--X1bOJ3K7DJ5YkBrT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
wAIbtrHp+86vBsdBXpvy/wvmZpvMH8sBAA==

--X1bOJ3K7DJ5YkBrT--
