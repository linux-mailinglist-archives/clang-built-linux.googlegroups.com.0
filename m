Return-Path: <clang-built-linux+bncBD26TVH6RINBBF7S5CEAMGQETL377WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0897A3ED19B
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 12:08:25 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id g6-20020ab05fc60000b02902ab17bfbd55sf3832479uaj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 03:08:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629108503; cv=pass;
        d=google.com; s=arc-20160816;
        b=EG03ExQfeEG1gFwsNYglCuSlf9yAwNBvp/6vrd5CJpWbEZUWHj2gMW4pckZYISeSUe
         ciIW4e2iKZsD+WQApoJZWAJoyPi4NolWXsX8+CnqwF+TCffm/2wjxPEF+hoBE9pYKkTl
         fG+0WbCsWpyts+DMOWwVL/pFSwbdKHReOggfDz4WC6pntjItBAhs7pXoOHk/IyeSIDUP
         GxCSa29N05zYEWLHwlltDFHJvcOC6oYexwNfnfAGdkB1Hv4CA4v42F6PHn7dD0tnvOX+
         Vs/yXu8Tr4U+8JN1b38QunxmiFzeGLJGlYC0N/E8+6Ko5767zDJJK8jEDfTo24JFtw8Y
         9d7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:from:cc:to:in-reply-to:references
         :subject:sender:dkim-signature;
        bh=EqFmJqrkmxgd0oByBSbueXnEXYQuvHb+eJnAdEvOJ1k=;
        b=MG41RYA4qyzjqvHD/+OsishXtUxnrzf9PwjnxmApbqmFni35OptA2RiDbG+r87Sdh4
         4MFVrJJYPAcQ8/7mvpOy0HTZs5rMqxG99zUhxlfNq/WN0Kq01OxcdwBRUWouxm21q/XL
         EQkCcAgO2SBAgMlvlSfCSCG0t/ZA8SE9y55Lv+Pe4Vec1SAkJtETwjQhmV+o68TeqLJB
         mkWeSbv7YemL9xpv/CrhFAl6iOYVTnqAdSYBIEFsAKC4cK5W0zNmRnNw9WMwfx3ykHNA
         ZWXe7KQViFdwcXfnzQkfcYi/+2LM7xDwttJV+9qQ6ox3fFH/3mgJRCltbsTc/kZvwOO/
         d6rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:references:in-reply-to:to:cc:from:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EqFmJqrkmxgd0oByBSbueXnEXYQuvHb+eJnAdEvOJ1k=;
        b=hfwTEWjeFdWZY4BlxtR1+qAfO/vuwnWGcVN6zsaCq0dZHLtBXqvrOn/CxST9LSNQjO
         PSI0OOHf+MooNqu0Y9xoiRDBplQdhHvOqwaikWtsIhw5hr3MmW2Wjhzlh4VzYxj7ozuO
         FNdj6TkiJsw7nS29V4+Xw6jX98FYgX8K1hL1cnhvWgcyy0slkJcEr1zvMrdwOnWLu4EP
         2WNX5cVhpKEMJO1H37ZfYB4fUK3ZGW0f2JglSAd8RzqARqRyte+vpAr+qrF2DWOmwb0n
         VsYwvadXKEU6kPctaLJkUpWXPGqrcYIgnrDJ6XY3AWV5cbqjJHMRkzKeR0RSpMIewiVD
         5zvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:references:in-reply-to:to:cc:from
         :message-id:date:user-agent:mime-version:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EqFmJqrkmxgd0oByBSbueXnEXYQuvHb+eJnAdEvOJ1k=;
        b=XJhEDMdGT7PU0y3UyWgTavxXt3Omr9FiNkZhwBLlr/g0eArLv7RNWiV4U37AvYCeqJ
         N44E8f3jqGxeFeqcxRSi5dSe9n8HN3OfS3MP+rNeduu4Odty+UrFjarhWIBHHECYkaRu
         qUxgfYsjntn1OA3RMTmfo6Kt3YY/5FeGAKaD4/v87KxukrrTXqnIF6j+h0XnITG/hzpK
         v5ugVIbhHyzq+HueJIFz1RbTL5T3l++VzVF8WjkeiE+JUsJJZNcSiLr9ZqmTWotH8JaR
         YqUSPMgLm3XYwOHB5a+k+kPwH4PZqpZfQvKvVK2woewQezoFg8sqQVgqIMY2m3jzHHTn
         defQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mCo03liWNO+cp71MMxfDtKVEIy2E7qEKFG8EqvHB+qF4PJI+f
	cT5vsay1cPML+T942sY9nms=
