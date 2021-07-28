Return-Path: <clang-built-linux+bncBD26TVH6RINBBEOPQKEAMGQEBS7JVVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id C93673D84CE
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:40:50 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id f3-20020ab06f830000b02902a95451351dsf505154uav.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 17:40:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627432850; cv=pass;
        d=google.com; s=arc-20160816;
        b=hF9/mS4+jZTal6DDG/X3DeydfyjtDEFdsynn6lK7izvyg18Ay++BHDCEOM74A7VW+h
         U9y0eMgBNb4h4TLZHZ+QMEZJaU3NOWHkyshPn+GEGhe9LO/0JXGjnvuDb0w2qmmWBbhZ
         2yPW2INvNPu3lIgnHuVrM3DbN6F6vdLfs/cUEUEfnEUFElJEYdZGcbZzDzlcqInPNk0f
         aP1BM4tb8TdzGv6nFQGlmrzeGQjasNsWEZpJCnBNTzlcqPeEwWyWt+V88VqxgO335w26
         w5LuJJVj9z0AmoaO9JVRjMM8WoJnkD6qpWSXNUT2jrRiAMlhjBWRhRcPXIWit6jWKwD8
         dMEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:cc:to:references
         :subject:sender:dkim-signature;
        bh=I7CvNWs/J9dl+fbtcCIgk8RQY/Jkm+NdotFNjlgsN4c=;
        b=bzx+jOhliNmm2nWI2fwR53uT5T0RxgFr/fUDUpsO9ifQKGtHs3Nhr+xzs6Zk/elMuV
         ircxzZ+zjVQHVPqnzy8WuwCqr7rZaX79Z3t/N/OuKe0WGEeY9SycX/WVFgWmveARfytA
         8+aY+3GQ3fEolzeF4eLAB8Nq5ZRhUzQvmIL2tlXhIeMSAQFtPCc/heS0VIbS0pgcqlAx
         c+EZfRiU6joGYiRNrnx2/Kg12nIB7Q/EICx9CcTzHeIxE64f+vBveswh6oM4uTrsgxFZ
         j35v9x3KED690Dl4pmYJoHm/53eZsZY4QAOGsFk5QzRkcm1JsqlDzmZOGJJ8jU3e5HEd
         NYJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:references:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I7CvNWs/J9dl+fbtcCIgk8RQY/Jkm+NdotFNjlgsN4c=;
        b=PbIiZ07/9vxI7Do9FX80jFUPxtE3WaxTlh+Wbnp6fvq2PQiJ6cXp3nHV/ppfUVIdYN
         07WomX6VEzbybzpgjA6CFkee3rdwdpPCYYvzbvHessrAxdduh0qLDo17HI5R2vUqlFrL
         C/XCStQvisUyX11cQ1Adv+K6gm+KyN00MEbuAPICU6OnsDIPFYdhPY4qEhFTb8is50RG
         7PQPprrESSmGJVSMJ2h2YcvQRtJzc6je+Hn8e6upPYhc/X7knzPpMIYpGAoW1gmVsP0Q
         5XFZc5LfuncXaRr9kmfnNd3gcih06Ugds3UUJz2NWHiZ/RYQCna5H7BJ4wgoT9XEW8az
         PgzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:references:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I7CvNWs/J9dl+fbtcCIgk8RQY/Jkm+NdotFNjlgsN4c=;
        b=JX4uEXviAduRPI3gc+zsQBgNJQ3VzUP4p83tWJfZC6B9kIUZzZQmuTJPGERDES8nCy
         cNW6taVdBpLSjCHRbyE7ew9UCzeA+ltykS7nXq3RsUFj+dLzrF7LVlcftXJ38dyfdGti
         kZYJYteMThgrbTeR48fHUSpUvL9XXsNe6577krJhQfp8CyRgki48heJ74WlHq/JdcpGP
         lYXmnzYWUCm2/VxuiL9qsDYhfbwKesGDq3Mid1Xw5sEW1EqOKmiZsn1zHjA7KgKTEhd6
         Zmc8C6cVRRap4x8jKB+qn2kqptYu1mdRpS9GyUDGS8yXLcmS4v2FDAGJPbJJszmwyP7U
         nDkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rMrqjRmelQNVy3f0tacUEUJZ1rUOTlkVvb18HwlWPA4/dR6E0
	r4YcmyVsXm6RNh1UPmuNNMI=
X-Google-Smtp-Source: ABdhPJzSnIDydu2QA7pp8EzkYHtZlMUg72mfrc3Ssl7gkxZuXrKnY/WT/XpgsmNh08fvNGxoNo6s8A==
X-Received: by 2002:a05:6102:232f:: with SMTP id b15mr18584625vsa.44.1627432849740;
        Tue, 27 Jul 2021 17:40:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:a81:: with SMTP id n1ls65607vsg.8.gmail; Tue, 27
 Jul 2021 17:40:49 -0700 (PDT)
X-Received: by 2002:a05:6102:c0e:: with SMTP id x14mr19966440vss.47.1627432848872;
        Tue, 27 Jul 2021 17:40:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627432848; cv=none;
        d=google.com; s=arc-20160816;
        b=Qu6UE8cUldLGuBXQGsNa/wsX1DbnXjco4dVfmaQDY8ANBT1PhdkMrpTKMoflWE+hMn
         7DuIe6ghnMBmdsu7Vw9mgAm/uLqChDuhGTJakgG1Fyat2VUX3bPdRsC/MgVnIyT7tEyi
         UfJ0JGshRcYuC3UwA2h+F7Srw7gOW7ExpbB/RBBnL71jlPbLiPbHlb6mtFZCGHkKCbM5
         ATlT+txp1zw64aEO30LXYKnF1SqHCvJ1B/bBRRGRt9EalF6WMAF69Jeed/DJvA2qXkAL
         o+X/C0nMTJnStGT+RHa90nvzcoexD/IDQRRlEgNaBx4tF8fCUAd5fxH7TGkK/hjkXqHH
         c3WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:to:references:subject;
        bh=xUXpuyKRBq2ae9JVFSCNmC82WS8XwjtXbHB1IxFeIwo=;
        b=BjgL14o6rdoCFZRyWoc3ZtABzoB7Qkr9kVGhfjLwDwniSe8LFk5qzBeS4BbdDf1cQY
         9NqdIC8B3znSol0EZi6gszt+Xk4q5ef7OiFKhOJk0xepbZutNNKvom8L8w/902XxLPDZ
         6Y6llaZ1HXVz2hyAnZrxSewMCZK7Oba5+1t0/1dBuJ0E3VUXtrsMr2cNZ7vaeGjICIta
         1pz+JssYY7q5ocCPRUZBQ7r24ck/MaOxXJ1/mbSOLLEzJn9I4/1tshqO/3mQvdjYtuYU
         7FK16qwiP2bnojaY548TX9FZMmrUb6erAfgD1LlnyjBdiAFyaCAdQNSJnvLoUuADe+46
         PZ0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id o17si437206uat.1.2021.07.27.17.40.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 17:40:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="212545472"
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; 
   d="gz'50?scan'50,208,50";a="212545472"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 17:40:46 -0700
X-IronPort-AV: E=Sophos;i="5.84,275,1620716400"; 
   d="gz'50?scan'50,208,50";a="506152793"
Received: from qichaogu-mobl.ccr.corp.intel.com (HELO [10.255.30.133]) ([10.255.30.133])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 17:40:44 -0700
Subject: [allisonhenderson-xfs_work:delayed_attrs_v22_extended 28/32]
 fs/xfs/xfs_inode.c:3287:3: warning: Value stored to 'error' is never read
 [clang-analyzer-deadcode.DeadStores]
