Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM4N66BQMGQEMLEDS5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 450023649A0
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 20:06:45 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id q60-20020a17090a7542b02900ddfd0d8edcsf15897925pjk.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 11:06:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618855604; cv=pass;
        d=google.com; s=arc-20160816;
        b=A8SKyQhA/Sah83cdhwIelrWq0mLjESwJS8ilpy9GeAwqe+k3HlaFeeivbWqSab8jp/
         eoApeaaoL5g3mVpp6AhscbIzXgSt1oIRrvGqfl0z/uFfBiUEQKBW1ev06hTdcF5Z0qyO
         y5HG63ySQhgZdZhjOnylzBu4vWjhyzB0UPRf3hUbpE99ObFOBhqJUUhbtQTfkK5uomkC
         8Djnz+umXoqcQ1qk/rHkH62Z7gNKy2XgtSzXBEM5Jnq1C1rZ4amECe6DIwlAUt/PR2EB
         SLHoqLRosEr0gjJDS4fG/SNiMkocTKBNGBIjO1ueREP83jPZ8U/aahoT8U5VJ44+1ZGX
         BtBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=K6kiFVf6TGlb01w2GxuUJDXRdTBAjeNnkisgpmRl1wg=;
        b=hjMXV7Nr/YO0kpVz4irretJDiUqdOjAXEns8e5nzQqHDiSDYkkfe3bKwz8KQ0L2/r9
         It7qVWZjj6uvcLbz+bb+XRe1dGTiIT8M9KgM47q5hZlqQ1yXgwhCCFL0NkZJP0Fy2Ggf
         6AXFow35q/4yO411EESnRfYU5fP7bs+X4tgO6H+OBolAITtebpXwNXtjEc0HZVYSUy68
         NwehHOzJQg6yO3IZ2q/T9WdcqVN1fCo21q9g6bI5kLHTwvJqp4ea8SvycUEuEOE6tBbT
         OLnrEIX91BH1DYQThR/YEk6fFVKEVj4xp0M+hpRAF86mU1NfmIOxIfKXegKHGrRKEJXH
         doRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K6kiFVf6TGlb01w2GxuUJDXRdTBAjeNnkisgpmRl1wg=;
        b=o1R+SZZiUCCoBR1Iq/o3QzpNdqrswbcTAEXXcdvSOp4a4uvjTHQsaUDCwof3916LM3
         kcT21rgiDlBTivBOkt9kLSEicegoGK8WdJTgjsgpxj7qoDOWVkQsZQYAIU9BgFGzI0Ct
         xs49KaJ0pElvtx5MwmioEJfspEcj5Bnq0Ho1buKGYTu2yakhpOPyfY2rwleOov4dYq7u
         anp+ibrz08hl5xDqa1h6Sq3IV/SIc0AVX4kKTJS2SoeSRC+zswnr/+2WpN1FqX1sIrGQ
         CuTXi9aAvhDVaWk3yuejvLyGHZnXonuh6yx+K43DLQ3wBQziZF30OGxA8aa0XFDf1zSS
         LiYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=K6kiFVf6TGlb01w2GxuUJDXRdTBAjeNnkisgpmRl1wg=;
        b=dj6j+Ua5daadjB669k9fqpLZZfra7WIkYgF9f2gbwgzQTIod6iopCxYFtLTFHC+ny1
         pRZ+1TKNHjeSBH9cI3Tb3sDgEuxJp9hCGrb+qGEnvny2RimKpe1ZfQ4S1avdd2AbDNeP
         71gOjnr252Pti2Zbw7O++68mnYy4RwagqvUvrapfSz11MKS3KHDGHD/7dgHt2dO5LBIS
         3UfsjmP8mXjxynYSRPXuENQLwnFnTrIgRIy2AxEZsk7IqOt71iI0ojuk1+qZicU44ggn
         KQl2d1kaaQzURND24q6C28e+Mz2t9k6lV7YxVp5csIv5UbkFJCPyzvx6hvOdf4PGecS4
         7ITw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xqYFSjtmRayFGpWCtG5W5GvMmORl7eo/1DMHuIv4zD6/V42eH
	klsWlAIrE8igGq+k4MnoRHk=
