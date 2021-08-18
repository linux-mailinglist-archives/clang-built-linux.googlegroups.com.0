Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW7N6OEAMGQEUUNE6XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 043F73F0322
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:02:36 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 30-20020a9d0da10000b02904cd320591a0sf851885ots.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 05:02:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629288155; cv=pass;
        d=google.com; s=arc-20160816;
        b=einGph7yVX+RnS8st8SvjeVMeQ7jp8jE2Rc2UHlhkandYWMvuGWZFX/UZQ88ZyKfWu
         QeSwzyzxStby8mr/Bng/teVUgbH2wtSwkhfYKQw1LfrEOApnDS8wKcMgqjY0xvd2d3ci
         0UBQP9BHzg4Gmi6bt/+Rnp4eri87TinZ4heVxGCgg3hYhkqkskNR+JzveNxPgDB7vqlm
         FwFMkpDudUzjUo/9AzM7JTQtPFfkTC6W2QPwExvEM/BHoZ6nCS2gSdHJ6HtEsH3PWbxp
         /F/+G1rij3Gp9FarBGhkQecSvpl9pFF/OK2MyfpkhEVU+kvufJi3m96Ln5OzEK2jlEtm
         xk0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=rAjCwPZVYtG52A6pZ8BG0UomHQDIKD4yj5a8n4RcZdk=;
        b=tpLvcXk01CmujAXkGDpsfmvjXu7366Eck0+hPyx68Ici/v9byplJ9LyeWrRyno0497
         oDNDL6sYg+FbKSCh6P+WDe7WC4F+VWGiuAqF5sFxOAcaFdc/YnUeVX1b0VcEaul/EyMe
         znG6SbACUnhARimiSglOaiMsX2Psb7OD9o3jzQSY/rNCzu6lM2h3t6aWKPpQytVlXKjU
         YhDZ+7Q9Q7SPjKY4J6sSb2KU09Nen34+F6g760xSr2g8BQqgGFxQ0QuYn39XP4w6t5MF
         HQ0LEIhmaDqkqQ1CHh54BoyUn2YJSfeTdBnhfyyavuzkRP0hnBaQMv8BQEQ84N07x7el
         F6FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rAjCwPZVYtG52A6pZ8BG0UomHQDIKD4yj5a8n4RcZdk=;
        b=ay8fjyY5PYDbCVg4JhS3CH35mcaDOBqDOy419QiAC/JT8ypwPtaF7Dz7a7bGKizF6j
         jGwigMWze75dliQ13Tmb3cHdzLhEz84WkgTUWOO6Z37/Dp/jfk867lPcOw9/IiQes+5u
         BxWHFbD0TKh0X5sdUsNXzdTCz9SMgCEiqbJgNrwhG/eoacRH4oDCrKQQObtDwYu/86Iy
         an7Z2tw+HvPjD+kVqlPUsYeKw2T0eSa6U+xEy3ZsbhuX20dI6I0bXi6u1be/xO/kXrso
         r5bZcsmQFnvm0vUKEinPbDO4/dfcYo9gE3HB0oMinqTnKnTafIR7vwpu9q6yUnhem+tN
         n4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rAjCwPZVYtG52A6pZ8BG0UomHQDIKD4yj5a8n4RcZdk=;
        b=bazEocwwzqgWSsXya2KB/oKZ4q5j4eWGdR8pEw39zvzVCsIks+hE/Y5u6lzPGBubHw
         oClguVdhVSitXIUtvW1P054kmcr1Lqb97W5wd1KigdQIAKzmtwjEOkdRKCIiRzDhMcw4
         x4gOpvJ46QKCXSV4NzGn9nLB6NShKsA+Se1obs73KPONSzAYKqnl2imF7TuSauYOCQLq
         rrCNVxFdb1Byi97YnzgBGePWhvtyVX/Si3nn3lt669IgAlbERX/DGEjLZZAlFv0zMW/D
         /eK9HAv0ToFnay3qDrVfnRc8ULO18NvWPSgTgwywcsjz3uHgZWMomJpsIt0wqus2XyEj
         pHWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531f3XhxIcWsPt6dXKbn9s1hy/J2lAHvwba69IMH0L1rRkK0AZ4s
	Q2OBcreO0u3KG5/A2EsLRN4=
