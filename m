Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFVQRP5AKGQEPQSV35Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9417C24EFBF
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 22:56:55 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id d2sf4762270iok.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 13:56:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598216214; cv=pass;
        d=google.com; s=arc-20160816;
        b=hP8u//8JQ9Wt4hAuI1gXo589+dKPE6mfmUzIK46C7QGiEDw2vGuwR2l0Y5tguDby1w
         Aa0BW1QqQjRwPCZU0Ho7pNTBtXldPhLmWARpLoVCdstb+sBxl5L4rxwGFspzV+VA/mYz
         5fvuyiTZVoIvZ7jipI2nXyiJYRYahsIlV+f7r6GJQqgXPlGJnBDN+etH7uPJp7bk0SC7
         bCJus18TI/8EgWanUfbBg6ZDXErk6pOr6c8mVBZ1I7ZsaaUcjbB5IE0vY07PTdmI+0k0
         FzpmqRG0DB8dum1HGpNvs68DGt+9z+gsfrCVKLcR2QslS6h9mvvXyY0N2HF1MS/PqkXO
         4YgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=4cBjmQ4RD6HgrM/rH0yqHfMQ+HwePBMXj43SWwilO0E=;
        b=uU8wtW6jcVoJEOAkDlz4Vo2EcuiQvNrmEwz6p9l5ou+dAP3dVs/nMsup7/LpDj9C/8
         2++QmRe6zH8cVHybcDZcNDmVDG1g5Kyq8LyyIqH8vUlfF/RZwjKE3jhtj65co89QdQfp
         PtsbrsK9Ak6u2d6V5up2WZYjA/GLU9QCMIagMAL5p2TFsJDA/0oxqJ+9tjMvtQB2b8La
         7I4zJKBKfjalOCBF1hD96nFspDcs4YKjda8oX/m9sQC8H2d8b2/DLbGXPEUNY2dT3x0F
         4YwZi+H5ixAN33RlsG07f5WSozcj+9zIaEFiT5o+Pb4JZNmgiLzVqnM1ntsM+qhBM8Wt
         HDpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4cBjmQ4RD6HgrM/rH0yqHfMQ+HwePBMXj43SWwilO0E=;
        b=jJm/6bKwrxFLCw+pXGwWcMH2FeaPRHze8ugBPPriaOowjI23fqcB1VljWyHb8k62av
         mRNvYZf3cgk3K6Da+mA3Qy5Jn3gkkv/gnpT+0aGIMjTthJljYUs4ga6rkI43fJOF56OY
         nP+WAC7a1hAdoI6eXqP40q/+c1UwdyR6PRKYNBXmEqMGzI0/yWWcHl9cv3KlUWNkXz6Y
         f2sLd4hecexXPEDdInC1mXRrAACAqRbKpRLjGTx/Y8Lb1vMsxIvKF1dH2oP/eCi/wi/+
         ZqyDkzsGa/fur0HUcEJQWkY0RzBWcA4zeQe4gPkJ37Tow9+5kueekgklLAoQNSW5pOjn
         RpwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4cBjmQ4RD6HgrM/rH0yqHfMQ+HwePBMXj43SWwilO0E=;
        b=RqjRTam5tkdUqlkQJqddYuRFD4W9cdo10COC+V4dPd8YDvEd4GgRub6WBHNgJjl90A
         Td0fVT90xRjsuxmS5VZEKeBWwCyu9ILd922ljGNSm9v/US3xrowhkBsq2pQkIWm/ulm6
         iJM2OIVCd13NrFOCcTZZehyBJtNjKKppQ3jPBszfgWnQT85Y0MSn7JhogvqqV4Rg+wHR
         +tfgPQyOp9QFW784rdzElA133HF6LPtmgPqm1sfesTSRNsPIBMrCE0lY/uIppVevjQJZ
         +ytTdJhaFxTNIosJrcSmy6Y2DVXnhCiaL0Inl1AzKjnBt+YUs2x04n+jAXYzVnVHcXeB
         GspA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531P6UbsMtW0by2v9tnTs7JZFcwlCnTGciLq1HNhXYQKgCGGxLDj
	DS/QcO14M30wAE670xxbDlQ=
