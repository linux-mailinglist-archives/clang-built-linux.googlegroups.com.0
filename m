Return-Path: <clang-built-linux+bncBDM2X4EI2MPBB5WZZL4AKGQESUVJHEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF4C2249C2
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 10:04:08 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id k186sf9604832pgd.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 01:04:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595059446; cv=pass;
        d=google.com; s=arc-20160816;
        b=f1Hd19WXt9Ob26BH3yAlCPj8MKB69Cgx1xqhk46K+ztHC40Qn+cytuzIdqRBS895o0
         lz5tEKgKEWqtK2xPLnpK75utI9hM4BhK8zkzU2bq0ECgFdhmUuMNeUnPgAmnR/IErbaI
         7XelFprRAbnf6x+RKV3GHBZ8c8rv+CBFXFkij0Jb5+jEaBSAcqttgYIxhMuOECy8KaFp
         EK4f3cqRiHHsW6lwDZQ6JoKX9jBztULIfFUvzCG4vjFG0idzGblMcnbghD4BMqiaBF8k
         wk8fWgjA8WuDnWROECdMpiM1BwtsybarMlLH0SKFTD4WGz/TNlYKy61tvcXXn1ktTYAe
         d2AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=E1hWZTUYpwGXbNdOEyxDjl6GK1KjviSOCIS3IUrDDoA=;
        b=we7idLA3LGcYXHC0MDvD858kG93hWWAlwbCn7scHGLF1mQWeeopoM+9i/zNJWerK+n
         LuYYKihS66yFDMUjRniks2MbkFmSi74QxLaajtVMBRhOhu29XK+0H3lnugudBlr+g3Fe
         5mtaANWhChsqxGC+nfTSsUw1I40ccFbyJVGPCY4cqFiQpSCR9y+cnWARRDG5WU2ZbjN9
         RzEJmSQ5KDbcTx+4htrUOHNrzAl1wAI9elMfEcMmnf96yX1HPTfb54uzKEKYhICSf8rl
         MRXKRtzZoHoJX3iU0NSwGmubodAvLSH7z1dCYf10Oq/B1fTAbLOs3hvNdOt9PWm7V8iQ
         JjVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MXun0RQo;
       spf=pass (google.com: domain of vaibhavgupta40@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=vaibhavgupta40@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E1hWZTUYpwGXbNdOEyxDjl6GK1KjviSOCIS3IUrDDoA=;
        b=sGq0MCA3I2JidSqkoJg+NvyMC3P5IngPWijuqG0u4qBVgDKMIWlhiFqFVO3x7ZHmxA
         x9i6Twbz4pYI/WkryegOCu0VnxTBXLAxr4lWz288xIU0t0G5WgFJ4c1WPfxgBJM8DuYc
         R+XbXXVJKG1TGyyj3TLIlWSnmNpY2aHSKa9QdK303anbxLydMvNlHpWexAufh1AkO0Hu
         bHr2t0Qnr0lmA1wrpmvK2GgZsCbfIo9wILQ3OTM/4rH+C5QnBFv4LIIYLh0c6SKKn0Bm
         DheiTEvSe+t97DkwZ4p8sm+TPB6Hgs6fMz8OIaMtYP9KgaZ5nf/zVh/FkqkpGsf8I8bh
         AvZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E1hWZTUYpwGXbNdOEyxDjl6GK1KjviSOCIS3IUrDDoA=;
        b=AAn2yDKchr1sRB7O9gEDbrnWRSTMG0zafgbu8UqZAcdoSVDfF5oLl2KAOPUxedZGvC
         bcpWln0gQdEt+vQt3PkuETwMGghHFRUqxV9+eOWoM0efB2IjHd2Gj/M3I4MWCIVfZptI
         rtRCNQ3VBf/sZHIJDxEgSlyd/p9E0GIKLmNEWoXt64vRy7NYF71ODVRJX/TcKFmvenJY
         INiBTC3tWYlQHjwSW0sI9QiikKls+/98uj5FH59lkFUz1wd4SKgB9ekke1po44ES1fKl
         ub80Lo9GQd2o8GBu5tO7VFtcQkX1DYZHoVm6KfmsnGK7IiWUhRwLpJGCdwv5SHs0d6W4
         cXWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E1hWZTUYpwGXbNdOEyxDjl6GK1KjviSOCIS3IUrDDoA=;
        b=s5BEm6pXdLpSy9FvVNalLKwvHoZKsytG1bI6zMGAj58yPIfWEaKAH/MC2EHaB00xqB
         9kaYPgJIRlEfD/oPsgML/nMMO3UvWUEw74j52MYq3CVKh7Tq2aKz25yx/FTzhIqTCUsF
         UfX5zbQUIEXVcQEl/hMmBTOcCBs4RSjfPHPxMtYDCiDJ7F1godov2/CeWz5/oNUlrOyN
         v0QZtgWMG3plBx4iOD1/nYP19Twp3aGnDX5LJoLkl14MLQnuYC18I3hffhjHUptqjsLH
         tk+D07L5xiTXTsycLPDJv04PLOcU8SFtBkcq92QEAFN4ZCwD62nztchxQtaPBKhUhYqT
         nU5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BrE3Ub2pDZn+rjTVhKubS2+XTavm+7K8wesONzybCpDukFRfH
	G+hob4im406cv98xUl9oc58=
X-Google-Smtp-Source: ABdhPJykyaPmVUQPYkle7TCh5fQ6W8UkCZ5dxwSeAiKvo79MEMVtGbDz8ZUUEitZKXi7a1J11VyxHw==
X-Received: by 2002:a17:90a:db17:: with SMTP id g23mr14124919pjv.180.1595059446680;
        Sat, 18 Jul 2020 01:04:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:38d:: with SMTP id 135ls574978pgd.0.gmail; Sat, 18 Jul
 2020 01:04:06 -0700 (PDT)
X-Received: by 2002:a62:7657:: with SMTP id r84mr10797580pfc.130.1595059446191;
        Sat, 18 Jul 2020 01:04:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595059446; cv=none;
        d=google.com; s=arc-20160816;
        b=LSo//O6FyVXRbt0ZSpJJwmzXvF2CW+VzFnBhyvYglFCA39Dfb66OfeFObjeNV0hKks
         fJGYUhM1Brl8j/+8l7kSw2HjfseREkkkwXVMdxBRkECXA2uugfjarqTz3yeKDaFlkrdL
         LjPCwNOhza7WGwmvOj3WRQJh/zHIgOj3Ni0X+0uik+sNZR/Kt1ta39evoMXmDaSmIjYL
         G/1bQDk/XpVdLQLlobtx0n4zkkxAiBBgKKJIuGzoJbMCBp+mQGQKv7+wZCMA/J1szVuN
         kPIwqbW6Hf/96AYS56NdGG9y9YDjSb/i94qypiscwL9xj17HxdyLc9h+ygmmsmptrrkD
         HNOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rW9rGw5QorrYiXjPU4V7lqATz536xiq/7LgrDV20T0U=;
        b=QbA9lu7CSBhCPFSHFjv80kahjuavfYTR3KaQuhP/KpWWG4IJCgHJcKfniX5FTzMx7e
         uZ/T36k3utkqfh98wSgt/R7sDvozwoFOzyvna0IR5DO9UPsbhyDTtAyNVkzHbk3jEdwN
         whBENutu2/Pvl+wOOs8zR+UucN+nZfaRa3lt7WlJOhiCdfYrENOMa2cHWWVn+AYBTNnh
         65K59/CwZKeRwQAzoATWvuGar1Tc19aMW6DRTKP6uewCkITEGAFtD9sac0kTj65xGAaV
         KT70hXktFcPC4ufz2Vk+NO+MpusVYb2On+N3Anc5LQT//33AcIgOt9XA+YwUkvx8mxp5
         0ndA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MXun0RQo;
       spf=pass (google.com: domain of vaibhavgupta40@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=vaibhavgupta40@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i6si633269pgj.5.2020.07.18.01.04.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jul 2020 01:04:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhavgupta40@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id k5so6377056plk.13
        for <clang-built-linux@googlegroups.com>; Sat, 18 Jul 2020 01:04:06 -0700 (PDT)
X-Received: by 2002:a17:90a:c003:: with SMTP id p3mr13518190pjt.120.1595059445683;
        Sat, 18 Jul 2020 01:04:05 -0700 (PDT)
Received: from gmail.com ([103.105.153.67])
        by smtp.gmail.com with ESMTPSA id y6sm9992063pfp.7.2020.07.18.01.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2020 01:04:05 -0700 (PDT)
Date: Sat, 18 Jul 2020 13:32:36 +0530
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Adam Radford <aradford@gmail.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Adaptec OEM Raid Solutions <aacraid@microsemi.com>,
	Hannes Reinecke <hare@suse.com>,
	Bradley Grove <linuxdrivers@attotech.com>,
	John Garry <john.garry@huawei.com>,
	Don Brace <don.brace@microsemi.com>,
	James Smart <james.smart@broadcom.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v1 15/15] scsi: pmcraid: use generic power management
Message-ID: <20200718080158.GA244114@gmail.com>
References: <20200717063438.175022-16-vaibhavgupta40@gmail.com>
 <202007181531.ItorFuzB%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007181531.ItorFuzB%lkp@intel.com>
X-Original-Sender: vaibhavgupta40@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MXun0RQo;       spf=pass
 (google.com: domain of vaibhavgupta40@gmail.com designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=vaibhavgupta40@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jul 18, 2020 at 03:25:59PM +0800, kernel test robot wrote:
> Hi Vaibhav,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on v5.8-rc5]
> [cannot apply to scsi/for-next mkp-scsi/for-next next-20200717]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Vaibhav-Gupta/scsi-use-generic-power-management/20200717-144215
> base:    11ba468877bb23f28956a35e896356252d63c983
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ed6b578040a85977026c93bf4188f996148f3218)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/scsi/pmcraid.c:5274:6: warning: variable 'rc' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (sizeof(dma_addr_t) == 4 ||
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/pmcraid.c:5278:6: note: uninitialized use occurs here
>            if (rc == 0)
>                ^~
>    drivers/scsi/pmcraid.c:5274:2: note: remove the 'if' if its condition is always true
>            if (sizeof(dma_addr_t) == 4 ||
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/scsi/pmcraid.c:5270:8: note: initialize the variable 'rc' to silence this warning
>            int rc;
>                  ^
>                   = 0
>    1 warning generated.
> 
> vim +5274 drivers/scsi/pmcraid.c
> 
> 89a36810415077 Anil Ravindranath 2009-08-25  5258  
> 89a36810415077 Anil Ravindranath 2009-08-25  5259  /**
> 89a36810415077 Anil Ravindranath 2009-08-25  5260   * pmcraid_resume - driver resume entry point PCI power management
> 7e38e77fcc9088 Vaibhav Gupta     2020-07-17  5261   * @dev: Device structure
> 89a36810415077 Anil Ravindranath 2009-08-25  5262   *
> 89a36810415077 Anil Ravindranath 2009-08-25  5263   * Return Value - 0 in case of success. Error code in case of any failure
> 89a36810415077 Anil Ravindranath 2009-08-25  5264   */
> 7e38e77fcc9088 Vaibhav Gupta     2020-07-17  5265  static int __maybe_unused pmcraid_resume(struct device *dev)
> 89a36810415077 Anil Ravindranath 2009-08-25  5266  {
> 7e38e77fcc9088 Vaibhav Gupta     2020-07-17  5267  	struct pci_dev *pdev = to_pci_dev(dev);
> 89a36810415077 Anil Ravindranath 2009-08-25  5268  	struct pmcraid_instance *pinstance = pci_get_drvdata(pdev);
> 89a36810415077 Anil Ravindranath 2009-08-25  5269  	struct Scsi_Host *host = pinstance->host;
> 89a36810415077 Anil Ravindranath 2009-08-25  5270  	int rc;
> 89a36810415077 Anil Ravindranath 2009-08-25  5271  
> 7e38e77fcc9088 Vaibhav Gupta     2020-07-17  5272  	device_wakeup_disable(dev);
> 89a36810415077 Anil Ravindranath 2009-08-25  5273  
> 371a6c328ad423 Christoph Hellwig 2018-10-18 @5274  	if (sizeof(dma_addr_t) == 4 ||
> 371a6c328ad423 Christoph Hellwig 2018-10-18  5275  	    dma_set_mask(&pdev->dev, DMA_BIT_MASK(64)))
> 371a6c328ad423 Christoph Hellwig 2018-10-18  5276  		rc = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
> 89a36810415077 Anil Ravindranath 2009-08-25  5277  
> 89a36810415077 Anil Ravindranath 2009-08-25  5278  	if (rc == 0)
> 371a6c328ad423 Christoph Hellwig 2018-10-18  5279  		rc = dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(32));
> 89a36810415077 Anil Ravindranath 2009-08-25  5280  
> 89a36810415077 Anil Ravindranath 2009-08-25  5281  	if (rc != 0) {
> 348764024f1cd6 Anil Ravindranath 2009-09-09  5282  		dev_err(&pdev->dev, "resume: Failed to set PCI DMA mask\n");
> 89a36810415077 Anil Ravindranath 2009-08-25  5283  		goto disable_device;
> 89a36810415077 Anil Ravindranath 2009-08-25  5284  	}
> 89a36810415077 Anil Ravindranath 2009-08-25  5285  
> c20c426732a5a5 Anil Ravindranath 2010-06-08  5286  	pmcraid_disable_interrupts(pinstance, ~0);
> 89a36810415077 Anil Ravindranath 2009-08-25  5287  	atomic_set(&pinstance->outstanding_cmds, 0);
> 89a36810415077 Anil Ravindranath 2009-08-25  5288  	rc = pmcraid_register_interrupt_handler(pinstance);
> 89a36810415077 Anil Ravindranath 2009-08-25  5289  
> 89a36810415077 Anil Ravindranath 2009-08-25  5290  	if (rc) {
> 348764024f1cd6 Anil Ravindranath 2009-09-09  5291  		dev_err(&pdev->dev,
> 348764024f1cd6 Anil Ravindranath 2009-09-09  5292  			"resume: couldn't register interrupt handlers\n");
> 89a36810415077 Anil Ravindranath 2009-08-25  5293  		rc = -ENODEV;
> 89a36810415077 Anil Ravindranath 2009-08-25  5294  		goto release_host;
> 89a36810415077 Anil Ravindranath 2009-08-25  5295  	}
> 89a36810415077 Anil Ravindranath 2009-08-25  5296  
> 89a36810415077 Anil Ravindranath 2009-08-25  5297  	pmcraid_init_tasklets(pinstance);
> 89a36810415077 Anil Ravindranath 2009-08-25  5298  	pmcraid_enable_interrupts(pinstance, PMCRAID_PCI_INTERRUPTS);
> 89a36810415077 Anil Ravindranath 2009-08-25  5299  
> 89a36810415077 Anil Ravindranath 2009-08-25  5300  	/* Start with hard reset sequence which brings up IOA to operational
> 89a36810415077 Anil Ravindranath 2009-08-25  5301  	 * state as well as completes the reset sequence.
> 89a36810415077 Anil Ravindranath 2009-08-25  5302  	 */
> 89a36810415077 Anil Ravindranath 2009-08-25  5303  	pinstance->ioa_hard_reset = 1;
> 89a36810415077 Anil Ravindranath 2009-08-25  5304  
> 89a36810415077 Anil Ravindranath 2009-08-25  5305  	/* Start IOA firmware initialization and bring card to Operational
> 89a36810415077 Anil Ravindranath 2009-08-25  5306  	 * state.
> 89a36810415077 Anil Ravindranath 2009-08-25  5307  	 */
> 89a36810415077 Anil Ravindranath 2009-08-25  5308  	if (pmcraid_reset_bringup(pinstance)) {
> 348764024f1cd6 Anil Ravindranath 2009-09-09  5309  		dev_err(&pdev->dev, "couldn't initialize IOA\n");
> 89a36810415077 Anil Ravindranath 2009-08-25  5310  		rc = -ENODEV;
> 89a36810415077 Anil Ravindranath 2009-08-25  5311  		goto release_tasklets;
> 89a36810415077 Anil Ravindranath 2009-08-25  5312  	}
> 89a36810415077 Anil Ravindranath 2009-08-25  5313  
> 89a36810415077 Anil Ravindranath 2009-08-25  5314  	return 0;
> 89a36810415077 Anil Ravindranath 2009-08-25  5315  
> 89a36810415077 Anil Ravindranath 2009-08-25  5316  release_tasklets:
> c20c426732a5a5 Anil Ravindranath 2010-06-08  5317  	pmcraid_disable_interrupts(pinstance, ~0);
> 89a36810415077 Anil Ravindranath 2009-08-25  5318  	pmcraid_kill_tasklets(pinstance);
> 89a36810415077 Anil Ravindranath 2009-08-25  5319  	pmcraid_unregister_interrupt_handler(pinstance);
> 89a36810415077 Anil Ravindranath 2009-08-25  5320  
> 89a36810415077 Anil Ravindranath 2009-08-25  5321  release_host:
> 89a36810415077 Anil Ravindranath 2009-08-25  5322  	scsi_host_put(host);
> 89a36810415077 Anil Ravindranath 2009-08-25  5323  
> 89a36810415077 Anil Ravindranath 2009-08-25  5324  disable_device:
> 89a36810415077 Anil Ravindranath 2009-08-25  5325  
> 89a36810415077 Anil Ravindranath 2009-08-25  5326  	return rc;
> 89a36810415077 Anil Ravindranath 2009-08-25  5327  }
> 89a36810415077 Anil Ravindranath 2009-08-25  5328  
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Yes, I detected this while fixing [PATCH v1 06/15]. Already fixed in v2.
Will shortly float v2 on mailing list.

Thanks for reporting.

--Vaibhav Gupta

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200718080158.GA244114%40gmail.com.
