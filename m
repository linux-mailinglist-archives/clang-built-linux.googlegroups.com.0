Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB446Y3WQKGQEE32QSNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA7CE3149
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 13:48:04 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id o130sf7495821ywo.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 04:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571917683; cv=pass;
        d=google.com; s=arc-20160816;
        b=meXfJ/VcDn746tDkpBov0Fuyx4St+vRH5ECQ9185YCVlLYbV27dCg9J1XI+lzYUwKb
         dwnToyPtxvHBCwcB9di1ecC02KQaLD6QFjbL60iwedOsgHvD8U1NyCnvr/IYPkcjarNI
         sKuEXwP2YJOut1y3ES1RGr8/4YpOMEgKcOuKEs3R0e8Kvrib7SIdqY4ANhcx9ZDr2FXr
         xxEmhTuHycoQDafdd8sCjBX7iW34s2UuJkAdZG5e0XvN1VaNz101TuBxmGrM90maKBkg
         a0/4GCof+MBzswU6V+aZ4qyt8p6vgn8DbeCN9rWPX3ky7GSA3Pxq3JfgdFcdukMR4jWv
         uiAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=bzQ/Pr4NevVfSVRhx/0E0SLMEh4Mq52IrZaTCI5Kc2M=;
        b=QdZe6e0t8sdIzwXyQfBXBACuhr3B0RLe8knFl0d6hI2CCcwWbLF0ufRD84WqtHeyuE
         XMvrj2fV2Zv+W4HYpoqjh6hlbcTagVWV3uEK4SQ904qeragJHzzmO/+6l42RVBNaCpvD
         RmQY5rD3ZWyLqYfHnsKTCFPCIS5a8ovAPgNMH1LJXA3TpMt/u0Mqpz0XRjpyCLDMZ2xP
         Znxo6jp62yU3dJ/afxO6HAz3Ezk3vSzYhJaH201fy9VRD7Jc0N0qLTKQk/KYBHXOH6z1
         7FBMsBocCbBHaxsJ0bdzvNYIEYiKWE9j0AexgakSqGYC1Sax8fkGyjQgn1cG7H9N1OGm
         Ebhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bzQ/Pr4NevVfSVRhx/0E0SLMEh4Mq52IrZaTCI5Kc2M=;
        b=U/T2m/YlnWG/YxefG66RqguSZ5hZYe/yHUOSnulpTp0mMtWbS0GukRCymA9XuhY0aV
         RR8vZYrgYmREBHPA9hAf4jVsdrq8rWrlmU9IJ6FcHOby10TbOH1sCISMK/Tu4tu0ytYv
         7bOzY4xd/Iy/HPRDI4w7wAe+THnUFqipWEJJzYFbYiVbrV1AAz7frGB+cy+1WG0kt3wt
         jLfCIGQOW8hST/fBUfPQbbZYoiBVcA5FKVDcoKi6MbHdytn8Je7dvQ2u6D4uucDLJ/ic
         0HTHHyCsghpF0KAqNwsIJTPTjoSzfAxkm3RxEaiJqWshr78sKm4cnz0FpiPeK819rLNe
         XLlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bzQ/Pr4NevVfSVRhx/0E0SLMEh4Mq52IrZaTCI5Kc2M=;
        b=Gf+QerX91ep86XfSqyjj5m1/AIQ6xXAB1hCagtUVHx0fpzHtN24IVLQowY18HRpZ1Z
         W1xKgORF6F4Dbl7hu8Hl7vTW1p98jmjouq9Y4/YJF2HFDCyClFMvzoEKhNyBy1uF2POi
         Rz0uxIddFPHmMYlwbYmnuHTDVUY07elayN/WwrAoSbgPNbfzUDcD6en9DRb7XkkWnXHm
         WYvxWVQNdkxJxJ+5a5HMzwpTP5EU4Su8zffUpJv5hEQhy1xnUdr7RRU0vQC3DTA/sgvb
         wUT102BnO+n6agT/3oQ/QNlWO/1JDw8usS0+NftMENRWpvfJVK4foM77dWxlw2lAGI9T
         eQTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVoo+5BnZG+lFBGGb7+L25YnxdvI97JKqQMVbi69018uNomZzyr
	f/BVIiLynfd+JcJ5XRlG15o=
