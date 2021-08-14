Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSV33SEAMGQEZ4SBCXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 075B03EBF5C
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 03:35:07 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id k18-20020a05620a1432b02903d293480ee4sf6266241qkj.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 18:35:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628904906; cv=pass;
        d=google.com; s=arc-20160816;
        b=BfIcoFcw0rnIoioK9umlo/+KXQ7M2vJ7lOtzgG5SGllRM8GzJsYViv1K3VopS1KbFV
         ydlXq+D54NeMa4qlvaGijZ0HBGmjEcqUowFtbhqXi/KX2oCQ4ryClDw1gexHj75GQJLJ
         SR8TDjfYYB/0xQu6nLIw2cMYN+zuDwSv7q8zgs6lK4tr4ETmLOZZ7uaMbFBLh888iPFg
         MDt1j8tCo5tNU/BICD/zc2o9JnFofVj6TbJDBvPpN6bG0UVHi3srZ+Bi4WJMQdMWamMv
         SnBcUWd0SbV+5upZELyxOJzeTmi4X++1Xgptf7CZASpC17hfoKWoxNxxRtH05QzVVmf1
         hVmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cKsCGHJL2CnteKh0hVBdF6uv9MOb7mFvqR0X4Hi8XPw=;
        b=F80CQpwxdTDvPgQ88OFxIGY9Zj3VTCJ8gJO8uyvwYEmhGuSAei178Mj5gjUaQJZ8jA
         +jVQgZLCb/n/vScQvuhSJKNdzSJGuDiegHkmfrCIN20rQIKBOMXNOTbOTP5ZNB2+ZA+n
         2buuR0HrcR0nb1DsghasBMPS3Zmxg2S6KdWQVaqk3PvZ9qtGHvUXaJjVUBrnASCZ58/2
         eAqboJGBo5LdJV8Y5rNOgQaf/VBeZuuq6QRYRL6K3E0DyjiEep2W3LPz+TuL/KOlqt7C
         VCUGdMLhTeKHr/W0QUZPcGSLw0PndFVEPCy1QUWCp0KU8/ikE7pkOk6a7dDxvCEx83dp
         WlBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AMkJ3trg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cKsCGHJL2CnteKh0hVBdF6uv9MOb7mFvqR0X4Hi8XPw=;
        b=E2spBSmIfrnt7jNS+QXGcA9/j03BnLTKVopZzfYO/28M/gluqcpl6KvVwxs3TxxpBA
         vxA2B7G3Kx8MjjD5z994JBSmQzJ61Yj/5UHuOr8dfi7udyzv9uuPCY+IFNHD/RfbrDP/
         ZHzRrus1VUv10fKLDqtlocmZB9UhQG7frla3tORHSeS0lRycm3AJsEssVPP8FytygXLg
         NWs0jXYlr6qvj8+imVyI2GA8/i/Ga0UukDTdQmjRx70tPdrrSIJCwTqHEhaNgid6Px5h
         A7WYowZ2LFCvscx7EuSpDSu+DgQSQGO173HM1jTCEQJPjHxvVFJ50ibV+/Kfq0weAObj
         j+tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cKsCGHJL2CnteKh0hVBdF6uv9MOb7mFvqR0X4Hi8XPw=;
        b=Wa+RB6grZ9ct0a/dktOMdhwD3+wq1c0zbezGWaN9L9rLj4QTkfM49at844Eb9nA5pM
         7ujMHG44WM1OES1Ra0zzY8OSVLUpQiffu7Hk4V+jf620nIGUB32IAiMUKtybJBUeNo4K
         hU0pQqs0ayMMzC/rQztEsl/ZGxzFA0ezWtpsTrKGL/wRhcQ93rDI8XtMAzENxApH6EEr
         NH7qjFhnvcgSB3MhYwH1ylWzSkvXpIdx1PxzbtvuHpOwXhctsIsnC3PwuvdmyiJ6FnNv
         Ejfu4F5dqGXCZxDqK64SOyQzYr8prhQohCvjYAmvzodwOMrJaYagAYRRfItgAaHDOq3Q
         79PA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YIlJCaDqOobFmLpe38XtZUp8uEXRf7U6AcimcSNa3wy3prTdX
	jh3qNDnLRSmZ7pMU0ZdDyj8=
