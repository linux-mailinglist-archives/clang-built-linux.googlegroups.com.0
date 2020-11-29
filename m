Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG5AR37AKGQENYBVWUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 773CB2C7909
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Nov 2020 13:12:12 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id q141sf4953117oic.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Nov 2020 04:12:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606651931; cv=pass;
        d=google.com; s=arc-20160816;
        b=teUBsE3dUS3VjVWNsDVfeCCEz7hMSaGUIA+dHybFdNMN3lbsekXO5LmZ45a5WD0Dil
         Z4Pq5IXraZxF48CcgSzdn3nQ2Qi1uaaaXRrdVxfb80C+uCHzKmo5jfIQpSH3aXzw8fMP
         0H3RkKmXzL7L5xZQMhhr9acUEWp9KReL+3Fu4vhHsQg68TPLfa13xJbCMiEWrtYomv3n
         L65tKZTJ095H6w0FllThuOgPrpYEGQuVdGQ0yl54sSIjdyknIxJ7AYxq0hjn5aMf1Ayu
         3GEgovqyuwt+xvxTSg0u0Y+VHjtH14DiOhuNzfe3jsZ5lImpIx4Lb4AZYM1dnNXHITOW
         MlXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=T1eNOomZ3CSl4Aw8bI4hJru5Io2cybR1HJLQS+J1rkE=;
        b=RyLnE65kSTp9zWnfqJ6kDsNgfYnC1PqIUMaPtseTmRFO/eyaIG6aGHQG/Vmusx3cUJ
         OBGgmRJq/1aRGEizVvib527EyRYj90/4pGgZqBfUe8y+dc4fCl4bCAk8fvZUpP4KRNio
         pDKBsrLNfARjPbitBKW4q8bCw1W3+mf12M+AIX8bIEqgYhdUj2iglOp9y7Wu2nLYFj2E
         Gru5P66gx5MCmUYUUas/Hr/UH1i6lLqQZJHNzlsuD7TVxPa3uEIl9m35M1Q5Y25dL9jz
         MFbdNHLanDLwNSaOEy6UCE7CDZ/z44ECQUifliWv/p+Zb5/VPd1JhMZmVmcmHwbqmWco
         5tPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T1eNOomZ3CSl4Aw8bI4hJru5Io2cybR1HJLQS+J1rkE=;
        b=SQIum0Um63r0IPFnbK9oq11zY5Lvxr4ncOEmPuddGE7caC25CFIahS+UY42TrfOG86
         6jtinfotiGb0PPNybSEtn/pVDVJ6i2l8WEmFxj/D/JPqmWhW0toladA0oVACJailab25
         MmCXTlaXS0+hTOAU0IfozGX3QA8OKH2e4oDeycOSnPSB5nbDiQUsTkng2THwGp378Eep
         H0ymGFpzRyEe6sapGDWiJ8aBxVLJqDA3U9R5ihVNQWNmTd64AdaXSLmxpFjLG75073Q1
         sZ6xSFJkpsYCajFDbOD95AiWmdjoqz2LDcrgWb6wItQdAvVu46GdgDNIpy0vs1WTb8SP
         wV/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T1eNOomZ3CSl4Aw8bI4hJru5Io2cybR1HJLQS+J1rkE=;
        b=q49VFGSnxYXicLNcmazD8EHHjLJXoODVoTvxe+B4KReApF6m17V4ZtbFTbOtT9M79m
         iPCHiPn0IMUVBXKiOIXPhje4/NQSCQBi4TufK+dESMC/2364KSULvaYmfmWyB7/3yOK2
         1WVb6Tl1l9SdnuYYXmq+3Vgl8nxhyX9tNUa6sdmuVkFxt1bgKHj4YDXr9IQ9ox7OynqK
         bC9vPadRQJagdf+14KD+7NKh+Gh1HoWVIT7+rmn/cfjw4sGkd3CLGeTY2h7HshqRRQtK
         NUlGzovafipwd9Yf9uGevFEICviZOzmr/nxV3Zss5QLEq3Q12i6Wkjlm6uvwUohzOMP7
         vwag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531whBeSifd+cjKhKkF6RllwM3Mv8jMIzB8HZwx4/7H1aUM0Bpg/
	vc8Mm34dlShO0OF2e4wB2hk=
