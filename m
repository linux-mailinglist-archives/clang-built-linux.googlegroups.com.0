Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIEM4GEAMGQE2EG7PXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7A93EC5D5
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 00:39:29 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id j14-20020a17090a318e00b001796382f0casf1188906pjb.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 15:39:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628980768; cv=pass;
        d=google.com; s=arc-20160816;
        b=I4wtx8kuyrk+kIKNPjVi2Sl1U+PLE+NnSC6wP4oOAps0+PmiLe9lgU1rw80/tzMKl9
         oGFEwlYOZMisFDUy08GoQd0tyvQFpjwx1brG8r7VH3rxnRayBsXuBrfiqyLWPFMoWz7p
         +MQaBrFYRVxlvSSoWdnXnZ1yxwGXI2AehxVK6V1OGLus2c9N8+bFsYG1XeAQGx9+EiXr
         Xhfi4vJOPXbMKYPWimw0KZ/9ICx8MN5kv9eIydxZfIuRonXJ9uj/97BNQyAdYZRaWiN2
         E/PCzRpT9kqlFsGFYCXw1EzrQVfCsZKyQmpvriFAViwJlha3gmm5T0vaOuAe2R27/ghd
         bdbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=lI7jjx9tpEelpP4Mf0Sv0XJlHEh3DvsecR3w2zCiHUM=;
        b=lmLvbLmi4HqRMNyEQcFguo3/Ad7J41jgQ1FCxZs35uwoQFv9zG83bu5/iY+XB3DVU9
         YITaBPux7boFPZYIFEpPMxIMhzZlSk0Uz0r77E/20Rngezsaqw8mO3VUomkjj2y/n1S+
         pq6UoSkzi9JsoPQ7erzUC1HPy5bwqHrANzfJCjMeaPgbJE/lL7pBG59qhSdJNTiV+7pH
         lgPUYMgBAmdJB7TBOH3kZ1nw3Pf+EZ2MuCK3j3SbA0jeHzbDdPMOVCgWY+sJfeyCp1Ge
         nCf3awPCeVymSaSV4cliqe5Dz61rgyZs3Lz+Z0HA8V+bFAA4o+cmZ2o2coKUVGuv2CVA
         t0Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lI7jjx9tpEelpP4Mf0Sv0XJlHEh3DvsecR3w2zCiHUM=;
        b=c4IcJa9QQ3iOQMUBMyXHR4j/eWNcrt5vlNzfWXfV7u3noLMOJ4puAQQxT7PDrbVY2q
         02QrfOlkjx7K/fpJkSeuy/v37xViQBYCQ+jzuYoZY0tEPgF/feJjLCkND3oAoEsbUWmI
         Caf7abl5T8zAzF8ax6lrMnzZKc00jDc9XOWeRtPFOoLIez0GIJDtLy5B+dOaUYna8BOb
         hhFc68axPKXznUCFOXEp/lREh8ykARiCSix0CIIw0MxJpj3bteJdfE4KD2DtlOUUAlAY
         IdvTLkMGwfhMEg54awu8S7r+IlcwjrupUK0LtcUldWpI4TZsooZzDViTgHS554chq/1m
         INYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lI7jjx9tpEelpP4Mf0Sv0XJlHEh3DvsecR3w2zCiHUM=;
        b=JPfqTQ+cULU2Z53P/k74PZZWOvy0lpKPDx/ZL6atR+8D4Lks/Wff/LCheZn8gvy++a
         R1vgqXuPmpPaFjtV1HMErVVov+LSrvCKOMuX+tjLnLC43AuMVJn5LGaIV3fh6DMNo4SP
         yrZCO3SZobX3RdoTjCXAPE2PtraNVXajziMgMVCPa+aY25osPSHyII4ljrG/I5fgnDeI
         JRWXt8G22Mi4XDeHHnHOHGCAAa42bDp5w91fU+k6CtuxqXfinxJy/M394vlDhMqav6ml
         qufjjmQjIuXTMvjdcjim8oH20bmeapQ2kOpYRQyHGT80Eo7GO6CIRgUisv246B4kAnNn
         mlww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533awkTGtdzBmJxqFKjkV8FmagWsFi1HitXBAkN6sgSRdjTF/JSP
	+ZqcDGRXbJcp8dJsRc0r26M=
X-Google-Smtp-Source: ABdhPJy24KG5GAYmGCbi9tBpywKUZ2vK349jaAv1Ym4cC0xFRvSfka5Dmr0VMFtoJFYneWbFGJGYsg==
X-Received: by 2002:a17:90b:3144:: with SMTP id ip4mr9249945pjb.22.1628980768206;
        Sat, 14 Aug 2021 15:39:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls2277515plb.10.gmail; Sat,
 14 Aug 2021 15:39:27 -0700 (PDT)