X-Google-Smtp-Source: APXvYqy3wTiCpVg+yfzdRO2EgWXCvvOelLvtsog1I2BDQulTqUMIgS2/OTS/tb2ftaOJ8SAffjL8bQ==
X-Received: by 2002:a25:42c9:: with SMTP id p192mr2229406yba.155.1571917683424;
        Thu, 24 Oct 2019 04:48:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d3cd:: with SMTP id e196ls883447ybf.12.gmail; Thu, 24
 Oct 2019 04:48:03 -0700 (PDT)
X-Received: by 2002:a25:d70b:: with SMTP id o11mr9848298ybg.294.1571917682933;
        Thu, 24 Oct 2019 04:48:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571917682; cv=none;
        d=google.com; s=arc-20160816;
        b=Znb01/TV4HE+V1P5FYuslUxM1Qmgl4IqIphI4y2ax1Q6CQgTYs4D5H0V7q59EfXkMA
         lh8OaC0653qfYWL1k/n3OiL8bmjBEw1g376jqdFbsSlIB4tzeT2lHzetZX7EbH2LaZWr
         4Pf1KOSI6Cs/lhZpAbbKFv9M1wKfofY3ot5YjQKr+gkrYmLB2vofFZYiS0yNkDdGIpPI
         8Al0V+VKdY2WlCB7196u1BLDUh8tissZH3Jxb1dru8HLrR44kRR59W3WAGnXiM4ZgIik
         bGoe/fQtroylG4sD9amEGDuO1wNOJnKXzW+9ttJdq/M8lsOv42Mt6OJE7uM8pN7RTEVb
         1I6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=K2Gaf1PcPMjCthcUb6dDKSXBiyCUoNX9PeEa2fUFIVI=;
        b=KBepN0+GJK6qsI6ZN5b4P+ZjexzPUCenZ+nqEPuOZhQ9AxhDUMZ/9ZUsOxA4Enj4da
         gQxCY33CWB687/Y+jkqCUScneMdSNiNwptEAdX1SVpTTDeVX4dmQNFZdVZh7PENaPbS9
         Pa/nTERc6Nb+73AihPtMQrJZGCrotq+/TlYUFyAq+MuJOWInUo17vLkGNH9RYeqkdwL5
         K5S2xrcJJvdW7y0QzeutR+FOmwxyyeN6US10gu8nSlYIAcG+MP8RMdpKpLekU4j+deyg
         sh25BHXYIMGKgkOQW2JUaGeZTVLSisOOd0N9N5b4kNri8BguytaxQFrVs1y1bjIjPA8j
         b+qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id u129si1105303ywc.1.2019.10.24.04.48.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 04:48:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Oct 2019 04:48:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; 
   d="gz'50?scan'50,208,50";a="281913514"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 24 Oct 2019 04:48:00 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iNbax-0002Vv-Sy; Thu, 24 Oct 2019 19:47:59 +0800
Date: Thu, 24 Oct 2019 19:47:32 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm: Fix a huge pud insertion race during faulting
Message-ID: <201910241949.mSu5ypIi%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="efk3zgd664c3dtra"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--efk3zgd664c3dtra
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
In-Reply-To: <20191022123003.37089-1-thomas_os@shipmail.org>
References: <20191022123003.37089-1-thomas_os@shipmail.org>
TO: "Thomas Hellstr=C3=B6m (VMware)" <thomas_os@shipmail.org>
CC: linux-kernel@vger.kernel.org, linux-mm@kvack.org, Thomas Hellstrom <the=
llstrom@vmware.com>, Matthew Wilcox <willy@infradead.org>, Thomas Hellstrom=
 <thellstrom@vmware.com>, Matthew Wilcox <willy@infradead.org>
