Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTXFT3YQKGQETEM4BZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F70F1449C7
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jan 2020 03:26:24 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id m61sf3427502pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 18:26:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579659982; cv=pass;
        d=google.com; s=arc-20160816;
        b=CdJkt4ef1PEFESxF5mAMy/A6YVb2+Ku/NB2tm8rSZcH0n49zDr8EyCgFfHxNm+zVNn
         2CVrg1ojXv5CX0gMdtLIBS8croCF/FV0rNLIUpAtXLEgUORUWyXtn80CTyiYJX/nzD6E
         cexrd7btaWrrQmZu5zYkUvfMMpdjnvQhXhr3aJ32v5mvRKyF0ECeN2Ux+5QAPw2ma4L8
         ONlCqdk14lVr8MGH4msA/eRl4nM3WgqIe0fkzorxnuXo5FzoVkyhdPty/T87SW/ni1ix
         LRFIFwTyrRvyYa+9i4LyV4bbOy+aqHIF2qCSekwzjuphG7v12+EQRanW9lLgF26JyWk5
         ZQrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=pdz60Kx0uCozNDZTMs11Nufc0NLirnf/7v2DYo2tgLI=;
        b=YKuyOV7sSJUCh0tlMkX3uOCgLHRQOBKr4LAP1x28Lx31wrjIch5DAYoQw0DQSkhxCc
         Xc0KF/hSxPwJlwDhWp2dpQ2TbOwcVnAi8GP1zSAjhgIRYgVRTsFD3XI8b00lyU8KM6K0
         RYjZBByK11RQoFqaQ7KXwgIsqxqfcnirXXxBjkEpnn6DrG4yqHlRG3DvnXy8/2U1L9YR
         26+ELxXOA2ysY+pNP2e0BzqRJoyUi8kwaSPm9IvnL9wSGlmbFD3/f43VKCQFkmFyTOZR
         fhyvzNepjFoG/w9JLof9jHAY9rCwN+HWn0velDfjzDC3rf8KpbKJwiz4QAy+Zb8cRJky
         NaYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pdz60Kx0uCozNDZTMs11Nufc0NLirnf/7v2DYo2tgLI=;
        b=BQjlT3oiqdjx7Sf0a+AkJ65o9XheGNJh/RtXKcWF1hoh4+VmreL0hrk89E9l+uOHUJ
         vgkZXEDq5Hk1RVzIK31GRtMMU91bcSYeCZdQGPlEKy6ODhxXBRyHXkuBQukyQeHXzxmk
         eqYU9ikxnX8SzHDK36nApbOThKFOEPyPeGXUP1ku4V4ewnWyjlRaoVa5m7MH8DyIldgL
         7e65iwt5EqqNKJn5T5qClMmfIY0Lwz/c8wPz84WRtb0Tq7V+J/Z/YlBOPJ3owmQmhv7x
         tLJpm6YESGSGB1F7jbSb8U7MPCkXTlOLKUSb9F8xDmsIbdG00cl2Col4bu6JyOdkXM+o
         lPMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pdz60Kx0uCozNDZTMs11Nufc0NLirnf/7v2DYo2tgLI=;
        b=audtt0etJXiUQSBC6fzG4MZ9P024G2McnK8I0LiR1cCz9qm7kg3Cb2YXM38e+CCZ8Z
         LPTbj0Dm0DqfyiZOf81Si76llN/SuH6ViZzM3sSK0aOTC0CVg8X6l8JJ0DTzhBfKs3CZ
         yiPuMGsddLbi/8dV5WJ/aQyx8SecOmWcYAbnPEdHCU9O9kxV2Ac5qa+ZXapSc+tThVCg
         u/q7fgZrxFYcWxfRntTJYDD8yuvyG8Ep4KanfpaydKknxls2Jz3BVL0MPZPRPh1TBaMH
         +cQ3/p+Det3XfaKdR8NlcdDmdQG6N4AlD1Ixv1qVMBW2YJrrYhyuz+K+yc1HwK3Hk1Rx
         46Lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgP+Ir0FvRRAjRkTRlqW9ToSFa+Q3m3C7Fdyy2B0hQBBIzY4sG
	5NguaJaOCSXNjYeAmDv+2Go=
X-Google-Smtp-Source: APXvYqxD2ZD+sxt2PLJkdsTLMmO+zkgYg+c8rlu1AJh13e/L1eU4TSygPfw536Qfgv7NAR1daBHjrQ==
X-Received: by 2002:a17:90a:8c05:: with SMTP id a5mr355868pjo.86.1579659982871;
        Tue, 21 Jan 2020 18:26:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8505:: with SMTP id bj5ls8403932plb.11.gmail; Tue,
 21 Jan 2020 18:26:22 -0800 (PST)
