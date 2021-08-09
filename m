Return-Path: <clang-built-linux+bncBD26TVH6RINBBG4PYSEAMGQEY76HVJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A403E4421
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 12:46:53 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id p21-20020a1709028a95b029012c31764588sf995587plo.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 03:46:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628506012; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZVu8SC99fRo5sfC7YY0dZUrQgW2uZpFBgsWTZTmWJ32Q9cg1Hebqc9+CGLorPS/tNT
         VFkEYhnNcRw++iSJtc8JElqGo1LOBB8XO+shCAt8tsrdTZiYezEOyghJ7l4Ywi21FzH8
         X6j72HAhzccXlSqnIn7uDC11UzTDciScy0lz/r0HZRwvwv4+9A6/1cxWY63l8M53kWt9
         CDOeugE7KKeIvtzgSh9FDOpYPHAIV3/KzDoKcBqRRFyhcX9Ig1CGfYnuy+chyxO8S39Z
         MTeamgEXg73tZJYA3C5uEdjgVW4OcMUzhXBMfLHwbutkpd6KuJgV3Ne2oxDzo4aPXhG6
         UegA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:cc:to:references
         :subject:sender:dkim-signature;
        bh=NjwtRX9TwzNTEnIENyk9X0hdSkcPHZuWIyAQJzZJ5p8=;
        b=tZ3UNYtKKtwZjoqOJ9LB5IbPBsOpIw1wfUNQsgX+X+mF9pGQ5hb11P4vb51DuilArH
         94PzfEQ+ql522j26Xp7PtpO6BOX0Q9s/Cm5uRXjsxk/KSL7g3sAnKMTL8sWKlarmDfCR
         5s2vF4ZhjOXrvCrzh67Af2UCD92+p7aB1DKeXRrjCSWySJWmyf9ZOlmIr5opvvignUTr
         V1kFHfj1gbhyJZgXbj0WLdg+tDX7bNN8wWZ3FogZgZ7HGyJRvExVzNySXn/9MZfQ+3+R
         XIW5VtFwCX27UP2I8RjtYUTk290p02GyGokE0OdLF/VdAJdE+7hyBfHTzVkpfIsNU4NO
         R3Rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:references:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NjwtRX9TwzNTEnIENyk9X0hdSkcPHZuWIyAQJzZJ5p8=;
        b=BrOeTzrH5kTG0R0lwxYZ7/YlG77pqWBv3rQTqxwt1/SegevHJ5D0T0vgACk7nFGUYv
         V6yQrzHdKOzRVMZL51LH9y/WRM7KAOKsXEQJW4ZmUg3wmvPmu9BK9vkKvciVmNFdTJIS
         ZUV7hgVffUmh4OFAUjKNWJXXAP48/PHSQBet5GbPzmlyTWu/1+fdX5Pv7w4UTkobdKoZ
         lUyWbVPLG2ZtBnQp7oJFB19tuv3gt9yiaggB+42Ayu1gozP2fPMQ49TDeZBToagU/HUZ
         haBtGUzOKp687E/lBao69a2E5zdyfhehF2AS2JXbCAz0iAUQEVyA27Z4E+JKTkpQiX+4
         UW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:references:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NjwtRX9TwzNTEnIENyk9X0hdSkcPHZuWIyAQJzZJ5p8=;
        b=ubYalVX7hPY745Xk6ENRYznvgKoCfjR3E6LPfGQtnI+y+U69hZ6oIF+pgfuYGnh/CA
         i0Z8CDAMZVOreDD91pOYhmQKwYmKfAY8OTlWuYsXUUO4igPtJYWKpFaG/+fzBcBliIpm
         3rVU9vQK99G9mBJq+/n0xNpr57a6nh1P8VqlUpMFYeTadCSycZjXJn3z4R9QwNX8mcUc
         lAIVXkfyCZBsUedEQRsuD1+eHq2bBbfdRS4N0ih43HyYCcsMtWBclOULTUsZ0LyCvzVc
         0PiTTVBT2Znhct910HNC5zxC9LII7+yLHASXorc7re6ypkT5K8Ede0xEqaDgV3+RQ71X
         oxqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rHd9IUccYHMYC3HN2rp7Fo9olgAlIQISee56347JBlvvACEKf
	BicsQTgzbPIRvLgLSOIIQQA=
