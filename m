Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHNDZKBQMGQECHHCH5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A1135B1E0
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 08:05:19 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id p5-20020a17090a9305b02900d0cb6d4e37sf4260331pjo.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Apr 2021 23:05:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618121118; cv=pass;
        d=google.com; s=arc-20160816;
        b=iGblgmZoIva/Lo1o06fxsJ98J1YPVzQa4E5cTiyUDBzi5RcpbRsIKTF2MRz1kLPIP6
         2+fZif72PebZBkVd4tDG8pHV3wDPzCmyBMqx8hbU7XxIv5Uo9ddomwP/ZYtKDuEeqn1A
         hC8TO0kigJSu47I69WmqFMYDXq79aPTMejJKAm/Uqf7bLJ4S9M+dsYb6bo2gCMW0WH4R
         SCH594U8hYb7tvP1mt1rvbLzH7fJnYoys6c/Js4hUGTr8Rrfhjy5Z2xgGRNvoIsFs+IQ
         0iSBRRZ0hp+36NkSS3hDaTHfMYPGHXcy4oEYhFc3BsL9BoltJO7kU6u3EUHIUA4m2Hml
         mLwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=eijP0SBBKx34r4cvb2TWA/mfBdusv+tgG8XM8dolCMo=;
        b=bjncuBtSOKva/PsBmTbIu62j2NEDWkKGG4QdejZZEg4utpMORs+NckLsbv5Vdf9uLT
         VLQtMQH3hJoXuiOPT+OO3blYIrQfIMlK3/JStGjyjj7cyLhkyKiMO+vlEiWP36uD9F5G
         vA9QkLOKhW8DANFDO8eDiFfEQMFzvFEikATPLGvNTkiG3NFQE1qqvuZqeMWhoPzr1eON
         lDQBgvqce2oK0kY6Bf4aKGBMXx6VBCubRw8vQ0TsRbDzhaR9AARzz6UhG+JmryVjThjJ
         JKY9XvfI8MDfsQoyEXsMtbLkwOJkLnem69XLfzNRsNb1AEFzprBH6671VI8JthUkz8IL
         h+4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eijP0SBBKx34r4cvb2TWA/mfBdusv+tgG8XM8dolCMo=;
        b=p/qb5D0cIbUL4MAzFP/ddbQ9n5DjyK/33NqhH0XJS7ze0gCTytQiKF7Uru9jb+qs5C
         e/Nz2miFVKNpSgObObem2d0zu4sNGiex1dbfpK9rO1zhS93v1hhKojmJ66MAJNV4hSmB
         QZbyrFL4SxYf4eUrWbWFJ0exYX9Ckl21+TRyx2a8u/rPY3mVA6KdJ1klC2aykqGU39Mc
         7LpU1jUo8zigDggLB02JzMyE8U5JKFYlHu2H3SEHqZa6jddML7xJm2DVD42pHWEWQ4Ok
         p2SHWEWoEUINBf5UjlNSpMb298NATKKugjEPGbVCXi0ZpgM60ai8Wgjw2+1z6p0xMR4U
         p33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eijP0SBBKx34r4cvb2TWA/mfBdusv+tgG8XM8dolCMo=;
        b=geMuxGBcVmhtb4AuvyENGUEe+OgnVl6Jboun3Sr80NZT7FN6sBCMAmQmjgQZKdps0M
         S369M/7AKR0en3fvxbF5g12fkwr7VKMy1FBxUWyRDFTnARESWpeezzceOO/Avkelq3/P
         +RLXHfhUfMy+fKEdjiZm3XuLjKEUhIO9KTP3Vy4QuDY5niAk6mDN3La/eHwk4NJoNtNE
         ZC9LdxFYTmA7Bq45Of7hTJh0OYexie9p+aj73Jrv9qe70U0BrQhXUjH2ibTdt7lqXDLT
         DOeWMERVBGNk9wKMbeWDhP3bz/R0KDLeMqBj/a4Guaj9J4PSwtA9fSsP1Bt5hrAl7dJs
         e9sA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322KCdGinCkgReqlL1i2HGzM6ut641yM/rYkw4vW3+NoAXgfriM
	H/F9SFXbCB1MBSbGhQFWemo=
