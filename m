Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEE4XWDQMGQETR2CTIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3873C927F
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 22:50:25 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id k63-20020a37a1420000b02903b4fb67f606sf2184727qke.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 13:50:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626295824; cv=pass;
        d=google.com; s=arc-20160816;
        b=TeQPBZZV56oL0Z4SJ9xN2sne5rsm6Hv3nbfV2+e2tOPOhdGGnFxj4+O/VXt03bNxBC
         s0sium9Dor8wpS3GTGT002elUCa3l0eXJs4ZdNjJR6SuGhmO6ZSJNZggMMJgNWLznmpI
         2x0a2V+NuavpXMp+W955/GigTk3/lRVh3hLFANG2WxMemKgpCt969R2uw5/aTaBTCySC
         OAJABWWY5hdlSy/rGr2QmKmS9BKOkas4MAGT+wszPw0AfS6GhMEzOAyS83IEodHDiGKk
         ldRy1IKgxVZJy9z0lU9HyE+Yz3evEqIKFNdJH0dBuALe633XBq3GAr2Lt1tqpuIytrHc
         4VKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=eO4k65nVkim+Wb1U6BJaVwnZdzc4Hs4NlGZ60Wvrtzo=;
        b=Pgv7yjIWhNWMYtsqz9xVnzS2BrL969uampE6zkvmN5+FGR2baKQS8KrdWrZQkK5Qm1
         hXVwKfAS7UuMdNUJWoLq25E/xB6/C+NAPmeUecIxk4il5JZmhOoaT9li9rd8ojXOzGr5
         yZghTm34mzqEofMW/AUiFR+k2gp4sKv5ktF8CtkCPtPAuNNprsnSz+CTfZfLZiW9iuJX
         yRsp/6QvktmSJnaXC+Ce0uO9ka7j7Uk3PU6RjX3sXrcfknylv/FffO5iBv4j9N8frfcS
         j/9E8DQgXfrKjTY2rWyOJfPubEKEi2FXVWUsaLDyMbsA2XslluUBluJE5M4+V1wai8IF
         Emsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eO4k65nVkim+Wb1U6BJaVwnZdzc4Hs4NlGZ60Wvrtzo=;
        b=pozn/wPKKmMXsoxYubJ9uVzfWjLWlRMqApc9wgdUpYMMYQdXjMfro/fbrpc9x+rjGZ
         nMqIax5rImmJrJDxoZZYcA77XTAtPWh9o1uu/WpY+E2qGD/miPKNwyasJgbjb1JhjAnS
         Ux+4doscO4DB/yZWbMbXTDi6QxCqUDLtE0PlcILJK84cBj9ntu1sQS2E2bEPCFSKqJdt
         wPU+WoRzT3TZn0h1hS/P4exWHhGxu8WWWaC9EmHFoRI+ya0YV20M7fChjOlLiEOm7lhU
         SvVtLG4QkRhhU/E/tgc40/pVl4nc267fnxlUrpE84UxCIGfucTyEdgnU9pm2O47ApxDR
         YriA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eO4k65nVkim+Wb1U6BJaVwnZdzc4Hs4NlGZ60Wvrtzo=;
        b=qNzSqh/b1au54B3rXy+rh9xE15vBAnSjdqyk5fYwQEGtTZhARDRneWr6AW7DoPsSMY
         p/C0JTUuUKgu6tIkEeXQa3wb2za/WNB1kPsI/ZOy4o54MwnBelmQmbt8uSm4a8N7hJRt
         +dyXB9sLEumULlmu+vO6hlbw8CsZF1/vjVwuZWIsdZuMl6KGSL3BQqO25NPY3s0krd9x
         WPuZ6I58ba9KJjm+nXgjamomHiAySvvwM39iHm9yPw6/0Q7ZL8anZmKpaQO621steD4E
         eMOQTjHaYRvSyHfdYbRpjklqKbLids1PCouZh6ZfmAXVF7Bv8MPptjK1QFntrUmEts19
         VaYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531M7M3hF8axMuSieP5m0qleROkmIRhBXi7skifOv7ofcjf6CRZ/
	n1yW9pVRsG3kon6gP4FXqLM=
X-Google-Smtp-Source: ABdhPJx3unoPfWWnYcrv5A0H1dQ1IN1FvuWHHwKdNYyDuUCWShisdMZ5lWyPmvUMzEVIC7kWPfx2BA==
X-Received: by 2002:ac8:5a8c:: with SMTP id c12mr6432359qtc.359.1626295824690;
        Wed, 14 Jul 2021 13:50:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e054:: with SMTP id y20ls1547338qvk.10.gmail; Wed, 14
 Jul 2021 13:50:24 -0700 (PDT)