X-Google-Smtp-Source: ABdhPJx3Iy7r24OICh5ACtF8DtlEYm59QP4UY0kZ4BASCs5uqJsoMLF1U2n2kcbnKEni2iZmN0qIDg==
X-Received: by 2002:a9d:664c:: with SMTP id q12mr6849773otm.243.1629288155486;
        Wed, 18 Aug 2021 05:02:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2210:: with SMTP id bd16ls569759oib.2.gmail; Wed,
 18 Aug 2021 05:02:34 -0700 (PDT)
X-Received: by 2002:aca:5316:: with SMTP id h22mr6895590oib.13.1629288153965;
        Wed, 18 Aug 2021 05:02:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629288153; cv=none;
        d=google.com; s=arc-20160816;
        b=uRA93wVq9s04C75AglcOEdYvl8a5ykJIsMZryvidiNHGsrk5iA8UuiE3XiVZF8FYkG
         VeKqnUtdFpSFngjHagfl9PHsAVA42W1VJFNGLE0+eNaDPjwOpGnvURTKLiFHPvjXOxso
         iIuMTbksEAaXZMnhBvzYmOmF9p7919yLoaSx1xudUVQQ08HEkryfDju4aeM5niqklAnb
         ROL1bfVM3VPZy7peDDaQXDtiqu3ytWoldLzrJU2mgHakQCI96RTFcJZQQc8lEEkC+3eC
         oewUeoMOZmOqFTC9QPQyr1GfyqZMp4YWuZLzy3ab/GjiyJfkVELnRpB5MlxcUfywU8nY
         zxwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ZEaoWDkTTA3r/HnHiVNcaM0bw66HpaLXDrmONMHFoqk=;
        b=JJ4BMlQKd6uNLpR8djYMKyw28N7wUb6ueF85ESRoXd81QKwW4eCw4WfsMhZj0kCWzB
         /RKvYsfh7CzyEqxs58wGKTWBrWO9+mdQ752j6fa3HYS/XzK3q4txNqT/T/QOw3y3oBIC
         qdCRre0FPdoRN2iLyGThDhe3h0OJsgIvmEyFWS8kSw/31pUyWV3Yrmj9VctywAVzNQCV
         lFbUVgrLXcmCOe47QL7kmKbIlB5jkJKSoX39+uf3gtUTf+fjBLcjzQfRa9baxfrSORfW
         tIz6hoQOKfswasSB6MSIpWuPPkyrs8Nti4B1LhLk3LCho3X1y6cNAeZZZd1Mr5wHIY1K
         FYuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id b26si3114oti.1.2021.08.18.05.02.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 05:02:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="216342974"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="216342974"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 05:02:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="gz'50?scan'50,208,50";a="680901340"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 18 Aug 2021 05:02:28 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGKH5-000Ss7-OW; Wed, 18 Aug 2021 12:02:27 +0000
Date: Wed, 18 Aug 2021 20:02:00 +0800
From: kernel test robot <lkp@intel.com>
To: Guoqing Jiang <guoqing.jiang@linux.dev>, axboe@kernel.dk
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-block@vger.kernel.org, linux-raid@vger.kernel.org
Subject: Re: [PATCH V2] raid1: ensure write behind bio has less than
 BIO_MAX_VECS sectors
