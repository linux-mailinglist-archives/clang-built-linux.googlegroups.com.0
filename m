Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5FP76AAMGQEKAOVTAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B3B312435
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Feb 2021 13:07:17 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id r140sf9712912iod.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Feb 2021 04:07:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612699637; cv=pass;
        d=google.com; s=arc-20160816;
        b=XJJ77ZC8npLFiFIwy/0DCUi3+/vez0fizDWLazjt/6lrgRY6hXhYWi/dvaPO7iuO3Y
         xIv7tqkl4cZOMEfmGrO9VwcH6jOSwgtkRQUXUYKICDAar4YcPiCHdLGjhPvb6G1KfEO9
         VrxMEzKOvvPAYj9ex6ZjVTNPr2AtpB83KZ1Cd+UC74HaWaUjN8enOtTms86BpILR08YI
         +dFSBFArClU8Y/uEvg5liR+gvgoczDaxlQbB6kXAZ/bVguh+2RRHu3pHkp65Pwl+f/3h
         etluWUN9GWjC8GBcQk4PstQcpt4TdEicDaMXZcWP1wEUsK+65kCp5B2hIQ6DJYnsnbTH
         Sy1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=syZEPpe21ciBdZfDUSsjv+ANyTeWI1TTnpUPPeXUoHU=;
        b=om4+AHcGLW+QhUkAW61DXtdsci4G1jSgPUa0vq+AxkUTaPU1c/G/BKm3kFU6ew/FlL
         VM2r9zcr/4mbmCgrzyyUMwHMsrh8kM0tsUK2ZkkvCtdGglF1sGLSfeC3UGwUc+Dtk+vb
         DBQawNfjBGW0pNPjPRUpmh/Xfo+R9qqNvOgwA+JI3Id2uAuqUxescYgE8PKf73NhRzFI
         g3fAB/lQOkA5V25/5UwPmo7ejuiqnbMflBWgKda4IELn7maRPnuZNXml9ymlZMVJo+6z
         Zz3z7os30wIbXJrj2FIpzIw6vW49U8dOLoDma29QvJh0jGCCQouN8i6CwJnNEEP4zjgT
         jeEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=syZEPpe21ciBdZfDUSsjv+ANyTeWI1TTnpUPPeXUoHU=;
        b=lRVkbc8jDkeeEG9he0IoEYxv9zvOHhaAMTeReDNlnqefkxF2Bf0/X/VQWoMhUVHPYU
         17thJinxGXzDH46nYrd+m3Xetyx5givUlAVVATOhxhGYIgqpwuyRlq3HTU41Cl5vXRlb
         r6ZFXod41OTdnH0ohcRacLD3BeR7OLK26Ji0eA6cU8NGzqP949mS1Misc2l0po5OLIHC
         9H4+ogISFqnZUWX0omOG9pDdQNsD6d4S6NlXa9QfQnHcrtGL01aCBHIFOHUPKTySg1ik
         20qLO3pZ6qal8gOc0fv9QkjcO9VWlWhp4c74sRwEqm2YFV2Al7kuhkveDGj3bC2LEUiu
         hQsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=syZEPpe21ciBdZfDUSsjv+ANyTeWI1TTnpUPPeXUoHU=;
        b=sv4LNeiteYaAG72q5dPpl9+MI3Fn4U8u6NurScnpMBnk9pNArwiqda2EkRAoFWx4RF
         Ndz9U/7gkQWjs+hDt7NYEkbNTYfGrAo35hv8iKuYQvvoMJTteU049scwKLC96AemcDb5
         cy1n+e+2PoVAYPwcIwDFnV+HUSOdlytC8rCXGvY9mCZ2POcjxFqXkXa/qHocrH8q+bHo
         gmd7yUZi/L1FAO1+f6cQfBQRwFSTlaSc104MYZep2Q4emK9qZeg5ZAg/SL+AVmjbdNqL
         OzO+2CZBr0k+VNu+mEIxiu/y2Re6Dbu7nf7C1SdDrcUUY7kqhTj4gw1oU7GXUEljQA+x
         /NiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530l8U+iAqFBxMf43UwipJ491wUo7B274fHnnRz+DwR40olaA62h
	c+eMyA/FF0VffG58YUmbZmU=
