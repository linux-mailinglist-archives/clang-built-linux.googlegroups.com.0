Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQG7USDQMGQE7TQCLRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 593E83C3311
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 07:27:30 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id k92-20020a17090a14e5b02901731af08bd7sf7336492pja.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 22:27:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625894849; cv=pass;
        d=google.com; s=arc-20160816;
        b=pjog03eN6Df/suVZhDqlo8vbP2oYgpifDPr3CnOh/zg8HHswRi1SSkQRMyYx8dMm2S
         xGkl3x4zB0yQapvKz6DuiOkVDljclEZlf8CYtLaBmFezKMNsVn6psCdJga52n4ZmEkiA
         HmAOPsJIDenMuDnl/JE0EIL5Gag5kQjFIt8GdUzjhDLsY4m5/NfvurhkJ26/8gezLwWw
         0tMfZTE9gPuhkCi+sbnSi1OAQWJHAPclmm4kNZ8hfSTNFrkgrBLrGc+Z6crgo78FNPOb
         +mKwMY97j36vINGmcEaURtBUvZTleiz+dK7q27Fsi6gkt7w/eeUH6h9/dlZCzZqSwh2X
         SkXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tssC5KM3kxHQKmzpjfRVJHgpNXVidq677GlXQxy2fhE=;
        b=jKhkSc6e602kJKbqR/gAtI9WsAcaMvIMxaDhvSgxWehIoj1G6+QvGcq1F4vqS9I2gs
         caK1LJT65pM5AolWjZlaCKDD6+iRFBHZFRaoafrjVvdkbfxZIl45kDCKpzETTDHiJClY
         5CSGVTDbdl2Klhnu1HNtpgtaFtFCthuHXAnJOBOY+NOLnJJPmEls1oE+pGUM5FG6G/qw
         TkIsvowBQTjuhj9ifr08EoHZYiewj6A09Z0rLday8dfKWSh9dnNf3GzYxTR72gYlbbQL
         d7uQmQyoJV63I259K9K2Dnirc+HVSVsqWVgm5tV/dl8A396nwW5m3vOA+PIEjes/aIpf
         i4Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tssC5KM3kxHQKmzpjfRVJHgpNXVidq677GlXQxy2fhE=;
        b=DDeUJVotPM3uCH8+wPqlix9fGd+dmbH8e7W1HjVMmd+eNrIqURcq0FlcssKR7GFZUj
         NKsofPT5tv/C8Gb2zA4uq+XiX39Ox20vG8X8rfgWTf8htsGHQyH/xhCzyBP3ZSMAV+0+
         LO1noT9frCdRvvhtpiD/X+quBRgXVqa2UvqSWGwqKVAf3wH2NweFXclWbfd88MXD6uSL
         hLpZHRzixocvB1e8ZBohG5qaQqg24mjyJWgxqVatNc+/XL9EyFKmjAtU9o0qNQyrJT+6
         lgenwguUsLFEzM3cMcEmcn+mlY18g5K/vEeCfdB6Iu7Sb+fw2e/EKvKNJGLiF68CN4JE
         NCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tssC5KM3kxHQKmzpjfRVJHgpNXVidq677GlXQxy2fhE=;
        b=Q+j/OsKTxn1Do5dyyQgt3Chec9WLr2WRhNPlVCT0X3Ppu4tBhgokpW4p4wuaxB1RRu
         wuLOr1q7sPIYPMB7Isyia4xESh5KzOREfrJ4k7viJ0jiVSRb/14ax5jacDmGXAM+dYrX
         aDgriUtErHQrhlWy1Zdf9Cg1SBXGIEduCM7C9jXxlokXGy+AR35uJIOAcHmT2MB8mRxt
         58t+xQ2aTvFwPm7bE9HPZk2Qwu/m2XuPD+orD1KkaYozGG0y6QXnilxXIrDbKm0JPoBF
         ESUdZi5IW67K5tNpkBNnV8vWpVhbe1KI8We8F4suT22/c09xYobn3Mzs495sJwEWbYTA
         Nm2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531w0RG2P1Kkq6JtCDrL6nXbSgoe3aOjeT9RoPVyzafDwIHDkdWP
	fcgBVhZ2pbfkMzT/7kxfPqc=
X-Google-Smtp-Source: ABdhPJxQnDJAr/eDbZpPorXc2ukQnNMFnA70GhyQfhZkgw7ROeKd+1LW6q5+jdUoWxrkNhsHc4aeQw==
X-Received: by 2002:a17:90a:e409:: with SMTP id hv9mr1419799pjb.123.1625894848901;
        Fri, 09 Jul 2021 22:27:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ea08:: with SMTP id s8ls4105891plg.4.gmail; Fri, 09
 Jul 2021 22:27:28 -0700 (PDT)
X-Received: by 2002:a17:90a:d102:: with SMTP id l2mr41582202pju.225.1625894848202;
        Fri, 09 Jul 2021 22:27:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625894848; cv=none;
        d=google.com; s=arc-20160816;
        b=jrz4sZlG83fw7euuKt/bIWu71vxq2818vE5SXZnda9P8pELSifW8qcRcxhlj44AuU5
         V5E9iqsngVIfo6UIpGWYcD6gjDSMSL3W7Xmxaoujie6EuFQ6fpO5e+hkkhLBGAxujdFK
         4rNJsPcAkxHAWGd8fxSElsVI9nE6rmB+3pPTxClBvWpSdmzLpF1DxWiXfOGkkb0VIaLn
         sd8/Y1uqjfTIPPHkGM2VH9Iphm5ge7traIBup2VZ2jJVHdMKEC5kFOkyetZ99vA0Iiev
         BnrTlZcyd6oZrcs929FmjD66D13Jc15s+VamVJmaxDQ1OQfPyr3HF5B6pKDhpNHNVbnf
         i1Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=liSXZ8NQj1zkMlMb6NdS29l2ZPO+8eQHmsg89R1RKeM=;
        b=OdFFcaVpQ8HJMvrAifjQ2vGzWtWzpJajJddSZTbwpnwbQ0ScY/59jKCHq+yDmw2Bge
         aMe5bDfwQL5nEIQQzh+yKJNChJ4LmVRtfnkj52V9Nmv7QWLvPKnCBHkgB6CETAQvPNdi
         oCDBqE0L1oyv8zSWD9bNDufJ0AOvl1MG9kdHfrTrt/gGpHo6mreglcIejTGygD/B2m3J
         hXnpF9SMfiUi7Pm6eymYK3bKi4qmnS+dYKzQGVqTse1JMAL3P4iTOx+CPPLms1E1a+56
         2+6Csg10LGer7CwxYy+8amLpAACB9m5FTjAUYgj5k4U1ULBKTUxUmdwMA2YIi5jtLDEV
         MGrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id o7si381620pgu.0.2021.07.09.22.27.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 22:27:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="231584566"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; 
   d="gz'50?scan'50,208,50";a="231584566"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2021 22:27:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; 
   d="gz'50?scan'50,208,50";a="411470784"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 09 Jul 2021 22:27:17 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m25WG-000FPP-Hz; Sat, 10 Jul 2021 05:27:16 +0000
Date: Sat, 10 Jul 2021 13:27:11 +0800
From: kernel test robot <lkp@intel.com>
To: Hannes Reinecke <hare@suse.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Douglas Gilbert <dgilbert@interlog.com>
Subject: drivers/scsi/arm/fas216.c:2013:47: error: use of undeclared
 identifier 'GOOD'
Message-ID: <202107101352.q8WJStNs-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   50be9417e23af5a8ac860d998e1e3f06b8fd79d7
commit: 3d45cefc8edd7f560e6c97a8d9928ad571f76dec scsi: core: Drop obsolete Linux-specific SCSI status codes
date:   6 weeks ago
config: arm-randconfig-r004-20210705 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 3f9bf9f42a9043e20c6d2a74dd4f47a90a7e2b41)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3d45cefc8edd7f560e6c97a8d9928ad571f76dec
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 3d45cefc8edd7f560e6c97a8d9928ad571f76dec
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=arm SHELL=/bin/bash drivers/scsi/arm/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/scsi/arm/fas216.c:2013:47: error: use of undeclared identifier 'GOOD'
           if (result != DID_OK || SCpnt->SCp.Status != GOOD)
                                                        ^
>> drivers/scsi/arm/fas216.c:2013:47: error: use of undeclared identifier 'GOOD'
>> drivers/scsi/arm/fas216.c:2013:47: error: use of undeclared identifier 'GOOD'
   3 errors generated.


vim +/GOOD +2013 drivers/scsi/arm/fas216.c

