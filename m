Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG6SVL7QKGQESESXHUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id C308C2E6DB0
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 04:57:16 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id w22sf5371469uau.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 19:57:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609214235; cv=pass;
        d=google.com; s=arc-20160816;
        b=gcZurQd6kFf7NNxwYdehcG6hH88G1ZbxCwAJO4ul5LkJVJnWbUQ/RJ1QB1NoWwkHvP
         wO0pOWNVwifC4f443QrbQFVR1dDS829HabmFEoFnhJFCqGxsauOcAbyIGXa16YUEtPjp
         Vg0D4jeR72Kgne3MzPrjmzCchQFeOysBTv/Nnde2d/u9nwR5WGWIWfzvFEqfDXMqkwW6
         5RZ0zDP/hnolpmsSFl2k4TD9wB3POkQd6hfcKUxj6ujoLq3qWRkDWuHnZmFTHMS8t7T7
         p9zY/VCknCiO6TdmfoDQih6RqeGcYs7NXBG8e/fIHBrmYPwoRtqcEvyZ/h2iWq1Yk49N
         e7Yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=/LGhB6mypLZV8PiKQD42IcfWe2hqdKRVVyLqD3RJmlo=;
        b=aryPL1f5XJlsMGJqvpesKdj9paD0o8WHrFq/abNEXo/2QuZSSk6R8YWKn+mnAavyI3
         kfy12PldGctNetkBICsFIwpcAK5WM6n+eL3JEKiC+hMb7FZIyUhqNdrAKp2ETzc5UMLc
         zrU1qsbFhMT47YZLbhAubBib5A2+cRBPi4OdYgyuKTwqeQXuf2y8Q9rJWzB/ZdB3B9oj
         EXIUZLHwlG+JHEBGzpgGuKqbCiIUILj5oEs47if8lik/7v/S47h2iXy1spSXuaJmczh4
         Y2FYXlXgXh18D2cmwY0NCIhXqv7rg415jCXea9Mwg8j8oeU0sPhWHy5xG6JzO8Qa/8gF
         Y4nA==
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
        bh=/LGhB6mypLZV8PiKQD42IcfWe2hqdKRVVyLqD3RJmlo=;
        b=YhbNoekdin6MFSed8sI1CQilRh/vGVp4Rn9PCAs7GX51ITFYfPBdQ/JN1tfl0RayJV
         W0RGGFxopgkB+RD7PyAHx8pk9TmYRa/gtGugxe8Ch5vsNi1mRBsCZdd267jRdgxBmPgP
         jEMMti4veEyqnL6OoBjSUaOCF/tHS5WJbxF3mSPUYlhwp8ONWJ7KHszNf+RmiiY8FTDJ
         kB4BMyDwsW1f3yvhKrcgwk1YoHFaQfKP/v5aWV7Dg5KXkBm9QgJTpg+TYItE7i6dndmO
         /VjwrwZQ3URO3CTBjlJusThJZ258W2gw2faA7buSWHVfquOxl2/SbBontV3zgu33H1X9
         oFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/LGhB6mypLZV8PiKQD42IcfWe2hqdKRVVyLqD3RJmlo=;
        b=ZQ+HWNSYAi55n2saB4XTSfKPFRR18TTzsPKRlZyTkwGXKzBPjZj5kFvbNU1hVGIbfv
         npri/i9wAQN5XuQU7OSAd2cHzyMa+RJcB3MQ7Be6auj4g5JRom0C0b9lPJre3bIx6l/H
         KsiMTAf8/GYYYvxwIyq/o7BGq+HJgIdxvAbV1OPtc+rfgle75Rom3V3yL/H8OPppLOiE
         fBtiPOn1uh6whsFPrHUhf03snXbqTU9AOz629jwD6dopgZwBo6F4yR5IJ0H9C88fXley
         Ko+CBrZ9Lokv0kyTDvbz44yMj1TTS97S8aWtt0bo8txV9CeSyCu9zByasx1o+juM1VtE
         a56w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rlOhHe0i3apjYDRuAYF/JDdMAsMBUP94jOKZp9ERdB4xPXVF+
	JilmWK8YLOLn2Zd5Ac3g/e0=
