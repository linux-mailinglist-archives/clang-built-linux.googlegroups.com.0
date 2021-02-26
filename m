Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBU624WAQMGQELM6WJUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AA63269B2
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 22:51:17 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id m4sf7498423pfd.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 13:51:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614376276; cv=pass;
        d=google.com; s=arc-20160816;
        b=qGm6SjxcXBLdO/Zx7DvTdHrHc2GwcGDVEBxRWCGU8FgunHuKruP44YhTh3vrCnRE0n
         ANHv5xbVIh6kEvboNSUCZgbWxqI5KbMrBD2WplwNZTF/OhCE7SyM/DfW05B71lMM5jah
         gTpoj4Yw2HUuClozsnnjelhcTBbiOf1sHj5rEHfo6A8u25yhtjcNFNqWnI31FZzdzmx3
         Q5rB0qT9v5pSH8AJYJH5LYAC60544wDfD5cHxXSHG1JXmHxT4DAwD1Xx0gGCCIMQgM0h
         5DGd5LlHMN2xGJC69o0J4MNkvDiZrbb3CyRIPLWqPTH9FtrBK8uRcIiV8ofYcFuXSDwd
         SWQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dFpU5J0FwXfGRN45AuDyLm/mTTdgDVnQjZxo79g3Rt0=;
        b=nchh3ptLJvabnonxx2rvy7t4SnAJghOgiwnmFnQLAHh5i+BF2uWBi4Ymv+RK2lTe98
         zaD/s69m00Om6X+tXMCIeEUcgzWoEORprSngaJr8QfnBJvweQhmWDkAmqCxtacjpvrED
         HeryfWvezKtOgeB7zDHYSj7GanlHjdgfbRjPk1+mkr+ZqqWbCUbIhySIFwkHxsae9GaK
         ltwgPRCe47q6O1BwzgFxZrzzpfy/ABWHplV/V0uUpw9soGOe4q2/UbS67t/TNoqv4sAh
         ISwdy5IcfmmG3cDxQvqdVi5tjosg1LLy7bKpOf1LqkQ4nE+mHGr22j9YhZfV5T4j/cgX
         nR4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dFpU5J0FwXfGRN45AuDyLm/mTTdgDVnQjZxo79g3Rt0=;
        b=c80QOw4+pHdYcJmoCpcjNn2uRy3Vi4yuQPYc56aPSLp48as8g+zYq9UySsjipMXa7S
         umT6od4YzysE957GUEnv/pi47UAacFGEQ0L1xomJfY3PJMPoiD9X0acuoQghE9V2PySJ
         5FXkBcLmFo0Vyqv8t5BP3nNYg+ape5sRhtsEnSUKo8iCrdF3pI1UJQ7woYNQbZ095X2i
         Mhr1I0htY6eGuFaXFKP5ppHkat8DcoWqG42aNoBHyWBfPr08V1NfnndOqBT2fY8tr8y7
         NmG7E06nAXHLY8R3bHj5cVbMftqjk7jqKqp16YX4L4yfMEE1TDdMQtE9w+Lt5GHbL8i9
         eIFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dFpU5J0FwXfGRN45AuDyLm/mTTdgDVnQjZxo79g3Rt0=;
        b=esnp/SZjtvp+O1AWPOI2RBbn9riRCxZ5Ow/1gq+xj6NPqw2iR6Qxm91e3SSHz+OmbD
         EkBU9JmaeD+C9wAP5q/W+7tdRr4i2+tzg0Abyyc2Jr1Xv6XHH9tx2jm9xTjvT9TD3QGO
         +gae217GCMeyppMWEACxHDCP3+NJhoOcSgJUM+4Sq9kYft5rgZAGe7DXA3Y01gFYlBfX
         4uRWn5jQFrt9WsfMXc+bKzZ5jgVSZtY3Nt6/4OiZIoWznz9RiVrobxtCR4czlem5hJXQ
         BLeOD1cZ/3XH9H3t/aLRsKszwuUDSggzkV0OehkNvmShZEv2pLgkuIzWL5ZD737nxQf9
         EmnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VIObBJffMKjOsf8IB0XNl1xkDRiXbKp+LASbIX3YDwrgBPYKe
	geYg0mzjym6HhSboqSgHLSQ=
