Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG5A3H3AKGQEBSSQ5OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F891EBCB8
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 15:11:57 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id b15sf8141656oti.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 06:11:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591103516; cv=pass;
        d=google.com; s=arc-20160816;
        b=WmigTCmnovVZOLXQI8WbrXbiOX3LBRIz92VS0tT3GNf/Kwz+MweWEbTnFbYAOHqZPj
         l9WYy73ufsQhckE8Xy5f+O1kBHvUy8q/i7287N3EDBnKYQPBlXiOo/3IgatN+xE0Fvs+
         DiqM3BVcAIM1DBAWmOWXyARBn4HobfeYTl67xtqVcT+B+Me07YSEAdGdLWfaoXhYo21u
         xpahsEnowMe6RV+v+yBg/CtOF1fVQSMAzci5XPIQqXUeMzzMn6HkcdNkvKYW5qcIH3M8
         Xbb3CI4+LGmXDnHpDpZAogVO4Eq0MwM894qsENokYjhetmFSXlr6CDlwxVbuzhpGQvS+
         fwuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=j1QXa4edCaF1h4JoN6LUL72F/KKGCSQwp0ry/4+ujRo=;
        b=kr1mUNMTp2l6pnYbRVx7Q5dWRiibkPSapZ7Us6yv1vVcPZD2DnlzT8t213ijxlMhay
         O2KkkJUcfdYUBTp9/RxbeZDJOMWZ1U3ctndVQFB677cadMNw+F2YZWTniSHSkotKGjeu
         S7l8Q4gfARSeqGexdzloEK9bEFPLJdN9zaYV18qlnXqjjCzBe/5OHoMtqyTCjqz5w55h
         aRDpqsthdBXR66HT7rD6EZpOmiZvL32eY22/8J1NhDc+fOhnM/Q265kAXnWXJsse19XL
         NGtuS/XwGTftAEo4gn3+SicRkH3ZOhjylNv8IEbsRW+D7dzKYVNUI9+HMB3yB50WN9dq
         ofpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j1QXa4edCaF1h4JoN6LUL72F/KKGCSQwp0ry/4+ujRo=;
        b=Fr/RI6UhbKhFO7bnMticsuHceb1BjnIciQtOhLUXfSFuO8hVrT3L7ChqgOMLmxJyLM
         aNW+yQTH8m2WatObBdBpZJJVC+pyAkvWxFtaOKiYD/Eiao4KBdzdAQZVBPGgtotIQ6Cm
         EYBB9EfYW3ATRyko6prd/mMaZpk/t9FdD+yPaYuHOfSVu3j9be+d9w/DynzYgJStlGKV
         Mb7mC929vVP3hBU0e/ZHkELLyFnF2LZIPyM1uy/w2qTT4TiYvd0LZ9SmZh8jrnSoEKuf
         iW024Nm5SNZ2pqURdNWQF4hnC8XSZMA/xX7Jq0f9Ksj1YNjA+zxI3+prib7mdpI29jKd
         jOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j1QXa4edCaF1h4JoN6LUL72F/KKGCSQwp0ry/4+ujRo=;
        b=dxhBMM2dwSZ3uJx9bBJZ5cSB+7Wfoq977/GpwD7SDOTyA6bnO2MXScGiRsZwsEbBqw
         J0qHVzx2TGWyTjCfx7pIa4zhO357Quofzar3nrw8FNA520AQcN0hu6HAj59xtrZaVaqx
         vQ2I0Zt3Lk9kznrkC8po3kVIUrcoIfArnH8XCbIj79ML0u02MB2vA0+wlFsyeeswYvrN
         1cbMok0VJBV69v5bXbE89D/ZvxwfjRgh6GrPQtYsBS8Lww7nDxA1zOnnOQkdjSSzKA73
         CYwJoaa1xSRXtoPAbBmeWMkwYeAyEOrjyfpGwpRIuTbzwxEu7f3CTIPMVxUEQVlLEi2S
         EJZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HnTf71TE4cmNfuVJDpVTsRNc9kEEUz8lDmWt/iOu9djpipvqn
	9sMCnoCdD8e0UvybkIBUTgY=
X-Google-Smtp-Source: ABdhPJyHYDyV8PE0yWU4jF2igA3O/DXAD5q05OtKJtv3TaqT711UsuoL32wYoSwKZuZ/nEZg8Kn1gA==
X-Received: by 2002:a9d:3675:: with SMTP id w108mr20934678otb.116.1591103515855;
        Tue, 02 Jun 2020 06:11:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:590c:: with SMTP id t12ls2467731oth.1.gmail; Tue, 02 Jun
 2020 06:11:55 -0700 (PDT)
