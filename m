Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEOP5T3QKGQENLRGY5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DED20F3DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 13:52:50 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id k6sf14446628ilg.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 04:52:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593517969; cv=pass;
        d=google.com; s=arc-20160816;
        b=CEZGpbuZyRqYCF8fjdsFNwH9NtrquSVqvhWmseMe4tY2RgSsSZVE5v1eRZJx8nlOeq
         u3Uytr5Ke+R/z8cSTDfVSbxwwLIJzI/M6d8CUogmTX43tWZJh7eWHgQeL5GO6WuNuf1v
         JUoA9sbKIo96UfSc1tf8chTffw0SmB772oPvqjLGLn+faCW5QLGKL+qATBIqQtMn1SDm
         GqvtLgowLYuOMXOlbOWibQn3qx3dcCFMY002fliBDwoOERWufgzeXWcA+ksEsvVwHh/y
         aHZMWcWk2Zv2P3NF5sM/TGAWNdzJD6yqlJiNt7zw3fc9z5RQDiZaw01gGluSFhfVbAeU
         KUBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=0mFzv7lgS5jfN4RAOR2/RjntOZYsYVY/WSKVCRFYxkM=;
        b=MOD8n2PwXnbjTc8ZX7+P1k3nOs2VsHyBi6EuzeCZuvNdb9kR12BXAcP43tg2le7tu9
         qnVetXPn3I0RUq8a6XEt8LSRu5LqOKvBqJOKLwq1MMu7LzG/4DVoujOt/ZgTmKzXMohS
         7s7cCLw345U7cv6sbv3V8hHaSi7zamkWJb2+U7OoIZKby1/z0Ur+BqynbQdDKLEQRWTW
         iu1RWSGuU3m8XBsLiukvC4FEhbFrnbeaYvkyUl8DeVBdQlrygNkjmcU2eg1wg4LMmvwr
         EcVemKGzbQ4BmI0iY+SmqNf3xg6/nEhFrX4nZiJIb6sZXORo1U+IOPGIjSkzuyqSynzn
         dXsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0mFzv7lgS5jfN4RAOR2/RjntOZYsYVY/WSKVCRFYxkM=;
        b=rX1UqpjF4+h0pkdVk+E6oa2Vr/PRst0OXkBBqIChpK5iKS3P0VXjzjlFI4ZhnG+Wf2
         0A6KN4XmiM2ko0OrSFgyPlnCLA2J2do0NYhkL5ePvAl9f1Kn/L5cwTcoM6DsaRKw5HKp
         mEnNvObx24pDBDrqcEgUjgbA0pbRWIQpXQRUkzWCHwdT2iuViVUmx7fVkRcgNyAHRoY6
         p1dLyort8ER5VlRTTviuktaeu6mC75m5+PrygS4NPot9OUD8xpVifdoRQYWFuaCAKTJ4
         XqZM7NgAlg4nsm9HlJIOj8DAWb3xqOWoFHuOE5ijyhHuo1AKe+0LLgced9VaDf7lWPXz
         TC7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0mFzv7lgS5jfN4RAOR2/RjntOZYsYVY/WSKVCRFYxkM=;
        b=bfrJWyTCZicbtApTF6ShpKqdU7qqRTMUhQheDZAvRgT8mCwDj+Y58Lbig4dcoN3xsI
         yGrtiv3wApBfNKA8aj38xS5YYC/Xieh2zB7rzQDaOZ/KYoR5s53VpMsrvhHII409xvQv
         ChdIH4gDkhiWMbMfRzoC0Q+wQGZ8e38PwWMUiVEQGOlA+n6Rikc46yfQh2sQinLP2kfk
         raAzawl4aebql+aXPX5pqieDbTiMDEm6FoYoeovRU4SH9OA3+9taFroV8Rr99ceTVhtP
         hUdLCq2x84vqd/puotZzX1ELvz+4BYv+dKwLpsXyJgS6nbQGgTyb6Lf+ovH6PrIRUu5S
         rj0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TErW3WZUJv62S3UZOhN1KivuVnjffnZFMzc4FaVEzDECZKjsc
	xNijhQPRyQJ1rTmUETzVWaA=
X-Google-Smtp-Source: ABdhPJxXMIHaW+/8gGumwkKa/swDvxqPDhLP4Ra3c/zmET1O9E8K21V5rrC/h8bo2nicBcuAell4qg==
X-Received: by 2002:a6b:c80a:: with SMTP id y10mr21332766iof.67.1593517969249;
        Tue, 30 Jun 2020 04:52:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:14d5:: with SMTP id l21ls422250jak.7.gmail; Tue, 30
 Jun 2020 04:52:48 -0700 (PDT)
