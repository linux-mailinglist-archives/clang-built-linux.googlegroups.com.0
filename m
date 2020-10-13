Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB75JST6AKGQEWMHWEMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F2328C739
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 04:46:24 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id m62sf15859808ybb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 19:46:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602557183; cv=pass;
        d=google.com; s=arc-20160816;
        b=0uGWXo3hUifIi68xugwprC1Obmh4OwGOpPLLJ1e2WqIUSWFgrJaQ23lganb2sc6cyY
         EHxdRvmwiR6rpqqU2k9vT/olb5cu0loA2QJzEggnHPZfRUzTtiqQDMag1qWzcknV7a6s
         q/8xJ4hsloR7iQRJuSi8BGUHGRbHYxvcoNKmH76i7jajwk8zeT19IlphcfYXGf3T147R
         UMAbUEl3DECGUSomr9DwHY2CjuF4/UGvWzitSHfhnYnWbX6akzPeelUrpvETyal+TFmf
         SQ/IS0ICsK4uBfyLv7hu4cHm1yLPFOCzn9dtZ+pBH2OgJf6iOEbwkplPL9geCVYVElnU
         JMcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ftKPjTavedXi7HKWJCU1DifOlCPsi2lLmoRChOyJkG8=;
        b=aPG2Qt88hnlOBYOIy6+N2hzf+PixIBuTTDVuPmkpkXqYHJ+TlZoYtMo1orTcUpvxeY
         YFcSKpQq8roLKHLbF6okKmSv//nE1U9D1wMNZIlB6guIvkhS5beUTkqM6acpGZYhqyjB
         3729vnXOb+9OxKR+LAkS+UftdnAlYkgT9GGfYWK5+Q6qhb+5axl9+pOOH5afel+pGvCy
         T7NeW6+BtJs19NPcf04NTL+lPyBL6MlV3uBLkFkrjP6a131jAU/wvLglFV/CjsdHrSeT
         ySjJtNF7fyStfL82D8tCYbIWBnm7NShH29V2RiGRaGQwRspjO2b4BYjewQbAA8BtNsgM
         R27Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ftKPjTavedXi7HKWJCU1DifOlCPsi2lLmoRChOyJkG8=;
        b=n+Z1fdX9yQRqkSbInt8i3sdpNbuymHmQVXzx02NFGGsRXjQKD5400yZ7Reyvq/Od9A
         3DfN+beZ+zrS2LN6ZkYxfPXXpKJUR2mc5+jUDrSGAeI7He1sxn4ROgOBH/j3xBHuWecz
         MzKbul4MZgT4nt+WBwVkTweysf3DiDNUUDD3IlAvKmCyd7rQnTK5W2NmfJMCtQ34cYtW
         S3F2oq36BQ+pLZmhTKAzWGJTYGtAuGAa1S8vDLWd0zm8csDYFvK0SGPF6+FQezy27Ndv
         pXCN4SXotOtPRfnisaivSqvaRW2gfJh70XUSJ50Ksh8JW4XYEoTJ6lhZ3hZxuzMc3EF/
         SowA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ftKPjTavedXi7HKWJCU1DifOlCPsi2lLmoRChOyJkG8=;
        b=sNi+6uAzilVSrK4nkcH7QRJdkbM3ZtpPG53mbNJsiUGrYSB2hupf99HBYQvfjLNZap
         uBCnC8dAy64oa8mr1ViURlhE1zs3OcTA+qNmkOUU5lfqggJ/PvupBTS0yKa9p/WrngWQ
         4hhmrVguZXkh8t1aCrEZQi5UYJMm40QFHm9yoRQH+F3bclBV296zvUuIREsLSL6SMbAr
         irSvFPU1zUvLD4jiFC2zlyTRx55Y8fU7ZQsfNFbi5Bkl2e3O83M8X1OcnXuzdOeAmvms
         wKYVaxFdFIflsMBl24Hlg1y8tTKqnjXoE5RcudbeW6+oiM3mk1AkE0Rp6J4WW/drhMt7
         M3hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mJkhf9Q67F/PEJl/6NFswmsXr8MLv0psx4eUNnsOiWy1PvjnX
	3tiyyqF1YfsetkWTU/BqQ3M=
X-Google-Smtp-Source: ABdhPJxXl+nN7kZSI2/aeWPvp4XnruhkrG/bSzNCK/DwagLcrOBoLE4lVSoPanJkBN55F+0m/mPepQ==
X-Received: by 2002:a25:8005:: with SMTP id m5mr36137332ybk.187.1602557183683;
        Mon, 12 Oct 2020 19:46:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2c04:: with SMTP id s4ls2504031ybs.0.gmail; Mon, 12 Oct
 2020 19:46:23 -0700 (PDT)
