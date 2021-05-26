Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRVIW6CQMGQEOVXPSVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B67390FD1
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 06:53:27 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id h1-20020a056e021d81b02901bb694b89fasf36010861ila.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 21:53:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622004806; cv=pass;
        d=google.com; s=arc-20160816;
        b=x93lq/bPjc7rJWPtvo5r0YfTHIDFVaKOmgY3D0zPlfxL+ZNT6n+Dst9IiUZEjxWCGO
         4RVAzG6DuMRFym2cJG6KC/E02K/WKGHthzv9aBk0F/QvTO1tXt2iswD9AgIBIdzE0qZi
         pvFpN87ElK80AzyyXg8Of0cMDF0Hx9TXZeBJL2WcGAU0/VY7YHBGNCBnlKuq9MVBjmfG
         Y4ywSMzpFFrXRCHZEBgPdyz+PiNkC+BVsWXiYy/u1bRqmP+7y4aXrDj0lxXjqAjjTsuH
         turHqOUhnE3dEqUx3Pa7LM9rgBGhgME4A0DttqQ3Cj6V2D/ONUf5w9dH8G6xnq2DueDx
         r4Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=WaXi5ugQZQgANBBYeJTR/yAxfZphMwZPVuuB1eP++SE=;
        b=cJRulfhm+uW49b2bi98Q3xBS9QqBPk8JpYGPGE8O/ru+a5tbwsTtGkN26BosswUKUt
         7K6ymysxpWj364eyks0XWjDWyiA6YI4f2LnWSmHaIMyoIb5dNBsQmgQlOrAz/w+MClTH
         wcNbwd03vtQ0KGQD9PbYoqrxjap+zLVHTFxjjREmEl1uYDzgECahTh5WddytmPckEBK0
         JLlxzP9UhOEWeMd5eSCtBRpL+LeEYwyjph77spohCdoskYXI7AOlvN5hrMMI4MNVJ9cO
         EImhvY/xvVPK3cuAzkEqG1Dznw4IFowk1wQaSiOajjTmPBUp25Iglra9vV6rtkKPa2sP
         D5zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WaXi5ugQZQgANBBYeJTR/yAxfZphMwZPVuuB1eP++SE=;
        b=shyx/RWfw0oWCwMJMChHYOkMiOjgMHqBjtqAXw4kRlrDTBNvibheUaJ07S4JXUPpo8
         mHpmMIXKlkOUe74pPUWgAABbTRm7Bv87B8U28ITKGtHWvUjGmUm8/6BT6iO0DbdwX4q+
         XBammCYtrLjxzmfYYSEqERzj0fuOQAIQ1kE3Vsms2CLIdoHLyJPiax2+DeiAhSCVYG4y
         aVO8u5FXifiWz5/PnAKXOEHK0QwT9d+3FAVk5Ux0nflU1pLRWhml/GEG0d25GAcTnBTu
         pbkQIVOMHxCEd8byCEjl7hMSfBInbzdj50Bsx2DXQw0jPUp6CyTxxphH9l5+MFWIIeLb
         omlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WaXi5ugQZQgANBBYeJTR/yAxfZphMwZPVuuB1eP++SE=;
        b=Mc44mCxnIwux3FagPEl4EHimM4Lg7bCm6P6oXdI9OsQBeeIiyWp+gOWRFMOB7OkuQ4
         AdleYPX592gNOQnWwK4GxqewMyaB/FdAvU6jyPHsRXi/3LVj04XhWG2j28obaOFw6la7
         B+vRw99zPSn5mLbmmUfafFCVY2W314CDfhTH012ukAwGJUqRWHkk8e9lfFjLPM4aFTuO
         5xod4Uz/eUjdR4Mv8wjL+XDF4L+w6Gg4Fn9i+bJ9vF1OWnLtsWAeDJyFZusM29RXC20D
         sxbA3WT1YlalfjIpPI/yrydOcMxMobnrrk2ItATA2IZ/ShKbA5Bo0zuEO/Rzrg0B8L7c
         ASjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531N0qy6VNrsefFTyoEfk+WSo6kW3O7CNgowkoddez3Gj8hWury6
	YxezNSvZJBWLSNl03fyZezo=