^1da177e4c3f41 Linus Torvalds     2005-04-16  1997  
^1da177e4c3f41 Linus Torvalds     2005-04-16  1998  /**
^1da177e4c3f41 Linus Torvalds     2005-04-16  1999   * fas216_rq_sns_done - Finish processing automatic request sense command
^1da177e4c3f41 Linus Torvalds     2005-04-16  2000   * @info: interface that completed
^1da177e4c3f41 Linus Torvalds     2005-04-16  2001   * @SCpnt: command that completed
^1da177e4c3f41 Linus Torvalds     2005-04-16  2002   * @result: driver byte of result
^1da177e4c3f41 Linus Torvalds     2005-04-16  2003   *
^1da177e4c3f41 Linus Torvalds     2005-04-16  2004   * Finish processing automatic request sense command
^1da177e4c3f41 Linus Torvalds     2005-04-16  2005   */
ee0ca6bab394fe Henrik Kretzschmar 2006-10-01  2006  static void fas216_rq_sns_done(FAS216_Info *info, struct scsi_cmnd *SCpnt,
ee0ca6bab394fe Henrik Kretzschmar 2006-10-01  2007  			       unsigned int result)
^1da177e4c3f41 Linus Torvalds     2005-04-16  2008  {
^1da177e4c3f41 Linus Torvalds     2005-04-16  2009  	fas216_log_target(info, LOG_CONNECT, SCpnt->device->id,
^1da177e4c3f41 Linus Torvalds     2005-04-16  2010  		   "request sense complete, result=0x%04x%02x%02x",
^1da177e4c3f41 Linus Torvalds     2005-04-16  2011  		   result, SCpnt->SCp.Message, SCpnt->SCp.Status);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2012  
^1da177e4c3f41 Linus Torvalds     2005-04-16 @2013  	if (result != DID_OK || SCpnt->SCp.Status != GOOD)
^1da177e4c3f41 Linus Torvalds     2005-04-16  2014  		/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  2015  		 * Something went wrong.  Make sure that we don't
^1da177e4c3f41 Linus Torvalds     2005-04-16  2016  		 * have valid data in the sense buffer that could
^1da177e4c3f41 Linus Torvalds     2005-04-16  2017  		 * confuse the higher levels.
^1da177e4c3f41 Linus Torvalds     2005-04-16  2018  		 */
96d5eaa9bb74d2 Arnd Bergmann      2018-01-18  2019  		memset(SCpnt->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2020  //printk("scsi%d.%c: sense buffer: ", info->host->host_no, '0' + SCpnt->device->id);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2021  //{ int i; for (i = 0; i < 32; i++) printk("%02x ", SCpnt->sense_buffer[i]); printk("\n"); }
^1da177e4c3f41 Linus Torvalds     2005-04-16  2022  	/*
^1da177e4c3f41 Linus Torvalds     2005-04-16  2023  	 * Note that we don't set SCpnt->result, since that should
^1da177e4c3f41 Linus Torvalds     2005-04-16  2024  	 * reflect the status of the command that we were asked by
^1da177e4c3f41 Linus Torvalds     2005-04-16  2025  	 * the upper layers to process.  This would have been set
^1da177e4c3f41 Linus Torvalds     2005-04-16  2026  	 * correctly by fas216_std_done.
^1da177e4c3f41 Linus Torvalds     2005-04-16  2027  	 */
ccf9ea91aba0d3 Boaz Harrosh       2007-09-10  2028  	scsi_eh_restore_cmnd(SCpnt, &info->ses);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2029  	SCpnt->scsi_done(SCpnt);
^1da177e4c3f41 Linus Torvalds     2005-04-16  2030  }
^1da177e4c3f41 Linus Torvalds     2005-04-16  2031  

:::::: The code at line 2013 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107101352.q8WJStNs-lkp%40intel.com.

--vkogqOf2sHV7VnPd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICG256GAAAy5jb25maWcAlDxbd9s2k+/9FTzpS3vOl0YX27F3jx9AEpRQ8RaAlGS/4Cg2
nWorS/4kOW321+8MeANIUF83D200MwAGg8HcMMzPP/3skPfz4XVz3j5tdrsfzrdiXxw35+LZ
ednuiv92/MSJk8yhPst+A+Jwu3//+9Pm+Opc/zae/jb6eHwaO4viuC92jnfYv2y/vcPo7WH/
088/eUkcsJn0PLmkXLAklhldZ/cfnnab/Tfne3E8AZ2Ds/w2cn75tj3/16dP8N/X7fF4OH7a
7b6/yrfj4X+Kp7Nz+3xzdzO9Lp7viqeX6c3L8+hpc3t9N7r5+vJcjD/fXd3dfB4/fS1+/VCv
OmuXvR9prDAhvZDEs/sfDRB/NrTj6Qj+1DgicMAszltyANW0k+n1aFLDQ7+/HsBgeBj67fBQ
ozPXAubmMDkRkZwlWaIxaCJkkmdpnlnxLA5ZTDVUEouM516WcNFCGf8iVwlftBA3Z6GfsYjK
jLghlSLhuAAc4s/OTGnEzjkV5/e39lhdnixoLOFURZRqc8cskzReSsJhsyxi2f10ArM0DEUp
gwUyKjJne3L2hzNO3Egn8UhYi+fDh3acjpAkzxLLYLUJKUiY4dAKOCdLKheUxzSUs0emcapj
wseI2DHrx6ERyRDiqkWYCze70VbV99HFrx8vYYGDy+gri4x8GpA8zNQxaVKqwfNEZDGJ6P2H
X/aHvXadxIoYOxAPYslSz7LCimTeXH7Jaa7rIU+EkBGNEv4gSZYRb94ic0FD5nakSTjMQnIw
O7AUnH1YqyMor3N6/3r6cToXr606zmhMOfOUbqc8cbXFdZSYJ6thjAzpkoZ2PIt/p16Geqkx
yn1ACZCO5FTQ2DfvmJ9EhMU2mJwzynGLD/pssQ83oyIAWnNgkHCP+jKbc0p8phswnUufuvks
EOqoiv2zc3jpCKy5aXRGvAeJd57Df72FfroppzRKMxknMbXqWE2wTMI8zgh/sChCRdPyWQ/y
EhjTA5eSVUfspfmnbHP60zlvXwtnA9s4nTfnk7N5ejq878/b/bf23JF1CQMk8dS8pWQaRlEm
yq61aJvlED4qjUdBSYFQY66LkcupxrlghtQEay6SzwQaUt+UXnUi/2B/Sg7cyx3RV/UMBCYB
15esAYQfkq5TyrXtCINCTdQBEbEQamilVRZUD5T71AbPOPFonyeRwW1GRxDpdwkxMQUFF3Tm
uSETmYkLSAx+D31JDwi6TIJ7zckgyk0S08MY2DjxXNQaK0GHe4kXTkau9SjNI2ru66L8y/2r
pomL5rASz7ouW8xhJfBxVseI/i0AK8WC7H78uT15FmcLcHoB7dJMu/ZBeHOQrweudFHfNPH0
R/H8viuOzkuxOb8fi5MCV5uzYBuDPuNJngpd/cG6ezPrxtxwUQ2w7KxElMy1Rx4QxqWJaWOI
QEgXjOWK+dncfsSZPnZ40ZT5xhYqMPdNv2xiA7g1j5Rbxvl0yTy7wawoQOXQilzgiPLAMrOb
BsNjIiY8KzfgCiyj0L+LFJTb2HqeCRkLK+/gn/kQDiTYQdVMzKm3SBPQTnSNEH9qDrlURIzi
FKca4kHA2foU7JlHMl0fuhi5nGj2gYZEc6SobnAUKsbhukvG3ySCeUSSgzM1AkzuqyjNrk6+
dAE3GUJ247gWo0ePijDRZa4gV0OzPorMprpg2NCFKvOipwAJuNCIPVIMFJQaJTwisUcNzeiQ
CfiLzdj4MuEpxCMQzPHYOAQv08IjFajlzB/faMJPDf0tHZBljc6wCJwmQ0XrHnkb/dWWoYyT
NOeXCLYuAxktxykNY/e3jCOmZz2aCGkYgFh1NXWJADHlxuI5pLCdn3AHtFnSRKcXbBaTMNCU
UPGpAyDijDMdIOZgSbV8k2mJBktkzo3gj/hLBmxWYtIEAJO4hHOmi3SBJA+R6EOkIeMGqkSA
1ytjS2ocsnYwrZ0HMFzQMCE2xcXTVcGRvlkV5mP22rILM8de5ygWnp5jckG/GEoWudT3rYZe
qSjehlLOuoIgEHiSywi2kXi1S6yKGWlxfDkcXzf7p8Kh34s9hGcEvKKHAVpxPLXRmDl5w5Oy
vr1FrDHEP1yxXnAZlcuVcbSh9JhdkwxSc03xRUhcI3MLc9ciKCSDQ+AzWsew5iDAouPDwExy
uIFJZLVbJiEmSBB8+HbSeR4EkPCkBNZU0iHgJmysPYiMRtInGcHSCQsYUBqJGIRUAQuNe6HC
N+V/jGTILGa0WqhfOB4pjRToxIz8DRiRIk/ThIOzJCmcA5gt0s0JUeEgxENf34LjBO4uDpQR
0R0eZMKLMtKsJtYqRRCngcPrI0p6yGyCkMxEHx+AOaSEhw/wWxq2pI4E5yvKZvOsj4AbzVwO
DhaUwPCp6p5G5KHanycD3+tgG8nkKv8WOkNfTPGmqkaQzkGeS6azrjKAiAASLN3cBq9qCPM+
74Y1T2dlIUsl9AKSgzLcVWG6k/14K9oLHEV5d59wRpLH4PUZbCcCFbi9hCfr+/FNq9clCfqz
FJQD3bBV/RUZTe+m6/UwPgBn73Lmz+xRpaIBvZpOLszB1unVpTX8ZHlh9nRtC20UiqdG2Fkq
ARmPR6Ph6cTUm1zkJgHZjodWJOAVmipBejw8FafT4dg5TywGKDY0uwig6eT71IQQF64jXV6Z
0FSBy/KIifFA/8CSX61cK5wtsw48SR8s5Fno2iZJx9d9iKmcCEVnUpaIRF8QQZvEaUNYyWBV
kjCn8wdw6sItVOQ/p2FqeJkBMF7scFxJo8xBr7VcUrt6imv3/eSc3t/eDsdzyy6wISH5AuPK
dKut0+pOur/fZSTSkGVyalSBWijGv1blq0km9hS2Ro9tGZXyYEkQCJrdj/72RuUfQ3NjyGZT
iOQa6PwR7TSkOKN2EYANXR5ATS6grke22OdRTkcjXQ4AuR6eBda2T3M/1XZDiWtUvRL4XQUe
Q9cWsk0I2cBySxpXatauC44IMPakGW/yqq6IpiS2cbeyh3dq4RWBMEn5BxLKeT6jcPdMkxXJ
KPFzjELCzJbGqqormnj5mMQ0gXCG34/HzSIhxPcRxmLgk436OKb5WDNcsUz5LC+1lkgJJ5UD
bDPqCnapbNkNHZt7UN6sA5Ad3vAVrizntAE4aKntkDKII1rRaVk2MhPJ8gmpJXhUOShPovJB
b/T3qI9xhdARXuSrlyk95V6ztHqsGHjHWFN7oczjRIDfyiN7uo6FBfmIWYvvc6vYDAnVJWcn
PfxVHJ1os998K14h/gZEgwuOxb/fi/3TD+f0tNmVFWhDTyHm/TJU7LWMbiZmz7uO72J+10gj
pI4owFZztjSj/ppkliwlblpP+QwkqGo+gMqolmb6WYmA8DSjjZ+B29Kw7PjH7XcjD8K7BNiK
+2b79kG6cEoJ6JDeQajlg91hg7Vx5+2w3Z+d4vV9V780l+ydnV2xOcHB7osW67y+A+hrAYey
K57OxbNe4BycsvSrio3Xhg3bnUoj230yUoNXI7qIdOEMrlBueHt8/Wtz1GXdrDtLkhkcUMB4
tCLciN8UWVZ8O26cl3qGZzWDvvUBgkYy3bVNo+nxh9T6Bouv40EK7pILGaQQpPSekTfHpz+2
ZzgKMFgfn4s3WNCUbZ0a0UwGetTRZBUNJ7+DBQCFd00DUvulNOvmIb3ERDkJNIv4dAxGFqzW
Sk/PFpz2Jinfeu3QIXILLwpuVKPaZ0+V4M2TZNFBYmQEvzM2y5Ncm6sp8IM41L0tHwn7BAqJ
FSqUrl54bcow4O8yFjzUFdI+wYLStFtYbZB4ZmWCZt2W4qryJnI1Zxk133kU1XQCWRVGUzLr
TMIpZLsk9susWVYelqRdGVblISMhxxABx9vgKpwt50SfYmO91TRbhMEgH1YhTtPZYZlCUA+j
pAsouM1hZj4sVJihwpZiGjQro9jhYQw0MLYaL/hIfN7t8IPqBT5dqeDCKKgotApMzNdWVK4O
leXRtUMBQVcdGlIPCzpa3VLFY0JdS6zJ8p7MUdMURpWh2GN3D/0cvUNA16Bh3TtiGXXbP+r6
fTdLUj9ZxeWAkDwkRkNOCIKVLkgQbLOvrZ5gfwqbiRy2HfvTHoLUDQZGvwzJqkuBMrU9taT4
oClpAHJkGIwGQdfGJep9HYLgqjmEr9a265uBkchMGk2jOsihaF+bqYqtjdUuoJrhqjIECurr
XTlYD9Mrn9Zgf+jpolWMNIjlEgJ3v3FMXrL8+HVzKp6dP8tw+u14eNnujDYDJKr2buFXYcsi
JDUr6RZMW4u8sLDBN/aypWE+K3P+Xi3zP3jUeiqsPeJ7he6FVH1fYG26zUyrkxFl9hORrHc3
u4AqS8K6fw+VxxW4fSfWx5RoiyoBVWVM+8sJ7jWtYLqwW84t64k6m7PmDBoRTPmfSMScjP8B
zWRif9zrUF3f/AOq6a2tncukuR5PbMJAFZ3ffzj9sQGCD70F0MRw9KSD3T5dwu5D6QCZevwc
nGTgebMiw/eAFb5sC3QxzZO1ZJGqMRvbVKEV1pRhk59OX7f7T6+HZ7hKX4sPHcUtO15CiKz0
4MetOiKanwspPMHA83zJqR6f1A/LrphZgWUXm9H2UL5DZ3TGWWarANQ0WF3wzUmrlLmMLLiJ
W7lZdyUAyeiL9fzKRfA9KrDVONSGIdlPUhJ2Zy0bSiWNVcQPN66XaaSb43mrMi2s7ekPYwRC
yUxdUn+JL9G6s8VCbksxiJBeHpGYDOMpFYnhproEzLNtuUtF/EBcmiVNVpRn1Nbv2CXlTHjM
ZImtW7wtUxGBVRQRBARWREY4MxDtJSPexaUi4SfCNif2uflMLDoxbgSh/lqK3LUMEUkIfMA1
v72xM5PDWExO24mt2hn60UWexYzZOIYojOuCNWKVPL445QJyWKtoaWBdC7tdb25tGO2SamzU
6X3naugXLvqigmn1uF/2tSZtv5V2i4COJWXDjA/xatXe3R54i148uNQW6dd4N/ii+tHqtlBj
vTZ/j8eajOPq/gvI+ZSv1g2l+epHMojFPcmj1X0/QALXIhPw2SFJUzToWJlDJ6CMekvftlYp
kdC/i6f38+brrlAfIzjqefxs1EFcFgdRhumAzbA1SBn4qZ5kAKjT61GSCo+zNGtLNs0GKnwQ
EtPwtuDh9RGL7fDLFBvjU9Uyj+lZb3XVyNWWi4DBKh9tDm1IIkokUfF6OP7Q6maWokpdidd0
uynOY7WPdV91Md9XzRnm2VfPsAyNQOeuqHeSNFPhOqQm4v5O/Wm3BRlNL89RTyicoirZW3TB
GPLOSp4qhci6e6O+20LbXJ2uqTQNjJlSvPur0d1NTaEeulLKVRa10IZ6IQWnhY9Zun7CkmaJ
yNNTFPhROloLyHQwCFYNTrZ8Dh/AIDkV902b52O3/14BmmAq4W3jMUV1s8dxg4OGPiUYHHB7
ZW+Gu7CCPRS+NGBuc7eDAzCebMU+RHb/4X9P5+cPJtljmiRhO5Gb+31Rd2imAaTsF3bUIRf9
9p9hcuDx6/vzh+6U9WRWj6Ym0LZf7qH+pbhtLUvNTh+ibEC/bqi6ScCRcBqZalgWFPHu1gUj
e5co5eotDya3t5HO8rT3SVBj9IbtWjtBTG0GuKz2YFva76wpRPvF9+2T5QEj9TzCfb1lO/Ui
j5F+xOt9fNocn52vx+3zNxXxtgXu7VM1sZN0bW9e1i7Kd3PNx+rgKovRzh6SgyxKA7vYQKCx
T8ILX2mouetXgvILqd5+mlr/7rB5Vq8EtblbqZxe57YBqVP3sd9c86pr0IJmNe3zonaU1jpg
m1RDywA00jXcZEtXX2zdN3a30bgxlUpikqV51Ea6mBWVL2o9KF1y872hhKOeVkPAY0Wd7pla
9JH8ApH2IsfP4bIyi2w/MMAZiGpzrOZRKaztc60KTc2ZOtdTFWTzLOl89yQSbIrScmVOZ0b3
WflbsolmCSqYCFmEY7tw47MkfI8QczhqpQeBIUJABZA1lobBeBEcuCdNU8izup/axXG5F4nM
lTMmXHCMWuNMNGfVDtuAuAT1u9+NZpJ6jUaSsTBmwd8ywg8rQMDE9rykKATjQUXSG527a8vo
ls/M7j7sD/SqNo0te03/HURtZtdfDdDtVwmSqf0ZvUaT9e3t5zt7EaqmGU9u7Q68KmD0jEq8
jKgjmv6e1lADXAY2T6gwkNrOqHFZNDBWbmyFJ50k8HRdM7gog+Tt6amvYsS/nlyvpZ8mevDf
Aqs70lqCPIoe8DLY8i1P3E0n4mo01kfAXQgTkYMRBqXAz0SsZYnUF3e3owkJhfHpkAgnd6PR
1LaYQk1GOrmgMUQ8QmaAu7Z2BtUU7nz8+fOo3XENV3zcjdb6rPPIu5leT2xGSoxvbifaLJzo
+QV2kGArRwtaY68u3A4/0KHepNLfMvejYM2ifodYCYdsc3LVrlgBq6a9Ljgi65vbz9c9+N3U
W9/oqlbBmQ8B7t08pcL2xlERUToeja70hLrDcfUM//fm5LD96Xx8f1Ut3ac/wEU9O+fjZn9C
Ome33RfOM2jl9g3/ar7R/79H97UgZGKK6tu7oWR3Lo4bJ0hnROsDOPy1R//pvB6wMuD8gp0r
22MBbEy8X7ULgy+VBAOQNDTU3Jvb2gLSZUpiZlxN4yIaARvzqRlj9tsbsD5bDe6riCreRokW
AHPCfPzsmGsODak0LcUx5XNTK0GEqVZuM/xqOaiWds4/3kBUcAx//ss5b96Kfzme/xGU4Vej
VFGVeoXd8HtzXqLt/YkN2pYcN0hvbhgC3ICH/wQAiQcCb0USJrOZPetWaOGRuAxX6hBabT6r
lfDUEb1IWSVsU7wC/5GCCm4ygJiQufC/QR54qo2te0o7bPxkbmrV+ZqbKbjqUFOpt6kLMg/E
3POtQFl3cvex0vNjcQnvrzyZeTqFuXekca2nWuqkWU5QMFVyVn+b9qZrcRmZYYSuvsQfPvuW
Hg/4Ah1fUyXvAT7LQr2cdFhV9fnqqnUuVlVS705a2s0/sLa12x3+wu6ssjnp5KCBQrKXd/yX
SqrLV3V0WXixtZErfEIW4w6fVS3WPD5/3uPan0vukwtyAoI5hM+rwfOcSxp5vYXAoOakp9sd
C2dYyRQ/h2m0Sn8cMN4eym9m3AS7KTi3toIgjXoZra+3d9ifjyB9lPlf2/MfMGD/UQSBs9+c
4SScLX6Q9LJ5KgzJ4zRk7jF5+bMHoMKpLBU+o+pSW8vI+g1kpy7nVl3s1V1pJynhVeRlTQpM
yjIpg1yHiawsN14KesFhWNFVKIrppj1a7cS3MoUJe3eA7d/ez4NOjsXGvwGjfsogwMJsSM1k
psSVdd4FJHG2MFKRRASfVBZljqh4yE/FcYf/QEFz5KcOC+BoIWkHYXR5qeEyFSRfD2KFxymN
5fp+PJpcXaZ5uP98c2uS/J484NKvJpQuS2BHAnTZOX1NzENFoXLkgj64CeGGgtYwSBPS6+vb
W9szk0ly1/LZYrKFa9ScGsyXbDyyBu8GhR69a4jJ+MaGwOcj0FzGb26vLehwgcz86MHVlws2
HhGh+gmt3142ZJlHbq7GN9YpAHd7Nb4ovVItbfz+H2PX0hw3jqTv8yt02uiJiV4T4PswBxbJ
qqJFVrFJlIrypUJtq9uKlSWHJM+059dvAuADjwQ1B8tSfkm8gUwAmYkm8X0fAUDjj/0wRTNs
clwTWhjajlBMdswch/LM9OuLGTq2sNGDeY8pMjNT21R5MgwDmsLuWBfbqt+PHg1r6fTseM7O
2S1az/50gN5cr+rAXCzKDFzBYfr1PACLc0URTnj62ZegjCcjlzOoHw1m2DJ+fjzlezn7tTQW
MkytOIlTJAWNiTVlfWkG7XREYzjBOK6GvMLko8q4OVHiEWXMWSBNXZnkt0nOmowE2Ky2GXfc
hQ3NJ79lrG+li/Qag3awZ+PBuykE7iSK20MGeyNXXfdZ0/b7qsNHj8pZlqx6n2mX1Rl2nobx
DjmPq+Yq2fb0sWL96Z1EdsdjUQ3O2sGetMTkqMYk/G/3t0E0DHgbVnUFA8YNsvIax/qov40j
goO70+GTo1fLa7alhMauepV1his8OhN+WajyiHl9OSeeh9vJ2bzGCQXCB4s6IYnnqDUs66Hs
dQxsekICB1bWWx5/oGpdDP2ORn7iarNG/PFuLatDOVTY0YiW1nUsTPjQFECyNNzu9b3hX4Ae
yMLBi1wlFr93/DT53VKL388VduOoFU0sna78zgVL4mEwuxhvzZz4cYKddFrFqkDL8V2Nxfpc
rBbvD1XgpJ6HySCbyzlxuuaCimpt0lY1NzjHJ3TVm0fMGswI9bGjV41pSKLQMYZZ20ehFzsX
tE8liyj1322sT5YFLdYYx30zykKHoKx+60PXoviJe5eo6t6oihhBjiQ1Sdom8YbL8QA6jVON
AB2BBFaKkqpLOIlsQEiHnkkt/cGDajGm2qBICAoB6tzlRsROOHbml5O+d2nPHZTT3pmMo57j
MgP3Fq0Bddkum1DENyCT1Ds4BSrK/FjoriUKKsq9ouZdD+wjpmJJFHbL3NXt2IHQbzUDogln
p6VmduWzoaXQhW15vVKEk/hvhaHNt0kYu1VJUdHuyGMV8rsYvDWKLKaJN9YDm88TW+pFvhx0
9qgaaj8Y7LRHwLkKSi6YGTRKsZALMx7RKDNzzZtM6Dw/UTI2xovuhkbQ7GNdUTgK1+FYgY16
dMI9qcVH9MzbNVVgHZOIXfn+7uWLuJCoPhyvzENmvq4r53f8T/5zvD7SyG3WyQ22Ru3aXNvp
SmpdbdqemtQuO+uXa5w4Xn8AO34SKPPuKXfaRe/fRCJdfpEZGh/KbXWPLfgnWXmlQLusEWZz
6F031oyzASh2viRP9L7evdx9frt/sS9KGVNc+7SAF8dDf6zFdf+hlzaBvco5MSy0/dmmAd9C
5maReqRTblGcJpeW3Sppj5FMXcQx3CgNZ5O/ugBZIgwmRtcUeadx//Jw9zidNeujDXaqU0Ad
fXgAkNDQMwfISFY96aUHFnq/oXxAojD0sstNBiTNw0ll2nKHgmsc0zymVODQXU4Z95wIMLTj
XnpNucZSDqw8FHokRhVvsgO0NzcFfqeOwmJkNCRxtBr3WnTcrmul7h2VlXFiXJ2Cns2ryTKa
JMM0Lg7PT79yMnCLASIu/Ow7R32UCCfpvmwqHlAZqef1rthw7193SXhP8B2gvnQpwNKjxODQ
LZsVoj3fppk2Rq0zi9nn+WHA9rkzTqKq57q9fpJgwm5EiCY743F9/ciyHa+juwQjI2eyqqxg
fPMoHYfMsa0ybbJTwYNf/ZOQkC4hTxDOpSGtkneOyyEJb/v6UrfrdRI81WFbl4Oolz2OhfkY
HkzOWMaMpJucdfV0nqtDB3lPXGSqZ/fhsi9qrYPm40mG+jMdTnWtC4n9TW4Z2Alanls9Jvyo
dHsuBRFlh7RNaTdyigiPpaJ816094NtWuy+Q1342WwUq+xiQW9XmOZXfbolYdJqKJxBu4iCP
bTH9jbPICLHCI6zbcrs4Pe2+0jQpQeor7LJMYCLUenHcmSXkN6vH7XYhg0yVztKaQc9ElDEp
q6MRhsdi22SBT/AUZDuufj1U7R7mj2ZFVd64Qv+A1jWOGnxPmsO/tkFngK29/G1OVFa3O8EE
4nYAs3WrvAkCzdy+Z9NUZ5pfxMk5zE41KifNR0dtbUxwqoiAeIMr/IA3JzwUGsdGM1jHYwec
ox9NNOfSZ49/Pr88vH399qpVAJau3XFTMb0inAi7Jm3EzeQMbVojjznfWc3Ug3otrSqDf/3O
LS/Hu/xfvj2/vj3+vLr/9vv9ly/3X64+jFy/grz9/PXhu2Y7I9qSm3XypcvZYkXJ460KS+fV
O2jOayakQNdl06rm8px2FJc6ZltBO6E5qX1UNaDN6IlJ+7fZ0u0vGKtPsGYD9AG6FBrp7svd
dzGA7cAvIltplOnIkWXHHlahZkr/+PYVkloSV3rBTFjoTc6eR3tZqys7bcwmgr2AI7yg7DFu
Ue24KF8Y+JjUp5ukT7JCKeSykZnz8R0SucXvHfq2wYF9j9Pb1jYPa1l79fnx+fP/mdOhfBLe
W+3+FrabIvb/oWT8MRYe9ECsxCCFG+4kd/X2DOndX0H3wYD4IhwJYZSIVF//V7UTtDObxV11
4FJTkX/VoVFv4zkD/GbblFvAGNB2TnCpviSBbtFSv/cSqy26+6f717vXq+8PT5/fXh61wTeF
0Xew/M3Mg6/XyunHRM/7IK7VAIoa4LuARAFGVz8eAwXEA4gJsQtX44zC39o7JSPhss16xv02
xuduQkJNDtjK5Hv9CRjZnI5VSGSda0YVM+lyQwyquO325vVkdJf5dvf9OyyrIgdkustjwXPW
btAxLeB5LKwtprIImyQCdX6FoRUnoK66Zk1x2eZ7zT7UXY1Zrgjq/V/fYRph1XNbZijtppyl
LlSqnZTL85g8S0PfWQMBx2Zi8lRyMKisrXKaEE9zx7WrI3tzW9jV1CrZVZ+Oh8wq76aA8pDm
fINpZQz0VLEL+Gl8JWWfux/r1k8D7HpmRJPYN2s7z1k9JfZbMySRK6Vzk6SpZl6NNIRooJuH
l7cfsC4aA11rot2uK3eZESJJFu6YX59aVOShCU/pnsk03civ/34YZWJz96rHBj8TqH0Puv6l
6Gmg2sirCDk3GGBa3SxIv6vQEiNFUYvYP979614vnZDOFwaKeWNkJZHepZ/PHLxiXoh0o86R
aDVUAfG8yujnhSdPsPGmpxI5klcvoFQg8UK0vvwbHzPP0DmIIzvfd6fqX3LH0YDOl7zLE3r4
QqvyxAke5lXnwayctGYqvcDRgCWJ1dmpD7FZ2PKdqHgaS3VUWojCtev6eND20irOnw7JzLNt
jY/HH6ixk4j9WXtfSPwJ+9TCJI0qqBTP8sRPWrkiJ8Gjd0wRByTQj2UUBJM3C0NDPKoMHx0I
XUCE58ahFFdiVR4ftYRWOEgcozmnMLUwgMUDcQCBG0CrDUBEHUCMujVJCFtyZo49Q0vR+6iz
U5/HESVoVkPF35gSkQa6I+7ItyTTlq6XDiYWNrS4PczEIY48WIlG/Jt5+gj39+J+WKjh4sSw
jQksfFu7CTiQ0O0OQ0I/DnsbmK6ssyLHyrJlIKlOInzsSoF2dUiSvrFTB4B6KBBHXoaSkUG0
r/YR8ZEurzZNVjZYuQFpS0zJmxlYEuvnk5L+MXeERJgYYLnqCKVr7ng81Eq2K+3y1iynaYCs
DhJAJu8ImEYlGpyulkVwUMfHAQnXBzLnoWRtkgoOivSaAByVDWiEdKcE0BnMjcZovFpUzhJ5
0VpZBQtJkVnAgSjBgTRWD7hnuk9iH52/3E9xfQILDj91fhxgV8YaR4g0nwDS2JEqFHd1oMC2
30dFWlMPoHXz9dNuBpZrpkozue2pnzh6sothTcBUwXkYNJGPDI4m9tFR3OgyBGOIV3OLkX6v
mwTtW26qvppYEjo+Wy9Dik2HJsWmVZOirZOG1Ee6QgAB2hMSWpsvsNmP/QhtCA4F78zIA2xP
xZ6k6h0vAk2MOYPZh3Yvh+J3ehh4QE9eX7Y5T+rhvu8zT5s3seNRk4nnyGN4Jk7rn6V5tkmY
YmtAq8djmD/AyVyro1HkAGJkdd2U9aXdIsJn02aXro88tDu3fXvxMfV7lpeHvj11l6rtW6SY
VeeHFNe9AIq81dUQOBIvQsZu1bV9GHjImlT1dZSA4oKNd9hXYQ0mBGGcoBNBQosF3Lq48xOC
tDuXFKGPFXYUTOhOQwoeh3W1wkS9GN3P6iwhnjss/QleYj8IsJ0BIEmUYOKwhYZCkmqbKI4C
1iHIUILIRfL4LQz6j8RLMlQ36VlbFHm0VmUQMoEXYJoHIKEfxah8PeVFir+PonJQDynxULQl
oWhxP9URWU203zD9UngGYI+zvroBx+r0Adz/yy4tkHNkOBQN7PixiVPCTiDwENECACUeujgD
FJ3pO6O3b/o8iJvVKowsmLyT2MbHtLA+34eRsFrRHyHWcOr60I8QgLFeTiOkHk20ql3CForQ
pEgIMnGyoo8Tiq4+GTRisr5AHjLqIVorp+tGOTPdd6zGLI/XZSDbN3mInznNLE1LvDUNVTAg
I0nQkcYBuhFlRUXo+vAClhA9WZwYbhihBE39nPhx7KMu+wpHQgq7yBxISeFKNaWYI6XGgbSP
oCOrq6RzDVy/BFTwGlZ41juKA2CEh4VYeGCa7Ldo0oCUKiQ0Oj1Q0kiSkSd7h831xFSK1ykP
3KpzNHCRjxReml59RGtiF6d7uPHIyHHuKvlIIOuqdi3nKfIefyenZ2V7OVd9idVDZRQvWAtb
x9VCqJ/Ihyh4SNSVwuhpW81rFRKBN9lhJ35gdXi3IEV5wx87UvrT6ijrVczZUsmiTNaKywn1
BByOZ/GuAn6OPXFJIy0Z1UO+LobNoJmd++eKW3b+YINnwTIuyHgOfL57+/z1y/OfV+3L/dvD
t/vnH29Xu+d/3b88PeuXjfPnbVeOafNmtC7C5wRd3ub9ccsQq67R38AGxkBKdut+qiphga98
ophWSdP8CUPbFzbv3G8Laco8K0RcNzvTLYMvPOIhUHFGi8JPHvxhQIsylZZ7j2DfyptKRyEb
7tNLCUeVtanf8Mei+0p76RCo2vIHTGPUPcfl/IbHZ1XSmT/lgNXnzY/Ht4c/fjx9FnGgR2t7
62qh2RbWROA0SDJMPfTeXMDTHe8yJDhZetRgNN2cjdPt29mF6nDKFIU1DS5moo8RhaGFloMg
p7jCsOCYtiBq01e5byYpponrCzmH9LoDTfPzEjXPiT8MA0o0T1MF1NLIcQfDb9lbUVJnLYU7
j6t3TTs0TpMOb55ZCknG9wOyPwcShDF+7DIyxHGUYvrQCCep7v4oyAyUYXcfcjhdybM8bCnZ
NK4xxqe+mWObb2Gb7rvKKR3x9AHYsdDzjZ7vqyCOTKt1ATShuhWfSZfRWkKlX98m0KjULCJ/
GN2heXCYVaC5+344cJ9SUP0dNZGGFnpJ4NO6OS007tVJvHDQKVBaz6Tonp8iLUFHDTCmrCZj
Dvu7lNCVteFcExr7U+NqX9eNHzo7T1qEGMvWaN3yEyHai5lYNGigc5+bELYdNo145gIijE6w
89YZTMxkRisVlZYXqR9Y7QYSTPjb4c02yeRZBkxGL2vSYxGR4/GTWp/FK9MKemRxiIdoLzfH
mmm3TwsDN+8+CSeSQ39qSs3Te+HiWqN8pWXiW80V1qxdEg14WuM6h86ihSsrQj/F7tsVlkkW
Ip+jJlJYC2YpJdgpjcFCsLaD3Vfoh2GIYbojxkKv+jr1PfQTfoJJY5LhNYL5FaE2agoLLCwx
WlKBUBxJYjq4ELxu/MBTi3mkQ1EcYZA4DU0ivHbieDHAha3B5ZBKOhdItNWmEjwh2iJCXiYU
r8OoLejSRcdj/dZCBxNU71F42iQJ0ZblEhcfhtw+MdA9FRXwJkk89NDU4EnWEkCvCReejgVa
9A4VGSU0knLHmhv00nxhUQSxjdW7kGhxQRaMH/eSyKd4xpNwXc2aM1HjpktHQ49i8s5kitHZ
JTDiozVTLCQnLHdZ0udlbngFcsrhyKptpT0WXArDb1WOjCQZPPBSHT6iu62iygTn+BqMmUC+
j32KjWkOGpqVSAtJRwPGpzJxJWtk3BTdjfCe6cu6zLVd4mgn/eXhbpKpb/rbVWONskYEuZ0L
o6HZIathz89uXAxFtasYSE03R5cV3HUdB/uic0GTQbYLFwHm1TacbaqtKitN8fn5RQ00ODfo
TVWURzPIt95Q0j6q1iLA32wWFVDLX8tHy38KO2k/XGPmw5O3a4akIJ98ePjz4e3u8Yrd2Cnz
cvL33bMiaxl/V5tES9U5yCNd8ZeNmupw7PDYcYKtbE48QpV42uZSH/uex9V1svNH7twx6pEC
q2PWPD64CeplTFjvg8v+G89t9A5CPlpOQmD8mTh2HAjJKE8i9HoGkDe7sYeAZskvSXdPnx8e
H+9efiKnI3K+MZble2uonw5CH5UD9sfr2/O3h//c84Z7+/GEpCL4uVdWW+u7EwVlRUaEy7dr
vM9sCVUNMCxQXdXtDFQtzEDTJIkdYJmFWugvG4xd9WoYdZwlGUyRo1IC852YNDhwZU18x5uZ
ChsPaUkcBwoK25BTj2J6v86kBwTTscAIEacVdqjh0xCf6zZjjB9Ra4x5EPQJar2ksWUDJVG4
NmhI4ir1Nvc8gl0HWkwUz0Bgjt4dM6fOJksSYSPi4aexSkKnLPU8x/jtK0pCx8CvWEp8x3zq
Euoxx7Acat8j3dZV8N8aUhCoOGo6ZzFuPCPoP7biqEvR6/0VLINX2xeQTPDJ/FiQ2Ni/vt09
feEvCf3yevd2//j48Hb/96s/FFZlIe3ZxgOFT7kUkERuP2ASb0AV/wshEm3Ej+SIEO8vx7ou
YaInxQf9sHib6RX5LLwb/3H1dv/ycv/6xmMR6FXSZWY3YLFDhUgZl8icFoVV6orPEqdobQ5J
EsToSxUz6k/lB9Kv/X/TAflAAy0i50xUnUxEDsxXpxgnfaqhm/wII5pdGu5JQJEupapdzdT5
Htb51B4mopexYWIQudTyEt8iQkH1TfnETCN8UReyv+zJgB4pi6/HWV0QYyVeQNnkzgRE9oNR
1lNmzwiZjlV+ScaOAJauNRsNRt5gZtlTz+Qret/qGu4jmZEIa9uYqMORXf3inD5qWVpQEszy
cdpg1Z7GSJMAkSJjzzeIMEetCVhHAe48tFRJPwHl9MPAItyCapw0ITJp/NAYjEW14U3bbHBy
bpFjTjbLMtIxN4sRTq3+G+tlzMIyRxdgX9fCZJMXFOQUvmmdGQKCHpuK9igIiDK+0TgW6njJ
x2XXOVL4REzMISqrQwlK9e0aUWEhLl+OYT3keYDt29er7Bt/zOvu6cM17Orunq7YMnI/5EIY
wAbAWTIYE9TzrKFy7EJue+NsKY4TNCAmRzd544fmclfvCub73oBSQ2uA73gEdZdU5NPEM9bY
7JSElGK0y7QDMpNYqSDI2Eg/BJQ+z33x3y8Pqdm3MKoTfFWi3hJGhGehC8T/eT9fffHOUy9E
j3tm+Rv4swIxbXWVtK+enx5/jtrUh7au9YoBwVzzubCA2nle7JAkAtTPJ2XQtzKfDg2maDH8
TV2pFSDaip8Otx+dvVYfNnvq1ksEjJ9ej3CLmvPNIDUrxy8DcO/bGTUHgST6Zkp8J4tfU8vp
0Ce72pWPQE2pmLEN7Al8e9GJotDQTasB9tqhNUfEloK6JUa2TbV7XU7bH7tT72dW7fr8yChq
zMQ/KuvyUM5nCM/fvj0/XVXTgxdXv5SH0KOU/F09XkIiKkxLuJdisVKldKbI3sHaIsgXcJ6f
H195CBAYlvePz9+vnu7/7Zrq8jW6LXLUZh+qyKdKX+6+f334/Iqd9hV6nAe54ANtCQU556GS
5UuiL3ff7q9+//HHH9BEhRk7cruZnktXbIY28hj6ViWpp1Dz26WwFcMsu3ii8G9b1XVX5kxL
mQP5sb2FzzMLqJpsV27qSv9ke+zKane4lAfY+R00aHNk+4W+FBCQajcC6AwCDsiG1eU7TCDW
yzHqE3bQBhysqkWRmYyKabf51ylEDzI+4Xsrvs8CzQ9XaHXuYc/rGy9VcDI3iXBVo9o0l93A
ghCducAwhZBTZ+n2/yt7kuU2dl337ytcWd1XlZPYjuM4ryoLqpuSOurJPViyN12KrDiq2JZL
kusm9+svwKGbA6jkLU58BKA5EwRAEBjpS+bg6PCmKvIio3YxNkla9Mx8sNRilFlGl6ufj5uH
Hwc42tIoDubYAVwXpayuVdw2cxRSIysY2WQMaZCKlJ1mEaS19w/t0TmZ9ttHkevv5XGp97Pf
ZskLIjeg3bhiGZdJWv8KqYNwlhXsk+rWmn+CGgMru9mSjhYOvzBtbMNmvLhRoZg1WzzeU2MK
iklBjqfH3gyjdtHmfgbkKbAWghVOE59UBMJyyM0YWSaqj8JrAPWwtDXsOcyWZbEGc5yRQt3h
0PbFjH5KlvHMS8rSI3M+71Iek8lHo4ijUyMmnrAmnJ2d3XajigGL7UOI+pLUy3r58/UFz0gx
e/uX9Xr1w3BtLTmbtUbyYQXAtHPAV1mUN7WdfdHGY4RSOvKbQ9jGZUPrWDbhiA7Ga9HEsAXS
WajNgOWLJoRN8csnGod+vkFcOUPf5AC2WZRVECn2vrmVApOiv+Yxi0BQK/B2q46q1ohtJVDe
7WLVRJ0MgTVcOgNIMDhK5kE3UuR65qVQD/PTtRm4G+9uTCoLGfPlCpm0rVko/28MupjnPO3q
edKYF0aYk5rnE0v+QFjv3SS/MxqrQr5m9cSKq4wBWq8R0s8DBvRMuwRg5ntEkNnHGELCySuq
vLbvbvPrrOziMs6oeO/XmBVlikV22SSzosAOKFpin2ONlJtZPe5K2Zh+NKPHDWaWJUbTaTX8
xGs+eprVuIpEq0bpwPaNC9dhI2INILHRLyPkdx0mVley4TGycEo/RVDzdIwNDyxQJJlyVtpL
tIeiN2fDswAyyqycjU6P+xFtF3FSg7BgCLkYGBSOeiMYTXxx8enq1HuSpuBWYNEMZylKEhRC
yK4D/Jzqb58QnME6H9ap+NknED91wFWBU/Xl41C8ROB2mXA4buoaJGmyHaqX3SjtCjLno0lg
u50MiDFwlynZGdmJ4cAMhAa9GYcQsPGP3GyrnKC/7Q8waBjPqfxRNxjsWyCtbwQ0qtAhQB7y
Kji975CyWe22++33w8n098t698/NycPren+gRI0/kQ7VTyp+O2qp7sFKA53KGnQBCTqM9mj5
YklsruSOd7PRl/PTi6sjZBlbmJSnDinmdvHdBxRyVOSxB8QNPaxfBdQL+MnrUVKzI/OsiK7O
TUdGA9jVzIPP5F8rHqTRttr7QEA7vmCu44GFzxMQpVsnaM7ANxsWyNPcq1RUpO4yKUPbs4LK
ezWGGpuMpynLiwWRaVbF95gWTZm2xqMkBbd3jmRrICnQYul0XpdJnhYBqTUD2XNUBEIlQ8kt
JSir2KNP28P6ZbddUSpxxbOiwbTtdCx14mNZ6MvT/sF3U6lKEBQMYQl/dmYWDAkx2IquxypP
itPQpH/VMmxy8XwSYUBkFN9Wm++blfFwTJpnnh63DwCutxEVXJVCSz14t13er7ZPzoe9qhSJ
+Gx1Y3lakR/JuGmL8v14t17vV0uQNa+3u+Q61KQ/kQrazbtsESrAw5nBddPNYS2xo9fN4z0q
j3rkiKL+/iPx1fXr8hG67w5aXxyJN8e0SbSEtNg8bp5/hQqisL1g/1fLoz8pM/1os5fN5E/r
OaMWcNTzTvGOVBhV4GiOecZyK/WHSVbyClkDy137BkWLb3drJyY0Qdc/JghWCjpHcuMrorpr
3uPKYRRkjH6zYNDjotCbHeARFS2CJgG5opz7JlTMZoJhzX2LjX5rV12b9luP3qgWhmXWOYe6
wdNqkXtae0p6LSmntyf16zcZbd2IlKqD/U4NMXUUZR3GZ0RjxLmNwnDV5YJ151d5hqGxowAK
vzT5h129MWi4MCJW0pMQjfx+rHfft7un5fNqffK0fd4ctjvKiIOZWKKIskwhpsxaq3FHyjSG
mPkBv9nz/W67uTf0qDyuisTaMwok8hqh70NJHzu6KGPdM8prL8fsCcOoi5/9C2ajsfJpEcdz
jjZVyi8rJ9artIzNTw675Wrz/EDkvGmsRObwE5WFpuhG+OgxIMFoGmhnR9u1kEZYMigFFnB1
0VbRkMvmicCBdlY1I87s3CkDftxULMCrpCbfTMmZIUajtwmUE0NK1PnBcJKddyBICOdqEptP
rRQ9MCcOYnKPdU0GZSUy+bVlSjoJiKIxeb1Is2cC43HqQ7px5rZLQbtsUgUwftsstKw91Dak
YuOWKDpPilqNPXC3LrfdZ4B1F6UVPr1OCjJKY5o48bAAIO0lIgSGZbCp4P9z685IpAqzUyjC
z6otgaHmppd9UVtLKxMqnpfoQ5sF7Nf+8tZmg+Y4wQMtifSGpUnMGliiNeozNT3PNUq9zDCm
wvl1DmCzTQrULVgTsIcCxQegCOEuHFx/viTQqnHtVNeDoyknE4L3BChudyqBiv851WJF89Wr
FCFlUSeLjkX0xRFS1Dxqq6Shz3AkCNuQxOfHgpMsZJtM6x5+ol6p3FD5KJHgui3sBEKLP/YE
KQI3AYgqcrxYlWbcQKWevRWBIEVxfE/DGjKx9mRcn8sOaomg8edew/7Qg55MLBGxtybuvLik
VZuD+p0DldKrf7vlhawVEiu753+FRfNxdwMiT8C+mCep7Dt9IXkuCiHqvStyrhfFsF/7kTH3
LK4Rk05DuhFqwsDyzDISEMQRbCVERKkcX4PdBvBjtDlF1W1ph2MBMPbcvubpgUf2w0AzapO0
STBz8SRnTVuRcX7HdX+5P8gyvk23Z7YCI0R/o63MdRDQm0cfDpj3SwK7OatyawAkWK98C9jA
YWvAxlljpdaQgHPnq6gxZhAfl43rC7kbLJgFGkOHrPUQtWZkHmVUNL/AK1GMbETDYOXGCTo7
dPBnKIciYOmcgaA1xsuzuTkLBjEKo9RZapBkHHpelLdafYyWqx/mDUzOm4HrmZxBIYCD0ssj
YsALjJGSAPmBvTYlYooRQScVo7ItaRpnsjW4GH3FEUmT2jzwEYVbx+JnAzRsCx1I+jZZl9hy
hORoxf+A5P0+vonFsT+c+nrd18Xny8tTa4l8LdKEW3zrDshIhtPGY82PdeV0hVI9Lur3wOzf
8wX+mzd0kwDnHGtZDV/SHO+mpza+1uZfzLRcYliBiw+fKHxSoKkfEwS82ey3+K75n7M3xsQb
pG0zpt78iJ50Nh8N1PB6+H71pl+0jXd2C1CY+wl0NbdxWsg7Nq5SX92vX++3J9+p8RYykdkF
AcBIIia/EUAcTBA44UgsKgcVTZM0rrjB6Ge8ys1iPe2wyUpyTuWfYYC0fuz3wVgiaMYXe0Lc
mVHF5ubtKvzQk2RNvoHWq6e7MENPWphPYcwnK+qQhbsiX/c5JOeBgq8+HiuYelBgk9jvxR0c
7VflEFHOtQ7Jh3ATLymx1CH5GOq7GSPXwXy257bHfP5wGezw5z9PxOcP56GCLz6HGvPpwq0S
+CeusI7iIda3Z+dmUCgXdeaWK65iA2XqOs/sDmiws8A0+ANNfUFTf6TBlzT4Ew3+TIPN54AW
PDi6gaC0SDIrkquOUux6ZOuu2YxFHRxlAZ9JTRFxEEVpg9NAAtpGW9H22p6oKkDV+1Nlt1WS
pn+obsK4Q+ISgPA5s8cWwQl0BQ3tT36RSd4mlPeFNUzoQuYVCtL5TLpbGgg8TC1vszzBVU6J
5UU3v7YcK03bhbytWq9ed5vDb/91/YybWdnxFwin1y2+F5ey33CC8aoGSQrmCclApp9YB5VS
Y3gsCiEHHxBdPEVP1oqFkq0jjYx7EfU56gejkjIUYLDjWljSmyqJAlbKY0YFjSSPVpFjUOSF
zaE3qOygaA2iOmhvzDrUPaIjKJCU0tRNozUGcRw1Kmn2JO2pMAqRKAS9j6XzsSEuUOgOcx1+
efN+/23z/P51v949be/X//xYP76sd/3hrYWvYUiZcUGQ1tmXN4/L53tMWvkW/7nf/vv57e/l
0xJ+Le9fNs9v98vva2jp5v7t5vmwfsDl9fbby/c3csXN1rvn9aPwd14/oz12WHn/YyRB3Dxv
Dpvl4+Y/S8QOyzKKYARroax1NwzjmiToFdM0IC8Z2gFFdccrMxcpgmCYQF3Pi9y6rDJQMDW6
9IDR2SLFKsJ0mF0e10o/xoGLK02MRuUgrZ1s0R0ujQ6P9pB23OEAveEJ42yhXcJ0icCdXPTK
5O73y2Ero4JsdydyIZk2UUkOkiUZpFdhWTphZWLMnQk+9+GcxSTQJ61nkUhdHUT4n8CqmZJA
n7QyrRUDjCTspWWv4cGWsFDjZ2XpU8/K0i8BM1v7pHDYgEDkl6vg55bzh4Xq4qSWYZddr7zQ
B3zRVMwnt4kn47Pzq6xNvRZhSnoS6HdK/CHWRdtM4fwhuhTwiFRY5WyqHhaVr98eN6t/fq5/
n6zEkn9AN/XfBlNSE237QStoTLnA6XqiyGszj+IpUQyAa8rbtEdXseXtpFZ6RoxVW93w848f
RVokeQX6evixfj5sVsvD+v6EP4teYtzCf2/woeh+v11tBCpeHpbEBo8i+npST3BEWX30t1OQ
Jtj5aVmkt2dW6Lx+b0+S+syOpK97x68TKrZRPyZTBrz0RvOrkci0jIfe3pu7aBR5NUf2gyYN
Ja84eqTHLaEZIw+WVnNvXorxyIOV2C4XuCAqAfFoXrGSGCSGnotNe2QK8PFAP0jT5f5HaIxA
JvUqnmaM2l8LaHi4xhtZkn5Gut4f/Mqq6MO533cB9hqxWAjG7YJHKZvxc2oSJeYIU4J6mrPT
OBkTH0+mtF+rnrNhJXt8MaYU+B750WfKCaxhnuJfr3dVFp9dnvqH25SdUcDzj5cU+OMZcXBO
2QeClXzwCdEUP7LDeyvUvISSPa+EaPPyw/Lt6Td57TNvXkuXK3fqivk4IWdbIrQntredGfpE
JsxfUwyVmtBHdePzJIReEp2OycsULQaJv35ZigH6A86rEr2dCL6X0Sk99Nk2L3Ac/MHfPr3s
1vu9FKj9to9T1pBBCBXPuiu8obu68FdPendBwab+Zr6rm/7RQQVKxfbpJH99+rbenUzWz+ud
K/qrZZHXSReVKH65IxZXo4l24yYwilVRGFZTZ67AHeX3SOEV+TVBhYGjH5ep+RnSpL5FN8Xo
x823Hb733W1fD5tngv1iPnpqnyBc8TPtC+afNwMNiZOLsP+cqkKS0KheojAa4A6mTXhkmSWj
noWCSJXc8S+fj5Eca3PPisMdMiQPiijAOKf+8R3zm441Gb4mOvcnYMCizEdxDo3HGk8v6AdC
BrG8fDyyMrHALC0mSdRNFindoAHvXr6x+jbDh7uARctLc1tyElm2o1TR1O3IJlt8PP3cRbxS
Rhuu/GLMjVbOovoKL4JvEI+lBH1nkPSTfrQyFGVhRThDKMWyDSUTNLeUXN60C8cBZUPyOeR6
d0BHXBB2ZTiJ/ebheXl4BQV39WO9+gkatOH+WcQYCxLKF1W+WcHH+/f4BZB1oC28e1k/9XYV
ebXSNVVbK1tYZd13+/j6yxvjPk3hpUZlDGrIjFXkMatu3fpoalk08Ad8+Fw3NLG+ovyLIdJ9
GiU5tkHc8481u0uDfA7foF125fWwVjWkG4EWB+y7Mp50ipy7FZDkE5MpooutNbCjBIQUfEBi
rEztMgvySx6hCa4qMsd7wSRJea6xw1Ysqpg0FOPDaw5qajbCRzFPbnlllLg+YKyKplg+CNjl
IppOhDdIxccmi4lAyYJjxQKZIamQohdYDVjStJ391QdHwwdA/9SOZCeCADY5H91eEZ9KTEgg
ESSsmodWqqQYkQZywF1aokR0YXX4k7kYRr7CEBkRn5SGMLzoYHlcZEbXBxTINCgNlhWwGhuK
Lpwu/A5PCTjOUXYaqhNQJVENUJCgiJIRSpUMMhNJDZIUDafbBzIWQS7AFP3iDsHu7w7zO7gw
4fhd+rQJM6dNAZn5AmmANVPYKB6iBvbulzuKvprrT0FDb1v7vgHhUJQBtuRZvT0JY75wJb3B
cNCW3xGr6yJK4By54dCRilk2fuHnafp4I8h6ioxvby0/sZwDmxaPhlkp7PdmXcghVBEi+xl6
UWcj70E09C5lFSKnQgAlSqh505Z+7T2+AaYaF/PcJ0FAXuS67C6zmBhiK+6BIrfPJa+AN2qE
tACsvy9fHw8iSs/m4XX7uj95kmbt5W69hAPmP+v/M6Rh+Fi8ScxGtzD3GPXZxUAdeG2Izitn
RoK5Hl+jRi2+pnmSSTeURXEoq0Qn/rqFI98BIAlLQT7JcK6uDFc7RJThB516mRDHYj1J5SI2
1nZaWDYQ/H2M5fd7QQQYsFhwetc1zNivSXWNQrZhps1K+20lPptA33I4R81QQUXeULHiEU46
nCH91a8rp4SrX2eXDkhEyrFJa3yjUphpFOG8kSvVeGOAEg85Kr3o40ku7oBJpi/eZCS1mIU5
7xXc/ipGi5EC+rLbPB9+noDye3L/tN4/UK/uhfw0E8nvaHkDsRGzo7hHKmILSPgpiD99vsIv
n4IU1y16rl30M6lEba+EC8MnF7P3qRaInI7UYlVh2B0NwwJ7OdRAwxgVqFnwqgI6+tEZfgj/
gXA3KmorhFBwWHtDyOZx/Q/mBpRS616QriR8R02CrA31dmp5Yqgc4cMKDOf8wl5WJRwV+Lwn
Cz37YrG4VQEq6tKZ4yszkY67YeZGkw3SYeuzpM6YFTTDxYjmobf5rcP15wy2jexBWYjDzvQI
NOFu5eMC3+TMOZshm+yi0nqS9dejLCObocVns9LbJF5/e314wBvL5Hl/2L0+2bEuMoZ6Kygu
1bXBegZgf20qI4t8Of11Zri7GXQg1Sek/7zqoeVmoGFya+O/5Iz2ZHhfJigzfJ5ypBJVoLqI
7kUGIVnADM0mscFR/V/dtMiLVl3X2n6yAi076T+8EkjPO3+A4iU07nDaaQPJZvGIRLajmlGP
iUBLZzm+wb/pRlUx47m5YP5qCdhDh26S3NsU6M+o2a66IO8LM1w3kbmBPs3z2vKxl2UgVp+j
zsz2KB23Ri02ciRELSBP0TYNYcookrqwnd+HejqpBzotmFPShERJb+naLUuBCXXHxo+ljOvU
p7F4BNG5JCyyeWFKJDauilrB08KVoMRVtvpJ1x8rs+fgy5lbbJ0y6l2N2F1qEcGBnQIT85uk
McFGSNePFs9J6/SKpiDMSyTP4+DTKlnITebXfJOJSzL0tDryXVeN3HEGYDkBvXNCCfeKRIZN
Iir1A/nZ+0q8qBb+KSSbYjXznXAElLDSSiwuFRS88kI8FkJ5mcWxUkkHXsNq17nP9n8Ztrc3
/VN8kO0a+gT9SbF92b89Sbern68v8myaLp8fTO9uaFOEXLCwNCELjC//WlA0bKSXqRhZMype
IjqfqV5iSDEfaUlYoA2zzCQUdVBPp4LEqpWn5vCIOIHTFka/YTUdv2N+fSzFrzC3ylrMVwzH
B1f6HYI8cP/6KOI7eoxZ7h5HXJRAdW9iwoYnJ9qjiSjbXsc4OTPOS4rnAv/LyqY3VqLHwHAQ
/Wv/snlGLwLo2dPrYf1rDf+zPqzevXv3v0b0SXwDJoqbCJ3CDcZWVhghy3vyJcEVm8sCchjc
xM70LeDY3+AOrUAtbxu+4N4BoMO0eGclTT6fSwywz2Iu/AYdgmpe88z7TLTQUT8RFvPSA6DV
D9T3jy5YeG3UCnvpYiVTFc/AFcnnYyTitk3SXXgVJXAYpawCxYe3urRzl4Eo6uCQ6zB8KTf7
OHyLSwB1+T6cmT0QHex3fIXXqVN52Hr9DJA6ab8FxlYJtOL6/1jF/d4Wwwe80zlLlB7kwcWg
i4+sTqDOgZ6RbV5zHsMOlobXI3LzTB7sAZb9U8qG98vD8gSFwhXePBCKGkrBRyopXby9Vyb+
2ahz7tFKnBBI8i5mDeY6Ew/Pk4DH5tF+uLVGFQxa3oD07geugMVLirWSjUSWS34P9AZGT7e9
CrVuCh/UEVMuf8a9DMCtLywMvs8NfYWSnVBk+xPy3JDYRLnBCA+I5dfhp32itcLxu5uI1QuS
ZFLE5tlgj5nD8q6VQlsNqqxtahD7FTQGNPLQqwvt/Xl02xQUv8iLUvbO8hSHeRm3udTVSaw2
lIz17goju3nSTNHcVrs1SHQmhGogwNsrhwTfrIl5QUqh8LuFROpDWcqAlK0WuficJspaI/vc
EYY2GVd4AIrAPoLeOhPhT4MDLiOCeuNjFKVU6HpuWqDVaY5WSrJbXn3akudWpAj9s3zssTyU
wXBt62/o59j2jNOsfTjGKC1Ijq3qIezGycSMDA1dBhFw7HWkp9dwR2c50p7pHFb3MQK1yNRC
otREtVLqnJX1tPCXkEZoc5IznerUhyME1oIMb+lISBaOC4MKrZUrApbnGAAbOi6/JP23emLY
HZqMqDQ4U6N0JtwtksLdHzMoesTl4jeWZUuDR+XYg+n978LpEmS0YRcqh1XuwCT/KgOr9L0b
Ns5w3UAxX2MrDtcST045UAtLxdVFMIrsBI1DesiPxPvRq61hFd5oBSUks2EhYoK0j+ci9nLM
U9CRSMYizN7OSWeMM7IUjR30WWN6egLqlY8IOmlOoACYM2aGzDGR0ihvhVEy0eLGMlijFsKI
z2XTyQjcimCcjAviQxlDMUoTTppCFZX8NfZ7hbFguwy3URajx8bIjhAlTn159+IJSsvdEyUo
iShiTdxmpZNi2UCIg998h93mcxkDzDWMG+/xFAWrKHu+FCVsXxMlsnp2zCTicUQYIEHzSjA4
beh00eV1LSz3zk2IGiAr09OzsFlRkIzxhMUjuSq8tkIxSR6lbcy/vLnHwX6P9b6r3xDlIMb9
XrZhelt/Of11+uH07PT7+pSgQBMVUKxPgxRYOFp9xiBaun0dCOYgxxwZlIGwZGkWTRNKnoMz
XPsS9F1/Wq5+vH99XilX23c/DBcuzqpUeUPR1hZceGp/hZU5ezWbV4vNen9A/Q5tLRHGh1w+
rI0Hna1lthM//fUtwbYWIGEqAi6JE3Kje4+gNaYhA7m8kaK5uYz4QNH0g6OMmHh74NkRaziC
4dxQvM+wPtjU4uZBR5uHyWMV2t5rhwDv2qoWL+U768pNIoHns4rLy31YipiPtl+HFQjGQvaT
xhvHGTmdxY3hEyLNZ+hwV1sypYBnSS5ilQ+MUOYGL8wsAjJ9c3Ij7uid06U2wy9RUonW14WB
wVXVRujs4p1bFfqo1EVaYEjgQLmWu4xn1VDG/cC32uNguKawuzrlC2TLllghRkXe3hMpeDy6
Oiqpc096jgK+KRZe8dKBMfSVciawW9q2SeyVswidugKLYXuQw3qfVWjEanDNhj51/dcFEMSX
oM12ljnthU6gidut+iYTxrxQOXiMiURNRiQgOPywNEsINL/ReaGc9a5CpvS0UAQwjzR2+Raw
WxkKkuJUshASJR1bSYThR+qteJX3yviS2kpJU3fEcm2FbOhNjHqc7T6Ht3Y/zyJQtkrqWzQp
JrSsq789TiDeFePlIplMRjujQjH2QA0A93kxffB4b5Cl48t/ARoqkZq6GAEA

--vkogqOf2sHV7VnPd--