X-Google-Smtp-Source: ABdhPJydg9r9fSdagk9v6+5TICenMLaZyMcODpB4VVBGJlHQgMyZOcU2R+cMEIroETZeZ5pePmH2mg==
X-Received: by 2002:a05:6a00:1510:b029:221:cd7d:90d8 with SMTP id q16-20020a056a001510b0290221cd7d90d8mr19158092pfu.61.1618121118012;
        Sat, 10 Apr 2021 23:05:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d591:: with SMTP id v17ls3680pju.0.gmail; Sat, 10
 Apr 2021 23:05:17 -0700 (PDT)
X-Received: by 2002:a17:902:654d:b029:ea:ee2b:7c04 with SMTP id d13-20020a170902654db02900eaee2b7c04mr208067pln.48.1618121117322;
        Sat, 10 Apr 2021 23:05:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618121117; cv=none;
        d=google.com; s=arc-20160816;
        b=I4ACR3sjG6FwlO3qUzVS7jj8SVujcTtHATckfV0ILqdPMsxqF+lQ8ke9qfE/mQD/pC
         rD/3+x3rnVhlkKC5lRuR5U1FDPUW/zzUemHT23SrgW62203m+f6OfbMpgSxs/Qa8h8dI
         LQOYvhK1tki8PHgVLyEU+b/+PeubIfaK9ow6P8NPiKDXF2BYPCdEoVGGIHx3dxcPSMk+
         vMqeJZivesjVuubPfxd/a05b0JpY+YvKXz3ZhboqElQQJtjv6taLRUcZ3aDP8GSXibZv
         VodGnr3BK8PR37De15OHrNQaNYOWTCvJRMMDBW9faJxIpu9uHqP2EYBrJ0FL2mmkTeSq
         Gciw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=6V75wWXhn1BTjbwunHn99z0lnqgHZn1g0RTgcy8xc10=;
        b=b1Xj5Cjvyp9B27Ki9gHt5tSk2aK4fHi08vve100koUfXKPGSetH70EMz8vONg4qo69
         YRyCX5K3nZHgNxNUbMp5CPNU9gg324oqAtl3eyTgMcnU/oEliCIm1w7CNVSopTWPL8/k
         54e+4UOUR7u+7wPnLkJP9nvQZPztZ8I5yvF9SRFp2sXZHnGnm3YOtfo/cMBfS2Pvh79k
         C8iJklDtEFo5mM8qix8YaaqaLZgKzo6SuPdFjv2w5a6OgjPl5LUwMQlvIifF5c6eyRA6
         8qTmDnV8k8JlHeQ1vbFZBOgtQ7kHx4yriKISqN+c6nhyflVGTiFBmpdD3Ose+2BNeNC9
         5i+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id mz7si240922pjb.0.2021.04.10.23.05.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 23:05:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: sO01nb8alzD2gbDYFZ8ZPZocPbW+08xLpWvgNzEwyVNWRMIQhyHlS9C9+N+Yqb0V0ivUmfoEpD
 48TkEtAES3NA==
X-IronPort-AV: E=McAfee;i="6000,8403,9950"; a="279284535"
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; 
   d="gz'50?scan'50,208,50";a="279284535"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 23:05:16 -0700
IronPort-SDR: Yzkqn6l+bRQb0kOeBHmijACO6pfCDe18V8pmoqSKOZcUB2EkeW71/joTaKqnMO3b2XyScUg7Uf
 s/V9Rxll4+9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; 
   d="gz'50?scan'50,208,50";a="614186958"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 10 Apr 2021 23:05:14 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lVTDe-000Iql-Cb; Sun, 11 Apr 2021 06:05:14 +0000
Date: Sun, 11 Apr 2021 14:05:11 +0800
From: kernel test robot <lkp@intel.com>
To: Jens Axboe <axboe@kernel.dk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [block:for-next 17/18] fs/io_uring.c:2765:8: error: implicit
 declaration of function 'io_rw_reissue'
