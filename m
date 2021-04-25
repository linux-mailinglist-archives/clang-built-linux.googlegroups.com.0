Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBK7JS6CAMGQECVKPJ3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 028B336A9CA
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 01:01:01 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 9-20020a056a000729b029025d0d3c2062sf13271859pfm.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Apr 2021 16:01:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619391660; cv=pass;
        d=google.com; s=arc-20160816;
        b=MhjCv0tQNOSCbICS8tfYQnzFeAR1/Xu9YDK4hGUc2dpoB7rWa/SaqyrdO+pWz0HQKw
         0oVzKUtGtMB4R9b/5N6zohG1kTcxA4UqBTDh8IDVucAnLMCTQc+d6AOV+ID6Iy8p44HD
         5Dw5uOA6ZdSJiR6yNLrt16fxm9J6YHkTEYLBP6NzrD+ot8iCpQzGhWV0piqct53cmb9Y
         odKWupjmnDTZoK+ZA4NxI80sInl67o+SWxKcB1chEYe7HhBD64w0iDh4vBEGQWFYcJZt
         ty6MVVf1Z6r+dLLWA7Wv9SHclLojb2whvuX7oJOY80XBplx55QN8+jXfxK5lSzcLNp7Y
         lfyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=4ekZV1EJNorHGwa0XM5RLaO99MVqHxdsZ6tL4MzLqaw=;
        b=UIxk6PWwnd/VLzq6MKiPgev1jjOfFj63+qy9dH1kikYUw9YHRTRXBG3s8hndH+up6c
         ahcJlxHwxFyKQ4xLi27gn+yvm516s40tSx2ccuTN5FQbEhPiqok42EOwjyhnVeJAzD3H
         Uto1svMEr3SHiVw22ZYojbGSdihukYn8ved1UlLTF64jlRBlxi/jwS2enYcWIgHzUfcj
         m5z2MYxayjqRTewvb63tM37LuNfSZ74qnXZzvxjkk7V4rmJ17fH9RfTaN12jg8Nh5cDM
         3Ri8BASjIBfEybVQyUKzWG/MysxXkgxZ9XOWsAZqWJE5KMvQ61fhOTecCGSB1Ggu/4GR
         rThg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ekZV1EJNorHGwa0XM5RLaO99MVqHxdsZ6tL4MzLqaw=;
        b=mfJ/Q1/f0rMnf3c3xQGdQGHT6xz2x8T6K6SONzgsMERlBGq6ichYZbUQo/0QYVN218
         oI0TPGYBz4v3vSnF9UdhZzZkQo9hQ7LMy3re8++jrcbF6DjecZmaSoAlWfOUbMBPfaRC
         foQ4PSnzUXfOvGYJ0mpjbslv5cun+hiEcn29koWuJPt9VIAAzSfMboyQY1KPJIc7cm8r
         Z4y3sZwGJhGr2Sok+it/NXTxX9TFjoW+psVhyUKj+YEfey9lUFCrZSt0/XiATns/+GwR
         NMv5q33LxJNOFR0uw9s+gk5UG6UbvAG72yQh1KwWtnLzuZ/v18Qt8lk8doZ6YsRgmN+B
         DGkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4ekZV1EJNorHGwa0XM5RLaO99MVqHxdsZ6tL4MzLqaw=;
        b=YnRbxfFyv+0S77nMQ9BLKRph3b2C4PxfSS42MWI9gCHXTT7PBbzffrHnghPgwPg42v
         x0NlhabgXcC9ltFaSexEVd6fuWEtG5L88tx3mvRXzetsePyQwqvi9yMMN3/K34Lq5Mo+
         QJN32VBovo1S/Y09HZUgzsPOdOaX4TDh1H2akx5uwfdMmJoEcAEkWGWNOWOaMJFv52RR
         lMi1vgk1L06+C9FUeBHmerwqqx9eZZoOzhtkzmYg3cQCtN5LVgckTlqnj97s5KgJ5pbv
         lvndPeAglBZhv6mjBHErpGd9yCaek5DXd+2vHMPIz4R6DBZ4QUsJYl57FagCAMrYT/cf
         XXdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gJNwNClzBygyrzo7Y5qrft9M505nfWsEXvLCxZZ1MinpAy+ZB
	9Pf1wf2pQ5mRKqiRekrbT58=
