Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB67L32DQMGQENYT6HFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9ED3D0889
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 07:51:56 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id y3-20020ae9f4030000b02903b916ae903fsf981583qkl.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 22:51:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626846715; cv=pass;
        d=google.com; s=arc-20160816;
        b=U7NUf+ah5p4xaG1RHrUapqkvURPQJkIs6RqsoG32lZ8T7SfTPxtOrUhVt5Fs6N9sR+
         LLiACrZexYjMb267SmvD579uytmavIRrEHrx75ag4sr3hknifrcMdLlCYfa5To0ysiRJ
         VMr4cEahhvYJ5DAmMMMSEaswzfXAsuZZcfuEGy7zt/FD9J56qrf7TkYpEnukPvSbeqbl
         kYpMJC1Uy9elWKKlgpdzAPGRayQukt5i3UQaMEvbB7yMazC0O2M9I0AqmOhNhxb8XBCH
         DVnz0Q3kpp3pqD9QfnOdNrOoLKplMu70fyUgYnoHYQukbjRX/QzZvhH9tQCkeDmEi7ts
         Whqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VzUzgWun1LXds7Jtg82x1ygaGza3yjqRLwZtxwJ0kgw=;
        b=OJB97G/RT3/yR0Dtgg+Ln78X6edTEWMouCg5o7Ivwi/N0T5WWvw/YfA/PVkuoOHNFP
         Q25a3URvsOfGC3+0mBRvmULrCPapkjTKLN4B4OUdFpTsj+R0mkBqZYPruSCNw39gCapJ
         fad5MuT4BF/dgXxCw8/c8gUN7zT4BHI+Y9ikH0CSEDeoHuosENpC1bnY5nVfUDnWQxll
         LN4ynSVQWzr+TfYV39jNT84fEs3Asg+uPYXDtKW4VN8hv7lYlf1+w4LVL2qWC2M+DKXx
         BBPvz1gx7phfPawW03xXRyx7UnkzdqdB4SF7p/8u8L6jmPM2qaVyMVKbqz15NiDo7pxs
         kZlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VzUzgWun1LXds7Jtg82x1ygaGza3yjqRLwZtxwJ0kgw=;
        b=sqoKLfECO+U5LEMocoLsqd5mueNl7wSQAiNBqfk8HZ3lhHv8wBr0CBck6uhJhHZxCM
         /yf0j7KkOdkTFdashZXOCxA4l51Nmkn/0yaUg+MbUHRQZax9XPlXEkeGH77Xd4SXSdQy
         Cg6JSygqVBPGcc7P7Ql7ywFZF16t/GXHsGPQHdcY1CnkTWVu22SFyD39N1tHOifiZTaR
         stuiY3UHsqXGCjdCGGvrY2FXYHO531/o1GDnrzRc8N4X3IQigCK6muifQpFJdWAxJchg
         qjU8rxHq+wQlLtY5TyPM1KcIb7zGE2+tl4BmetTpOps64H4zxS7/IQNHoEhoFF4vwkMo
         v7zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VzUzgWun1LXds7Jtg82x1ygaGza3yjqRLwZtxwJ0kgw=;
        b=VjhERD9Y/ovFkpas0dpTjDfO8eHKvo7ifxX9GnE08pWVhwHnRUQlPGz71A5zJI0bRE
         Y+n1/7zXb2NHkRHnDWy2eHYnBnV8D1huQkQxepQKjdy/l+WgWj5r7KNL+ILj562kY+QW
         njuLkimihWSHSPkTkwjpac5uidAIwDcZhPoM7I900VfFZceD5DJt+q6wtSV0pWJ+ATWs
         Gwm45RxgnxIllxRrNSWUgta6BDnxV3+esAKfg5S7+UrEskdsu6v5waK3y3OGfJz/o5K4
         5kkv1Ax8wrEyKgcsi6zkeQZ47ysExxPqGJ43G1M/6YbSF42LPAWz4yYS5FeH76SKi72P
         cghg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dACBmkG586/hG3N6oPocZizo04p9OBhOE5jeQys8e1Zpwqt4O
	Jffualr+SjysCxINN8EljwM=