Message-ID: <202104111403.XtYFlL1p-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
head:   6d4150dd565ad788d6ee6c327ef0e8c4ad1a6d2a
commit: 8d62fe051cff68c21d584898e8a521e76178f69c [17/18] Merge branch 'io_uring-5.12' into for-next
config: s390-randconfig-r013-20210411 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=8d62fe051cff68c21d584898e8a521e76178f69c
        git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
        git fetch --no-tags block for-next
        git checkout 8d62fe051cff68c21d584898e8a521e76178f69c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from fs/io_uring.c:60:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from fs/io_uring.c:60:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from fs/io_uring.c:60:
   In file included from include/linux/blkdev.h:26:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> fs/io_uring.c:2765:8: error: implicit declaration of function 'io_rw_reissue' [-Werror,-Wimplicit-function-declaration]
                   if (!io_rw_reissue(req)) {
                        ^
   12 warnings and 1 error generated.


vim +/io_rw_reissue +2765 fs/io_uring.c

2b188cc1bb857a Jens Axboe     2019-01-07  2740  
a1d7c393c4711a Jens Axboe     2020-06-22  2741  static void kiocb_done(struct kiocb *kiocb, ssize_t ret,
889fca73287b0a Pavel Begunkov 2021-02-10  2742  		       unsigned int issue_flags)
ba816ad61fdf31 Jens Axboe     2019-09-28  2743  {
ba04291eb66ed8 Jens Axboe     2019-12-25  2744  	struct io_kiocb *req = container_of(kiocb, struct io_kiocb, rw.kiocb);
e8c2bc1fb6c949 Jens Axboe     2020-08-15  2745  	struct io_async_rw *io = req->async_data;
9728463737db02 Pavel Begunkov 2021-04-08  2746  	bool check_reissue = kiocb->ki_complete == io_complete_rw;
ba04291eb66ed8 Jens Axboe     2019-12-25  2747  
227c0c9673d867 Jens Axboe     2020-08-13  2748  	/* add previously done IO, if any */
e8c2bc1fb6c949 Jens Axboe     2020-08-15  2749  	if (io && io->bytes_done > 0) {
227c0c9673d867 Jens Axboe     2020-08-13  2750  		if (ret < 0)
e8c2bc1fb6c949 Jens Axboe     2020-08-15  2751  			ret = io->bytes_done;
227c0c9673d867 Jens Axboe     2020-08-13  2752  		else
e8c2bc1fb6c949 Jens Axboe     2020-08-15  2753  			ret += io->bytes_done;
227c0c9673d867 Jens Axboe     2020-08-13  2754  	}
227c0c9673d867 Jens Axboe     2020-08-13  2755  
ba04291eb66ed8 Jens Axboe     2019-12-25  2756  	if (req->flags & REQ_F_CUR_POS)
ba04291eb66ed8 Jens Axboe     2019-12-25  2757  		req->file->f_pos = kiocb->ki_pos;
bcaec089c5b649 Pavel Begunkov 2020-02-24  2758  	if (ret >= 0 && kiocb->ki_complete == io_complete_rw)
889fca73287b0a Pavel Begunkov 2021-02-10  2759  		__io_complete_rw(req, ret, 0, issue_flags);
ba816ad61fdf31 Jens Axboe     2019-09-28  2760  	else
ba816ad61fdf31 Jens Axboe     2019-09-28  2761  		io_rw_done(kiocb, ret);
9728463737db02 Pavel Begunkov 2021-04-08  2762  
9728463737db02 Pavel Begunkov 2021-04-08  2763  	if (check_reissue && req->flags & REQ_F_REISSUE) {
9728463737db02 Pavel Begunkov 2021-04-08  2764  		req->flags &= ~REQ_F_REISSUE;
9728463737db02 Pavel Begunkov 2021-04-08 @2765  		if (!io_rw_reissue(req)) {
9728463737db02 Pavel Begunkov 2021-04-08  2766  			int cflags = 0;
9728463737db02 Pavel Begunkov 2021-04-08  2767  
9728463737db02 Pavel Begunkov 2021-04-08  2768  			req_set_fail_links(req);
9728463737db02 Pavel Begunkov 2021-04-08  2769  			if (req->flags & REQ_F_BUFFER_SELECTED)
9728463737db02 Pavel Begunkov 2021-04-08  2770  				cflags = io_put_rw_kbuf(req);
9728463737db02 Pavel Begunkov 2021-04-08  2771  			__io_req_complete(req, issue_flags, ret, cflags);
9728463737db02 Pavel Begunkov 2021-04-08  2772  		}
9728463737db02 Pavel Begunkov 2021-04-08  2773  	}
ba816ad61fdf31 Jens Axboe     2019-09-28  2774  }
ba816ad61fdf31 Jens Axboe     2019-09-28  2775  

:::::: The code at line 2765 was first introduced by commit
:::::: 9728463737db027557e8ba315cbbca6b81122c04 io_uring: fix rw req completion

:::::: TO: Pavel Begunkov <asml.silence@gmail.com>
:::::: CC: Jens Axboe <axboe@kernel.dk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104111403.XtYFlL1p-lkp%40intel.com.

--T4sUOijqQbZv57TR
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
INJXCHC9dguDPNHxO5dmDP8DX/FZKQwCAQA=

--T4sUOijqQbZv57TR--
