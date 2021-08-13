Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIXW3CEAMGQE7HXPMOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 917103EB354
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 11:28:03 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id l14-20020a67ba0e0000b02902c10effe47fsf840294vsn.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 02:28:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628846882; cv=pass;
        d=google.com; s=arc-20160816;
        b=wKpxNnMG7WexkFeRWTm++fZEpntMVGqujdA9U06C47Fp0DCCHKsd9+lvllPYKpaw48
         4BdLiOzIYcDaDqGDdTl53AkLnX2AXDeb8rKcM4O5QcuT/UY4ry5c3XOVrI24yGyJgFsQ
         pIR6GVqgtYiXWXnWAC20jr2chcr1b37REiSS+vDTgV3VmHo6KG1dhP2ISKjvxmW4mCYo
         8E9jN5D7s9CksDLkyz7J4WXAQfejlPPP+EPXTTWih/xfQ20J2idcD42ma6aOybZtmG36
         XHNUTX4SiJdIKN7CEibfOvfHyVvjTvG6DuYtss8Cr+DyfUDV0Bb/6shLHyZmrJ4quJR+
         C5Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kODkEwmLWhepNJ2fHcx0nlI4t5aYzKkuFwysVnITgx8=;
        b=n/6C+oDtMj81jruR4ONGwqSiXlp3Ls8zr2j1qL/wGB4IwtZ57GUOaVrM2YeKHW7sVb
         xGCyTFJykpikIaX1p6UwXh0ZzRpOBb6vgKawNbtmlphuo3Md5CeRxpuJAj8yoOzGqZfZ
         yy0tYLaotknXFGG3uuSLeMmjq6G7u/kVMuXiS8KvZ9kHnqz3JtiWfR4S8xjntjWXfpz3
         wh2b8x50gwD5e3wYmQPBo+Nv9TQGKcLFs1tc3Au84LeS/mQYIq9jb0hiBx1DpJQX+iL7
         kPFHTgfN+mSHrduALntDngYfAgJCZe8yaoypLgpfwnPXbMEXK16a1v4KMzOPKQ1l2Gil
         mWsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kODkEwmLWhepNJ2fHcx0nlI4t5aYzKkuFwysVnITgx8=;
        b=QtvEjlGrKRwibHbVSkmCJ2PxvK5RRpFOxF27DBINds81hTeJcPbpfklu3S0NtyQ/5T
         qAuHFreSSY19xhMf3DfEzHL8Eb3aCDueBVNCrBC8/4ayjzrCgDFaZzSEfpRzWlhQs9NV
         2xyhzP7OAJHsIfN1BylBO9CpUdqWDgwpNihIiJhloOIISwSAXEOnrnL0OJ+b5FlSY+ac
         uFdZ+B++di42WpJGHuWTQidSmKEsjnpYOigL1NZkGG0rbmrz1n9SJc2Pfj/tzD/phytp
         SxKBQLDt2T+N1TAcmmgeqM6gWOkmI2ohteeSXzN57Wo1Ic9661MOYaIktKxPE1JEMIL8
         oMxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kODkEwmLWhepNJ2fHcx0nlI4t5aYzKkuFwysVnITgx8=;
        b=OCmhAfTR7X+XO02uJfEuKfbUxfxKo4WfhVEovfi6uBfHBkos/SRLfVcuAXjKMo3RrU
         GRrcx4LsMHk9PNTm0H0755tzMhDCxpb31hhwFtaxOcugeVmttzFWEvCFfUyZtWJ4MIpq
         dCnk1T4++PR24SpEZbtYz7rCKfhkt3dY1qeMKWJqzuh+s6lkiMc0oznMq3dsUMMbJk8u
         lpzNfhm5U77cENNFxOEvweLr5y8I/bPqrUvyRAXlQZSK2tgKlCODegSh0d0r+s2naFXL
         flF/bnpzSVvH3j1myzbS8WBZZBDnvKEnv0Cr/SJ9FO5gOrzwVH7buRQyv+pbubsGec8J
         j7hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CMzcTsrWUD8415Wt+YRydITMjohzvjQI0mvAf99K2dOtJPFTD
	YM1phoRbm++hH9k/WQoz0Nw=
