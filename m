Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBX42DXAKGQEUALPTQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D63E102C5C
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 20:10:00 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id c12sf4833062uap.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 11:09:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574190599; cv=pass;
        d=google.com; s=arc-20160816;
        b=pyaXflLzS5vmcYF3BVFTq5fH9VGxvujalj61mpPBWCNmSnxB7gujLNe4QHoXWUeNIo
         F31KcdZijoqY23xROKztHUdZUTyUsvsrWe5Sn2x7lQXt61s/YQAxHcDPzlwvCF8ENyhv
         PGgQPqMeFjzHg7OiKkEBOVNKRV/DLnoS33KQ1Iq3DVxjJN3R5s9pCR30XTJtyJM3t28Y
         P2Q6AZV2u+VEfaEkTrXg/xp3+DKQFJ0mhI4FLrrpfKv7n5myqMjnukl7pk7/ngrtkuK+
         es8i+7qbsWN6ZtvMC2X7Rlv5u696x5XiX+9ktRHc5q63q2CCo7jY4g1RRr4MrpeJPM5U
         1BoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tL4VfgwlDyDUr9BzKwvX+Wlq1Uye6A45m0finKd839E=;
        b=TIaRjFLvdBpzFbLnbs3gblM70BCsOwWHJx5m9Arcj6Rp9+QBMOJhdUnROvM+MMYpTM
         zJBFNDpG7wHno3q1YHsVfg0/mikCMRJc5+PQchr7J8SdzVVs9w3UAz2OkAwx0l8hWwLB
         llQbiWyBQamaoeOXkZazyqzajsJqWxIY0Bz5ymg+ReWep9CV1SAOO8No8ijqvy6SXYB2
         pqi120XoNnFfTBGrkpnarZLwCJ5e5gc+1Ze4paLcJMSbDm6bBFXCN4DpvVIF3dNeghsu
         iSCOXe6Z/KdPp3PayOvhPAc8qa1aXMBPDk+W+k2KWTpLKIsxyW9eWENVkN8oxUEypJpk
         O4fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tL4VfgwlDyDUr9BzKwvX+Wlq1Uye6A45m0finKd839E=;
        b=gRJ656UeJqcO3/im0U+vdYsNLOGMVGwikw9YtSbreCfPnI9hzrK7G89jwVxdKqBSQC
         rzayRQmQczW3RnKAGUd7raxRm1mnhsMlMihMR//a+4h8MmDDrXpH501stGTDruHbLqnE
         84Ef2fFG8rULmjIcP70TKkvr8cCTL2ZCyAhUzLyJtYnFiW58FbgK4M69clyhAUnwOKEH
         q1cupiWxBVMXCCv5maGHYDfUxv9ajnpmyCswugF3GaVRN7esdso7UPk1g6n+4I6sOgk5
         wB5Cvh4lMAwpiprSH/7N0Gk9rF4V1H4WaWDGf98pokqVx8/gmC21FVEoP1oJX//BGgs9
         qECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tL4VfgwlDyDUr9BzKwvX+Wlq1Uye6A45m0finKd839E=;
        b=Fn5qSdXXvW12jC+L+5GrIxlEHZvH/X3SPRgQBdFU3s3ZA+xhCfgnarygH/6YtqtM9Y
         qO7f6tR81YEW92yy/xRqnPtMtXe5Ad1uya6iosxaoTwEq/fAENnN0lYkIj6WN0zJjchd
         FtBL6trIZt4IG+Z+kT9qjvv0EMV0SYDlOOZcoHssDnxPeFCpyYKr+Pdr1DlMtVAsEk2L
         3TNAs0s4ygJYY1FgvKHhg7gAHMMvoPVilZcOFTMy4PMPMyC/uATADLvtGesGNE8ehwBE
         wISVwEwr2bNoSgPJXw+ujp2TjAdCawXgep+ISI9GYA9MFrXP25XNwPwBV8OH1nXmVpgE
         YL1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqe+9+XDkcwIGdrWIUG+SwEQZuu06KBfKuA5lWim49cPJw+tfA
	l0YkmS7zmHbk9yYTgbgQ6NY=
X-Google-Smtp-Source: APXvYqw4HBenaWrTHMIFJudPEdKE7voCF1Aa7q+LJY0YfD/wz6L2prOxQkRKO3jXs7NTmWLMtRU4iQ==
X-Received: by 2002:ab0:154d:: with SMTP id p13mr12508537uae.61.1574190598870;
        Tue, 19 Nov 2019 11:09:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e24d:: with SMTP id w13ls2807775vse.0.gmail; Tue, 19 Nov
 2019 11:09:58 -0800 (PST)
