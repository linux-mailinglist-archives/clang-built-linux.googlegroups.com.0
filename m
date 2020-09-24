Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFXAWH5QKGQEFVJF7TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C2C276E34
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 12:08:23 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id ng5sf4935615pjb.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 03:08:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600942102; cv=pass;
        d=google.com; s=arc-20160816;
        b=BFFsoeXpEM6v6NS3kx7QwAPuBteeXExUmQOrhkrHC382hBRO9UFue/mMPV0QCqSkiE
         Rpo+sk6W/8KwfHKh8hEdk/Ml2RnnmE+7GpE2zT4eTR5vgEsaOqatGmuQlJK+iyVDIMF2
         Mu9YtlGdNC7Mj5QCNIBvm87G2dzwk8NTO0IGsylas1viV0qgmUKJC1jBc7/OFYSwR9Dv
         Q2PY5RbgApQwBR8vg3bZ4KGCd4tsl1/8/7TJMt4HsKwzj8OexJPBiJUvkZi/B2Mac97F
         lIWyoHxp1zHi9jCHXHzTctZEbmwneCTGfM7SfwpuBTWkrHjdhYbvYSRq9B29GI1UBrtu
         m2cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=8ImfdMZWrOQdStQk6/sqb1yMrOEzWCpzTqsR3usqeO8=;
        b=vw49afg1Oob0QcKbIekSDiINOcIeeHA7kAYP65H93p+MoDXyJ8ML4uAcenHuSE1ffx
         yZGJ7uQ+KpdeEcBhfGfxUpNc7bf4XgnPaVbgeuSKw43/arMRL1P4GPi8GBO3Nj6HapQT
         3gIF8rWi/eY5iZdiq1OZeeA9KlkH0LaGmAy16HewfWimQetsuK4f9NwVMuj/WKsE+Szs
         hQRHm3dBL97WpCYryaRSL6lCHaDBJQIkmCRCEHzVgGNwlOKSBrkfl+QNRMxvPRXZCJzs
         XVz0gXj99g99Gww48vM3KlQW2OJaK67M1AeIBcCwIeBWiF2OdA0BgoBL1uhTwVe65chl
         0c+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8ImfdMZWrOQdStQk6/sqb1yMrOEzWCpzTqsR3usqeO8=;
        b=MJx/djUXnER//NwqxeMwSffllvEvWxarcOzaiw2YDw0Nk1aPUbY9R0VzyWPhP111uA
         cz0XjasIQaifSMuXrmj5rLOPsqieBXmoq7A4ejvZvx3l0v6r+B5ubAtqC+z+pDmN/ahh
         LbMnTB+LX3xK0gQV1DQt3/2/DmM5UQIdbIFCXak2RvYkhEu6btQMb8IS8uxbRlZgIcyv
         UkLRbG/trS7YRnydMGbO4TD/6wj6TqgrKShVsv8qzd7rEIuXNBUW8tapW5F6jYUbE1lc
         K4IVPod5e60n0OBV+t8np1ewMewZ0eWrN5Nr64UdCqPeI4zelVDmBdvJYGgcBTTmzVbh
         Mkxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8ImfdMZWrOQdStQk6/sqb1yMrOEzWCpzTqsR3usqeO8=;
        b=f/R/693wQ4B8w9uifzvkabBIGfA2j0bS5B3g5aJeBgk+PHy7cwHTSDQ8P/ciZ+Guw+
         pDJrUv0W7svStvqDDj8yJLZbaPTvFRUhMqwlEKKm5w+pcznIpjlVsumddNp2318ltJNM
         e0ys0LZ9v9duzvqMp+Qx5v7Sa5zZX9g3vFmBCamfleg2T202jwt9NAhL916AXsBvTOjL
         Hd6hivczKOmq7Y+jbbskiWG8cgRkzBAjLrEyb5T2ibJyoKqtc5CntIrz5mq5HuUIOm/p
         ZCgcmDGCh+vWUx/nRn09hrB4uvhPSZ4Cg1A8cFFpzoGKAKF9ScwSFE3jViZWuFAo68xI
         rtqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315W6eQSeGPZqeTY45PE7dnGROEsWA/XmrY4a1v11BVMb/yxFk+
	CcSzFeIbK3bkwQeFwN7+qbQ=