X-Google-Smtp-Source: ABdhPJy+ZN6Eo4fwpjOWLqIeKVldSCae5nkeICQskr7VSoMRYnfZcbEgIuwDIgVRtcz2uKlI3E2wAw==
X-Received: by 2002:aca:570d:: with SMTP id l13mr11089678oib.96.1606651931134;
        Sun, 29 Nov 2020 04:12:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a9cc:: with SMTP id s195ls2052625oie.4.gmail; Sun, 29
 Nov 2020 04:12:10 -0800 (PST)
X-Received: by 2002:a54:4885:: with SMTP id r5mr11299640oic.34.1606651930620;
        Sun, 29 Nov 2020 04:12:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606651930; cv=none;
        d=google.com; s=arc-20160816;
        b=ncObvGWvPoPmsna/RfJ6TaT3JrjXk2ofPjUdQME4dbP0AD53IF64ZlzGcNX7dqVdfE
         hCsBqZxo64HCYh6Y9ZcHAad+BvjGoI+Ao0HIY+tuKBwhIkoha0NcCgZjNAdgqDmFoffC
         SMFWGQvNd9PSdUpOF6zpJJpKtRXg/q9/bu79ekg0aCMb/MLWhW5xlI9BvP2F0KxdS6bW
         xKRDOAdu0XKs5j9AmAXM359uoOMGLwoz05P8fRfTubjAPgWs8ziuLWe469X0Xq/Edk6V
         Uv74LLEkbOo7ZkMnGq/YFC0K7+vMJqHlP34ZgrEb4/i5s4/wGnCPn1/AvGY9NG7n1ugr
         vVfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=RAk5UUsAwjjohbyAxiakwl/Q8sWoSU/EmbBKLbH2v9c=;
        b=k6LydiGIPd5v6l2onIRxvOZeEFS76GWRs2PUQ5+4NnVnnbDZjN2flt9FbWZa5Lorj9
         V/lqyCoyzEpJlHz9R4WjlORUtDySaqwoTyEsVptW5Q+YeEBMHOMM9Ao2aiSeZBkK0bHk
         g2Sv+ygJq9BYR2Kce3ChnRkgOPLCP2Jm3LUSXrXpngfjrn/ONKvnYuIJXciqCzZakICm
         TKiVvow9Je4S8G9UaPCz6JwGred7MiYGnz3k9RREOV5dLRtgOlQcjd8lqn/RnfpJtQ8u
         SCEK06WiPKpml5UaLi/X0DhUABppn3M3ouEdifT2rL1jzeOJeyk974pt7Kf8LpOEdibp
         Iv3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id w25si56874otl.3.2020.11.29.04.12.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Nov 2020 04:12:10 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: 5WGUC1D8YoKN2ud1a+VRJAzMztxF834Ctx1nLHEIvDEJ3OhIwEN97AOJ6l+KLDrhbG90m6mxYy
 idvJ90wjgLlA==
X-IronPort-AV: E=McAfee;i="6000,8403,9819"; a="151781411"
X-IronPort-AV: E=Sophos;i="5.78,379,1599548400"; 
   d="gz'50?scan'50,208,50";a="151781411"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Nov 2020 04:12:08 -0800
IronPort-SDR: wDKIk9QeQ3tHIoxq0d3dZi7rYxm79A+ss6HfCFBz5BZTqcbRi7CJp1xDg7ZgY1iI/fJQ/mCTFW
 uC2b72V1y6Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,379,1599548400"; 
   d="gz'50?scan'50,208,50";a="480273400"
Received: from lkp-server01.sh.intel.com (HELO 3082e074203f) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 29 Nov 2020 04:12:06 -0800
Received: from kbuild by 3082e074203f with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kjLYk-00006A-7h; Sun, 29 Nov 2020 12:12:06 +0000
Date: Sun, 29 Nov 2020 20:11:10 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-block:bi_bdev 55/58] drivers/md/raid1.c:1522:12: error: too
 many arguments to function call, expected 3, have 4
