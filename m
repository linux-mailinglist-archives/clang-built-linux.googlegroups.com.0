Return-Path: <clang-built-linux+bncBAABBOHH52DQMGQEPXFZJSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCA03D4545
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 08:31:22 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id mv14-20020a17090b198eb0290176233dff9dsf5519405pjb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 23:31:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627108281; cv=pass;
        d=google.com; s=arc-20160816;
        b=J17iAWnZJz7XSlUpEG+syBVzCMD/3IBTqe7pBShtNKxhIDFtxYtjeMilTa3XTqfAJY
         eqRlh8rOf1P8n42EIfp/gOzQamN4flvx8+/4Ce9ujLyeSRN+GE5dq9VK1KDDm+kIWooX
         30z19Uezv7B38Ns41QmWum1TqA8l7qqQ05lnXBrVC/zrLEVypn+jeEFTur21ItLU7B0X
         VRLmKTub+zGRf0q/+QkjQlzHsnFyah1jVHHJgTpWskzdAd1nwklzcJC4AUya8yxMT8Lj
         2lSPAHGnnXjGW0kqNMz3TlFZwZ60O4xG9M9U/IencHAKpP4ZPULZsjvtIniEV35u3g+b
         6p4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-filter:sender
         :dkim-signature;
        bh=FV3zRlB3C6x5uCVUNBm2E24pv3EgFJ541bCxqJwGVRA=;
        b=0c5sfZ6YomaVPJ690Cv/vsn0M1JBujyYoiAotnlUTXcT1sevs0K/IixNa4S8thwxKE
         D0GP+BWvbRKe9vCU2wCv0bH/Cky8LZWHy0yhaqgBCu0IE8+2Jh7khgF8ckUBtcH+tjPt
         x1nMV30rYLUv7Zy4IJcrWyU05pCnqkgEWj+EXE09yXRqDpH0qp4g9D5yGPrrX4eosGAN
         p+i1Qs5r96MwqS/9KfwFH6QK1q8sBCAjktjHWl47eGsLwqzpFqZTG+mtLdWF0EN5ogvf
         F0XuzWEFU/bbd2/t/43E5ng7TrhmiZypOcFY+WRS5KIrP0037pSh4P/xgw2ywGHWEGfo
         V2Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=mBs8K7QG;
       spf=pass (google.com: domain of tusharsu@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=tusharsu@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FV3zRlB3C6x5uCVUNBm2E24pv3EgFJ541bCxqJwGVRA=;
        b=H6bwj39F/pD4hPlgqTmMEtwI5uKVQjfsWADJ5LZvr148FoamUed+IYGjKSV1ELhhq+
         NQuLLcGftiRa6RVe6vFf8c3lgdFeRDsQLg7WExcttDmAPCMERgknMBV6IykrC4ZV64lZ
         +JhAuInqIqj5IPKSlWKogjOINGJhU89JpGHZZbyosVHJCgL3J2B2Ds5xRK+h9kqHZZST
         s4nCfcD1/vFPo4mQXt5G5sqLIsPqpm9ZVTviy2DOuub4pRrh7RqiKamJ4T8srvl2Xyd2
         Dp/yLSo3DNYyOgKOghI7opGb5ZfZ28t7YGMwRB/G2z/BjRf8E4x4axUn7V7f0shY6DFA
         yzUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FV3zRlB3C6x5uCVUNBm2E24pv3EgFJ541bCxqJwGVRA=;
        b=Ui1j2THYAbCF/1CayPPVvDQwWzS0UQIjWC2xnNJXeMWWIbLINE1aqCYIMHghnPp5JA
         a5318nLhhGtsawb2u+tdeGc2uSv8x8h06r+w8WjmhmKpzW0vftHuk8s+eifQC38kKhac
         2KZv4ARLHzUpDPhQ9kgfRmCZcLKWfIDGzYSMmnFzdFTVITYCL/G602O4YbPy2quxJr+B
         Le9km7X358jU1mqcBHLHsrULiAlOqSgu4thpdIEUnOhPgtrDJC1ZL3yU1/EyypzOaOvb
         Jy7Sn9KaD1QOqJnjlKh21IsNN03+AE6PTajQG3jeGy6QUg78XyjhlWHhFkLlpSL4xapm
         ujfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AtXOx8vdd3jr8RYRYPRM/8WrCOJXYb01SDWWVOwswwDAnZh1I
	JLZ3Eyv/fhBGGnL7alVqqDA=
X-Google-Smtp-Source: ABdhPJw14HmKP6+XKPhU//ReD9Sj2vABi8FZ6EkRSDl5MQ8QQUX8tsvPI4laJJXQQyCUwyynnC0koQ==
X-Received: by 2002:a17:902:ab98:b029:12b:acc0:e18c with SMTP id f24-20020a170902ab98b029012bacc0e18cmr6530425plr.10.1627108280875;
        Fri, 23 Jul 2021 23:31:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c10c:: with SMTP id 12ls5772988pli.11.gmail; Fri, 23
 Jul 2021 23:31:20 -0700 (PDT)
X-Received: by 2002:a17:902:a503:b029:12b:2429:385e with SMTP id s3-20020a170902a503b029012b2429385emr6700924plq.64.1627108280330;
        Fri, 23 Jul 2021 23:31:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627108280; cv=none;
        d=google.com; s=arc-20160816;
        b=ZJu9zA5wtD81EUyvvswPPqq9rB6C5zqRPChsARex6z3DC74W7PDukyr82CTsAldvAz
         CAuEkv31Wm2nu8dnc6mnUuSiPxdt16u69E7izWC3mjyYwnviyNTNV/skuw5ZNKttZxCR
         MCyA2pXprnLuLp1vzhq+8eUU/6G+SiK2cfPXz2FWHntkQuSR3uz0K7wbzBau1UlI6JkP
         H4xkLMKOMzUNbj5POjaxNhLen/7hnRKc6DK+dMJuFxtZNleQVkhtlBSTk6a80WZmUGhR
         ozQCuJEoSjrGIgsIew+jxEBax7W1yxNJXmt9dvrruUL+A38IzyE3A3TqOCMY/0oesvyb
         C+Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-filter;
        bh=5OoRqVILcgrbgv5nU8+RxvQlkznKP8dezNnu0hewlRE=;
        b=B0h+GPjIU+qbbh0UEjH+TJA8eUx5rX1nMBrmrvBRgVPxmw4l9wIoPvGbvuH6WlUKFI
         y01s+kt5flQJz3/31HEC1ViXCWKOoYJB4gC6KvCEa1/s+Bf/qBz0eGmtby/tUNiYsRYr
         J8vWA/zlnNlEFAtpmCPWzoSoO+nQXmrAaaHWD5Ku9toIjHz4IHwLRp7doywm/UWfuLLu
         rMkDKXG/h/v0TAi0I+dgH4kqbvHT8Ym19QgKvrHOHt7zmUnFdsUGA9n43LlL+GAVNWne
         0Yk1ERDqIOyx3kreIAoK4racUg8vd4gW3AR9KvOqfmhFkCAy2BNC5kNXOzLFV7FWorqi
         /YLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=mBs8K7QG;
       spf=pass (google.com: domain of tusharsu@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=tusharsu@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id r7si3477871pjp.0.2021.07.23.23.31.20
        for <clang-built-linux@googlegroups.com>;
        Fri, 23 Jul 2021 23:31:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of tusharsu@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from [192.168.86.34] (c-71-197-163-6.hsd1.wa.comcast.net [71.197.163.6])
	by linux.microsoft.com (Postfix) with ESMTPSA id 8EA3A20B7178;
	Fri, 23 Jul 2021 23:31:19 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 8EA3A20B7178
Subject: Re: [dm:for-next 9/10] drivers/md/dm-raid.c:3686:39: warning:
 variable 'recovery' is uninitialized when used here
To: kernel test robot <lkp@intel.com>, Mike Snitzer <snitzer@redhat.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 dm-devel@redhat.com, linux-kernel@vger.kernel.org
References: <202107211307.WaOQR1zv-lkp@intel.com>
From: Tushar Sugandhi <tusharsu@linux.microsoft.com>
Message-ID: <0780ef71-77fd-f151-36c3-5981403ca31c@linux.microsoft.com>
Date: Fri, 23 Jul 2021 23:31:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202107211307.WaOQR1zv-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: tusharsu@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=mBs8K7QG;
       spf=pass (google.com: domain of tusharsu@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=tusharsu@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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


On 7/20/21 10:51 PM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/lin=
ux-dm.git for-next
> head:   e820ba87f9d15399fa565ceba4a92b902c879d29
> commit: fdac9de80c2e66d6df999ac810382c66b0cb2830 [9/10] dm: update target=
 status functions to support IMA measurement
> config: x86_64-randconfig-a011-20210720 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c781=
eb153bfbd1b52b03efe34f56bbeccbb8aba6)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/=
linux-dm.git/commit/?id=3Dfdac9de80c2e66d6df999ac810382c66b0cb2830
>          git remote add dm https://git.kernel.org/pub/scm/linux/kernel/gi=
t/device-mapper/linux-dm.git
>          git fetch --no-tags dm for-next
>          git checkout fdac9de80c2e66d6df999ac810382c66b0cb2830
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dx86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>>> drivers/md/dm-raid.c:3686:39: warning: variable 'recovery' is uninitial=
ized when used here [-Wuninitialized]
>                     state =3D decipher_sync_action(mddev, recovery);
Thanks Mike for fixing this warning in the latest patch in for-next with:

+=C2=A0=C2=A0=C2=A0=C2=A0 recovery =3D rs->md.recovery;
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 state =3D decipher_sync_action(mddev, recov=
ery);

Appreciate it.

Thanks,
Tushar
>                                                         ^~~~~~~~
>     drivers/md/dm-raid.c:3517:24: note: initialize the variable 'recovery=
' to silence this warning
>             unsigned long recovery;
>                                   ^
>                                    =3D 0
>     1 warning generated.
>
>
> vim +/recovery +3686 drivers/md/dm-raid.c
>
>    3509=09
>    3510	static void raid_status(struct dm_target *ti, status_type_t type,
>    3511				unsigned int status_flags, char *result, unsigned int maxlen)
>    3512	{
>    3513		struct raid_set *rs =3D ti->private;
>    3514		struct mddev *mddev =3D &rs->md;
>    3515		struct r5conf *conf =3D mddev->private;
>    3516		int i, max_nr_stripes =3D conf ? conf->max_nr_stripes : 0;
>    3517		unsigned long recovery;
>    3518		unsigned int raid_param_cnt =3D 1; /* at least 1 for chunksize *=
/
>    3519		unsigned int sz =3D 0;
>    3520		unsigned int rebuild_writemostly_count =3D 0;
>    3521		sector_t progress, resync_max_sectors, resync_mismatches;
>    3522		enum sync_state state;
>    3523		struct raid_type *rt;
>    3524=09
>    3525		switch (type) {
>    3526		case STATUSTYPE_INFO:
>    3527			/* *Should* always succeed */
>    3528			rt =3D get_raid_type_by_ll(mddev->new_level, mddev->new_layout)=
;
>    3529			if (!rt)
>    3530				return;
>    3531=09
>    3532			DMEMIT("%s %d ", rt->name, mddev->raid_disks);
>    3533=09
>    3534			/* Access most recent mddev properties for status output */
>    3535			smp_rmb();
>    3536			/* Get sensible max sectors even if raid set not yet started */
>    3537			resync_max_sectors =3D test_bit(RT_FLAG_RS_PRERESUMED, &rs->run=
time_flags) ?
>    3538					      mddev->resync_max_sectors : mddev->dev_sectors;
>    3539			recovery =3D rs->md.recovery;
>    3540			state =3D decipher_sync_action(mddev, recovery);
>    3541			progress =3D rs_get_progress(rs, recovery, state, resync_max_se=
ctors);
>    3542			resync_mismatches =3D (mddev->last_sync_action && !strcasecmp(m=
ddev->last_sync_action, "check")) ?
>    3543					    atomic64_read(&mddev->resync_mismatches) : 0;
>    3544=09
>    3545			/* HM FIXME: do we want another state char for raid0? It shows =
'D'/'A'/'-' now */
>    3546			for (i =3D 0; i < rs->raid_disks; i++)
>    3547				DMEMIT(__raid_dev_status(rs, &rs->dev[i].rdev));
>    3548=09
>    3549			/*
>    3550			 * In-sync/Reshape ratio:
>    3551			 *  The in-sync ratio shows the progress of:
>    3552			 *   - Initializing the raid set
>    3553			 *   - Rebuilding a subset of devices of the raid set
>    3554			 *  The user can distinguish between the two by referring
>    3555			 *  to the status characters.
>    3556			 *
>    3557			 *  The reshape ratio shows the progress of
>    3558			 *  changing the raid layout or the number of
>    3559			 *  disks of a raid set
>    3560			 */
>    3561			DMEMIT(" %llu/%llu", (unsigned long long) progress,
>    3562					     (unsigned long long) resync_max_sectors);
>    3563=09
>    3564			/*
>    3565			 * v1.5.0+:
>    3566			 *
>    3567			 * Sync action:
>    3568			 *   See Documentation/admin-guide/device-mapper/dm-raid.rst fo=
r
>    3569			 *   information on each of these states.
>    3570			 */
>    3571			DMEMIT(" %s", sync_str(state));
>    3572=09
>    3573			/*
>    3574			 * v1.5.0+:
>    3575			 *
>    3576			 * resync_mismatches/mismatch_cnt
>    3577			 *   This field shows the number of discrepancies found when
>    3578			 *   performing a "check" of the raid set.
>    3579			 */
>    3580			DMEMIT(" %llu", (unsigned long long) resync_mismatches);
>    3581=09
>    3582			/*
>    3583			 * v1.9.0+:
>    3584			 *
>    3585			 * data_offset (needed for out of space reshaping)
>    3586			 *   This field shows the data offset into the data
>    3587			 *   image LV where the first stripes data starts.
>    3588			 *
>    3589			 * We keep data_offset equal on all raid disks of the set,
>    3590			 * so retrieving it from the first raid disk is sufficient.
>    3591			 */
>    3592			DMEMIT(" %llu", (unsigned long long) rs->dev[0].rdev.data_offse=
t);
>    3593=09
>    3594			/*
>    3595			 * v1.10.0+:
>    3596			 */
>    3597			DMEMIT(" %s", test_bit(__CTR_FLAG_JOURNAL_DEV, &rs->ctr_flags) =
?
>    3598				      __raid_dev_status(rs, &rs->journal_dev.rdev) : "-");
>    3599			break;
>    3600=09
>    3601		case STATUSTYPE_TABLE:
>    3602			/* Report the table line string you would use to construct this=
 raid set */
>    3603=09
>    3604			/*
>    3605			 * Count any rebuild or writemostly argument pairs and subtract=
 the
>    3606			 * hweight count being added below of any rebuild and writemost=
ly ctr flags.
>    3607			 */
>    3608			for (i =3D 0; i < rs->raid_disks; i++) {
>    3609				rebuild_writemostly_count +=3D (test_bit(i, (void *) rs->rebui=
ld_disks) ? 2 : 0) +
>    3610							     (test_bit(WriteMostly, &rs->dev[i].rdev.flags) ? 2 : 0=
);
>    3611			}
>    3612			rebuild_writemostly_count -=3D (test_bit(__CTR_FLAG_REBUILD, &r=
s->ctr_flags) ? 2 : 0) +
>    3613						     (test_bit(__CTR_FLAG_WRITE_MOSTLY, &rs->ctr_flags) ? 2 =
: 0);
>    3614			/* Calculate raid parameter count based on ^ rebuild/writemostl=
y argument counts and ctr flags set. */
>    3615			raid_param_cnt +=3D rebuild_writemostly_count +
>    3616					  hweight32(rs->ctr_flags & CTR_FLAG_OPTIONS_NO_ARGS) +
>    3617					  hweight32(rs->ctr_flags & CTR_FLAG_OPTIONS_ONE_ARG) * 2;
>    3618			/* Emit table line */
>    3619			/* This has to be in the documented order for userspace! */
>    3620			DMEMIT("%s %u %u", rs->raid_type->name, raid_param_cnt, mddev->=
new_chunk_sectors);
>    3621			if (test_bit(__CTR_FLAG_SYNC, &rs->ctr_flags))
>    3622				DMEMIT(" %s", dm_raid_arg_name_by_flag(CTR_FLAG_SYNC));
>    3623			if (test_bit(__CTR_FLAG_NOSYNC, &rs->ctr_flags))
>    3624				DMEMIT(" %s", dm_raid_arg_name_by_flag(CTR_FLAG_NOSYNC));
>    3625			if (test_bit(__CTR_FLAG_REBUILD, &rs->ctr_flags))
>    3626				for (i =3D 0; i < rs->raid_disks; i++)
>    3627					if (test_bit(i, (void *) rs->rebuild_disks))
>    3628						DMEMIT(" %s %u", dm_raid_arg_name_by_flag(CTR_FLAG_REBUILD),=
 i);
>    3629			if (test_bit(__CTR_FLAG_DAEMON_SLEEP, &rs->ctr_flags))
>    3630				DMEMIT(" %s %lu", dm_raid_arg_name_by_flag(CTR_FLAG_DAEMON_SLE=
EP),
>    3631						  mddev->bitmap_info.daemon_sleep);
>    3632			if (test_bit(__CTR_FLAG_MIN_RECOVERY_RATE, &rs->ctr_flags))
>    3633				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_MIN_RECOVER=
Y_RATE),
>    3634						 mddev->sync_speed_min);
>    3635			if (test_bit(__CTR_FLAG_MAX_RECOVERY_RATE, &rs->ctr_flags))
>    3636				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_MAX_RECOVER=
Y_RATE),
>    3637						 mddev->sync_speed_max);
>    3638			if (test_bit(__CTR_FLAG_WRITE_MOSTLY, &rs->ctr_flags))
>    3639				for (i =3D 0; i < rs->raid_disks; i++)
>    3640					if (test_bit(WriteMostly, &rs->dev[i].rdev.flags))
>    3641						DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_WRITE_MOS=
TLY),
>    3642						       rs->dev[i].rdev.raid_disk);
>    3643			if (test_bit(__CTR_FLAG_MAX_WRITE_BEHIND, &rs->ctr_flags))
>    3644				DMEMIT(" %s %lu", dm_raid_arg_name_by_flag(CTR_FLAG_MAX_WRITE_=
BEHIND),
>    3645						  mddev->bitmap_info.max_write_behind);
>    3646			if (test_bit(__CTR_FLAG_STRIPE_CACHE, &rs->ctr_flags))
>    3647				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_STRIPE_CACH=
E),
>    3648						 max_nr_stripes);
>    3649			if (test_bit(__CTR_FLAG_REGION_SIZE, &rs->ctr_flags))
>    3650				DMEMIT(" %s %llu", dm_raid_arg_name_by_flag(CTR_FLAG_REGION_SI=
ZE),
>    3651						   (unsigned long long) to_sector(mddev->bitmap_info.chunksi=
ze));
>    3652			if (test_bit(__CTR_FLAG_RAID10_COPIES, &rs->ctr_flags))
>    3653				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_RAID10_COPI=
ES),
>    3654						 raid10_md_layout_to_copies(mddev->layout));
>    3655			if (test_bit(__CTR_FLAG_RAID10_FORMAT, &rs->ctr_flags))
>    3656				DMEMIT(" %s %s", dm_raid_arg_name_by_flag(CTR_FLAG_RAID10_FORM=
AT),
>    3657						 raid10_md_layout_to_format(mddev->layout));
>    3658			if (test_bit(__CTR_FLAG_DELTA_DISKS, &rs->ctr_flags))
>    3659				DMEMIT(" %s %d", dm_raid_arg_name_by_flag(CTR_FLAG_DELTA_DISKS=
),
>    3660						 max(rs->delta_disks, mddev->delta_disks));
>    3661			if (test_bit(__CTR_FLAG_DATA_OFFSET, &rs->ctr_flags))
>    3662				DMEMIT(" %s %llu", dm_raid_arg_name_by_flag(CTR_FLAG_DATA_OFFS=
ET),
>    3663						   (unsigned long long) rs->data_offset);
>    3664			if (test_bit(__CTR_FLAG_JOURNAL_DEV, &rs->ctr_flags))
>    3665				DMEMIT(" %s %s", dm_raid_arg_name_by_flag(CTR_FLAG_JOURNAL_DEV=
),
>    3666						__get_dev_name(rs->journal_dev.dev));
>    3667			if (test_bit(__CTR_FLAG_JOURNAL_MODE, &rs->ctr_flags))
>    3668				DMEMIT(" %s %s", dm_raid_arg_name_by_flag(CTR_FLAG_JOURNAL_MOD=
E),
>    3669						 md_journal_mode_to_dm_raid(rs->journal_dev.mode));
>    3670			DMEMIT(" %d", rs->raid_disks);
>    3671			for (i =3D 0; i < rs->raid_disks; i++)
>    3672				DMEMIT(" %s %s", __get_dev_name(rs->dev[i].meta_dev),
>    3673						 __get_dev_name(rs->dev[i].data_dev));
>    3674			break;
>    3675=09
>    3676		case STATUSTYPE_IMA:
>    3677			rt =3D get_raid_type_by_ll(mddev->new_level, mddev->new_layout)=
;
>    3678			if (!rt)
>    3679				return;
>    3680=09
>    3681			DMEMIT_TARGET_NAME_VERSION(ti->type);
>    3682			DMEMIT(",raid_type=3D%s,raid_disks=3D%d", rt->name, mddev->raid=
_disks);
>    3683=09
>    3684			/* Access most recent mddev properties for status output */
>    3685			smp_rmb();
>> 3686			state =3D decipher_sync_action(mddev, recovery);
>    3687			DMEMIT(",raid_state=3D%s", sync_str(state));
>    3688=09
>    3689			for (i =3D 0; i < rs->raid_disks; i++) {
>    3690				DMEMIT(",raid_device_%d_status=3D", i);
>    3691				DMEMIT(__raid_dev_status(rs, &rs->dev[i].rdev));
>    3692			}
>    3693=09
>    3694			if (rt_is_raid456(rt)) {
>    3695				DMEMIT(",journal_dev_mode=3D");
>    3696				switch (rs->journal_dev.mode) {
>    3697				case R5C_JOURNAL_MODE_WRITE_THROUGH:
>    3698					DMEMIT("%s",
>    3699					       _raid456_journal_mode[R5C_JOURNAL_MODE_WRITE_THROUGH].=
param);
>    3700					break;
>    3701				case R5C_JOURNAL_MODE_WRITE_BACK:
>    3702					DMEMIT("%s",
>    3703					       _raid456_journal_mode[R5C_JOURNAL_MODE_WRITE_BACK].par=
am);
>    3704					break;
>    3705				default:
>    3706					DMEMIT("invalid");
>    3707					break;
>    3708				}
>    3709			}
>    3710			DMEMIT(";");
>    3711			break;
>    3712		}
>    3713	}
>    3714=09
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0780ef71-77fd-f151-36c3-5981403ca31c%40linux.microsoft.co=
m.
