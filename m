Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKPZ6TUQKGQEUKFAZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 065B977E37
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 08:11:55 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id e71sf37740536ybh.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 23:11:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564294314; cv=pass;
        d=google.com; s=arc-20160816;
        b=UI2PFcieasmtKhvevGq43Ns6IwEPuBV2NMorhMrQFZXDadCBP9IGSFhvCNh+WqlA5a
         vkce+87tmtS2lCiBhtc3aDhhIdvTuzfmoupodgYbqpH3EaI8a/X+JFxWYBu9y9qIJwnM
         qlIiKHCM1F2hXW1xMrV98GubkK4tYNmLiPMU23dZbA+VO8wWsvMZHhtJ3eFBnI9D06OW
         4kF6h1nCs74e7M0knOEZigo6mDssQQzQ1oFj82X4qlZ0/fmh11wXgcZ2uKjZiM2RPU28
         suIfmOGUkqNJ1dklb3aoK5EB40JiGFgoqNJhBDCs0XQo/LN9taP8ZIApoerLzu6x6Xtn
         llLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ysjZxKv7AlXzxOosJ2dp+8KTsx0hqlh+ZRdfwcFo/XE=;
        b=0uRmre9AmfjUxGLavcdYJBUZjJB0RL8ttY0vxOea2XhC6tvvkFEA5nUiOhaO2iXd+H
         tm4ziTWD12w/UjwNokZj8hOk3dGgGQnk2RHq/PYWd+mud6FEOJttOM88w7Le8DjBB7bl
         zWOd3lbcOgTXew0SUlmX4UYGpuavPSWO6foyzS6gpkGIKKhgAsnfsSrhThYRjXAxdcez
         DpxIOC7plTrvagMiynseXnd5cii5hUbzaKeD+M0NIgCwaU43qXKFGuMvgl+eXOtwuOeA
         UIG+yfKfmkXHTaCVCydURjLbz8s2u8yqenYi/3m9geu0gWmIkPfOYXf1VCU5SXIHRkVj
         Dcgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ysjZxKv7AlXzxOosJ2dp+8KTsx0hqlh+ZRdfwcFo/XE=;
        b=JeViGV3TtZ7wbtPBuuq0Me8Gmmq5aBuCtthrWpZEEUxf312OlpRYgWpcpSbxWSDr9U
         0VSKDYhU7sOoo1LmUfO7gH/a75uuxgewXa55+Y90iUGwbpbwdMXUm7kw1HtlFnUHrlAf
         F8ENdErN3XhSy54TllauzryTRU1kAPFsl8CSshdeuI/+1sqbc5HalAV5DXbU7JS2vT96
         XADleSYDE+oKzBFikuDDg8VQsj03J1YYQQ9Z77SHUvrS3kZn2KH0iVEOq8r4zOICcGyN
         uk+1nBooeX0bhRBP79V2T4/IkenEZk5gqVvONMacUt6oZXKLZbTqJ7xDQ+59TLeccsLL
         B2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ysjZxKv7AlXzxOosJ2dp+8KTsx0hqlh+ZRdfwcFo/XE=;
        b=o/lGdSsTsmx/ftOmbEDpLG3VNNpRRKeuuPMkJz5uAeq7kJjtcdkrLfWuunw3/ZGuIF
         v21aK5iqHzmtDPWWgqAciPoN8qsVCHRI1Wrji20/PeVn0PitbhYr9ZwRnwAAzvm9qE6C
         2GUyPjgb86lwehUPEpA6DhLt7QyNyq5kSRVmsUCfc8A36Si5RYXvxY/VthNaWSiDjlGn
         OsjLG06sCT5tgLmfaV21vz8pqevQTIIeBaP89biBBYq1mQdgvcF0JC/kToPG/xqGPr6g
         P2kbRsYskefCfGCpZeB4bWrL6UuMNCyducW7XsLhiCVJ2JeOTx1LWPfNGBX4DDQypsYM
         UsKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUFKuum1KpDc05X0eTfupCeMjM4VW8Zpcc2/CGdFuuXsVmd/Nhq
	64FzdSIPv11uLFH9pN60MvA=
