Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWEJ2P2QKGQEY4TQX5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EF99F1CA0F9
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 04:32:57 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id fe18sf266101qvb.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 19:32:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588905177; cv=pass;
        d=google.com; s=arc-20160816;
        b=oAO2MGUWrG7qwAvK61QFKGo3/xFehdKUHSMopSBZmwyfcBbgCm5qDBgy04lHbp0Ij9
         YZx9FHp3VJbRbgVhzUHMhZqLWSMNx7BEurJ6U4c6mUBvR8xcLyk5qtj8KZkai59e6kSe
         FvS8MKCZHN+vwtigTgz8EjopRJmlSpCntpd5HrlP7dDG+IFnHuDH64lvIdkgGFM/fPw5
         Je/C6F6XsP5kWfQuxtP040tIQqJc9d2Vya91vDTWlO2GAq1vFUkVENaneuvWCjmeC+LR
         952owDWP4fvukRxEDBTocOz6I3qcQdN9EYXm1EGYYHAHhPRLexslLuAEYRURxuAeijI6
         p8iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Q8CVOPpp+l8TIl/hdgECpCqdzXJUAJRh0Dj9wN/3rL8=;
        b=VMnyN5e1H5JFYYXO0XgQCLQcR0gs501QXj0LSB8xiktRQgiFf+t06NFedvGAZMqXyz
         BUZQEbjjwi4Tv/N3LI7YcLW8l88GzWFGKUFizClY0W0Yr7WxRjpcv8ExgNYxKLYrieXh
         A7UGw8TiUI18mCh4dJvvW/qqU/rIWJSOlQ/mJi0bPfmZS6T7syCDzpsayWLFe9/Y5iPd
         H3n+th7gyV92ajU4cjxrqrzOcgrBZSu4n3PQNtgCN0+xN96r9rSFxoC7kPiLbPcVQ/Xj
         t288CCQib6M9iEvsXwnNuPz1F3h8/AWOkDBktI6P1IViCRaMxLq4osbp/0xLuT44nwDa
         huyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q8CVOPpp+l8TIl/hdgECpCqdzXJUAJRh0Dj9wN/3rL8=;
        b=c2psX8JwCGUrGbvPTqHCU/FTHEAX9RQeOX78aYMmOopp2Z6NpryExy22f4l7tJ527r
         zWiRca2GpFes4n9HxdZ+HQjd/wMj4ifrPbCpn4AemoQXeJV+uZ+0bZy6cxUzw7rWWEuK
         17qYBcrli+YxZPB3KZpT8PoZTd1oHMmyMdQ5i3/jA9N2MZU+swdSsJTiE0EUJc0PMDlB
         nA0VsVn41aH08oAEQKqVAl45BFmrq9istaqSmRVw//SAPEn1FA1CLZp6VkovwYbg5sHa
         Ju0QZ30H+RXb8+sGSh2KtCxadaSbGPEXk6V4gRmEnTcJkNfgub++ay7YR3+5+sHsZ/yR
         VnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q8CVOPpp+l8TIl/hdgECpCqdzXJUAJRh0Dj9wN/3rL8=;
        b=WfHmSEqOG1NJE2SGpWl0snRwx+db8jtwlbW4YDpfj4+l5NqVZxjz/730N+8335ZMW0
         JlCnkzwPnbEH16i407MVmB8yVOIev/sAJjub+sXLa9JmCaWaRt37DHWTMhZ3QwDzIqWy
         saitA98CDtk8h2bEprZ94GnlXXk9N91a7PC/GM+AAlsoRWxI+s2bnQ36YNUyHV7mQDsz
         WV/kNU8kjwr9WEkaQo/8flqG+LM20mlvJKwN2mXSf4e/X2FvHtOnRTRntZ/eZdzAPR1Q
         V4J6eOENEYRT/fN9P8ZNI6NVtAZP7nVU7g5zHk+zf3vAKWdn8OB3ueTqUXANADSZ/uSG
         z47w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuarUfdN5o8qGe7RMDcjVWQyhaojUjEw5CRRed32S3j6bGd9KloO
	o1YnmcJo2ijYKQZrfZV5Jik=
