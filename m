Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN5M5H5AKGQE6FCPFFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 9395C2649F1
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 18:37:14 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id f67sf4987823ilf.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:37:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599755833; cv=pass;
        d=google.com; s=arc-20160816;
        b=vu50q4fwet9i/PoI5jnRiwO8Za1ufAXlssk1CfQdFFDraqebmfCgE+IEAORgEH7IHN
         uJjX7tiiaSQAcCKBd8ttJpu1Ev1PJf3zeoyIkKSAZpXydNwHJk7R4KctlWAFiHTi/wQ1
         cQJn30jVHjRBWLtgDMAJvxvVBVhA8L3jxuutKzNylhHNbhSSyGvns/mtT7MTK535nD1O
         /3Ef3AFJvu7sqIXXrK2g9RRqOqZz7ZdfNg6ue7F/seszFgNQWwD7vX3IoRj8WrrrpeU5
         BdyGOdDrhYtfXlUM8jTWq8GprxlGOwL/LJ6XoZC1SBvDazrNozYZAWpGDt1LLUFekgEG
         zoxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=E6rM8e2vCmsvV1E1IEjtVxbWMxybYGuyHIVmZdhALqk=;
        b=pTvdIO0oZymqw5KJdlxLACpLgyWlajok7Po2xfC9UQtAxrGBO8pzYzdtJH7cdmrUKr
         ZvVE6c8IiRm2LHM0J6m5qBXPSLIzLPZmedLV5qNOz1HwKgi3CzRKkDYVILV91IILGPeJ
         ExgVkPM4O/avvyXAx2K0SGlkNKEOwpPRkcpJ33iA4Fxc8Edpvc1in8d7pzm457LMrqW7
         2lyG/a+eKC30WTuTjpdst9gC9GGmY1hdvaLEEDM0WMqORbw+wmTuu/DugBGyazfHULZF
         aLV9W5aSMLciIJ0/ko1QQ+Vy8wWx2o+irj6E+1ojeJPSw04MOq9IxUn0O4A6mbaqWcMr
         rK4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6rM8e2vCmsvV1E1IEjtVxbWMxybYGuyHIVmZdhALqk=;
        b=nwLYvl433HnEOlxjuU1LVLYjyVRuCgtLdeooKWNKp7im6XlYgVKJ+jPQZ+STU2I+Jo
         750skqu3PJnJ7b9UdSFluNIKFu18KyImWT5A+ntSddfTZ42YAHZvgnq6XGbBNjsSuEku
         hj+/KAXubUWdzNLi5vNr0KePd1AIxsEniRHIwYEeS8ITvBuNj/rmtCEn6xHRzuqxKoIA
         0TqUfVozmEXO0+TVSl4RpEY/6B9nqye6UaACagJHo/EgtmzOo6Es93LfWpz5DdPJfwzR
         Ex+x1D4Zv7stHClMBnCp5HW+I3bGdjloFXlAu/ii7SojSAMZtC0SV5d77M6R7zSHluzz
         UmzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E6rM8e2vCmsvV1E1IEjtVxbWMxybYGuyHIVmZdhALqk=;
        b=nkmfG18pWA4SYF4vaRkgtgOKxXeZbdUnKbwqcR7hkiJPcMkhr7uIIzJA3eQr97aVOk
         dhvoGvMYuMsD84PrX0vdI2o5tdWliFmAJGoV8J1Q9UbX+6vGIWyh4j6waA2m+X+Rp/ie
         IWDnVp6dmsykIimnCvEu4v1GxXvE2extQMJerlxIUHg4sISscT9iegwSRPPCvL/xJcb/
         Pmg3DKKiNERrFXRleMDVOAS/3j655on//CyTduP08WnO502f3K4iI7JJSQX43DdtiHQu
         uib/1oFTwdKxIjmKjgPy7GRCeoUqk3zI/CBacu0ODEh4AJtnT6GFriMWUu5lH0aHqOmE
         eWsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336tAzF0COapFwbos3Lm0xQe992lQCHXf5iRXr5mSv4XwHgtxyD
	o4kqsspLsbFVsErPSA5goD8=