X-Google-Smtp-Source: ABdhPJyzuVfguIh8vJ3tvx+wXJtrv/BO8EgzCb2VKYmPpnp+l1WwaiURhqhO3vZeD05weWBh+9CS+w==
X-Received: by 2002:ab0:2e99:: with SMTP id f25mr29506648uaa.104.1609214235568;
        Mon, 28 Dec 2020 19:57:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8d45:: with SMTP id p66ls7055590vsd.11.gmail; Mon, 28
 Dec 2020 19:57:15 -0800 (PST)
X-Received: by 2002:a67:e448:: with SMTP id n8mr29714995vsm.8.1609214234940;
        Mon, 28 Dec 2020 19:57:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609214234; cv=none;
        d=google.com; s=arc-20160816;
        b=LAekJWcgm+iplsbUwqiySUHVUE0eKRK11sX6xQCvHn4bMV0p84rtWv8tn0wrYDBvrD
         4cuK8zMpAST7wlJZ48Nh7hH70hvruyN6Ma/8gxsbAC+1oucysYSxBt92qFmt4wsLRn84
         zFXHDnOqwwHuN4pYqMBFDo9mXNjy10iCRYYnk+khgrDUqG1cLBQ3M1I0R+G5BwAdS+x5
         tgaZNRd/JX0PsovbZUCPVhrob22iFDi4+MVyUprTkhi0olBJ9zSs6OZuBjVGb01fiW+E
         jHXibuYznTMa/REMMnnEbh7I6nIcOAB5KTzteAWlng2V3v8Bvrq9wW9gxFHPXHd4G+YI
         iv0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=c4e8XqHeB2lNUfpHQz6lW+pBfcx6nOJylh/Zm0K6CIE=;
        b=plPs3MuwqYO6SNsjifTwdTf1XGswcZ0JhV47ITKstjkWRwr1yIdlETZrhB7peEdtE5
         njGIfC8USBME8f3aOr2jLctvMtvfnxZD5zbB70lwVpCe0oZmHlmCc0A6vPGOUFTuRdmt
         aqxvk3ErUBlvBpuT8WveY5/fQHPHz0GSNlYk6G4wfydupb3pCJONerBOKBxU1Bt9chpz
         +HvjedqZPIWBsAFildeKVxh5LeZkdhXyRUrlFCpw3TKKueUJBbpu1Vuobx2f/AJVoHXh
         XyWsglRhsU5Ska6w4XkjZWePX/VkTP3YuoS+SVNpIAmWjpvZ00DhuU9vJqi9yYKUV5Lr
         SPDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id q22si2589443vsn.2.2020.12.28.19.57.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Dec 2020 19:57:14 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: HEuhXvAfT8r7aY27F8AvpN3YyA0+RyRqazp3Z8iBtU/zHNZeNyHzgIp1947vfo1zedxEbME79p
 LIQHTNyR+vyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="176550412"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; 
   d="gz'50?scan'50,208,50";a="176550412"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2020 19:57:12 -0800
IronPort-SDR: ZnTF5j/fbHT/Fa+of1ioa+YxOzbjUuqnEv6YItahfmXVaJsBZ6T+mBJ0aj/fD1N49JpHIY1pB3
 FKJqm0VemJ9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; 
   d="gz'50?scan'50,208,50";a="343940412"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 28 Dec 2020 19:57:09 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ku68D-0003JH-9L; Tue, 29 Dec 2020 03:57:09 +0000
Date: Tue, 29 Dec 2020 11:56:47 +0800
From: kernel test robot <lkp@intel.com>
To: chensong <chensong_2000@189.cn>, greg@kroah.com,
	linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	abbotti@mev.co.uk, hsweeten@visionengravers.com,
	chensong@tj.kylinos.cn, chensong <chensong_2000@189.cn>
