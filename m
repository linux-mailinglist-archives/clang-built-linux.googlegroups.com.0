Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYG572BAMGQET5DCUNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C7634B9C4
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 23:17:05 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id x68sf6935349ota.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 15:17:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616883424; cv=pass;
        d=google.com; s=arc-20160816;
        b=KLV76sjSAJvkrkI2KZAoYUm+XwCq2kv+bifPSfcIBRX+w6pGYlV7gtKqhBN28HHwkI
         1VMK5cFcrsKzJov8nxVU3sXq6XyeYg8hHmmG1itDt5jgtK/ybSchcjqgJk2Lr2SptEP7
         bafBjNVs2h2GfS0OtzFwC8BSLVa85i9L/WDsCLk4YvmOXctzHGh3NcTcroTguuoIRIgT
         azZbPCF5lldvRMPIkmvVT3GF6r2yGdR3aK5RQlfOxrAtpFUp+x9F9rPpIxXL/wLfFO+3
         u3zgcxrhuDS6KYf09JazURCwHT7D3T551ZqqdFWRZDcbV9Cu8Rl3Y9mqwgd7MOFZltsb
         OTbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=TQQs4xX1cx/wBxT5gYAmwQMt0x1fBeyJSKROyaEZRIM=;
        b=VzX+KalVbg2Dit98AUcCerhg6FeCqbJw3l8iomkY/MttE+U15/t71A4TY47t1fT+p/
         xMe5TIu84X+Mf7mC8cySVHSeTYB275+xitxEksY8q8THK2iZRodjfOdMV5XHN2NLC9Fh
         2wjp0lKvkItgEZ5YRU+37lOMsfAtrjcb/IMLnsEyQIZc/mOE2U+Z9j/ItWCEuBcCfcaL
         xfvLr92ZyI9zZuOWbzlzapSf7thfldynTyUGGBYjBtWKNJSPiZVAaCZdI/25OrhWrynY
         NlhbXL/Vb3W6bAb1i5JtjecFZwz1QGhAavkk2gx5WS9rfkQWGkL9ppaWMBssULc7osKD
         yPKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TQQs4xX1cx/wBxT5gYAmwQMt0x1fBeyJSKROyaEZRIM=;
        b=eohTIJD2JklrbCaCfBkPcQaPIA3XYz1Iex7tfgyR2U0eekWFfbAfa4KqI5kbsV7hJ+
         EsSGTt/PDzFhCvliFUx2fB5CkL4o0bPqg1EbzCpo7KEkLL2c9Z13UPSEfprG9x7VX5v0
         qAcCTm96IhaZtlA7Crw2GJYzR7JWtaUKEYlCSGm71Y/BIW+D7iu3Kix2krtnmcaPc3Cu
         1qEvxNOESFJhVlrEJxNPTVQOFBw0Z/ze8D93+RE1i48ED/OfbeTvGMwp46NlqRK6dD29
         ucAsLnxjA/wFuljAYNpWRDf7t77Cx/TI48Qkq1j4Tqwch5bDrhdJWeAqX4N30VFviS+c
         MLzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TQQs4xX1cx/wBxT5gYAmwQMt0x1fBeyJSKROyaEZRIM=;
        b=aCpKySUxl8qz1d8p8Vlq+tJfEhDwInaVtPNsgdN7PEo3nqbO/yjK+/AlNCaLNCYou2
         xJhJ5jkVUSvt9jprvPLKOqf1LwjwVs20w9TmwDs9tTWGBfrgedfQc4RO/vOuz4anmJQt
         N1ilMvns/JZyjRYSISTPAu4SZcWOHmllBOL4zKWlHclOsWR88vQLeTzPNuac0FkDU7dr
         15GM+dRKBNowmNCYhvCPPljoxQiKFH/N4STLke7RILF5bdwoEYUbtMq5e8wspBpTHGI9
         DBaRPDGFJtqvulwh2DPg5Ja42C9PIHJ/2yTNE0WjcdsmFZE0YuRXWhgSGgoeEWwtliWY
         DYKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zaTNH+vSzUieVdIMUNI6nbV4lYitCqCxe3nAG89ZQ/IZ+fbuP
	qEpieMNMPTB6SS+gVOF1hKs=