X-Google-Smtp-Source: ABdhPJxmJs+rbqp8YME7o/lwvapDUE6A8fwxx7OfTRtd5fRZ+T3xqhtdY9VW+wrOE4C91Ft1E+JOTg==
X-Received: by 2002:a17:90a:6282:: with SMTP id d2mr341181pjj.168.1618855603865;
        Mon, 19 Apr 2021 11:06:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:63c5:: with SMTP id x188ls5166482pfb.7.gmail; Mon, 19
 Apr 2021 11:06:43 -0700 (PDT)
X-Received: by 2002:a63:ed58:: with SMTP id m24mr13396024pgk.248.1618855602955;
        Mon, 19 Apr 2021 11:06:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618855602; cv=none;
        d=google.com; s=arc-20160816;
        b=WNL+eMRCdM/9k6hYM4rutg90WmBDwEc03YJS6mBJaBBusHZe+mXszQ2FzrYDz9pBQ5
         Wuj6DHF3d+p1UDjMQKKTdGt+Ynll2vwkbEsYkGdZGup5rbk2E5oWPtcuGKPnsh0YF9yM
         NYNxg6ScopHPEcmdjlrApaIIdh452VaYvhLojwW5FrJ+jPRZ41qe6jJJvOtRjrT//xgB
         BaJko8xGxDk2pNS75iDF+WioYDNVDkxI2QYUfWQxfw4M5tOPAOs7RIzj2J0NW1V6QBgO
         u0pth6VjG+awDJk8iZGiytHYXJkHpOGi1dpzx641mcotjtTMfnEkGuq9FZ6MSeqAZ5nc
         yZaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=sew0zOykHG61KFmaX25y1kxlIioNKKtsk96chWNRTnM=;
        b=RstUziHfbOjD2tVlng8fZdSh6P9DS6dSscm91PMzM2A9v/ZI5eGiMm9WzulKIHHkfr
         EIgdZEeOZX84GdOm7K5Ii0oOgBNzwPmv0j0D2ysjEoizNNGbl9YGK/sIsf8hKJka6hu7
         0UtLQuw89FrrZRB5xjNJQrIirBP8ab11Lx/7NSuBI+AUiuQchCUqxIeSvwYB9jj+JpEg
         TN0uC2wtAnjToZcx89K1cUf2aDcS0AbirErDPGC1btbn0LjMBlRldHkbpygroaJTE8e9
         LddDute3S7P0R09GpGk6DIgSvizjy4v7ziDRe0rNUboeQoNOK2D60lQVQsROC9BiOcXV
         TO2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id i17si114042pjl.0.2021.04.19.11.06.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 11:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 8ntnCuoOvvuOvpe6ayXYWK9ixd3w/IOm3oi9jNwBMSeWP/4amyRdTe2o02Ok4i4kIb/ZRkMqSg
 RhAFAdLqxmRQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9959"; a="194932879"
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; 
   d="gz'50?scan'50,208,50";a="194932879"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Apr 2021 11:06:42 -0700
IronPort-SDR: GgaOxHbnuqcx0yF1wejibl0S5Q7NFOKB3cj/bngbC/bfBIyEG0oMIwCQZOjJGQ4kFi6JzAcJ0l
 BCA2SbsdFOOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,234,1613462400"; 
   d="gz'50?scan'50,208,50";a="523515272"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 19 Apr 2021 11:06:39 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lYYIA-0001pl-Uy; Mon, 19 Apr 2021 18:06:38 +0000
Date: Tue, 20 Apr 2021 02:06:06 +0800
From: kernel test robot <lkp@intel.com>
To: Guo Ren <guoren@linux.alibaba.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [csky-linux:v5.12-rc4-riscv-atomic-arch-v3 4/5]
 lib/atomic64_test.c:177:2: error: implicit declaration of function
 'atomic64_sub_return_acquire'
