Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVFXZOAAMGQEGBR2ZRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9B23079F8
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 16:44:22 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id j24sf3125575pgn.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 07:44:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611848661; cv=pass;
        d=google.com; s=arc-20160816;
        b=erNth1iNonOSfW4nF7UgmeAEvO+JdFqtu7VOBsH0I7QQxjANp1PV2a0b5l+tS172J+
         wB0AqTXZqu0fZ01eo5qXoo6E6bc/RJJqylKub1yAxK8IsgxO94s1QUoKJxpRhoSWpx6C
         YEKnZadKgSZn/KtkDsO+9irFJ1wuedtwO8xcXojeRmaKasv+R3nTyIT/QkjkIAtEEfTm
         yptVDsDgcDsIVmzWwHCM15JOsMoamV9zDY750QC1YtjJw6VbYjT9WKM6wuIKsgi3tbVh
         zBelRvkDxu3yjxl6HKeX46T8IzCnYZHeakNaE/ST4xxnPZTRAvcklVihaM36oz2C3d3C
         KCmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=GfUyHyAqMsJ1k5LyoxdQAa8mFIfmLjy9myDsG0cga7g=;
        b=wxLQdDMaHoSdjmVhU5PE2uFEtxcTOwK8LrGRDj0yWGbnNSsy1j9/WANtIGzKUVbkHt
         4uSVdlhgNT0uxqSKW/DvWv1wixiH/WsOujgm+urKSzkbIuvQTciigOQJ2zOTT/ATQrvV
         IBauE5FWTceNxYbn4BDBfaPeuKBH2BaQxgLpJNNjrBN+yElnItcmAODRSPVtLGispJTE
         ivs8kDzliGdYdUXyB/ENUAGBaFAkmPOPmWt8F+wEXQ4MflZTZanESBedi89WvHgfXvSN
         x1NmLtmvj4FC2tMfbmZLDJXLdFv97zG8Bii7LQxnaej0etHtBigCpeyODmjHzrXjooLj
         u0Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GfUyHyAqMsJ1k5LyoxdQAa8mFIfmLjy9myDsG0cga7g=;
        b=ljYFSWB18eIVc8eNyCGrR97eJ1IEUbVui0i+2THGBE+ksTFR4+efJvYyMkaScx2lxD
         0OMtu+I1diGThQMtAqwaG0P9eWQJhwV2nRf24VISNqmVkK7vXKI/gFe7HaclrX6DtqIq
         dH5/SnSf0DqUHvZMK2M58ISxvFIz4IPpCQaQMU8NUwOiZ7HsSbEkuoeTZiMLnQL7Otu0
         6VisYFfF/Eawj/oOvZC915O74+KUX9fblgQ1u2Df4ysKWC6UnOv4UoUwiwUusCE8gX6r
         fkDz0VvVdAfXxvk8bI/fN396QaJtwO35ZxCKHu1iK4FOa7n15AtupRwrv1Rinm1bztLj
         LH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GfUyHyAqMsJ1k5LyoxdQAa8mFIfmLjy9myDsG0cga7g=;
        b=BjAZ0pSOz5M5dgurYW72O9SKK89QwTGQFF8mTzTX6YPFCU00DixRRSt6ELEMLP5260
         PxtyteIoFcxG5lcbSvSB+1FPNisetgHquoJiaYUEFu1ozrdlHursf01XmjQ0ApjideMc
         kfY+k+wL1ObRCBv1EOkqpXg0KDexQdbIfXySLN5Gm5UPiuM21DEXvNkFKMx/3yMfp8rF
         yw+px+P43bIIroHQr5NSoVaOEYkvBLhI3yvEo0SbZ5DV//kdJ3Obe5ruwrNwvql2Kl5y
         h0thEDN2yR+GwcQns+BDekN+2YTNDKDZV6w+9gmnduGiK5vmDWw2Qa8564p8qnUbP+l5
         IZfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tFrbKjMvCKxo1un/bC7LKSIZrOYJM78zUtt/6aywvH280E+4L
	gEPZNLmTWfNppTWtUSkGr/Q=
X-Google-Smtp-Source: ABdhPJzUeb8jkHTAVu6T/+G22h+JbYwJo9O/PfigS/rEYRIlBjoXUvGksXq3NfAduIehBrN6ZiE7TQ==
X-Received: by 2002:a17:902:b986:b029:df:e5d6:cd71 with SMTP id i6-20020a170902b986b02900dfe5d6cd71mr17064543pls.42.1611848660277;
        Thu, 28 Jan 2021 07:44:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96f8:: with SMTP id i24ls2381883pfq.9.gmail; Thu, 28 Jan
 2021 07:44:19 -0800 (PST)
