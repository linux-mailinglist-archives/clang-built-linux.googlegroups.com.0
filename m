Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRW44T2AKGQEZZLLC3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 721061AD51A
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 06:19:20 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id 24sf1038983oix.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 21:19:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587097159; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rj7ACru75jfGAyGvhhQQqYarVQvogqmVGv0S3nkUH8jH0NubzFa4m1mUxKnVPdqgQn
         NuIRwtnzER4ZPVIQuul4om4j3T/Z7OgG/gUk9LglJjSVKCQLJOmbL1s1QEOFHbIwYze9
         CbNmpMecMr1lhkdwGBGNirCqJZnfpn79v/kaQVRNSqpSAKnpoVtojZTvWnpyKudRkY+k
         yyKEvdp9nB0XjFdNSPWGwAUIkcgfTmLeA5PwEPGfSxY+sk4P7kDJ8qaP0Lm4gnBxvBNB
         TVp831Y2McglLVt5WANobHoBPfVcgbQsWRP5tQSPlBAXvvtldESFaFO0YSZBH4ndlK9w
         jjUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=KzqsjgzikWdS3nHpDPzSqzQb2AWvqf1rihejsNTezF4=;
        b=sNCWMmnh7+1vN90iGuNx++JwKDm41xwyDJkMj24hjEU0Z9kv/cWioPEiiOCu6B9+KA
         ABKuZww9DvcZeVAnAm7cAf+horJ+etaWrajg6LjpvG8gDII1X5LEhkymt2PIC2hcV19W
         HqIKb8v5gYaEq1/kYhctziq83XTrONlWvdh6xX4+/oAiTrkextLfWHp+q1MEi0MgQHbN
         GS2LMwTxfJXrZzfUR2Ak8wp+Whl869ryXzRZdXo8uTHabJqXQhjZH8dUCSFmSxbh5lc3
         ywOEgotlvfCqPJa37oxyXmMJfEG66nIgOXsa0oiHddZy/kmUma44A9U95k4qwZv3L7BX
         Q5IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KzqsjgzikWdS3nHpDPzSqzQb2AWvqf1rihejsNTezF4=;
        b=W2dS9e5K6kl6n1tJwBtPHR98yHq3EOIe+Tbpg8g7rWc/C5fLhap/hEtXYHxNQF3KUp
         VR5F+BwkiRoguQZErEiV80ZqOgOci10sJi5F4LSOhwdTNDD6jtFcStcMk/Nun22TWicg
         vXfzYhan286b9wuuX77tq3uHGr4xe88sshHLgMitLRTrn1bFKkXqSM6AS8E0S1n7A3KF
         rZ3YKzOtgd+k4y0p6FsWROKrYxfV4A2TgoQHrsvpVX4XvMJd7M+WNbaMBGKFS16IFZzh
         aF5J8u1tJ4FAa2Y7ktqPDFY8etnRrmBy2TaYAJmv5ARX4pN7HQaKuHuxh64+h5fNlgy7
         Fbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KzqsjgzikWdS3nHpDPzSqzQb2AWvqf1rihejsNTezF4=;
        b=FD5Mb1E+MDh9Kw6gjRHOCe2rKSkiy4Nrl95p0JQrqLMseNlXb9sVzXVyepMH3zOzRO
         dNrqUqFiB5wJ8735sw83phJuwO98EbVbmfJXIJ+HLNLCU5WrZ2lS3EN2dUD+RTuyWqM9
         RlzDIcrKWaPQBsDCeOQI1QTerTltkUzuCLgKQz2BHLRNZbGRScE66j6XK6UYQdeeqCD7
         JbNr/dlgvF91puoLlK4CHuiLWP1GGoPZmXpE+JO0ljxiW8dEUG6wqdJDBvFTxTYJGDrm
         scPfLBp+6pkdvKK39sJ5ViFhyH10WxKrRDNOYTfHGNoSN5iuhE+VjSAdToQ+bouxJNZ1
         bAtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puarvi0W84TvbMcZlfKDUOJdOTZ79seXaTjAzZ3erofo8ygRQ3b6
	N3EgZWqq1hmzw+X+GhcRS2Q=
X-Google-Smtp-Source: APiQypKLii1PhBh6zf8ZogTK1We6tJq+MvSeYnTnVwkeCnZ5rptCwsBZv8VVGhfsY1BEUtr+qA3y3A==
X-Received: by 2002:a9d:798f:: with SMTP id h15mr1157572otm.284.1587097159195;
        Thu, 16 Apr 2020 21:19:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls151615otb.7.gmail; Thu, 16 Apr
 2020 21:19:18 -0700 (PDT)
X-Received: by 2002:a9d:1a3:: with SMTP id e32mr1198911ote.206.1587097158526;
        Thu, 16 Apr 2020 21:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587097158; cv=none;
        d=google.com; s=arc-20160816;
        b=I602pBQK7+Svkmpoh3F1oK6Ob9tD9uzwZMgaQbgl6bnUlrsdBWsPzZ6MnmqoGog6Ik
         h95Vfihzu8ROv1hDKz6J4ZDkGCfEHeHileN1H87i4goTgGtER9rZjMHlZdeROKVdixaY
         JixDpH69Id7rgXj/hXMGmxQCOhsoxnwlaoaWyZ16zANkA+4j6eLxPbglPSIni0CHAdYu
         CAuxLegVxMqIWjng4h78K2kwSWE26CoNJ9iVKV3uCDjxplVSIcbmbnBnCZ8OnOIDCIdz
         t6O5/8ChQvb+FrnU2Ljt16oL9OgRwrv5qw3vbS7g/pwp6hD7iIKbCqUdtKbrCwKrP6za
         PKBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=chPyI+5uEo7oXdc2Zg3oj3WVUmOguut3E2+Qjpf4rPM=;
        b=aEWw7Ln7A3RCE5jTBcvPiZfz4iniKfoeQsHwmWqyHBCx+QduvBiI6KUWCYWCUD9twz
         jLSrNtxNXWh79dtB6mcee2RWJVC/cz7s2SnAkyBvO+5hLrH81LyyRQnvqorb8IAhMri1
         EmVIucMILqyADG3cRPEzgyp9MtBnZWN7vwkMeB+buM+lyvdWmBBXWeDqA23d+vW1Ik6i
         aPxrss0zskjbvZJ//IpFIc0PaQn5rsVPj5g5TkCMX2VdS+QxIkyrTkWkS/qJheFv8EtX
         2oYyYcud2ckcG6Uvl6MNzQ37LfRejzOL5/s583tr2j7/SZ+3Nm6CBHQm8IpO8a1Wca94
         ORFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id f7si209694oti.0.2020.04.16.21.19.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Apr 2020 21:19:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: CbrisQYkCqRfnuHkO/3RC1svYXKIps6UBxgBcw6VlgA2/eSpniZ+vh5ajkGmMx8ZB/z5PRECHB
 7wCk38TUFQbQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2020 21:19:16 -0700
IronPort-SDR: dqWN14UiRpqJ9QtYT5XgHOj+j3kMZkt9pcwYjfOZO0Oz3024LitOjPmMNVJ04LrVT3ljS91cau
 mOV9at0dp9Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,393,1580803200"; 
   d="gz'50?scan'50,208,50";a="364214193"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 16 Apr 2020 21:19:15 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jPITC-0009He-Gz; Fri, 17 Apr 2020 12:19:14 +0800
Date: Fri, 17 Apr 2020 12:18:54 +0800
From: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: drivers/scsi/qla2xxx/qla_nx2.c:3226:1: warning: stack frame size of
 2208 bytes in function 'qla8044_collect_md_data'
Message-ID: <202004171248.AsMqjBmk%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--5vNYLRcllDrimb99
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: linux-kernel@vger.kernel.org
TO: Dirk Mueller <dmueller@suse.com>
CC: Rob Herring <robh@kernel.org>
CC: David Gibson <david@gibson.dropbear.id.au>

Hi Dirk,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   7a56db0299f9d43b4fe076838150c5cc293df131
commit: e33a814e772cdc36436c8c188d8c42d019fda639 scripts/dtc: Remove redundant YYLOC global declaration
date:   3 weeks ago
config: powerpc-defconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 40d139c620f83509fe18acbff5ec358298e99def)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git checkout e33a814e772cdc36436c8c188d8c42d019fda639
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/scsi/qla2xxx/qla_nx2.c:3226:1: warning: stack frame size of 2208 bytes in function 'qla8044_collect_md_data' [-Wframe-larger-than=]
   qla8044_collect_md_data(struct scsi_qla_host *vha)
   ^
   1 warning generated.

vim +/qla8044_collect_md_data +3226 drivers/scsi/qla2xxx/qla_nx2.c

