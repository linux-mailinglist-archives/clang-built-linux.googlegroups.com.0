Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNP4SGEQMGQEVNL6YPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 149AE3F577E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 07:06:00 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id q15-20020a056a0002af00b003e2840527cesf9669273pfs.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 22:05:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629781558; cv=pass;
        d=google.com; s=arc-20160816;
        b=UHViSSQXA17oLqs9CZJ+12GZnCWqEA8S8RoKTOr9l6Vv5v/fPP1Dwp6Bq92wwKmKvp
         S9GGKasYypACKSKloi8BI5IR5vgx3MF4kCtO7e4esZWz9cze2B5FXafUOTN2+2KlV8Rm
         rK8DeAQ2eUdCqexiOE3BaOdr+u0C40dYyqzcER/+3KFXcsBUv2LJFLGmTZjE0hWyFvvE
         wUUMd4i8718jPVT0u+DVx7HbiUKPmBsoGcGgZFbdyZDAJVxPcfInYI2UYcv9Pg2viAvC
         LlzEG107/bjZBkofY+lxneBwEMOwY7o3ZHXk29uhMd3igVp9IOrOsjZ/LgPoONQI/Iyk
         ne8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1U6FI8JFINpTlK5HAc21yE1YVbbTDqC9GQ/vqBo2hv0=;
        b=rTNiDoG+aLyevTZ4vkytdBFsqKMI0gadPuUaAWr0PkHgOfQpKkNt2/rJIA6LhFJW4s
         Moex0WBV/UH6d/LWGvu8KnUZYowZNJPP5mj6eINKbrBmW1fIZCkG3ljx34FcyOiqyWb5
         LJP2TK6JN5/kzsD0c4Sa/z4QFcF0SjOxxdam7Nsz4zdIuvl/IBUa+EzPL+oU/zGzivcC
         OrK2PQ3jFevwO7FvmoNUocKFcbqQy+6oB1V+5IxYA2IxhxVw3pFiqVll6Mk+tRufnEwe
         t+3ifWL4t0ib9IImCfjEh3aUtLSHFwDwSCBQoFYbAWNq8zXahX/s9JlGKFy8hLctAnZg
         htdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1U6FI8JFINpTlK5HAc21yE1YVbbTDqC9GQ/vqBo2hv0=;
        b=CI1Y9OVGrM+MoNtYDlKAvEF8octYwdUCUIwlY5x1dQzhirT27YKk3RVin+Ta90zhjF
         gLV62tRzuKluixFiW8zJcviPE+Jzx2M+1RkOPE6vV2KB1H+aVgPnswe7JFe90fSHFOrY
         yZhFS+Ji43fMQ36tOnN0dHqGdrrI5ZMcOFAth0iYbG++aiv/OACWFt0oUXt+JvW6IMwm
         Hi3sgF2We5PQG+/p8nlmIyOWQBalm15MltpF7lEMNz2qPSGY4FWqB+EvuFzlXkjQgXDQ
         gxV3vT8GufpRj03q3Vm19BXd5UNNb57IkA5NAqgiKIi1VS+rpJWtaYoH48K5wbMYUnnq
         Mktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1U6FI8JFINpTlK5HAc21yE1YVbbTDqC9GQ/vqBo2hv0=;
        b=fkTv/QHnBsvhP8gvjZvJ0nI5IYw0p6Es9f4xLBmj0QdaNKTddLP6owAelCRItML8JB
         XfqFsjDdmpyybUv42hEY3usIGm/LhQmCMcrK1ZaY1+gWo+gvvfT4klb2sqgzJHFKrRX0
         ontZg/IwS3TGAPn6Zh7effBcQl3cODXACzwiHP9C1BWePhAMDIKXZdbK698tgqmc3v9G
         K1/nAKWvv7SXYKmB1v4YcNLIu21vnZpQzeotvbGQK2GU2at2M0xFq6atYIc90y4WTuqQ
         OpYlmYcGXlI15ZZAOnZIsW0asm/rUnMphF7z0wy808w/8G8rB8FZIFB7lUdGbPwxCfpp
         ssTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308+8fOxA9Rt4stQ7RrEGJeeiIkTULDhEU/6FmLxMt89leNdbfP
	lb8nxacdB1fr6KVkzM+STLs=
