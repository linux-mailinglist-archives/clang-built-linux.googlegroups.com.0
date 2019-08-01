Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUEARHVAKGQEELZKZUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BD37D2D8
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 03:28:49 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id o16sf63186869qtj.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 18:28:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564622928; cv=pass;
        d=google.com; s=arc-20160816;
        b=PN+vGsAPBO06UaZ9oKO9MLmzS5LRzI4U5nFSwZ2gFzOZPVPrYcm1wGgLxKCZqRsBXj
         Y4yo58/E9KnCrvrwTcLFJoo6NWc491DkTdSZLMw6GXN7oDpffs41vufAC5fz9mCz10Xo
         0UkAjY68ZWvhIxtrdudCgkF/l+zmaovEmFsRTmBVAtEEYVfEjnkuQijTPQEoGq/77Oig
         V6GDjVNoyvI53IddZDQUxBf/6u7CKGpz/JhJRTIC0Xf4Ex+94oaMqRCyDFaiPvYwRJBX
         uQkLsiPFXPl6O19AQb7iDZt819SJmjiFgt10+otNELR1FXD4cGega9xNrrV406fTh7rV
         bdMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iHK8eiAUGin1SxeinDy+27uQRrsE4YUEbItoBVwLrIY=;
        b=oPQAuh3ybn3DeQRQpVNazHpXDsEkE672xd4q1rn9Lbrj+E2brOVbpl9qE6c7nfUTUO
         hkI2bmgJNde6r3TYooReQ+hgsvW5WzPbWeGofY2GqLnIuc0+eBZ4b+qGWZyX5zZKFZs3
         p0OYYz+JPuusXTscJZwNwNzYVYnhc0SmsGTYbUni1HVnrsT0NKBaVrZZCGf2gXDM/Pau
         QPIq5plCL05J9xFnlwUPphF3lKfWJB98zT7zaXRuqbZLKsFSHRU0nipcIImPu5gGWhh+
         imB9dX//98DJAC7I8TrsHiWz/O5lVwOtxGk+OQ5Dce86ZD3S1f/p8xS//YqEySFqSi6U
         AG+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iHK8eiAUGin1SxeinDy+27uQRrsE4YUEbItoBVwLrIY=;
        b=GSigAdQqyLebM708mrTToqE0BnqiuSwKc3Ynp45Qnooj5+WFqQFSgGzh6pr9F4qCsW
         YRB5TDbVYVWt15WDeCppmP9E5J0AzOCfcPbFHoo3G6q+QkfL7JOxMxmxcHZ8EEVOhEAQ
         H2LOctPD69N68kODuDdBaRgoLdZCL0grxVBEjw5IWdPSARyNuyBRDoJ7ZW6bLP3C7tvN
         REl641dPbxguhdfDYeJO+l11EV37XTfJe2IGFDSNbCLNGQq7kavAdwVkVjgUDEKwb2Rp
         5AYCfURkr7oCS8fV/h1kOd4newkHjGdEpj1cjPEmSKcxvLRNisH4NKbtkIKdRWCuLf41
         esdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iHK8eiAUGin1SxeinDy+27uQRrsE4YUEbItoBVwLrIY=;
        b=qL6wyyFqu5avAXweU2ViHB+cuiu+E41+zgbX4nILAtmo3OnvtGUr57hvxbiK65YDUd
         LIwa5iKYZ5H/sVsgYLvW4+SZilCNqvS1cq2Jusla5WCmJ/mKXAqMbbmSqtsWH1M2fn3w
         UVOL8LeKDhcASolOYW784BfyboQQN1c/vbjmzjCma1hAuWs2N4jZ8gUX4mvtlbepPt7I
         6k/3reUdUzKSnOtpJBO6OM2YlQFkHAFKtm4sxoBkiR39HX5BlRc9STzkb2PcllEL2Pnu
         zO6o5HH+9HNhVG6X2TJX/x+NmEYQttxIwOAjE562TmW1uNOB7o8XyREGsoSr2AileHDP
         VkeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqUTUsT37CfX4t8gEotKREkInNx9w99r+2ycdbbfqTWHHZF5bK
	+0DCb1L8h+gGDrp6p5H6t8I=
X-Google-Smtp-Source: APXvYqxXIhAmePZdkmpRcCt2jx8x5bVI7z7BqQgvKW8Yjr4l/NCm8lQtrXv45MvQh21Xh9RbjJntCg==
X-Received: by 2002:a05:620a:1661:: with SMTP id d1mr84369982qko.192.1564622928131;
        Wed, 31 Jul 2019 18:28:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9aec:: with SMTP id k44ls11251582qvf.2.gmail; Wed, 31
 Jul 2019 18:28:47 -0700 (PDT)