X-Google-Smtp-Source: ABdhPJwhZ5/pdLyXsAbg1uTNajWcQK3kWNMWSzxTCuUUAQ2tW/EqqDql+YE1LqaSRO306vlmuewOPg==
X-Received: by 2002:a5d:80d6:: with SMTP id h22mr8140441ior.154.1599755831859;
        Thu, 10 Sep 2020 09:37:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:15ca:: with SMTP id f10ls1144098iow.0.gmail; Thu,
 10 Sep 2020 09:37:11 -0700 (PDT)
X-Received: by 2002:a6b:f909:: with SMTP id j9mr8340818iog.184.1599755831384;
        Thu, 10 Sep 2020 09:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599755831; cv=none;
        d=google.com; s=arc-20160816;
        b=LMMceq4/5lya9TvmIQRfa/YJ6J5mFlPLRVp7DEh7kWJUVeie+yW25x08WwxqZ/DKGz
         nxgp1PGaNNqknTWoqASroT7EdHSr1Yg04pQgoAi7SnWDdwjfO0SeHPFT2Mdl9VKLaxSO
         pMFMIZEMSxU0iUmGWZ3ShPvt9zALhTf1gZitaPDfsQ1NSOCc+vNStpduMi07qUDcDn3a
         7qvxcYNtM3GFUCOd873cIzfcwgNHDo2u0yt9hY+3J9L8Rl0MDzrmqBalZCZrFCob7WpD
         hg7n2W1UIkG9TFd2N4dt1aqeM9Z5WMF8gQVMys9wpb674zLyk/52WRtNwz7sXC9Wc/7e
         ZA3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=+ZOfF/soDsYZ5iDD43aPaS2YrTumbUMkNu6/xlZnXrI=;
        b=DRtneSkkma9djSY8D2KeycWC2xN5Sxd9cXKPgLvvFTJyEIQYr/KpLrNwynKnQST2FM
         9pM4WIRjnkOv150+OO8cqBQi8TGg0Pa4fiBcPtmZWLjI/5vb6xSUvsiVmlrFPu7U/znY
         IPJQrHRY7dJoD53ekp05FPdKd1Q/Ca4Ty5DSrzCWNRrwBCPkt+R0Qt63CkyjB/0JejYZ
         x3wBZ5YdHxyr8v2JWEsfpPgCCrYZdkRUgVGWR//Z+VOs6EfRVZqXMcdsC4AzZRneuYRa
         mlDRv0o1y0PTjV80K50G4Pqp1RTEaEXcg+SLZpsICt1mzS8bn7mPnQciKxh+n8bbPIG4
         7keQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id f80si635014ilf.3.2020.09.10.09.37.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 09:37:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: PevMzp+AYjrUbGIzqf/F4q/jF0G63mORMiwnJzsOpyDYL4Cv8Jgq6q9qpwUOVPNEI/fLR1IEWQ
 6zcnrfrKJuyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="156036059"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; 
   d="gz'50?scan'50,208,50";a="156036059"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2020 09:37:08 -0700
IronPort-SDR: s9IC9Xr2qADEqJWYBPUIuJr5WTUot1+9eK2MuI2eZxIXxTEWyfjaA6zcdee+xzGMnvYCtFAdIG
 1xLP4jLrfltQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; 
   d="gz'50?scan'50,208,50";a="300609835"
Received: from lkp-server01.sh.intel.com (HELO 12ff3cf3f2e9) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 10 Sep 2020 09:37:05 -0700
Received: from kbuild by 12ff3cf3f2e9 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kGPZI-0000ve-Gt; Thu, 10 Sep 2020 16:37:04 +0000
Date: Fri, 11 Sep 2020 00:36:07 +0800
From: kernel test robot <lkp@intel.com>
To: Randall Huang <huangrandall@google.com>, dgilbert@interlog.com,
	jejb@linux.ibm.com, martin.petersen@oracle.com,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	huangrandall@google.com
