Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKHEUKAAMGQEIQ5QX6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD632FDCB0
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 23:43:54 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id c17sf78955qvv.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 14:43:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611182633; cv=pass;
        d=google.com; s=arc-20160816;
        b=sg5/cX3AMTbSfNsYTti31mPXf9zBBoBcFqkUH94rMosd0vIUzzf932SWcCtKUzTV/e
         BX2Q0q4lPScw+wZhhfREEFAIXBcwyr/DM24u/km7T63Y1Kh59gmEELhjAWaJMSCU3e//
         OBitRGYcjxZS2pMpIpqDfSUOyLdR2oLoJfgqHtGyQbDeTdoTcOxixJGGm8nbRGorJql6
         1eQdJAFBPkGkDdbmNDEjbA8gYIb//se6tsa8tFMUuTmD7qANfWfPsQgK3DwqbWSnyYCO
         E+YugM2pMv0vC0CqRoF/wKdvGuTWuJ3YTaiAQ7acaGoMzPlZ52qls9Qun9Ndu1ndUT1H
         wEKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=BHKKunaUY5f+5zyozY6tZYhxNL5ZG7UVNAKfgXeRZ84=;
        b=TaJOeu5nu4jD76efNxqfKHjIgZvYgItFGLub/kBfB9j9HpCreWxfcm1KuW6lHudQfu
         T7N1qkC6hCSUTylKx8XKIUsKTNjmKtdu2dINO9NcSxwoyh0gQDZKpiNWlz3J/EuJNd7l
         wayYixg3lQm29QjTVrn0eGiTpfLNgJdbFDiSJG1N+yK3vW2+B6vY0i5TJYjMW2aEHvZ7
         AXkfg3Yo+d6ZKNCVqg6YOM2FfRif33CkHtJNr5YiOxsqWQV9VWQ4mmOifPxYdMP+JfsP
         4jzi8mO1Fkar1+hGnvxs6dl3E4ehSISlB8AtkMuQ0FxLcUnonE3oz7w0mcRwCFfkzWTV
         qjLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BHKKunaUY5f+5zyozY6tZYhxNL5ZG7UVNAKfgXeRZ84=;
        b=Ed7TTvDZWEYS1rCKnFsdS69re3aKAV9HQc9E9WIB9aXCSOUL17Gjpladc0PHuCK81h
         NJrWMiu4XnTzKNtZeNm3XcGcSoH5oM1GIR2N0QMnzdHEJiRpAGZT3WZeXsywRssKGJaF
         moOwau5xsxbDl7rKTGSKpSGFuWXxXtOkCxQbwi7pDiab35kIGUAnLWDUUs8JQ3o/H6/4
         MHSOnTNQzgMdccUwqKT3m7+pFwWKheIRwVPE29qkCpGJDYVb13f1MuxAkYus9XERv6Oi
         lF4MAkgff0CYw4+bTSTkPcmwz+P0kWqMYCzgpWU/hF8i2MrY/hQvF0QkBj3QNELBy2p0
         e1vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BHKKunaUY5f+5zyozY6tZYhxNL5ZG7UVNAKfgXeRZ84=;
        b=ko47RMx+ETd/ExdyGQpdPogOnB2vW6I1Hlrc8xGgjpRTS9d89+AgkjH1n3ZfbBGG70
         BwzTOEYuhgTz0S5wkcSZR6o93QeN4t06Gn0Z7F2wXxkdD+zrS/+RSybfqCxzbuDDTqqu
         w7Lrw5fPAy4gmW5tbtOXKJFFgxbhtAPGMWs3gMTVnLzjGGhmg0NXD5HRKnNcAV+6Jzfh
         k5iWy24H9k4qQuWUwsXIyXordKR7SJUXa8HhVsQSRxHGGbWKEemJKokexVCl02XmCFUW
         hD8GkBHeVlr/YKN6XFjm35k9HE0YV+A2wh9IteWjUTN0Vq96l3aTRRl3uPFFWf16kox2
         RSzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qqFY35K1v0ejLYpozHcyM+KthNmTHH27CnAKQyyA25CxiH47m
	P9t6ZnPx4OyAbcFUqnKVkKE=
