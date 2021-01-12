Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5FS7D7QKGQEWUFV4HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 130152F3BE8
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 22:49:43 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id w13sf104199pgr.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 13:49:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610488181; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gxtevr1CRkRliiOpUJ8N9T6v2lMeKFW8CI2+nvUXcqQH+p2fP6AHzC791usmhdrjHI
         Lj140V2OnMCSRn2VrTBxZ6eRCVcamcBHnO/4i6SUITkY3LJ8SFpbvLHxPZhlKSYi2mhu
         28Y9Fm5id3lZ4UYDtGubtN2TUxDemM/2ZSjNjOXP4QMbx0Af2lQN3//UeY412ZFptlvh
         lNdLnghbn4gn/D4hLAkJBx8ZOrhs4mebX6+ci6u6U+qtbInuDYFEYWL2f6ND2/gddqU9
         VYefm2ya64In6zbkd2bxXcVmGu1BwXDLoTSYol6q3774ISyYCVnqI32+rikqUPACymY0
         Uqng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=iv1mi33wJ4/xOaMDh/i4EUby1ynz0w2B7eiySfX1IiU=;
        b=gfWsdYZMh1DfIa1pDS2YJ7iL93xAlHTqgTvb53AkkiUY6YyKo6GgLqfIY2geqtbtDK
         7+YMGFn+o+Roh/0NvWvnIFVQgtaL3Xpq9C5dH+sLtBU2HQRqvehWi2PxD4oqxSYzJi7m
         s++rrh5IaTX3TPfYcIkH6uUW6ARUuriiAvpHdv9ZrTfbDUOnhPwGsHfvI5w1hikrMRqo
         3G19czHsSmoHGaIF6jij5iJxsNqutqtOKs01YdhKVUOnZ9u2sPZ2TyIqTlAUKrc9kiJh
         /hKNbOwtySOBLCEjBXjxlQDpz2t+vwTYts/qnojx11Rt4uSsQrsqo28GeiP/VTJcJJNi
         3JhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iv1mi33wJ4/xOaMDh/i4EUby1ynz0w2B7eiySfX1IiU=;
        b=laIvbJpqZ9pjQF7Id7X2CIBkmZ7fK5kosgssj9580ZFeRerecyPQEH+6V0cJNeAGqQ
         X49EIXNpu2OUUIq/K57Tqs8L0NEx+9CcHvxg1crueeYUParcsKT4M9uZqx2+i6StKkQm
         gGZRSz8YzAhrY0c87w37KUPkCpBt2wgPEBmIS4h8J4Wz09d9Bc+PH5Dh1IvS/5ryru7S
         qpRKGWP66VlczXYHheCpni3xe3t5InBpvYIThJLNY31Z70ZCA9QrPnV204g7PTuyHyIW
         bAOxA0L8Lm0UIoCWr7uGAdHEN168yrj6oRJEBwd3lChs7kxwmvbuYUMjxShIfA9UjnPs
         XiyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iv1mi33wJ4/xOaMDh/i4EUby1ynz0w2B7eiySfX1IiU=;
        b=S2/YvJ9LR7b0pp3F+z4QRNC2YsgNuu/ZzoWXdkz6EQXeWeCHaqsOzZAIUqFRZmNXn5
         6PohrapuVHv7s2aPpJU1SRb81xDbMlEZVcEyZuRs7DK7csTS4/OU9CnacKJ8nnMSQoUq
         yrw86IZJdofAmPX5pREaX13PZtpSc4ndwVidqoMdeQ6oymiu97prykQxOCx4mdLESbER
         w6uckzftVBfYpRwilV+E4JlfKGCL5mO8efu31byzpp6pCFtEIIGB5KLDcmLU5MNlH4BO
         8la/Jxn4eySbSjzIkbKtcMJiKT67tW2KAXkZcCG6d0leziX0MlTjjzWltg9eqdbp81j4
         RE0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BARUJk1nNADtxaKnLQpQUTozDCT4rKqeDyJmAqFNPN+KtADjE
	ywYfLV9qI/kR/QvF2zzjzEA=
X-Google-Smtp-Source: ABdhPJwM5odHMX5Q3PSJby6kb3nI+JvaAKNhYkmLSROIU7dC+ujhzx0JBVf5yr+goJB4Xkc3YpVfGg==
X-Received: by 2002:a17:90a:be17:: with SMTP id a23mr1205585pjs.236.1610488181084;
        Tue, 12 Jan 2021 13:49:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d713:: with SMTP id w19ls2113947ply.1.gmail; Tue, 12
 Jan 2021 13:49:39 -0800 (PST)