References: <202107280442.uDSMSKAb-lkp@intel.com>
To: Allison Henderson <allison.henderson@oracle.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild-all@lists.01.org, LKML <linux-kernel@vger.kernel.org>
From: kernel test robot <rong.a.chen@intel.com>
X-Forwarded-Message-Id: <202107280442.uDSMSKAb-lkp@intel.com>
Message-ID: <e7b05432-97c8-d74c-0722-7e0943002c19@intel.com>
Date: Wed, 28 Jul 2021 08:40:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202107280442.uDSMSKAb-lkp@intel.com>
Content-Type: multipart/mixed;
 boundary="------------72923FDCABBF1BE25938E8D0"
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.24 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

This is a multi-part message in MIME format.
--------------72923FDCABBF1BE25938E8D0
Content-Type: text/plain; charset="UTF-8"; format=flowed


tree:   https://github.com/allisonhenderson/xfs_work.git 
delayed_attrs_v22_extended
head:   aff89515c2d9aca9b24ac0296f3806af62cd9206
commit: 3818584f03ce2d5c1310199a6466aafdf22c8256 [28/32] xfs: Add parent 
pointers to rename
:::::: branch date: 18 hours ago
:::::: commit date: 18 hours ago
config: x86_64-randconfig-c001-20210727 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 
c658b472f3e61e1818e1909bf02f3d65470018a5)
reproduce (this is a W=1 build):
         wget 
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install x86_64 cross compiling tool for clang build
         # apt-get install binutils-x86-64-linux-gnu
         # 
https://github.com/allisonhenderson/xfs_work/commit/3818584f03ce2d5c1310199a6466aafdf22c8256
         git remote add allisonhenderson-xfs_work 
https://github.com/allisonhenderson/xfs_work.git
         git fetch --no-tags allisonhenderson-xfs_work 
delayed_attrs_v22_extended
         git checkout 3818584f03ce2d5c1310199a6466aafdf22c8256
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
ARCH=x86_64 clang-analyzer
If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
                                       ^
    include/linux/kernel.h:495:61: note: expanded from macro 'container_of'
            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) 
&&   \
                                                                       ^
    drivers/md/dm-zoned-target.c:481:29: note: Taking false branch
            struct dm_chunk_work *cw = container_of(work, struct 
dm_chunk_work, work);
                                       ^
    include/linux/kernel.h:495:2: note: expanded from macro 'container_of'
            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) 
&&   \
            ^
    include/linux/build_bug.h:39:37: note: expanded from macro 
'BUILD_BUG_ON_MSG'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^
    include/linux/compiler_types.h:328:2: note: expanded from macro 
'compiletime_assert'
            _compiletime_assert(condition, msg, __compiletime_assert_, 
__COUNTER__)
            ^
    include/linux/compiler_types.h:316:2: note: expanded from macro 
'_compiletime_assert'
            __compiletime_assert(condition, msg, prefix, suffix)
            ^
    include/linux/compiler_types.h:308:3: note: expanded from macro 
'__compiletime_assert'
                    if (!(condition)) 
     \
                    ^
    drivers/md/dm-zoned-target.c:481:29: note: Loop condition is false. 
  Exiting loop
            struct dm_chunk_work *cw = container_of(work, struct 
dm_chunk_work, work);
                                       ^
    include/linux/kernel.h:495:2: note: expanded from macro 'container_of'
            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) 
&&   \
            ^
    include/linux/build_bug.h:39:37: note: expanded from macro 
'BUILD_BUG_ON_MSG'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^
    include/linux/compiler_types.h:328:2: note: expanded from macro 
'compiletime_assert'
            _compiletime_assert(condition, msg, __compiletime_assert_, 
__COUNTER__)
            ^
    include/linux/compiler_types.h:316:2: note: expanded from macro 
'_compiletime_assert'
            __compiletime_assert(condition, msg, prefix, suffix)
            ^
    include/linux/compiler_types.h:306:2: note: expanded from macro 