X-Google-Smtp-Source: ABdhPJweba8RSW3oXvD2QSFZkixeTfRno3ttMtOFl5lMt2R9cxEVjJsAg8DEBPTKQ7GxOMDaiNX/OA==
X-Received: by 2002:a62:8806:0:b029:13c:d37c:5e47 with SMTP id l6-20020a6288060000b029013cd37c5e47mr3907400pfd.13.1600942102324;
        Thu, 24 Sep 2020 03:08:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:774a:: with SMTP id s71ls1064730pfc.11.gmail; Thu, 24
 Sep 2020 03:08:21 -0700 (PDT)
X-Received: by 2002:aa7:8512:0:b029:13c:1611:653e with SMTP id v18-20020aa785120000b029013c1611653emr3809927pfn.16.1600942101669;
        Thu, 24 Sep 2020 03:08:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600942101; cv=none;
        d=google.com; s=arc-20160816;
        b=X2M24QJ2J+95znDmTg2JMeec4MW2JAZoEJz43ZvRk8IOSaVxpsiVbOpjH2n1vNnEA6
         rijKfHZlVgusQxzq16MkInrXSqEdrJvufY66/9PgAGeJNk55vUEa1157CVYpflK3SzG+
         4+6HvtkxZ3rdQCtyCtZE9EfwXmK8n6xI/FrG8QlUEwliXLOs57D5oa9XYSbljBYhQ6Jg
         d1ZznfofoGEgvT5Ij4+6SiieBKh6iqkjOG5Js4t02AQDV/GOUz0EYdQozdwKMtD9LYSA
         SVH1H8IDpxBqy96qOh6FguAXAcOR7nWiTiggInGxbRBKZuMFOFKNbqfMIzcJsqr0TWQ9
         z1qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Fjo8IOo86Pi64Syz2JHFa4Y6AAc+SQSq4eR4mEDplzk=;
        b=ZrP2hEZEYql4QRaoeRXvWY2sZBbH3oKnXz7rawcWloJKeMrVlgod7Vrg635+Jf2xFw
         PSxnBN9uqg1bDxe1MXk6TE8R63USuXp9ChE/qUfLGp+Am/CVCd/c4XWu17B4EczXJE5O
         /T1de3q55Nd3Sh6ezTRnHNOYhqfic9+BMqclZ11fe/vIxTMZvmTNAPrSP5lpSSdFj0DE
         Q8i8YoZRsoc/weUTDFPQHVq5R7q5mthgUFulMmNb8soJAxYbNHXVEF9CmwF4Nl5mT25J
         XQaJsNW9N7VEyYg82YD77dGf6xJKWBrFyPyJ/n8D/vlC+suLZNSCzMW8+dm5D3HxHrha
         CFgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id mm16si178887pjb.2.2020.09.24.03.08.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 03:08:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: mMpg+UId7BGE4J2RGXb65oFqe7zLRYZG2KEq3T8TQ1s+j51uBAzIVbmrYIJRKLQLEGQaWg7FYw
 EWze26+NBa6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="148813145"
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; 
   d="gz'50?scan'50,208,50";a="148813145"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Sep 2020 03:08:20 -0700
IronPort-SDR: ltS8KsMoveT7AVKF35cFUccKgRc+hc8W5ugDgycq13gULlUR713Kx/bFbK2WQxU9AjYAHMfAh9
 Jf62XGraYDOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,297,1596524400"; 
   d="gz'50?scan'50,208,50";a="310279335"
Received: from lkp-server01.sh.intel.com (HELO 9f27196b5390) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 24 Sep 2020 03:08:19 -0700
Received: from kbuild by 9f27196b5390 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLOAk-0000ei-CW; Thu, 24 Sep 2020 10:08:18 +0000
Date: Thu, 24 Sep 2020 18:08:12 +0800
From: kernel test robot <lkp@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [mlankhorst:locking-rework 14/57]
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c:745:6: error: unused variable
 'ret'
