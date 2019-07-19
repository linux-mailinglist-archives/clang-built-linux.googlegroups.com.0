Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPPBYXUQKGQETNUVBKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 010026E1A8
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 09:26:54 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id e32sf26745583qtc.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 00:26:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563521213; cv=pass;
        d=google.com; s=arc-20160816;
        b=bztHzXEdZMONKu09hSSg0FSnN34T3zNPzbEFZGqt9MCVGYBvKPGHlUDaNPHwATSdke
         WnFnF1jmg/5afESZ79ObA5bynurPkXWVg4qKGYBLjyVV/pSAZtIZpIUVnaCHMFz7jVsB
         IGBphG6pUsYA84nVDnYPYSrSlTrzilKJ9w8ogIwcTVKeXBDKGkfcgHvidMyp7uk1AheM
         p5CmxP8MP0wsvHMHcWdJ5YihjfbyQhAvqTVnBG+y4KWZl71DNMzJhf1Uhii8P2yA1SCh
         wlqFKr5GtN/MrYjOIx6wWrCHodXnD6Sed+VAOeKcAVhDp9lOxQCloFtrgaqkfJyJvTGJ
         A/cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tGBYbcViP1a1uCIu0pWkWmnvqsKTvH9WMVN/0MKWeh0=;
        b=lh0dxcImUjUJEgCayaXW9G4xtNMnwpuD7+Jx6C/SmfCLWcffRlg/xRE2KliPzKsODf
         e1KltFw80gqFVZa+HxquUeMzuvSOKpP2Rf9dNioB9wQ8z21AEI/LCUMHe0KgHD0fmsLV
         ZWuHkJx2k9y8BMI0/jHwwjQho5BtyRRrjsWr1ZTHXJ8isRlAR6OPlAMgFntQDeqtIGzZ
         jSuv5x1owipxhlLjTOi6y2R07koQAndF8awF68tLvRqwvxzSvKvwUhMhAXhxqYYrkXj6
         Q690JpGSqFe0XvFBttqMF8N+le8cJOPfir2az/jHvEtdQfSbNDochrIM1LrXPbgHjyVi
         AfdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tGBYbcViP1a1uCIu0pWkWmnvqsKTvH9WMVN/0MKWeh0=;
        b=cFGMVhZ7yldbji9JRQtqJlOQzhOydz1qfEMZtVbQL9uX8EBuEWsrTXRqgM4YbkxLJl
         CcrIln6XoZN6wSx/+3ZPkV2beTUO4w+i1zfQsUIYpEmqVhvDHQaD0BLBYOZZD0/cDehJ
         bNMUCyXGabcAVt5b3fNWIgC6VQJs5/pBYrj/Z9TJApKNyxyUpFEIFhiKFInOhpbOxB0X
         pZVCAX+3S2JcqdWA8dTVGbG4zzDJJ4ExT8bfW7OsafeFRfOCwF4vND26d+CDT+03S105
         3ZPp73svTQYCR/5GN7zDORkS+luNCkGo2kk/uSFF0xHrjlsffbzdDpNZVmbGcmHIEpFi
         tsQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tGBYbcViP1a1uCIu0pWkWmnvqsKTvH9WMVN/0MKWeh0=;
        b=QiWpldi5Njfy8S84su8Z64xcn5DCzsu2HG0NeU58NySc1NHBon8mnUyowKlUZsyYZp
         jB2sFXNmm1ac7R58I2k3vlygYf63A6B1tswQeeT4yM4WiVynZa6YUnD8gZk3aK9mQKaO
         ByttpQeLNS2YEmB3d6craQ0/yQIcXjaZMxQ8FFXc3o1Iyn815NuXgWeTBk5veHjwQEj/
         E3Us6tw6zWvaHJT8QEoFIpdm/tGtaKjipOHA7IUv99YqHMl7gAYVudASHB99AiQafbjT
         /9e+TqiIzGTWri2NFoyjUitGwGAeaSg22eep4whjzqm4K/waG4kDW8L3bVOAT15GM3yj
         Qxtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPFDn4N7tm4dAFBtMB0c2f2cSrCnJzilUVAtc8q1hTOEpTxgaO
	eW7bOWashrumWLRzVr1MMSA=