CC: Thomas Hellstrom <thellstrom@vmware.com>, Matthew Wilcox <willy@infrade=
ad.org>

Hi "Thomas,

I love your patch! Yet something to improve:

[auto build test ERROR on mmotm/master]

url:    https://github.com/0day-ci/linux/commits/Thomas-Hellstr-m-VMware/mm=
-Fix-a-huge-pud-insertion-race-during-faulting/20191024-175905
base:   git://git.cmpxchg.org/linux-mmotm.git master
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project bf869683c3f268=
27853e3c34d3c4a337069928fe)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/x86/kernel/asm-offsets.c:13:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:20:
   In file included from include/linux/mm.h:99:
   In file included from arch/x86/include/asm/pgtable.h:1466:
>> include/asm-generic/pgtable.h:920:52: error: implicit declaration of fun=
ction 'pud_devmap' [-Werror,-Wimplicit-function-declaration]
           if (pud_none(pudval) || pud_trans_huge(pudval) || pud_devmap(pud=
val))
                                                             ^
   In file included from arch/x86/kernel/asm-offsets.c:13:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:20:
   include/linux/mm.h:162:2: warning: unannotated fall-through between swit=
ch labels [-Wimplicit-fallthrough]
           case 72:
           ^
   include/linux/mm.h:162:2: note: insert '__attribute__((fallthrough));' t=
o silence this warning
           case 72:
           ^
           __attribute__((fallthrough));=20
   include/linux/mm.h:162:2: note: insert 'break;' to avoid fall-through
           case 72:
           ^
           break;=20
   include/linux/mm.h:164:2: warning: unannotated fall-through between swit=
ch labels [-Wimplicit-fallthrough]
           case 64:
           ^
   include/linux/mm.h:164:2: note: insert '__attribute__((fallthrough));' t=
o silence this warning
           case 64:
           ^
           __attribute__((fallthrough));=20
   include/linux/mm.h:164:2: note: insert 'break;' to avoid fall-through
           case 64:
           ^
           break;=20
   include/linux/mm.h:166:2: warning: unannotated fall-through between swit=
ch labels [-Wimplicit-fallthrough]
           case 56:
           ^
   include/linux/mm.h:166:2: note: insert '__attribute__((fallthrough));' t=
o silence this warning
           case 56:
           ^
           __attribute__((fallthrough));=20
   include/linux/mm.h:166:2: note: insert 'break;' to avoid fall-through
           case 56:
           ^
           break;=20
>> include/linux/mm.h:572:19: error: static declaration of 'pud_devmap' fol=
lows non-static declaration
   static inline int pud_devmap(pud_t pud)
                     ^
   include/asm-generic/pgtable.h:920:52: note: previous implicit declaratio=
n is here
           if (pud_none(pudval) || pud_trans_huge(pudval) || pud_devmap(pud=
val))
                                                             ^
   3 warnings and 2 errors generated.
   make[2]: *** [arch/x86/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [sub-make] Error 2
   9 real  7 user  6 sys  143.24% cpu 	make prepare

vim +/pud_devmap +920 include/asm-generic/pgtable.h

   914=09
   915	/* See pmd_none_or_trans_huge_or_clear_bad for discussion. */
   916	static inline int pud_none_or_trans_huge_or_dev_or_clear_bad(pud_t *=
pud)
   917	{
   918		pud_t pudval =3D READ_ONCE(*pud);
   919=09
 > 920		if (pud_none(pudval) || pud_trans_huge(pudval) || pud_devmap(pudval=
))
   921			return 1;
   922		if (unlikely(pud_bad(pudval))) {
   923			pud_clear_bad(pud);
   924			return 1;
   925		}
   926		return 0;
   927	}
   928=09

---
0-DAY kernel test infrastructure                Open Source Technology Cent=
er
https://lists.01.org/pipermail/kbuild-all                   Intel Corporati=
on

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201910241949.mSu5ypIi%25lkp%40intel.com.

--efk3zgd664c3dtra
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
G20zhmqCr/wEScxgwoxpAAA=

--efk3zgd664c3dtra--