Subject: Re: [PATCH] staging: comedi: remove warnings of comedi_lrange
Message-ID: <202012291142.B5v70FNr-lkp@intel.com>
References: <1608690263-29411-1-git-send-email-chensong_2000@189.cn>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
In-Reply-To: <1608690263-29411-1-git-send-email-chensong_2000@189.cn>
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


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi chensong,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]

url:    https://github.com/0day-ci/linux/commits/chensong/staging-comedi-remove-warnings-of-comedi_lrange/20201223-104542
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 5e60366d56c630e32befce7ef05c569e04391ca3
config: x86_64-randconfig-a011-20201223 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/fec78f1f56c0e63e9240b5b30c3b98d29ecc9a49
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review chensong/staging-comedi-remove-warnings-of-comedi_lrange/20201223-104542
        git checkout fec78f1f56c0e63e9240b5b30c3b98d29ecc9a49
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/staging/comedi/drivers/jr3_pci.c:527:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[0].l.range[0].min = -get_s16(&fs->fx) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:528:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[0].l.range[0].max = get_s16(&fs->fx) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:529:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[1].l.range[0].min = -get_s16(&fs->fy) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:530:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[1].l.range[0].max = get_s16(&fs->fy) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:531:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[2].l.range[0].min = -get_s16(&fs->fz) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:532:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[2].l.range[0].max = get_s16(&fs->fz) * 1000;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:533:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[3].l.range[0].min = -get_s16(&fs->mx) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:534:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[3].l.range[0].max = get_s16(&fs->mx) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:535:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[4].l.range[0].min = -get_s16(&fs->my) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:536:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[4].l.range[0].max = get_s16(&fs->my) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:537:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[5].l.range[0].min = -get_s16(&fs->mz) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:539:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[5].l.range[0].max = get_s16(&fs->mz) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:540:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[6].l.range[0].min = -get_s16(&fs->v1) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:541:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[6].l.range[0].max = get_s16(&fs->v1) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:542:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[7].l.range[0].min = -get_s16(&fs->v2) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:543:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[7].l.range[0].max = get_s16(&fs->v2) * 100;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;
           ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
   drivers/staging/comedi/drivers/jr3_pci.c:544:24: error: cannot assign to non-static data member 'l' with const-qualified type 'const struct comedi_lrange'
                           r[8].l.range[0].min = 0;
                           ~~~~~~~~~~~~~~~~~~~ ^
   drivers/staging/comedi/drivers/jr3_pci.c:94:29: note: non-static data member 'l' declared const here
           const struct comedi_lrange l;


vim +527 drivers/staging/comedi/drivers/jr3_pci.c

