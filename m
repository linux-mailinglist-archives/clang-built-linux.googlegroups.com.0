Return-Path: <clang-built-linux+bncBCRIZROPVQPBBIELRWEQMGQEISVRYGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2983F454E
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 08:52:18 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id r1-20020a4a3701000000b0028c9e077850sf6015115oor.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 23:52:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629701537; cv=pass;
        d=google.com; s=arc-20160816;
        b=g1Tq3DEJdVXtX0eYj8T87TxmepC4+7U7nPF6pd1+p9hUjLIN24Ty+r4hEcDHC9Do3Z
         A9vVXE6vqH4joivtyuMZ0S+dQ9sLMKM9opYC+WXmbiaIwQZQmgnFcOpi2QydH49hBGpJ
         hVSfQmPUlU+6EGFZkUZpTtGu+m0vG8bh1n0B74pZyQo+vaPbuedHirEA1+5fQouS8k5W
         QXkePs3cuqmzI/f7w/y3m4LmWedulnydAjvOE8qR0OpVtfofLx13hvgagNOdC/AZ1gqg
         /k7Bo5qzSJXMWsLLMPwbRVAhCErjhgwX5ARg5ourOQOaL/DbIdj66GNbfM20qX6cHStL
         CKpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=lS6snHsZXvOVpPbebjVQ8vcKdgCeR8VEwpBmr6qXeZ4=;
        b=vPtfRMGEnwA4VxqnKx93fqnqw0SWuF0858zIBRoDtuCYxLS6MozHI22YdjpX5LjfSC
         22CbRU148oQdg1BW+tHk1cLflXUoNGY2R5NvQxY6vbiu243lqlOxvlW6H6iVwDm2PKe8
         82DaWidENIznlJqNfaocmyoa1UxJgh/AuwlPrCwz4PaBJz6gFVZRcoUl1x5htaaL7zkb
         Tp9qMR7/VuQGVoWuu00DpZi/dEwPu65+FwqgjCOLMA5+lPndXe+oCn0t2Q5dLwsvEgZt
         lIeW4rdznYNFfWkMhgb5DHLQDOYsU9awpYvZTcLF32fPEvkewsVMc5584HeyXQPW7qHd
         wdqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="c/9I5HPe";
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lS6snHsZXvOVpPbebjVQ8vcKdgCeR8VEwpBmr6qXeZ4=;
        b=dAe5/9boLcpwg/u6wEP0mcshpVyTMOV59UP0qOq8OEE1ZDw1UPxRnH35n0oB9rLKCJ
         tM4rFLHi61A1F7JvHFQj3ivziJTuNNPO8gm5H6vpgTNcgP0Urj6GUR3JA46gWITiChtd
         TMQlKDItjG/0bgFj5gfP1JZY6frnLUFh7F3s/VPc3vyPBf0736F9SEPqu9sQueVkeoE4
         7fUYW2WbYtcPwT5ukdJNsCZ+G41mkYRMYjduJ1m98ltpIKSerHP3juihRVGuJdsQ5PQo
         U/jgiV8SEclaZdsUajy0EuQtyYo106+rJDf2I1FV/b+aqdNWNzBSS27HQAtwbJ7R6oNO
         F91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lS6snHsZXvOVpPbebjVQ8vcKdgCeR8VEwpBmr6qXeZ4=;
        b=H9VZhwKO7MRVr7wkVIPGQdqYWib8UprtpLCSAPdPFoBcuuqdPsb6RwIVaT9nHoLFPW
         kJpLS05+i7JLRy6pau0ZMIPe//u8w9JI6d3cgqVtIJkgmrsHsILCUdtlFbqcEmFqk8fo
         K3HEPLrnpcfCkX3uL2rmksD+uHzywc4vg5FqPQYtdEQbE1m7AHsm/QFRyQavMWL7tuKK
         5rVejcMUeUDYthijhGUDzmy6WyPD1YFf9pshWsdzz+8v/1kigNrRKapQuCGq77Y+cMua
         y2gvL/OZgVHXyq8DQF/g58MtroJb3TyPQn7t7U9uW2lIGuXyPXxu0vPBJ/sclLmGCOGT
         B0ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pJBsdRQ8FbqO0zAn+6qQkESj4OLFC1/+aZeKsS37B6xneUdKi
	TFz59aPAsTYVLqPmQX/tkic=