X-Google-Smtp-Source: ABdhPJxmBpEuX+lMg8OkzalGshjDXdGLiWvl88q8hLNLcTqUF4kpd3MUtuuyTm8xh8OIJfAD+qqkJw==
X-Received: by 2002:a05:6214:230c:: with SMTP id gc12mr25958690qvb.42.1626846715561;
        Tue, 20 Jul 2021 22:51:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2:: with SMTP id j2ls855836qki.8.gmail; Tue, 20 Jul
 2021 22:51:55 -0700 (PDT)
X-Received: by 2002:a05:620a:1713:: with SMTP id az19mr16061840qkb.67.1626846714893;
        Tue, 20 Jul 2021 22:51:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626846714; cv=none;
        d=google.com; s=arc-20160816;
        b=nSDZw2NpX9K/0QlhB2OXpP67Or83vuNxEOiMRE6s7XUlSkMZeBlS4Pp5yyafsib6LS
         Ek1uaMGiYX982G0n9eexpB2ox1QE78uvL11/wz41u1oFBYqwjzM7NY7CR5jI5NtL79uT
         SUUkFPla9NVjkBMJyzqqI5aR3k2sp8JPTp0orT04mO1jSywYrhn2QWAkJukVpP+wm0wB
         76X/tME3sgQarOQWGHkIpoPSy3efiwi3p5NkDWDXQLKieMhg6eUAzBUDlXNg2IAkHG/Q
         MfIyOq1n+J0AOePkL5cMiPUSpODHYvaVgXO9T1haflzwA1xEqh1BpjnNGabKpwsny2pd
         9A7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=oV5iFleC2UJGFpulJy97zobnU39DlbS8qnEQeMqJ7Bw=;
        b=fwmymsmF5XDos/KbDOgJr9tnDQnqv2W6YNep5kIhJ5gLduv7Tyc6GIMQVU4WrHrOn4
         Vnwezj+lwV0DIp2RuRCnC2eTXz8X1nUP2bsZ/BFex8WfSn6Il7UH6IQC6K8P39iFxIGA
         Fp02+h1Y0VkslCyn2lnya+yOgqdlvM4nsrrdXfUaGyDTDwtUGI/9M1BU5DpKfqHymwXm
         zWZBSZmM3IWG4oO/EhMEnUr/V8D1ROQ1oFgLR+WBOxKeFCyEtyQKsr90MXwiMy6iRmZU
         aXbqcpRfmzwxg4Dky41O+jky8uy/qbXNvgpdjlA1c4Y52LrZKN1L2GTl9W8WWP4OqVa/
         YjNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id y14si181634qtm.0.2021.07.20.22.51.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 22:51:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="190961438"
X-IronPort-AV: E=Sophos;i="5.84,257,1620716400"; 
   d="gz'50?scan'50,208,50";a="190961438"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2021 22:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,257,1620716400"; 
   d="gz'50?scan'50,208,50";a="657973405"
Received: from lkp-server01.sh.intel.com (HELO b8b92b2878b0) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 20 Jul 2021 22:51:49 -0700
Received: from kbuild by b8b92b2878b0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m6591-00008b-W1; Wed, 21 Jul 2021 05:51:47 +0000
Date: Wed, 21 Jul 2021 13:51:15 +0800
From: kernel test robot <lkp@intel.com>
To: Tushar Sugandhi <tusharsu@linux.microsoft.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	dm-devel@redhat.com, linux-kernel@vger.kernel.org,
	Mike Snitzer <snitzer@redhat.com>
Subject: [dm:for-next 9/10] drivers/md/dm-raid.c:3686:39: warning: variable
 'recovery' is uninitialized when used here
Message-ID: <202107211307.WaOQR1zv-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZGiS0Q5IWpPtfppv"
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


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/linux-dm.git for-next
head:   e820ba87f9d15399fa565ceba4a92b902c879d29
commit: fdac9de80c2e66d6df999ac810382c66b0cb2830 [9/10] dm: update target status functions to support IMA measurement
config: x86_64-randconfig-a011-20210720 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c781eb153bfbd1b52b03efe34f56bbeccbb8aba6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/linux-dm.git/commit/?id=fdac9de80c2e66d6df999ac810382c66b0cb2830
        git remote add dm https://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/linux-dm.git
        git fetch --no-tags dm for-next
        git checkout fdac9de80c2e66d6df999ac810382c66b0cb2830
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/md/dm-raid.c:3686:39: warning: variable 'recovery' is uninitialized when used here [-Wuninitialized]
                   state = decipher_sync_action(mddev, recovery);
                                                       ^~~~~~~~
   drivers/md/dm-raid.c:3517:24: note: initialize the variable 'recovery' to silence this warning
           unsigned long recovery;
                                 ^
                                  = 0
   1 warning generated.