Message-ID: <202011292000.gRJ3XDZA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="xHFwDpU9dbj6ez1V"
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


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git bi_bdev
head:   d3c9e59a154c5c7ffda0b882f9df002a6f47607c
commit: 853c94be8934b17884f9dee431436683b484c346 [55/58] block: remove the request_queue argument to the block_bio_remap tracepoint
config: arm-randconfig-r022-20201129 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f502b14d40e751fe00afc493ef0d08f196524886)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        git remote add hch-block git://git.infradead.org/users/hch/block.git
        git fetch --no-tags hch-block bi_bdev
        git checkout 853c94be8934b17884f9dee431436683b484c346
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/md/raid1.c:1522:12: error: too many arguments to function call, expected 3, have 4
                                                 r1_bio->sector);
                                                 ^~~~~~~~~~~~~~
   include/trace/events/block.h:460:1: note: 'trace_block_bio_remap' declared here
   TRACE_EVENT(block_bio_remap,
   ^
   include/linux/tracepoint.h:547:2: note: expanded from macro 'TRACE_EVENT'
           DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^
   include/linux/tracepoint.h:411:2: note: expanded from macro 'DECLARE_TRACE'
           __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
           ^
   include/linux/tracepoint.h:334:21: note: expanded from macro '__DECLARE_TRACE'
           static inline void trace_##name(proto)                          \
                              ^
   <scratch space>:11:1: note: expanded from here
   trace_block_bio_remap
   ^
   1 error generated.
--
>> drivers/md/raid5.c:5473:12: error: too many arguments to function call, expected 3, have 4
                                                 raid_bio->bi_iter.bi_sector);
                                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/events/block.h:460:1: note: 'trace_block_bio_remap' declared here
   TRACE_EVENT(block_bio_remap,
   ^
   include/linux/tracepoint.h:547:2: note: expanded from macro 'TRACE_EVENT'
           DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
           ^
   include/linux/tracepoint.h:411:2: note: expanded from macro 'DECLARE_TRACE'
           __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
           ^
   include/linux/tracepoint.h:334:21: note: expanded from macro '__DECLARE_TRACE'
           static inline void trace_##name(proto)                          \
                              ^
   <scratch space>:12:1: note: expanded from here
   trace_block_bio_remap
   ^
   1 error generated.

vim +1522 drivers/md/raid1.c

^1da177e4c3f41 Linus Torvalds    2005-04-16  1313  
c230e7e53526c2 NeilBrown         2017-04-05  1314  static void raid1_write_request(struct mddev *mddev, struct bio *bio,
c230e7e53526c2 NeilBrown         2017-04-05  1315  				int max_write_sectors)
3b046a97cbd35a Robert LeBlanc    2016-12-05  1316  {
3b046a97cbd35a Robert LeBlanc    2016-12-05  1317  	struct r1conf *conf = mddev->private;
fd76863e37fef2 colyli@suse.de    2017-02-18  1318  	struct r1bio *r1_bio;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1319  	int i, disks;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1320  	struct bitmap *bitmap = mddev->bitmap;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1321  	unsigned long flags;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1322  	struct md_rdev *blocked_rdev;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1323  	struct blk_plug_cb *cb;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1324  	struct raid1_plug_cb *plug = NULL;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1325  	int first_clone;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1326  	int max_sectors;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1327  
b3143b9a38d503 NeilBrown         2017-10-17  1328  	if (mddev_is_clustered(mddev) &&
3b046a97cbd35a Robert LeBlanc    2016-12-05  1329  	     md_cluster_ops->area_resyncing(mddev, WRITE,
b3143b9a38d503 NeilBrown         2017-10-17  1330  		     bio->bi_iter.bi_sector, bio_end_sector(bio))) {
3b046a97cbd35a Robert LeBlanc    2016-12-05  1331  
3b046a97cbd35a Robert LeBlanc    2016-12-05  1332  		DEFINE_WAIT(w);
3b046a97cbd35a Robert LeBlanc    2016-12-05  1333  		for (;;) {
3b046a97cbd35a Robert LeBlanc    2016-12-05  1334  			prepare_to_wait(&conf->wait_barrier,
ae89fd3de4793c Mikulas Patocka   2017-10-18  1335  					&w, TASK_IDLE);
f81f7302e86f5c Guoqing Jiang     2017-10-24  1336  			if (!md_cluster_ops->area_resyncing(mddev, WRITE,
3b046a97cbd35a Robert LeBlanc    2016-12-05  1337  							bio->bi_iter.bi_sector,
b3143b9a38d503 NeilBrown         2017-10-17  1338  							bio_end_sector(bio)))
3b046a97cbd35a Robert LeBlanc    2016-12-05  1339  				break;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1340  			schedule();
3b046a97cbd35a Robert LeBlanc    2016-12-05  1341  		}
3b046a97cbd35a Robert LeBlanc    2016-12-05  1342  		finish_wait(&conf->wait_barrier, &w);
3b046a97cbd35a Robert LeBlanc    2016-12-05  1343  	}
f81f7302e86f5c Guoqing Jiang     2017-10-24  1344  
f81f7302e86f5c Guoqing Jiang     2017-10-24  1345  	/*
f81f7302e86f5c Guoqing Jiang     2017-10-24  1346  	 * Register the new request and wait if the reconstruction
f81f7302e86f5c Guoqing Jiang     2017-10-24  1347  	 * thread has put up a bar for new requests.
f81f7302e86f5c Guoqing Jiang     2017-10-24  1348  	 * Continue immediately if no resync is active currently.
f81f7302e86f5c Guoqing Jiang     2017-10-24  1349  	 */
fd76863e37fef2 colyli@suse.de    2017-02-18  1350  	wait_barrier(conf, bio->bi_iter.bi_sector);
fd76863e37fef2 colyli@suse.de    2017-02-18  1351  
689389a06ce79f NeilBrown         2017-04-05  1352  	r1_bio = alloc_r1bio(mddev, bio);
c230e7e53526c2 NeilBrown         2017-04-05  1353  	r1_bio->sectors = max_write_sectors;
3b046a97cbd35a Robert LeBlanc    2016-12-05  1354  
34db0cd60f8a1f NeilBrown         2011-10-11  1355  	if (conf->pending_count >= max_queued_requests) {
34db0cd60f8a1f NeilBrown         2011-10-11  1356  		md_wakeup_thread(mddev->thread);
578b54ade8a5e0 NeilBrown         2016-11-14  1357  		raid1_log(mddev, "wait queued");
34db0cd60f8a1f NeilBrown         2011-10-11  1358  		wait_event(conf->wait_barrier,
34db0cd60f8a1f NeilBrown         2011-10-11  1359  			   conf->pending_count < max_queued_requests);
34db0cd60f8a1f NeilBrown         2011-10-11  1360  	}
1f68f0c4b677cc NeilBrown         2011-07-28  1361  	/* first select target devices under rcu_lock and
^1da177e4c3f41 Linus Torvalds    2005-04-16  1362  	 * inc refcount on their rdev.  Record them by setting
^1da177e4c3f41 Linus Torvalds    2005-04-16  1363  	 * bios[x] to bio
1f68f0c4b677cc NeilBrown         2011-07-28  1364  	 * If there are known/acknowledged bad blocks on any device on
1f68f0c4b677cc NeilBrown         2011-07-28  1365  	 * which we have seen a write error, we want to avoid writing those
1f68f0c4b677cc NeilBrown         2011-07-28  1366  	 * blocks.
1f68f0c4b677cc NeilBrown         2011-07-28  1367  	 * This potentially requires several writes to write around
1f68f0c4b677cc NeilBrown         2011-07-28  1368  	 * the bad blocks.  Each set of writes gets it's own r1bio
1f68f0c4b677cc NeilBrown         2011-07-28  1369  	 * with a set of bios attached.
^1da177e4c3f41 Linus Torvalds    2005-04-16  1370  	 */
c3b328ac846bcf NeilBrown         2011-04-18  1371  
8f19ccb2fd70de NeilBrown         2011-12-23  1372  	disks = conf->raid_disks * 2;
6bfe0b499082fd Dan Williams      2008-04-30  1373   retry_write:
6bfe0b499082fd Dan Williams      2008-04-30  1374  	blocked_rdev = NULL;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1375  	rcu_read_lock();
1f68f0c4b677cc NeilBrown         2011-07-28  1376  	max_sectors = r1_bio->sectors;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1377  	for (i = 0;  i < disks; i++) {
3cb03002000f13 NeilBrown         2011-10-11  1378  		struct md_rdev *rdev = rcu_dereference(conf->mirrors[i].rdev);
6bfe0b499082fd Dan Williams      2008-04-30  1379  		if (rdev && unlikely(test_bit(Blocked, &rdev->flags))) {
6bfe0b499082fd Dan Williams      2008-04-30  1380  			atomic_inc(&rdev->nr_pending);
6bfe0b499082fd Dan Williams      2008-04-30  1381  			blocked_rdev = rdev;
6bfe0b499082fd Dan Williams      2008-04-30  1382  			break;
6bfe0b499082fd Dan Williams      2008-04-30  1383  		}
1f68f0c4b677cc NeilBrown         2011-07-28  1384  		r1_bio->bios[i] = NULL;
8ae126660fddbe Kent Overstreet   2015-04-27  1385  		if (!rdev || test_bit(Faulty, &rdev->flags)) {
8f19ccb2fd70de NeilBrown         2011-12-23  1386  			if (i < conf->raid_disks)
1f68f0c4b677cc NeilBrown         2011-07-28  1387  				set_bit(R1BIO_Degraded, &r1_bio->state);
1f68f0c4b677cc NeilBrown         2011-07-28  1388  			continue;
1f68f0c4b677cc NeilBrown         2011-07-28  1389  		}
1f68f0c4b677cc NeilBrown         2011-07-28  1390  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1391  		atomic_inc(&rdev->nr_pending);
1f68f0c4b677cc NeilBrown         2011-07-28  1392  		if (test_bit(WriteErrorSeen, &rdev->flags)) {
1f68f0c4b677cc NeilBrown         2011-07-28  1393  			sector_t first_bad;
1f68f0c4b677cc NeilBrown         2011-07-28  1394  			int bad_sectors;
1f68f0c4b677cc NeilBrown         2011-07-28  1395  			int is_bad;
1f68f0c4b677cc NeilBrown         2011-07-28  1396  
3b046a97cbd35a Robert LeBlanc    2016-12-05  1397  			is_bad = is_badblock(rdev, r1_bio->sector, max_sectors,
1f68f0c4b677cc NeilBrown         2011-07-28  1398  					     &first_bad, &bad_sectors);
1f68f0c4b677cc NeilBrown         2011-07-28  1399  			if (is_bad < 0) {
1f68f0c4b677cc NeilBrown         2011-07-28  1400  				/* mustn't write here until the bad block is
1f68f0c4b677cc NeilBrown         2011-07-28  1401  				 * acknowledged*/
1f68f0c4b677cc NeilBrown         2011-07-28  1402  				set_bit(BlockedBadBlocks, &rdev->flags);
1f68f0c4b677cc NeilBrown         2011-07-28  1403  				blocked_rdev = rdev;
1f68f0c4b677cc NeilBrown         2011-07-28  1404  				break;
1f68f0c4b677cc NeilBrown         2011-07-28  1405  			}
1f68f0c4b677cc NeilBrown         2011-07-28  1406  			if (is_bad && first_bad <= r1_bio->sector) {
1f68f0c4b677cc NeilBrown         2011-07-28  1407  				/* Cannot write here at all */
1f68f0c4b677cc NeilBrown         2011-07-28  1408  				bad_sectors -= (r1_bio->sector - first_bad);
1f68f0c4b677cc NeilBrown         2011-07-28  1409  				if (bad_sectors < max_sectors)
1f68f0c4b677cc NeilBrown         2011-07-28  1410  					/* mustn't write more than bad_sectors
1f68f0c4b677cc NeilBrown         2011-07-28  1411  					 * to other devices yet
1f68f0c4b677cc NeilBrown         2011-07-28  1412  					 */
1f68f0c4b677cc NeilBrown         2011-07-28  1413  					max_sectors = bad_sectors;
03c902e17f40cf NeilBrown         2006-01-06  1414  				rdev_dec_pending(rdev, mddev);
1f68f0c4b677cc NeilBrown         2011-07-28  1415  				/* We don't set R1BIO_Degraded as that
1f68f0c4b677cc NeilBrown         2011-07-28  1416  				 * only applies if the disk is
1f68f0c4b677cc NeilBrown         2011-07-28  1417  				 * missing, so it might be re-added,
1f68f0c4b677cc NeilBrown         2011-07-28  1418  				 * and we want to know to recover this
1f68f0c4b677cc NeilBrown         2011-07-28  1419  				 * chunk.
1f68f0c4b677cc NeilBrown         2011-07-28  1420  				 * In this case the device is here,
1f68f0c4b677cc NeilBrown         2011-07-28  1421  				 * and the fact that this chunk is not
1f68f0c4b677cc NeilBrown         2011-07-28  1422  				 * in-sync is recorded in the bad
1f68f0c4b677cc NeilBrown         2011-07-28  1423  				 * block log
1f68f0c4b677cc NeilBrown         2011-07-28  1424  				 */
1f68f0c4b677cc NeilBrown         2011-07-28  1425  				continue;
964147d5c86d63 NeilBrown         2010-05-18  1426  			}
1f68f0c4b677cc NeilBrown         2011-07-28  1427  			if (is_bad) {
1f68f0c4b677cc NeilBrown         2011-07-28  1428  				int good_sectors = first_bad - r1_bio->sector;
1f68f0c4b677cc NeilBrown         2011-07-28  1429  				if (good_sectors < max_sectors)
1f68f0c4b677cc NeilBrown         2011-07-28  1430  					max_sectors = good_sectors;
1f68f0c4b677cc NeilBrown         2011-07-28  1431  			}
1f68f0c4b677cc NeilBrown         2011-07-28  1432  		}
1f68f0c4b677cc NeilBrown         2011-07-28  1433  		r1_bio->bios[i] = bio;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1434  	}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1435  	rcu_read_unlock();
^1da177e4c3f41 Linus Torvalds    2005-04-16  1436  
6bfe0b499082fd Dan Williams      2008-04-30  1437  	if (unlikely(blocked_rdev)) {
6bfe0b499082fd Dan Williams      2008-04-30  1438  		/* Wait for this device to become unblocked */
6bfe0b499082fd Dan Williams      2008-04-30  1439  		int j;
6bfe0b499082fd Dan Williams      2008-04-30  1440  
6bfe0b499082fd Dan Williams      2008-04-30  1441  		for (j = 0; j < i; j++)
6bfe0b499082fd Dan Williams      2008-04-30  1442  			if (r1_bio->bios[j])
6bfe0b499082fd Dan Williams      2008-04-30  1443  				rdev_dec_pending(conf->mirrors[j].rdev, mddev);
1f68f0c4b677cc NeilBrown         2011-07-28  1444  		r1_bio->state = 0;
fd76863e37fef2 colyli@suse.de    2017-02-18  1445  		allow_barrier(conf, bio->bi_iter.bi_sector);
578b54ade8a5e0 NeilBrown         2016-11-14  1446  		raid1_log(mddev, "wait rdev %d blocked", blocked_rdev->raid_disk);
6bfe0b499082fd Dan Williams      2008-04-30  1447  		md_wait_for_blocked_rdev(blocked_rdev, mddev);
fd76863e37fef2 colyli@suse.de    2017-02-18  1448  		wait_barrier(conf, bio->bi_iter.bi_sector);
6bfe0b499082fd Dan Williams      2008-04-30  1449  		goto retry_write;
6bfe0b499082fd Dan Williams      2008-04-30  1450  	}
6bfe0b499082fd Dan Williams      2008-04-30  1451  
c230e7e53526c2 NeilBrown         2017-04-05  1452  	if (max_sectors < bio_sectors(bio)) {
c230e7e53526c2 NeilBrown         2017-04-05  1453  		struct bio *split = bio_split(bio, max_sectors,
afeee514ce7f4c Kent Overstreet   2018-05-20  1454  					      GFP_NOIO, &conf->bio_split);
c230e7e53526c2 NeilBrown         2017-04-05  1455  		bio_chain(split, bio);
ed00aabd5eb9fb Christoph Hellwig 2020-07-01  1456  		submit_bio_noacct(bio);
c230e7e53526c2 NeilBrown         2017-04-05  1457  		bio = split;
c230e7e53526c2 NeilBrown         2017-04-05  1458  		r1_bio->master_bio = bio;
1f68f0c4b677cc NeilBrown         2011-07-28  1459  		r1_bio->sectors = max_sectors;
191ea9b2c7cc3e NeilBrown         2005-06-21  1460  	}
4b6d287f627b5f NeilBrown         2005-09-09  1461  
4e78064f42ad47 NeilBrown         2010-10-19  1462  	atomic_set(&r1_bio->remaining, 1);
4b6d287f627b5f NeilBrown         2005-09-09  1463  	atomic_set(&r1_bio->behind_remaining, 0);
06d91a5fe0b50c NeilBrown         2005-06-21  1464  
1f68f0c4b677cc NeilBrown         2011-07-28  1465  	first_clone = 1;
d8c84c4f8becc1 Ming Lei          2017-03-17  1466  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1467  	for (i = 0; i < disks; i++) {
8e58e327e25c7f Ming Lei          2017-02-14  1468  		struct bio *mbio = NULL;
69df9cfc70421f Guoqing Jiang     2019-12-23  1469  		struct md_rdev *rdev = conf->mirrors[i].rdev;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1470  		if (!r1_bio->bios[i])
^1da177e4c3f41 Linus Torvalds    2005-04-16  1471  			continue;
^1da177e4c3f41 Linus Torvalds    2005-04-16  1472  
1f68f0c4b677cc NeilBrown         2011-07-28  1473  		if (first_clone) {
1f68f0c4b677cc NeilBrown         2011-07-28  1474  			/* do behind I/O ?
1f68f0c4b677cc NeilBrown         2011-07-28  1475  			 * Not if there are too many, or cannot
1f68f0c4b677cc NeilBrown         2011-07-28  1476  			 * allocate memory, or a reader on WriteMostly
1f68f0c4b677cc NeilBrown         2011-07-28  1477  			 * is waiting for behind writes to flush */
1f68f0c4b677cc NeilBrown         2011-07-28  1478  			if (bitmap &&
1f68f0c4b677cc NeilBrown         2011-07-28  1479  			    (atomic_read(&bitmap->behind_writes)
1f68f0c4b677cc NeilBrown         2011-07-28  1480  			     < mddev->bitmap_info.max_write_behind) &&
8e58e327e25c7f Ming Lei          2017-02-14  1481  			    !waitqueue_active(&bitmap->behind_wait)) {
16d56e2fcc1fc1 Shaohua Li        2017-07-17  1482  				alloc_behind_master_bio(r1_bio, bio);
8e58e327e25c7f Ming Lei          2017-02-14  1483  			}
^1da177e4c3f41 Linus Torvalds    2005-04-16  1484  
e64e4018d57271 Andy Shevchenko   2018-08-01  1485  			md_bitmap_startwrite(bitmap, r1_bio->sector, r1_bio->sectors,
e64e4018d57271 Andy Shevchenko   2018-08-01  1486  					     test_bit(R1BIO_BehindIO, &r1_bio->state));
1f68f0c4b677cc NeilBrown         2011-07-28  1487  			first_clone = 0;
1f68f0c4b677cc NeilBrown         2011-07-28  1488  		}
8e58e327e25c7f Ming Lei          2017-02-14  1489  
841c1316c7da61 Ming Lei          2017-03-17  1490  		if (r1_bio->behind_master_bio)
841c1316c7da61 Ming Lei          2017-03-17  1491  			mbio = bio_clone_fast(r1_bio->behind_master_bio,
afeee514ce7f4c Kent Overstreet   2018-05-20  1492  					      GFP_NOIO, &mddev->bio_set);
c230e7e53526c2 NeilBrown         2017-04-05  1493  		else
afeee514ce7f4c Kent Overstreet   2018-05-20  1494  			mbio = bio_clone_fast(bio, GFP_NOIO, &mddev->bio_set);
8e58e327e25c7f Ming Lei          2017-02-14  1495  
841c1316c7da61 Ming Lei          2017-03-17  1496  		if (r1_bio->behind_master_bio) {
69df9cfc70421f Guoqing Jiang     2019-12-23  1497  			if (test_bit(CollisionCheck, &rdev->flags))
d0d2d8ba049465 Guoqing Jiang     2019-12-23  1498  				wait_for_serialization(rdev, r1_bio);
3e148a3209792e Guoqing Jiang     2019-06-19  1499  			if (test_bit(WriteMostly, &rdev->flags))
4b6d287f627b5f NeilBrown         2005-09-09  1500  				atomic_inc(&r1_bio->behind_remaining);
69df9cfc70421f Guoqing Jiang     2019-12-23  1501  		} else if (mddev->serialize_policy)
d0d2d8ba049465 Guoqing Jiang     2019-12-23  1502  			wait_for_serialization(rdev, r1_bio);
4b6d287f627b5f NeilBrown         2005-09-09  1503  
1f68f0c4b677cc NeilBrown         2011-07-28  1504  		r1_bio->bios[i] = mbio;
1f68f0c4b677cc NeilBrown         2011-07-28  1505  
4f024f3797c43c Kent Overstreet   2013-10-11  1506  		mbio->bi_iter.bi_sector	= (r1_bio->sector +
1f68f0c4b677cc NeilBrown         2011-07-28  1507  				   conf->mirrors[i].rdev->data_offset);
74d46992e0d9de Christoph Hellwig 2017-08-23  1508  		bio_set_dev(mbio, conf->mirrors[i].rdev->bdev);
1f68f0c4b677cc NeilBrown         2011-07-28  1509  		mbio->bi_end_io	= raid1_end_write_request;
a682e0035494c4 Linus Torvalds    2017-02-24  1510  		mbio->bi_opf = bio_op(bio) | (bio->bi_opf & (REQ_SYNC | REQ_FUA));
212e7eb7a34034 NeilBrown         2016-11-18  1511  		if (test_bit(FailFast, &conf->mirrors[i].rdev->flags) &&
212e7eb7a34034 NeilBrown         2016-11-18  1512  		    !test_bit(WriteMostly, &conf->mirrors[i].rdev->flags) &&
212e7eb7a34034 NeilBrown         2016-11-18  1513  		    conf->raid_disks - mddev->degraded > 1)
212e7eb7a34034 NeilBrown         2016-11-18  1514  			mbio->bi_opf |= MD_FAILFAST;
1f68f0c4b677cc NeilBrown         2011-07-28  1515  		mbio->bi_private = r1_bio;
1f68f0c4b677cc NeilBrown         2011-07-28  1516  
^1da177e4c3f41 Linus Torvalds    2005-04-16  1517  		atomic_inc(&r1_bio->remaining);
f54a9d0e59c4be NeilBrown         2012-08-02  1518  
109e37653033a5 NeilBrown         2016-11-18  1519  		if (mddev->gendisk)
74d46992e0d9de Christoph Hellwig 2017-08-23  1520  			trace_block_bio_remap(mbio->bi_disk->queue,
109e37653033a5 NeilBrown         2016-11-18  1521  					      mbio, disk_devt(mddev->gendisk),
109e37653033a5 NeilBrown         2016-11-18 @1522  					      r1_bio->sector);
109e37653033a5 NeilBrown         2016-11-18  1523  		/* flush_pending_writes() needs access to the rdev so...*/
74d46992e0d9de Christoph Hellwig 2017-08-23  1524  		mbio->bi_disk = (void *)conf->mirrors[i].rdev;
109e37653033a5 NeilBrown         2016-11-18  1525  
f54a9d0e59c4be NeilBrown         2012-08-02  1526  		cb = blk_check_plugged(raid1_unplug, mddev, sizeof(*plug));
f54a9d0e59c4be NeilBrown         2012-08-02  1527  		if (cb)
f54a9d0e59c4be NeilBrown         2012-08-02  1528  			plug = container_of(cb, struct raid1_plug_cb, cb);
f54a9d0e59c4be NeilBrown         2012-08-02  1529  		else
f54a9d0e59c4be NeilBrown         2012-08-02  1530  			plug = NULL;
f54a9d0e59c4be NeilBrown         2012-08-02  1531  		if (plug) {
f54a9d0e59c4be NeilBrown         2012-08-02  1532  			bio_list_add(&plug->pending, mbio);
f54a9d0e59c4be NeilBrown         2012-08-02  1533  			plug->pending_cnt++;
f54a9d0e59c4be NeilBrown         2012-08-02  1534  		} else {
23b245c04d0ef4 Shaohua Li        2017-05-10  1535  			spin_lock_irqsave(&conf->device_lock, flags);
4e78064f42ad47 NeilBrown         2010-10-19  1536  			bio_list_add(&conf->pending_bio_list, mbio);
34db0cd60f8a1f NeilBrown         2011-10-11  1537  			conf->pending_count++;
191ea9b2c7cc3e NeilBrown         2005-06-21  1538  			spin_unlock_irqrestore(&conf->device_lock, flags);
b357f04a67c2ae NeilBrown         2012-07-03  1539  			md_wakeup_thread(mddev->thread);
4e78064f42ad47 NeilBrown         2010-10-19  1540  		}
23b245c04d0ef4 Shaohua Li        2017-05-10  1541  	}
1f68f0c4b677cc NeilBrown         2011-07-28  1542  
079fa166a28749 NeilBrown         2011-09-10  1543  	r1_bio_write_done(r1_bio);
079fa166a28749 NeilBrown         2011-09-10  1544  
079fa166a28749 NeilBrown         2011-09-10  1545  	/* In case raid1d snuck in to freeze_array */
079fa166a28749 NeilBrown         2011-09-10  1546  	wake_up(&conf->wait_barrier);
^1da177e4c3f41 Linus Torvalds    2005-04-16  1547  }
^1da177e4c3f41 Linus Torvalds    2005-04-16  1548  

:::::: The code at line 1522 was first introduced by commit
:::::: 109e37653033a5fcd3bf8cab0ed6a7ff433f758a md: add block tracing for bio_remapping

:::::: TO: NeilBrown <neilb@suse.com>
:::::: CC: Shaohua Li <shli@fb.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011292000.gRJ3XDZA-lkp%40intel.com.

--xHFwDpU9dbj6ez1V
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
GKv99AEA

--xHFwDpU9dbj6ez1V--
