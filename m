Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTHC4TZQKGQEYG2BQLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D91C1900C3
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 22:59:42 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id s18sf11918331pgd.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 14:59:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585000780; cv=pass;
        d=google.com; s=arc-20160816;
        b=H/ZYCVY02pemB5/vqJeQ1d3B+fYoKYgbZmsq0JF6Qdcyl6rtAKMe1gnzKgJbWzwXL4
         AS2Ld+0j1C4WD9aqO8HHtYuu2Q9fu5NTsYY3adeFPPykb85y2jiKQdMifPBzhj5WL9ph
         se3ZmLdY+STOGVIKXh/lBbKD6W2CPnc0abCNyFFBWOE/mUo8F4gTHoot0sm7jd6kuL0F
         oK+Dej/+G1NXf6HMvmO7vdvsLfuR/ySEEZqlB5ORvi5bgDFGXsxku89WxgUMBBx4+g0f
         rs8yK396/XMS60FQZjDhbpYcYxSfP8NWXmOI9KHExkXrz2V6V0hnOHHB9deJFyRcZYHq
         thvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZRBSHWfmnuhkFA++v94FKyKYF07ft6OjE14HbPzO0BM=;
        b=fPEG+1gqRlODagIAAfPODmoXvR6B0of2P0/1JQ5pnWuf+EVT5f7Cnwv8i0viZOrDJc
         a3W8aSX0IuCFASFdShDHQ3v8xm/9xerM/PTXL62k+QLVQTFFOc2Le46QSVte6cm7yRBT
         CNW+iq4mfKdz6urjyfslddwSFFJIHtBoxFhWGLQo3kX8DWD9gZBHHJnXbMo66HVCW4JW
         iGqgItA8P+Wn6OsBQXuq+I7PubThcR4fX4FzblVeK97yMTN6MSILiLcKRLRVzMegUJAl
         cLu7oOYek8TA7w/JxuubGyss2opyzEeC0aZjij53A/dTtc/9rfaMuSLP8OHSsZvsfDNs
         0Fuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=G0CtTVyp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZRBSHWfmnuhkFA++v94FKyKYF07ft6OjE14HbPzO0BM=;
        b=pomNhpAzASV2bz7MaAjTyrB1pGJP89QDXk2sHM87VjGz+uxJFDp8T8HvCZsIFISmRj
         wT5eRSXFvjVRyARZnNv8vrEOWsnoi+yVjPzmHYuFTFvF70vgv9OWv/Lm8i1Fd1ncChav
         L/ugte+aZCAda1WpE0OPIqBc6kckpDqYXo3ASwlDWj072jp/vvfnxVXBFWc1YxMgcwCs
         /ZStfShtQKfQAXZqL0hLRt4vu7b4bS9gc42ZZGfGpWQztGeUDc1mZT3vbxp/rPDXS0zJ
         L1IgJ/2xrFkmLVYAb+8Up5Hj1AdrUkc95FttmKod7iomrJYhNRcr8B3gowvblVydd9TZ
         XJOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZRBSHWfmnuhkFA++v94FKyKYF07ft6OjE14HbPzO0BM=;
        b=mX7e6hpivKUXWmDL9DbaTHYiUD7OuiC7SPjfpuqaE/Kc/BR9U2wEZ/vLC7I0F7WyI7
         U5dvPmE1wCaAHYJo+HvVD0VSibJiRWzySS03wKIZQu6h7AH5ZWsKZCHSOMbaYZtXq5tk
         0926iSZt0fc5J2Zak+wXiGk2VcoJp4cd1HCzJsnQ7SAus5FgLYwDT1wSAWvAWNXXUGiZ
         rQIhM/erOK+CrfBmfcmUfTC+XAEuDgaLQdC4n/OtDndIeoMU5dI2aGkHL3rsqcEaGnjM
         CHBTl1EiCYG7vVWlmbGzwhqOCoHpL3ZXyqz7j1t4zJUrDG0ReQN34K9u6DgISMuBShJM
         IxfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ09iGm36BW5H4y3XVL0Umqw6n+zcJs4bdLm8sFWm0pRa/Wc5Flx
	IS61iVkXCX25PbIg860UhIM=
X-Google-Smtp-Source: ADFU+vudj8Eeb9Lka5IV8f7c8eAIcmQgdEQuapUJ2dh4AF+l7ufF5y+C/erZCasGyzQ6hQsUNJ16Rg==
X-Received: by 2002:a63:1060:: with SMTP id 32mr7489234pgq.271.1585000780450;
        Mon, 23 Mar 2020 14:59:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff18:: with SMTP id f24ls2686829plj.0.gmail; Mon, 23
 Mar 2020 14:59:40 -0700 (PDT)