X-Google-Smtp-Source: ABdhPJylCRE4s8PM4hBvWSA0P1rZwDAIW+j12Pt1auS+/4yrBVGp0tmWBhiasyRy2PT7Z7dpiHEBGg==
X-Received: by 2002:a05:6830:90e:: with SMTP id v14mr4347389ott.222.1629701537086;
        Sun, 22 Aug 2021 23:52:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f0f:: with SMTP id m15ls286964oiw.11.gmail; Sun, 22
 Aug 2021 23:52:16 -0700 (PDT)
X-Received: by 2002:aca:5f04:: with SMTP id t4mr4543389oib.53.1629701536636;
        Sun, 22 Aug 2021 23:52:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629701536; cv=none;
        d=google.com; s=arc-20160816;
        b=S6Uc8H3BpmHusgxKIsBJj1shN4J7QXazF86K67aPnXSyiiq0YO8XJWudtormxgn3Tb
         rFrWmFNo5Q3fQhgHUIiljP/5figTqKHbkHWRz5GR9WxBGzkvhFQNnCYK9K02p6pGuZrs
         V13PNDEXvX9QrGcVwBqYt0T3sQG14N3Z0sPn0ZpKS28WZhiLJV9P4GirYqiw4qHpATbd
         TRFcYu19GlIppvPHSbqV/bqU8gLSL92BpdDNClZkAlpU46h2VP6g8k1oatJ2ZXu4TrbC
         JZtYVWd+dmimXx2pGbM2ZwwMWIMoKx6OBF6lBM9G9gnrkE68iV9IokxLm8Ghl0eAfOAk
         dxKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6JdgNxB1H2AvpsK5SsSf2ubeu2L5in1kZLAzf3Uti0E=;
        b=akvnBYVs3PlEs9kI/4G1JMqfVy/R5f6Tlp9TL/TQ+HHq54AUaUrKOwgzY1pTfn3eV0
         8afO2nXu+LClvrNvjN0iPZEw3Tv4B6j4uBzZvyVm6QUwykG89idObN6IgxH0Dc1G62Fs
         pcIJ9L9l750twTSccXov9O+4WQqdSE99KEihsDUf74qnrLZy5Kny2nUr+pMolIttLWWc
         CoOqbkYVHM94xLMuz/PtsEQlQ4oFQ74xw+cOYKV6typ+Yg458wwZIBGvYwPxs0Hw1xjj
         SFhG8h/mzTQiqg8OFZiTlPkz/amP2B7B7qo0tcB7MydBarF5+7J+n4EXAoQtuYDUJtBL
         UNjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="c/9I5HPe";
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id m6si719947otk.4.2021.08.22.23.52.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 23:52:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id a21so14496543pfh.5
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 23:52:16 -0700 (PDT)
X-Received: by 2002:a65:51c7:: with SMTP id i7mr30401653pgq.300.1629701535602;
        Sun, 22 Aug 2021 23:52:15 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id g10sm14491018pfh.120.2021.08.22.23.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 23:52:14 -0700 (PDT)
Date: Mon, 23 Aug 2021 12:22:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: Thara Gopinath <thara.gopinath@linaro.org>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 8440/9522]
 drivers/cpufreq/qcom-cpufreq-hw.c:294:3: warning: Value stored to 'opp' is
 never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <20210823065211.mzagmzexavwxu4vy@vireshk-i7>
References: <202108221933.WIgFqDfv-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108221933.WIgFqDfv-lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="c/9I5HPe";       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42d
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On 22-08-21, 19:41, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   86ed57fd8c93fdfaabb4f58e78455180fa7d8a84
> commit: 86afc1df661a99dcd6b8d264cae171f1ead2b7b8 [8440/9522] cpufreq: qcom-cpufreq-hw: Add dcvs interrupt support
> config: arm-randconfig-c002-20210822 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project a83d99c55ebb14532c414066a5aa3bdb65389965)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=86afc1df661a99dcd6b8d264cae171f1ead2b7b8
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 86afc1df661a99dcd6b8d264cae171f1ead2b7b8
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm clang-analyzer 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

