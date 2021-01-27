Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNOBYOAAMGQE6DPA4QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C12305001
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 04:40:38 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id b2sf401649pls.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 19:40:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611718837; cv=pass;
        d=google.com; s=arc-20160816;
        b=C0m3OQkSBWJ+4cMR7iCbPY3Wn/UefnfrZGttFkxApW0OIlo3K7yNg5Kul4ngt8DIXy
         6QewNBPqr2GGhb3NknlVhQmKrWByy+ETHp7GsPN+XXRh+nSDdAYJouTddNhQvcyN0K0h
         K9LoCkwNlhZ3aTpb8kyjl+r1y0bJ3BGew8v5JgYA9cdS9lBKfpdgFAFREtri91ncPgmD
         S29/pi64GveSk8bMU9Kr+Ol/GpeZHXVxMvfDhyjfyhGQpGY7BKwkcjjRct9J1QKt80iA
         gmhznuK6IhkILtrpZFu4MYfWKAHJDJ0e+vwRKkKBeTEoQNoBOTwzKBcVUFmqmwgk7YUJ
         xHRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=c2ZLJbyzV3DKUiJoNjDvcYm5zVMdH8ghuUyUOttGGSo=;
        b=svtQM+ljosiwiCbojRo3UioCUY1R3QaIRZHasbNuKWXuzn1Wv96fUqo5yOqrn5SIUH
         XBwzKL9r2umTTXrsc0YTsxO4G9o5dJ/TAkiPjQ8sdYjj4z/GrJ38YKVyBJibYPxtlFGQ
         lVXrKoG6QptgCxPV+6vrjjxHtZ5gAlwfj9SVK5J7MuMdmvoLpb3QHvdFUJ4+NB8+ATGb
         c6nLAqYDpAkzOmyK7lcYDnfSB7wdgrQXhkpLcsl9W/nFJASo3ZFs7W4BFcaSN2ihAFU+
         PGGfjKl/hq+jYAh2IO8so6wwxlNx3R5W4GH/18pMTpfs2A7xAanXjgcQs8brd9i+qGOn
         w4Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c2ZLJbyzV3DKUiJoNjDvcYm5zVMdH8ghuUyUOttGGSo=;
        b=Ez3D+/MNeR4cEc3acNJQe/l1suilA7am3hHnwqg0cRlX3DnOewH26wDDQatpPRpW3R
         wsQjxPgaal9/TZvbvrS/OyvwnIoamV1IS3TkFVYEOCMJx/uWsr5iGuTVS7eu82xOepus
         T1GnmP8+YigWXQVzvcP4GJvuwKalGkyKfwbXqoGNJdppRwVKJTSLlmUPd41gxl5++IWa
         PKDAFhsQDbHoGlqqJi1xKVix/e+tkYgzlsavz9I4Vubm2AHiszOf5U9umU1V9ZYBSXFc
         ksy1RHIdazt3K2OC4+PyRj2vOTTXpEF5SmnIPMZygst7qhuEMwWQyhrHiV0Dt2e0W1n6
         LGGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c2ZLJbyzV3DKUiJoNjDvcYm5zVMdH8ghuUyUOttGGSo=;
        b=ULRYX6j8sE0owBeN35W8cJe06FGfsH4zfUtBFinCE/9Gf39dr5T9NOomcrzOoXFfBV
         VqUc1a/Yqvf3k930WyLKMZ5DJ+vvFjmW0Ao6EXsQ8UOS94bfhGTNFc2LsiNnArU700g5
         5lKXud5ly7HbR1iF+GfQnsmGVB6jn0DxMzYd90InyYMzfucpKVPRtQr5t7myyI8hi9yd
         NdUISag8ddy2lXqmPoi5OAhMEPQcXUx/D45GhV0aDdfaW7C4YTMZ+ZI5OtJSHJ7CR+Ix
         Qo9R5egQNH2ZzpJJRNL0iNMb0OAV6HPjHq8dnyCo9hoXl075arYpobNFuej/bCQquudn
         7cEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327mkw6caivuXaqTrp0Qh9o2cEOJYAWxfxb3mG7C4awr/0Zv7YH
	GtdoX1UBaoa3yK9d+t0Ys+I=