vim +/recovery +3686 drivers/md/dm-raid.c

  3509	
  3510	static void raid_status(struct dm_target *ti, status_type_t type,
  3511				unsigned int status_flags, char *result, unsigned int maxlen)
  3512	{
  3513		struct raid_set *rs = ti->private;
  3514		struct mddev *mddev = &rs->md;
  3515		struct r5conf *conf = mddev->private;
  3516		int i, max_nr_stripes = conf ? conf->max_nr_stripes : 0;
  3517		unsigned long recovery;
  3518		unsigned int raid_param_cnt = 1; /* at least 1 for chunksize */
  3519		unsigned int sz = 0;
  3520		unsigned int rebuild_writemostly_count = 0;
  3521		sector_t progress, resync_max_sectors, resync_mismatches;
  3522		enum sync_state state;
  3523		struct raid_type *rt;
  3524	
  3525		switch (type) {
  3526		case STATUSTYPE_INFO:
  3527			/* *Should* always succeed */
  3528			rt = get_raid_type_by_ll(mddev->new_level, mddev->new_layout);
  3529			if (!rt)
  3530				return;
  3531	
  3532			DMEMIT("%s %d ", rt->name, mddev->raid_disks);
  3533	
  3534			/* Access most recent mddev properties for status output */
  3535			smp_rmb();
  3536			/* Get sensible max sectors even if raid set not yet started */
  3537			resync_max_sectors = test_bit(RT_FLAG_RS_PRERESUMED, &rs->runtime_flags) ?
  3538					      mddev->resync_max_sectors : mddev->dev_sectors;
  3539			recovery = rs->md.recovery;
  3540			state = decipher_sync_action(mddev, recovery);
  3541			progress = rs_get_progress(rs, recovery, state, resync_max_sectors);
  3542			resync_mismatches = (mddev->last_sync_action && !strcasecmp(mddev->last_sync_action, "check")) ?
  3543					    atomic64_read(&mddev->resync_mismatches) : 0;
  3544	
  3545			/* HM FIXME: do we want another state char for raid0? It shows 'D'/'A'/'-' now */
  3546			for (i = 0; i < rs->raid_disks; i++)
  3547				DMEMIT(__raid_dev_status(rs, &rs->dev[i].rdev));
  3548	
  3549			/*
  3550			 * In-sync/Reshape ratio:
  3551			 *  The in-sync ratio shows the progress of:
  3552			 *   - Initializing the raid set
  3553			 *   - Rebuilding a subset of devices of the raid set
  3554			 *  The user can distinguish between the two by referring
  3555			 *  to the status characters.
  3556			 *
  3557			 *  The reshape ratio shows the progress of
  3558			 *  changing the raid layout or the number of
  3559			 *  disks of a raid set
  3560			 */
  3561			DMEMIT(" %llu/%llu", (unsigned long long) progress,
  3562					     (unsigned long long) resync_max_sectors);
  3563	
  3564			/*
  3565			 * v1.5.0+:
  3566			 *
  3567			 * Sync action:
  3568			 *   See Documentation/admin-guide/device-mapper/dm-raid.rst for
  3569			 *   information on each of these states.
  3570			 */
  3571			DMEMIT(" %s", sync_str(state));
  3572	
  3573			/*
  3574			 * v1.5.0+:
  3575			 *
  3576			 * resync_mismatches/mismatch_cnt
  3577			 *   This field shows the number of discrepancies found when
  3578			 *   performing a "check" of the raid set.
  3579			 */
  3580			DMEMIT(" %llu", (unsigned long long) resync_mismatches);
  3581	
  3582			/*
  3583			 * v1.9.0+:
  3584			 *
  3585			 * data_offset (needed for out of space reshaping)
  3586			 *   This field shows the data offset into the data
  3587			 *   image LV where the first stripes data starts.
  3588			 *
  3589			 * We keep data_offset equal on all raid disks of the set,
  3590			 * so retrieving it from the first raid disk is sufficient.
  3591			 */
  3592			DMEMIT(" %llu", (unsigned long long) rs->dev[0].rdev.data_offset);
  3593	
  3594			/*
  3595			 * v1.10.0+:
  3596			 */
  3597			DMEMIT(" %s", test_bit(__CTR_FLAG_JOURNAL_DEV, &rs->ctr_flags) ?
  3598				      __raid_dev_status(rs, &rs->journal_dev.rdev) : "-");
  3599			break;
  3600	
  3601		case STATUSTYPE_TABLE:
  3602			/* Report the table line string you would use to construct this raid set */
  3603	
  3604			/*
  3605			 * Count any rebuild or writemostly argument pairs and subtract the
  3606			 * hweight count being added below of any rebuild and writemostly ctr flags.
  3607			 */
  3608			for (i = 0; i < rs->raid_disks; i++) {
  3609				rebuild_writemostly_count += (test_bit(i, (void *) rs->rebuild_disks) ? 2 : 0) +
  3610							     (test_bit(WriteMostly, &rs->dev[i].rdev.flags) ? 2 : 0);
  3611			}
  3612			rebuild_writemostly_count -= (test_bit(__CTR_FLAG_REBUILD, &rs->ctr_flags) ? 2 : 0) +
  3613						     (test_bit(__CTR_FLAG_WRITE_MOSTLY, &rs->ctr_flags) ? 2 : 0);
  3614			/* Calculate raid parameter count based on ^ rebuild/writemostly argument counts and ctr flags set. */
  3615			raid_param_cnt += rebuild_writemostly_count +
  3616					  hweight32(rs->ctr_flags & CTR_FLAG_OPTIONS_NO_ARGS) +
  3617					  hweight32(rs->ctr_flags & CTR_FLAG_OPTIONS_ONE_ARG) * 2;
  3618			/* Emit table line */
  3619			/* This has to be in the documented order for userspace! */
  3620			DMEMIT("%s %u %u", rs->raid_type->name, raid_param_cnt, mddev->new_chunk_sectors);
  3621			if (test_bit(__CTR_FLAG_SYNC, &rs->ctr_flags))
  3622				DMEMIT(" %s", dm_raid_arg_name_by_flag(CTR_FLAG_SYNC));
  3623			if (test_bit(__CTR_FLAG_NOSYNC, &rs->ctr_flags))
  3624				DMEMIT(" %s", dm_raid_arg_name_by_flag(CTR_FLAG_NOSYNC));
  3625			if (test_bit(__CTR_FLAG_REBUILD, &rs->ctr_flags))
  3626				for (i = 0; i < rs->raid_disks; i++)
  3627					if (test_bit(i, (void *) rs->rebuild_disks))
  3628						DMEMIT(" %s %u", dm_raid_arg_name_by_flag(CTR_FLAG_REBUILD), i);
  3629			if (test_bit(__CTR_FLAG_DAEMON_SLEEP, &rs->ctr_flags))
  3630				DMEMIT(" %s %lu", dm_raid_arg_name_by_flag(CTR_FLAG_DAEMON_SLEEP),
  3631						  mddev->bitmap_info.daemon_sleep);
  3632			if (test_bit(__CTR_FLAG_MIN_RECOVERY_RATE, &rs->ctr_flags))
  3633				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_MIN_RECOVERY_RATE),
  3634						 mddev->sync_speed_min);
  3635			if (test_bit(__CTR_FLAG_MAX_RECOVERY_RATE, &rs->ctr_flags))
  3636				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_MAX_RECOVERY_RATE),
  3637						 mddev->sync_speed_max);
  3638			if (test_bit(__CTR_FLAG_WRITE_MOSTLY, &rs->ctr_flags))
  3639				for (i = 0; i < rs->raid_disks; i++)
  3640					if (test_bit(WriteMostly, &rs->dev[i].rdev.flags))
  3641						DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_WRITE_MOSTLY),
  3642						       rs->dev[i].rdev.raid_disk);
  3643			if (test_bit(__CTR_FLAG_MAX_WRITE_BEHIND, &rs->ctr_flags))
  3644				DMEMIT(" %s %lu", dm_raid_arg_name_by_flag(CTR_FLAG_MAX_WRITE_BEHIND),
  3645						  mddev->bitmap_info.max_write_behind);
  3646			if (test_bit(__CTR_FLAG_STRIPE_CACHE, &rs->ctr_flags))
  3647				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_STRIPE_CACHE),
  3648						 max_nr_stripes);
  3649			if (test_bit(__CTR_FLAG_REGION_SIZE, &rs->ctr_flags))
  3650				DMEMIT(" %s %llu", dm_raid_arg_name_by_flag(CTR_FLAG_REGION_SIZE),
  3651						   (unsigned long long) to_sector(mddev->bitmap_info.chunksize));
  3652			if (test_bit(__CTR_FLAG_RAID10_COPIES, &rs->ctr_flags))
  3653				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_RAID10_COPIES),
  3654						 raid10_md_layout_to_copies(mddev->layout));
  3655			if (test_bit(__CTR_FLAG_RAID10_FORMAT, &rs->ctr_flags))
  3656				DMEMIT(" %s %s", dm_raid_arg_name_by_flag(CTR_FLAG_RAID10_FORMAT),
  3657						 raid10_md_layout_to_format(mddev->layout));
  3658			if (test_bit(__CTR_FLAG_DELTA_DISKS, &rs->ctr_flags))
  3659				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_DELTA_DISKS),
  3660						 max(rs->delta_disks, mddev->delta_disks));
  3661			if (test_bit(__CTR_FLAG_DATA_OFFSET, &rs->ctr_flags))
  3662				DMEMIT(" %s %llu", dm_raid_arg_name_by_flag(CTR_FLAG_DATA_OFFSET),
  3663						   (unsigned long long) rs->data_offset);
  3664			if (test_bit(__CTR_FLAG_JOURNAL_DEV, &rs->ctr_flags))
  3665				DMEMIT(" %s %s", dm_raid_arg_name_by_flag(CTR_FLAG_JOURNAL_DEV),
  3666						__get_dev_name(rs->journal_dev.dev));
  3667			if (test_bit(__CTR_FLAG_JOURNAL_MODE, &rs->ctr_flags))
  3668				DMEMIT(" %s %s", dm_raid_arg_name_by_flag(CTR_FLAG_JOURNAL_MODE),
  3669						 md_journal_mode_to_dm_raid(rs->journal_dev.mode));
  3670			DMEMIT(" %d", rs->raid_disks);
  3671			for (i = 0; i < rs->raid_disks; i++)
  3672				DMEMIT(" %s %s", __get_dev_name(rs->dev[i].meta_dev),
  3673						 __get_dev_name(rs->dev[i].data_dev));
  3674			break;
  3675	
  3676		case STATUSTYPE_IMA:
  3677			rt = get_raid_type_by_ll(mddev->new_level, mddev->new_layout);
  3678			if (!rt)
  3679				return;
  3680	
  3681			DMEMIT_TARGET_NAME_VERSION(ti->type);
  3682			DMEMIT(",raid_type=%s,raid_disks=%d", rt->name, mddev->raid_disks);
  3683	
  3684			/* Access most recent mddev properties for status output */
  3685			smp_rmb();
