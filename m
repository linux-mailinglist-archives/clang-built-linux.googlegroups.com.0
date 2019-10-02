Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGHQ2PWAKGQE4PLUD4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCC4C922D
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 21:18:50 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id 99sf164421plc.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 12:18:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570043928; cv=pass;
        d=google.com; s=arc-20160816;
        b=E97Hz2uo5+Wme1JAmtb6bWUN72X7atYZI+a9tBSqKVv1CFQePdLlqRGhbw6rQwQtdj
         aJota3Rr8tP8wKmlGokCxNRTJP0QaHsUWgMHcITjBuFyKdpTinGxsOuF15hV11NTBK+A
         /ghLPK+ho0DrUilTKUqSCVsKmNqBc/NPQcdO692BW/Za/+Dz25bzK4jXyYnbAc6Foxu+
         hPiNTd6JjMABLvwFtLuU7o+1R2FrKmmgtx5aIluwI3Z8Bfibb4hqemr9sWIog0qrwgOI
         GWV7BOAbZMC7f94JUyC7nGF4H+d/2GyfEzRdhbnkSaWPYKNuEQChJ/FnZMxQN/g5l9T/
         uW6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6ggfOpU8VYEClspcDz+N36VUBQpiKnJk5geOcLTg0QM=;
        b=INkIYIDLSDKdcYJL1k87Ut++C50iRGbZVyupIXtuuqx/42+fDoy6yP/UK7sex9yfkF
         RcNuMzDTchsdIeZAYgbW2LSt0JARihDg+9cI5DKfX5rojxdspRdV9+6F6Ql3rbyeog1K
         QB2fYehdWLln9BA9T6Ftbmu8EccL/gG9Jafl30iNB0+g0KebKXoypXaTAwW8jmdpry+2
         jXhQNCAFDFYCcHqN72f349HVkLdpCeGCGoKWErLydlICh/+TviYk5D9TtQJ9GGnwUmyf
         ALW0EX2g0vs8qo8xisYBZLAeZbt0ikTjYDguSsfIvwfb3pGdeBTlE3/I1TGjuycm+P+q
         aj9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6ggfOpU8VYEClspcDz+N36VUBQpiKnJk5geOcLTg0QM=;
        b=cIUlJKUxqxdxxSQVqmoWeP7N9271dZ7VF2o56Cb/lo8KHfeJTkBw2FoR8Z5tEdLxi1
         0Tr5zTOlhI22BvC2iVu20K64wzAyjSUTfb2dgH3DSkoCXTAhSLaedB29YGuZze5xpGrE
         cC7r4/1yJoqgb+IV+JoO6yzkHpgTL2n51iWlLoajvz4GEatCf1ilO9RrssOuKyty8SMI
         18fmJf5qpggBc/O/iSYZtqlY42IixXVKPeImKDzcmj47owB4Xl9qMWpT10eiDcFX49hx
         tI8BbsC7Jypk+9p/j+KYZtpJeyJHQH9csZzwRNlkZtRxpzQaLAzR+0k+B1rGVEtIWm2o
         TPdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6ggfOpU8VYEClspcDz+N36VUBQpiKnJk5geOcLTg0QM=;
        b=LkxchCR+79bV624RLXADE/5SaDASHFOkQ1FYyWCGjld9bA9OkzBlQkDutnYdsAzfdy
         giVTWEkHdCo1qZcAOhls0Z04txV2ZSzEzxMfkAKAbS/fe+66uMLRmgz2pgl1v0dJBDOA
         41OTRw3RlrRO4CI18GiS5XTXRiNk1wQd/zoo/PahWrlP4foft6+jV/l9IuxYcsUQYdOs
         OUo7EbIMZKtxhMZ97ruIkPODGLUlgpWGMJ4QA9bzGC9RDH8bKOV2uJBeH5vR7IwiGuU6
         UH0ClKRUVDuvCO1QHGphrjmf1u+sbl02dXwCMGyuzlsvYJGC3kj4HfgDqSftmJckkttr
         2Chw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWmpuRUvgVXijf7OGKrqVCuWJcsbA7jComsXUOjz3FRViIz3axR
	UqvZZGAhkTBSlb6Wrbp2TeA=