X-Google-Smtp-Source: ABdhPJzWVuLQDza+xvds6j8biK3ZnI9WJl8PzA9HB+jDh4+pCGOCFamGWzom0TznrzCj6K69hj1Yqg==
X-Received: by 2002:a02:6d13:: with SMTP id m19mr1207552jac.65.1622004806404;
        Tue, 25 May 2021 21:53:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2cd1:: with SMTP id j17ls3003353iow.8.gmail; Tue,
 25 May 2021 21:53:26 -0700 (PDT)
X-Received: by 2002:a5e:8c11:: with SMTP id n17mr24094693ioj.53.1622004805782;
        Tue, 25 May 2021 21:53:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622004805; cv=none;
        d=google.com; s=arc-20160816;
        b=IsfspfP9pctT8kQPoyJZ+6Le7+Kg0P1gSiOXPVz99+ZBA1wH/v4kOisI1nOmOstLXO
         BvEOV7enFsvkp7TaoZlMMVoMUVnBF9rtbnza3LOQRLQlZVLBFSHhjB46GDJkKXfneS12
         Flpsf/0oHm9sEhukJe18OSkFs2PT/0pi7ivWrbtOlsndNLjpTGNfcy22JcWr1QljDJk1
         4rg0KohhSgzHOh4HTxVq9kG2dPen/VW2223FnvQXfOJPaEHcBhw+RXSPWmcLXHIXt0/h
         5KofGxr4lflBqXuxuylh8XhtGTdNEel0/hUzYabxcYLznihhZxzgwFAKDv5IE4vDeCgL
         D5+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=lPWfTDijxDyxSYRqoCBmT06N9Wi6YhWG8Er742zsE6M=;
        b=GYkwvthaX7NI3+PqNlp8o38b0ykIk6IR7P4/8pb68U11EqFm2Rm5xiPuRHksazh5AT
         2ZFQicWrRkvvo0RStsiFWkUkehqTpdWwhm0WQ4sHSfmlj9F3A1kCLISK0AdPitJvFkRV
         YRrnTQizMgsp9j3rHFonAf1LcjgCWZS6SKea8Xx5vP817ucyN58vjPch6SeY83/hGk2l
         V2LbasRQ81aijIxjVuzcCNl0Y28guaSOc20xL+eNFvA84CNkuuzGa8PL6iEMWC4k4L3M
         O8nf+NdBUZVrSUn5Fod4vXiASSgFSSKhS8qX7StbZAM2jJBqkebZos3y8Wok+X14wBkK
         I51Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id w1si1904130ilv.0.2021.05.25.21.53.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 May 2021 21:53:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: IIGL17Q2fI0oOyqN47ZHlSQWQQmuhBXlkO5y1+AT1Qh/Rz2AdjuCKEIw/LUtriMaE8ivQsU9xr
 kp0q8lo5t7jg==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="202395124"
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; 
   d="gz'50?scan'50,208,50";a="202395124"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 May 2021 21:53:22 -0700
IronPort-SDR: HaEOR+MqPwG41d1YKjCnq69gyXpLqYvzm+UtC3I5Ch2RIUSozvvNt3dduTNts1qyCA3GaPGTqR
 JkBqrexsyQSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; 
   d="gz'50?scan'50,208,50";a="471637825"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 25 May 2021 21:53:19 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lllXi-00020C-RN; Wed, 26 May 2021 04:53:18 +0000
Date: Wed, 26 May 2021 12:52:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Darrick J. Wong" <djwong@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Darrick J. Wong" <darrick.wong@oracle.com>
Subject: [djwong-xfs:vectorized-scrub 118/302] fs/xfs/xfs_xchgrange.c:102:1:
 warning: no previous prototype for function 'xfs_swap_extents_check_format'