X-Received: by 2002:a17:90a:4042:: with SMTP id k2mr1242934pjg.160.1610488178763;
        Tue, 12 Jan 2021 13:49:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610488178; cv=none;
        d=google.com; s=arc-20160816;
        b=kZFa3nkDEcxYkLh2ti0qQffD9OJX6F5VDX+OVSCBzwgcL6VmP3FyMUwcoIVYSqz/lD
         t5vFHcaBNlCR6qq2qDTx35snM3sr+G98Ezn6wt/rLyc/qP2MXcpi5lwPkqzQ8SAudPf2
         cc8BX/nj5UVGae9Rem3koQSiXMXfE3iSmyYy23qxiW4n3GvQlqStk/1UcT5/VHCIODAC
         mnVZ8r4DIBRxXlRzSP2ixOrH78irwcLxK1kqYR6IpdDzAhWB8bihacLdnDwQYAkbsSo6
         SNk9Erdrt3l2w/cXVQRLTB5SGCw8hPvRaj8r3l3rqK2px6cxR2cM8YyBL+uwrDfrJgwR
         EIkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=XylvRdEmsK3oc67g7kj7DIIF5uA2npBiHtKeiDFTnaE=;
        b=tHwuvhSD6MmgXoIgU5J8fL0e1obJ8MuC1mtsDioPfrPqBoB7+7dWCmYSBtwIkFGVxt
         TOcsa9ASreR5n1AcxAJt1508B0EnjTIgESTw/D3x7ldLxxdqI6qZhYs98inzUuPDG2C/
         AdiPjWIQZdvXdplfNesz9XvPYLmW7+nVy3X73gWp3HwcaKFCiNi0JKgNQ/tV5kGrtaAe
         TPdklKIKOUCuUU2IRXWE5nEyftypT/rxNifrHuilKHKv6+kegHAICMFevnVVV4Ya3Fcf
         swStgayqyliq8HSNoRNCDWOE1ByzUX4SwtcGc1ypqP12PV3rpsSGVKPrZJJ8RSf60sZb
         5SNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id j11si354562pgm.4.2021.01.12.13.49.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 13:49:38 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: mc4lCcS1mX2gyp65a9ompiyDXFRAscr75pnnfEWQaXlQW5jPeXqe2AhiwuBlwDdvHGrtwshlLn
 qBXkujViZrpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="239653910"
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; 
   d="gz'50?scan'50,208,50";a="239653910"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2021 13:49:36 -0800
IronPort-SDR: CbP02U31x+QyR9YhKLAPQWsxBdmbPUFEVqfZHXgJNzFIbB+1CNK6X4VCOAw9UPWDLSLrMemOQ3
 +EUougpGFDsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; 
   d="gz'50?scan'50,208,50";a="363659752"
Received: from lkp-server01.sh.intel.com (HELO 97fec0dd9360) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 12 Jan 2021 13:49:33 -0800
Received: from kbuild by 97fec0dd9360 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kzRXh-00000J-4u; Tue, 12 Jan 2021 21:49:33 +0000
Date: Wed, 13 Jan 2021 05:49:31 +0800
From: kernel test robot <lkp@intel.com>
To: Li Feng <fengli@smartx.com>, Jens Axboe <axboe@kernel.dk>,
	linux-block@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	lifeng1519@gmail.com, Li Feng <fengli@smartx.com>
Subject: Re: [PATCH] blk: avoid divide-by-zero with zero granularity
Message-ID: <202101130537.tNx9aHkp-lkp@intel.com>
References: <20210112152951.154024-1-fengli@smartx.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
In-Reply-To: <20210112152951.154024-1-fengli@smartx.com>
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


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Li,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on block/for-next]
[also build test WARNING on v5.11-rc3 next-20210112]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Li-Feng/blk-avoid-divide-by-zero-with-zero-granularity/20210112-233454
base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
config: arm-randconfig-r012-20210112 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32bcfcda4e28375e5a85268d2acfabcfcc011abf)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/796e67f6b22f94f155669688e5e08281621b3ee6
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Li-Feng/blk-avoid-divide-by-zero-with-zero-granularity/20210112-233454
        git checkout 796e67f6b22f94f155669688e5e08281621b3ee6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/ata/ahci_ceva.c:11:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
   In file included from include/linux/blk-mq.h:5:
