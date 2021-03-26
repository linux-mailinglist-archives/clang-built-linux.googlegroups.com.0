Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBXT7CBAMGQEQAH5BGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id E21E934AF72
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 20:44:07 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id 131sf11286628ybp.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 12:44:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616787846; cv=pass;
        d=google.com; s=arc-20160816;
        b=JaDPiAQTJOdyLUpB8oCMHVDqwxHqpgiXwkbOImuGAh+gKng4ElEerQIusHMD9qvAMR
         C7NdhXfsrFKASSvUadiBPot0rq4N0ApVHhghHU2Aq8aUzkoAVCJv7brzX6xua5kg680S
         lyuIt/VUYhZXAPmJedq+ShHcmrQ1p4wg1CwAQ0rOsm30bZOrOIo16kwQwMcK7Clk345s
         iRDl6B5P2yXQz16ISr/3Y19ZDTvVNtBr55Vx8weWroUY2w/rb/fHi7ZeI6VHtsFVIq2q
         DBoaGp0c2paFPM2/JjyFhzcuzkDyzZr8bIxpnY1mJOInfYN+oBhDMdJeJlPPyAjRgRTw
         M3aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=rhTmuLSyvp3GSwvbMFgs3PkZKCgzAc1EpfDpFyImGy4=;
        b=M1fr8sGXhuAr6IC5KSdfYK5UrbnFQIHdCDUOYHEmELsXb/9vgk6MC4We74S5hPa+le
         8fHoAEDJZRgJOL+NW1hy6aYHUIxfKRctkAL4hJdvkLMEQH+eZmqTPNaYu9yVPieYI1RL
         RzLGPxV7m2ixAzYPRO97fJO05TYRY44sZ+If339a9UPH3X9xKWyt5V03tcHfcCWolFmH
         v2s3lHhUflRtqUZwEbZ7SqgOqQ5jcjH8l4+hCh71oKIum6nM69UYpexQdMxsV/QygtA7
         mQTwSWaQ8zmYyGp96IVG2IqPLMh07i73ZgW8ch/zn1dKVhSqwQaehEdZDr5f8stgTtfG
         WSlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rhTmuLSyvp3GSwvbMFgs3PkZKCgzAc1EpfDpFyImGy4=;
        b=c4kekdmnFZ962Hq5Nf50ce/SdOnsdZdfbWv3AVQqUCgib/7umAkWHPjgA/klTxM14T
         V1P0GIudOUuzTsveMsJPPCXER2FGLbn+Bp62/jJWQ6m+MCQGOfQJOeoTN8k6ixSIuBC/
         OxXFjBAdc1FTzO2bv3SfEganT6DuvXJo+/c5yLoei4wG7UGAlAGjY0Ua7gA1fgx2AWar
         nzAWuEj+PGyFVkuIgPmkldxusuoDBHBx+RMntygczJHBpDYZga5ERkNOojzEUuOKvhZm
         6kcvnRJzWv8PlYtO/3QqWATojuYv4tV/e0oPSq2yl6WKtbp6o8bMh2KKobcwT3lZj8ge
         wgkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rhTmuLSyvp3GSwvbMFgs3PkZKCgzAc1EpfDpFyImGy4=;
        b=ON5n00vr+mhnFdG0OjO+fUOFnryJcqvUdFirta+A7T1hqrknRlUKaV8Z4uV0yjLshE
         OPnN/M4KnUhMaDek6E2SitcRMIMotgHvvbSfF82KUwiEF0bbe0WeR09/6aMurO59djq6
         tBrrCYc+L4SC39hxUqcuz9ts43wShQlIDSTp/u9iaKi/6glVc6KIg3WONNPex62FOr29
         PYx6VdmRAzCMbUmApn7bgT+yj9/ixg2a3jsqQKB5U6CyEwY6iPaTmxIccMSHzmY7N7cH
         bAkAQx2U4FLH9vgoWfQlrUaeDR7NSgyoiXHsteppDSJLpgPfhJFhQ2zPjGFkT55Q7hYH
         rdtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322lNanVzotFatChL9qQBLl/MPnRIYNPEEnm213vvq2DmW2SreQ
	j2swwSeI8yrIDH3oQsKV2ro=
