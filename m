Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVOM5DZAKGQEZOWF4ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E961745A3
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 Feb 2020 09:52:39 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id 199sf8880518ywe.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 29 Feb 2020 00:52:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582966358; cv=pass;
        d=google.com; s=arc-20160816;
        b=A6k2XYscnyOZGTQq2QnpQRK66tiQsemXna7lv5GMv8UttcwqJAUb4LXnlC29zebDnF
         UfB4ReNrLxMP2BUazcI1XAAiEncWnPGhe+SnDj9Iw8QjmaG2FUvV1Ba7xXtas0K9c/A6
         V90sbaFLWwHA2ia8d7zWHv/eKgWrT7+onjBBy8PKpttKkL877+Z6aJ3vVV4bJp2rQiF/
         nkOwZEMQGYEM9UWHwxc0aGkKon71U2oHSqRq+UB4HJUgw6jRVbG/Ui0N7JMJMFa9W6FT
         QG4gYQTdbdOL9V6MLt7jTLYoGiozbenKYgRUPbUGC8V6qmu9v2b1rQwgKFpvMlWDW3YS
         DlJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0VQGqVCTHyjGwolzgbXRQ4K9Z3hRKqVhobaCse/5X9g=;
        b=FNV3uHQ9phHaKvHxVj53YgXhszYUe1CcL9IcOzgzIDPmVgQzfdLr27ro+Ca0ZZ6Pm0
         oAKYKTGFZ8azIcTibrRRwAye+Fn1q0D4ZgIdgGSlDeAfeVDpK3DohRa8+ijpfYQ4w4Sa
         Ynwto2vHeziq8jnlScGcq1Q/Wt4Oe0r8OIGdydwDafEf/QSLAGDYVdNaH+3PGxEFOQI0
         yHv38UjkqY2Jn21lIbq8rTwOj3uiM4NSacc794gIjIRu2N4T4H/xfWg3Ip2COspKPoh9
         PCXcZ0Orfk2wLFIudNwsbz6tgw1jGcsL6aAwS23mKI8bwNUe5l8yeCyD0xoZGyb7nZzR
         cUfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0VQGqVCTHyjGwolzgbXRQ4K9Z3hRKqVhobaCse/5X9g=;
        b=n8OMHpQ8+QReVlbQ4iMO9EQ0kgfNotlUcTCCydjp0JIP8kLMUrdBn18UxY9t/sVMA+
         6ZmFwTVnPIqRN61I4Vheh/DBMf4RRU510snoXtcsD9+Qtkh8w4PNtticLR4pNGkb4LFd
         WYd+8UrGVR4D4Xm7ujr/ew9mZJTzjrxiP2xKArhcKgKHcdMXQwm9IipD7J/eN8GZSTmJ
         qbGLZZIDQVcePgsmEIRAam5vI5irilogbPbF49LC2Et1RqAmZfsB0pUHmvWhVoD258g5
         CXYaPLg+h38eWjjab+H+5gefuA3aY170ehEqbEwQJqwbk+pgl4VI2CDv5a7WqxaurfjN
         B4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0VQGqVCTHyjGwolzgbXRQ4K9Z3hRKqVhobaCse/5X9g=;
        b=kTBSMQ+OoVTC9E6rc4Au258cS9itFCTxat0fATG7PIWoSamwyY0y045sI7qFMphkdQ
         7t+b3K9JG81kLua3sKS8HZeCMXtApEIVmhXB2kRUw7K58KeoUSChkjbKWC665hhSidoD
         zAraB8ioWVL/kaIcRQC3VWjiSmwYyChk9pnmkre2A8WPgRaFxR86FwZjfXTUDpSCaSnx
         mfs1+3Qz0GA6++wD5ZqDCn4ruY8CKrpILuIvryHMQW3ni3yqQnFlIqqbfAoPXxkpxPuE
         mxzkbwjKFxd9sLfh3xGvY7IvHfJ8shynuVzCg5UIAUivrK+RnXxfc8wPt21+PBRUdC2k
         9FvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXndbrTgJtcM6mTMZ9rRRohamMZY/byZ8+Bz5Hqyh5ip0Ulxtfk
	4mB5TYwmJeZ7mD3Ik9SBR40=
X-Google-Smtp-Source: APXvYqx/3vJMxUdNvd/p6+HoYgsvIGwsRe9USZ7yvAz1T17jFdKaWoPQwp23e7iRHLeO3Vpxg2MBXA==
X-Received: by 2002:a25:9d86:: with SMTP id v6mr7237358ybp.214.1582966357900;
        Sat, 29 Feb 2020 00:52:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4ed5:: with SMTP id c204ls1241397ywb.6.gmail; Sat, 29
 Feb 2020 00:52:36 -0800 (PST)