X-Google-Smtp-Source: ABdhPJwzFbTCB7hGYfZdeYAZ5dKNv4PQHRfRD2uTRyPm0ykP2X85LYGaA9ilBrV6E1X4a4UmmJXu3g==
X-Received: by 2002:a05:620a:1368:: with SMTP id d8mr11544304qkl.101.1611182632971;
        Wed, 20 Jan 2021 14:43:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a511:: with SMTP id o17ls3016542qke.8.gmail; Wed, 20 Jan
 2021 14:43:52 -0800 (PST)
X-Received: by 2002:a05:620a:215c:: with SMTP id m28mr11684690qkm.454.1611182632475;
        Wed, 20 Jan 2021 14:43:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611182632; cv=none;
        d=google.com; s=arc-20160816;
        b=GTy7bpynrQtOc+zH7Lhxu80Uy6Bo2I2oDIHAyt7rTZGVdSy8owUvzxMSXLvkU+dvxi
         Rtp3ksYmjzrSAyiUJMxbmX7hOd4+04MktPXWAjzR9ih0DiiOewnkxvzzdYg+vlo7a/u3
         1o5vKmzOk9PWRoQVvgizijZypttgjI8hluH1UgtBcmJd/GC+SFo55TPDKpzYNhYlLnwr
         DW2moN4nvwN6YyFeTFLw0Qbn9H9vgnupspEeA5J4YJvU85URfbqKm0Zd4gt2GDnUiuYA
         3tCb5LCGj76PTaerWHeG20LohzFV6dOi5fXsFM9PbF/cUlYS7cZ8caMq5EEleMVA1KqQ
         MxWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=OsbphQSPuOQPa+/drey87o52qeuswq/zLhP9el9D3i8=;
        b=MKFKs64FSGvj6kO3bNNhd6lUif7D+1TzPkQTxgUc1hSfNhH+qTbIg1b0WNkGkV2QIE
         JAIYBoCDAB0+vPFCxs0bs88tX5dmLcTW5iL+G9GI0Ul5qnFKoANvE6SL2XyDTN21cBMi
         FB9HAm3AqzBVKyev+SrMCgoxc0zeZq6e1F9icVOw5VgHWrbjsAVqX7t9/SG6GFyR7A7u
         p8z18urICK1fYmjT5hUjXkJEjCOaMfgtimTXFizrV+a56z2Jx6jUALihvojNKcidiO3L
         /YOxdwXlc0qSjfaB1R/lcqwZylEjoVqbDnHxwnepwKgKiDAotPWoLudvUGnBwwtkFMNB
         4Y0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id g51si392893qtc.4.2021.01.20.14.43.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 14:43:52 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: mSk51IWYmaFnBOMSwJJxcTSPJv8I0Bt3cK+QkcKV1JXHvrLn+oQE5yvbGu7vq1f0JaFEUAMiBn
 xn8mZcewg3qQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="158962311"
X-IronPort-AV: E=Sophos;i="5.79,362,1602572400"; 
   d="gz'50?scan'50,208,50";a="158962311"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2021 14:43:50 -0800
IronPort-SDR: s5McQaisyj3Ax4z3QHKOgqyX7VucvnCB6GVS7tbLCsbUFi1UE4PpI/SoPxIJLQ91XsyDS5jDt8
 qpJCtOghydcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,362,1602572400"; 
   d="gz'50?scan'50,208,50";a="407049096"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 20 Jan 2021 14:43:48 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l2MCZ-00061s-44; Wed, 20 Jan 2021 22:43:47 +0000