X-Google-Smtp-Source: ABdhPJxlX+t6eXXqxtxZ4px5XsNIkdhRuqiEr/8ujE/FA0/K0J39Fd9oyQA98kl3KJI6OZTf9D01TA==
X-Received: by 2002:a25:d041:: with SMTP id h62mr22151693ybg.107.1616787846708;
        Fri, 26 Mar 2021 12:44:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d306:: with SMTP id e6ls4834209ybf.11.gmail; Fri, 26 Mar
 2021 12:44:06 -0700 (PDT)
X-Received: by 2002:a25:8b0f:: with SMTP id i15mr22224913ybl.277.1616787846129;
        Fri, 26 Mar 2021 12:44:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616787846; cv=none;
        d=google.com; s=arc-20160816;
        b=E5N1uJTNDzKuF/EjFZnpIT4Y8Cy/rT6tRTTd9HnAqcZrKs5dM9hvCTDpM0Xm6DnNLE
         sAYCS4UNAHJXfj3ReyinIIHYEnxaNQGZgdsyRlBczbPU6f2nl59eFY2dCVT0/ucg+/El
         s7RGEsNr/CAm26MmMENWm4nolBJxJkhoPXzhkOYADbkYlIgG+uIAzSTokQ30buoW3Frn
         rXx6P7zXt6djn2tz0igE9si3nL9o3tHplApTF/w95ZL2u7OpNjBj0tLn+QoMG6POcvZ0
         hJ01QsM2icmM61dQ1NqROFmcvAA1L+Oun8fqSQHtbfmmZUm4bIufN+Gqy3FRW9+g9FPa
         jPSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=jHP44n7w4IYQAZ2saPNNbtOs3C6wJSH44Br4Ad5N4nU=;
        b=hXAyyKLRji1DZkM530VLowBgLDkpuXuQXzbwpkg4VqHLc3raopGZ6PPsdFvQgj35Ta
         6FMdE55jIfJPURy0LsWIxoPcAiIFnR1jpSk1VlikviJeQjn8fccCyxqDcISURjt+WEnQ
         dS0MxZGf06w6AT4EdNgCSouXpbe3IHDF4SupJCgp4Ln1Lz5gr3CwnMYXDDc7Xe2UzRj7
         ZBbMvD+d+XnLicxE51EO0TZ9Khhm9xrwwBbBsZ+NGDtNeDZ684dbguuG13X2+3Q2kEpu
         oFyMmLwOYeoxX6NjKdxiq8C/lQXf+UG85SLHcvj+m/L8BQpO9LH/x+dHGxLaOeSsngRm
         LYHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id l14si688754ybp.4.2021.03.26.12.44.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Mar 2021 12:44:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: fKlp/8FnLjPQHUpJhUnWVcDKOSdhxatKqsVVwHb6N0NPtyFhf0c8OjLpyVI8jztTM8vPorQ0TC
 T1ph1Sv4wdyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="255203103"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; 
   d="gz'50?scan'50,208,50";a="255203103"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Mar 2021 12:44:02 -0700
IronPort-SDR: X4g5KAexDj+GmTVlhX4um8nJlIWYhvS5LBwVZbhJhLmByah60IysPoej0pIdi4U1zva+1BOFs8
 7eBRLwOqAwTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; 
   d="gz'50?scan'50,208,50";a="392331502"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 26 Mar 2021 12:43:59 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lPsND-0002xs-8v; Fri, 26 Mar 2021 19:43:59 +0000
