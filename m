Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOPU4WAAMGQETTHLNGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B100530C51C
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 17:13:46 +0100 (CET)
Received: by mail-vs1-xe3c.google.com with SMTP id f27sf1481239vsg.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 08:13:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612282425; cv=pass;
        d=google.com; s=arc-20160816;
        b=FQ3YH7tQLoX5gSAjhQXygpIC7QXSsmvr8G4sq2HddN8S36s+wMCUVCTrtiUxHIQPmm
         BBq/Yjd6Xcf6Y9bh1mjosb6XfFohxNVLwiu1x7zGwFk4KPGlFOQFCJlgpPmwuXzl2pKN
         s9OPMfXTfrAiZhG8Lz4EO7IwtQZtXkdPZgp6Zh7/PIsWOa2/lV4Swl4VRiYvpDhpAPWQ
         ICRM49F7GVO9rwdSG/ueBowsg7V5hmosPjQeaO1cyzcvtGuTUlaO2f1Zxr2EzGuyiSwf
         OwwQuxGcB42n2uX6up8ec3CCu0PU0yH/CZ2ENNlJNJa6yJ3LfAZ7dJ4EPiyQd4pD3Zn4
         Ualg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Q2EGyC7hkhvIJfl4OBvop+aw6Xxi60+uXLIyF2z9TNk=;
        b=oUedS8Mza8NQox3XQAe7o1Amf/5nlX3xvdP2LAPG5l5OZVOrJVKRphb9CUWTRwpauX
         sjvDndG4CAkX7rkEpd305+pEjZBZxtcMoGmWYnXOwZ9Pwk0ZIPmNMzGO0YHF/WK2wkTy
         QTtNMXrFbMDXCAMonTAm2tGpmEZdHbeNgySaGv4jZ0yk5VURKPVVcLZiYT2XKkUhUh0H
         WsqDLZb8ppgbPqDyY2jAFzSbA09jwZEGuWAofyf33nhdKJlzLhU801A4eSLx02mspL70
         oUggKAaIE27FzXI05QZ93SFrJDcK3hCZ3Yie5M55aOpN6AYGbsQynA2GJvsSIr6pex2A
         NJaQ==
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
        bh=Q2EGyC7hkhvIJfl4OBvop+aw6Xxi60+uXLIyF2z9TNk=;
        b=eD894YE/5nHu2fw7UkCCiZrSIZL1C8hX6OT/ciWk80QYSiP5/LmigRpCoPkqNLwp2n
         8Wg7YoIOD2DMCXmzXotOXgbCMscscvUY+SUBpYb4Z+2BxMBEVhNMipF4gF9tFIEGdaTI
         FJy8yELQPJqUkBX783Re5/4p2nAGZrYJ/Qvj1ODNLbYIkZK939urnGBJKlTl2oyrwh9m
         BtoRaLV3NgHV4UeV2T1Ekmv/QBEPcIA+FUhfs5RbLahkJhBMyY0ae2mvvOvbNUi/JAJA
         1AHwHhslPEOyEoEx255KdcOSU3PQojzNv0ki5d+i6HFJIo5d5vf6ib59n2PKgIM88dU+
         c5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q2EGyC7hkhvIJfl4OBvop+aw6Xxi60+uXLIyF2z9TNk=;
        b=K9qZQbfJn6gkh6nmLr6A1IF7ohIKEupDp9m9YWCY/WrsCv3yYkh2CzfoWM4zMWuTN0
         dxzxkMqr6Nrzh/6gZDwOm6ki83SnBpy32WknBETHB7eFMpgtinrOXumbXkGNhNsXb8Zc
         nlWXjZF3mjfidY5xJNtZ99waAFYMgmYzS3tIdahDwyxNTrsv69nANUq7GnlU1B5EpF/d
         Uke2Y7RroYEu8tv8BILdHXYpmNLsRLWZCdcdlbItQCHrOLMD1ip5QkYnJJ2Jys22gPk1
         6P2AZYseJgKBIjmzCo6fShaO8uirnSDdStdb5zdtV+0ioAV79wMvXSIU+isa5wIz6a+k
         lNUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rYT89u5TiJ40GMyqq590VoLesRVrHIb9CEZACUsjV4sztfTTj
	Lp3rT/H8U8tStA/2Nq+RgAg=
X-Google-Smtp-Source: ABdhPJxiSzJMcwxAUbGMawg9FzBk+SAIA/18ifrKDsSPPHPH/J7cRSw9PvKxk2JOvnStvlYQQbFBmw==
X-Received: by 2002:a67:ff15:: with SMTP id v21mr8545239vsp.0.1612282425580;
        Tue, 02 Feb 2021 08:13:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:324f:: with SMTP id y15ls1552946uad.4.gmail; Tue, 02 Feb
 2021 08:13:45 -0800 (PST)
