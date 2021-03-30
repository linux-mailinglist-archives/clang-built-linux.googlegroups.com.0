Return-Path: <clang-built-linux+bncBCT4XGV33UIBBC7GRGBQMGQEHJVY6MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2C834DD12
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 02:38:37 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id n3sf4600450qvr.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 17:38:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617064716; cv=pass;
        d=google.com; s=arc-20160816;
        b=CkDY0Un0SQ1iIcwEMIn9aobXJOU0K9PcHW1BEdTYuhYWG2eajZp6+rff0tTpPaViDr
         A67hNbm0EX8312alCzodbE8vEPmmH2scHUaHfIglXzDhxYbPU7WyTSnKZ8lp4KtSdWcm
         51BPWKKQvlRJDxPs7KuDJGXLpeYgBl1cRejaB1XIFP838A/rV3a9jsXy5WlYys8wWXH0
         IH9BviGLGc4wSmXF7Bn4FHbeajhaaKLRyt0b095RoUR6kjxKTMZKxHQwrWnVcPj04H0g
         6kodDsZpia8XXUNigj95IOIgo+k7UmQ7xqhPsPB82Yupw9thI1vp+WYlPIa57me5j8Nz
         KqFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=YIWxwP1fTlvYTYdoNAQjefMJKi33YLv6PGU1sI0STPs=;
        b=LBBeSnKjn63r8uAYUMfePFLFW39xSt/7QjTEGIYo88rUf8Vd+a3zprfeEuPOC6T7zk
         ZATkK9lPzXk0ntDtTkMFpsG081GxtT2fcP+SIZiaHnwbVB0C2Je0Op+aJj+xEUiy0/dI
         Gm6k6Uxa6CXIbFL1FkLzJFt6qJu7Z/uWQjQtq7//Iw5MJ6OLED+3xIlyD99vCoNqNvx7
         GB/lx/4KQ0dJ+4B3AHKzvjVI8FnFRAhCuyPuxN/DTH2XKoCJSK7dv7l3R5nXHvzlK27G
         wbEb+tKozFxwip5TT+mXEzCPQba/Ga/VbVDss1IHmbzz/xQZC2tR3Lf5Rcbg8plR15BH
         Zx2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=qKLvY1D7;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YIWxwP1fTlvYTYdoNAQjefMJKi33YLv6PGU1sI0STPs=;
        b=XKk3PSuQJ2lcmlQL0KhrqMaOKmZbzwmWWi6Jtozli9yRJQ8+iLiktQJkMUIyZIAYxO
         qkMSFkcXv6HlCdrslBpTeSNTHvrrmIJ3/fX/+pKP/+S8D+JwoG3NMH/iWLjxAROCf7Ik
         eMZubb0Bx/OiOQinY9+p1dUOxpakDGjKDh1jbPmbim+VFUhQG1NppJFE0cpm0zxCIdNu
         bd05EjO77DgoiByFGAOnf+Zm0EDWvQnyjt84xw/3hjXXXvgenQbM6UXaxcdtoMTXqGT6
         JbX71HbAw8IT8rGkaJgFgePutE9f9zzt6o8dANQp2S3cBVDL3oSmvvZLITBMc/4dzQN1
         MH1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YIWxwP1fTlvYTYdoNAQjefMJKi33YLv6PGU1sI0STPs=;
        b=Omcua2LJUk7qEPoUOVzkVy9kEj2iQYu8PaOUEXYKziRyF7ryt5eZIAKp67TtJRXuCS
         9NpQCjnzOEGOZGlaWREUPazSKSeFEqCzdSDqqGaLUFUBfYGRI1buGLzXAzB/S/5EwtcA
         If7r0erB3WPNPlflBqAF6yAHA+PWUrgb1wVDy+s25rUhhpy+/Zyuoc6yyl6iiD2Sr5ES
         AerQmm20S+lgFPnhHt2bxwgLZh1Zxvy300dnInJvra5JRgcPTkqulUEmpiHPNBygDISt
         t9v85AjDXmSuu+iTUbk8mpTXf1zYN+pWypjuSqmMuQFfa+dSCdBZOaPb75OQSv4VVHfp
         MzSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NET7sfeuTTIX/KMg1AxR83pYKQ33z2UZtvyffZIa7K2IuCXAL
	EbLZRGki1WM7iiL3XStHazY=
X-Google-Smtp-Source: ABdhPJxWPnSKPv4nAjq/PKJcLYtkZ+msXvkxFwmIhMJ5onwjrkSbwv9DOdFAjcL7dIwb85vrZH2FCA==
X-Received: by 2002:ac8:5281:: with SMTP id s1mr24549851qtn.293.1617064715911;
        Mon, 29 Mar 2021 17:38:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5810:: with SMTP id g16ls6644217qtg.11.gmail; Mon, 29
 Mar 2021 17:38:35 -0700 (PDT)
