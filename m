Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLVX3CAQMGQEJ3CN4QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBF9323963
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 10:26:08 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id g14sf1090397ilb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 01:26:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614158767; cv=pass;
        d=google.com; s=arc-20160816;
        b=EfbXjSEcrCY6witwS27qlCNU81h3bUOw3YrgVo0i7SwXh8QvA3lRXJmTOQOaPReYeT
         JCzIPkUx3CjDLPSymJlm4TVDSIoeMwJ4Wed189ZPmMI36gL+SQMgC/SN6mGxw9VPIw6E
         B0J05X0KqOpbhdhRoN5ydTfI9ZOjpq/Dk0oLfGfKMiik9a+YbSrw3YCR/34lpmnFFZ9w
         lukVadJef80x3f3vTOIhZ3d8O4slUxL5Mg1lMweHdYEx8Q/yAlBUV0LmaNB79TjX6bj8
         b5PQtO3S4XMju+1A0sk8Vo1xSQ3St4iSYOrkVbjrPTPsE1VMs/62skaAC18i4OXqMP6Q
         4Mnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=z1CbqwXVL9RqjghDUTiMRyytZeUzW/660twld/hMf/4=;
        b=GGhGysONWTwmOJ3CL8VMzpTnesbd4XPA2napCL20j408oOrtF7wGFtvunQKkrIAL+H
         Lf43WCyYSaLkFhj4Mj2OPaVAvRjt6d8iGHDbmEqV7Pg8t4urvhE2gfVcDxG4BG/XHjFQ
         pgXwi++7WyMi4/sHfVYdxhNojtQTJJD/d9mQ752O7qO7E9L6Vg9guVuhVHdkLWpkYvj/
         zi9Xxs/rW1rfk46GQmDU3m96+msFCmPCrfD9KAdG4z8DtDEx4BU8APh3N31hjrKeRtfp
         OvcobrD6TMUo6tlDDp7WdVKGiXAPInQruhhAqZPowX2BVvnvHloUocTsZJBwUIu59puu
         LZjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z1CbqwXVL9RqjghDUTiMRyytZeUzW/660twld/hMf/4=;
        b=lQ48r5NTQW1MYhx/Wh05JZFakZf3fQZxBRwy7sQPQc8xmIMOi/QBAXhoQf9IPswfHi
         lAw7nOQPiDiHiNCdTx0cmnfkQNketoYxXb488sZDzpPcllRFgLyMKeSiYWqsHPvdDyII
         N/WFtIZ6dBRvE+4U5YzWjkeFe5uBa0YugnzpM1SbLIDv3+0EyelAfmLks7MKbR7+Li7e
         8k0xuthWPcTbCp0cIU9bYAGFxPJymUJeBa+frI/nO8h/gFgQ5VyclW5KPDr0l9HznzAc
         srAniuGF62U+9agw/M7oI3N2deoM6A2NMErE1DBG4+3VfippgUdIGoJ28eXAZ3trOOfc
         NP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z1CbqwXVL9RqjghDUTiMRyytZeUzW/660twld/hMf/4=;
        b=ohbWNHMCwXOea6NdPlcXzAbOj/LB4akL3lC9LShjdqzI77Co2rG37ESqeZp3PESD22
         BMUXIXhw8Yrpk59UyQMWCA5kmkHqSxZcBtTMY+7UM0x/3QBB3QxclF/ZDk6Mgf/zusdO
         ONn2k24wh11LQ2NCCwxp+m2NVVgD9+guhzfb1aldZdJsUVgGXp92IHgtxtFsGoMhpuvZ
         7/eZp5REirmVxWYIIOYQuvU5C1ANn6XILShhtyRVyWTsIDsji2vCvFebKamEDf862jfP
         AW/FseExQoeoj46wroqAi1+z4DyhuVrKow17JnTe6zAUXcJMjixuLdQT2WFOqti3jkR6
         cv9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311GEMy5PLTytwXbreWQtmQDwY9ukh7LH1d4y9IdJmdwapB0xKC
	98li/J9/twAd9XzAR2CUlH8=
X-Google-Smtp-Source: ABdhPJzJoG3mrNBJCMfQ/0wKlmvW6KKWPN3gNY7wbFHf1fp0bIFrCZFh0Xs+QxjvDjN5gXUIYUCPKw==
X-Received: by 2002:a05:6602:2c42:: with SMTP id x2mr12242627iov.29.1614158766697;
        Wed, 24 Feb 2021 01:26:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls385162ilj.10.gmail; Wed, 24 Feb
 2021 01:26:06 -0800 (PST)