Message-ID: <202108181934.edGCn9Ws-lkp@intel.com>
References: <20210818073738.1271033-1-guoqing.jiang@linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline
In-Reply-To: <20210818073738.1271033-1-guoqing.jiang@linux.dev>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Guoqing,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on song-md/md-next]
[also build test ERROR on v5.14-rc6 next-20210818]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Guoqing-Jiang/raid1-ensure-write-behind-bio-has-less-than-BIO_MAX_VECS-sectors/20210818-154106
base:   git://git.kernel.org/pub/scm/linux/kernel/git/song/md.git md-next
config: x86_64-randconfig-a011-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d2b574a4dea5b718e4386bf2e26af0126e5978ce)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/abf22557456363eb6fd1d1d09332f5261d61796c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Guoqing-Jiang/raid1-ensure-write-behind-bio-has-less-than-BIO_MAX_VECS-sectors/20210818-154106
        git checkout abf22557456363eb6fd1d1d09332f5261d61796c
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/md/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/md/raid1.c:1388:30: error: use of undeclared identifier 'mirror'
                   if (test_bit(WriteMostly, &mirror->rdev->flags))
                                              ^
   drivers/md/raid1.c:1471:56: error: use of undeclared identifier 'PAGE_SECTORS'
                   max_sectors = min_t(int, max_sectors, BIO_MAX_VECS * PAGE_SECTORS);
                                                                        ^
   drivers/md/raid1.c:1471:56: error: use of undeclared identifier 'PAGE_SECTORS'
   3 errors generated.