X-Received: by 2002:a65:6290:: with SMTP id f16mr166482pgv.69.1611848659435;
        Thu, 28 Jan 2021 07:44:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611848659; cv=none;
        d=google.com; s=arc-20160816;
        b=OI94i8N9MjsD7HXRc9eHscmsiCbBWw+H/2cUdDDa2zzZEueY9UI1Q2QR1H1Kv671QD
         LblBbY2lYQqh+MxkocCVjohj6bSrWjLTnPozuWyvmpAkmGUA6qqB14jKxys0OUX+HT3u
         /KqU0+Ib1+0bWo8zVLAv+IefKv3k08hqP38ocuV//sYjnJTdw2awModT2AjU9YkauP+n
         UBuu+5hetQrm1Q+y/9J0IeDf81V+faTxqiQRPkqcR9g44YxdXA5o7L8iuh8CAg+3MGwL
         ORVMtsblE2GUbE3tsKZ0QAACBo3Jk7T5gKFu8lIxQHIJjLdcAjI+QbpkKVBKDaPxLb1d
         zeUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=gt64YfXZVfhy7icgQAbeWfky2sWwcomlIFtrom49n80=;
        b=xxoXJ1W+4e8AupYDJSUsbSWlpjsgsxev/wRCVOexdSoW6lt4KfRa0tLWIpF8mkyA2z
         EinBg4Hq9dFgYIZpAEmw7IP9hzjkMw8ztgJHkelj/kCqq8kqNb7uxAL3fJMTy6dQP49h
         ed2VD/TPtMDF8IjN3iO4meuIRfOU980iGT5kliTSgGrUxQQtdWnZj/ua3uYUvj5npI7u
         /ZhQk3hwiQhz3zZiamY06oaAf5c+PY+GRZ2cvI1HcpOt9tlocI79bD1hZlpigvUAXrIr
         Kk3aSp6f2OBIZX3MQ4dU+TyNZsZY/3RnPoAf6lpesjvxzXsWywYp/uurwNH4fV+b9My1
         nvbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id t25si194142pfg.2.2021.01.28.07.44.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 07:44:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: Y0ho7ij5CP7R8vWgHWxZbWhlK6xM7erwO7TfuCACjWLQsA/WVc49aMkGMW2kKy7wYtaaLmg8RQ
 jBexy7jw4RnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="167350840"
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; 
   d="gz'50?scan'50,208,50";a="167350840"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Jan 2021 07:44:17 -0800
IronPort-SDR: y9zIwY86BK0mem/Zgi5YWtOOYxNSw90Bs2kixI8jkQlA0vDAvkEoaqp2q1ojl2ID/ee5w5RYrD
 E2OmA8GE9G9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; 
   d="gz'50?scan'50,208,50";a="354216663"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 28 Jan 2021 07:44:15 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l59Sw-00030a-9O; Thu, 28 Jan 2021 15:44:14 +0000
Date: Thu, 28 Jan 2021 23:43:46 +0800
From: kernel test robot <lkp@intel.com>
To: Michal Rostecki <mrostecki@suse.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	David Sterba <dsterba@suse.com>, Filipe Manana <fdmanana@suse.com>
Subject: [kdave-btrfs-devel:dev/raid-policy 77/83] fs/btrfs/inode.c:7973:7:
 warning: variable 'em' is used uninitialized whenever 'if' condition is true
Message-ID: <202101282326.HsXsZbMB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/kdave/btrfs-devel.git dev/raid-policy
head:   4535566286913fb8ad62c3efef00e6d2593b25e4
commit: ab97dc56044d4d8d346e6e294a73f8690d9d3d7b [77/83] btrfs: let callers of btrfs_get_io_geometry pass the em
config: x86_64-randconfig-a001-20210128 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 48bdd676a1d1338c10541460bf5beb69ac17e451)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/kdave/btrfs-devel/commit/ab97dc56044d4d8d346e6e294a73f8690d9d3d7b
        git remote add kdave-btrfs-devel https://github.com/kdave/btrfs-devel.git
        git fetch --no-tags kdave-btrfs-devel dev/raid-policy
        git checkout ab97dc56044d4d8d346e6e294a73f8690d9d3d7b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/btrfs/inode.c:7973:7: warning: variable 'em' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
                   if (status != BLK_STS_OK)
                       ^~~~~~~~~~~~~~~~~~~~
   fs/btrfs/inode.c:8052:18: note: uninitialized use occurs here
           free_extent_map(em);
                           ^~
   fs/btrfs/inode.c:7973:3: note: remove the 'if' if its condition is always false
                   if (status != BLK_STS_OK)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/inode.c:7952:23: note: initialize the variable 'em' to silence this warning
           struct extent_map *em;
                                ^
                                 = NULL
   1 warning generated.


