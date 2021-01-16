Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNMARKAAMGQETWRYJ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5BC2F8BC0
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 06:57:10 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id c1sf2489340uab.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:57:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610776629; cv=pass;
        d=google.com; s=arc-20160816;
        b=rNh74N4i8r35ZZ1XiXR/zWpJ3wfizn/vzyQAmdUmbbFsyiaAYY1mtpiDe43eAQC5wl
         v3cqH5Rel4IqjOuvhRb7UOz3SLiVW5viIoF/uf1Bd+anarry0krYFNQpuO9jat6ogtXB
         uD4ep3sKP/TLd84YuRaGNmI8ASWHSyy63HLZGnmgCSP9mXj2K4Fe+1gyH/Db81QRpC4l
         vbXvYMUgLcJvSo6zN+CIvlYqokY7B8eaiKdan3JV/EtFRF/if/PFmHCbBneVDAomJRMP
         ZYySsPwP6JomneXL5x8spW8CbyAE9aEji4dxzThVtQc5kwvPpzVwaa6ZyDy2WZuss+2s
         nHqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=vFSYtPuNVdKK+BtMJnxsscs9Ep/v+LsDmN+vOIalhUk=;
        b=gboI0TISeAqgeIpAMKknfN2SEJ1tNVnQjno8fsCsJT2k1MuHuXc3MtUBhfngNtl44k
         yFVawChy3PIJi0OFVb3IEeil9rVWxACNfPPBmiMx8UUc8aBrp5XUKPT8MDLAMbC9mDOO
         z/pV4SAqb1z4hAGfo9D2+zNL3nfDd9rtHeW5fs8OLPtLjenpWJ91UXt4Zk8jPuVf/Yij
         Z0lzqBuRTqCgTQwBiAjLMe76NuCErNfnCYcLeumst/vD9Is5Akql58FmrlIFMbEW4iYl
         LHUzQcVRF+aMfeQuZADyYvS6aIXJYEPpAnjHxQLHv/IDeuGnS5qscxFzxKqdmchdy6MN
         myGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vFSYtPuNVdKK+BtMJnxsscs9Ep/v+LsDmN+vOIalhUk=;
        b=l1CQzV11dCcmDtu/68/Ez0cP7Y9TZaXRImNUGBEmqasM96MO0a+H0f4qGxZcoJBqzy
         w9EIrU+C9N4yopTSBPfvXmC31eOjp4sfG5QWOcGIp3d+vOqok5wwp5QPI1H/R3TsXXvB
         AmnCj70lkZzga+FNq2Z8EyjewtRY9ge1XWbmCxQCH1iE4IARbovuEPVBA0wDpV8KzElZ
         GKnnjrFvIw0wTLkUL15AHzYRYUoFV7nqV7I95Kf1+RuMVJY92O6TbMvvNDFRGUbdlHDg
         FiF520JQQGfxmDVSTcpXjrN/88bjQ2fZJvLVuMKmrtaIWQ5m9oqKpgmWgXITtJSJp3wa
         WEbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vFSYtPuNVdKK+BtMJnxsscs9Ep/v+LsDmN+vOIalhUk=;
        b=oIFKbVNWQx2Wg9jUCSvZdvSMPshYdQv43pOHYmOXbWbILKihL9bdM1WUDI2nXMEp0i
         Gci6H9BAM9ZTDFxB3Un6XlEzE3Ht0/PelKxuh5MHflOnWx1OoD1CYDCIDQ9blnhYaQ59
         2hDkc7zrcEQM8WU6yrb+zCTMlAoAx0T974ZCGSkaB/7wo1D7Kp0F/ST+6/H5RT7Z6HJ9
         HJZYzxkYEYuPA+7WEYv20Kl4IzN4/uTmkLncI+8hQErbUrr953n8bMczC34/Geb8U0Yf
         tbny2D9Tust09HfMGfo1P7vs9D7kYV0By4nGZ5N2zChlBs9mQ8wPVRhbZ9A5k/wD5Zcv
         Mw8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530M/uIjyhLVccNfA2rVziJMwyHE2p1KK0EjFqHd8R+Ed1D48Qhz
	qkn+iSX9imbO5Dftjitz0/s=