X-Google-Smtp-Source: ABdhPJyVRz9jbFYEePUwx57orfG0U5UyrtVgZD4KPurFaw8EUTbO8mwR2QDPnDh3AGc95oiCp7muXw==
X-Received: by 2002:a05:6102:ccb:: with SMTP id g11mr8666278vst.14.1629108503592;
        Mon, 16 Aug 2021 03:08:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c89a:: with SMTP id v26ls1247075vsk.0.gmail; Mon, 16 Aug
 2021 03:08:23 -0700 (PDT)
X-Received: by 2002:a67:efd9:: with SMTP id s25mr8770009vsp.52.1629108502778;
        Mon, 16 Aug 2021 03:08:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629108502; cv=none;
        d=google.com; s=arc-20160816;
        b=CpTa4AK1RzsxAN6M5C7N9DNwF5tFskUzY2KD99m6Q1cb0UDasEHPtJFL7DXIg11T4C
         NHEdlO4FduRRSnuz5Rqq11RuzlJUaEUCFyrJW0y19VlIs6rOaR2MMd41w9HQUSUE07UW
         bwlRnsNjPlcaWBB/NMCBJdgI7VAX2Dv6dVTsdGTUxyN7S//PJLnYOa73EswxffrpAZaQ
         0RiTJz3X5q8FAcX4Wt8R0O8U5XYeY274v5cEw+VN2kJGc3oTWblqHD5sQPqLODKt6XNs
         cOmBW7dQJz6TyPaRpKvKmVsZ3P8+2fXso4NqTJ2LNz3a1q5n2sL7MDAXqLICx8TOECHA
         A/jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:mime-version:user-agent:date:message-id:from:cc:to
         :in-reply-to:references:subject;
        bh=yx3+tl8TjqOxnc3bUP2Fmk95K0LTW51/aC1rukl/Ghw=;
        b=TadhKGpwnNUFbIwH5UGy6nDHWQD9WcDrAUbpADoGk4apWPJCC4mgXFFmH3RzOrCyWl
         1uRGzIElqh6NiQt6XJdz/EFyjUrC3mcM3JdLvYJst+DZCl/J5btYDl5rg+K6016Rt/Fo
         ah9vzwdEdyQSxkCeKBfyyedIQvJ/pU70uLnzMR4rEVeptdB50H1eYBcdsZ35MEUmA7fC
         mQKPUtzbwkATuB7Z1Ylf1BtWju5e5zDDnI+uaSRv5B+YqKGH6aK40G+OkgNMFud7gJlz
         un+Fq5zd90qpg9+dhpm4jzOx/F7+QoXVAg5hgihOgjsA36mgvL9ov0NuQaQxrPa1QNK1
         /M6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id p6si360789vsm.1.2021.08.16.03.08.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 03:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="276861961"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; 
   d="gz'50?scan'50,208,50";a="276861961"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2021 03:08:20 -0700
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; 
   d="gz'50?scan'50,208,50";a="519596198"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.249.175.200]) ([10.249.175.200])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2021 03:08:17 -0700
Subject: Re: [PATCH 5/7] genirq/affinity: move group_cpus_evenly() into lib/
References: <202108150937.Qdn6klQB-lkp@intel.com>
In-Reply-To: <202108150937.Qdn6klQB-lkp@intel.com>
To: Ming Lei <ming.lei@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jens Axboe <axboe@kernel.dk>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Ming Lei <ming.lei@redhat.com>
From: kernel test robot <rong.a.chen@intel.com>
X-Forwarded-Message-Id: <202108150937.Qdn6klQB-lkp@intel.com>
Message-ID: <05fd64eb-495a-be42-7ec9-f48b9a3eeab6@intel.com>
Date: Mon, 16 Aug 2021 18:08:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------5DED4152183604E9A896C934"
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

This is a multi-part message in MIME format.
--------------5DED4152183604E9A896C934
Content-Type: text/plain; charset="UTF-8"; format=flowed