Date: Thu, 21 Jan 2021 06:43:16 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: [linux-stable-rc:linux-4.19.y 2397/2938] fs//ufs/balloc.c:135:6:
 warning: stack frame size of 1472 bytes in function 'ufs_free_blocks'
Message-ID: <202101210601.AeDSKJz1-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Michael,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   43d555d83c3f1fb8168367ca5b47c3a6570ca487
commit: 57ac40ee09cea2ec90f71c6f49b15d0d82667b38 [2397/2938] powerpc: Drop -me200 addition to build flags
config: powerpc64-randconfig-r002-20210120 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 22b68440e1647e16b5ee24b924986207173c02d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=57ac40ee09cea2ec90f71c6f49b15d0d82667b38
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout 57ac40ee09cea2ec90f71c6f49b15d0d82667b38
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> fs//ufs/balloc.c:135:6: warning: stack frame size of 1472 bytes in function 'ufs_free_blocks' [-Wframe-larger-than=]
   void ufs_free_blocks(struct inode *inode, u64 fragment, unsigned count)
        ^
   1 warning generated.
--
   drivers/target/target_core_pr.c:1649:35: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                                   dest_node_acl->initiatorname, dest_rtpi);
                                                                 ^~~~~~~~~
   include/linux/printk.h:335:26: note: expanded from macro 'pr_debug'
           dynamic_pr_debug(fmt, ##__VA_ARGS__)
                            ~~~    ^~~~~~~~~~~
   include/linux/dynamic_debug.h:128:10: note: expanded from macro 'dynamic_pr_debug'
                                      ##__VA_ARGS__);              \
                                        ^~~~~~~~~~~
   drivers/target/target_core_pr.c:1687:5: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                                   dest_rtpi);
                                   ^~~~~~~~~
   include/linux/printk.h:303:33: note: expanded from macro 'pr_err'
           printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
                                  ~~~     ^~~~~~~~~~~
>> drivers/target/target_core_pr.c:2012:23: warning: stack frame size of 1056 bytes in function 'core_scsi3_update_and_write_aptpl' [-Wframe-larger-than=]
   static sense_reason_t core_scsi3_update_and_write_aptpl(struct se_device *dev, bool aptpl)
                         ^
   3 warnings generated.
