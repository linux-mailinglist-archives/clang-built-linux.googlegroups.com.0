Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOVORPWAKGQEPLFXNZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A5BB705A
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 03:17:47 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id w22sf1515432ywa.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 18:17:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568855867; cv=pass;
        d=google.com; s=arc-20160816;
        b=bwU5cXqMqMQhNFX2NuwWf3yTy2Herz40ddOskOqEwMt0gHZboqPIBY6okM2YsrZa1S
         4ekihu44Dw89Vw9SzagO5AGUDFd+W/2q7UcomNsAPy9rRq9aqkjkrhsKlq59oj59Um+v
         i/Em8ITBYHTmI5SIZJH76HOBEJrF80Grro7Gbkiz1F5xzgJiz1zErlzphTUfmWboKQkJ
         rOgU8a6giBSGLqBxq2WHoQGF0t+Pygfj/S/JAdMGgGrb0KDHXJEVQlYlaMcvFNTLo+NU
         QjMA8otutKpDM6fOOllXfHt/zfIecolg76VkXYP1t7RAbGa07oShRmBX+fGsCa1neSy4
         qW+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LM9p1IHtuTnN2JlFka3FthSUEyrpLvDMW5QFTEByL9o=;
        b=PZddu/2zjK2d671C1Hkfyn0otM1l+/t7a5ZsD+p8jIOl4lK5rse55h5xopyHBRHGUo
         2DoQmP1BFpJZoptnbfdtBps4aCC9FZV3hMcw30oKdU0UiWQROT3IToFS6MtLN7zdm3r2
         B/lJl4IDEwR3T+M+X4VrfszRrnqsnljisW3b3c7xD8PNzsh5v6P+tKyVmHImq1CPCv0S
         wd067BHcgeefGwNBWp29z1XuVwrkKHLwZLqyimMHpFVX9BG70fsKookMOmocVyyLdPJA
         j4g5Z5Tool3W2Ngde4UsESXIUn4On+E9ENxjJU0q4QHfTxzgvbi2z5D9G+/I0syhpEI3
         tkkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LM9p1IHtuTnN2JlFka3FthSUEyrpLvDMW5QFTEByL9o=;
        b=C2hMRG9Gr5oCk9Rhlc7kbLWD1mhmSOCGcJavgSvmbCyojTa94InNV4Joz5acxQTiTd
         wx308jqt3+M2kSbnkn4ICvMojTdO4D4vHw021PGOOV4yXjc9Fj0HtvVAAhtPrzUpGbem
         MqXDcqb+hQTQhF9Gy2EJuY6vHIm5Mj4+LbJpA4BMeDK6036ugb9iT6ffY/kgITmLgwzM
         SFHOULdfArvH6I8Ns9dvnxw6C+CPkGdo16ZIQ3RBs1Oz0bRPxaFEWidw0/H3OpVeEANZ
         BW/Vnr2Bi/Xe7z2SkOmBa4Hu2efW7HRpmmLTmYuUDE+rqYNFb/nQ8WDm9ZpqG5rliR72
         UU5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LM9p1IHtuTnN2JlFka3FthSUEyrpLvDMW5QFTEByL9o=;
        b=W4oc14JmIm6EC7DJ5tl7bTPlSN88QvotfNxSdh/o7NI2YXbSOr+kndR+fzSjLoScKl
         uV21HE9op0PKsIqOTqPIVw3bdRZLcDCDpfai1c3G955TM8r6mMrSN9NF8pt/5NCI1bo7
         zh1kE0LGjFdG98Ekat/IV39Meaq4GceplZPbLQFFtifCfRrrFGUJeuty2nzlj9e0MLEQ
         ttfLkLGFc/2QVTM4Npc9OyoWYmZAEcGpfV6Q94hhMrRvBcBA+mpwUBIaL+BXbuoaZUiV
         OiLmWdY7+i8WybqwOl5fYNZrLzffuZwMT/XcKGEdkelDYrhkJuCjCBAoYscMAuNNOBuT
         n34A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXkvVqLOeOV6p8okbEWE/GcZmPywSMGcqwKWqS11kjqHRDH7umA
	t3+6PnpBbvSyXe765EzUQJo=