vim +/mirror +1388 drivers/md/raid1.c

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
  1334		bool write_behind = false;
  1335	
  1336		if (mddev_is_clustered(mddev) &&
  1337		     md_cluster_ops->area_resyncing(mddev, WRITE,
  1338			     bio->bi_iter.bi_sector, bio_end_sector(bio))) {
  1339	
  1340			DEFINE_WAIT(w);
  1341			for (;;) {
  1342				prepare_to_wait(&conf->wait_barrier,
  1343						&w, TASK_IDLE);
  1344				if (!md_cluster_ops->area_resyncing(mddev, WRITE,
  1345								bio->bi_iter.bi_sector,
  1346								bio_end_sector(bio)))
  1347					break;
  1348				schedule();
  1349			}
  1350			finish_wait(&conf->wait_barrier, &w);
  1351		}
  1352	
  1353		/*
  1354		 * Register the new request and wait if the reconstruction
  1355		 * thread has put up a bar for new requests.
  1356		 * Continue immediately if no resync is active currently.
  1357		 */
  1358		wait_barrier(conf, bio->bi_iter.bi_sector);
  1359	
  1360		r1_bio = alloc_r1bio(mddev, bio);
  1361		r1_bio->sectors = max_write_sectors;
  1362	
  1363		if (conf->pending_count >= max_queued_requests) {
  1364			md_wakeup_thread(mddev->thread);
  1365			raid1_log(mddev, "wait queued");
  1366			wait_event(conf->wait_barrier,
  1367				   conf->pending_count < max_queued_requests);
  1368		}
  1369		/* first select target devices under rcu_lock and
  1370		 * inc refcount on their rdev.  Record them by setting
  1371		 * bios[x] to bio
  1372		 * If there are known/acknowledged bad blocks on any device on
  1373		 * which we have seen a write error, we want to avoid writing those
  1374		 * blocks.
  1375		 * This potentially requires several writes to write around
  1376		 * the bad blocks.  Each set of writes gets it's own r1bio
  1377		 * with a set of bios attached.
  1378		 */
  1379	
  1380		disks = conf->raid_disks * 2;
  1381	 retry_write:
  1382		blocked_rdev = NULL;
  1383		rcu_read_lock();
  1384		max_sectors = r1_bio->sectors;
  1385		for (i = 0;  i < disks; i++) {
  1386			struct md_rdev *rdev = rcu_dereference(conf->mirrors[i].rdev);
  1387	
> 1388			if (test_bit(WriteMostly, &mirror->rdev->flags))
  1389				write_behind = true;
  1390	
  1391			if (rdev && unlikely(test_bit(Blocked, &rdev->flags))) {
  1392				atomic_inc(&rdev->nr_pending);
  1393				blocked_rdev = rdev;
  1394				break;
  1395			}
  1396			r1_bio->bios[i] = NULL;
  1397			if (!rdev || test_bit(Faulty, &rdev->flags)) {
  1398				if (i < conf->raid_disks)
  1399					set_bit(R1BIO_Degraded, &r1_bio->state);
  1400				continue;
  1401			}
  1402	
  1403			atomic_inc(&rdev->nr_pending);
  1404			if (test_bit(WriteErrorSeen, &rdev->flags)) {
  1405				sector_t first_bad;
  1406				int bad_sectors;
  1407				int is_bad;
  1408	
  1409				is_bad = is_badblock(rdev, r1_bio->sector, max_sectors,
  1410						     &first_bad, &bad_sectors);
  1411				if (is_bad < 0) {
  1412					/* mustn't write here until the bad block is
  1413					 * acknowledged*/
  1414					set_bit(BlockedBadBlocks, &rdev->flags);
  1415					blocked_rdev = rdev;
  1416					break;
  1417				}
  1418				if (is_bad && first_bad <= r1_bio->sector) {
  1419					/* Cannot write here at all */
  1420					bad_sectors -= (r1_bio->sector - first_bad);
  1421					if (bad_sectors < max_sectors)
  1422						/* mustn't write more than bad_sectors
  1423						 * to other devices yet
  1424						 */
  1425						max_sectors = bad_sectors;
  1426					rdev_dec_pending(rdev, mddev);
  1427					/* We don't set R1BIO_Degraded as that
  1428					 * only applies if the disk is
  1429					 * missing, so it might be re-added,
  1430					 * and we want to know to recover this
  1431					 * chunk.
  1432					 * In this case the device is here,
  1433					 * and the fact that this chunk is not
  1434					 * in-sync is recorded in the bad
  1435					 * block log
  1436					 */
  1437					continue;
  1438				}
  1439				if (is_bad) {
  1440					int good_sectors = first_bad - r1_bio->sector;
  1441					if (good_sectors < max_sectors)
  1442						max_sectors = good_sectors;
  1443				}
  1444			}
  1445			r1_bio->bios[i] = bio;
  1446		}
  1447		rcu_read_unlock();
  1448	
  1449		if (unlikely(blocked_rdev)) {
  1450			/* Wait for this device to become unblocked */
  1451			int j;
  1452	
  1453			for (j = 0; j < i; j++)
  1454				if (r1_bio->bios[j])
  1455					rdev_dec_pending(conf->mirrors[j].rdev, mddev);
  1456			r1_bio->state = 0;
  1457			allow_barrier(conf, bio->bi_iter.bi_sector);
  1458			raid1_log(mddev, "wait rdev %d blocked", blocked_rdev->raid_disk);
  1459			md_wait_for_blocked_rdev(blocked_rdev, mddev);
  1460			wait_barrier(conf, bio->bi_iter.bi_sector);
  1461			goto retry_write;
  1462		}
  1463	
  1464		/*
  1465		 * When using a bitmap, we may call alloc_behind_master_bio below.
  1466		 * alloc_behind_master_bio allocates a copy of the data payload a page
  1467		 * at a time and thus needs a new bio that can fit the whole payload
  1468		 * this bio in page sized chunks.
  1469		 */
  1470		if (write_behind && bitmap)
  1471			max_sectors = min_t(int, max_sectors, BIO_MAX_VECS * PAGE_SECTORS);
  1472		if (max_sectors < bio_sectors(bio)) {
  1473			struct bio *split = bio_split(bio, max_sectors,
  1474						      GFP_NOIO, &conf->bio_split);
  1475			bio_chain(split, bio);
  1476			submit_bio_noacct(bio);
  1477			bio = split;
  1478			r1_bio->master_bio = bio;
  1479			r1_bio->sectors = max_sectors;
  1480		}
  1481	
  1482		if (blk_queue_io_stat(bio->bi_bdev->bd_disk->queue))
  1483			r1_bio->start_time = bio_start_io_acct(bio);
  1484		atomic_set(&r1_bio->remaining, 1);
  1485		atomic_set(&r1_bio->behind_remaining, 0);
  1486	
  1487		first_clone = 1;
  1488	
  1489		for (i = 0; i < disks; i++) {
  1490			struct bio *mbio = NULL;
  1491			struct md_rdev *rdev = conf->mirrors[i].rdev;
  1492			if (!r1_bio->bios[i])
  1493				continue;
  1494	
  1495			if (first_clone) {
  1496				/* do behind I/O ?
  1497				 * Not if there are too many, or cannot
  1498				 * allocate memory, or a reader on WriteMostly
  1499				 * is waiting for behind writes to flush */
  1500				if (bitmap &&
  1501				    (atomic_read(&bitmap->behind_writes)
  1502				     < mddev->bitmap_info.max_write_behind) &&
  1503				    !waitqueue_active(&bitmap->behind_wait)) {
  1504					alloc_behind_master_bio(r1_bio, bio);
  1505				}
  1506	
  1507				md_bitmap_startwrite(bitmap, r1_bio->sector, r1_bio->sectors,
  1508						     test_bit(R1BIO_BehindIO, &r1_bio->state));
  1509				first_clone = 0;
  1510			}
  1511	
  1512			if (r1_bio->behind_master_bio)
  1513				mbio = bio_clone_fast(r1_bio->behind_master_bio,
  1514						      GFP_NOIO, &mddev->bio_set);
  1515			else
  1516				mbio = bio_clone_fast(bio, GFP_NOIO, &mddev->bio_set);
  1517	
  1518			if (r1_bio->behind_master_bio) {
  1519				if (test_bit(CollisionCheck, &rdev->flags))
  1520					wait_for_serialization(rdev, r1_bio);
  1521				if (test_bit(WriteMostly, &rdev->flags))
  1522					atomic_inc(&r1_bio->behind_remaining);
  1523			} else if (mddev->serialize_policy)
  1524				wait_for_serialization(rdev, r1_bio);
  1525	
  1526			r1_bio->bios[i] = mbio;
  1527	
  1528			mbio->bi_iter.bi_sector	= (r1_bio->sector +
  1529					   conf->mirrors[i].rdev->data_offset);
  1530			bio_set_dev(mbio, conf->mirrors[i].rdev->bdev);
  1531			mbio->bi_end_io	= raid1_end_write_request;
  1532			mbio->bi_opf = bio_op(bio) | (bio->bi_opf & (REQ_SYNC | REQ_FUA));
  1533			if (test_bit(FailFast, &conf->mirrors[i].rdev->flags) &&
  1534			    !test_bit(WriteMostly, &conf->mirrors[i].rdev->flags) &&
  1535			    conf->raid_disks - mddev->degraded > 1)
  1536				mbio->bi_opf |= MD_FAILFAST;
  1537			mbio->bi_private = r1_bio;
  1538	
  1539			atomic_inc(&r1_bio->remaining);
  1540	
  1541			if (mddev->gendisk)
  1542				trace_block_bio_remap(mbio, disk_devt(mddev->gendisk),
  1543						      r1_bio->sector);
  1544			/* flush_pending_writes() needs access to the rdev so...*/
  1545			mbio->bi_bdev = (void *)conf->mirrors[i].rdev;
  1546	
  1547			cb = blk_check_plugged(raid1_unplug, mddev, sizeof(*plug));
  1548			if (cb)
  1549				plug = container_of(cb, struct raid1_plug_cb, cb);
  1550			else
  1551				plug = NULL;
  1552			if (plug) {
  1553				bio_list_add(&plug->pending, mbio);
  1554				plug->pending_cnt++;
  1555			} else {
  1556				spin_lock_irqsave(&conf->device_lock, flags);
  1557				bio_list_add(&conf->pending_bio_list, mbio);
  1558				conf->pending_count++;
  1559				spin_unlock_irqrestore(&conf->device_lock, flags);
  1560				md_wakeup_thread(mddev->thread);
  1561			}
  1562		}
  1563	
  1564		r1_bio_write_done(r1_bio);
  1565	
  1566		/* In case raid1d snuck in to freeze_array */
  1567		wake_up(&conf->wait_barrier);
  1568	}
  1569	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108181934.edGCn9Ws-lkp%40intel.com.

--a8Wt8u1KmwUX3Y2C
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--a8Wt8u1KmwUX3Y2C--