X-Received: by 2002:a81:716:: with SMTP id 22mr3897016ywh.302.1582966356801;
        Sat, 29 Feb 2020 00:52:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582966356; cv=none;
        d=google.com; s=arc-20160816;
        b=mHL6rxuvllyigyUAEV9/04GXl21U0Puuh252cxIb6uSYDT427FAOeFB2qkhKIzwo3e
         SjdiSwzGvSQVmQ4EwG8Akq8QoNO2IZ5uxijcUYHg/WD0Fhk8+3frqVcXU1p6VVzWIWIh
         OAn+9LJcHheU/kpwuvxuljvipkem/hen1Zdixk5WekAMpLOLd2tQ0WnMrapovZ9Isnyu
         86YUm5TwqhkFVOm5FMKpVuovo+IbfY+wh2QPxfdTeplJlMfoIShZ8E/jHXWtTXgB31/I
         /dUYqsUReAsfe+3ccSuXUDdK3heSR2+LxNQQQ7iQba7FypEFwdGxXg60pGuYQGpPP6ca
         4wsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=xav+3dPmHm6+GyPHOKrVsXPOsMLmFA0OJN9gr95dMDg=;
        b=WhU2gmKuyaIuU7TkXY55dE9Z8ug8DQ5GrGzNXSwOPsL9PPjbqf2Fs9z7V0HA4/LM0k
         sWAN5HQNMCaGl8iwKt2VbUVFFhXDVE7apAluWstqWrsNygKVlFa1t5bnuUV797m6dYuU
         GSvCg6E4vbvZKo08ouKOaNLowhJt3i5fa7biQ9btiFDo1AgRcgJxetnr1B+G7tu4mrz9
         nESwCfVMV3imzyNrUoAS5/Lhl7T/TrYTKW0t1vi1jpEZHDdJmJ9eg/x6ZMh8W+PPtvox
         QM7rffG6MtPDUQSHPi1jy/88akS6FjchBOpvW7UNVT+T8peIkeNCWrYG76yHqbrsH+nq
         jiIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id l1si350030ybt.2.2020.02.29.00.52.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 29 Feb 2020 00:52:36 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Feb 2020 00:52:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,499,1574150400"; 
   d="scan'208";a="439492436"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 29 Feb 2020 00:52:34 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1j7xrN-00051f-Jt; Sat, 29 Feb 2020 16:52:33 +0800
Date: Sat, 29 Feb 2020 16:52:26 +0800
From: kbuild test robot <lkp@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Chris Wilson <chris@chris-wilson.co.uk>
Subject: [drm-drm-intel:topic/core-for-CI 18/20] init/Kconfig:77: symbol
 BROKEN is selected by DRM_I915_DEBUG
Message-ID: <202002291618.MnZC0ME8%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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

tree:   git://anongit.freedesktop.org/drm/drm-intel topic/core-for-CI
head:   8a61c65409b1993abccc2c379f30a047972a0622
commit: 19f102d485b9f5e03677f73133d9922e2650686f [18/20] Revert "drm/i915: Don't select BROKEN"
config: powerpc-allyesconfig
compiler: clang version 11.0.0 (git://gitmirror/llvm_project fed2acc7f53cd0699a4ddbe96ae18487e9580c3e)
reproduce:
        # FIXME the reproduce steps for clang is not ready yet

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/platforms/embedded6xx/Kconfig:2:error: recursive dependency detected!
>> arch/powerpc/platforms/embedded6xx/Kconfig:2: symbol EMBEDDED6xx depends on BROKEN_ON_SMP
>> init/Kconfig:80: symbol BROKEN_ON_SMP depends on BROKEN
>> init/Kconfig:77: symbol BROKEN is selected by DRM_I915_DEBUG
>> drivers/gpu/drm/i915/Kconfig.debug:19: symbol DRM_I915_DEBUG depends on DRM_I915
>> drivers/gpu/drm/i915/Kconfig:2: symbol DRM_I915 depends on DRM
>> drivers/gpu/drm/Kconfig:8: symbol DRM depends on AGP
>> drivers/char/agp/Kconfig:2: symbol AGP depends on PCI
>> drivers/pci/Kconfig:16: symbol PCI depends on HAVE_PCI
>> drivers/pci/Kconfig:7: symbol HAVE_PCI is selected by FORCE_PCI
>> drivers/pci/Kconfig:11: symbol FORCE_PCI is selected by MVME5100
>> arch/powerpc/platforms/embedded6xx/Kconfig:51: symbol MVME5100 depends on EMBEDDED6xx
   For a resolution refer to Documentation/kbuild/kconfig-language.rst
   subsection "Kconfig recursive dependency limitations"

vim +77 init/Kconfig

^1da177e4c3f41 Linus Torvalds 2005-04-16  76  
^1da177e4c3f41 Linus Torvalds 2005-04-16 @77  config BROKEN
^1da177e4c3f41 Linus Torvalds 2005-04-16  78  	bool
^1da177e4c3f41 Linus Torvalds 2005-04-16  79  
^1da177e4c3f41 Linus Torvalds 2005-04-16 @80  config BROKEN_ON_SMP
^1da177e4c3f41 Linus Torvalds 2005-04-16  81  	bool
^1da177e4c3f41 Linus Torvalds 2005-04-16  82  	depends on BROKEN || !SMP
^1da177e4c3f41 Linus Torvalds 2005-04-16  83  	default y
^1da177e4c3f41 Linus Torvalds 2005-04-16  84  

:::::: The code at line 77 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002291618.MnZC0ME8%25lkp%40intel.com.