X-Received: by 2002:ac8:5892:: with SMTP id t18mr219255qta.11.1617064715435;
        Mon, 29 Mar 2021 17:38:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617064715; cv=none;
        d=google.com; s=arc-20160816;
        b=gWofqYgg/0YaDLZfQR+VUkPUCUyMYyqQT5gPKG+9YGSfyq/U1eD6QyKK9WUP+PDPp/
         FaSRQKbl0ICrvmVV9wGH0cQAlJJDpr7piAo+U7qgc+aOGij7TYmDo6ivZ7pNheQwSaE8
         q+0qmR3Rpnz8LNoaYzK/wlP3KYj0HvJhoHLUm3//R2w86iwcAb7uTeOnvGnKbmjM+Rhe
         9pEMmG7R8Vht4WywTrJphPDWHcRYpJSgx/R8y4Caep3HIGPoHkq459GZry0rKO4dHJ92
         KBbRYTBHF8770vHM5aNsAFnB6S1GCHbt7AxZmRT02JevIUhnEY8i7vS768BS2CIpaQnb
         Xoyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ItsV5F0O6SmjAxWDf5XskwjeuXxf373fuCVkmm2D108=;
        b=SfzRysx/fXIi4YPyBEMDWEpmM6sdiKrga7QnDkeywHa/Nv6wDXtOAudEm8EkSHlubg
         Zklje/r2Z78lXraZ/sdUqnSf4+FXxl+snDeZPoQoQGhiNhgj2R85iQqVIz7Y803SlAQp
         eWCYbD+CdDpsDnrvXLH4dHNBrF+7zM+NmPwHxlggTui9HK1n0WML0nadkq1EcL5myauN
         J40yKRnOAnDRTLg38n5FsK0lVB9fqI8tFSFrwtParim9AMJpqIu6lbodq33ob7s7qZsv
         13Y6DtR6SZ2j4/Pr0ayZERHKFH3UKSp/HJYZig1ZQzgQ1dV6QrgbjaVHyc0VW3KtVVJf
         tI/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=qKLvY1D7;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a15si1565058qtn.4.2021.03.29.17.38.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Mar 2021 17:38:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0190F61969;
	Tue, 30 Mar 2021 00:38:33 +0000 (UTC)
Date: Mon, 29 Mar 2021 17:38:33 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: kernel test robot <lkp@intel.com>
Cc: Joe Perches <joe@perches.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Linux Memory Management List
 <linux-mm@kvack.org>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer
 Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: [linux-next:master 7236/7588] mm/util.c:999:2: error: statement
 requires expression of scalar type ('void' invalid)
Message-Id: <20210329173833.784cdee6654631c5f5cb2651@linux-foundation.org>
In-Reply-To: <202103291544.jvqt9U20-lkp@intel.com>
References: <202103291544.jvqt9U20-lkp@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=qKLvY1D7;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Mon, 29 Mar 2021 15:21:47 +0800 kernel test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   931294922e65a23e1aad6398b9ae02df74044679
> commit: d1f75d5ddea82b2c610d194d253b4d4ecdaa6be3 [7236/7588] mm/util.c: reduce mem_dump_obj() object size
> config: riscv-randconfig-r034-20210328 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 821547cabb5819ed42245376a9afcd11cdee5ddd)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d1f75d5ddea82b2c610d194d253b4d4ecdaa6be3
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout d1f75d5ddea82b2c610d194d253b4d4ecdaa6be3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> ...
>
>                                                      ~~~~~~~~~~ ^
>    In file included from mm/util.c:29:
>    mm/internal.h:454:8: error: use of undeclared identifier 'max_mapnr'
>                    if (!pfn_valid(pfn))
>                         ^
>    arch/riscv/include/asm/page.h:130:62: note: expanded from macro 'pfn_valid'
>            (((pfn) >= ARCH_PFN_OFFSET) && (((pfn) - ARCH_PFN_OFFSET) < max_mapnr))
>                                                                        ^
>    mm/util.c:999:6: error: use of undeclared identifier 'max_mapnr'
>            if (virt_addr_valid(object))
>                ^
>    arch/riscv/include/asm/page.h:137:43: note: expanded from macro 'virt_addr_valid'
>            (unsigned long)(_addr) >= PAGE_OFFSET && pfn_valid(virt_to_pfn(_addr)); \
>                                                     ^
>    arch/riscv/include/asm/page.h:130:62: note: expanded from macro 'pfn_valid'
>            (((pfn) >= ARCH_PFN_OFFSET) && (((pfn) - ARCH_PFN_OFFSET) < max_mapnr))
>                                                                        ^
> >> mm/util.c:999:2: error: statement requires expression of scalar type ('void' invalid)
>            if (virt_addr_valid(object))
>            ^   ~~~~~~~~~~~~~~~~~~~~~~~
>    7 warnings and 3 errors generated.

"mm/util.c: reduce mem_dump_obj() object size" can't be the cause of this.

It appears that riscv doesn't handle CONFIG_NEED_MULTIPLE_NODES=y.  Its
pfn_valid() (and hence virt_addr_valid()) implementations require that
max_mapnr be defined and implemented.  But with
CONFIG_NEED_MULTIPLE_NODES=y, that is not the case.

Probably riscv needs some Kconfig fix to disallow this config combination.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210329173833.784cdee6654631c5f5cb2651%40linux-foundation.org.
