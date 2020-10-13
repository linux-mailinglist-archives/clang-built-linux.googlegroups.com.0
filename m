Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG4TST6AKGQETJCU47I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FFF28C6F3
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 03:57:48 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id b10sf2745496uaw.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 18:57:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602554267; cv=pass;
        d=google.com; s=arc-20160816;
        b=tGIb1kLScwL+GjPyEOaa8uPW3hYSaFIGdSo4JTsuv7OBtstAKQoxTa9+5pBoNOuWAy
         /siUeRlOmpmBrcsE0m2NUlFbp9o37wRfLd2jxNJcdUcqXqLZl7saP0+drccGQugEmujJ
         pOtLt1fy0eZvxzgb+Uj1AHB/DqltExZJN3j9ZaFhOuOcsU3U7gk9dhaTf8/wa6LgIdHo
         MV8eGfByqv7l4pqBg2SUSqZxgusUNivQ5t+6MWQykBAhtc5d3X449xBEsaw2oOgegSsK
         9DZiD266/qqtHyJBtPZZy7toMmhoL8o8h3zcaekL0nRd54DBhAiXne9UpfbeRS8KDw7N
         azWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=wVz+PcMh/fxwu5aXGKenJ5PkkDZYZ/QYPXvuWGXkssQ=;
        b=BXO3VipX5ZhnlYsFjpGkhy6h+8YDP/IFULBfZ00hGcUJCiAwAYfg4kDSGYQdoveUDN
         znXLYrJ7rTnH57tnMui5r/LFapWiMqZIgCIPOhg5R+96/PXktunwQ2SQUXOIUP4gNbaV
         Ti76Fu4QODU0mmfk39LERSTBwolm7GSHNGzwNx2g6NGMs85xeyKEmsFSYJ1KEaraGjmG
         A2FMfFdvX1myrtSJ/9WVkh6aEdD4CNdkrKw1+cN+4tDEP2gyWgaNGTX5jCpLa5IAt55O
         57t8xwOZ32N2Eyj1gBvcEzb/AkvFGsxBQAMrChdu8i7P96BhuLCCP1D0oX9UGsV2cUXk
         v56Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wVz+PcMh/fxwu5aXGKenJ5PkkDZYZ/QYPXvuWGXkssQ=;
        b=hbU28P/tt2SE4hODoULXGAWXU1aRcqGVQxD382yzO/W7oBNZeR13LETAWVcZm1gMJ8
         aKj9p7xkjRqJm98sytwRsZQEReddH4ILGH3Siti3Rq5PSlqx3ZlOCfeJEyTvj9LWCpeH
         oa/Z+Cec3SO0ZZDgRMYUWJZ1i/W2DCpKmsuhmAIBQ1I5Stw8WVRgX36ARqtQsTSrA2Kr
         B7mOk9KMReh9Dbr/6I/Q2ohJdAyZ07ZKgmV886oLmq2Z7ov60i/7W7DgbIdHfhqXZXfY
         NrlzaJCe5jBSXHTgdCXJ3SWRIAxIYFIH9C3c2neTu1vvtluH+hk3TNn72nbUOLh/cU8Y
         o/1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wVz+PcMh/fxwu5aXGKenJ5PkkDZYZ/QYPXvuWGXkssQ=;
        b=XjUk420gbV05bWSIww06CtgYVdVAI1ee5VGIU75wc8goiUMkzjYcy64VlLe94RxPpc
         xY9mhqUAC+YA9u3Xs6yARIQFlgUacg715nYEMRK2iZHLzmqzUcSeb24v2eP7Sgp2cweR
         Pe2tGpoS8eiE5ikSjU2e/6wmL7d1kKnDJvm/lJpC3iLAnWiWv7foB1xmJ73E4VtMNHpY
         Cqwr3+uCRK07s6e0m1ZngyCyhE/wN/4ojc3XplbDU8Uku9W9VAXFPFo7QUHPOOoSm5jE
         6m0UsrSzPnSpsbTMe43CR90nA3FuAouGV+9kibYdLPS45w/KZID0Mytns8uak72OKXd5
         Hezg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QNeZi5h/FlPet8RyjhPNaC0x5nw5PCQBF6ILBOISvoKR8TmFb
	wvNN7/GM0z8xn6jFQC0TTqs=
