Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHOW62EAMGQEKYZSUUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DD13F0F9F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:51:42 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id g4-20020a056122062400b00286f7151594sf765760vkp.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:51:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629334301; cv=pass;
        d=google.com; s=arc-20160816;
        b=g+g/yiJN1ms/s4HiWmWakr1dZpj6oR/krfTC6QVIdch5jiBJsC7gNYWQNB3Zzo9rGd
         IIkFsZi77Wwv7B3W/Lusg6oUcFt5JD+IzqQxNUe9QDLmR4q/7EspM+qX8av+7TDn2d9k
         mejfdyfQob3Vc94kuwxNimExzuYHcZ+Y6ttlQxfxiuP04Zm1skvUinHRPrjZnpP2WV7f
         MyLPYnrdtM4eD1U7FP5S5XNm/xk59/ALHeLlTl2111ozEpjYZ8wKW1/9VQ2ChpIEIE0Y
         qcsLZgmuCGXcQTZoGveKiwRRntBTMxUhUiEZqecLIUeaUOtHlFeGe3uhWXki5akkixwg
         c9ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nEcZjFYZWj7z7PEq7nC4nVpuCBHT3GHOFUVYlqzvKxw=;
        b=AnbdBu19r8MuR20GDxRoPHcrbAlaihf/p9MDICsgFjOQ6/BAcKaNe3PfAj12qvFwHQ
         hoH+kyXcAdM4469V0NgeC7LUAMY47HVC7gZ+Nn74Th+mXoIbCSIoUTRr4BtLgDQOGlNQ
         hIhfNa8/kyNudGFyHrYFREZ+8rsAbCDFfvGC6V3dU36Q+aYntAfRaxwLjMGfHpdfZcr0
         eK/lxhTJrh6roe5pTbpU7GOreWN5dOoKnjAr4KF6YnR++yS+dY7l2hSrXT58wSUywb3+
         JSXDxu2FjAePvPnJAXZ6AG2BtSCk2ZzJbuNVMd1YGdUBxaGxMYR7Y4twF+46v1z29o8A
         0a0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nEcZjFYZWj7z7PEq7nC4nVpuCBHT3GHOFUVYlqzvKxw=;
        b=dRTPygihWkue6GW8NFneCRqgMpMOV1y33vEgjxNDCef5pima3YuiSRAyQxBydhZnBL
         XgwT+aKjtpurTeaYd/90RAHiswSAlcQ1YUPvqfpa95Yv6JdRbq2McciLjknS3HMAhg0Z
         gwPo0RmTwu6uO23jsvliGQr07JUVxJ26qrYmWqH/SNpN9FyLIblV8h0wm+PMUBV0vomB
         nCOqSCPlhElgSbL8SsLy3EHqC1PXLb4Ai7caba3YnUxUO9oOjg0OPdRx2aU4t+ra8jZe
         yIbBY4tN46ibt0urLDyKLFxxvJzUdut+7lKWn4knfdpgl2RTzDRmImgubEe1Dj+/LqYM
         lySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nEcZjFYZWj7z7PEq7nC4nVpuCBHT3GHOFUVYlqzvKxw=;
        b=iWVtpXu9pLDoCzOXxpYUY1iThqHORUfVkBgs/F4dBJjsikqDc1FUcZAA/g0B4l9RU/
         gbUW9vcZfjGoc72C30ZI961EZIse0/9aMUP6twPCtTr2HJ6nTxZk+eSsmykgdY479zmT
         exN/F3lFlUrAbt+vTViKPupt5TTGD9YKe2GIZ+3j0ky0rqKOoIHoQAF5+ft2zjzotwxh
         1Xvr2l5O9fVPDK8FcQVoDbBp8eRXwkBxjjKW3WM/IFhhaHGyp8o4e9xziPKdr2Tu+GG5
         Ov1p9rzb/kVUBVL0mmNNp2w0ZMmIwlNr1wPscybuEEhqOJeruoEqPTMaT8EhYJ02mpD6
         b3UA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eSLNPdOqWhaPHWxF23YciBDwwi1TnJbTUUD/idNWqxoaW1Y4g
	0LlbSkdxVDW6Og0hCJv8Tpo=