X-Google-Smtp-Source: ABdhPJy7WeOQWD4UpGYt09mrNOIpVYuDQDIy50vN1YPnKYHlO4ww4HL9P9jN9PhHgFjyX1HzKanzzQ==
X-Received: by 2002:a05:6830:238c:: with SMTP id l12mr17206950ots.276.1616883424181;
        Sat, 27 Mar 2021 15:17:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a97:: with SMTP id q23ls3035271oij.0.gmail; Sat, 27
 Mar 2021 15:17:03 -0700 (PDT)
X-Received: by 2002:a05:6808:a1a:: with SMTP id n26mr14321759oij.0.1616883423297;
        Sat, 27 Mar 2021 15:17:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616883423; cv=none;
        d=google.com; s=arc-20160816;
        b=c7OfBMrNcM701j8eeLs7O22zuyrQUApE2gg5gXYcst5DfSb5oLqvs93ERjGD4VWx0U
         9ItMT1Ve+16PuuUd3HFZIFktOtzksPYLt+ZAuC6Pw5w+XEa9HhhCuY2K7lyW9XKOQczt
         rNhXaT0KFANQ+nkiY0VivGlMetZpIPdre2lyfiHgkQMiR2q26+0hk5N1fA49Mxa/+JUW
         +0shr+h2ak2o8lZrVwzT+N+AUZb6gJPTEFBKFrCh5NO7/iv15NwGY2YQhnvxtXcciPD4
         6pPUpSom3vCr4Ocso/pi2Y9x/znagpyUAGe29cYW0CHbZ4Mogk9/hdUqCfk6QblLKx+t
         PXMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=mPeAL4oACKiPQgXuj4PyYrHd3uizrSwp2IDaexlIRWc=;
        b=YrQKNJ52TVWyNDb2/mBCBRMnwnVqcQ0GizC4d4qHn4dC9F+0ulZYooSsw9vaK/4S3l
         noxNi5AeyhkORSjbN8xGU3m/E6F6yAVSy4hJt0ewlCBa+YGLZC3UDv2XAxZcKcbvQeJI
         aGwSR/KWH+63kqOL3V+9MtPjJEB/m2epmbIau/EXQvxxYgrPLlTXhOXi+ZS8eOAfdlZl
         J56lVN6y6K4HZsh9+xmH7zckfemfchETs4B6wXrloMCQ2ZSDjD7ZmeYpeO0EyVnSjpQY
         5fVnXajfwhhzLch3ljrFbfJOayojMvM1c9/Pjj8ySaZ0XzQ7TqS2w66fYffAnqEiCCwE
         rkqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id a4si460011oiw.5.2021.03.27.15.17.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Mar 2021 15:17:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: bgbuixtFUS+k0/2siwZ3VktLqc9aqSD303oE0ZiPAb/1umvkKP3O1bcQ4AQAN4Rx9+Aj65mDI6
 0slJWPtYkmcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9936"; a="188063793"
X-IronPort-AV: E=Sophos;i="5.81,284,1610438400"; 
   d="gz'50?scan'50,208,50";a="188063793"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2021 15:17:01 -0700
IronPort-SDR: /FTkaL9JVe7P0AUSx0ipi0mR+y2dd+ucGvxJVuZFIYW0BS+6LKLEQL8dmyktttKbRBmq+UcHvU
 pbHZkc3S+25g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,284,1610438400"; 
   d="gz'50?scan'50,208,50";a="392663876"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 27 Mar 2021 15:16:59 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lQHEo-0003hj-GX; Sat, 27 Mar 2021 22:16:58 +0000
Date: Sun, 28 Mar 2021 06:16:15 +0800
From: kernel test robot <lkp@intel.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
Subject: fs/ntfs/aops.c:378:12: warning: stack frame size of 2288 bytes in
 function 'ntfs_readpage'