X-Received: by 2002:a17:902:9f98:: with SMTP id g24mr8677987plq.325.1579659982394;
        Tue, 21 Jan 2020 18:26:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579659982; cv=none;
        d=google.com; s=arc-20160816;
        b=PWruKLUguBaBUXLUtr8rVzT983NSnQYCGD0JJDAUp57ICGkayJPM0YPgeuCkca7+RI
         hCQaFlUH3bZT2eHsAL2cNzfnMEpfF/THN65YqTsLW9rBbp+o8VGG2j3nRYuswZDlwGH5
         nTq+jDf9M5/KgAfXY/mQfsFfGOOmCR5UXZTAYM+gcXamwnRS8AOegVlzRQRyHggPKrcM
         PxFKzqmmATRX8Wgf26Zq7ZP+8SSBAtWCJ5dl24AI9seoh7arbOCUNj7nWa+wegx1bMmb
         pDJvT5WxCx1DTE9SawrmHZ9BBptyBgTkeRfHx2J9WtVLi6QezxDTPuCbogq5DfvKRi2T
         Bi2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=IaOB9+7AebwKMHeYh1Y5NiFpME/3ugTAhaAOo2v8cns=;
        b=u1R4oOp2BTC7LyCP8YBIKkwR4R2wFkCzcYEECsIS4oxeF0a/zj/e3avkSsp/5ZQEYL
         aBrl0ga7ID9BA7NM2KJ2AAI4/3dffDMHvxch0ub2newOIrEHiTOFM0AtWyDC5VFKkebR
         Wg1ztqu22y8JVTpPZPtercXzQANcsS+Eh0Vu3Sq0WAlF9rlAOE7E4OEPezRQvBKEKUNp
         3TB5jiJQPfOCcNq/gRYVPsGvITuQG35xlURcO2ZLYNTd7DwRLp+Uz3lqY2mUkf/lJ9IT
         ckN2MtGo4US2O3nGOpu66dVG9h8Oz/cidN7uQfTvASSKUR3m3Yc81b9eWJuCYY8zs1b0
         xJ0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id d14si1853617pfo.4.2020.01.21.18.26.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jan 2020 18:26:22 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Jan 2020 18:26:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; 
   d="scan'208";a="221100572"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 21 Jan 2020 18:26:21 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iu5im-000Ecb-OE; Wed, 22 Jan 2020 10:26:20 +0800
Date: Wed, 22 Jan 2020 10:26:00 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [zen-kernel-zen-kernel:5.4/exfat-v13 13/13]
 drivers/staging/exfat/Kconfig:2:error: recursive dependency detected!
Message-ID: <202001221056.9HiOnRMa%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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

CC: kbuild-all@lists.01.org
TO: Namjae Jeon <namjae.jeon@samsung.com>
CC: Steven Barrett <steven@liquorix.net>
CC: Sungjong Seo <sj1557.seo@samsung.com>
CC: "Pali Roh=C3=A1r" <pali.rohar@gmail.com>
CC: Christoph Hellwig <hch@lst.de>

tree:   https://github.com/zen-kernel/zen-kernel 5.4/exfat-v13
head:   0412cb38da04b59ccbd17fe4d27b8a687731d945
commit: 0412cb38da04b59ccbd17fe4d27b8a687731d945 [13/13] staging: exfat: ma=
ke staging/exfat and fs/exfat mutually exclusive
config: powerpc-defconfig
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 7b771ed4484877=
05237868f705da17b40c6bfe82)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 0412cb38da04b59ccbd17fe4d27b8a687731d945
        make.cross ARCH=3Dpowerpc  defconfig
        make.cross ARCH=3Dpowerpc=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging/exfat/Kconfig:2:error: recursive dependency detected!
>> drivers/staging/exfat/Kconfig:2: symbol EXFAT_FS depends on EXFAT_FS
   For a resolution refer to Documentation/kbuild/kconfig-language.rst
   subsection "Kconfig recursive dependency limitations"

vim +2 drivers/staging/exfat/Kconfig

c48c9f7ff32b8b Valdis Kletnieks 2019-08-28 @2  config EXFAT_FS
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  3  	tristate "exFAT fs support"
0412cb38da04b5 Namjae Jeon      2020-01-21  4  	depends on BLOCK && !EXFAT_=
FS
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  5  	select NLS
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  6  	help
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  7  	  This adds support for the=
 exFAT file system.
c48c9f7ff32b8b Valdis Kletnieks 2019-08-28  8 =20

:::::: The code at line 2 was first introduced by commit
:::::: c48c9f7ff32b8b3965a08e40eb6763682d905b5d staging: exfat: add exfat f=
ilesystem code to staging

:::::: TO: Valdis Kl=C4=93tnieks <valdis.kletnieks@vt.edu>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY kernel test infrastructure                 Open Source Technology Cen=
ter
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporat=
ion

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202001221056.9HiOnRMa%25lkp%40intel.com.