Date: Sat, 27 Mar 2021 03:43:48 +0800
From: kernel test robot <lkp@intel.com>
To: James Smart <jsmart2021@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dick Kennedy <dick.kennedy@broadcom.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>
Subject: [linux-stable-rc:linux-5.4.y 1976/5637]
 drivers/scsi/lpfc/lpfc_ct.c:2059:8: warning: taking address of packed member
 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an
 unaligned pointer value
Message-ID: <202103270339.raVMnqw7-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
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


--gKMricLos+KVdGMg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
head:   b90344f7d6000deba0709d75225f30cbf79ec2f0
commit: 41b71eff27771831772f80ac3bc7cbe7369d0bc3 [1976/5637] scsi: lpfc: Fix coverity errors in fmdi attribute handling
config: mips-randconfig-r011-20210326 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f490a5969bd52c8a48586f134ff8f02ccbb295b3)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=41b71eff27771831772f80ac3bc7cbe7369d0bc3
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-5.4.y
        git checkout 41b71eff27771831772f80ac3bc7cbe7369d0bc3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/scsi/lpfc/lpfc_ct.c:2059:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2076:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2101:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2123:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2144:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2167:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2197:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2219:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2244:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2264:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2287:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2303:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2322:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2339:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2356:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2375:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2396:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2413:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2436:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2462:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2516:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2586:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2606:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2627:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2648:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2666:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2684:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2703:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2721:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2736:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2754:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2778:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2794:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;
                 ^~~~~~~~~~~~~
   drivers/scsi/lpfc/lpfc_ct.c:2810:8: warning: taking address of packed member 'AttrValue' of class or structure 'lpfc_fdmi_attr_def' may result in an unaligned pointer value [-Waddress-of-packed-member]
           ae = &ad->AttrValue;


vim +2059 drivers/scsi/lpfc/lpfc_ct.c

  2051	
  2052	/* Routines for all individual HBA attributes */
  2053	static int
  2054	lpfc_fdmi_hba_attr_wwnn(struct lpfc_vport *vport, struct lpfc_fdmi_attr_def *ad)
  2055	{
  2056		struct lpfc_fdmi_attr_entry *ae;
  2057		uint32_t size;
  2058	
> 2059		ae = &ad->AttrValue;
  2060		memset(ae, 0, sizeof(*ae));
  2061	
  2062		memcpy(&ae->un.AttrWWN, &vport->fc_sparam.nodeName,
  2063		       sizeof(struct lpfc_name));
  2064		size = FOURBYTES + sizeof(struct lpfc_name);
  2065		ad->AttrLen = cpu_to_be16(size);
  2066		ad->AttrType = cpu_to_be16(RHBA_NODENAME);
  2067		return size;
  2068	}
  2069	static int
  2070	lpfc_fdmi_hba_attr_manufacturer(struct lpfc_vport *vport,
  2071					struct lpfc_fdmi_attr_def *ad)
  2072	{
  2073		struct lpfc_fdmi_attr_entry *ae;
  2074		uint32_t len, size;
  2075	
  2076		ae = &ad->AttrValue;
  2077		memset(ae, 0, sizeof(*ae));
  2078	
  2079		/* This string MUST be consistent with other FC platforms
  2080		 * supported by Broadcom.
  2081		 */
  2082		strncpy(ae->un.AttrString,
  2083			"Emulex Corporation",
  2084			       sizeof(ae->un.AttrString));
  2085		len = strnlen(ae->un.AttrString,
  2086				  sizeof(ae->un.AttrString));
  2087		len += (len & 3) ? (4 - (len & 3)) : 4;
  2088		size = FOURBYTES + len;
  2089		ad->AttrLen = cpu_to_be16(size);
  2090		ad->AttrType = cpu_to_be16(RHBA_MANUFACTURER);
  2091		return size;
  2092	}
  2093	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103270339.raVMnqw7-lkp%40intel.com.

--gKMricLos+KVdGMg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
FkQslWVEZm7km3xFTuYBAA==

--gKMricLos+KVdGMg--