X-Received: by 2002:a17:902:c10a:b0:12d:97e1:f035 with SMTP id 10-20020a170902c10a00b0012d97e1f035mr6603464pli.52.1628980767320;
        Sat, 14 Aug 2021 15:39:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628980767; cv=none;
        d=google.com; s=arc-20160816;
        b=w2Gfw+bMZBOy20f2DQf4yBB01UZn+WDkqqnMfcYfe33rHuxzP7qoZ6ohRX8lvzKA/1
         6+R9reaGOe4zDwLTZ59LJjHghPXwruvkNZKw9dUhlPa6BhkKcVe9iDmRdNvrXykZ/th3
         LZp1iqM/l8cLMMxbKmkAtI14p3mRp0J6yY+8dIa0x048jY7cRt54kNPJGRyD2qNm8pqt
         xk4FQ1vuf5ELMNHf7tiTN4OoJzQIXmkLsZrWG6qy9M6hN1mYxwoITra8cC6Rl0GTF3E/
         CsQB5+Lvwyus50VqgpJu/vtLIOxzHPmcgyZSgN9AxZbJTfFoKOEyfMWaq4O9Uj6P8AWN
         yIOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=9HHWbfOJFKMEsgHT4GCp/c/cT0qV61YBEzPBU9Td7RA=;
        b=L7dX9NKgPYEEH77SP7kr8AmiUfs9WHazPqQo5lOd2FSvDMqlW7ZQTSZ89r16xAFc4j
         2EQwAz414QbNUdwODU2KVFShz7gWFDal7pcbmosVoQiNiRz05KN7/o+eUX6ZsyN3HAK0
         YtbUp4Ym0kqtCIByo6R5zBh2VbQQy2tdaRWwILhEW6s2yCJbLuXTntMNHufiNeU8C3C1
         ADimahoEiv0GpQYn5fYglPHwEYPWTb4ePqRrxomSb1lbGl55ck1bRz3ZQMyMgHn9sE1c
         SEXEcbtzYTPlk3Bu93v3qweeg+OKCfoebSJIYCKYZaqmhIfjcchNTdB6o53YwAB1YcP9
         GuaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id j11si295385pjs.3.2021.08.14.15.39.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 15:39:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10076"; a="215435759"
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; 
   d="gz'50?scan'50,208,50";a="215435759"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2021 15:39:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; 
   d="gz'50?scan'50,208,50";a="508894036"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 14 Aug 2021 15:39:23 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mF2JG-000PJq-7P; Sat, 14 Aug 2021 22:39:22 +0000
Date: Sun, 15 Aug 2021 06:38:55 +0800
From: kernel test robot <lkp@intel.com>
To: Yangtao Li <frank.li@vivo.com>, jaegeuk@kernel.org, chao@kernel.org
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-f2fs-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org, Fengnan Chang <changfengnan@vivo.com>,
	Yangtao Li <frank.li@vivo.com>
Subject: Re: [PATCH v2] f2fs: Don't create discard thread when device not
 support realtime discard