X-Google-Smtp-Source: ABdhPJybEllTz7Cy01pN+AfCCLxs89ZWSws9vjDRYaKXHaIsBhmRq/0358DDdsZhaUjvO4qodwdrfQ==
X-Received: by 2002:a17:902:d64f:b029:e7:1f02:5741 with SMTP id y15-20020a170902d64fb02900e71f025741mr15170671plh.48.1619391660164;
        Sun, 25 Apr 2021 16:01:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:88d0:: with SMTP id k16ls1726430pff.10.gmail; Sun, 25
 Apr 2021 16:00:59 -0700 (PDT)
X-Received: by 2002:a63:f104:: with SMTP id f4mr14020552pgi.241.1619391659278;
        Sun, 25 Apr 2021 16:00:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619391659; cv=none;
        d=google.com; s=arc-20160816;
        b=If8ktOt5CMT6d6h4/0bn1caps4R98+pW8igFVYn9KWYIsqd4zkrCNam6iYTgjEEiAa
         d1xQ85JhPyzU/ejlXv+2g/R9OtXv5qt/H46NSU3nwYD59Qgh9ngYzsWwkNK1w7LVk6qS
         gYMH02Ow7r2NL6CcS0zNXM6G94o77HMByI/5CyybjnkQRIsGcTeVQL0LQfooFI2Tw3TZ
         gXVCv5xNscy8xNSgkfs2Gyy9YRzAGBDSIYAdSDUqPxiFA8cFM4u+1p6rsHk174gK7p7i
         0khgZ4ir/A0h4AdYPP1YBUGQcavg/US5nUmA4z0Vec78Xu0vf3gLSyVfbnrzQxul1mY+
         ZoMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=/y+EYjPVrMl04MgWGU5dSrP2+S/6p023v1hyM20ktuo=;
        b=awizkUeJd82U7NMchjXRXrfAlXK4quetlOemivk0ybP0ghdbkmcyZbEFPV7fXWZ7ul
         Hp4Oqu7UG6i2Tj3e+QDN001P81bgm7RX7DjI17GIGK3K31MW3aXDbSIeIjZsYfSaJbRf
         Ql5X1G8f1yOjMb+5xqJ7p29NfvgHcsPucD4TjCPUbk6OVmtT5124JGIa1/Vz1y1KbBcE
         JUqdy0LXzh7KHBFg6N1nvKtUAMG9Um47pbVvNaXVqwsvvH1pIy7g1PIDUCfF/FmvBBn1
         2594AdzyoJ/FIFWQ1SJOprsSkOr6N1XAbvB6b7HKfrs0Leyme0AEs/fSxPbhuMOz0Ezi
         Raig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id x3si2556644pjo.3.2021.04.25.16.00.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 16:00:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: YE5MKjJSqgnAL92Vxtjts1PTESd0Dgy9wnkHQRt/AR0c7xOBRHJKKM6CIB0UKTsZ/2nXKiUsPC
 JZFWrfkz4fCQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9965"; a="175743662"
X-IronPort-AV: E=Sophos;i="5.82,251,1613462400"; 
   d="gz'50?scan'50,208,50";a="175743662"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Apr 2021 16:00:58 -0700
IronPort-SDR: A9BGHvea3G93PYUuLYctndrkPsR9Bmomt2hhlELyVdf0r/4nXoiOjChm4in4MEuL4SLwZtcERw
 AJD14S9AaUlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,251,1613462400"; 
   d="gz'50?scan'50,208,50";a="454055073"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 25 Apr 2021 16:00:54 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lankC-0005jG-Q1; Sun, 25 Apr 2021 23:00:52 +0000
Date: Mon, 26 Apr 2021 06:59:55 +0800
From: kernel test robot <lkp@intel.com>
To: Pavel Begunkov <asml.silence@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jens Axboe <axboe@kernel.dk>
Subject: [block:for-5.13/io_uring 143/149] fs/io_uring.c:8234:12: warning:
 address of array 'imu->bvec' will always evaluate to 'true'
Message-ID: <202104260650.6d17j925-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
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


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-5.13/io_uring
head:   a2a7cc32a5e8cd983912f25a242820107e5613dc
commit: 41edf1a5ec967bf4bddedb83c48e02dfea8315b4 [143/149] io_uring: keep table of pointers to ubufs
config: powerpc-randconfig-r014-20210425 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6fca189532511da1b48e8c0d9aad8ff2edca382d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git/commit/?id=41edf1a5ec967bf4bddedb83c48e02dfea8315b4
        git remote add block https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git
        git fetch --no-tags block for-5.13/io_uring
        git checkout 41edf1a5ec967bf4bddedb83c48e02dfea8315b4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs/io_uring.c:8234:12: warning: address of array 'imu->bvec' will always evaluate to 'true' [-Wpointer-bool-conversion]
           if (!imu->bvec)
               ~~~~~~^~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                                                 ^~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                                        ^~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
