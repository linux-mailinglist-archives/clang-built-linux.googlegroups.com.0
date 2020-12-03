Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUPKUL7AKGQEI3QPOEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A1E2CD2EE
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 10:52:18 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id c1sf1066176pjo.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 01:52:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606989137; cv=pass;
        d=google.com; s=arc-20160816;
        b=uNKAcWNEiYXxRSqAwQaHYvB/9hJ28GdkWgMrXrBgzDmJeJ6dtsmgHGOUNIH4suhm3c
         vtg1YfXrARwg+pE1dI1fu8/D0dKmujt9EKQTKM1wZbNSnTRtvUOOjeJrv8g9/LB7C7Z+
         VGq2vXfJJrX8hErZEr2NWkrVclI9tGbLXIhS962ak05Aw8jzNGaLPk0Yma8jOLsVWZWD
         BBAkm0mZo5WyY8uLz37Or7YuXr9CAOtNFTL3dKsPnmAFg/JYFLC9LYiuy0iXBY44nKyc
         lLeIXX9w3DTjOy9gJuxWegiY0ZQ1+jAJ+TIvxvFsxHp9l7OCPJ1n/1vN3CjmJ5PQShtE
         YksQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Zq7uqg7dzmWU+IkrF3zwbRekiQAG1UJsLqVW6gq3lho=;
        b=z/shG69LMwdukUlVJN/0QAT67pYXDMPgwRK2iZBhxe0rwx6nkPlqTIJ3x0a4iZnv6M
         zJwzFCGfeI/oiPdzvSNL1JK1Pv0nuhx2eov0HWPs9q8o0Sc37zupN6D0FjldzXcACyVN
         VrJa222Ftu0sABQGWpi0yQjrl66JY1mWHnCIM+EbRYUR2wTY81fukbE3LyBJqFlm8T5/
         AH9ccDnFB5tCQOP1vcQd66nA38afYemA1OnLbAOt9ZzKoTeQWZS2A9L/1JIaeOn65e1c
         Ys1hbU7/neymkLqKrmP3PmtpLcDizLVz2Gvl/YxN0yP76ACQC/Lp247/wXzcNIxXtT5t
         f+Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zq7uqg7dzmWU+IkrF3zwbRekiQAG1UJsLqVW6gq3lho=;
        b=if0TbBM2e+fLk895cBN8qL9j6dg7j4WesxK8osjU1sBhKK/cOQWxy7TRcXSUWsW+YE
         4qMpTEkO2DZon1Ji85LSLckxgklnCsiB7lkm7JjqL1je0CeouOrMvAqEPY9IypjhOAsh
         LOUFlBTS6MSQq15V8NwUPnoWi0JtQk8nHY+RqROQrZu7mCp9z0GzIgEhHKeVppBKyerR
         aiBswy8/p/ABIe0avKvl8Yij5ZRbCgl7yyUzFkhYpL11nc824Jq50vfcG60PCXrcjPOH
         gvDuaqrjiMqGPilMw0Df3c7AQ29YEo+YnA8cZE+h78j6jxaZS2dyw9kDMIlmySoKxBKu
         oPCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zq7uqg7dzmWU+IkrF3zwbRekiQAG1UJsLqVW6gq3lho=;
        b=gSuIgDrYdSuOd+Ci99kTtpaA29/S2qUiPed4ePZh/ly2/QGJQaOWntVLsbBw7uVZBc
         vUfiR0KJgL8qo9gij7DpM6gBRZsi95kdQcdFZxTOxyO9VEh9ejBqlm/Qp+rYOl111uE4
         65NjXdb6usMxUMQmDBhu6JkA72j07fMxH40yoXZTwaJceUupZJx4vnHipfDaXW35mzKL
         Ntag9vxE8eQ2ojXypqnTiVpqA9xSMaDcDyh6EdFDmeH2zZDB/sI3gey4HEYQsWxcpszJ
         ISmyxebGw6xkD8moEixvosyWn+06zgyTl4Spg0Z5+ADmlu8WnGCkUCUdLCyc3bIvcxt7
         v5mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gX70iYuDFQQjtfYdiorTMsZ97HlhWjbNLsdoeeIfI3C634YdF
	QXehAktKov8ua4t2q6LTimA=
X-Google-Smtp-Source: ABdhPJwRO2/pwMIi56xWDC2B9XaO5ZNA+mNaNFTjK5aFMmN/bTavpZLZFZ/eYLn+GlxPjQNlYO1CWg==
X-Received: by 2002:a17:902:7e85:b029:da:726a:3a4f with SMTP id z5-20020a1709027e85b02900da726a3a4fmr2343511pla.65.1606989137171;
        Thu, 03 Dec 2020 01:52:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b782:: with SMTP id e2ls2403163pls.10.gmail; Thu, 03
 Dec 2020 01:52:16 -0800 (PST)
X-Received: by 2002:a17:90a:940c:: with SMTP id r12mr2323475pjo.107.1606989136468;
        Thu, 03 Dec 2020 01:52:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606989136; cv=none;
        d=google.com; s=arc-20160816;
        b=qSjyUDwRekK1BQpV2CzkCV4YAlKmZsJCZtj/UqPOvt168y/jWEs7oPLeySk1/3rhRh
         kozWoIz9SKmdVANHptCrDU6eK0bnze/CfGYuelHGfeT6udUk/KQteVSSgBUh4gsSO5Jf
         jv+2aL5KQskiTYnwefGLJVAa0ucHX0pj5hFejWd38UKc95FB5lRFB/bXobTGleZMDK8L
         thGOY3YklpwqG5ULGNEDkvWpjt2LdjSCgkEpJDH5tFUG5zZZw9W0GrJGVwJX8EtaNcHL
         WlQyTanOLuyrja/hElZ26KNHxnCVDYRVt+BtR810HhkqH1uSrEBOef0xGEGlRHC0LUJJ
         +z7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Y4X7UI3vh1VshsD/6CWX6GGefSuWxcVddluYEz/0cXk=;
        b=O1rFb5xl5Fla98P2rim3uZ20/9as2aLONEqhED8HcO6X0xw26y6qlyu5AthsJEfXis
         xiZ6P8Jb3dG6QuoG12d6wpkSHQf4AD/piG4R+4Hh6al9qiwJiN1Hk4CUmFii/A9l/d6t
         6MsUlgWGatQPZwlRGQV/OyTDr1VXQ8FNwj0Kzs8PYWhTRVjeFFIyIJPeSDSvqZuN+2tS
         0evRJ+czvOV4hT7XJuZKDP2Qk+qIJyMZhtkRxn+ak9mJUvLmqLUgC0mb/Ve53+7/CzxR
         QW1wOEEyVc8Fd6kmzq/TA/XGnZYHEo6bWuJtLfoy0NuwoPGJ0JkCgAnd2+lFXsSUXmK4
         KUxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id mt17si100948pjb.0.2020.12.03.01.52.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 01:52:16 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: oBADwRcUHGZihgFVN1GwJsCctXqS+TucxOsP3OYCmouHyaQS5chZK1B2ScFf+cKhvJBsAshEHF
 pUhYAmvLfhog==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="152418008"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; 
   d="gz'50?scan'50,208,50";a="152418008"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Dec 2020 01:52:13 -0800
IronPort-SDR: G6tuSmZEYQ3/temGdDhljbDFG1Pg2RQKREBYjRiWGtPczzqOVONGZZGltv7H2YTRbeiCMGZeYX
 9DMjQh2TgoxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; 
   d="gz'50?scan'50,208,50";a="368340302"
Received: from lkp-server01.sh.intel.com (HELO c4fb854e61c6) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 03 Dec 2020 01:52:09 -0800
Received: from kbuild by c4fb854e61c6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kklHU-0000Ar-L0; Thu, 03 Dec 2020 09:52:08 +0000
Date: Thu, 3 Dec 2020 17:51:16 +0800
From: kernel test robot <lkp@intel.com>
To: Daeho Jeong <daeho43@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3] f2fs: add F2FS_IOC_DECOMPRESS_FILE and
 F2FS_IOC_COMPRESS_FILE
Message-ID: <202012031726.8lPlQwh2-lkp@intel.com>
References: <20201203065615.402494-1-daeho43@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
In-Reply-To: <20201203065615.402494-1-daeho43@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daeho,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on next-20201201]
[cannot apply to f2fs/dev-test linux/master linus/master v5.10-rc6 v5.10-rc5 v5.10-rc4 v5.10-rc6]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Daeho-Jeong/f2fs-add-F2FS_IOC_DECOMPRESS_FILE-and-F2FS_IOC_COMPRESS_FILE/20201203-150246
base:    0eedceafd3a63fd082743c914853ef4b9247dbe6
config: arm64-randconfig-r034-20201203 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c501dd88b62787d3a5ffda7aabcf4650dbe3cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/c7c9bfc69997b71d1291e32cacf78248e16938a3
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Daeho-Jeong/f2fs-add-F2FS_IOC_DECOMPRESS_FILE-and-F2FS_IOC_COMPRESS_FILE/20201203-150246
        git checkout c7c9bfc69997b71d1291e32cacf78248e16938a3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> fs/f2fs/file.c:4071:21: error: no member named 'compress_mode' in 'struct f2fs_mount_info'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                           ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> fs/f2fs/file.c:4071:38: error: use of undeclared identifier 'COMPR_MODE_USER'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                                                             ^
>> fs/f2fs/file.c:4071:21: error: no member named 'compress_mode' in 'struct f2fs_mount_info'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                           ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> fs/f2fs/file.c:4071:38: error: use of undeclared identifier 'COMPR_MODE_USER'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                                                             ^
>> fs/f2fs/file.c:4071:21: error: no member named 'compress_mode' in 'struct f2fs_mount_info'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                           ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
>> fs/f2fs/file.c:4071:38: error: use of undeclared identifier 'COMPR_MODE_USER'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                                                             ^
   fs/f2fs/file.c:4144:21: error: no member named 'compress_mode' in 'struct f2fs_mount_info'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                           ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
   fs/f2fs/file.c:4144:38: error: use of undeclared identifier 'COMPR_MODE_USER'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                                                             ^
   fs/f2fs/file.c:4144:21: error: no member named 'compress_mode' in 'struct f2fs_mount_info'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                           ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
   fs/f2fs/file.c:4144:38: error: use of undeclared identifier 'COMPR_MODE_USER'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                                                             ^
   fs/f2fs/file.c:4144:21: error: no member named 'compress_mode' in 'struct f2fs_mount_info'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                           ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
   fs/f2fs/file.c:4144:38: error: use of undeclared identifier 'COMPR_MODE_USER'
                           F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
                                                             ^
>> fs/f2fs/file.c:4172:24: error: use of undeclared identifier 'FI_ENABLE_COMPRESS'
           set_inode_flag(inode, FI_ENABLE_COMPRESS);
                                 ^
   fs/f2fs/file.c:4195:26: error: use of undeclared identifier 'FI_ENABLE_COMPRESS'
           clear_inode_flag(inode, FI_ENABLE_COMPRESS);
                                   ^
   14 errors generated.

