Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2E7SX5QKGQEZQUTYRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBCC270971
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Sep 2020 02:25:13 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id t16sf4262692ply.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 17:25:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600475112; cv=pass;
        d=google.com; s=arc-20160816;
        b=hEsG8uNyTMViwtlqS/Xv5UStGPoJkeQ3aSe995kgr+5lnSNjmAB9iGeHaL97hy1XBT
         jP61Fuw4IMbf4Cyzz/dE5leHrO7CYg/ZfWiz8yNIfA5oFydqv00jimpoFLE9J2Q1DZG+
         vjE7LZKsPcqgGiX4g+hS6wxo7Oxwe65mAODLl/FWTbjoKfY5OoJHVOZoYBTk8xoqXvnE
         FJC3fib/o4CyIpG1kkRwTEdL5TVzmdDS4keTuK+eDsHHz3dNETwGXREIuBwpw+VdEC50
         ygACO/4d9JFFa8Znl9YPb9Bpnb6PI1vxpXqhWP0ihMBgy6lNqQxO+3iGTnytFvJMuo29
         UE4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=hFudqGqquEuZSru5N1baWGe2dE99OwvOUPjf0zPJ1Aw=;
        b=A3bdDtYOtb5eVt7gILCfUK2uOXmTrgQwpCa6s0RQG7tQi0NtG00UKj4MMP/Yj17wDx
         LViU3emIgQ/x0CK3lbldWBpKflIOwLl61umeIvXcNO5nxHSY2taWpplVIYs3sH078rru
         UQgbyeCW3JdW4ZLT6mN02w3NnarGI7znrb0JM0if8YpKWT8Xl2+8HNoQvy4FY1XNYYvE
         zYBmXcgwgZ8r9P8N0qc0yw/jkl2ZqBiHZOp1r5ht0aJKvY7J5baWY7kj5jkO2WGgj3g4
         pG7j07aUt/G0nTAEwBPUlgWIia230ZJMItbC4vrNfC0rLI0ybP2uknX0y4qJUqhUYtcL
         YvPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFudqGqquEuZSru5N1baWGe2dE99OwvOUPjf0zPJ1Aw=;
        b=sXgVrX5OgnoF+lNfGNlXejEE19zOwaqwlOZQhIGR9AKxskQzl4JkJmoDtOY1TkxzVE
         xo2jde6DJNngUwi46QobIZdZ/7kdADMM2roF3PUXbvIqPs4VDu0B9cH0usIy2JZIsKKt
         EfjBPrNh30Vfna08kxRhbPpu6cBAjwD8f1c2nujRuxSOZaJguccCWDVlX9BJaAkGAe82
         aCBMWsMWF6YsP9l1IxCAtaWwoeEB7zBmpknJSnJK9meqPmOGmQxKdmfYWPwNO6ppFQmQ
         PluUTIvG5eAFmLUwBd8zjwAjWWx2htxHGjiTI2jdj4c1ExOcrsbGApVqk6rb3eWHSxI6
         BH4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFudqGqquEuZSru5N1baWGe2dE99OwvOUPjf0zPJ1Aw=;
        b=DA4CrzZyLvd53ir8o8HzhW2eLdl9AEE2Q0GsXAFMUQdH+Y7RH33DXCl+A9+d9jDLs7
         BD6ygT1fkBERJql/jzgBT1jfYjk9hW6FvugbXJIIHXOU2Z2sXmt4T242zlZe/UAfidqI
         hgJrvAeiSualF4KneixavKqWsow+XJhTWD9X9+RmpPScQeH+6MBjXvBWEWkXirO/CJ5B
         NeyjBoRKVGwuSGU6gx2XEj0d7TwihnfB02jYWFISn6wTvM84+8BNqNXNN73+D7jCkFCk
         gJlTFn/vGG+Nhfmaf6K+TwZsmLWoG1w3UD7brSxw9aW+AgKlObSXRvoh2bK/RbOGa9x+
         syFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ycP6SbhbfYCNNGOyzIenxU1SJKD1wpAr+B0sGXo6GGDKiSBl6
	EZ3HJjSdcuXF2xamRm6Sng8=