X-Google-Smtp-Source: APXvYqyU5vlgloh3iENXj5oDcoSF1KcluOG9VPPAuVgr7tqUab28OfVK050IUnUrmpxKNM4TwP462A==
X-Received: by 2002:a25:6346:: with SMTP id x67mr59753048ybb.346.1564294313755;
        Sat, 27 Jul 2019 23:11:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:acb:: with SMTP id a11ls3924695ybr.16.gmail; Sat, 27 Jul
 2019 23:11:53 -0700 (PDT)
X-Received: by 2002:a25:403:: with SMTP id 3mr62619042ybe.113.1564294313430;
        Sat, 27 Jul 2019 23:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564294313; cv=none;
        d=google.com; s=arc-20160816;
        b=VwUcelrAaz+fD0w9UcKcLlQ8bWGyH36zJPGThieI+l6z8hj5G+KpLRXaT7sHh5uI5R
         9FyB3VYwE1k8iLA+/Y+2MUQAAyadhjyDMZ2Vm5SE7mWfz04pYRRdIAwPuzBuKEh1Uwf4
         zm0QKP46Bylxt5RU0HEixkXtksKxoq+PKe+B1SVAj/wk8Kkkt+8eOoBbVHPvvyrw5UTM
         pEy0tRlovU9o7cl4Bpm6p+R4hjcanWph+89txXmxHQlo6ez18QSnR2Qs6wlEWDJWEoRV
         FQJKG46WY3afZqatDeCaMOFdnbLo35vyhagiv4nQpbtwtQJg721w2NP4CE6RC9Lihny3
         I/wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=FxVn1fM/Dp4ae+TmohSZiD0+p3clBhpyDPfVFc//rxY=;
        b=Jd0Uj2LqxZxKcpap1ea6EHA9c0VnMF8SvMdgN1sTtc7yTyMUmqPek+BtwyT9bNd7q7
         Mjw2EsQL5/SwBVzjajQY6aMd8jgYf1xsv+m3wDmOTe5DXGMkL64+hWaPuk9FPCGeZa+r
         A3sRXExG+P+ivThbzM71BoK4eS/XTd0I2kdl3zvUgLq8d9J07RakDpeKg6BUFwEFJpwV
         T6TmaT3+SZZK4nc/IID9I2gMnjXu3WpChUUhh45fRYqTv5qkaljohsY4Ab9CaxMRlQgD
         dL2EztXpLc/QCq1o8fMbedbLcMpti27RdFQnCmxow6EO5or/PwQtOUlV7tzE9Szdd1Y6
         Vcvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id d16si3101106ywg.5.2019.07.27.23.11.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Jul 2019 23:11:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Jul 2019 23:11:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,317,1559545200"; 
   d="gz'50?scan'50,208,50";a="165080420"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 27 Jul 2019 23:11:49 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hrcPN-000ISv-5F; Sun, 28 Jul 2019 14:11:49 +0800
Date: Sun, 28 Jul 2019 14:11:43 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] sched/core: Don't use dying mm as active_mm for kernel
 threads
Message-ID: <201907281424.3zRRwgj1%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fcymj72dtaik57sn"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--fcymj72dtaik57sn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
In-Reply-To: <20190726234541.3771-1-longman@redhat.com>
References: <20190726234541.3771-1-longman@redhat.com>
TO: Waiman Long <longman@redhat.com>
CC: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>, Phil Auld <pauld@redhat.com>, Waiman Long <longman@redhat.com>
CC: linux-kernel@vger.kernel.org, linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>, Phil Auld <pauld@redhat.com>, Waiman Long <longman@redhat.com>

Hi Waiman,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3-rc1 next-20190726]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Waiman-Long/sched-core-Don-t-use-dying-mm-as-active_mm-for-kernel-threads/20190728-101948
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> mm/init-mm.c:40:3: error: field designator 'owner' does not refer to any field in type 'struct mm_struct'
           .owner          = &init_task,
            ^
   1 error generated.

vim +40 mm/init-mm.c

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907281424.3zRRwgj1%25lkp%40intel.com.

--fcymj72dtaik57sn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Q/4DgC49TLhoAAA=

--fcymj72dtaik57sn--