>> include/linux/blkdev.h:1492:15: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           unsigned int alignment = sector_div(sector, granularity >> SECTOR_SHIFT)
                        ^
   drivers/ata/ahci_ceva.c:187:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:387:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_ceva.c:187:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1400:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_ceva.c:187:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:391:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_ceva.c:187:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1419:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   3 warnings generated.
--
   In file included from drivers/ata/ahci_sunxi.c:19:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
>> include/linux/blkdev.h:1492:15: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           unsigned int alignment = sector_div(sector, granularity >> SECTOR_SHIFT)
                        ^
   drivers/ata/ahci_sunxi.c:210:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:387:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_sunxi.c:210:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1400:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_sunxi.c:210:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:391:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_sunxi.c:210:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1419:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   3 warnings generated.
--
   In file included from drivers/ata/ahci_st.c:16:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
   In file included from include/linux/blk-mq.h:5:
>> include/linux/blkdev.h:1492:15: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           unsigned int alignment = sector_div(sector, granularity >> SECTOR_SHIFT)
                        ^
   drivers/ata/ahci_st.c:142:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:387:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_st.c:142:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1400:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_st.c:142:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:391:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_st.c:142:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1419:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   3 warnings generated.
--
   In file included from drivers/ata/pata_platform.c:16:
>> include/linux/blkdev.h:1492:15: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           unsigned int alignment = sector_div(sector, granularity >> SECTOR_SHIFT)
                        ^
   1 warning generated.
--
   In file included from drivers/ata/ahci_imx.c:18:
   In file included from include/linux/libata.h:21:
   In file included from include/scsi/scsi_host.h:11:
   In file included from include/linux/blk-mq.h:5:
>> include/linux/blkdev.h:1492:15: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           unsigned int alignment = sector_div(sector, granularity >> SECTOR_SHIFT)
                        ^
   drivers/ata/ahci_imx.c:978:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:387:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_imx.c:978:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1400:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_imx.c:978:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:391:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_imx.c:978:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1419:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   3 warnings generated.
--
   In file included from drivers/ata/ahci_tegra.c:17:
   In file included from include/linux/regulator/consumer.h:35:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
>> include/linux/blkdev.h:1492:15: warning: ISO C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
           unsigned int alignment = sector_div(sector, granularity >> SECTOR_SHIFT)
                        ^
   drivers/ata/ahci_tegra.c:477:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:387:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_tegra.c:477:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1400:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/ahci_tegra.c:477:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:391:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/ahci_tegra.c:477:2: note: previous initialization is here
           AHCI_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1419:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
   3 warnings generated.


vim +1492 include/linux/blkdev.h

c72758f33784e5e2 Martin K. Petersen 2009-05-22  1484  
e03a72e13648ac62 Martin K. Petersen 2010-01-11  1485  static inline int queue_limit_alignment_offset(struct queue_limits *lim, sector_t sector)
81744ee44ab2845c Martin K. Petersen 2009-12-29  1486  {
81744ee44ab2845c Martin K. Petersen 2009-12-29  1487  	unsigned int granularity = max(lim->physical_block_size, lim->io_min);
796e67f6b22f94f1 Li Feng            2021-01-12  1488  	granularity = granularity >> SECTOR_SHIFT;
796e67f6b22f94f1 Li Feng            2021-01-12  1489  	if (!granularity)
796e67f6b22f94f1 Li Feng            2021-01-12  1490  		return 0;
796e67f6b22f94f1 Li Feng            2021-01-12  1491  
233bde21aa43516b Bart Van Assche    2018-03-14 @1492  	unsigned int alignment = sector_div(sector, granularity >> SECTOR_SHIFT)
233bde21aa43516b Bart Van Assche    2018-03-14  1493  		<< SECTOR_SHIFT;
81744ee44ab2845c Martin K. Petersen 2009-12-29  1494  
b8839b8c55f3fdd6 Mike Snitzer       2014-10-08  1495  	return (granularity + lim->alignment_offset - alignment) % granularity;
c72758f33784e5e2 Martin K. Petersen 2009-05-22  1496  }
c72758f33784e5e2 Martin K. Petersen 2009-05-22  1497  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101130537.tNx9aHkp-lkp%40intel.com.

--1yeeQ81UyVL57Vl7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Zf7t5N4tEHjcGxOM/wfjVfwfA00CAA==

--1yeeQ81UyVL57Vl7--