X-Google-Smtp-Source: ABdhPJzs0La3KQ5NvEO6N/6VQYZhqFo2Xufk4qPb4u/+ljEmYRYEKsQZts1Myq4zOv/adLkR3lxrbw==
X-Received: by 2002:a17:90b:3c3:: with SMTP id go3mr16375290pjb.64.1600475112198;
        Fri, 18 Sep 2020 17:25:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls2720766pfq.0.gmail; Fri, 18 Sep
 2020 17:25:11 -0700 (PDT)
X-Received: by 2002:aa7:871a:0:b029:138:b052:3dc2 with SMTP id b26-20020aa7871a0000b0290138b0523dc2mr34541760pfo.1.1600475111457;
        Fri, 18 Sep 2020 17:25:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600475111; cv=none;
        d=google.com; s=arc-20160816;
        b=FCHw37Yy+4Ar0x5mMPWAKb8cYxR9ohiBpHNsFmSt2GPvtH/qS2cUijixR4I5bM66M0
         u2C98r74TSQdJypfmDZTpdRfXN2TtHpnyiwHXGGHSnOvpfZW3Y201ZE9pj9NtFdC2Tsh
         u8iJUL3nDzDzEjeBK0SGBIsOAA3qcfco3uBgE+elX+5Q0Li6/7uCANBIOem5O4BXMVbz
         UsB6mr5Co8F5iNqfQVci+y1Db6LxTeT7csMVqT/QkMIAH2HqzH+ZxAvDcKr81F6vguql
         6JPYV9g8MfsK+2Wr5poiGISxV6fp70kkbtGUJ1eIRh/Bf2cEu+KRCoOOh+k5gsJB2fTe
         vnyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=77rmzs4HNOzjG4wjDsr/4/x6ZyMk+aPTpKu+KLqd6Vg=;
        b=d2FeTrvoInjPFD4NNOAy02xVCG188OGDPD04smZSSog9uQssFeWSnUZPBeHv1ob+ph
         QIeS4Ax95aluicukZEzxvcj9QumlYT7RbpAlDlGI5bMNpVu6eZ1ipy4xDKz0koKOT0MF
         FvkFHS8W1JuYbkqBm/cOTV4I8Bmx1dsbzPO0IYmzWWYJyBUVSbPjHwg/bDY4sUUu7JLy
         ZvBKUWrspPiEzQdP3hSYQI2fU1YOxRyYqKL6ovoeGJ2T7DACTZUQ09xi2EHOk89gsSdM
         1R8Sp+ZcZuEbpb2bcHOFVPYMiWGZgY716FxDOfgA7WMd+HSe9e1NPaUXQsepxc9JZ72r
         MX4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id s3si908807pjk.3.2020.09.18.17.25.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Sep 2020 17:25:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: EHWsCHa7layCg14jNygiEYUTN2WLOWFAPJpDiqlCvnWg4gOM+g5XloWYNZb8LRT1duUgKqC/+S
 gN+1DYu6q9fg==
X-IronPort-AV: E=McAfee;i="6000,8403,9748"; a="178151186"
X-IronPort-AV: E=Sophos;i="5.77,276,1596524400"; 
   d="gz'50?scan'50,208,50";a="178151186"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Sep 2020 17:25:06 -0700
IronPort-SDR: 6yvSNwbHKVfbWi9pWuhyRtwD57fyd35BHqb9m5FWlBux1FSAEHy6QXPdiVEIHrMBA42HzKy/ou
 1N8lGJwkCt9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,276,1596524400"; 
   d="gz'50?scan'50,208,50";a="381088937"