--
   drivers/staging/erofs/unzip_vle.c:19:6: warning: no previous prototype for function 'z_erofs_exit_zip_subsystem' [-Wmissing-prototypes]
   void z_erofs_exit_zip_subsystem(void)
        ^
   drivers/staging/erofs/unzip_vle.c:19:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void z_erofs_exit_zip_subsystem(void)
   ^
   static 
   drivers/staging/erofs/unzip_vle.c:40:5: warning: no previous prototype for function 'z_erofs_init_zip_subsystem' [-Wmissing-prototypes]
   int z_erofs_init_zip_subsystem(void)
       ^
   drivers/staging/erofs/unzip_vle.c:40:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int z_erofs_init_zip_subsystem(void)
   ^
   static 
   drivers/staging/erofs/unzip_vle.c:513:6: warning: no previous prototype for function 'erofs_workgroup_free_rcu' [-Wmissing-prototypes]
   void erofs_workgroup_free_rcu(struct erofs_workgroup *grp)
        ^
   drivers/staging/erofs/unzip_vle.c:513:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void erofs_workgroup_free_rcu(struct erofs_workgroup *grp)
   ^
   static 
   drivers/staging/erofs/unzip_vle.c:528:6: warning: no previous prototype for function 'z_erofs_vle_work_release' [-Wmissing-prototypes]
   void z_erofs_vle_work_release(struct z_erofs_vle_work *work)
        ^
   drivers/staging/erofs/unzip_vle.c:528:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void z_erofs_vle_work_release(struct z_erofs_vle_work *work)
   ^
   static 
   drivers/staging/erofs/unzip_vle.c:1567:5: warning: no previous prototype for function 'z_erofs_map_blocks_iter' [-Wmissing-prototypes]
   int z_erofs_map_blocks_iter(struct inode *inode,
       ^
   drivers/staging/erofs/unzip_vle.c:1567:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int z_erofs_map_blocks_iter(struct inode *inode,
   ^
   static 
>> drivers/staging/erofs/unzip_vle.c:595:12: warning: stack frame size of 1264 bytes in function 'z_erofs_do_read_page' [-Wframe-larger-than=]
   static int z_erofs_do_read_page(struct z_erofs_vle_frontend *fe,
              ^
   6 warnings generated.
--
>> drivers/staging/fbtft/fbtft-core.c:1106:5: warning: stack frame size of 1136 bytes in function 'fbtft_init_display' [-Wframe-larger-than=]
   int fbtft_init_display(struct fbtft_par *par)
       ^
   1 warning generated.
   drivers/staging/fbtft/fbtft-core.c:653: warning: Function parameter or member 'pdata' not described in 'fbtft_framebuffer_alloc'
--
>> drivers/block/pktcdvd.c:1427:12: warning: stack frame size of 1280 bytes in function 'kcdrwd' [-Wframe-larger-than=]
   static int kcdrwd(void *foobar)
              ^
>> drivers/block/pktcdvd.c:1322:13: warning: stack frame size of 1056 bytes in function 'pkt_run_state_machine' [-Wframe-larger-than=]
   static void pkt_run_state_machine(struct pktcdvd_device *pd, struct packet_data *pkt)
               ^
   2 warnings generated.
--
>> fs//btrfs/relocation.c:646:22: warning: stack frame size of 1072 bytes in function 'build_backref_tree' [-Wframe-larger-than=]
   struct backref_node *build_backref_tree(struct reloc_control *rc,
                        ^
   1 warning generated.
--
>> fs//btrfs/send.c:3882:12: warning: stack frame size of 1200 bytes in function 'process_recorded_refs' [-Wframe-larger-than=]
   static int process_recorded_refs(struct send_ctx *sctx, int *pending_move)
              ^
   1 warning generated.
--
   drivers/md/dm-integrity.c:3616:12: warning: no previous prototype for function 'dm_integrity_init' [-Wmissing-prototypes]
   int __init dm_integrity_init(void)
              ^
   drivers/md/dm-integrity.c:3616:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int __init dm_integrity_init(void)
   ^
   static 
   drivers/md/dm-integrity.c:3635:6: warning: no previous prototype for function 'dm_integrity_exit' [-Wmissing-prototypes]
   void dm_integrity_exit(void)
        ^
   drivers/md/dm-integrity.c:3635:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dm_integrity_exit(void)
   ^
   static 
>> drivers/md/dm-integrity.c:1643:13: warning: stack frame size of 1104 bytes in function 'dm_integrity_map_continue' [-Wframe-larger-than=]
   static void dm_integrity_map_continue(struct dm_integrity_io *dio, bool from_map)
               ^
>> drivers/md/dm-integrity.c:1492:13: warning: stack frame size of 1216 bytes in function '__journal_read_write' [-Wframe-larger-than=]
   static bool __journal_read_write(struct dm_integrity_io *dio, struct bio *bio,
               ^
   4 warnings generated.
--
>> drivers/md/raid1.c:2496:13: warning: stack frame size of 1584 bytes in function 'raid1d' [-Wframe-larger-than=]
   static void raid1d(struct md_thread *thread)
               ^
   1 warning generated.
--
   drivers/md/raid10.c:2938:17: warning: stack frame size of 2208 bytes in function 'raid10_sync_request' [-Wframe-larger-than=]
   static sector_t raid10_sync_request(struct mddev *mddev, sector_t sector_nr,
                   ^
>> drivers/md/raid10.c:2748:13: warning: stack frame size of 1360 bytes in function 'raid10d' [-Wframe-larger-than=]
   static void raid10d(struct md_thread *thread)
               ^
   2 warnings generated.
--
>> drivers/md/raid5.c:984:13: warning: stack frame size of 1584 bytes in function 'ops_run_io' [-Wframe-larger-than=]
   static void ops_run_io(struct stripe_head *sh, struct stripe_head_state *s)
               ^
   1 warning generated.
   drivers/md/raid5.c:2242: warning: Function parameter or member 'num' not described in 'scribble_alloc'
   drivers/md/raid5.c:2242: warning: Function parameter or member 'cnt' not described in 'scribble_alloc'
   drivers/md/raid5.c:2242: warning: Function parameter or member 'flags' not described in 'scribble_alloc'
   drivers/md/raid5.c:3709: warning: Function parameter or member 'sh' not described in 'handle_stripe_fill'
   drivers/md/raid5.c:3709: warning: Function parameter or member 's' not described in 'handle_stripe_fill'
   drivers/md/raid5.c:3709: warning: Function parameter or member 'disks' not described in 'handle_stripe_fill'
..

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for FSL_EMB_PERFMON
   Depends on E500 || PPC_83xx
   Selected by
   - PPC_FSL_BOOK3E


vim +/ufs_free_blocks +135 fs//ufs/balloc.c

^1da177e4c3f415 Linus Torvalds    2005-04-16  131  
^1da177e4c3f415 Linus Torvalds    2005-04-16  132  /*
^1da177e4c3f415 Linus Torvalds    2005-04-16  133   * Free 'count' fragments from fragment number 'fragment' (free whole blocks)
^1da177e4c3f415 Linus Torvalds    2005-04-16  134   */
54fb996ac15c401 Evgeniy Dushistov 2007-02-12 @135  void ufs_free_blocks(struct inode *inode, u64 fragment, unsigned count)
6ef4d6bf86a8296 Evgeniy Dushistov 2006-06-25  136  {
^1da177e4c3f415 Linus Torvalds    2005-04-16  137  	struct super_block * sb;
^1da177e4c3f415 Linus Torvalds    2005-04-16  138  	struct ufs_sb_private_info * uspi;
^1da177e4c3f415 Linus Torvalds    2005-04-16  139  	struct ufs_cg_private_info * ucpi;
^1da177e4c3f415 Linus Torvalds    2005-04-16  140  	struct ufs_cylinder_group * ucg;
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  141  	unsigned overflow, cgno, bit, end_bit, i;
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  142  	u64 blkno;
^1da177e4c3f415 Linus Torvalds    2005-04-16  143  	
^1da177e4c3f415 Linus Torvalds    2005-04-16  144  	sb = inode->i_sb;
^1da177e4c3f415 Linus Torvalds    2005-04-16  145  	uspi = UFS_SB(sb)->s_uspi;
^1da177e4c3f415 Linus Torvalds    2005-04-16  146  
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  147  	UFSD("ENTER, fragment %llu, count %u\n",
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  148  	     (unsigned long long)fragment, count);
^1da177e4c3f415 Linus Torvalds    2005-04-16  149  	
^1da177e4c3f415 Linus Torvalds    2005-04-16  150  	if ((fragment & uspi->s_fpbmask) || (count & uspi->s_fpbmask)) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  151  		ufs_error (sb, "ufs_free_blocks", "internal error, "
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  152  			   "fragment %llu, count %u\n",
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  153  			   (unsigned long long)fragment, count);
^1da177e4c3f415 Linus Torvalds    2005-04-16  154  		goto failed;
^1da177e4c3f415 Linus Torvalds    2005-04-16  155  	}
^1da177e4c3f415 Linus Torvalds    2005-04-16  156  
cdd9eefdf905e92 Fabian Frederick  2015-06-10  157  	mutex_lock(&UFS_SB(sb)->s_lock);
^1da177e4c3f415 Linus Torvalds    2005-04-16  158  	
^1da177e4c3f415 Linus Torvalds    2005-04-16  159  do_more:
^1da177e4c3f415 Linus Torvalds    2005-04-16  160  	overflow = 0;
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  161  	cgno = ufs_dtog(uspi, fragment);
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  162  	bit = ufs_dtogd(uspi, fragment);
^1da177e4c3f415 Linus Torvalds    2005-04-16  163  	if (cgno >= uspi->s_ncg) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  164  		ufs_panic (sb, "ufs_free_blocks", "freeing blocks are outside device");
2e006393ba5b599 Evgeniy Dushistov 2006-06-25  165  		goto failed_unlock;
^1da177e4c3f415 Linus Torvalds    2005-04-16  166  	}
^1da177e4c3f415 Linus Torvalds    2005-04-16  167  	end_bit = bit + count;
^1da177e4c3f415 Linus Torvalds    2005-04-16  168  	if (end_bit > uspi->s_fpg) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  169  		overflow = bit + count - uspi->s_fpg;
^1da177e4c3f415 Linus Torvalds    2005-04-16  170  		count -= overflow;
^1da177e4c3f415 Linus Torvalds    2005-04-16  171  		end_bit -= overflow;
^1da177e4c3f415 Linus Torvalds    2005-04-16  172  	}
^1da177e4c3f415 Linus Torvalds    2005-04-16  173  
^1da177e4c3f415 Linus Torvalds    2005-04-16  174  	ucpi = ufs_load_cylinder (sb, cgno);
^1da177e4c3f415 Linus Torvalds    2005-04-16  175  	if (!ucpi) 
2e006393ba5b599 Evgeniy Dushistov 2006-06-25  176  		goto failed_unlock;
9695ef16ed4e00b Evgeniy Dushistov 2006-06-25  177  	ucg = ubh_get_ucg (UCPI_UBH(ucpi));
^1da177e4c3f415 Linus Torvalds    2005-04-16  178  	if (!ufs_cg_chkmagic(sb, ucg)) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  179  		ufs_panic (sb, "ufs_free_blocks", "internal error, bad magic number on cg %u", cgno);
2e006393ba5b599 Evgeniy Dushistov 2006-06-25  180  		goto failed_unlock;
^1da177e4c3f415 Linus Torvalds    2005-04-16  181  	}
^1da177e4c3f415 Linus Torvalds    2005-04-16  182  
^1da177e4c3f415 Linus Torvalds    2005-04-16  183  	for (i = bit; i < end_bit; i += uspi->s_fpb) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  184  		blkno = ufs_fragstoblks(i);
9695ef16ed4e00b Evgeniy Dushistov 2006-06-25  185  		if (ubh_isblockset(UCPI_UBH(ucpi), ucpi->c_freeoff, blkno)) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  186  			ufs_error(sb, "ufs_free_blocks", "freeing free fragment");
^1da177e4c3f415 Linus Torvalds    2005-04-16  187  		}
9695ef16ed4e00b Evgeniy Dushistov 2006-06-25  188  		ubh_setblock(UCPI_UBH(ucpi), ucpi->c_freeoff, blkno);
eb315d2ae614493 Al Viro           2017-06-08  189  		inode_sub_bytes(inode, uspi->s_fpb << uspi->s_fshift);
^1da177e4c3f415 Linus Torvalds    2005-04-16  190  		if ((UFS_SB(sb)->s_flags & UFS_CG_MASK) == UFS_CG_44BSD)
^1da177e4c3f415 Linus Torvalds    2005-04-16  191  			ufs_clusteracct (sb, ucpi, blkno, 1);
^1da177e4c3f415 Linus Torvalds    2005-04-16  192  
^1da177e4c3f415 Linus Torvalds    2005-04-16  193  		fs32_add(sb, &ucg->cg_cs.cs_nbfree, 1);
ee3ffd6c1263236 Evgeniy Dushistov 2006-06-25  194  		uspi->cs_total.cs_nbfree++;
^1da177e4c3f415 Linus Torvalds    2005-04-16  195  		fs32_add(sb, &UFS_SB(sb)->fs_cs(cgno).cs_nbfree, 1);
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  196  
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  197  		if (uspi->fs_magic != UFS2_MAGIC) {
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  198  			unsigned cylno = ufs_cbtocylno(i);
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  199  
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  200  			fs16_add(sb, &ubh_cg_blks(ucpi, cylno,
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  201  						  ufs_cbtorpos(i)), 1);
^1da177e4c3f415 Linus Torvalds    2005-04-16  202  			fs32_add(sb, &ubh_cg_blktot(ucpi, cylno), 1);
^1da177e4c3f415 Linus Torvalds    2005-04-16  203  		}
54fb996ac15c401 Evgeniy Dushistov 2007-02-12  204  	}
^1da177e4c3f415 Linus Torvalds    2005-04-16  205  
9695ef16ed4e00b Evgeniy Dushistov 2006-06-25  206  	ubh_mark_buffer_dirty (USPI_UBH(uspi));
9695ef16ed4e00b Evgeniy Dushistov 2006-06-25  207  	ubh_mark_buffer_dirty (UCPI_UBH(ucpi));
1751e8a6cb935e5 Linus Torvalds    2017-11-27  208  	if (sb->s_flags & SB_SYNCHRONOUS)
9cb569d601e0b93 Christoph Hellwig 2010-08-11  209  		ubh_sync_block(UCPI_UBH(ucpi));
^1da177e4c3f415 Linus Torvalds    2005-04-16  210  
^1da177e4c3f415 Linus Torvalds    2005-04-16  211  	if (overflow) {
^1da177e4c3f415 Linus Torvalds    2005-04-16  212  		fragment += count;
^1da177e4c3f415 Linus Torvalds    2005-04-16  213  		count = overflow;
^1da177e4c3f415 Linus Torvalds    2005-04-16  214  		goto do_more;
^1da177e4c3f415 Linus Torvalds    2005-04-16  215  	}
^1da177e4c3f415 Linus Torvalds    2005-04-16  216  
9e9ad5f408889db Artem Bityutskiy  2012-07-12  217  	ufs_mark_sb_dirty(sb);
cdd9eefdf905e92 Fabian Frederick  2015-06-10  218  	mutex_unlock(&UFS_SB(sb)->s_lock);
abf5d15fd2e5251 Evgeniy Dushistov 2006-06-25  219  	UFSD("EXIT\n");
^1da177e4c3f415 Linus Torvalds    2005-04-16  220  	return;
^1da177e4c3f415 Linus Torvalds    2005-04-16  221  
2e006393ba5b599 Evgeniy Dushistov 2006-06-25  222  failed_unlock:
cdd9eefdf905e92 Fabian Frederick  2015-06-10  223  	mutex_unlock(&UFS_SB(sb)->s_lock);
2e006393ba5b599 Evgeniy Dushistov 2006-06-25  224  failed:
abf5d15fd2e5251 Evgeniy Dushistov 2006-06-25  225  	UFSD("EXIT (FAILED)\n");
^1da177e4c3f415 Linus Torvalds    2005-04-16  226  	return;
^1da177e4c3f415 Linus Torvalds    2005-04-16  227  }
^1da177e4c3f415 Linus Torvalds    2005-04-16  228  

:::::: The code at line 135 was first introduced by commit
:::::: 54fb996ac15c4014fa4d6b0ec8e42da134204897 [PATCH] ufs2 write: block allocation update

:::::: TO: Evgeniy Dushistov <dushistov@mail.ru>
:::::: CC: Linus Torvalds <torvalds@woody.linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101210601.AeDSKJz1-lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
djefs2g21zxv3Rmoml7S/A/fAKaNQY0BAA==

--IS0zKkzwUGydFO0o--