X-Google-Smtp-Source: ABdhPJxpvc9DLrkc4gltEn8oGA/sCuJlpDW2BoIY52e+gjqtI/nep/kMdp0oo4GtpXo3M/GtU3EiAQ==
X-Received: by 2002:ab0:907:: with SMTP id w7mr10876237uag.100.1602554267420;
        Mon, 12 Oct 2020 18:57:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2442:: with SMTP id g2ls1246453uan.8.gmail; Mon, 12 Oct
 2020 18:57:46 -0700 (PDT)
X-Received: by 2002:ab0:6dc8:: with SMTP id r8mr14821725uaf.73.1602554266729;
        Mon, 12 Oct 2020 18:57:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602554266; cv=none;
        d=google.com; s=arc-20160816;
        b=eX21Jo14Ax6FcPfd7918TyDsOcLoUjLbJPQGp6yd7VKj4gn/JbpdcOjxlbT0FLPlne
         UFNpUDCZgP246XKnNI8stZcp896pljwtZW65v5L6LOh9QQg4PWcSeiNY0VdlijUdSoem
         2t+7bWkB+h7Y6RHLsnGqV1n8uHm5DaxdQO7/7ccVOH0hy8EC+/jf64H8z5/y+LqBDzed
         C0zFpWWT3NkkkSQf92xNWnFO2FC9qFk4RuKb0N3G4+dMzla8Js84QBwqE0oY9spmSFAg
         Rave32qdNp2EHGyxdbst/2QtvtopEpp+OYQTS0nRBsF1O20G8RkbaiN1IMeAIbAFnSuA
         I6rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Xi/7CQ5n1rLLC6ZtADGofLRZZBH/2I0IwYcE4PJXVpg=;
        b=CW9EXyLenWLEpmOtAYCimNlDDd1FtL4BHhBHDVZ6I1LqjKDO83Lv39YRjxkjZokBaA
         wuVrwTPs9EzcHHAdnNocEQvmhvLUHYaQYBBos+DCrqirMbfSUq+v1DiuM6WyM+XKses6
         q+mHbq0QE9EnjnnXV47usCvkJ/oDxxajqAtcUDRzGf4dmjYQYWw/l10JAzasc6g8DAQU
         MTVaTbQ/h93eUroSHkk1GdPBYcny0f2Q1VjzqWnvGewHo22cTEBPsYCwhZiDpc1aGA/g
         I215DMEbHcxhtK8KtdP1Idy1KgGRLLs9OcrTMLafThkvk/lBouW2Ut+oeGJ+Qlp8gqZB
         aYbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id t24si2086600vsn.1.2020.10.12.18.57.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 18:57:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: TdbIjZ5G21gfgRsF6Vx7tbZpa+oIXe3jTEUUzpzDqdUzBHqbvA2zBeJ9cqlrRPGt+OKSrM2krW
 QQ+lj+oWcGdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="250526732"
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; 
   d="gz'50?scan'50,208,50";a="250526732"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2020 18:57:44 -0700
IronPort-SDR: 2ff56h+jcHI83vTyKcakmHQuD/eDuoMTSjld2uHtacPj4xd83xCqDqUcfhksGY5sBzHCmgB8vj
 34bGteEvFZFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; 
   d="gz'50?scan'50,208,50";a="519806092"
Received: from lkp-server01.sh.intel.com (HELO aa1d92d39b27) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 12 Oct 2020 18:57:42 -0700
Received: from kbuild by aa1d92d39b27 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kS9ZO-0000Fn-0f; Tue, 13 Oct 2020 01:57:42 +0000
Date: Tue, 13 Oct 2020 09:57:24 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Latypov <dlatypov@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC v2 08/12] kunit: mock: add basic matchers and actions
Message-ID: <202010130905.OO2S8W7J-lkp@intel.com>
References: <20201012222050.999431-9-dlatypov@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline
In-Reply-To: <20201012222050.999431-9-dlatypov@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on 10b82d5176488acee2820e5a2cf0f2ec5c3488b6]

