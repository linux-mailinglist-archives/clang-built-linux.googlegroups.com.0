Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLHCW6DAMGQE3ZXZQ4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9763ADA1E
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 15:29:18 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id u8-20020a17090a8908b029016f79b38655sf1614008pjn.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 06:29:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624109357; cv=pass;
        d=google.com; s=arc-20160816;
        b=UIT7J7hgmILr0T+mHjJ/Ryt8Dopey2HsJ28j3Y5/P1g5t6yjOUvLqIEV4cvHNHD6vi
         LauQpJfXVEBPD3901Rzpkb8LtmcjRSFt1xYAEu1gjnmSSILa9lLHpaE2jOALpZQvITmG
         AGLXXNyNtBc0KynXcziN6x8Kc2v2Dqpg/I/dTL2bnMp48mY1oaxbKMcL3QtGJeK8JO1J
         8Xz4xTUpuyHwlNTlNVQwW8p9NzbLYM3oHtS9hl8AP99ZouApdZw2WX6lLvIo2501wcQG
         8xThO+eofQRI4Nv15YNoLzDgidQWt50yFfe05S1skq3UHEDxZNItjDeZHMtAWYm8ASi3
         wH5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=G6krFN0MFZk805OdBqGzaR8g/WJaOCz9Qq50/Av8tVA=;
        b=IQQtaWMrwWbQcfsTP8YH4E9RQRgBPaIzou0iaI2cwWTp5Q9qLAs0WbW08+i+/oD4ET
         AmRaDz0RuMewj7COCdOy/YHWFtqh9GT110480JivZrczLom9ckA4DSwymNfOCXk8BRHd
         1bdRQLkfpr8zWTuAeNsAoL6fMqOZ5+I0X1ka3WV6n3mJzyvuPbtGghv8ssCzJ8ztOHZx
         Zxpn8cugbKJMBj+kV5P4wvgOjxXurpDWUh46MNhy1agX1acAewtlfFZOvxuy0XrlGklo
         KHUWz4myOadFB5Aq+PJJvO77A85P70464givm2+8txmpxQ9r9gRZ7N6VUSOHtppWHaqU
         Q6Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G6krFN0MFZk805OdBqGzaR8g/WJaOCz9Qq50/Av8tVA=;
        b=ksxeyTo1hVt4UJvQDDrg05Ky2qGnCvcPWRwZ6OOdRrD/0tz/L4Crd/ifsRJyaQQsr2
         Gkopbfvp5R/emoXT+QWn0r0CMREIxCCreLM5I302Ib7ktPahI+hUVSSZSNG9SUNLACSf
         ODjDHH5kXbQmmNlQrdDaUCgxyAJ06l45jJ1/U74/n+6zoVI/NNkZOcrHxRo+pAdZu17V
         4XnPX9NIYeJAE+NSBPXn1mtZSDuXsCuRJ1TEi3lUl0VoCo7bvp1zFI72KLxUWz0U/qm3
         J8QBd4JXJmNppfKl/YOfTK/Jstfnf0+mlFuSvockn012xpuG/sJ9C2SnamxSErwrE9nf
         dLXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G6krFN0MFZk805OdBqGzaR8g/WJaOCz9Qq50/Av8tVA=;
        b=I6VH+ZeRMunOKUGf09RTO+M81ovvU23LoYCRmlvrTvqelJpLkGXdtrEvERx8/jgmVL
         3fkBCyE/z7a2bYUfJGe9KElDE49dM+APRIL+gHokwgJvRwyLN5gnTb4HQ513EEyYMWhC
         KCQODOpsc7WojyLKhjrsKVm/aIPPzzRPjs68lSCck9ZyYY4dbTOpmHbQ2KX0cLlDITcY
         Z7aSshv17GxzqKcvKW6Vgeqa+C8ql4WffT2GDIJjl+k0Y6JvQGKDWCQPVEX5yspi9+tF
         HtbOoJlBm0cE06XVuJBkes4l1yH6U0LNL4FY/qiMonD9vlBjBxapGG+Sli+XpfIWTDdC
         +wAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RiO9BwS1IB8fxg+swD6+a+cwrJCTwdPRM6grNL82kAaEa1DBs
	OTCVzDhGydeoz2Rwp7kwWA4=
X-Google-Smtp-Source: ABdhPJyCpxBfcum3XugIeEA80RybydVQ70WEkoD1PkZBcJ4bqnMiRF+1XrzdZfR51KxKE9+qfoEcoQ==
X-Received: by 2002:a63:485a:: with SMTP id x26mr15139913pgk.159.1624109356923;
        Sat, 19 Jun 2021 06:29:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4ecc:: with SMTP id v12ls3407385pjl.2.gmail; Sat, 19
 Jun 2021 06:29:16 -0700 (PDT)
