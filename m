Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHMTYWCAMGQESNQ7S3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AFECD372ACC
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 15:18:22 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id b4-20020a4ac2840000b02901fc335f25cdsf2640101ooq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 06:18:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620134301; cv=pass;
        d=google.com; s=arc-20160816;
        b=LPvdzxg4eznpHIot+WqxOOK7Fj6iz2AYFTwB+RqFGLT9LrE44JFog1ez8H+Ksc+hE4
         cJtpbHMRedTRYWI8e6mTZXHKN2j6vhbJ2hwB1FbooGrBPAqhFb3sHgMjy6lbuEmbVnk9
         YlTxRXUW6C89+xNkWVSjBoC3GbtUo+CLuEg4lM33FQNG3yurSPBrre0pFw1iBXdMk257
         VDlLDtGLl7koJMTOy8yuFbmACqHHVath4INngEEWhuH6IfVS1AdUQLZRQeu4Q8npDtxj
         2hrULiEbkr5QC3nvzn1CUd1MaTgWNMUfWsLNj5tw62SaRfZa4eKumBWavbz0brZ8uydU
         49UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=w59dxHRSTZbWiKBQWdHJYl2g2V2Ij6cgfDmd3ISXc3w=;
        b=GXXzeekWZrlVb0j0XFYx7Tf5V6/741AbFcm4+XMGzBZCYSZhLAn3ntImM5HyhFI5qV
         hALMrNx6mBgZ4YXFUCq7dv1mhwMCsHgm0DCdw9q322klqc0z2HpE9BHwY/oeyyjhYfSw
         zUxl2K8ikENy5CRihBJPZVBMNu/lRxuMlWUNm/dFwF5dbBbcI9Ua+vTjGU7Krsg5ZziM
         BckNTViUQKVObRV9/zwZ8yV1p3qsiecdJ1yKWTBxRbDwMGWqB5BK3CWCZlK9fdkd4ukY
         jq3NNOm9HTBPgg4+2GcgCpPeXc+Nfktu/u+eZ3lUN6Fx0VQox2zS8faqAMf10J1MFPUK
         B/mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w59dxHRSTZbWiKBQWdHJYl2g2V2Ij6cgfDmd3ISXc3w=;
        b=FxiTG/KZ/kCEA3FabW/mNZHqtqakwSvoSzehX2mv8b5oAR3vW02hrVALYLtpQb7sfr
         XYEhUelgFGgL5uf8aHZ90Kp1RQ5v/sY7Px05eS4WKj/7K/r4u+bEoE4JI6yhc4I4LLFR
         OW2XKLIoN1tOXzeTrtRRDpiSRx14y70AsETOCuXjKWQqXRZRgFaBZRTHbUGpFDTpkZS2
         UflN6hZ9gd5U83bqER/t/KffxJ+pz0UfQh3L+DE73hLXztptP08NJWYLMkzrxfmY9y8h
         cIxs1FRN0mdZ/FixAnacWp+ONvqhhbKTnOq4QWOy2T5UjRewFs55TVLq5IBbcB6Cbbjo
         OgWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w59dxHRSTZbWiKBQWdHJYl2g2V2Ij6cgfDmd3ISXc3w=;
        b=ewe3Bmzp8oZ89/dFLmq1ZpiBFZJMYD3iLslcN2vTwJPEhu8gFEzrP2VrIexxH+MunZ
         mB62367RNMG9gHkKIy0ex7qZ57BPKumqGNcZkyogtwvns8eZWJRTUWfIWn1kGEHpDEwj
         Srx2fj4B+P4oozqBHnVl5IoRVCu2LKrKVgdwWkNgGkZxvXe2cfpP8Hbx45sgOkSro68z
         ROqC3kocFI4BDKh27vEb6u+8UGaoWTCAbfKXrYmtYLuEn/z94xVyrcBm0InyRSvZaLpA
         FkQ3Ra1GpHiBbqIQfnIztBcpEJl2z7Fk+FIlCU7k9e9w9nc0nngq7+ITE6fwyPy8XDqG
         svFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O0eiUDpJjJZxwBb2AlK8LGMae6O7uA6p8opH0st6Txhu7n9bR
	zdEWNs3R9iL0L8YbIWafgYo=
X-Google-Smtp-Source: ABdhPJz0r47YYjxlDC+3F9cz4Zh8xpp4sqX3utyaJAVPlUOevi584eVJki8WN5NmPZyT2ZrEOH8rBQ==
X-Received: by 2002:a05:6808:14c9:: with SMTP id f9mr3045638oiw.144.1620134301462;
        Tue, 04 May 2021 06:18:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:926:: with SMTP id v38ls4807490ott.5.gmail; Tue, 04
 May 2021 06:18:21 -0700 (PDT)