X-Received: by 2002:a25:bcd0:: with SMTP id l16mr38117327ybm.129.1602557183055;
        Mon, 12 Oct 2020 19:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602557183; cv=none;
        d=google.com; s=arc-20160816;
        b=ZcSu33XlqGBadQ9nq/mwTUP9t6tJVF94Lz4j1hNfv3CDXzKROhFG7sXikLEo8Pmyl7
         nNapWG0GcaQF66A7RVclY/D0nq6N9OogA5OJkvDzdalN7tHTlQcBBBzivlcwbVoT1UBN
         xTRQJ9vUFlMXBTvwED3yiEnUKUr5mxmQsDUxKFoS5X5ivBmsAFoJl2PI6TNWbv81J9Dj
         IPb+HL0jaBsxdkLPe8ZZRh9J65yQoZHv6QicX8RV35oW2iysL9yIc1YyM1b0PRrDggRe
         tC/rOzEZyUxlxgLzIbKt/V6mXXPb8+5VlTCrv4wXWwRAHFfnRbt9GhuH4ytVkwX4Wj9Y
         p4EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=9EQNYUoPEq5dGbSUOS+OUd1DJO+ktQWAnkbtJE8kB2w=;
        b=LcWgV6wDFnuUt//ZQAzxpuyvjgAb/gQwyP2opHkHGZpS4N61mq5Nwbcf3Ao+iUgl3K
         v6qSL4M9iUi5MI+VQlE3illnzZxEDNn7QOyQAndby6NlaVDwv7rJz/4Mq8Hm7sim4+/j
         uWuAoj1I6ih4BcCnmylNKXRf1jkoTAP2ImCfhbjXgEzUMzqKyjXHl31dgc0LArbdi5RU
         rv0wa9vVMXwwrzkXkFH76pqdBjydoxS3FvP3Zu+x3cbHvJBiq9xqmS4E2RTOxU0RrWdb
         KjXk/s+NURqzFwwdhB2WtMQ9tRQ0xj39WTCX1eK1oL8Igm/vVvdM80bYutPImNAH464T
         Gv9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id f128si559494ybg.5.2020.10.12.19.46.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 19:46:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: gS5HM4lFFtkFSITqXq8b5wPrv9pqjHFbt2leccxnj35YL4JtULsk+BFCPIhWpVRHs3iwAYXX/F
 djAXp2T4jg6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="145699716"
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; 
   d="gz'50?scan'50,208,50";a="145699716"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2020 19:46:20 -0700
IronPort-SDR: PXx5/9w0K+AZK85lwFsSqGB/XY4nyvx06SJKrRtyVXiy0DMqm/1F5ybUxgxfSOuNZvU7MqCAhz
 minzQRnMrsmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; 
   d="gz'50?scan'50,208,50";a="318142146"
Received: from lkp-server01.sh.intel.com (HELO aa1d92d39b27) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 12 Oct 2020 19:46:18 -0700
Received: from kbuild by aa1d92d39b27 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kSAKP-0000Hp-Ux; Tue, 13 Oct 2020 02:46:17 +0000
Date: Tue, 13 Oct 2020 10:45:22 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Latypov <dlatypov@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC v2 10/12] kunit: mock: add class mocking support
Message-ID: <202010131023.W6NJA2pb-lkp@intel.com>
References: <20201012222050.999431-11-dlatypov@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7JfCtLOvnd9MIVvH"
Content-Disposition: inline
In-Reply-To: <20201012222050.999431-11-dlatypov@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--7JfCtLOvnd9MIVvH
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on 10b82d5176488acee2820e5a2cf0f2ec5c3488b6]