X-Received: by 2002:a17:902:aa49:: with SMTP id c9mr24503228plr.145.1585000779933;
        Mon, 23 Mar 2020 14:59:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585000779; cv=none;
        d=google.com; s=arc-20160816;
        b=HlRobMUrb2WKCAiDoGgGePIswFrcxxS850jp9MOu5zuWuQD21/0kpn12rGfqnrBDyK
         3HceYmViBBDJYZ5D7LofLi4+5A0QH/QEPpb3rjS2Wb3XHt/KcfpEZYbrbPbZJpWO7HOM
         Ug7K83ZmuM6e3ObSISrj1KLquS+RWiUKxVkL4pWAp3DiGF0rkY7tybAzrsuMA25/RarL
         Gh8QcRh5DsPMOjSRmehn+bqJl9jLIUYDZZ89iLBGdQJi3V1aVdxZUlGv1KTLX4d2Hnvs
         ciZ7XVJe6ur99j7f/c2KJAG0RIbtrP4PxKmC3/rv+Y3NeQYJzBXYENGw5AY07aD9wLpJ
         1qzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AxmrBn7DFa0TZEOQsKb3Eu1eBK+rT4GLpb6lxUUAAIk=;
        b=GtHtAHy0MlHqS++urdJml3Q+9OEaCCotAFsz5wSu/BrVrCmDsw70Uo9Hj7G23kNisM
         TCdgNl95JWvobynxJ/M2nsq6iO6xUaNTshrURlBw2qmq2/f/7ukKMQ+m6TJUf8Sj0tJx
         BP44bSW/GYIwt/kL+fzfhBj8J8JZnu+TumtoIZlHIUu150GyE1GSHa4txtUeJRGW+QuQ
         4yr9izSX+iSSfpDNVHnVxa9vr965M89AHtToyA5Rfr0UX7w9zP7sqte4YoTFE+GsGW10
         GmciHXo0nDiIrbkt6Jvetwah8AuGgea+e6UaSHSt+9W6UNfDqyASHD0SGOkocFPqCuJ5
         +f6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=G0CtTVyp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 185si586240pgh.3.2020.03.23.14.59.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 14:59:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id mj6so485375pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 14:59:39 -0700 (PDT)
X-Received: by 2002:a17:90a:30c3:: with SMTP id h61mr1614766pjb.18.1585000779505;
        Mon, 23 Mar 2020 14:59:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o128sm14665265pfg.5.2020.03.23.14.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2020 14:59:38 -0700 (PDT)
Date: Mon, 23 Mar 2020 14:59:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Clement Courbet <courbet@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH]     x86: Alias memset to __builtin_memset.
Message-ID: <202003231457.C83B81234D@keescook>
References: <20200323114207.222412-1-courbet@google.com>
 <202003240432.AGknaLzA%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202003240432.AGknaLzA%lkp@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=G0CtTVyp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Mar 24, 2020 at 04:16:10AM +0800, kbuild test robot wrote:
> Hi Clement,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on tip/x86/core]
> [also build test ERROR on v5.6-rc7 next-20200323]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Clement-Courbet/x86-Alias-memset-to-__builtin_memset/20200324-004007
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 248ed51048c40d36728e70914e38bffd7821da57
> config: x86_64-randconfig-h003-20200323 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 006244152d6c7dd6a390ff89b236cc7801834b46)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from scripts/mod/devicetable-offsets.c:3:
>    In file included from include/linux/mod_devicetable.h:13:
>    In file included from include/linux/uuid.h:12:
> >> include/linux/string.h:358:24: error: definition of builtin function '__builtin_memset'
>    __FORTIFY_INLINE void *memset(void *p, int c, __kernel_size_t size)
>                           ^
>    arch/x86/include/asm/string_64.h:27:29: note: expanded from macro 'memset'
>    #define memset(s, c, count) __builtin_memset(s, c, count)
>                                ^

This needs to be within #ifndef CONFIG_FORTIFY_SOURCE. FORTIFY already
does this. Additionally, shouldn't this just be done universally,
instead of in x86-specific code?

-Kees

>    1 error generated.
>    make[2]: *** [scripts/Makefile.build:99: scripts/mod/devicetable-offsets.s] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:1112: prepare0] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [Makefile:179: sub-make] Error 2
>    27 real  8 user  13 sys  79.89% cpu 	make prepare
> 
> vim +/__builtin_memset +358 include/linux/string.h
> 
> 6974f0c4555e28 Daniel Micay 2017-07-12  357  
> 6974f0c4555e28 Daniel Micay 2017-07-12 @358  __FORTIFY_INLINE void *memset(void *p, int c, __kernel_size_t size)
> 6974f0c4555e28 Daniel Micay 2017-07-12  359  {
> 6974f0c4555e28 Daniel Micay 2017-07-12  360  	size_t p_size = __builtin_object_size(p, 0);
> 6974f0c4555e28 Daniel Micay 2017-07-12  361  	if (__builtin_constant_p(size) && p_size < size)
> 6974f0c4555e28 Daniel Micay 2017-07-12  362  		__write_overflow();
> 6974f0c4555e28 Daniel Micay 2017-07-12  363  	if (p_size < size)
> 6974f0c4555e28 Daniel Micay 2017-07-12  364  		fortify_panic(__func__);
> 6974f0c4555e28 Daniel Micay 2017-07-12  365  	return __builtin_memset(p, c, size);
> 6974f0c4555e28 Daniel Micay 2017-07-12  366  }
> 6974f0c4555e28 Daniel Micay 2017-07-12  367  
> 
> :::::: The code at line 358 was first introduced by commit
> :::::: 6974f0c4555e285ab217cee58b6e874f776ff409 include/linux/string.h: add the option of fortified string.h functions
> 
> :::::: TO: Daniel Micay <danielmicay@gmail.com>
> :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003240432.AGknaLzA%25lkp%40intel.com.



-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003231457.C83B81234D%40keescook.
