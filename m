Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB663Q76QKGQED527I7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 689D72A5ACE
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 00:55:41 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id h7sf8545606otn.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 15:55:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604447740; cv=pass;
        d=google.com; s=arc-20160816;
        b=afYSubazay7lncfYKzimib6ijA9n9+ShpJD7OJWMsaprLsGWGkd2cDEvpDsG6ye6UX
         NbUfTxF6xgTVULCeWa1GCKXSz2mihWphzO6I8Fl5+uCshfs1RDUdxyZeiQXplP/fLMmM
         J20AuExRvl+L7OnoQxmuG14r0TWI3NGCQLpe48TX/4vzEP+BhtlTtpN03gKp5Ud+ZpvK
         3iYe4SbxiViqqZ7n+TTWhZrYQbhwGndulCLesCTB8X4yXgMKsC2+///MReJJ9ZCsihFA
         te3AiFZ+uWvyAu3DQoftcStPe+92PCc4sZtcPmeqftu1N6Z6PI2ud88CxhngxPfHJc/B
         R2BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=rxqEyfiv+Abmt4KTp9a1H6JrCoALVjex8jTtSdgDDnk=;
        b=CwJFFyVDCbkmuW7x/lhYZAaLqaERw2sitDoE3tiRLn70fM0WCBerhgF2xw47qigDkx
         wR7gxOxFZ8yGgtNtTsToEyw2juG40+3G8+Y7FkIzlaIn+XfY7gYh4fmK2C8sYBNzib4r
         uelyS2Yv1ZYnI0Pd2my1o0l816gyFi8B03kpblHjU8UC8Vke+IljDMgYcjHlswk7jj+e
         bMebmUnTJkLOCPE/4MLMJmM8bJoSWZrubUrBIdpN1M53seB7VQesbcvHJxm9DVsAT3VU
         +Onvc9AALOQQRERbBCAQW4e8nV+NV0MNOCzc+QAUxqJYc/wJpHipIktNlCmyFqBwJoJm
         1xhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rxqEyfiv+Abmt4KTp9a1H6JrCoALVjex8jTtSdgDDnk=;
        b=QLgPlkquf6ogepQX2APxj+xnuPO2OlCR3t1dqRGc3sBkjubhcW8LDNN9ZloRwyHRjf
         0xFYOqXVkG5vxA226Shu+EUcum1lvwGZpwuaERWNMQazZzeMEAcY1+gZUqJqyy28eb+s
         nZakRLfTEfUEqPD30OFwV/8VgWoKTcg9aBt9RTY0OTlmwanGAHvO5/DM2A0kubgTv6Yt
         n2A9qRL6J7M+1QmpEO7NEbwygEFMHyfhlfQk07NOpg9HLmwGn5sITLIabqvzjq/i6Ybl
         AzMlOLnSb4X2znrp/6Z4Lj4ley0bqpxSXf6bk04fnhXE+wUiDHJNr4S6pBeoD5UDbglg
         yV8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rxqEyfiv+Abmt4KTp9a1H6JrCoALVjex8jTtSdgDDnk=;
        b=Bl3kNn9f2YMkXvpDFwt5HqPVzJuEfYvsn380NfYca+qTlVsKEO3rNz0ScZEeftl3EN
         FRhI8QEQVrsVQya9KfIUTr1Ls0WyGX//sbS5BuRlNFAvjsG/oX2wWjoe2/jWEb/bXGtP
         H+7rbW0LZqvLNehMRYcs3myQBFKSkL5Af7ofh0WbEXs4Li1HXFU2sXKoskgKKAFTeOUQ
         Vn99Hbk3LP9O0WyhGmTlj1Wu/9KhqruDKhW6Lk3/eeF2B41hKNBbtSYBgy+cYaJAKdT1
         5+SzNWUFbHDbsmhiIsJofCMGnxlGJxErSXMF70ybhTLn1UOECMugfk4DpAvv4L3bBU3C
         G9kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IHQ3nZScjGY3U1spHCL3INu/KaOLzz+nOZuvI15uNxBKlvrfO
	yPqZfgfV1ttoCb5rcGDpJUk=