X-Received: by 2002:a02:3c08:: with SMTP id m8mr22445331jaa.107.1593517968781;
        Tue, 30 Jun 2020 04:52:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593517968; cv=none;
        d=google.com; s=arc-20160816;
        b=Uv1Y9WaUVD8OM8Hah7/+wCUo1DT60CsGm6D/MAA7YqgHzAYrYOE3O6TWJ06+LRgCtR
         wPOenMjHBH1hQ3Q+nsmmphv54LxKmCAp5/um/KoxBCbaVWabxADnWKViB/FdvRtHM68u
         AC2cp8AyBhGmNLs+YpzmpQr7NMumg7ZrpiV5THhio7ETgTpTZQ6b3go5/WIdCAxPTxlr
         oDtMdn+IdQm5dsJ9FpTd91MfKI3SkMqCFgRHqr+3xmURNCFIovh05DjKOYnxdCsZBMNd
         Ig7nLZgfKcA/aVBJTirjwbjsRNgeJ2OLQEwYcwLvOQ68R3TSV38PJWYT9I4p6ZEosycn
         t47g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=SkGgqw7RB+R2YxT89tXWiXFwPqqhLNsPGwqMjsjV6z4=;
        b=Ky6fzQbr5mnxXVWUqRgBSy1PnrwDHAABoI1fcr3l1YImupd1nGAC4F5wkA2Gepsfsl
         +SXDuSQMgoc0TSDiTjK3tEJa9exU58KSJwWAKwNtKPRD2ECypAA1fB22V3jPP0ixaOmX
         EbhThybVTlaGYpw9cfZsxtYy4AgipiJpBBFSrIXiYwNvIq4tKPiB+ISeTmqBmfx8+8z9
         RkhWxQsV57IBIRcr/RUhSoC5ScYSuvjVMjshW0Mx645Odfrjzsv32LQ2birSFJ15CVqJ
         EEa9dwyYgXuMbLGHeGqw+NtJYlM5syL6oh+GG9nnFcRXht25UdzQZGxYX3GcUVhJP3Dz
         GhMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id q80si214315iod.0.2020.06.30.04.52.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 04:52:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: T67NveYW00Gv4IewHMMFK3Yi9nHalXbsyi2Y5UhcaNrGH6p85kOOdTvhsWNlm61R67UYIaz4+x
 z6FnOHmaMm6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="125845739"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; 
   d="gz'50?scan'50,208,50";a="125845739"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2020 04:52:47 -0700
IronPort-SDR: ECyLKIaw6c7J4lSJMr6KEjb7gXFIeIoXfKg+xmWK7nvDeD8Pr0E5F+UoRkP8bnUDs1oR4KKYgw
 HC1s2wRl3LnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; 
   d="gz'50?scan'50,208,50";a="454583947"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 30 Jun 2020 04:52:45 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jqEoe-0001RC-OA; Tue, 30 Jun 2020 11:52:44 +0000
Date: Tue, 30 Jun 2020 19:52:00 +0800
From: kernel test robot <lkp@intel.com>
To: Su Hui <sh_def@163.com>, akpm@linux-foundation.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org
Subject: Re: [PATCH] mm: remove the redundancy code
Message-ID: <202006301937.jmv74kr8%lkp@intel.com>
References: <20200629173047.GA38128@ubuntu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
In-Reply-To: <20200629173047.GA38128@ubuntu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Su,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on mmotm/master]

url:    https://github.com/0day-ci/linux/commits/Su-Hui/mm-remove-the-redundancy-code/20200630-013137
base:   git://git.cmpxchg.org/linux-mmotm.git master
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cf1d04484344be52ada8178e41d18fd15a9b880c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   ^
   include/linux/mm.h:162:2: note: insert 'break;' to avoid fall-throughinclude/linux/signal.h
   case 72:
   ^
   break; :
   include/linux/mm.h:190164:2: warning: unannotated fall-through between switch labels
   case 64::include/linux/mm.h:164:2: note: insert '__attribute__((fallthrough));' to silence this warning
>> case 64:2: warning: unannotated fall-through between switch labels
   case 1: = 0;
   ^
   include/linux/signal.h:190:2: note: insert '__attribute__((fallthrough));' to silence this warning
   case 1: = 0;
   ^
   __attribute__((fallthrough));
   include/linux/signal.h:190:2: note: insert 'break;' to avoid fall-through
   case 1: = 0;
   ^
   break;
   include/linux/signal.h:203:2: warning: unannotated fall-through between switch labels
   case 1: = -1;
   ^

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006301937.jmv74kr8%25lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
h1fuKnTTRtuMoZrgKz8Bp4Ul1XZpAAA=

--ew6BAiZeqk4r7MaW--