X-Google-Smtp-Source: ABdhPJzyakNybfJBC/do4b2duwIPNxT87Xo6sLOeHnG3cKtBRNnVsGe2z1PG/i15ZZz8hOL5uuCM8w==
X-Received: by 2002:a05:6a00:26f7:b029:3be:5428:3994 with SMTP id p55-20020a056a0026f7b02903be54283994mr17814751pfw.42.1628506011760;
        Mon, 09 Aug 2021 03:46:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:294c:: with SMTP id x12ls9132573pjf.1.gmail; Mon, 09
 Aug 2021 03:46:51 -0700 (PDT)
X-Received: by 2002:a17:90a:2ec6:: with SMTP id h6mr35092293pjs.9.1628506010948;
        Mon, 09 Aug 2021 03:46:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628506010; cv=none;
        d=google.com; s=arc-20160816;
        b=ETEyXrlb7Maj5rSuxvfPxvHhtVW8RgD2GdhqguS3lLGrJCyxeha0SE9FFaxabxKXtF
         mfGstGqPO5cC5DQIcMcOu9KUzqmk6TRt6gwGWVXTphFNLNJw8j4Flu3U/2yMTDhF0EQz
         x8d69iDeynpuiyLFqNaZtvdAPsSUD8wB8Fuyzk4Q5O4Rg6vXdFI+AEnnohXG70elVE9V
         FtyQknsmqqiGR7vwWSkXP2YF9yJBq3N9DujHkcQb/DqxL8VBY6t2mlX3rsVShf6dEprw
         1lcGB8zx9abh593fj0KHUJ0+bS8Ux8Fhs+xUBQeKJoGKWfj8R82rOdywhRiIPuOP5Dtl
         QXdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:to:references:subject;
        bh=bRi9RzofNUp2r6GDgYwY7eqeqETFJIz3LsOEYLNdHVE=;
        b=LdXavPOMh08z7XF0kPCz1QDqmmo2kkSTYPgDoA8j20bL+NF2bxK+t3yfDArPppxMTX
         s3kMvgTkngYihWVMsCBxx/opWhR4onVngKi5I6iXh0YaGp6it5APM6KE0SnJQg2APsmR
         fZLViPPJsr2ZgnUYc5R4lT2vGRiigSU6+FVYK8MnvfmVp2QlbJBKUFuEKHrXxqh4ybDy
         GbfWy970SidHi2KZlCWOCuY8P7JovPaShSVtXE+NrgIH+VstkoTRnsoq4WPx/D33Mz1a
         +RcczFDPCbUBXKzVQsnkmYhb1qBPHyd67s78BwzmwqetqeVD231LSLsD0HjDjtDXgdrl
         np4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id m1si446720pjv.1.2021.08.09.03.46.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 03:46:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="236658351"
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; 
   d="gz'50?scan'50,208,50";a="236658351"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Aug 2021 03:46:49 -0700
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; 
   d="gz'50?scan'50,208,50";a="514903422"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.31.192]) ([10.255.31.192])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Aug 2021 03:46:48 -0700
Subject: [linux-next:master 4907/6030] drivers/ptp/ptp_ocp.c:830:2: warning:
 Undefined or garbage value returned to caller
 [clang-analyzer-core.uninitialized.UndefReturn]