X-Received: by 2002:a0c:9230:: with SMTP id a45mr87878938qva.188.1564622927873;
        Wed, 31 Jul 2019 18:28:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564622927; cv=none;
        d=google.com; s=arc-20160816;
        b=ms3NtZQ2aE+YpwXTnbLWs/ZjizC9nA+zzIVc3SyTIMepVlycvtEzo3dpo4DfgXibg6
         cy2RLy3nCurFiXPSRVjacagdP/pxaxof9zfDtiaGv0g/lAp6L22UJW8y7uBhKP3TgP7/
         eM1+nXkVpC0h3h5iMuzElKAA0yhZ1AGYyXtvI81hDMTcy8wedYx9w2fA4zYYbyFZiFMd
         lrVwMp56e8oXGfg5I9ANpi636JsppyTKALaySza6MlBFqyoaM60eJdWTb28ZuhvypMp2
         fYhMcZh78+rtAGvwlLCS6uBhRuDSRkWgFwuQI56Ub4M6/QhXxfsCNLFCHvI84PNELhY+
         y2Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=c3zbt8jiv9OEsmrapvTWvNhqNwzKpJOLA7fQygyqApg=;
        b=ryrRGU4c5Z0RLbO804RQUy8YUAHn7uFoaBjOVeidfxYsDCZ9RA98WsAO0h8jvk+zZ6
         sGg3Oq3U17YQRHHG+b+ZglpMqllWJSUVNOlrsoDHUM7SxKQWOeY4gT+ORLf0HdR7jElt
         8F4VCrp0DGTxaZTl8a4NsjeHWKhOGMFa6hMnE93cE/RbLPjDim3AQbxE3n3Y+nS1Gq0I
         Y6xPAfo2v40VFfstDczg1igu4rTS7R/fvJY7QJqgUiAFmrlfMdg52b6EcdhQs5UuWzWd
         MwlukY713X/hjIChmZF3WPO0jJtQls8Aa0A+3mhEh7ZnJnOope/7ah48uS8GsKVpADTH
         u7TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id 34si3307096qtz.2.2019.07.31.18.28.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 18:28:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Jul 2019 18:28:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,332,1559545200"; 
   d="gz'50?scan'50,208,50";a="191451490"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2019 18:28:44 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hsztc-0001bK-GK; Thu, 01 Aug 2019 09:28:44 +0800
Date: Thu, 1 Aug 2019 09:27:54 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: arch/powerpc/include/asm/cache.h:88:43: error: constraint 'Z'
 expects an integer constant expression
Message-ID: <201908010929.DMXaoTjD%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3qtev63rc3tjpysk"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--3qtev63rc3tjpysk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: linux-kernel@vger.kernel.org
TO: Christophe Leroy <christophe.leroy@c-s.fr>
CC: Michael Ellerman <mpe@ellerman.id.au>

Hi Christophe,

FYI, the error/warning still remains.

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   5c6207539aea8b22490f9569db5aa72ddfd0d486
commit: 6c5875843b87c3adea2beade9d1b8b3d4523900a powerpc: slightly improve cache helpers
date:   4 weeks ago
config: powerpc-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 6c5875843b87c3adea2beade9d1b8b3d4523900a
        # save the attached .config to linux build tree
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/bounds.c:10:
   In file included from include/linux/page-flags.h:10:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:128:
   In file included from include/asm-generic/bug.h:18:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:247:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
   include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
   #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
    ^
   In file included from kernel/bounds.c:10:
   In file included from include/linux/page-flags.h:10:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:128:
   In file included from include/asm-generic/bug.h:18:
   In file included from include/linux/kernel.h:15:
   In file included from include/linux/printk.h:9:
   In file included from include/linux/cache.h:6:
>> arch/powerpc/include/asm/cache.h:88:43: error: constraint 'Z' expects an integer constant expression
           __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
                                                    ^~~~~~~~~~~
   arch/powerpc/include/asm/cache.h:93:43: error: constraint 'Z' expects an integer constant expression
           __asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "memory");
                                                    ^~~~~~~~~~~
   arch/powerpc/include/asm/cache.h:98:43: error: constraint 'Z' expects an integer constant expression
           __asm__ __volatile__ ("dcbf %y0" : : "Z"(*(u8 *)addr) : "memory");
                                                    ^~~~~~~~~~~
   arch/powerpc/include/asm/cache.h:103:44: error: constraint 'Z' expects an integer constant expression
           __asm__ __volatile__ ("dcbst %y0" : : "Z"(*(u8 *)addr) : "memory");
                                                     ^~~~~~~~~~~
   1 warning and 4 errors generated.
   make[2]: *** [kernel/bounds.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [sub-make] Error 2
   15 real  4 user  9 sys  96.37% cpu 	make prepare

vim +/Z +88 arch/powerpc/include/asm/cache.h

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908010929.DMXaoTjD%25lkp%40intel.com.

--3qtev63rc3tjpysk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--3qtev63rc3tjpysk--