X-Google-Smtp-Source: ABdhPJz5qaOtN651BsLo6vmnVVi5EEPXsOCTiZCDYqB3KunXuB3ERiaSkePSVv8yYRdPMiwjpe/97A==
X-Received: by 2002:a67:c307:: with SMTP id r7mr3734894vsj.47.1629334301373;
        Wed, 18 Aug 2021 17:51:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7682:: with SMTP id v2ls410920uaq.10.gmail; Wed, 18 Aug
 2021 17:51:40 -0700 (PDT)
X-Received: by 2002:a9f:35ca:: with SMTP id u10mr9152138uad.82.1629334300616;
        Wed, 18 Aug 2021 17:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629334300; cv=none;
        d=google.com; s=arc-20160816;
        b=QIP+xKsM/A9WNeW+S+3HU683aZKCZjK6DHz1w/bin4bgcRirxHeKyT9iKpopiO1hyO
         QD0YdAX5GaHtdiQspubAZo44bEONWjyRTkuvc1cjJCB3BQ4yKp8VsrkZGTF5ZFU+TAgE
         q8E470l96S/r3JsrZspeVuq5swposF/OusaGyeaIn42vUwcSl6ct5wNemeU5mxqmYv2o
         Hdu1uvlrGy8XNRb8oq7DdNCnHlQh4AfgOAGdOMz6IMxq+9OCWH7Y/+TQ02ACRsSGZscN
         vxcJ67ppO16Au7R4PdY+uYmlNRqgWzdbkKSmfws6cnh1owSiLDR95tsUqKXJ3BZZjHJX
         VUfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=KjzEiVWIN2oeYB6UwLCjBQkPrr9WRPWVEIrZUXFZNY8=;
        b=kOkrJRg36ROa7KzSKAWSSgpjdj6s7n9Aiaa37gZEIX1FCRuqbQQCgPgmlYG44MoIb6
         Oska2Rt7lTZ8uhTu3eMmse4j5dBicCk/IsHKe/H8qF6MqxuW70IDA3/9fysCRLIf9Po9
         3fLErPUmoR3Dl0zxb50Oj413UBbtlC7CyDOsFJKEVbCaG7+9ug8igo2463AJedZDLtU2
         /9KrMjYv0mahcUSQdxTc4Q9qWlDzhoU/J3n+jkDz2KWDSx9HY18i2FVzPJ2tdHcR/oJk
         94ZccbCmAl6bG3WbZelL7/IXZWxSAi7XklufaQ5UpFp4HC5wFSQrzj2C2JZAwmsajcaZ
         Zc4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id q21si98125vso.0.2021.08.18.17.51.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:51:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216188481"
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; 
   d="gz'50?scan'50,208,50";a="216188481"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 17:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; 
   d="gz'50?scan'50,208,50";a="594212038"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 18 Aug 2021 17:51:36 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGWHP-000TSk-D2; Thu, 19 Aug 2021 00:51:35 +0000
Date: Thu, 19 Aug 2021 08:51:14 +0800
From: kernel test robot <lkp@intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	Pavel Machek <pavel@ucw.cz>
Subject: [linux-next:master 951/8804]
 drivers/leds/flash/leds-as3645a.c:382:17: warning: Value stored to 'dev'
 during its initialization is never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108190804.Ka8PorNz-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   f26c3abc432a2026ba9ee7767061a1f88aead6ec