Message-ID: <202104200254.oaaalUN6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
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


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/c-sky/csky-linux v5.12-rc4-riscv-atomic-arch-v3
head:   516baf028b48129e1941ad764ef9a13271830bdc
commit: d985500eec5b9fa31462e5aa2b712b719d0de356 [4/5] locking/atomics: Fixup GENERIC_ATOMIC64 conflict with atomic-arch-fallback.h
config: powerpc64-randconfig-r022-20210419 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 2b50f5a4343f8fb06acaa5c36355bcf58092c9cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/c-sky/csky-linux/commit/d985500eec5b9fa31462e5aa2b712b719d0de356
        git remote add csky-linux https://github.com/c-sky/csky-linux
        git fetch --no-tags csky-linux v5.12-rc4-riscv-atomic-arch-v3
        git checkout d985500eec5b9fa31462e5aa2b712b719d0de356
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> lib/atomic64_test.c:177:2: error: implicit declaration of function 'atomic64_sub_return_acquire' [-Werror,-Wimplicit-function-declaration]
           RETURN_FAMILY_TEST(64, sub_return, -=, onestwos);
           ^
   lib/atomic64_test.c:64:14: note: expanded from macro 'RETURN_FAMILY_TEST'
           FAMILY_TEST(TEST_RETURN, bit, op, c_op, val);           \
                       ^
   lib/atomic64_test.c:177:2: note: did you mean 'atomic_sub_return_acquire'?
   lib/atomic64_test.c:64:14: note: expanded from macro 'RETURN_FAMILY_TEST'
           FAMILY_TEST(TEST_RETURN, bit, op, c_op, val);           \
                       ^
   include/linux/atomic-fallback.h:285:1: note: 'atomic_sub_return_acquire' declared here
   atomic_sub_return_acquire(int i, atomic_t *v)
   ^
>> lib/atomic64_test.c:177:2: error: implicit declaration of function 'atomic64_sub_return_release' [-Werror,-Wimplicit-function-declaration]
           RETURN_FAMILY_TEST(64, sub_return, -=, onestwos);
           ^
   lib/atomic64_test.c:64:14: note: expanded from macro 'RETURN_FAMILY_TEST'
           FAMILY_TEST(TEST_RETURN, bit, op, c_op, val);           \
                       ^
   lib/atomic64_test.c:177:2: note: did you mean 'atomic_sub_return_release'?
   lib/atomic64_test.c:64:14: note: expanded from macro 'RETURN_FAMILY_TEST'
           FAMILY_TEST(TEST_RETURN, bit, op, c_op, val);           \
                       ^
   include/linux/atomic-fallback.h:296:1: note: 'atomic_sub_return_release' declared here
   atomic_sub_return_release(int i, atomic_t *v)
   ^
>> lib/atomic64_test.c:177:2: error: implicit declaration of function 'atomic64_sub_return_relaxed' [-Werror,-Wimplicit-function-declaration]
           RETURN_FAMILY_TEST(64, sub_return, -=, onestwos);
           ^
   lib/atomic64_test.c:64:14: note: expanded from macro 'RETURN_FAMILY_TEST'
           FAMILY_TEST(TEST_RETURN, bit, op, c_op, val);           \
                       ^
   lib/atomic64_test.c:177:2: note: did you mean 'atomic_sub_return_relaxed'?
   lib/atomic64_test.c:64:14: note: expanded from macro 'RETURN_FAMILY_TEST'
           FAMILY_TEST(TEST_RETURN, bit, op, c_op, val);           \
                       ^
   arch/powerpc/include/asm/atomic.h:95:1: note: 'atomic_sub_return_relaxed' declared here
   ATOMIC_OPS(sub, subf)
   ^
   arch/powerpc/include/asm/atomic.h:91:2: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_OP_RETURN_RELAXED(op, asm_op)                            \
           ^
   arch/powerpc/include/asm/atomic.h:56:19: note: expanded from macro 'ATOMIC_OP_RETURN_RELAXED'
   static inline int atomic_##op##_return_relaxed(int a, atomic_t *v)      \
                     ^
   <scratch space>:88:1: note: expanded from here
   atomic_sub_return_relaxed
   ^
   lib/atomic64_test.c:178:2: error: implicit declaration of function 'atomic64_sub_return_acquire' [-Werror,-Wimplicit-function-declaration]
           RETURN_FAMILY_TEST(64, sub_return, -=, -one);
           ^
   lib/atomic64_test.c:64:14: note: expanded from macro 'RETURN_FAMILY_TEST'
           FAMILY_TEST(TEST_RETURN, bit, op, c_op, val);           \
                       ^
   lib/atomic64_test.c:178:2: error: implicit declaration of function 'atomic64_sub_return_release' [-Werror,-Wimplicit-function-declaration]
   lib/atomic64_test.c:64:14: note: expanded from macro 'RETURN_FAMILY_TEST'
           FAMILY_TEST(TEST_RETURN, bit, op, c_op, val);           \
                       ^
   lib/atomic64_test.c:178:2: error: implicit declaration of function 'atomic64_sub_return_relaxed' [-Werror,-Wimplicit-function-declaration]
   lib/atomic64_test.c:64:14: note: expanded from macro 'RETURN_FAMILY_TEST'
           FAMILY_TEST(TEST_RETURN, bit, op, c_op, val);           \
                       ^