url:    https://github.com/0day-ci/linux/commits/Daniel-Latypov/kunit-introduce-class-mocking-support/20201013-062218
base:    10b82d5176488acee2820e5a2cf0f2ec5c3488b6
config: powerpc64-randconfig-r031-20201012 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a324d8f964bf421fa7d8b882b0f64ead28c4149c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/6189c327549d0bbce5bb21f28fb607f7ea04976e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Daniel-Latypov/kunit-introduce-class-mocking-support/20201013-062218
        git checkout 6189c327549d0bbce5bb21f28fb607f7ea04976e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> lib/kunit/common-mocks.c:105:1: warning: no previous prototype for function 'to_mock_u8_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER(u8);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:55:1: note: expanded from here
   to_mock_u8_matcher
   ^
   lib/kunit/common-mocks.c:105:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:106:1: warning: no previous prototype for function 'to_mock_u16_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER(u16);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:168:1: note: expanded from here
   to_mock_u16_matcher
   ^
   lib/kunit/common-mocks.c:106:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:107:1: warning: no previous prototype for function 'to_mock_u32_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER(u32);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:281:1: note: expanded from here
   to_mock_u32_matcher
   ^
   lib/kunit/common-mocks.c:107:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:108:1: warning: no previous prototype for function 'to_mock_u64_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER(u64);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:89:1: note: expanded from here
   to_mock_u64_matcher
   ^
   lib/kunit/common-mocks.c:108:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:59:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:60:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:64:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:65:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:59:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:60:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
--
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:65:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:59:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:60:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:64:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:65:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:59:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:60:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:64:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:108:1: warning: format specifies type 'int' but the argument has type 'u64' (aka 'unsigned long long') [-Wformat]
   DEFINE_MATCHER(u64);
   ^~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:65:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
>> lib/kunit/common-mocks.c:109:1: warning: no previous prototype for function 'to_mock_char_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER(char);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:202:1: note: expanded from here
   to_mock_char_matcher
   ^
   lib/kunit/common-mocks.c:109:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:110:1: warning: no previous prototype for function 'to_mock_uchar_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER_WITH_TYPENAME(uchar, unsigned char);
   ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:6:1: note: expanded from here
   to_mock_uchar_matcher
   ^
   lib/kunit/common-mocks.c:110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:111:1: warning: no previous prototype for function 'to_mock_schar_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER_WITH_TYPENAME(schar, signed char);
   ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:119:1: note: expanded from here
   to_mock_schar_matcher
   ^
   lib/kunit/common-mocks.c:111:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:112:1: warning: no previous prototype for function 'to_mock_short_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER(short);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:232:1: note: expanded from here
   to_mock_short_matcher
   ^
   lib/kunit/common-mocks.c:112:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:113:1: warning: no previous prototype for function 'to_mock_ushort_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER_WITH_TYPENAME(ushort, unsigned short);
   ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:67:1: note: expanded from here
   to_mock_ushort_matcher
   ^
   lib/kunit/common-mocks.c:113:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:114:1: warning: no previous prototype for function 'to_mock_int_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER(int);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:180:1: note: expanded from here
   to_mock_int_matcher
   ^
   lib/kunit/common-mocks.c:114:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:115:1: warning: no previous prototype for function 'to_mock_uint_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER_WITH_TYPENAME(uint, unsigned int);
   ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:7:1: note: expanded from here
   to_mock_uint_matcher
   ^
   lib/kunit/common-mocks.c:115:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
>> lib/kunit/common-mocks.c:116:1: warning: no previous prototype for function 'to_mock_long_matcher' [-Wmissing-prototypes]
   DEFINE_MATCHER(long);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:37:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   to_mock_##type_name##_matcher(                                 \
                   ^
   <scratch space>:120:1: note: expanded from here
   to_mock_long_matcher
   ^
   lib/kunit/common-mocks.c:116:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:89:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_TO_MATCHER_STRUCT(type_name)                            \
                   ^
   lib/kunit/common-mocks.c:36:3: note: expanded from macro 'DEFINE_TO_MATCHER_STRUCT'
                   struct mock_##type_name##_matcher *                            \
                   ^
   lib/kunit/common-mocks.c:116:1: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
   DEFINE_MATCHER(long);
   ^~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:59:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:116:1: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
   DEFINE_MATCHER(long);
   ^~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:60:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:116:1: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
   DEFINE_MATCHER(long);
   ^~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:64:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:116:1: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
   DEFINE_MATCHER(long);
   ^~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:65:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:116:1: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
   DEFINE_MATCHER(long);
   ^~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:59:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    actual,                       \
                                                    ^~~~~~
   lib/kunit/common-mocks.c:116:1: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
   DEFINE_MATCHER(long);
   ^~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:60:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                                                    matcher->expected);           \
                                                    ^~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:116:1: warning: format specifies type 'int' but the argument has type 'long' [-Wformat]
   DEFINE_MATCHER(long);
   ^~~~~~~~~~~~~~~~~~~~
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
..

