Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUGR42BAMGQEWFSXGMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FB73459E1
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 09:37:37 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id v3sf132556qtw.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 01:37:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616488657; cv=pass;
        d=google.com; s=arc-20160816;
        b=H3PSW7W695AZKH4pDg8Qf4cZrTy68GBmX2XaP6kpqzvd+UicoD5Yrjsr16ILNILpbG
         v/CopAbN2vIc7fMO3030DUUWlcDnIlYBNwqWAs3TaDpCORnX0Rd+gTupdfSTtzsZc9sb
         WA+PBSZScgYLWX1uPG1nzIs+x3sMGnpGf71ckgbdfT3DOv3cDSOUi0BwrJ/+eoCl6cfd
         88R67y9wmaf4YqPOGexM7BnQGuabDcCtWX1thEIXx7XZpAHXqfJ3qNg1xKKsWxmoAFdZ
         77W3MHslId2AloUOLGrAcOdOdMOAcqfG2yOXsbglOCMzC6OPvjVA7ZYLicrFU8SG3p5P
         5UDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=In/d9/X4HdjAG9JP2B98mt3m+Cc75RjCoRSxUIEjVPs=;
        b=jzv73nfO8A6MKdtAes3cMzQ+8qkIPtxBicK3bCmjxKR0Ggx/2tTXWfpytb6meeNmlK
         u/qFzAcVxUMyjDk/vTdDYbhBGGZBCTt0ocPeGfTZVUGUekMSAcofp3DYn0bK00cx+5iI
         mVfpmmI8jNmU+Awa+N2lJ4WLvCbR/evJNVUBiM4Sp6YJDYf2cuuJkJSsbUYGiJEA4hsY
         ndjZnK27SdPE9eTumqBqdqrv29btzNbnv3Y6z9IP1MpSdNoX6PsCDxEZCZFNnkqV99XJ
         4A/6a1DdtzX/7lkdU+HyEsSYm6yx+dpoo4q2qHjc5YGyNK50rl7SETgX1m32CK/5VR9t
         tPuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=In/d9/X4HdjAG9JP2B98mt3m+Cc75RjCoRSxUIEjVPs=;
        b=rMpw8NP9MbNHoK7WnPtdnGQopOX5NuRYCHqqgXgW81d7/mjNhD26PG4g43j/YiphK5
         vHw5ioRaYvivl7HeAyiqInSAj6fMreewtrgPpfqZLu8P7wo9vtkVe8a7pJIH58S2SmNn
         q2aUpM85D0vure4mBJFLIZwPWnINb32ZE7/8Mbag688JNnoQuwT+BtdlB/ugohshMmgx
         tOsIJfaYX+NszEsf27QS6MRSKWzB35hPm639jIVDKDwl0LfVbXZaXXrn9whsF+gyhFwA
         wjtDVIC6U5ZVLgJQN5plGEw7P1pkfLiTAu4GI1T/NMF3Jk6nzy8hiG3qAKaxhnclUQ5t
         omOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=In/d9/X4HdjAG9JP2B98mt3m+Cc75RjCoRSxUIEjVPs=;
        b=QeQPGDzQYZQSxUkDtF28wvVmQwObLYFfHheN+B32fT5pNSfvZChGi0XTFS60fHVl/I
         +8UHKAx4UAwjNFDFkrWDgghJdEYdm2Js+41uCB8fNugJ7SYbrgRelovr/fgQxgNIeniz
         24sDQ8u+4F5kem46x+s3r8vbJgdoj5yL/zoHCSm/fgD8gL4NjMsGg42zX+GSGQ7oWbKB
         L29F4kfYzN0yoTuPLDqlyXhgFEPGArzinZaf0LQmLGWvY57MBkmcoN14LdZtUYUCMCNY
         nwNe5H0K/GaYPoLkT2wikZuxuNM8Qzd7j7vj1TwIxj0DOrwuxSVil21gFKrobxS5UhKk
         5+0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lNGvMrm4tj+jyrZKe6Y9n0VVY7OAXnG24tQRqRwMLjvoHvp0p
	TAl9u8mD8wvw6m3yljPquaU=
X-Google-Smtp-Source: ABdhPJxxrDxAx/LVuSnvyc0Urby4XFWB5eCNp4ED3Emneq6IRdQiEWHUswOY3Ue0B15chrt7dhF8qQ==
X-Received: by 2002:a37:886:: with SMTP id 128mr4455878qki.430.1616488656971;
        Tue, 23 Mar 2021 01:37:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5781:: with SMTP id v1ls5902479qta.3.gmail; Tue, 23 Mar
 2021 01:37:36 -0700 (PDT)