References: <202108081526.htnwreV6-lkp@intel.com>
To: Jonathan Lemon <jonathan.lemon@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 Linux Memory Management List <linux-mm@kvack.org>
From: kernel test robot <rong.a.chen@intel.com>
X-Forwarded-Message-Id: <202108081526.htnwreV6-lkp@intel.com>
Message-ID: <d2cdfaa0-90db-045d-3f2f-efcbde670ecb@intel.com>
Date: Mon, 9 Aug 2021 18:46:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202108081526.htnwreV6-lkp@intel.com>
Content-Type: multipart/mixed;
 boundary="------------57637E796A8607B9CA53866D"
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as
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
--------------57637E796A8607B9CA53866D
Content-Type: text/plain; charset="UTF-8"; format=flowed


tree: 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   7999516e20bd9bb5d1f7351cbd05ca529a3a8d60
commit: 773bda96492153e11d21eb63ac814669b51fc701 [4907/6030] ptp: ocp: 
Expose various resources on the timecard.
:::::: branch date: 2 days ago
:::::: commit date: 4 days ago
config: x86_64-randconfig-c001-20210807 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 
41a6b50c25961addc04438b567ee1f4ef9e40f98)
reproduce (this is a W=1 build):
         wget 
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install x86_64 cross compiling tool for clang build
         # apt-get install binutils-x86-64-linux-gnu
         # 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=773bda96492153e11d21eb63ac814669b51fc701
         git remote add linux-next 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
         git fetch --no-tags linux-next master
         git checkout 773bda96492153e11d21eb63ac814669b51fc701
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
ARCH=x86_64 clang-analyzer
If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    drivers/thermal/devfreq_cooling.c:87:17: warning: Value stored to 
'dev' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct device *dev = df->dev.parent;
                           ^~~   ~~~~~~~~~~~~~~
    drivers/thermal/devfreq_cooling.c:87:17: note: Value stored to 'dev' 
during its initialization is never read
            struct device *dev = df->dev.parent;
                           ^~~   ~~~~~~~~~~~~~~
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    drivers/media/i2c/ov5640.c:1005:2: warning: Value stored to 'ret' is 
never read [clang-analyzer-deadcode.DeadStores]
            ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL0,
            ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/media/i2c/ov5640.c:1005:2: note: Value stored to 'ret' is 
never read
            ret = ov5640_mod_reg(sensor, OV5640_REG_SC_PLL_CTRL0,
            ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
>> drivers/ptp/ptp_ocp.c:830:2: warning: Undefined or garbage value returned to caller [clang-analyzer-core.uninitialized.UndefReturn]
            return err;
            ^
    drivers/ptp/ptp_ocp.c:844:7: note: 'dev' is non-null
            if (!dev) {
                 ^~~
    drivers/ptp/ptp_ocp.c:844:2: note: Taking false branch
            if (!dev) {
            ^
    drivers/ptp/ptp_ocp.c:852:8: note: Calling 'ptp_ocp_devlink_flash'
            err = ptp_ocp_devlink_flash(devlink, dev, params->fw);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/ptp/ptp_ocp.c:803:2: note: 'err' declared without an initial 
value
            int err;
            ^~~~~~~
    drivers/ptp/ptp_ocp.c:810:2: note: Loop condition is false. 
Execution continues on line 830
            while (resid) {
            ^
    drivers/ptp/ptp_ocp.c:830:2: note: Undefined or garbage value 
returned to caller
            return err;
            ^      ~~~
    Suppressed 5 warnings (5 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    include/linux/list.h:135:13: warning: Use of memory after it is 
freed [clang-analyzer-unix.Malloc]
            __list_del(entry->prev, entry->next);
                       ^
    drivers/media/cec/core/cec-api.c:637:29: note: Left side of '&&' is 
false
            struct cec_adapter *adap = to_cec_adapter(devnode);
                                       ^
    drivers/media/cec/core/cec-priv.h:21:30: note: expanded from macro 
'to_cec_adapter'
    #define to_cec_adapter(node) container_of(node, struct cec_adapter, 
devnode)
                                 ^
    include/linux/kernel.h:495:61: note: expanded from macro 'container_of'
            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) 
&&   \
                                                                       ^
    drivers/media/cec/core/cec-api.c:637:29: note: Taking false branch
            struct cec_adapter *adap = to_cec_adapter(devnode);
                                       ^
    drivers/media/cec/core/cec-priv.h:21:30: note: expanded from macro 
'to_cec_adapter'
    #define to_cec_adapter(node) container_of(node, struct cec_adapter, 
devnode)
                                 ^
    include/linux/kernel.h:495:2: note: expanded from macro 'container_of'
            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) 
&&   \
            ^
    include/linux/build_bug.h:39:37: note: expanded from macro 
'BUILD_BUG_ON_MSG'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^
    include/linux/compiler_types.h:328:2: note: expanded from macro 
'compiletime_assert'
            _compiletime_assert(condition, msg, __compiletime_assert_, 
__COUNTER__)
            ^
    include/linux/compiler_types.h:316:2: note: expanded from macro 
'_compiletime_assert'
            __compiletime_assert(condition, msg, prefix, suffix)
            ^
    include/linux/compiler_types.h:308:3: note: expanded from macro 
'__compiletime_assert'
                    if (!(condition)) 
     \
                    ^
    drivers/media/cec/core/cec-api.c:637:29: note: Loop condition is 
false.  Exiting loop
            struct cec_adapter *adap = to_cec_adapter(devnode);
                                       ^
    drivers/media/cec/core/cec-priv.h:21:30: note: expanded from macro 
'to_cec_adapter'
    #define to_cec_adapter(node) container_of(node, struct cec_adapter, 
devnode)
                                 ^
    include/linux/kernel.h:495:2: note: expanded from macro 'container_of'
            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) 