This doesn't look right, it says issues are with cpufreq-hw driver but
points at hid-core ?
 
> clang-analyzer warnings: (new ones prefixed by >>)
>                               ^  ~
>    drivers/hid/hid-core.c:1412:22: warning: The result of the left shift is undefined due to shifting by '32', which is greater or equal to the width of type 'unsigned int' [clang-analyzer-core.UndefinedBinaryOperatorResult]
>                    u8 bit_mask = ((1U << n) - 1);
>                                       ^
>    drivers/hid/hid-core.c:1717:6: note: Assuming 'buf' is non-null
>            if (!buf)
>                ^~~~
>    drivers/hid/hid-core.c:1717:2: note: Taking false branch
>            if (!buf)
>            ^
>    drivers/hid/hid-core.c:1722:6: note: Assuming 'reqtype' is equal to HID_REQ_SET_REPORT
>            if (reqtype == HID_REQ_SET_REPORT)
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1722:2: note: Taking true branch
>            if (reqtype == HID_REQ_SET_REPORT)
>            ^
>    drivers/hid/hid-core.c:1723:3: note: Calling 'hid_output_report'
>                    hid_output_report(report, buf);
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1630:14: note: Field 'id' is <= 0
>            if (report->id > 0)
>                        ^
>    drivers/hid/hid-core.c:1630:2: note: Taking false branch
>            if (report->id > 0)
>            ^
>    drivers/hid/hid-core.c:1634:14: note: Assuming 'n' is < field 'maxfield'
>            for (n = 0; n < report->maxfield; n++)
>                        ^~~~~~~~~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1634:2: note: Loop condition is true.  Entering loop body
>            for (n = 0; n < report->maxfield; n++)
>            ^
>    drivers/hid/hid-core.c:1635:3: note: Calling 'hid_output_field'
>                    hid_output_field(report->device, report->field[n], data);
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1597:2: note: 'size' initialized here
>            unsigned size = field->report_size;
>            ^~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1600:14: note: Assuming 'n' is < 'count'
>            for (n = 0; n < count; n++) {
>                        ^~~~~~~~~
>    drivers/hid/hid-core.c:1600:2: note: Loop condition is true.  Entering loop body
>            for (n = 0; n < count; n++) {
>            ^
>    drivers/hid/hid-core.c:1601:7: note: Assuming field 'logical_minimum' is >= 0
>                    if (field->logical_minimum < 0) /* signed values */
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1601:3: note: Taking false branch
>                    if (field->logical_minimum < 0) /* signed values */
>                    ^
>    drivers/hid/hid-core.c:1605:44: note: Passing value via 4th parameter 'n'
>                            implement(hid, data, offset + n * size, size,
>                                                                    ^~~~
>    drivers/hid/hid-core.c:1605:4: note: Calling 'implement'
>                            implement(hid, data, offset + n * size, size,
>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1421:15: note: Assuming 'n' is <= 32
>            if (unlikely(n > 32)) {
>                         ^
>    include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>    # define unlikely(x)    __builtin_expect(!!(x), 0)
>                                                ^
>    drivers/hid/hid-core.c:1421:2: note: Taking false branch
>            if (unlikely(n > 32)) {
>            ^
>    drivers/hid/hid-core.c:1425:13: note: Assuming 'n' is >= 32
>            } else if (n < 32) {
>                       ^~~~~~
>    drivers/hid/hid-core.c:1425:9: note: Taking false branch
>            } else if (n < 32) {
>                   ^
>    drivers/hid/hid-core.c:1437:30: note: Passing the value 32 via 3rd parameter 'n'
>            __implement(report, offset, n, value);
>                                        ^
>    drivers/hid/hid-core.c:1437:2: note: Calling '__implement'
>            __implement(report, offset, n, value);
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1400:9: note: Assuming the condition is false
>            while (n - bits_to_set >= 0) {
>                   ^~~~~~~~~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1400:2: note: Loop condition is false. Execution continues on line 1411
>            while (n - bits_to_set >= 0) {
>            ^
>    drivers/hid/hid-core.c:1411:6: note: 'n' is 32
>            if (n) {
>                ^
>    drivers/hid/hid-core.c:1411:2: note: Taking true branch
>            if (n) {
>            ^
>    drivers/hid/hid-core.c:1412:22: note: The result of the left shift is undefined due to shifting by '32', which is greater or equal to the width of type 'unsigned int'
>                    u8 bit_mask = ((1U << n) - 1);
>                                       ^  ~
>    drivers/hid/hid-core.c:1984:3: warning: Value stored to 'len' is never read [clang-analyzer-deadcode.DeadStores]
>                    len += sprintf(buf + len, "%shidraw%d", len ? "," : "",
>                    ^      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/hid/hid-core.c:1984:3: note: Value stored to 'len' is never read
>                    len += sprintf(buf + len, "%shidraw%d", len ? "," : "",
>                    ^      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    Suppressed 6 warnings (6 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    3 warnings generated.
> >> drivers/cpufreq/qcom-cpufreq-hw.c:294:3: warning: Value stored to 'opp' is never read [clang-analyzer-deadcode.DeadStores]
>                    opp = dev_pm_opp_find_freq_ceil(dev, &freq_hz);
>                    ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/cpufreq/qcom-cpufreq-hw.c:294:3: note: Value stored to 'opp' is never read
>                    opp = dev_pm_opp_find_freq_ceil(dev, &freq_hz);
>                    ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    Suppressed 2 warnings (2 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    2 warnings generated.
>    Suppressed 2 warnings (2 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    2 warnings generated.
>    Suppressed 2 warnings (2 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    2 warnings generated.
>    Suppressed 2 warnings (2 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    7 warnings generated.
>    Suppressed 7 warnings (7 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    3 warnings generated.
>    Suppressed 3 warnings (3 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    2 warnings generated.
>    Suppressed 2 warnings (2 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    2 warnings generated.
>    Suppressed 2 warnings (2 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    3 warnings generated.
>    Suppressed 3 warnings (3 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    3 warnings generated.
>    Suppressed 3 warnings (3 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    3 warnings generated.
>    Suppressed 3 warnings (3 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    6 warnings generated.
>    Suppressed 6 warnings (6 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    2 warnings generated.
>    Suppressed 2 warnings (2 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    2 warnings generated.
>    Suppressed 2 warnings (2 in non-user code).
>    Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>    7 warnings generated.
>    drivers/dma/xgene-dma.c:445:36: warning: The result of the left shift is undefined due to shifting by '32', which is greater or equal to the width of type 'int' [clang-analyzer-core.UndefinedBinaryOperatorResult]
>                    desc1->m2 |= cpu_to_le64((scf[i] << ((i + 1) * 8)));
>                                                     ^
>    include/linux/byteorder/generic.h:86:21: note: expanded from macro 'cpu_to_le64'
>    #define cpu_to_le64 __cpu_to_le64
>                        ^
>    drivers/dma/xgene-dma.c:895:15: note: Assuming 'dchan' is non-null
>            if (unlikely(!dchan || !len))
>                         ^
>    include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>    # define unlikely(x)    __builtin_expect(!!(x), 0)
>                                                ^
>    drivers/dma/xgene-dma.c:895:15: note: Left side of '||' is false
>            if (unlikely(!dchan || !len))
>                         ^
>    drivers/dma/xgene-dma.c:895:25: note: Assuming 'len' is not equal to 0
>            if (unlikely(!dchan || !len))
>                                   ^
>    include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>    # define unlikely(x)    __builtin_expect(!!(x), 0)
>                                                ^
>    drivers/dma/xgene-dma.c:895:2: note: Taking false branch
>            if (unlikely(!dchan || !len))
>            ^
>    drivers/dma/xgene-dma.c:898:9: note: Left side of '&&' is false
>            chan = to_dma_chan(dchan);
>                   ^
>    drivers/dma/xgene-dma.c:191:2: note: expanded from macro 'to_dma_chan'
>            container_of(dchan, struct xgene_dma_chan, dma_chan)
>            ^
>    include/linux/kernel.h:495:61: note: expanded from macro 'container_of'
>            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
>                                                                       ^
>    drivers/dma/xgene-dma.c:898:9: note: Taking false branch
>            chan = to_dma_chan(dchan);
>                   ^
>    drivers/dma/xgene-dma.c:191:2: note: expanded from macro 'to_dma_chan'
>            container_of(dchan, struct xgene_dma_chan, dma_chan)
>            ^
>    include/linux/kernel.h:495:2: note: expanded from macro 'container_of'
>            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) &&   \
>            ^
>    include/linux/build_bug.h:39:37: note: expanded from macro 'BUILD_BUG_ON_MSG'
>    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                        ^
>    include/linux/compiler_types.h:328:2: note: expanded from macro 'compiletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>            ^
>    include/linux/compiler_types.h:316:2: note: expanded from macro '_compiletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ^
>    include/linux/compiler_types.h:308:3: note: expanded from macro '__compiletime_assert'
>                    if (!(condition))                                       \
> 
> vim +/opp +294 drivers/cpufreq/qcom-cpufreq-hw.c
> 
>    275	
>    276	static void qcom_lmh_dcvs_notify(struct qcom_cpufreq_data *data)
>    277	{
>    278		unsigned long max_capacity, capacity, freq_hz, throttled_freq;
>    279		struct cpufreq_policy *policy = data->policy;
>    280		int cpu = cpumask_first(policy->cpus);
>    281		struct device *dev = get_cpu_device(cpu);
>    282		struct dev_pm_opp *opp;
>    283		unsigned int freq;
>    284	
>    285		/*
>    286		 * Get the h/w throttled frequency, normalize it using the
>    287		 * registered opp table and use it to calculate thermal pressure.
>    288		 */
>    289		freq = qcom_lmh_get_throttle_freq(data);
>    290		freq_hz = freq * HZ_PER_KHZ;
>    291	
>    292		opp = dev_pm_opp_find_freq_floor(dev, &freq_hz);
>    293		if (IS_ERR(opp) && PTR_ERR(opp) == -ERANGE)
>  > 294			opp = dev_pm_opp_find_freq_ceil(dev, &freq_hz);
>    295	
>    296		throttled_freq = freq_hz / HZ_PER_KHZ;
>    297	
>    298		/* Update thermal pressure */
>    299	
>    300		max_capacity = arch_scale_cpu_capacity(cpu);
>    301		capacity = mult_frac(max_capacity, throttled_freq, policy->cpuinfo.max_freq);
>    302	
>    303		/* Don't pass boost capacity to scheduler */
>    304		if (capacity > max_capacity)
>    305			capacity = max_capacity;
>    306	
>    307		arch_set_thermal_pressure(policy->cpus, max_capacity - capacity);
>    308	
>    309		/*
>    310		 * In the unlikely case policy is unregistered do not enable
>    311		 * polling or h/w interrupt
>    312		 */
>    313		mutex_lock(&data->throttle_lock);
>    314		if (data->cancel_throttle)
>    315			goto out;
>    316	
>    317		/*
>    318		 * If h/w throttled frequency is higher than what cpufreq has requested
>    319		 * for, then stop polling and switch back to interrupt mechanism.
>    320		 */
>    321		if (throttled_freq >= qcom_cpufreq_hw_get(cpu))
>    322			enable_irq(data->throttle_irq);
>    323		else
>    324			mod_delayed_work(system_highpri_wq, &data->throttle_work,
>    325					 msecs_to_jiffies(10));
>    326	
>    327	out:
>    328		mutex_unlock(&data->throttle_lock);
>    329	}
>    330	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823065211.mzagmzexavwxu4vy%40vireshk-i7.