X-Google-Smtp-Source: APiQypJh0ctRhfwI4Ij0kWbPpdqRDcTaGiPRzLs/JVEmZfovnJbfrLOW0fj3CMaWY1caNxSAhgfqxw==
X-Received: by 2002:ac8:4ccc:: with SMTP id l12mr581827qtv.129.1588905176859;
        Thu, 07 May 2020 19:32:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:655:: with SMTP id 82ls146524qkg.2.gmail; Thu, 07 May
 2020 19:32:56 -0700 (PDT)
X-Received: by 2002:a05:620a:228b:: with SMTP id o11mr530707qkh.189.1588905176454;
        Thu, 07 May 2020 19:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588905176; cv=none;
        d=google.com; s=arc-20160816;
        b=r/9XwF8ucBqWWoVqVcdg+HxEQaIhZTVDAz7x9RAW2oUlVdx4Goe+FnzDVjjMLcUCg2
         FoTZ7OFHIFDtlqvz+zhQ4Brize0Xlx/xUpKa2wcl9aVDzO2bM/nwapLr4DL8xSsVh3xs
         NFNXte1L4sbsfFRutw9YYMKi4eaIj37knYu6znw6iM3ebTeQeMFygTYUCfQIzPd9H6iL
         3O3WgiQpzK7jgJaVeT6PIMU78Cd6kofwu19Ez0M3ouAqoojKDuTvnnwKlWb4Z9/9bQTK
         h0K6Zv/U7bIoy5ZcrwBjHCfg5hgFrL+V6aRU2OH1ui+kzgEtwFDYvAb6WLu5CzvYQ94P
         Sslw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ktaSqQQayNiQZ3+cXC5NQGRlZwPI1zH4l8bT17mvfU4=;
        b=po7FMxhL0uMFdvzNG2vJQAcm6AFYD6LSOloNS9M3YtptuK3zt9PMyPZgjjDoqE36UT
         91Do1zDbMhv99qFLwY3PPNDN4RqPwFr6PlZD0mJqZ3AdWx3J6GMMiZfuJaKKFvSrtPtJ
         WhBu1HK9nTGx1NDr8Pe/nGiGdWkBHH6OSszE+6mKKOBbJOew7geJO+RwrlAYnmNmNOVp
         tWHPm+kFihIoSSMCBHVUis+jwlFXCGC/YcchVlxLD6e6gLO0mpiv4qVu04++uju/Ok38
         SYJ+o//XuU0QqBUqme+6uf4uJ+AqNR7hN0JC+BaIK2IuWt1jxqM9cKHNeYe0qOKn3LpU
         9Wxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id u20si38523qka.2.2020.05.07.19.32.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 19:32:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: kZsWKQIwsVdyf89MneYkkjF1IobiBKK1LigFGiTWh4B5pot3KU6WjpDedI+aMjg1GMtBV/UffY
 Xr43bBurd45Q==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 May 2020 19:32:54 -0700
IronPort-SDR: mbi+ixdEykIh0M/FQciEDfU2o5pfFAVpN775E0cY6gKkWlhXrxKiQ2cnxnlD2KfTZvhOmCgyLa
 jQr2lHVkDFbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,366,1583222400"; 
   d="gz'50?scan'50,208,50";a="295931585"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 07 May 2020 19:32:52 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jWsol-0002rQ-R6; Fri, 08 May 2020 10:32:51 +0800
Date: Fri, 8 May 2020 10:31:56 +0800
From: kbuild test robot <lkp@intel.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [rppt:pt-cleanups/pXd-consolidation 22/28] arch/x86/mm/init.c:668:2:
 error: implicit declaration of function 'init_trampoline_default'
