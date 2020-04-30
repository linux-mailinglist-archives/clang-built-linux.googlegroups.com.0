Return-Path: <clang-built-linux+bncBCX2JBVY5MBBB37RVD2QKGQELJ6L2IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7891BEE55
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 04:33:22 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id q57sf5428760qte.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 19:33:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588213999; cv=pass;
        d=google.com; s=arc-20160816;
        b=n6Vinays0B6MVJ02eprTeJi7iJohnSJttWXb1xyN4gtlesD90vQnuatd2SHkOPcV+R
         097gillhR0PNZJxsahQYoKBBJt568OFx3E98sqQknIj0smyHYBlJwkG+PooRq+m/BSjV
         iwyEJkDEE6eMYE8jG77optpTYYFvwALQEIO5ELC3tyLrceD7rBOwau8nUi9kUcTuKhNe
         c7TCJkSQokLZXQ3Qmbh0IIvpOZAflV6Q+daQFxDsNAiEWgCbTBS1GaXDVtHL7sRkCvKV
         Zivsb6UHJaTMH0YQFFF/TVvW2SEcPd5Q/WLTqjNbeHSpvo4xvInYki1e8mwDHowEMGtk
         LzjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=3o1MITleGPutg198WEChdwp9/Dt2e9hvAHa+EyS6GAo=;
        b=cCxpE29RrAiPF1w9cYwB3G96atXm3bOdP5/DJe7XywNGGL7g0fKYpJgdVoVqdenJLQ
         2FsMasif2y94MGTttVWxgsqCBUqXMBrvkMJcSvBlr0KKWUZENngBDWkFW7eEU4L+Ug6b
         nHTkNL/o/MF1UzwVapoL4Zr9pFq7F1SOugYX7lw+YbO1NgMQiHU0ix35qOAvRj5LdU9c
         oVp5ExM4/C6MTsPG5w5jPze1eGJESSmb2W6LDd86hqYsEH1/X/vr1kpWaYqd8O7DCSu0
         M5vockIqQNaGyHUaQw132I2z/FLZsHHACi1YIzGidfl6Pka9J4jtuwKZO1O3T2dqwLtu
         QEBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3o1MITleGPutg198WEChdwp9/Dt2e9hvAHa+EyS6GAo=;
        b=O7WQD49ferLiI9y/Wsc2N6ikrwuGrRCSWAdI5lhSB9fHhfNtYY8MvOqg3v9ckeX9/w
         hp+HE9V1DQ67Yn3XdiL0aW0E9c3WOstQZLB6dVtWREp+RcMDbWfX/sGKpd7yvuXCm4jT
         6DpnyNE2Dq7c6w1ednwQy629IpvQnZtY32SSc4pJjUAKok51BVYXkSrZCp2tYrjIDYGr
         sQ5ruaBmDjQZh/KYU/U4bv6+oIFRSgZwehcuI7u/TM8Ik0E9i7AE6jD3ah824eZlQ3Ih
         VE5KEYHZ8ygD/+VPssd62mBuEQR3J/0uo2J54uSYTnZJq0sUDWdNsDcDq8K6vIi2hago
         RUow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3o1MITleGPutg198WEChdwp9/Dt2e9hvAHa+EyS6GAo=;
        b=QoPSjNUU2peMANHjN82yt50ieiv65u7wRDCBSzMYR6VViznMUpSrR6MNcXROUKkj2e
         gYXJ8jyboyIkZnlSnFN0CGag3Sg5ZRtstCwJz9iz5TlbxCv/OQRPf00qVfqSPmtRbaG4
         dmELwEwtIb4bR9teKnfVHjoqPPdS6x2oO3oTiSSDs6258j9uQ4VxaEXifVMU+8IxK6JH
         caPdfDtxARghuZjnVhMwshzcOAe9OR1Xh85Vo21N3+T4gqAQh3XxP5tNvcQQ265LsRT6
         Vla0DbPgwAMp0K7TmXIFBJBIC8C0XcSCWBWi9JdRj6BPBBUaokUvNBlDGY31Mod4bd/V
         3eAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZPkezx2pyhnxTGPsMibpxhM4ng3ljT1FiN0HZk2/X6ChpGPple
	1inHIQEN7Jd46Wocs30yX1I=