Message-ID: <202105261240.vGhWLO2w-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git vectorized-scrub
head:   ee6dc8370a14c9c4f0e3d4de478714e952007c2c
commit: e4f17ef10aca9df683d8c9d2af0ff654154e01fb [118/302] xfs: remove old swap extents implementation
config: powerpc-randconfig-r011-20210526 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git/commit/?id=e4f17ef10aca9df683d8c9d2af0ff654154e01fb
        git remote add djwong-xfs https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git
        git fetch --no-tags djwong-xfs vectorized-scrub
        git checkout e4f17ef10aca9df683d8c9d2af0ff654154e01fb
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/xfs/xfs_xchgrange.c:102:1: warning: no previous prototype for function 'xfs_swap_extents_check_format' [-Wmissing-prototypes]
   xfs_swap_extents_check_format(
   ^
   fs/xfs/xfs_xchgrange.c:101:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int
   ^
   static 
>> fs/xfs/xfs_xchgrange.c:227:1: warning: no previous prototype for function 'xfs_swap_extent_forks' [-Wmissing-prototypes]
   xfs_swap_extent_forks(
   ^
   fs/xfs/xfs_xchgrange.c:226:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int
   ^
   static 
   2 warnings generated.


vim +/xfs_swap_extents_check_format +102 fs/xfs/xfs_xchgrange.c

    80	
    81	/*
    82	 * We need to check that the format of the data fork in the temporary inode is
    83	 * valid for the target inode before doing the swap. This is not a problem with
    84	 * attr1 because of the fixed fork offset, but attr2 has a dynamically sized
    85	 * data fork depending on the space the attribute fork is taking so we can get
    86	 * invalid formats on the target inode.
    87	 *
    88	 * E.g. target has space for 7 extents in extent format, temp inode only has
    89	 * space for 6.  If we defragment down to 7 extents, then the tmp format is a
    90	 * btree, but when swapped it needs to be in extent format. Hence we can't just
    91	 * blindly swap data forks on attr2 filesystems.
    92	 *
    93	 * Note that we check the swap in both directions so that we don't end up with
    94	 * a corrupt temporary inode, either.
    95	 *
    96	 * Note that fixing the way xfs_fsr sets up the attribute fork in the source
    97	 * inode will prevent this situation from occurring, so all we do here is
    98	 * reject and log the attempt. basically we are putting the responsibility on
    99	 * userspace to get this right.
   100	 */
   101	int
 > 102	xfs_swap_extents_check_format(
   103		struct xfs_inode	*ip,	/* target inode */
   104		struct xfs_inode	*tip)	/* tmp inode */
   105	{
   106		struct xfs_ifork	*ifp = &ip->i_df;
   107		struct xfs_ifork	*tifp = &tip->i_df;
   108	
   109		/* User/group/project quota ids must match if quotas are enforced. */
   110		if (XFS_IS_QUOTA_ON(ip->i_mount) &&
   111		    (!uid_eq(VFS_I(ip)->i_uid, VFS_I(tip)->i_uid) ||
   112		     !gid_eq(VFS_I(ip)->i_gid, VFS_I(tip)->i_gid) ||
   113		     ip->i_projid != tip->i_projid))
   114			return -EINVAL;
   115	
   116		/* Should never get a local format */
   117		if (ifp->if_format == XFS_DINODE_FMT_LOCAL ||
   118		    tifp->if_format == XFS_DINODE_FMT_LOCAL)
   119			return -EINVAL;
   120	
   121		/*
   122		 * if the target inode has less extents that then temporary inode then
   123		 * why did userspace call us?
   124		 */
   125		if (ifp->if_nextents < tifp->if_nextents)
   126			return -EINVAL;
   127	
   128		/*
   129		 * If we have to use the (expensive) rmap swap method, we can
   130		 * handle any number of extents and any format.
   131		 */
   132		if (xfs_sb_version_hasrmapbt(&ip->i_mount->m_sb))
   133			return 0;
   134	
   135		/*
   136		 * if the target inode is in extent form and the temp inode is in btree
   137		 * form then we will end up with the target inode in the wrong format
   138		 * as we already know there are less extents in the temp inode.
   139		 */
   140		if (ifp->if_format == XFS_DINODE_FMT_EXTENTS &&
   141		    tifp->if_format == XFS_DINODE_FMT_BTREE)
   142			return -EINVAL;
   143	
   144		/* Check temp in extent form to max in target */
   145		if (tifp->if_format == XFS_DINODE_FMT_EXTENTS &&
   146		    tifp->if_nextents > XFS_IFORK_MAXEXT(ip, XFS_DATA_FORK))
   147			return -EINVAL;
   148	
   149		/* Check target in extent form to max in temp */
   150		if (ifp->if_format == XFS_DINODE_FMT_EXTENTS &&
   151		    ifp->if_nextents > XFS_IFORK_MAXEXT(tip, XFS_DATA_FORK))
   152			return -EINVAL;
   153	
   154		/*
   155		 * If we are in a btree format, check that the temp root block will fit
   156		 * in the target and that it has enough extents to be in btree format
   157		 * in the target.
   158		 *
   159		 * Note that we have to be careful to allow btree->extent conversions
   160		 * (a common defrag case) which will occur when the temp inode is in
   161		 * extent format...
   162		 */
   163		if (tifp->if_format == XFS_DINODE_FMT_BTREE) {
   164			if (XFS_IFORK_Q(ip) &&
   165			    XFS_BMAP_BMDR_SPACE(tifp->if_broot) > XFS_IFORK_BOFF(ip))
   166				return -EINVAL;
   167			if (tifp->if_nextents <= XFS_IFORK_MAXEXT(ip, XFS_DATA_FORK))
   168				return -EINVAL;
   169		}
   170	
   171		/* Reciprocal target->temp btree format checks */
   172		if (ifp->if_format == XFS_DINODE_FMT_BTREE) {
   173			if (XFS_IFORK_Q(tip) &&
   174			    XFS_BMAP_BMDR_SPACE(ip->i_df.if_broot) > XFS_IFORK_BOFF(tip))
   175				return -EINVAL;
   176			if (ifp->if_nextents <= XFS_IFORK_MAXEXT(tip, XFS_DATA_FORK))
   177				return -EINVAL;
   178		}
   179	
   180		return 0;
   181	}
   182	
   183	/*
   184	 * Fix up the owners of the bmbt blocks to refer to the current inode. The
   185	 * change owner scan attempts to order all modified buffers in the current
   186	 * transaction. In the event of ordered buffer failure, the offending buffer is
   187	 * physically logged as a fallback and the scan returns -EAGAIN. We must roll
   188	 * the transaction in this case to replenish the fallback log reservation and
   189	 * restart the scan. This process repeats until the scan completes.
   190	 */
   191	static int
   192	xfs_swap_change_owner(
   193		struct xfs_trans	**tpp,
   194		struct xfs_inode	*ip,
   195		struct xfs_inode	*tmpip)
   196	{
   197		int			error;
   198		struct xfs_trans	*tp = *tpp;
   199	
   200		do {
   201			error = xfs_bmbt_change_owner(tp, ip, XFS_DATA_FORK, ip->i_ino,
   202						      NULL);
   203			/* success or fatal error */
   204			if (error != -EAGAIN)
   205				break;
   206	
   207			error = xfs_trans_roll(tpp);
   208			if (error)
   209				break;
   210			tp = *tpp;
   211	
   212			/*
   213			 * Redirty both inodes so they can relog and keep the log tail
   214			 * moving forward.
   215			 */
   216			xfs_trans_ijoin(tp, ip, 0);
   217			xfs_trans_ijoin(tp, tmpip, 0);
   218			xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);
   219			xfs_trans_log_inode(tp, tmpip, XFS_ILOG_CORE);
   220		} while (true);
   221	
   222		return error;
   223	}
   224	
   225	/* Swap the extents of two files by swapping data forks. */
   226	int
 > 227	xfs_swap_extent_forks(
   228		struct xfs_trans	**tpp,
   229		struct xfs_swapext_req	*req)
   230	{
   231		struct xfs_inode	*ip = req->ip1;
   232		struct xfs_inode	*tip = req->ip2;
   233		xfs_filblks_t		aforkblks = 0;
   234		xfs_filblks_t		taforkblks = 0;
   235		xfs_extnum_t		junk;
   236		uint64_t		tmp;
   237		unsigned int		reflink_state;
   238		int			src_log_flags = XFS_ILOG_CORE;
   239		int			target_log_flags = XFS_ILOG_CORE;
   240		int			error;
   241	
   242		reflink_state = xfs_swapext_reflink_prep(req);
   243	
   244		/*
   245		 * Count the number of extended attribute blocks
   246		 */
   247		if (XFS_IFORK_Q(ip) && ip->i_afp->if_nextents > 0 &&
   248		    ip->i_afp->if_format != XFS_DINODE_FMT_LOCAL) {
   249			error = xfs_bmap_count_blocks(*tpp, ip, XFS_ATTR_FORK, &junk,
   250					&aforkblks);
   251			if (error)
   252				return error;
   253		}
   254		if (XFS_IFORK_Q(tip) && tip->i_afp->if_nextents > 0 &&
   255		    tip->i_afp->if_format != XFS_DINODE_FMT_LOCAL) {
   256			error = xfs_bmap_count_blocks(*tpp, tip, XFS_ATTR_FORK, &junk,
   257					&taforkblks);
   258			if (error)
   259				return error;
   260		}
   261	
   262		/*
   263		 * Btree format (v3) inodes have the inode number stamped in the bmbt
   264		 * block headers. We can't start changing the bmbt blocks until the
   265		 * inode owner change is logged so recovery does the right thing in the
   266		 * event of a crash. Set the owner change log flags now and leave the
   267		 * bmbt scan as the last step.
   268		 */
   269		if (xfs_sb_version_has_v3inode(&ip->i_mount->m_sb)) {
   270			if (ip->i_df.if_format == XFS_DINODE_FMT_BTREE)
   271				target_log_flags |= XFS_ILOG_DOWNER;
   272			if (tip->i_df.if_format == XFS_DINODE_FMT_BTREE)
   273				src_log_flags |= XFS_ILOG_DOWNER;
   274		}
   275	
   276		/*
   277		 * Swap the data forks of the inodes
   278		 */
   279		swap(ip->i_df, tip->i_df);
   280	
   281		/*
   282		 * Fix the on-disk inode values
   283		 */
   284		tmp = (uint64_t)ip->i_nblocks;
   285		ip->i_nblocks = tip->i_nblocks - taforkblks + aforkblks;
   286		tip->i_nblocks = tmp + taforkblks - aforkblks;
   287	
   288		/*
   289		 * The extents in the source inode could still contain speculative
   290		 * preallocation beyond EOF (e.g. the file is open but not modified
   291		 * while defrag is in progress). In that case, we need to copy over the
   292		 * number of delalloc blocks the data fork in the source inode is
   293		 * tracking beyond EOF so that when the fork is truncated away when the
   294		 * temporary inode is unlinked we don't underrun the i_delayed_blks
   295		 * counter on that inode.
   296		 */
   297		ASSERT(tip->i_delayed_blks == 0);
   298		tip->i_delayed_blks = ip->i_delayed_blks;
   299		ip->i_delayed_blks = 0;
   300	
   301		switch (ip->i_df.if_format) {
   302		case XFS_DINODE_FMT_EXTENTS:
   303			src_log_flags |= XFS_ILOG_DEXT;
   304			break;
   305		case XFS_DINODE_FMT_BTREE:
   306			ASSERT(!xfs_sb_version_has_v3inode(&ip->i_mount->m_sb) ||
   307			       (src_log_flags & XFS_ILOG_DOWNER));
   308			src_log_flags |= XFS_ILOG_DBROOT;
   309			break;
   310		}
   311	
   312		switch (tip->i_df.if_format) {
   313		case XFS_DINODE_FMT_EXTENTS:
   314			target_log_flags |= XFS_ILOG_DEXT;
   315			break;
   316		case XFS_DINODE_FMT_BTREE:
   317			target_log_flags |= XFS_ILOG_DBROOT;
   318			ASSERT(!xfs_sb_version_has_v3inode(&ip->i_mount->m_sb) ||
   319			       (target_log_flags & XFS_ILOG_DOWNER));
   320			break;
   321		}
   322	
   323		xfs_swapext_reflink_finish(*tpp, req, reflink_state);
   324	
   325		xfs_trans_log_inode(*tpp, ip,  src_log_flags);
   326		xfs_trans_log_inode(*tpp, tip, target_log_flags);
   327	
   328		/*
   329		 * The extent forks have been swapped, but crc=1,rmapbt=0 filesystems
   330		 * have inode number owner values in the bmbt blocks that still refer to
   331		 * the old inode. Scan each bmbt to fix up the owner values with the
   332		 * inode number of the current inode.
   333		 */
   334		if (src_log_flags & XFS_ILOG_DOWNER) {
   335			error = xfs_swap_change_owner(tpp, ip, tip);
   336			if (error)
   337				return error;
   338		}
   339		if (target_log_flags & XFS_ILOG_DOWNER) {
   340			error = xfs_swap_change_owner(tpp, tip, ip);
   341			if (error)
   342				return error;
   343		}
   344	
   345		return 0;
   346	}
   347	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105261240.vGhWLO2w-lkp%40intel.com.

--+QahgC5+KEYLbs62
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--+QahgC5+KEYLbs62--