X-Received: by 2002:a05:6102:309a:: with SMTP id l26mr22329446vsb.176.1574190598369;
        Tue, 19 Nov 2019 11:09:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574190598; cv=none;
        d=google.com; s=arc-20160816;
        b=qtRfCipnkTiKHFZ19RrZ7Qr/G960mgxQ4bjx7rqrT+dESPr6HRrRvJFNc/sxdpu4KO
         +608n/ODTs0PI4kZ5onwPP52r+YB914ZOJntSdqbVJsfIV6QXW+XcrKgb1mEim+waPsz
         7OWmSmSOhgoCFQI55kVCAzuvfGe2xYfPqcMeBgpa6ehwHxGolYJNEp/LI1JAnKTnC6Ia
         y7nG3R1KdYW85msI5NoAi21TgAIZgcSvqIWy5OxY5sj2hK0X0OGWg3sf3kK3W7S3XHTh
         ONc+wpV2wrhx3okCmt/zSJDIwjViBPqiLw0Pc4cW86qU6bfnKDv88KpmvQQJ82iC3uU9
         hhEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=NpztbVsp66xfRIH7MFVa7+rbltvFMJIws2a047vs1vs=;
        b=AcIcrFRU7m/2WaFuPz/QATt78K6WYbvlhE4bkTpgg9S6nLe6yT42QoMbikd7pfMfNr
         OC0cgT+AKA4jqJvmZvBxlTqKiDmH4hKi7Ne55oKZVYwLISeg4WMRVy608ej5/J0S7mAW
         EkyP2xzM5FE2JTkIQEtkp2viqZKmvg9gOCP2I+ZE2uT9b6gDVv0nY3rlj3Em1UDBZpjY
         qUXQp1g4FVVPSFum/Dg51Pt6eYmKL9Yacyd5pnYNS5P3+hWXCUmBXDkft9ljW+gB3Swm
         vDvZONhAT2rOt+fmnEZAcGOzyl3wnoE6ew2au0XZLGvEebtRx/vaQvg8phreF/JmfVZp
         QAyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id o206si1134723vka.4.2019.11.19.11.09.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Nov 2019 11:09:57 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Nov 2019 11:09:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,219,1571727600"; 
   d="gz'50?scan'50,208,50";a="209294093"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 11:09:52 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iX8sp-000IMu-Ux; Wed, 20 Nov 2019 03:09:51 +0800
Date: Wed, 20 Nov 2019 03:09:44 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 4/5] videodev2.h: add V4L2_BUF_FLAG_TOO_SMALL flag
Message-ID: <201911200312.LR4p87da%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rd4nggi7hc6zyalk"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--rd4nggi7hc6zyalk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
In-Reply-To: <20191119113457.57833-5-hverkuil-cisco@xs4all.nl>
References: <20191119113457.57833-5-hverkuil-cisco@xs4all.nl>
TO: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Hi Hans,

I love your patch! Yet something to improve:

[auto build test ERROR on linuxtv-media/master]
[also build test ERROR on next-20191119]
[cannot apply to v5.4-rc8]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Hans-Verkuil/v4l2-ctrls-add-support-for-v4l2_fract-types/20191119-235023
base:   git://linuxtv.org/media_tree.git master
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 0213adde218530bc31e5c4e50b49704c6bb2f2e9)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/media/common/videobuf2/videobuf2-v4l2.c:310:28: error: use of undeclared identifier 'V4L2_BUF_FLAG_ERROR_TOO_SMALL'; did you mean 'VB2_BUF_STATE_ERROR_TOO_SMALL'?
           vbuf->flags = b->flags & ~V4L2_BUFFER_MASK_FLAGS;
                                     ^
   drivers/media/common/videobuf2/videobuf2-v4l2.c:47:6: note: expanded from macro 'V4L2_BUFFER_MASK_FLAGS'
                                    V4L2_BUF_FLAG_ERROR_TOO_SMALL | \
                                    ^
   include/media/videobuf2-core.h:230:2: note: 'VB2_BUF_STATE_ERROR_TOO_SMALL' declared here
           VB2_BUF_STATE_ERROR_TOO_SMALL,
           ^
   drivers/media/common/videobuf2/videobuf2-v4l2.c:531:15: error: use of undeclared identifier 'V4L2_BUF_FLAG_ERROR_TOO_SMALL'; did you mean 'VB2_BUF_STATE_ERROR_TOO_SMALL'?
           b->flags &= ~V4L2_BUFFER_MASK_FLAGS;
                        ^
   drivers/media/common/videobuf2/videobuf2-v4l2.c:47:6: note: expanded from macro 'V4L2_BUFFER_MASK_FLAGS'
                                    V4L2_BUF_FLAG_ERROR_TOO_SMALL | \
                                    ^
   include/media/videobuf2-core.h:230:2: note: 'VB2_BUF_STATE_ERROR_TOO_SMALL' declared here
           VB2_BUF_STATE_ERROR_TOO_SMALL,
           ^
   2 errors generated.