X-Google-Smtp-Source: ABdhPJzzhujQVx5SV1tS0f91PhEmFW3xRdiKdbCTamkQ5TecMQ2yiIe/RsFPudZ1lJXowk++lRlR1Q==
X-Received: by 2002:aca:62c4:: with SMTP id w187mr970281oib.125.1604447739977;
        Tue, 03 Nov 2020 15:55:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb2:: with SMTP id 47ls33546oth.9.gmail; Tue, 03 Nov
 2020 15:55:39 -0800 (PST)
X-Received: by 2002:a9d:4045:: with SMTP id o5mr6162035oti.340.1604447739363;
        Tue, 03 Nov 2020 15:55:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604447739; cv=none;
        d=google.com; s=arc-20160816;
        b=aKH/D5YFvnznWANsVWKDh5VNT6T8PZUHY8K2Ty2K/xqpwqUeyX6eFEZtKnXAQ9GTGd
         ZQGw4QamoZgJ8JuXcVvC17NQPDAjnatFAHvR82gNeecyOvl0/r2d9LtP3l/b3WREdSm4
         LHGCRFOkQXy0YxmRQRkIc5kwqbCmd9jnW+87VvzySdVNOsZ4g/dpMO/hh+4VN3Sv1+8C
         hAWTY3cfkn+qLMsFBbRR92HErBg+vNmAMcB9E+1U7X5en6S/WxDUE6Q3QIrC35Xrmpjp
         H3wRffBu0VvE7BjHEBRGZQ2HYt0vFaxPBhSgDAfL8PPM8yTT78WDjdEUhJRkhwb/7UOa
         YpOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=WkYm7S7h5RUb5rkLy8iFcamZGQLMSfssvcBZG36yS0k=;
        b=m5LPhJ69lkPidvOcdxwd/wK8U5CS7DjpOuQVdO8RN8axuptpYs9iw2vSjYd2ovebWy
         OCxSjrjZOpMU6mnw/ozvzzH34sKJtHOmCNDglnPfHdwTpvrVrZ1daa/i+tpDn0MgOMgh
         gADEnmWWKi+6lxLEN1H+7L15spis70ofhRx9LLNKf0Jy5LFe3fxsVt6PtkREUnVlTqCw
         XynNxMMU0L/UDSYwk5N+mpZc+8kMLvYzT19qFZftyagz95iin8NdIhw92AlSWXWvVvcu
         6mKnddGsj+tgwTTB1nS1RsnNgZZr5zoYRFKqAjRBAyP1thLobeHw7QsFTIirp21nrOe+
         +VvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id r6si55685oth.4.2020.11.03.15.55.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Nov 2020 15:55:39 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: CJjdQQ4CVvt85QLdhecbozUysZGcT2KL460S7FhY8H3fIhqBV+j1q5WMNpXGJbD02vsh6aUawc
 Sdbi2BrL/Nig==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="166553075"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; 
   d="gz'50?scan'50,208,50";a="166553075"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2020 15:55:37 -0800
IronPort-SDR: 46lzbQ6ZCiHi+65WMNRRPlHxVE39DXPuj5gWojlpIcYHaUtIu0wpSLUF3siDJuxUb/NypjBzwZ
 quggQnr+gE6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; 
   d="gz'50?scan'50,208,50";a="320607269"
Received: from lkp-server02.sh.intel.com (HELO e61783667810) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 03 Nov 2020 15:55:33 -0800
Received: from kbuild by e61783667810 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ka69E-0000ZT-Oa; Tue, 03 Nov 2020 23:55:32 +0000
Date: Wed, 4 Nov 2020 07:54:49 +0800
From: kernel test robot <lkp@intel.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
	will@kernel.org, sudeep.holla@arm.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	morten.rasmussen@arm.com, valentin.schneider@arm.com,
	souvik.chakravarty@arm.com, viresh.kumar@linaro.org,
	dietmar.eggemann@arm.com, ionela.voinescu@arm.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RESEND v2 3/3] arm64: implement CPPC FFH support using
 AMUs
Message-ID: <202011040721.lNka2RNG-lkp@intel.com>
References: <20201027163624.20747-4-ionela.voinescu@arm.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline
In-Reply-To: <20201027163624.20747-4-ionela.voinescu@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ionela,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on 3650b228f83adda7e5ee532e2b90429c03f7b9ec]