X-Google-Smtp-Source: APXvYqxF7rOir6ZeiRO+lrTaf7TDWXwkCOkINCbYTLV02ysxbI9fzRGpfFM805+2VYxYqPYEG9p5oQ==
X-Received: by 2002:a62:61c5:: with SMTP id v188mr6644183pfb.194.1570043928748;
        Wed, 02 Oct 2019 12:18:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8bca:: with SMTP id r10ls862361plo.13.gmail; Wed, 02
 Oct 2019 12:18:48 -0700 (PDT)
X-Received: by 2002:a17:90a:266c:: with SMTP id l99mr6099237pje.93.1570043928413;
        Wed, 02 Oct 2019 12:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570043928; cv=none;
        d=google.com; s=arc-20160816;
        b=Kvvxb+EpR75U0pd8f3jUexJ/zRXIv/4TZsMjn7BcOOUZD1cyAWqBc71oQUPqQpR9ws
         Xed6ctB+nH81a8jPpaOGiXHmJT7S+yAMr5fpnlPDuk8NidfEWCHB5VE2/2WriqIF+rIz
         RwEMbe7Bfx7aZv/Z+bFnIEfRvrgpg4uq65wR/2L2hxLXaCLym4aKwaEBI3M9lMTYDbKg
         5BBu4au/pmlMjxUf+hFYFaRveDi97KLfn/jCrioOYeWUDxZ2EKvg8nZU7Qt89CGDsgZR
         6v66Vh9oEgtlx0jVT5IB8rgp0bvUt9dJnnv9NrjnqJvnDvksPamfUvw9qkwBthKl0QyM
         aAsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=aD5rcHCDQSOjb1aIYDoBdJ+wKEx6wPx7g8RXYCdRDPE=;
        b=YldjsOYJsSe8seK+geS2tVW7j8OzKx/2RG6u/RD/2upJs8hqltziIN4MijGKZbBvpR
         kc1upg75EuGTHMoLZBYIVTGafwDMBwfXksZwno2neTnqeLoRQJvvIRYja6/E2EXlE+PE
         b4tL4VHkC8Zw5jpKbO9L9RifwBalt2JTD7iSzQq2jiy9weCCQi5L1gnsjTEHD93PRkte
         z7USJ5zM0/iwjCyhYu5u9ny1ZND8SUAtMONWj1NykfjhVETF3OqmeOAf8G5IO5msEUuY
         xsrkoii53J30piCUcIz7ZS1J/c/K/DmksY7S6OidTijMUpDiYPJuWw0UD6lQ/K6cBLHm
         D7jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id t17si19694pgk.0.2019.10.02.12.18.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 12:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Oct 2019 12:18:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; 
   d="gz'50?scan'50,208,50";a="205409396"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 02 Oct 2019 12:18:46 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iFk98-0005gY-4A; Thu, 03 Oct 2019 03:18:46 +0800
Date: Thu, 3 Oct 2019 03:17:56 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [bigeasy-staging:preemption 2/36] arch/arm64/kernel/traps.c:146:7:
 warning: 'CONFIG_PREEMPT_RT' is not defined, evaluates to 0
Message-ID: <201910030352.dmP5iotj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="whlqeyrhwtwgypna"
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


--whlqeyrhwtwgypna
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Thomas Gleixner <tglx@linutronix.de>
CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/bigeasy/staging.git preemption
head:   94ad72514bd0c0c9c31dee81fb6339daf06e508f
commit: e650d59c300fd88df0edb4b52120c75c28e205db [2/36] arm64: Use CONFIG_PREEMPTION
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project a77c3ef03c821d448296ba2abb658288800494ac)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout e650d59c300fd88df0edb4b52120c75c28e205db
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/arm64/kernel/traps.c:146:7: warning: 'CONFIG_PREEMPT_RT' is not defined, evaluates to 0 [-Wundef]
   #elif CONFIG_PREEMPT_RT
         ^
   1 warning generated.

vim +/CONFIG_PREEMPT_RT +146 arch/arm64/kernel/traps.c

   143	
   144	#ifdef CONFIG_PREEMPT
   145	#define S_PREEMPT " PREEMPT"
 > 146	#elif CONFIG_PREEMPT_RT
   147	#define S_PREEMPT " PREEMPT_RT"
   148	#else
   149	#define S_PREEMPT ""
   150	#endif
   151	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910030352.dmP5iotj%25lkp%40intel.com.

--whlqeyrhwtwgypna
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
yWZzq7h1AAA=

--whlqeyrhwtwgypna--