X-Received: by 2002:ab0:22ca:: with SMTP id z10mr12408840uam.73.1612282424898;
        Tue, 02 Feb 2021 08:13:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612282424; cv=none;
        d=google.com; s=arc-20160816;
        b=JZKmfgdTzUWEzml2JlF+8Q8DX8CjpSdfGNfhTQ68naWBZEV6u6w70LkNF0K5H9MS82
         qN0Q1vI2Ga6EyKzUZ9C8BoITNpWlFlwhSoFxIuofEE6gdn/5ajx54fTg/rMuGBH4NmKa
         GwaYegx3FGYgvogNAhKGf36t6eozLR0gW1UQXLmIMozjg+jNXKOxj8gb4/farIsRkRzF
         m7gkgw2iJ1kKdiKGUMBoK5K7iUq/7z1C3/VGXV1gKzOHtIvftpU2eLYSvkQWhFMXjCyB
         DTPFmSZs5Ek2xWFD3DvjycpdaNUuzUZ3spLYHYHbi9wU6/aqoAG1tuhLyXrR+cpGhpmP
         0UQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=mxf9km3Q9hF56d7GOg1lMgIJsQxVNfFyYrkTeSwkXtA=;
        b=RBt1taDn0lev7aBVoMxK3C2nIzoc6j5zXsDW7F9DnXb6lYPomLMn3MI+z/9nsvkgkH
         daa3OJQmq82y6R9/aBNtU5Xj310BNz7h99KYuOPXGkZYMYwxK1WPLIjPTe8PDy9O5KQ0
         4sLlFLCxXAPNJZrbNM8FBlgfYKdcNhCIBLSgH2GuBjOAizpHhy00XWepTLZ0Hxx12NKI
         d99PtnSw9GRArUaT05T4xVYQqnXaRvqtZ9zNLE4K2Wp+cWcRL089U/t/ozfzQZyupP3N
         XBQuRF9sdNXdLNWAgLD0wvHAN+X4XJ3LjUlrapmU3rTWUCTysAMIvpusAIoBNmHUPSSL
         tUKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id e11si1366338vkp.4.2021.02.02.08.13.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Feb 2021 08:13:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: iiRr2uSnB+XgqfeXUfz1TkISvuNKvVw21ZcOBHBvjS6USZPazlVza6SR2cECgJNdIGa4D3b1Oq
 JMwev7LGTWVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="180955865"
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; 
   d="gz'50?scan'50,208,50";a="180955865"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 08:13:09 -0800
IronPort-SDR: 8HkO5Ll2M+O34V9C+J4/jI5ymuTGyeyau23LK2l8sTC+3JytQc8NAjOm3F0mdGC7Kqq/YjGAGt
 vNu8eezcXmdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,395,1602572400"; 
   d="gz'50?scan'50,208,50";a="370765195"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2021 08:13:05 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l6yIa-0009UW-88; Tue, 02 Feb 2021 16:13:04 +0000
Date: Wed, 3 Feb 2021 00:12:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Sathya Prakash <sathya.prakash@broadcom.com>,
	Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
	Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH][next] scsi: mpt3sas: Replace one-element array with
 flexible-array in struct _MPI2_CONFIG_PAGE_IO_UNIT_3