Message-ID: <202005081045.CVDy8aXh%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rppt/linux.git pt-cleanups/pXd-consolidation
head:   2afb1bd3fa64f305863eec77be05b76634fe91b4
commit: 1848bb4400c01647b69e087f1e662a615d179f57 [22/28] x86/mm/kaslr: move init_trampoline_default() definition close to its use
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 54b35c066417d4856e9d53313f7e98b354274584)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 1848bb4400c01647b69e087f1e662a615d179f57
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/x86/mm/init.c:668:2: error: implicit declaration of function 'init_trampoline_default' [-Werror,-Wimplicit-function-declaration]
           init_trampoline();
           ^
   arch/x86/include/asm/pgtable.h:1085:27: note: expanded from macro 'init_trampoline'
   #  define init_trampoline init_trampoline_default
                             ^
   1 error generated.

vim +/init_trampoline_default +668 arch/x86/mm/init.c

0167d7d8b0beb4 Tang Chen       2013-11-12  663  
0167d7d8b0beb4 Tang Chen       2013-11-12  664  	/* the ISA range is always mapped regardless of memory holes */
c164fbb40c43f8 Logan Gunthorpe 2020-04-10  665  	init_memory_mapping(0, ISA_END_ADDRESS, PAGE_KERNEL);
0167d7d8b0beb4 Tang Chen       2013-11-12  666  
b234e8a09003af Thomas Garnier  2016-06-21  667  	/* Init the trampoline, possibly with KASLR memory offset */
b234e8a09003af Thomas Garnier  2016-06-21 @668  	init_trampoline();
b234e8a09003af Thomas Garnier  2016-06-21  669  
b959ed6c73845a Tang Chen       2013-11-12  670  	/*
b959ed6c73845a Tang Chen       2013-11-12  671  	 * If the allocation is in bottom-up direction, we setup direct mapping
b959ed6c73845a Tang Chen       2013-11-12  672  	 * in bottom-up, otherwise we setup direct mapping in top-down.
b959ed6c73845a Tang Chen       2013-11-12  673  	 */
b959ed6c73845a Tang Chen       2013-11-12  674  	if (memblock_bottom_up()) {
b959ed6c73845a Tang Chen       2013-11-12  675  		unsigned long kernel_end = __pa_symbol(_end);
b959ed6c73845a Tang Chen       2013-11-12  676  
b959ed6c73845a Tang Chen       2013-11-12  677  		/*
b959ed6c73845a Tang Chen       2013-11-12  678  		 * we need two separate calls here. This is because we want to
b959ed6c73845a Tang Chen       2013-11-12  679  		 * allocate page tables above the kernel. So we first map
b959ed6c73845a Tang Chen       2013-11-12  680  		 * [kernel_end, end) to make memory above the kernel be mapped
b959ed6c73845a Tang Chen       2013-11-12  681  		 * as soon as possible. And then use page tables allocated above
b959ed6c73845a Tang Chen       2013-11-12  682  		 * the kernel to map [ISA_END_ADDRESS, kernel_end).
b959ed6c73845a Tang Chen       2013-11-12  683  		 */
b959ed6c73845a Tang Chen       2013-11-12  684  		memory_map_bottom_up(kernel_end, end);
b959ed6c73845a Tang Chen       2013-11-12  685  		memory_map_bottom_up(ISA_END_ADDRESS, kernel_end);
b959ed6c73845a Tang Chen       2013-11-12  686  	} else {
0167d7d8b0beb4 Tang Chen       2013-11-12  687  		memory_map_top_down(ISA_END_ADDRESS, end);
b959ed6c73845a Tang Chen       2013-11-12  688  	}
8d57470d8f8596 Yinghai Lu      2012-11-16  689  

:::::: The code at line 668 was first introduced by commit
:::::: b234e8a09003af108d3573f0369e25c080676b14 x86/mm: Separate variable for trampoline PGD

:::::: TO: Thomas Garnier <thgarnie@google.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005081045.CVDy8aXh%25lkp%40intel.com.

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
9OIVs4PBYYpq7aac9R/kT0gqc2oAAA==

--KsGdsel6WgEHnImy--