>> lib/atomic64_test.c:182:2: error: implicit declaration of function 'atomic64_fetch_sub_acquire' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_sub, -=, onestwos);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:182:2: note: did you mean 'atomic_fetch_sub_acquire'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   include/linux/atomic-fallback.h:332:1: note: 'atomic_fetch_sub_acquire' declared here
   atomic_fetch_sub_acquire(int i, atomic_t *v)
   ^
>> lib/atomic64_test.c:182:2: error: implicit declaration of function 'atomic64_fetch_sub_release' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_sub, -=, onestwos);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:182:2: note: did you mean 'atomic_fetch_sub_release'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   include/linux/atomic-fallback.h:343:1: note: 'atomic_fetch_sub_release' declared here
   atomic_fetch_sub_release(int i, atomic_t *v)
   ^
>> lib/atomic64_test.c:182:2: error: implicit declaration of function 'atomic64_fetch_sub_relaxed' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_sub, -=, onestwos);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:182:2: note: did you mean 'atomic_fetch_sub_relaxed'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   arch/powerpc/include/asm/atomic.h:95:1: note: 'atomic_fetch_sub_relaxed' declared here
   ATOMIC_OPS(sub, subf)
   ^
   arch/powerpc/include/asm/atomic.h:92:2: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_FETCH_OP_RELAXED(op, asm_op)
           ^
   arch/powerpc/include/asm/atomic.h:73:19: note: expanded from macro 'ATOMIC_FETCH_OP_RELAXED'
   static inline int atomic_fetch_##op##_relaxed(int a, atomic_t *v)       \
                     ^
   <scratch space>:92:1: note: expanded from here
   atomic_fetch_sub_relaxed
   ^
   lib/atomic64_test.c:183:2: error: implicit declaration of function 'atomic64_fetch_sub_acquire' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_sub, -=, -one);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:183:2: error: implicit declaration of function 'atomic64_fetch_sub_release' [-Werror,-Wimplicit-function-declaration]
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:183:2: error: implicit declaration of function 'atomic64_fetch_sub_relaxed' [-Werror,-Wimplicit-function-declaration]
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
>> lib/atomic64_test.c:185:2: error: implicit declaration of function 'atomic64_fetch_or_acquire' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_or,  |=, v1);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:185:2: note: did you mean 'atomic_fetch_or_acquire'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   include/linux/atomic-fallback.h:893:1: note: 'atomic_fetch_or_acquire' declared here
   atomic_fetch_or_acquire(int i, atomic_t *v)
   ^
>> lib/atomic64_test.c:185:2: error: implicit declaration of function 'atomic64_fetch_or_release' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_or,  |=, v1);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:185:2: note: did you mean 'atomic_fetch_or_release'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   include/linux/atomic-fallback.h:904:1: note: 'atomic_fetch_or_release' declared here
   atomic_fetch_or_release(int i, atomic_t *v)
   ^
>> lib/atomic64_test.c:185:2: error: implicit declaration of function 'atomic64_fetch_or_relaxed' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_or,  |=, v1);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:185:2: note: did you mean 'atomic_fetch_or_relaxed'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   arch/powerpc/include/asm/atomic.h:109:1: note: 'atomic_fetch_or_relaxed' declared here
   ATOMIC_OPS(or, or)
   ^
   arch/powerpc/include/asm/atomic.h:106:2: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_FETCH_OP_RELAXED(op, asm_op)
           ^
   arch/powerpc/include/asm/atomic.h:73:19: note: expanded from macro 'ATOMIC_FETCH_OP_RELAXED'
   static inline int atomic_fetch_##op##_relaxed(int a, atomic_t *v)       \
                     ^
   <scratch space>:106:1: note: expanded from here
   atomic_fetch_or_relaxed
   ^