X-Google-Smtp-Source: ABdhPJzxF+cSevXUdC0pVC3ghhC/vuBR8JnJieIK5sWiyZ0Bwdjmi7eerHaCanrv9RONmHIneBn9lA==
X-Received: by 2002:a17:90a:2ecb:: with SMTP id h11mr2471584pjs.159.1629781557989;
        Mon, 23 Aug 2021 22:05:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:149:: with SMTP id z9ls766258pje.2.gmail; Mon, 23
 Aug 2021 22:05:57 -0700 (PDT)
X-Received: by 2002:a17:90a:f2d2:: with SMTP id gt18mr2319876pjb.187.1629781557231;
        Mon, 23 Aug 2021 22:05:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629781557; cv=none;
        d=google.com; s=arc-20160816;
        b=Z05pIcPIrFy//ZyUdmFcilH7ykU6Hx5Qu0eZ22fPTmh5ks97usjmW3GJTsmEKQmmid
         0U/IfOLoD9AQvqDYZ9ab87UQrJ8DGPt3WC5i/61USc/Fr/0/vpji4iNkrblHGv3Guxpa
         LIRnCf8aS79yCad5tY/tlOD6sF3P2o6hZJUPvRsZfi9IphaXdefbW7bAjH6imPSc3XYR
         3dSU9OdgS89L2dPK66fWmp+W13f/J/ZVDUq712KeKalxIFKlIo2bAtZRbOMmTSzNwcSE
         qjSLkYP85/+BfAi3NTQYQEZPG7mpq8zuSqzq4HRa7u43E/qo9AXJxBBGdFx6F5+OR9np
         QOPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=bsaR6x8F8l6XiU4+OGlkhv66TRDY+NhzXoD/w+Nl3kQ=;
        b=n8PhqNDXNBw2gcHjRQ81yz3695Lhu756KfdPJHL5sRW34mnUh2KEjoGJaIsTJtu3qP
         izCsNT8nEt/hGumenYwTc452mZFDkP3VjXJk3UBjv89RcamIRqvQp2DS88ojRQTcN5Rc
         bUFMUWgWnlB7OStZ/jgVWhirGw/oZ2XK7R6SpmJtw/yacxr0QSaTpBnexvRdeksHbnaa
         ShBFTOnG2o+CXPblENLdXS5w4hcaYqBHYr2WM3wpfREG4rPOuh0tFS72FdB1HZed//M1
         FPSnXJ4OP6efBO3y4caMMXSdG/iD9HGUDc8P+Lxfaw0RAtG9BpwHtC8eqwLSa3ZACm1G
         Yhqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id i123si1207733pfb.1.2021.08.23.22.05.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 22:05:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="278248059"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="gz'50?scan'50,208,50";a="278248059"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 22:05:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="gz'50?scan'50,208,50";a="455274897"
Received: from lkp-server02.sh.intel.com (HELO 181e7be6f509) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 23 Aug 2021 22:05:52 -0700
Received: from kbuild by 181e7be6f509 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mIOdD-0000KY-Rq; Tue, 24 Aug 2021 05:05:51 +0000
Date: Tue, 24 Aug 2021 13:05:10 +0800
From: kernel test robot <lkp@intel.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
	Kai Vehmanen <kai.vehmanen@linux.intel.com>,
	Guennadi Liakhovetski <guennadi.liakhovetski@linux.intel.com>,
	Bard Liao <bard.liao@intel.com>