vim +/to_mock_u8_matcher +105 lib/kunit/common-mocks.c

   104	
 > 105	DEFINE_MATCHER(u8);
 > 106	DEFINE_MATCHER(u16);
 > 107	DEFINE_MATCHER(u32);
 > 108	DEFINE_MATCHER(u64);
 > 109	DEFINE_MATCHER(char);
 > 110	DEFINE_MATCHER_WITH_TYPENAME(uchar, unsigned char);
 > 111	DEFINE_MATCHER_WITH_TYPENAME(schar, signed char);
 > 112	DEFINE_MATCHER(short);
 > 113	DEFINE_MATCHER_WITH_TYPENAME(ushort, unsigned short);
 > 114	DEFINE_MATCHER(int);
 > 115	DEFINE_MATCHER_WITH_TYPENAME(uint, unsigned int);
 > 116	DEFINE_MATCHER(long);
 > 117	DEFINE_MATCHER_WITH_TYPENAME(ulong, unsigned long);
 > 118	DEFINE_MATCHER_WITH_TYPENAME(longlong, long long);
 > 119	DEFINE_MATCHER_WITH_TYPENAME(ulonglong, unsigned long long);
   120	
 > 121	DEFINE_MATCHER_WITH_TYPENAME(ptr, void *);
   122	
   123	struct mock_memeq_matcher {
   124		struct mock_param_matcher matcher;
   125		const void *expected;
   126		size_t size;
   127	};
   128	
   129	static bool match_memeq(struct mock_param_matcher *pmatcher,
   130				struct kunit_stream *stream,
   131				const void *pactual)
   132	{
   133		struct mock_memeq_matcher *matcher =
   134				container_of(pmatcher,
   135					     struct mock_memeq_matcher,
   136					     matcher);
   137		const void *actual = CONVERT_TO_ACTUAL_TYPE(const void *, pactual);
   138		bool matches = !memcmp(actual, matcher->expected, matcher->size);
   139		int i;
   140	
   141		for (i = 0; i < matcher->size; i++)
   142			kunit_stream_add(stream, "%02x, ", ((const char *) actual)[i]);
   143		if (matches)
   144			kunit_stream_add(stream, "== ");
   145		else
   146			kunit_stream_add(stream, "!= ");
   147		for (i = 0; i < matcher->size; i++)
   148			kunit_stream_add(stream,
   149				    "%02x, ",
   150				    ((const char *) matcher->expected)[i]);
   151	
   152		return matches;
   153	}
   154	
   155	struct mock_param_matcher *kunit_memeq(struct kunit *test,
   156					      const void *buf,
   157					      size_t size)
   158	{
   159		struct mock_memeq_matcher *matcher;
   160	
   161		matcher = kunit_kzalloc(test, sizeof(*matcher), GFP_KERNEL);
   162		if (!matcher)
   163			return NULL;
   164	
   165		matcher->matcher.match = match_memeq;
   166		matcher->expected = buf;
   167		matcher->size = size;
   168	
   169		return &matcher->matcher;
   170	}
   171	
   172	struct mock_streq_matcher {
   173		struct mock_param_matcher matcher;
   174		const char *expected;
   175	};
   176	
   177	static bool match_streq(struct mock_param_matcher *pmatcher,
   178				struct kunit_stream *stream,
   179				const void *pactual)
   180	{
   181		struct mock_streq_matcher *matcher =
   182				container_of(pmatcher,
   183					     struct mock_streq_matcher,
   184					     matcher);
   185		const char *actual = CONVERT_TO_ACTUAL_TYPE(const char *, pactual);
   186		bool matches = !strcmp(actual, matcher->expected);
   187	
   188		if (matches)
   189			kunit_stream_add(stream, "%s == %s", actual, matcher->expected);
   190		else
   191			kunit_stream_add(stream, "%s != %s", actual, matcher->expected);
   192	
   193		return matches;
   194	}
   195	
   196	struct mock_param_matcher *kunit_streq(struct kunit *test, const char *str)
   197	{
   198		struct mock_streq_matcher *matcher;
   199	
   200		matcher = kunit_kzalloc(test, sizeof(*matcher), GFP_KERNEL);
   201		if (!matcher)
   202			return NULL;
   203	
   204		matcher->matcher.match = match_streq;
   205		matcher->expected = str;
   206	
   207		return &matcher->matcher;
   208	}
   209	
   210	#define DEFINE_RETURN_ACTION_STRUCT(type_name, type)			       \
   211			struct mock_##type_name##_action {			       \
   212				struct mock_action action;			       \
   213				type ret;					       \
   214			}
   215	
   216	#define DEFINE_RETURN_ACTION_FUNC(type_name, type)			       \
   217			void *do_##type_name##_return(struct mock_action *paction,     \
   218						      const void **params,	       \
   219						      int len)			       \
   220			{							       \
   221				struct mock_##type_name##_action *action =	       \
   222						container_of(paction,		       \
   223							     struct mock_##type_name##_action,\
   224							     action);		       \
   225										       \
   226				return (void *) &action->ret;			       \
   227			}
   228	
   229	#define DEFINE_RETURN_ACTION_FACTORY(type_name, type)			       \
   230			struct mock_action *kunit_##type_name##_return(		       \
   231					struct kunit *test,			       \
   232					type ret)				       \
   233			{							       \
   234				struct mock_##type_name##_action *action;	       \
   235										       \
   236				action = kunit_kmalloc(test,			       \
   237						      sizeof(*action),		       \
   238						      GFP_KERNEL);		       \
   239				if (!action)					       \
   240					return NULL;				       \
   241										       \
   242				action->action.do_action = do_##type_name##_return;    \
   243				action->ret = ret;				       \
   244										       \
   245				return &action->action;				       \
   246			}
   247	
   248	#define DEFINE_RETURN_ACTION_WITH_TYPENAME(type_name, type)		       \
   249			DEFINE_RETURN_ACTION_STRUCT(type_name, type);		       \
   250			DEFINE_RETURN_ACTION_FUNC(type_name, type);		       \
   251			DEFINE_RETURN_ACTION_FACTORY(type_name, type)
   252	
   253	#define DEFINE_RETURN_ACTION(type) \
   254			DEFINE_RETURN_ACTION_WITH_TYPENAME(type, type)
   255	
 > 256	DEFINE_RETURN_ACTION(u8);
 > 257	DEFINE_RETURN_ACTION(u16);
 > 258	DEFINE_RETURN_ACTION(u32);
 > 259	DEFINE_RETURN_ACTION(u64);
 > 260	DEFINE_RETURN_ACTION(char);
 > 261	DEFINE_RETURN_ACTION_WITH_TYPENAME(uchar, unsigned char);
 > 262	DEFINE_RETURN_ACTION_WITH_TYPENAME(schar, signed char);
 > 263	DEFINE_RETURN_ACTION(short);
 > 264	DEFINE_RETURN_ACTION_WITH_TYPENAME(ushort, unsigned short);
 > 265	DEFINE_RETURN_ACTION(int);
 > 266	DEFINE_RETURN_ACTION_WITH_TYPENAME(uint, unsigned int);
 > 267	DEFINE_RETURN_ACTION(long);
 > 268	DEFINE_RETURN_ACTION_WITH_TYPENAME(ulong, unsigned long);
 > 269	DEFINE_RETURN_ACTION_WITH_TYPENAME(longlong, long long);
 > 270	DEFINE_RETURN_ACTION_WITH_TYPENAME(ulonglong, unsigned long long);
 > 271	DEFINE_RETURN_ACTION_WITH_TYPENAME(ptr, void *);

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010130905.OO2S8W7J-lkp%40intel.com.

--ReaqsoxgOBHFXBhH
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
gjTr+44JAgA=

--ReaqsoxgOBHFXBhH--