X-Google-Smtp-Source: ABdhPJxs/88PW66sKIvP7n7nrOt4a9JonEFVZKRB4GqdtH0RGKi9lWOYX5O0aQ9sgZ5U9iRRAzsvCw==
X-Received: by 2002:a92:c502:: with SMTP id r2mr2333516ilg.223.1598216214139;
        Sun, 23 Aug 2020 13:56:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a305:: with SMTP id a5ls792422ili.5.gmail; Sun, 23 Aug
 2020 13:56:53 -0700 (PDT)
X-Received: by 2002:a92:c849:: with SMTP id b9mr2388736ilq.168.1598216213683;
        Sun, 23 Aug 2020 13:56:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598216213; cv=none;
        d=google.com; s=arc-20160816;
        b=qsNRCmlzQ6fZWTnXllGuex7xZgxG5d37iGJnAoyfRfn7kK6IuMJFQfdIiY3N0MREdR
         R069fopQ76XTUeGZnZcFCit6ZDwkm5z2g9dViWdUwgrIf8uHBRC6q2uDzP4prDK3z51R
         rZa8iV6t2UNhPW7zwEIpRFzgmRTn1pJQ9YY3lxSubmeO4NJiDPVUOhY9Mc/iXFrQW7kl
         RJxTkhqR4Jg3uQKXQufpYxeH1mn4I47SUEoHxlMkA1gACONWJILWN6c8W7FoHLfmmKfz
         7JBMynWoTgod0IH1g1A4gZX1oBsflnvUlIsGfkcE8GvjHZwLC01TGIUah75QLxk9Fvw4
         ILTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=gbczRfkZ4R5XixzVunw9kRTQLTg3FcfLFZ9jiQBbJVI=;
        b=IhOVW3f/Sm3F5Er4Xrd+OjRoxeS3t02v6rWxBrlyHtUmqiZ26lmKI7PA9j5+XhoUpy
         VdzYtrdFSBb46XKhe2GrfEfUEf6f08Ok+zTKDLUzBNGnEiWXEsc7PkEVl41Tclkc+jG0
         sdvP0DL5A967O8fpan90Cvh2q/aghoJ7VLJloDfrgLpmQ0yijrQOpBJqvowJgf+Q/qEO
         QBFIqxLd4rbbNV6Sb2UsgY0/XjE65MhBG8yN1Qw/I4Q3eqnpuhcG+p+C1jC6MsRM1l8I
         VKvafS/VcdQKCv0lwJvS9Nme43wQmeeMll5a4kkVN3jJTAaSVs3gYcPVek2d/0qvlm2T
         qlSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id h11si437407ilh.1.2020.08.23.13.56.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 Aug 2020 13:56:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: Uz3nZ3lYXe+i4CxOqFuqgmK9GW6r4xABVXhFWqO8imA+1ZSZRMJhtlUCqtqM2vQecIQqLmJ23T
 /xjcyunFVcPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="240632380"
X-IronPort-AV: E=Sophos;i="5.76,346,1592895600"; 
   d="gz'50?scan'50,208,50";a="240632380"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2020 13:56:52 -0700
IronPort-SDR: b0SE6VEmZu6057OdsaNVE4ZX/hVVWv4dyddm+twmMcTYixB+jfUjT9CmkBWxlB5XM4/NECBgsS
 +Kv00rADToqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,346,1592895600"; 
   d="gz'50?scan'50,208,50";a="279418943"