X-Google-Smtp-Source: APXvYqzE9BG3oQFtI0oa5MYKNxr3XrKLh4JZwZxGV6GwtibhwM4+s30X6r0m1VQsXZHusBifCPLauQ==
X-Received: by 2002:a81:103:: with SMTP id 3mr6137715ywb.471.1568855866593;
        Wed, 18 Sep 2019 18:17:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4303:: with SMTP id q3ls319161ywa.1.gmail; Wed, 18 Sep
 2019 18:17:46 -0700 (PDT)
X-Received: by 2002:a81:6dcc:: with SMTP id i195mr6056035ywc.94.1568855866325;
        Wed, 18 Sep 2019 18:17:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568855866; cv=none;
        d=google.com; s=arc-20160816;
        b=H0FcwWkHpjvIHVP3U6wzjCjDtAi6bYe5tzFi49vFDPVldfW3HMhuj1ii/FI5bpp2/E
         As6WUd4bxffHwG9lFS9TwP8oySVpy5211TOqFVceiWyfXowH+qCKKmzwN7qy57TJjiWe
         EbNkn/3SkQiossyqL9MPxPIh5XtrOrQ6j/czFqGtT9PSureBH6gKJ/8/pOBgQcrgvqOS
         urcjd26uK6Zy+cvVK0iHDN5SGSiGqAkjA6ddxt66InjHoCVywsRfpvXDHn6HwSJMeLUR
         WIoJ9Vztqkz/2rtAsRX6n6rJXHzYXvbDWXe3SMc59/IK1hHa7l7CoC/j45ji2bub6/Jc
         Y22g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=D4tY6MI/fRfNtG5QRLnsAtAq+Yupkg95LBW1wSyWQUM=;
        b=yCbqQvt8s99Y/tmeKnBQzwrpVv11tblkhEvH939DXiIpJnJpYxHtM5z2RIuwIMB8B+
         LIiwbSBezHemljc21masH1EsvEHRKTOeFwv3CqcQatmJuo7QVQGcZGABHm36sws9y7cn
         +HtKa05gZIEnHnIGruHOETG9h98JrlT0Ab6aywc6+8X4AAB1AVYvqVr6j9/6X54T4fPO
         ccMOPgwO9yxzqcSshCiL08h6uHfxpCkvO5x1Wq37TFiPSDP5jZ6EarDCunKygjENy3oT
         h9AkQCT6mWoVs/7DaSfTfWbSy/h+jL2ufe5fsgU2daTnURL/nu+eSYg2mNmeEBm2eJIP
         mR+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id j82si138086ybj.1.2019.09.18.18.17.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2019 18:17:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Sep 2019 18:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; 
   d="gz'50?scan'50,208,50";a="387097721"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 18 Sep 2019 18:17:42 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iAl4o-000EKO-GR; Thu, 19 Sep 2019 09:17:42 +0800
Date: Thu, 19 Sep 2019 09:16:51 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH RFC v4 1/1] random: WARN on large getrandom() waits and
 introduce getrandom2()
Message-ID: <201909190934.4kEy2ULz%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="z6dkbmwmw6lyezzc"
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


--z6dkbmwmw6lyezzc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
In-Reply-To: <20190918211713.GA2225@darwi-home-pc>
References: <20190918211713.GA2225@darwi-home-pc>
TO: "Ahmed S. Darwish" <darwish.07@gmail.com>

Hi "Ahmed,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on linus/master]
[cannot apply to v5.3 next-20190918]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Ahmed-S-Darwish/random-WARN-on-large-getrandom-waits-and-introduce-getrandom2/20190919-051815
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/char/random.o: warning: objtool: __x64_sys_getrandom2() falls through to next function get_random_u64()

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909190934.4kEy2ULz%25lkp%40intel.com.

--z6dkbmwmw6lyezzc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
k/8AZBiylaJoAAA=

--z6dkbmwmw6lyezzc--