vim +310 drivers/media/common/videobuf2/videobuf2-v4l2.c

3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  172  
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  173  static int vb2_fill_vb2_v4l2_buffer(struct vb2_buffer *vb, struct v4l2_buffer *b)
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  174  {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  175  	struct vb2_queue *q = vb->vb2_queue;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  176  	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  177  	struct vb2_plane *planes = vbuf->planes;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  178  	unsigned int plane;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  179  	int ret;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  180  
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  181  	ret = __verify_length(vb, b);
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  182  	if (ret < 0) {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  183  		dprintk(1, "plane parameters verification failed: %d\n", ret);
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  184  		return ret;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  185  	}
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  186  	if (b->field == V4L2_FIELD_ALTERNATE && q->is_output) {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  187  		/*
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  188  		 * If the format's field is ALTERNATE, then the buffer's field
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  189  		 * should be either TOP or BOTTOM, not ALTERNATE since that
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  190  		 * makes no sense. The driver has to know whether the
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  191  		 * buffer represents a top or a bottom field in order to
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  192  		 * program any DMA correctly. Using ALTERNATE is wrong, since
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  193  		 * that just says that it is either a top or a bottom field,
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  194  		 * but not which of the two it is.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  195  		 */
8720427c198b6d drivers/media/v4l2-core/videobuf2-v4l2.c        Mauro Carvalho Chehab   2016-10-18  196  		dprintk(1, "the field is incorrectly set to ALTERNATE for an output buffer\n");
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  197  		return -EINVAL;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  198  	}
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  199  	vbuf->sequence = 0;
394dc588809158 drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-30  200  	vbuf->request_fd = -1;
137272cdf7cc5b drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2019-10-11  201  	vbuf->is_held = false;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  202  
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  203  	if (V4L2_TYPE_IS_MULTIPLANAR(b->type)) {
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  204  		switch (b->memory) {
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  205  		case VB2_MEMORY_USERPTR:
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  206  			for (plane = 0; plane < vb->num_planes; ++plane) {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  207  				planes[plane].m.userptr =
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  208  					b->m.planes[plane].m.userptr;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  209  				planes[plane].length =
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  210  					b->m.planes[plane].length;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  211  			}
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  212  			break;
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  213  		case VB2_MEMORY_DMABUF:
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  214  			for (plane = 0; plane < vb->num_planes; ++plane) {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  215  				planes[plane].m.fd =
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  216  					b->m.planes[plane].m.fd;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  217  				planes[plane].length =
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  218  					b->m.planes[plane].length;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  219  			}
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  220  			break;
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  221  		default:
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  222  			for (plane = 0; plane < vb->num_planes; ++plane) {
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  223  				planes[plane].m.offset =
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  224  					vb->planes[plane].m.offset;
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  225  				planes[plane].length =
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  226  					vb->planes[plane].length;
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  227  			}
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  228  			break;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  229  		}
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  230  
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  231  		/* Fill in driver-provided information for OUTPUT types */
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  232  		if (V4L2_TYPE_IS_OUTPUT(b->type)) {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  233  			/*
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  234  			 * Will have to go up to b->length when API starts
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  235  			 * accepting variable number of planes.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  236  			 *
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  237  			 * If bytesused == 0 for the output buffer, then fall
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  238  			 * back to the full buffer size. In that case
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  239  			 * userspace clearly never bothered to set it and
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  240  			 * it's a safe assumption that they really meant to
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  241  			 * use the full plane sizes.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  242  			 *
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  243  			 * Some drivers, e.g. old codec drivers, use bytesused == 0
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  244  			 * as a way to indicate that streaming is finished.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  245  			 * In that case, the driver should use the
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  246  			 * allow_zero_bytesused flag to keep old userspace
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  247  			 * applications working.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  248  			 */
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  249  			for (plane = 0; plane < vb->num_planes; ++plane) {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  250  				struct vb2_plane *pdst = &planes[plane];
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  251  				struct v4l2_plane *psrc = &b->m.planes[plane];
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  252  
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  253  				if (psrc->bytesused == 0)
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  254  					vb2_warn_zero_bytesused(vb);
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  255  
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  256  				if (vb->vb2_queue->allow_zero_bytesused)
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  257  					pdst->bytesused = psrc->bytesused;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  258  				else
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  259  					pdst->bytesused = psrc->bytesused ?
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  260  						psrc->bytesused : pdst->length;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  261  				pdst->data_offset = psrc->data_offset;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  262  			}
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  263  		}
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  264  	} else {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  265  		/*
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  266  		 * Single-planar buffers do not use planes array,
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  267  		 * so fill in relevant v4l2_buffer struct fields instead.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  268  		 * In videobuf we use our internal V4l2_planes struct for
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  269  		 * single-planar buffers as well, for simplicity.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  270  		 *
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  271  		 * If bytesused == 0 for the output buffer, then fall back
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  272  		 * to the full buffer size as that's a sensible default.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  273  		 *
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  274  		 * Some drivers, e.g. old codec drivers, use bytesused == 0 as
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  275  		 * a way to indicate that streaming is finished. In that case,
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  276  		 * the driver should use the allow_zero_bytesused flag to keep
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  277  		 * old userspace applications working.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  278  		 */
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  279  		switch (b->memory) {
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  280  		case VB2_MEMORY_USERPTR:
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  281  			planes[0].m.userptr = b->m.userptr;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  282  			planes[0].length = b->length;
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  283  			break;
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  284  		case VB2_MEMORY_DMABUF:
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  285  			planes[0].m.fd = b->m.fd;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  286  			planes[0].length = b->length;
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  287  			break;
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  288  		default:
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  289  			planes[0].m.offset = vb->planes[0].m.offset;
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  290  			planes[0].length = vb->planes[0].length;
0af4e80bf24a3c drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-08-14  291  			break;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  292  		}
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  293  
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  294  		planes[0].data_offset = 0;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  295  		if (V4L2_TYPE_IS_OUTPUT(b->type)) {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  296  			if (b->bytesused == 0)
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  297  				vb2_warn_zero_bytesused(vb);
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  298  
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  299  			if (vb->vb2_queue->allow_zero_bytesused)
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  300  				planes[0].bytesused = b->bytesused;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  301  			else
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  302  				planes[0].bytesused = b->bytesused ?
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  303  					b->bytesused : planes[0].length;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  304  		} else
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  305  			planes[0].bytesused = 0;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  306  
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  307  	}
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  308  
db6e8d57e2cd9f drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2018-05-21  309  	/* Zero flags that we handle */
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06 @310  	vbuf->flags = b->flags & ~V4L2_BUFFER_MASK_FLAGS;
959c3ef336fc36 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-11-03  311  	if (!vb->vb2_queue->copy_timestamp || !V4L2_TYPE_IS_OUTPUT(b->type)) {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  312  		/*
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  313  		 * Non-COPY timestamps and non-OUTPUT queues will get
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  314  		 * their timestamp and timestamp source flags from the
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  315  		 * queue.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  316  		 */
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  317  		vbuf->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  318  	}
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  319  
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  320  	if (V4L2_TYPE_IS_OUTPUT(b->type)) {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  321  		/*
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  322  		 * For output buffers mask out the timecode flag:
dfadf0262730d5 drivers/media/v4l2-core/videobuf2-v4l2.c        Ricardo Ribalda Delgado 2016-06-20  323  		 * this will be handled later in vb2_qbuf().
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  324  		 * The 'field' is valid metadata for this output buffer
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  325  		 * and so that needs to be copied here.
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  326  		 */
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  327  		vbuf->flags &= ~V4L2_BUF_FLAG_TIMECODE;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  328  		vbuf->field = b->field;
137272cdf7cc5b drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2019-10-11  329  		if (!(q->subsystem_flags & VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF))
137272cdf7cc5b drivers/media/common/videobuf2/videobuf2-v4l2.c Hans Verkuil            2019-10-11  330  			vbuf->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  331  	} else {
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  332  		/* Zero any output buffer flags as this is a capture buffer */
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  333  		vbuf->flags &= ~V4L2_BUFFER_OUT_FLAGS;
327553ae8eb87a drivers/media/v4l2-core/videobuf2-v4l2.c        Philipp Zabel           2017-12-08  334  		/* Zero last flag, this is a signal from driver to userspace */
327553ae8eb87a drivers/media/v4l2-core/videobuf2-v4l2.c        Philipp Zabel           2017-12-08  335  		vbuf->flags &= ~V4L2_BUF_FLAG_LAST;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  336  	}
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  337  
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  338  	return 0;
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  339  }
3c5be988e0b6a2 drivers/media/v4l2-core/videobuf2-v4l2.c        Junghak Sung            2015-10-06  340  

:::::: The code at line 310 was first introduced by commit
:::::: 3c5be988e0b6a2f368e1659083b39e1f7ac909aa [media] media: videobuf2: Move v4l2-specific stuff to videobuf2-v4l2

:::::: TO: Junghak Sung <jh1009.sung@samsung.com>
:::::: CC: Mauro Carvalho Chehab <mchehab@osg.samsung.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911200312.LR4p87da%25lkp%40intel.com.

--rd4nggi7hc6zyalk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
upHjVP4XPSRSM6oWAwA=

--rd4nggi7hc6zyalk--