Received: from lkp-server01.sh.intel.com (HELO 91ed66e1ca04) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 23 Aug 2020 13:56:48 -0700
Received: from kbuild by 91ed66e1ca04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k9x2m-0002GK-14; Sun, 23 Aug 2020 20:56:48 +0000
Date: Mon, 24 Aug 2020 04:56:39 +0800
From: kernel test robot <lkp@intel.com>
To: Xianting Tian <tian.xianting@h3c.com>, axboe@kernel.dk, ast@kernel.org,
	daniel@iogearbox.net, kafai@fb.com, songliubraving@fb.com,
	yhs@fb.com, andriin@fb.com, john.fastabend@gmail.com,
	kpsingh@chromium.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-block@vger.kernel.org
Subject: Re: [PATCH] blk-mq: use BLK_MQ_NO_TAG for no tag
Message-ID: <202008240443.lkIOhAOX%lkp@intel.com>
References: <20200823154459.40731-1-tian.xianting@h3c.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
In-Reply-To: <20200823154459.40731-1-tian.xianting@h3c.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Xianting,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on block/for-next]
[also build test ERROR on linux/master linus/master v5.9-rc1 next-20200821]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Xianting-Tian/blk-mq-use-BLK_MQ_NO_TAG-for-no-tag/20200824-012255
base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
config: arm64-randconfig-r034-20200824 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca93be114d07ec3bf654add97d7872325281)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from drivers/mtd/ubi/block.c:40:
>> include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   1 error generated.
--
   In file included from drivers/ata/ahci_platform.c:17:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
>> include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   drivers/ata/ahci_platform.c:40:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:385:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_platform.c:40:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:384:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1417:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1399:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_platform.c:40:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:389:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_platform.c:40:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:384:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   2 warnings and 1 error generated.
--
   In file included from drivers/ata/libahci_platform.c:19:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
>> include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
>> drivers/ata/libahci_platform.c:644:42: warning: shift count >= width of type [-Wshift-count-overflow]
                   rc = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
                                                          ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 1 error generated.
--
   In file included from drivers/ata/ahci_tegra.c:23:
   In file included from drivers/ata/ahci.h:24:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
>> include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   drivers/ata/ahci_tegra.c:477:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:385:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_tegra.c:477:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:384:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1417:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1399:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_tegra.c:477:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:389:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_tegra.c:477:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:384:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   2 warnings and 1 error generated.
--
   In file included from drivers/ata/ahci_qoriq.c:18:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
>> include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   drivers/ata/ahci_qoriq.c:160:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:385:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_qoriq.c:160:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:384:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1417:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1399:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_qoriq.c:160:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:389:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_qoriq.c:160:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:384:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci_qoriq.c:277:21: warning: cast to smaller integer type 'enum ahci_qoriq_type' from 'const void *' [-Wvoid-pointer-to-enum-cast]
           qoriq_priv->type = (enum ahci_qoriq_type)of_id->data;
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   3 warnings and 1 error generated.
--
   In file included from drivers/scsi/scsi_sysfs.c:19:
   In file included from include/scsi/scsi_host.h:11:
>> include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   drivers/scsi/scsi_sysfs.c:373:1: warning: format specifies type 'short' but the argument has type 'int' [-Wformat]
   shost_rd_attr(can_queue, "%hd\n");
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             %d
   drivers/scsi/scsi_sysfs.c:176:45: note: expanded from macro 'shost_rd_attr'
   #define shost_rd_attr(field, format_string) \
                                               ^
   drivers/scsi/scsi_sysfs.c:173:2: note: expanded from macro '\
   shost_rd_attr2'
           shost_show_function(name, field, format_string)                 \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/scsi_sysfs.c:165:43: note: expanded from macro 'shost_show_function'
           return snprintf (buf, 20, format_string, shost->field);         \
                                     ~~~~~~~~~~~~~  ^~~~~~~~~~~~
   1 warning and 1 error generated.
--
   In file included from drivers/scsi/scsi_sysfs.c:19:
   In file included from include/scsi/scsi_host.h:11:
