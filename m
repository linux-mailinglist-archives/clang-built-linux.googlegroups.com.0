Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGVBUWDQMGQEBBJDOCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4154F3C33A6
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 09:47:40 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id w38-20020a6347660000b029022342ce1f8bsf9031069pgk.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 00:47:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625903259; cv=pass;
        d=google.com; s=arc-20160816;
        b=s4Acbyzu2YEbK4fd/7p6J5A79WEGOX7xqvH9CRHZuUp6FKyC6/deJMwmgBIW+lll4F
         WOX8R2HOUt/UdxpdXsgvdRAhl9OII4OM2C1QVQ9Y8NGqM2tFaOg0bWmee08ntX9r4QcZ
         +/J2vaj0ULBji3fVaBYgBXLuMO71vHgVY3wrdwXP+NkWtnstnUeuek7IqXDCYpX6Jiz6
         Yz1He5qmGkcofJVMUHTvXF9j3xLA3gmR8z9J6of2J52uAm099MGZ/V70BbFOPfoTRXsO
         /p/FtK7K4gEKFm2lNsyKttnGEKGbIrk1AbQEvR1DQO3kYV3UkgvV1OH5S0/sZcsaOBiw
         4DXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5VFznQkdUPyS4069Jxzah033eXLK7YMllPD+Ec282kA=;
        b=e4O7vs3ha8WVCdSVPbm8MLukGDuRNOJKC2Y9Bwlr+oYE5qEhf/sDC28hZCThne+3rj
         n9orAmkhNkrGtLIWtRdhDBHr1bqDb8B7+rOeowIathCmaec15Eibk49Wq0viIfV8xxov
         6EFUC30dl/s11hlI5AltqClfyaAYaONH2IAeyNtXmMs27FL1h2z7xs5HKQNxDilExJCe
         JRX0Z6rxiR3NBu532lZPoLjlkqfPul1XBMj2AStl5Nwrln/KJE/Z/G79fCH/0pf4HET9
         LXwuZNr3orngufC9AjKaoU7sn9QwkvvIaJlYwZ33dVztFq5xrHYYSeC++2SSNoA2c0/7
         8FNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5VFznQkdUPyS4069Jxzah033eXLK7YMllPD+Ec282kA=;
        b=nZbFKUmM3jjmL5naQdiFHThQyXTmW5qSQl62uDlsXvvng4hdct/FG5HHun/DTfCQEp
         mYHFexKZMCx4AkaP7y9ywgqBAtaf13+GZnTHqCCZUVBVFwKEPl/Kny99TnfvEYVJ0/sz
         2JGJZmEC0psnKKwiDyVnFiuT1ZtUB6uSmtvdmptk76wEUXwKETqHeXjpTZ/jZIO5g9q2
         SXyPgzgxreqRrzlrk630+m0F6JeZcuRy7bK7oHMbSoq0INahQ5FXQGMiisJyJeDuqEc/
         daTP9KpwS3azyAq+WE9RD/4URW/4h1LamARkfJ6pA4C7vqtbmrDswEOPAkuYfzP861o/
         tHCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5VFznQkdUPyS4069Jxzah033eXLK7YMllPD+Ec282kA=;
        b=Xy8e5+jPZHM0dTQX5VhCyFY5vLMRlcxadRP6AVA/lLgRO4o/5N/+B9ye7JfV69Hd/v
         JNY2X3ZlanssL7GUmTkkhd56AWmZyZy98QD2JRhQe4VsPzFym7wtnyYCs47l7+hPfaga
         MjeShV3adyQ21f9Ja+gLkDu7EBKx91FM2pH8eghziO2Y5aaM0DZ88vJdzhgjqK4hqTzf
         4oj46Rrw7dPMTsjmbSuX1M6x1ruz900u+J71ZZpfpyBGheyw4MK7eaQqfwatURNo6yFl
         VpbFHc6e7OwkpMBG3qhB1xk6hL1+d9djQw1c0oO1HQhjYVq1O0vZVLRDvGe8Sfctkhqh
         n6rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Zd1xl5qFBrPgZhVaaBBahQe+DhBqcuw1zYxcfudD+JlluDpDf
	+1askEZABMjTpZzpq4/RBeY=