X-Google-Smtp-Source: APiQypJ6/1a2HJ9ZnMh1bZPIQOF/62He37v9bOi5Qq1bvyTPZAtrsuI3HQH17ChjAh9xy1jhJ5e7cA==
X-Received: by 2002:a37:9645:: with SMTP id y66mr1491281qkd.278.1588213999568;
        Wed, 29 Apr 2020 19:33:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e17:: with SMTP id h23ls868898qke.7.gmail; Wed, 29 Apr
 2020 19:33:19 -0700 (PDT)
X-Received: by 2002:a37:7ca:: with SMTP id 193mr1551907qkh.161.1588213999123;
        Wed, 29 Apr 2020 19:33:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588213999; cv=none;
        d=google.com; s=arc-20160816;
        b=l9u8BbYfo+EywSdffbGOcELBiJvLluJlCzGy8+yuNSwq7XyaNnZhoUI+tCvIFNTAbN
         xyzxN/3O0OsHZ7QfHQVYvD5lgpA++WHzIcEVBpY5WByymmOeuBDDYMkGHhllWYTTfk0m
         vLvBGE1A5+jSM1ONJ/h054HXLoKlvtL7di97tlsPbDWoWIZMEwmMZcXiKx3qYkgXZGWv
         oX2ZQasSqBiF6WIFErKNP5iTWXupz1eRetgdcsIKifUq2pczqPBpF0iLZ11e0mrcmuqV
         yyNQtWU+BnrVzYcH1WeW2yQP5AgWCOlhkB+S49GZiIRnl+yDUt14AUsajx3AeJ66bl53
         0Org==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=w9XI2b9dmT70BhidqasBV2C/oipAsTJhSSAlg3cvyTA=;
        b=I+YD7GSG78ymeoRXY9MArznzqd8J6s61z0iYGac8cHAyxLbWH396bCpF5CCyncb0Ad
         rpf6Dk7P7o8dPAgY31p96CVuXgwX/mUhbJ16Em3BOowGBgOyaEA4MhnRpipVK1nZMXGL
         gJMnLR2ty0AZUYbUP0fC/Amcn6hnEmKmnbCr2kEqid8xElB6VOMIyiWfvM7NtwUGLqY+
         eVdrQct58Q7MJlsH88JRUlLCKRjhsYAKNpNqQBGzSe/0Ygx98DvGjOCAiHFPh0Mv/KFP
         cqdHVTtLdO9EUGof2LLF6u/RudP4XB5VvH1S3QaJgQpYSbhPGWhVTNENZzmzpZAmYw2R
         6bWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id g38si92183qtk.4.2020.04.29.19.33.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Apr 2020 19:33:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: WiAd4CO/BmrAqgg0c9WwXiXvvkLeM7KRCi6Ae2I6hKwW8LwJE+WZ7xL8b/AjlrWHi0pWixohFM
 SYSSizbC3IBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2020 19:33:17 -0700
IronPort-SDR: z0aFdr+PyXiZuiBF4NHq04eu4MYMjMkCoSy09CvQ9cnf10iNDbJz4QLWKO7EmSHdjw0H18WWQQ
 6KO/QqKq2r0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,333,1583222400"; 
   d="scan'208";a="282701775"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga004.fm.intel.com with ESMTP; 29 Apr 2020 19:33:15 -0700