Message-ID: <202108150616.qdFLurea-lkp@intel.com>
References: <20210813101132.441389-1-frank.li@vivo.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
In-Reply-To: <20210813101132.441389-1-frank.li@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Yangtao,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on f2fs/dev-test]
[also build test WARNING on next-20210813]
[cannot apply to v5.14-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Yangtao-Li/f2fs-Don-t-create-discard-thread-when-device-not-support-realtime-discard/20210813-181309
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
config: x86_64-randconfig-c001-20210813 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/409d152775702fc2af3b9d97d01fe8240ba6da7b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Yangtao-Li/f2fs-Don-t-create-discard-thread-when-device-not-support-realtime-discard/20210813-181309
        git checkout 409d152775702fc2af3b9d97d01fe8240ba6da7b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 clang-analyzer 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
                    ^
   net/ipv6/raw.c:936:2: note: Taking true branch
           if (ipc6.dontfrag < 0)
           ^
   net/ipv6/raw.c:939:6: note: Assuming the condition is false
           if (msg->msg_flags&MSG_CONFIRM)
               ^~~~~~~~~~~~~~~~~~~~~~~~~~
   net/ipv6/raw.c:939:2: note: Taking false branch
           if (msg->msg_flags&MSG_CONFIRM)
           ^
   net/ipv6/raw.c:943:6: note: 'hdrincl' is 0
           if (hdrincl)
               ^~~~~~~
   net/ipv6/raw.c:943:2: note: Taking false branch
           if (hdrincl)
           ^
   net/ipv6/raw.c:953:7: note: Assuming 'err' is 0
                   if (err)
                       ^~~
   net/ipv6/raw.c:953:3: note: Taking false branch
                   if (err)
                   ^
   net/ipv6/raw.c:955:12: note: Assuming the condition is true
                   else if (!(msg->msg_flags & MSG_MORE))
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/ipv6/raw.c:955:8: note: Taking true branch
                   else if (!(msg->msg_flags & MSG_MORE))
                        ^
   net/ipv6/raw.c:956:10: note: Calling 'rawv6_push_pending_frames'
                           err = rawv6_push_pending_frames(sk, &fl6, rp);
                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/ipv6/raw.c:550:6: note: Assuming field 'checksum' is not equal to 0
           if (!rp->checksum)
               ^~~~~~~~~~~~~
   net/ipv6/raw.c:550:2: note: Taking false branch
           if (!rp->checksum)
           ^
   net/ipv6/raw.c:553:8: note: Calling 'skb_peek'
           skb = skb_peek(&sk->sk_write_queue);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/skbuff.h:1803:6: note: Assuming 'skb' is not equal to 'list_'
           if (skb == (struct sk_buff *)list_)
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/skbuff.h:1803:2: note: Taking false branch
           if (skb == (struct sk_buff *)list_)
           ^
   include/linux/skbuff.h:1805:2: note: Returning pointer (loaded from 'skb'), which participates in a condition later
           return skb;
           ^~~~~~~~~~
   net/ipv6/raw.c:553:8: note: Returning from 'skb_peek'
           skb = skb_peek(&sk->sk_write_queue);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/ipv6/raw.c:554:6: note: Assuming 'skb' is non-null
           if (!skb)
               ^~~~
   net/ipv6/raw.c:554:2: note: Taking false branch
           if (!skb)
           ^
   net/ipv6/raw.c:559:6: note: Assuming the condition is false
           if (offset >= total_len - 1) {
               ^~~~~~~~~~~~~~~~~~~~~~~
   net/ipv6/raw.c:559:2: note: Taking false branch
           if (offset >= total_len - 1) {
           ^
   net/ipv6/raw.c:566:6: note: Assuming the condition is false
           if (skb_queue_len(&sk->sk_write_queue) == 1) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   net/ipv6/raw.c:566:2: note: Taking false branch
           if (skb_queue_len(&sk->sk_write_queue) == 1) {
           ^
   net/ipv6/raw.c:572:3: note: 'csum_skb' initialized to a null pointer value
                   struct sk_buff *csum_skb = NULL;
                   ^~~~~~~~~~~~~~~~~~~~~~~~
   net/ipv6/raw.c:575:3: note: Loop condition is false. Execution continues on line 590
                   skb_queue_walk(&sk->sk_write_queue, skb) {
                   ^
   include/linux/skbuff.h:3532:3: note: expanded from macro 'skb_queue_walk'
                   for (skb = (queue)->next;                                       \
                   ^
   net/ipv6/raw.c:590:3: note: Null pointer value stored to 'skb'
                   skb = csum_skb;
                   ^~~~~~~~~~~~~~
   net/ipv6/raw.c:593:33: note: Passing null pointer value via 1st parameter 'skb'
           offset += skb_transport_offset(skb);
                                          ^~~
   net/ipv6/raw.c:593:12: note: Calling 'skb_transport_offset'
           offset += skb_transport_offset(skb);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/skbuff.h:2633:30: note: Passing null pointer value via 1st parameter 'skb'
           return skb_transport_header(skb) - skb->data;
                                       ^~~
   include/linux/skbuff.h:2633:9: note: Calling 'skb_transport_header'
           return skb_transport_header(skb) - skb->data;
                  ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/skbuff.h:2527:9: note: Access to field 'head' results in a dereference of a null pointer (loaded from variable 'skb')
           return skb->head + skb->transport_header;
                  ^~~
   Suppressed 12 warnings (12 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   12 warnings generated.
>> fs/f2fs/segment.c:2139:8: warning: Value stored to 'dev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           dev_t dev = sbi->sb->s_bdev->bd_dev;
                 ^~~   ~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/segment.c:2139:8: note: Value stored to 'dev' during its initialization is never read
           dev_t dev = sbi->sb->s_bdev->bd_dev;
                 ^~~   ~~~~~~~~~~~~~~~~~~~~~~~
>> fs/f2fs/segment.c:2144:3: warning: Value stored to 'dcc' is never read [clang-analyzer-deadcode.DeadStores]
                   dcc = SM_I(sbi)->dcc_info;
                   ^     ~~~~~~~~~~~~~~~~~~~
   fs/f2fs/segment.c:2144:3: note: Value stored to 'dcc' is never read
                   dcc = SM_I(sbi)->dcc_info;
                   ^     ~~~~~~~~~~~~~~~~~~~
   include/linux/math64.h:28:24: warning: Division by zero [clang-analyzer-core.DivideZero]
           *remainder = dividend % divisor;
                                 ^
   fs/f2fs/segment.c:5185:39: note: Calling 'F2FS_RAW_SUPER'
           struct f2fs_super_block *raw_super = F2FS_RAW_SUPER(sbi);
                                                ^~~~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:1947:2: note: Returning without writing to 'sbi->segs_per_sec'
           return (struct f2fs_super_block *)(sbi->raw_super);
           ^
   fs/f2fs/segment.c:5185:39: note: Returning from 'F2FS_RAW_SUPER'
           struct f2fs_super_block *raw_super = F2FS_RAW_SUPER(sbi);
                                                ^~~~~~~~~~~~~~~~~~~
   fs/f2fs/segment.c:5186:33: note: Calling 'F2FS_CKPT'
           struct f2fs_checkpoint *ckpt = F2FS_CKPT(sbi);
                                          ^~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:1952:2: note: Returning without writing to 'sbi->segs_per_sec'
           return (struct f2fs_checkpoint *)(sbi->ckpt);
           ^
   fs/f2fs/segment.c:5186:33: note: Returning from 'F2FS_CKPT'
           struct f2fs_checkpoint *ckpt = F2FS_CKPT(sbi);
                                          ^~~~~~~~~~~~~~
   fs/f2fs/segment.c:5190:12: note: Calling 'f2fs_kzalloc'
           sm_info = f2fs_kzalloc(sbi, sizeof(struct f2fs_sm_info), GFP_KERNEL);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:3227:9: note: Calling 'f2fs_kmalloc'
           return f2fs_kmalloc(sbi, size, flags | __GFP_ZERO);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:3216:6: note: Calling 'time_to_inject'
           if (time_to_inject(sbi, FAULT_KMALLOC)) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:1813:6: note: Assuming field 'inject_rate' is not equal to 0
           if (!ffi->inject_rate)
               ^~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:1813:2: note: Taking false branch
           if (!ffi->inject_rate)
           ^
   fs/f2fs/f2fs.h:1816:6: note: Assuming the condition is false
           if (!IS_FAULT_SET(ffi, type))
               ^~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:1816:2: note: Taking false branch
           if (!IS_FAULT_SET(ffi, type))
           ^
   fs/f2fs/f2fs.h:1820:6: note: Assuming the condition is false
           if (atomic_read(&ffi->inject_ops) >= ffi->inject_rate) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:1820:2: note: Taking false branch
           if (atomic_read(&ffi->inject_ops) >= ffi->inject_rate) {
           ^
   fs/f2fs/f2fs.h:1824:2: note: Returning without writing to 'sbi->segs_per_sec'
           return false;
           ^
   fs/f2fs/f2fs.h:3216:6: note: Returning from 'time_to_inject'
           if (time_to_inject(sbi, FAULT_KMALLOC)) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:3216:2: note: Taking false branch
           if (time_to_inject(sbi, FAULT_KMALLOC)) {
           ^
   fs/f2fs/f2fs.h:3221:2: note: Returning without writing to 'sbi->segs_per_sec'
           return kmalloc(size, flags);
           ^
   fs/f2fs/f2fs.h:3227:9: note: Returning from 'f2fs_kmalloc'
           return f2fs_kmalloc(sbi, size, flags | __GFP_ZERO);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:3227:2: note: Returning without writing to 'sbi->segs_per_sec'
           return f2fs_kmalloc(sbi, size, flags | __GFP_ZERO);
           ^
   fs/f2fs/segment.c:5190:12: note: Returning from 'f2fs_kzalloc'
           sm_info = f2fs_kzalloc(sbi, sizeof(struct f2fs_sm_info), GFP_KERNEL);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/segment.c:5191:6: note: Assuming 'sm_info' is non-null
           if (!sm_info)
               ^~~~~~~~
   fs/f2fs/segment.c:5191:2: note: Taking false branch
           if (!sm_info)
           ^
   fs/f2fs/segment.c:5205:6: note: Assuming field 'rec_prefree_segments' is <= DEF_MAX_RECLAIM_PREFREE_SEGMENTS
           if (sm_info->rec_prefree_segments > DEF_MAX_RECLAIM_PREFREE_SEGMENTS)
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   fs/f2fs/segment.c:5205:2: note: Taking false branch
           if (sm_info->rec_prefree_segments > DEF_MAX_RECLAIM_PREFREE_SEGMENTS)
           ^
   fs/f2fs/segment.c:5208:7: note: Calling 'f2fs_lfs_mode'
           if (!f2fs_lfs_mode(sbi))
                ^~~~~~~~~~~~~~~~~~
   fs/f2fs/f2fs.h:4412:9: note: Assuming field 'fs_mode' is not equal to FS_MODE_LFS
           return F2FS_OPTION(sbi).fs_mode == FS_MODE_LFS;
                  ^
   fs/f2fs/f2fs.h:105:26: note: expanded from macro 'F2FS_OPTION'
   #define F2FS_OPTION(sbi)        ((sbi)->mount_opt)
                                   ^
   fs/f2fs/f2fs.h:4412:2: note: Returning without writing to 'sbi->segs_per_sec'
           return F2FS_OPTION(sbi).fs_mode == FS_MODE_LFS;
           ^
   fs/f2fs/segment.c:5208:7: note: Returning from 'f2fs_lfs_mode'
           if (!f2fs_lfs_mode(sbi))

vim +/dev +2139 fs/f2fs/segment.c

351df4b2011573 Jaegeuk Kim    2012-11-02  2008  
4d57b86dd86404 Chao Yu        2018-05-30  2009  void f2fs_clear_prefree_segments(struct f2fs_sb_info *sbi,
4d57b86dd86404 Chao Yu        2018-05-30  2010  						struct cp_control *cpc)
351df4b2011573 Jaegeuk Kim    2012-11-02  2011  {
969d1b180d987c Chao Yu        2017-08-07  2012  	struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
969d1b180d987c Chao Yu        2017-08-07  2013  	struct list_head *head = &dcc->entry_list;
2d7b822ad9daf0 Chao Yu        2014-03-29  2014  	struct discard_entry *entry, *this;
351df4b2011573 Jaegeuk Kim    2012-11-02  2015  	struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
29e59c14ae5c21 Changman Lee   2013-11-11  2016  	unsigned long *prefree_map = dirty_i->dirty_segmap[PRE];
29e59c14ae5c21 Changman Lee   2013-11-11  2017  	unsigned int start = 0, end = -1;
36abef4e796d38 Jaegeuk Kim    2016-06-03  2018  	unsigned int secno, start_segno;
c473f1a9658b6c Chao Yu        2017-04-27  2019  	bool force = (cpc->reason & CP_DISCARD);
4f993264fe2965 Chao Yu        2021-08-03  2020  	bool section_alignment = F2FS_OPTION(sbi).discard_unit ==
4f993264fe2965 Chao Yu        2021-08-03  2021  						DISCARD_UNIT_SECTION;
4f993264fe2965 Chao Yu        2021-08-03  2022  
4f993264fe2965 Chao Yu        2021-08-03  2023  	if (f2fs_lfs_mode(sbi) && __is_large_section(sbi))
4f993264fe2965 Chao Yu        2021-08-03  2024  		section_alignment = true;
351df4b2011573 Jaegeuk Kim    2012-11-02  2025  
351df4b2011573 Jaegeuk Kim    2012-11-02  2026  	mutex_lock(&dirty_i->seglist_lock);
29e59c14ae5c21 Changman Lee   2013-11-11  2027  
351df4b2011573 Jaegeuk Kim    2012-11-02  2028  	while (1) {
29e59c14ae5c21 Changman Lee   2013-11-11  2029  		int i;
ad6672bbc52772 Yunlong Song   2018-07-19  2030  
4f993264fe2965 Chao Yu        2021-08-03  2031  		if (section_alignment && end != -1)
ad6672bbc52772 Yunlong Song   2018-07-19  2032  			end--;
7cd8558baa4e45 Jaegeuk Kim    2014-09-23  2033  		start = find_next_bit(prefree_map, MAIN_SEGS(sbi), end + 1);
7cd8558baa4e45 Jaegeuk Kim    2014-09-23  2034  		if (start >= MAIN_SEGS(sbi))
351df4b2011573 Jaegeuk Kim    2012-11-02  2035  			break;
7cd8558baa4e45 Jaegeuk Kim    2014-09-23  2036  		end = find_next_zero_bit(prefree_map, MAIN_SEGS(sbi),
7cd8558baa4e45 Jaegeuk Kim    2014-09-23  2037  								start + 1);
29e59c14ae5c21 Changman Lee   2013-11-11  2038  
4f993264fe2965 Chao Yu        2021-08-03  2039  		if (section_alignment) {
ad6672bbc52772 Yunlong Song   2018-07-19  2040  			start = rounddown(start, sbi->segs_per_sec);
ad6672bbc52772 Yunlong Song   2018-07-19  2041  			end = roundup(end, sbi->segs_per_sec);
ad6672bbc52772 Yunlong Song   2018-07-19  2042  		}
29e59c14ae5c21 Changman Lee   2013-11-11  2043  
ad6672bbc52772 Yunlong Song   2018-07-19  2044  		for (i = start; i < end; i++) {
ad6672bbc52772 Yunlong Song   2018-07-19  2045  			if (test_and_clear_bit(i, prefree_map))
ad6672bbc52772 Yunlong Song   2018-07-19  2046  				dirty_i->nr_dirty[PRE]--;
ad6672bbc52772 Yunlong Song   2018-07-19  2047  		}
351df4b2011573 Jaegeuk Kim    2012-11-02  2048  
7d20c8abb2edcf Chao Yu        2018-09-04  2049  		if (!f2fs_realtime_discard_enable(sbi))
650d3c4e56e1e9 Yunlei He      2016-12-22  2050  			continue;
650d3c4e56e1e9 Yunlei He      2016-12-22  2051  
650d3c4e56e1e9 Yunlei He      2016-12-22  2052  		if (force && start >= cpc->trim_start &&
650d3c4e56e1e9 Yunlei He      2016-12-22  2053  					(end - 1) <= cpc->trim_end)
29e59c14ae5c21 Changman Lee   2013-11-11  2054  				continue;
351df4b2011573 Jaegeuk Kim    2012-11-02  2055  
b0332a0f957ca8 Chao Yu        2020-02-14  2056  		if (!f2fs_lfs_mode(sbi) || !__is_large_section(sbi)) {
37208879108644 Jaegeuk Kim    2013-11-12  2057  			f2fs_issue_discard(sbi, START_BLOCK(sbi, start),
37208879108644 Jaegeuk Kim    2013-11-12  2058  				(end - start) << sbi->log_blocks_per_seg);
36abef4e796d38 Jaegeuk Kim    2016-06-03  2059  			continue;
36abef4e796d38 Jaegeuk Kim    2016-06-03  2060  		}
36abef4e796d38 Jaegeuk Kim    2016-06-03  2061  next:
4ddb1a4d4dc206 Jaegeuk Kim    2017-04-07  2062  		secno = GET_SEC_FROM_SEG(sbi, start);
4ddb1a4d4dc206 Jaegeuk Kim    2017-04-07  2063  		start_segno = GET_SEG_FROM_SEC(sbi, secno);
36abef4e796d38 Jaegeuk Kim    2016-06-03  2064  		if (!IS_CURSEC(sbi, secno) &&
302bd34882b1e2 Jaegeuk Kim    2017-04-07  2065  			!get_valid_blocks(sbi, start, true))
36abef4e796d38 Jaegeuk Kim    2016-06-03  2066  			f2fs_issue_discard(sbi, START_BLOCK(sbi, start_segno),
36abef4e796d38 Jaegeuk Kim    2016-06-03  2067  				sbi->segs_per_sec << sbi->log_blocks_per_seg);
36abef4e796d38 Jaegeuk Kim    2016-06-03  2068  
36abef4e796d38 Jaegeuk Kim    2016-06-03  2069  		start = start_segno + sbi->segs_per_sec;
36abef4e796d38 Jaegeuk Kim    2016-06-03  2070  		if (start < end)
36abef4e796d38 Jaegeuk Kim    2016-06-03  2071  			goto next;
8b107f5b97772c Jaegeuk Kim    2017-02-27  2072  		else
8b107f5b97772c Jaegeuk Kim    2017-02-27  2073  			end = start - 1;
351df4b2011573 Jaegeuk Kim    2012-11-02  2074  	}
351df4b2011573 Jaegeuk Kim    2012-11-02  2075  	mutex_unlock(&dirty_i->seglist_lock);
b29555505d81e4 Jaegeuk Kim    2013-11-12  2076  
4f993264fe2965 Chao Yu        2021-08-03  2077  	if (!f2fs_block_unit_discard(sbi))
4f993264fe2965 Chao Yu        2021-08-03  2078  		goto wakeup;
4f993264fe2965 Chao Yu        2021-08-03  2079  
b29555505d81e4 Jaegeuk Kim    2013-11-12  2080  	/* send small discards */
2d7b822ad9daf0 Chao Yu        2014-03-29  2081  	list_for_each_entry_safe(entry, this, head, list) {
a7eeb823854c4a Chao Yu        2017-03-28  2082  		unsigned int cur_pos = 0, next_pos, len, total_len = 0;
a7eeb823854c4a Chao Yu        2017-03-28  2083  		bool is_valid = test_bit_le(0, entry->discard_map);
a7eeb823854c4a Chao Yu        2017-03-28  2084  
a7eeb823854c4a Chao Yu        2017-03-28  2085  find_next:
a7eeb823854c4a Chao Yu        2017-03-28  2086  		if (is_valid) {
a7eeb823854c4a Chao Yu        2017-03-28  2087  			next_pos = find_next_zero_bit_le(entry->discard_map,
a7eeb823854c4a Chao Yu        2017-03-28  2088  					sbi->blocks_per_seg, cur_pos);
a7eeb823854c4a Chao Yu        2017-03-28  2089  			len = next_pos - cur_pos;
a7eeb823854c4a Chao Yu        2017-03-28  2090  
7beb01f74415c5 Chao Yu        2018-10-24  2091  			if (f2fs_sb_has_blkzoned(sbi) ||
acfd2810c75b06 Damien Le Moal 2017-05-26  2092  			    (force && len < cpc->trim_minlen))
836b5a6356ac49 Jaegeuk Kim    2015-04-30  2093  				goto skip;
a7eeb823854c4a Chao Yu        2017-03-28  2094  
a7eeb823854c4a Chao Yu        2017-03-28  2095  			f2fs_issue_discard(sbi, entry->start_blkaddr + cur_pos,
a7eeb823854c4a Chao Yu        2017-03-28  2096  									len);
a7eeb823854c4a Chao Yu        2017-03-28  2097  			total_len += len;
a7eeb823854c4a Chao Yu        2017-03-28  2098  		} else {
a7eeb823854c4a Chao Yu        2017-03-28  2099  			next_pos = find_next_bit_le(entry->discard_map,
a7eeb823854c4a Chao Yu        2017-03-28  2100  					sbi->blocks_per_seg, cur_pos);
a7eeb823854c4a Chao Yu        2017-03-28  2101  		}
836b5a6356ac49 Jaegeuk Kim    2015-04-30  2102  skip:
a7eeb823854c4a Chao Yu        2017-03-28  2103  		cur_pos = next_pos;
a7eeb823854c4a Chao Yu        2017-03-28  2104  		is_valid = !is_valid;
a7eeb823854c4a Chao Yu        2017-03-28  2105  
a7eeb823854c4a Chao Yu        2017-03-28  2106  		if (cur_pos < sbi->blocks_per_seg)
a7eeb823854c4a Chao Yu        2017-03-28  2107  			goto find_next;
a7eeb823854c4a Chao Yu        2017-03-28  2108  
af8ff65bb85df3 Chao Yu        2018-04-25  2109  		release_discard_addr(entry);
969d1b180d987c Chao Yu        2017-08-07  2110  		dcc->nr_discards -= total_len;
b29555505d81e4 Jaegeuk Kim    2013-11-12  2111  	}
34e159da418be4 Chao Yu        2017-04-25  2112  
4f993264fe2965 Chao Yu        2021-08-03  2113  wakeup:
01983c715ad0e7 Jaegeuk Kim    2017-08-22  2114  	wake_up_discard_thread(sbi, false);
351df4b2011573 Jaegeuk Kim    2012-11-02  2115  }
409d152775702f Fengnan Chang  2021-08-13  2116  int f2fs_start_discard_thread(struct f2fs_sb_info *sbi)
409d152775702f Fengnan Chang  2021-08-13  2117  {
409d152775702f Fengnan Chang  2021-08-13  2118  	dev_t dev = sbi->sb->s_bdev->bd_dev;
409d152775702f Fengnan Chang  2021-08-13  2119  	struct discard_cmd_control *dcc = SM_I(sbi)->dcc_info;
409d152775702f Fengnan Chang  2021-08-13  2120  	int err = 0;
351df4b2011573 Jaegeuk Kim    2012-11-02  2121  
409d152775702f Fengnan Chang  2021-08-13  2122  	if (!dcc)
409d152775702f Fengnan Chang  2021-08-13  2123  		return -EINVAL;
409d152775702f Fengnan Chang  2021-08-13  2124  	if (!f2fs_realtime_discard_enable(sbi))
409d152775702f Fengnan Chang  2021-08-13  2125  		return 0;
409d152775702f Fengnan Chang  2021-08-13  2126  
409d152775702f Fengnan Chang  2021-08-13  2127  	dcc->f2fs_issue_discard = kthread_run(issue_discard_thread, sbi,
409d152775702f Fengnan Chang  2021-08-13  2128  				"f2fs_discard-%u:%u", MAJOR(dev), MINOR(dev));
409d152775702f Fengnan Chang  2021-08-13  2129  	if (IS_ERR(dcc->f2fs_issue_discard)) {
409d152775702f Fengnan Chang  2021-08-13  2130  		err = PTR_ERR(dcc->f2fs_issue_discard);
409d152775702f Fengnan Chang  2021-08-13  2131  		kfree(dcc);
409d152775702f Fengnan Chang  2021-08-13  2132  		SM_I(sbi)->dcc_info = NULL;
409d152775702f Fengnan Chang  2021-08-13  2133  		return err;
409d152775702f Fengnan Chang  2021-08-13  2134  	}
409d152775702f Fengnan Chang  2021-08-13  2135  	return err;
409d152775702f Fengnan Chang  2021-08-13  2136  }
8ed59745520863 Jaegeuk Kim    2017-01-29  2137  static int create_discard_cmd_control(struct f2fs_sb_info *sbi)
0b54fb8458199d Jaegeuk Kim    2017-01-11  2138  {
1546996348b33d Jaegeuk Kim    2017-01-09 @2139  	dev_t dev = sbi->sb->s_bdev->bd_dev;
0b54fb8458199d Jaegeuk Kim    2017-01-11  2140  	struct discard_cmd_control *dcc;
ba48a33ef6faa5 Chao Yu        2017-04-15  2141  	int err = 0, i;
0b54fb8458199d Jaegeuk Kim    2017-01-11  2142  
0b54fb8458199d Jaegeuk Kim    2017-01-11  2143  	if (SM_I(sbi)->dcc_info) {
0b54fb8458199d Jaegeuk Kim    2017-01-11 @2144  		dcc = SM_I(sbi)->dcc_info;
0b54fb8458199d Jaegeuk Kim    2017-01-11  2145  		goto init_thread;
0b54fb8458199d Jaegeuk Kim    2017-01-11  2146  	}
0b54fb8458199d Jaegeuk Kim    2017-01-11  2147  
acbf054d537d7e Chao Yu        2017-11-30  2148  	dcc = f2fs_kzalloc(sbi, sizeof(struct discard_cmd_control), GFP_KERNEL);
0b54fb8458199d Jaegeuk Kim    2017-01-11  2149  	if (!dcc)
0b54fb8458199d Jaegeuk Kim    2017-01-11  2150  		return -ENOMEM;
0b54fb8458199d Jaegeuk Kim    2017-01-11  2151  
969d1b180d987c Chao Yu        2017-08-07  2152  	dcc->discard_granularity = DEFAULT_DISCARD_GRANULARITY;
4f993264fe2965 Chao Yu        2021-08-03  2153  	if (F2FS_OPTION(sbi).discard_unit == DISCARD_UNIT_SEGMENT)
4f993264fe2965 Chao Yu        2021-08-03  2154  		dcc->discard_granularity = sbi->blocks_per_seg;
4f993264fe2965 Chao Yu        2021-08-03  2155  	else if (F2FS_OPTION(sbi).discard_unit == DISCARD_UNIT_SECTION)
4f993264fe2965 Chao Yu        2021-08-03  2156  		dcc->discard_granularity = BLKS_PER_SEC(sbi);
4f993264fe2965 Chao Yu        2021-08-03  2157  
46f84c2c058784 Chao Yu        2017-04-15  2158  	INIT_LIST_HEAD(&dcc->entry_list);
78997b569f5625 Chao Yu        2017-10-04  2159  	for (i = 0; i < MAX_PLIST_NUM; i++)
ba48a33ef6faa5 Chao Yu        2017-04-15  2160  		INIT_LIST_HEAD(&dcc->pend_list[i]);
46f84c2c058784 Chao Yu        2017-04-15  2161  	INIT_LIST_HEAD(&dcc->wait_list);
8412663d177d95 Chao Yu        2017-10-04  2162  	INIT_LIST_HEAD(&dcc->fstrim_list);
1546996348b33d Jaegeuk Kim    2017-01-09  2163  	mutex_init(&dcc->cmd_lock);
8b8dd65f72ccbf Chao Yu        2017-03-25  2164  	atomic_set(&dcc->issued_discard, 0);
72691af6dbd719 Jaegeuk Kim    2018-12-13  2165  	atomic_set(&dcc->queued_discard, 0);
5f32366a29b48b Chao Yu        2017-03-25  2166  	atomic_set(&dcc->discard_cmd_cnt, 0);
0b54fb8458199d Jaegeuk Kim    2017-01-11  2167  	dcc->nr_discards = 0;
d618ebaf0aa83d Chao Yu        2017-04-25  2168  	dcc->max_discards = MAIN_SEGS(sbi) << sbi->log_blocks_per_seg;
d84d1cbdec6b5d Chao Yu        2017-04-18  2169  	dcc->undiscard_blks = 0;
20ee4382322cd9 Chao Yu        2018-07-08  2170  	dcc->next_pos = 0;
4dada3fd7025e9 Chao Yu        2018-10-04  2171  	dcc->root = RB_ROOT_CACHED;
67fce70ba341f7 Chao Yu        2018-06-22  2172  	dcc->rbtree_check = false;
0b54fb8458199d Jaegeuk Kim    2017-01-11  2173  
1546996348b33d Jaegeuk Kim    2017-01-09  2174  	init_waitqueue_head(&dcc->discard_wait_queue);
0b54fb8458199d Jaegeuk Kim    2017-01-11  2175  	SM_I(sbi)->dcc_info = dcc;
0b54fb8458199d Jaegeuk Kim    2017-01-11  2176  init_thread:
409d152775702f Fengnan Chang  2021-08-13  2177  	err = f2fs_start_discard_thread(sbi);
1546996348b33d Jaegeuk Kim    2017-01-09  2178  
0b54fb8458199d Jaegeuk Kim    2017-01-11  2179  	return err;
0b54fb8458199d Jaegeuk Kim    2017-01-11  2180  }
0b54fb8458199d Jaegeuk Kim    2017-01-11  2181  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108150616.qdFLurea-lkp%40intel.com.

--3MwIy2ne0vdjdPXF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
6nZFxBngR4fhhZQghIyxUvw/ORYJnUpNAgA=

--3MwIy2ne0vdjdPXF--