X-Google-Smtp-Source: ABdhPJxee8Q91zpH9rpTda0uDHdWBSEHU6wxoUQjtFpuiUE647ubr4xhilrvqow3E4HRQWyzpgJdhw==
X-Received: by 2002:a67:c009:: with SMTP id v9mr707544vsi.47.1628846882542;
        Fri, 13 Aug 2021 02:28:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7682:: with SMTP id v2ls52709uaq.10.gmail; Fri, 13 Aug
 2021 02:28:02 -0700 (PDT)
X-Received: by 2002:ab0:d84:: with SMTP id i4mr702171uak.108.1628846881744;
        Fri, 13 Aug 2021 02:28:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628846881; cv=none;
        d=google.com; s=arc-20160816;
        b=z6eBb0ydpgfW72DviLMBB9eHK50xX+n2cd3hZ0XFOulwl2BBBkMP/cwFlufIRkiUMO
         VFdSqmjn9w5TfcHV1zzyQDMjT6U7ZlamOsotsvsw3eIm0oU2ym01VD0B0c7ArNwGjtBY
         gfqEkC308ARHzKE0Br2AmwISrElxTLP2yTOMa7/+XPWJsFYB7HqzQKwT3gYDuiXSkcI0
         5pSaVkNOQciHfDzEnAZVtHJh/cEiws2jH/ybGg2KNh6yHx/gF4GOmyCKP18Ke8jc2mWH
         q2WFoX3OKnaVllCeTeaBqr/76at/SjRyxSrsaT5AM3ckr2N0Skwglt0WpXcvwMIPAFe4
         g4SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=rPG5ZLot2TLTUNul07l0eS0xl/V0nPq2JVs+vxbJqDg=;
        b=t4npYqjGPWOPpdLzAmDFxB8OM++dtPHV1OxPXu0GH0Ql/s3dqOdyqlu43BJK92YeOD
         qohIEno27jLVVtp8ZyqmrcQbnwLfG7w6AtI3n50b0gZDlAN6Msq9I+xdzcfZsMv/4pXu
         CziTm34ZmNYyIZxV9TaFC6z23fmIPUNO1Wr9lTUUU6jEBVWwCmB2Ra0CReWRBUZGFtFV
         xlXpRaAUQNC5IywKOlHz7/sGovlX2KAGF8aOd04FZ9ao+H9v0wk6/9sx7CZ8nfHVjuBv
         2H2E9m/gurVNU0MtlCic6jCFuet8pKl7mAEfizlDg9PihRojOrV3keFxlQB684yh63nh
         DS/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id l10si60747uap.1.2021.08.13.02.28.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 02:28:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215525571"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; 
   d="gz'50?scan'50,208,50";a="215525571"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2021 02:27:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; 
   d="gz'50?scan'50,208,50";a="677315703"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 13 Aug 2021 02:27:57 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mETTo-000Nd8-P8; Fri, 13 Aug 2021 09:27:56 +0000
Date: Fri, 13 Aug 2021 17:27:38 +0800
From: kernel test robot <lkp@intel.com>
To: Guoqing Jiang <guoqing.jiang@linux.dev>, song@kernel.org
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-raid@vger.kernel.org, jens@chianterastutte.eu
Subject: Re: [PATCH] raid1: ensure bio doesn't have more than BIO_MAX_VECS
 sectors