> 3686			state = decipher_sync_action(mddev, recovery);
  3687			DMEMIT(",raid_state=%s", sync_str(state));
  3688	
  3689			for (i = 0; i < rs->raid_disks; i++) {
  3690				DMEMIT(",raid_device_%d_status=", i);
  3691				DMEMIT(__raid_dev_status(rs, &rs->dev[i].rdev));
  3692			}
  3693	
  3694			if (rt_is_raid456(rt)) {
  3695				DMEMIT(",journal_dev_mode=");
  3696				switch (rs->journal_dev.mode) {
  3697				case R5C_JOURNAL_MODE_WRITE_THROUGH:
  3698					DMEMIT("%s",
  3699					       _raid456_journal_mode[R5C_JOURNAL_MODE_WRITE_THROUGH].param);
  3700					break;
  3701				case R5C_JOURNAL_MODE_WRITE_BACK:
  3702					DMEMIT("%s",
  3703					       _raid456_journal_mode[R5C_JOURNAL_MODE_WRITE_BACK].param);
  3704					break;
  3705				default:
  3706					DMEMIT("invalid");
  3707					break;
  3708				}
  3709			}
  3710			DMEMIT(";");
  3711			break;
  3712		}
  3713	}
  3714	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107211307.WaOQR1zv-lkp%40intel.com.

--ZGiS0Q5IWpPtfppv
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ZGiS0Q5IWpPtfppv--