X-Google-Smtp-Source: ABdhPJxY454PQyguJgkNwszJJQ1O22ZeNkBYK6ABREgQFmVEIXbbEUWzWHpzZ4gYApAHMoeXO770qw==
X-Received: by 2002:a17:902:bd82:b029:129:2e87:9946 with SMTP id q2-20020a170902bd82b02901292e879946mr34485850pls.53.1625903258740;
        Sat, 10 Jul 2021 00:47:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4283:: with SMTP id j3ls4125755pgp.11.gmail; Sat, 10 Jul
 2021 00:47:38 -0700 (PDT)
X-Received: by 2002:a63:66c7:: with SMTP id a190mr42994074pgc.123.1625903258039;
        Sat, 10 Jul 2021 00:47:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625903258; cv=none;
        d=google.com; s=arc-20160816;
        b=jCmbN7hEKHe3x+5Dey6Z0RhmWDtqjZP/XZOd1Ak3iPMsE/r6xaCYHKz7/GNXCvl9bX
         AP4y8LTxPIIrTxiFLh3BMNgHEODORaerP9PHNi1iF+UHHpLdwp/met0ABN7sM/5QmP6Q
         sxlv0bW3r2H3gFP+PJE+AnhuCpBDhVAPWYqIxJdHVKuPGt4wBhVDYIrpJfv6CAwJkMRT
         ShOvUVBflPDFQb6GWvag541RpgDSvTolbMh4/0bil5690Ga7Q1ExCKmJ4jPK3nKIbDHP
         wa3d30HGEbU0sDmVxGsWOIrVH8OX+wx8FRrUyA+icoXrKKieAT1qX36abKEdagMQgkuk
         CX+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Iquiu6a5QlRJnjcPljsNLCK04bnnieGKmAOjiVvNlUM=;
        b=lQCeSBLMFc1YLtVKXD2iLNtjEO0rnAZ0iE8fxzm4iAWb48ASjeIFZQBXZ1JTyeKNUc
         eHukcBA4LWiAdGapoR72LJtMh+EIqkJpGMtQfa3C5D3sFQGSIsL9cEMDw7FI2ttMZ99D
         TFkigdjSSWQBc5Ra73DQXLK0WG2duJTMaoa4MDNJceD0XdkHEsZe1VSrxMUkuQY33+Wa
         Pe94JASOsodS1/DeDZmNtfMPYDjwGxeyErHxiKCTvY3xu3iqf94pTtJLuxRzm01CO1MO
         a2/8Vg/JW5IdC63Rei7SMASj+j02mqTYMIMrNTIDeAKEB8xsfC1vJqYZpPVuLpxx/iLy
         MPmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id o13si1895559pji.3.2021.07.10.00.47.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Jul 2021 00:47:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="209856132"
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; 
   d="gz'50?scan'50,208,50";a="209856132"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2021 00:47:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; 
   d="gz'50?scan'50,208,50";a="629133400"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 10 Jul 2021 00:47:28 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m27hw-000FVi-1Q; Sat, 10 Jul 2021 07:47:28 +0000
Date: Sat, 10 Jul 2021 15:46:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Chandan Babu R <chandanrlinux@gmail.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [linux-stable-rc:linux-5.4.y 2906/4278] fs/xfs/xfs_rtalloc.c:892:1:
 warning: stack frame size (1056) exceeds limit (1024) in function
 'xfs_growfs_rt'