Date: Thu, 30 Apr 2020 10:31:20 +0800
From: Philip Li <philip.li@intel.com>
To: kbuild test robot <lkp@intel.com>
Cc: cros-kernel-buildreports@googlegroups.com,
	Guenter Roeck <groeck@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] [chrome-os:chromeos-5.4 7926/8251] /bin/bash: line
 1: 169365 Aborted                 ld.lld -EL -maarch64elf -r -o fs/xfs/xfs.o
 fs/xfs/xfs_trace.o fs/xfs/libxfs/xfs_ag.o fs/xfs/libxfs/xfs_alloc.o
 fs/xfs/libxfs/xfs_alloc_btree.o fs/xfs/libxfs/xfs_attr.o
 fs/xfs/libxfs/xfs_attr_leaf.o fs/xfs/libxfs/xfs_attr_remote.o
 fs/xfs/libxfs/xfs_bit.o fs/xfs/libxfs/xfs_bmap.o
 fs/xfs/libxfs/xfs_bmap_btree.o fs/xfs/libxfs/xfs_btree.o
 fs/xfs/libxfs/xfs_da_btree.o fs/xfs/libxfs/xfs_da_format.o
 fs/xfs/libxfs/xfs_defer.o fs/xfs/libxfs/xfs_dir2.o
 fs/xfs/libxfs/xfs_dir2_block.o fs/xfs/libxfs/xfs_dir2_data.o
 fs/xfs/libxfs/xfs_dir2_leaf.o fs/xfs/libxfs/xfs_dir2_node.o
 fs/xfs/libxfs/xfs_dir2_sf.o fs/xfs/libxfs/xfs_dquot_buf.o
 fs/xfs/libxfs/xfs_ialloc.o fs/xfs/libxfs/xfs_ialloc_btree.o
 fs/xfs/libxfs/xfs_iext_tree.o fs/xfs/libxfs/xfs_inode_fork.o
 fs/xfs/libxfs/xfs_inode_buf.o fs/xfs/libxfs/xfs_log_rlimit.o
 fs/xfs/libxfs/xfs_ag_resv.o fs/xfs/libxfs/xfs_rmap.o
 fs/xfs/libxfs/xfs_rmap_btree.o fs/xfs/libxfs/xfs_refcount.o
 fs/xfs/libxfs/xfs_refcount_btree.o fs/xfs/libxfs/xfs_sb.o
 fs/xfs/libxfs/xfs_symlink_remote.o fs/xfs/libxfs/xfs_trans_inode.o
 fs/xfs/libxfs/xfs_trans_resv.o fs/xfs/libxfs/xfs_types.o fs/xfs/xfs_aops.o
 fs/xfs/xfs_attr_inactive.o fs/xfs/xfs_attr_list.o fs/xfs/xfs_bmap_util.o
 fs/xfs/xfs_bio_io.o fs/xfs/xfs_buf.o fs/xfs/xfs_dir2_readdir.o
 fs/xfs/xfs_discard.o fs/xfs/xfs_error.o fs/xfs/xfs_export.o
 fs/xfs/xfs_extent_busy.o fs/xfs/xfs_file.o fs/xfs/xfs_filestream.o
 fs/xfs/xfs_fsmap.o fs/xfs/xfs_fsops.o fs/xfs/xfs_globals.o
 fs/xfs/xfs_health.o fs/xfs/xfs_icache.o fs/xfs/xfs_ioctl.o
 fs/xfs/xfs_iomap.o fs/xfs/xfs_iops.o fs/xfs/xfs_inode.o fs/xfs/xfs_itable.o
 fs/xfs/xfs_iwalk.o fs/xfs/xfs_message.o fs/xfs/xfs_mount.o
 fs/xfs/xfs_mru_cache.o fs/xfs/xfs_pwork.o fs/xfs/xfs_reflink.o
 fs/xfs/xfs_stats.o fs/xfs/xfs_super.o fs/xfs/xfs_symlink.o
 fs/xfs/xfs_sysfs.o fs/xfs/xfs_trans.o fs/xfs/xfs_xattr.o fs/xfs/kmem.o
 fs/xfs/xfs_log.o fs/xfs/xfs_log_cil.o fs/xfs/xfs_bmap_item. o
 fs/xfs/xfs_buf_item.o fs/xfs/xfs_extfree_item.o fs/xfs/xfs_icreate_item.o
 fs/xfs/xfs_inode_item.o fs/xfs/xfs_refcount_item.o fs/xfs/xfs_rmap_item.o
 fs/xfs/xfs_log_recover.o fs/xfs/xfs_trans_ail.o fs/xfs/xfs_trans_buf.o
 fs/xfs/xfs_sysctl.o fs/xfs/xfs_ioctl32.o fs/xfs/xfs_pnfs.o