X-Received: by 2002:a0c:ca0f:: with SMTP id c15mr12709654qvk.51.1626295823955;
        Wed, 14 Jul 2021 13:50:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626295823; cv=none;
        d=google.com; s=arc-20160816;
        b=hxow27SBKBa16OBlm/FfOdjsLrxWpgjZR+CMIxKLUNavkBH1jlbX6WZ/HSkmU8eLy6
         9sjAnZs71L7KC8VA0RlCoLHQ5Th7ZkXaWb3ti3hlX6dvBOsdyskSdbSxU6Xa8dCk2ie1
         +rEqJzRcnpr+wMwckSP9q6J4Gz2x8WlPemGW/ISM59hfZkg5dsxIYN8xYaPGqI/qvg1C
         tiLfqDQ2EYt+ZilVl5Ws09pSUt66vCQRCko1c+EN0GPyuF71mxdgSkxb8KauiQlKXFc8
         Pbe+RSHP8N0tK+QvWCDGmGlCp9L/FVQWT/1WpjCJeEvWuBsjBonYzL4Kx5fJegGOcM/L
         OtIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=QlmJc+oHsEDdOkt2k+rb8cAZ+D6sVD4YfMDVXQqc24Y=;
        b=Ap3AyZp/SY2oShF5XRkH4due6RWe1Yust0D4GINQTzcW+j3TxQ7iaw93kVuX2hT7Ut
         EDeVETlu4eE93TLzGWL8NNaUAxQJtmvthSFvIzQ9+SeYfHtC/BPi2w5sILMWUIPZQHU/
         /ez2OaJVx6EqIaJa2RCbxX/vXsqND295rkG+4mN3xPVfn8dy9ilGWzFrjXq/1V2v9/hT
         bQWP2mVvAXHH1slLpAeRi+BZBPl2jmZ9qNckUd2k6/saKrKb8bKH1b3E+prXIhS+5kyz
         LEIIQieRKh85NboE0rdJZd9Fsi86YOuAE59FNQQilkrNyriX4RvVgC0HGcKkDx/wK3JL
         R0bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id x10si288961qkm.4.2021.07.14.13.50.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 13:50:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="210240448"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; 
   d="gz'50?scan'50,208,50";a="210240448"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2021 13:50:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; 
   d="gz'50?scan'50,208,50";a="460120300"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 14 Jul 2021 13:50:17 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m3lph-000J22-5q; Wed, 14 Jul 2021 20:50:17 +0000
Date: Thu, 15 Jul 2021 04:49:26 +0800
From: kernel test robot <lkp@intel.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>,
	Robin van der Gracht <robin@protonic.nl>,
	Rob Herring <robh+dt@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	Paul Burton <paulburton@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Pavel Machek <pavel@ucw.cz>, Marek Behun <marek.behun@nic.cz>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	devicetree@vger.kernel.org, linux-leds@vger.kernel.org,
	linux-mips@vger.kernel.org
Subject: Re: [PATCH v3 19/19] auxdisplay: ht16k33: Add LED support
Message-ID: <202107150434.SylYq7Cs-lkp@intel.com>
References: <20210714151130.2531831-20-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="9jxsPFA5p3P2qPhR"
Content-Disposition: inline
In-Reply-To: <20210714151130.2531831-20-geert@linux-m68k.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--9jxsPFA5p3P2qPhR
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Geert,

I love your patch! Yet something to improve:

[auto build test ERROR on robh/for-next]
[also build test ERROR on staging/staging-testing linus/master v5.14-rc1 next-20210714]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Geert-Uytterhoeven/auxdisplay-ht16k33-Add-character-display-support/20210714-231351
base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
config: arm-randconfig-r036-20210714 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d69635ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/a8d991401542b45f91eb59e1cdf24fd6c419360e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Geert-Uytterhoeven/auxdisplay-ht16k33-Add-character-display-support/20210714-231351
        git checkout a8d991401542b45f91eb59e1cdf24fd6c419360e
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=arm SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> ld.lld: error: undefined symbol: devm_led_classdev_register_ext
   >>> referenced by ht16k33.c
   >>>               auxdisplay/ht16k33.o:(ht16k33_probe) in archive drivers/built-in.a

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107150434.SylYq7Cs-lkp%40intel.com.

--9jxsPFA5p3P2qPhR
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
49H4F77f24tgiAEA

--9jxsPFA5p3P2qPhR--