Message-ID: <202103280658.kByZmw5Q-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   0f4498cef9f5cd18d7c6639a2a902ec1edc5be4e
commit: 4eeef098b43242ed145c83fba9989d586d707589 powerpc/44x: Remove STDBINUTILS kconfig option
date:   8 weeks ago
config: powerpc64-randconfig-r036-20210328 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d50fe9f0d6b9ee61df8830a67ea0a33c27a637e7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4eeef098b43242ed145c83fba9989d586d707589
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 4eeef098b43242ed145c83fba9989d586d707589
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/ntfs/aops.c:378:12: warning: stack frame size of 2288 bytes in function 'ntfs_readpage' [-Wframe-larger-than=]
   static int ntfs_readpage(struct file *file, struct page *page)
              ^
   1 warning generated.
--
>> net/bluetooth/hci_core.c:2108:26: warning: result of comparison of constant 65536 with expression of type '__u16' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare]
           if (!dev_num || dev_num > (PAGE_SIZE * 2) / sizeof(*dr))
           ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
>> net/bluetooth/hci_core.c:2108:26: warning: result of comparison of constant 65536 with expression of type '__u16' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare]
           if (!dev_num || dev_num > (PAGE_SIZE * 2) / sizeof(*dr))
           ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> net/bluetooth/hci_core.c:2108:26: warning: result of comparison of constant 65536 with expression of type '__u16' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare]
           if (!dev_num || dev_num > (PAGE_SIZE * 2) / sizeof(*dr))
           ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
   3 warnings generated.


vim +/ntfs_readpage +378 fs/ntfs/aops.c