X-Received: by 2002:a17:90a:65c8:: with SMTP id i8mr27756820pjs.207.1624109356195;
        Sat, 19 Jun 2021 06:29:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624109356; cv=none;
        d=google.com; s=arc-20160816;
        b=WH0oc/6BT5FQ68l5TF1iqc2DPhRXUsAKJBU2ooR/d558/igsY6uIJ7+/yqLXTOCW7A
         8b3pkAVE4brOLIL9C1uw0OdE7TJwYpn885JbcFLOojP8pkN7UvNKyYR6iXopB342LOTW
         14aPtIE3+UYStvgWOPKDaK94e8Ndhwr13itqcbsQnZ5En3IDhD8zkLgY01snlEIs1DXh
         ZNhk2ALKxGAD8VxWnC7NY3hZ8lql/ejCit6eGEy3MZY9NuHydtpyjApyGAKpa8inOC5r
         4IHy9jEqLZ5nBfIsqkVeSq9i76GrJRq1wPhF9bYwR+fCqCWUF4Xlq3pFxbvgzyS9z6hm
         e33Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=7WhNGDF0RqevCIuPGsJRIJSTKPN58axPMM4uBDy4dSc=;
        b=Ix5plM9ZHGr9Ygwo0Dqtpdk7FCn0Oidnd2xswGM8JD9/3r9ZUXLy/IfA2GessxPoK/
         mXD04btJ8uqtmywPE32GPKfnpwjEUX70GMn3PdLdAGCdTflApaey+nGr2e6gGHdNYWdz
         EUM7P5tXSq0rIdcz1oBm25hJaM536txrov1hWZz34rrPb3yCawnSP08rQP/SCMVkfVnB
         MTSdNtcNt7h1NWXTZpCTpClKJG6VB8/pd0akehR6wgkoKDD7gyFdThM4skA9DNKz2M5O
         zhXAPo9Zh9mApvG3A5gg39ccC/XlDUjUDSqDl9V4EL+gKHq4ZuovLLDviKwP3nGO6rHX
         IoeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id o20si1399874pgv.1.2021.06.19.06.29.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Jun 2021 06:29:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: x9D67QAeVl0IyXUe2NsrckY1ZGUdzjmFUdU/ylgVF2FeCpsj2FO7advS1A8TWsaMcw7O+emHta
 haQnmigKZ7Mw==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="267812883"
X-IronPort-AV: E=Sophos;i="5.83,285,1616482800"; 
   d="gz'50?scan'50,208,50";a="267812883"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Jun 2021 06:29:13 -0700
IronPort-SDR: 19Y14AznfHWnieW4a+3o+lEOk2kIymty7lh8w9Jjs+cCE2KOqDh+zhwZgVrD2e6l3N4BiSDiab
 DtenoG39NnHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,285,1616482800"; 
   d="gz'50?scan'50,208,50";a="451700763"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 19 Jun 2021 06:29:12 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lub27-0003aU-9j; Sat, 19 Jun 2021 13:29:11 +0000
Date: Sat, 19 Jun 2021 21:28:45 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [kees:kspp/memcpy/next-20210618/v0 58/82]
 lib/string_helpers.c:883:6: warning: no previous prototype for function
 '__read_overflow2_field'
Message-ID: <202106192143.O2Ok48mo-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git kspp/memcpy/next-20210618/v0
head:   fd2aa2a169de8bde9502e7a2fc48cd03d4bfd996
commit: 21405e341f4b8742f8c6d8b91ad39348d7cf970f [58/82] fortify: Detect struct member overflows in memcpy()
config: powerpc64-randconfig-r004-20210618 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d1baf2895467735ab14f4b3415fce204c0cc8e7f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?id=21405e341f4b8742f8c6d8b91ad39348d7cf970f
        git remote add kees https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git
        git fetch --no-tags kees kspp/memcpy/next-20210618/v0
        git checkout 21405e341f4b8742f8c6d8b91ad39348d7cf970f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> lib/string_helpers.c:883:6: warning: no previous prototype for function '__read_overflow2_field' [-Wmissing-prototypes]
   void __read_overflow2_field(void) { }
        ^
   lib/string_helpers.c:883:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __read_overflow2_field(void) { }
   ^
   static 
>> lib/string_helpers.c:885:6: warning: no previous prototype for function '__write_overflow_field' [-Wmissing-prototypes]
   void __write_overflow_field(void) { }
        ^
   lib/string_helpers.c:885:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __write_overflow_field(void) { }
   ^
   static 
>> lib/string_helpers.c:889:6: warning: no previous prototype for function 'fortify_warn_write' [-Wmissing-prototypes]
   void fortify_warn_write(const char *func, size_t buffer_size, size_t write_size)
        ^
   lib/string_helpers.c:889:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void fortify_warn_write(const char *func, size_t buffer_size, size_t write_size)
   ^
   static 
   lib/string_helpers.c:896:6: warning: no previous prototype for function 'fortify_panic' [-Wmissing-prototypes]
   void fortify_panic(const char *name)
        ^
   lib/string_helpers.c:896:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void fortify_panic(const char *name)
   ^
   static 
   4 warnings generated.


vim +/__read_overflow2_field +883 lib/string_helpers.c

   881	
   882	/* These are placeholders for fortify compile-time warnings. */
 > 883	void __read_overflow2_field(void) { }
   884	EXPORT_SYMBOL(__read_overflow2_field);
 > 885	void __write_overflow_field(void) { }
   886	EXPORT_SYMBOL(__write_overflow_field);
   887	
   888	/* Run-time warnings */
 > 889	void fortify_warn_write(const char *func, size_t buffer_size, size_t write_size)
   890	{
   891		WARN_ONCE(1, "%s: detected buffer (size %zu) overflowing write (size %zu)\n",
   892			  func, buffer_size, write_size);
   893	}
   894	EXPORT_SYMBOL(fortify_warn_write);
   895	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106192143.O2Ok48mo-lkp%40intel.com.

--yrj/dFKFPuw6o+aM
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
vb++GSfdg0liwb2bggr+fx0qWF+scQEA

--yrj/dFKFPuw6o+aM--