X-Google-Smtp-Source: ABdhPJyCQOqIm7JswMqgKeIK5T4trpU9Hypjs55GZpt9mNjiGaMD8p0DKY2fXSrkIVD6IU45qzcHtA==
X-Received: by 2002:a05:620a:b10:: with SMTP id t16mr5144353qkg.69.1628904906189;
        Fri, 13 Aug 2021 18:35:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:88d:: with SMTP id b13ls1980348qka.6.gmail; Fri, 13
 Aug 2021 18:35:05 -0700 (PDT)
X-Received: by 2002:a37:e46:: with SMTP id 67mr5246244qko.7.1628904905803;
        Fri, 13 Aug 2021 18:35:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628904905; cv=none;
        d=google.com; s=arc-20160816;
        b=IPBj221IQ6wRy5dqSy7FAKL5VECo4UcqKM+XVVIc3eQ53Osod54QJtE9STH2snMfkb
         xwSjRmKvxVKoBb2yVH8OTGYDT1hzp48V8Ok6W/EVwsP/msNicjwKXa7xj57XkOHR/iX4
         md82d8lXmCiV5M5zS8Zouf0M8j4wQeMebsxp+e9xVNnNONZldWJmW7hr1eJU6BpbYR7x
         tTxvjjPZEj5G2mTaUUNx5cWSy3Wjg4pQpJiFWsPxAZeU1G3UEQSOA4wIStnjjy/fK4Xa
         Fcs6XKvOGck4i3CHMTrQ+/fv7VGXC8Xodi37bUhABn7f8mM4wbG7PJrGcwxpHnEZU4Z9
         pkNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vCJgpHznMm4i9l1zKuA01m3yEmrozc2puFSSedv8X0o=;
        b=Gk+00cOOLIuP2/DRP74SXz+7j2VnPd4tWQ0VeG0tzj3V4yP8hkfp9emwOTvAeS/Rqp
         zOHkSrWrSc3JzDGI1X9S33YojGR/p85m6DpiXYuKo/ENdFmZWJvyzE3hkInV/QuQtBLk
         lAUEZGEiF6qbROaOtC9x2TT/m9KuV75GPUQQzB7DkyLBGZI8iIkxH5VvXAmX0Sy9EpDT
         i6Dyjcr2/EJuaXOSpylcEJ06lQKC8eGdXIUvR+mqSzOwkjK9pMvZ27hPji8oXshhXle1
         1r+9Z+bKDXO+cefdSl+XGE1mLUtzZco92S907xSGN/P8cM/VthB47AejWWzMS06puN8n
         /44Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AMkJ3trg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s128si191555qkh.6.2021.08.13.18.35.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Aug 2021 18:35:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2276B60F91;
	Sat, 14 Aug 2021 01:35:04 +0000 (UTC)
Date: Fri, 13 Aug 2021 18:35:02 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: yanghui <yanghui.def@bytedance.com>, akpm@linux-foundation.org,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-mm@kvack.org, songmuchun@bytedance.com
Subject: Re: [PATCH] mm/mempolicy: fix a race between offset_il_node and
 mpol_rebind_task
Message-ID: <YRcdxhnte3d0krHx@Ryzen-9-3900X.localdomain>
References: <20210813164053.51481-1-yanghui.def@bytedance.com>
 <202108140711.JVipVXx2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108140711.JVipVXx2-lkp@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AMkJ3trg;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Aug 14, 2021 at 07:16:24AM +0800, kernel test robot wrote:
> Hi yanghui,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on v5.14-rc5]
> [cannot apply to hnaz-linux-mm/master next-20210813]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/yanghui/mm-mempolicy-fix-a-race-between-offset_il_node-and-mpol_rebind_task/20210814-004451
> base:    36a21d51725af2ce0700c6ebcb6b9594aac658a6
> config: x86_64-randconfig-a003-20210813 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/99d8d888eb92ea46a5f4883773f3edaee5ccd28e
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review yanghui/mm-mempolicy-fix-a-race-between-offset_il_node-and-mpol_rebind_task/20210814-004451
>         git checkout 99d8d888eb92ea46a5f4883773f3edaee5ccd28e
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> ld.lld: error: undefined symbol: __compiletime_assert_467
>    >>> referenced by mempolicy.c:1968 (mm/mempolicy.c:1968)
>    >>> mempolicy.o:(offset_il_node) in archive mm/built-in.a

Grabbing Nick's patch [1] to support the error function attribute in
clang and the kernel side patch [2] turns this into:

mm/mempolicy.c:1968:24: error: call to '__compiletime_assert_467' declared with 'error' attribute: Unsupported access size for {READ,WRITE}_ONCE().
        nodemask_t nodemask = READ_ONCE(pol->nodes);
                              ^