Hi Ming,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on tip/irq/core]
[also build test WARNING on next-20210813]
[cannot apply to block/for-next linux/master linus/master v5.14-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url: 
https://github.com/0day-ci/linux/commits/Ming-Lei/genirq-affinity-abstract-new-API-from-managed-irq-affinity-spread/20210814-203741
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 
04c2721d3530f0723b4c922a8fa9f26b202a20de
config: x86_64-randconfig-c001-20210814 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 
1f7b25ea76a925aca690da28de9d78db7ca99d0c)
reproduce (this is a W=1 build):
         wget 
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install x86_64 cross compiling tool for clang build
         # apt-get install binutils-x86-64-linux-gnu
         # 
https://github.com/0day-ci/linux/commit/759f72186bfdd5c3ba8b53ac0749cf7ba930012c
         git remote add linux-review https://github.com/0day-ci/linux
         git fetch --no-tags linux-review 
Ming-Lei/genirq-affinity-abstract-new-API-from-managed-irq-affinity-spread/20210814-203741
         git checkout 759f72186bfdd5c3ba8b53ac0749cf7ba930012c
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
ARCH=x86_64 clang-analyzer
If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    Suppressed 7 warnings (6 in non-user code, 1 with check filters).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    lib/glob.c:48:32: warning: Assigned value is garbage or undefined 
[clang-analyzer-core.uninitialized.Assign]
            char const *back_pat = NULL, *back_str = back_str;
                                          ^          ~~~~~~~~
    lib/glob.c:48:32: note: Assigned value is garbage or undefined
            char const *back_pat = NULL, *back_str = back_str;
                                          ^          ~~~~~~~~
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    lib/strnlen_user.c:34:2: warning: Value stored to 'src' is never 
read [clang-analyzer-deadcode.DeadStores]
            src -= align;
            ^      ~~~~~
    lib/strnlen_user.c:34:2: note: Value stored to 'src' is never read
            src -= align;
            ^      ~~~~~
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    Suppressed 7 warnings (7 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    Suppressed 7 warnings (7 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
    lib/oid_registry.c:149:3: warning: Value stored to 'num' is never 
read [clang-analyzer-deadcode.DeadStores]
                    num = 0;
                    ^     ~
    lib/oid_registry.c:149:3: note: Value stored to 'num' is never read
                    num = 0;
                    ^     ~
    Suppressed 6 warnings (6 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    9 warnings generated.
    Suppressed 9 warnings (2 in non-user code, 7 with check filters).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    7 warnings generated.
>> lib/group_cpus.c:236:22: warning: Division by zero [clang-analyzer-core.DivideZero]
                                     numgrps * ncpus / remaining_ncpus);
                                                     ^
    lib/group_cpus.c:352:2: note: Taking false branch
            if (!zalloc_cpumask_var(&nmsk, GFP_KERNEL))
            ^
    lib/group_cpus.c:355:2: note: Taking false branch
            if (!zalloc_cpumask_var(&npresmsk, GFP_KERNEL))
            ^
    lib/group_cpus.c:359:7: note: 'node_to_cpumask' is non-null
            if (!node_to_cpumask)
                 ^~~~~~~~~~~~~~~
    lib/group_cpus.c:359:2: note: Taking false branch
            if (!node_to_cpumask)
            ^
    lib/group_cpus.c:363:6: note: Assuming 'masks' is non-null
            if (!masks)
                ^~~~~~
    lib/group_cpus.c:363:2: note: Taking false branch
            if (!masks)
            ^
    lib/group_cpus.c:371:8: note: Calling '__group_cpus_evenly'
            ret = __group_cpus_evenly(curgrp, numgrps, node_to_cpumask,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    lib/group_cpus.c:257:6: note: Assuming the condition is false
            if (!cpumask_weight(cpu_mask))
                ^~~~~~~~~~~~~~~~~~~~~~~~~
    lib/group_cpus.c:257:2: note: Taking false branch
            if (!cpumask_weight(cpu_mask))
            ^
    lib/group_cpus.c:266:6: note: Assuming 'numgrps' is > 'nodes'
            if (numgrps <= nodes) {
                ^~~~~~~~~~~~~~~~
    lib/group_cpus.c:266:2: note: Taking false branch
            if (numgrps <= nodes) {
            ^
    lib/group_cpus.c:279:6: note: Assuming 'node_groups' is non-null
            if (!node_groups)
                ^~~~~~~~~~~~
    lib/group_cpus.c:279:2: note: Taking false branch
            if (!node_groups)
            ^
    lib/group_cpus.c:283:2: note: Calling 'alloc_nodes_groups'
            alloc_nodes_groups(numgrps, node_to_cpumask, cpu_mask,
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    lib/group_cpus.c:134:14: note: 'remaining_ncpus' initialized to 0
            unsigned n, remaining_ncpus = 0;
                        ^~~~~~~~~~~~~~~
    lib/group_cpus.c:136:2: note: Loop condition is true.  Entering loop 
body
            for (n = 0; n < nr_node_ids; n++) {
            ^
    lib/group_cpus.c:136:2: note: Loop condition is false. Execution 
continues on line 141
    lib/group_cpus.c:141:2: note: Taking false branch
            for_each_node_mask(n, nodemsk) {
            ^
    include/linux/nodemask.h:384:2: note: expanded from macro 
'for_each_node_mask'
            if (!nodes_empty(mask))                         \
            ^
    lib/group_cpus.c:153:12: note: '__UNIQUE_ID___x401' is < 
'__UNIQUE_ID___y402'
            numgrps = min_t(unsigned, remaining_ncpus, numgrps);
                      ^
    include/linux/minmax.h:104:27: note: expanded from macro 'min_t'
    #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                    __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), 
op))
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                    __cmp(unique_x, unique_y, op); })
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
    #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                             ^~~
    lib/group_cpus.c:153:12: note: '?' condition is true
            numgrps = min_t(unsigned, remaining_ncpus, numgrps);
                      ^
    include/linux/minmax.h:104:27: note: expanded from macro 'min_t'
    #define min_t(type, x, y)       __careful_cmp((type)(x), (type)(y), <)
                                    ^
    include/linux/minmax.h:38:3: note: expanded from macro '__careful_cmp'
                    __cmp_once(x, y, __UNIQUE_ID(__x), __UNIQUE_ID(__y), 
op))
                    ^
    include/linux/minmax.h:33:3: note: expanded from macro '__cmp_once'
                    __cmp(unique_x, unique_y, op); })
                    ^
    include/linux/minmax.h:28:26: note: expanded from macro '__cmp'
    #define __cmp(x, y, op) ((x) op (y) ? (x) : (y))
                             ^
    lib/group_cpus.c:226:2: note: Loop condition is true.  Entering loop 
body
            for (n = 0; n < nr_node_ids; n++) {
            ^
    lib/group_cpus.c:229:7: note: Assuming the condition is false
                    if (node_groups[n].ncpus == UINT_MAX)
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    lib/group_cpus.c:229:3: note: Taking false branch
                    if (node_groups[n].ncpus == UINT_MAX)
                    ^
    lib/group_cpus.c:232:3: note: Taking true branch
                    WARN_ON_ONCE(numgrps == 0);
                    ^
    include/asm-generic/bug.h:105:2: note: expanded from macro 
'WARN_ON_ONCE'

vim +236 lib/group_cpus.c

759f72186bfdd5 Ming Lei 2021-08-14  113  759f72186bfdd5 Ming Lei 
2021-08-14  114  /*
759f72186bfdd5 Ming Lei 2021-08-14  115   * Allocate group number for 
each node, so that for each node:
759f72186bfdd5 Ming Lei 2021-08-14  116   *
759f72186bfdd5 Ming Lei 2021-08-14  117   * 1) the allocated number is >= 1
759f72186bfdd5 Ming Lei 2021-08-14  118   *
759f72186bfdd5 Ming Lei 2021-08-14  119   * 2) the allocated number is 
<= active CPU number of this node
759f72186bfdd5 Ming Lei 2021-08-14  120   *
759f72186bfdd5 Ming Lei 2021-08-14  121   * The actual allocated total 
groups may be less than @numgrps when
759f72186bfdd5 Ming Lei 2021-08-14  122   * active total CPU number is 
less than @numgrps.
759f72186bfdd5 Ming Lei 2021-08-14  123   *
759f72186bfdd5 Ming Lei 2021-08-14  124   * Active CPUs means the CPUs 
in '@cpu_mask AND @node_to_cpumask[]'
759f72186bfdd5 Ming Lei 2021-08-14  125   * for each node.
759f72186bfdd5 Ming Lei 2021-08-14  126   */
759f72186bfdd5 Ming Lei 2021-08-14  127  static void 
alloc_nodes_groups(unsigned int numgrps,
759f72186bfdd5 Ming Lei 2021-08-14  128  			       cpumask_var_t 
*node_to_cpumask,
759f72186bfdd5 Ming Lei 2021-08-14  129  			       const struct cpumask 
*cpu_mask,
759f72186bfdd5 Ming Lei 2021-08-14  130  			       const nodemask_t nodemsk,
759f72186bfdd5 Ming Lei 2021-08-14  131  			       struct cpumask *nmsk,
759f72186bfdd5 Ming Lei 2021-08-14  132  			       struct node_groups 
*node_groups)
759f72186bfdd5 Ming Lei 2021-08-14  133  {
759f72186bfdd5 Ming Lei 2021-08-14  134  	unsigned n, remaining_ncpus = 0;
759f72186bfdd5 Ming Lei 2021-08-14  135  759f72186bfdd5 Ming Lei 
2021-08-14  136  	for (n = 0; n < nr_node_ids; n++) {
759f72186bfdd5 Ming Lei 2021-08-14  137  		node_groups[n].id = n;
759f72186bfdd5 Ming Lei 2021-08-14  138  		node_groups[n].ncpus = UINT_MAX;
759f72186bfdd5 Ming Lei 2021-08-14  139  	}
759f72186bfdd5 Ming Lei 2021-08-14  140  759f72186bfdd5 Ming Lei 
2021-08-14  141  	for_each_node_mask(n, nodemsk) {
759f72186bfdd5 Ming Lei 2021-08-14  142  		unsigned ncpus;
759f72186bfdd5 Ming Lei 2021-08-14  143  759f72186bfdd5 Ming Lei 
2021-08-14  144  		cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
759f72186bfdd5 Ming Lei 2021-08-14  145  		ncpus = cpumask_weight(nmsk);
759f72186bfdd5 Ming Lei 2021-08-14  146  759f72186bfdd5 Ming Lei 
2021-08-14  147  		if (!ncpus)
759f72186bfdd5 Ming Lei 2021-08-14  148  			continue;
759f72186bfdd5 Ming Lei 2021-08-14  149  		remaining_ncpus += ncpus;
759f72186bfdd5 Ming Lei 2021-08-14  150  		node_groups[n].ncpus = ncpus;
759f72186bfdd5 Ming Lei 2021-08-14  151  	}
759f72186bfdd5 Ming Lei 2021-08-14  152  759f72186bfdd5 Ming Lei 
2021-08-14  153  	numgrps = min_t(unsigned, remaining_ncpus, numgrps);
759f72186bfdd5 Ming Lei 2021-08-14  154  759f72186bfdd5 Ming Lei 
2021-08-14  155  	sort(node_groups, nr_node_ids, sizeof(node_groups[0]),
759f72186bfdd5 Ming Lei 2021-08-14  156  	     ncpus_cmp_func, NULL);
759f72186bfdd5 Ming Lei 2021-08-14  157  759f72186bfdd5 Ming Lei 
2021-08-14  158  	/*
759f72186bfdd5 Ming Lei 2021-08-14  159  	 * Allocate groups for each 
node according to the ratio of this
759f72186bfdd5 Ming Lei 2021-08-14  160  	 * node's nr_cpus to remaining 
un-assigned ncpus. 'numgrps' is
759f72186bfdd5 Ming Lei 2021-08-14  161  	 * bigger than number of 
active numa nodes. Always start the
759f72186bfdd5 Ming Lei 2021-08-14  162  	 * allocation from the node 
with minimized nr_cpus.
759f72186bfdd5 Ming Lei 2021-08-14  163  	 *
759f72186bfdd5 Ming Lei 2021-08-14  164  	 * This way guarantees that 
each active node gets allocated at
759f72186bfdd5 Ming Lei 2021-08-14  165  	 * least one group, and the 
theory is simple: over-allocation
759f72186bfdd5 Ming Lei 2021-08-14  166  	 * is only done when this node 
is assigned by one group, so
759f72186bfdd5 Ming Lei 2021-08-14  167  	 * other nodes will be 
allocated >= 1 groups, since 'numgrps' is
759f72186bfdd5 Ming Lei 2021-08-14  168  	 * bigger than number of numa 
nodes.
759f72186bfdd5 Ming Lei 2021-08-14  169  	 *
759f72186bfdd5 Ming Lei 2021-08-14  170  	 * One perfect invariant is 
that number of allocated groups for
759f72186bfdd5 Ming Lei 2021-08-14  171  	 * each node is <= CPU count 
of this node:
759f72186bfdd5 Ming Lei 2021-08-14  172  	 *
759f72186bfdd5 Ming Lei 2021-08-14  173  	 * 1) suppose there are two 
nodes: A and B
759f72186bfdd5 Ming Lei 2021-08-14  174  	 * 	ncpu(X) is CPU count of node X
759f72186bfdd5 Ming Lei 2021-08-14  175  	 * 	grps(X) is the group count 
allocated to node X via this
759f72186bfdd5 Ming Lei 2021-08-14  176  	 * 	algorithm
759f72186bfdd5 Ming Lei 2021-08-14  177  	 *
759f72186bfdd5 Ming Lei 2021-08-14  178  	 * 	ncpu(A) <= ncpu(B)
759f72186bfdd5 Ming Lei 2021-08-14  179  	 * 	ncpu(A) + ncpu(B) = N
759f72186bfdd5 Ming Lei 2021-08-14  180  	 * 	grps(A) + grps(B) = G
759f72186bfdd5 Ming Lei 2021-08-14  181  	 *
759f72186bfdd5 Ming Lei 2021-08-14  182  	 * 	grps(A) = max(1, 
round_down(G * ncpu(A) / N))
759f72186bfdd5 Ming Lei 2021-08-14  183  	 * 	grps(B) = G - grps(A)
759f72186bfdd5 Ming Lei 2021-08-14  184  	 *
759f72186bfdd5 Ming Lei 2021-08-14  185  	 * 	both N and G are integer, 
and 2 <= G <= N, suppose
759f72186bfdd5 Ming Lei 2021-08-14  186  	 * 	G = N - delta, and 0 <= 
delta <= N - 2
759f72186bfdd5 Ming Lei 2021-08-14  187  	 *
759f72186bfdd5 Ming Lei 2021-08-14  188  	 * 2) obviously grps(A) <= 
ncpu(A) because:
759f72186bfdd5 Ming Lei 2021-08-14  189  	 *
759f72186bfdd5 Ming Lei 2021-08-14  190  	 * 	if grps(A) is 1, then 
grps(A) <= ncpu(A) given
759f72186bfdd5 Ming Lei 2021-08-14  191  	 * 	ncpu(A) >= 1
759f72186bfdd5 Ming Lei 2021-08-14  192  	 *
759f72186bfdd5 Ming Lei 2021-08-14  193  	 * 	otherwise,
759f72186bfdd5 Ming Lei 2021-08-14  194  	 * 		grps(A) <= G * ncpu(A) / 
N <= ncpu(A), given G <= N
759f72186bfdd5 Ming Lei 2021-08-14  195  	 *
759f72186bfdd5 Ming Lei 2021-08-14  196  	 * 3) prove how grps(B) <= 
ncpu(B):
759f72186bfdd5 Ming Lei 2021-08-14  197  	 *
759f72186bfdd5 Ming Lei 2021-08-14  198  	 * 	if round_down(G * ncpu(A) 
/ N) == 0, vecs(B) won't be
759f72186bfdd5 Ming Lei 2021-08-14  199  	 * 	over-allocated, so grps(B) 
<= ncpu(B),
759f72186bfdd5 Ming Lei 2021-08-14  200  	 *
759f72186bfdd5 Ming Lei 2021-08-14  201  	 * 	otherwise:
759f72186bfdd5 Ming Lei 2021-08-14  202  	 *
759f72186bfdd5 Ming Lei 2021-08-14  203  	 * 	grps(A) =
759f72186bfdd5 Ming Lei 2021-08-14  204  	 * 		round_down(G * ncpu(A) / N) =
759f72186bfdd5 Ming Lei 2021-08-14  205  	 * 		round_down((N - delta) * 
ncpu(A) / N) =
759f72186bfdd5 Ming Lei 2021-08-14  206  	 * 		round_down((N * ncpu(A) - 
delta * ncpu(A)) / N)	 >=
759f72186bfdd5 Ming Lei 2021-08-14  207  	 * 		round_down((N * ncpu(A) - 
delta * N) / N)	 =
759f72186bfdd5 Ming Lei 2021-08-14  208  	 * 		cpu(A) - delta
759f72186bfdd5 Ming Lei 2021-08-14  209  	 *
759f72186bfdd5 Ming Lei 2021-08-14  210  	 * 	then:
759f72186bfdd5 Ming Lei 2021-08-14  211  	 *
759f72186bfdd5 Ming Lei 2021-08-14  212  	 * 	grps(A) - G >= ncpu(A) - 
delta - G
759f72186bfdd5 Ming Lei 2021-08-14  213  	 * 	=>
759f72186bfdd5 Ming Lei 2021-08-14  214  	 * 	G - grps(A) <= G + delta - 
ncpu(A)
759f72186bfdd5 Ming Lei 2021-08-14  215  	 * 	=>
759f72186bfdd5 Ming Lei 2021-08-14  216  	 * 	grps(B) <= N - ncpu(A)
759f72186bfdd5 Ming Lei 2021-08-14  217  	 * 	=>
759f72186bfdd5 Ming Lei 2021-08-14  218  	 * 	grps(B) <= cpu(B)
759f72186bfdd5 Ming Lei 2021-08-14  219  	 *
759f72186bfdd5 Ming Lei 2021-08-14  220  	 * For nodes >= 3, it can be 
thought as one node and another big
759f72186bfdd5 Ming Lei 2021-08-14  221  	 * node given that is exactly 
what this algorithm is implemented,
759f72186bfdd5 Ming Lei 2021-08-14  222  	 * and we always re-calculate 
'remaining_ncpus' & 'numgrps', and
759f72186bfdd5 Ming Lei 2021-08-14  223  	 * finally for each node X: 
grps(X) <= ncpu(X).
759f72186bfdd5 Ming Lei 2021-08-14  224  	 *
759f72186bfdd5 Ming Lei 2021-08-14  225  	 */
759f72186bfdd5 Ming Lei 2021-08-14  226  	for (n = 0; n < nr_node_ids; 
n++) {
759f72186bfdd5 Ming Lei 2021-08-14  227  		unsigned ngroups, ncpus;
759f72186bfdd5 Ming Lei 2021-08-14  228  759f72186bfdd5 Ming Lei 
2021-08-14  229  		if (node_groups[n].ncpus == UINT_MAX)
759f72186bfdd5 Ming Lei 2021-08-14  230  			continue;
759f72186bfdd5 Ming Lei 2021-08-14  231  759f72186bfdd5 Ming Lei 
2021-08-14  232  		WARN_ON_ONCE(numgrps == 0);
759f72186bfdd5 Ming Lei 2021-08-14  233  759f72186bfdd5 Ming Lei 
2021-08-14  234  		ncpus = node_groups[n].ncpus;
759f72186bfdd5 Ming Lei 2021-08-14  235  		ngroups = max_t(unsigned, 1,
759f72186bfdd5 Ming Lei 2021-08-14 @236  				 numgrps * ncpus / 
remaining_ncpus);
759f72186bfdd5 Ming Lei 2021-08-14  237  		WARN_ON_ONCE(ngroups > ncpus);
759f72186bfdd5 Ming Lei 2021-08-14  238  759f72186bfdd5 Ming Lei 
2021-08-14  239  		node_groups[n].ngroups = ngroups;
759f72186bfdd5 Ming Lei 2021-08-14  240  759f72186bfdd5 Ming Lei 
2021-08-14  241  		remaining_ncpus -= ncpus;
759f72186bfdd5 Ming Lei 2021-08-14  242  		numgrps -= ngroups;
759f72186bfdd5 Ming Lei 2021-08-14  243  	}
759f72186bfdd5 Ming Lei 2021-08-14  244  }
759f72186bfdd5 Ming Lei 2021-08-14  245
---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/05fd64eb-495a-be42-7ec9-f48b9a3eeab6%40intel.com.

--------------5DED4152183604E9A896C934
Content-Type: application/gzip;
 name=".config.gz"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=".config.gz"

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
--------------5DED4152183604E9A896C934
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message Part"

_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org


--------------5DED4152183604E9A896C934--