X-Google-Smtp-Source: APXvYqxYAlVwCdcj2IRyJhkoCEHsmH3GnKtM4LZxwuhvSFYG4lZ1sxdySFVr69/EUP40bU1oC51Ypw==
X-Received: by 2002:a37:b0c6:: with SMTP id z189mr34084996qke.208.1563521213054;
        Fri, 19 Jul 2019 00:26:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7743:: with SMTP id s64ls3939689qkc.15.gmail; Fri, 19
 Jul 2019 00:26:52 -0700 (PDT)
X-Received: by 2002:a05:620a:1447:: with SMTP id i7mr34612710qkl.254.1563521212817;
        Fri, 19 Jul 2019 00:26:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563521212; cv=none;
        d=google.com; s=arc-20160816;
        b=rqvPCZLRJrpSxIQvjHGAHqXtOIvJ7gSax8Bwgfn5+ALRYpSyf4yodkwcAWfdCm7xzX
         SfF29sZoI3N9BbdjER8DEDyKmHRMpVoAu7T2zyGOox2bF9hYE+8NhVBxU4qIWDc/vaoR
         DmAI3DKTh2Neg2tCmhkvsjt3xOfxaJ/2QLt/IFpdma1fZAs43fs70vYfx2EkW7eQeqvg
         er3t7br4s8PUutrVl9+6bWY0qLI5Ho35Uhrh+uZ8vdP9D/JU7iNQlJnoxhBQ0EcteHm1
         dEulsbfeXE/eDz6EAbSdjP23sA673hf6N6l/5scpVHwLIJxcRBNsw78FMVFMA/kTwZNA
         EDzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=d5e+5fnVdd6zxZ78s6/y4yratkWO29qtFXovqSuVSkg=;
        b=ExzhvBJ1u1y7G8o4iBw1y3nUozJWUWPl367cZX9ICRpDuDh749RRPZiJbiS3ZAX7nn
         R7xf859X7OOhgQzoIPvROGTwvdENRaPh98tQ/N5x9BOtwXh95tHQ1epBLI/K+9MBnS2s
         18qSm4Y8kLLSNssSvvzyT2jYN4zjDlWd01vqP2EcjWtUIrgwpaNpOqjGlsv/dmKtfDcP
         zEXEhSJVz3rv+ou75diyYP21+dAzBPWEPdRp8McKhBHQn/LSazahPAH0JnbtbVJMJFjK
         i0tXu8UsvO3kuBQxK0lYqbEQ30pIUDYask5T7FWYR7jwxH/6jQ3loexv+M3DWaSYxq7g
         MrUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id z145si1255951qka.3.2019.07.19.00.26.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 00:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Jul 2019 00:26:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,281,1559545200"; 
   d="gz'50?scan'50,208,50";a="252080713"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 19 Jul 2019 00:26:49 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hoNI0-000AeH-Un; Fri, 19 Jul 2019 15:26:48 +0800
Date: Fri, 19 Jul 2019 15:26:48 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-pb:lkml/utilclamp_v12 5/12] kernel/sched/sched_tp.c:77:22:
 error: no member named 'cfs_rq' in 'struct sched_entity'
Message-ID: <201907191546.RkiDZHmJ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="auvv4nirqbkk3qya"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--auvv4nirqbkk3qya
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Qais Yousef <qais.yousef@arm.com>
CC: Patrick Bellasi <patrick.bellasi@arm.com>