X-Google-Smtp-Source: ABdhPJzRRXMbUzBFFDJMXTN+HxJ3chmNuTsLrPuYMmiPWpuevdYpZXvtElrHhr4Tn6NCnebNNN27Uw==
X-Received: by 2002:a02:781f:: with SMTP id p31mr13245017jac.14.1612699636705;
        Sun, 07 Feb 2021 04:07:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls2282832iot.1.gmail; Sun, 07 Feb
 2021 04:07:16 -0800 (PST)
X-Received: by 2002:a6b:c913:: with SMTP id z19mr9232166iof.60.1612699636074;
        Sun, 07 Feb 2021 04:07:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612699636; cv=none;
        d=google.com; s=arc-20160816;
        b=gMlsNT3DmqrbeK0u5mdOTFDzFloNTPPp3TIkECFwVCsX/FNDPHOtohG/S/KveN/4Gu
         zcK/fZYwUnbzxeejGOSD2Zfr8dDwB04uwYNeWFX66WZWzFuBzjL7DOTULAABFlv3LdCt
         WJVeFBIngDm6/YzXDg7nbAY2gmOC/Mw8PO0Y6vgSZuqY3QdvMKZuDDguC+PZwUbqc3zZ
         JTTw6uCW6GiLjkENBgRDB+fIRAfcguu56gIFTaUWT2LUlhMWgU18SChPcL0R15jT2s6/
         Grxh6cIx8McNdKlBkvqk8P5HDORdGWcJt7aCU+N2XPQx8Lohb7qHASu9Jp64XUNqvT6W
         Qyeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=cP/aZPRVjjtPeHNwx4SusNIVY8eXu/t4nJmyeqzp8+A=;
        b=jFe1nMH39uasT+sw3EX0ATgcpjIclN6ttUFbmRbfge4Dpr8h/WOQBPSVgnbJ4MhU/F
         wrTs8DwlTwojMFUgsQMMk2UOyzXJ1uVncgyRrzn+0qX7q0BK+AUYR5FGnRQxcY6LKhs6
         awupz3O3owalYMw+ok/PPPVx7wAsGcdi8l+vbtF0ZcIzpF8MZAgta4VOsVRTbIQAPKYN
         NMIN7cmIjViyqdBZc2sO0kijFP7TjPjezpkv99U9uALcsyHq419VuEIkK+vWmjc685yk
         Keg/ACIrj9nRTMVbYI3xu1WchbbiTzNgt0e9cWtKemIPJcHtW1H9MB3Q+hCc3QKL+z66
         qydA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id 207si610284ioc.2.2021.02.07.04.07.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Feb 2021 04:07:15 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: tPbZhM9oc4pXphYJOWxoJnC5P27bhEyZRdwG7UrG2O7qif3IbdnVrh5dx4NWt8C5HvNBvcWZ+W
 VnJvyQuW5zEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9887"; a="200645991"
X-IronPort-AV: E=Sophos;i="5.81,159,1610438400"; 
   d="gz'50?scan'50,208,50";a="200645991"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 04:07:14 -0800
IronPort-SDR: k1oZ9477QmdHSQr7uxiXJT8qREiPLIKoiioA09HbVEtjUHnu8szX0RqQ5qYFgeCEyk7EWYGcaW
 e+YUHBM9RmdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,159,1610438400"; 
   d="gz'50?scan'50,208,50";a="361092751"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 07 Feb 2021 04:07:12 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l8iqN-0002sk-CS; Sun, 07 Feb 2021 12:07:11 +0000
Date: Sun, 7 Feb 2021 20:06:39 +0800
From: kernel test robot <lkp@intel.com>
To: Yang Li <yang.lee@linux.alibaba.com>, shaggy@kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: Re: [PATCH v2] jfs: turn diLog(), dataLog() and txLog() into void
 functions