X-Google-Smtp-Source: ABdhPJxbXC2PXsSFvA6zNOnnluWUfbqt1jVKE6ZDPZm4Xm+R6ZXpwLGFXx2DLzmH/AsR55RGjaCoIw==
X-Received: by 2002:a17:90a:5d02:: with SMTP id s2mr5271906pji.149.1614376276066;
        Fri, 26 Feb 2021 13:51:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:953:: with SMTP id dw19ls1637729pjb.1.canary-gmail;
 Fri, 26 Feb 2021 13:51:15 -0800 (PST)
X-Received: by 2002:a17:90a:ab86:: with SMTP id n6mr5339918pjq.200.1614376275400;
        Fri, 26 Feb 2021 13:51:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614376275; cv=none;
        d=google.com; s=arc-20160816;
        b=CKIX6q3QTnFMjYeGWTbAOjueSkRpkqoQibHWAlaNlh/nc6oBXWoIFYFmoUcwgZl7n4
         BFBkwUC+H7K6/KdPuc3bJhpNPqDUfUAj5gyNa1kLdA1j5wedvx0N/Gj9kN9PqMRGcDxN
         z/QoXJnznnlblMneEFK8IczkN6zeDHLWmzUL5xNo4KGNvjo4YZvKmjOXoenHFPlXQGTA
         jda5lcQwedO6xQPbAsgSR+PU8camhg2gE26rb+V9nZIkXORK8Jtm7CnrqBid3GonhxK+
         UymE9ETIS1+CMkSPO3CQBG0Qcdf+NlUjDHQkX2+SqxPmmNRupAavC3b89sVwEprauR01
         NWtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=X3hOrh3+KZYHNX/NukHlNcgi5lpTsmxtSDy6CCFF3EE=;
        b=UL0xERA7NMH93uBJfPM//h7esQwX7IS380kpFXxdkMciDRE/kDs5PFKfqJDWs0erLO
         piwmyy933L/V4ajSY0nnTNJKuO5j3GE2/hK4bilwoFDeMITkPi+fNT6C0wQNZSotkC8x
         PTXH2VUikTc7+pNsnFhO6NxgfQgSlAje+Viagkmw5Xiv2yR4mmta7X8pnjoI17GaQKNL
         Xz8rwViaGvMoc2JlzfS8238FerS9Adhw9QXFGpBmWgzpMmlBSIxCdmhsvq5dyj2fA+5X
         ha/GajmcS3Pd+P0YcAUBgd0MJl8boA5wKxHYtrSMc2gzP0yKxlcUixsZ6wuKaNh9WLt+
         bvRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id g7si648608pju.3.2021.02.26.13.51.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 13:51:15 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: DuTmFp5FBYhgifw/ess1LvaQexqhMi3oHFLiAA1DeNo2Z5AAmopCLqpJdTma93DjpUWJ4+L2/Q
 S24v2iwd6R0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="205550979"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="gz'50?scan'50,208,50";a="205550979"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Feb 2021 13:51:13 -0800
IronPort-SDR: InXYykza4z32HeGECHswsGvarqC7+UZkMFb5angp+gv/BDLSPfx+3l0w9rJZ0rQ44gsuEV1ZMp
 hzfVbGW7dbdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; 
   d="gz'50?scan'50,208,50";a="425603783"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 26 Feb 2021 13:51:11 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lFl0v-0003R9-PQ; Fri, 26 Feb 2021 21:51:09 +0000