Subject: sound/soc/sof/intel/hda-dai.c:265:22: warning: Value stored to
 'sdev' during its initialization is never read
 [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108241301.UdSncTEq-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--17pEHd4RhPHOinZp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   d5ae8d7f85b7f6f6e60f1af8ff4be52b0926fde1
commit: 8d4ba1be3d2257606e04aff412829d8972670750 ASoC: SOF: pci: split PCI =
into different drivers
date:   6 months ago
config: arm-randconfig-c002-20210820 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c561=
3e856cf2addfbf892fc4c1ce9ef9feceaa)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3D8d4ba1be3d2257606e04aff412829d8972670750
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 8d4ba1be3d2257606e04aff412829d8972670750
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Darm clang-analyzer=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
   kernel/workqueue.c:2602:14: note: Value stored to 'target_func' during i=
ts initialization is never read
           work_func_t target_func =3D target_work ? target_work->func : NU=
LL;
                       ^~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (2 in non-user code, 1 with check filters).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   drivers/iio/gyro/mpu3050-core.c:550:4: warning: Value stored to 'ret' is=
 never read [clang-analyzer-deadcode.DeadStores]
                           ret =3D regmap_bulk_read(mpu3050->map,
                           ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/iio/gyro/mpu3050-core.c:550:4: note: Value stored to 'ret' is ne=
ver read
                           ret =3D regmap_bulk_read(mpu3050->map,
                           ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   drivers/block/rsxx/core.c:684:2: warning: Value stored to 'st' is never =
read [clang-analyzer-deadcode.DeadStores]
           st =3D ioread32(card->regmap + ISR);
           ^
   drivers/block/rsxx/core.c:684:2: note: Value stored to 'st' is never rea=
d
   Suppressed 3 warnings (2 in non-user code, 1 with check filters).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
>> sound/soc/sof/intel/hda-dai.c:265:22: warning: Value stored to 'sdev' du=
ring its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct snd_sof_dev *sdev =3D
                               ^~~~
   sound/soc/sof/intel/hda-dai.c:265:22: note: Value stored to 'sdev' durin=
g its initialization is never read
           struct snd_sof_dev *sdev =3D
                               ^~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   drivers/input/misc/ad714x.c:1014:2: warning: Value stored to 'drv_mem' i=
s never read [clang-analyzer-deadcode.DeadStores]
           drv_mem +=3D sizeof(*bt_drv) * ad714x->hw->button_num;
           ^          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/input/misc/ad714x.c:1014:2: note: Value stored to 'drv_mem' is n=
ever read
           drv_mem +=3D sizeof(*bt_drv) * ad714x->hw->button_num;
           ^          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   drivers/input/misc/atmel_captouch.c:68:8: warning: Excessive padding in =
'struct atmel_captouch_device' (75 padding bytes, where 11 is optimal).=20
   Optimal fields order:=20
   xfer_buf,=20
   client,=20
   input,=20
   num_btn,=20
   keycodes,=20
   prev_btn,=20
   consider reordering the fields or adding explicit padding members [clang=
-analyzer-optin.performance.Padding]
   struct atmel_captouch_device {
   ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   drivers/input/misc/atmel_captouch.c:68:8: note: Excessive padding in 'st=
ruct atmel_captouch_device' (75 padding bytes, where 11 is optimal). Optima=
l fields order: xfer_buf, client, input, num_btn, keycodes, prev_btn, consi=
der reordering the fields or adding explicit padding members
   struct atmel_captouch_device {
   ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   6 warnings generated.
   drivers/scsi/aic7xxx/aic7xxx_pci.c:716:2: warning: Value stored to 'our_=
id' is never read [clang-analyzer-deadcode.DeadStores]
           our_id =3D 0;
           ^        ~
   drivers/scsi/aic7xxx/aic7xxx_pci.c:716:2: note: Value stored to 'our_id'=
 is never read
           our_id =3D 0;
           ^        ~
   drivers/scsi/aic7xxx/aic7xxx_pci.c:1076:2: warning: Value stored to 'num=
_scbs' is never read [clang-analyzer-deadcode.DeadStores]
           num_scbs =3D 0;
           ^          ~
   drivers/scsi/aic7xxx/aic7xxx_pci.c:1076:2: note: Value stored to 'num_sc=
bs' is never read
           num_scbs =3D 0;
           ^          ~
   drivers/scsi/aic7xxx/aic7xxx_pci.c:1540:29: warning: The left operand of=
 '|' is a garbage value [clang-analyzer-core.UndefinedBinaryOperatorResult]
           SEEPROM_OUTB(sd, sd->sd_MS | sd->sd_CS);
                                      ^
   drivers/scsi/aic7xxx/aic7xxx_pci.c:2026:6: note: Assuming the condition =
is true
           if ((ahc->flags & AHC_HAS_TERM_LOGIC) !=3D 0) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/aic7xxx/aic7xxx_pci.c:2026:2: note: Taking true branch
           if ((ahc->flags & AHC_HAS_TERM_LOGIC) !=3D 0) {
           ^
   drivers/scsi/aic7xxx/aic7xxx_pci.c:2035:3: note: Calling 'ahc_acquire_se=
eprom'
                   ahc_acquire_seeprom(ahc, &sd);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/aic7xxx/aic7xxx_pci.c:1836:6: note: Assuming the condition =
is true
           if ((ahc->features & AHC_SPIOCAP) !=3D 0
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/aic7xxx/aic7xxx_pci.c:1836:6: note: Left side of '&&' is tr=
ue
   drivers/scsi/aic7xxx/aic7xxx_pci.c:1837:6: note: Assuming the condition =
is true
            && (ahc_inb(ahc, SPIOCAP) & SEEPROM) =3D=3D 0)
--
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   drivers/mtd/nand/raw/marvell_nand.c:2775:26: warning: Value stored to 'p=
dev' during its initialization is never read [clang-analyzer-deadcode.DeadS=
tores]
           struct platform_device *pdev =3D container_of(nfc->dev,
                                   ^~~~
   drivers/mtd/nand/raw/marvell_nand.c:2775:26: note: Value stored to 'pdev=
' during its initialization is never read
           struct platform_device *pdev =3D container_of(nfc->dev,
                                   ^~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   sound/soc/codecs/wm8731.c:106:3: warning: Value stored to 'best' is neve=
r read [clang-analyzer-deadcode.DeadStores]
                   best =3D 0;
                   ^      ~
   sound/soc/codecs/wm8731.c:106:3: note: Value stored to 'best' is never r=
ead
                   best =3D 0;
                   ^      ~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
>> sound/soc/sof/intel/cnl.c:50:3: warning: Value stored to 'msg_ext' is ne=
ver read [clang-analyzer-deadcode.DeadStores]
                   msg_ext =3D hipci & CNL_DSP_REG_HIPCIDR_MSG_MASK;
                   ^         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/sof/intel/cnl.c:50:3: note: Value stored to 'msg_ext' is never=
 read
                   msg_ext =3D hipci & CNL_DSP_REG_HIPCIDR_MSG_MASK;
                   ^         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> sound/soc/sof/intel/cnl.c:77:3: warning: Value stored to 'msg' is never =
read [clang-analyzer-deadcode.DeadStores]
                   msg =3D hipctdr & CNL_DSP_REG_HIPCTDR_MSG_MASK;
                   ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/sof/intel/cnl.c:77:3: note: Value stored to 'msg' is never rea=
d
                   msg =3D hipctdr & CNL_DSP_REG_HIPCTDR_MSG_MASK;
                   ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   drivers/mtd/tests/pagetest.c:214:2: warning: Call to function 'strcpy' i=
s insecure as it does not provide bounding of the memory buffer. Replace un=
bounded copy functions with analogous functions that support length argumen=
ts such as 'strlcpy'. CWE-119 [clang-analyzer-security.insecureAPI.strcpy]
           strcpy(writebuf, "There is no data like this!");
           ^~~~~~
   drivers/mtd/tests/pagetest.c:214:2: note: Call to function 'strcpy' is i=
nsecure as it does not provide bounding of the memory buffer. Replace unbou=
nded copy functions with analogous functions that support length arguments =
such as 'strlcpy'. CWE-119
           strcpy(writebuf, "There is no data like this!");
           ^~~~~~
   drivers/mtd/tests/pagetest.c:239:2: warning: Call to function 'strcpy' i=
s insecure as it does not provide bounding of the memory buffer. Replace un=
bounded copy functions with analogous functions that support length argumen=
ts such as 'strlcpy'. CWE-119 [clang-analyzer-security.insecureAPI.strcpy]
           strcpy(writebuf, "There is no data like this!");
           ^~~~~~
   drivers/mtd/tests/pagetest.c:239:2: note: Call to function 'strcpy' is i=
nsecure as it does not provide bounding of the memory buffer. Replace unbou=
nded copy functions with analogous functions that support length arguments =
such as 'strlcpy'. CWE-119
           strcpy(writebuf, "There is no data like this!");
           ^~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   4 warnings generated.
   6 warnings generated.
   8 warnings generated.
   10 warnings generated.
   12 warnings generated.
   14 warnings generated.
   16 warnings generated.
   Suppressed 16 warnings (16 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   4 warnings generated.
   6 warnings generated.
   8 warnings generated.
   10 warnings generated.
   12 warnings generated.
   14 warnings generated.
   16 warnings generated.
   Suppressed 16 warnings (16 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   4 warnings generated.
   6 warnings generated.
   8 warnings generated.
   10 warnings generated.
   12 warnings generated.
   14 warnings generated.
   16 warnings generated.
   Suppressed 16 warnings (16 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
--
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:300:26: note: Value stored to 'pdev' during it=
s initialization is never read
           struct platform_device *pdev =3D spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:402:26: warning: Value stored to 'pdev' during=
 its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev =3D spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:402:26: note: Value stored to 'pdev' during it=
s initialization is never read
           struct platform_device *pdev =3D spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:882:26: warning: Value stored to 'pdev' during=
 its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct platform_device *pdev =3D spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   sound/soc/fsl/fsl_spdif.c:882:26: note: Value stored to 'pdev' during it=
s initialization is never read
           struct platform_device *pdev =3D spdif_priv->pdev;
                                   ^~~~   ~~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   6 warnings generated.
   sound/soc/codecs/wm8994.c:1450:28: warning: Value stored to 'component' =
during its initialization is never read [clang-analyzer-deadcode.DeadStores=
]
           struct snd_soc_component *component =3D snd_soc_dapm_to_componen=
t(w->dapm);
                                     ^~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~
   sound/soc/codecs/wm8994.c:1450:28: note: Value stored to 'component' dur=
ing its initialization is never read
           struct snd_soc_component *component =3D snd_soc_dapm_to_componen=
t(w->dapm);
                                     ^~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~
   sound/soc/codecs/wm8994.c:3345:28: warning: Value stored to 'component' =
during its initialization is never read [clang-analyzer-deadcode.DeadStores=
]
           struct snd_soc_component *component =3D wm8994->hubs.component;
                                     ^~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/codecs/wm8994.c:3345:28: note: Value stored to 'component' dur=
ing its initialization is never read
           struct snd_soc_component *component =3D wm8994->hubs.component;
                                     ^~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/codecs/wm8994.c:3703:17: warning: Value stored to 'dev' during=
 its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct device *dev =3D wm8994->wm8994->dev;
                          ^~~   ~~~~~~~~~~~~~~~~~~~
   sound/soc/codecs/wm8994.c:3703:17: note: Value stored to 'dev' during it=
s initialization is never read
           struct device *dev =3D wm8994->wm8994->dev;
                          ^~~   ~~~~~~~~~~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
>> sound/soc/sof/intel/hda-ipc.c:150:3: warning: Value stored to 'msg_ext' =
is never read [clang-analyzer-deadcode.DeadStores]
                   msg_ext =3D hipcie & HDA_DSP_REG_HIPCIE_MSG_MASK;
                   ^         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/sof/intel/hda-ipc.c:150:3: note: Value stored to 'msg_ext' is =
never read
                   msg_ext =3D hipcie & HDA_DSP_REG_HIPCIE_MSG_MASK;
                   ^         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> sound/soc/sof/intel/hda-ipc.c:187:3: warning: Value stored to 'msg' is n=
ever read [clang-analyzer-deadcode.DeadStores]
                   msg =3D hipct & HDA_DSP_REG_HIPCT_MSG_MASK;
                   ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/sof/intel/hda-ipc.c:187:3: note: Value stored to 'msg' is neve=
r read
                   msg =3D hipct & HDA_DSP_REG_HIPCT_MSG_MASK;
                   ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   drivers/ata/libata-pata-timings.c:78:14: warning: Assigned value is garb=
age or undefined [clang-analyzer-core.uninitialized.Assign]
                   m->setup =3D max(a->setup, b->setup);
                              ^
   include/linux/minmax.h:58:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^
   include/linux/minmax.h:44:3: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op)=
)
                   ^
   include/linux/minmax.h:37:3: note: expanded from macro '__cmp_once'
                   typeof(x) unique_x =3D (x);               \
                   ^
   drivers/ata/libata-pata-timings.c:126:7: note: 's' is non-null
           if (!s)
                ^
   drivers/ata/libata-pata-timings.c:126:2: note: Taking false branch
           if (!s)
           ^
   drivers/ata/libata-pata-timings.c:136:6: note: Assuming the condition is=
 false
           if (id[ATA_ID_FIELD_VALID] & 2) {       /* EIDE drive */
               ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/ata/libata-pata-timings.c:136:2: note: Taking false branch
           if (id[ATA_ID_FIELD_VALID] & 2) {       /* EIDE drive */
           ^
   drivers/ata/libata-pata-timings.c:163:6: note: Assuming 'speed' is > XFE=
R_PIO_6
           if (speed > XFER_PIO_6) {
               ^~~~~~~~~~~~~~~~~~
   drivers/ata/libata-pata-timings.c:163:2: note: Taking true branch
           if (speed > XFER_PIO_6) {
           ^
   drivers/ata/libata-pata-timings.c:164:3: note: Calling 'ata_timing_compu=
te'
                   ata_timing_compute(adev, adev->pio_mode, &p, T, UT);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/ata/libata-pata-timings.c:126:6: note: Assuming 's' is null
           if (!s)
               ^~
   drivers/ata/libata-pata-timings.c:126:2: note: Taking true branch
           if (!s)
           ^
   drivers/ata/libata-pata-timings.c:127:3: note: Returning without writing=
 to 't->setup'
                   return -EINVAL;
                   ^
   drivers/ata/libata-pata-timings.c:164:3: note: Returning from 'ata_timin=
g_compute'
                   ata_timing_compute(adev, adev->pio_mode, &p, T, UT);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/ata/libata-pata-timings.c:165:3: note: Calling 'ata_timing_merge=
'
                   ata_timing_merge(&p, t, t, ATA_TIMING_ALL);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/ata/libata-pata-timings.c:77:2: note: Taking true branch
           if (what & ATA_TIMING_SETUP)
           ^
   drivers/ata/libata-pata-timings.c:78:14: note: Assigned value is garbage=
 or undefined
                   m->setup =3D max(a->setup, b->setup);
                              ^
   include/linux/minmax.h:58:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:44:3: note: expanded from macro '__careful_cmp'
                   __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), op)=
)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:37:3: note: expanded from macro '__cmp_once'
                   typeof(x) unique_x =3D (x);               \
                   ^                    ~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   6 warnings generated.
   Suppressed 6 warnings (4 in non-user code, 2 with check filters).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   drivers/target/target_core_rd.c:95:2: warning: Value stored to 'page_cou=
nt' is never read [clang-analyzer-deadcode.DeadStores]
           page_count =3D rd_release_sgl_table(rd_dev, rd_dev->sg_table_arr=
ay,
           ^            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
   drivers/target/target_core_rd.c:95:2: note: Value stored to 'page_count'=
 is never read
           page_count =3D rd_release_sgl_table(rd_dev, rd_dev->sg_table_arr=
ay,
           ^            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
   drivers/target/target_core_rd.c:221:2: warning: Value stored to 'page_co=
unt' is never read [clang-analyzer-deadcode.DeadStores]
           page_count =3D rd_release_sgl_table(rd_dev, rd_dev->sg_prot_arra=
y,
           ^            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/target/target_core_rd.c:221:2: note: Value stored to 'page_count=
' is never read
           page_count =3D rd_release_sgl_table(rd_dev, rd_dev->sg_prot_arra=
y,
           ^            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=3D.* to display errors from all non-system headers. U=
se -system-headers to display errors from system headers as well.
   4 warnings generated.
   fs/gfs2/ops_fstype.c:842:2: warning: Value stored to 'jindex' is never r=
ead [clang-analyzer-deadcode.DeadStores]
           jindex =3D 0;

vim +/sdev +265 sound/soc/sof/intel/hda-dai.c

fdd961e37e47f2 Keyon Jie         2019-04-12  259 =20
fdd961e37e47f2 Keyon Jie         2019-04-12  260  static int hda_link_pcm_p=
repare(struct snd_pcm_substream *substream,
fdd961e37e47f2 Keyon Jie         2019-04-12  261  				struct snd_soc_dai *d=
ai)
fdd961e37e47f2 Keyon Jie         2019-04-12  262  {
ed3baacd76baa0 Ranjani Sridharan 2019-04-30  263  	struct hdac_ext_stream *=
link_dev =3D
ed3baacd76baa0 Ranjani Sridharan 2019-04-30  264  				snd_soc_dai_get_dma_d=
ata(dai, substream);
fdd961e37e47f2 Keyon Jie         2019-04-12 @265  	struct snd_sof_dev *sdev=
 =3D
fdd961e37e47f2 Keyon Jie         2019-04-12  266  				snd_soc_component_get=
_drvdata(dai->component);
1205300af9dba3 Kuninori Morimoto 2020-07-20  267  	struct snd_soc_pcm_runti=
me *rtd =3D asoc_substream_to_rtd(substream);
fdd961e37e47f2 Keyon Jie         2019-04-12  268  	int stream =3D substream=
->stream;
fdd961e37e47f2 Keyon Jie         2019-04-12  269 =20
a3ebccb52efdfb Kai Vehmanen      2019-07-22  270  	if (link_dev->link_prepa=
red)
fdd961e37e47f2 Keyon Jie         2019-04-12  271  		return 0;
fdd961e37e47f2 Keyon Jie         2019-04-12  272 =20
ed3baacd76baa0 Ranjani Sridharan 2019-04-30  273  	dev_dbg(sdev->dev, "hda:=
 prepare stream dir %d\n", substream->stream);
fdd961e37e47f2 Keyon Jie         2019-04-12  274 =20
fdd961e37e47f2 Keyon Jie         2019-04-12  275  	return hda_link_hw_param=
s(substream, &rtd->dpcm[stream].hw_params,
fdd961e37e47f2 Keyon Jie         2019-04-12  276  				  dai);
fdd961e37e47f2 Keyon Jie         2019-04-12  277  }
fdd961e37e47f2 Keyon Jie         2019-04-12  278 =20

:::::: The code at line 265 was first introduced by commit
:::::: fdd961e37e47f2d450638f3a653cdb96911969ea ASoC: SOF: Intel: add SKL+ =
platform DAIs

:::::: TO: Keyon Jie <yang.jie@linux.intel.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108241301.UdSncTEq-lkp%40intel.com.

--17pEHd4RhPHOinZp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
6r9xQgqFrAICAA==

--17pEHd4RhPHOinZp--