Message-ID: <202102030031.IXBMWy7b-lkp@intel.com>
References: <20210202000812.GA191357@embeddedor>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
In-Reply-To: <20210202000812.GA191357@embeddedor>
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Gustavo,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on scsi/for-next]
[also build test WARNING on mkp-scsi/for-next v5.11-rc6 next-20210125]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Gustavo-A-R-Silva/scsi-mpt3sas-Replace-one-element-array-with-flexible-array-in-struct-_MPI2_CONFIG_PAGE_IO_UNIT_3/20210202-093055
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
config: riscv-randconfig-r003-20210202 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/bbcda75a87ca5e689b745aa6803a9cbe349e3a68
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Gustavo-A-R-Silva/scsi-mpt3sas-Replace-one-element-array-with-flexible-array-in-struct-_MPI2_CONFIG_PAGE_IO_UNIT_3/20210202-093055
        git checkout bbcda75a87ca5e689b745aa6803a9cbe349e3a68
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/scsi/mpt3sas/mpt3sas_ctl.c:3165:14: warning: format specifies type 'long' but the argument has type 'size_t' (aka 'unsigned int') [-Wformat]
                           __func__, sz);
                                     ^~
   drivers/scsi/mpt3sas/mpt3sas_base.h:181:36: note: expanded from macro 'ioc_err'
           pr_err("%s: " fmt, (ioc)->name, ##__VA_ARGS__)
                         ~~~                 ^~~~~~~~~~~
   include/linux/printk.h:343:33: note: expanded from macro 'pr_err'
           printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
                                  ~~~     ^~~~~~~~~~~
   1 warning generated.


vim +3165 drivers/scsi/mpt3sas/mpt3sas_ctl.c

f92363d1235949 Sreekanth Reddy     2012-11-30  3125  
422630955ea348 Sreekanth Reddy     2015-11-11  3126  /**
c9df1442725953 Tomas Henzl         2019-06-14  3127   * BRM_status_show - Backup Rail Monitor Status
4beb4867f049ae Bart Van Assche     2018-06-15  3128   * @cdev: pointer to embedded class device
4beb4867f049ae Bart Van Assche     2018-06-15  3129   * @attr: ?
4beb4867f049ae Bart Van Assche     2018-06-15  3130   * @buf: the buffer returned
422630955ea348 Sreekanth Reddy     2015-11-11  3131   *
422630955ea348 Sreekanth Reddy     2015-11-11  3132   * This is number of reply queues
422630955ea348 Sreekanth Reddy     2015-11-11  3133   *
422630955ea348 Sreekanth Reddy     2015-11-11  3134   * A sysfs 'read-only' shost attribute.
422630955ea348 Sreekanth Reddy     2015-11-11  3135   */
422630955ea348 Sreekanth Reddy     2015-11-11  3136  static ssize_t
c9df1442725953 Tomas Henzl         2019-06-14  3137  BRM_status_show(struct device *cdev, struct device_attribute *attr,
422630955ea348 Sreekanth Reddy     2015-11-11  3138  	char *buf)
422630955ea348 Sreekanth Reddy     2015-11-11  3139  {
422630955ea348 Sreekanth Reddy     2015-11-11  3140  	struct Scsi_Host *shost = class_to_shost(cdev);
422630955ea348 Sreekanth Reddy     2015-11-11  3141  	struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
422630955ea348 Sreekanth Reddy     2015-11-11  3142  	Mpi2IOUnitPage3_t *io_unit_pg3 = NULL;
422630955ea348 Sreekanth Reddy     2015-11-11  3143  	Mpi2ConfigReply_t mpi_reply;
422630955ea348 Sreekanth Reddy     2015-11-11  3144  	u16 backup_rail_monitor_status = 0;
422630955ea348 Sreekanth Reddy     2015-11-11  3145  	u16 ioc_status;
bbcda75a87ca5e Gustavo A. R. Silva 2021-02-01  3146  	size_t sz;
422630955ea348 Sreekanth Reddy     2015-11-11  3147  	ssize_t rc = 0;
422630955ea348 Sreekanth Reddy     2015-11-11  3148  
422630955ea348 Sreekanth Reddy     2015-11-11  3149  	if (!ioc->is_warpdrive) {
919d8a3f3fef99 Joe Perches         2018-09-17  3150  		ioc_err(ioc, "%s: BRM attribute is only for warpdrive\n",
919d8a3f3fef99 Joe Perches         2018-09-17  3151  			__func__);
cb551b8dc079d2 Damien Le Moal      2020-07-01  3152  		return 0;
422630955ea348 Sreekanth Reddy     2015-11-11  3153  	}
08c4d550c5797d Sreekanth Reddy     2015-11-11  3154  	/* pci_access_mutex lock acquired by sysfs show path */
08c4d550c5797d Sreekanth Reddy     2015-11-11  3155  	mutex_lock(&ioc->pci_access_mutex);
0fd181456aa082 Johannes Thumshirn  2020-07-01  3156  	if (ioc->pci_error_recovery || ioc->remove_host)
0fd181456aa082 Johannes Thumshirn  2020-07-01  3157  		goto out;
422630955ea348 Sreekanth Reddy     2015-11-11  3158  
422630955ea348 Sreekanth Reddy     2015-11-11  3159  	/* allocate upto GPIOVal 36 entries */
bbcda75a87ca5e Gustavo A. R. Silva 2021-02-01  3160  	sz = struct_size(io_unit_pg3, GPIOVal, 36);
422630955ea348 Sreekanth Reddy     2015-11-11  3161  	io_unit_pg3 = kzalloc(sz, GFP_KERNEL);
422630955ea348 Sreekanth Reddy     2015-11-11  3162  	if (!io_unit_pg3) {
0fd181456aa082 Johannes Thumshirn  2020-07-01  3163  		rc = -ENOMEM;
bbcda75a87ca5e Gustavo A. R. Silva 2021-02-01  3164  		ioc_err(ioc, "%s: failed allocating memory for iounit_pg3: (%ld) bytes\n",
919d8a3f3fef99 Joe Perches         2018-09-17 @3165  			__func__, sz);
422630955ea348 Sreekanth Reddy     2015-11-11  3166  		goto out;
422630955ea348 Sreekanth Reddy     2015-11-11  3167  	}
422630955ea348 Sreekanth Reddy     2015-11-11  3168  
422630955ea348 Sreekanth Reddy     2015-11-11  3169  	if (mpt3sas_config_get_iounit_pg3(ioc, &mpi_reply, io_unit_pg3, sz) !=
422630955ea348 Sreekanth Reddy     2015-11-11  3170  	    0) {
919d8a3f3fef99 Joe Perches         2018-09-17  3171  		ioc_err(ioc, "%s: failed reading iounit_pg3\n",
422630955ea348 Sreekanth Reddy     2015-11-11  3172  			__func__);
0fd181456aa082 Johannes Thumshirn  2020-07-01  3173  		rc = -EINVAL;
422630955ea348 Sreekanth Reddy     2015-11-11  3174  		goto out;
422630955ea348 Sreekanth Reddy     2015-11-11  3175  	}
422630955ea348 Sreekanth Reddy     2015-11-11  3176  
422630955ea348 Sreekanth Reddy     2015-11-11  3177  	ioc_status = le16_to_cpu(mpi_reply.IOCStatus) & MPI2_IOCSTATUS_MASK;
422630955ea348 Sreekanth Reddy     2015-11-11  3178  	if (ioc_status != MPI2_IOCSTATUS_SUCCESS) {
919d8a3f3fef99 Joe Perches         2018-09-17  3179  		ioc_err(ioc, "%s: iounit_pg3 failed with ioc_status(0x%04x)\n",
919d8a3f3fef99 Joe Perches         2018-09-17  3180  			__func__, ioc_status);
0fd181456aa082 Johannes Thumshirn  2020-07-01  3181  		rc = -EINVAL;
422630955ea348 Sreekanth Reddy     2015-11-11  3182  		goto out;
422630955ea348 Sreekanth Reddy     2015-11-11  3183  	}
422630955ea348 Sreekanth Reddy     2015-11-11  3184  
422630955ea348 Sreekanth Reddy     2015-11-11  3185  	if (io_unit_pg3->GPIOCount < 25) {
919d8a3f3fef99 Joe Perches         2018-09-17  3186  		ioc_err(ioc, "%s: iounit_pg3->GPIOCount less than 25 entries, detected (%d) entries\n",
919d8a3f3fef99 Joe Perches         2018-09-17  3187  			__func__, io_unit_pg3->GPIOCount);
0fd181456aa082 Johannes Thumshirn  2020-07-01  3188  		rc = -EINVAL;
422630955ea348 Sreekanth Reddy     2015-11-11  3189  		goto out;
422630955ea348 Sreekanth Reddy     2015-11-11  3190  	}
422630955ea348 Sreekanth Reddy     2015-11-11  3191  
422630955ea348 Sreekanth Reddy     2015-11-11  3192  	/* BRM status is in bit zero of GPIOVal[24] */
422630955ea348 Sreekanth Reddy     2015-11-11  3193  	backup_rail_monitor_status = le16_to_cpu(io_unit_pg3->GPIOVal[24]);
422630955ea348 Sreekanth Reddy     2015-11-11  3194  	rc = snprintf(buf, PAGE_SIZE, "%d\n", (backup_rail_monitor_status & 1));
422630955ea348 Sreekanth Reddy     2015-11-11  3195  
422630955ea348 Sreekanth Reddy     2015-11-11  3196   out:
422630955ea348 Sreekanth Reddy     2015-11-11  3197  	kfree(io_unit_pg3);
08c4d550c5797d Sreekanth Reddy     2015-11-11  3198  	mutex_unlock(&ioc->pci_access_mutex);
422630955ea348 Sreekanth Reddy     2015-11-11  3199  	return rc;
422630955ea348 Sreekanth Reddy     2015-11-11  3200  }
c9df1442725953 Tomas Henzl         2019-06-14  3201  static DEVICE_ATTR_RO(BRM_status);
422630955ea348 Sreekanth Reddy     2015-11-11  3202  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102030031.IXBMWy7b-lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
zALRXvzQkUx8QeUawp/FWZat/w8cFa51yuQBAA==

--ew6BAiZeqk4r7MaW--