Message-ID: <202108131720.wppP230k-lkp@intel.com>
References: <20210813060510.3545109-1-guoqing.jiang@linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline
In-Reply-To: <20210813060510.3545109-1-guoqing.jiang@linux.dev>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Guoqing,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on song-md/md-next]
[also build test ERROR on v5.14-rc5 next-20210812]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Guoqing-Jiang/raid1-ensure-bio-doesn-t-have-more-than-BIO_MAX_VECS-sectors/20210813-140810
base:   git://git.kernel.org/pub/scm/linux/kernel/git/song/md.git md-next
config: hexagon-randconfig-r001-20210813 (attached as .config)
compiler: clang version 12.0.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/29b7720a83de1deea0d8ecfafe0db46146636b15
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Guoqing-Jiang/raid1-ensure-bio-doesn-t-have-more-than-BIO_MAX_VECS-sectors/20210813-140810
        git checkout 29b7720a83de1deea0d8ecfafe0db46146636b15
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=hexagon SHELL=/bin/bash drivers/md/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/md/raid1.c:1459:55: error: use of undeclared identifier 'PAGE_SECTORS'
           max_sectors = min_t(int, max_sectors, BIO_MAX_VECS * PAGE_SECTORS);
                                                                ^
>> drivers/md/raid1.c:1459:55: error: use of undeclared identifier 'PAGE_SECTORS'
   2 errors generated.