url:    https://github.com/0day-ci/linux/commits/Ionela-Voinescu/arm64-cppc-add-FFH-support-using-AMUs/20201028-004534
base:    3650b228f83adda7e5ee532e2b90429c03f7b9ec
config: arm64-randconfig-r016-20201103 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1fcd5d5655e29f85e12b402e32974f207cfedf32)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/43a45631863c12f95767b36c67a29654319068df
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ionela-Voinescu/arm64-cppc-add-FFH-support-using-AMUs/20201028-004534
        git checkout 43a45631863c12f95767b36c67a29654319068df
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/ata/sata_highbank.c:9:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:8:
   In file included from include/linux/spinlock.h:54:
   In file included from include/linux/irqflags.h:16:
   In file included from arch/arm64/include/asm/irqflags.h:10:
   In file included from arch/arm64/include/asm/ptrace.h:11:
   arch/arm64/include/asm/cpufeature.h:751:9: error: use of undeclared identifier 'nr_cpu_ids'
           return nr_cpu_ids;
                  ^
   drivers/ata/sata_highbank.c:442:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT("sata_highbank"),
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:387:16: note: expanded from macro 'AHCI_SHT'
           .can_queue              = AHCI_MAX_CMDS,                        \
                                     ^~~~~~~~~~~~~
   drivers/ata/sata_highbank.c:442:2: note: previous initialization is here
           AHCI_SHT("sata_highbank"),
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1400:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
   drivers/ata/sata_highbank.c:442:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           AHCI_SHT("sata_highbank"),
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:391:17: note: expanded from macro 'AHCI_SHT'
           .sdev_attrs             = ahci_sdev_attrs
                                     ^~~~~~~~~~~~~~~
   drivers/ata/sata_highbank.c:442:2: note: previous initialization is here
           AHCI_SHT("sata_highbank"),
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/ata/ahci.h:386:2: note: expanded from macro 'AHCI_SHT'
           ATA_NCQ_SHT(drv_name),                                          \
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1419:17: note: expanded from macro 'ATA_NCQ_SHT'
           .sdev_attrs             = ata_ncq_sdev_attrs,           \
                                     ^~~~~~~~~~~~~~~~~~
>> drivers/ata/sata_highbank.c:512:30: warning: shift count >= width of type [-Wshift-count-overflow]
                   dma_set_coherent_mask(dev, DMA_BIT_MASK(64));
                                              ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   3 warnings and 1 error generated.
--
   In file included from drivers/ata/sata_mv.c:40:
   In file included from include/linux/module.h:13:
   In file included from include/linux/stat.h:6:
   In file included from arch/arm64/include/asm/stat.h:12:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:8:
   In file included from arch/arm64/include/asm/arch_timer.h:12:
   In file included from arch/arm64/include/asm/hwcap.h:9:
   arch/arm64/include/asm/cpufeature.h:751:9: error: use of undeclared identifier 'nr_cpu_ids'
           return nr_cpu_ids;
                  ^
   drivers/ata/sata_mv.c:670:16: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           .can_queue              = MV_MAX_Q_DEPTH - 1,
                                     ^~~~~~~~~~~~~~~~~~
   drivers/ata/sata_mv.c:669:2: note: previous initialization is here
           ATA_NCQ_SHT(DRV_NAME),
           ^~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1418:2: note: expanded from macro 'ATA_NCQ_SHT'
           __ATA_BASE_SHT(drv_name),                               \
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/libata.h:1400:16: note: expanded from macro '__ATA_BASE_SHT'
           .can_queue              = ATA_DEF_QUEUE,                \
                                     ^~~~~~~~~~~~~
>> drivers/ata/sata_mv.c:4403:45: warning: shift count >= width of type [-Wshift-count-overflow]
           rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
                                                      ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 1 error generated.

vim +512 drivers/ata/sata_highbank.c