&&   \
            ^
    include/linux/build_bug.h:39:37: note: expanded from macro 
'BUILD_BUG_ON_MSG'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^
    include/linux/compiler_types.h:328:2: note: expanded from macro 
'compiletime_assert'
            _compiletime_assert(condition, msg, __compiletime_assert_, 
__COUNTER__)
            ^
    include/linux/compiler_types.h:316:2: note: expanded from macro 
'_compiletime_assert'
            __compiletime_assert(condition, msg, prefix, suffix)
            ^
    include/linux/compiler_types.h:306:2: note: expanded from macro 
'__compiletime_assert'
            do { 
     \
            ^
    drivers/media/cec/core/cec-api.c:642:6: note: Assuming 'fh' is equal 
to field 'cec_initiator'
            if (adap->cec_initiator == fh)
                ^~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/media/cec/core/cec-api.c:642:2: note: Taking true branch
            if (adap->cec_initiator == fh)
            ^
    drivers/media/cec/core/cec-api.c:644:6: note: Assuming 'fh' is equal 
to field 'cec_follower'
            if (adap->cec_follower == fh) {
                ^~~~~~~~~~~~~~~~~~~~~~~~
    drivers/media/cec/core/cec-api.c:644:2: note: Taking true branch
            if (adap->cec_follower == fh) {
            ^
    drivers/media/cec/core/cec-api.c:648:6: note: Assuming the condition 
is false
            if (fh->mode_follower == CEC_MODE_FOLLOWER)
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/media/cec/core/cec-api.c:648:2: note: Taking false branch
            if (fh->mode_follower == CEC_MODE_FOLLOWER)
            ^
    drivers/media/cec/core/cec-api.c:650:6: note: Assuming the condition 
is true
            if (fh->mode_follower == CEC_MODE_MONITOR_PIN)
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/media/cec/core/cec-api.c:650:2: note: Taking true branch
            if (fh->mode_follower == CEC_MODE_MONITOR_PIN)

vim +830 drivers/ptp/ptp_ocp.c

773bda96492153 Jonathan Lemon 2021-08-03  793  773bda96492153 Jonathan 
Lemon 2021-08-03  794  static int
773bda96492153 Jonathan Lemon 2021-08-03  795 
ptp_ocp_devlink_flash(struct devlink *devlink, struct device *dev,
773bda96492153 Jonathan Lemon 2021-08-03  796  		      const struct 
firmware *fw)
773bda96492153 Jonathan Lemon 2021-08-03  797  {
773bda96492153 Jonathan Lemon 2021-08-03  798  	struct mtd_info *mtd = 
dev_get_drvdata(dev);
773bda96492153 Jonathan Lemon 2021-08-03  799  	struct ptp_ocp *bp = 
devlink_priv(devlink);
773bda96492153 Jonathan Lemon 2021-08-03  800  	size_t off, len, resid, 
wrote;
773bda96492153 Jonathan Lemon 2021-08-03  801  	struct erase_info erase;
773bda96492153 Jonathan Lemon 2021-08-03  802  	size_t base, blksz;
773bda96492153 Jonathan Lemon 2021-08-03  803  	int err;
773bda96492153 Jonathan Lemon 2021-08-03  804  773bda96492153 Jonathan 
Lemon 2021-08-03  805  	off = 0;
773bda96492153 Jonathan Lemon 2021-08-03  806  	base = bp->flash_start;
773bda96492153 Jonathan Lemon 2021-08-03  807  	blksz = 4096;
773bda96492153 Jonathan Lemon 2021-08-03  808  	resid = fw->size;
773bda96492153 Jonathan Lemon 2021-08-03  809  773bda96492153 Jonathan 
Lemon 2021-08-03  810  	while (resid) {
773bda96492153 Jonathan Lemon 2021-08-03  811  	 
devlink_flash_update_status_notify(devlink, "Flashing",
773bda96492153 Jonathan Lemon 2021-08-03  812  						   NULL, off, 
fw->size);
773bda96492153 Jonathan Lemon 2021-08-03  813  773bda96492153 Jonathan 
Lemon 2021-08-03  814  		len = min_t(size_t, resid, blksz);
773bda96492153 Jonathan Lemon 2021-08-03  815  		erase.addr = base + off;
773bda96492153 Jonathan Lemon 2021-08-03  816  		erase.len = blksz;
a7e1abad13f3f0 Jonathan Lemon 2020-12-03  817  773bda96492153 Jonathan 
Lemon 2021-08-03  818  		err = mtd_erase(mtd, &erase);
a7e1abad13f3f0 Jonathan Lemon 2020-12-03  819  		if (err)
a7e1abad13f3f0 Jonathan Lemon 2020-12-03  820  			goto out;
a7e1abad13f3f0 Jonathan Lemon 2020-12-03  821  773bda96492153 Jonathan 
Lemon 2021-08-03  822  		err = mtd_write(mtd, base + off, len, &wrote, 
&fw->data[off]);
773bda96492153 Jonathan Lemon 2021-08-03  823  		if (err)
a7e1abad13f3f0 Jonathan Lemon 2020-12-03  824  			goto out;
773bda96492153 Jonathan Lemon 2021-08-03  825  773bda96492153 Jonathan 
Lemon 2021-08-03  826  		off += blksz;
773bda96492153 Jonathan Lemon 2021-08-03  827  		resid -= len;
773bda96492153 Jonathan Lemon 2021-08-03  828  	}
773bda96492153 Jonathan Lemon 2021-08-03  829  out:
773bda96492153 Jonathan Lemon 2021-08-03 @830  	return err;
a7e1abad13f3f0 Jonathan Lemon 2020-12-03  831  }
a7e1abad13f3f0 Jonathan Lemon 2020-12-03  832
---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d2cdfaa0-90db-045d-3f2f-efcbde670ecb%40intel.com.

--------------57637E796A8607B9CA53866D
Content-Type: application/gzip;
 name=".config.gz"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename=".config.gz"

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
HV1TXrQI9Yjh/wDXuLrf40oCAA==
--------------57637E796A8607B9CA53866D
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message Part"

_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org


--------------57637E796A8607B9CA53866D--