vim +/PAGE_SECTORS +1459 drivers/md/raid1.c

  1320	
  1321	static void raid1_write_request(struct mddev *mddev, struct bio *bio,
  1322					int max_write_sectors)
  1323	{
  1324		struct r1conf *conf = mddev->private;
  1325		struct r1bio *r1_bio;
  1326		int i, disks;
  1327		struct bitmap *bitmap = mddev->bitmap;
  1328		unsigned long flags;
  1329		struct md_rdev *blocked_rdev;
  1330		struct blk_plug_cb *cb;
  1331		struct raid1_plug_cb *plug = NULL;
  1332		int first_clone;
  1333		int max_sectors;
  1334	
  1335		if (mddev_is_clustered(mddev) &&
  1336		     md_cluster_ops->area_resyncing(mddev, WRITE,
  1337			     bio->bi_iter.bi_sector, bio_end_sector(bio))) {
  1338	
  1339			DEFINE_WAIT(w);
  1340			for (;;) {
  1341				prepare_to_wait(&conf->wait_barrier,
  1342						&w, TASK_IDLE);
  1343				if (!md_cluster_ops->area_resyncing(mddev, WRITE,
  1344								bio->bi_iter.bi_sector,
  1345								bio_end_sector(bio)))
  1346					break;
  1347				schedule();
  1348			}
  1349			finish_wait(&conf->wait_barrier, &w);
  1350		}
  1351	
  1352		/*
  1353		 * Register the new request and wait if the reconstruction
  1354		 * thread has put up a bar for new requests.
  1355		 * Continue immediately if no resync is active currently.
  1356		 */
  1357		wait_barrier(conf, bio->bi_iter.bi_sector);
  1358	
  1359		r1_bio = alloc_r1bio(mddev, bio);
  1360		r1_bio->sectors = max_write_sectors;
  1361	
  1362		if (conf->pending_count >= max_queued_requests) {
  1363			md_wakeup_thread(mddev->thread);
  1364			raid1_log(mddev, "wait queued");
  1365			wait_event(conf->wait_barrier,
  1366				   conf->pending_count < max_queued_requests);
  1367		}
  1368		/* first select target devices under rcu_lock and
  1369		 * inc refcount on their rdev.  Record them by setting
  1370		 * bios[x] to bio
  1371		 * If there are known/acknowledged bad blocks on any device on
  1372		 * which we have seen a write error, we want to avoid writing those
  1373		 * blocks.
  1374		 * This potentially requires several writes to write around
  1375		 * the bad blocks.  Each set of writes gets it's own r1bio
  1376		 * with a set of bios attached.
  1377		 */
  1378	
  1379		disks = conf->raid_disks * 2;
  1380	 retry_write:
  1381		blocked_rdev = NULL;
  1382		rcu_read_lock();
  1383		max_sectors = r1_bio->sectors;
  1384		for (i = 0;  i < disks; i++) {
  1385			struct md_rdev *rdev = rcu_dereference(conf->mirrors[i].rdev);
  1386			if (rdev && unlikely(test_bit(Blocked, &rdev->flags))) {
  1387				atomic_inc(&rdev->nr_pending);
  1388				blocked_rdev = rdev;
  1389				break;
  1390			}
  1391			r1_bio->bios[i] = NULL;
  1392			if (!rdev || test_bit(Faulty, &rdev->flags)) {
  1393				if (i < conf->raid_disks)
  1394					set_bit(R1BIO_Degraded, &r1_bio->state);
  1395				continue;
  1396			}
  1397	
  1398			atomic_inc(&rdev->nr_pending);
  1399			if (test_bit(WriteErrorSeen, &rdev->flags)) {
  1400				sector_t first_bad;
  1401				int bad_sectors;
  1402				int is_bad;
  1403	
  1404				is_bad = is_badblock(rdev, r1_bio->sector, max_sectors,
  1405						     &first_bad, &bad_sectors);
  1406				if (is_bad < 0) {
  1407					/* mustn't write here until the bad block is
  1408					 * acknowledged*/
  1409					set_bit(BlockedBadBlocks, &rdev->flags);
  1410					blocked_rdev = rdev;
  1411					break;
  1412				}
  1413				if (is_bad && first_bad <= r1_bio->sector) {
  1414					/* Cannot write here at all */
  1415					bad_sectors -= (r1_bio->sector - first_bad);
  1416					if (bad_sectors < max_sectors)
  1417						/* mustn't write more than bad_sectors
  1418						 * to other devices yet
  1419						 */
  1420						max_sectors = bad_sectors;
  1421					rdev_dec_pending(rdev, mddev);
  1422					/* We don't set R1BIO_Degraded as that
  1423					 * only applies if the disk is
  1424					 * missing, so it might be re-added,
  1425					 * and we want to know to recover this
  1426					 * chunk.
  1427					 * In this case the device is here,
  1428					 * and the fact that this chunk is not
  1429					 * in-sync is recorded in the bad
  1430					 * block log
  1431					 */
  1432					continue;
  1433				}
  1434				if (is_bad) {
  1435					int good_sectors = first_bad - r1_bio->sector;
  1436					if (good_sectors < max_sectors)
  1437						max_sectors = good_sectors;
  1438				}
  1439			}
  1440			r1_bio->bios[i] = bio;
  1441		}
  1442		rcu_read_unlock();
  1443	
  1444		if (unlikely(blocked_rdev)) {
  1445			/* Wait for this device to become unblocked */
  1446			int j;
  1447	
  1448			for (j = 0; j < i; j++)
  1449				if (r1_bio->bios[j])
  1450					rdev_dec_pending(conf->mirrors[j].rdev, mddev);
  1451			r1_bio->state = 0;
  1452			allow_barrier(conf, bio->bi_iter.bi_sector);
  1453			raid1_log(mddev, "wait rdev %d blocked", blocked_rdev->raid_disk);
  1454			md_wait_for_blocked_rdev(blocked_rdev, mddev);
  1455			wait_barrier(conf, bio->bi_iter.bi_sector);
  1456			goto retry_write;
  1457		}
  1458	
> 1459		max_sectors = min_t(int, max_sectors, BIO_MAX_VECS * PAGE_SECTORS);
  1460		if (max_sectors < bio_sectors(bio)) {
  1461			struct bio *split = bio_split(bio, max_sectors,
  1462						      GFP_NOIO, &conf->bio_split);
  1463			bio_chain(split, bio);
  1464			submit_bio_noacct(bio);
  1465			bio = split;
  1466			r1_bio->master_bio = bio;
  1467			r1_bio->sectors = max_sectors;
  1468		}
  1469	
  1470		if (blk_queue_io_stat(bio->bi_bdev->bd_disk->queue))
  1471			r1_bio->start_time = bio_start_io_acct(bio);
  1472		atomic_set(&r1_bio->remaining, 1);
  1473		atomic_set(&r1_bio->behind_remaining, 0);
  1474	
  1475		first_clone = 1;
  1476	
  1477		for (i = 0; i < disks; i++) {
  1478			struct bio *mbio = NULL;
  1479			struct md_rdev *rdev = conf->mirrors[i].rdev;
  1480			if (!r1_bio->bios[i])
  1481				continue;
  1482	
  1483			if (first_clone) {
  1484				/* do behind I/O ?
  1485				 * Not if there are too many, or cannot
  1486				 * allocate memory, or a reader on WriteMostly
  1487				 * is waiting for behind writes to flush */
  1488				if (bitmap &&
  1489				    (atomic_read(&bitmap->behind_writes)
  1490				     < mddev->bitmap_info.max_write_behind) &&
  1491				    !waitqueue_active(&bitmap->behind_wait)) {
  1492					alloc_behind_master_bio(r1_bio, bio);
  1493				}
  1494	
  1495				md_bitmap_startwrite(bitmap, r1_bio->sector, r1_bio->sectors,
  1496						     test_bit(R1BIO_BehindIO, &r1_bio->state));
  1497				first_clone = 0;
  1498			}
  1499	
  1500			if (r1_bio->behind_master_bio)
  1501				mbio = bio_clone_fast(r1_bio->behind_master_bio,
  1502						      GFP_NOIO, &mddev->bio_set);
  1503			else
  1504				mbio = bio_clone_fast(bio, GFP_NOIO, &mddev->bio_set);
  1505	
  1506			if (r1_bio->behind_master_bio) {
  1507				if (test_bit(CollisionCheck, &rdev->flags))
  1508					wait_for_serialization(rdev, r1_bio);
  1509				if (test_bit(WriteMostly, &rdev->flags))
  1510					atomic_inc(&r1_bio->behind_remaining);
  1511			} else if (mddev->serialize_policy)
  1512				wait_for_serialization(rdev, r1_bio);
  1513	
  1514			r1_bio->bios[i] = mbio;
  1515	
  1516			mbio->bi_iter.bi_sector	= (r1_bio->sector +
  1517					   conf->mirrors[i].rdev->data_offset);
  1518			bio_set_dev(mbio, conf->mirrors[i].rdev->bdev);
  1519			mbio->bi_end_io	= raid1_end_write_request;
  1520			mbio->bi_opf = bio_op(bio) | (bio->bi_opf & (REQ_SYNC | REQ_FUA));
  1521			if (test_bit(FailFast, &conf->mirrors[i].rdev->flags) &&
  1522			    !test_bit(WriteMostly, &conf->mirrors[i].rdev->flags) &&
  1523			    conf->raid_disks - mddev->degraded > 1)
  1524				mbio->bi_opf |= MD_FAILFAST;
  1525			mbio->bi_private = r1_bio;
  1526	
  1527			atomic_inc(&r1_bio->remaining);
  1528	
  1529			if (mddev->gendisk)
  1530				trace_block_bio_remap(mbio, disk_devt(mddev->gendisk),
  1531						      r1_bio->sector);
  1532			/* flush_pending_writes() needs access to the rdev so...*/
  1533			mbio->bi_bdev = (void *)conf->mirrors[i].rdev;
  1534	
  1535			cb = blk_check_plugged(raid1_unplug, mddev, sizeof(*plug));
  1536			if (cb)
  1537				plug = container_of(cb, struct raid1_plug_cb, cb);
  1538			else
  1539				plug = NULL;
  1540			if (plug) {
  1541				bio_list_add(&plug->pending, mbio);
  1542				plug->pending_cnt++;
  1543			} else {
  1544				spin_lock_irqsave(&conf->device_lock, flags);
  1545				bio_list_add(&conf->pending_bio_list, mbio);
  1546				conf->pending_count++;
  1547				spin_unlock_irqrestore(&conf->device_lock, flags);
  1548				md_wakeup_thread(mddev->thread);
  1549			}
  1550		}
  1551	
  1552		r1_bio_write_done(r1_bio);
  1553	
  1554		/* In case raid1d snuck in to freeze_array */
  1555		wake_up(&conf->wait_barrier);
  1556	}
  1557	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108131720.wppP230k-lkp%40intel.com.

--PNTmBPCT7hxwcZjr
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--PNTmBPCT7hxwcZjr--