./include/asm-generic/rwonce.h:49:2: note: expanded from macro 'READ_ONCE'
        compiletime_assert_rwonce_type(x);                              \
        ^
./include/asm-generic/rwonce.h:36:2: note: expanded from macro 'compiletime_assert_rwonce_type'
        compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
        ^
./include/linux/compiler_types.h:322:2: note: expanded from macro 'compiletime_assert'
        _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
        ^
./include/linux/compiler_types.h:310:2: note: expanded from macro '_compiletime_assert'
        __compiletime_assert(condition, msg, prefix, suffix)
        ^
./include/linux/compiler_types.h:303:4: note: expanded from macro '__compiletime_assert'
                        prefix ## suffix();                             \
                        ^
<scratch space>:246:1: note: expanded from here
__compiletime_assert_467
^
mm/mempolicy.c:214:2: error: call to '__compiletime_assert_448' declared with 'error' attribute: Unsupported access size for {READ,WRITE}_ONCE().
        WRITE_ONCE(pol->nodes, *nodes);
        ^
./include/asm-generic/rwonce.h:60:2: note: expanded from macro 'WRITE_ONCE'
        compiletime_assert_rwonce_type(x);                              \
        ^
./include/asm-generic/rwonce.h:36:2: note: expanded from macro 'compiletime_assert_rwonce_type'
        compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
        ^
./include/linux/compiler_types.h:322:2: note: expanded from macro 'compiletime_assert'
        _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
        ^
./include/linux/compiler_types.h:310:2: note: expanded from macro '_compiletime_assert'
        __compiletime_assert(condition, msg, prefix, suffix)
        ^
./include/linux/compiler_types.h:303:4: note: expanded from macro '__compiletime_assert'
                        prefix ## suffix();                             \
                        ^
<scratch space>:16:1: note: expanded from here
__compiletime_assert_448
^
mm/mempolicy.c:337:2: error: call to '__compiletime_assert_452' declared with 'error' attribute: Unsupported access size for {READ,WRITE}_ONCE().
        WRITE_ONCE(pol->nodes, tmp);
        ^
./include/asm-generic/rwonce.h:60:2: note: expanded from macro 'WRITE_ONCE'
        compiletime_assert_rwonce_type(x);                              \
        ^
./include/asm-generic/rwonce.h:36:2: note: expanded from macro 'compiletime_assert_rwonce_type'
        compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
        ^
./include/linux/compiler_types.h:322:2: note: expanded from macro 'compiletime_assert'
        _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
        ^
./include/linux/compiler_types.h:310:2: note: expanded from macro '_compiletime_assert'
        __compiletime_assert(condition, msg, prefix, suffix)
        ^
./include/linux/compiler_types.h:303:4: note: expanded from macro '__compiletime_assert'
                        prefix ## suffix();                             \
                        ^
<scratch space>:38:1: note: expanded from here
__compiletime_assert_452
^
mm/mempolicy.c:196:2: error: call to '__compiletime_assert_447' declared with 'error' attribute: Unsupported access size for {READ,WRITE}_ONCE().
        WRITE_ONCE(pol->nodes, *nodes);
        ^
./include/asm-generic/rwonce.h:60:2: note: expanded from macro 'WRITE_ONCE'
        compiletime_assert_rwonce_type(x);                              \
        ^
./include/asm-generic/rwonce.h:36:2: note: expanded from macro 'compiletime_assert_rwonce_type'
        compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
        ^
./include/linux/compiler_types.h:322:2: note: expanded from macro 'compiletime_assert'
        _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
        ^
./include/linux/compiler_types.h:310:2: note: expanded from macro '_compiletime_assert'
        __compiletime_assert(condition, msg, prefix, suffix)
        ^
./include/linux/compiler_types.h:303:4: note: expanded from macro '__compiletime_assert'
                        prefix ## suffix();                             \
                        ^
<scratch space>:13:1: note: expanded from here
__compiletime_assert_447
^
4 errors generated.

Which appears to be what Matthew mentioned, as this config has
CONFIG_NODES_SHIFT=10 so nodemask_t is 128 bytes large.

[1]: https://reviews.llvm.org/D106030
[2]: https://lore.kernel.org/r/20210802202326.1817503-1-ndesaulniers@google.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRcdxhnte3d0krHx%40Ryzen-9-3900X.localdomain.