Date: Sat, 27 Feb 2021 05:50:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Chandan Babu R <chandanrlinux@gmail.com>
Subject: fs/xfs/xfs_rtalloc.c:898:1: warning: stack frame size of 1048 bytes
 in function 'xfs_growfs_rt'
Message-ID: <202102270554.Hgsu4SMy-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline
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


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Darrick,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   8b83369ddcb3fb9cab5c1088987ce477565bb630
commit: f4c32e87de7d66074d5612567c5eac7325024428 xfs: fix realtime bitmap/summary file truncation when growing rt volume
date:   5 months ago
config: mips-randconfig-r034-20210226 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b889ef4214bc6dc8880fdd4badc0dcd9a3197753)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f4c32e87de7d66074d5612567c5eac7325024428
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f4c32e87de7d66074d5612567c5eac7325024428
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/xfs/xfs_rtalloc.c:898:1: warning: stack frame size of 1048 bytes in function 'xfs_growfs_rt' [-Wframe-larger-than=]
   xfs_growfs_rt(
   ^
   1 warning generated.


vim +/xfs_growfs_rt +898 fs/xfs/xfs_rtalloc.c

65eed012d1f2d0 Omar Sandoval       2018-12-21   889  
^1da177e4c3f41 Linus Torvalds      2005-04-16   890  /*
^1da177e4c3f41 Linus Torvalds      2005-04-16   891   * Visible (exported) functions.
^1da177e4c3f41 Linus Torvalds      2005-04-16   892   */
^1da177e4c3f41 Linus Torvalds      2005-04-16   893  
^1da177e4c3f41 Linus Torvalds      2005-04-16   894  /*
^1da177e4c3f41 Linus Torvalds      2005-04-16   895   * Grow the realtime area of the filesystem.
^1da177e4c3f41 Linus Torvalds      2005-04-16   896   */
^1da177e4c3f41 Linus Torvalds      2005-04-16   897  int
^1da177e4c3f41 Linus Torvalds      2005-04-16  @898  xfs_growfs_rt(
^1da177e4c3f41 Linus Torvalds      2005-04-16   899  	xfs_mount_t	*mp,		/* mount point for filesystem */
^1da177e4c3f41 Linus Torvalds      2005-04-16   900  	xfs_growfs_rt_t	*in)		/* growfs rt input struct */
^1da177e4c3f41 Linus Torvalds      2005-04-16   901  {
^1da177e4c3f41 Linus Torvalds      2005-04-16   902  	xfs_rtblock_t	bmbno;		/* bitmap block number */
^1da177e4c3f41 Linus Torvalds      2005-04-16   903  	xfs_buf_t	*bp;		/* temporary buffer */
^1da177e4c3f41 Linus Torvalds      2005-04-16   904  	int		error;		/* error return value */
^1da177e4c3f41 Linus Torvalds      2005-04-16   905  	xfs_mount_t	*nmp;		/* new (fake) mount structure */
d5cf09baced0ef Christoph Hellwig   2014-07-30   906  	xfs_rfsblock_t	nrblocks;	/* new number of realtime blocks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   907  	xfs_extlen_t	nrbmblocks;	/* new number of rt bitmap blocks */
d5cf09baced0ef Christoph Hellwig   2014-07-30   908  	xfs_rtblock_t	nrextents;	/* new number of realtime extents */
^1da177e4c3f41 Linus Torvalds      2005-04-16   909  	uint8_t		nrextslog;	/* new log2 of sb_rextents */
^1da177e4c3f41 Linus Torvalds      2005-04-16   910  	xfs_extlen_t	nrsumblocks;	/* new number of summary blocks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   911  	uint		nrsumlevels;	/* new rt summary levels */
^1da177e4c3f41 Linus Torvalds      2005-04-16   912  	uint		nrsumsize;	/* new size of rt summary, bytes */
^1da177e4c3f41 Linus Torvalds      2005-04-16   913  	xfs_sb_t	*nsbp;		/* new superblock */
^1da177e4c3f41 Linus Torvalds      2005-04-16   914  	xfs_extlen_t	rbmblocks;	/* current number of rt bitmap blocks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   915  	xfs_extlen_t	rsumblocks;	/* current number of rt summary blks */
^1da177e4c3f41 Linus Torvalds      2005-04-16   916  	xfs_sb_t	*sbp;		/* old superblock */
^1da177e4c3f41 Linus Torvalds      2005-04-16   917  	xfs_fsblock_t	sumbno;		/* summary block number */
65eed012d1f2d0 Omar Sandoval       2018-12-21   918  	uint8_t		*rsum_cache;	/* old summary cache */
^1da177e4c3f41 Linus Torvalds      2005-04-16   919  
^1da177e4c3f41 Linus Torvalds      2005-04-16   920  	sbp = &mp->m_sb;
^1da177e4c3f41 Linus Torvalds      2005-04-16   921  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   922  	 * Initial error checking.
^1da177e4c3f41 Linus Torvalds      2005-04-16   923  	 */
743bb4650da9e2 sandeen@sandeen.net 2008-11-25   924  	if (!capable(CAP_SYS_ADMIN))
2451337dd04390 Dave Chinner        2014-06-25   925  		return -EPERM;
73024cf11522c0 Eric Sesterhenn     2006-06-28   926  	if (mp->m_rtdev_targp == NULL || mp->m_rbmip == NULL ||
^1da177e4c3f41 Linus Torvalds      2005-04-16   927  	    (nrblocks = in->newblocks) <= sbp->sb_rblocks ||
^1da177e4c3f41 Linus Torvalds      2005-04-16   928  	    (sbp->sb_rblocks && (in->extsize != sbp->sb_rextsize)))
2451337dd04390 Dave Chinner        2014-06-25   929  		return -EINVAL;
4cc929ee305c69 Nathan Scott        2007-05-14   930  	if ((error = xfs_sb_validate_fsb_count(sbp, nrblocks)))
4cc929ee305c69 Nathan Scott        2007-05-14   931  		return error;
^1da177e4c3f41 Linus Torvalds      2005-04-16   932  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   933  	 * Read in the last block of the device, make sure it exists.
^1da177e4c3f41 Linus Torvalds      2005-04-16   934  	 */
ba3726742c1712 Dave Chinner        2014-10-02   935  	error = xfs_buf_read_uncached(mp->m_rtdev_targp,
4cc929ee305c69 Nathan Scott        2007-05-14   936  				XFS_FSB_TO_BB(mp, nrblocks - 1),
ba3726742c1712 Dave Chinner        2014-10-02   937  				XFS_FSB_TO_BB(mp, 1), 0, &bp, NULL);
ba3726742c1712 Dave Chinner        2014-10-02   938  	if (error)
eab4e63368b4cf Dave Chinner        2012-11-12   939  		return error;
^1da177e4c3f41 Linus Torvalds      2005-04-16   940  	xfs_buf_relse(bp);
1922c949c59f93 Dave Chinner        2010-09-22   941  
^1da177e4c3f41 Linus Torvalds      2005-04-16   942  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   943  	 * Calculate new parameters.  These are the final values to be reached.
^1da177e4c3f41 Linus Torvalds      2005-04-16   944  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   945  	nrextents = nrblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   946  	do_div(nrextents, in->extsize);
68c3271515f11f Nathan Scott        2006-09-28   947  	nrbmblocks = howmany_64(nrextents, NBBY * sbp->sb_blocksize);
^1da177e4c3f41 Linus Torvalds      2005-04-16   948  	nrextslog = xfs_highbit32(nrextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16   949  	nrsumlevels = nrextslog + 1;
^1da177e4c3f41 Linus Torvalds      2005-04-16   950  	nrsumsize = (uint)sizeof(xfs_suminfo_t) * nrsumlevels * nrbmblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   951  	nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16   952  	nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16   953  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   954  	 * New summary size can't be more than half the size of
^1da177e4c3f41 Linus Torvalds      2005-04-16   955  	 * the log.  This prevents us from getting a log overflow,
^1da177e4c3f41 Linus Torvalds      2005-04-16   956  	 * since we'll log basically the whole summary file at once.
^1da177e4c3f41 Linus Torvalds      2005-04-16   957  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   958  	if (nrsumblocks > (mp->m_sb.sb_logblocks >> 1))
2451337dd04390 Dave Chinner        2014-06-25   959  		return -EINVAL;
^1da177e4c3f41 Linus Torvalds      2005-04-16   960  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   961  	 * Get the old block counts for bitmap and summary inodes.
^1da177e4c3f41 Linus Torvalds      2005-04-16   962  	 * These can't change since other growfs callers are locked out.
^1da177e4c3f41 Linus Torvalds      2005-04-16   963  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   964  	rbmblocks = XFS_B_TO_FSB(mp, mp->m_rbmip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16   965  	rsumblocks = XFS_B_TO_FSB(mp, mp->m_rsumip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16   966  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   967  	 * Allocate space to the bitmap and summary files, as necessary.
^1da177e4c3f41 Linus Torvalds      2005-04-16   968  	 */
1050c71e2925ab Christoph Hellwig   2011-02-13   969  	error = xfs_growfs_rt_alloc(mp, rbmblocks, nrbmblocks, mp->m_rbmip);
1050c71e2925ab Christoph Hellwig   2011-02-13   970  	if (error)
^1da177e4c3f41 Linus Torvalds      2005-04-16   971  		return error;
1050c71e2925ab Christoph Hellwig   2011-02-13   972  	error = xfs_growfs_rt_alloc(mp, rsumblocks, nrsumblocks, mp->m_rsumip);
1050c71e2925ab Christoph Hellwig   2011-02-13   973  	if (error)
^1da177e4c3f41 Linus Torvalds      2005-04-16   974  		return error;
65eed012d1f2d0 Omar Sandoval       2018-12-21   975  
65eed012d1f2d0 Omar Sandoval       2018-12-21   976  	rsum_cache = mp->m_rsum_cache;
65eed012d1f2d0 Omar Sandoval       2018-12-21   977  	if (nrbmblocks != sbp->sb_rbmblocks)
65eed012d1f2d0 Omar Sandoval       2018-12-21   978  		xfs_alloc_rsum_cache(mp, nrbmblocks);
65eed012d1f2d0 Omar Sandoval       2018-12-21   979  
d432c80e68e3c2 Nathan Scott        2006-09-28   980  	/*
d432c80e68e3c2 Nathan Scott        2006-09-28   981  	 * Allocate a new (fake) mount/sb.
d432c80e68e3c2 Nathan Scott        2006-09-28   982  	 */
707e0ddaf67e89 Tetsuo Handa        2019-08-26   983  	nmp = kmem_alloc(sizeof(*nmp), 0);
^1da177e4c3f41 Linus Torvalds      2005-04-16   984  	/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   985  	 * Loop over the bitmap blocks.
^1da177e4c3f41 Linus Torvalds      2005-04-16   986  	 * We will do everything one bitmap block at a time.
^1da177e4c3f41 Linus Torvalds      2005-04-16   987  	 * Skip the current block if it is exactly full.
^1da177e4c3f41 Linus Torvalds      2005-04-16   988  	 * This also deals with the case where there were no rtextents before.
^1da177e4c3f41 Linus Torvalds      2005-04-16   989  	 */
^1da177e4c3f41 Linus Torvalds      2005-04-16   990  	for (bmbno = sbp->sb_rbmblocks -
^1da177e4c3f41 Linus Torvalds      2005-04-16   991  		     ((sbp->sb_rextents & ((1 << mp->m_blkbit_log) - 1)) != 0);
^1da177e4c3f41 Linus Torvalds      2005-04-16   992  	     bmbno < nrbmblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16   993  	     bmbno++) {
0924b585fc49bf Dave Chinner        2008-11-28   994  		xfs_trans_t	*tp;
0924b585fc49bf Dave Chinner        2008-11-28   995  
^1da177e4c3f41 Linus Torvalds      2005-04-16   996  		*nmp = *mp;
^1da177e4c3f41 Linus Torvalds      2005-04-16   997  		nsbp = &nmp->m_sb;
^1da177e4c3f41 Linus Torvalds      2005-04-16   998  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16   999  		 * Calculate new sb and mount fields for this round.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1000  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1001  		nsbp->sb_rextsize = in->extsize;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1002  		nsbp->sb_rbmblocks = bmbno + 1;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1003  		nsbp->sb_rblocks =
^1da177e4c3f41 Linus Torvalds      2005-04-16  1004  			XFS_RTMIN(nrblocks,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1005  				  nsbp->sb_rbmblocks * NBBY *
^1da177e4c3f41 Linus Torvalds      2005-04-16  1006  				  nsbp->sb_blocksize * nsbp->sb_rextsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1007  		nsbp->sb_rextents = nsbp->sb_rblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1008  		do_div(nsbp->sb_rextents, nsbp->sb_rextsize);
79071eb0b2f142 David Chinner       2008-08-13  1009  		ASSERT(nsbp->sb_rextents != 0);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1010  		nsbp->sb_rextslog = xfs_highbit32(nsbp->sb_rextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1011  		nrsumlevels = nmp->m_rsumlevels = nsbp->sb_rextslog + 1;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1012  		nrsumsize =
^1da177e4c3f41 Linus Torvalds      2005-04-16  1013  			(uint)sizeof(xfs_suminfo_t) * nrsumlevels *
^1da177e4c3f41 Linus Torvalds      2005-04-16  1014  			nsbp->sb_rbmblocks;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1015  		nrsumblocks = XFS_B_TO_FSB(mp, nrsumsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1016  		nmp->m_rsumsize = nrsumsize = XFS_FSB_TO_B(mp, nrsumblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1017  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1018  		 * Start a transaction, get the log reservation.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1019  		 */
253f4911f297b8 Christoph Hellwig   2016-04-06  1020  		error = xfs_trans_alloc(mp, &M_RES(mp)->tr_growrtfree, 0, 0, 0,
253f4911f297b8 Christoph Hellwig   2016-04-06  1021  				&tp);
3d3c8b5222b924 Jie Liu             2013-08-12  1022  		if (error)
253f4911f297b8 Christoph Hellwig   2016-04-06  1023  			break;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1024  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1025  		 * Lock out other callers by grabbing the bitmap inode lock.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1026  		 */
1050c71e2925ab Christoph Hellwig   2011-02-13  1027  		xfs_ilock(mp->m_rbmip, XFS_ILOCK_EXCL);
ddc3415aba1cb2 Christoph Hellwig   2011-09-19  1028  		xfs_trans_ijoin(tp, mp->m_rbmip, XFS_ILOCK_EXCL);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1029  		/*
f4c32e87de7d66 Darrick J. Wong     2020-10-07  1030  		 * Update the bitmap inode's size ondisk and incore.  We need
f4c32e87de7d66 Darrick J. Wong     2020-10-07  1031  		 * to update the incore size so that inode inactivation won't
f4c32e87de7d66 Darrick J. Wong     2020-10-07  1032  		 * punch what it thinks are "posteof" blocks.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1033  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1034  		mp->m_rbmip->i_d.di_size =
^1da177e4c3f41 Linus Torvalds      2005-04-16  1035  			nsbp->sb_rbmblocks * nsbp->sb_blocksize;
f4c32e87de7d66 Darrick J. Wong     2020-10-07  1036  		i_size_write(VFS_I(mp->m_rbmip), mp->m_rbmip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1037  		xfs_trans_log_inode(tp, mp->m_rbmip, XFS_ILOG_CORE);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1038  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1039  		 * Get the summary inode into the transaction.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1040  		 */
1050c71e2925ab Christoph Hellwig   2011-02-13  1041  		xfs_ilock(mp->m_rsumip, XFS_ILOCK_EXCL);
ddc3415aba1cb2 Christoph Hellwig   2011-09-19  1042  		xfs_trans_ijoin(tp, mp->m_rsumip, XFS_ILOCK_EXCL);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1043  		/*
f4c32e87de7d66 Darrick J. Wong     2020-10-07  1044  		 * Update the summary inode's size.  We need to update the
f4c32e87de7d66 Darrick J. Wong     2020-10-07  1045  		 * incore size so that inode inactivation won't punch what it
f4c32e87de7d66 Darrick J. Wong     2020-10-07  1046  		 * thinks are "posteof" blocks.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1047  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1048  		mp->m_rsumip->i_d.di_size = nmp->m_rsumsize;
f4c32e87de7d66 Darrick J. Wong     2020-10-07  1049  		i_size_write(VFS_I(mp->m_rsumip), mp->m_rsumip->i_d.di_size);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1050  		xfs_trans_log_inode(tp, mp->m_rsumip, XFS_ILOG_CORE);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1051  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1052  		 * Copy summary data from old to new sizes.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1053  		 * Do this when the real size (not block-aligned) changes.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1054  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1055  		if (sbp->sb_rbmblocks != nsbp->sb_rbmblocks ||
^1da177e4c3f41 Linus Torvalds      2005-04-16  1056  		    mp->m_rsumlevels != nmp->m_rsumlevels) {
^1da177e4c3f41 Linus Torvalds      2005-04-16  1057  			error = xfs_rtcopy_summary(mp, nmp, tp);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1058  			if (error)
0924b585fc49bf Dave Chinner        2008-11-28  1059  				goto error_cancel;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1060  		}
^1da177e4c3f41 Linus Torvalds      2005-04-16  1061  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1062  		 * Update superblock fields.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1063  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1064  		if (nsbp->sb_rextsize != sbp->sb_rextsize)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1065  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSIZE,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1066  				nsbp->sb_rextsize - sbp->sb_rextsize);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1067  		if (nsbp->sb_rbmblocks != sbp->sb_rbmblocks)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1068  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBMBLOCKS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1069  				nsbp->sb_rbmblocks - sbp->sb_rbmblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1070  		if (nsbp->sb_rblocks != sbp->sb_rblocks)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1071  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_RBLOCKS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1072  				nsbp->sb_rblocks - sbp->sb_rblocks);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1073  		if (nsbp->sb_rextents != sbp->sb_rextents)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1074  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTENTS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1075  				nsbp->sb_rextents - sbp->sb_rextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1076  		if (nsbp->sb_rextslog != sbp->sb_rextslog)
^1da177e4c3f41 Linus Torvalds      2005-04-16  1077  			xfs_trans_mod_sb(tp, XFS_TRANS_SB_REXTSLOG,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1078  				nsbp->sb_rextslog - sbp->sb_rextslog);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1079  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1080  		 * Free new extent.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1081  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1082  		bp = NULL;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1083  		error = xfs_rtfree_range(nmp, tp, sbp->sb_rextents,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1084  			nsbp->sb_rextents - sbp->sb_rextents, &bp, &sumbno);
0924b585fc49bf Dave Chinner        2008-11-28  1085  		if (error) {
0924b585fc49bf Dave Chinner        2008-11-28  1086  error_cancel:
4906e21545814e Christoph Hellwig   2015-06-04  1087  			xfs_trans_cancel(tp);
d432c80e68e3c2 Nathan Scott        2006-09-28  1088  			break;
0924b585fc49bf Dave Chinner        2008-11-28  1089  		}
^1da177e4c3f41 Linus Torvalds      2005-04-16  1090  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1091  		 * Mark more blocks free in the superblock.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1092  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1093  		xfs_trans_mod_sb(tp, XFS_TRANS_SB_FREXTENTS,
^1da177e4c3f41 Linus Torvalds      2005-04-16  1094  			nsbp->sb_rextents - sbp->sb_rextents);
^1da177e4c3f41 Linus Torvalds      2005-04-16  1095  		/*
^1da177e4c3f41 Linus Torvalds      2005-04-16  1096  		 * Update mp values into the real mp structure.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1097  		 */
^1da177e4c3f41 Linus Torvalds      2005-04-16  1098  		mp->m_rsumlevels = nrsumlevels;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1099  		mp->m_rsumsize = nrsumsize;
e5720eec0548c0 David Chinner       2008-04-10  1100  
70393313dd0b26 Christoph Hellwig   2015-06-04  1101  		error = xfs_trans_commit(tp);
0924b585fc49bf Dave Chinner        2008-11-28  1102  		if (error)
e5720eec0548c0 David Chinner       2008-04-10  1103  			break;
e5720eec0548c0 David Chinner       2008-04-10  1104  	}
^1da177e4c3f41 Linus Torvalds      2005-04-16  1105  
^1da177e4c3f41 Linus Torvalds      2005-04-16  1106  	/*
d432c80e68e3c2 Nathan Scott        2006-09-28  1107  	 * Free the fake mp structure.
^1da177e4c3f41 Linus Torvalds      2005-04-16  1108  	 */
f0e2d93c29dc39 Denys Vlasenko      2008-05-19  1109  	kmem_free(nmp);
d432c80e68e3c2 Nathan Scott        2006-09-28  1110  
65eed012d1f2d0 Omar Sandoval       2018-12-21  1111  	/*
65eed012d1f2d0 Omar Sandoval       2018-12-21  1112  	 * If we had to allocate a new rsum_cache, we either need to free the
65eed012d1f2d0 Omar Sandoval       2018-12-21  1113  	 * old one (if we succeeded) or free the new one and restore the old one
65eed012d1f2d0 Omar Sandoval       2018-12-21  1114  	 * (if there was an error).
65eed012d1f2d0 Omar Sandoval       2018-12-21  1115  	 */
65eed012d1f2d0 Omar Sandoval       2018-12-21  1116  	if (rsum_cache != mp->m_rsum_cache) {
65eed012d1f2d0 Omar Sandoval       2018-12-21  1117  		if (error) {
65eed012d1f2d0 Omar Sandoval       2018-12-21  1118  			kmem_free(mp->m_rsum_cache);
65eed012d1f2d0 Omar Sandoval       2018-12-21  1119  			mp->m_rsum_cache = rsum_cache;
65eed012d1f2d0 Omar Sandoval       2018-12-21  1120  		} else {
65eed012d1f2d0 Omar Sandoval       2018-12-21  1121  			kmem_free(rsum_cache);
65eed012d1f2d0 Omar Sandoval       2018-12-21  1122  		}
65eed012d1f2d0 Omar Sandoval       2018-12-21  1123  	}
65eed012d1f2d0 Omar Sandoval       2018-12-21  1124  
^1da177e4c3f41 Linus Torvalds      2005-04-16  1125  	return error;
^1da177e4c3f41 Linus Torvalds      2005-04-16  1126  }
^1da177e4c3f41 Linus Torvalds      2005-04-16  1127  

:::::: The code at line 898 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102270554.Hgsu4SMy-lkp%40intel.com.

--3V7upXqbjpZ4EhLz
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
MNplXq6qDEf9D1VamXF7QQEA

--3V7upXqbjpZ4EhLz--