X-Received: by 2002:a05:6e02:1ca4:: with SMTP id x4mr23036609ill.58.1614158766171;
        Wed, 24 Feb 2021 01:26:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614158766; cv=none;
        d=google.com; s=arc-20160816;
        b=ZzBS4RkbldiMCOp21UbLXYF6Px8a4QjHt6Ne3RaKZIMkiNQsT3Y0/CsbbEhfwF9w/o
         cNSeTPCnIdMDXaI80E5kmQo3LhAzwkGosq9gkBfrH+nZ0pAI1FZPMscEqT3WB1hL7ozf
         Og7UBYnf7bYJHKA4HtYi6E0qBM02GXGhjv2WNzokJg36Kbp4VnREu5hmQdi0VNjFPU4I
         FLbqyBEZe/u8X9nuzENICRpoGmjneBvx6hQ5QsABt5qyrXRf18C4gUiFt9YSdzwt/0Rp
         bK52UpScM0sNvuNwK8V4zbHHltH1PSk6UQl34txNra8DClHbOhSqjCFVZ4+wWrxcZSRe
         Djiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=IBjtOBqBuJFqMYGDn07HvAbGhqzMfvbyateufb0HSt0=;
        b=abrH4RAVHqEHA1bzbYzqtFPF0LB+UXrjwrRdrmLSgOCaWonxH35MC/u9KGMQpsYsoN
         gkxcN8K+iYY2vPVY9ZEgJDxJ97g1Q1Pw1ckCdjfnEWdLuckBcss/zTb83drKbcGthatx
         OG4lNcxVNB8YSRdahnCTIkGhnmatuj+Dze+HwAb715eEryPNeQ7RzL3DD/qchi1woGGf
         CPeJmGZ2H8EyIM4yV+FHIEYbLGSqfoY8smBrsEvaFXr3h60h3mF+WtidcoA3jS4QagAv
         387nwjnzkExr6aG4UraMF5AuKGNm8ewT7Fs3SBlu1CkYrzvqpSNLnat3qr3hQa6Y7yqY
         i89A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id y6si85169ill.1.2021.02.24.01.26.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2021 01:26:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: m6TSyDi52VmJPJqmXQwC9kNQd/+De98H//ENQWukw6yu+QlKdfyWPnIMyqThfB3FP1/sdKHxaK
 ktJmInqrRS3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="249159599"
X-IronPort-AV: E=Sophos;i="5.81,202,1610438400"; 
   d="gz'50?scan'50,208,50";a="249159599"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2021 01:26:03 -0800
IronPort-SDR: 3m48avi+78zEtu2QceZnXlA4qnuIdQFbdVD++ul0dxRqHfbTn/eS10vi3zjgGGV6Wb2tx9uZvT
 eRb62+MJSzuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,202,1610438400"; 
   d="gz'50?scan'50,208,50";a="499504146"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 24 Feb 2021 01:26:01 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lEqQj-0001wA-9q; Wed, 24 Feb 2021 09:26:01 +0000
Date: Wed, 24 Feb 2021 17:25:26 +0800
From: kernel test robot <lkp@intel.com>
To: Jeff Layton <jlayton@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jlayton:ceph-fscrypt 41/41] fs/ceph/file.c:1542:19: error: use of
 undeclared identifier 'first'