vim +4071 fs/f2fs/file.c

  4059	
  4060	static int f2fs_ioc_decompress_file(struct file *filp, unsigned long arg)
  4061	{
  4062		struct inode *inode = file_inode(filp);
  4063		struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
  4064		struct f2fs_inode_info *fi = F2FS_I(inode);
  4065		pgoff_t page_idx = 0, last_idx;
  4066		unsigned int blk_per_seg = sbi->blocks_per_seg;
  4067		int cluster_size = F2FS_I(inode)->i_cluster_size;
  4068		int count, ret;
  4069	
  4070		if (!f2fs_sb_has_compression(sbi) ||
> 4071				F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
  4072			return -EOPNOTSUPP;
  4073	
  4074		if (!(filp->f_mode & FMODE_WRITE))
  4075			return -EBADF;
  4076	
  4077		if (!f2fs_compressed_file(inode))
  4078			return -EINVAL;
  4079	
  4080		f2fs_balance_fs(F2FS_I_SB(inode), true);
  4081	
  4082		file_start_write(filp);
  4083		inode_lock(inode);
  4084	
  4085		if (!f2fs_is_compress_backend_ready(inode)) {
  4086			ret = -EOPNOTSUPP;
  4087			goto out;
  4088		}
  4089	
  4090		if (f2fs_is_mmap_file(inode)) {
  4091			ret = -EBUSY;
  4092			goto out;
  4093		}
  4094	
  4095		ret = filemap_write_and_wait_range(inode->i_mapping, 0, LLONG_MAX);
  4096		if (ret)
  4097			goto out;
  4098	
  4099		if (!atomic_read(&fi->i_compr_blocks))
  4100			goto out;
  4101	
  4102		last_idx = DIV_ROUND_UP(i_size_read(inode), PAGE_SIZE);
  4103	
  4104		count = last_idx - page_idx;
  4105		while (count) {
  4106			int len = min(cluster_size, count);
  4107	
  4108			ret = redirty_blocks(inode, page_idx, len);
  4109			if (ret < 0)
  4110				break;
  4111	
  4112			if (get_dirty_pages(inode) >= blk_per_seg)
  4113				filemap_fdatawrite(inode->i_mapping);
  4114	
  4115			count -= len;
  4116			page_idx += len;
  4117		}
  4118	
  4119		if (!ret)
  4120			ret = filemap_write_and_wait_range(inode->i_mapping, 0,
  4121								LLONG_MAX);
  4122	
  4123		if (ret)
  4124			f2fs_warn(sbi, "%s: The file might be partially decompressed "
  4125					"(errno=%d). Please delete the file.\n",
  4126					__func__, ret);
  4127	out:
  4128		inode_unlock(inode);
  4129		file_end_write(filp);
  4130	
  4131		return ret;
  4132	}
  4133	
  4134	static int f2fs_ioc_compress_file(struct file *filp, unsigned long arg)
  4135	{
  4136		struct inode *inode = file_inode(filp);
  4137		struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
  4138		pgoff_t page_idx = 0, last_idx;
  4139		unsigned int blk_per_seg = sbi->blocks_per_seg;
  4140		int cluster_size = F2FS_I(inode)->i_cluster_size;
  4141		int count, ret;
  4142	
  4143		if (!f2fs_sb_has_compression(sbi) ||
  4144				F2FS_OPTION(sbi).compress_mode != COMPR_MODE_USER)
  4145			return -EOPNOTSUPP;
  4146	
  4147		if (!(filp->f_mode & FMODE_WRITE))
  4148			return -EBADF;
  4149	
  4150		if (!f2fs_compressed_file(inode))
  4151			return -EINVAL;
  4152	
  4153		f2fs_balance_fs(F2FS_I_SB(inode), true);
  4154	
  4155		file_start_write(filp);
  4156		inode_lock(inode);
  4157	
  4158		if (!f2fs_is_compress_backend_ready(inode)) {
  4159			ret = -EOPNOTSUPP;
  4160			goto out;
  4161		}
  4162	
  4163		if (f2fs_is_mmap_file(inode)) {
  4164			ret = -EBUSY;
  4165			goto out;
  4166		}
  4167	
  4168		ret = filemap_write_and_wait_range(inode->i_mapping, 0, LLONG_MAX);
  4169		if (ret)
  4170			goto out;
  4171	
> 4172		set_inode_flag(inode, FI_ENABLE_COMPRESS);
  4173	
  4174		last_idx = DIV_ROUND_UP(i_size_read(inode), PAGE_SIZE);
  4175	
  4176		count = last_idx - page_idx;
  4177		while (count) {
  4178			int len = min(cluster_size, count);
  4179	
  4180			ret = redirty_blocks(inode, page_idx, len);
  4181			if (ret < 0)
  4182				break;
  4183	
  4184			if (get_dirty_pages(inode) >= blk_per_seg)
  4185				filemap_fdatawrite(inode->i_mapping);
  4186	
  4187			count -= len;
  4188			page_idx += len;
  4189		}
  4190	
  4191		if (!ret)
  4192			ret = filemap_write_and_wait_range(inode->i_mapping, 0,
  4193								LLONG_MAX);
  4194	
  4195		clear_inode_flag(inode, FI_ENABLE_COMPRESS);
  4196	
  4197		if (ret)
  4198			f2fs_warn(sbi, "%s: The file might be partially compressed "
  4199					"(errno=%d). Please delete the file.\n",
  4200					__func__, ret);
  4201	out:
  4202		inode_unlock(inode);
  4203		file_end_write(filp);
  4204	
  4205		return ret;
  4206	}
  4207	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012031726.8lPlQwh2-lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICJatyF8AAy5jb25maWcAnDzbcty2ku/5iqnk5exDkrlL3i09gCQ4gwxJ0AA4GumFNZHG
jvbo4jOSnfjvtxvgBSBByrWuVOxBNxpAA+g7+MtPv0zI17eXp+Pbw93x8fH75PPp+XQ+vp3u
J58eHk//M4n4JONqQiOmfgPk5OH56z+/H89P6+Vk9dts+tv01/PderI7nZ9Pj5Pw5fnTw+ev
0P/h5fmnX34KeRazTRmG5Z4KyXhWKnpQVz/fPR6fP0++nc6vgDeZzX8DOpN/fX54++/ff4f/
Pz2czy/n3x8fvz2VX84v/3u6e5ss5ner6ez+/vLyz/X84vLifnFcffp0f7w4Hv+8+7Rcr6b3
f54Wd/f/9XM96qYd9mpaNyZRvw3wmCzDhGSbq+8WIjQmSdQ2aYym+2w+hT8NukXYhQD1LZEl
kWm54Ypb5FxAyQuVF8oLZ1nCMtqCmPhYXnOxa1uCgiWRYiktFQkSWkouLFJqKyiBBWUxh/8B
isSusEG/TDZ6vx8nr6e3r1/aLWMZUyXN9iURsDiWMnW1mDcz42nOYBBFpTVIwkOS1Dz4+Wdn
ZqUkibIaIxqTIlF6GE/zlkuVkZRe/fyv55fnU7un8prk7YjyRu5ZHvYa8O9QJW17ziU7lOnH
ghbU39p2+WVSga+JCrelhk4eXifPL2/IpBYeCi5lmdKUi5uSKEXCrY1XYRWSJiyw6ZIC7pIH
c0v2FNgNY2oMnBBJknqfYMsnr1//fP3++nZ6avdpQzMqWKhPRC54YC3PBsktvx6GlAnd08QP
p3FMQ8VwanFcpubkePBY9gfiwdZ/bxckIgBJ2LVSUEmzyN813LLcPdsRTwnL3DbJUh9SuWVU
INduXGhMpKKctWCYThYlcDwH5p+zPiCVDIGDAO9ENYynaWFzAoeuZ+xQ1HPlIqRRdUuZLYVk
ToSk/jno8WlQbGKpj9fp+X7y8qlzUHydUrhirGZHn66WIvv2+HXAIdzzHZyXTFmc1McWpZVi
4a4MBCdRSGzh4OntoOkzrh6eQCX4jvn2tsyhP49YaF+ljCOEwTq8N9SA4yJJPNdNA21iW7bZ
4jnVDBDSpVgxtzfDRpYIStNcAVUtpxuidfueJ0WmiLjxTrTCsmGaIWFe/K6Or/+evMG4kyPM
4fXt+PY6Od7dvXx9fnt4/tyySHMeOpQkDDmMZc5RM8SeCdUB46Z4GINHRJ8Bh5AtpGS4heNK
9pvqYDaDBDJCKRRSEIzQ2yflUPdIRezDg01wkhNyozvZBDXoMEAql9aVhR+N+oiYRCUY2dfi
B1jZqDfgEpM8IZU401shwmIi+wdTwc6VALMnDT9LeoDz6pu0NMh2904TMkjTqO6MB9RrKiLq
a1eChB0AEgb+Jwlq8dQW1wjJKGyspJswSJhUNv/c9TdnZWf+YS+/btMnwXe+dlsQc44gTjja
CTEoIxarq9mF3Y67kZKDDZ+3t45lagfGRUy7NBZdyWMOrZY/9Z7Ku79O918fT+fJp9Px7ev5
9KqbqxV7oI64k0Weg5Uly6xISRkQsA5D565UBhxMcTa/7MjKpnMDbaWWQ87DwHAjeJFb7MvJ
hpb6rmp53lAC2yTceAVOkOwqMoP0DcNscjFhorRgnq4gYwY6V0RzFsnhIUWUEot/pjGGO3Jr
K6qqfVtsqEoc0wrOiqRqZICI7llIe6SgXyV5OrOlIvYsQmtdv8YBoxV0NghAv8m4peEu57Dn
qGgUF369VcnXQvGhLQLtHEuYByiOkChqGVZdSLmfW1cchazlNCQod/faChcWDf2bpEBH8gJM
E7TQW+kWlZtblnsnDrAAYHPfyYjK5NbeXWg43Do/k1ve+b10xGpU3krlO3UB56DbakHU3j6e
gx5jtxQNLL2XXKRwqxwF3UWT8A/PEODCcJGDzQRugcgcdjuehtaPBYtm6y4OqISQ5ko7wSiW
rW3I4/aHURzt7w4tbbvBIXfuuYSLgJZ5WRltgwemNeraS23sQJ961e6RMYYsWaNFbvd3maWW
Lobb4VgFBEzYrhXWTqBQ9OAZnubcNj8l22Qkia1TqmdmN2izMnakjtyCDPQOSxj36SZeFsIR
4iTaM0lrzlmMAMIBEYLZkmmHKDep7LeUji3dtGrW4K1ED8vhWR6P7KZWIdcExEht8iD+H8w+
N3BGUg5mQSSAtHABuo/NusZ+b1cFw2dgr4OMsi6lpJYjosVgpw260yiyBZK+EXj5ysZpaO3e
cDZd9qzeKpiUn86fXs5Px+e704R+Oz2DsUZAM4doroER3tpgA8TN9DQQ1lzuU+Cla5A0qv4H
R7Ss6dQMWGtdn8qRSRGYSTjyhqc5gf0SO7/oT0gwQMs51wkPBvvDJgowCKqjMYyGihXNvFKA
COCpd1gbDf15MKY6F6yIY3BttQmiGUxArQ1xA2058GgVI44MAkMxZonf2NGyUqtMx8t1w1bt
MU7Xy/borZeBfSUcl1yjmmlXFuPaBcEPVeaqBq980DTqQ+EipSkBWyYDZcjAwktZdjVbjiGQ
wyBCfVxqQhc/gIbkmsWAm8s4mprQbofOFAl3xj2oTFFL/ScJ3ZCk1FwHQbAnSUGvpv/cn473
U+tPa6WHOzA4+oQMffAR44RsZB9em+bmivQbG8lYT8UTu9leU/DbfZEGWaSeVpKwQIBhZBxO
+xTeguteggHqvTA1cOGzbfRe0EwHXqt44JarPLGX5ccR8K+9JWBlau3RjoqMJqWW4hm1XbUY
FDMlIrmB30jNUscbE//VET15tXCGb5yOQocKu/Eb9NfKHUp8E6avvKT88fiGYhFW/Hi6cyP7
Jlyp436O7DXtG5Z4VXs1mezA+n2SnGV+q1jDgzCdXy5WQ0QBXDJcR49wQAVImBHCTGFwbpCw
CFOpgu5+Hm4y3mUjxuwOq94EdovhweEkwuEOST6y8mQz86sMo7uZZMPQHUW17o89GUFCIwaX
YmQA8Gv4CPvSPSi6Iealh7DDo48gsHocEpQko3MQcIkl8elaAwY5VMWS3X5y+NZKSpRKaHcL
QXIpdphNu+032UfwFG1zSrcruhGkP2wufN6K6bEtssi14u32+TATiozlGNQeorwHDwKcy/51
BDsWtRYb6nhAGdnrdTt4gW+BGWluK2WPpLANurgNsuhm0KST0/l8fDtO/n45//t4Bjvr/nXy
7eE4efvrNDk+gtH1fHx7+HZ6nXw6H59OiGXLHlTEmAYj4CWjEkwo+GchAe/ZXQbiUQFbWqTl
5Xy9mH3wrslFuwC0rrnQQpfT9YeRQWYflhdDe+ggLubTi9UPIS7n8+n7016uLkamvVwsZyPT
nk3ny4vZ5Q9MZ7acXU6Xw/OxdkXmNCwqNU7U0NRms/VqNZ8PgmEzFuuLkamvFtMP88WPTEjQ
HC59qZKADQ43v1xfTseGW64X8/mPbNxstZwv3QM3iDm9XM58kiokewYINeJ8vrhYWYGODnQx
Wy7HoKsR6MVytR6ELqazWX9cdZi3/d3TFRfgksqiAU9nYDXOfKlP0F4JQ2OmYcZ6tp5OL6dz
mx5qjTImyY4L68xOfbs+gPqhR+5jFMNlnrZznK591oWPHgXndeY4QzwEQwhMp1ZRYGqHKX8y
6f8n/7rHZ7nTXow/4GhQZmsPjoOxrqn0j/yeGLdiOSbPGqTLwSFqlNW8P4ZOgAIk8CbGnf5X
q3m3d/7+4Lk9uA/ikEU3NYC/aQZWkc8kRISEoeFQ4TinQEdvU1/qw4BkaonBTOio9dV8tbZS
kcZ7QIgvc1nYcdQM3ANZuaGNE4kBj5wKnKdOJyBSybpRGUmVCXKbxCDYXxZZzATVIB3VAa9D
SFWGYKFY8b8tTyhmMbSHZLNhe4sXzntmADRfDYIWU59eMeQsg2x7ezWznNDG9JYUHKLK0/JY
5gZcxUa6cJrQUNXuGfpddgDyRrYOVJV7iH0pcG2AlFiwo4PJfhdQ5nB+dAAhV1VKqj5bYbU5
WxLxa3RYE+OtW04eEQTzuf2W4cTtjh5oCFuYOJtkWiXzppkEkdsyKlLHoD54c8bmAmOaDo8B
F2jazmZtryLDSEXl0ILypYlvjwWPiCI6VNwENg2/ou61ldelUoGYwsqzLkyRzQbzJ1EkSmIr
eRMlcdaP0dByS5PcH8MDgvtLN8/S3vPrHC5GYdLEXiExW5V1MLVBdChQBeLDT6S2kL9d/jab
HM93fz28gUn9FWNeTrLSWfn2uiRxFPhCebW0s7kl9XlNIpILj9zf0iGtNTYna97zH553QfiI
cskHY/gaDMcUHHHld911rC5zvJR3JmctYPHDC8iVwHydrwCsygIHgmQmxgLXnoRghfZL/TDH
gYBCZPr0Gi/O3S3o22sLYwbyeoNRLUFQWCjaX/DgYqwFL4cX7CyXpIVmeW8m5r4sezcyCTDI
vPFMa3BIa1qr96dlD7/qH+bA6/YObw128Fj/0zwaOIgYfhiKolc8M1NMlcc5hcaRuza4/M7d
lrSIuJuJM5AqEyIYF0zd6CI+RzcIquP2rsY0y8G0KCapfO2gIIsE01cbTGqi1La3t+v06/0M
XmCJL18wNGDtXphGur7VTjPTmHlZ4lCwdLOu+2wEvEfjosrW4f6UbYRT2pO//H06T56Oz8fP
p6fTsz3BVlQX4Mdm/t3fsgAU25AayO3obNokhNoWEu0xKR15QGGyc37XUWxTSGgJh+uPZc6v
Uc/EMQsZbTODY/1LbiWedW4m7fDOWhrmgyXzGFWGMza4DQgNcbaubqsw0gajjg0hjN0/nqxD
glVZkT183WKS4nlS5zqlB2XD92UCMtWpI7GBKc2KAZCiVl1CpAxAS1lZHyF05eopT6Lzwzcn
QQlQpFjN3r77cGlDVsP8ogMOQS4vZrODQ8JyIfvjWjVvhokNS+Pz6T9fT8933yevd8dHUz/o
uD2xoB+9926gtw3u7aUmHj+cn/4+nm22OByQYcq07OUh91cItFj6iJvDO4KZ++n1cCxq3W2R
6C5hxikGJ95n7zKRXoPDhL6Cyau15W/QLWkjyGDkCaw5GoopwMJ6MQlog3ldZwknkUn/eHK5
VQcwFgQDtcIPpbhWDq0gTJcXh0OZ7QXxG1CKgnTPDqqMrz2kN5xv4KTXa7VJVyDMFeniG607
vEOw9FBG0l8uhDAZ+tMG1dWIrbL1qkAe+JOGYTjUjtWfIQcxcNPbVA2WPIQb3DO11enz+Tj5
VB/We31YrTpPjPCXbG9XY+qmIHdj4H46eojb78//maS5fAl9l6KiaqLqXqZ3QL4ytGoSoyPV
SD1IPQUsAA5ucoKvG0gGKtOSmehkFiRht8St9d/t086GQAtScov7bUjcDUdU7eAGFp6i411d
c2H3w8Y0ZdyDm9rVwU0ryjjMKh/M9caKLJfaPvZSM8kZMGPjpJDbTjXP3tKswJ8bLEXVD25Q
DFG7rtBZp+GxB7jXsywyrJYsw21lOLs+jbjJncdE+jcGDeardbcOogWuZvMG2Mr9BjyrqQ+9
eGkG8SIOD1d2iu4ajIWBj1BJFzaJLnA5DNxsMX4xCA5FqGbTiMXDKITKAVY2EP/CbDB4GT6n
wIcZ2OZeDwFLACqU7nhwRuC/+VTjDA+W8+RmtpiuOtUEFTTbjsPbmQSN3VOX4VgOyunX+9MX
EDGuIe3ElNyiMhODctskuGB2cI2bEiGK3o0p/LO58EcBYjEhAfXpe32rWrO4yEB6bTKMD4Uh
7V+/bmWEaQWX0AuIi0wXP2BOgAv/I6g9dX2y9p2Xro/Zcr7rAKOU6AIjtil44al5kbBcbYSa
F0N9BA3E+kkT4vUEKWMuFItv6gLfPsKO0rxbF9wAcXtMlHQACGJQR1JJV/ZXSW4tHcFGKgDp
essUrZ4bOKgyReOnelHY5Tx4nXAcMb+IsdFqM0uSdxntlie6m4ZvGwc7bq/LAKZpyrU7MKvi
0LO3WCeHMV1dKY7yv6o+9hHBZfjadVzSLK2KwPa42J76cahdX1qhpWlRbojawhimXAhr/Lxg
fBTiQ6l225xt8wAjTPNDuO2q7fq2VZuNHngHo+pn3o8OwCJe9D1PXQBbVb6h92/eytUvUD08
kTRE9BEQBsg7jygqyJBkqepFYKMSOCwd0rq9MgK4S9WBDNdIVfmGkWTACMiwEAQJpiRR2Oz6
ZtXAu7AO1vtvwrCOrcyLrk1nmtNucy3+MkzJoFiuozM+PIRh+a61cSb0JHWeiyaxPuIeUaRB
dbzKR9opxOwQcGFtgaant1V+OUTERrnoH+M63aF4jp6f6ZeQG+68CE+wCjGAfQT7P7LVI76w
ZpsqFLOwephRKzgJuxmICr7AzKve4NFjjnvQnDGrFrpuHTrGWisoUEyqTgGJ64N1godB3e51
yNHGaedXvUsX5dYHzeGQLOZ1sNNVKSiu7YpuX14POnbrvvTWDT0NsUaOMyyiZV1V2lzvKkAL
51+XUDfWFfixv/55fD3dT/5toqlfzi+fHrpxG0SruDe2AxqttqOIG6wdG8lZD35UAVPTLPOW
Y79jB9aksBoZn33Y9pR+CiGxSP/KShxWF92zrloE6CeUCRhRtp0TuDlVfOgkQ8lgDz8WVDop
wPoRVCCHn8pV8IT5avPbV1QYEWDqxkcd06Lep0v4EM+Ev43+Et3e14Ev7GPo4qmxzWS9TlC2
PLc1KbaaL0iUNNPGvKMfvWCsdUkC0r6VzI/ntwfcxYn6/sVOveh6fmNOVYFs65SDVZ+1GE5A
xgWVYYGxBt/57SBSKvlhjBILvZncDhaJYjlGRUcHQTv744wdZMFkyA5+VHZoEb0YXMZ+jJpC
CpLbYWINUEQwP3dTEo7STGXEpb8rvuGOmNwN+VMpeAUHEF2Btzc+m8Z45OFy/c6yCyBjwli+
wRq0JEpHVyI3AywAbSre5b0ssncwduDyktEZ0Jj5dgdzUutL/9ysG+8bus6edK6cI9x6uS68
xulHbc/ZEayq2X1Zi40612M+LcLbt87WxYZejJuKpQjcNfcLNBZwdxO4UqsGBLE/leCO18iR
5gsK4JgyJ4tDZDbrqM5KYMkcP2cjblxxP4RRBtsRpHdo/BgB91MdgyiS7LvejI1WZO9MxiCM
T6fCGZ9Qi1Q9SPbjan99eE4NeHBGLcbgfByUYQZptDEGWQjj03mPQR2kUQZdg+KnIxxq4YNz
slAGp+TiDDPJ4I1xycZ4Z0rv8amL1WMUiPr3DndjChMFzlpYitRK/Ghb0XQGZQvukZ2RENeS
pkNAPaUBmHlNAUan/sRTpNEQ3xI8w5BuZ3Ht79prb8zxDGe0pyIheY5Od1XwU+rPB/g8IPMa
GLgNHex1tN9H0NKc/nO6+/p2/PPxpL/gNtEvWt8suR6wLE6xBM9O/tfeaR9UvY6qAU15kTu/
vfHDMaLhYdImKxCEL9utiCF0cKO+1SgyFMxOy1TNKRhZru8qKMbGvDpmiAuaRenp6eX83cpU
9wPV46WgTR0p2KwF8UHaJl1I21Qo6GpdHyV6wMeA1AfamyRzr6a1h9HxPfETWOWmF/7FyK5+
5+1eQ10nXMPwS3HW/TNcsL+J40J6rx3d9mqmg+A6+ME7n7kbeSdpymeVsYSwfnrZ6RSgJ+0J
doRDZTpYGiQoCiEnuGVXCzV0MDRf1q56TWB7I03NqfI8PG7MGntCO+nLDNXc0HsOO6GJXi2n
H9bONjYSs1pwTFhSuAljF+KvAPDE4HwJJHxaVb+sauQO8MH9IF/ofL4FzlOnpKlpsp1WbMTa
c3k1+1C33VZ029w3NugdRCHJRfutJxrDofQv7v8o+5LmuJEk3fv7FbQ+jHUfajoBJJDIeVYH
JJZMFLERgcwEdYGxJJaKVpQoE6mZ7vfrn3sEllg8QI1ZV4vpnyP2xSPCF+tHxQfK+YOVPdy6
P1WW4sP2f1uO7Yk+YVo/sbhAsfH/+jco/N/0dD80db2oWH84nGnFNpLZy+rCXgKNmZXaLCG4
fv3b/3v98vD8/PLxbyrXsixI3+OXSmdohZ/IvJhyvnNJpOoJGt/SKP2X8TWNW1rDqQYWIXVQ
QgHTtlUfN7jzHCIx8SSHDOZF/LzHN9wuXb3qFpbnmt8ivFLCxHCJqBvN7QWyorbnxTYvRssQ
7oaNZIBNgzv3XLtO5K4RmjSefDmMG699b102RGlpZLcH3PrSanrj4xt09fiGtk5PXz+bOzMs
4bepcoMnKEOSR5QZA94zKKJoP+pcyRT8diF1hdKi8HNsVUr/CsCulrqmz9pS/QU7xbHWSLoL
H04kNc5UFnY+4MNuHtPG3JxHbFlriUDH56yjL8pEiU9aeVPWaJS8Ud/SoFtBfFAuP0cSVaCp
+0tlRsJPWzfmldrpeSOEKvQfSSuXNYtmLWoUqRbTMltTUa97WPi8ybUa5s2Ra16V514Hhu5c
VbKYOPMrVbyvYJmub3OLxZ746ELqqyN2TuiMsvqsNz2QlmLRuWGrQmdb2nvsdZUbaEOdZaib
aE8yxSNTF1PtmosaqoOHE/mw0uvGEZKozlnBFzcUGdtsJKvFbKPr2njjGHQ2LO+1MrAxH/jz
OI8wamGYeOLzQXbiOL/0jfivf/v44/enj39TUy8Tn7bKgrEhWejir3F04wVaps6QCeOOny1p
jd7PcDUYkihRWy4QC4HSaAF2rrXng7FrbbmVeaMXP5efbkUaRn8j36XLNQqTheyJMgSKKzuk
VqgSyo9e3X2TaiCZ17HV2cT8Uqoynem4fgTTS3I+4MsUM3qk5F1iWYvww/QYDMVVFMvWjJzp
VEax2eFNsfZ12cDo0qYHp2nzRtDGwSavKmhIjzoRZdRS772YXtM16CudsTy7VxYp/i2ck/hL
M2xCZaOIQcBhql/MRHKuiWfQl++PKDLAQf/t8bvhhJ5ICrJFMZku/8gDf8Fp9JYoHhyoyhwk
wqhtKHT8EB2SSnCGk73isp9C5S5OJ0+sS1EFAEmB4EHvE1KC3HNPRlZH5uKPLEzLZoGzjtwG
ZZa8jekqUS6fFRxqcshrNsiP7goDU/22INZNTUkXq4rUzCpUA9IKiDSm7OGCBkI711AzgDJi
d+e0jZJUgfQpPpMmucSgi65Tq9ThJYvmdFmBSTfHHJidu0pEMcCUBLinfksaWDU1Ad4KKqlS
7WORZF1LEKwPv4ltR6Ldnesu0lNpU1SNtFZPfctCGmrvqpRRslaSZehO3JYs6mz290rvJHCy
mbtGYrXRs2ti0uep3s/jgq8zPb9wfL35+PLl96evj59uvrzgI9crvQj12CXqIqqk8vbw/fOj
fHGrfNpF7THttEVGZlCnB/FphU5D1UlHcYGkR8khFC8xqwgucooRfLABlcxo2y8Pbx//fLS1
SsljNuCFmbrTE0zUcmxyibOWtZEEE78Sp62m1ramZUdHnVlZfhAKtlGveoUY6dxTGe7NpHCg
spSytbAKjq749NS50vxa2iMDDl0j6RHT3AkamBLuwUAroi3mTM3qcMiQhBYIkhtTfadO1nwB
WMPWGhLg3GJCNrJxz5p691+Y9tMQ+5GmXa4KIqxIo8KiO77uNxd28/b94evrt5fvb6jX9fby
8eX55vnl4dPN7w/PD18/4j3L649viEsRYHhy3JBuUGVGCYCTFQ1EJ/XKQMb0U6Xyme2QPrOw
WJVTlkq+TkoFeiXa1szv2lJatwIrYr3g10IfXxfUobemUF8yk784FKQ//BlsjR4+6RRmUEqT
J010UnU3raO8pdjJ3lgwaucxFErflCvflOKbvErSXh14D9++PT995OvdzZ+Pz9/4t1q7VBkp
GIydno4C3Jjmf61I+tI2n2ZtxE9Eku0O0IW4YNKFpEDQRyFPowt5YaQq8kiWHzidFlnH5NSD
QyYnpsr/OiPSzFxH2crIV25m4MobkT2tk7PSsGPL/3fwc22/tHFgaePA0saB3ppjwwRWgXls
7oBu7ulza3PZEp4amsbzJviJ9lxrLnKkqq0iH63yRFaMPzTzKXnp3yQ2jvVImk71vAuRcBPH
efJq670xoQGZXNN3tQx7ZLWtWSwFGP1CnB4+/qXEr5kSX3KV09S+kjdR2A+WmuOvITkc8WAS
V8q+LKDx9k1cwfIrFLxro5UDbR+gpSR1mW3j14MCccafLsFP5Mz7W2Sv3OIoRgLwY9zI5/SR
ZA9mAXKaRf21o83JC5e8QmByBx3Fmraom/LRTXx1KaJqCDeuIx1aF9pwvKjpSFAJEFm+JI1p
MbBQt3f4STqM7SLZQBPf4KKmKVKVnDeJKhTBT1Sslt/0elfyo1hEjeLbvTnVdCmDor42qq+5
kTQ9qts/GqqTJNRIRH69TSO4MJWpOolk/FTTzSzzWBdRmamsD3mRd/STlsw4Woa/ywdi6UpT
HIEDLaJOSYt1MCt/FEnQQB6XylpNpUq3qcyBbUu1q8xjXBRPQypNUxzpviIHLNShKsY/eDCR
HPsworWrpY+sNykSDzECYVUSoPU1y4gVtMzHmA5ikFRobcNqjCZJ22TAChRxgwOivHWTVhd2
zeFkLhdUIuP1PpnuRTSC9WWO3+taHozKRo4OIu7VCzYcmaxIhZTFvcHSiEgHecJ604YXMbLo
f2L6JfkgqqZdF0t44eHNC95bKJdZd23Xqr8GVip+7jgNikaky6HylOtlqWJGvV+2ctCqNuMx
4uSnl17VZBijLfEnhTanPcRJPOLJgXqK4099GEGM3Q9qVJnDnf6MWmA4TB7vVNVFuHl7fFUD
7vFy3XaKsSSXu9q6gSWtyieTz1GOMRLSAFnbYe7nqGyjhOvzj1Y4H/96fLtpHz49vcxHednT
kNhZlp0afg9JVEYYyuNCLSZQ4raWFBbamivqCa9G/X+6/s3XsdyfHv/76ePk0UTWJ23uUrQV
Vnb16J47ssHHkoQ2jJFYTgnlZHxkaCIl5Xvdlc3kCWmtrNJ4iejbd9LIKoKzQt82ajCBkWY7
diw49wUAJwnFid+Eanc3bX8bJVo2t6TfCNa1aVQutmIjGQ9C7blQ3xuveZsW9DtXm93m8kQQ
v4ciTZQURnJeNWday2JkODZkOCWcDntNg2LfLDYqyqKxJwKrzb2Wy8rK8MvQLESaflHPiWcm
RW2I0+Y0iHi8GgWfz7vu3ozXM+Gox2zbmOZjm/L6hLosx7yT9YORWMW5QUAVc5V4itVVNUPh
P1EvkMb16eH7Tfb0+IyBir58+fF1um75O3zzj3EmyPflkFLXZrv9bhOpWSoRdpGAN5uO7HMX
iVnSGIQhd7WaN5XveXoFOBE7hG67ERdpKR+W7aVY+Y51ZqMKmlmwkW60d9U3RM8IIpGKl13b
yieJVJ57/5Spe8FPddqUSMMiEBFSfcbkGRmq7qqrNEwUNdJcgs6cVZVe2ExhwBe6IINS0VAy
abqhSnF9Udd82AQ6VOu0P9oKM4ElVJm4FBBLNek0LyoP0hgVDreikzR7hcMMdarATyLvJo4j
WTGkics4j/TfA3e5Fufzs1MT//Lx4funm9+/P336vISu4PbOTx/HUt/UpsPIs7AmF66FifLA
QtWVTaarbnIaSA/nyhK4q4uqJEI/ALRmZyuynX2E8ejrxpoxu/7CRwD5Oje78hZQdpaJxBVO
E4yxuoBotRAtzsqWSO7LV5KHZbmuJMNsdUxWbvlk0nMmJQG9clORRj8Ll9lwRNlvCxT8ZJTs
MzS41gPqjdT00qZabyId1WjHTwZhxbCiacz9cJy72hLJHeHLuYAfET8w54opSY0xs2QBOz0q
isTit7o6jTRlNRxpV8cgqZ7WpvRks7AlvSG6lNJ2gi6N2ClqxQDKlPYDKEurONXjYk7VFs5C
apDc6+O9vIpaZqHwNPvj1dz7uDvNWPWPiwQMAGEq4USjSi4qr9btUNCXXmNkqOGYswN8Qp9o
D50zRA3pPQCRXipSWfed/By4xMYoVEkUvSde05wuFfcjmR5yOmgD7PSouNaUOGJojnPlbzCi
tquzLAx9PrRMuboSK/SxpENRTZGJxlCt9BxnxVDGljzhpDkO8eXkLEgrvhDlgSCJdTVsiBbX
O8dKFtnLLvnV8IHw7eH7q+bLFPig+3fcppssPOCHuAy8Xhilq9UAUDYKtyVQZ/O3ElUcBmBA
wALdKVp8WKaM0fmNX3UtfT5DFpyxDfTIWpFgSnMXoES5JkhohXCrLG5z9otjTYD7Z+MOWlRn
+yYjWufWVXFPdrrZU7yrzq/ooFYo5fDQnh2+iz8L0at4+Ldq/44dVtzCwm40Ha+GrY+5TVor
LZRZp1isVPDboj9rQ9osGTRsmoYsS6T1nJVjbvKYqRutX3TjqnE0CFcEaK3I74kMqaGNyn+2
dfnP7Pnh9c+bj38+fTMvA/hAznI1v9/SJI21PQ3psMAPBBnd2UfJhWsma3EFJ7iqsQ6WHkCG
A4g+92ihQlQV8ULCV5I5pnWZdqorWcRwkztE1S0csZPuNFBvMgSbq9ZTQ7fvZELH5aJKQ9+4
E5wevT1Mtc9t9eKga/ZaviVooV6vmnwlmvnRf7IIP6mPiRKOLMaqgAhIxZTrmAk+d7k2J2Ao
G6tLTe+kfA09sFQXyMeVZmVSCFvjh2/f8GZvJKIhsuB6+Ag7kj5zatyXe+wmVI02l+zTPSut
A5bFvruJ5eM5UuE4xgE9rY75Phlph2eknY4W2hBVdXVfKn4pOVpE3dSqkynYO1Xn7cMen//4
5ePL17cHrjEJSVkvGjEbDBCTFUI1VKnODIzuCEDezrN7S/UW5rrTmquMT43r3bp+oOfAmjTC
y3HqdMlx1rm+Ns5YQYy05qT545az7xLxxUKD3yD9dlEhwgnJhsAjCucBNgYbctzQ2IxcSYRJ
nl7/+qX++kuM/WA7evMmquOj5EjuIDQm4SxTSq7wFirGnpo7/v0+FTdXcJRVM0WK5gmWLxhV
ioixjgjy2NWi321y08g6HinI5AcWlSDVHm3Z2JeticPtcTs76h3IzYzGCoiN9OF//glyycPz
8+Mzb4WbP8TqAU32/eX5mZAsefpJis5rh4S+GpjZoBoY3bizLYmiNrCOuHpVZwR7du3rLqqO
Nfn1KDK+U8KupK1TJoYyai9poU0mkX4R40HIc/ueQMtVFI9qYz8Yle6riBF0PI/kWUxW9ZIF
zgYv+FZr0sdULU5DVsSqXLh0c3TJq5g+Qy090Pf7KsnIMHMz028ftrtwQ+QPm0taoWlzTJUO
P9tuRtDMGmHXP+hjhGYMN++NpUwzAl0aCY+Ya1/i0djfbIkajPGFjc7obilqr68IooX1oL5L
wbrScwdoe7v4JBLWYybrDPhsQuSMe2lWt1QN4ijBqxICiWATiOaYNuXT60dibcX/U675l0GX
s9u60sMnE7CQ2NcsH9c+EkGtNmush0PHl3Jz/805r3EugXEKO89n2GtMLeY5A3qkpxgQ4orP
rKXq9YNmGO2VLUyHUeFgckFDFGu+/8etjxe+aKBNbv5D/OvegJB180WY0JPyD2dTi3CH1p3z
OWrO4v2E/4/euKqLYonMH7+23O4PjvHkdRDe+IGExMNbqjbdgOBEHRi5UPIcen5lmOV69ueD
bf6f7pu01e6CTocyhs0v8Cnt27aJ80z+bKQnndSjtaK1XWfoHKDTHSHIODpkSroD1SKAomeS
TnGbDUThTYKEbuvDbwrBCAIHNOW+tUZtVowwg6f2tNRKL9xLUUIwgGoUUTj+q1YbI2GI+jDc
7RVheIJA1qRaeoIrvKqRGnd0hWoQoCTQikrsAx0ZhE6l7F5/Ls0HWpiekihqWcNLpnLfOtyw
7tdQx0XIA/rbpD1IEgT+IoqnV0T+ZCIqcqJEHAvlBBS2nAGWu8ykRT2J2y5OLmTA+S7iQwFf
6JYMxSM83e6ihkJIv5TpDZuX1eUWC+hDRuuHckxYcZFnZiXNebsyr+vh0M1guUEbGa+4bFxV
QyLxXb8fkqamVDeSc1nej3NluWCL2d5z2VaNQS2rtWLkJkZXCrbdombnNp0iOlGTnl+7xzWI
b4r0GjUJ24cbN5JfVnNWuPvNxtMpriSwTS3QAQLHdWVdHaHDydnt6GC6EwvPfr+hlGxOZRx4
clTkhDlBKP3GdQr9yaRx440X90op6NnX50Ve9QNLslTeMNEMv+2YJJs3lyaqZPGLbxWnHN2G
qJob7rg+iS0/bfC+xtjuBR160pWkwoXoG8QiPUaqfd8IlFEfhDsqFPjIsPfiPjDS23t9vzXJ
edIN4f7UpHLdRyxNnc1mq0gOau3G+FT/eni9yb++vn3/gW51Xm9e/3z4DqfrxbTrGUWNTzCT
nr7hn/yzOSrV//prahKqD4UKojwrRmifwCORNtIsSONTTQyGsZ+Xl3PUCiTXDWWVELdHqGg4
3i0Yg4F7/C5rZdVooxyPn11refbSFBeXKw0io3nIciUEXGUlwV1aVchzOLEfyLQy4Q/BIn6I
IhYlPLR0RD1clQmv30ZJBimOSTGZttqV1+S1MOosx7xx3yMv2eCkUpyZYqVymJRNlldRESrb
pvU1wuOya9g7jnDE7quYByEVMfeo7TcpuSJEl5OYtPgZ8Tn5l5mqrDZxjU89Y4w07mtUU06X
EslRRM+ZXDr0bI3BSqCZUDMh6iIFO1cY9KBR38GAzmUTOhdWRQ071Z32RXfK+UPLJUcvW9Yy
Gv0z0UCkv6M/4Qc1TYkowYdnpv5WD9KYrlWFJUEHVhhNic4RR6qW1oe0pZQPMaFpACulmanD
XaEltUCk8zOF48T0dl6wvKYmPR84IJDrg+lsywx9yaljgqv3aN/DWQK2S1tj4u2oxbQCRwzX
GqdzRyM43sFqZ8pxDkbqaLE/3twu6gAxcBtvpQqMwShI1VEEUTNIEkVyvqCLvKRd6NAsNGGq
mKbpjePttzd/z56+P17hv3+Yu0OWtykqyC4pTZRhcjU22fKtpSdJvVz7VBcMZaHYuLnIv377
8Wbdv7jWrVR9/Dlp6Cq0LMPDXyFOitJzMmKo704bBQhcuGa9VTSFBFJG6EB/RObn8+cHaJSn
r2+P3/94UIT18aMaOk1zfKIiqMx4pkRRjY3FcDyuhv5XZ+Nu13nuf90FocryW31PliK92Bzq
TLi2F0n9ZHsuEV/CFDzUiorhRIGjSuP7YWhF9hTS3R6UhW5G7jpn49MCv8Kzox73JA7XCTZk
BlPA4bXPk9EUpg1Cnyh9cWsrfdqgiLyWtHopqpD5aE6pJu7iKNg6AY2EW4dqfDHAqdKXoed6
ZPER8ry14sPBYef5e/LrMqbXhoWhaR2XPp3OPKxCs/hrq635Olte9mQZqvTa2WJdzG2GV99r
iaMxFa72jGi9pszjsO+phl1e2IzerYsky9lpjKpHlpx19TW6kvdZEg/+zWLVSG2BzxUMzHfa
9ySSWM3mXG3zoWgjWflmafo7FrhU/fFpbUuN0dIduvocnzQHmjND32nFNuZs1MCMpfI8yM5O
pfVTkfWRAAszZfUqMNiJJ0evCl0YwGLR6TMCZ4Ii+PsddVco8Pg+amRlg1qEdYsq9VSp0lcx
Vup6ghy/MBiXtKoIx7X3GFHzexCq0VcqleECKpcV8x6EbhWVYGkTbYBDA+1YaeHwpIVuoSY5
mV5cH8gpOzMcM/eWSA8kucZCHkoSgYNUkZayn/8Z4w5so5iCWJ6AcFUpquUz2JVJTNYqh9M0
6T1n5rhGbZurDxczhvqQRRFRT3BLuTDcQt0eyAQ4iJ7kV1NAa86ULkF3zRP4sfb5h1Nanc4R
0SrJYU+1f1SmsXyMXDI7twfUPsh6esQxf+NQGl0zBwpNZ7LT+0Y1T1MAkD/XUuUsumHZjDaM
46yhXnoWrr6lB0jG8iigda7FJOQ+OiweggUDLl5CkLQLpSL0hEILw6YMg00/1JVYtRU0SnbO
tqep6kKiIMr92ojwW2lY33lBdfRQRo6/0amp12+Gw7nr5HEyngdK3JuHS37gWu3EgWHcvgkR
Q5foQdLZBXtvOPE10N56UR/uXZ9uKA7ud2MaxLEhdrxd6GFpRIXs2ZQg6JltweXGQ5pq9icS
mMB8SkgjHYmJN5jZNzk36uhS10wbhYgG9iPBYE39tu9+2xu9hNHnSiXQigDu02j0SqrlFpfO
Zr/SWW16PBfcjuGd3uoaFviuEy4tbmYW9Y0LI79JKSVowXKeTq/68IqKMmI/0Z1NnIX+bmu0
zLVcetNApl6iurmtu6i9x3ec1d5Oov3Gd+fBqqXE0XEoryYRePR4b2LzpB0lfeFRqwUn08uF
gIj1Ii+hdeOzQb5jbrA3RnBcRt5mY0yakUxlnbQXF5c9MYyIGwfOEPgTg72VON9OSkiB+UMQ
nwdEK7LY3U2rmIF1uIQ5evO3Zb7VdAs5SbWHQopo1OXJgNNKyniHQ5n8hDdRuMBca3Q3Gd9M
dH7HMSiuTvE2BmVrUCKj4JmvvGHx64zTw/dP3EIu/2d9g3dOypurUm7+E5/0b+UXbEFF68zb
MtfJRX6Ak4RcEEFvo6vllZInJp6MtDOIxgQo3rFSaiQikTYeyLyj5kCfbgRcF00MPKpfQgGJ
k97ax+JigkkddtYaEUU2VbtiogwV8/2QoBfKgyDVYfPtJHWHKF7q/3z4/vARvY8tL+vL5avl
Tlgc9ETEW9IIq2nzSvPRXXBP9qwuqF2uaRSljxwmJ0z5KilUD2ZAxdez6RlkWVM4EnFlxYum
hC+zjGFP5hAaWtos1wlMdinASVd05prUR71YuAbVmc59C4e+g6wONqo/IZ0zKGDVxCWuWDQ6
fnroCAwoh5Xana5jhHO50WYi97QOY7FMqVf6he0QbT2HSBRyb+t4aKujK28SC66HG5W+LHv8
LqbL1aMmNjkAFx6uZvkOj03FUuKQdT4XctrfVzWjC4edtZominZdXVHdMMRx16pK5FKt8+aU
qsf00cocTStuPq5NWDRfR6dH2w1ptbHAW1l/JG7dbS8vJdaspk8w/pAcv47HyNBMnkFoF3S0
jUMfxdOiEsN/jW0oNlSj8k9ypu3MI9Ug6HuzRB7i1nIrPjPdV3dnmDyU7Dfx4OURP3GZWfM7
J6BUqSoSy3h1vtS0UItcF2iCQfNJPheu87wPjay2oiOqpGKgiijY50Vxr+g5TpRJx3FyUG2O
A0lXQvRbe2Zw0KzrTljfm68jbkw8XimSIzQNv41U4woieXb9vqz4SD0Bs+2hBvDyTButIja6
EkD1CWqzkG4H59JHz59fvj+9/fnlVakAD9wkIvkpOSAZjifWEgg8UvFpu1azm4swb/For/xq
6tvxmuW9f0pcugP+/fr2+OXmd7R2Hu2t/v7l5fXt+d83j19+f/z06fHTzT9Hrl9evv6Chlj/
0DMQQpi9XnybssPdnnROiVDfy+ZkfDzEpRt6vkEUW45Jvq2rSO+I0fbekumiK6+OLZwFusMi
hYMwwJDRlOXHinvX0B+8Ndjmc0tjM9X9OUN+zOO60K5oAEgzbVuUsTK9uMYHfKujPYwivtoW
p/x4KqLKcmLGJbE8qgUXD08qAUREY0HI68brNdbZYEUpw21aNmTMQQRBdJcvtvnqUPSHTE/E
kBRUtAv83r6mlN0ucG2Du7wEW/HepX7TW2Ju4T5Rl1GSk7cniAphUU+w5i9u1jRrzTJUBa8W
m3PAYKmax6ClRE0JE61RW7mptM5remOCAml1Fgh9WdkjB6eeGz2hNs9ptVwO3nr2rmNe7G4d
WjLg+En4H7UVkeVll8Z6eVjeUpfeHGqUAFRI6fTfMIOzLUXcGRl1Z2+zUvpzFcARxb3S5mKc
ZUXsQXyyc9JJw6EptS4/VyDAakFsZfpgaxOQHlnU5XL0YiRfS61lhN6wRiuM/Pqi2ZNKBHw0
xJEUDBtEm68Pz7hF/hO2fdgdHz49fOPyjqHGwRfdGp8Qz67R4UlR0WcRPsyFyYOtQPWh7rLz
hw9DLQ6dyrddXt3rvs0UhkuONisoPRkbf/32J9RkqZu0++tbO6yJsX0R5ccxmKl52bSagJax
XBYYrbKKMpYLJTL9TBpVnikErWzOirqb2CVRz1I9Gyx0Na7mQp/efqUim+pauWcxR1LugJrc
qp6KmPCUIZ23kMZPT0I9uclvyofX0QH8aNtrKhBx4ykueqkpRe1euRbmtO602+tssJlEg7eT
j+iCt1TDludcRoPRFsmXUTMrLLxRoqp4I9Rzd3lDWh1zzY85UEcxztI+IxqdtVqMjnBI4nBi
RhlQALwzqXl3iNSzNiefO7wm0V3DSByjZPgePrWHpXKTnpRaqEWwMwbSFX1dWRIDUHWvNRIP
nUPRUPVK0dnjEKxReqZWfSsEM6a1KJo7Q630hkYyOTYmw77hYvQmGvVlRdob34xKFkopQYiE
fzN6ExMMtjr8pq4OSCrK3WYoCq11iiYMt87QdoZ5IlbP3s2ImjXn4iT+JduVKkBm5GMKmQqI
IqaWVnc7WmXKDdtwvdkzQW2I5Qv2sy6/s5o1IUstdiE7jr4CttaSdzkxN7kXAWezudXIraKg
jyRoQs8lSAO7MyrTFBuXvIlHrI9cVWhGKpwlb9Gs2PIRNwtVM2+JRuRy6p19jAiJVSKA1ImH
Ao0YO2HOgo0xSVEGZXlNSU8C1tJB5XO9wUG0yC/GmiM217LD5zJb6oq8OlFGRSOZigIqQSI6
H0NasXhrFAbfUmylQEFWS2USXI151FsOA3w0ouzqOJS22Qy7G1i0ikhv1xnTn9g52Pf0+zqC
kwBsybRH54JqXrqky2lFo+fKQ6NH8E/WHG1bxwdop6kTlI8RKJvhuDJwo3K29OTCyo/nt6dv
z4//AjHFtKfCpuc7+czfTNHEhJSjyTTwn/L2w5uxSAO31wQVTV5cBi4+X1B0dg9yF1paVl1b
ayJOcl9FZa4tvqTXnpO8/cEP5Y5SvJSyXPPKspCfn9CQbqkxJoD3lkuSjex4DX7oxkVV14w8
4hWgYVOqZuPj53GRo6XQLX/UUVMeIdOMe8HGfXfO6jN6z3x4e/ku5ybQroGCvHz8iygGFNnx
wxANeOTQiSp9SGTNFQ27gz1gDkeWfsWwjjfN6b7IDzdoW2CLE3zz9gJ993gDRx44w33i3v3g
YMfL+fqfthIOjawzpWF50oVuo/qpNlli2uG82UhzLnkVd600KidHpiMw8JgF8tDIKyWevMQP
9CE7V/HkCU/KAv6isxDAXCNxJhrzph5ox1JxpR5Fb31G4NAAg4c09p9Y1JgRE/lQOmFIPVdN
DEkU+puhOTfk51yRhtrvJ4aigS1V3mYnoIwb12ObUH2HMFBl59JRE5mECRNhMEJVB90z0jv+
hr6emlm6MqN257lAXNFOtgufEKFNRWU7evhZSbWO00I1FZzzy2OoKfpiYRbH/nMa14KsM+1Z
boaVk+pM3VNU8eZgow/HrR3yybE8grSPxHnc4rnVIUUmhcUj8xCP5u80XXx/rM5sUCb+hOlT
XdAa4+i0YK7+JEZ8TWZ1SNtCNotd2snbbcgpzT8YDsctGbVxboOSyAyIoSwIKfSKbEpE6Gtt
heVulWW8UF8prri7Nomu31PFQmS3OmUZUc2ouQs3ATViEQi39Fi6224cWvKUeDDd93lIGwyJ
I9g4xKoHdQldNyBXCoCCgL6elnn2wdp6UCblPnB8Oud+R7YLT9Xi6VTh8SlrLYVjF9A57/f2
nPdU7BeVg2jJu5htN0T/8+MlY4eca1+TK2q8c8L1dgYWd3WvZUkZBNTCm5ThllzIWNL71NXe
jJehon0u0V1OF+4OQdB8fXi9+fb09ePb92fz5n3eXkGIYRGx9sGBt8mIfVzQNbMdCUTJyYLi
d9NrKQG1YbTb7fdkqyz42nSSUiHX0Rnf7X8qFWr3n0GqEyTUWS8A7VnYTGdtJi1czlpRAmKW
S+h6S8Ei8VMlWO3TcLWp6D1vxrfrU3Di86K1kdF+iMgOATr9xGQWw+Lwx2Rcm70Ll7teae8n
M/up6bCN1zpgm64Nn220ih4ItP1QWUc/O+3czXuDGpkCciOY0fcmMDDtXOvA4uj7HY9s3voe
P7H5u59iC98bHJyJ2BxHzIvW6/T+sOFs740adurFCX3yuG3ZToz1Xzc2noBZ9ZOk43PaGkaP
Ba5lYFEgkXgC+hZ95lCuYmUq7O77kNy8x1tZ6lCJSgbu2uAceQLy1D8qJGzXZayRa3UOcJ4T
rCPWbMrGUQetzoSuYInKc+X8yKHa5Vz59BcBfOERK8UMDS0JhgC6dBUESPoF0HhCjzxxL+hA
3SEbpRhaeyqn94tx8ux1vHjkfQKAeyzhqoA58ViLhzFlomBtxi9MliJyVESls+YA8EBHjtU4
T7RWnM71zhSYuFb7TlOzUciOSxwKBLK3IUOvmJzPWD7k9eRlSMMo9R0dG4pkfZOZGZt29UZw
5mNFQhyF5GRIKXth6EnjG6LgAdEeEuwQk16C6R1aLoYysYTfysdPTw/d41/2s02aV51qgzCf
Ei3EgTqTIL2slZduGWqiNid2NHz32xC15m/N5FLGkbW1vOxCh771QsRdW8SxNA65V5VdsAvW
pBFk2JG7FCL79VyhRpZcQydYF5WQZbd6gQAMoUe1cOhQ5xCg+w59ldIF3l4rzeT30DbK9NQv
OQNKR+x7Xdlcdjt61UzvznmRH9r8TKl/4vFZiZg6EoYsYh13dibCJfuOO3HUmXbonj7J2zvd
w7h4nbCqIHPjOnbPyNj2HIyVJ8aZNFwcjWrEfuBU7q5nMz9qlsJF9peHb98eP93wYhlTmn+3
A0lu0thRS7uiRC9wuxa9hFuv3gWPqgUm7Jvhw0Patveo9dM3RrkmJXp7zsjRH5m4v15hs2rd
i9Y31e4F3e5WSpjhX6NGG2aweur6tIJcaoSsw382siAo9zmhYi/gVr9R5+RTcV3pn7ymlEk4
VNTHPL7oQ8x4pJqonqavIgbkIQwYebcs4EZzriSomvKQIPbGYO+ZkV9TbMhrFQGWaHe5dIL2
aU+pJIjBGMsP4YKURBoFTmiRn7iwENWHs45N6iwqsTYbjFX4xt2mdEBBwdK0Kx0Ky9jQ036l
puUnlpWWOFET5xaaI5+YBZltQ3Xl5eQVnRGOc51c46tRU5dWFxYcXLPEmmphrgyoJ2Lj/2A2
eISeX3WHT/NWZV0/Z1MlTn3817eHr580RWWRvPCWZ136ksqswfE60MrN0hpv9gCnu/ShXQzw
ONr7nrUtObzT1xzhuMJstq7JYzd0qAPUNEz2YyElxWWtscQmlSVmIypt1OYfhLmUsm4nu43v
hibVCd3QKO4hgbo55ZVyHSnWa+4oQ0tN+MfQiUIvVSYJkx5jSfT26iXBSA539k5A1A98snPx
0Xyld/njuX0F8zs/NEvDCjfUNen1jmaBv7eYnMgc1LFG4Hdlbywj1+VFapps5jiYNbPemWQg
vjjkOXxqO8/ZO8TmxGeSdbsoY88LQ2NC5KxmrbmSwVq5Ja9fRVpTHNzFB7dZLeGWFFbD1emw
WFDIyRGfqZPoeIRNZXSSpJYsvpX1PXmkZF4S55f/eRrNIgyFuKszWgsMCXO38nOOisjO9xdE
2cvlD5yrYm69QBbxcWFgR8Wwgyi7XCf2/PDfj2p1RhW9UyrLVTOdafFIZgAruaHvXVQe+llK
4XGo4aOmEhBlQ8D1aCDc+JYvvI21Ph41JVQOS3YAgPAS21OmNkKZw9/0dMqaIaUK0T5GlXZI
N/RFkMrk0EdWddTMp1F0pcEj1sgqiguRHy1ulZ1LR+HgoZxhJfiYlnm1+OugTu0yt/osrCH4
Z6dYycgcqnaHBAidqrmGZDGLLnb3vuXBR+IbS/Aun92Vhsw1uax4p1VmWZdMRKA/28KtsKuk
W+qDNGrblMd1LutE1V8XuUnoe4XnXqGWdDHOTKmlrnzGzk1T3Ju1FXQqqDjFdrqWFsviJokE
K1HwySsex5eCoR2cTjtEaNB0P7sclAuMGscYfQClZvogN30dxV243/qRmW58dTey+s1Ex5VC
fnOS6erioiBrheAMrplkrQW3n+jsQBs8T9VmZOyt6evDHQ6I3sxuBEbtUCPXCT4ltF6Zzpd0
wxn6GvpOd/NuthAIyB51BpAZfKKFYLw4O+HcxUh0xCh5UmFxZWO1qQmlUaUhOWswWRPgY1d2
ezYBKIy7O2p8WsSRJUUeRINIsfMC3yGL4Gz93c5ERMyUemQJ/ID8mHuutNRsT9ZAKGmVB+ri
a+KBAbF1fHKCcmhPuu6ROFyfqBECO9lVhgT4IjsCCGUZUwYUFZh5IpUHb0vWmx9WNqslH31G
7qixeYzOx1Rsetu1lWHyAG4Wre1g2SJqj8u9RwyNc8yczcYlKq8fgBdgv9/7sju9yu8C9IGp
LsR8pdd+wulCuRkTxNFwWTM8ExHVHt6e/psIbz1H60qgVlJZJPrWSg8peulsXEX5RYVIo12F
I7CluremSkrCMoez21k+3rtbapAtHN2ul294ZcCzAVs7YGkagEibA4VjZ0t155Opojb1Wpos
1qw/J6DPhyyqCEun+ctRP97Ms+sbWsyfQ8d1ztBcaHeKgiOG/4vydoiFWwAjhQlv2HkllYQF
VFA7DDVH1Xn0wBqpPsEVlD4+TiwY06RfG90ZKtP6mZk1AqGbHamMs53v7Xwy+OnIcZS9RE/E
yYGxEipg/qLwnVA+TEiAu2ElVY4jyGSkKeCCu0SC/JkkqkzklJ8CRz3bTlB+KCPSc6DE0KS9
mWbehTuT+lusahpOdFhlW8d11yYIj3l2TM00xcbi2wByrRkhlP7Wshy5GBnzDsE9MagBAAmA
GNUIuA5d0K3rkg3Doe36YOc8pHq9ykEUCQUkh14GESIf82WGYBMQ9eGIs7cAAbFTIbAnxgu/
htzRTSMwj75klZgC2m+TwuGR2xmHSJla4aCjcnKI1EtQK0ANoTJuPMvGXRZ9mx5xHq+k3MWB
vyW/TqvMdTBKsv3IOvO2O59Wjl22u7gnpn5RBh5FpXZMoNK81DQpd8QQAWpIzpyS1FSTYDLj
kMyYWsuKkpz95Z6eyOWe1oaVGHzXI43WZY4tOSoEtL5MNHG481aXCeTYuuSCWXWxuOfNWUcG
5psZ4w5mONG0COxo2QigXbhZm2eLPzQdYJFHSRZ1HA+NZvupYPuBHYjNpI6JD/h7nmLVoAeX
mTlLzWUyKSK7AWU7pHBQ4/+Qojo0UWjYg4c4y2SD4hmqWHOGc3zDSLT1fJcSwAAY7dRMiaBt
mL8lX4BmFlYEIcg81Oxw/U0QkEMY99MdddctcXghtX+OOxFxMhIbzobe+dzNzqMWX45QG7hY
sKkVApHtdmvbCMKAfM2eORqoOZFq06ewj1LBoBu0InMJIQ8Q3wt2xN57jpO94udfBlwK6JMm
dahMPhSBQ32A8RcyNe7WBMmqSe9vPWzthXVmOnXOmogPOL2FAuD9a/3DmDqUlCmIG8SgTkHA
326IJQ8A19l4VBkACvDOda0YJYu3u5Kuwojt1xZNwXTwKMGKdR0jxzgryyCgT7BJ7LhhEjpr
QzlK2E7TJVCg3erlADRKSPdZXkXuhtJKlRk03z8L4rmrImAX74i1ozuVMS3adWXjrG5XnIHs
d47Qz5oSy/ryigzUog103yGG4aVzXIfgv4bebucdaSB0EhrYO+RdA4dcSgFH4SAbhSNrUxkY
Clh3O2ILE1BQ0dUI3N2JOOQLJKUgdLBfDKWzGWYpeWHiElBUGASM/Kp7DJog1kVdzixxUCam
tEzbY1rF9/PLmogTPJTs143OPBXKyKqmHVJPMEbyxVhYAwaVpqWUiTVJeWDv4VhfoAJpM1xz
Rr8wUl9keCHETlFLPddRH2C4DBFqzWxaNUEan4tIw+gicBj9BBKwkrtRsbTEqEk57dJ95FH9
9nGXeMZQQR/IFDEsS4k+Z3/rTVSy2SfdplUm1qRRS3FMODf3MQo1+TghkHhJT6PC6PVM6DZv
b691nVA1TOpJd4Qs3OjT0khSeIShEkQzCCK9MX7v2+Mzeg76/uVBttHgYBQ3+Q1MfG+76Qme
WaVhnW8Jx0JlxdM5fH95+PTx5QuRyViHUcGBqh7qZldspcWQgbXKp2ORrPnyUnWP/3p4hWK/
vn3/8YX7nrIWr8sHVsfEOphTJUYPgOvDmIdDfZfDX+VI2mjnuzTLWP/3ayi05h6+vP74+nlt
CNhY5oaAVaaW2kK891zyJI+gFJ+/P5CJTx9zqy5oYP49td7MXpmpXl7Nhudz9+PhGYbByvjj
T5wdboZyytbvps8+9O4+2FFjgJuurnXf7QmmOV55nfkzxxrrFJ6HWsrYAbZOxvKD6oOJMeqx
FmZKRLIjYKwd3CXeHz++fkSHY1OcJaPlyizR3BQjZQxqxe5ZeWw1aNHGWJawbIosfGxA3qaX
fvyWeTuHftqZYJtBOerzcwVr8radfx11brjbULWRfQerOXLvwejtFQaQLV3Ocypi+R1kAVgZ
66nysMEb0mCaw5OCst6wyumUk3i4QoqmxfRd6C076MUpMfgJGTuYt3key2Zg2M5c1aMniL6r
pz0+edF+GiUGo7i6vvVEC8gsAvoScoQd3zYmVAVupKARwi0cLj2tqUc7+aKJGFORY9Sl6NhP
eybjLRs7nqKmIxF1j9wyRL/fcI7GDdy9lmDP5ojdanK9C3sM02acxHDKAzhyTb55VMD3e8Np
z6lDl/A4IogEEYSCK9rvmJYeNBxps5a8Ul6usEM6WFtQbUiYOj5iROs6NCN18janjX+kW8eI
gGWt9YUqa9rM1HBrUsP9xiwNqskRRFVLZyFTFxQc7QIvMGtlmF3K4PRgsmSffuinGJ5KOjES
Lclo+ucS0qbd2TolmzjzYcpSg4jDZWhMGr6Bt2oELp5P52+sCRGWDpx8G25sbTnqx6iZszQ2
IuJwer7dBT2HLMmxHMZ5KqaBvsJNt4EatfTle92ZZLjI48jtfQgDnd4SOYMIJ4rzmDqLHHp/
o2+I0cFzbMS6M4YH68rGWnsRwwNkf61Chi4uUjt02ut5sOx0LLavWaYtjaCGO/Iyeky5KM9q
GWYHk5MM2rDA2agabkJBzGLvIsAdbWTFc+UMIfUmssB7bZuRFM60CnBbIZKsGQlJydA3cjND
GNhEkMnShyjc3nFpqjnCZ0TRNBgRWOg95U60uxbbjbcxppPMEGy2JoOU7rVw3J1HiHhF6fme
MWq62PPD/UoXcnMlK1zU8amKjhGpBY2yk26tJhEJAW0ECLkgZttd4dJWC7zapU/f3E6g3pPc
5GpH0EKDtt0YWwtQPceQUigWTe4zWPzNiqwz24Upy811GzraPGjrUynM/fRtY0JU7Uj1Gx0R
vt+LRnNGvUAcYDrCYzMb7FlvNF6cYPATS52XY6MmRMn3t/IZdvUUN19lTTHS5cIsgdNtgWAW
jizvU9ju66JTdJUWBgyXeo4KHi73rLTbwoMXkvw+cpULJLojLEwWCIW9HYXhsTNUF0IVxDMp
ORYltsT3SClLYqngn4YsgDhekhDfPS1F48ey1TyX8Ut8Pw7hd2o2To53ueyWsdJoMQ56Gkbr
a6hMAS2zKEwO+bqlsLgO2eAccegiZlHlez7p/VNjUgw+F0wXxBZEHKdWExYsF98jkxbHLgrJ
WQFHUsvwRsUEd+dQR/iFCXbAwOvpBFCm2tH3LhoTtcnILOHOJcuviy8qIh/0NcQ2pQuxd68X
B3gC2QnuApknRBXzQ9tnmsNyHfMt85yrS2zXy8t5Alvi6hFSg1yyBTkk29xo0N6WoHbg1TH5
2Kth4caWHWAuneZ466FKbSq+U49xKhju31tNyrhxoGveZWv8rcX1sswUhv47HQksgWWulc3d
bk9eUko8cHa3rV/itP/u5/TapZ96JOSQq/72JSiOYPOkT0EKF+3OXGLJwp683pFZzh9S5Z5T
wi6wItPTg0OWKiO0p6FrSZGluwYrdrKCGJKFbkcOn9lhuNi06RZeWbGoq8/xicVtmlZD1FkD
Wkkfi3uP1YZeLjqoBLptSOpqyCzlhV4HmVs20cYyehFkznrSzC/DXbCzJMBto9a/L45wHKLH
kJDgD3U9hjekcuAslzbNDmda80Dnba60T0aZjx8P3uXih5vhUpbUmUhivA+dTRCRFbwPQ3dL
7rQc2lV0rVHDzgm891bI6ZpktXjI5Hr0TBXXHi65gUxXKnaMnsccczxy4zEvVHSMbizzBsTA
bPlNNxvmAWhxU2keoNBjHQncwWiYoiXQfSdO6atdop+ltVWpiA75QfJR1poXnkAqyYvgIle9
PLQYrTSuEzjsUUVC9JLHKVNyi7ocylTWnRp2vB1S0rI/b6eY8UsqQMs1DaKRBKvplRzXOUoG
qTVGLXzdwWE1JwMM46EYDuW3SgF4jESV0qkc1flSd0Yp2zRpo45asVFDSL49w99dm0blBzlI
JlCveXWoqwSLqzfBsW6b4nxcq+fxHFXU+QGwroMP81bJrO1V1/u8ockrhHgo6ro5RLHaDMJx
npaqcBHUKzRUvpVJrRZ1utVdKCMlbXNFHWkiDV0bVazMO23xRwZbL3PVByX//lD3Q3JJlAw+
qMXuasX7QpkmeTTEacxdK9QW5xeCi+Dg7/XH7w/f/nz6SIRQE/oTJ9jTVM9GMh1Ga5teo8IS
Lb3sYYk5Xzz77Wuiqm4IDSOgiSsnVaFIInN69v3hy+PN7z/++AOjBM8fjClnhyEuk0LE4F1o
Vd3l2b1Mkv7O2xIj0Q7QYonyVQz/ZXlRtGncGUBcN/fwVWQAeRkd00ORm5+06WVo8j4tUIdy
ONx3aiHZPaOzQ4DMDgE6uwyaPj9WsOTBMKgU6FB3p4U+9wki8I8AyF4DDsimK1KCSatFLZtS
ADFJMxBA02SQlQCBXkYxuhxRmXGCF/nxpNYI+YZTWjTKfSkAGDEd6w/CLGovmoPkzykSt6GQ
Al/D+IqLWOv3JWaxXHktvK4MRS0lZPFRMpkky+zHAz0vAGouLXUvAkjdpBXOKKYlxpyEn3mt
ZUPVETpJ2Ml99SKIE9FL0NDWDbXnYhH7yJEtFPEb5ZiFhToNwrHNoOqyYH9p/mBH0hDFcVpY
Cso8NQ34PXoPAOEDlXa1maQ+fHIKi89Zr9DOSaH8RhuhY9/B8VStix6FFDvQ8MOAgzxS3gyA
Mt5kq+M4hQFR1WWqtUHZU1s2Toe2jhJ2SlVnSVgn/iBsaTAGg0K+48EBhBGKTcrYkONWQeDV
uYQf7FfP/JLhSpZTHyVMH6fLJ7Y3ApMpY3TSMK+KApZJdJbM1cdtfIn6AKZgF5hP75XilJT5
gIFpa32xFHqZE489HX/msRaEJfTLlloTtpKJYClhV8kwnCd6YgchaUNysSJNmyHK0L0dNsEw
OeLiKyfyZYeb5uHr4zMPNZp+/fjyCbdaUxlzThYXJpDRYYmKPNIthMHZZY3idMJkaBLHZcLj
kpkh/K6E/5rkstosC+PYA3YGEFqLGgSdC5ljE1VpgcNpLbeRCWPcliupgFyPnqZ6P/CjW9oT
kvZFcYTDXpE3bCgOG8+/s9w+6vmcorYZCrbxdpddct3QdwbaR10DcnOycUMQbC23DPQXW6/s
0uinvoAWH6oi3GzDU6HraI5y37vjUBJ1y2ZIctaQ6ZDiotA0f/j41/PT5z/fbv7jBjap6b3T
kIgBA4kg4ksSHjaXQYRIsc02G3frdrJ1GwdK5obeMVP3V450F8/f3FEvYwhDP+9d+eVjIipW
vEjsktrdlirtcjy6W8+Ntnquk3dvS65Rybxgnx03gVHcksFuepuRdu7IcOpDT/bIhLQaL7Nc
1Y/aKNXpjTlntnDcdolLhiRcWEwljAWDc97qt7POKfGteJFc/Xx5JCG+51cg1yKlzLwWrijB
W/0N1TocUiOsLeCkokhOMikN8X78XgMG3iai8+Eg9S4hsTSh71sacbooe6eYFndnUh4X393s
VGfcC3pIAmdDaSVKDdHGfVxVVDsXqeLo9p3VYPr+kidpTR9F9C0eNpOaXJKMw/fyDavPlTJy
RCT1PDGXpZPmUStPFn+AXZtWx+5ENj8waldYI3A+ycdfTG8JBiFsP749fnx6eObFIUwz8Ito
C5vGiUicg3F85u8PermjuD3TQ5qjjSblmih538JRpjoh4LQzHKOpcwZvwrS4lSP9ClpXN0OW
adQcTnGVQY5P+NKi03L4pRNr7hVKJ56PkUaDM3JUqA44OSu/4bFUI4Yqdjk6GD5s/O1Gy+S+
AZHPaBcYFse6ajUrRokhLZlR3bSIKp2SwhKoJ54WdOgSjn24Tam4AmIIloe81cdl1hoZHIu6
zeszdWRF+FQXyv2q+G1U55JfoiLJjcS7IPRsYwwKP41qmXqfqoRzzANfqMRrVCgqQKIM6RUk
RE1bHktx3xpWlgpDjlFF7Ghnx36LDqTVBmLdNa9Oei/fphVGc+9qjV7EujdAJKaJTqjqS63R
oHVw8aCp+KNR9oEZIV3sItqey0ORNlHiKv2M0HG/3RjEK5yxi3GIK61TRtBxJQwu28wooRtb
vSnK6D4DSUerEL+dP6qnSc6N4eRZnVGO5jheV7C2p9oiUp6LLifX1Kqjz5QCa3Pq/I1Y3arz
JEf15gpNzmCCyXEXF6Ixi5q0gtaqOp3aRcV91eslbWBxxB2XLg+IrXiDBtOBacm1OQhieuMC
q+ofmZPrOI7oa3KEYRmGOlvyXwJkqt/UlW3J4r4GdVN3DsDxiBJMRwzGHuy2qbEuQ/ZNYV3Y
2tJcrfB1P2I5raLIkyyjtvutvl9JF3YPbYLCQsVSfSZ3J1gFjMW4O7Vn1gkX+pb0zyiFDA3z
1PTObvYhbbWcr5HYUWRSnusPfEjucxh5lhwxXayw/M1EoxcR/tV9AuKJPreFK4ThdD6Q9Bhq
j+ob/JfKERWNNpDLuHHd0aXHZEJLSFpzFAdSGkRVEEN+a1QRceSBgxcpluppz6FoyAwBmEVQ
KRKLwjsBSqpSYepTnKtPCkv5ETeuJJE4X8ZJNNhg0GPDUaWeiyYfhBcq5fuq0vzaIxlOCrDJ
RGw4yY8BZ9XCkTNWFaxtcTpU6XV6fjYk9vLp9ePj8/PD18eXH6+8ZV++oVK1IjBjapOLBzxK
5Ixa/JErg6zwnpUvcHmq1Si5ryK0mizzqm41rO6OegWAhPEkk3PcFVqWBl+SM+4OI+1hJlfo
WONMGQtP7JnspXPsGMZ7hrscZgezOyM4EoCQDltGIvx5/OrKsOjqZey/vL7dxC9f376/PD8r
l5JyDwe7frMxOnLocbgJqlJRTm9iVBqoUkYGu1nYjBhpS8q5CLug08WrvZljeUkPlEPYmUEN
DzaTtaBaSE+RvgR+kBCSmC4NoVNbjAIAnTx0nV5ojncdjnsGpxza89TMmDHqiCXnbnqsU1AU
5ysLxr12kOXjaEdd0iosaKVNpD01rZkuow61MzoHyzY/LKlrPj5KK8Y1VZHLUk16sNX92XU2
p4YayuiM3gl6hCzZIocXuGb3ZzCBIV0T4I7bXMcEanIY1XonkViX2xCMEe5sjEVrwseIgLZF
SOtgOg3udOO9FJLokldxTiZiHQ21fTRM/Y0s7+UtdbySBitCx9E7V+FowygI/P1ulQmz4CE0
9HAh8zorLspv4ueH11fqrgdTAQG80uQ7Bb8mlLCLSFfOd0oVCHH/dcPr1tVwMEpvPj1+A7Hh
9ebl6w2LWX7z+4+3m0Nxi1vtwJKbLw//nnzSPDy/vtz8/njz9fHx0+On/wu5PCopnR6fv938
8fL95svL98ebp69/vExfYhXzLw+fn75+lnRO5DGfxFo0QtRbamzmgrx/k0oWZmcS15mh6PoU
ENS81BbEsjt7JoVIlZP5q6lG512etDFFFqnwRmmeH96gtb7cHJ9/PN4UD/9+/K41ipDJhIaU
0tUcQdWuwGbhOnMlzOJXa+Y4oyGxpZE5A7/4EqdUIWzxEVtG0M+fHiVvI3yQ5vVQV8W9Wvfk
Gnt6HZDGRUZL1hy3t5eQRG4YJZjzT3HRIfMUy8VarlNYIvJzriY4HB2XPu4t+Wd2hYGZSR9T
nHin3eeNAP0EyUfyKYejR0pdKE1bkBIyRyKa+8kMQNODeMKd0cyTGNvaVOvho4ixHX8vm3lV
mZz8KC1z2S38SJItTbjImpy7szZLWXphqTbxivRYd+ptGCfrNRzvY+HfXRzoS8i9FjqON0nC
L6P0Psm6JOcXstaO4Zfl+FRaRLTeP2cYyizngatF5A9LL8JxBf65HA15iQwxyheINoJz0yU/
tGq8QF6l+hq1IPFpZNyldOEIg1jx3SvL++4sm/mI4YKvO9lVpd4DX68XNP3AW62nXvv44njG
YXRwfafXBOgTg+MW/OH5G49GtsFmazRMXt0O0PKo3ZCuHLyg2WtGX4mjOC8237wS68k8vJs/
//369PHhWazc9PhuTsozwrSuTBiRYVU34uQRp7nkQ2h0rhAL7bbxmKxikB51fBaxJg/kvdMs
n2404Ry90oiyK2MDNVINMi7hxD0A3qqrp8/fPmx3u83cJtItiKUptYpEyTGlO7G7b1JKs4gL
aLCCDeyad/JNdyk7T2muLUvvYOEhiGIFl9sUFfoPRR3fkiVBVB9rYs8s43+yBP6X1+8fqjGV
SbBQko7aEv6xmOUDzhJa2EVs3Ld6pRVGatnzT/XsJJB8OOY8da9EJEQabr0wM43ketJbAFZ2
lv0loqTzp1bS5pcAMc+WBVd5NBzBjIDlG2iT3MgdaFznFgQgiwuFiYuL63iJo7NKjJJZiZJA
Qr0Y85RP+E+e6R9czgdvQ8uCPB92spf2jMUNYKaQbpRK1FiL+POdsu7w0qj6+0iK7056T57Y
nTGF4tINPcqQm48U2fCCj6irpNRZpiU6r701KfOsEXOOh/1mb08f/6LOVPNH54pFWYpqeeeS
dE7CmrYWk17Kks0UIzP7BDczl5qW2g7SK7/TW/LlN3xco4eiDdML2PJst2D88SquCzJYAuc7
tLiZVygcna64L1ZH/gDBS446NkQz8g8pPRkZj6LOcWUDMEGtvI3r7yOjvFGbkyrUAmReoESM
FFR0Xe5pRBhlgad6X1joPu14QTRYu9k4W8ehYl9whrRwMBLJRj20cohrSlEzaUFdrZyzcpVG
DNTQRDN5b4kPPzNsHGtX8Asf+RZQVLg+wDgc7s6H1Bw9AmujO1uaIiS9WdaRblM84jzq04Co
AbqJ2hJE32i4xt8YdQGiz03SdS3iGSUdPSyo0RNADMysQ0XpfSKGgTkkeDuQhpczrPl34HSh
N2f7So/JORJjx92yjRwRQuQh20tzCulYRkyPxKVjn4g6dp6vOk3n5NHS3/ZVxfSiVmnXH/Kj
Ofl1H4Uq3MURGpquMBSxv3cs9hmiqKMjBFtZDf8K8yT1/2UUt+5cy74r0pq89dkyQ93LYK83
Ts48Jys8Z2+OihHSLmW1JZrfw/3+/PT1r787/+BCdns83Ixqkj8wsDz16Hnz9+WN+R/GIn/A
AxWtPi1WFu4azjrI0QFkqFVThI7SiOhrSCMxfFlU7LdEV3PncMYT5bJOEn0YuLut0aaUabTW
6o19TWfH0nO28+UHtnL3/enzZ0Wol5/m9L17erGb3FZphRtRODmyU029WSpsZZdYkj+lIKof
0qiz4IQhmILHzdlauCju8kveUWdahU/3wKOA0+usOop4oz59e3v4/fnx9eZNtOwyjqvHtz+e
nt/gr48vX/94+nzzd+yAt4fvnx/f/kG3v7AlzdOqsxYljkrNsS7N10RVbp3bExMsdUl6sebV
cD1S+hpJbeQzfRBDUy70HJ0X0AO/LuqjD3/9+Iat8vry/Hjz+u3x8eOfiudwmmNKNYf/r/JD
VMnWsjONT1P0PyxXS4dFwciKSaxRkoxdQtRN4kPzLjxMLcVp4Rcc0qXbpxR2QFORoe3iocgP
KmGSouciIfEUdzUsZGSREWd4hXMiXTx0xKkdiTziuzGgAbl5+grD9o8H5TkEv4CTY4Y5ZUbx
OALHEfowN3MYOidyGdsLfUeB+iRYKkLIn75b1YefmKLDwf+QMtKHycyS1h/2ancIeh/KDoFn
uuo/eyIbr+0TkDDVGk+lDzHM/HN7rzfuxLGjxH6JIdi5ZtKn+zL05evkCcCoi3uq9KZfKBlQ
vELJwJ7+Qnf7NCIt82Nv51JVzVnhuKQ3XZXDJWo7IkSGPdB9Kjsess5dGxWcYxN41q+94N3P
qR7gQEh1zdbpwg2VnUCGa0LfOM4DULj3W+e581xK23Eu3eTXyZylox+TlY8JlyVTx88OlAlA
CYU6AQwOoftNZAIZiDce2UwtTNfV8gGDH1Klgw+pEZ6W3kYN9zh/cQFkvaWRxeYFZ2YJQ9Kw
am4EvyRaJoFVI5w31iZ/b53E4UOeLxSGrWWBImcrR0jPhxLDlpw7HKEMd2SGPb1CBXuHWlX2
O81L1NyvW+jv9S7AFWm7tuyIFZNsBZjKruPSx8P587ihY3e1wsv9gLKEcMwy9ydaPP7E/pcw
z31nhIkSrrU2H8n7mFhVBaKH+FraNhDOgNXncLXIZs+6YWAZFD7tzEti8In1AzfA0B+yqMwL
2xYKDO9soeHe8unODS1OSCWe7U/whD+TznpfJszdblaFAe0ORqGTu6AZ8UJfa7pbZ9dFIbVb
hR21xSPdo6QFoPtkM5esDFwyivSyaW1Vb5DTGGz8eEOs5zhwyR1CeLFfq6+uW7jIguh5d+XL
D/fVXTm/yb58/QXOp+uzIWLl3g2IhY5QPpuh/Gi9NJ+lobJPyI8zVgxZVw5REbX0zcncJfjW
9j7HcOHnhhW2mvb0dYrQOs2LkY/a+mOq+Gmz92yeh6eOb7fOav82xYaWHRBYW39QpbAt1Tiw
MsaikhBiFhtKs6hdSGs6za2AMQ+IxtFVsGbhq9/uSavducsuRNF5EDkvJE45aE5WqTba80Dq
4K91USuuT/uN43nkvoyhHt7Ztshhs+ypWjScCcBX/S3RQ0WjPTNIgOdSgB46ZG5lVf96LlFP
djKQh8vaysaqCyNSm56xzQQ7d+esJSiCtdCf7gJ37dMeRyuxyO48ao3lDisJ7i5xxD2xsdo1
6fJ8h9e8/7+yL2tu40gS/isMP+1G2GNcBMAHPRS6G0CJfbGrcZAvHbQEywhLpIKkdu399V9m
Hd11ZIH6ZmJGRGZ23UdmVh7i9PT6/PIek2Me3omGp5hvyosAOMBC9YeF2wdRaGTdaEcYRBVj
4r5MYHt1WSndIfAlUgbY8Ow4UPuTlRsn+hjC+oj26ju3sV3lPJ7rdGiF2KQFZUHHihXDs8re
sOzI5aP+AJGJDoGwYbZTkN6Sdk4abADuGTvgrVRisfH46MPc8yg92BX3HVCHdOe1vkfjFZRd
Qt7R/ebFBs1ytb5tUNsV8aq4NBWhS5M5EDgg7ZzoGlrVmGHeqeZ2Gq0FDhCMh4/4IuLGXiTr
eJ+BbV1lbNdiAAHaLsMQHP2hxsgnNd1BRLVeJwrY4STfoBBwTjnUR+H3ucdMMcLfMG4agNGY
xIfZUES5qtd6iZBdrw55pIo6n05H/lyrCLn0Bz2u2B3Db4rIR5h50a9EvUfH7Wnk+T8Zdaxe
RdqiKMYjs4oMmBcrvzZjbyNbSNfXkxwj60Oe2q4eWoUsI2GKS72Iqr1GPsS3GCaU3Ub2GOKS
O6ciGR1lxQp/GCR8UwcrxUZvcbd2xaZovfIkwjnlDzETJ7Hualdhr1y+gkWwRUgGTSV9vmU6
X/fANQVJ42gH03K5971rKMYXt3IMOnQGh/O7Mbcljkvy9YyJWYlryekS/HDNZodbyVwHpkgM
Sk04Jspi15w2FVefOaXDb2BYgJ/vw2zaPUWsyPI1Nop+x9BE24z5vgH6YchrqnVZ7o6XzJnR
gDmPOMLUGImK6qD7Hgg/YckoRh6ON/oD6EFWaIrg42YnqHek/RqQvCqKnbQXtfgriQGW4W6d
ukC7aElUVrKAWOmh/5gEIwfhgQwlsPz5MUvZcQNLuA8MR1KyIj1uVtllImBDMOEp/EWRFeoR
0gcFcbbUO1vD985LNUJtUx31Gw0cdgGwhvkJgCuW55Wt2NJwXta7Niy3oCqTVpwq4KwVi3qY
pbSmz829dGfAtgYcaHH+9PL8+vzn29X23++nl9/2V19+nF7fLBfsIWHTO6RDfZsmu6eNrkXL
NtzO+w5HapZy/7fvWdRD1Qu53OT8AfOdfpiMZssLZAU72pQja7sq4oKLxEw30WBNxQUL14TG
1Um+GI9J8GRGgx2dpIUgrSwG/HI8oT9cRnJ/2BSUzrnHF1OqrayocxgcXk1GIxwConJFAuLu
dI4U8Tp6wvk0UhSs8WXEmMimoERKM/EssdV2PVSM50U4QQAfLXVbiC8o6NJWx1jEnvvegJnP
IsETDUk7ofNVWHhibUlwOF8SfE21BBG01ZhFEbGrNBQF8LaMMsDRBOv8ehyOPsM7gFfjSbek
lg+egLypussLmEuX+cnolmKzNE0yP6K2siJqKepkPqE02aYV6d14siI+LAHXdsBdkzl2XSKq
YomiTew9ivE8pb/P2apO/K0VbvCCUY5QAzplxNwAvCAHDBA7TsfQMkOK5tR39FOUJhHXEyqF
6FBFwuOHarJSu7BLQpzauASiRNxdt8AssFEsHmezCF4NNo2Tl2+IudsxGRgKiq4pvGTRI51M
25slMS2l/GruGNgOpaWuyOkg0I8uPuSKRvBNER55++J26RgTa/hych2eMwCkThkEd5fugFv1
r2OLRFw19IRH54tCOLzaAG6qnQ7cPsiU67Qr96QHlWZWlAuwEWTY0+eX5/NnJ2uABvnfmfzS
hisS3bresFVVudEuSi7uhajJZKwYrnzth+IGSMc2xXgyn93CqRv9DGNWzqcz1+JTozCM6my0
ioTV7ykWaeTb6yl13tgECzfMPcIxruzYtlGx4E68WQd+TcNnI6JpChMNC2xIZkvqznUI5kTp
dZIur2fURaIJGrZcLvwg0ogQ83Q0iYcr1iRjL3FkQJLVcKhSj8uGYDsej6iWY4T2iZt0kCKh
bSwcgljpU/I5yyZwE68YTLtYTK/jS18SLG/8MNmIwXxidCg3Q5CL5WQ0C5bPLhnPx2MKvBgR
4DoF8gVRzkFarlat7QCIghacN3VVZqUdJ14iSjeqvoSlvIhkQUcsnWMY9e0yNqzv0qcdy7p9
suWU9sDBgzzJnFwRNZ+5GelV9pbH179Pb1S2FA9j6fdQVY/pRdZ2Ag6e5SlIhZ0jh28L9IRC
aVG40bMwmK7GGM/f3An1CB/WTbXm3qAeMFAfpePd3ndbPp0vRq4jX5hcwUBgPGpLL5BsG7hH
em2DI3mjAq0j75Aiy3NWVkdCPaLM/7tt1WKOowBu32BVDmxJlniAYzVeXFMwh1TsmjWmLrYb
bsYQn8WT3HLsgx+oE8mr6nZXh4Qw4hlcVPaoSO8DXYhS63197l0OpSMGPv43pz9PL6cnzPB8
ej1/ebL0ijyx1YdYiaiXOiaPXmg/WaRdxlakTiCsoZ29uSjNp1hUcAtcUz0dst1SxYuETNDg
UNScLFfwa7i8oij3AHWRpLOeSzKbxT9fROVuQ7Qqxsvlu1RJmmSLUVSWs8luyIvMJhLACwIn
X0eajc93gr0z1pus4CWPlKDeiN8ZOJX3kZwUfG2CfzdZ6S7gu6rhdy4oF+PRZIlvqXnqun1Z
5cm3lcvN8fOg2ijbyc2CV8cy8sU+odd3UdQT5W4RaSiRlZuYH5l63dVkylFLMK6we35iMw8w
nbSJSo9eOMKBgd542hdsIOO3mDWNVK0gHi7CxXjcpfs6+DTqnK2x3XzqCEoWtNswN0yoQd5W
ZJI6a7Q4+jWEpSb3m3IXjBVitmTqJoMtRR0WptwQg5IEHVYL0VY218vNh6v1ejxP9lNPfHPw
NzGUkzvaQy2iqMXNMtlPAtWbdUpPIumKMarLlgvnXBDtbhX5jqLBNl8eklUlnIjVaJzjX7Zo
NbAsCgJW+jMlobQZU4++C7g3/vTl9HT+dCWeEyIMEUipWcmhWRvLj3CwaLCwytKJNnzwyCbX
kWyNHh2ZMsInch0UbOwRM+W+U8JxvJySBbTJDkeNfP8jh4yYXypQVsu1I6hfOs0aFafP58f2
9DfWNcyKfRIP0cdIVqadLGLqY5vGUzK5KDjNa2j0hSqAhhcbzzEsSvqx3qRZ8m6JxXqTrKnA
4ARpoUqLEux/pkJMPxVzbnOo54s5bTztUS1oedqjuonq3QeqiKWcT0OfnwrVZe02PkqSYsvX
cYrleOrr9GzknLLpD2iQabg0D5ImXEoXiMNVcom4+Ik1KinfWzDL8SKq27aplj9Dde0/bsTE
Guc4sE4M/cKqRJ9vX5+/wOn0XXtAvEbODTSXBjGysJPtBgTpDhNQ7C9QFMCwXkDXWyZIadDg
L34t8M/L9e9lVP78HSpW4Y/kAkWWxSk2x9WKRLDjJga/yB6H8RGdGb88naY+ZaWUCrrNOkyi
Tcuup2q4XUMn2eA6Eej3sLwZU2KvTZcoups5WVBT04b8NgFlOsvqu24DZS9HS0cKRXhRaAR1
mQOe1UK4C6mHzke2dSnXleh84x6Upl2O5kcXmpNQRbuwlIAwTArqMK891PEcG6DTGwrql5AP
0EEfmCrqm/mYvp2QICcIrHLVUAfVqUb4ndPE7vPBQH5DzZeFnpOl+WBNvPSg9W6AO3WbYmhf
yDtY5moFzEi8SDC0ARCA+Brh8BOZ3Y8gGQg2GutID0mX10zmCm2yy1/LvhHfF/D1pXYpjW+8
6LTQnVvOnJtc6IXjCSzOoLW7Bl+sYuOGJHdzITA1Fe0TZipRddtANZU+2HSGaKsef8DQI4HL
HIc6pDEUQxmTa2upm+U2poCKcqilbzn99j/g/Sr6nvnV9Aj3i7rgXY0ZFVD3at9yytx07Z3p
t3juHRPaeldePms9PlAnVhVREmgTUl/KzIqMdCCRnzwwWw+GkIW4mYw9nUyzZIupmxLSgD0R
MsBOwpIWrlfvAI5paBR2QTRqMQvaL6GrMV1DElF39gRZTL0k0YslWWxMajD4m3dqvaGfCAd8
xOCox5Oa4h57TYyQdxNZ8IsDcDMnCyOn5mZJQm9oKFku82kBMt+Mpt6iEltYnT4pmlhvsnLS
JfWGRk01yh0FRGLUXvhVJbdoeXx5u2EheNA3XiUOtq1pLJwOvuGgYQcbqB0DYb+jyw7TS4lp
Mp/18eJCnYghu6736GPwDpmKLt5N4dj5SdLZT9Jd/3yR15P5T5POfrpP17NJjNQlZE0xt3tl
j7Yh2cms4jAjCRkyTJMBQWXbButsFZGyFXZyuY2SaDaNFCHXCF/zPfUIId1XIlUjSiQ3Sxx4
ut6eYsrIWtHLlF55iOmShLI7xy9VYOZVXdBybovWfa4Umt+SgWcRnm8K1Bu+J9Mr1xWiQduD
qHnpxkodYCYqf4hwpTkLIXjjJgi0UDCkF5vgu0xuRVZ0O/QC/uA81YrnHy/4iuorh2U8NuUv
6EDqplplzniKJul8S0JjaiC/idgw4KtIGPZNu6NHv+x90vtPDeIg3aQuQD3vx3XbFs0IdlSs
Kn6s8XD0SjSHrQ+Xmoa5D8UnqqCPTcqilcKKn/HwEwBfc5jE4LNB+Sy3QhyvXMAvEOgcSRco
tJN217bJBSodaeBSOWrRpCtMvwErKikimy6vxWI8vtQk1uZMLC4QoGthHCszO06ik1HCbmqy
cDb6aPbxktG/cyOzD8ACfH8sai5aBsuKNBZWJHCYTSe3wdZTXod5He7J2o47yho9Zw7TP0C7
+WzFKfNRhg44mLHOW9kuvMv2LeaCZkWUoqry7lA1t6zBzNMDmfTSbWCodkA+Gi2vbbsLfKfL
MaVxTzKej0fyv05FcOkaAijgZmJhceuMeI/elbdldSjH7jAUupGiXpISLlDsF4UMgafCb1sr
sMhymD9y7CTOs3DBudF3fJGEKM2muQ/6JpiGf7rg437X1MJHYJR2HQlQoIdhYnsyorOkT483
9DtltMUuaOxHVHhg552zysw41EqdcAZdtDvbp1/zuRUsaKsRhtipPeunq3WtO1Sr0NyatTyS
ytvsuCOZhXg5xUOyaBzxrYdGHBU0vo6wKVgdOohv6pZoLWLamkpgpfooXcthLpLW51jU9kev
cHLtJTAvY3PkWwpN8wrqn2oGAZVVpCW5IVCZiYYjFvMJyysRKoRj5ILy2+M2+hXJeL6qjv6W
LLbUgOJ4FB517wXofWIRTIGDx8/ozc3gSp7i7dccYJv5xfd3fqwAHUhBfdYfXWglEJSlDAxi
JemR8LLRKA0/qvG5bfGurvytqINKlJ+2yHmB8fsjdSETVqeJ12yEakdKFyF9rIv0LqhM+3Lz
msdqktEcMM6EU6A8dPzCZFehl9SSVi6svNpbHgwKxmybOgUaAqEqQ9bT0+nl/OlKebHWj19O
MqhumEXLVNLVmxYjcPjlDhhUtL2H7t2RnY3mU8rbhfZHfq/dbu3Sc3It/Eb1qV+ZEO0W7t+N
ZfFarRVV8JHtKCLzmhiyviMDtAtCnPhbJ/hY38uBW7EvL8cJeI017wvS6wQPEOFVaWCYL4sl
913aditepnCuUQ/HPbVJTbu6l5rV1b0ZULLsPf0qLKY3IB8nh7A/NgE1yrjx4oOgNkwUbRyN
fQIViPf07fnt9P3l+RMROCzDrNeuXdoA6xIvqjOeygP6wuWxr3fAsahinS6KhBKqZfcaVeVg
o6Q3B9F+1a/v316/kHF+ajiE9OOqzJEVe9JUhGrwyH3pVtHPIbK2B970mePgwnv6fDi/nKxI
PwoBg/Rf4t/Xt9O3q+rpKvnr/P2/MQr1p/OfsNuJtCkoSdZFl8Ke4260aOWZpJ+SxTMRBE69
gies3Ls6fw2X7+RM7BqaYTLpk6B3CS/XZMogQzK0MKwnyyId8OgKsqbB4YroqRoCZdBLjoDC
IauEfJSlELIQoqwqxyBU4+oJkx9FpF1Jc7HBYbsGJu1mjN92duikHijWfVCO1cvz4+dPz9+8
3gUKlxqTAFKHS5Wo1C+28aoE+nGkNZUqyQIrOphBewOSzVLZVo/17+uX0+n10yPcVnfPL/yO
npm7HU+SIZTVoAiqGUN9Zikqn5HXlb9XhQqe/5/iSFesOPJkP3EXrTU20qrS7m5QmLKyPNaz
f/6JzYzWIt0Vmws6prLO7HqIEmWR2ZO8+/Pz20m1Y/Xj/BUTAfQHB5WliLeZ3FGWJw05nj9f
uk77NNgrkUmmNL9I7/RWptllpOgiL7xy3bBkbXvGAFQ+lR4aW5Gqrw7PnmuARs4ci84YGA6x
Lqieya7d/Xj8Csvd34YOm14Bi3BnK6SVeQxcXhh8N135iNoRwtTdBDdlJ+jTWBGIFWWSLXF5
niReHbfNfdXlE52ToHJ1QJKiSrxA/TayTjGBRl47XswSc1fwCKYp2jWmgPHtlNBEiADVadAk
4bWonx5yEux9O7xu97xZsh3e8jwF2LZ/VyR5wAE/8gtUT6YR8DhSzfydatzXVhtBPbda+CXd
kAUNZpFqYu/eFgX58G3h2ZiqUT20G/YKE+wmzNU2JQY08MwSGJ8dCz/zixrmjChuQYUutb4b
kaVdR9pGjYeFth/CbXCkbd5EUxSUjYaFXtLNX9BgFoCLasVtwXcgVpYVRJNoU5wBPSFLm5LQ
hGznzI5bZYEZDXZWm5FBN82agPJK3Q8EKsYZDG/prqzKhCMUDdDOC4LsEqgs1kFptaPz7GFS
1AyiSvT4sMUa1Wc9g8toVzv+tOqdtXB8cBVMNK5KH9X5Uu00nk5wKIJTRGHRXECQcqBdxHKu
iyBwN7MobjL1cDglCrXe2RbJFjyvDi7jP+DqgixKMsDo0mXel4dlb2gmo25f5S3bZGZII6y3
pJ4G1EGh9Cu4TFOvxYRA8Duev56ffO5Tf6iDLe4TR5+g9XUxUcGgXUlO371EbXY/H+w8ZQ/H
yc18ESno5+RfS4FbIL+4bjLKsz07tonUDCgu+Z+3T89PWuAOUwwr4m4t2M3MNcPUmEjKRo0t
2HE8u14s7O1lENPp9TUFlyn3aMRyRiLcXDca7rt/GnBbXjvmhhquuCi0MMQwZ0RHm3Z5s5jS
sYU0iSiuryNBrDSFybT9Dg0sbsxiTrrkAaNXuSmJ8ISr8/Fi0hU1mT9Qv6ylcDrZZ4SEZitL
GWzk1rReW0tz1Y6RH05a60BAY5GscNMLY0BNAJF9k8rPjde8QQDZZyvUikbyj+ODHr6dlVnb
JdalhHC+trqk3OC6MrP7KaWbwnn6SpkMDJw20KfYC8j1FL4i83fpt7em9tIrq8fldZFMcFSp
w02/Vtqt09eNaKrCGUt5qkaGi5NbznkDhR9hYjAEBqpnByvXBF22Xi/bPEkTXVf4adcmVHpi
xONTiee5a8Bo3BJAUUPj17HKGjijo63XyzeKNyYSkRaqANluQ/Rbsgvc8tW+dUG82PiA49hv
PsDIhC8ahw+bwScy8nW+ofghib8T88mI+Z/dZlmxYlSSRcTKvLlTt70mWrZI2gCh4/A7NeTK
1US9JEZHPJ6tQmJRr8EF7amrPlc+nZF+FEfhtlWeMmnhveEiRqbOtW0lJPAYDBwKVZHazL5v
7QjbEqEZYG/3+VyvBEqTQQ+WT5ZJnaceVKc7cUCNT9RyH1C46ZV7IExYpF/SiMotxkulIEE8
S1gdwLZNcOwo2ykX9nA0/AbG6v0E/IsVNtWcas2dO4p4r214EgCUWtWDARvQlc2HsQ/fT0Pa
/bTjrWvaA7ucR+IHLUbTZZePOxVD2Lsp4V504B+ljQfjRARq2MoJEteO8GSQ0Hm7Qf0l88Bk
zfRFYJaOLJuyiRDAtI3cFtp+3V5YZFPpdiliJfZ6YGt+WdNyjFPR1VmT2JsDih+ipDOeuuGH
tLYsVgvGrG8zxxYDoWXrBZI3D59QFxS44mXEdgxDCm+ko2WC8YoijAgGkmo8LazRM/sr135b
ZcltRzMvUhTb4lTKWApJFQZoeg/D2u3Czc+kwEcxjqXYlATydYJUNmi8vE792oZHDr84vebh
V8IoLkFHi1DxhBwYTN0iLFBdbptDtKiclS2/Cz/Ul9WFrgcXT4hVfqkwPyu/tWjc6cN6m0Mf
0euxSQSsbx9uBQoJexYJiaSRvKhtVZOG4vFe1OPrRYCpEgyjGIB1niIH2Idj8BGWATgJ7zb5
LmgTisV257RFuAkn4kcEidFdjErimLOrVHfb+yvx449XKSgPF4tO9YRxzYZ2WkCQ+DDDgYNG
sGGJUGirWscXBNGxEERIjtbxQXnKWtkJqabBaO9DtwGQN/Q3aA6CQqLfLLm2lyvpa0Pd+Iak
2xxzSeSWrHHjCXsXOcVIwxlFgV7fl3Cys0jQsZLlVTC0HiUOC80jAq15goUGbaNEKjaQrDIy
Jiq6jx5p+6VYmd5Lz6V3mtGV4tKol2KiQ9ym7rjguQrsYssIsNceq6UX+tKbnldNo3KXE8hw
rRmM4Gj+61fbY1m+J8VPoJECuYyuEy7Zgh/hsI8sc23nF3ykzQIJOF5EeN8TRQkON0tZEetX
3SfdvjlimPZwhWp8A6yR+7FOxra4ltqZfAecSRNucHWfUlOpEMRkKs0HlDySzkreCosQ7tqC
e4OrscujLoWuJ6nHY6oehxSkom6yLEHMFSRL7NDoYQoKAHisI0U9JUcC4ReqlIbYVM8AvltT
nJfBHkUwUyAn1lv0SSjSAhbYyMVWSZZXGEO2Sd20EYiUzNiF/mnz07vlaD4zS8EpQBtt3mHs
hffK4bKcI7GkFHcBK3hCwO9cFfwA94+nkARPqC1tcOTQiLIW3Tor2opOo+cV6GZa9JByKb1X
hs1gBeNDrKeGSZu1+AAP7qr6GrVx5k0rraMI/HUcRdBZUQQ9Ht7Q8HTapgX9gBGSXrhUXMJU
8PBsHd7ngvNucM+6r+1AqA6OGFstc6W18tSPtM34beCRL+ncCswbXNAqoybdrUUEERzsxuk2
xPRs6mVUwEb1yAv37CDbbhPvQAY5UmpwxlNoFYxAwNf1+NmAdxogWr6djRYXFrDS6wAefniT
p3jjY3BvSji+FtaTnYtRKvHgg7RYjucEnBXz61nkhPy4mIyz7sAfiHZLDV2iJF33AgUBBKMI
exsR30HGk/HIr0OJjlrNKXdbdC+5pN5wEpTSsxU4i9iyHqj0JrdlAjth2wfrBc8VTfpP8FXR
UavxNM+gho9Z4nqNuGp1Je2cXjAM0iPG9f32/HR+e34JlWqo8koS7r6Oa+AMeaDQ5hsw1//8
g5iImXeSlF5ZbghG+R4V/ToVO79Wwzbii0zkS+WjQbQWdpH/iYNPi2Q+GYUkZl4uDKIlmzPC
hrjPbmBqK9OmckxTFUBazaNrku2N4uLsg877yiSv+uWP89Pn08uvf/2v/uN/nj6rv36J1+c6
VERyMOR8Ve5TbofWXOXS4NBLz1WmiHB+JznjHoUd41396IdRVdPVa/pJoFrLConZ1x+iJ+lQ
eMqO2rDDgVmt2bvNx5/9o5gDlJpFHtAiuEoqO8iEfmHMtOmE1TX8wGgMMrTrpztikzklKxR6
4HpVIgubuaYaiplb196j4cB9IDmlODEERM0oVno16xGT1wxGdC/CHmu7F0751/fXY2S09us5
XI6yzqiVPMyA13ddb7kXMI6b2rbLkSnkY7WFkQgGNTr6VgVjprIhH67eXh4/nZ++hGer63vZ
Fuju32L6OmGr/wcE2te2LiLdFcW9CxLVrkkyY8tt98PCboF1aFeZm2OKIly3DUto21h1j7Vb
8lwk+m2d1/WGciJaC4sJgh9dmR3kMVJWaeZiCiYlaDSFIBHbncNzWpgwELlDJRJy30nUKvPS
LACwShwXwd4VBf6kzLSrGhHUgNkf9EsYMz/VeXbMeteE4sfXt/P3r6d/Ti+E58nu2LF0s7iZ
WMKeBorxzE7sg1B39BDSR5YwttlEbT3vAdu9tja74I67IfzCBw2vEnSSdO3eAKBNs12DsR5e
blKDc5ZeA3+XwOYQs5VUOyTw1v50YjylS+ojtD65y6wOoQv43Y6laeZ6T/UOuG2y6oD5aj1X
HkNXCT9biZRW08KD9s5dJimqa0olp319/nq6UsyfNd9pwpJthn7+qbY2H4reg/iaoj3dWuAL
m7BvubX082OOjJ8d20lHqkEAM+3WriXUVBZbCQ5rK8lDlMiSXcPbewcz80uZwYhAA6tG1h7Q
RiqYXajAS2b5cZVO3F8+BZrNr+QwOhdhxgVyVfSAfJQIm/6j3djIF2GLERpkspekLWs5xj6g
aj8GtSNEO+B2eyqeAhLc7SpbBXSkhxfBTev+rkqZBVUkzW5FYjBRCW9cVNAvBDIBo9p2a9Yy
2mxqsxb+IhyOziRE9mxiYwbFgzh9HLTyBgvTntzq6CEwNWS9PXGzQ9VsCXRdkPLYoQ36rsCq
9xeaDwO5xnAKKtWyYT54rvptrdmJ11sJwEXjLQxN2B1Z29KP2pJCjQI5sqoE6c6shEpuP/CZ
8lEh3MDpw92g9gadP1Ci8ICdhSU+iNYJWuIy5rGjAXeAOwIGBoKHjApVk53k6D8OeD9fHQhE
aMF971BEWIcuK5PmvsYBilHg1LaUfn4tiATbChThvCQOT08ynRcLiyvwSlR5vHnCZFYQ4ktz
SAw2FgjAZFpSFyqv3XWMH6wbwOsvDqwpvbFySvROYQVsm8yWUdYFHGdjHzDxvnKsStmurdbC
vWcUzN0v8tpxA3LuIh5g2qWb3B0VzGjO7p2yBxhs55Q3sGe61D4dKQKWHxgw9+sqz6uD3SyL
GIVy2mLBIjrC0pA9vthakI1g4Kr63nCVyeOnv04Oo7oW8lIkWVVNrcjT30Cy+z3dp5JHCVgU
LqobfIGzh+hjlXPXlOcByMgR3qVrM1GmcrpC2Zi0Er/D5fJ7dsT/By7PbZJlpQOUsXtmv5bn
KImTBdNroWyDe1mCYqEaJLI5OIzfpeYrld3r6cfn56s/qZGWXvuevS6CbtGijFJFInJf6Lx2
IVBrjlDErD0CNPRo86CmGp0tigpuyIq0gZRhBbY8Txs7i9Nt1pT26vAULNvdBk6fFQGS9Vm8
dIb5RZMmY7ZbRG89teEbfJxNvK/UP8PUGbVeONC2BCASeSVggKqsoJcKnJkYfytGZ6hyW5eU
iz7WxS/n1+fl8vrmt/EvNjoBSVgO82y6cD/sMYs4xk5h52CWbkRmD0e/+HlElJWYRxJr13J+
oXbSEdMjmVz4fPr+57MLn7/frfk82q2bCOZmOo9WeUOGkfY+n8QKnsWqXC6CXsKZiyuso7LV
O9+OnSjaPmrsophIOHdBpqJxrAXU46SNn9LlzWjwdawaOpyYTUHnj7Ep6IjSTi/piDQOCSWk
OQRBH24rvuwioSQNmn7EQHTBElTAMsqi0eCTLG9tveMAB65v11QEpqmAk2QlgblveJ5TpW1Y
RsOB97v1O40IuIJy4MMvNJyXO96GJcr+kq1rd82tk4YUEbt2banH0rxwfvgM667kiaOU1ADg
sJuC5fxBstj284nhh6rucGffNI5mRwWrOX368XJ++/fq+fvb+dnO3+m+X+AvYCHvdhkqkXwV
BkYJ4HDtAEsOhE0k6lLboClS6pWsRZkADr+6dAtSVNYwk1jQ3Npau9GlRSakhWXbcPcN0pDQ
KmeNJHkrmRN1y5o0K6FNKPUg8wpcM4hkKKDZtQRktDQGUiFKUErLTVQpVTCJLKSAeVVhF6zu
UmhgLdrth19+f/3j/PT7j9fTy7fnz6ff/jp9/W49spnoYMOAMWs75KL48AsG7/v8/L9Pv/77
+O3x16/Pj5+/n59+fX388wQNPH/+9fz0dvqCK+TXP77/+YtaNLenl6fT16u/Hl8+n55Q6z4s
Hh0/5Nvzy79X56fz2/nx6/n/HhFr5TNKJJOEkkO3Zw3sKY4BzDDpsp1wk6J6yBonGrEEoq3z
LWwG0sDVooAptKqhykAKrCJWDtp54jroB9ZPrKdo1nC+WCSkXBMZI4OOD3HvZuvv3F4jVjVK
A2HLpeK+TDqX/VYw4GST+t6HHqvGB9V3PqRhPJ3D7kuqvY9qj31otfoO1cNuzLmACNscUMlz
oerFxpd/v789X316fjldPb9cqZVuLSpJDNOzcSIGOuBJCM9YSgJDUnGb8Hpr70sPEX4C63dL
AkPSxna+GmAkoRWjzmt4tCUs1vjbug6pb+2nFlMC6t1CUrj2gDULy9Xw8IOdiFP3y0GqPAOq
zXo8WRa7PECUu5wGumlRFbyW/1IPOQov/yEWxa7dwlVFFIiNjRcneJGaJVz/+OPr+dNvf5/+
vfokV/OXl8fvf/0bLOJGBLsArsIAlNnPgT2MJGxSwYimi0iOejMUu2afTa6vxw4jqgxKfrz9
dXp6O396fDt9vsqeZH/gGLr63/PbX1fs9fX501mi0se3R1sdYopOqJdPM9FJQTQ22QLbwSaj
usrvx9NRJJWj2cIbLmC1XJiX7M5JPWdGasvgFN+bGVvJ2LZ4tb4Gs5SswuFP1qsQ1oYLPiGW
d5asiF7nDeVxpJEVUV2t2uWXcyTfEMyGz+7d0FtmD23NYIf7IQV2t91RE4XK+X1onPD4+lds
JAsWDuWWAh6pQd8rSqWVO385vb6FNTTJdEJMF4LDSo7kwb3K2W02CQdcwcP5hMLb8Sjl6wCz
0eUHRxOxsr2DMp0FpRVpODsFh4UsPRjCTjdFCjuDBDvpmnvw5HpOgaeTkFpsnVRMPZAqAsDX
Y+Ke3bJpCCwIGKrwV1V4b7abZnwTFnyoVXXqNDp//8sxZ+gPjnAiAda1BE9R7lZcENPImoTM
xWSWS3VYc3J9KQSRsdmsKFZkIOmSGccNBYpn5vsQF64UhIZzkxLDsJb/hszClj2wlGitYLlg
pEucd6CHM5tl4QUMfEPt+Af1SyPcEm0WXqDtoSKHXcOHUVPr4/nb95fT66sruJjBWeeO3tcc
1Q9VAFvOwoWoHiGDg/5htqXcSTRaP1KqILiPT5+fv12VP779cXpRcaSNiBWsxVJwDERIPo+Z
/jQr1GiXu3AZIIY8iBWGOiYlhrrzEBEAP3KUxzI0sbalEItZ7Ch+3iDoJvTYKM/eU1B8t42E
/bGvidnqaVBYiA9tT5aVkrGtVmgn12bUdgEp/8IVjR3F0Jm+PPT1/MfLIwiSL88/3s5PxOWa
8xV5qiFcX13Gv/QSDYlTO9j6PFjUPdElbk1SkbxmSEedTAg3dycwz/wh+3DjH9bqaWafOcSX
S7rcrZ9hQ4fu02xrSN3flX5RW4oNBDm6KDJUfkl1GTrG2J9a6Hq3yjWV2K2Q8HJxbV3YxHap
BqUMvQI+Lzm9vGGkL+D+X2Uq5Nfzl6fHtx8gtn/66/Tp7/PTF8sqVT5W2ZrBhts7MsSLD7/8
YmnyFD47tg3rkqzRFgf067rI4I+UNfd+fZRKThUMiz+5zbloo00bKOQOxb9UC80T8k8Mhyly
xUtsnbRtWJt9nkc3uNK/2HoZA+lWIKrCud1YBvBoPcUaICk3nhcMC0xN+vYAi4WxCK27Tu4h
uZsorHFUB96sTOr7bt1Ihzj7BLZJ8qyMYDF61q7l9otlUjWp55nX8CIDQb9YQSsoC3KpOGZ5
WHyd8N4q0cxnW9T6GXoAyo6iAUdS1Mdku5F2OU229ihQUblG1ksb0XI3nZIuA3YX3Mdl1fr6
bExUIE0zHPNVkB/QvaV1WJ5kPHcpQhEj6Xi769yvXCknwQCPRPYKjYGDIlvd05mYHRKay5UE
rDkw/5pDBJ2JCnBzh4tLPA4poSJRwXkZynWJJdn4ghzG0GjVfKA2i7XUEQ8bJK0Ka4SImoGr
6+3QhuIRmmYh/AEPdri6XabxQd1mHhR4SKJkhFIlA89IUs/odgALSZBLMEV/fOg8c2QF6Y5L
Ktu8Rko3sZr6jLM5nYZa41kkNteAbrew1+NVC7iSEr/93Sr5SDQmMrPDOMAw2spoC3F8IMEO
++/AraVtDiD7OcksPJVtIK8KN67JAMVS7f2/SqzFLe3lUIfuWrYdWdOwe3UwWTtBYFoDOIfk
YQ4E9gEvDbZtZyQEOZp5+IHmjQOglK1UCDjUN+3WwyECvSmRy/XPV8Qx9KZrVao6tx7oc84a
9DHZZm6AiP7oFVm7q8NG9XgQB5u0OpQXSOSDBKLRQJy8BQIqJ3pUT4JYmPeaaK848KrNV273
yqo0lF3hXEiI7VF1VeUuqskCan2LGMxg3oklFTQLLgcfw1xEQy2aqet5Copd2uRqSVtHcb0r
mLjtqvVaPq45mK5xG39n39F5tXJ/EU/bZY5mxtaZ1+z6Z2lTTf7QtcwqCqNuARduVVXUHE5h
qx28cH7Dj3Vq1YoOiw2qltvG2TGwi8zG3qfCOgYMdJO16A5SrVNGhPXBb6S7SGdzBbAFsa6q
9FaZHM0Ds50bJSjN6qr1YIopBcYJM+pt+br9MBn1BLDVvIVSY+gQym6jWn1kG5v5bZEZJj02
A37VfTI2AoCEfn85P739ffUIX37+dnq1H5JdS1+V1pC085PYhLmhyBLlkAbs2iYHHjXvn8wW
UYq7HdqJzobRFwKNjoISeopVVbWm/jTL7YlN70uG+Sw8Qw4HbF5jLVmmWFUopGVNA3S0DKM+
hf8B472qfDNiPQXRYe1VW+evp9/ezt+0DPIqST8p+EtoCrJuoDnSzBqWz2xpNRmWQY1pYbHx
JAeesVTlQRPOS8EW4JialJewTHPKi0V1VCgvALSCLFhrX3c+RjYPnURcw3ZZCpzW6F24K9Un
LOebsptOKE5C7rADgxNXdbqu5L1q23Pb8Fhdh4zdolUMnnW0WfPPToKT4k7vovT0x48vX9Aq
gD+9vr38+HZ6enNtjtlGZXtsqJjauqGCaLyQp/ih8+YkJMOXWkkpbf0vVKILROsMSoi83aTO
qxf+jk0LXq+7lWDaM4Y/ZFj4UKrEeT+BG7IvGgVbYS4v4UORIcsjOB1m227+bYII5PK4iffu
Jfa7OFvuOKFdcpaHE4L1BhoWbTrSl2uZZeOJlR3brBTOvaEKQ6x3SXsIo6YMDAxkwcBBuSte
QmEniMr3v/C6IQlBbI6uk6ZKGTplOHf8wFNJmsMxHJ8DFR65F/Jbz5xc/vasYDRwSK/o1QA3
H5w0tNm1yHcrQ0bdmhIv9bre2tGTDjd8DgdFWKnBXBhSdb3v8I6i2wa8UKqpMgx+gH5Xl3aW
KnZfWNkxvSr31JM98VmkZN60O0ascY2Ilq1iyEvjKoc5QqDyMUKv/aapmiEWibv61DmMTKw/
EeoMYs654SGAbQc2cmMropRlmsKGqnMbG/sWrfWRgSqr4SgDCUiJ38NhiGXETBRVC9cY5s4+
fILDIVg4Wy9mrHo3R/qr6vn7669X+fOnv398V/fR9vHpi+33wWSWYLhoHTHKAaMh1y4bghsr
pGR/d+2Hnv1ETRpKbVkLU2bLwaJat1EkMl3ApbLCJpM1/AxN3zTHgtOrjFyIiOq2GM+pBaHG
XmHKyq9H9R0dA6c9OGX2TRoIZYsorWuMVre+H8HDHXAqwPqkOiZl79J9aSqV1S9wHJ9/IJtB
XCLq5PBYVwXU7082zBxvg10iUba/BnGMbrOs9m4Npe9Gi5vhzvyv1+/nJ7TCgd58+/F2+ucE
f5zePv3nP//576HN0uFSlr2RckmfIbgXE6o96XapEA07qCJKuIBiV5kkwO7GbzFUALfZ0X6i
0psOuorf+/AI+eGgMHCDVAdp6OsRNAeRFcFnsoXeDY+wNKvDY1cjLlwxrK1QWhF5llExT4Zi
cMjlc6sWB4VbPYb2xLgFna9vHroZV7WKZO1/b45SkariD4y3lh+0kUP/P9aRKVLGH0E9wTp3
Tm15jUqk03yUONBkeFeixQLsD6U7vjCkt4qdiJ3pvnT34V/7dP5b8ZOfH98er5CR/ISvSHaE
BjUhXIQ3IAUUGx9iblPnElLcTSf5M2Cdmh3hduycPJFm+kORNDBkZctZHoarapIdyd6qzZpY
ejd6aWBMVAz7TcHjX6BHfOwr5B+kqNqf7xPrFpHlRmPXIDa7I7wzh5TDTn8DJvdOS5UNIU+6
egG5H0AAQBUmtcrwsaFM7tvKDpxU1arx1jUrV2MvMF/GbkDC2tI0RuGxNnsnjuwOvN2ics1n
0TS6kHFWpLW5HZJYkqCLqJwapJSSuV9Ioj9UpVjLR7Za5mPwmqhqTdxDWyq9Vrv12u5ptkcF
LdI778PwT4szIaBjSTg+VlFaRBYHJ2VFk2UFbLXmju5WUJ+RevyKNGF4J66DAw05D6mG1N/Q
3izuqqCFDyl2hAQajdkSqvU6aKpiMoKVdIBVG0D1stBTL4IpFSVw+9sqnGuD6MUCd9xVsSs4
yTHzQlOtMUiiG2DDxmWB34nNWkgC/eQLPVNfZmT4X0MMy9iQEZVGh9QEweNVF0zrDgpfZWqd
UnWbjagIwpXjPpPfl7BPfVIMcQ30fLPxbg81nGqLKOmMHKthiV98ZrA3DWHiYCpjuXywWHNX
ijVLpmUNvhf5DMdwXlu1xIjD0cAN6F0czqgEHDXD/AjOYCnQBSbBEqlVzD+tXrPNJZUvnKYY
wLwKMPKqfXz5Np85l63PBfJUPneJ+4dVRTWq5igYmPOOp44aHkRavtm2BAgNUm4FxoHsBP5l
D4RL1NN0LZnjbKBWRDXf0YVJdNau9mPSKnWgU+HosraYHSMltaT7Qo/Hc8WbbwvZcrpUQOj4
QMqjE29Dkl/wJ81+YmlPr2/I8KLIlzz/z+nl8cvJntXbXUnaYJCqFC/ITl3QZFRxWaui6V1U
0ITRfobdynguckZpgxGldIqesOMV17tl+uXC8XCbGXfWWAW86nk953O3CqPnvrRbbx0POa0C
EnCgV3t9ZtnRVjX1MGFIphWz0mylQYUrrZGUtPio0uwKPJPotxVFBZwFazLWSXvJ0T+zEfzH
OgSBT5KsgJKIpX0wWSWcJeFJ6noxkkuy12KgFFVwIbCWtEpkw62rRUlZK65WkKNq8B4V/x8R
SvlhY1sCAA==

--wac7ysb48OaltWcw--