>> lib/atomic64_test.c:186:2: error: implicit declaration of function 'atomic64_fetch_and_acquire' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_and, &=, v1);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:186:2: note: did you mean 'atomic_fetch_and_acquire'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   include/linux/atomic-fallback.h:747:1: note: 'atomic_fetch_and_acquire' declared here
   atomic_fetch_and_acquire(int i, atomic_t *v)
   ^
>> lib/atomic64_test.c:186:2: error: implicit declaration of function 'atomic64_fetch_and_release' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_and, &=, v1);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:186:2: note: did you mean 'atomic_fetch_and_release'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   include/linux/atomic-fallback.h:758:1: note: 'atomic_fetch_and_release' declared here
   atomic_fetch_and_release(int i, atomic_t *v)
   ^
>> lib/atomic64_test.c:186:2: error: implicit declaration of function 'atomic64_fetch_and_relaxed' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_and, &=, v1);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:186:2: note: did you mean 'atomic_fetch_and_relaxed'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   arch/powerpc/include/asm/atomic.h:108:1: note: 'atomic_fetch_and_relaxed' declared here
   ATOMIC_OPS(and, and)
   ^
   arch/powerpc/include/asm/atomic.h:106:2: note: expanded from macro 'ATOMIC_OPS'
           ATOMIC_FETCH_OP_RELAXED(op, asm_op)
           ^
   arch/powerpc/include/asm/atomic.h:73:19: note: expanded from macro 'ATOMIC_FETCH_OP_RELAXED'
   static inline int atomic_fetch_##op##_relaxed(int a, atomic_t *v)       \
                     ^
   <scratch space>:99:1: note: expanded from here
   atomic_fetch_and_relaxed
   ^
>> lib/atomic64_test.c:187:2: error: implicit declaration of function 'atomic64_fetch_andnot_acquire' [-Werror,-Wimplicit-function-declaration]
           FETCH_FAMILY_TEST(64, fetch_andnot, &= ~, v1);
           ^
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   lib/atomic64_test.c:187:2: note: did you mean 'atomic_fetch_andnot_acquire'?
   lib/atomic64_test.c:69:14: note: expanded from macro 'FETCH_FAMILY_TEST'
           FAMILY_TEST(TEST_FETCH, bit, op, c_op, val);            \
                       ^
   include/linux/atomic-fallback.h:815:1: note: 'atomic_fetch_andnot_acquire' declared here
   atomic_fetch_andnot_acquire(int i, atomic_t *v)
   ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.


vim +/atomic64_sub_return_acquire +177 lib/atomic64_test.c