>> fs/io_uring.c:8234:12: warning: address of array 'imu->bvec' will always evaluate to 'true' [-Wpointer-bool-conversion]
           if (!imu->bvec)
               ~~~~~~^~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                                                 ^~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> fs/io_uring.c:8234:12: warning: address of array 'imu->bvec' will always evaluate to 'true' [-Wpointer-bool-conversion]
           if (!imu->bvec)
               ~~~~~~^~~~
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                                                 ^~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
   3 warnings generated.


vim +8234 fs/io_uring.c

edafccee56ff31 Jens Axboe        2019-01-09  8204  
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8205  static int io_sqe_buffer_register(struct io_ring_ctx *ctx, struct iovec *iov,
41edf1a5ec967b Pavel Begunkov    2021-04-25  8206  				  struct io_mapped_ubuf **pimu,
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8207  				  struct page **last_hpage)
edafccee56ff31 Jens Axboe        2019-01-09  8208  {
41edf1a5ec967b Pavel Begunkov    2021-04-25  8209  	struct io_mapped_ubuf *imu = NULL;
edafccee56ff31 Jens Axboe        2019-01-09  8210  	struct vm_area_struct **vmas = NULL;
edafccee56ff31 Jens Axboe        2019-01-09  8211  	struct page **pages = NULL;
edafccee56ff31 Jens Axboe        2019-01-09  8212  	unsigned long off, start, end, ubuf;
edafccee56ff31 Jens Axboe        2019-01-09  8213  	size_t size;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8214  	int ret, pret, nr_pages, i;
edafccee56ff31 Jens Axboe        2019-01-09  8215  
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8216  	ubuf = (unsigned long) iov->iov_base;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8217  	end = (ubuf + iov->iov_len + PAGE_SIZE - 1) >> PAGE_SHIFT;
edafccee56ff31 Jens Axboe        2019-01-09  8218  	start = ubuf >> PAGE_SHIFT;
edafccee56ff31 Jens Axboe        2019-01-09  8219  	nr_pages = end - start;
edafccee56ff31 Jens Axboe        2019-01-09  8220  
41edf1a5ec967b Pavel Begunkov    2021-04-25  8221  	*pimu = NULL;
edafccee56ff31 Jens Axboe        2019-01-09  8222  	ret = -ENOMEM;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8223  
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8224  	pages = kvmalloc_array(nr_pages, sizeof(struct page *), GFP_KERNEL);
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8225  	if (!pages)
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8226  		goto done;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8227  
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8228  	vmas = kvmalloc_array(nr_pages, sizeof(struct vm_area_struct *),
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8229  			      GFP_KERNEL);
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8230  	if (!vmas)
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8231  		goto done;
edafccee56ff31 Jens Axboe        2019-01-09  8232  
41edf1a5ec967b Pavel Begunkov    2021-04-25  8233  	imu = kvmalloc(struct_size(imu, bvec, nr_pages), GFP_KERNEL);
de2939388be564 Jens Axboe        2020-09-17 @8234  	if (!imu->bvec)
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8235  		goto done;
edafccee56ff31 Jens Axboe        2019-01-09  8236  
edafccee56ff31 Jens Axboe        2019-01-09  8237  	ret = 0;
d8ed45c5dcd455 Michel Lespinasse 2020-06-08  8238  	mmap_read_lock(current->mm);
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8239  	pret = pin_user_pages(ubuf, nr_pages, FOLL_WRITE | FOLL_LONGTERM,
edafccee56ff31 Jens Axboe        2019-01-09  8240  			      pages, vmas);
edafccee56ff31 Jens Axboe        2019-01-09  8241  	if (pret == nr_pages) {
edafccee56ff31 Jens Axboe        2019-01-09  8242  		/* don't support file backed memory */
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8243  		for (i = 0; i < nr_pages; i++) {
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8244  			struct vm_area_struct *vma = vmas[i];
edafccee56ff31 Jens Axboe        2019-01-09  8245  
edafccee56ff31 Jens Axboe        2019-01-09  8246  			if (vma->vm_file &&
edafccee56ff31 Jens Axboe        2019-01-09  8247  			    !is_file_hugepages(vma->vm_file)) {
edafccee56ff31 Jens Axboe        2019-01-09  8248  				ret = -EOPNOTSUPP;
edafccee56ff31 Jens Axboe        2019-01-09  8249  				break;
edafccee56ff31 Jens Axboe        2019-01-09  8250  			}
edafccee56ff31 Jens Axboe        2019-01-09  8251  		}
edafccee56ff31 Jens Axboe        2019-01-09  8252  	} else {
edafccee56ff31 Jens Axboe        2019-01-09  8253  		ret = pret < 0 ? pret : -EFAULT;
edafccee56ff31 Jens Axboe        2019-01-09  8254  	}
d8ed45c5dcd455 Michel Lespinasse 2020-06-08  8255  	mmap_read_unlock(current->mm);
edafccee56ff31 Jens Axboe        2019-01-09  8256  	if (ret) {
edafccee56ff31 Jens Axboe        2019-01-09  8257  		/*
edafccee56ff31 Jens Axboe        2019-01-09  8258  		 * if we did partial map, or found file backed vmas,
edafccee56ff31 Jens Axboe        2019-01-09  8259  		 * release any pages we did get
edafccee56ff31 Jens Axboe        2019-01-09  8260  		 */
27c4d3a3252fa6 John Hubbard      2019-08-04  8261  		if (pret > 0)
f1f6a7dd9b53aa John Hubbard      2020-01-30  8262  			unpin_user_pages(pages, pret);
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8263  		goto done;
de2939388be564 Jens Axboe        2020-09-17  8264  	}
de2939388be564 Jens Axboe        2020-09-17  8265  
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8266  	ret = io_buffer_account_pin(ctx, pages, pret, imu, last_hpage);
de2939388be564 Jens Axboe        2020-09-17  8267  	if (ret) {
de2939388be564 Jens Axboe        2020-09-17  8268  		unpin_user_pages(pages, pret);
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8269  		goto done;
edafccee56ff31 Jens Axboe        2019-01-09  8270  	}
edafccee56ff31 Jens Axboe        2019-01-09  8271  
edafccee56ff31 Jens Axboe        2019-01-09  8272  	off = ubuf & ~PAGE_MASK;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8273  	size = iov->iov_len;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8274  	for (i = 0; i < nr_pages; i++) {
edafccee56ff31 Jens Axboe        2019-01-09  8275  		size_t vec_len;
edafccee56ff31 Jens Axboe        2019-01-09  8276  
edafccee56ff31 Jens Axboe        2019-01-09  8277  		vec_len = min_t(size_t, size, PAGE_SIZE - off);
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8278  		imu->bvec[i].bv_page = pages[i];
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8279  		imu->bvec[i].bv_len = vec_len;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8280  		imu->bvec[i].bv_offset = off;
edafccee56ff31 Jens Axboe        2019-01-09  8281  		off = 0;
edafccee56ff31 Jens Axboe        2019-01-09  8282  		size -= vec_len;
edafccee56ff31 Jens Axboe        2019-01-09  8283  	}
edafccee56ff31 Jens Axboe        2019-01-09  8284  	/* store original address for later verification */
edafccee56ff31 Jens Axboe        2019-01-09  8285  	imu->ubuf = ubuf;
4751f53d74a688 Pavel Begunkov    2021-04-01  8286  	imu->ubuf_end = ubuf + iov->iov_len;
edafccee56ff31 Jens Axboe        2019-01-09  8287  	imu->nr_bvecs = nr_pages;
41edf1a5ec967b Pavel Begunkov    2021-04-25  8288  	*pimu = imu;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8289  	ret = 0;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8290  done:
41edf1a5ec967b Pavel Begunkov    2021-04-25  8291  	if (ret)
41edf1a5ec967b Pavel Begunkov    2021-04-25  8292  		kvfree(imu);
d4ef647510b120 Mark Rutland      2019-05-01  8293  	kvfree(pages);
d4ef647510b120 Mark Rutland      2019-05-01  8294  	kvfree(vmas);
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8295  	return ret;
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8296  }
0a96bbe49994a4 Bijan Mottahedeh  2021-01-06  8297  

:::::: The code at line 8234 was first introduced by commit
:::::: de2939388be564836b06f0f06b3787bdedaed822 io_uring: improve registered buffer accounting for huge pages

:::::: TO: Jens Axboe <axboe@kernel.dk>
:::::: CC: Jens Axboe <axboe@kernel.dk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104260650.6d17j925-lkp%40intel.com.

--1yeeQ81UyVL57Vl7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--1yeeQ81UyVL57Vl7--