Message-ID: <20200430023120.GA24491@intel.com>
References: <202004300910.89Gqs7ny%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202004300910.89Gqs7ny%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Thu, Apr 30, 2020 at 09:59:11AM +0800, kbuild test robot wrote:
> tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel c=
hromeos-5.4
> head:   4000df1bae9f7f207866ae217aeacd5791fb27dc
> commit: f885388f865117e996d062da443facb91bc95bf2 [7926/8251] Revert "BACK=
PORT: FROMGIT: ASoC: Intel: sof_rt5682: Add rt1015 speaker amp support"
> config: arm64-randconfig-a001-20200429 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f304=
16fdde922eaa655934e050026930fefbd260)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout f885388f865117e996d062da443facb91bc95bf2
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Darm64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> Note: the chrome-os/chromeos-5.4 HEAD 4000df1bae9f7f207866ae217aeacd5791f=
b27dc builds fine.
>       It only hurts bisectibility.
sorry, kindly ignore this noise, we will add more patterns to handle this
to only send to clang mailing list.

>=20
> All errors (new ones prefixed by >>):
>=20
>    terminate called after throwing an instance of 'std::system_error'
>      what():  Resource temporarily unavailable
>    PLEASE submit a bug report to https://bugs.llvm.org/ and include the c=
rash backtrace.
>     #0 0x0000558db9447c0a llvm::sys::PrintStackTrace(llvm::raw_ostream&) =
(/opt/cross/clang-1ccde53342/bin/lld+0x896c0a)
>     #1 0x0000558db9445b55 llvm::sys::RunSignalHandlers() (/opt/cross/clan=
g-1ccde53342/bin/lld+0x894b55)
>     #2 0x0000558db9445c72 SignalHandler(int) (/opt/cross/clang-1ccde53342=
/bin/lld+0x894c72)
>     #3 0x00007f4b42246110 __restore_rt (/lib/x86_64-linux-gnu/libpthread.=
so.0+0x14110)
>     #4 0x00007f4b41d6c761 raise (/lib/x86_64-linux-gnu/libc.so.6+0x3b761)
>     #5 0x00007f4b41d5655b abort (/lib/x86_64-linux-gnu/libc.so.6+0x2555b)
>     #6 0x00007f4b420ef80c (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x9a8=
0c)
>     #7 0x00007f4b420fa8f6 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xa58=
f6)
>     #8 0x00007f4b420fa961 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xa59=
61)
>     #9 0x00007f4b420fabf5 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xa5b=
f5)
>    #10 0x00007f4b420f2478 std::__throw_system_error(int) (/usr/lib/x86_64=
-linux-gnu/libstdc++.so.6+0x9d478)
>    #11 0x00007f4b42123e69 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xcee=
69)
>    #12 0x0000558dbbcbd264 std::thread::_State_impl<std::_Bind_simple<llvm=
::parallel::detail::(anonymous namespace)::ThreadPoolExecutor::ThreadPoolEx=
ecutor(llvm::ThreadPoolStrategy)::'lambda'() ()> >::_M_run() (/opt/cross/cl=
ang-1ccde53342/bin/lld+0x310c264)
>    #13 0x00007f4b42123be0 (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0xceb=
e0)
>    #14 0x00007f4b4223af27 start_thread (/lib/x86_64-linux-gnu/libpthread.=
so.0+0x8f27)
>    #15 0x00007f4b41e2e2ef clone (/lib/x86_64-linux-gnu/libc.so.6+0xfd2ef)
> >> /bin/bash: line 1: 169365 Aborted                 ld.lld -EL -maarch64=
elf -r -o fs/xfs/xfs.o fs/xfs/xfs_trace.o fs/xfs/libxfs/xfs_ag.o fs/xfs/lib=
xfs/xfs_alloc.o fs/xfs/libxfs/xfs_alloc_btree.o fs/xfs/libxfs/xfs_attr.o fs=
/xfs/libxfs/xfs_attr_leaf.o fs/xfs/libxfs/xfs_attr_remote.o fs/xfs/libxfs/x=
fs_bit.o fs/xfs/libxfs/xfs_bmap.o fs/xfs/libxfs/xfs_bmap_btree.o fs/xfs/lib=
xfs/xfs_btree.o fs/xfs/libxfs/xfs_da_btree.o fs/xfs/libxfs/xfs_da_format.o =
fs/xfs/libxfs/xfs_defer.o fs/xfs/libxfs/xfs_dir2.o fs/xfs/libxfs/xfs_dir2_b=
lock.o fs/xfs/libxfs/xfs_dir2_data.o fs/xfs/libxfs/xfs_dir2_leaf.o fs/xfs/l=
ibxfs/xfs_dir2_node.o fs/xfs/libxfs/xfs_dir2_sf.o fs/xfs/libxfs/xfs_dquot_b=
uf.o fs/xfs/libxfs/xfs_ialloc.o fs/xfs/libxfs/xfs_ialloc_btree.o fs/xfs/lib=
xfs/xfs_iext_tree.o fs/xfs/libxfs/xfs_inode_fork.o fs/xfs/libxfs/xfs_inode_=
buf.o fs/xfs/libxfs/xfs_log_rlimit.o fs/xfs/libxfs/xfs_ag_resv.o fs/xfs/lib=
xfs/xfs_rmap.o fs/xfs/libxfs/xfs_rmap_btree.o fs/xfs/libxfs/xfs_refcount.o =
fs/xfs/libxfs/xfs_refcount_btree.o fs/xfs/libxfs/xfs_sb.o fs/xfs/libxfs/xfs=
_symlink_remote.o fs/xfs/libxfs/xfs_trans_inode.o fs/xfs/libxfs/xfs_trans_r=
esv.o fs/xfs/libxfs/xfs_types.o fs/xfs/xfs_aops.o fs/xfs/xfs_attr_inactive.=
o fs/xfs/xfs_attr_list.o fs/xfs/xfs_bmap_util.o fs/xfs/xfs_bio_io.o fs/xfs/=
xfs_buf.o fs/xfs/xfs_dir2_readdir.o fs/xfs/xfs_discard.o fs/xfs/xfs_error.o=
 fs/xfs/xfs_export.o fs/xfs/xfs_extent_busy.o fs/xfs/xfs_file.o fs/xfs/xfs_=