Subject: Re: [PATCH] scsi: clear UAC before sending SG_IO
Message-ID: <202009110037.O3SmlcCN%lkp@intel.com>
References: <20200910101513.2900079-1-huangrandall@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
In-Reply-To: <20200910101513.2900079-1-huangrandall@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--DocE+STaALJfprDB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Randall,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on mkp-scsi/for-next]
[also build test ERROR on scsi/for-next v5.9-rc4 next-20200910]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Randall-Huang/scsi-clear-UAC-before-sending-SG_IO/20200910-181617
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-next
config: x86_64-randconfig-r022-20200909 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/scsi/sg.c:938:10: error: use of undeclared identifier 'SCSI_UFS_REQUEST_SENSE'
                   _cmd = SCSI_UFS_REQUEST_SENSE;
                          ^
>> drivers/scsi/sg.c:939:26: error: no member named 'wlun_clr_uac' in 'struct Scsi_Host'
                   if (sdp->device->host->wlun_clr_uac) {
                       ~~~~~~~~~~~~~~~~~  ^
   drivers/scsi/sg.c:941:23: error: no member named 'wlun_clr_uac' in 'struct Scsi_Host'
                           sdp->device->host->wlun_clr_uac = false;
                           ~~~~~~~~~~~~~~~~~  ^
   3 errors generated.

# https://github.com/0day-ci/linux/commit/ff032a89412d0cf4592575b5e8f5385b223d2261
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Randall-Huang/scsi-clear-UAC-before-sending-SG_IO/20200910-181617
git checkout ff032a89412d0cf4592575b5e8f5385b223d2261
vim +/SCSI_UFS_REQUEST_SENSE +938 drivers/scsi/sg.c

   916	
   917	static long
   918	sg_ioctl_common(struct file *filp, Sg_device *sdp, Sg_fd *sfp,
   919			unsigned int cmd_in, void __user *p)
   920	{
   921		int __user *ip = p;
   922		int result, val, read_only;
   923		Sg_request *srp;
   924		unsigned long iflags;
   925		int _cmd;
   926	
   927		SCSI_LOG_TIMEOUT(3, sg_printk(KERN_INFO, sdp,
   928					   "sg_ioctl: cmd=0x%x\n", (int) cmd_in));
   929		read_only = (O_RDWR != (filp->f_flags & O_ACCMODE));
   930	
   931		switch (cmd_in) {
   932		case SG_IO:
   933			if (atomic_read(&sdp->detaching))
   934				return -ENODEV;
   935			if (!scsi_block_when_processing_errors(sdp->device))
   936				return -ENXIO;
   937	
 > 938			_cmd = SCSI_UFS_REQUEST_SENSE;
 > 939			if (sdp->device->host->wlun_clr_uac) {
   940				sdp->device->host->hostt->ioctl(sdp->device, _cmd, NULL);
   941				sdp->device->host->wlun_clr_uac = false;
   942			}
   943	
   944			result = sg_new_write(sfp, filp, p, SZ_SG_IO_HDR,
   945					 1, read_only, 1, &srp);
   946			if (result < 0)
   947				return result;
   948			result = wait_event_interruptible(sfp->read_wait,
   949				(srp_done(sfp, srp) || atomic_read(&sdp->detaching)));
   950			if (atomic_read(&sdp->detaching))
   951				return -ENODEV;
   952			write_lock_irq(&sfp->rq_list_lock);
   953			if (srp->done) {
   954				srp->done = 2;
   955				write_unlock_irq(&sfp->rq_list_lock);
   956				result = sg_new_read(sfp, p, SZ_SG_IO_HDR, srp);
   957				return (result < 0) ? result : 0;
   958			}
   959			srp->orphan = 1;
   960			write_unlock_irq(&sfp->rq_list_lock);
   961			return result;	/* -ERESTARTSYS because signal hit process */
   962		case SG_SET_TIMEOUT:
   963			result = get_user(val, ip);
   964			if (result)
   965				return result;
   966			if (val < 0)
   967				return -EIO;
   968			if (val >= mult_frac((s64)INT_MAX, USER_HZ, HZ))
   969				val = min_t(s64, mult_frac((s64)INT_MAX, USER_HZ, HZ),
   970					    INT_MAX);
   971			sfp->timeout_user = val;
   972			sfp->timeout = mult_frac(val, HZ, USER_HZ);
   973	
   974			return 0;
   975		case SG_GET_TIMEOUT:	/* N.B. User receives timeout as return value */
   976					/* strange ..., for backward compatibility */
   977			return sfp->timeout_user;
   978		case SG_SET_FORCE_LOW_DMA:
   979			/*
   980			 * N.B. This ioctl never worked properly, but failed to
   981			 * return an error value. So returning '0' to keep compability
   982			 * with legacy applications.
   983			 */
   984			return 0;
   985		case SG_GET_LOW_DMA:
   986			return put_user((int) sdp->device->host->unchecked_isa_dma, ip);
   987		case SG_GET_SCSI_ID:
   988			{
   989				sg_scsi_id_t v;
   990	
   991				if (atomic_read(&sdp->detaching))
   992					return -ENODEV;
   993				memset(&v, 0, sizeof(v));
   994				v.host_no = sdp->device->host->host_no;
   995				v.channel = sdp->device->channel;
   996				v.scsi_id = sdp->device->id;
   997				v.lun = sdp->device->lun;
   998				v.scsi_type = sdp->device->type;
   999				v.h_cmd_per_lun = sdp->device->host->cmd_per_lun;
  1000				v.d_queue_depth = sdp->device->queue_depth;
  1001				if (copy_to_user(p, &v, sizeof(sg_scsi_id_t)))
  1002					return -EFAULT;
  1003				return 0;
  1004			}
  1005		case SG_SET_FORCE_PACK_ID:
  1006			result = get_user(val, ip);
  1007			if (result)
  1008				return result;
  1009			sfp->force_packid = val ? 1 : 0;
  1010			return 0;
  1011		case SG_GET_PACK_ID:
  1012			read_lock_irqsave(&sfp->rq_list_lock, iflags);
  1013			list_for_each_entry(srp, &sfp->rq_list, entry) {
  1014				if ((1 == srp->done) && (!srp->sg_io_owned)) {
  1015					read_unlock_irqrestore(&sfp->rq_list_lock,
  1016							       iflags);
  1017					return put_user(srp->header.pack_id, ip);
  1018				}
  1019			}
  1020			read_unlock_irqrestore(&sfp->rq_list_lock, iflags);
  1021			return put_user(-1, ip);
  1022		case SG_GET_NUM_WAITING:
  1023			read_lock_irqsave(&sfp->rq_list_lock, iflags);
  1024			val = 0;
  1025			list_for_each_entry(srp, &sfp->rq_list, entry) {
  1026				if ((1 == srp->done) && (!srp->sg_io_owned))
  1027					++val;
  1028			}
  1029			read_unlock_irqrestore(&sfp->rq_list_lock, iflags);
  1030			return put_user(val, ip);
  1031		case SG_GET_SG_TABLESIZE:
  1032			return put_user(sdp->sg_tablesize, ip);
  1033		case SG_SET_RESERVED_SIZE:
  1034			result = get_user(val, ip);
  1035			if (result)
  1036				return result;
  1037	                if (val < 0)
  1038	                        return -EINVAL;
  1039			val = min_t(int, val,
  1040				    max_sectors_bytes(sdp->device->request_queue));
  1041			mutex_lock(&sfp->f_mutex);
  1042			if (val != sfp->reserve.bufflen) {
  1043				if (sfp->mmap_called ||
  1044				    sfp->res_in_use) {
  1045					mutex_unlock(&sfp->f_mutex);
  1046					return -EBUSY;
  1047				}
  1048	
  1049				sg_remove_scat(sfp, &sfp->reserve);
  1050				sg_build_reserve(sfp, val);
  1051			}
  1052			mutex_unlock(&sfp->f_mutex);
  1053			return 0;
  1054		case SG_GET_RESERVED_SIZE:
  1055			val = min_t(int, sfp->reserve.bufflen,
  1056				    max_sectors_bytes(sdp->device->request_queue));
  1057			return put_user(val, ip);
  1058		case SG_SET_COMMAND_Q:
  1059			result = get_user(val, ip);
  1060			if (result)
  1061				return result;
  1062			sfp->cmd_q = val ? 1 : 0;
  1063			return 0;
  1064		case SG_GET_COMMAND_Q:
  1065			return put_user((int) sfp->cmd_q, ip);
  1066		case SG_SET_KEEP_ORPHAN:
  1067			result = get_user(val, ip);
  1068			if (result)
  1069				return result;
  1070			sfp->keep_orphan = val;
  1071			return 0;
  1072		case SG_GET_KEEP_ORPHAN:
  1073			return put_user((int) sfp->keep_orphan, ip);
  1074		case SG_NEXT_CMD_LEN:
  1075			result = get_user(val, ip);
  1076			if (result)
  1077				return result;
  1078			if (val > SG_MAX_CDB_SIZE)
  1079				return -ENOMEM;
  1080			sfp->next_cmd_len = (val > 0) ? val : 0;
  1081			return 0;
  1082		case SG_GET_VERSION_NUM:
  1083			return put_user(sg_version_num, ip);
  1084		case SG_GET_ACCESS_COUNT:
  1085			/* faked - we don't have a real access count anymore */
  1086			val = (sdp->device ? 1 : 0);
  1087			return put_user(val, ip);
  1088		case SG_GET_REQUEST_TABLE:
  1089			{
  1090				sg_req_info_t *rinfo;
  1091	
  1092				rinfo = kcalloc(SG_MAX_QUEUE, SZ_SG_REQ_INFO,
  1093						GFP_KERNEL);
  1094				if (!rinfo)
  1095					return -ENOMEM;
  1096				read_lock_irqsave(&sfp->rq_list_lock, iflags);
  1097				sg_fill_request_table(sfp, rinfo);
  1098				read_unlock_irqrestore(&sfp->rq_list_lock, iflags);
  1099		#ifdef CONFIG_COMPAT
  1100				if (in_compat_syscall())
  1101					result = put_compat_request_table(p, rinfo);
  1102				else
  1103		#endif
  1104					result = copy_to_user(p, rinfo,
  1105							      SZ_SG_REQ_INFO * SG_MAX_QUEUE);
  1106				result = result ? -EFAULT : 0;
  1107				kfree(rinfo);
  1108				return result;
  1109			}
  1110		case SG_EMULATED_HOST:
  1111			if (atomic_read(&sdp->detaching))
  1112				return -ENODEV;
  1113			return put_user(sdp->device->host->hostt->emulated, ip);
  1114		case SCSI_IOCTL_SEND_COMMAND:
  1115			if (atomic_read(&sdp->detaching))
  1116				return -ENODEV;
  1117			return sg_scsi_ioctl(sdp->device->request_queue, NULL, filp->f_mode, p);
  1118		case SG_SET_DEBUG:
  1119			result = get_user(val, ip);
  1120			if (result)
  1121				return result;
  1122			sdp->sgdebug = (char) val;
  1123			return 0;
  1124		case BLKSECTGET:
  1125			return put_user(max_sectors_bytes(sdp->device->request_queue),
  1126					ip);
  1127		case BLKTRACESETUP:
  1128			return blk_trace_setup(sdp->device->request_queue,
  1129					       sdp->disk->disk_name,
  1130					       MKDEV(SCSI_GENERIC_MAJOR, sdp->index),
  1131					       NULL, p);
  1132		case BLKTRACESTART:
  1133			return blk_trace_startstop(sdp->device->request_queue, 1);
  1134		case BLKTRACESTOP:
  1135			return blk_trace_startstop(sdp->device->request_queue, 0);
  1136		case BLKTRACETEARDOWN:
  1137			return blk_trace_remove(sdp->device->request_queue);
  1138		case SCSI_IOCTL_GET_IDLUN:
  1139		case SCSI_IOCTL_GET_BUS_NUMBER:
  1140		case SCSI_IOCTL_PROBE_HOST:
  1141		case SG_GET_TRANSFORM:
  1142		case SG_SCSI_RESET:
  1143			if (atomic_read(&sdp->detaching))
  1144				return -ENODEV;
  1145			break;
  1146		default:
  1147			if (read_only)
  1148				return -EPERM;	/* don't know so take safe approach */
  1149			break;
  1150		}
  1151	
  1152		result = scsi_ioctl_block_when_processing_errors(sdp->device,
  1153				cmd_in, filp->f_flags & O_NDELAY);
  1154		if (result)
  1155			return result;
  1156	
  1157		return -ENOIOCTLCMD;
  1158	}
  1159	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009110037.O3SmlcCN%25lkp%40intel.com.

--DocE+STaALJfprDB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--DocE+STaALJfprDB--