Message-ID: <202102072041.73FV2HuB-lkp@intel.com>
References: <1612686770-26163-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/04w6evG8XlLl3ft"
Content-Disposition: inline
In-Reply-To: <1612686770-26163-1-git-send-email-yang.lee@linux.alibaba.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Yang,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on shaggy/jfs-next]
[also build test ERROR on v5.11-rc6 next-20210125]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Yang-Li/jfs-turn-diLog-dataLog-and-txLog-into-void-functions/20210207-164143
base:   https://github.com/kleikamp/linux-shaggy jfs-next
config: x86_64-randconfig-a011-20210207 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/1d4e3ad79325df64962835ecc11999b520ffbc80
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Yang-Li/jfs-turn-diLog-dataLog-and-txLog-into-void-functions/20210207-164143
        git checkout 1d4e3ad79325df64962835ecc11999b520ffbc80
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> fs/jfs/jfs_txnmgr.c:1259:10: error: assigning to 'int' from incompatible type 'void'
           if ((rc = txLog(log, tblk, &cd)))
                   ^ ~~~~~~~~~~~~~~~~~~~~~
   1 error generated.


vim +1259 fs/jfs/jfs_txnmgr.c

^1da177e4c3f41 Linus Torvalds    2005-04-16  1084  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1085  /*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1086   *		transaction commit management
^1da177e4c3f41 Linus Torvalds    2005-04-16  1087   *		-----------------------------
^1da177e4c3f41 Linus Torvalds    2005-04-16  1088   */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1089  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1090  /*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1091   * NAME:	txCommit()
^1da177e4c3f41 Linus Torvalds    2005-04-16  1092   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1093   * FUNCTION:	commit the changes to the objects specified in
^1da177e4c3f41 Linus Torvalds    2005-04-16  1094   *		clist.  For journalled segments only the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1095   *		changes of the caller are committed, ie by tid.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1096   *		for non-journalled segments the data are flushed to
^1da177e4c3f41 Linus Torvalds    2005-04-16  1097   *		disk and then the change to the disk inode and indirect
^1da177e4c3f41 Linus Torvalds    2005-04-16  1098   *		blocks committed (so blocks newly allocated to the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1099   *		segment will be made a part of the segment atomically).
^1da177e4c3f41 Linus Torvalds    2005-04-16  1100   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1101   *		all of the segments specified in clist must be in
^1da177e4c3f41 Linus Torvalds    2005-04-16  1102   *		one file system. no more than 6 segments are needed
^1da177e4c3f41 Linus Torvalds    2005-04-16  1103   *		to handle all unix svcs.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1104   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1105   *		if the i_nlink field (i.e. disk inode link count)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1106   *		is zero, and the type of inode is a regular file or
^1da177e4c3f41 Linus Torvalds    2005-04-16  1107   *		directory, or symbolic link , the inode is truncated
^1da177e4c3f41 Linus Torvalds    2005-04-16  1108   *		to zero length. the truncation is committed but the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1109   *		VM resources are unaffected until it is closed (see
^1da177e4c3f41 Linus Torvalds    2005-04-16  1110   *		iput and iclose).
^1da177e4c3f41 Linus Torvalds    2005-04-16  1111   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1112   * PARAMETER:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1113   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1114   * RETURN:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1115   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1116   * serialization:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1117   *		on entry the inode lock on each segment is assumed
^1da177e4c3f41 Linus Torvalds    2005-04-16  1118   *		to be held.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1119   *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1120   * i/o error:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1121   */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1122  int txCommit(tid_t tid,		/* transaction identifier */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1123  	     int nip,		/* number of inodes to commit */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1124  	     struct inode **iplist,	/* list of inode to commit */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1125  	     int flag)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1126  {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1127  	int rc = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1128  	struct commit cd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1129  	struct jfs_log *log;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1130  	struct tblock *tblk;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1131  	struct lrd *lrd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1132  	struct inode *ip;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1133  	struct jfs_inode_info *jfs_ip;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1134  	int k, n;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1135  	ino_t top;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1136  	struct super_block *sb;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1137  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1138  	jfs_info("txCommit, tid = %d, flag = %d", tid, flag);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1139  	/* is read-only file system ? */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1140  	if (isReadOnly(iplist[0])) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1141  		rc = -EROFS;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1142  		goto TheEnd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1143  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1144  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1145  	sb = cd.sb = iplist[0]->i_sb;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1146  	cd.tid = tid;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1147  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1148  	if (tid == 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1149  		tid = txBegin(sb, 0);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1150  	tblk = tid_to_tblock(tid);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1151  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1152  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1153  	 * initialize commit structure
^1da177e4c3f41 Linus Torvalds    2005-04-16  1154  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1155  	log = JFS_SBI(sb)->log;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1156  	cd.log = log;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1157  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1158  	/* initialize log record descriptor in commit */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1159  	lrd = &cd.lrd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1160  	lrd->logtid = cpu_to_le32(tblk->logtid);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1161  	lrd->backchain = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1162  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1163  	tblk->xflag |= flag;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1164  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1165  	if ((flag & (COMMIT_FORCE | COMMIT_SYNC)) == 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1166  		tblk->xflag |= COMMIT_LAZY;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1167  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1168  	 *	prepare non-journaled objects for commit
^1da177e4c3f41 Linus Torvalds    2005-04-16  1169  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1170  	 * flush data pages of non-journaled file
^1da177e4c3f41 Linus Torvalds    2005-04-16  1171  	 * to prevent the file getting non-initialized disk blocks
^1da177e4c3f41 Linus Torvalds    2005-04-16  1172  	 * in case of crash.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1173  	 * (new blocks - )
^1da177e4c3f41 Linus Torvalds    2005-04-16  1174  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1175  	cd.iplist = iplist;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1176  	cd.nip = nip;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1177  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1178  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1179  	 *	acquire transaction lock on (on-disk) inodes
^1da177e4c3f41 Linus Torvalds    2005-04-16  1180  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1181  	 * update on-disk inode from in-memory inode
^1da177e4c3f41 Linus Torvalds    2005-04-16  1182  	 * acquiring transaction locks for AFTER records
^1da177e4c3f41 Linus Torvalds    2005-04-16  1183  	 * on the on-disk inode of file object
^1da177e4c3f41 Linus Torvalds    2005-04-16  1184  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1185  	 * sort the inodes array by inode number in descending order
^1da177e4c3f41 Linus Torvalds    2005-04-16  1186  	 * to prevent deadlock when acquiring transaction lock
^1da177e4c3f41 Linus Torvalds    2005-04-16  1187  	 * of on-disk inodes on multiple on-disk inode pages by
^1da177e4c3f41 Linus Torvalds    2005-04-16  1188  	 * multiple concurrent transactions
^1da177e4c3f41 Linus Torvalds    2005-04-16  1189  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1190  	for (k = 0; k < cd.nip; k++) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1191  		top = (cd.iplist[k])->i_ino;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1192  		for (n = k + 1; n < cd.nip; n++) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1193  			ip = cd.iplist[n];
^1da177e4c3f41 Linus Torvalds    2005-04-16  1194  			if (ip->i_ino > top) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1195  				top = ip->i_ino;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1196  				cd.iplist[n] = cd.iplist[k];
^1da177e4c3f41 Linus Torvalds    2005-04-16  1197  				cd.iplist[k] = ip;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1198  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1199  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1200  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1201  		ip = cd.iplist[k];
^1da177e4c3f41 Linus Torvalds    2005-04-16  1202  		jfs_ip = JFS_IP(ip);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1203  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1204  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1205  		 * BUGBUG - This code has temporarily been removed.  The
^1da177e4c3f41 Linus Torvalds    2005-04-16  1206  		 * intent is to ensure that any file data is written before
^1da177e4c3f41 Linus Torvalds    2005-04-16  1207  		 * the metadata is committed to the journal.  This prevents
^1da177e4c3f41 Linus Torvalds    2005-04-16  1208  		 * uninitialized data from appearing in a file after the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1209  		 * journal has been replayed.  (The uninitialized data
^1da177e4c3f41 Linus Torvalds    2005-04-16  1210  		 * could be sensitive data removed by another user.)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1211  		 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1212  		 * The problem now is that we are holding the IWRITELOCK
^1da177e4c3f41 Linus Torvalds    2005-04-16  1213  		 * on the inode, and calling filemap_fdatawrite on an
^1da177e4c3f41 Linus Torvalds    2005-04-16  1214  		 * unmapped page will cause a deadlock in jfs_get_block.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1215  		 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1216  		 * The long term solution is to pare down the use of
^1da177e4c3f41 Linus Torvalds    2005-04-16  1217  		 * IWRITELOCK.  We are currently holding it too long.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1218  		 * We could also be smarter about which data pages need
^1da177e4c3f41 Linus Torvalds    2005-04-16  1219  		 * to be written before the transaction is committed and
^1da177e4c3f41 Linus Torvalds    2005-04-16  1220  		 * when we don't need to worry about it at all.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1221  		 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1222  		 * if ((!S_ISDIR(ip->i_mode))
28fd129827b00e OGAWA Hirofumi    2006-01-08  1223  		 *    && (tblk->flag & COMMIT_DELETE) == 0)
28fd129827b00e OGAWA Hirofumi    2006-01-08  1224  		 *	filemap_write_and_wait(ip->i_mapping);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1225  		 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1226  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1227  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1228  		 * Mark inode as not dirty.  It will still be on the dirty
^1da177e4c3f41 Linus Torvalds    2005-04-16  1229  		 * inode list, but we'll know not to commit it again unless
^1da177e4c3f41 Linus Torvalds    2005-04-16  1230  		 * it gets marked dirty again
^1da177e4c3f41 Linus Torvalds    2005-04-16  1231  		 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1232  		clear_cflag(COMMIT_Dirty, ip);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1233  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1234  		/* inherit anonymous tlock(s) of inode */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1235  		if (jfs_ip->atlhead) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1236  			lid_to_tlock(jfs_ip->atltail)->next = tblk->next;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1237  			tblk->next = jfs_ip->atlhead;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1238  			if (!tblk->last)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1239  				tblk->last = jfs_ip->atltail;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1240  			jfs_ip->atlhead = jfs_ip->atltail = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1241  			TXN_LOCK();
^1da177e4c3f41 Linus Torvalds    2005-04-16  1242  			list_del_init(&jfs_ip->anon_inode_list);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1243  			TXN_UNLOCK();
^1da177e4c3f41 Linus Torvalds    2005-04-16  1244  		}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1245  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1246  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1247  		 * acquire transaction lock on on-disk inode page
^1da177e4c3f41 Linus Torvalds    2005-04-16  1248  		 * (become first tlock of the tblk's tlock list)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1249  		 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1250  		if (((rc = diWrite(tid, ip))))
^1da177e4c3f41 Linus Torvalds    2005-04-16  1251  			goto out;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1252  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1253  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1254  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1255  	 *	write log records from transaction locks
^1da177e4c3f41 Linus Torvalds    2005-04-16  1256  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1257  	 * txUpdateMap() resets XAD_NEW in XAD.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1258  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16 @1259  	if ((rc = txLog(log, tblk, &cd)))
^1da177e4c3f41 Linus Torvalds    2005-04-16  1260  		goto TheEnd;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1261  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1262  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1263  	 * Ensure that inode isn't reused before
^1da177e4c3f41 Linus Torvalds    2005-04-16  1264  	 * lazy commit thread finishes processing
^1da177e4c3f41 Linus Torvalds    2005-04-16  1265  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1266  	if (tblk->xflag & COMMIT_DELETE) {
7de9c6ee3ecffd Al Viro           2010-10-23  1267  		ihold(tblk->u.ip);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1268  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1269  		 * Avoid a rare deadlock
^1da177e4c3f41 Linus Torvalds    2005-04-16  1270  		 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1271  		 * If the inode is locked, we may be blocked in
^1da177e4c3f41 Linus Torvalds    2005-04-16  1272  		 * jfs_commit_inode.  If so, we don't want the
^1da177e4c3f41 Linus Torvalds    2005-04-16  1273  		 * lazy_commit thread doing the last iput() on the inode
^1da177e4c3f41 Linus Torvalds    2005-04-16  1274  		 * since that may block on the locked inode.  Instead,
^1da177e4c3f41 Linus Torvalds    2005-04-16  1275  		 * commit the transaction synchronously, so the last iput
^1da177e4c3f41 Linus Torvalds    2005-04-16  1276  		 * will be done by the calling thread (or later)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1277  		 */
1c0eeaf5698597 Joern Engel       2007-10-16  1278  		/*
1c0eeaf5698597 Joern Engel       2007-10-16  1279  		 * I believe this code is no longer needed.  Splitting I_LOCK
eaff8079d4f101 Christoph Hellwig 2009-12-17  1280  		 * into two bits, I_NEW and I_SYNC should prevent this
1c0eeaf5698597 Joern Engel       2007-10-16  1281  		 * deadlock as well.  But since I don't have a JFS testload
1c0eeaf5698597 Joern Engel       2007-10-16  1282  		 * to verify this, only a trivial s/I_LOCK/I_SYNC/ was done.
1c0eeaf5698597 Joern Engel       2007-10-16  1283  		 * Joern
1c0eeaf5698597 Joern Engel       2007-10-16  1284  		 */
1c0eeaf5698597 Joern Engel       2007-10-16  1285  		if (tblk->u.ip->i_state & I_SYNC)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1286  			tblk->xflag &= ~COMMIT_LAZY;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1287  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1288  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1289  	ASSERT((!(tblk->xflag & COMMIT_DELETE)) ||
^1da177e4c3f41 Linus Torvalds    2005-04-16  1290  	       ((tblk->u.ip->i_nlink == 0) &&
^1da177e4c3f41 Linus Torvalds    2005-04-16  1291  		!test_cflag(COMMIT_Nolink, tblk->u.ip)));
^1da177e4c3f41 Linus Torvalds    2005-04-16  1292  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1293  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1294  	 *	write COMMIT log record
^1da177e4c3f41 Linus Torvalds    2005-04-16  1295  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1296  	lrd->type = cpu_to_le16(LOG_COMMIT);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1297  	lrd->length = 0;
3c2c2262859900 Dave Kleikamp     2011-06-20  1298  	lmLog(log, tblk, lrd, NULL);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1299  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1300  	lmGroupCommit(log, tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1301  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1302  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1303  	 *	- transaction is now committed -
^1da177e4c3f41 Linus Torvalds    2005-04-16  1304  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1305  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1306  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1307  	 * force pages in careful update
^1da177e4c3f41 Linus Torvalds    2005-04-16  1308  	 * (imap addressing structure update)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1309  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1310  	if (flag & COMMIT_FORCE)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1311  		txForce(tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1312  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1313  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1314  	 *	update allocation map.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1315  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1316  	 * update inode allocation map and inode:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1317  	 * free pager lock on memory object of inode if any.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1318  	 * update block allocation map.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1319  	 *
^1da177e4c3f41 Linus Torvalds    2005-04-16  1320  	 * txUpdateMap() resets XAD_NEW in XAD.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1321  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1322  	if (tblk->xflag & COMMIT_FORCE)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1323  		txUpdateMap(tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1324  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1325  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1326  	 *	free transaction locks and pageout/free pages
^1da177e4c3f41 Linus Torvalds    2005-04-16  1327  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1328  	txRelease(tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1329  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1330  	if ((tblk->flag & tblkGC_LAZY) == 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1331  		txUnlock(tblk);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1332  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1333  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1334  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1335  	 *	reset in-memory object state
^1da177e4c3f41 Linus Torvalds    2005-04-16  1336  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1337  	for (k = 0; k < cd.nip; k++) {
^1da177e4c3f41 Linus Torvalds    2005-04-16  1338  		ip = cd.iplist[k];
^1da177e4c3f41 Linus Torvalds    2005-04-16  1339  		jfs_ip = JFS_IP(ip);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1340  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1341  		/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  1342  		 * reset in-memory inode state
^1da177e4c3f41 Linus Torvalds    2005-04-16  1343  		 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  1344  		jfs_ip->bxflag = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1345  		jfs_ip->blid = 0;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1346  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1347  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1348        out:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1349  	if (rc != 0)
^1da177e4c3f41 Linus Torvalds    2005-04-16  1350  		txAbort(tid, 1);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1351  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1352        TheEnd:
^1da177e4c3f41 Linus Torvalds    2005-04-16  1353  	jfs_info("txCommit: tid = %d, returning %d", tid, rc);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1354  	return rc;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1355  }
^1da177e4c3f41 Linus Torvalds    2005-04-16  1356  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102072041.73FV2HuB-lkp%40intel.com.

--/04w6evG8XlLl3ft
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--/04w6evG8XlLl3ft--