filestream.o fs/xfs/xfs_fsmap.o fs/xfs/xfs_fsops.o fs/xfs/xfs_globals.o fs/=
xfs/xfs_health.o fs/xfs/xfs_icache.o fs/xfs/xfs_ioctl.o fs/xfs/xfs_iomap.o =
fs/xfs/xfs_iops.o fs/xfs/xfs_inode.o fs/xfs/xfs_itable.o fs/xfs/xfs_iwalk.o=
 fs/xfs/xfs_message.o fs/xfs/xfs_mount.o fs/xfs/xfs_mru_cache.o fs/xfs/xfs_=
pwork.o fs/xfs/xfs_reflink.o fs/xfs/xfs_stats.o fs/xfs/xfs_super.o fs/xfs/x=
fs_symlink.o fs/xfs/xfs_sysfs.o fs/xfs/xfs_trans.o fs/xfs/xfs_xattr.o fs/xf=
s/kmem.o fs/xfs/xfs_log.o fs/xfs/xfs_log_cil.o fs/xfs/xfs_bmap_item.o fs/xf=
s/xfs_buf_item.o fs/xfs/xfs_extfree_item.o fs/xfs/xfs_icreate_item.o fs/xfs=
/xfs_inode_item.o fs/xfs/xfs_refcount_item.o fs/xfs/xfs_rmap_item.o fs/xfs/=
xfs_log_recover.o fs/xfs/xfs_trans_ail.o fs/xfs/xfs_trans_buf.o fs/xfs/xfs_=
sysctl.o fs/xfs/xfs_ioctl32.o fs/xfs/xfs_pnfs.o
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200430023120.GA24491%40intel.com.