X-Google-Smtp-Source: ABdhPJzqIMzG46Xs7LPaCcMNe8mp5eOisQhkUjDmPFZCFmBb/MOe5YGZWK/wrZ4LWfSrrt/zPMzPZg==
X-Received: by 2002:a9f:2626:: with SMTP id 35mr12154949uag.80.1610776629564;
        Fri, 15 Jan 2021 21:57:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls1574333vso.9.gmail; Fri, 15 Jan
 2021 21:57:09 -0800 (PST)
X-Received: by 2002:a67:e3a7:: with SMTP id j7mr12476503vsm.12.1610776628932;
        Fri, 15 Jan 2021 21:57:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610776628; cv=none;
        d=google.com; s=arc-20160816;
        b=S6k5vSbvf3aL1JYQzZvqC7oShFogZYvIazWV4n26vb78dLCzTeLiJROwzvf7HPNEbw
         i9FAs0uiKgBODbsDENomN0gk7RhLQIxgbIv3aIT/0uOjjXB/dG81TY9bH06Nh7pNmy/v
         cTWvuhXyO0eEwujzLXWiwgLFxNcO7O+j+zBwAtBLMXyAke5N9IaZu4MvOiKSo8VGLZ4l
         0XUbGGmBmmSM96ZZnfeQRnFw4G0vZFZ5aWIRyhYOly1EGYTh2KKS46GiDTiD/iwnDABO
         2H30cjGYdMaI4C9x1PbXJEOAx8D2+QkjNtDMM6gLhWDC0b1gTwssZmNPSlXS/ed7tA2P
         9OFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=CJYEfcCcpiayPpEWgJfVu0D67b1OJe6QuGy1XXTFHRM=;
        b=CeII+IiudGrvPw2HnrEvxtDt44+J9Ul5Shhy10e+Xaxg3bYKrTXPnQ+MxWZeECnrky
         +6bcNVIQ4U33bC3kGS4GErl6uYAVhmMY+86YQTgYHfHiJxJBgU506k4GNSpFO/TgMwTY
         w6JRCNJSozkiVvZb7YYC/bR9oH5nyo98sJ0TAqkAIfOWSNBw9RnXM8Ka+e0QQfjf9mzz
         vGnqvkrgdyLkijf/kMLL6U7mLcQDzWpE0UdlcDr1UzlUr7vJKl+B/S941GxBCJ4oj4TM
         9oobDoKYDAiXkdabH09poMftpWS9ppsCFa52EwPf7ozh0C7gqrperzKHxZ1CjDCp3oAH
         6KHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id g3si831994vkl.1.2021.01.15.21.57.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 21:57:08 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: wXvrwqETRg3as6nHKeLJgioUQEj2DpBf+9Ttbkd6tGuj3zEv2gNcXRHr8ORKRFq+ZziG9v8Mb3
 zpX3Izdm4FYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9865"; a="240189660"
X-IronPort-AV: E=Sophos;i="5.79,351,1602572400"; 
   d="gz'50?scan'50,208,50";a="240189660"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 21:57:05 -0800
IronPort-SDR: VRyANEkJcq97gOo9d19E4LO1FmmNTRf2yK44mDmftybD4avyqyqAx6ZKj6IUX78idse6fJBsoO
 tU2CQiAMG8pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,351,1602572400"; 
   d="gz'50?scan'50,208,50";a="382917534"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 15 Jan 2021 21:57:03 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l0ea6-0000kD-LL; Sat, 16 Jan 2021 05:57:02 +0000