Received: from lkp-server01.sh.intel.com (HELO a05db971c861) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 18 Sep 2020 17:25:03 -0700
Received: from kbuild by a05db971c861 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kJQgZ-0000nN-4u; Sat, 19 Sep 2020 00:25:03 +0000
Date: Sat, 19 Sep 2020 08:24:26 +0800
From: kernel test robot <lkp@intel.com>
To: Daniel Latypov <dlatypov@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC v1 08/12] kunit: mock: add basic matchers and actions
Message-ID: <202009190847.lHCvkJDK%lkp@intel.com>
References: <20200918183114.2571146-9-dlatypov@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline
In-Reply-To: <20200918183114.2571146-9-dlatypov@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Daniel,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on 10b82d5176488acee2820e5a2cf0f2ec5c3488b6]

url:    https://github.com/0day-ci/linux/commits/Daniel-Latypov/kunit-introduce-class-mocking-support/20200919-023253
base:    10b82d5176488acee2820e5a2cf0f2ec5c3488b6
config: arm-randconfig-r013-20200917 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0ff28fa6a75617d61b1aeea77463d6a1684c3c89)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

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
   <scratch space>:32:1: note: expanded from here
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
>> lib/kunit/common-mocks.c:105:1: warning: no previous prototype for function 'match_u8_eq' [-Wmissing-prototypes]
   DEFINE_MATCHER(u8);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:42:1: note: expanded from here
   match_u8_eq
   ^
   lib/kunit/common-mocks.c:105:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:105:1: warning: no previous prototype for function 'match_u8_ne' [-Wmissing-prototypes]
   DEFINE_MATCHER(u8);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:59:1: note: expanded from here
   match_u8_ne
   ^
   lib/kunit/common-mocks.c:105:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:105:1: warning: no previous prototype for function 'match_u8_le' [-Wmissing-prototypes]
   DEFINE_MATCHER(u8);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:94:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, le, <=)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:76:1: note: expanded from here
   match_u8_le
   ^
   lib/kunit/common-mocks.c:105:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:94:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, le, <=)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:105:1: warning: no previous prototype for function 'match_u8_lt' [-Wmissing-prototypes]
   DEFINE_MATCHER(u8);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:96:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, lt, <)                      \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:93:1: note: expanded from here
   match_u8_lt
   ^
   lib/kunit/common-mocks.c:105:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:96:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, lt, <)                      \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:105:1: warning: no previous prototype for function 'match_u8_ge' [-Wmissing-prototypes]
   DEFINE_MATCHER(u8);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:110:1: note: expanded from here
   match_u8_ge
   ^
   lib/kunit/common-mocks.c:105:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:105:1: warning: no previous prototype for function 'match_u8_gt' [-Wmissing-prototypes]
   DEFINE_MATCHER(u8);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:127:1: note: expanded from here
   match_u8_gt
   ^
   lib/kunit/common-mocks.c:105:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
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
   <scratch space>:145:1: note: expanded from here
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
>> lib/kunit/common-mocks.c:106:1: warning: no previous prototype for function 'match_u16_eq' [-Wmissing-prototypes]
   DEFINE_MATCHER(u16);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:155:1: note: expanded from here
   match_u16_eq
   ^
   lib/kunit/common-mocks.c:106:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:106:1: warning: no previous prototype for function 'match_u16_ne' [-Wmissing-prototypes]
   DEFINE_MATCHER(u16);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:172:1: note: expanded from here
   match_u16_ne
   ^
   lib/kunit/common-mocks.c:106:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:106:1: warning: no previous prototype for function 'match_u16_le' [-Wmissing-prototypes]
   DEFINE_MATCHER(u16);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:94:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, le, <=)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:189:1: note: expanded from here
   match_u16_le
   ^
   lib/kunit/common-mocks.c:106:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:94:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, le, <=)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:106:1: warning: no previous prototype for function 'match_u16_lt' [-Wmissing-prototypes]
   DEFINE_MATCHER(u16);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:96:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, lt, <)                      \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:206:1: note: expanded from here
   match_u16_lt
   ^
   lib/kunit/common-mocks.c:106:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:96:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, lt, <)                      \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:106:1: warning: no previous prototype for function 'match_u16_ge' [-Wmissing-prototypes]
   DEFINE_MATCHER(u16);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:223:1: note: expanded from here
   match_u16_ge
   ^
   lib/kunit/common-mocks.c:106:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:106:1: warning: no previous prototype for function 'match_u16_gt' [-Wmissing-prototypes]
   DEFINE_MATCHER(u16);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:240:1: note: expanded from here
   match_u16_gt
   ^
   lib/kunit/common-mocks.c:106:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
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
   <scratch space>:258:1: note: expanded from here
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
>> lib/kunit/common-mocks.c:107:1: warning: no previous prototype for function 'match_u32_eq' [-Wmissing-prototypes]
   DEFINE_MATCHER(u32);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:268:1: note: expanded from here
   match_u32_eq
   ^
   lib/kunit/common-mocks.c:107:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:90:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, eq, ==)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:107:1: warning: no previous prototype for function 'match_u32_ne' [-Wmissing-prototypes]
   DEFINE_MATCHER(u32);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:285:1: note: expanded from here
   match_u32_ne
   ^
   lib/kunit/common-mocks.c:107:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:92:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ne, !=)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:107:1: warning: no previous prototype for function 'match_u32_le' [-Wmissing-prototypes]
   DEFINE_MATCHER(u32);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:94:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, le, <=)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:302:1: note: expanded from here
   match_u32_le
   ^
   lib/kunit/common-mocks.c:107:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:94:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, le, <=)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:107:1: warning: no previous prototype for function 'match_u32_lt' [-Wmissing-prototypes]
   DEFINE_MATCHER(u32);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:96:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, lt, <)                      \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:15:1: note: expanded from here
   match_u32_lt
   ^
   lib/kunit/common-mocks.c:107:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:96:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, lt, <)                      \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