X-Google-Smtp-Source: ABdhPJzabFarfR1ZEdZNiABqIGxq/X+2XzAczFze8NVV9IYovohaGZrrSvS75zIMgGLiPw1JonKn/A==
X-Received: by 2002:a17:90a:a415:: with SMTP id y21mr3391927pjp.88.1611718837340;
        Tue, 26 Jan 2021 19:40:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5803:: with SMTP id m3ls272007pgb.3.gmail; Tue, 26 Jan
 2021 19:40:36 -0800 (PST)
X-Received: by 2002:a62:aa0a:0:b029:1c2:1baa:eaea with SMTP id e10-20020a62aa0a0000b02901c21baaeaeamr8654927pff.52.1611718836522;
        Tue, 26 Jan 2021 19:40:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611718836; cv=none;
        d=google.com; s=arc-20160816;
        b=hHlvWUZauZ/iCPsHX5bYVBM5IT1Jio99C3Byu9cvG+55NLQvD/YANhMR4rV3kJUmea
         rVcjg4x4wlRCvoJ9aPP2X23UdsirB04U4aOk/L0w164RqOQSK4R1nBqmGfzofpJKAt7Q
         N2O1Z5AqTm8MpijJ5RTfehZRhiUakFvQPvetUH0LxyocpI9a+6T9hr5+aKipvghwa1t2
         q1KyxxOHqiJPjjbubzTmPUb0bns4TmPcKev7ca5L11ufyfeq2R1ZTnag8ddLHYfIzjKY
         ssZPDWtSpq/geP4w8uDYm4ehasV9YxULIoepU5tg2dwVQtncbGhdTdalhqFdnmzsTYpp
         6Hgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=JzEEq24W0VhWmOOZgdrU9uxK1BgQEviQxMHZi4f4tkc=;
        b=iJruDbj0pfvEJeLbaQltYfFjO6enWtdafguATBL0BqcSuiyScNQzrvPU7PiV9GYcdL
         xq+h/2sgpPk0SKAmsWHBKkNkgaJBeHnbg1Hv04bAXt7/s1ZU5emc5hr7ObmyVJY6rkQ/
         wAfEqFF+8NF7PJkpAlT6VDhLeAJ/jFy+DjgJppezusPc+94Pdj2AQRiY6RxRiVCpWrfO
         /W5IR3dswrSnLgPVjDZ9OHCowZugeOYlmTef/uS6WRuyPb8xMk/L5N3A/R6B8KcvhwgY
         W770lztTVUxGxW2CL9gC6nn+P+Yr3tm7r83fCA5FLVexyxrJp5gno8mbCiP21oIi//yF
         4DRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id w2si31506ply.1.2021.01.26.19.40.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jan 2021 19:40:36 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 3nHjGD+JQhNuwkyOLu8zeYt/4G2t2nxh0YqszvHIaZpAbRYfa7XEymirlJ1+oWrsMMPvDuQ4zy
 qw29k1F0/4bg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="180091374"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; 
   d="gz'50?scan'50,208,50";a="180091374"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jan 2021 19:40:33 -0800
IronPort-SDR: tomAuIT2EuJzIj0j8+KhNZTYI4J/J7imrcWG8hRdTAAWQger1X/ArXa9OTMnzno/Atx03zY/OB
 lyc8AOd1+Bxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; 
   d="gz'50?scan'50,208,50";a="393940919"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 26 Jan 2021 19:40:30 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l4bgz-0001IM-Mc; Wed, 27 Jan 2021 03:40:29 +0000