Message-ID: <202102241721.j7gjQAKk-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--17pEHd4RhPHOinZp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jlayton/linux.git ceph-fscrypt
head:   6f0fcdc16f621f7fe7e2226a4fd75e634ec7e320
commit: 6f0fcdc16f621f7fe7e2226a4fd75e634ec7e320 [41/41] SQUASH: more rmw work
config: x86_64-randconfig-a003-20210223 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/jlayton/linux.git/commit/?id=6f0fcdc16f621f7fe7e2226a4fd75e634ec7e320
        git remote add jlayton https://git.kernel.org/pub/scm/linux/kernel/git/jlayton/linux.git
        git fetch --no-tags jlayton ceph-fscrypt
        git checkout 6f0fcdc16f621f7fe7e2226a4fd75e634ec7e320
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   fs/ceph/file.c:27:1: error: expected identifier or '('
   BUILD_BUG_ON(CEPH_FSCRYPT_BLOCK_SHIFT > PAGE_SHIFT);
   ^
   include/linux/build_bug.h:50:2: note: expanded from macro 'BUILD_BUG_ON'
           BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
           ^
   include/linux/build_bug.h:39:37: note: expanded from macro 'BUILD_BUG_ON_MSG'
   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                       ^
   include/linux/compiler_types.h:320:2: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ^
   include/linux/compiler_types.h:308:2: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ^
   include/linux/compiler_types.h:298:2: note: expanded from macro '__compiletime_assert'
           do {                                                            \
           ^
   fs/ceph/file.c:27:1: error: expected identifier or '('
   include/linux/build_bug.h:50:2: note: expanded from macro 'BUILD_BUG_ON'
           BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
           ^
   include/linux/build_bug.h:39:37: note: expanded from macro 'BUILD_BUG_ON_MSG'
   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                       ^
   include/linux/compiler_types.h:320:2: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ^
   include/linux/compiler_types.h:308:2: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ^
   include/linux/compiler_types.h:302:4: note: expanded from macro '__compiletime_assert'
           } while (0)
             ^
   fs/ceph/file.c:927:37: error: indirection requires pointer operand ('u64' (aka 'unsigned long long') invalid)
                   fscrypt_adjust_off_and_len(inode, *read_off, *read_len);
                                                     ^~~~~~~~~
   fs/ceph/file.c:927:48: error: indirection requires pointer operand ('u64' (aka 'unsigned long long') invalid)
                   fscrypt_adjust_off_and_len(inode, *read_off, *read_len);
                                                                ^~~~~~~~~
   fs/ceph/file.c:1518:33: error: passing 'struct ceph_file_layout' to parameter of incompatible type 'struct ceph_file_layout *'; take the address with &
                   ceph_calc_file_object_mapping(ci->i_layout, pos, &xlen,
                                                 ^~~~~~~~~~~~
                                                 &
   include/linux/ceph/striper.h:10:61: note: passing argument to parameter 'l' here
   void ceph_calc_file_object_mapping(struct ceph_file_layout *l,
                                                               ^
>> fs/ceph/file.c:1542:19: error: use of undeclared identifier 'first'
                           u64 read_pos = first ? write_pos :
                                          ^
   fs/ceph/file.c:1551:32: error: use of undeclared identifier 'osdc'; did you mean 'fsc'?
                           req = ceph_osdc_new_request(osdc, &ci->i_layout,
                                                       ^~~~
                                                       fsc
   fs/ceph/file.c:1470:25: note: 'fsc' declared here
           struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
                                  ^
   fs/ceph/file.c:1584:10: error: incompatible pointer types passing 'struct page *' to parameter of type 'struct page **'; take the address with & [-Werror,-Wincompatible-pointer-types]
                                                                    pages[num_pages - 1],
                                                                    ^~~~~~~~~~~~~~~~~~~~
                                                                    &
   include/linux/ceph/osd_client.h:444:20: note: passing argument to parameter 'pages' here
                                           struct page **pages, u64 length,
                                                         ^
   fs/ceph/file.c:1589:34: error: use of undeclared identifier 'osdc'; did you mean 'fsc'?
                           ret = ceph_osdc_start_request(osdc, req, false);
                                                         ^~~~
                                                         fsc
   fs/ceph/file.c:1470:25: note: 'fsc' declared here
           struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
                                  ^
   fs/ceph/file.c:1591:34: error: use of undeclared identifier 'osdc'; did you mean 'fsc'?
                                   ret = ceph_osdc_wait_request(osdc, req);
                                                                ^~~~
                                                                fsc
   fs/ceph/file.c:1470:25: note: 'fsc' declared here
           struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
                                  ^
   fs/ceph/file.c:1640:14: error: no member named 'vino' in 'struct ceph_inode_info'
                                               ci->vino, pos, &len, rmw ? 1 : 0,
                                               ~~  ^
   fs/ceph/file.c:1537:9: error: use of undeclared label 'out'
                           goto out;
                                ^
   12 errors generated.


vim +/first +1542 fs/ceph/file.c

  1455	
  1456	/*
  1457	 * Synchronous write, straight from __user pointer or user pages.
  1458	 *
  1459	 * If write spans object boundary, just do multiple writes.  (For a
  1460	 * correct atomic write, we should e.g. take write locks on all
  1461	 * objects, rollback on failure, etc.)
  1462	 */
  1463	static ssize_t
  1464	ceph_sync_write(struct kiocb *iocb, struct iov_iter *from, loff_t pos,
  1465			struct ceph_snap_context *snapc)
  1466	{
  1467		struct file *file = iocb->ki_filp;
  1468		struct inode *inode = file_inode(file);
  1469		struct ceph_inode_info *ci = ceph_inode(inode);
  1470		struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
  1471		struct ceph_osd_request *req;
  1472		struct page **pages;
  1473		u64 len;
  1474		int num_pages;
  1475		int written = 0;
  1476		int ret;
  1477		bool check_caps = false;
  1478		struct timespec64 mtime = current_time(inode);
  1479		size_t count = iov_iter_count(from);
  1480		size_t off;
  1481	
  1482		if (ceph_snap(file_inode(file)) != CEPH_NOSNAP)
  1483			return -EROFS;
  1484	
  1485		dout("sync_write on file %p %lld~%u snapc %p seq %lld\n",
  1486		     file, pos, (unsigned)count, snapc, snapc->seq);
  1487	
  1488		ret = filemap_write_and_wait_range(inode->i_mapping,
  1489						   pos, pos + count - 1);
  1490		if (ret < 0)
  1491			return ret;
  1492	
  1493		ret = invalidate_inode_pages2_range(inode->i_mapping,
  1494						    pos >> PAGE_SHIFT,
  1495						    (pos + count - 1) >> PAGE_SHIFT);
  1496		if (ret < 0)
  1497			dout("invalidate_inode_pages2_range returned %d\n", ret);
  1498	
  1499		/* FIXME: temporary hack until we can do a proper RMW cycle */
  1500		if (IS_ENCRYPTED(inode)) {
  1501			len = iov_iter_count(from);
  1502			if ((pos & ~CEPH_FSCRYPT_BLOCK_MASK) || (len & ~CEPH_FSCRYPT_BLOCK_MASK))
  1503				return -EINVAL;
  1504		}
  1505	
  1506		while ((len = iov_iter_count(from)) > 0) {
  1507			size_t left;
  1508			size_t page_off;
  1509			int n;
  1510			u64 baseblock = pos >> CEPH_FSCRYPT_BLOCK_SHIFT;
  1511			u64 write_pos = pos;
  1512			u64 write_len;
  1513			u64 objnum, objoff, objlen;
  1514			bool rmw;
  1515			u32 xlen = len;
  1516	
  1517			/* clamp the length to the end of first object */
> 1518			ceph_calc_file_object_mapping(ci->i_layout, pos, &xlen,
  1519							&objnum, &objoff, &objlen);
  1520			len = xlen;
  1521			if (objlen < len)
  1522				len = objlen;
  1523	
  1524			write_len = len;
  1525			fscrypt_adjust_off_and_len(inode, &write_pos, &write_len);
  1526			rmw = (pos != write_pos || len != write_len);
  1527	
  1528			/*
  1529			 * The data is emplaced into the page as it would be if it were in the
  1530			 * pagecache.
  1531			 */
  1532			num_pages = calc_pages_for(write_pos, write_len);
  1533			page_off = write_pos & ~PAGE_MASK;
  1534			pages = ceph_alloc_page_vector(num_pages, GFP_KERNEL);
  1535			if (IS_ERR(pages)) {
  1536				ret = PTR_ERR(pages);
  1537				goto out;
  1538			}
  1539	
  1540			/* Do we need to preload the pages? */
  1541			if (rmw) {
> 1542				u64 read_pos = first ? write_pos :
  1543						       (write_pos + write_len) - CEPH_FSCRYPT_BLOCK_SIZE;
  1544				u64 read_len = CEPH_FSCRYPT_BLOCK_SIZE;
  1545				bool first = (pos != write_pos);
  1546				bool last = (len != write_len);
  1547	
  1548				/* We should only need to do this for encrypted inodes */
  1549				WARN_ON_ONCE(!IS_ENCRYPTED(inode));
  1550	
  1551				req = ceph_osdc_new_request(osdc, &ci->i_layout,
  1552						ci->i_vino, read_pos, &read_len, 0,
  1553						(first && last) ? 2 : 1,
  1554						CEPH_OSD_OP_READ, CEPH_OSD_FLAG_READ,
  1555						NULL, ci->i_truncate_seq,
  1556						ci->i_truncate_size, false);
  1557				if (IS_ERR(req)) {
  1558					ceph_release_page_vector(pages, num_pages);
  1559					ret = PTR_ERR(req);
  1560					break;
  1561				}
  1562	
  1563				BUG_ON(read_len != CEPH_FSCRYPT_BLOCK_SIZE);
  1564	
  1565				/* Add extent for first block? */
  1566				if (first)
  1567					osd_req_op_extent_osd_data_pages(req, 0, pages,
  1568									 CEPH_FSCRYPT_BLOCK_SIZE,
  1569									 page_off, false, false);
  1570	
  1571				/* Add extent for last block */
  1572				if (last) {
  1573					u64 read_pos = (write_pos + write_len) - CEPH_FSCRYPT_BLOCK_SIZE;
  1574					u32 alignment = read_pos & ~PAGE_MASK;
  1575	
  1576					/* Init the other extent */
  1577					if (first) {
  1578						osd_req_op_extent_init(req, 1, CEPH_OSD_OP_READ,
  1579								read_pos, read_len, ci->i_truncate_size,
  1580								ci->i_truncate_seq);
  1581					}
  1582	
  1583					osd_req_op_extent_osd_data_pages(req, first ? 1 : 0,
  1584									 pages[num_pages - 1],
  1585									 CEPH_FSCRYPT_BLOCK_SIZE,
  1586									 alignment, false, false);
  1587				}
  1588	
  1589				ret = ceph_osdc_start_request(osdc, req, false);
  1590				if (!ret)
  1591					ret = ceph_osdc_wait_request(osdc, req);
  1592	
  1593				ceph_update_read_latency(&fsc->mdsc->metric,
  1594							 req->r_start_latency,
  1595							 req->r_end_latency, ret);
  1596	
  1597				/* Ok if object is not already present */
  1598				if (ret == -ENOENT)
  1599					ret = 0;
  1600	
  1601				ceph_osdc_put_request(req);
  1602				if (ret) {
  1603					ceph_release_page_vector(pages, num_pages);
  1604					break;
  1605				}
  1606	
  1607				/* Decrypt here */
  1608			}
  1609	
  1610			left = len;
  1611			off = pos & ~CEPH_FSCRYPT_BLOCK_MASK;
  1612			for (n = 0; n < num_pages; n++) {
  1613				size_t plen = min_t(size_t, left, CEPH_FSCRYPT_BLOCK_SIZE - off);
  1614	
  1615				/* copy the data */
  1616				ret = copy_page_from_iter(pages[n], off, plen, from);
  1617				off = 0;
  1618				if (ret != plen) {
  1619					ret = -EFAULT;
  1620					break;
  1621				}
  1622				left -= ret;
  1623	
  1624				/* possibly encrypt it */
  1625				if (IS_ENCRYPTED(inode)) {
  1626					ret = fscrypt_encrypt_block_inplace(inode, pages[n],
  1627								    CEPH_FSCRYPT_BLOCK_SIZE, 0,
  1628								    baseblock + n, GFP_KERNEL);
  1629					if (ret)
  1630						break;
  1631				}
  1632			}
  1633	
  1634			if (ret < 0) {
  1635				ceph_release_page_vector(pages, num_pages);
  1636				break;
  1637			}
  1638	
  1639			req = ceph_osdc_new_request(&fsc->client->osdc, &ci->i_layout,
  1640						    ci->vino, pos, &len, rmw ? 1 : 0,
  1641						    rmw ? 2 : 1, CEPH_OSD_OP_WRITE,
  1642						    CEPH_OSD_FLAG_WRITE,
  1643						    snapc, ci->i_truncate_seq,
  1644						    ci->i_truncate_size,false);
  1645			if (IS_ERR(req)) {
  1646				ret = PTR_ERR(req);
  1647				ceph_release_page_vector(pages, num_pages);
  1648				break;
  1649			}
  1650	
  1651			osd_req_op_extent_osd_data_pages(req, 0, pages, len,
  1652							 pos & ~CEPH_FSCRYPT_BLOCK_MASK,
  1653							 false, true);
  1654			req->r_inode = inode;
  1655			req->r_mtime = mtime;
  1656	
  1657			ret = ceph_osdc_start_request(&fsc->client->osdc, req, false);
  1658			if (!ret)
  1659				ret = ceph_osdc_wait_request(&fsc->client->osdc, req);
  1660	
  1661			ceph_update_write_latency(&fsc->mdsc->metric, req->r_start_latency,
  1662						  req->r_end_latency, ret);
  1663			ceph_osdc_put_request(req);
  1664			if (ret != 0) {
  1665				ceph_set_error_write(ci);
  1666				break;
  1667			}
  1668			ceph_clear_error_write(ci);
  1669			pos += len;
  1670			written += len;
  1671			if (pos > i_size_read(inode)) {
  1672				check_caps = ceph_inode_set_size(inode, pos);
  1673				if (check_caps)
  1674					ceph_check_caps(ceph_inode(inode),
  1675							CHECK_CAPS_AUTHONLY,
  1676							NULL);
  1677			}
  1678	
  1679		}
  1680	
  1681		if (ret != -EOLDSNAPC && written > 0) {
  1682			ret = written;
  1683			iocb->ki_pos = pos;
  1684		}
  1685		return ret;
  1686	}
  1687	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102241721.j7gjQAKk-lkp%40intel.com.

--17pEHd4RhPHOinZp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--17pEHd4RhPHOinZp--