url:    https://github.com/0day-ci/linux/commits/Daniel-Latypov/kunit-introduce-class-mocking-support/20201013-062218
base:    10b82d5176488acee2820e5a2cf0f2ec5c3488b6
config: arm64-randconfig-r003-20201012 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a324d8f964bf421fa7d8b882b0f64ead28c4149c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/9e162e8cc1ac27ab6de97d84033753ff486214e9
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Daniel-Latypov/kunit-introduce-class-mocking-support/20201013-062218
        git checkout 9e162e8cc1ac27ab6de97d84033753ff486214e9
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> lib/kunit/mock-macro-test.c:24:33: warning: no previous prototype for function 'one_param' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK(METHOD(one_param), CLASS(mock_macro_dummy_struct),
                                   ^
   lib/kunit/mock-macro-test.c:25:13: note: declare 'static' if the function is not intended to be used outside of this translation unit
                            RETURNS(int),
                                    ^
   include/kunit/mock.h:191:30: note: expanded from macro 'RETURNS'
   #define RETURNS(return_type) return_type
                                ^
   include/kunit/mock.h:509:13: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                                                         return_type,             \
                                                         ^
   include/kunit/mock.h:471:15: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                                                                  return_type,    \
                                                                  ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:383:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT'
                                                    return_type,                  \
                                                    ^
   include/kunit/mock.h:368:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT_COMMON'
                                             return_type,                         \
                                             ^
   include/kunit/mock.h:328:3: note: expanded from macro 'DEFINE_MOCK_CLIENT_COMMON'
                   return_type name(PARAM_LIST_FROM_TYPES(param_types))           \
                   ^
>> lib/kunit/mock-macro-test.c:24:1: warning: no previous prototype for function 'mock_master_one_param' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK(METHOD(one_param), CLASS(mock_macro_dummy_struct),
   ^
   include/kunit/mock.h:506:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(name,                    \
                   ^
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:28: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                                            ^
   <scratch space>:150:1: note: expanded from here
   mock_master_one_param
   ^
   lib/kunit/mock-macro-test.c:24:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   include/kunit/mock.h:506:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(name,                    \
                   ^
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:427:3: note: expanded from macro 'DEFINE_MOCK_METHOD_MASTER'
                   DEFINE_MOCK_MASTER_COMMON(name,                                \
                   ^
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                   ^
>> lib/kunit/mock-macro-test.c:28:33: warning: no previous prototype for function 'two_param' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK(METHOD(two_param), CLASS(mock_macro_dummy_struct),
                                   ^
   lib/kunit/mock-macro-test.c:29:13: note: declare 'static' if the function is not intended to be used outside of this translation unit
                            RETURNS(int),
                                    ^
   include/kunit/mock.h:191:30: note: expanded from macro 'RETURNS'
   #define RETURNS(return_type) return_type
                                ^
   include/kunit/mock.h:509:13: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                                                         return_type,             \
                                                         ^
   include/kunit/mock.h:471:15: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                                                                  return_type,    \
                                                                  ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:383:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT'
                                                    return_type,                  \
                                                    ^
   include/kunit/mock.h:368:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT_COMMON'
                                             return_type,                         \
                                             ^
   include/kunit/mock.h:328:3: note: expanded from macro 'DEFINE_MOCK_CLIENT_COMMON'
                   return_type name(PARAM_LIST_FROM_TYPES(param_types))           \
                   ^
>> lib/kunit/mock-macro-test.c:28:1: warning: no previous prototype for function 'mock_master_two_param' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK(METHOD(two_param), CLASS(mock_macro_dummy_struct),
   ^
   include/kunit/mock.h:506:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(name,                    \
                   ^
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:28: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                                            ^
   <scratch space>:113:1: note: expanded from here
   mock_master_two_param
   ^
   lib/kunit/mock-macro-test.c:28:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   include/kunit/mock.h:506:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(name,                    \
                   ^
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:427:3: note: expanded from macro 'DEFINE_MOCK_METHOD_MASTER'
                   DEFINE_MOCK_MASTER_COMMON(name,                                \
                   ^
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                   ^
>> lib/kunit/mock-macro-test.c:32:46: warning: no previous prototype for function 'non_first_slot_param' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(METHOD(non_first_slot_param),
                                                ^
   lib/kunit/mock-macro-test.c:34:13: note: declare 'static' if the function is not intended to be used outside of this translation unit
                            RETURNS(int),
                                    ^
   include/kunit/mock.h:191:30: note: expanded from macro 'RETURNS'
   #define RETURNS(return_type) return_type
                                ^
   include/kunit/mock.h:471:15: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                                                                  return_type,    \
                                                                  ^
   include/kunit/mock.h:462:8: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                                      return_type, param_types)
                                      ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:383:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT'
                                                    return_type,                  \
                                                    ^
   include/kunit/mock.h:368:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT_COMMON'
                                             return_type,                         \
                                             ^
   include/kunit/mock.h:328:3: note: expanded from macro 'DEFINE_MOCK_CLIENT_COMMON'
                   return_type name(PARAM_LIST_FROM_TYPES(param_types))           \
                   ^
>> lib/kunit/mock-macro-test.c:32:1: warning: no previous prototype for function 'mock_master_non_first_slot_param' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(METHOD(non_first_slot_param),
   ^
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   include/kunit/mock.h:442:3: note: expanded from macro 'DEFINE_MOCK_COMMON'
                   DEFINE_MOCK_METHOD_MASTER(name, handle_index, param_types)
                   ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:28: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                                            ^
   <scratch space>:310:1: note: expanded from here
   mock_master_non_first_slot_param
   ^
   lib/kunit/mock-macro-test.c:32:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   include/kunit/mock.h:442:3: note: expanded from macro 'DEFINE_MOCK_COMMON'
                   DEFINE_MOCK_METHOD_MASTER(name, handle_index, param_types)
                   ^
   include/kunit/mock.h:427:3: note: expanded from macro 'DEFINE_MOCK_METHOD_MASTER'
                   DEFINE_MOCK_MASTER_COMMON(name,                                \
                   ^
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                   ^
>> lib/kunit/mock-macro-test.c:37:33: warning: no previous prototype for function 'void_ptr_return' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK(METHOD(void_ptr_return),
                                   ^
   lib/kunit/mock-macro-test.c:39:13: note: declare 'static' if the function is not intended to be used outside of this translation unit
                            RETURNS(void *),
                                    ^
   include/kunit/mock.h:191:30: note: expanded from macro 'RETURNS'
   #define RETURNS(return_type) return_type
                                ^
   include/kunit/mock.h:509:13: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                                                         return_type,             \
                                                         ^
   include/kunit/mock.h:471:15: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                                                                  return_type,    \
                                                                  ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:383:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT'
                                                    return_type,                  \
                                                    ^
   include/kunit/mock.h:368:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT_COMMON'
                                             return_type,                         \
                                             ^
   include/kunit/mock.h:328:3: note: expanded from macro 'DEFINE_MOCK_CLIENT_COMMON'
                   return_type name(PARAM_LIST_FROM_TYPES(param_types))           \
                   ^
>> lib/kunit/mock-macro-test.c:37:1: warning: no previous prototype for function 'mock_master_void_ptr_return' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK(METHOD(void_ptr_return),
   ^
   include/kunit/mock.h:506:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(name,                    \
                   ^
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:28: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                                            ^
   <scratch space>:58:1: note: expanded from here
   mock_master_void_ptr_return
   ^
   lib/kunit/mock-macro-test.c:37:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   include/kunit/mock.h:506:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(name,                    \
                   ^
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:427:3: note: expanded from macro 'DEFINE_MOCK_METHOD_MASTER'
                   DEFINE_MOCK_MASTER_COMMON(name,                                \
                   ^
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                   ^
>> lib/kunit/mock-macro-test.c:54:1: error: too many arguments to function call, expected single argument 'mock_test_struct', have 2 arguments
   DEFINE_STRUCT_CLASS_MOCK_INIT(mock_macro_dummy_struct,
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/kunit/mock.h:553:24: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_INIT'
                           if (init_func(test, mock_obj))                         \
                               ~~~~~~~~~       ^~~~~~~~
   lib/kunit/mock-macro-test.c:42:12: note: 'mock_macro_dummy_struct_init' declared here
   static int mock_macro_dummy_struct_init(
              ^
>> lib/kunit/mock-macro-test.c:54:1: warning: no previous prototype for function 'mock_macro_dummy_structmock_init' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK_INIT(mock_macro_dummy_struct,
   ^
   include/kunit/mock.h:540:29: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_INIT'
                   struct MOCK(struct_name) *MOCK_INIT_ID(struct_name)(           \
                                             ^
   include/kunit/mock.h:194:35: note: expanded from macro 'MOCK_INIT_ID'
   #define MOCK_INIT_ID(struct_name) struct_name##mock_init
                                     ^
   <scratch space>:101:1: note: expanded from here
   mock_macro_dummy_structmock_init
   ^
   lib/kunit/mock-macro-test.c:54:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   DEFINE_STRUCT_CLASS_MOCK_INIT(mock_macro_dummy_struct,
   ^
   static 
   include/kunit/mock.h:540:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_INIT'
                   struct MOCK(struct_name) *MOCK_INIT_ID(struct_name)(           \
                   ^
   9 warnings and 1 error generated.
--
>> lib/kunit/mock-test.c:28:33: warning: no previous prototype for function 'mock_add' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK(METHOD(mock_add), CLASS(adder), RETURNS(int),
                                   ^
   lib/kunit/mock-test.c:28:66: note: declare 'static' if the function is not intended to be used outside of this translation unit
   DEFINE_STRUCT_CLASS_MOCK(METHOD(mock_add), CLASS(adder), RETURNS(int),
                                                                    ^
   static 
   include/kunit/mock.h:191:30: note: expanded from macro 'RETURNS'
   #define RETURNS(return_type) return_type
                                ^
   include/kunit/mock.h:509:13: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                                                         return_type,             \
                                                         ^
   include/kunit/mock.h:471:15: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                                                                  return_type,    \
                                                                  ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:383:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT'
                                                    return_type,                  \
                                                    ^
   include/kunit/mock.h:368:8: note: expanded from macro 'DEFINE_MOCK_METHOD_CLIENT_COMMON'
                                             return_type,                         \
                                             ^
   include/kunit/mock.h:328:3: note: expanded from macro 'DEFINE_MOCK_CLIENT_COMMON'
                   return_type name(PARAM_LIST_FROM_TYPES(param_types))           \
                   ^
>> lib/kunit/mock-test.c:28:1: warning: no previous prototype for function 'mock_master_mock_add' [-Wmissing-prototypes]
   DEFINE_STRUCT_CLASS_MOCK(METHOD(mock_add), CLASS(adder), RETURNS(int),
   ^
   include/kunit/mock.h:506:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(name,                    \
                   ^
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:28: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                                            ^
   <scratch space>:10:1: note: expanded from here
   mock_master_mock_add
   ^
   lib/kunit/mock-test.c:28:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   include/kunit/mock.h:506:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(name,                    \
                   ^
   include/kunit/mock.h:468:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX'
                   DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL(name,           \
                   ^
   include/kunit/mock.h:459:3: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX_INTERNAL'
                   DEFINE_MOCK_COMMON(name,                                       \
                   ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/kunit/mock.h:427:3: note: expanded from macro 'DEFINE_MOCK_METHOD_MASTER'
                   DEFINE_MOCK_MASTER_COMMON(name,                                \
                   ^
   include/kunit/mock.h:420:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON'
                   DEFINE_MOCK_MASTER_COMMON_INTERNAL(name,                       \
                   ^
   include/kunit/mock.h:402:3: note: expanded from macro 'DEFINE_MOCK_MASTER_COMMON_INTERNAL'
                   struct mock_expectation *mock_master_##name(                   \
                   ^
>> lib/kunit/mock-test.c:46:1: error: too many arguments to function call, expected single argument 'mock_adder', have 2 arguments
   DEFINE_STRUCT_CLASS_MOCK_INIT(adder, adder_mock_init);
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/kunit/mock.h:553:24: note: expanded from macro 'DEFINE_STRUCT_CLASS_MOCK_INIT'
                           if (init_func(test, mock_obj))                         \
                               ~~~~~~~~~       ^~~~~~~~
   lib/kunit/mock-test.c:33:12: note: 'adder_mock_init' declared here
   static int adder_mock_init(struct MOCK(adder) *mock_adder)
              ^
   2 warnings and 1 error generated.
..

vim +/mock_test_struct +54 lib/kunit/mock-macro-test.c

    23	
  > 24	DEFINE_STRUCT_CLASS_MOCK(METHOD(one_param), CLASS(mock_macro_dummy_struct),
    25				 RETURNS(int),
    26				 PARAMS(struct mock_macro_dummy_struct *));
    27	
  > 28	DEFINE_STRUCT_CLASS_MOCK(METHOD(two_param), CLASS(mock_macro_dummy_struct),
    29				 RETURNS(int),
    30				 PARAMS(struct mock_macro_dummy_struct *, int));
    31	
  > 32	DEFINE_STRUCT_CLASS_MOCK_HANDLE_INDEX(METHOD(non_first_slot_param),
    33				 CLASS(mock_macro_dummy_struct), HANDLE_INDEX(1),
    34				 RETURNS(int),
    35				 PARAMS(int, struct mock_macro_dummy_struct *));
    36	
  > 37	DEFINE_STRUCT_CLASS_MOCK(METHOD(void_ptr_return),
    38				 CLASS(mock_macro_dummy_struct),
    39				 RETURNS(void *),
    40				 PARAMS(struct mock_macro_dummy_struct *));
    41	
    42	static int mock_macro_dummy_struct_init(
    43			struct MOCK(mock_macro_dummy_struct) *mock_test_struct)
    44	{
    45		struct mock_macro_dummy_struct *test_struct =
    46				mock_get_trgt(mock_test_struct);
    47	
    48		test_struct->one_param = one_param;
    49		test_struct->two_param = two_param;
    50		test_struct->non_first_slot_param = non_first_slot_param;
    51		return 0;
    52	}
    53	
  > 54	DEFINE_STRUCT_CLASS_MOCK_INIT(mock_macro_dummy_struct,
    55				      mock_macro_dummy_struct_init);
    56	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010131023.W6NJA2pb-lkp%40intel.com.

--7JfCtLOvnd9MIVvH
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--7JfCtLOvnd9MIVvH--