X-Received: by 2002:a9d:5e8b:: with SMTP id f11mr16463555otl.50.1591103515458;
        Tue, 02 Jun 2020 06:11:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591103515; cv=none;
        d=google.com; s=arc-20160816;
        b=ppxXVxjCHo01FHsJE43CNXfTWAIHkHVOWSJL/8NGRJt3Rp7vmx+/RS1Txa7r+nQ0Mo
         i58A1S4w8PU/PmORNK+kK4+JXe2Ge39bvyLWxbbl23awe/ZrQ2BPhpMGAJWto4ypUzif
         t9Izj5ELUdG/TJz7IvNlYoq/XXpL4ulbGUdRrc/dB79e9oxqc+W3EsCue2KnQ4ujRmcn
         aD2dwr3Y8ilsJJM0B7yUNHKRNdMVrqj+cdAiRDmNZU8Y36b7GMz+zFAcaFRx0BIk5Bzj
         IelhUpaLxqNvX9IkeRfi34ldv4x8HYsflwS6d7JVFzPiLLrzxATR3L6RT5J3cZIh1TgQ
         EeBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=39xVp31D6uDT2xxfE3KnpxTXm18D7I1byh8z1MTyIKI=;
        b=juD8C+yZxadswwcH0KbrAYNeKH6KQoma3xJgsApDU3G/GfAbkqUOekHXOuiDyu4w5W
         xzhDXH69KYuJiKJTcfs0R5KfTGYj7xw/RvZNCm4xGXn/QPVy1IlN659FGMqSyFB61yFF
         JIGv/6K1D1E+3X4VBcxeH9X68bTEclPktZ7t7wMnWQxxELcONhUEV/75eEYSgd+zR5Oo
         0fCXGk0a/l1Pn+CchX4kPnAKvXT4MOd43JZxz2BwBpZozNlUt2ECKEaRLux3YQ/JX0Kv
         RvTXhY5w/iEfr3WyRutPiW+yxvb7R3qQ1Dci1MwVhw/qkO98Sf3t75PUIJfQYiwki+73
         l7VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id k65si170736oib.2.2020.06.02.06.11.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jun 2020 06:11:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: 67kcRHXuBIzriOiKYa7ISxUoYOkfuG6/m0CV1IJiuDc1/PXI/YRlLp8QQKo0gD60btXxrrjyhT
 dUs8+0BALPGQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2020 06:11:54 -0700
IronPort-SDR: 74VQTEhE1kpLsq2X1DQZo1ByXRQJFBbnsNY3sTgcwAW2E7Rf90OF3ZYJ65X+FXwVYJioHHKps0
 ML8lDEo1JQKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,464,1583222400"; 
   d="gz'50?scan'50,208,50";a="304226688"
Received: from lkp-server01.sh.intel.com (HELO 886b752aa57b) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 02 Jun 2020 06:11:52 -0700
Received: from kbuild by 886b752aa57b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jg6hr-0000IC-QQ; Tue, 02 Jun 2020 13:11:51 +0000
Date: Tue, 2 Jun 2020 21:11:02 +0800
From: kbuild test robot <lkp@intel.com>
To: "Arnd, Bergmann," <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [arnd-playground:headers-clean-test 22/30]
 include/linux/rcutiny.h:54:13: error: use of undeclared identifier
 'KTIME_MAX'
Message-ID: <202006022155.Y5wS9ME3%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git headers-clean-test
head:   a25b75e508f3199f82d682ff1c5d6968d3286581
commit: 7bad929f95a499324f067b02953a751268f479d3 [22/30] fixup
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 7bad929f95a499324f067b02953a751268f479d3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from arch/x86/kernel/asm-offsets.c:9:
In file included from include/linux/crypto.h:20:
In file included from include/linux/uaccess.h:6:
In file included from include/linux/sched.h:14:
In file included from include/linux/pid.h:5:
In file included from include/linux/rculist.h:11:
In file included from include/linux/rcupdate.h:206:
>> include/linux/rcutiny.h:54:13: error: use of undeclared identifier 'KTIME_MAX'
*nextevt = KTIME_MAX;
^
In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:13:
In file included from include/linux/cgroup.h:17:
include/linux/fs.h:372:28: warning: redefinition of typedef 'isolate_mode_t' is a C11 feature [-Wtypedef-redefinition]
typedef unsigned __bitwise isolate_mode_t;
^
include/linux/mmzone.h:280:28: note: previous definition is here
typedef unsigned __bitwise isolate_mode_t;
^
1 warning and 1 error generated.
make[2]: *** [scripts/Makefile.build:110: arch/x86/kernel/asm-offsets.s] Error 1
make[2]: Target '__build' not remade because of errors.
make[1]: *** [Makefile:1177: prepare0] Error 2
make[1]: Target 'prepare' not remade because of errors.
make: *** [Makefile:185: __sub-make] Error 2

vim +/KTIME_MAX +54 include/linux/rcutiny.h

486e259340fc4c6 Paul E. McKenney 2012-01-06  45  
bcbfdd01dce5556 Paul E. McKenney 2017-04-11  46  #define rcu_note_context_switch(preempt) \
bcbfdd01dce5556 Paul E. McKenney 2017-04-11  47  	do { \
709fdce7545c978 Paul E. McKenney 2018-07-03  48  		rcu_qs(); \
43766c3eadcf603 Paul E. McKenney 2020-03-16  49  		rcu_tasks_qs(current, (preempt)); \
bcbfdd01dce5556 Paul E. McKenney 2017-04-11  50  	} while (0)
a57eb940d130477 Paul E. McKenney 2010-06-29  51  
5f192ab027a5d86 Paul E. McKenney 2017-05-03  52  static inline int rcu_needs_cpu(u64 basemono, u64 *nextevt)
5f192ab027a5d86 Paul E. McKenney 2017-05-03  53  {
5f192ab027a5d86 Paul E. McKenney 2017-05-03 @54  	*nextevt = KTIME_MAX;
5f192ab027a5d86 Paul E. McKenney 2017-05-03  55  	return 0;
5f192ab027a5d86 Paul E. McKenney 2017-05-03  56  }
5f192ab027a5d86 Paul E. McKenney 2017-05-03  57  

:::::: The code at line 54 was first introduced by commit
:::::: 5f192ab027a5d865be24c817005d42eb96314dc2 rcu: Refactor #includes from include/linux/rcupdate.h

:::::: TO: Paul E. McKenney <paulmck@linux.vnet.ibm.com>
:::::: CC: Paul E. McKenney <paulmck@linux.vnet.ibm.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006022155.Y5wS9ME3%25lkp%40intel.com.

--lrZ03NoBR/3+SXJZ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AAA=

--lrZ03NoBR/3+SXJZ--