^1da177e4c3f41 Linus Torvalds     2005-04-16  359  
^1da177e4c3f41 Linus Torvalds     2005-04-16  360  /**
^1da177e4c3f41 Linus Torvalds     2005-04-16  361   * ntfs_readpage - fill a @page of a @file with data from the device
^1da177e4c3f41 Linus Torvalds     2005-04-16  362   * @file:	open file to which the page @page belongs or NULL
^1da177e4c3f41 Linus Torvalds     2005-04-16  363   * @page:	page cache page to fill with data
^1da177e4c3f41 Linus Torvalds     2005-04-16  364   *
^1da177e4c3f41 Linus Torvalds     2005-04-16  365   * For non-resident attributes, ntfs_readpage() fills the @page of the open
^1da177e4c3f41 Linus Torvalds     2005-04-16  366   * file @file by calling the ntfs version of the generic block_read_full_page()
^1da177e4c3f41 Linus Torvalds     2005-04-16  367   * function, ntfs_read_block(), which in turn creates and reads in the buffers
^1da177e4c3f41 Linus Torvalds     2005-04-16  368   * associated with the page asynchronously.
^1da177e4c3f41 Linus Torvalds     2005-04-16  369   *
^1da177e4c3f41 Linus Torvalds     2005-04-16  370   * For resident attributes, OTOH, ntfs_readpage() fills @page by copying the
^1da177e4c3f41 Linus Torvalds     2005-04-16  371   * data from the mft record (which at this stage is most likely in memory) and
^1da177e4c3f41 Linus Torvalds     2005-04-16  372   * fills the remainder with zeroes. Thus, in this case, I/O is synchronous, as
^1da177e4c3f41 Linus Torvalds     2005-04-16  373   * even if the mft record is not cached at this point in time, we need to wait
^1da177e4c3f41 Linus Torvalds     2005-04-16  374   * for it to be read in before we can do the copy.
^1da177e4c3f41 Linus Torvalds     2005-04-16  375   *
^1da177e4c3f41 Linus Torvalds     2005-04-16  376   * Return 0 on success and -errno on error.
^1da177e4c3f41 Linus Torvalds     2005-04-16  377   */
^1da177e4c3f41 Linus Torvalds     2005-04-16 @378  static int ntfs_readpage(struct file *file, struct page *page)
^1da177e4c3f41 Linus Torvalds     2005-04-16  379  {
f6098cf449b81c Anton Altaparmakov 2005-09-19  380  	loff_t i_size;
f6098cf449b81c Anton Altaparmakov 2005-09-19  381  	struct inode *vi;
^1da177e4c3f41 Linus Torvalds     2005-04-16  382  	ntfs_inode *ni, *base_ni;
bfab36e81611e6 Anton Altaparmakov 2007-10-12  383  	u8 *addr;
^1da177e4c3f41 Linus Torvalds     2005-04-16  384  	ntfs_attr_search_ctx *ctx;
^1da177e4c3f41 Linus Torvalds     2005-04-16  385  	MFT_RECORD *mrec;
b6ad6c52fe36ab Anton Altaparmakov 2005-02-15  386  	unsigned long flags;
^1da177e4c3f41 Linus Torvalds     2005-04-16  387  	u32 attr_len;
^1da177e4c3f41 Linus Torvalds     2005-04-16  388  	int err = 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16  389  
905685f68fc728 Anton Altaparmakov 2005-03-10  390  retry_readpage:
^1da177e4c3f41 Linus Torvalds     2005-04-16  391  	BUG_ON(!PageLocked(page));
ebab89909e0dc7 Anton Altaparmakov 2007-11-03  392  	vi = page->mapping->host;
ebab89909e0dc7 Anton Altaparmakov 2007-11-03  393  	i_size = i_size_read(vi);
ebab89909e0dc7 Anton Altaparmakov 2007-11-03  394  	/* Is the page fully outside i_size? (truncate in progress) */
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  395  	if (unlikely(page->index >= (i_size + PAGE_SIZE - 1) >>
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  396  			PAGE_SHIFT)) {
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  397  		zero_user(page, 0, PAGE_SIZE);
ebab89909e0dc7 Anton Altaparmakov 2007-11-03  398  		ntfs_debug("Read outside i_size - truncated?");
ebab89909e0dc7 Anton Altaparmakov 2007-11-03  399  		goto done;
ebab89909e0dc7 Anton Altaparmakov 2007-11-03  400  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  401  	/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  402  	 * This can potentially happen because we clear PageUptodate() during
^1da177e4c3f41 Linus Torvalds     2005-04-16  403  	 * ntfs_writepage() of MstProtected() attributes.
^1da177e4c3f41 Linus Torvalds     2005-04-16  404  	 */
^1da177e4c3f41 Linus Torvalds     2005-04-16  405  	if (PageUptodate(page)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  406  		unlock_page(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  407  		return 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16  408  	}
f6098cf449b81c Anton Altaparmakov 2005-09-19  409  	ni = NTFS_I(vi);
^1da177e4c3f41 Linus Torvalds     2005-04-16  410  	/*
311120eca00130 Anton Altaparmakov 2005-09-08  411  	 * Only $DATA attributes can be encrypted and only unnamed $DATA
311120eca00130 Anton Altaparmakov 2005-09-08  412  	 * attributes can be compressed.  Index root can have the flags set but
311120eca00130 Anton Altaparmakov 2005-09-08  413  	 * this means to create compressed/encrypted files, not that the
4e64c88693fde1 Anton Altaparmakov 2005-09-19  414  	 * attribute is compressed/encrypted.  Note we need to check for
4e64c88693fde1 Anton Altaparmakov 2005-09-19  415  	 * AT_INDEX_ALLOCATION since this is the type of both directory and
4e64c88693fde1 Anton Altaparmakov 2005-09-19  416  	 * index inodes.
^1da177e4c3f41 Linus Torvalds     2005-04-16  417  	 */
4e64c88693fde1 Anton Altaparmakov 2005-09-19  418  	if (ni->type != AT_INDEX_ALLOCATION) {
311120eca00130 Anton Altaparmakov 2005-09-08  419  		/* If attribute is encrypted, deny access, just like NT4. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  420  		if (NInoEncrypted(ni)) {
311120eca00130 Anton Altaparmakov 2005-09-08  421  			BUG_ON(ni->type != AT_DATA);
^1da177e4c3f41 Linus Torvalds     2005-04-16  422  			err = -EACCES;
^1da177e4c3f41 Linus Torvalds     2005-04-16  423  			goto err_out;
^1da177e4c3f41 Linus Torvalds     2005-04-16  424  		}
^1da177e4c3f41 Linus Torvalds     2005-04-16  425  		/* Compressed data streams are handled in compress.c. */
311120eca00130 Anton Altaparmakov 2005-09-08  426  		if (NInoNonResident(ni) && NInoCompressed(ni)) {
311120eca00130 Anton Altaparmakov 2005-09-08  427  			BUG_ON(ni->type != AT_DATA);
311120eca00130 Anton Altaparmakov 2005-09-08  428  			BUG_ON(ni->name_len);
^1da177e4c3f41 Linus Torvalds     2005-04-16  429  			return ntfs_read_compressed_block(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  430  		}
311120eca00130 Anton Altaparmakov 2005-09-08  431  	}
311120eca00130 Anton Altaparmakov 2005-09-08  432  	/* NInoNonResident() == NInoIndexAllocPresent() */
311120eca00130 Anton Altaparmakov 2005-09-08  433  	if (NInoNonResident(ni)) {
311120eca00130 Anton Altaparmakov 2005-09-08  434  		/* Normal, non-resident data stream. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  435  		return ntfs_read_block(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  436  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  437  	/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  438  	 * Attribute is resident, implying it is not compressed or encrypted.
^1da177e4c3f41 Linus Torvalds     2005-04-16  439  	 * This also means the attribute is smaller than an mft record and
^1da177e4c3f41 Linus Torvalds     2005-04-16  440  	 * hence smaller than a page, so can simply zero out any pages with
311120eca00130 Anton Altaparmakov 2005-09-08  441  	 * index above 0.  Note the attribute can actually be marked compressed
311120eca00130 Anton Altaparmakov 2005-09-08  442  	 * but if it is resident the actual data is not compressed so we are
311120eca00130 Anton Altaparmakov 2005-09-08  443  	 * ok to ignore the compressed flag here.
^1da177e4c3f41 Linus Torvalds     2005-04-16  444  	 */
b6ad6c52fe36ab Anton Altaparmakov 2005-02-15  445  	if (unlikely(page->index > 0)) {
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  446  		zero_user(page, 0, PAGE_SIZE);
^1da177e4c3f41 Linus Torvalds     2005-04-16  447  		goto done;
^1da177e4c3f41 Linus Torvalds     2005-04-16  448  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  449  	if (!NInoAttr(ni))
^1da177e4c3f41 Linus Torvalds     2005-04-16  450  		base_ni = ni;
^1da177e4c3f41 Linus Torvalds     2005-04-16  451  	else
^1da177e4c3f41 Linus Torvalds     2005-04-16  452  		base_ni = ni->ext.base_ntfs_ino;
^1da177e4c3f41 Linus Torvalds     2005-04-16  453  	/* Map, pin, and lock the mft record. */
^1da177e4c3f41 Linus Torvalds     2005-04-16  454  	mrec = map_mft_record(base_ni);
^1da177e4c3f41 Linus Torvalds     2005-04-16  455  	if (IS_ERR(mrec)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  456  		err = PTR_ERR(mrec);
^1da177e4c3f41 Linus Torvalds     2005-04-16  457  		goto err_out;
^1da177e4c3f41 Linus Torvalds     2005-04-16  458  	}
905685f68fc728 Anton Altaparmakov 2005-03-10  459  	/*
905685f68fc728 Anton Altaparmakov 2005-03-10  460  	 * If a parallel write made the attribute non-resident, drop the mft
905685f68fc728 Anton Altaparmakov 2005-03-10  461  	 * record and retry the readpage.
905685f68fc728 Anton Altaparmakov 2005-03-10  462  	 */
905685f68fc728 Anton Altaparmakov 2005-03-10  463  	if (unlikely(NInoNonResident(ni))) {
905685f68fc728 Anton Altaparmakov 2005-03-10  464  		unmap_mft_record(base_ni);
905685f68fc728 Anton Altaparmakov 2005-03-10  465  		goto retry_readpage;
905685f68fc728 Anton Altaparmakov 2005-03-10  466  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  467  	ctx = ntfs_attr_get_search_ctx(base_ni, mrec);
^1da177e4c3f41 Linus Torvalds     2005-04-16  468  	if (unlikely(!ctx)) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  469  		err = -ENOMEM;
^1da177e4c3f41 Linus Torvalds     2005-04-16  470  		goto unm_err_out;
^1da177e4c3f41 Linus Torvalds     2005-04-16  471  	}
^1da177e4c3f41 Linus Torvalds     2005-04-16  472  	err = ntfs_attr_lookup(ni->type, ni->name, ni->name_len,
^1da177e4c3f41 Linus Torvalds     2005-04-16  473  			CASE_SENSITIVE, 0, NULL, 0, ctx);
^1da177e4c3f41 Linus Torvalds     2005-04-16  474  	if (unlikely(err))
^1da177e4c3f41 Linus Torvalds     2005-04-16  475  		goto put_unm_err_out;
^1da177e4c3f41 Linus Torvalds     2005-04-16  476  	attr_len = le32_to_cpu(ctx->attr->data.resident.value_length);
b6ad6c52fe36ab Anton Altaparmakov 2005-02-15  477  	read_lock_irqsave(&ni->size_lock, flags);
b6ad6c52fe36ab Anton Altaparmakov 2005-02-15  478  	if (unlikely(attr_len > ni->initialized_size))
b6ad6c52fe36ab Anton Altaparmakov 2005-02-15  479  		attr_len = ni->initialized_size;
f6098cf449b81c Anton Altaparmakov 2005-09-19  480  	i_size = i_size_read(vi);
b6ad6c52fe36ab Anton Altaparmakov 2005-02-15  481  	read_unlock_irqrestore(&ni->size_lock, flags);
f6098cf449b81c Anton Altaparmakov 2005-09-19  482  	if (unlikely(attr_len > i_size)) {
f6098cf449b81c Anton Altaparmakov 2005-09-19  483  		/* Race with shrinking truncate. */
f6098cf449b81c Anton Altaparmakov 2005-09-19  484  		attr_len = i_size;
f6098cf449b81c Anton Altaparmakov 2005-09-19  485  	}
a3ac1414eb6011 Cong Wang          2011-11-25  486  	addr = kmap_atomic(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  487  	/* Copy the data to the page. */
bfab36e81611e6 Anton Altaparmakov 2007-10-12  488  	memcpy(addr, (u8*)ctx->attr +
^1da177e4c3f41 Linus Torvalds     2005-04-16  489  			le16_to_cpu(ctx->attr->data.resident.value_offset),
^1da177e4c3f41 Linus Torvalds     2005-04-16  490  			attr_len);
^1da177e4c3f41 Linus Torvalds     2005-04-16  491  	/* Zero the remainder of the page. */
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  492  	memset(addr + attr_len, 0, PAGE_SIZE - attr_len);
^1da177e4c3f41 Linus Torvalds     2005-04-16  493  	flush_dcache_page(page);
a3ac1414eb6011 Cong Wang          2011-11-25  494  	kunmap_atomic(addr);
^1da177e4c3f41 Linus Torvalds     2005-04-16  495  put_unm_err_out:
^1da177e4c3f41 Linus Torvalds     2005-04-16  496  	ntfs_attr_put_search_ctx(ctx);
^1da177e4c3f41 Linus Torvalds     2005-04-16  497  unm_err_out:
^1da177e4c3f41 Linus Torvalds     2005-04-16  498  	unmap_mft_record(base_ni);
^1da177e4c3f41 Linus Torvalds     2005-04-16  499  done:
^1da177e4c3f41 Linus Torvalds     2005-04-16  500  	SetPageUptodate(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  501  err_out:
^1da177e4c3f41 Linus Torvalds     2005-04-16  502  	unlock_page(page);
^1da177e4c3f41 Linus Torvalds     2005-04-16  503  	return err;
^1da177e4c3f41 Linus Torvalds     2005-04-16  504  }
^1da177e4c3f41 Linus Torvalds     2005-04-16  505  

:::::: The code at line 378 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103280658.kByZmw5Q-lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
eu7/Aa1PWk3rJAIA

--vkogqOf2sHV7VnPd--