commit: f5d69f6290a37f5579ef24334d5bf8a59bb13ef4 [951/8804] leds: as3645a: Move driver to flash subdirectory
config: arm-randconfig-c002-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project af7818093677dcb4c0840aef96bc029deb219e57)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f5d69f6290a37f5579ef24334d5bf8a59bb13ef4
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout f5d69f6290a37f5579ef24334d5bf8a59bb13ef4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm clang-analyzer 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
                             ^
   include/linux/list.h:563:2: note: expanded from macro 'list_prev_entry'
           list_entry((pos)->member.prev, typeof(*(pos)), member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:2: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ^
   include/linux/compiler_types.h:316:2: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ^
   include/linux/compiler_types.h:306:2: note: expanded from macro '__compiletime_assert'
           do {                                                            \
           ^
   sound/core/device.c:228:2: note: Loop condition is false. Execution continues on line 237
           list_for_each_entry_safe_reverse(dev, next, &card->devices, list) {
           ^
   include/linux/list.h:762:2: note: expanded from macro 'list_for_each_entry_safe_reverse'
           for (pos = list_last_entry(head, typeof(*pos), member),         \
           ^
   sound/core/device.c:237:2: note: Left side of '&&' is false
           list_for_each_entry_safe_reverse(dev, next, &card->devices, list)
           ^
   include/linux/list.h:762:13: note: expanded from macro 'list_for_each_entry_safe_reverse'
           for (pos = list_last_entry(head, typeof(*pos), member),         \
                      ^
   include/linux/list.h:533:2: note: expanded from macro 'list_last_entry'
           list_entry((ptr)->prev, type, member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^
   include/linux/kernel.h:495:61: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                                                      ^
   sound/core/device.c:237:2: note: Taking false branch
           list_for_each_entry_safe_reverse(dev, next, &card->devices, list)
           ^
   include/linux/list.h:762:13: note: expanded from macro 'list_for_each_entry_safe_reverse'
           for (pos = list_last_entry(head, typeof(*pos), member),         \
                      ^
   include/linux/list.h:533:2: note: expanded from macro 'list_last_entry'
           list_entry((ptr)->prev, type, member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:2: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ^
   include/linux/compiler_types.h:316:2: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ^
   include/linux/compiler_types.h:308:3: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ^
   sound/core/device.c:237:2: note: Loop condition is false.  Exiting loop
           list_for_each_entry_safe_reverse(dev, next, &card->devices, list)
           ^
   include/linux/list.h:762:13: note: expanded from macro 'list_for_each_entry_safe_reverse'
           for (pos = list_last_entry(head, typeof(*pos), member),         \
                      ^
   include/linux/list.h:533:2: note: expanded from macro 'list_last_entry'
           list_entry((ptr)->prev, type, member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:2: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ^
   include/linux/compiler_types.h:316:2: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ^
   include/linux/compiler_types.h:306:2: note: expanded from macro '__compiletime_assert'
           do {                                                            \
           ^
   sound/core/device.c:237:2: note: Use of memory after it is freed
           list_for_each_entry_safe_reverse(dev, next, &card->devices, list)
           ^
   include/linux/list.h:763:7: note: expanded from macro 'list_for_each_entry_safe_reverse'
                   n = list_prev_entry(pos, member);                       \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:563:2: note: expanded from macro 'list_prev_entry'
           list_entry((pos)->member.prev, typeof(*(pos)), member)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:494:25: note: expanded from macro 'container_of'
           void *__mptr = (void *)(ptr);                                   \
                                  ^~~~~
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
>> drivers/leds/flash/leds-as3645a.c:382:17: warning: Value stored to 'dev' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct device *dev = &flash->client->dev;
                          ^~~   ~~~~~~~~~~~~~~~~~~~
   drivers/leds/flash/leds-as3645a.c:382:17: note: Value stored to 'dev' during its initialization is never read
           struct device *dev = &flash->client->dev;
                          ^~~   ~~~~~~~~~~~~~~~~~~~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   2 warnings generated.
   Suppressed 2 warnings (2 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   3 warnings generated.
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   sound/soc/codecs/wm8903.c:434:3: warning: Value stored to 'best' is never read [clang-analyzer-deadcode.DeadStores]
                   best = 0;
                   ^      ~
   sound/soc/codecs/wm8903.c:434:3: note: Value stored to 'best' is never read
                   best = 0;
                   ^      ~
   Suppressed 3 warnings (3 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   6 warnings generated.
   sound/soc/codecs/wm8960.c:508:18: warning: Access to field 'lout1' results in a dereference of a null pointer (loaded from variable 'wm8960') [clang-analyzer-core.NullDereference]
                           wm8960->lout1 = w;
                                         ^
   sound/soc/codecs/wm8960.c:1345:6: note: Assuming field 'capless' is false
           if (pdata->capless)
               ^~~~~~~~~~~~~~
   sound/soc/codecs/wm8960.c:1345:2: note: Taking false branch
           if (pdata->capless)
           ^
   sound/soc/codecs/wm8960.c:1352:2: note: Calling 'wm8960_add_widgets'
           wm8960_add_widgets(component);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/codecs/wm8960.c:472:2: note: 'wm8960' initialized here
           struct wm8960_priv *wm8960 = snd_soc_component_get_drvdata(component);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   sound/soc/codecs/wm8960.c:485:6: note: Assuming 'pdata' is null
           if (pdata && pdata->capless) {
               ^~~~~
   sound/soc/codecs/wm8960.c:485:12: note: Left side of '&&' is false
           if (pdata && pdata->capless) {
                     ^
   sound/soc/codecs/wm8960.c:504:2: note: Left side of '&&' is false
           list_for_each_entry(w, &component->card->widgets, list) {
           ^
   include/linux/list.h:628:13: note: expanded from macro 'list_for_each_entry'
           for (pos = list_first_entry(head, typeof(*pos), member);        \
                      ^
   include/linux/list.h:522:2: note: expanded from macro 'list_first_entry'
           list_entry((ptr)->next, type, member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^
   include/linux/kernel.h:495:61: note: expanded from macro 'container_of'
           BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
                                                                      ^
   sound/soc/codecs/wm8960.c:504:2: note: Taking false branch
           list_for_each_entry(w, &component->card->widgets, list) {
           ^
   include/linux/list.h:628:13: note: expanded from macro 'list_for_each_entry'
           for (pos = list_first_entry(head, typeof(*pos), member);        \
                      ^
   include/linux/list.h:522:2: note: expanded from macro 'list_first_entry'
           list_entry((ptr)->next, type, member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'
           container_of(ptr, type, member)
           ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:328:2: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
           ^
   include/linux/compiler_types.h:316:2: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
           ^
   include/linux/compiler_types.h:308:3: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                   ^
   sound/soc/codecs/wm8960.c:504:2: note: Loop condition is false.  Exiting loop
           list_for_each_entry(w, &component->card->widgets, list) {
           ^
   include/linux/list.h:628:13: note: expanded from macro 'list_for_each_entry'
           for (pos = list_first_entry(head, typeof(*pos), member);        \
                      ^
   include/linux/list.h:522:2: note: expanded from macro 'list_first_entry'
           list_entry((ptr)->next, type, member)
           ^
   include/linux/list.h:511:2: note: expanded from macro 'list_entry'

vim +/dev +382 drivers/leds/flash/leds-as3645a.c

a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  379  
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  380  static int as3645a_setup(struct as3645a *flash)
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  381  {
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26 @382  	struct device *dev = &flash->client->dev;
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  383  	u32 fault = 0;
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  384  	int rval;
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  385  
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  386  	/* clear errors */
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  387  	rval = as3645a_read(flash, AS_FAULT_INFO_REG);
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  388  	if (rval < 0)
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  389  		return rval;
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  390  
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  391  	dev_dbg(dev, "Fault info: %02x\n", rval);
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  392  
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  393  	rval = as3645a_set_current(flash);
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  394  	if (rval < 0)
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  395  		return rval;
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  396  
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  397  	rval = as3645a_set_timeout(flash);
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  398  	if (rval < 0)
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  399  		return rval;
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  400  
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  401  	rval = as3645a_set_control(flash, AS_MODE_INDICATOR, false);
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  402  	if (rval < 0)
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  403  		return rval;
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  404  
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  405  	/* read status */
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  406  	rval = as3645a_get_fault(&flash->fled, &fault);
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  407  	if (rval < 0)
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  408  		return rval;
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  409  
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  410  	dev_dbg(dev, "AS_INDICATOR_AND_TIMER_REG: %02x\n",
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  411  		as3645a_read(flash, AS_INDICATOR_AND_TIMER_REG));
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  412  	dev_dbg(dev, "AS_CURRENT_SET_REG: %02x\n",
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  413  		as3645a_read(flash, AS_CURRENT_SET_REG));
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  414  	dev_dbg(dev, "AS_CONTROL_REG: %02x\n",
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  415  		as3645a_read(flash, AS_CONTROL_REG));
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  416  
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  417  	return rval & ~AS_FAULT_INFO_LED_AMOUNT ? -EIO : 0;
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  418  }
a56ba8fbcb55f3 drivers/leds/leds-as3645a.c Sakari Ailus 2015-04-26  419  

:::::: The code at line 382 was first introduced by commit
:::::: a56ba8fbcb55f3c5fc06f803469e7412f9e13c18 media: leds: as3645a: Add LED flash class driver

:::::: TO: Sakari Ailus <sakari.ailus@linux.intel.com>
:::::: CC: Mauro Carvalho Chehab <mchehab@s-opensource.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108190804.Ka8PorNz-lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
3GOrDTrIAQA=

--bp/iNruPH9dso1Pn--