804df800256c1f Pratik Mohanty 2014-04-11  3219  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3220  /*
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3221   *
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3222   * qla8044_collect_md_data - Retrieve firmware minidump data.
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3223   * @ha: pointer to adapter structure
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3224   **/
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3225  int
7ec0effd30bb4b Atul Deshmukh  2013-08-27 @3226  qla8044_collect_md_data(struct scsi_qla_host *vha)
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3227  {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3228  	int num_entry_hdr = 0;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3229  	struct qla8044_minidump_entry_hdr *entry_hdr;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3230  	struct qla8044_minidump_template_hdr *tmplt_hdr;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3231  	uint32_t *data_ptr;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3232  	uint32_t data_collected = 0, f_capture_mask;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3233  	int i, rval = QLA_FUNCTION_FAILED;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3234  	uint64_t now;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3235  	uint32_t timestamp, idc_control;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3236  	struct qla_hw_data *ha = vha->hw;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3237  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3238  	if (!ha->md_dump) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3239  		ql_log(ql_log_info, vha, 0xb101,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3240  		    "%s(%ld) No buffer to dump\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3241  		    __func__, vha->host_no);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3242  		return rval;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3243  	}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3244  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3245  	if (ha->fw_dumped) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3246  		ql_log(ql_log_warn, vha, 0xb10d,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3247  		    "Firmware has been previously dumped (%p) "
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3248  		    "-- ignoring request.\n", ha->fw_dump);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3249  		goto md_failed;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3250  	}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3251  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3252  	ha->fw_dumped = 0;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3253  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3254  	if (!ha->md_tmplt_hdr || !ha->md_dump) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3255  		ql_log(ql_log_warn, vha, 0xb10e,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3256  		    "Memory not allocated for minidump capture\n");
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3257  		goto md_failed;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3258  	}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3259  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3260  	qla8044_idc_lock(ha);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3261  	idc_control = qla8044_rd_reg(ha, QLA8044_IDC_DRV_CTRL);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3262  	if (idc_control & GRACEFUL_RESET_BIT1) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3263  		ql_log(ql_log_warn, vha, 0xb112,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3264  		    "Forced reset from application, "
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3265  		    "ignore minidump capture\n");
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3266  		qla8044_wr_reg(ha, QLA8044_IDC_DRV_CTRL,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3267  		    (idc_control & ~GRACEFUL_RESET_BIT1));
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3268  		qla8044_idc_unlock(ha);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3269  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3270  		goto md_failed;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3271  	}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3272  	qla8044_idc_unlock(ha);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3273  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3274  	if (qla82xx_validate_template_chksum(vha)) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3275  		ql_log(ql_log_info, vha, 0xb109,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3276  		    "Template checksum validation error\n");
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3277  		goto md_failed;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3278  	}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3279  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3280  	tmplt_hdr = (struct qla8044_minidump_template_hdr *)
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3281  		ha->md_tmplt_hdr;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3282  	data_ptr = (uint32_t *)((uint8_t *)ha->md_dump);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3283  	num_entry_hdr = tmplt_hdr->num_of_entries;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3284  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3285  	ql_dbg(ql_dbg_p3p, vha, 0xb11a,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3286  	    "Capture Mask obtained: 0x%x\n", tmplt_hdr->capture_debug_level);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3287  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3288  	f_capture_mask = tmplt_hdr->capture_debug_level & 0xFF;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3289  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3290  	/* Validate whether required debug level is set */
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3291  	if ((f_capture_mask & 0x3) != 0x3) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3292  		ql_log(ql_log_warn, vha, 0xb10f,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3293  		    "Minimum required capture mask[0x%x] level not set\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3294  		    f_capture_mask);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3295  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3296  	}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3297  	tmplt_hdr->driver_capture_mask = ql2xmdcapmask;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3298  	ql_log(ql_log_info, vha, 0xb102,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3299  	    "[%s]: starting data ptr: %p\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3300  	   __func__, data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3301  	ql_log(ql_log_info, vha, 0xb10b,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3302  	   "[%s]: no of entry headers in Template: 0x%x\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3303  	   __func__, num_entry_hdr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3304  	ql_log(ql_log_info, vha, 0xb10c,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3305  	    "[%s]: Total_data_size 0x%x, %d obtained\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3306  	   __func__, ha->md_dump_size, ha->md_dump_size);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3307  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3308  	/* Update current timestamp before taking dump */
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3309  	now = get_jiffies_64();
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3310  	timestamp = (u32)(jiffies_to_msecs(now) / 1000);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3311  	tmplt_hdr->driver_timestamp = timestamp;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3312  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3313  	entry_hdr = (struct qla8044_minidump_entry_hdr *)
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3314  		(((uint8_t *)ha->md_tmplt_hdr) + tmplt_hdr->first_entry_offset);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3315  	tmplt_hdr->saved_state_array[QLA8044_SS_OCM_WNDREG_INDEX] =
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3316  	    tmplt_hdr->ocm_window_reg[ha->portnum];
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3317  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3318  	/* Walk through the entry headers - validate/perform required action */
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3319  	for (i = 0; i < num_entry_hdr; i++) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3320  		if (data_collected > ha->md_dump_size) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3321  			ql_log(ql_log_info, vha, 0xb103,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3322  			    "Data collected: [0x%x], "
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3323  			    "Total Dump size: [0x%x]\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3324  			    data_collected, ha->md_dump_size);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3325  			return rval;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3326  		}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3327  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3328  		if (!(entry_hdr->d_ctrl.entry_capture_mask &
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3329  		      ql2xmdcapmask)) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3330  			entry_hdr->d_ctrl.driver_flags |=
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3331  			    QLA82XX_DBG_SKIPPED_FLAG;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3332  			goto skip_nxt_entry;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3333  		}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3334  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3335  		ql_dbg(ql_dbg_p3p, vha, 0xb104,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3336  		    "Data collected: [0x%x], Dump size left:[0x%x]\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3337  		    data_collected,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3338  		    (ha->md_dump_size - data_collected));
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3339  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3340  		/* Decode the entry type and take required action to capture
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3341  		 * debug data
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3342  		 */
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3343  		switch (entry_hdr->entry_type) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3344  		case QLA82XX_RDEND:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3345  			qla8044_mark_entry_skipped(vha, entry_hdr, i);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3346  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3347  		case QLA82XX_CNTRL:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3348  			rval = qla8044_minidump_process_control(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3349  			    entry_hdr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3350  			if (rval != QLA_SUCCESS) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3351  				qla8044_mark_entry_skipped(vha, entry_hdr, i);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3352  				goto md_failed;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3353  			}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3354  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3355  		case QLA82XX_RDCRB:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3356  			qla8044_minidump_process_rdcrb(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3357  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3358  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3359  		case QLA82XX_RDMEM:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3360  			rval = qla8044_minidump_pex_dma_read(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3361  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3362  			if (rval != QLA_SUCCESS) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3363  				rval = qla8044_minidump_process_rdmem(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3364  				    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3365  				if (rval != QLA_SUCCESS) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3366  					qla8044_mark_entry_skipped(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3367  					    entry_hdr, i);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3368  					goto md_failed;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3369  				}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3370  			}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3371  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3372  		case QLA82XX_BOARD:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3373  		case QLA82XX_RDROM:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3374  			rval = qla8044_minidump_process_rdrom(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3375  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3376  			if (rval != QLA_SUCCESS) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3377  				qla8044_mark_entry_skipped(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3378  				    entry_hdr, i);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3379  			}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3380  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3381  		case QLA82XX_L2DTG:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3382  		case QLA82XX_L2ITG:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3383  		case QLA82XX_L2DAT:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3384  		case QLA82XX_L2INS:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3385  			rval = qla8044_minidump_process_l2tag(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3386  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3387  			if (rval != QLA_SUCCESS) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3388  				qla8044_mark_entry_skipped(vha, entry_hdr, i);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3389  				goto md_failed;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3390  			}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3391  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3392  		case QLA8044_L1DTG:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3393  		case QLA8044_L1ITG:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3394  		case QLA82XX_L1DAT:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3395  		case QLA82XX_L1INS:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3396  			qla8044_minidump_process_l1cache(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3397  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3398  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3399  		case QLA82XX_RDOCM:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3400  			qla8044_minidump_process_rdocm(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3401  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3402  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3403  		case QLA82XX_RDMUX:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3404  			qla8044_minidump_process_rdmux(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3405  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3406  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3407  		case QLA82XX_QUEUE:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3408  			qla8044_minidump_process_queue(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3409  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3410  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3411  		case QLA8044_POLLRD:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3412  			rval = qla8044_minidump_process_pollrd(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3413  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3414  			if (rval != QLA_SUCCESS)
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3415  				qla8044_mark_entry_skipped(vha, entry_hdr, i);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3416  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3417  		case QLA8044_RDMUX2:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3418  			qla8044_minidump_process_rdmux2(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3419  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3420  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3421  		case QLA8044_POLLRDMWR:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3422  			rval = qla8044_minidump_process_pollrdmwr(vha,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3423  			    entry_hdr, &data_ptr);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3424  			if (rval != QLA_SUCCESS)
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3425  				qla8044_mark_entry_skipped(vha, entry_hdr, i);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3426  			break;
804df800256c1f Pratik Mohanty 2014-04-11  3427  		case QLA8044_RDDFE:
804df800256c1f Pratik Mohanty 2014-04-11  3428  			rval = qla8044_minidump_process_rddfe(vha, entry_hdr,
804df800256c1f Pratik Mohanty 2014-04-11  3429  			    &data_ptr);
804df800256c1f Pratik Mohanty 2014-04-11  3430  			if (rval != QLA_SUCCESS)
804df800256c1f Pratik Mohanty 2014-04-11  3431  				qla8044_mark_entry_skipped(vha, entry_hdr, i);
804df800256c1f Pratik Mohanty 2014-04-11  3432  			break;
804df800256c1f Pratik Mohanty 2014-04-11  3433  		case QLA8044_RDMDIO:
804df800256c1f Pratik Mohanty 2014-04-11  3434  			rval = qla8044_minidump_process_rdmdio(vha, entry_hdr,
804df800256c1f Pratik Mohanty 2014-04-11  3435  			    &data_ptr);
804df800256c1f Pratik Mohanty 2014-04-11  3436  			if (rval != QLA_SUCCESS)
804df800256c1f Pratik Mohanty 2014-04-11  3437  				qla8044_mark_entry_skipped(vha, entry_hdr, i);
804df800256c1f Pratik Mohanty 2014-04-11  3438  			break;
804df800256c1f Pratik Mohanty 2014-04-11  3439  		case QLA8044_POLLWR:
804df800256c1f Pratik Mohanty 2014-04-11  3440  			rval = qla8044_minidump_process_pollwr(vha, entry_hdr,
804df800256c1f Pratik Mohanty 2014-04-11  3441  			    &data_ptr);
804df800256c1f Pratik Mohanty 2014-04-11  3442  			if (rval != QLA_SUCCESS)
804df800256c1f Pratik Mohanty 2014-04-11  3443  				qla8044_mark_entry_skipped(vha, entry_hdr, i);
804df800256c1f Pratik Mohanty 2014-04-11  3444  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3445  		case QLA82XX_RDNOP:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3446  		default:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3447  			qla8044_mark_entry_skipped(vha, entry_hdr, i);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3448  			break;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3449  		}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3450  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3451  		data_collected = (uint8_t *)data_ptr -
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3452  		    (uint8_t *)((uint8_t *)ha->md_dump);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3453  skip_nxt_entry:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3454  		/*
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3455  		 * next entry in the template
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3456  		 */
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3457  		entry_hdr = (struct qla8044_minidump_entry_hdr *)
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3458  		    (((uint8_t *)entry_hdr) + entry_hdr->entry_size);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3459  	}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3460  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3461  	if (data_collected != ha->md_dump_size) {
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3462  		ql_log(ql_log_info, vha, 0xb105,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3463  		    "Dump data mismatch: Data collected: "
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3464  		    "[0x%x], total_data_size:[0x%x]\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3465  		    data_collected, ha->md_dump_size);
edaa5c74177a68 Saurav Kashyap 2014-04-11  3466  		rval = QLA_FUNCTION_FAILED;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3467  		goto md_failed;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3468  	}
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3469  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3470  	ql_log(ql_log_info, vha, 0xb110,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3471  	    "Firmware dump saved to temp buffer (%ld/%p %ld/%p).\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3472  	    vha->host_no, ha->md_tmplt_hdr, vha->host_no, ha->md_dump);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3473  	ha->fw_dumped = 1;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3474  	qla2x00_post_uevent_work(vha, QLA_UEVENT_CODE_FW_DUMP);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3475  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3476  
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3477  	ql_log(ql_log_info, vha, 0xb106,
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3478  	    "Leaving fn: %s Last entry: 0x%x\n",
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3479  	    __func__, i);
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3480  md_failed:
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3481  	return rval;
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3482  }
7ec0effd30bb4b Atul Deshmukh  2013-08-27  3483  

:::::: The code at line 3226 was first introduced by commit
:::::: 7ec0effd30bb4b1379cd2f5ed1a7bd6b9ec49cfd [SCSI] qla2xxx: Add support for ISP8044.

:::::: TO: Atul Deshmukh <atul.deshmukh@qlogic.com>
:::::: CC: James Bottomley <JBottomley@Parallels.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004171248.AsMqjBmk%25lkp%40intel.com.

--5vNYLRcllDrimb99
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICDIqmV4AAy5jb25maWcAlDzZduM2su/5Cp3kZeYhHe9pzz1+AElQQkQSbICULL/wuG25
xzfeRrYz6b+/VQCXAgjKffvMdJpVhb1QO/TLT7/M2Pvb8+P12/3N9cPD99m37dN2d/22vZ3d
3T9s/2eWyFkhqxlPRPUJiLP7p/e/f3t5/u9293IzO/109ung193N4Wy53T1tH2bx89Pd/bd3
6OD++emnX36C//0CwMcX6Gv3r9nNw/XTt9lf290roGeHh58OPh3M/vHt/u1fv/0Gfz/e73bP
u98eHv56bF52z/+7vXmbnRzcHh6f35wdHdx9Pj49OL/bHn6+vvl6d3e6vTk+/Xx0/nl7fn67
vfsnDBXLIhXzZh7HzYorLWRxcdABASZ0E2esmF9874H42dMeHh7AH9IgZkWTiWJJGsTNgumG
6byZy0oGEaKANnxACfWlWUtFeolqkSWVyHlTsSjjjZaqGrDVQnGWQDephL+ARGNTs5NzczgP
s9ft2/vLsGBRiKrhxaphag4TzkV1cXyEG9/OTealgGEqrqvZ/evs6fkNe+haZzJmWbcHP/8c
Ajespos18280yypCv2Ar3iy5KnjWzK9EOZBTzOXVAHeJ++n2lIG5JjxldVY1C6mrguX84ud/
PD0/bf/Zz0KvGRlZb/RKlPEIgP+Nq2yAl1KLyyb/UvOah6GjJrGSWjc5z6XaNKyqWLygq6g1
z0REl9CjWA2XKbA4s09MxQtLgQOyLOvOHtho9vr+9fX769v2kTA7L7gSseEyvZDrYYI+psn4
imdhfC7milXIAOTUVAIoDVvaKK55kbgszZM5b7gUQFgkGVcuNpE5E0UI1iwEV7jKzXgquRZI
OYkIdptKFfOkvTaCXm9dMqV522O//XTdCY/qeardY9o+3c6e77wN92dkru9qOCMPHcP1WcJ+
F5UekOZsUUxUIl42kZIsiZmu9rbeS5ZL3dRlwirecUl1/wjSNcQoZkxZcGAF0lUhm8UVSojc
nH2/SQAsYQyZiDjAqbaVgGOnbSw0rbNsqgnhLjFfIFuZfVTadNPu+2gJ/XVUnOdlBV0Vzrgd
fCWzuqiY2gRvXUtFcVY7lfVv1fXrn7M3GHd2DXN4fbt+e51d39w8vz+93T99G/ZwJVTVQIOG
xbGEsSy39UOYLXbRgZ0IdNIUcPlWzqJCVHDuwaVFOoHlyZiDQALykGxBLaIrRrkRQXABMrYx
jZyFIOrS72rYSi2CN+YHtrKXnrAyoWXWCR1zFCquZzrAuXByDeDoDOGz4ZfAoqHFaktMm7sg
bA27kWUD5xNMwUGcaD6Po0zoirKmO0FXHUaiOCKaRiztP8YQc1R0LWK5AMkFtyConLH/FAS4
SKuLw88UjnuYs0uKPx7uiiiqJejolPt9HNvN1jf/3t6+g1k2u9tev73vtq8G3K40gHWkmK7L
EqwW3RR1zpqIgSEVO7L3x+C9QucFWkJExcRzJeuSsGvJQN+Yq0B1Dejf2LmDBmDMgMBuWuQS
/kObRNmyHS7QxCIaHS/o7FImVONiBnMrBaENOnEtkmoRvD9ws0nbIEk7bCkSvQ+vkpxNTzoF
zr8yu+W3W9RzXmVRqGkJlgsVE8itOI8W458QnOBKxHwEBupWqngr4iodAaMyDUzSKOfQ9Zbx
sqdhFSPMBSYhKH0QhAOsRiYl32j+Fdoz1RSAAiPhsmnbgldeWzjAeFlKuGyozSqpePC4zEEb
K3rEZwPNRgPnJBwUVQwaPQnMR6G0JnZ4hgJ8Zex/Rc0z/GY59KZlDcYRsdJV4hnnAIgAcORA
squcOQBqthu89L5PnAslJegu8+8Qh8WNLEHtiyuOtpvhCKlyEAiOAvTJNPxjymgG8ZugzxTL
hBuWaDi6QYVn0vomvP0GPRLzEilBVTDKyqbvMtblEmYJqgqnSXbfZdpJbZSDfBPIY2RguH05
6tiR/WiZYAROrZHtuya98eRIff+7KXJBnTcijXmWwqYp2vHkchmY0mjckVnVFb/0PuHOkO5L
6SxOzAuWpYRTzQIowBi9FKAXVlp3ykcQzhOyqZWjXViyEpp3+0d2BjqJmFKCnsISSTa5c587
WMOCVmyPNruB17G12waeIIc3XAgA/wE+OsvWbKPBCg8KAOQRow3T0N3vnYdhKQ2OE7F4SRYK
Do/j7QAxT5KgNLHsDWM2vaNiTIA2llNud3fPu8frp5vtjP+1fQJDjoFxEKMpBwb6YJ+5XfQm
xA9205vFue2j0/FkTTqrI6sNHAEh85JV4B8tw+I0YyH9hn3RnlkEG6rAtGgtETqCwaISRTuw
UXAFZT451kCInjN4aGHFrhd1mmbcmjNwfBJkvVQTEzUmHjixlWA0WKFkKjKH743gMmrIOQI3
XtS3L+Ozk+6wy93zzfb19XkHDtfLy/PujZwraEoQ5ctj3Zw58r1HcEAEpt77p6Vjs8ccDe6y
DvsUcs3V6X702X707/vRn/ejz330aBfICQAsLYlDwTKUA8T8X2kiGM3VtRZuo8sMBEGZg8dW
oZfvdqpYghGnvJ4AEy4laBtgq3npgseQlpCNCFnpny/CJi0wuiA0JQ0zB2JI2FGeAysLxyTr
p1LCilpPwsUakRJXVAiYME+jcxreox+FMhbqxdHByWfaVSKlingrj9t7MWb6/twSLY+JMYQX
MEIxWiSCORESxMBRVrAFFhnYp7OTSJCVOedq9jDPYZdVgd4jmKngzF0cne8jEMXF4UmYoBOH
XUeDL7iHDvr73VEHYOFbI93GHhSn1jX6xR3K6JUmFQoEXryoaZAcTgIDhxenh0c9KBdgeAv3
kNesiheJpAG7CpSZkWVjtrBg6DjN2FyP8XiZwHgeIzpptFhzMV+4jOZOqFOrhdQlvcycqWwz
Nq5Y0cYBZY2u+ZA5MDvs2HQm6DyCG6dA5iAPUjDX4TqgAKcWij05tuks0SZNvCnXSTRvDs9O
Tw/GC64ivSkIvYkqmz7HtK5VWLJSGSvem8pCRFxZqxotUC0iapO2gQHYO2CzD9CFLMAzla2K
oNc1VsCr1MproS5Apr2JCvsiRqO00QkjwIyuNap2iqwGlRr5Eiphazro3OZqTBBdX5xQSoxO
w33Kfbl6KWKvTxGXQ6zPgy9WPkw3qmLa79Nvi5Bgpwah8Sx7Zf9w/YbGWFjXGzVYrKiQkyXL
gPHDpoxZOs/NxZxQnCvmWNcarkAo5k4nAUaw8I8ClCZYQQMscXI3tkWDnDzf0OvFigykyyNx
F6yF6aQYsOc4nXsD5u6AcU58kMUqpJ9ElK8c5yTKYaH+Qla5CyhzFo8hxtyiu8zKzDvcEhwQ
49bZg2UzvX28n5VrdXd/cw9W9uz5BXOwNqg3ageyPJdTJ2AphLTqKtTa4JokZ1Yr7+8oT8y2
DMp3eq4uIxz3q9PHA+vKwLr0MXp+GEEI+TmIXsDtNSEEsA/chsmmYDlIwHAkDSlWNXPsEwDB
/9nKBYGUh3MqQNQoDwH2PUAHPjSjCr10IUrmLgD0nF64oKxEGjr9ObgcVgsEI/LBnaO7HHPq
oHeQUVi8RwSFV5RbZJSxhAr8S1ATIBu7Y4y3Dw+zaPd8ffsVcwP86dv905bwaXdvwbpI9bBw
/EZ3m9zGCHxvXzD2s8BkZRXVVeUvoKcwgq6leKSdVguu6CmY6yhcGtBY4Ol9MdOayxVITKnM
oXRJkL2r7HqS1onj3QEMAQjwg+e1l6kfvHmjmUE0McwPTdy70BmBvjRROYwLltItUDDKziab
UkekGeMCVRAG87T0RRCY301eX4IN45h2eSmc9AZ+AxvMQ06uOZbPR6fnZFC4HMz3B1w9aKbE
lZIKcxtzxxPuqKET7mZ2ENimXijIu2ZoezTFCrbJXRHOa1FZw9ZFREoueQFsN8cENLGi+MKd
1vnvB3A2no1Q/j6GtU63SPwdF+BoKB6D/+gbSD1mbDvBerD8hClZF0kf5EFnN91t//O+fbr5
Pnu9uX5wMp2GGRQnerKDINNjvYNq3GwARY/zyT0ak5DhjEZH0aWEsCMSG/5/NMLrrcFi/vEm
GHoziYNwRmTcQBYJh2klwTVSQrw5XK3Mlfzx+RjXoK5EKAbp7LQbPA9SdLsxge+XPoEnKw0f
9bC+4GZMLqdnwzufDWe3u/u/nBBj3xtIYKoBKRxF9f4dNmbUvh0N2V6tFdOKfYKz1jJB0Dx4
4G516xW3D9t2hX2FHDRAsLtgv76ig5ktBVWb8JBIdahyXtSTXVRcjs7DrKqM+xnNEv8oOnMb
V+KlJPoN6WfemSGTvdItsztAIHSnnPodkNxx2N7xHRwa0B5ZGour5vDggO4PQI5OD4JcBKjj
g0kUlg6GQuxXF4dDSaF1+BcK60SIO2FzsTYijCYqeE1KsMgX/qC6C81idL7BKXOyIgtZlVk9
d71p4+KaADI6t5is4I4VRYN4bRlb289HNAr+5RkYZyeDN90SpkxkNU0tLfkljaqYzwaNID/K
AFrZIstazTE8Trw6WAaGzNvtGVLqA3iqzjEGk3HRJHXuxDpTZkBTJUMo2/heIuMix17it/MB
1ZeG2aA3zSLXNLtayARuk63N6AOXIJRRtOPpmYIJJIKLS04cA0J2ozMs+zG9+OENOHG0COxx
5ECR+RSmQA4I2jOeRI/Czujt9AfecnBKveEs43OMHdiQFrB0VvOLg79Pb7dgGG+3dwf2jzNe
O1PDr6MNKlnRSDTQ+7U6nunJ0lygqbDCWYf3hTveOVsXc9Yh2gLcFtxHenjFL6sRsck2+0Ab
q8banCtZcKlAUl+cu/PVdWQGh8VO2fExOgme62NFiM49+zjhBVoBmdBdBH4Q+XmC5j4alUFr
wqJJiQCsUrGmYmqOdSAD3BzRmmFNYltYgsq/UpJmeG14bwQIlaKQYGJoAzBtwJ0ERgtxw/4U
6kUVh/3OTemFoQtf9BwWtkQRsgwyUO71NsqL9Mj1F6sHG56mIhYYbWrvTtifMzErezdDOUAe
Y9DYCwbBfVzyTSjX6nuZwA4mSsPK3gmP3l/HirAvibX0jnzUWZNFYW1L+xpua4EmPnRm67jJ
3JHdZZqi23Dw982B+2fQCqb6G/pQ+8jKxUaLmA2EPoHhVpuy9aQmetggmOPFuEbdYlJfzi67
3DTFIHCVUmcLIX6Mn/bbRBswJnUAuTLJFozWg7fmlKigm1/Dvb7yMmtLGkjELlqfcVSMTXCg
o/ehMaw5Cto7zQcv2et1RW1yF1eqIOO74/JLUWEmJVwwi7RuKN1CqAmywhcBWJ81zNGA6MQs
ja3btym7BpVUvBlZwV3e/Hp38+/7t+0NFkD+ert9Ab53Q6uOaeEW0lgLJgTjWerxgIA76llH
XYBoWI+h7MFDn37u4g+wVMA9iLgTV+ovJSpumMGEkSTLyu9vlBwxExnkWw3mqJgXWN8WYwmy
Z0SgKYMVspUomsh9nrFUfDSa3Q/YNcxXonL0r0uwwWRPgfXQbsC7xZjXuOorrQtjabdhJlH8
wWP/fQSmXWhl1fB+w/S4APYekJ2IRTVlPDBrZQRMXzAeKpFuuto9r3udo7Zo3+X4q1J8rhu4
4jaR2p5HK/0dOk09WQNarJsIJmRrGT0cKfAJrBhzu+NUru2UqQSVqinmrGAHYSvd/OPQP849
BDfVmXY9re0+2m6H41ssJijAd0B70XoFaIEE0Vjy/QFJ75qNjqtdv6mzjvPyMl743tMaNrVz
vuBEvtRC+d2gUWXqUu17le4tVoCoTd7/EK3MEkIf2rfWvEAfzEk7T8HbR27mMPBq2gNtn2PQ
3tEuRGMZ78HSCc8adPgZhX8PsIqOm7JjzLF/3AVeMV+OgNI1D3VCAznXtUBfB6VZV84SokNc
s3LSvGQzZQq2Hkxr42HhunbuFI9FKshRAKoG983ISCzFxILCwBKMegRZZF5y4eYHdss0N+aO
w6bD/JxKEq8DFze4PIHWpHxkqhNK8rvHF+Wmc6+qzL/uphcTegexTZBxJtF/gXWvQZ4QBHK4
FvOR09FOoEUzT3C32OOjyBod/m2UZRtiaU1RtfZLuewlAGleuTRE2XrIffWcaMo2lfQNb5Sb
tCIy5JjQmlAwaWK1KavO0J/HcvXr1+vX7e3sT+sdvOye7+7bMP8QTQOydqL7BjBkXc6KudVU
e0fySxE/MKm6geF251hOTBW3qbnVOY5+4N0gunEW1PrgmWShlHBLUxeIn2xs0UH7lejgKTz2
o1XcP6F1C4pHlCLsULZoZFoFynwfDZa4rJtcgA1fkLcQYF2aME245rgA2QPXZJNHMguTAC/n
Hd0Si58n91Pbt1YZGD41kZGRW+eIrxZ0rAVIuy+Y6HQx+J4h0vMgMBMRPavh+UPF50pU4Xd/
HRVGYsJnad7/tFESo1XDLguSraOQ0WyHwEqjVPsTxF3DEOE40n69e7tHpp9V31+2NMCO9b7G
9uxqGmifDDyKYqAJPzAWlx9QSJ1+1EcOkvMjGvC9RZim4wsWD3ii93QitYNw3jJicYQx58Lc
LgpYn4mf7ZscPi5UQjeXn88+WEYN/YFm4R+MmyX5Bx3p+cRuDENlcJs+Ohxdf3TAS6byicNp
KXgqwvuLxYhnnz/on9yGEFWXbPE42Lnvo0gIXob8i1us18LQmKOBlBasEhonR6AJxNnX8HJ4
okjuDrQS0sZI8UGQW+dAkMtN5AYjO0SUfgk/BnfG669q/yIZPDbhvFmwvwIBNh+4vahHYEec
srMWb0whi9+HC7Zdg8zjU40p0m3tlj6ySmL1k8rJLwcYzWunDlJIrgvqBKi1BmNjAmlGm8AN
xkou5Jo8wvC/h1ixOWr+9/bm/e3668PW/CTJzLwmeSOHHokizSs3rNLboGMUfLhRGfwyvuXw
GhWM6fZNLmFA25eOlSirERjUbkwKhaDLPtPUstDUOswi8+3j8+77LL9+uv62fQwGmfamc4ZU
Tc6KmoUwA8gUcptnaSWYDV7qiGSWbAKMhgNIwugS04A8hFrBX+gL+DmlEcV4UCs6TLZrjE+Z
rpo5tSwMSy0x+t+1JVxll0AfmdPOsBoKp2J+ZgUHHLUcJUNdeLscx3h0CTpukuZGhp8jT2RU
21cilZWkmD088RpFaO3RVbUAy/khl8eDBZ5r0GxvtShDJOjZI6VbTW1cGJYkqqkCbx568Ugi
f5qwY7dPhmlAu5ueLk4Ozs+ciU3nl/0DaDGhn0HY6+mHsO2bPTpKkCy3Tw9/YEwTTYoZqBva
aZxxsPUQGtTIqYKNn3jVHruOI3zuSVD12GAFNmLx0Qc67n2Tq9JLHQ6YqA6b1FfGTZOh3w7p
AqH2UUUb6aXzB3bgSqFTUqkaa91we/FJc3AkE0s1JF2waa+vXeFDv5U3IroG7Tv2qcbg/Wj7
oyUrrHrGJygBzVb2ebnuYtgcvvnljeD05/j6HTz3Rc4m3jEaKwBEyMZcSXwJHTw5Z4km0sT8
bD9iDb8mVC1Na55BXVQXvmIFGP4yFtw4rd20Or6Rh1NQTiZALyPUGLzootZG6RXbt/8+7/7E
iq+RtgN5teTOa0wLASOdhY4YjfhhvNq4CLGTtzUwv/VwqbPQrl6m9Ak0foE8mMtB0RuQedxN
Ek0GaOoeUjZRuGhIwIdpsBg3DnuuhsbK4H2dYGJHVyKemj9GfzGJ/EhPCBiVzrgF7R1N53F4
FklpfpKBB0NUwuEeUVq7o/09o+EWl72z2ygJ5meosg2IyqJ0OoPvJlnEYyCq99IbAeGKqZAI
NUxbur9DZmFztA15XodCeJaiqeqicJNtuEyzjFBOf4M6Wi6FG7Wyfa2qcAkjYlMZfr3a4oaZ
TB1Dw0idswFwXVIu6GCYpZ+MfHVEwN9xaCuFXYnLcgZomLHdLBfT7yAF4lX1QDBiB3bnUyfl
9NU2FIqtP6BALBw1aB0Zvo84Ovxzvu+tSU8T1xGN9Hc2Toe/+Pnm/ev9zc9u73lyqoO/mQGc
ceYy2OqsvShopKfhVSGR/Q0NlA9NsudEz4A59iDhvPdg7WlPzyEX/8fZsy03biP7fr5CT6eS
qk2tJdmydKryAIGghDFvJiiJnheW41ES1854UrYn2fz96QZ4AcAGNbupmpmou4n7pbvRl2IV
xsqEhZHehrBRSlajIQFYsyqpidHoLAIpTXP71UMhRl+bZTjRj05k0s+F9IVuCEeb32um2K2a
5HSpPk0GnAF97qaFtwHtEwEt/vEdz2crrDOjqAoMgKmUjB+8k0h/DUy9fh6BCyYtaL4KSPs3
Qvt7AyT3SRsR9PWMtz/Iwe/n11HU0FFBI35iQLWMiHO7uajGcQLMMOBJlmlm0YHqiFrGb8G+
GA0CigL+kBoBqzjtXeJqgB20Vi1Sh7NDFVcF3dpGltxr2oCDBm5lrugwRg6lkl75lTWGxCR2
o7hLDqIhY8tBIRmrnELh96gjCDNdcGF+gxCWMnV/EKVxJ7N7PN55owbXhgbK1Gut1iqXt9nT
1y+/PL+cP82+fEUt3hu1zmqsubzzP31/fP3t/B76wlhKeqvMJjCDQwzt8HGG8YACjMmYODZ1
TZYIApR2CPrOMq0BpzvR0sGRk6rR2H55fH/6fWJIK4xpCkK9PnXp8g0RtTXHVIZnniRBrlg4
bnlTR47DuSkRkDSL5qhGR5ks/u87TrIYGYCS6XP92tvEhnfWGPo0h1UPJ0v9MEkSgSDp490z
DDjf0YHXNmcAlgINnTw49BxQsug3lgNvbwAP2i9DLM9HejvC+WJYibQIAJQpy3aJGJcAPB6t
vJ+Yo3YS/1xNTSM9XTRP40xXkKSdrhU9XcMsrKgpW9njuQrNzcoMFe4G/Mbos0cE49lbTU7f
KjQBq+kZmBpgcpusgnfdtpTRjuauDArJxXaCSdsWptuhfR7xAGeFxwOvaFwZCNUILCPNwLGK
jiaVLCrqKlD2fWo66v9u5C6FFmZ5XoxNnbSMo5gvdAKIbMUxYVmzvlrM70l0JHgmyHDiicOl
wM9F6PE4oTVe9eKGHhdW0AG1i32eBQ7tVZKfCka/ckohBHbwhjw0RdWH9tQnwP2387fz88tv
/2zfAT07mpa+4Vt6vDr8vqL70ONjRa+WjqAoZT5JoKWU6UaUAUuIDq/i6UYq/5XUw1finhZr
eoItLbIOo0jvpQ4PF/50+eziMO0uDUKkgjrZjgT+FfQe7gsp6UOmn6z7iw1Vd9uLNHyf39En
Ykdxf2HKuO+CMqKI77+DiLML7bjQjP1+emILOV18KylOl5EE3kaG1TVdAOHRY46Cz49vb8+/
Pj+NBVmQtEfqPgChTZsM73ekqLjMIlFP0mh1Q4A1bEni0yT6sKRP6b4GdQzqGnqCALfTtQCO
4kmCYAzmfrCK2FdadwUH7vKORLNBIQs8rdDUFBN1MzdCulan4uMUiiLhJYkkaIA6SZDKcuos
QhLFUs91fUQii+laskDchb4nIgo8sfWNkAElX09wt71YCFeH8ImpR6MI2CF2BMiYBCYK0cQi
aduW5tODLOPpETbqOnwnme5heAAq3r2EhTkO4Mjj3HkP5VQc0yhTGOkmxxQtjv0ccJVMmw6S
rcgLkR3VSXqLfeD6iJccuwtaFRTUo0/OXaboKvdq4orULfVUbw5FskSJEWX/KaqMK0qPXNpm
5mWssyfY7xB14Qb7NjHHtfI0dCNbNEa5Simj9YMEBu5XD40bInl7b/8wYYOd6cUAw1UpWEqY
qlql45nYpgJyH1tn7+e3d4J3Le4qL72ELSOUedGkeSarvLTfjkdlegj7ZdeacJZiQNPA+AWY
9S29qxjInHUZErDi5o6nRJ9OEh1ybIVyB8G9aUHRicU1FtMgP4MDj3coSMzHHEGHeDmfP73N
3r/OfjnDGKHW7BMagM1SxjWBZcLYQlCFhU/2e+1Hrp2PrMhlJwlQWgyN7+TERbehj3DOJM14
cVHsm1AmoyymB764cF+FTlrqSaQ779B1szWaaUE79PQWTphvvVjF0U3aheZAGKhrkJZFta/y
POkV366gLIZ9pycxOv/5/EREQmmDclr2rMZtwAH5P9oURsoFEjHDASzQ3gkOCWI4EMtUkTrF
aAgVyLrHTYdGcsnQ4Oq7iC/EaELCpqiofYhdNwHiXACZ6wlx6D13p7yuTVg76bGtDgG1AcdI
hvSlgTg448M4Rp/sne2fmfbhyBvADYe/6IvQIlL7gjKeskm6cJ1fKGRZsCCiiXRwy1aHj615
+vry/vr1M6Z7GUIvOf2NK/h7Hoh/gwTat7q17QovgxrjltejYzI6vz3/9nJ6fD3r5mhdvepD
lLpFRCcd+VVXGGxNCpwRbbQ+VZWp6/HTGWPVA/ZsDcybFTPVbRBnkchw29Ot6t4fLhbbm9XT
E9JPlnj59MfX5xe/IejSrp13yeqdD/ui3v56fn/6/TumX51aVqwSgcBLk6UNW5gzO1FJwVMu
mf9bO201XNougPCZCabatv2np8fXT7NfXp8//XZ2WvsgsopWaBbR6naxoTWB68XVZkHsN21y
XTK44O3dXLJCevzLEDbg+am9KahIpQfj0LcXSUGybnB3VWlhB9LpIMB+HRxL7IplEUsc39ui
NMXHsky1Q4vOTNUNWvz8+uUvXPefv8JafB3usfikR9y2zzUxYLpyMAhM34We2nhmj7tCUFLe
awPRYAvbLia/pR2tcXBDZy7Hvr4fKfTAikp5DLSnJRDHMvAsYAgwMkJbTGPsskliTWZidrTE
OqQA0UUrHYKOQ+PFN7LRx0MCP9gWjsnKiYJcip1jEG9+N3LB7YELLMA+8Msnzck4KxKFerSg
TRuP0XCivHQfWnxhDowa91JX9NhdFnJVrKhbM6rsyBfOXstjNNysQuEqYrTFrSrHcR+AxriY
RN3l2w8OoA0A7MDwsdqRDwDmONHA78w2bITfbZzjAdBGD4saL98YoJAdTdgD3aNIm2gbezGe
70XpuGAYX2uMZN9HhYfbvA15Pxx2BkRU0PpDOkJl6yKZHXQQX8pgqCOxI+DwqMxHidSQCK9F
paDflSyWi5qWUzriQyoo1rBDJ3nuuJIOUO0qoF2jf16Pi9W+0DnSTdYelVtqQfYjso1sZVIH
VndhT1KNr9cThTqxZS1g25khjJiN0wLg6uZmubL2IE4ASu48OtINwuBkuNZQ4iFaZBzvsB6q
l97QjPGqHrNy2TEVFO/WjyjiSbkQEKN8di7WlzY7ZYNdpfGmen57og47Ft0sbuoG+CSadYQr
JX3AjU5zCdv0GLCBLvYsqwLJgSoZp6MAgUOhXG2WC3V9NSfRwFkmuTqUmJmjPGIaFVp0gKsg
oRUqrIjUZn21YAHVnFTJYnN1tZxALmi2X4lM5aVqKiC6CUTN7Gi2+/nt7TSJbujmij4t9ilf
LW/oN4pIzVdrGqVg6wSFhI5hHgWM7KmMuNKoKPbZ3q6YY4FZQGjNycI/gY07o4D7P6WkCYOB
Pbugn3Ja/DhmlU+Rsnq1vqUf0VuSzZLX9HNNSyCjqllv9oVQ9IS0ZEKAUHhNbkuvo9bAbG/n
V6MdYdIXn//9+DaTL2/vr9++6Fxhb78DI/hp9v76+PKG5cw+Yzj1T7DBn//A/7WTlv4XX4+X
YSLVEvkqejOh1QhD5rsYe/TLl/fz5xmwErP/nb2ePz++Q83ENB/h6grxWlNFWNyVyE739HEi
+J7K68DrxI+hDxAWHzre1Q24AjgTa2EADNqEfFxYbggGLg/NrFnCMbtjQNmhScpK1d9BcVC0
AmfPtixjDaOzETuXgKOzk65ZqYzGCxEDVLQfj5Ol6OgVaW6xQiWTkQ6Kbuct4LZmS3/jOLRr
yEgDqaE652rci7u6MW0rZu9//3Ge/QBL+F//mL0//nH+x4xHP8FG+9FyiO7YEJtZ25cGZllz
9XQlxcWpsgFpMiKT0/WluRn5Oij5kqp7xnV4yC5NnY1pI/nTxzgSYD4XI3DRs1V1m/zNmylV
SGpugJ1owe7gS/039YFiqod7bWN4cGzhn1DHVVn0tQ1Zlr12/487ICedbMhZqhoTcLzROJ3l
QWcR9RrP6912aYgIzDWJ2Wb1wkdsxcKDwObvkiiMFtHy1NTwn94g4andFwEjNI2FMjZ1QIro
CLyRd/EM1UcTaManm8ckv51sABJsLhBsrqcI0uNkD9LjIRDc3hSPjhYw6RMUJU8D76waL6D6
BY1Pgd/Q51smTqEM9D3NBHPS00zskrSoloD2liFAF7jD9EPYTvw8X6ypr6bwC1Oqt2tTVlbF
/cTAHmK155MLF+SnQDpnXfNDSV9dcFgE3s5My0JMZXuN1Mv5Zj7Rrtg8ngTvVk20C+UnN8dg
EZwlFISI2w3BMffmzgD7zMpeHRlGl5loQyZZ6NHBjFMlKMdMg3tIb5Z8DYfPwj/He4wOjmx0
PRgzC4Nq/HwVou1c+ND3exDSPSpcg5pidR2icDK0tGNdjiF+Nuoe7is+NeIe7k/JG1j6VB6C
loQ1o/lBYHeeexdyMbVCI77c3Px74sDB7m5uaUlGU5yi2/lm4kgMv+oZHim9cGoX6foqIFWb
yy1mnkbBxrYxifxB4XuRKJnDh3ko07t1dbcPGqE6or3PH+6bMmJ8VCvAQcJXtPlcRyHSYGcA
y5IDs/1hKAa3VzFWFpuKKiQT1DuLnMcbRIDosM0xeCVGybU6g7hCr9LW32947/rr+f13aOTL
TyqOZy+P789/nmfPmAr618cnKwGKLoLt7ddzDUrzLYYgTPQrtXYDsqwi+o/65JC0FIcUXBxp
nkNj7/MyYEOt64CDic9Xi8Dq1a1AnkOXRU2KThogk8W1O5wwJD3PD6Pz5A/b07e3969fZlpJ
Zg2Z9cQFLG1IhaYrvVchlb1pU03ZwiNmmxrhxTQOIHQLNZmjcsOVICV5Suv5dDTRGpTRT/Jm
UYGk44VZ8XogaduXFkneaRp1PI0ackgCt6de+nJimI+ygitlLFYW3z9whV5FCbV8DCp14gIa
WFkFuBGDrmAiJvHFenVLL2pNwNNodT2FfwgHqdQEcIXSq09jgZtarmitVI+fah7i6wXNoQ4E
tKZT42W1Xswv4Sca8CGVvKTTWei1zrjMR5MGTChcFfSq1QSZqPg0gcw+sIABtyFQ69vrOa0Q
1AR5Evmb1CMARjd0sGgCOHoWV4up2cHDCeoJE6BRYEiIMQRRQAurN3DAotUg8SGuRLf2ieLh
6FitAxYuxOnhIqtc7eV2YoCqUsZJwI6/mDpQNPIks22ejT3pC5n/9PXl89/+oTI6SfTWvQoK
BGYlTq8Bs4omBggXycT8j3ghDz91ZZv5/+in2XLMLn59/Pz5l8enf83+Oft8/u3x6e9xHjks
pX1vH+3DsejaCa4W09PpNWxYGulnfRPh3gFj3Dc7jTCAkGe9GkHmY8iVlZPSgK5vVg7MhKNg
1d6BaiHFCe6zHYUV8zoTpV2GhnFHI+eFNyJy3wyo7SF2WeaOvA0J2qbH1VEiQ6q+CGMNY/zs
goyvAmgT5fqLBVEZK9Q+r7yqqz1KwGV+lBh1aqLCcNg1QOpAmpMUoqRXNZaMBjp0N9DrIy+9
JqODL5mL0ibyxZ4Bg8mPnJEhlogNBekvgFD+YEbCs1dwkIfAA1qUjiK3WfOsrZW85RUnLORg
AVg4xENxnnEdhP0a2rHVkxkw/kkvBJJuXaKDL7nxQXmRcs2rkBBiNl9urmc/xM+v5xP8+ZF6
FoplKdAKnS67RYIkprzWdS9HU9X0xwMwIBneVO2zjx3DLtqCxOakzWpBcDCSWbUxtrNyv0CQ
SA9pDmt4W1F8ENxjEfCAlgFEB0F5fW4XZiFuad6mpyjT5XyiMihhMydrnM8XNHzhNEX3FX3P
U0GHJjPxYfB53jrIpSW7ZsJ3JMDrHJ20h/2Hxgf2rsMJ3x1Cqmtxr/NCTTi+BdQ3csK5txKB
93IYAN/vaiiwCKKOdQiDt3DAsm4XcLCHNihB6TiQQfYTVAPM9azRTi65zm2uk9Y5abCqgxP1
B342Rz1lOllUwJPhOGlUkwk36kuSkoKBOmQ7kWKwJWfrlb53vbGTfn57f33+5Rs+Cytjbcus
fAqO9W5n7/ydn3TtEZjwxjFt03ZtTvBA8yzYLLlr/tVa7y75TUDtNxCsN9TA5WUlamceHop9
Tg6b1QwWsaIS3D25NEgnh4slGQnWLgB4Ekc3Lar5ch4K+Nd9lDCuOYO9ozZIJM9JO1fn00o4
YXe5yKSllzW/mzzV+Ul2mPjF6ZyxQajIYLN2NSn7aFfjoNycAmm0ns/nASOxApficmHPSzuR
WcrDvphdVXBMZZVt5G0jS07DcRHmzhsxq5JQHImEVvIigt64iAnZd1ya9gMwbU4MDQNpsu16
TaYAtj7eljmLvE2zvab3ypaneESSFpxZbb1ocGft6PWytA42/bvZn1InVjSU4Gw0ELsrkfr2
SkNjsqDH6tA17kXr2maU4tv6pnWcIFcAZ0d5cAaq2h8ytCXHrVHQvmo2yfEyyXZHC7s2TRmg
Me3DGHokOpH3B99FYIT02kgMgnlssI04zOtDNXeSoPfQZk5JZj1+aa2aDnZNlnRNNq1Do20Q
dSFwqbij3xLeMybxCSa7y5wNBdchyAz9RUQz6/TOsAqO3BtBMzeHRIbCC3RftcY4Q0XJgg4B
Avd25Lu8jcsDZjgRVlzirVhkdo5K83u0PQ0U/iFgyxEswXaUI7C6e9iz0x25vcTHNv3pMFUa
0mSFasX0FD1JAieQVVJ8+CArdSD4gDg9fpivL5ynuzzfuZm8d8cLY7o/sJOQZLfkenFT1zRq
a8kc+CgtKsdgBUAYBIJarmIvmEd6vLiwUZa0uE9hEs1bv/yfrknajubRAU7uTFnvrC2Jv4T3
s19jQ1kIpku7vnKDe8HvwHkaCn4Rp/MreuPIHX31fkgvzHurJ3fkzWMaOmTVXSBEGGwLytPL
rghqYVluraM0qa9hL1h6NgRoec4FaW2X951OLwJ3+cJpeVLfhFUJgFWnSbQbzoXog+Slazp2
p9brmzl8Sz8k3KmP6/X1yBqTLjn3Tw8Yr9vr5YW9rr9UIqX3bvpQWgj8Nb/aOcswFizJLtSR
saqtYTj6DYiWedV6uV5cYNswylPpZMFQC1fPeax3FxYv/G+ZZ3nqxTO9cB1lbkdkU+tME//B
8bxebq6Is5nVoZs1E4u78CuB+boIhH6zW34EDsdNJI6+8REtYlgf5ndOn4GezCJhfdHmBRDZ
TmZuTPU9iECwUsmuPAh0JozlBfGlYO6CNb9RFUEu4kJkCpNwOudsfvGyMMY79kf3CVuGTA7v
Ex4ssRZZYwSCgZxU39m1H9BUO3W47Xuej+/DHlumFxdAGTn9KVdX1xe2WSlQsnW4r/V8uQlE
YkRUldNnf7merygFg1NZhiaP5CSWGAKnJFGKpaiwcUR+fbteXNdK2CmXbQTmqYvhj2seF7K9
inkT43RdWLdKwpHsGoltFlekltT5yrXLlmoTsr6Tar65MKEqVZw4e1TKN3O+oaV5UUgetPiD
8jbzwPu7Rl5fOspVzmE7OjFebGylryhnCKpUK7UvTu8hc0+eonhIBaMimRiNn2M3j3GCssAN
JQ8Xan7I8kK5aWeiE2/qZEezs9a3ldgfKue8NZALX7lfYEQL4FYwXLwKRAesLqqJ2ufzYVp2
IgHx2xGWDGgcu0cVMjKBykmp9OjeQ/CzKfdeQi4HC1wmLJOKegq2ij3Jj5mboMZAmtNNaAH3
BMtLmiLjeGYX3rqisVqGj+WWJklgGi/OfS1LWn+LiEVBP5LFURSIXSKLglo2yJ+3qZVcjXJj
wjkMPK2GcXz9lcGMB5pGVlsWeMvtCm7Sg7GzLcX3ELZpHerAW4om3ks0qw4OvaaBI4jjs0/g
CQVJco663zC+1T1Ratj9g+OTpU7mzcA4vEo5g5+dQScRxYNF+Bi+p582WRqFca0CN0xQr9e3
m9U2SACziu4TU/j17Rg/YM3bjem/FfHYKFP108kXt7Tr9XoerI5LzqJwd1qNVBAfMVjMploa
X6BIsZjEV3w9DzdQl3C9nsavbi/gN4HxjGUtIv+9SfIiOahgiVqZ0dQn9hAkSdCJpJpfzec8
TFNXgUa1sr3frA4MkmCwUCPpTqK1uPodFFV4TnrZNUiRsTZtfJCghho+MGBgwlvhfrKKlkOe
wGumNowHxnZyKJCJCiMrMb8KmI/iixRsUsnDlbcmsUF8e3nt4ChblPg3dQYWVgh0+IHZot1E
UwiMBAb+cFQHCJ4I+Y7otCgC8cuKNmkZ6obpRuXCbYH2UnRBOlBM5RpmKVofrZK99fFBbdsY
jJ3FRv89ojir6BsJkXfsJAI+PoguxI4p3xPZwpdVsp4HHPsHPM3IIx61QuuAEIt4+BNSQyBa
Fnua7z4Z2cb6NbwFp0aEpHCV81SLVk5hFxPA3oz0IGShqa3mtVHWax+B7d5KCJSnOvZRJch2
jqyRozs6vXRLqVIyvL1d6KBYpZAikiw4piVzvZcdXC/PU0jbe8xGqIqGVwH6jw+RLcbbKM24
iMx9XWqZ3JI9uAkTTWwGHZlzdnrG4Jo/jIOY/ogRPN/O59n77x0VwWqdAiYvxkhISSrcjbbX
GeJU/j9j19LcOI6k7/srdNqYOcy2SIkSvRt9gEBKQpmvJqBXXRjusrvLMXa5wq6KmP73mwlQ
IkgiwT50u4T8CIJ4ZgKJL7uVVyZOy+nY09zhZ1MNiHtaSoLvP3+Q99hFUR3s4Iz4E7297DAi
Om27RQ6j1uqytAKUoU8NRb1rECZQ8n1OdFIDypmqxXkI0h9x+Hh6f3n49tjdeelVd/s8+pz5
y/GpvLiDeBlxekRapNfhU+lxMEdYFUsxg5on79PLpjRXprpt9jYNZqoqiuLYWdwByLWV1UHU
/cb9ht9AGyMm7x6GoGWxMGGwmsAkLS90vYrdtwxuyOz+nqAVukEUZ6tl4L4HYoPiZTBRf1ke
L0L3fY4eZjGBgYG+XkRu7sAOxN0raQeo6iB0+6rcMEV6UoR9eMMghzeeDU28TqryxE6E026H
OhSTDVLCqHR7qXTNkYeNKg98Tznv3pBnNfk+zirUksmRqse6tZ2AP5tKho6khmU2s0mXvrkk
rmTciIe/VeUSgg7HKlRyvULQos3exgjSXo9yiXRkI81G1LN/bvI0w7WMcG62CpGi7iCIPYru
bbqlnH7ZHWhbclzA+d75tflw/0aLZFoL5t4DNABWVVmqX+8BgQkfUVeHDYJfWOV2ujdyrC6S
xMdAjvJ8PjNfJl2L+nPqcBRRzW39wTisxLG4huiYVUT4OQPAqpNg8Tq52tvhIfr77iaVJeuA
uLvXAlCVxbFHN48BbnJGWQXtkrk4z5vNQVEzWVtMmYNRuKmZclLMtNoFl9V9PV6V8xymf28h
wBzX9J0qdRsotzUa1JOiRfqAZ/WJII9t1aBTWudU7GyDuaRsaEMOEDwP5r63HPQfXzH4Nqbc
b6/94JwtvB1B5GDFc3ew6Wsx2WJObHK3eSQpjNAETVwwsohLnwaa1MdwtYrwzGQYxdyJXHuR
dS6Wbm6x/cP7o2aVFb+UsyFPEB7wWx65Y47NAUL/bEQ8X/bcOkwy/J90pTQIMCxhFnXZ/lqc
iY1ZzgaPjcLr9aTtDsq5ks0g8wGw9SD2g0CaD4IcDbOp+dSLqg0FOGiEU7RjeTquv9af3dWK
HXuaw9oxpsLXh/eHLxh5sGOFbN+GezK3Zj1a5hA3VwpwaS5kpnf3pI28Alxp0O/T1NIh9icn
uktuNsJcB7mJD4U438VNpS7WW80dRTKxZRANo1W/JVhmUzi4jdPyc0k5yTQ7SVBbIkNJI6k5
rYJxk1asqpv9ERQu1CUo0xiZZ5XzyC3TMbvxgiWSSXdfDcbagFcXUu4HZLKGreDp/fnhZXwZ
tK0ZzRXMe+49RhCH0dyZCG8CRY7DZJ/oO6+mYwxrXCODVRTNWXNkkFQQYXVs/BZ3eFy7jDZo
1JVsYS/ghC1Iz6ymismdvAgWoKibA6uV/HXpktbQ60Se3iDOd6RnlRaJ0xmlVwMyo0qZ0LPf
rSQqjGPCQ8DAyq3zprEhr3379i/MBlJ0l9GEe467em1W+LmZUC7XrxbRv/JlJVptOMwVL5t9
FmCI0NniAZTF42MSP8m8t7lsUqXYCuKe1RXBeUFs698QwUrINcVfZkDtovJJMbyzRq8bHXQK
1q5nsJxNZlgT3jJGXFf0IgVi6HFNVk29Q6NEgXf4p6AcXUxguDeJ2EFTZUPGlSsFT39eGmWD
16/d0V/2xyvpvLXEQFqPohwTHL0Mk8ssgb/OkFhaXLGsn0+tmBxmckg2ri4KImv/sL0Mdy1H
t6+4yZuNtELytNFM4N0N6ONpj05UVLkARaxIMufJOKyiNTrd9br/LbHBmQlUDTfNeAfDO1Gv
4+TWAdCZs/k4b64VtqUdl9kSDeO3FEfDDN4dQoCxjEN9NE+1VApfHFpN14kuBde7coSijPxE
GCluSSnyHWBJ+GPxOqQMierqpuPs+WT5r1UBiu6ogyOzmk5Pj7Kv4kDX2PF9yu9NW7tVFQ7/
Va4uAPkN2fNh5skuFEfvWJe0rI+2y9UHDFdVuW2oHgj5Ok2UjPEec8gde/ah5XkKPxq9ZQbz
UtlPxmNRpgZpe4D2qf8xOT84t9pAYoJ7aOWrnxPLduWmi5CFJb0p5hgvoit2219nMsf0r28f
PybCzZjsRRAt3DvJN/mKoCy/ygmiHy3Pk3Xkir3eCvE25LCWwNZz791qIcU+g0JkVSEscpAW
2jGa2KNAufakbnZEZ0KIFDKK7ujqAvlqQVjrRny3IsYxiClemlZW1eNAOPnDl8kGtyvI7J1w
uzt9/PXx4+l19jsGHzHPzP7xCpm9/DV7ev396fHx6XH2S4v6F6htX74+f//nsB8lqRS7QofC
8bLLDLGE+7seLESsQZSVo115+yPZ8GKCTuUTxDemgfJR3CVLTATVSv8Dc9Q3UDAA84tpjYfH
h+8/6GGXiBL3TQ/EbidC6nJTqu3h8+emlETEQIQpVsoGDDQaIIrLcLtUF6f88RUK2BXZ6gD9
TtMqKZ3xT81Bg7qkosFpYUZFuzM9BKls6EgONwjOjhMQkgDemvOt5xaEflsRBHUVYcrvnTpf
1Q9zCj/HnhFmHq/k7MvLs6HWd4RDgwdB58CbKff0SmyhtG0/BdpVjlBbWJI/kffp4cfb+3i9
URWU8+3Lv8frJ4iaIIpjpObh99cZpz34Nz6GMzxrLlKFdGHarRm/RSqWV8ghZHkAPDw+PqNf
AIwx/baP/+nVRu9NGFCB5842H5fWykQUXNXuExWsGCoy58m9VpnAjuxIEJlpKYYtIiLrXcNC
Vplrp2Z0w1AnXIfNXoxP9gtD/+mYjm5BQZL1MiBIZG2I+yC4g+TBnDh67WPci2gf4z6Z7mPc
m/g9zGK6PMF6PYW5Cynt/IZRJGtbHzNVHsCsKEPawkyFedGYiXqWi6lcJF+vplpUVikRV/0G
UefKn4m2QpAbwY+Sq4kgORikZqK8IroH5dM9nq+Y7TparCNqH9FgdlkUxMSOrYUJ51OY9WpO
cJx2CH+H2Iv9Kli4LjvcPnqTXw3hv8bPf+JL/wvg2ToIJ+pe0/BR14GvGMXDu6W/WxrMmjwO
7uHuJsqk+DKI/B0CMSFB29nDhP5K0pjpb1uGhJtPH+MvM1jpwWq+8r9MgwL/HKkxK/+8jpg7
/xQJkEWwJqwfC7SaGp0as5gs82o10WM1ZiJalsb8rQ+b6GU5rxZTC5/iq8i/wmY5YWt3gPUk
YKL75RNLHQD8fSHLCe5WCzBVSMJ5zQJMFXJq1OfEvUcLMFXIuyhcTLUXYJYTc4vG+L+3UGCo
7cE0FzRr+BXK1Tqe+78NMXfDYGFDTKUvC/nnfPRxuCMU3HxkWQ2elns1MSAAsSAiG3QIPpGH
Z0vmiklzHiyJwHsWJgymMatTSIU6uBYol3y5zoOJ/ieVkuuJZUnm+WpigmcJD8I4iSf1crmO
wwkMfF08pTkVLCT8ZmzIRL8CyCKcnCypkBZXwD7nE7O7yqtgYqhoiL/VNcRfdQCh4krakKlP
zquIIEW/Qo6CreKVX1c8qjicMHlO8WK9XhAxPyxMTIW+sTBkeBwbE/4NjP/LNcQ/FgCSreOI
PPy3USviYquehQnHyhNTfJ+4j4vxkk8ppdgMTpr7G29t6obnzAlHwch2z3++/Hj+4+e3L7gD
4rl4mm+ThnEVg3JNOFsiAAw+wv68igkdt8oFN37yhBGgn9eujXh0y4kgrR1qn3GCZh4x2jV1
TkwkGpDcResgP7kvIujXnKtwfqZ9Srfob55QpNL6exN2N1/QZUBxFHrfoCHufnsVE6bdTewe
GK2YchDV4qygs4Y1EYlPvIXfC1CyA10VTgyszrjdLri7iFnFG0Gc16CMOsvBV39ixeeG5yVF
O4WY+zSviDgHKI5jHZloQk63jZaviDi5pvecg2VE6NMtYL2mNiw6gKcJDSB274R1AGLyvAHi
pRcQ3829HxHfEft1NzlhQ3Vy9wKq5QqsPc/jabENgw0RDxoRR1FhdCTK4Q4hdarcp3ooBDU3
glFG11Cd8AUVjkTLVTT3Pc4jFREmkZbfx4R+oaVFpFaEeodymXIPgRkCxHK9Ok9g8ojQX7T0
/hJDR6fnEtR5nUK2OUfzcQji/sOg93ikF8kpHgcQKwyAtlhE50ZJzjzrSVYt7jyDIKviNXFJ
rH1Nlnt6EMtyIqqkquQqmEcEASoIozkRy0W/VwM8w98ACGP4BggDenzhp8HHe1a5FhERpoj1
Fk8FIiAmDr9vgLvAv5gCCCZ0QrlVpwyMPE9nAwCSY/l74ykLwvXCj8nyReQZ74ovopgIuKfl
v+VnT5Mez7FHYchKvi/YjnD012pPLT6XBfNW5CmPl56VEcSLwK8aICSaT0Hu7ojLRTixlfsc
tLh1QN1ct0GgZnmmyFtOHpBUqMZ4JjmVbwfluMa39ingXSYYQyAb3rHppL5ZGq9+6+M+Vxz7
3fvD96/PX5wHwWzn4jU47jBCmUVh0yZoz65dddBRNW95JA7/XAZptqtbWxN2ssHxavYP9vPx
+W3G36r3NxB8vL3/E+MQ/vH858/3B6yyXg5/6wH9xPb94fVp9vvPP/54em8vAFueCdsNRlrC
A4fuMyGtKJXYXuwk69+izrXbCVR30nsqSXjvN4f/tiLL6l6coVbAy+oCubCRQORsl24y0X8E
FrAur9eB4JbXUNDlZfNybpDcMRW7okkL6DKum2nXN2KceTvTnKEybYfNgMQN4/cZ3r7ppSKu
9Ujrw5XIdJmUuT8xbqWvV7cQh3mKlSTqmtg03GIEFLeCgQ9eNmkdzp1kXiAut7YRDQlgkmR4
DYDKT+RSkUIYLMSdaHyV90owVn6QBCShJHZQ7WVGSWtBxMrEQq+dxI66bVVts+jekpocOl5a
GIL3sRBvSf52SF2ynSsRXSJfHfmwo03Zi58BZrV9z+OW1Peq7JLtjtirDyOm6UOwsdUlIOZ9
IyWbyr2Eo4QdqWNMlBLh6bB10xIGLmEtg/z+UrvNWZAtkuH6Y/XJskzK0r14oVjFK+L6PQ7b
WiQpPRhY7b5UpIckmSmHtYDi9sM6AovgQH/PIXERNmIn3+TN7qyWkU3bjSWRi14Pg9+3ONFS
fE6b/Ne7fpWIWh2IjTzsuleaYBKwgSqlh7EUeUVEq9Ffvw4Gk1m7/jkXNT1Nbh6+/Pvl+c+v
P2b/Pct4QnKJgKzhGZOyY/vrNlVA5nJybMW3UTbMYCR3hO7rhJqy9pQRHh8djiVVHBMn3QMU
4YTSoUDlps6ELdAxCufrzO1B0sE2CVhkboPIKlbNz7wonI040VTXSMwfby+wEj5/fH95uEZI
dOlwqJxxc23D0WY6WNX4IlovGf5mh7yQv8Zzt7wuT+jJfxs/NcthRt1u09p1ccUhbkzMReQ5
yllNzKiOx+pS6fucf/sBGNNpXadgJLH7FDl6nA0wUbm3oVLuyt4sggl4Pa62lDedBnok8lPC
jOAUaJXAKeHZQYU6uvStcCN9/XZIUB4K6+qL/tlg2KvB5bVeeoMXIDMmrBVc9nIpEnMZo59U
8byfINPfruO9lw7vwdgZvdxBbThDm4BolCmZCPPOYSfsi7tXoSmdfSgCgn1N+62iPLkUDDfg
YY0pa+edSfwmYzHpW1asEoNX1yVvtoPyXMOoo3Arh4XqpKJQRDQSLBsRmFNnkTOp7Ms0bd0f
Uh06ZNwkbSw6F3pc1/hEDvpjYwI69mQO2jqdjC8gP4VlJRHHWn8MGEyC4KHV3URVjAghrgtr
7m7qm7l0HtVhcHTa6z5i+D0sCeKYOIHWHyTJe1ZaTkfm7sTaAiJc9hB0iGPKz7MVU35yrZjy
kkLxiTiwBtlGxcReIUo5mwdzwmUWxbmgrlvoeeB82aXueVo/LZdhTBwqG/GKOvRHsTpv6Vcn
rM6Yp8Z22uuAFGfs4n3cZE84E1yzp8Ume1oOiwZxHq8nUlqW8n1JncGDGGkKiNsNnZiKyXID
JJ8mc6Cb7ZoFjUgLGZAexDc53W+2OXXZSy8SiaSHKgrpMQrrXLD2tJqmfozPdMmvAPoV92W9
C8Khnm/3nDKjWz87r5arJbGP0K7B5O1nEBd5GNGDveLnPb241gKDzBNuuijPUyLIfSu9o9+s
pcRRkVkViEMAs+CwmHQe6uQT87M2/UpJD43jmXTkBekl3w4mSsNqk/xL71v2Lk/ofshMZ3Fq
qren/mvwSIWsnVnJtfX662rZW/YqPtBlrvf2Xl2p+toorP/Dh2yTuU3obGYFncvEmv4VN9Zs
HCtZ/0FIaLZsAwYhzoblQY3FZXE5j1PxMvs4sSwLkY7Ttd6LZGekpBHhQHqQm6GCgIS27EBG
q2oRBxZ4Jh7DmXsOacXJMAIL9psXsRrGRB0h9mJLBSDXKz5PhtueoyyqknCu6uR7P0KVhYMH
aADSzCqu+8utns/70R/MOKswwgudb5XoluLu+416uugHJTIjUSTjbZG96JFzwk8w5hWo4hfo
63Va7Ah6ZgBSZE+HvTP8O2bd7Y8Y4pvvT1+QYQIfGN2hRDxbDgPY6lTODzQHnEHUzjvjWoYM
f6MsMVG4p34tp2iotfBQuyOp6NpMs3tRjOo4VWXVbN0NqAFit0mLAcKS8z3Y+9aBjUkT8Osy
fBeYw5J5vo2XB+pcFMUwU8KM6x7SKAebMBFIU0e/QB/U0WKoPQVGWCM388i5V69RN27K3sPQ
C3dlUQvpngwQkubSV9MpFQHcCFPKI8+InewaKPkMVTIs7C7NN4Jwt9HyLXHJGoX7MhswL/Wf
Vat4QbcilMY/ZO4vdA0euI7/RcpPLFOEPYzio0hPkggypot+qfVu17C6MA6Ga29Py9RoDH+C
pZbuZeokir3z6M9UTyEFTHbjQmRc6wtkvtR+rpEV5ZHqIVilenZ7HTzUpuOPiojee4UQ3Rrl
9SHfZGnFktCH2t0t5z75aZ+mmXf46HMbzTPqgWR4auCRX7YZky4mfRTXqRnk/cnOBLwot2qQ
XCID/Xjo6QAJ/hFQKCp0EMpq4bY5UYpx4V2caHp6ZAU6R2dln2fbSvbVbpUWOVLmUZmnimWX
fiAmnY6sTpzumBWy9dY4JOlZW+9Zu20K0yqQAWEMaXnJOXOrMCiGFYmuM0cUO50MixudId6l
JdlLNUKljJ5eQQo9XZMhUaU6FBiEZliqmqIywJkNeXCZ9Cx+MgeD4lN5wZzpuUsc3Wq5FpaV
pK4Ra/keJjb6u9UeaX7M9iu9AKCyh4YQjQi3n1PikNYsEb519CQESW+L8rOAYUBK8cXe+sMY
DNw3A5lLDs2eoN7QSl42DDl2ZUlzKLEmLIDcuHVuY8CM9O7KqTa34CstUvvSYd4dy1Hvhbf8
NVmSSJwfMHrsZoTbL7CKU+65QAW19abRgcwsXtArAj1esrQF9eXpZA7tGUU/EYOA9ldobXFm
lSB46LRRi1y5eyabPU962fXzHuyZ6yeLAuZeniLpfXsINA7JkT9/fHl6eXn49vT280O3SxuL
o9/e1w0EdA4SUg1fRZ/b9GClci9Craw57QXSq0vXemEMfFWCJQOrSnLdxLDFWLmvVudFbiTe
cSMlY+8k3Sqr9Xk+x+oly3bG9h4Aht3BNE/vMZ1el6XCkdko6qs0TClsJgl2UeLoa47W1elb
6XZ1sEulaWJL9xrdx/l4knQTnQ9hMN9X3roSsgqC1dmL2UJjQ06eKi2JKi37HwWGKF3aAdR5
zt4Hjmu5/NuVc3D0kR5AZhiUzoeoY7ZaRXdrLwgLo1Kp9G7oaDhjv2+jpvCXh48Pl0ueHklD
rhx7Kql1GCRSfkroZ1U+3rgpYGn835muAlXW6GH1+PQd5uiP2du3meRSzH7/+WO2ye41I6dM
Zq8Pf12Zhh5ePt5mvz/Nvj09PT49/t8MqYHsnPZPL99nf7y9z17f3p9mz9/+eOvPWy3ONlKs
ZI+HmY1qIy1N4hKm2Ja512AbtwW1ilInbJyQuA04CYN/E5qqjZJJUhN3eIcwwg/dhn065JXc
l9OvZRk7JG790YaVhSdqhQ28Z3U+nV2729JAg/Dp9kgLqMTNKvSEYjuw8dKJY028PvyJAawc
BKF6RUo4dRVNi9EI9PQsUdHe43rpSgpCp9W56+kiIbh79bJ9Iq7wtUI69BzSTWEMAu8ysO57
gd0qTdM+ExPTOMLJ7bG+qkI8n+aCuFjZSgl6KT0pJgd1cJuMpmhHScS71dH40l2pyL0WjfBM
69ceyy9rTlz9NDB9VZmu9oTey9Arr0I3Ene4aF0FuJGcQOOhcjWcNAXoXpvjjm504lamXhhq
BqqoKx5Jv/zlidW18CBw7fPoMjJVZnncirM6eMaOkOjwtyXOAABwgafpzpB+1tV5pvsa6nzw
N4yCMz0F7SVozfCPRUTQEdig5Ypg99B1j1zE0Gpp7a8ivmel/H/KrqS5bVwJ/xVXTjNVyUwk
y458yIGbJMbczEWLLyzFVhxVbMklyfWS9+sfGiBILN2U3yGLuj9iXxpAL0YUqXaKZT//HLcP
7DQYrf/gfiyTNBMisReEuBKQnP2X5kubcvYj8tETmTr+lHhFKlcZ4bCTy1E8QsQiLClDY8qq
NIitAEKy2uwIxSP3KVEh/EIo1KrzpKPW1p2gDnJzGH8JzHkIUwE+lvVbEN7qcD2L9AJPwUku
Pw+vbvDpKPLw4utLQkm+A1z1ALjNG76BdXx8Dkg+5bCp5d8M8WnGAZnn3PTnABae+LRo+FdX
hAeOjk8Ysks+saM0/DFlRCv5lDZ0V0HCULQFXBN2mqIT/SHlGojzId7fFaH5LACRd3UzIBQw
2m6+wn32cH5YXA4m0eWAMH9UMYaihzHKuSz//Xm7+/XX4G++VORT96J5pHjbPTIEcmF18Vd3
U/i3NU9cWBoxxXjRvK2beP2rOFpS0e05HwLs9DQptxxubnzQ+paH7dMTNq3hqn4aELcojucF
4EAkjEI0mkvI/k5C11F1hTsaLzR4v6CZIgM9IFiLCJaZjIYDSrMFXxYrJ8Oc3lq5Boous8Lk
dj4x/C9zplqEHgXksFOJCBSEsuNy5jlonThHHPPQL73l1B0RtQ1Hn8MFUjM2MkZ6Q2Nfpx64
90c7ERh1vsRlE84s0IzVsmVp6KI15pzawxtbMGVzoJXuEPw821+MIs/wQhSq1nPgg7ZSmcIN
YeHllXJ1yVnWZSlQDUwz7IpVoStwcyalms2ZtmNwTvaCCL87E6UFJ/WExXkHIFzqiPQzz3Cf
ITu49CAAWVc/IAhBQiPNvDItVjhR6vR/OJwePn9QAYxZpjNP/6ohGl91Q66kmxB4SRMJii9V
OcRDVwMFK8AwKSdtF5l0UL5HyEbABJVeVyE7nMcV3k+81PncknbbtwQoKSI7ye8c1726D4jz
cwcK0nv81qSDLMefMW0dCfALJgt/MSvZcdhQTNhRBX8bVKGEazQFcv0FlwMkZLaKx1RgB4kB
55g3xKWFxOTFlXd5Jq+wiAZDwsOJjiG0Mg0Qfm6XoCWD4NdWEsHdGhKSnoahXC9poMv3gN6D
ITzEtL0xGpSE400Jce8uh/gVkkQUTEi/IXwNS8wkvhwQkn7b62ygExYQCuSKMBhQUyH8CklI
ELOTDS6wtqnMGaR/cOXz8Zg4VbcN47P5N7ZWD/D7r68e6uoEMUxg7+OmRy0enNq/Y9Xxi8sh
cZxRhsVw8J7q3+gXdMI1//P6xGTol3Pl8OKUCPDZrSZDwl2JArkitkAVctXfB7Bsja/qiROH
hJqegvxCHCY7yHBEXJK0fV7eDr6UTv/YiUfj8kztAULE0FEhRFjzFlLE18MzlXLvRtQBrx0P
2ZVHnEIlBEYMpp0o+W3AD4N+v0rudPfsfDztd58gANOZYdZozPYWDNTkEkIbul2dSva/c4sP
peDR9nxCBGZoW/GLcWnVKh4Xm92RnUyJ2vrgUHCOvq8zlltNlEf19iMIIAYuQvCKi+/qWeAQ
ehtGwsoRsVo2F7jYHW+Yate6EDuOiDMDvKzpwzDHNd4B4zPh8BzGoW7rRDRfL6WeMUQs395h
BJgkKImrWkggr8w4aQo3nlwTBkPzCRp8jtWzdlcZXPGxY6sz1a1cwQpFGmUiH4uQdlb8vjhI
KsVvjyDCc7QJhMYQRyEL7oJhCdeA0AoDYZTJoNYy+xgJARNvHw774/7H6WL253Vz+DS/eHrb
HE+aeo50lXQG2mU4zQM78JucECW/AEB50zTyJyFxnzpbsA04gSgwViU8Hvel2L8dNO+psivH
w6vLuglU09C86NaNfMFSO5a/1cGzV52F5fXIRSclmp2ShhNGboqdFcI0jivdmlmQurOx8AoF
MXm2DxeceZGtnzYnHlmnsDvlHFQ5/vOc+AlwQsQHbxCNEhAb++UsT6sppvOaTgRcMUviMYpL
L2gZ4iS5edmfNq+H/QO6g/CI8XBoRFsa+Vgk+vpyfELTy+JiioSU7FLUvlSGJZghLUIk4jlY
qfxViEBq6e7CgxBpF0e4nvzB2r1TNxI+s16e90+MXOz1LUR6yELY4juW4OaR/MzmCrcih/36
8WH/Qn2H8oW2xjL7d3LYbI4PazZY7vaH8M5KpGmZuyr0vDpIppZHmCaXc2nxxLb/xEuqmBaP
M+/e1s+s7GTlUL7aoRAfzerN5fZ5u/tN1bUJljv3KrSm2MethuW7hkmXVRbD5cckD/D9NFiW
HuUak80Z4h4hJCzjkhJ/nJzHgR1ETRZwYbuOg90fYgQiETXzO1g21bUUwv2au7nU5jTTUaqQ
Od4tWSgeVgscipR5GkVIuM9stmJr33cR0rArXiNaQCAywyd3fQv+FOEJF5h4S8xWUnytfdzY
QYf0pAMBkMN4OY7vzMB9GgycdETs7yzsTy5bOvVwnMT89fg8CqpJorihKzuVm++mMsCa1rLK
p/C04jl4u8SeHZww2xzg7Lresd3zZb/bnvYHTNzog7WnGh5QWaygu8fDfvuoOVBM/Dwl9Ikl
vENHoZvM/TBGo9s6mvUC3Fr6qL2kvERVf7Z3peKcsbg4HdYPoE6ExUQviWiPvG9MM0epAm0n
2X05yQhVjklBeG0gvQZEIRkXhOsSsv8ngYfLoB4YiBAefxpVRl9d/SdbtpeIsaat0HMnCn2n
DFjxmYSSF2gsa8ZjMoiTKa8Ly3KoOYxpCPXSKcvcJmdpES5rx4tsVhF4VR6W2jrCeJf1BDsK
MM7IzHhE5zDqyWFEXt9/c/2hCobfJJhlELue480Ut0R5AG85jDPRHgVbMo8LTSzIDYS75IEI
ytjlQ5e82eAqC2kSla00i6ynLLHyG0nkG9GmQKd1Q/lX4OEKtEWwrl2K3NWI14xyV6Xoe9rS
KJv2EWGeDaw0AT+o4kWNBC2cHJcVlr1VZAeBIT5s3TI32lZS8Eq0XBFBHJaDaR4S7hlbcF4l
deEkDMffd/ClRaDpSgg+O6wERCt22QUTeNEOJ9idSRJGojU0p6xD/iU+i8Sm0P1GZzQc64y3
zIZWuzyiaZqhyYdRwI+s2ls5PKCDYt3K5CuLOpPUvXyV0Y7ZCt4GqF7BpDBd7PomIRQE/tqv
ZewIBponNSfA0mNSjLRxJmgaacIyMzrGo9Qfm7sOtM/A5VzkrIykOioYcYbgyrf2Q2xbwZBO
tHC4S94oShdqgyjgMPEJHUMFtGQtyyt/DhgHpQOuhe1bkPXDT105eVLwdR6/xBBoAfc/5Wn8
rz/3+b7bbbuy04v05vr6s7HafUujkNDcu2dfoF1Q+RPZ/LIceN7iWjUt/p045b9JiZeL8bS9
NS7YFxpl3kBe1E/kDYeX+kEGdgOjyy8YP0y9GYgY5dcP2+N+PL66+TT4oA75DlqVE/ypISmt
FaSTe/DqCSH5uHl73F/8wKpteb/jhFvd0yCnzeOG2EnrHblRFAAvcpijcY6ECA1lZKQKbQZm
WCFbiqy02Skw8vMAUz2+DfJEc9qn6xCUcWb9xBZVwTDkiFk1DcrIVRNoSLy4yhgJwCE8d+eg
UFv7u2k4dZIy9ORXigAL/9CdiXRYm2VYiDcA0NAIYm0SpTmohCLJyoL5PbwJzQv4JoCvgzNj
fWW/wTLVWBfdnlK5PRlTO6aXO7Gaq/gtdkGhHiKHxV3lFDMVKili25Oya3cw0dhiYUYK0MJ8
sMvJavClEOEJNQhuj4+fhTAk2E3Ca1lP1saoben3QlfITj+6H/WlF92nSGrLezSt+6IkfAVJ
xIhbZ4GRFniu6scGsRv4foDZ9nUdkjvTGMLP8z4T7rAulc16SY+jOEzYxCeYaUx/OMto3l2y
HPVyr2lu3pdpBlZGRIOtijn1WdUzj/KUmklJUC7S/NZYUiRzou+A8Hs+NH5fmr/1FZbTRuoY
AkqxIC55BLzGHH1yu9hElxsADhJdo+znJ2gdGxDsGUEEIL14flg4LpvtlZ/ZmoUMoCi/wi/W
BFYVfbMdfKwhfLslfLFoCXdpVIv4NRg9nsNAND3oRhsnj2i5w7ZotrCEqWIyzNdM46cop9JE
rCZo03QW6nKEVkmueaXjv+up7siooZIOcgV7meUl127VpPUgmxGbQmjI9WFz6i6GBLqGB9AF
k6n5iT7o3kn1NBaBc1tnC9jT8edEjqoycBtF5WQs1pzG5RGDZmnadlT8trXjc+GrJh1TCSBa
UKPJYhfZ+BThxXdoKYJaZiJ1zkWFFHa/fng7/Rh/UDlSkq6ZJK1NFpX35RLXdtJBRIhrDTQm
bDgNEN74Buhd2b2j4JT5hwHCtXcM0HsKTmgdGiBc58EAvacJrnE1KQOEa0FpoJvLd6R0854O
viE07HTQ6B1lGhM6twBiJ1k4+dXE8U5NZkDZFpsobKcEjFN4YajPOZn9wJxWkkG3gUTQA0Ui
zteeHiISQfeqRNCTSCLormqb4XxlBudrM6Crc5uG4xo3+WnZeKxAYIPDViYnEr76JMIL2GEB
f63rIEkZVISrohaUp04ZnstslYdRdCa7qROcheQBYcIuEaEHJsf4CaPFJFVIiENq852rVFnl
tyHqiw0QcBmjufhIQi9FnfSFab24+6q4LNKenYT6x+bh7bA9/bE95sCurWYDv+scHPwXzYEH
PyoI5zpwKmJf5OwQSpyxmyTx04G45A18GsIYtT+DoFbCcSEVOVu8i4CCX8Hf18s8JKQIie1l
4jcOzjxgf+V+kATCUgxuMLko5znGLZIFw6+xmVQL99BFWuWUj114vPF4MuBFRQQ9QwrXuk1u
m0K1S4qK+OsHUPh63P9n9/HP+mX98Xm/fnzd7j4e1z82LJ3t40cwlXmCUfLx++uPD2Lg3G4O
u80zD5u22cHbbDeAhObd5mV/+HOx3W1P2/Xz9r8ynJ4U2Tx+H8XdP8+dnM0cNfYc/IIKerd1
kibaJYbCokRGDkkT0f5t/YkHAwkGfyYkVqoI4nWSbLpJWi0ac7a1z2dpLk5d6lMBV67lN5wG
LQ5iL1uZVJaGScruTEruhP41mwdeOlfvqthkS+UTvnf483raXzyAM5r94eLn5vl1c1B6joNZ
4041TT+NPLTpgWqwqRBtaHHrhdlMtb0zGPYncAxCiTY0T6ZWwoyGAtsjgVVwsiS3WYZUHi7R
bHKneYvStTfvhmUa7KIftrcH/NXRSn46GQzHEDfHrFVSRTgRK0nG/8WPYwLB/8Huz2SrVOWM
LfRWjlBqiygU9KRntOzt+/P24dOvzZ+LBz5anyBw0R/1cUj2YoGrhzRsnzg9N5l65/i5358+
W3LnwfDqaqDJfkKj5+30c7M7bR/Wp83jRbDjFYEorf/Znn5eOMfj/mHLWf76tLamn6cGSZId
y2lWEWZsr3aGn7M0Wg0uCfuydkJOw8KISGjMweAutFYOiAfisIV0LvvH5SrEL/tH1bhSlsf1
sFJOXDpTr8yxT0r8Hr4pkYt8EuW4q5SGnfYVIsMLviTe9eV6EKwWOXGxKBsd3C+WFaaYJStT
FF3bztbHn1TTanEW5DIYOx4yf5esOn2lmrPPrDHrb582x5Odb+5dqsExNXI9z+KiQkcm8Ola
L5d8WTfr40bObTDEeldwegYFy7AcfPbDCV4YwWvKS6cybYplrYjIBDPWZ39kVSf2rzAaD6Rh
0UM2z7jiJDYS89ingokqCOIep0NQsVk6xCVqgiUXiJkzsHduRkRrxBgsP1sEmDlXgyFSR8bA
j8iST0T9lOySSXluil3wys1nmg9uhlY5F5koj9hhtq8/NROMdvUskCIzqqGpbfCTyg3RD3MP
exxrB3u6AGMSZH4IhrwHR4a6EwfszIyprLQIOOPR3xdlzygH9rVVLB9tnIklRRjL58y5RwTH
wokKtqX17Ha9oyBAn/Vabp6JCHX24Orpj1KNhC1pixTtoobetXATdvPl9bA5HvVzkmy9SQQv
+mZK8EBqF3RM2GK2H+F3SB171rs1mA+twmZlvXvcv1wkby/fNwdht9NFUDdHfBHWXpYnPfPQ
z92psCizBhJwiE1N8Mg3EQXERIr+zK18v4UQkiUA1fxshTS68DyThWfzb4HyPPMucE4YlZk4
OFNZndMc6Z633w9rdoA97N9O2x0iQESh26xiCJ0tR5hIxVjIxovBxNw8i0JFZhvnE+WU2zAT
/eE9foBm8h5huCsyLjzbaGI3my0sEqjYJ0uCLK+/kDWUs+E02cRh6eXXmfClfx7XuI9CJhRD
OmUMhhNe75rQAaERPo/6T12Qf8gDsHtJcnW1xGwNFOw8xpuK0ZW2wnLxZkFUoBawajLSnhVL
oXAmwdIzQ6QhOXlMtDjbQjEP4lJPl3h6TrGKIbw3g8D9JngItOfy5nACoyt2NjxyT2PH7dNu
fXo7bC4efm4efm13T7qFNmhQwBSF8NBFeyuLXnC9J23ZgG6YOPlKOFqeyLujiFxhxMWTeiEl
KbXL+pAt6Pmtpm3ncO1fpOdcNnICME1WFNykARQT8BIvW9WTPI2lEi8CiYKE4CYBaDuGkXb1
7aW5H2KRc1q7Ky80TTIkyyBzTTzQ/PDibOnNhHJDHkzU8e2xwcQ2G3X6e4NrHdGeYxRaWFa1
/tWlcXPDCEy+iSamuyEdEIVe4K7GyKeCQ0kPHOLkC4eIIiEQLvFCwrjEe65nCMIq4wtSDbYU
tydSFYtdazSHTNVlhJP4adzfUEzAalTj9HUY9NzASiTStC/vxXZlUJno1q3kLyoVS5kJZXiO
TBZDkuFkBd8ylvdA7r4Xv+vl+Nqi8V0hs7Ghcz2yiE4eY7RyVsWuxSgyJ7fTdb1vmuGIoBI9
0NWtnt6HygRTGC5jDFFOdB87KIOrFmL4lKCP7BmvPvvIJQvOnerzBpMk505U6+Slk+fOSihb
KitGUaReKKKzcYCiAuxwSzDVJE+QeGhxbd0Buq9WOmGHoLrgPjogRta0nBk8YLAk+DuTqUoM
POHOsL4euerLDXB8iPqesyUunXGBGdFDnqQ5qGYzcJW0j32KitYiTMtIUxnlWYK9KKWgNY1E
yyvNzA3+xcOYsnpmVZ1rbePfKTpx0yjV8oXffUtBEulqVOBZg0mLSop+GGuu8tiPia80Ssoj
OU3Z3qwGE5ykSanotykvgwl678nx499jI4Xxb3XnKMCeNY2QDsnAklN70GlZlXCnWU+iqpgZ
lnUWKPZAYFJyZKNDNLbycAnyB9qmrSBiyRH6m6OUcjj19bDdnX5x31WPL5vjk/2UzWWU27oM
Y8NYgJNB9Qx/VUmTIuWGSNOICRxR+xz0hUTcVWFQfm0j4sasSUApxkphpAzsJuwMObBXsZuy
jbcO8pwhlbYVKnbsD/gxTYtAfeknG6W9atg+bz6dti+NZHfk0AdBP2CufkRuhAlkkPAHp7iC
eyOwkVOGYc4KzU34vrJzwVgfBxlb3sCCOKbs4R2fJ8xQKGDGAEwSBH3JEld1TDPW7ewgyCBR
mBj2ZKJOReCBBgEYMsSO4W9bltWA8PqA8eLKTk6sbUJDkx3KDZX5TtZ+bx9oPlOaKeBvvr89
8aAN4e54Ory9bHYnZcDzgIAg+ud3XUcoxPahW/Tb18+/BxhKxDEwB5xmhOLwXYk1yO3U19ZN
+I00ZLdguIXTmEdC7ziRZnDJucjn4isnCqdJLHYWy1VMbwvpNRHa12b9wJ5FnmeaF/82MXVC
cHW3YFlC2EpCuUAkCEC+NeEKMzx0yCIh7oE4O0tDCN5JXAF1uYANaA8kdb8FHvFeVUSVdJlL
VIYjuPIypQLTtCrbSiI2+u2ZITmoPMdnItfrqArDOIlHlGqYEDaLttcWycyx15t25DUYiLSu
O4vTGGQZhX8SqbBidoKY8CA4nWklXhuwe5wIy0q7HWxmozRz68Ak6OI4yxnHyfzTr58tpZVu
CFvL38zweiae+gB/ke5fjx8vov3Dr7dXsTzN1runoz4NErZgsLUxxW19NT44OKjYetPKQuz0
W2WsICUbmKrEDFFFbWanPZamJTtEOLEK5DlhFwYk2CwOKGe9K1cFeD5XE9zmqnQEZFbPKiYX
lU6Bj+3FHdt12N7jp/jlTX+PCW0/ts88vvE4csqKps0yw824IMKub01Iayno1JyQbMxRB8LY
bRBkxqImbpFAe6BbwP86vm53oFHAKvbydtr83rD/bE4P//zzz99d8bm5OU97ysVLW3TOcjal
pFk52sQ8DahXz+ICJ6uqDJYBvo42cwrx5aavIiIJewVZLASPLbfpInOI0O9NURZFQEhOAsDr
Q289AiSdmkesN86kBQ3LXy4a2R3Pm+fKpg6ErqHjuHQV7T0I/B9DoR2zsASWYFmkNi+X2Fhb
sBMnPACyUS1uenqqfCs2TGJt/CUEjcf1aX0BEsYD3JMiIrMZC9LcMs7wi75Nn3slCKlAC2Iz
5y7w4Q4zrxC/CdriQVTJzNXLWfslJZMNbV+huVfh4hJjwPY4oUcEIKhho0Bgf+XSPl9D0qr8
OhyofKvngRjcoU42pNs8rdDWlLxrZPockeb1sxgf+kwmhNt+4pqTlX7GdoZIbPNlIN194VOJ
ARJvZUR2l1cPaSYqmxsC+aRKxHHlf4VdS2/bMAz+U0NvO9iJPRt+Trab7hQMQ9Bji25o//74
kVIsyaJyjMlQtkTxJZHMQ3+YYm7SOM4prd1kBgT4Ibn6KHrEd0nNOUJBYj2vEDDJeh3X2Gk4
2T8KlR0or4MC7tdobBn1FFa65FBCudW1/wnkatOLAT+oL4KJxtpIV6XDh3ukbBYeUkLD8QN6
LuAXE7KIx+zEeDbVdXqwRIfV2aND7o+k65B4mfYpxJIWqmmnw1TVQMKCfECeS6UqlvlJBlWd
IBQYD/e33732C/F1bnzLYZaLUlalZZNlLLiFo089At1t8jjB1wlJNHVr3IQd7pu752hEjO16
tn9Q1P8dnZg/hegGtY1C2ynm8o4olJWd9v3xln5czvXhmeOO+HlEYdcSRMOOCpfDtMlcEmXT
72uKs8Vs2x8hIHuzHWPFGqKxyNgPBtPqwtuveUw3ctFzRFutV+3Ybi1ICc0ZReWN/BDZ20vc
7lnH9JcewkXHXIph7pOM5Xm5XJyvtRnFQXSdc2Ashr+G7RTCDsr9/e3r9vH+R4mHIH3a3jy/
EB9NKZEAJAH6jInFFqF0rua1+f7kxUcbViQJZ8OjiP4qvDe18AQSpMj5IrHvh573V0ArWFK2
ZdVf66pgC4SDDGFFIAVJr0W3GrRwJO44jjgs6L6+8gnLDgy+CiwDj5WYdtEHeYnaseO3i+8p
6LxMC/kOZe+dOPh/vJqJezNHgYkgWwEOLilp0qjxi1eF6X9lapoBZ17jwjwBuMYNRNuZPtUF
0YW5DwzpHxSst7//4DXACz69fd4+fr/efI7ttlFL17N29ZVZ1YqryHaOVW6EGqhlKbiUoXLf
tx0yc+KIz0KKZHq2cmwOzrWBnzKUSUqTdcwiBCxvi7PvhmV3VmpxcuNRvimyTErJOUZRoSLG
Fr/0Xdo7cV4ab4CMtOXT0wycTzKnfgL/qljBmWtGWnONGx0uzvLTN8VrdVherpWKxLPYVC/q
PpBpltMyOcVUFKvFW05KNiEjdISxKrVPGUFu8uhwkVZZOG0ZpX0uY2xbXK7Wh8rxtw538VAd
w+AuxwoFlJlw7XYmQ1ulzbdsii6zY54HPc4iH48bmmrCp8zgnJt+3OBqcNpIyjltvrTjGavw
yBqSzsJmuBRKTR9hKK6NlvketmZyDMn5qWoCrzAlKRkdijxHchSyu4OviSlS3BFREQimRp6y
OuSQ8ikn0v8BQjZStCunAQA=

--5vNYLRcllDrimb99--