Date: Wed, 27 Jan 2021 11:39:42 +0800
From: kernel test robot <lkp@intel.com>
To: Zou Wei <zou_wei@huawei.com>, achim_leubner@adaptec.com,
	jejb@linux.ibm.com, martin.petersen@oracle.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	Zou Wei <zou_wei@huawei.com>
Subject: Re: [PATCH -next] scsi: gdth: Remove unused including
 <linux/version.h>
Message-ID: <202101271143.u7ihLVoE-lkp@intel.com>
References: <1611578062-42802-1-git-send-email-zou_wei@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
In-Reply-To: <1611578062-42802-1-git-send-email-zou_wei@huawei.com>
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


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Zou,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on next-20210125]

url:    https://github.com/0day-ci/linux/commits/Zou-Wei/scsi-gdth-Remove-unused-including-linux-version-h/20210126-144114
base:    59fa6a163ffabc1bf25c5e0e33899e268a96d3cc
config: x86_64-randconfig-a006-20210126 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 925ae8c790c7e354f12ec14a6cac6aa49fc75b29)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/708189b9daeabee85678f76fe62b77125dead7fe
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Zou-Wei/scsi-gdth-Remove-unused-including-linux-version-h/20210126-144114
        git checkout 708189b9daeabee85678f76fe62b77125dead7fe
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/scsi/gdth.c:3832:23: error: use of undeclared identifier 'LINUX_VERSION_MAJOR'
           osv.version = LINUX_VERSION_MAJOR;
                         ^
>> drivers/scsi/gdth.c:3833:26: error: use of undeclared identifier 'LINUX_VERSION_PATCHLEVEL'
           osv.subversion = LINUX_VERSION_PATCHLEVEL;
                            ^
>> drivers/scsi/gdth.c:3834:24: error: use of undeclared identifier 'LINUX_VERSION_SUBLEVEL'
           osv.revision = LINUX_VERSION_SUBLEVEL;
                          ^