8996b89d6bc98ae Mark Langsdorf     2012-09-06  450  
0ec24914675c482 Greg Kroah-Hartman 2012-12-21  451  static int ahci_highbank_probe(struct platform_device *pdev)
8996b89d6bc98ae Mark Langsdorf     2012-09-06  452  {
8996b89d6bc98ae Mark Langsdorf     2012-09-06  453  	struct device *dev = &pdev->dev;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  454  	struct ahci_host_priv *hpriv;
d50b110f14ad070 Mark Langsdorf     2013-06-06  455  	struct ecx_plat_data *pdata;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  456  	struct ata_host *host;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  457  	struct resource *mem;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  458  	int irq;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  459  	int i;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  460  	int rc;
d50b110f14ad070 Mark Langsdorf     2013-06-06  461  	u32 n_ports;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  462  	struct ata_port_info pi = ahci_highbank_port_info;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  463  	const struct ata_port_info *ppi[] = { &pi, NULL };
8996b89d6bc98ae Mark Langsdorf     2012-09-06  464  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  465  	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  466  	if (!mem) {
8996b89d6bc98ae Mark Langsdorf     2012-09-06  467  		dev_err(dev, "no mmio space\n");
8996b89d6bc98ae Mark Langsdorf     2012-09-06  468  		return -EINVAL;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  469  	}
8996b89d6bc98ae Mark Langsdorf     2012-09-06  470  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  471  	irq = platform_get_irq(pdev, 0);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  472  	if (irq <= 0) {
8996b89d6bc98ae Mark Langsdorf     2012-09-06  473  		dev_err(dev, "no irq\n");
8996b89d6bc98ae Mark Langsdorf     2012-09-06  474  		return -EINVAL;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  475  	}
8996b89d6bc98ae Mark Langsdorf     2012-09-06  476  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  477  	hpriv = devm_kzalloc(dev, sizeof(*hpriv), GFP_KERNEL);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  478  	if (!hpriv) {
8996b89d6bc98ae Mark Langsdorf     2012-09-06  479  		dev_err(dev, "can't alloc ahci_host_priv\n");
8996b89d6bc98ae Mark Langsdorf     2012-09-06  480  		return -ENOMEM;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  481  	}
d50b110f14ad070 Mark Langsdorf     2013-06-06  482  	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
d50b110f14ad070 Mark Langsdorf     2013-06-06  483  	if (!pdata) {
d50b110f14ad070 Mark Langsdorf     2013-06-06  484  		dev_err(dev, "can't alloc ecx_plat_data\n");
d50b110f14ad070 Mark Langsdorf     2013-06-06  485  		return -ENOMEM;
d50b110f14ad070 Mark Langsdorf     2013-06-06  486  	}
8996b89d6bc98ae Mark Langsdorf     2012-09-06  487  
21bfd1aa9527811 Robert Richter     2015-05-31  488  	hpriv->irq = irq;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  489  	hpriv->flags |= (unsigned long)pi.private_data;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  490  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  491  	hpriv->mmio = devm_ioremap(dev, mem->start, resource_size(mem));
8996b89d6bc98ae Mark Langsdorf     2012-09-06  492  	if (!hpriv->mmio) {
8996b89d6bc98ae Mark Langsdorf     2012-09-06  493  		dev_err(dev, "can't map %pR\n", mem);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  494  		return -ENOMEM;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  495  	}
8996b89d6bc98ae Mark Langsdorf     2012-09-06  496  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  497  	rc = highbank_initialize_phys(dev, hpriv->mmio);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  498  	if (rc)
8996b89d6bc98ae Mark Langsdorf     2012-09-06  499  		return rc;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  500  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  501  
725c7b570fda420 Antoine Tenart     2014-07-30  502  	ahci_save_initial_config(dev, hpriv);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  503  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  504  	/* prepare host */
8996b89d6bc98ae Mark Langsdorf     2012-09-06  505  	if (hpriv->cap & HOST_CAP_NCQ)
8996b89d6bc98ae Mark Langsdorf     2012-09-06  506  		pi.flags |= ATA_FLAG_NCQ;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  507  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  508  	if (hpriv->cap & HOST_CAP_PMP)
8996b89d6bc98ae Mark Langsdorf     2012-09-06  509  		pi.flags |= ATA_FLAG_PMP;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  510  
404eafe137f858b Rob Herring        2013-08-07  511  	if (hpriv->cap & HOST_CAP_64)
404eafe137f858b Rob Herring        2013-08-07 @512  		dma_set_coherent_mask(dev, DMA_BIT_MASK(64));
404eafe137f858b Rob Herring        2013-08-07  513  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  514  	/* CAP.NP sometimes indicate the index of the last enabled
8996b89d6bc98ae Mark Langsdorf     2012-09-06  515  	 * port, at other times, that of the last possible port, so
8996b89d6bc98ae Mark Langsdorf     2012-09-06  516  	 * determining the maximum port number requires looking at
8996b89d6bc98ae Mark Langsdorf     2012-09-06  517  	 * both CAP.NP and port_map.
8996b89d6bc98ae Mark Langsdorf     2012-09-06  518  	 */
8996b89d6bc98ae Mark Langsdorf     2012-09-06  519  	n_ports = max(ahci_nr_ports(hpriv->cap), fls(hpriv->port_map));
8996b89d6bc98ae Mark Langsdorf     2012-09-06  520  
d50b110f14ad070 Mark Langsdorf     2013-06-06  521  	pdata->n_ports = n_ports;
d50b110f14ad070 Mark Langsdorf     2013-06-06  522  	hpriv->plat_data = pdata;
d50b110f14ad070 Mark Langsdorf     2013-06-06  523  	highbank_set_em_messages(dev, hpriv, &pi);
d50b110f14ad070 Mark Langsdorf     2013-06-06  524  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  525  	host = ata_host_alloc_pinfo(dev, ppi, n_ports);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  526  	if (!host) {
8996b89d6bc98ae Mark Langsdorf     2012-09-06  527  		rc = -ENOMEM;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  528  		goto err0;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  529  	}
8996b89d6bc98ae Mark Langsdorf     2012-09-06  530  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  531  	host->private_data = hpriv;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  532  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  533  	if (!(hpriv->cap & HOST_CAP_SSS) || ahci_ignore_sss)
8996b89d6bc98ae Mark Langsdorf     2012-09-06  534  		host->flags |= ATA_HOST_PARALLEL_SCAN;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  535  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  536  	for (i = 0; i < host->n_ports; i++) {
8996b89d6bc98ae Mark Langsdorf     2012-09-06  537  		struct ata_port *ap = host->ports[i];
8996b89d6bc98ae Mark Langsdorf     2012-09-06  538  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  539  		ata_port_desc(ap, "mmio %pR", mem);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  540  		ata_port_desc(ap, "port 0x%x", 0x100 + ap->port_no * 0x80);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  541  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  542  		/* set enclosure management message type */
8996b89d6bc98ae Mark Langsdorf     2012-09-06  543  		if (ap->flags & ATA_FLAG_EM)
8996b89d6bc98ae Mark Langsdorf     2012-09-06  544  			ap->em_message_type = hpriv->em_msg_type;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  545  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  546  		/* disabled/not-implemented port */
8996b89d6bc98ae Mark Langsdorf     2012-09-06  547  		if (!(hpriv->port_map & (1 << i)))
8996b89d6bc98ae Mark Langsdorf     2012-09-06  548  			ap->ops = &ata_dummy_port_ops;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  549  	}
8996b89d6bc98ae Mark Langsdorf     2012-09-06  550  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  551  	rc = ahci_reset_controller(host);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  552  	if (rc)
8996b89d6bc98ae Mark Langsdorf     2012-09-06  553  		goto err0;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  554  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  555  	ahci_init_controller(host);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  556  	ahci_print_info(host, "platform");
8996b89d6bc98ae Mark Langsdorf     2012-09-06  557  
21bfd1aa9527811 Robert Richter     2015-05-31  558  	rc = ahci_host_activate(host, &ahci_highbank_platform_sht);
8996b89d6bc98ae Mark Langsdorf     2012-09-06  559  	if (rc)
8996b89d6bc98ae Mark Langsdorf     2012-09-06  560  		goto err0;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  561  
8996b89d6bc98ae Mark Langsdorf     2012-09-06  562  	return 0;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  563  err0:
8996b89d6bc98ae Mark Langsdorf     2012-09-06  564  	return rc;
8996b89d6bc98ae Mark Langsdorf     2012-09-06  565  }
8996b89d6bc98ae Mark Langsdorf     2012-09-06  566  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011040721.lNka2RNG-lkp%40intel.com.

--45Z9DzgjV8m4Oswq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--45Z9DzgjV8m4Oswq--