Date: Sat, 16 Jan 2021 13:56:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Darrick J. Wong" <djwong@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Darrick J. Wong" <darrick.wong@oracle.com>
Subject: [djwong-xfs:scrub-rtsummary 12/56] fs/xfs/xfs_quota.h:175:39: error:
 incompatible pointer types passing 'struct xfs_trans to parameter of type
 'struct xfs_trans remove &
Message-ID: <202101161322.9YCAvOm6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YZ5djTAD1cGYuMQK"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--YZ5djTAD1cGYuMQK
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git scrub-rtsummary
head:   30ed2e375306b1c5c8c622635a87595eec25a2d0
commit: cb3f81457960adfaad61877b8c86e78e5b608bf3 [12/56] xfs: flush eof/cowblocks if we can't reserve quota for file blocks
config: x86_64-randconfig-r025-20210115 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d7bc3b7ce23b664d6620cdc32370a8614523ca2f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git/commit/?id=cb3f81457960adfaad61877b8c86e78e5b608bf3
        git remote add djwong-xfs https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git
        git fetch --no-tags djwong-xfs scrub-rtsummary
        git checkout cb3f81457960adfaad61877b8c86e78e5b608bf3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from fs/xfs/xfs_trace.c:25:
>> fs/xfs/xfs_quota.h:175:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, -nblks, -ninos, flags,
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_quota.h:180:1: error: redefinition of 'xfs_quota_reserve_blkres'
   xfs_quota_reserve_blkres(struct xfs_inode *ip, int64_t nblks,
   ^
   fs/xfs/xfs_quota.h:144:19: note: previous definition is here
   static inline int xfs_quota_reserve_blkres(struct xfs_inode *ip,
                     ^
   fs/xfs/xfs_quota.h:185:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, nblks, 0, flags, NULL);
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   3 errors generated.
--
   In file included from fs/xfs/libxfs/xfs_attr.c:24:
>> fs/xfs/xfs_quota.h:175:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, -nblks, -ninos, flags,
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_quota.h:180:1: error: redefinition of 'xfs_quota_reserve_blkres'
   xfs_quota_reserve_blkres(struct xfs_inode *ip, int64_t nblks,
   ^
   fs/xfs/xfs_quota.h:144:19: note: previous definition is here
   static inline int xfs_quota_reserve_blkres(struct xfs_inode *ip,
                     ^
   fs/xfs/xfs_quota.h:185:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, nblks, 0, flags, NULL);
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
>> fs/xfs/libxfs/xfs_attr.c:470:41: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
                   error = xfs_trans_reserve_quota_nblks(&args->trans, dp,
                                                         ^~~~~~~~~~~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   4 errors generated.
--
   In file included from fs/xfs/libxfs/xfs_bmap.c:27:
>> fs/xfs/xfs_quota.h:175:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, -nblks, -ninos, flags,
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_quota.h:180:1: error: redefinition of 'xfs_quota_reserve_blkres'
   xfs_quota_reserve_blkres(struct xfs_inode *ip, int64_t nblks,
   ^
   fs/xfs/xfs_quota.h:144:19: note: previous definition is here
   static inline int xfs_quota_reserve_blkres(struct xfs_inode *ip,
                     ^
   fs/xfs/xfs_quota.h:185:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, nblks, 0, flags, NULL);
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
>> fs/xfs/libxfs/xfs_bmap.c:1090:40: error: incompatible pointer types passing 'xfs_trans_t **' (aka 'struct xfs_trans **') to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           error = xfs_trans_reserve_quota_nblks(&tp, ip, blks, 0, rsvd ?
                                                 ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   4 errors generated.
--
   In file included from fs/xfs/xfs_bmap_util.c:25:
>> fs/xfs/xfs_quota.h:175:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, -nblks, -ninos, flags,
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_quota.h:180:1: error: redefinition of 'xfs_quota_reserve_blkres'
   xfs_quota_reserve_blkres(struct xfs_inode *ip, int64_t nblks,
   ^
   fs/xfs/xfs_quota.h:144:19: note: previous definition is here
   static inline int xfs_quota_reserve_blkres(struct xfs_inode *ip,
                     ^
   fs/xfs/xfs_quota.h:185:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, nblks, 0, flags, NULL);
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
>> fs/xfs/xfs_bmap_util.c:822:41: error: incompatible pointer types passing 'xfs_trans_t **' (aka 'struct xfs_trans **') to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
                   error = xfs_trans_reserve_quota_nblks(&tp, ip, qblocks, 0,
                                                         ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
>> fs/xfs/xfs_bmap_util.c:886:40: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           error = xfs_trans_reserve_quota_nblks(&tp, ip, resblks, 0,
                                                 ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   5 errors generated.
--
   In file included from fs/xfs/xfs_iomap.c:26:
>> fs/xfs/xfs_quota.h:175:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, -nblks, -ninos, flags,
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_quota.h:180:1: error: redefinition of 'xfs_quota_reserve_blkres'
   xfs_quota_reserve_blkres(struct xfs_inode *ip, int64_t nblks,
   ^
   fs/xfs/xfs_quota.h:144:19: note: previous definition is here
   static inline int xfs_quota_reserve_blkres(struct xfs_inode *ip,
                     ^
   fs/xfs/xfs_quota.h:185:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, nblks, 0, flags, NULL);
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
>> fs/xfs/xfs_iomap.c:251:40: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           error = xfs_trans_reserve_quota_nblks(&tp, ip, qblocks, 0, quota_flag,
                                                 ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
>> fs/xfs/xfs_iomap.c:566:41: error: incompatible pointer types passing 'xfs_trans_t **' (aka 'struct xfs_trans **') to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
                   error = xfs_trans_reserve_quota_nblks(&tp, ip, resblks, 0,
                                                         ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   5 errors generated.
--
   In file included from fs/xfs/xfs_reflink.c:27:
>> fs/xfs/xfs_quota.h:175:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, -nblks, -ninos, flags,
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_quota.h:180:1: error: redefinition of 'xfs_quota_reserve_blkres'
   xfs_quota_reserve_blkres(struct xfs_inode *ip, int64_t nblks,
   ^
   fs/xfs/xfs_quota.h:144:19: note: previous definition is here
   static inline int xfs_quota_reserve_blkres(struct xfs_inode *ip,
                     ^
   fs/xfs/xfs_quota.h:185:39: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           return xfs_trans_reserve_quota_nblks(&tp, ip, nblks, 0, flags, NULL);
                                                ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
>> fs/xfs/xfs_reflink.c:403:40: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
           error = xfs_trans_reserve_quota_nblks(&tp, ip, resblks, 0,
                                                 ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   fs/xfs/xfs_reflink.c:1099:41: error: incompatible pointer types passing 'struct xfs_trans **' to parameter of type 'struct xfs_trans *'; remove & [-Werror,-Wincompatible-pointer-types]
                   error = xfs_trans_reserve_quota_nblks(&tp, ip, qres, 0,
                                                         ^~~
   fs/xfs/xfs_quota.h:131:67: note: passing argument to parameter 'tp' here
   static inline int xfs_trans_reserve_quota_nblks(struct xfs_trans *tp,
                                                                     ^
   5 errors generated.


vim +175 fs/xfs/xfs_quota.h

   170	
   171	static inline int
   172	xfs_trans_unreserve_quota_nblks(struct xfs_trans *tp, struct xfs_inode *ip,
   173			int64_t nblks, long ninos, unsigned int flags)
   174	{
 > 175		return xfs_trans_reserve_quota_nblks(&tp, ip, -nblks, -ninos, flags,
   176				NULL);
   177	}
   178	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101161322.9YCAvOm6-lkp%40intel.com.

--YZ5djTAD1cGYuMQK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--YZ5djTAD1cGYuMQK--