>> drivers/scsi/gdth.c:4097:33: warning: shift count >= width of type [-Wshift-count-overflow]
                   if (!dma_set_mask(&pdev->dev, DMA_BIT_MASK(64))) {
                                                 ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 3 errors generated.


vim +/LINUX_VERSION_MAJOR +3832 drivers/scsi/gdth.c

^1da177e4c3f41 Linus Torvalds     2005-04-16  3668  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3669  static int ioc_rescan(void __user *arg, char *cmnd)
^1da177e4c3f41 Linus Torvalds     2005-04-16  3670  {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3671      gdth_ioctl_rescan *rsc;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3672      gdth_cmd_str *cmd;
1fe6dbf4d0afba Dave Jones         2010-01-04  3673      u16 i, status, hdr_cnt;
1fe6dbf4d0afba Dave Jones         2010-01-04  3674      u32 info;
45f1a41b2b2e02 Boaz Harrosh       2007-10-02  3675      int cyls, hds, secs;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3676      int rc = -ENOMEM;
1fe6dbf4d0afba Dave Jones         2010-01-04  3677      unsigned long flags;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3678      gdth_ha_str *ha; 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3679  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3680      rsc = kmalloc(sizeof(*rsc), GFP_KERNEL);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3681      cmd = kmalloc(sizeof(*cmd), GFP_KERNEL);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3682      if (!cmd || !rsc)
^1da177e4c3f41 Linus Torvalds     2005-04-16  3683          goto free_fail;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3684  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3685      if (copy_from_user(rsc, arg, sizeof(gdth_ioctl_rescan)) ||
884f7fba096467 Boaz Harrosh       2007-10-02  3686          (NULL == (ha = gdth_find_ha(rsc->ionode)))) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3687          rc = -EFAULT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3688          goto free_fail;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3689      }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3690      memset(cmd, 0, sizeof(gdth_cmd_str));
^1da177e4c3f41 Linus Torvalds     2005-04-16  3691  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3692      if (rsc->flag == 0) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3693          /* old method: re-init. cache service */
^1da177e4c3f41 Linus Torvalds     2005-04-16  3694          cmd->Service = CACHESERVICE;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3695          if (ha->cache_feat & GDT_64BIT) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3696              cmd->OpCode = GDT_X_INIT_HOST;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3697              cmd->u.cache64.DeviceNo = LINUX_OS;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3698          } else {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3699              cmd->OpCode = GDT_INIT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3700              cmd->u.cache.DeviceNo = LINUX_OS;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3701          }
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3702  
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3703          status = __gdth_execute(ha->sdev, cmd, cmnd, 30, &info);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3704          i = 0;
1fe6dbf4d0afba Dave Jones         2010-01-04  3705          hdr_cnt = (status == S_OK ? (u16)info : 0);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3706      } else {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3707          i = rsc->hdr_no;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3708          hdr_cnt = i + 1;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3709      }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3710  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3711      for (; i < hdr_cnt && i < MAX_HDRIVES; ++i) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3712          cmd->Service = CACHESERVICE;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3713          cmd->OpCode = GDT_INFO;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3714          if (ha->cache_feat & GDT_64BIT) 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3715              cmd->u.cache64.DeviceNo = i;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3716          else 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3717              cmd->u.cache.DeviceNo = i;
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3718  
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3719          status = __gdth_execute(ha->sdev, cmd, cmnd, 30, &info);
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3720  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3721          spin_lock_irqsave(&ha->smp_lock, flags);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3722          rsc->hdr_list[i].bus = ha->virt_bus;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3723          rsc->hdr_list[i].target = i;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3724          rsc->hdr_list[i].lun = 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3725          if (status != S_OK) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3726              ha->hdr[i].present = FALSE;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3727          } else {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3728              ha->hdr[i].present = TRUE;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3729              ha->hdr[i].size = info;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3730              /* evaluate mapping */
^1da177e4c3f41 Linus Torvalds     2005-04-16  3731              ha->hdr[i].size &= ~SECS32;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3732              gdth_eval_mapping(ha->hdr[i].size,&cyls,&hds,&secs); 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3733              ha->hdr[i].heads = hds;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3734              ha->hdr[i].secs = secs;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3735              /* round size */
^1da177e4c3f41 Linus Torvalds     2005-04-16  3736              ha->hdr[i].size = cyls * hds * secs;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3737          }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3738          spin_unlock_irqrestore(&ha->smp_lock, flags);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3739          if (status != S_OK)
^1da177e4c3f41 Linus Torvalds     2005-04-16  3740              continue; 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3741          
^1da177e4c3f41 Linus Torvalds     2005-04-16  3742          /* extended info, if GDT_64BIT, for drives > 2 TB */
^1da177e4c3f41 Linus Torvalds     2005-04-16  3743          /* but we need ha->info2, not yet stored in scp->SCp */
^1da177e4c3f41 Linus Torvalds     2005-04-16  3744  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3745          /* devtype, cluster info, R/W attribs */
^1da177e4c3f41 Linus Torvalds     2005-04-16  3746          cmd->Service = CACHESERVICE;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3747          cmd->OpCode = GDT_DEVTYPE;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3748          if (ha->cache_feat & GDT_64BIT) 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3749              cmd->u.cache64.DeviceNo = i;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3750          else
^1da177e4c3f41 Linus Torvalds     2005-04-16  3751              cmd->u.cache.DeviceNo = i;
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3752  
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3753          status = __gdth_execute(ha->sdev, cmd, cmnd, 30, &info);
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3754  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3755          spin_lock_irqsave(&ha->smp_lock, flags);
1fe6dbf4d0afba Dave Jones         2010-01-04  3756          ha->hdr[i].devtype = (status == S_OK ? (u16)info : 0);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3757          spin_unlock_irqrestore(&ha->smp_lock, flags);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3758  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3759          cmd->Service = CACHESERVICE;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3760          cmd->OpCode = GDT_CLUST_INFO;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3761          if (ha->cache_feat & GDT_64BIT) 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3762              cmd->u.cache64.DeviceNo = i;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3763          else
^1da177e4c3f41 Linus Torvalds     2005-04-16  3764              cmd->u.cache.DeviceNo = i;
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3765  
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3766          status = __gdth_execute(ha->sdev, cmd, cmnd, 30, &info);
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3767  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3768          spin_lock_irqsave(&ha->smp_lock, flags);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3769          ha->hdr[i].cluster_type = 
1fe6dbf4d0afba Dave Jones         2010-01-04  3770              ((status == S_OK && !shared_access) ? (u16)info : 0);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3771          spin_unlock_irqrestore(&ha->smp_lock, flags);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3772          rsc->hdr_list[i].cluster_type = ha->hdr[i].cluster_type;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3773  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3774          cmd->Service = CACHESERVICE;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3775          cmd->OpCode = GDT_RW_ATTRIBS;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3776          if (ha->cache_feat & GDT_64BIT) 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3777              cmd->u.cache64.DeviceNo = i;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3778          else
^1da177e4c3f41 Linus Torvalds     2005-04-16  3779              cmd->u.cache.DeviceNo = i;
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3780  
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3781          status = __gdth_execute(ha->sdev, cmd, cmnd, 30, &info);
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3782  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3783          spin_lock_irqsave(&ha->smp_lock, flags);
1fe6dbf4d0afba Dave Jones         2010-01-04  3784          ha->hdr[i].rw_attribs = (status == S_OK ? (u16)info : 0);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3785          spin_unlock_irqrestore(&ha->smp_lock, flags);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3786      }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3787   
^1da177e4c3f41 Linus Torvalds     2005-04-16  3788      if (copy_to_user(arg, rsc, sizeof(gdth_ioctl_rescan)))
^1da177e4c3f41 Linus Torvalds     2005-04-16  3789          rc = -EFAULT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3790      else
^1da177e4c3f41 Linus Torvalds     2005-04-16  3791          rc = 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3792  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3793  free_fail:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3794      kfree(rsc);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3795      kfree(cmd);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3796      return rc;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3797  }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3798    
f4927c45beda9a Arnd Bergmann      2010-04-27  3799  static int gdth_ioctl(struct file *filep, unsigned int cmd, unsigned long arg)
^1da177e4c3f41 Linus Torvalds     2005-04-16  3800  {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3801      gdth_ha_str *ha; 
91ebc1facd7797 Johannes Thumshirn 2018-06-13  3802      struct scsi_cmnd *scp;
1fe6dbf4d0afba Dave Jones         2010-01-04  3803      unsigned long flags;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3804      char cmnd[MAX_COMMAND_SIZE];   
^1da177e4c3f41 Linus Torvalds     2005-04-16  3805      void __user *argp = (void __user *)arg;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3806  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3807      memset(cmnd, 0xff, 12);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3808      
^1da177e4c3f41 Linus Torvalds     2005-04-16  3809      TRACE(("gdth_ioctl() cmd 0x%x\n", cmd));
^1da177e4c3f41 Linus Torvalds     2005-04-16  3810   
^1da177e4c3f41 Linus Torvalds     2005-04-16  3811      switch (cmd) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3812        case GDTIOCTL_CTRCNT:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3813        { 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3814          int cnt = gdth_ctr_count;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3815          if (put_user(cnt, (int __user *)argp))
^1da177e4c3f41 Linus Torvalds     2005-04-16  3816                  return -EFAULT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3817          break;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3818        }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3819  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3820        case GDTIOCTL_DRVERS:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3821        { 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3822          int ver = (GDTH_VERSION<<8) | GDTH_SUBVERSION;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3823          if (put_user(ver, (int __user *)argp))
^1da177e4c3f41 Linus Torvalds     2005-04-16  3824                  return -EFAULT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3825          break;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3826        }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3827        
^1da177e4c3f41 Linus Torvalds     2005-04-16  3828        case GDTIOCTL_OSVERS:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3829        { 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3830          gdth_ioctl_osvers osv; 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3831  
537896fabed11f Sasha Levin        2021-01-18 @3832          osv.version = LINUX_VERSION_MAJOR;
537896fabed11f Sasha Levin        2021-01-18 @3833          osv.subversion = LINUX_VERSION_PATCHLEVEL;
537896fabed11f Sasha Levin        2021-01-18 @3834          osv.revision = LINUX_VERSION_SUBLEVEL;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3835          if (copy_to_user(argp, &osv, sizeof(gdth_ioctl_osvers)))
^1da177e4c3f41 Linus Torvalds     2005-04-16  3836                  return -EFAULT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3837          break;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3838        }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3839  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3840        case GDTIOCTL_CTRTYPE:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3841        { 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3842          gdth_ioctl_ctrtype ctrt;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3843          
^1da177e4c3f41 Linus Torvalds     2005-04-16  3844          if (copy_from_user(&ctrt, argp, sizeof(gdth_ioctl_ctrtype)) ||
884f7fba096467 Boaz Harrosh       2007-10-02  3845              (NULL == (ha = gdth_find_ha(ctrt.ionode))))
^1da177e4c3f41 Linus Torvalds     2005-04-16  3846              return -EFAULT;
884f7fba096467 Boaz Harrosh       2007-10-02  3847  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3848          if (ha->type != GDT_PCIMPR) {
1fe6dbf4d0afba Dave Jones         2010-01-04  3849  	    ctrt.type = (u8)((ha->stype<<4) + 6);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3850          } else {
314814552a0adf Christoph Hellwig  2018-12-12  3851              ctrt.type =  (ha->oem_id == OEM_ID_INTEL ? 0xfd : 0xfe);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3852              if (ha->stype >= 0x300)
8e9a8a0d56c5d9 Jeff Garzik        2007-07-17  3853                  ctrt.ext_type = 0x6000 | ha->pdev->subsystem_device;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3854              else
^1da177e4c3f41 Linus Torvalds     2005-04-16  3855                  ctrt.ext_type = 0x6000 | ha->stype;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3856          }
8e9a8a0d56c5d9 Jeff Garzik        2007-07-17  3857          ctrt.device_id = ha->pdev->device;
8e9a8a0d56c5d9 Jeff Garzik        2007-07-17  3858          ctrt.sub_device_id = ha->pdev->subsystem_device;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3859          ctrt.info = ha->brd_phys;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3860          ctrt.oem_id = ha->oem_id;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3861          if (copy_to_user(argp, &ctrt, sizeof(gdth_ioctl_ctrtype)))
^1da177e4c3f41 Linus Torvalds     2005-04-16  3862              return -EFAULT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3863          break;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3864        }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3865          
^1da177e4c3f41 Linus Torvalds     2005-04-16  3866        case GDTIOCTL_GENERAL:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3867          return ioc_general(argp, cmnd);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3868  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3869        case GDTIOCTL_EVENT:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3870          return ioc_event(argp);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3871  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3872        case GDTIOCTL_LOCKDRV:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3873          return ioc_lockdrv(argp);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3874  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3875        case GDTIOCTL_LOCKCHN:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3876        {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3877          gdth_ioctl_lockchn lchn;
1fe6dbf4d0afba Dave Jones         2010-01-04  3878          u8 i, j;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3879  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3880          if (copy_from_user(&lchn, argp, sizeof(gdth_ioctl_lockchn)) ||
884f7fba096467 Boaz Harrosh       2007-10-02  3881              (NULL == (ha = gdth_find_ha(lchn.ionode))))
^1da177e4c3f41 Linus Torvalds     2005-04-16  3882              return -EFAULT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3883  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3884          i = lchn.channel;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3885          if (i < ha->bus_cnt) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3886              if (lchn.lock) {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3887                  spin_lock_irqsave(&ha->smp_lock, flags);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3888                  ha->raw[i].lock = 1;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3889                  spin_unlock_irqrestore(&ha->smp_lock, flags);
242f9dcb8ba6f6 Jens Axboe         2008-09-14  3890  		for (j = 0; j < ha->tid_cnt; ++j)
45f1a41b2b2e02 Boaz Harrosh       2007-10-02  3891                      gdth_wait_completion(ha, i, j);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3892              } else {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3893                  spin_lock_irqsave(&ha->smp_lock, flags);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3894                  ha->raw[i].lock = 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3895                  spin_unlock_irqrestore(&ha->smp_lock, flags);
242f9dcb8ba6f6 Jens Axboe         2008-09-14  3896  		for (j = 0; j < ha->tid_cnt; ++j)
45f1a41b2b2e02 Boaz Harrosh       2007-10-02  3897                      gdth_next(ha);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3898              }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3899          } 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3900          break;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3901        }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3902  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3903        case GDTIOCTL_RESCAN:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3904          return ioc_rescan(argp, cmnd);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3905  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3906        case GDTIOCTL_HDRLIST:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3907          return ioc_hdrlist(argp, cmnd);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3908  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3909        case GDTIOCTL_RESET_BUS:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3910        {
^1da177e4c3f41 Linus Torvalds     2005-04-16  3911          gdth_ioctl_reset res;
45f1a41b2b2e02 Boaz Harrosh       2007-10-02  3912          int rval;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3913  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3914          if (copy_from_user(&res, argp, sizeof(gdth_ioctl_reset)) ||
884f7fba096467 Boaz Harrosh       2007-10-02  3915              (NULL == (ha = gdth_find_ha(res.ionode))))
^1da177e4c3f41 Linus Torvalds     2005-04-16  3916              return -EFAULT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3917  
bbfbbbc1182f8b Mariusz Kozlowski  2007-08-11  3918          scp  = kzalloc(sizeof(*scp), GFP_KERNEL);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3919          if (!scp)
^1da177e4c3f41 Linus Torvalds     2005-04-16  3920              return -ENOMEM;
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3921          scp->device = ha->sdev;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3922          scp->cmd_len = 12;
52759e6abc88fe Christoph Hellwig  2007-10-02  3923          scp->device->channel = res.number;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3924          rval = gdth_eh_bus_reset(scp);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3925          res.status = (rval == SUCCESS ? S_OK : S_GENERR);
cbd5f69b98bb5d Leubner, Achim     2006-06-09  3926          kfree(scp);
8d7a5da4fc95cb Jeff Garzik        2007-10-02  3927  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3928          if (copy_to_user(argp, &res, sizeof(gdth_ioctl_reset)))
^1da177e4c3f41 Linus Torvalds     2005-04-16  3929              return -EFAULT;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3930          break;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3931        }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3932  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3933        case GDTIOCTL_RESET_DRV:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3934          return ioc_resetdrv(argp, cmnd);
^1da177e4c3f41 Linus Torvalds     2005-04-16  3935  
^1da177e4c3f41 Linus Torvalds     2005-04-16  3936        default:
^1da177e4c3f41 Linus Torvalds     2005-04-16  3937          break; 
^1da177e4c3f41 Linus Torvalds     2005-04-16  3938      }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3939      return 0;
^1da177e4c3f41 Linus Torvalds     2005-04-16  3940  }
^1da177e4c3f41 Linus Torvalds     2005-04-16  3941  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101271143.u7ihLVoE-lkp%40intel.com.

--BXVAT5kNtrzKuDFl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
LE5kkOxBebP8HyxUj9GwHwIA

--BXVAT5kNtrzKuDFl--