07b509e6584a552 Anders Blomdell   2009-02-12  437  
d5e59c967830f99 Anson Jacob       2016-08-26  438  static struct jr3_pci_poll_delay
d5e59c967830f99 Anson Jacob       2016-08-26  439  jr3_pci_poll_subdevice(struct comedi_subdevice *s)
07b509e6584a552 Anders Blomdell   2009-02-12  440  {
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  441  	struct jr3_pci_subdev_private *spriv = s->private;
da1331a50315a0a H Hartley Sweeten 2014-03-07  442  	struct jr3_pci_poll_delay result = poll_delay_min_max(1000, 2000);
713eab88c66de4e Ian Abbott        2017-03-08  443  	struct jr3_sensor __iomem *sensor;
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  444  	u16 model_no;
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  445  	u16 serial_no;
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  446  	int errors;
b1f68dc1d610159 Ian Abbott        2009-09-21  447  	int i;
07b509e6584a552 Anders Blomdell   2009-02-12  448  
713eab88c66de4e Ian Abbott        2017-03-08  449  	sensor = spriv->sensor;
713eab88c66de4e Ian Abbott        2017-03-08  450  	errors = get_u16(&sensor->errors);
7803d8e05d63d74 Kumar Amit Mehta  2012-11-07  451  
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  452  	if (errors != spriv->errors)
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  453  		spriv->errors = errors;
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  454  
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  455  	/* Sensor communication lost? force poll mode */
7803d8e05d63d74 Kumar Amit Mehta  2012-11-07  456  	if (errors & (watch_dog | watch_dog2 | sensor_change))
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  457  		spriv->state = state_jr3_poll;
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  458  
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  459  	switch (spriv->state) {
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  460  	case state_jr3_poll:
713eab88c66de4e Ian Abbott        2017-03-08  461  		model_no = get_u16(&sensor->model_no);
713eab88c66de4e Ian Abbott        2017-03-08  462  		serial_no = get_u16(&sensor->serial_no);
07b509e6584a552 Anders Blomdell   2009-02-12  463  
07b509e6584a552 Anders Blomdell   2009-02-12  464  		if ((errors & (watch_dog | watch_dog2)) ||
07b509e6584a552 Anders Blomdell   2009-02-12  465  		    model_no == 0 || serial_no == 0) {
2696fb57e6af653 Bill Pemberton    2009-03-27  466  			/*
abcdc99f7cb387f Ian Abbott        2012-11-01  467  			 * Still no sensor, keep on polling.
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  468  			 * Since it takes up to 10 seconds for offsets to
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  469  			 * stabilize, polling each second should suffice.
2696fb57e6af653 Bill Pemberton    2009-03-27  470  			 */
07b509e6584a552 Anders Blomdell   2009-02-12  471  		} else {
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  472  			spriv->retries = 0;
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  473  			spriv->state = state_jr3_init_wait_for_offset;
07b509e6584a552 Anders Blomdell   2009-02-12  474  		}
07b509e6584a552 Anders Blomdell   2009-02-12  475  		break;
abcdc99f7cb387f Ian Abbott        2012-11-01  476  	case state_jr3_init_wait_for_offset:
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  477  		spriv->retries++;
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  478  		if (spriv->retries < 10) {
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  479  			/*
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  480  			 * Wait for offeset to stabilize
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  481  			 * (< 10 s according to manual)
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  482  			 */
07b509e6584a552 Anders Blomdell   2009-02-12  483  		} else {
0a44493fb18738c H Hartley Sweeten 2014-03-07  484  			struct jr3_pci_transform transf;
07b509e6584a552 Anders Blomdell   2009-02-12  485  
713eab88c66de4e Ian Abbott        2017-03-08  486  			spriv->model_no = get_u16(&sensor->model_no);
713eab88c66de4e Ian Abbott        2017-03-08  487  			spriv->serial_no = get_u16(&sensor->serial_no);
07b509e6584a552 Anders Blomdell   2009-02-12  488  
2696fb57e6af653 Bill Pemberton    2009-03-27  489  			/* Transformation all zeros */
b1f68dc1d610159 Ian Abbott        2009-09-21  490  			for (i = 0; i < ARRAY_SIZE(transf.link); i++) {
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  491  				transf.link[i].link_type = (enum link_types)0;
b1f68dc1d610159 Ian Abbott        2009-09-21  492  				transf.link[i].link_amount = 0;
b1f68dc1d610159 Ian Abbott        2009-09-21  493  			}
07b509e6584a552 Anders Blomdell   2009-02-12  494  
713eab88c66de4e Ian Abbott        2017-03-08  495  			set_transforms(sensor, &transf, 0);
713eab88c66de4e Ian Abbott        2017-03-08  496  			use_transform(sensor, 0);
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  497  			spriv->state = state_jr3_init_transform_complete;
abcdc99f7cb387f Ian Abbott        2012-11-01  498  			/* Allow 20 ms for completion */
abcdc99f7cb387f Ian Abbott        2012-11-01  499  			result = poll_delay_min_max(20, 100);
07b509e6584a552 Anders Blomdell   2009-02-12  500  		}
abcdc99f7cb387f Ian Abbott        2012-11-01  501  		break;
abcdc99f7cb387f Ian Abbott        2012-11-01  502  	case state_jr3_init_transform_complete:
713eab88c66de4e Ian Abbott        2017-03-08  503  		if (!is_complete(sensor)) {
07b509e6584a552 Anders Blomdell   2009-02-12  504  			result = poll_delay_min_max(20, 100);
07b509e6584a552 Anders Blomdell   2009-02-12  505  		} else {
2696fb57e6af653 Bill Pemberton    2009-03-27  506  			/* Set full scale */
050509fa5583063 Bill Pemberton    2009-03-16  507  			struct six_axis_t min_full_scale;
050509fa5583063 Bill Pemberton    2009-03-16  508  			struct six_axis_t max_full_scale;
07b509e6584a552 Anders Blomdell   2009-02-12  509  
713eab88c66de4e Ian Abbott        2017-03-08  510  			min_full_scale = get_min_full_scales(sensor);
713eab88c66de4e Ian Abbott        2017-03-08  511  			max_full_scale = get_max_full_scales(sensor);
713eab88c66de4e Ian Abbott        2017-03-08  512  			set_full_scales(sensor, max_full_scale);
07b509e6584a552 Anders Blomdell   2009-02-12  513  
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  514  			spriv->state = state_jr3_init_set_full_scale_complete;
abcdc99f7cb387f Ian Abbott        2012-11-01  515  			/* Allow 20 ms for completion */
abcdc99f7cb387f Ian Abbott        2012-11-01  516  			result = poll_delay_min_max(20, 100);
07b509e6584a552 Anders Blomdell   2009-02-12  517  		}
07b509e6584a552 Anders Blomdell   2009-02-12  518  		break;
abcdc99f7cb387f Ian Abbott        2012-11-01  519  	case state_jr3_init_set_full_scale_complete:
713eab88c66de4e Ian Abbott        2017-03-08  520  		if (!is_complete(sensor)) {
07b509e6584a552 Anders Blomdell   2009-02-12  521  			result = poll_delay_min_max(20, 100);
07b509e6584a552 Anders Blomdell   2009-02-12  522  		} else {
713eab88c66de4e Ian Abbott        2017-03-08  523  			struct force_array __iomem *fs = &sensor->full_scale;
4af8c8195188b5d Ian Abbott        2017-02-17  524  			union jr3_pci_single_range *r = spriv->range;
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  525  
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  526  			/* Use ranges in kN or we will overflow around 2000N! */
4af8c8195188b5d Ian Abbott        2017-02-17 @527  			r[0].l.range[0].min = -get_s16(&fs->fx) * 1000;
4af8c8195188b5d Ian Abbott        2017-02-17  528  			r[0].l.range[0].max = get_s16(&fs->fx) * 1000;
4af8c8195188b5d Ian Abbott        2017-02-17  529  			r[1].l.range[0].min = -get_s16(&fs->fy) * 1000;
4af8c8195188b5d Ian Abbott        2017-02-17  530  			r[1].l.range[0].max = get_s16(&fs->fy) * 1000;
4af8c8195188b5d Ian Abbott        2017-02-17  531  			r[2].l.range[0].min = -get_s16(&fs->fz) * 1000;
4af8c8195188b5d Ian Abbott        2017-02-17  532  			r[2].l.range[0].max = get_s16(&fs->fz) * 1000;
4af8c8195188b5d Ian Abbott        2017-02-17  533  			r[3].l.range[0].min = -get_s16(&fs->mx) * 100;
4af8c8195188b5d Ian Abbott        2017-02-17  534  			r[3].l.range[0].max = get_s16(&fs->mx) * 100;
4af8c8195188b5d Ian Abbott        2017-02-17  535  			r[4].l.range[0].min = -get_s16(&fs->my) * 100;
4af8c8195188b5d Ian Abbott        2017-02-17  536  			r[4].l.range[0].max = get_s16(&fs->my) * 100;
4af8c8195188b5d Ian Abbott        2017-02-17  537  			r[5].l.range[0].min = -get_s16(&fs->mz) * 100;
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  538  			/* the next five are questionable */
4af8c8195188b5d Ian Abbott        2017-02-17  539  			r[5].l.range[0].max = get_s16(&fs->mz) * 100;
4af8c8195188b5d Ian Abbott        2017-02-17  540  			r[6].l.range[0].min = -get_s16(&fs->v1) * 100;
4af8c8195188b5d Ian Abbott        2017-02-17  541  			r[6].l.range[0].max = get_s16(&fs->v1) * 100;
4af8c8195188b5d Ian Abbott        2017-02-17  542  			r[7].l.range[0].min = -get_s16(&fs->v2) * 100;
4af8c8195188b5d Ian Abbott        2017-02-17  543  			r[7].l.range[0].max = get_s16(&fs->v2) * 100;
4af8c8195188b5d Ian Abbott        2017-02-17  544  			r[8].l.range[0].min = 0;
4af8c8195188b5d Ian Abbott        2017-02-17  545  			r[8].l.range[0].max = 65535;
07b509e6584a552 Anders Blomdell   2009-02-12  546  
713eab88c66de4e Ian Abbott        2017-03-08  547  			use_offset(sensor, 0);
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  548  			spriv->state = state_jr3_init_use_offset_complete;
abcdc99f7cb387f Ian Abbott        2012-11-01  549  			/* Allow 40 ms for completion */
abcdc99f7cb387f Ian Abbott        2012-11-01  550  			result = poll_delay_min_max(40, 100);
07b509e6584a552 Anders Blomdell   2009-02-12  551  		}
07b509e6584a552 Anders Blomdell   2009-02-12  552  		break;
abcdc99f7cb387f Ian Abbott        2012-11-01  553  	case state_jr3_init_use_offset_complete:
713eab88c66de4e Ian Abbott        2017-03-08  554  		if (!is_complete(sensor)) {
07b509e6584a552 Anders Blomdell   2009-02-12  555  			result = poll_delay_min_max(20, 100);
07b509e6584a552 Anders Blomdell   2009-02-12  556  		} else {
713eab88c66de4e Ian Abbott        2017-03-08  557  			set_s16(&sensor->offsets.fx, 0);
713eab88c66de4e Ian Abbott        2017-03-08  558  			set_s16(&sensor->offsets.fy, 0);
713eab88c66de4e Ian Abbott        2017-03-08  559  			set_s16(&sensor->offsets.fz, 0);
713eab88c66de4e Ian Abbott        2017-03-08  560  			set_s16(&sensor->offsets.mx, 0);
713eab88c66de4e Ian Abbott        2017-03-08  561  			set_s16(&sensor->offsets.my, 0);
713eab88c66de4e Ian Abbott        2017-03-08  562  			set_s16(&sensor->offsets.mz, 0);
07b509e6584a552 Anders Blomdell   2009-02-12  563  
713eab88c66de4e Ian Abbott        2017-03-08  564  			set_offset(sensor);
07b509e6584a552 Anders Blomdell   2009-02-12  565  
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  566  			spriv->state = state_jr3_done;
07b509e6584a552 Anders Blomdell   2009-02-12  567  		}
07b509e6584a552 Anders Blomdell   2009-02-12  568  		break;
abcdc99f7cb387f Ian Abbott        2012-11-01  569  	case state_jr3_done:
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  570  		result = poll_delay_min_max(10000, 20000);
07b509e6584a552 Anders Blomdell   2009-02-12  571  		break;
abcdc99f7cb387f Ian Abbott        2012-11-01  572  	default:
07b509e6584a552 Anders Blomdell   2009-02-12  573  		break;
07b509e6584a552 Anders Blomdell   2009-02-12  574  	}
01fca4732b98ab5 H Hartley Sweeten 2014-03-07  575  
07b509e6584a552 Anders Blomdell   2009-02-12  576  	return result;
07b509e6584a552 Anders Blomdell   2009-02-12  577  }
07b509e6584a552 Anders Blomdell   2009-02-12  578  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012291142.B5v70FNr-lkp%40intel.com.

--3MwIy2ne0vdjdPXF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Wv4FgDtcIuAJAgA=

--3MwIy2ne0vdjdPXF--