'__compiletime_assert'
            do { 
     \
            ^
    drivers/md/dm-zoned-target.c:488:2: note: Loop condition is true. 
Entering loop body
            while ((bio = bio_list_pop(&cw->bio_list))) {
            ^
    drivers/md/dm-zoned-target.c:492:3: note: Calling 'dmz_put_chunk_work'
                    dmz_put_chunk_work(cw);
                    ^~~~~~~~~~~~~~~~~~~~~~
    drivers/md/dm-zoned-target.c:469:6: note: Assuming the condition is true
            if (refcount_dec_and_test(&cw->refcount)) {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/md/dm-zoned-target.c:469:2: note: Taking true branch
            if (refcount_dec_and_test(&cw->refcount)) {
            ^
    drivers/md/dm-zoned-target.c:470:3: note: Taking false branch
                    WARN_ON(!bio_list_empty(&cw->bio_list));
                    ^
    include/asm-generic/bug.h:122:2: note: expanded from macro 'WARN_ON'
            if (unlikely(__ret_warn_on)) 
     \
            ^
    drivers/md/dm-zoned-target.c:472:3: note: Memory is released
                    kfree(cw);
                    ^~~~~~~~~
    drivers/md/dm-zoned-target.c:492:3: note: Returning; memory was 
released via 1st parameter
                    dmz_put_chunk_work(cw);
                    ^~~~~~~~~~~~~~~~~~~~~~
    drivers/md/dm-zoned-target.c:488:16: note: Calling 'bio_list_pop'
            while ((bio = bio_list_pop(&cw->bio_list))) {
                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/bio.h:657:20: note: Use of memory after it is freed
            struct bio *bio = bl->head;
                              ^~~~~~~~
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    12 warnings generated.
    fs/xfs/xfs_iops.c:704:11: warning: Value stored to 'uid' during its 
initialization is never read [clang-analyzer-deadcode.DeadStores]
            kuid_t                  uid = GLOBAL_ROOT_UID, iuid = 
GLOBAL_ROOT_UID;
                                    ^~~
    fs/xfs/xfs_iops.c:704:11: note: Value stored to 'uid' during its 
initialization is never read
            kuid_t                  uid = GLOBAL_ROOT_UID, iuid = 
GLOBAL_ROOT_UID;
                                    ^~~
    fs/xfs/xfs_iops.c:704:34: warning: Value stored to 'iuid' during its 
initialization is never read [clang-analyzer-deadcode.DeadStores]
            kuid_t                  uid = GLOBAL_ROOT_UID, iuid = 
GLOBAL_ROOT_UID;
                                                           ^~~~
    fs/xfs/xfs_iops.c:704:34: note: Value stored to 'iuid' during its 
initialization is never read
            kuid_t                  uid = GLOBAL_ROOT_UID, iuid = 
GLOBAL_ROOT_UID;
                                                           ^~~~
    fs/xfs/xfs_iops.c:705:11: warning: Value stored to 'gid' during its 
initialization is never read [clang-analyzer-deadcode.DeadStores]
            kgid_t                  gid = GLOBAL_ROOT_GID, igid = 
GLOBAL_ROOT_GID;
                                    ^~~
    fs/xfs/xfs_iops.c:705:11: note: Value stored to 'gid' during its 
initialization is never read
            kgid_t                  gid = GLOBAL_ROOT_GID, igid = 
GLOBAL_ROOT_GID;
                                    ^~~
    fs/xfs/xfs_iops.c:705:34: warning: Value stored to 'igid' during its 
initialization is never read [clang-analyzer-deadcode.DeadStores]
            kgid_t                  gid = GLOBAL_ROOT_GID, igid = 
GLOBAL_ROOT_GID;
                                                           ^~~~
    fs/xfs/xfs_iops.c:705:34: note: Value stored to 'igid' during its 
initialization is never read
            kgid_t                  gid = GLOBAL_ROOT_GID, igid = 
GLOBAL_ROOT_GID;
                                                           ^~~~
    Suppressed 8 warnings (8 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    9 warnings generated.
>> fs/xfs/xfs_inode.c:3287:3: warning: Value stored to 'error' is never read [clang-analyzer-deadcode.DeadStores]
                    error = xfs_cross_rename(tp, src_dp, src_name, src_ip,
                    ^       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    fs/xfs/xfs_inode.c:3287:3: note: Value stored to 'error' is never read
                    error = xfs_cross_rename(tp, src_dp, src_name, src_ip,
                    ^       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Suppressed 8 warnings (8 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    8 warnings generated.
    Suppressed 8 warnings (8 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    8 warnings generated.
    Suppressed 8 warnings (8 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    8 warnings generated.
    Suppressed 8 warnings (8 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    8 warnings generated.
    Suppressed 8 warnings (8 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    8 warnings generated.
    Suppressed 8 warnings (8 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    8 warnings generated.
    drivers/input/touchscreen/edt-ft5x06.c:705:21: warning: Value stored 
to 'client' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct i2c_client *client = tsdata->client;
                               ^~~~~~   ~~~~~~~~~~~~~~
    drivers/input/touchscreen/edt-ft5x06.c:705:21: note: Value stored to 
'client' during its initialization is never read
            struct i2c_client *client = tsdata->client;
                               ^~~~~~   ~~~~~~~~~~~~~~
    Suppressed 7 warnings (7 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    Suppressed 7 warnings (7 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    Suppressed 7 warnings (7 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    Suppressed 7 warnings (7 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    drivers/md/dm-snap-persistent.c:632:6: warning: Branch condition 
evaluates to a garbage value [clang-analyzer-core.uninitialized.Branch]
            if (new_snapshot) {
                ^~~~~~~~~~~~
    drivers/md/dm-snap-persistent.c:609:9: note: 'new_snapshot' declared 
without an initial value
            int r, new_snapshot;
                   ^~~~~~~~~~~~
    drivers/md/dm-snap-persistent.c:615:6: note: Calling 'read_header'
            r = read_header(ps, &new_snapshot);
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/md/dm-snap-persistent.c:315:6: note: Assuming field 
'chunk_size' is not equal to 0
            if (!ps->store->chunk_size) {
                ^~~~~~~~~~~~~~~~~~~~~~
    drivers/md/dm-snap-persistent.c:315:2: note: Taking false branch
            if (!ps->store->chunk_size) {
            ^
    drivers/md/dm-snap-persistent.c:325:6: note: Calling 'IS_ERR'
            if (IS_ERR(ps->io_client))
                ^~~~~~~~~~~~~~~~~~~~~
    include/linux/err.h:36:9: note: Assuming the condition is true
            return IS_ERR_VALUE((unsigned long)ptr);
                   ^
    include/linux/err.h:22:34: note: expanded from macro 'IS_ERR_VALUE'
    #define IS_ERR_VALUE(x) unlikely((unsigned long)(void *)(x) >= 
(unsigned long)-MAX_ERRNO)
 
~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/compiler.h:48:41: note: expanded from macro 'unlikely'
    #  define unlikely(x)   (__branch_check__(x, 0, 
__builtin_constant_p(x)))
                             ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/compiler.h:33:34: note: expanded from macro 
'__branch_check__'
                            ______r = __builtin_expect(!!(x), expect); 
     \
                                                          ^
    include/linux/err.h:36:2: note: Returning the value 1, which 
participates in a condition later
            return IS_ERR_VALUE((unsigned long)ptr);
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/md/dm-snap-persistent.c:325:6: note: Returning from 'IS_ERR'
            if (IS_ERR(ps->io_client))
                ^~~~~~~~~~~~~~~~~~~~~
    drivers/md/dm-snap-persistent.c:325:2: note: Taking true branch
            if (IS_ERR(ps->io_client))
            ^
    drivers/md/dm-snap-persistent.c:326:3: note: Returning without 
writing to 'ps->callbacks', which participates in a condition later
                    return PTR_ERR(ps->io_client);
                    ^
    drivers/md/dm-snap-persistent.c:326:3: note: Returning without 
writing to '*new_snapshot'
    drivers/md/dm-snap-persistent.c:326:3: note: Returning value, which 
participates in a condition later

vim +/error +3287 fs/xfs/xfs_inode.c

7dcf5c3e4527cf Dave Chinner      2015-03-25  3155  f6bba2017afb3b Dave 
Chinner      2013-08-12  3156  /*
f6bba2017afb3b Dave Chinner      2013-08-12  3157   * xfs_rename
f6bba2017afb3b Dave Chinner      2013-08-12  3158   */
f6bba2017afb3b Dave Chinner      2013-08-12  3159  int
f6bba2017afb3b Dave Chinner      2013-08-12  3160  xfs_rename(
f736d93d76d3e9 Christoph Hellwig 2021-01-21  3161  	struct 
user_namespace		*mnt_userns,
7dcf5c3e4527cf Dave Chinner      2015-03-25  3162  	struct xfs_inode	 
*src_dp,
f6bba2017afb3b Dave Chinner      2013-08-12  3163  	struct xfs_name		 
*src_name,
7dcf5c3e4527cf Dave Chinner      2015-03-25  3164  	struct xfs_inode	 
*src_ip,
7dcf5c3e4527cf Dave Chinner      2015-03-25  3165  	struct xfs_inode	 
*target_dp,
f6bba2017afb3b Dave Chinner      2013-08-12  3166  	struct xfs_name		 
*target_name,
7dcf5c3e4527cf Dave Chinner      2015-03-25  3167  	struct xfs_inode	 
*target_ip,
d31a1825450062 Carlos Maiolino   2014-12-24  3168  	unsigned int			flags)
f6bba2017afb3b Dave Chinner      2013-08-12  3169  {
7dcf5c3e4527cf Dave Chinner      2015-03-25  3170  	struct xfs_mount	 
*mp = src_dp->i_mount;
7dcf5c3e4527cf Dave Chinner      2015-03-25  3171  	struct xfs_trans		*tp;
7dcf5c3e4527cf Dave Chinner      2015-03-25  3172  	struct xfs_inode	 
*wip = NULL;		/* whiteout inode */
7dcf5c3e4527cf Dave Chinner      2015-03-25  3173  	struct xfs_inode	 
*inodes[__XFS_SORT_INODES];
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3174  	int				i;
95afcf5c7bca93 Dave Chinner      2015-03-25  3175  	int				num_inodes = 
__XFS_SORT_INODES;
2b93681f593577 Dave Chinner      2015-03-25  3176  	bool				new_parent = 
(src_dp != target_dp);
c19b3b05ae440d Dave Chinner      2016-02-09  3177  	bool			 
src_is_directory = S_ISDIR(VFS_I(src_ip)->i_mode);
f6bba2017afb3b Dave Chinner      2013-08-12  3178  	int				spaceres;
7dcf5c3e4527cf Dave Chinner      2015-03-25  3179  	int				error;
3818584f03ce2d Allison Henderson 2021-03-24  3180  	struct 
xfs_parent_name_rec	new_rec;
3818584f03ce2d Allison Henderson 2021-03-24  3181  	struct 
xfs_parent_name_rec	old_rec;
3818584f03ce2d Allison Henderson 2021-03-24  3182  	xfs_dir2_dataptr_t	 
new_diroffset;
3818584f03ce2d Allison Henderson 2021-03-24  3183  	xfs_dir2_dataptr_t	 
old_diroffset;
3818584f03ce2d Allison Henderson 2021-03-24  3184  	struct xfs_da_args	 
new_args = {
3818584f03ce2d Allison Henderson 2021-03-24  3185  		.dp		= src_ip,
3818584f03ce2d Allison Henderson 2021-03-24  3186  		.geo		= mp->m_attr_geo,
3818584f03ce2d Allison Henderson 2021-03-24  3187  		.whichfork	= 
XFS_ATTR_FORK,
3818584f03ce2d Allison Henderson 2021-03-24  3188  		.attr_filter	= 
XFS_ATTR_PARENT,
3818584f03ce2d Allison Henderson 2021-03-24  3189  		.op_flags	= 
XFS_DA_OP_OKNOENT,
3818584f03ce2d Allison Henderson 2021-03-24  3190  		.name		= (const 
uint8_t *)&new_rec,
3818584f03ce2d Allison Henderson 2021-03-24  3191  		.namelen	= 
sizeof(new_rec),
3818584f03ce2d Allison Henderson 2021-03-24  3192  		.value		= (void 
*)target_name->name,
3818584f03ce2d Allison Henderson 2021-03-24  3193  		.valuelen	= 
target_name->len,
3818584f03ce2d Allison Henderson 2021-03-24  3194  	};
3818584f03ce2d Allison Henderson 2021-03-24  3195  	struct xfs_da_args	 
old_args = {
3818584f03ce2d Allison Henderson 2021-03-24  3196  		.dp		= src_ip,
3818584f03ce2d Allison Henderson 2021-03-24  3197  		.geo		= mp->m_attr_geo,
3818584f03ce2d Allison Henderson 2021-03-24  3198  		.whichfork	= 
XFS_ATTR_FORK,
3818584f03ce2d Allison Henderson 2021-03-24  3199  		.attr_filter	= 
XFS_ATTR_PARENT,
3818584f03ce2d Allison Henderson 2021-03-24  3200  		.op_flags	= 
XFS_DA_OP_OKNOENT,
3818584f03ce2d Allison Henderson 2021-03-24  3201  		.name		= (const 
uint8_t *)&old_rec,
3818584f03ce2d Allison Henderson 2021-03-24  3202  		.namelen	= 
sizeof(old_rec),
3818584f03ce2d Allison Henderson 2021-03-24  3203  		.value		= NULL,
3818584f03ce2d Allison Henderson 2021-03-24  3204  		.valuelen	= 0,
3818584f03ce2d Allison Henderson 2021-03-24  3205  	};
f6bba2017afb3b Dave Chinner      2013-08-12  3206  f6bba2017afb3b Dave 
Chinner      2013-08-12  3207  	trace_xfs_rename(src_dp, target_dp, 
src_name, target_name);
f6bba2017afb3b Dave Chinner      2013-08-12  3208  eeacd3217b8fa8 Dave 
Chinner      2015-03-25  3209  	if ((flags & RENAME_EXCHANGE) && !target_ip)
eeacd3217b8fa8 Dave Chinner      2015-03-25  3210  		return -EINVAL;
eeacd3217b8fa8 Dave Chinner      2015-03-25  3211  7dcf5c3e4527cf Dave 
Chinner      2015-03-25  3212  	/*
7dcf5c3e4527cf Dave Chinner      2015-03-25  3213  	 * If we are doing a 
whiteout operation, allocate the whiteout inode
7dcf5c3e4527cf Dave Chinner      2015-03-25  3214  	 * we will be 
placing at the target and ensure the type is set
7dcf5c3e4527cf Dave Chinner      2015-03-25  3215  	 * appropriately.
7dcf5c3e4527cf Dave Chinner      2015-03-25  3216  	 */
7dcf5c3e4527cf Dave Chinner      2015-03-25  3217  	if (flags & 
RENAME_WHITEOUT) {
7dcf5c3e4527cf Dave Chinner      2015-03-25  3218  		ASSERT(!(flags & 
(RENAME_NOREPLACE | RENAME_EXCHANGE)));
f736d93d76d3e9 Christoph Hellwig 2021-01-21  3219  		error = 
xfs_rename_alloc_whiteout(mnt_userns, target_dp, &wip);
7dcf5c3e4527cf Dave Chinner      2015-03-25  3220  		if (error)
7dcf5c3e4527cf Dave Chinner      2015-03-25  3221  			return error;
f6bba2017afb3b Dave Chinner      2013-08-12  3222  7dcf5c3e4527cf Dave 
Chinner      2015-03-25  3223  		/* setup target dirent info as whiteout */
7dcf5c3e4527cf Dave Chinner      2015-03-25  3224  		src_name->type = 
XFS_DIR3_FT_CHRDEV;
7dcf5c3e4527cf Dave Chinner      2015-03-25  3225  	}
f6bba2017afb3b Dave Chinner      2013-08-12  3226  7dcf5c3e4527cf Dave 
Chinner      2015-03-25  3227  	xfs_sort_for_rename(src_dp, target_dp, 
src_ip, target_ip, wip,
f6bba2017afb3b Dave Chinner      2013-08-12  3228  				inodes, &num_inodes);
3818584f03ce2d Allison Henderson 2021-03-24  3229  	if 
(xfs_hasdelattr(mp)) {
3818584f03ce2d Allison Henderson 2021-03-24  3230  		error = 
xfs_attr_use_log_assist(mp);
3818584f03ce2d Allison Henderson 2021-03-24  3231  		if (error)
3818584f03ce2d Allison Henderson 2021-03-24  3232  			goto out_release_wip;
3818584f03ce2d Allison Henderson 2021-03-24  3233  	}
f6bba2017afb3b Dave Chinner      2013-08-12  3234  f6bba2017afb3b Dave 
Chinner      2013-08-12  3235  	spaceres = XFS_RENAME_SPACE_RES(mp, 
target_name->len);
253f4911f297b8 Christoph Hellwig 2016-04-06  3236  	error = 
xfs_trans_alloc(mp, &M_RES(mp)->tr_rename, spaceres, 0, 0, &tp);
2451337dd04390 Dave Chinner      2014-06-25  3237  	if (error == -ENOSPC) {
f6bba2017afb3b Dave Chinner      2013-08-12  3238  		spaceres = 0;
253f4911f297b8 Christoph Hellwig 2016-04-06  3239  		error = 
xfs_trans_alloc(mp, &M_RES(mp)->tr_rename, 0, 0, 0,
253f4911f297b8 Christoph Hellwig 2016-04-06  3240  				&tp);
f6bba2017afb3b Dave Chinner      2013-08-12  3241  	}
445883e8133975 Dave Chinner      2015-03-25  3242  	if (error)
3818584f03ce2d Allison Henderson 2021-03-24  3243  		goto drop_incompat;
f6bba2017afb3b Dave Chinner      2013-08-12  3244  f6bba2017afb3b Dave 
Chinner      2013-08-12  3245  	/*
f6bba2017afb3b Dave Chinner      2013-08-12  3246  	 * Attach the dquots 
to the inodes
f6bba2017afb3b Dave Chinner      2013-08-12  3247  	 */
f6bba2017afb3b Dave Chinner      2013-08-12  3248  	error = 
xfs_qm_vop_rename_dqattach(inodes);
445883e8133975 Dave Chinner      2015-03-25  3249  	if (error)
445883e8133975 Dave Chinner      2015-03-25  3250  		goto out_trans_cancel;
f6bba2017afb3b Dave Chinner      2013-08-12  3251  f6bba2017afb3b Dave 
Chinner      2013-08-12  3252  	/*
f6bba2017afb3b Dave Chinner      2013-08-12  3253  	 * Lock all the 
participating inodes. Depending upon whether
f6bba2017afb3b Dave Chinner      2013-08-12  3254  	 * the target_name 
exists in the target directory, and
f6bba2017afb3b Dave Chinner      2013-08-12  3255  	 * whether the 
target directory is the same as the source
f6bba2017afb3b Dave Chinner      2013-08-12  3256  	 * directory, we can 
lock from 2 to 4 inodes.
f6bba2017afb3b Dave Chinner      2013-08-12  3257  	 */
f6bba2017afb3b Dave Chinner      2013-08-12  3258 
xfs_lock_inodes(inodes, num_inodes, XFS_ILOCK_EXCL);
f6bba2017afb3b Dave Chinner      2013-08-12  3259  f6bba2017afb3b Dave 
Chinner      2013-08-12  3260  	/*
f6bba2017afb3b Dave Chinner      2013-08-12  3261  	 * Join all the 
inodes to the transaction. From this point on,
f6bba2017afb3b Dave Chinner      2013-08-12  3262  	 * we can rely on 
either trans_commit or trans_cancel to unlock
f6bba2017afb3b Dave Chinner      2013-08-12  3263  	 * them.
f6bba2017afb3b Dave Chinner      2013-08-12  3264  	 */
3818584f03ce2d Allison Henderson 2021-03-24  3265  	xfs_trans_ijoin(tp, 
src_dp, 0);
f6bba2017afb3b Dave Chinner      2013-08-12  3266  	if (new_parent)
3818584f03ce2d Allison Henderson 2021-03-24  3267  		xfs_trans_ijoin(tp, 
target_dp, 0);
3818584f03ce2d Allison Henderson 2021-03-24  3268  	xfs_trans_ijoin(tp, 
src_ip, 0);
f6bba2017afb3b Dave Chinner      2013-08-12  3269  	if (target_ip)
3818584f03ce2d Allison Henderson 2021-03-24  3270  		xfs_trans_ijoin(tp, 
target_ip, 0);
7dcf5c3e4527cf Dave Chinner      2015-03-25  3271  	if (wip)
3818584f03ce2d Allison Henderson 2021-03-24  3272  		xfs_trans_ijoin(tp, 
wip, 0);
f6bba2017afb3b Dave Chinner      2013-08-12  3273  f6bba2017afb3b Dave 
Chinner      2013-08-12  3274  	/*
f6bba2017afb3b Dave Chinner      2013-08-12  3275  	 * If we are using 
project inheritance, we only allow renames
f6bba2017afb3b Dave Chinner      2013-08-12  3276  	 * into our tree 
when the project IDs are the same; else the
f6bba2017afb3b Dave Chinner      2013-08-12  3277  	 * tree quota 
mechanism would be circumvented.
f6bba2017afb3b Dave Chinner      2013-08-12  3278  	 */
db07349da2f564 Christoph Hellwig 2021-03-29  3279  	if 
(unlikely((target_dp->i_diflags & XFS_DIFLAG_PROJINHERIT) &&
ceaf603c7024d3 Christoph Hellwig 2021-03-29  3280  		 
target_dp->i_projid != src_ip->i_projid)) {
2451337dd04390 Dave Chinner      2014-06-25  3281  		error = -EXDEV;
3818584f03ce2d Allison Henderson 2021-03-24  3282  		goto out_unlock;
f6bba2017afb3b Dave Chinner      2013-08-12  3283  	}
f6bba2017afb3b Dave Chinner      2013-08-12  3284  eeacd3217b8fa8 Dave 
Chinner      2015-03-25  3285  	/* RENAME_EXCHANGE is unique from here 
on. */
3818584f03ce2d Allison Henderson 2021-03-24  3286  	if (flags & 
RENAME_EXCHANGE) {
3818584f03ce2d Allison Henderson 2021-03-24 @3287  		error = 
xfs_cross_rename(tp, src_dp, src_name, src_ip,
d31a1825450062 Carlos Maiolino   2014-12-24  3288  					target_dp, 
target_name, target_ip,
f16dea54b789aa Brian Foster      2018-07-11  3289  					spaceres);
3818584f03ce2d Allison Henderson 2021-03-24  3290  		goto out_pptr;
3818584f03ce2d Allison Henderson 2021-03-24  3291  	}
f6bba2017afb3b Dave Chinner      2013-08-12  3292  	/*
bc56ad8c74b858 kaixuxia          2019-09-03  3293  	 * Check for 
expected errors before we dirty the transaction
bc56ad8c74b858 kaixuxia          2019-09-03  3294  	 * so we can return 
an error without a transaction abort.
02092a2f034fde Chandan Babu R    2021-01-22  3295  	 *
02092a2f034fde Chandan Babu R    2021-01-22  3296  	 * Extent count 
overflow check:
02092a2f034fde Chandan Babu R    2021-01-22  3297  	 *
02092a2f034fde Chandan Babu R    2021-01-22  3298  	 * From the 
perspective of src_dp, a rename operation is essentially a
02092a2f034fde Chandan Babu R    2021-01-22  3299  	 * directory entry 
remove operation. Hence the only place where we check
02092a2f034fde Chandan Babu R    2021-01-22  3300  	 * for extent count 
overflow for src_dp is in
02092a2f034fde Chandan Babu R    2021-01-22  3301  	 * 
xfs_bmap_del_extent_real(). xfs_bmap_del_extent_real() returns
02092a2f034fde Chandan Babu R    2021-01-22  3302  	 * -ENOSPC when it 
detects a possible extent count overflow and in
02092a2f034fde Chandan Babu R    2021-01-22  3303  	 * response, the 
higher layers of directory handling code do the
02092a2f034fde Chandan Babu R    2021-01-22  3304  	 * following:
02092a2f034fde Chandan Babu R    2021-01-22  3305  	 * 1. Data/Free 
blocks: XFS lets these blocks linger until a
02092a2f034fde Chandan Babu R    2021-01-22  3306  	 *    future remove 
operation removes them.
02092a2f034fde Chandan Babu R    2021-01-22  3307  	 * 2. Dabtree 
blocks: XFS swaps the blocks with the last block in the
02092a2f034fde Chandan Babu R    2021-01-22  3308  	 *    Leaf space and 
unmaps the last block.
02092a2f034fde Chandan Babu R    2021-01-22  3309  	 *
02092a2f034fde Chandan Babu R    2021-01-22  3310  	 * For target_dp, 
there are two cases depending on whether the
02092a2f034fde Chandan Babu R    2021-01-22  3311  	 * destination 
directory entry exists or not.
02092a2f034fde Chandan Babu R    2021-01-22  3312  	 *
02092a2f034fde Chandan Babu R    2021-01-22  3313  	 * When destination 
directory entry does not exist (i.e. target_ip ==
02092a2f034fde Chandan Babu R    2021-01-22  3314  	 * NULL), extent 
count overflow check is performed only when transaction
02092a2f034fde Chandan Babu R    2021-01-22  3315  	 * has a non-zero 
sized space reservation associated with it.  With a
02092a2f034fde Chandan Babu R    2021-01-22  3316  	 * zero-sized space 
reservation, XFS allows a rename operation to
02092a2f034fde Chandan Babu R    2021-01-22  3317  	 * continue only 
when the directory has sufficient free space in its
02092a2f034fde Chandan Babu R    2021-01-22  3318  	 * data/leaf/free 
space blocks to hold the new entry.
02092a2f034fde Chandan Babu R    2021-01-22  3319  	 *
02092a2f034fde Chandan Babu R    2021-01-22  3320  	 * When destination 
directory entry exists (i.e. target_ip != NULL), all
02092a2f034fde Chandan Babu R    2021-01-22  3321  	 * we need to do is 
change the inode number associated with the already
02092a2f034fde Chandan Babu R    2021-01-22  3322  	 * existing entry. 
Hence there is no need to perform an extent count
02092a2f034fde Chandan Babu R    2021-01-22  3323  	 * overflow check.
f6bba2017afb3b Dave Chinner      2013-08-12  3324  	 */
f6bba2017afb3b Dave Chinner      2013-08-12  3325  	if (target_ip == NULL) {
f6bba2017afb3b Dave Chinner      2013-08-12  3326  		/*
f6bba2017afb3b Dave Chinner      2013-08-12  3327  		 * If there's no 
space reservation, check the entry will
f6bba2017afb3b Dave Chinner      2013-08-12  3328  		 * fit before 
actually inserting it.
f6bba2017afb3b Dave Chinner      2013-08-12  3329  		 */
94f3cad555d660 Eric Sandeen      2014-09-09  3330  		if (!spaceres) {
94f3cad555d660 Eric Sandeen      2014-09-09  3331  			error = 
xfs_dir_canenter(tp, target_dp, target_name);
f6bba2017afb3b Dave Chinner      2013-08-12  3332  			if (error)
3818584f03ce2d Allison Henderson 2021-03-24  3333  				goto out_unlock;
02092a2f034fde Chandan Babu R    2021-01-22  3334  		} else {
02092a2f034fde Chandan Babu R    2021-01-22  3335  			error = 
xfs_iext_count_may_overflow(target_dp,
02092a2f034fde Chandan Babu R    2021-01-22  3336  					XFS_DATA_FORK,
02092a2f034fde Chandan Babu R    2021-01-22  3337  				 
XFS_IEXT_DIR_MANIP_CNT(mp));
02092a2f034fde Chandan Babu R    2021-01-22  3338  			if (error)
02092a2f034fde Chandan Babu R    2021-01-22  3339  				goto 
out_trans_cancel;
94f3cad555d660 Eric Sandeen      2014-09-09  3340  		}
bc56ad8c74b858 kaixuxia          2019-09-03  3341  	} else {
bc56ad8c74b858 kaixuxia          2019-09-03  3342  		/*
bc56ad8c74b858 kaixuxia          2019-09-03  3343  		 * If target exists 
and it's a directory, check that whether
bc56ad8c74b858 kaixuxia          2019-09-03  3344  		 * it can be destroyed.
bc56ad8c74b858 kaixuxia          2019-09-03  3345  		 */
bc56ad8c74b858 kaixuxia          2019-09-03  3346  		if 
(S_ISDIR(VFS_I(target_ip)->i_mode) &&
bc56ad8c74b858 kaixuxia          2019-09-03  3347  		 
(!xfs_dir_isempty(target_ip) ||
bc56ad8c74b858 kaixuxia          2019-09-03  3348  		 
(VFS_I(target_ip)->i_nlink > 2))) {
bc56ad8c74b858 kaixuxia          2019-09-03  3349  			error = -EEXIST;
bc56ad8c74b858 kaixuxia          2019-09-03  3350  			goto out_trans_cancel;
bc56ad8c74b858 kaixuxia          2019-09-03  3351  		}
bc56ad8c74b858 kaixuxia          2019-09-03  3352  	}
bc56ad8c74b858 kaixuxia          2019-09-03  3353  6da1b4b1ab36d8 
Darrick J. Wong   2021-01-22  3354  	/*
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3355  	 * Lock the AGI 
buffers we need to handle bumping the nlink of the
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3356  	 * whiteout inode 
off the unlinked list and to handle dropping the
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3357  	 * nlink of the 
target inode.  Per locking order rules, do this in
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3358  	 * increasing AG 
order and before directory block allocation tries to
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3359  	 * grab AGFs because 
we grab AGIs before AGFs.
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3360  	 *
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3361  	 * The (vfs) caller 
must ensure that if src is a directory then
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3362  	 * target_ip is 
either null or an empty directory.
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3363  	 */
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3364  	for (i = 0; i < 
num_inodes && inodes[i] != NULL; i++) {
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3365  		if (inodes[i] == wip ||
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3366  		    (inodes[i] == 
target_ip &&
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3367  		 
(VFS_I(target_ip)->i_nlink == 1 || src_is_directory))) {
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3368  			struct xfs_buf	*bp;
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3369  			xfs_agnumber_t	agno;
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3370  6da1b4b1ab36d8 
Darrick J. Wong   2021-01-22  3371  			agno = XFS_INO_TO_AGNO(mp, 
inodes[i]->i_ino);
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3372  			error = 
xfs_read_agi(mp, tp, agno, &bp);
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3373  			if (error)
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3374  				goto 
out_trans_cancel;
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3375  		}
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3376  	}
6da1b4b1ab36d8 Darrick J. Wong   2021-01-22  3377  bc56ad8c74b858 
kaixuxia          2019-09-03  3378  	/*
bc56ad8c74b858 kaixuxia          2019-09-03  3379  	 * Directory entry 
creation below may acquire the AGF. Remove
bc56ad8c74b858 kaixuxia          2019-09-03  3380  	 * the whiteout from 
the unlinked list first to preserve correct
bc56ad8c74b858 kaixuxia          2019-09-03  3381  	 * AGI/AGF locking 
order. This dirties the transaction so failures
bc56ad8c74b858 kaixuxia          2019-09-03  3382  	 * after this point 
will abort and log recovery will clean up the
bc56ad8c74b858 kaixuxia          2019-09-03  3383  	 * mess.
bc56ad8c74b858 kaixuxia          2019-09-03  3384  	 *
bc56ad8c74b858 kaixuxia          2019-09-03  3385  	 * For whiteouts, we 
need to bump the link count on the whiteout
bc56ad8c74b858 kaixuxia          2019-09-03  3386  	 * inode. After this 
point, we have a real link, clear the tmpfile
bc56ad8c74b858 kaixuxia          2019-09-03  3387  	 * state flag from 
the inode so it doesn't accidentally get misused
bc56ad8c74b858 kaixuxia          2019-09-03  3388  	 * in future.
bc56ad8c74b858 kaixuxia          2019-09-03  3389  	 */
bc56ad8c74b858 kaixuxia          2019-09-03  3390  	if (wip) {
f40aadb2bb64fe Dave Chinner      2021-06-02  3391  		struct xfs_perag	*pag;
f40aadb2bb64fe Dave Chinner      2021-06-02  3392  bc56ad8c74b858 
kaixuxia          2019-09-03  3393  		ASSERT(VFS_I(wip)->i_nlink == 0);
f40aadb2bb64fe Dave Chinner      2021-06-02  3394  f40aadb2bb64fe Dave 
Chinner      2021-06-02  3395  		pag = xfs_perag_get(mp, 
XFS_INO_TO_AGNO(mp, wip->i_ino));
f40aadb2bb64fe Dave Chinner      2021-06-02  3396  		error = 
xfs_iunlink_remove(tp, pag, wip);
f40aadb2bb64fe Dave Chinner      2021-06-02  3397  		xfs_perag_put(pag);
bc56ad8c74b858 kaixuxia          2019-09-03  3398  		if (error)
bc56ad8c74b858 kaixuxia          2019-09-03  3399  			goto out_trans_cancel;
bc56ad8c74b858 kaixuxia          2019-09-03  3400  bc56ad8c74b858 
kaixuxia          2019-09-03  3401  		xfs_bumplink(tp, wip);
bc56ad8c74b858 kaixuxia          2019-09-03  3402  		VFS_I(wip)->i_state 
&= ~I_LINKABLE;
bc56ad8c74b858 kaixuxia          2019-09-03  3403  	}
bc56ad8c74b858 kaixuxia          2019-09-03  3404  bc56ad8c74b858 
kaixuxia          2019-09-03  3405  	/*
bc56ad8c74b858 kaixuxia          2019-09-03  3406  	 * Set up the target.
bc56ad8c74b858 kaixuxia          2019-09-03  3407  	 */
bc56ad8c74b858 kaixuxia          2019-09-03  3408  	if (target_ip == NULL) {
f6bba2017afb3b Dave Chinner      2013-08-12  3409  		/*
f6bba2017afb3b Dave Chinner      2013-08-12  3410  		 * If target does 
not exist and the rename crosses
f6bba2017afb3b Dave Chinner      2013-08-12  3411  		 * directories, 
adjust the target directory link count
f6bba2017afb3b Dave Chinner      2013-08-12  3412  		 * to account for 
the ".." reference from the new entry.
f6bba2017afb3b Dave Chinner      2013-08-12  3413  		 */
f6bba2017afb3b Dave Chinner      2013-08-12  3414  		error = 
xfs_dir_createname(tp, target_dp, target_name,
3818584f03ce2d Allison Henderson 2021-03-24  3415  					 
src_ip->i_ino, spaceres, &new_diroffset);
f6bba2017afb3b Dave Chinner      2013-08-12  3416  		if (error)
c8eac49ef798a7 Brian Foster      2018-07-24  3417  			goto out_trans_cancel;
f6bba2017afb3b Dave Chinner      2013-08-12  3418  f6bba2017afb3b Dave 
Chinner      2013-08-12  3419  		xfs_trans_ichgtime(tp, target_dp,
f6bba2017afb3b Dave Chinner      2013-08-12  3420  					XFS_ICHGTIME_MOD 
| XFS_ICHGTIME_CHG);
f6bba2017afb3b Dave Chinner      2013-08-12  3421  f6bba2017afb3b Dave 
Chinner      2013-08-12  3422  		if (new_parent && src_is_directory) {
910832697cf855 Eric Sandeen      2019-05-01  3423  			xfs_bumplink(tp, 
target_dp);
f6bba2017afb3b Dave Chinner      2013-08-12  3424  		}
f6bba2017afb3b Dave Chinner      2013-08-12  3425  	} else { /* 
target_ip != NULL */
f6bba2017afb3b Dave Chinner      2013-08-12  3426  		/*
f6bba2017afb3b Dave Chinner      2013-08-12  3427  		 * Link the source 
inode under the target name.
f6bba2017afb3b Dave Chinner      2013-08-12  3428  		 * If the source 
inode is a directory and we are moving
f6bba2017afb3b Dave Chinner      2013-08-12  3429  		 * it across 
directories, its ".." entry will be
f6bba2017afb3b Dave Chinner      2013-08-12  3430  		 * inconsistent 
until we replace that down below.
f6bba2017afb3b Dave Chinner      2013-08-12  3431  		 *
f6bba2017afb3b Dave Chinner      2013-08-12  3432  		 * In case there is 
already an entry with the same
f6bba2017afb3b Dave Chinner      2013-08-12  3433  		 * name at the 
destination directory, remove it first.
f6bba2017afb3b Dave Chinner      2013-08-12  3434  		 */
f6bba2017afb3b Dave Chinner      2013-08-12  3435  		error = 
xfs_dir_replace(tp, target_dp, target_name,
3818584f03ce2d Allison Henderson 2021-03-24  3436  					src_ip->i_ino, 
spaceres, &new_diroffset);
f6bba2017afb3b Dave Chinner      2013-08-12  3437  		if (error)
c8eac49ef798a7 Brian Foster      2018-07-24  3438  			goto out_trans_cancel;
f6bba2017afb3b Dave Chinner      2013-08-12  3439  f6bba2017afb3b Dave 
Chinner      2013-08-12  3440  		xfs_trans_ichgtime(tp, target_dp,
f6bba2017afb3b Dave Chinner      2013-08-12  3441  					XFS_ICHGTIME_MOD 
| XFS_ICHGTIME_CHG);
f6bba2017afb3b Dave Chinner      2013-08-12  3442  f6bba2017afb3b Dave 
Chinner      2013-08-12  3443  		/*
f6bba2017afb3b Dave Chinner      2013-08-12  3444  		 * Decrement the 
link count on the target since the target
f6bba2017afb3b Dave Chinner      2013-08-12  3445  		 * dir no longer 
points to it.
f6bba2017afb3b Dave Chinner      2013-08-12  3446  		 */
f6bba2017afb3b Dave Chinner      2013-08-12  3447  		error = 
xfs_droplink(tp, target_ip);
f6bba2017afb3b Dave Chinner      2013-08-12  3448  		if (error)
c8eac49ef798a7 Brian Foster      2018-07-24  3449  			goto out_trans_cancel;
f6bba2017afb3b Dave Chinner      2013-08-12  3450  f6bba2017afb3b Dave 
Chinner      2013-08-12  3451  		if (src_is_directory) {
f6bba2017afb3b Dave Chinner      2013-08-12  3452  			/*
f6bba2017afb3b Dave Chinner      2013-08-12  3453  			 * Drop the link 
from the old "." entry.
f6bba2017afb3b Dave Chinner      2013-08-12  3454  			 */
f6bba2017afb3b Dave Chinner      2013-08-12  3455  			error = 
xfs_droplink(tp, target_ip);
f6bba2017afb3b Dave Chinner      2013-08-12  3456  			if (error)
c8eac49ef798a7 Brian Foster      2018-07-24  3457  				goto 
out_trans_cancel;
f6bba2017afb3b Dave Chinner      2013-08-12  3458  		}
f6bba2017afb3b Dave Chinner      2013-08-12  3459  	} /* target_ip != 
NULL */
f6bba2017afb3b Dave Chinner      2013-08-12  3460  f6bba2017afb3b Dave 
Chinner      2013-08-12  3461  	/*
f6bba2017afb3b Dave Chinner      2013-08-12  3462  	 * Remove the source.
f6bba2017afb3b Dave Chinner      2013-08-12  3463  	 */
f6bba2017afb3b Dave Chinner      2013-08-12  3464  	if (new_parent && 
src_is_directory) {
f6bba2017afb3b Dave Chinner      2013-08-12  3465  		/*
f6bba2017afb3b Dave Chinner      2013-08-12  3466  		 * Rewrite the ".." 
entry to point to the new
f6bba2017afb3b Dave Chinner      2013-08-12  3467  		 * directory.
f6bba2017afb3b Dave Chinner      2013-08-12  3468  		 */
f6bba2017afb3b Dave Chinner      2013-08-12  3469  		error = 
xfs_dir_replace(tp, src_ip, &xfs_name_dotdot,
3818584f03ce2d Allison Henderson 2021-03-24  3470  				 
target_dp->i_ino, spaceres, &new_diroffset);
2451337dd04390 Dave Chinner      2014-06-25  3471  		ASSERT(error != 
-EEXIST);
f6bba2017afb3b Dave Chinner      2013-08-12  3472  		if (error)
c8eac49ef798a7 Brian Foster      2018-07-24  3473  			goto out_trans_cancel;
f6bba2017afb3b Dave Chinner      2013-08-12  3474  	}
f6bba2017afb3b Dave Chinner      2013-08-12  3475  f6bba2017afb3b Dave 
Chinner      2013-08-12  3476  	/*
f6bba2017afb3b Dave Chinner      2013-08-12  3477  	 * We always want to 
hit the ctime on the source inode.
f6bba2017afb3b Dave Chinner      2013-08-12  3478  	 *
f6bba2017afb3b Dave Chinner      2013-08-12  3479  	 * This isn't 
strictly required by the standards since the source
f6bba2017afb3b Dave Chinner      2013-08-12  3480  	 * inode isn't 
really being changed, but old unix file systems did
f6bba2017afb3b Dave Chinner      2013-08-12  3481  	 * it and some 
incremental backup programs won't work without it.
f6bba2017afb3b Dave Chinner      2013-08-12  3482  	 */
f6bba2017afb3b Dave Chinner      2013-08-12  3483 
xfs_trans_ichgtime(tp, src_ip, XFS_ICHGTIME_CHG);
f6bba2017afb3b Dave Chinner      2013-08-12  3484 
xfs_trans_log_inode(tp, src_ip, XFS_ILOG_CORE);
f6bba2017afb3b Dave Chinner      2013-08-12  3485  f6bba2017afb3b Dave 
Chinner      2013-08-12  3486  	/*
f6bba2017afb3b Dave Chinner      2013-08-12  3487  	 * Adjust the link 
count on src_dp.  This is necessary when
f6bba2017afb3b Dave Chinner      2013-08-12  3488  	 * renaming a 
directory, either within one parent when
f6bba2017afb3b Dave Chinner      2013-08-12  3489  	 * the target 
existed, or across two parent directories.
f6bba2017afb3b Dave Chinner      2013-08-12  3490  	 */
f6bba2017afb3b Dave Chinner      2013-08-12  3491  	if (src_is_directory 
&& (new_parent || target_ip != NULL)) {
f6bba2017afb3b Dave Chinner      2013-08-12  3492  f6bba2017afb3b Dave 
Chinner      2013-08-12  3493  		/*
f6bba2017afb3b Dave Chinner      2013-08-12  3494  		 * Decrement link 
count on src_directory since the
f6bba2017afb3b Dave Chinner      2013-08-12  3495  		 * entry that's 
moved no longer points to it.
f6bba2017afb3b Dave Chinner      2013-08-12  3496  		 */
f6bba2017afb3b Dave Chinner      2013-08-12  3497  		error = 
xfs_droplink(tp, src_dp);
f6bba2017afb3b Dave Chinner      2013-08-12  3498  		if (error)
c8eac49ef798a7 Brian Foster      2018-07-24  3499  			goto out_trans_cancel;
f6bba2017afb3b Dave Chinner      2013-08-12  3500  	}
f6bba2017afb3b Dave Chinner      2013-08-12  3501  7dcf5c3e4527cf Dave 
Chinner      2015-03-25  3502  	/*
7dcf5c3e4527cf Dave Chinner      2015-03-25  3503  	 * For whiteouts, we 
only need to update the source dirent with the
7dcf5c3e4527cf Dave Chinner      2015-03-25  3504  	 * inode number of 
the whiteout inode rather than removing it
7dcf5c3e4527cf Dave Chinner      2015-03-25  3505  	 * altogether.
7dcf5c3e4527cf Dave Chinner      2015-03-25  3506  	 */
7dcf5c3e4527cf Dave Chinner      2015-03-25  3507  	if (wip) {
7dcf5c3e4527cf Dave Chinner      2015-03-25  3508  		error = 
xfs_dir_replace(tp, src_dp, src_name, wip->i_ino,
3818584f03ce2d Allison Henderson 2021-03-24  3509  					spaceres, 
&old_diroffset);
02092a2f034fde Chandan Babu R    2021-01-22  3510  	} else {
02092a2f034fde Chandan Babu R    2021-01-22  3511  		/*
02092a2f034fde Chandan Babu R    2021-01-22  3512  		 * NOTE: We don't 
need to check for extent count overflow here
02092a2f034fde Chandan Babu R    2021-01-22  3513  		 * because the dir 
remove name code will leave the dir block in
02092a2f034fde Chandan Babu R    2021-01-22  3514  		 * place if the 
extent count would overflow.
02092a2f034fde Chandan Babu R    2021-01-22  3515  		 */
f6bba2017afb3b Dave Chinner      2013-08-12  3516  		error = 
xfs_dir_removename(tp, src_dp, src_name, src_ip->i_ino,
3818584f03ce2d Allison Henderson 2021-03-24  3517  					   spaceres, 
&old_diroffset);
02092a2f034fde Chandan Babu R    2021-01-22  3518  	}
02092a2f034fde Chandan Babu R    2021-01-22  3519  f6bba2017afb3b Dave 
Chinner      2013-08-12  3520  	if (error)
c8eac49ef798a7 Brian Foster      2018-07-24  3521  		goto out_trans_cancel;
f6bba2017afb3b Dave Chinner      2013-08-12  3522  3818584f03ce2d 
Allison Henderson 2021-03-24  3523  out_pptr:
3818584f03ce2d Allison Henderson 2021-03-24  3524  	if 
(xfs_sb_version_hasparent(&mp->m_sb)) {
3818584f03ce2d Allison Henderson 2021-03-24  3525  		new_args.trans	= tp;
3818584f03ce2d Allison Henderson 2021-03-24  3526  	 
xfs_init_parent_name_rec(&new_rec, target_dp, new_diroffset);
3818584f03ce2d Allison Henderson 2021-03-24  3527  		new_args.hashval = 
xfs_da_hashname(new_args.name,
3818584f03ce2d Allison Henderson 2021-03-24  3528  						 
new_args.namelen);
3818584f03ce2d Allison Henderson 2021-03-24  3529  		error = 
xfs_attr_set_deferred(&new_args);
3818584f03ce2d Allison Henderson 2021-03-24  3530  		if (error)
3818584f03ce2d Allison Henderson 2021-03-24  3531  			goto out_trans_cancel;
3818584f03ce2d Allison Henderson 2021-03-24  3532  3818584f03ce2d 
Allison Henderson 2021-03-24  3533  		old_args.trans	= tp;
3818584f03ce2d Allison Henderson 2021-03-24  3534  	 
xfs_init_parent_name_rec(&old_rec, src_dp, old_diroffset);
3818584f03ce2d Allison Henderson 2021-03-24  3535  		old_args.hashval = 
xfs_da_hashname(old_args.name,
3818584f03ce2d Allison Henderson 2021-03-24  3536  						 
old_args.namelen);
3818584f03ce2d Allison Henderson 2021-03-24  3537  		error = 
xfs_attr_remove_deferred(&old_args);
3818584f03ce2d Allison Henderson 2021-03-24  3538  		if (error)
3818584f03ce2d Allison Henderson 2021-03-24  3539  			goto out_trans_cancel;
3818584f03ce2d Allison Henderson 2021-03-24  3540  	}
3818584f03ce2d Allison Henderson 2021-03-24  3541  f6bba2017afb3b Dave 
Chinner      2013-08-12  3542  	xfs_trans_ichgtime(tp, src_dp, 
XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
f6bba2017afb3b Dave Chinner      2013-08-12  3543 
xfs_trans_log_inode(tp, src_dp, XFS_ILOG_CORE);
f6bba2017afb3b Dave Chinner      2013-08-12  3544  	if (new_parent)
f6bba2017afb3b Dave Chinner      2013-08-12  3545  	 
xfs_trans_log_inode(tp, target_dp, XFS_ILOG_CORE);
f6bba2017afb3b Dave Chinner      2013-08-12  3546  c9cfdb38117217 Brian 
Foster      2018-07-11  3547  	error = xfs_finish_rename(tp);
3818584f03ce2d Allison Henderson 2021-03-24  3548  3818584f03ce2d 
Allison Henderson 2021-03-24  3549  out_unlock:
7dcf5c3e4527cf Dave Chinner      2015-03-25  3550  	if (wip)
44a8736bd20a08 Darrick J. Wong   2018-07-25  3551  		xfs_irele(wip);
3818584f03ce2d Allison Henderson 2021-03-24  3552  	if (wip)
3818584f03ce2d Allison Henderson 2021-03-24  3553  		xfs_iunlock(wip, 
XFS_ILOCK_EXCL);
3818584f03ce2d Allison Henderson 2021-03-24  3554  	if (target_ip)
3818584f03ce2d Allison Henderson 2021-03-24  3555  	 
xfs_iunlock(target_ip, XFS_ILOCK_EXCL);
3818584f03ce2d Allison Henderson 2021-03-24  3556  	xfs_iunlock(src_ip, 
XFS_ILOCK_EXCL);
3818584f03ce2d Allison Henderson 2021-03-24  3557  	if (new_parent)
3818584f03ce2d Allison Henderson 2021-03-24  3558  	 
xfs_iunlock(target_dp, XFS_ILOCK_EXCL);
3818584f03ce2d Allison Henderson 2021-03-24  3559  	xfs_iunlock(src_dp, 
XFS_ILOCK_EXCL);
3818584f03ce2d Allison Henderson 2021-03-24  3560  7dcf5c3e4527cf Dave 
Chinner      2015-03-25  3561  	return error;
f6bba2017afb3b Dave Chinner      2013-08-12  3562  445883e8133975 Dave 
Chinner      2015-03-25  3563  out_trans_cancel:
4906e21545814e Christoph Hellwig 2015-06-04  3564  	xfs_trans_cancel(tp);
3818584f03ce2d Allison Henderson 2021-03-24  3565  drop_incompat:
3818584f03ce2d Allison Henderson 2021-03-24  3566  	if (xfs_hasdelattr(mp))
3818584f03ce2d Allison Henderson 2021-03-24  3567  	 
xlog_drop_incompat_feat(mp->m_log);
253f4911f297b8 Christoph Hellwig 2016-04-06  3568  out_release_wip:
7dcf5c3e4527cf Dave Chinner      2015-03-25  3569  	if (wip)
44a8736bd20a08 Darrick J. Wong   2018-07-25  3570  		xfs_irele(wip);
f6bba2017afb3b Dave Chinner      2013-08-12  3571  	return error;
f6bba2017afb3b Dave Chinner      2013-08-12  3572  }
f6bba2017afb3b Dave Chinner      2013-08-12  3573
---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e7b05432-97c8-d74c-0722-7e0943002c19%40intel.com.

--------------72923FDCABBF1BE25938E8D0
Content-Type: application/gzip;
 name=".config.gz"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=".config.gz"

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
y/8BSuQV3V0eAgA=
--------------72923FDCABBF1BE25938E8D0
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message Part"

_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org


--------------72923FDCABBF1BE25938E8D0--