Message-ID: <202009241804.Z2nKIebD%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="82I3+IH0IqGh5yIs"
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


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://people.freedesktop.org/~mlankhorst/linux locking-rework
head:   52869d8031d50e7db2478d516863f540250cfddd
commit: e71bcb7acfd61ffd7aa105bd57ee1eb81dc93fa5 [14/57] drm/i915: Reject UNSYNCHRONIZED for userptr
config: x86_64-randconfig-a016-20200924 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d6ac649ccda289ecc2d2c0cb51892d57e8ec328c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout e71bcb7acfd61ffd7aa105bd57ee1eb81dc93fa5
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gem/i915_gem_userptr.c:745:6: error: unused variable 'ret' [-Werror,-Wunused-variable]
           int ret;
               ^
>> drivers/gpu/drm/i915/gem/i915_gem_userptr.c:746:6: error: unused variable 'handle' [-Werror,-Wunused-variable]
           u32 handle;
               ^
>> drivers/gpu/drm/i915/gem/i915_gem_userptr.c:741:31: error: unused variable 'lock_class' [-Werror,-Wunused-variable]
           static struct lock_class_key lock_class;
                                        ^
   3 errors generated.
--
>> drivers/gpu/drm/i915/gem/i915_gem_userptr.c:746:6: error: unused variable 'handle' [-Werror,-Wunused-variable]
           u32 handle;
               ^
>> drivers/gpu/drm/i915/gem/i915_gem_userptr.c:745:6: error: unused variable 'ret' [-Werror,-Wunused-variable]
           int ret;
               ^
>> drivers/gpu/drm/i915/gem/i915_gem_userptr.c:741:31: error: unused variable 'lock_class' [-Werror,-Wunused-variable]
           static struct lock_class_key lock_class;
                                        ^
   3 errors generated.

git remote add mlankhorst git://people.freedesktop.org/~mlankhorst/linux
git fetch --no-tags mlankhorst locking-rework
git checkout e71bcb7acfd61ffd7aa105bd57ee1eb81dc93fa5
vim +/ret +745 drivers/gpu/drm/i915/gem/i915_gem_userptr.c