tree:   git://linux-arm.org/linux-pb.git lkml/utilclamp_v12
head:   21c6b9a7ee769de2dd305727e7fd1a72c27c9bb1
commit: c1c1c88f3db60c64dbd5e4c87e92c2b73cdb577d [5/12] sched: add a module to convert tp into events
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6a6f28f7b72077708df4411acfefd7c0cfccc0fe)
reproduce:
        git checkout c1c1c88f3db60c64dbd5e4c87e92c2b73cdb577d
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/sched/sched_tp.c:77:22: error: no member named 'cfs_rq' in 'struct sched_entity'
                   void *cfs_rq = se->cfs_rq;
                                  ~~  ^
>> kernel/sched/sched_tp.c:91:50: error: no member named 'avg' in 'struct sched_entity'
                   trace_sched_pelt_se(cpu, path, comm, pid, &se->avg);
                                                              ~~  ^
   2 errors generated.

vim +77 kernel/sched/sched_tp.c

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907191546.RkiDZHmJ%25lkp%40intel.com.

--auvv4nirqbkk3qya
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICH1uMV0AAy5jb25maWcAlFxZc9vGk3/Pp0AlVVv2Q2xdlpX/lh6GwICYEJcxAx56QTEk
JHMjkVqSSuxvv90DgBgAPbQ3pzXdc/d0//qAfvvlN4e9HXcvy+NmtXx+/u48ldtyvzyWa+dx
81z+t+MlTpwoh3tCfQDmcLN9+/bx291tcXvjfPpw9eHCmZT7bfnsuLvt4+bpDfpudttffvsF
/vkNGl9eYZj9f5zV83L75PxT7g9Adi4vPsDfzrunzfE/Hz/Cf182+/1u//H5+Z+X4nW/+59y
dXRul7ePV3ePn//6fHXx+fPni7v1483N5eVy9Vg+rj+vLlaPq9Xq4rF8D1O5SeyLcTF23WLK
MymS+P6iaYQ2IQs3ZPH4/vupEX888V5e4F9GB5fFRSjiidHBLQImCyajYpyopCWI7EsxSzKD
dZSL0FMi4gWfKzYKeSGTTLV0FWSceYWI/QT+UygmsbM+sLE+/mfnUB7fXtt9jbJkwuMiiQsZ
pcbUsVAFj6cFy8aw3Eio++srPPZ6yUmUCphdcamczcHZ7o44cMsQwDJ4NqDX1DBxWdic0K+/
tt1MQsFylRCd9RkUkoUKuzbzsSkvJjyLeViMH4SxE5MyAsoVTQofIkZT5g+2HomNcNMSums6
bdRcEHmAxrLO0ecP53sn58k3xPl63Gd5qIogkSpmEb//9d12ty3fG9ckF3IqUpcc280SKYuI
R0m2KJhSzA1IvlzyUIyI+fVRsswNQABAN8BcIBNhI8bwJpzD21+H74dj+WI8Tx7zTLj6yaRZ
MuLtDZgkGSSz7vvykoiJmGorAsEzXMeCHitiKhPzAtYGQquSjObKuOTZlCkU6CjxeHcmP8lc
7tXPVphaRKYskxyZtNiU27Wze+ztvtU4iTuRSQ5jFTOm3MBLjJH0UZosHlPsDBmfvqnNWsqU
hQI68yJkUhXuwg2JY9baadreWo+sx+NTHit5loiKiXkuTHSeLYKLYt6fOckXJbLIU1xyIz5q
8wKGgpKg4KFIoVfiCdd8qHGCFOGFnJRiTaY1oBgHePv6QDLZ5amvc7CaZjFpxnmUKhg+5uZq
mvZpEuaxYtmCnLrmMmmVzUzzj2p5+Ns5wrzOEtZwOC6PB2e5Wu3etsfN9qk9DiXcSQEdCua6
CcxVCedpiqnIVI+Mx04uBwVdS0XLSy9bCvKUfmLZenuZmztyeLEw36IAmrl8+BEsKNw3ZZ1k
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
Ao9UzGgAAA==

--auvv4nirqbkk3qya--