X-Received: by 2002:a05:6830:19e7:: with SMTP id t7mr19243179ott.287.1620134300915;
        Tue, 04 May 2021 06:18:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620134300; cv=none;
        d=google.com; s=arc-20160816;
        b=VWFI3qNdT3VpkRxYRZ1m5W735nmmzG3a0nI/4dfGXZQWTXs57vLA3QZqiIL+U3yBMY
         dpKEftXri5W5IT7XeXUBHQQTq+8DHesKvoTzKeL/Sb7qF92N1Cymuuk5os8MU0w6A3PE
         EPlA3eN49VkboDUV8ZgzIApAeKD9FNM3o6AvReg+PhBE4lRmti4dHur2Dzj8A4mDoKtN
         sU178fngwWjEpFNQMg65WIGXOfsQZVh6C/hrFsUVN4tf6fIPQh/l+oHDN37/WecWnGXq
         dbFfJRiBEmertdQvjzx3+mGfCV6Jpx9nMXBfeTTk8YyJ4Vr1j0DQqI4VJ8V/2H311zzs
         b2Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=LzyvVSE2VnLr1bgHpr7FV4LCNcfEEiJkZ78fxY12JRA=;
        b=MCVcWanHDoH03sIGv4s1Ub71Uav1gtlXluBGP3HxCr6Gwt0dKYfXwt+XQVzuuQ8Zu7
         2W4Vu1VZN65vjOpnUpDKeSuJvkBNCOlIj3a7LLLQaord2ZUDPuE2rqXhOTg1kM9FKTHF
         s/SB3L3FWHXPiZ8JlG1AfvB5grBPDo6hAdQuKl1IWzUFmix4Eq1xdoSzJAxpeVERfZYG
         5IcE7Bbe1XYR2AoMsHsyBBMayo7VpqF72vu0BxY11SzTZ88T9e98sg1OYOB0LJwzxQhv
         wHus50xndkXE4eU0ggDFAqizSNlh35Sw/4Fzfzo2MmHVOGmaIKuGXPva1CzF3O5OV8Lq
         o66w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id 4si299207oiy.5.2021.05.04.06.18.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 06:18:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: Vd9XPITPxiUXyH0ev058dKyZPbt8+uRj7PdmbWDobEuiRNeqBhxc1oBc//Wzgu/iWBnh07onK8
 XZczFuR6hVYw==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="197591604"
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; 
   d="gz'50?scan'50,208,50";a="197591604"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2021 06:18:19 -0700
IronPort-SDR: jsjG8GFtClHoNoOIpiUImZ8QsMECyWQUb9MWgnDajZUTDT1+zHXenwRjFzdb+Dg9FOX8MMvui6
 IZ2H7iiLtQuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; 
   d="gz'50?scan'50,208,50";a="457985296"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 04 May 2021 06:18:16 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lduwK-0009bX-Bd; Tue, 04 May 2021 13:18:16 +0000
Date: Tue, 4 May 2021 21:17:35 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"J. Bruce Fields" <bfields@redhat.com>,
	linux-kernel@vger.kernel.org, linux-nfs@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Chuck Lever <chuck.lever@oracle.com>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [PATCH v2 12/14] seq_file: Replace seq_escape() with inliner
Message-ID: <202105042134.dgC8x5iF-lkp@intel.com>
References: <20210504102648.88057-13-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PEIAKu/WMn1b1Hv9"
Content-Disposition: inline
In-Reply-To: <20210504102648.88057-13-andriy.shevchenko@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--PEIAKu/WMn1b1Hv9
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Andy,

I love your patch! Perhaps something to improve:

[auto build test WARNING on linux/master]
[also build test WARNING on linus/master v5.12 next-20210504]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Andy-Shevchenko/lib-string_helpers-get-rid-of-ugly-_escape_mem_ascii/20210504-182828
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 1fe5501ba1abf2b7e78295df73675423bd6899a0
config: s390-randconfig-r033-20210504 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/047508aa8c09cb58cf304e9025283021731b3921
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Andy-Shevchenko/lib-string_helpers-get-rid-of-ugly-_escape_mem_ascii/20210504-182828
        git checkout 047508aa8c09cb58cf304e9025283021731b3921
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/tty/vt/selection.c:36:9: warning: 'isspace' macro redefined [-Wmacro-redefined]
   #define isspace(c)      ((c) == ' ')
           ^
   include/linux/ctype.h:33:9: note: previous definition is here
   #define isspace(c)      ((__ismask(c)&(_S)) != 0)
           ^
   1 warning generated.


vim +/isspace +36 drivers/tty/vt/selection.c

687bff0cd08f79 drivers/tty/vt/selection.c Jiri Slaby     2020-02-10  34  
^1da177e4c3f41 drivers/char/selection.c   Linus Torvalds 2005-04-16  35  /* Don't take this from <ctype.h>: 011-015 on the screen aren't spaces */
^1da177e4c3f41 drivers/char/selection.c   Linus Torvalds 2005-04-16 @36  #define isspace(c)	((c) == ' ')
^1da177e4c3f41 drivers/char/selection.c   Linus Torvalds 2005-04-16  37  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105042134.dgC8x5iF-lkp%40intel.com.

--PEIAKu/WMn1b1Hv9
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
jThioKF0A4Qu6PKCJn7q9trmfzT9birvygAA

--PEIAKu/WMn1b1Hv9--