Message-ID: <202107101521.tDiLoqlw-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
head:   f52a40401ee9825556cc803c110c67bfec5f6b94
commit: b2844ba3d37cba994fc9e591e7bed17c7a0408d7 [2906/4278] xfs: fix realtime bitmap/summary file truncation when growing rt volume
config: mips-buildonly-randconfig-r002-20210709 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d69635ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=b2844ba3d37cba994fc9e591e7bed17c7a0408d7
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.4.y
        git checkout b2844ba3d37cba994fc9e591e7bed17c7a0408d7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/xfs/xfs_rtalloc.c:892:1: warning: stack frame size (1056) exceeds limit (1024) in function 'xfs_growfs_rt' [-Wframe-larger-than]
   xfs_growfs_rt(
   ^
   1 warning generated.


vim +/xfs_growfs_rt +892 fs/xfs/xfs_rtalloc.c

65eed012d1f2d0 Omar Sandoval       2018-12-21   883  
^1da177e4c3f41 Linus Torvalds      2005-04-16   884  /*
^1da177e4c3f41 Linus Torvalds      2005-04-16   885   * Visible (exported) functions.
^1da177e4c3f41 Linus Torvalds      2005-04-16   886   */
^1da177e4c3f41 Linus Torvalds      2005-04-16   887  
^1da177e4c3f41 Linus Torvalds      2005-04-16   888  /*
^1da177e4c3f41 Linus Torvalds      2005-04-16   889   * Grow the realtime area of the filesystem.
^1da177e4c3f41 Linus Torvalds      2005-04-16   890   */
^1da177e4c3f41 Linus Torvalds      2005-04-16   891  int
^1da177e4c3f41 Linus Torvalds      2005-04-16  @892  xfs_growfs_rt(
^1da177e4c3f41 Linus Torvalds      2005-04-16   893  	xfs_mount_t	*mp,		/* mount point for filesystem */
^1da177e4c3f41 Linus Torvalds      2005-04-16   894  	xfs_growfs_rt_t	*in)		/* growfs rt input struct */
^1da177e4c3f41 Linus Torvalds      2005-04-16   895  {
^1da177e4c3f41 Linus Torvalds      2005-04-16   896  	xfs_rtblock_t	bmbno;		/* bitmap block number */
^1da177e4c3f41 Linus Torvalds      2005-04-16   897  	xfs_buf_t	*bp;		/* temporary buffer */
^1da177e4c3f41 Linus Torvalds      2005-04-16   898  	int		error;		/* error return value */
^1da177e4c3f41 Linus Torvalds      2005-04-16   899  	xfs_mount_t	*nmp;		/* new (fake) mount structure */
d5cf09baced0ef Christoph Hellwig   2014-07-30   900  	xfs_rfsblock_t	nrblocks;	/* new number of realtime blocks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   901  	xfs_extlen_t	nrbmblocks;	/* new number of rt bitmap blocks */
d5cf09baced0ef Christoph Hellwig   2014-07-30   902  	xfs_rtblock_t	nrextents;	/* new number of realtime extents */
^1da177e4c3f41 Linus Torvalds      2005-04-16   903  	uint8_t		nrextslog;	/* new log2 of sb_rextents */
^1da177e4c3f41 Linus Torvalds      2005-04-16   904  	xfs_extlen_t	nrsumblocks;	/* new number of summary blocks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   905  	uint		nrsumlevels;	/* new rt summary levels */
^1da177e4c3f41 Linus Torvalds      2005-04-16   906  	uint		nrsumsize;	/* new size of rt summary, bytes */
^1da177e4c3f41 Linus Torvalds      2005-04-16   907  	xfs_sb_t	*nsbp;		/* new superblock */
^1da177e4c3f41 Linus Torvalds      2005-04-16   908  	xfs_extlen_t	rbmblocks;	/* current number of rt bitmap blocks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   909  	xfs_extlen_t	rsumblocks;	/* current number of rt summary blks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   910  	xfs_sb_t	*sbp;		/* old superblock */
^1da177e4c3f41 Linus Torvalds      2005-04-16   911  	xfs_fsblock_t	sumbno;		/* summary block number */
65eed012d1f2d0 Omar Sandoval       2018-12-21   912  	uint8_t		*rsum_cache;	/* old summary cache */
^1da177e4c3f41 Linus Torvalds      2005-04-16   913  
^1da177e4c3f41 Linus Torvalds      2005-04-16   914  	sbp = &mp->m_sb;
^1da177e4c3f41 Linus Torvalds      2005-04-16   915  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   916  	 * Initial error checking.
^1da177e4c3f41 Linus Torvalds      2005-04-16   917  	 */
743bb4650da9e2 sandeen@sandeen.net 2008-11-25   918  	if (!capable(CAP_SYS_ADMIN))
2451337dd04390 Dave Chinner        2014-06-25   919  		return -EPERM;
73024cf11522c0 Eric Sesterhenn     2006-06-28   920  	if (mp->m_rtdev_targp == NULL || mp->m_rbmip == NULL ||
^1da177e4c3f41 Linus Torvalds      2005-04-16   921  	    (nrblocks = in->newblocks) <= sbp->sb_rblocks ||
^1da177e4c3f41 Linus Torvalds      2005-04-16   922  	    (sbp->sb_rblocks && (in->extsize != sbp->sb_rextsize)))
2451337dd04390 Dave Chinner        2014-06-25   923  		return -EINVAL;
4cc929ee305c69 Nathan Scott        2007-05-14   924  	if ((error = xfs_sb_validate_fsb_count(sbp, nrblocks)))
4cc929ee305c69 Nathan Scott        2007-05-14   925  		return error;
^1da177e4c3f41 Linus Torvalds      2005-04-16   926  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   927  	 * Read in the last block of the device, make sure it exists.
^1da177e4c3f41 Linus Torvalds      2005-04-16   928  	 */
ba3726742c1712 Dave Chinner        2014-10-02   929  	error = xfs_buf_read_uncached(mp->m_rtdev_targp,
4cc929ee305c69 Nathan Scott        2007-05-14   930  				XFS_FSB_TO_BB(mp, nrblocks - 1),
ba3726742c1712 Dave Chinner        2014-10-02   931  				XFS_FSB_TO_BB(mp, 1), 0, &bp, NULL);
ba3726742c1712 Dave Chinner        2014-10-02   932  	if (error)
eab4e63368b4cf Dave Chinner        2012-11-12   933  		return error;
^1da177e4c3f41 Linus Torvalds      2005-04-16   934  	xfs_buf_relse(bp);
1922c949c59f93 Dave Chinner        2010-09-22   935  
^1da177e4c3f41 Linus Torvalds      2005-04-16   936  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   937  	 * Calculate new parameters.  These are the final values to be reached.
^1da177e4c3f41 Linus Torvalds      2005-04-16   938  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   939  	nrextents = nrblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   940  	do_div(nrextents, in->extsize);
68c3271515f11f Nathan Scott        2006-09-28   941  	nrbmblocks = howmany_64(nrextents, NBBY * sbp->sb_blocksize);
^1da177e4c3f41 Linus Torvalds      2005-04-16   942  	nrextslog = xfs_highbit32(nrextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16   943  	nrsumlevels = nrextslog + 1;
^1da177e4c3f41 Linus Torvalds      2005-04-16   944  	nrsumsize = (uint)sizeof(xfs_suminfo_t) * nrsumlevels * nrbmblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   945  	nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16   946  	nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16   947  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   948  	 * New summary size can't be more than half the size of
^1da177e4c3f41 Linus Torvalds      2005-04-16   949  	 * the log.  This prevents us from getting a log overflow,
^1da177e4c3f41 Linus Torvalds      2005-04-16   950  	 * since we'll log basically the whole summary file at once.
^1da177e4c3f41 Linus Torvalds      2005-04-16   951  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   952  	if (nrsumblocks > (mp->m_sb.sb_logblocks >> 1))
2451337dd04390 Dave Chinner        2014-06-25   953  		return -EINVAL;
^1da177e4c3f41 Linus Torvalds      2005-04-16   954  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   955  	 * Get the old block counts for bitmap and summary inodes.
^1da177e4c3f41 Linus Torvalds      2005-04-16   956  	 * These can't change since other growfs callers are locked out.
^1da177e4c3f41 Linus Torvalds      2005-04-16   957  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   958  	rbmblocks = XFS_B_TO_FSB(mp, mp->m_rbmip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16   959  	rsumblocks = XFS_B_TO_FSB(mp, mp->m_rsumip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16   960  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   961  	 * Allocate space to the bitmap and summary files, as necessary.
^1da177e4c3f41 Linus Torvalds      2005-04-16   962  	 */
1050c71e2925ab Christoph Hellwig   2011-02-13   963  	error = xfs_growfs_rt_alloc(mp, rbmblocks, nrbmblocks, mp->m_rbmip);
1050c71e2925ab Christoph Hellwig   2011-02-13   964  	if (error)
^1da177e4c3f41 Linus Torvalds      2005-04-16   965  		return error;
1050c71e2925ab Christoph Hellwig   2011-02-13   966  	error = xfs_growfs_rt_alloc(mp, rsumblocks, nrsumblocks, mp->m_rsumip);
1050c71e2925ab Christoph Hellwig   2011-02-13   967  	if (error)
^1da177e4c3f41 Linus Torvalds      2005-04-16   968  		return error;
65eed012d1f2d0 Omar Sandoval       2018-12-21   969  
65eed012d1f2d0 Omar Sandoval       2018-12-21   970  	rsum_cache = mp->m_rsum_cache;
65eed012d1f2d0 Omar Sandoval       2018-12-21   971  	if (nrbmblocks != sbp->sb_rbmblocks)
65eed012d1f2d0 Omar Sandoval       2018-12-21   972  		xfs_alloc_rsum_cache(mp, nrbmblocks);
65eed012d1f2d0 Omar Sandoval       2018-12-21   973  
d432c80e68e3c2 Nathan Scott        2006-09-28   974  	/*
d432c80e68e3c2 Nathan Scott        2006-09-28   975  	 * Allocate a new (fake) mount/sb.
d432c80e68e3c2 Nathan Scott        2006-09-28   976  	 */
707e0ddaf67e89 Tetsuo Handa        2019-08-26   977  	nmp = kmem_alloc(sizeof(*nmp), 0);
^1da177e4c3f41 Linus Torvalds      2005-04-16   978  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   979  	 * Loop over the bitmap blocks.
^1da177e4c3f41 Linus Torvalds      2005-04-16   980  	 * We will do everything one bitmap block at a time.
^1da177e4c3f41 Linus Torvalds      2005-04-16   981  	 * Skip the current block if it is exactly full.
^1da177e4c3f41 Linus Torvalds      2005-04-16   982  	 * This also deals with the case where there were no rtextents before.
^1da177e4c3f41 Linus Torvalds      2005-04-16   983  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   984  	for (bmbno = sbp->sb_rbmblocks -
^1da177e4c3f41 Linus Torvalds      2005-04-16   985  		     ((sbp->sb_rextents & ((1 << mp->m_blkbit_log) - 1)) != 0);
^1da177e4c3f41 Linus Torvalds      2005-04-16   986  	     bmbno < nrbmblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   987  	     bmbno++) {
0924b585fc49bf Dave Chinner        2008-11-28   988  		xfs_trans_t	*tp;
0924b585fc49bf Dave Chinner        2008-11-28   989  
^1da177e4c3f41 Linus Torvalds      2005-04-16   990  		*nmp = *mp;
^1da177e4c3f41 Linus Torvalds      2005-04-16   991  		nsbp = &nmp->m_sb;
^1da177e4c3f41 Linus Torvalds      2005-04-16   992  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   993  		 * Calculate new sb and mount fields for this round.
^1da177e4c3f41 Linus Torvalds      2005-04-16   994  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   995  		nsbp->sb_rextsize = in->extsize;
^1da177e4c3f41 Linus Torvalds      2005-04-16   996  		nsbp->sb_rbmblocks = bmbno + 1;
^1da177e4c3f41 Linus Torvalds      2005-04-16   997  		nsbp->sb_rblocks =
^1da177e4c3f41 Linus Torvalds      2005-04-16   998  			XFS_RTMIN(nrblocks,
^1da177e4c3f41 Linus Torvalds      2005-04-16   999  				  nsbp->sb_rbmblocks * NBBY *
^1da177e4c3f41 Linus Torvalds      2005-04-16  1000  				  nsbp->sb_blocksize * nsbp->sb_rextsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1001  		nsbp->sb_rextents = nsbp->sb_rblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1002  		do_div(nsbp->sb_rextents, nsbp->sb_rextsize);
79071eb0b2f142 David Chinner       2008-08-13  1003  		ASSERT(nsbp->sb_rextents != 0);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1004  		nsbp->sb_rextslog = xfs_highbit32(nsbp->sb_rextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1005  		nrsumlevels = nmp->m_rsumlevels = nsbp->sb_rextslog + 1;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1006  		nrsumsize =
^1da177e4c3f41 Linus Torvalds      2005-04-16  1007  			(uint)sizeof(xfs_suminfo_t) * nrsumlevels *
^1da177e4c3f41 Linus Torvalds      2005-04-16  1008  			nsbp->sb_rbmblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1009  		nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1010  		nmp->m_rsumsize = nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1011  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1012  		 * Start a transaction, get the log reservation.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1013  		 */
253f4911f297b8 Christoph Hellwig   2016-04-06  1014  		error = xfs_trans_alloc(mp, &M_RES(mp)->tr_growrtfree, 0, 0, 0,
253f4911f297b8 Christoph Hellwig   2016-04-06  1015  				&tp);
3d3c8b5222b924 Jie Liu             2013-08-12  1016  		if (error)
253f4911f297b8 Christoph Hellwig   2016-04-06  1017  			break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1018  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1019  		 * Lock out other callers by grabbing the bitmap inode lock.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1020  		 */
1050c71e2925ab Christoph Hellwig   2011-02-13  1021  		xfs_ilock(mp->m_rbmip, XFS_ILOCK_EXCL);
ddc3415aba1cb2 Christoph Hellwig   2011-09-19  1022  		xfs_trans_ijoin(tp, mp->m_rbmip, XFS_ILOCK_EXCL);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1023  		/*
b2844ba3d37cba Darrick J. Wong     2020-10-07  1024  		 * Update the bitmap inode's size ondisk and incore.  We need
b2844ba3d37cba Darrick J. Wong     2020-10-07  1025  		 * to update the incore size so that inode inactivation won't
b2844ba3d37cba Darrick J. Wong     2020-10-07  1026  		 * punch what it thinks are "posteof" blocks.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1027  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1028  		mp->m_rbmip->i_d.di_size =
^1da177e4c3f41 Linus Torvalds      2005-04-16  1029  			nsbp->sb_rbmblocks * nsbp->sb_blocksize;
b2844ba3d37cba Darrick J. Wong     2020-10-07  1030  		i_size_write(VFS_I(mp->m_rbmip), mp->m_rbmip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1031  		xfs_trans_log_inode(tp, mp->m_rbmip, XFS_ILOG_CORE);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1032  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1033  		 * Get the summary inode into the transaction.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1034  		 */
1050c71e2925ab Christoph Hellwig   2011-02-13  1035  		xfs_ilock(mp->m_rsumip, XFS_ILOCK_EXCL);
ddc3415aba1cb2 Christoph Hellwig   2011-09-19  1036  		xfs_trans_ijoin(tp, mp->m_rsumip, XFS_ILOCK_EXCL);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1037  		/*
b2844ba3d37cba Darrick J. Wong     2020-10-07  1038  		 * Update the summary inode's size.  We need to update the
b2844ba3d37cba Darrick J. Wong     2020-10-07  1039  		 * incore size so that inode inactivation won't punch what it
b2844ba3d37cba Darrick J. Wong     2020-10-07  1040  		 * thinks are "posteof" blocks.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1041  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1042  		mp->m_rsumip->i_d.di_size = nmp->m_rsumsize;
b2844ba3d37cba Darrick J. Wong     2020-10-07  1043  		i_size_write(VFS_I(mp->m_rsumip), mp->m_rsumip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1044  		xfs_trans_log_inode(tp, mp->m_rsumip, XFS_ILOG_CORE);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1045  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1046  		 * Copy summary data from old to new sizes.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1047  		 * Do this when the real size (not block-aligned) changes.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1048  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1049  		if (sbp->sb_rbmblocks != nsbp->sb_rbmblocks ||
^1da177e4c3f41 Linus Torvalds      2005-04-16  1050  		    mp->m_rsumlevels != nmp->m_rsumlevels) {
^1da177e4c3f41 Linus Torvalds      2005-04-16  1051  			error = xfs_rtcopy_summary(mp, nmp, tp);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1052  			if (error)
0924b585fc49bf Dave Chinner        2008-11-28  1053  				goto error_cancel;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1054  		}
^1da177e4c3f41 Linus Torvalds      2005-04-16  1055  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1056  		 * Update superblock fields.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1057  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1058  		if (nsbp->sb_rextsize != sbp->sb_rextsize)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1059  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSIZE,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1060  				nsbp->sb_rextsize - sbp->sb_rextsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1061  		if (nsbp->sb_rbmblocks != sbp->sb_rbmblocks)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1062  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBMBLOCKS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1063  				nsbp->sb_rbmblocks - sbp->sb_rbmblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1064  		if (nsbp->sb_rblocks != sbp->sb_rblocks)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1065  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBLOCKS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1066  				nsbp->sb_rblocks - sbp->sb_rblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1067  		if (nsbp->sb_rextents != sbp->sb_rextents)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1068  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTENTS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1069  				nsbp->sb_rextents - sbp->sb_rextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1070  		if (nsbp->sb_rextslog != sbp->sb_rextslog)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1071  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSLOG,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1072  				nsbp->sb_rextslog - sbp->sb_rextslog);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1073  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1074  		 * Free new extent.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1075  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1076  		bp = NULL;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1077  		error = xfs_rtfree_range(nmp, tp, sbp->sb_rextents,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1078  			nsbp->sb_rextents - sbp->sb_rextents, &bp, &sumbno);
0924b585fc49bf Dave Chinner        2008-11-28  1079  		if (error) {
0924b585fc49bf Dave Chinner        2008-11-28  1080  error_cancel:
4906e21545814e Christoph Hellwig   2015-06-04  1081  			xfs_trans_cancel(tp);
d432c80e68e3c2 Nathan Scott        2006-09-28  1082  			break;
0924b585fc49bf Dave Chinner        2008-11-28  1083  		}
^1da177e4c3f41 Linus Torvalds      2005-04-16  1084  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1085  		 * Mark more blocks free in the superblock.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1086  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1087  		xfs_trans_mod_sb(tp, XFS_TRANS_SB_FREXTENTS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1088  			nsbp->sb_rextents - sbp->sb_rextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1089  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1090  		 * Update mp values into the real mp structure.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1091  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1092  		mp->m_rsumlevels = nrsumlevels;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1093  		mp->m_rsumsize = nrsumsize;
e5720eec0548c0 David Chinner       2008-04-10  1094  
70393313dd0b26 Christoph Hellwig   2015-06-04  1095  		error = xfs_trans_commit(tp);
0924b585fc49bf Dave Chinner        2008-11-28  1096  		if (error)
e5720eec0548c0 David Chinner       2008-04-10  1097  			break;
e5720eec0548c0 David Chinner       2008-04-10  1098  	}
^1da177e4c3f41 Linus Torvalds      2005-04-16  1099  
^1da177e4c3f41 Linus Torvalds      2005-04-16  1100  	/*
d432c80e68e3c2 Nathan Scott        2006-09-28  1101  	 * Free the fake mp structure.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1102  	 */
f0e2d93c29dc39 Denys Vlasenko      2008-05-19  1103  	kmem_free(nmp);
d432c80e68e3c2 Nathan Scott        2006-09-28  1104  
65eed012d1f2d0 Omar Sandoval       2018-12-21  1105  	/*
65eed012d1f2d0 Omar Sandoval       2018-12-21  1106  	 * If we had to allocate a new rsum_cache, we either need to free the
65eed012d1f2d0 Omar Sandoval       2018-12-21  1107  	 * old one (if we succeeded) or free the new one and restore the old one
65eed012d1f2d0 Omar Sandoval       2018-12-21  1108  	 * (if there was an error).
65eed012d1f2d0 Omar Sandoval       2018-12-21  1109  	 */
65eed012d1f2d0 Omar Sandoval       2018-12-21  1110  	if (rsum_cache != mp->m_rsum_cache) {
65eed012d1f2d0 Omar Sandoval       2018-12-21  1111  		if (error) {
65eed012d1f2d0 Omar Sandoval       2018-12-21  1112  			kmem_free(mp->m_rsum_cache);
65eed012d1f2d0 Omar Sandoval       2018-12-21  1113  			mp->m_rsum_cache = rsum_cache;
65eed012d1f2d0 Omar Sandoval       2018-12-21  1114  		} else {
65eed012d1f2d0 Omar Sandoval       2018-12-21  1115  			kmem_free(rsum_cache);
65eed012d1f2d0 Omar Sandoval       2018-12-21  1116  		}
65eed012d1f2d0 Omar Sandoval       2018-12-21  1117  	}
65eed012d1f2d0 Omar Sandoval       2018-12-21  1118  
^1da177e4c3f41 Linus Torvalds      2005-04-16  1119  	return error;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1120  }
^1da177e4c3f41 Linus Torvalds      2005-04-16  1121  

:::::: The code at line 892 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107101521.tDiLoqlw-lkp%40intel.com.

--LZvS9be/3tNcYl/X
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--LZvS9be/3tNcYl/X--