41b9e9fcc1c44b Peter Zijlstra   2015-07-13  145  
86a8938078a8bb Luca Barbieri    2010-02-24  146  #define INIT(c) do { atomic64_set(&v, c); r = c; } while (0)
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  147  static __init void test_atomic64(void)
86a8938078a8bb Luca Barbieri    2010-02-24  148  {
86a8938078a8bb Luca Barbieri    2010-02-24  149  	long long v0 = 0xaaa31337c001d00dLL;
86a8938078a8bb Luca Barbieri    2010-02-24  150  	long long v1 = 0xdeadbeefdeafcafeLL;
86a8938078a8bb Luca Barbieri    2010-02-24  151  	long long v2 = 0xfaceabadf00df001LL;
ffba19ccae8d98 Michael Ellerman 2017-07-14  152  	long long v3 = 0x8000000000000000LL;
86a8938078a8bb Luca Barbieri    2010-02-24  153  	long long onestwos = 0x1111111122222222LL;
86a8938078a8bb Luca Barbieri    2010-02-24  154  	long long one = 1LL;
ffba19ccae8d98 Michael Ellerman 2017-07-14  155  	int r_int;
86a8938078a8bb Luca Barbieri    2010-02-24  156  
86a8938078a8bb Luca Barbieri    2010-02-24  157  	atomic64_t v = ATOMIC64_INIT(v0);
86a8938078a8bb Luca Barbieri    2010-02-24  158  	long long r = v0;
86a8938078a8bb Luca Barbieri    2010-02-24  159  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  160  
86a8938078a8bb Luca Barbieri    2010-02-24  161  	atomic64_set(&v, v1);
86a8938078a8bb Luca Barbieri    2010-02-24  162  	r = v1;
86a8938078a8bb Luca Barbieri    2010-02-24  163  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  164  	BUG_ON(atomic64_read(&v) != r);
86a8938078a8bb Luca Barbieri    2010-02-24  165  
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  166  	TEST(64, add, +=, onestwos);
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  167  	TEST(64, add, +=, -one);
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  168  	TEST(64, sub, -=, onestwos);
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  169  	TEST(64, sub, -=, -one);
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  170  	TEST(64, or, |=, v1);
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  171  	TEST(64, and, &=, v1);
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  172  	TEST(64, xor, ^=, v1);
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  173  	TEST(64, andnot, &= ~, v1);
86a8938078a8bb Luca Barbieri    2010-02-24  174  
978e5a3692c3b6 Boqun Feng       2015-11-04  175  	RETURN_FAMILY_TEST(64, add_return, +=, onestwos);
978e5a3692c3b6 Boqun Feng       2015-11-04  176  	RETURN_FAMILY_TEST(64, add_return, +=, -one);
978e5a3692c3b6 Boqun Feng       2015-11-04 @177  	RETURN_FAMILY_TEST(64, sub_return, -=, onestwos);
978e5a3692c3b6 Boqun Feng       2015-11-04  178  	RETURN_FAMILY_TEST(64, sub_return, -=, -one);
86a8938078a8bb Luca Barbieri    2010-02-24  179  
28aa2bda2211f4 Peter Zijlstra   2016-04-18  180  	FETCH_FAMILY_TEST(64, fetch_add, +=, onestwos);
28aa2bda2211f4 Peter Zijlstra   2016-04-18  181  	FETCH_FAMILY_TEST(64, fetch_add, +=, -one);
28aa2bda2211f4 Peter Zijlstra   2016-04-18 @182  	FETCH_FAMILY_TEST(64, fetch_sub, -=, onestwos);
28aa2bda2211f4 Peter Zijlstra   2016-04-18  183  	FETCH_FAMILY_TEST(64, fetch_sub, -=, -one);
28aa2bda2211f4 Peter Zijlstra   2016-04-18  184  
28aa2bda2211f4 Peter Zijlstra   2016-04-18 @185  	FETCH_FAMILY_TEST(64, fetch_or,  |=, v1);
28aa2bda2211f4 Peter Zijlstra   2016-04-18 @186  	FETCH_FAMILY_TEST(64, fetch_and, &=, v1);
28aa2bda2211f4 Peter Zijlstra   2016-04-18 @187  	FETCH_FAMILY_TEST(64, fetch_andnot, &= ~, v1);
28aa2bda2211f4 Peter Zijlstra   2016-04-18  188  	FETCH_FAMILY_TEST(64, fetch_xor, ^=, v1);
28aa2bda2211f4 Peter Zijlstra   2016-04-18  189  
86a8938078a8bb Luca Barbieri    2010-02-24  190  	INIT(v0);
86a8938078a8bb Luca Barbieri    2010-02-24  191  	atomic64_inc(&v);
86a8938078a8bb Luca Barbieri    2010-02-24  192  	r += one;
86a8938078a8bb Luca Barbieri    2010-02-24  193  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  194  
86a8938078a8bb Luca Barbieri    2010-02-24  195  	INIT(v0);
86a8938078a8bb Luca Barbieri    2010-02-24  196  	atomic64_dec(&v);
86a8938078a8bb Luca Barbieri    2010-02-24  197  	r -= one;
86a8938078a8bb Luca Barbieri    2010-02-24  198  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  199  
978e5a3692c3b6 Boqun Feng       2015-11-04  200  	INC_RETURN_FAMILY_TEST(64, v0);
978e5a3692c3b6 Boqun Feng       2015-11-04  201  	DEC_RETURN_FAMILY_TEST(64, v0);
86a8938078a8bb Luca Barbieri    2010-02-24  202  
978e5a3692c3b6 Boqun Feng       2015-11-04  203  	XCHG_FAMILY_TEST(64, v0, v1);
978e5a3692c3b6 Boqun Feng       2015-11-04  204  	CMPXCHG_FAMILY_TEST(64, v0, v1, v2);
86a8938078a8bb Luca Barbieri    2010-02-24  205  
86a8938078a8bb Luca Barbieri    2010-02-24  206  	INIT(v0);
9efbcd59024304 Luca Barbieri    2010-03-01  207  	BUG_ON(atomic64_add_unless(&v, one, v0));
86a8938078a8bb Luca Barbieri    2010-02-24  208  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  209  
86a8938078a8bb Luca Barbieri    2010-02-24  210  	INIT(v0);
9efbcd59024304 Luca Barbieri    2010-03-01  211  	BUG_ON(!atomic64_add_unless(&v, one, v1));
86a8938078a8bb Luca Barbieri    2010-02-24  212  	r += one;
86a8938078a8bb Luca Barbieri    2010-02-24  213  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  214  
86a8938078a8bb Luca Barbieri    2010-02-24  215  	INIT(onestwos);
86a8938078a8bb Luca Barbieri    2010-02-24  216  	BUG_ON(atomic64_dec_if_positive(&v) != (onestwos - 1));
86a8938078a8bb Luca Barbieri    2010-02-24  217  	r -= one;
86a8938078a8bb Luca Barbieri    2010-02-24  218  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  219  
86a8938078a8bb Luca Barbieri    2010-02-24  220  	INIT(0);
86a8938078a8bb Luca Barbieri    2010-02-24  221  	BUG_ON(atomic64_dec_if_positive(&v) != -one);
86a8938078a8bb Luca Barbieri    2010-02-24  222  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  223  
86a8938078a8bb Luca Barbieri    2010-02-24  224  	INIT(-one);
86a8938078a8bb Luca Barbieri    2010-02-24  225  	BUG_ON(atomic64_dec_if_positive(&v) != (-one - one));
86a8938078a8bb Luca Barbieri    2010-02-24  226  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  227  
86a8938078a8bb Luca Barbieri    2010-02-24  228  	INIT(onestwos);
25a304f277ad70 Luca Barbieri    2010-03-01  229  	BUG_ON(!atomic64_inc_not_zero(&v));
86a8938078a8bb Luca Barbieri    2010-02-24  230  	r += one;
86a8938078a8bb Luca Barbieri    2010-02-24  231  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  232  
86a8938078a8bb Luca Barbieri    2010-02-24  233  	INIT(0);
25a304f277ad70 Luca Barbieri    2010-03-01  234  	BUG_ON(atomic64_inc_not_zero(&v));
86a8938078a8bb Luca Barbieri    2010-02-24  235  	BUG_ON(v.counter != r);
86a8938078a8bb Luca Barbieri    2010-02-24  236  
86a8938078a8bb Luca Barbieri    2010-02-24  237  	INIT(-one);
25a304f277ad70 Luca Barbieri    2010-03-01  238  	BUG_ON(!atomic64_inc_not_zero(&v));
86a8938078a8bb Luca Barbieri    2010-02-24  239  	r += one;
86a8938078a8bb Luca Barbieri    2010-02-24  240  	BUG_ON(v.counter != r);
ffba19ccae8d98 Michael Ellerman 2017-07-14  241  
ffba19ccae8d98 Michael Ellerman 2017-07-14  242  	/* Confirm the return value fits in an int, even if the value doesn't */
ffba19ccae8d98 Michael Ellerman 2017-07-14  243  	INIT(v3);
ffba19ccae8d98 Michael Ellerman 2017-07-14  244  	r_int = atomic64_inc_not_zero(&v);
ffba19ccae8d98 Michael Ellerman 2017-07-14  245  	BUG_ON(!r_int);
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  246  }
41b9e9fcc1c44b Peter Zijlstra   2015-07-13  247  

:::::: The code at line 177 was first introduced by commit
:::::: 978e5a3692c3b674b4c7c412e96835fd996c2ff4 atomics: Add test for atomic operations with _relaxed variants

:::::: TO: Boqun Feng <boqun.feng@gmail.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104200254.oaaalUN6-lkp%40intel.com.

--pf9I7BMVVzbSWLtt
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--pf9I7BMVVzbSWLtt--