vim +7973 fs/btrfs/inode.c

c36cac28cb94e5 Omar Sandoval     2020-04-16  7932  
f85781fb505ec0 Goldwyn Rodrigues 2020-08-17  7933  static blk_qc_t btrfs_submit_direct(struct inode *inode, struct iomap *iomap,
f85781fb505ec0 Goldwyn Rodrigues 2020-08-17  7934  		struct bio *dio_bio, loff_t file_offset)
e65e1535542931 Miao Xie          2010-11-22  7935  {
c36cac28cb94e5 Omar Sandoval     2020-04-16  7936  	const bool write = (bio_op(dio_bio) == REQ_OP_WRITE);
0b246afa62b0cf Jeff Mahoney      2016-06-22  7937  	struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
769b4f2497bdb3 Omar Sandoval     2020-04-16  7938  	const bool raid56 = (btrfs_data_alloc_profile(fs_info) &
769b4f2497bdb3 Omar Sandoval     2020-04-16  7939  			     BTRFS_BLOCK_GROUP_RAID56_MASK);
c36cac28cb94e5 Omar Sandoval     2020-04-16  7940  	struct btrfs_dio_private *dip;
e65e1535542931 Miao Xie          2010-11-22  7941  	struct bio *bio;
c36cac28cb94e5 Omar Sandoval     2020-04-16  7942  	u64 start_sector;
1ae399382512b3 Josef Bacik       2011-04-06  7943  	int async_submit = 0;
725130bac5857a Liu Bo            2017-05-16  7944  	u64 submit_len;
725130bac5857a Liu Bo            2017-05-16  7945  	int clone_offset = 0;
725130bac5857a Liu Bo            2017-05-16  7946  	int clone_len;
ab97dc56044d4d Michal Rostecki   2021-01-27  7947  	u64 logical;
5f4dc8fc835bbb Chandan Rajendra  2016-01-21  7948  	int ret;
58efbc9f546330 Omar Sandoval     2017-08-22  7949  	blk_status_t status;
89b798ad1b42b1 Nikolay Borisov   2019-06-03  7950  	struct btrfs_io_geometry geom;
f85781fb505ec0 Goldwyn Rodrigues 2020-08-17  7951  	struct btrfs_dio_data *dio_data = iomap->private;
ab97dc56044d4d Michal Rostecki   2021-01-27  7952  	struct extent_map *em;
e65e1535542931 Miao Xie          2010-11-22  7953  
c36cac28cb94e5 Omar Sandoval     2020-04-16  7954  	dip = btrfs_create_dio_private(dio_bio, inode, file_offset);
c36cac28cb94e5 Omar Sandoval     2020-04-16  7955  	if (!dip) {
c36cac28cb94e5 Omar Sandoval     2020-04-16  7956  		if (!write) {
c36cac28cb94e5 Omar Sandoval     2020-04-16  7957  			unlock_extent(&BTRFS_I(inode)->io_tree, file_offset,
c36cac28cb94e5 Omar Sandoval     2020-04-16  7958  				file_offset + dio_bio->bi_iter.bi_size - 1);
c36cac28cb94e5 Omar Sandoval     2020-04-16  7959  		}
c36cac28cb94e5 Omar Sandoval     2020-04-16  7960  		dio_bio->bi_status = BLK_STS_RESOURCE;
f85781fb505ec0 Goldwyn Rodrigues 2020-08-17  7961  		bio_endio(dio_bio);
f85781fb505ec0 Goldwyn Rodrigues 2020-08-17  7962  		return BLK_QC_T_NONE;
c36cac28cb94e5 Omar Sandoval     2020-04-16  7963  	}
facc8a2247340a Miao Xie          2013-07-25  7964  
334c16d82cfe18 Josef Bacik       2020-10-16  7965  	if (!write) {
85879573fc8b06 Omar Sandoval     2020-04-16  7966  		/*
85879573fc8b06 Omar Sandoval     2020-04-16  7967  		 * Load the csums up front to reduce csum tree searches and
85879573fc8b06 Omar Sandoval     2020-04-16  7968  		 * contention when submitting bios.
334c16d82cfe18 Josef Bacik       2020-10-16  7969  		 *
334c16d82cfe18 Josef Bacik       2020-10-16  7970  		 * If we have csums disabled this will do nothing.
85879573fc8b06 Omar Sandoval     2020-04-16  7971  		 */
6275193ef19033 Qu Wenruo         2020-12-02  7972  		status = btrfs_lookup_bio_sums(inode, dio_bio, dip->csums);
85879573fc8b06 Omar Sandoval     2020-04-16 @7973  		if (status != BLK_STS_OK)
85879573fc8b06 Omar Sandoval     2020-04-16  7974  			goto out_err;
02f57c7aedef1a Josef Bacik       2011-04-06  7975  	}
02f57c7aedef1a Josef Bacik       2011-04-06  7976  
769b4f2497bdb3 Omar Sandoval     2020-04-16  7977  	start_sector = dio_bio->bi_iter.bi_sector;
ab97dc56044d4d Michal Rostecki   2021-01-27  7978  	logical = start_sector << 9;
769b4f2497bdb3 Omar Sandoval     2020-04-16  7979  	submit_len = dio_bio->bi_iter.bi_size;
53b381b3abeb86 David Woodhouse   2013-01-29  7980  
3c91ee6964114b Arnd Bergmann     2017-05-18  7981  	do {
ab97dc56044d4d Michal Rostecki   2021-01-27  7982  		em = btrfs_get_chunk_map(fs_info, logical, submit_len);
ab97dc56044d4d Michal Rostecki   2021-01-27  7983  		if (IS_ERR(em)) {
ab97dc56044d4d Michal Rostecki   2021-01-27  7984  			status = errno_to_blk_status(PTR_ERR(em));
ab97dc56044d4d Michal Rostecki   2021-01-27  7985  			em = NULL;
ab97dc56044d4d Michal Rostecki   2021-01-27  7986  			goto out_err;
ab97dc56044d4d Michal Rostecki   2021-01-27  7987  		}
ab97dc56044d4d Michal Rostecki   2021-01-27  7988  		ret = btrfs_get_io_geometry(fs_info, em, btrfs_op(dio_bio),
ab97dc56044d4d Michal Rostecki   2021-01-27  7989  					    logical, submit_len, &geom);
769b4f2497bdb3 Omar Sandoval     2020-04-16  7990  		if (ret) {
769b4f2497bdb3 Omar Sandoval     2020-04-16  7991  			status = errno_to_blk_status(ret);
769b4f2497bdb3 Omar Sandoval     2020-04-16  7992  			goto out_err;
02f57c7aedef1a Josef Bacik       2011-04-06  7993  		}
89b798ad1b42b1 Nikolay Borisov   2019-06-03  7994  		ASSERT(geom.len <= INT_MAX);
769b4f2497bdb3 Omar Sandoval     2020-04-16  7995  
89b798ad1b42b1 Nikolay Borisov   2019-06-03  7996  		clone_len = min_t(int, submit_len, geom.len);
7a5c3c9be1059f Miao Xie          2014-06-17  7997  
725130bac5857a Liu Bo            2017-05-16  7998  		/*
725130bac5857a Liu Bo            2017-05-16  7999  		 * This will never fail as it's passing GPF_NOFS and
725130bac5857a Liu Bo            2017-05-16  8000  		 * the allocation is backed by btrfs_bioset.
725130bac5857a Liu Bo            2017-05-16  8001  		 */
769b4f2497bdb3 Omar Sandoval     2020-04-16  8002  		bio = btrfs_bio_clone_partial(dio_bio, clone_offset, clone_len);
02f57c7aedef1a Josef Bacik       2011-04-06  8003  		bio->bi_private = dip;
02f57c7aedef1a Josef Bacik       2011-04-06  8004  		bio->bi_end_io = btrfs_end_dio_bio;
c1dc08967f69c6 Miao Xie          2014-09-12  8005  		btrfs_io_bio(bio)->logical = file_offset;
02f57c7aedef1a Josef Bacik       2011-04-06  8006  
725130bac5857a Liu Bo            2017-05-16  8007  		ASSERT(submit_len >= clone_len);
725130bac5857a Liu Bo            2017-05-16  8008  		submit_len -= clone_len;
725130bac5857a Liu Bo            2017-05-16  8009  
e65e1535542931 Miao Xie          2010-11-22  8010  		/*
725130bac5857a Liu Bo            2017-05-16  8011  		 * Increase the count before we submit the bio so we know
725130bac5857a Liu Bo            2017-05-16  8012  		 * the end IO handler won't happen before we increase the
725130bac5857a Liu Bo            2017-05-16  8013  		 * count. Otherwise, the dip might get freed before we're
725130bac5857a Liu Bo            2017-05-16  8014  		 * done setting it up.
769b4f2497bdb3 Omar Sandoval     2020-04-16  8015  		 *
769b4f2497bdb3 Omar Sandoval     2020-04-16  8016  		 * We transfer the initial reference to the last bio, so we
769b4f2497bdb3 Omar Sandoval     2020-04-16  8017  		 * don't need to increment the reference count for the last one.
e65e1535542931 Miao Xie          2010-11-22  8018  		 */
769b4f2497bdb3 Omar Sandoval     2020-04-16  8019  		if (submit_len > 0) {
e3b318d14df7d6 Omar Sandoval     2020-04-16  8020  			refcount_inc(&dip->refs);
769b4f2497bdb3 Omar Sandoval     2020-04-16  8021  			/*
769b4f2497bdb3 Omar Sandoval     2020-04-16  8022  			 * If we are submitting more than one bio, submit them
769b4f2497bdb3 Omar Sandoval     2020-04-16  8023  			 * all asynchronously. The exception is RAID 5 or 6, as
769b4f2497bdb3 Omar Sandoval     2020-04-16  8024  			 * asynchronous checksums make it difficult to collect
769b4f2497bdb3 Omar Sandoval     2020-04-16  8025  			 * full stripe writes.
e65e1535542931 Miao Xie          2010-11-22  8026  			 */
769b4f2497bdb3 Omar Sandoval     2020-04-16  8027  			if (!raid56)
769b4f2497bdb3 Omar Sandoval     2020-04-16  8028  				async_submit = 1;
769b4f2497bdb3 Omar Sandoval     2020-04-16  8029  		}
725130bac5857a Liu Bo            2017-05-16  8030  
d0ee39349311ce David Sterba      2018-03-08  8031  		status = btrfs_submit_dio_bio(bio, inode, file_offset,
c329861da40623 Josef Bacik       2012-08-03  8032  						async_submit);
58efbc9f546330 Omar Sandoval     2017-08-22  8033  		if (status) {
e65e1535542931 Miao Xie          2010-11-22  8034  			bio_put(bio);
769b4f2497bdb3 Omar Sandoval     2020-04-16  8035  			if (submit_len > 0)
e3b318d14df7d6 Omar Sandoval     2020-04-16  8036  				refcount_dec(&dip->refs);
e65e1535542931 Miao Xie          2010-11-22  8037  			goto out_err;
e65e1535542931 Miao Xie          2010-11-22  8038  		}
e65e1535542931 Miao Xie          2010-11-22  8039  
f85781fb505ec0 Goldwyn Rodrigues 2020-08-17  8040  		dio_data->submitted += clone_len;
725130bac5857a Liu Bo            2017-05-16  8041  		clone_offset += clone_len;
725130bac5857a Liu Bo            2017-05-16  8042  		start_sector += clone_len >> 9;
725130bac5857a Liu Bo            2017-05-16  8043  		file_offset += clone_len;
ab97dc56044d4d Michal Rostecki   2021-01-27  8044  
ab97dc56044d4d Michal Rostecki   2021-01-27  8045  		free_extent_map(em);
3c91ee6964114b Arnd Bergmann     2017-05-18  8046  	} while (submit_len > 0);
f85781fb505ec0 Goldwyn Rodrigues 2020-08-17  8047  	return BLK_QC_T_NONE;
e65e1535542931 Miao Xie          2010-11-22  8048  
e65e1535542931 Miao Xie          2010-11-22  8049  out_err:
769b4f2497bdb3 Omar Sandoval     2020-04-16  8050  	dip->dio_bio->bi_status = status;
769b4f2497bdb3 Omar Sandoval     2020-04-16  8051  	btrfs_dio_private_put(dip);
ab97dc56044d4d Michal Rostecki   2021-01-27  8052  	free_extent_map(em);
ab97dc56044d4d Michal Rostecki   2021-01-27  8053  
f85781fb505ec0 Goldwyn Rodrigues 2020-08-17  8054  	return BLK_QC_T_NONE;
4b46fce23349bf Josef Bacik       2010-05-23  8055  }
4b46fce23349bf Josef Bacik       2010-05-23  8056  

:::::: The code at line 7973 was first introduced by commit
:::::: 85879573fc8b06e8f70698686e3bc17c9e6225ba btrfs: put direct I/O checksums in btrfs_dio_private instead of bio

:::::: TO: Omar Sandoval <osandov@fb.com>
:::::: CC: David Sterba <dsterba@suse.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101282326.HsXsZbMB-lkp%40intel.com.

--TB36FDmn/VVEgNH/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
hxQeWU4CAA==

--TB36FDmn/VVEgNH/--