e71bcb7acfd61f drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhorst 2020-09-11  700  
a5a5ae2abe3ba7 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2018-02-08  701  /*
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  702   * Creates a new mm object that wraps some normal memory from the process
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  703   * context - user memory.
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  704   *
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  705   * We impose several restrictions upon the memory being mapped
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  706   * into the GPU.
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  707   * 1. It must be page aligned (both start/end addresses, i.e ptr and size).
ec8b0dd51c50e3 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-07-21  708   * 2. It must be normal system memory, not a pointer into another map of IO
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  709   *    space (e.g. it must not be a GTT mmapping of another object).
ec8b0dd51c50e3 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-07-21  710   * 3. We only allow a bo as large as we could in theory map into the GTT,
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  711   *    that is we limit the size to the total size of the GTT.
ec8b0dd51c50e3 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-07-21  712   * 4. The bo is marked as being snoopable. The backing pages are left
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  713   *    accessible directly by the CPU, but reads and writes by the GPU may
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  714   *    incur the cost of a snoop (unless you have an LLC architecture).
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  715   *
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  716   * Synchronisation between multiple users and the GPU is left to userspace
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  717   * through the normal set-domain-ioctl. The kernel will enforce that the
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  718   * GPU relinquishes the VMA before it is returned back to the system
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  719   * i.e. upon free(), munmap() or process termination. However, the userspace
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  720   * malloc() library may not immediately relinquish the VMA after free() and
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  721   * instead reuse it whilst the GPU is still reading and writing to the VMA.
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  722   * Caveat emptor.
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  723   *
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  724   * Also note, that the object created here is not currently a "first class"
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  725   * object, in that several ioctls are banned. These are the CPU access
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  726   * ioctls: mmap(), pwrite and pread. In practice, you are expected to use
cc917ab43541db drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2015-10-13  727   * direct access via your pointer rather than use those ioctls. Another
cc917ab43541db drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2015-10-13  728   * restriction is that we do not allow userptr surfaces to be pinned to the
cc917ab43541db drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2015-10-13  729   * hardware and so we reject any attempt to create a framebuffer out of a
cc917ab43541db drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2015-10-13  730   * userptr.
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  731   *
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  732   * If you think this is a good interface to use to pass GPU memory between
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  733   * drivers, please use dma-buf instead. In fact, wherever possible use
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  734   * dma-buf instead.
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  735   */
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  736  int
a5a5ae2abe3ba7 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2018-02-08  737  i915_gem_userptr_ioctl(struct drm_device *dev,
a5a5ae2abe3ba7 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2018-02-08  738  		       void *data,
a5a5ae2abe3ba7 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2018-02-08  739  		       struct drm_file *file)
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  740  {
7867d709959927 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Chris Wilson      2019-10-22 @741  	static struct lock_class_key lock_class;
0031fb96859caa drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin    2016-11-04  742  	struct drm_i915_private *dev_priv = to_i915(dev);
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  743  	struct drm_i915_gem_userptr *args = data;
e71bcb7acfd61f drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhorst 2020-09-11  744  	struct drm_i915_gem_object __maybe_unused *obj;
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16 @745  	int ret;
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16 @746  	u32 handle;
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  747  
0031fb96859caa drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin    2016-11-04  748  	if (!HAS_LLC(dev_priv) && !HAS_SNOOP(dev_priv)) {
ca377809d657ea drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin    2016-03-02  749  		/* We cannot support coherent userptr objects on hw without
ca377809d657ea drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin    2016-03-02  750  		 * LLC and broken snooping.
ca377809d657ea drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin    2016-03-02  751  		 */
ca377809d657ea drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin    2016-03-02  752  		return -ENODEV;
ca377809d657ea drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin    2016-03-02  753  	}
ca377809d657ea drivers/gpu/drm/i915/i915_gem_userptr.c     Tvrtko Ursulin    2016-03-02  754  
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  755  	if (args->flags & ~(I915_USERPTR_READ_ONLY |
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  756  			    I915_USERPTR_UNSYNCHRONIZED))
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  757  		return -EINVAL;
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  758  
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  759  	/*
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  760  	 * XXX: There is a prevalence of the assumption that we fit the
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  761  	 * object's page count inside a 32bit _signed_ variable. Let's document
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  762  	 * this and catch if we ever need to fix it. In the meantime, if you do
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  763  	 * spot such a local variable, please consider fixing!
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  764  	 *
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  765  	 * Aside from our own locals (for which we have no excuse!):
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  766  	 * - sg_table embeds unsigned int for num_pages
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  767  	 * - get_user_pages*() mixed ints with longs
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  768  	 */
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  769  
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  770  	if (args->user_size >> PAGE_SHIFT > INT_MAX)
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  771  		return -E2BIG;
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  772  
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  773  	if (overflows_type(args->user_size, obj->base.size))
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  774  		return -E2BIG;
24860ad748688b drivers/gpu/drm/i915/gem/i915_gem_userptr.c Matthew Auld      2020-01-17  775  
c11c7bfd213495 drivers/gpu/drm/i915/i915_gem_userptr.c     Matthew Auld      2018-05-02  776  	if (!args->user_size)
c11c7bfd213495 drivers/gpu/drm/i915/i915_gem_userptr.c     Matthew Auld      2018-05-02  777  		return -EINVAL;
c11c7bfd213495 drivers/gpu/drm/i915/i915_gem_userptr.c     Matthew Auld      2018-05-02  778  
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  779  	if (offset_in_page(args->user_ptr | args->user_size))
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  780  		return -EINVAL;
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  781  
96d4f267e40f95 drivers/gpu/drm/i915/i915_gem_userptr.c     Linus Torvalds    2019-01-03  782  	if (!access_ok((char __user *)(unsigned long)args->user_ptr, args->user_size))
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  783  		return -EFAULT;
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  784  
e71bcb7acfd61f drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhorst 2020-09-11  785  	if (args->flags & I915_USERPTR_UNSYNCHRONIZED)
e71bcb7acfd61f drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhorst 2020-09-11  786  		return -ENODEV;
e71bcb7acfd61f drivers/gpu/drm/i915/gem/i915_gem_userptr.c Maarten Lankhorst 2020-09-11  787  
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  788  	if (args->flags & I915_USERPTR_READ_ONLY) {
0b100760e3e8cb drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2018-07-12  789  		/*
0b100760e3e8cb drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2018-07-12  790  		 * On almost all of the older hw, we cannot tell the GPU that
0b100760e3e8cb drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2018-07-12  791  		 * a page is readonly.
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  792  		 */
e6ba76480299a0 drivers/gpu/drm/i915/gem/i915_gem_userptr.c Chris Wilson      2019-12-21  793  		if (!dev_priv->gt.vm->has_read_only)
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  794  			return -ENODEV;
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  795  	}
5cc9ed4b9a7ac5 drivers/gpu/drm/i915/i915_gem_userptr.c     Chris Wilson      2014-05-16  796  

:::::: The code at line 745 was first introduced by commit
:::::: 5cc9ed4b9a7ac579362ccebac67f7a4cdb36de06 drm/i915: Introduce mapping of user pages into video memory (userptr) ioctl

:::::: TO: Chris Wilson <chris@chris-wilson.co.uk>
:::::: CC: Daniel Vetter <daniel.vetter@ffwll.ch>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009241804.Z2nKIebD%25lkp%40intel.com.

--82I3+IH0IqGh5yIs
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
3esPp6HehADLZt0ug4ZdHtzDvfvsL336QRxBowzKc93A1M+T2R4IX/dGEkSJamf5UgV9tnkW
RqnIzJTGGlkBEigcNehOwKr5GiXKhBUcGrrOP6DxQqcqOmGWe15UVbyMHP7RvY/jqTi8ujxP
NQvHGuXzbkKiH4fH/Wvnd+Y0I4lbsS6MROMKPK0EHFMGK1cYj5apsL1Kej6+uXRaldgA40ID
D5JkZ6ZbODfPxhdXXJDkQHF+fnHBP3t1dXnDB7cPNHiH6G++qDNV3sl+tKyvb67O+awMiqRK
Ly5OOaVX4TsPCmdSABFoYq7uS5CXnhsX9vtktXEFAj9RSecJMUvcMBIExGFtP02fy/O8dJ6o
zSEjAo76WZGzBldE10ZiSXog0gs8EA3eltm3QkvQOSZsCIARDA0/XHkXgf58FYgNWD9BiXG+
DILJ8YC7fJDIyukfYR5n2AHtiL+IIm8C/WofgSCIOQAVMya19fKOkku66jjefYGoI69YBuXb
ptdWW4H+fRNPjEsZVVRetatW73C5Yn5/Un38+U58fxiGupxR3kd9c5MgbRd5RgXYR4jk5mt+
3xZr0Y6us5Q8pLSZ0FGNVYgdkST5SM8qT8sahd1yZ6fiGsZy1Gcjth4DoiXri9LUSOtozk1P
j+dNIDSNRRlvRJFYVUwHhCG2hnD+xdkfEZs0JA0MPgE/7XVp4JLCdT0utm/o9rp5fUTH09fd
Yf9mXPN0r3eErBdIhen8OjZ/tQsylag0u1K4e3162++ejLTDWVjmnkCXjrw/uvVYNFQPOUC7
SPWb1Gzp/nTZjAIXeJkTipTfLjKOv5UFbJ2Jna9ODm+bR3SudjZuVRuSOvyUhol2ImClsr0N
NJgMilsMSBE2aapp4wgCeR6TfgKkyvVKXhpO9+OwzFt2tH0X3+O+XH+nUcy0C1GljRVlq/zG
tcsPIGzTWdnTVGjQ0YdgUwRL3h7U0ymJlrcL9VSpCObrfKR607F2NkDVL4hv0UPkYFVvBTqd
BHkDkmpptWeb4QkYThMX0k5Te2oUFIfsTEqHk0PyvWxH5RtGK6YN2zR/uNVRrxPCn5xqooM1
CTg3Q5eBDeAaXsZVXvJyQBXn2kbGX3hoWUJXlcSpcW2MAMnzg7pM7LVcBq41POjsHo0K3RjY
ZW6b1ztvC1NCl3nQMH+n5Py6IhPAOovaFcYKS9cbQwgSSYzXwyC8g1ZRVmz0OOLyCtNJBtqa
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
H4BxdscbC28zveINnc5EMMDIEIMxYE2GDoSwHaRG5E7IQspKx+QMSdFihRhRMSlsabv+LRWI
p81hc4KawyPe+hscXX2A+Ih4WZBHgb0GZ+6oKbtTbBXiGvg1yXUtSeMgH6OO5+SfMniNZ/Dm
OIISJhJLddD1v3TFCxpWy5GbU6/TYC0lBUVxFzm+s8IQoT/CzBiSgBqCslzCtYuCBxn2+nNw
dGZ1gGuGnUDERncVZ+/tUoAbb+4oMnfKGleSAMRZt2F0KqG/vHDTCnYMnAvgWXDPV5EgP7xh
7bu8E8sYE8qIlF1qRsjj2FkpijlP01m7p9a2Y5DtKq7neIlT/QKZyuGFdwI2uSJLSeOB9tCv
xCLB3Fb0vZFSmWesRtCp8t4CBqo12bTNcwKT/dPlyaSZTvU5oQTVRG9o3vhFQddXeYKdmSxA
h0xhZ5Z3/Iid9vDuTajXa6lWIulQ4/HZ1c3IeorLWzN1Fry2X+MwavN5EJ+d34zp6hFle0N8
EJhSnK1MNqgVlP0zVvZS4/qXwsYVxQCOcwdDjOXH9SXHWKxjwFny7jHh0kgrn7rykWW7FQY9
oJXFkYRCvV6G/pSnrXAy8zwgq4mHevBYNI1RUWuVTcOWs5IJXQX6lKY0jXPPrseXQP+HELkD
40yEFSbJyni6vuaye2h48xKoRzT+e7KexmMpV9dcdOeGErcZPVKIYxds9CjtX2/D9L0dHyI5
I2TIN8t5ywpEKC8d6bfJVpglsGxzNj12j7YvbfqTwlzK+k1qvX0/oGSEsn2A+fw3X7daxogm
0/0sZA5gpuzMkByYs98SMlrT3nXN3nICkGXaYmBP00kaeGeZlyqjsjebJdlhWBqbVyyCfOko
5aBsA1htY92bSVFr9l0gU9YtvE0QJdou+TcgWrzkK5uUQjnY2yBJBbxYlJH02bg9/YFW9l5d
LeF0QPeAWuoaTl3RZBHW/E2jVPjQbbSyaqiYJGmcUaVaP4X3+ckgB8AG8JvOygn6JB3B615N
XirDwclPpoyUPoMwKSqXY5ZN0dvOozXyxyPTIZ0ZZPQ4//U7uiooeJ5FBAugqHPO/Ezo3klX
B07iWvrNmE0BGPZLEvo7axo7TbeOlV5ifjwmHJ36cpsSRYnulY4N0JpaX+gIYeOQ94yXC3lx
ZJXD2+ee6nuEV6a8I5ODYq2dRdXqo5geQaKL9jwnqzcfo06eyjDOdgLC9TwVJRduQG1N4zLF
wrbON5ZZVNnWJcrDlQdeQV7mxzi34e9tqTcw+B5kzZ7/bFYbgTLUeDPgSTYUpYGARX+0GTQj
eIy/XSM2gTG15lEM1F47wtHT0kmtIp2T/gMBBWiFJvYBAA==

--82I3+IH0IqGh5yIs--