>> lib/kunit/common-mocks.c:107:1: warning: no previous prototype for function 'match_u32_ge' [-Wmissing-prototypes]
   DEFINE_MATCHER(u32);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:32:1: note: expanded from here
   match_u32_ge
   ^
   lib/kunit/common-mocks.c:107:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:98:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, ge, >=)                     \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
   lib/kunit/common-mocks.c:107:1: warning: no previous prototype for function 'match_u32_gt' [-Wmissing-prototypes]
   DEFINE_MATCHER(u32);
   ^
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^
   lib/kunit/common-mocks.c:46:8: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                        ^
   <scratch space>:49:1: note: expanded from here
   match_u32_gt
   ^
   lib/kunit/common-mocks.c:107:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   lib/kunit/common-mocks.c:103:30: note: expanded from macro 'DEFINE_MATCHER'
   #define DEFINE_MATCHER(type) DEFINE_MATCHER_WITH_TYPENAME(type, type)
                                ^
   lib/kunit/common-mocks.c:100:3: note: expanded from macro 'DEFINE_MATCHER_WITH_TYPENAME'
                   DEFINE_MATCH_FUNC(type_name, type, gt, >)                      \
                   ^
   lib/kunit/common-mocks.c:46:3: note: expanded from macro 'DEFINE_MATCH_FUNC'
                   bool match_##type_name##_##op_name(                            \
                   ^
   lib/kunit/common-mocks.c:108:1: warning: no previous prototype for function 'to_mock_u64_matcher' [-Wmissing-prototypes]
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
   <scratch space>:67:1: note: expanded from here
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

# https://github.com/0day-ci/linux/commit/32db0336f68431c2ad957f5dcd80ce827488660f
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Daniel-Latypov/kunit-introduce-class-mocking-support/20200919-023253
git checkout 32db0336f68431c2ad957f5dcd80ce827488660f
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009190847.lHCvkJDK%25lkp%40intel.com.

--HlL+5n6rz5pIUxbD
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HlL+5n6rz5pIUxbD--