>> include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   drivers/scsi/scsi_sysfs.c:373:1: warning: format specifies type 'short' but the argument has type 'int' [-Wformat]
   shost_rd_attr(can_queue, "%hd\n");
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                             %d
   drivers/scsi/scsi_sysfs.c:176:45: note: expanded from macro 'shost_rd_attr'
   #define shost_rd_attr(field, format_string) \
                                               ^
   drivers/scsi/scsi_sysfs.c:173:2: note: expanded from macro '\
   shost_rd_attr2'
           shost_show_function(name, field, format_string)                 \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/scsi/scsi_sysfs.c:165:43: note: expanded from macro 'shost_show_function'
           return snprintf (buf, 20, format_string, shost->field);         \
                                     ~~~~~~~~~~~~~  ^~~~~~~~~~~~
   drivers/scsi/scsi_sysfs.c:1027:10: fatal error: 'scsi_devinfo_tbl.c' file not found
   #include "scsi_devinfo_tbl.c"
            ^~~~~~~~~~~~~~~~~~~~
   1 warning and 2 errors generated.
--
   In file included from drivers/nvme/host/core.c:8:
>> include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   In file included from drivers/nvme/host/core.c:29:
   In file included from drivers/nvme/host/trace.h:175:
   include/trace/define_trace.h:95:10: fatal error: './trace.h' file not found
   #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:90:32: note: expanded from macro 'TRACE_INCLUDE'
   # define TRACE_INCLUDE(system) __TRACE_INCLUDE(system)
                                  ^~~~~~~~~~~~~~~~~~~~~~~
   include/trace/define_trace.h:87:34: note: expanded from macro '__TRACE_INCLUDE'
   # define __TRACE_INCLUDE(system) __stringify(TRACE_INCLUDE_PATH/system.h)
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/stringify.h:10:27: note: expanded from macro '__stringify'
   #define __stringify(x...)       __stringify_1(x)
                                   ^~~~~~~~~~~~~~~~
   include/linux/stringify.h:9:29: note: expanded from macro '__stringify_1'
   #define __stringify_1(x...)     #x
                                   ^~
   <scratch space>:31:1: note: expanded from here
   "./trace.h"
   ^~~~~~~~~~~
   2 errors generated.

# https://github.com/0day-ci/linux/commit/3f57d0952e89e23c6c5b65b816d3f0a9c9747583
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Xianting-Tian/blk-mq-use-BLK_MQ_NO_TAG-for-no-tag/20200824-012255
git checkout 3f57d0952e89e23c6c5b65b816d3f0a9c9747583
vim +/BLK_MQ_NO_TAG +572 include/linux/blk-mq.h

   560	
   561	#define queue_for_each_hw_ctx(q, hctx, i)				\
   562		for ((i) = 0; (i) < (q)->nr_hw_queues &&			\
   563		     ({ hctx = (q)->queue_hw_ctx[i]; 1; }); (i)++)
   564	
   565	#define hctx_for_each_ctx(hctx, ctx, i)					\
   566		for ((i) = 0; (i) < (hctx)->nr_ctx &&				\
   567		     ({ ctx = (hctx)->ctxs[(i)]; 1; }); (i)++)
   568	
   569	static inline blk_qc_t request_to_qc_t(struct blk_mq_hw_ctx *hctx,
   570			struct request *rq)
   571	{
 > 572		if (rq->tag != BLK_MQ_NO_TAG)
   573			return rq->tag | (hctx->queue_num << BLK_QC_T_SHIFT);
   574	
   575		return rq->internal_tag | (hctx->queue_num << BLK_QC_T_SHIFT) |
   576				BLK_QC_T_INTERNAL;
   577	}
   578	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008240443.lkIOhAOX%25lkp%40intel.com.

--rwEMma7ioTxnRzrJ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--rwEMma7ioTxnRzrJ--