X-Received: by 2002:ac8:70d3:: with SMTP id g19mr3270802qtp.227.1616488656474;
        Tue, 23 Mar 2021 01:37:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616488656; cv=none;
        d=google.com; s=arc-20160816;
        b=ullmPMSlKmLZH1aStjtVE4Nv3yY9KVylfmt2kjiqnhFta8GDf5J0hshsODIiok/6aa
         jeSLkPe1Km4JqT1Mi8aIrQCJEwFM9q0srdse1OnvvqBUPmykeiz1w3WqGVCBYrtezDES
         VRpXsukiil8XHWRq4cI6hMvCq+1OrEw042BWoOsz3PWOswI05byZoFRFJ/P/RoghpCvn
         g6gDZ6+2t3BNzXBQAduR+Z2B+xTqC40L1KeFBsDOM35UeL2YOx8ynmbW/xZUPTRAxxAT
         61dTBpLGDk+oWZCZ5WtEkhM9QiKFJMyvKfosr/h+tkXfAbylHDAi/4evUm0pN1Qm0Xps
         6FnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=6CW+ztWfzZvcal++fvQYyslbHwPagqMQ8iAF+Oh+EGI=;
        b=iAw62zn2/0d6uKRDijTce76p9Biwyo64jpYyJ8VtGlIyN2jHM8ATNQWjKd797PSH3F
         IcbwGCNGv8aZq8hB+0JbqHgl5Uwcyfh153X60faJmTSy4/E00HHF1ehngaVjFdxYuMdf
         L6OTs5cH5fY1TXsXMN/PyO/M4b8UdxKBQSD9JQbAdKAc6vSDvEom3khkqMEDEhgB9lrv
         kPNOiBHsyi5jIWj1AmIdbxpBpG6GG3EYqO5EwWoQNPuIwUoRAs5HaPQOrBGagvejVedN
         21iHDJOk7QyqDDmX5Yl11aEUyJtwvEHyRY75MetGVNHejlm0+pvUT9BmrI5g/uWlA2+a
         FEcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id k7si689885qtu.2.2021.03.23.01.37.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 01:37:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: 5SFvmRkJL2NtK5waH9D74rTyzvsprI+0bqzFoGqMvHMm30tpv3VMMJm2FUThe1pnZ/I1/JYq6p
 QQoglAlt58oQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="254431312"
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; 
   d="gz'50?scan'50,208,50";a="254431312"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2021 01:37:34 -0700
IronPort-SDR: bd0KhAuADVk/Y1FX3o3HqX8T3enD0bdA+9wfQV/+1MJbVgB1niFQeRUFYksc3piF4TW6ggz7/+
 8khWCEx2iyLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,271,1610438400"; 
   d="gz'50?scan'50,208,50";a="414878962"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 23 Mar 2021 01:37:32 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lOcXb-0000Rh-JC; Tue, 23 Mar 2021 08:37:31 +0000
Date: Tue, 23 Mar 2021 16:37:12 +0800
From: kernel test robot <lkp@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: ERROR: modpost: "ioremap" undefined!
Message-ID: <202103231609.CLENPJql-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
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


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nick,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   84196390620ac0e5070ae36af84c137c6216a7dc
commit: 1e1b6d63d6340764e00356873e5794225a2a03ea lib/string.c: implement stpcpy
date:   6 months ago
config: s390-randconfig-r031-20210322 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1e1b6d63d6340764e00356873e5794225a2a03ea
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 1e1b6d63d6340764e00356873e5794225a2a03ea
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "ioremap" [drivers/pcmcia/pcmcia.ko] undefined!
>> ERROR: modpost: "iounmap" [drivers/pcmcia/pcmcia.ko] undefined!
ERROR: modpost: "devm_ioremap_resource" [drivers/dma/idma64.ko] undefined!
ERROR: modpost: "devm_ioremap" [drivers/dma/altera-msgdma.ko] undefined!
ERROR: modpost: "devm_ioremap_resource" [drivers/dma/qcom/hdma.ko] undefined!
>> ERROR: modpost: "devm_ioremap_resource" [drivers/dma/qcom/hdma_mgmt.ko] undefined!

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103231609.CLENPJql-lkp%40intel.com.

--a8Wt8u1KmwUX3Y2C
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--a8Wt8u1KmwUX3Y2C--
