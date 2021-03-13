Return-Path: <clang-built-linux+bncBCL67PHQ6YKRB6FKWSBAMGQE2Q2ADDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9B833A096
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 20:41:46 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id y5sf10678160pju.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 11:41:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615664505; cv=pass;
        d=google.com; s=arc-20160816;
        b=eMQSwUGyK2Lk05JLY4sON/52Zt7JJWBkKCIf3SKB4LxfecEmMg/xSTn/3vNspg3xeu
         I7e6Z11DAD3SjYLqzJj2YmXQj1xYVb7HcKErO+xlo6RndsoqbCnboUYVW2XK08tIQuC6
         s+Eg+VBM/fuGaghTcFqq98agj619F9xSoX87SVgx0V6NyRjUeU5Q4ibD3SfrfNuzFA4u
         nS26RBPF0i6bYEoYj9htU0rhh5rOcYz0v4WX0AVCAc1ARJGk4nM+IywZLRn4Vn7cQtPV
         yfrsJngZEmB7VJbmpViYtx8ZGgjzkn2+H1GjPtQnvGrYu9/Qe0PPpHImxWga4a4VHhAs
         Di4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UNeYS0fLwL6YrAMOhPkwDAq0/jR9nvbQ+A28GPhM8eU=;
        b=ddddsDxnpNHA2dqRY3euujspTCFNdAt959Bt3ZI5I/AwhzDXNXhtb59bQU27NPtj5x
         uCoVp7SVA90SkSaEgShmjs1ehBjMmhMSXuD7SXM/lZUzLMiyZd+hug9s2x/gZFiXTJ2o
         9C5UDI/AVSMXLWNgo/mdhV8qlJhxypc1J3apeBDfgixINy3WOZlgIUcqM5Rg8xdlySmM
         /NBk8m6TDKKKBd/XhFuAw12mt+mZaH2L4tqk6dsuddCflmsR5Sm/oY/vfIkEgr4pA2NX
         GxlYLS5Q2gTsKUPkItI/Y8CMEkUrNKb41y2Uoqf9ZmoBSEqLa2bG8wWrdzDCUAt88ngM
         4KHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QWId+khd;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UNeYS0fLwL6YrAMOhPkwDAq0/jR9nvbQ+A28GPhM8eU=;
        b=iN7jpjzWP72ure+bWrQHuUa2TakqFkAZHnmugpVFxqthMoYc94HEeBPywjp2oZtcZL
         JL87cHOHvsC4Y5GUuMByGEvcgNm83jGHUpfjRGQGnLow157WGegAd44vpD4Hd/lQRoK+
         +RuKJ4wWMTMnYs/Sxomya6TQPOFacEIVqZ6eoWI1g87bUMGM1meRdiKol8rBGtwy4dfM
         sNmavwuZmav6MBiN3MonLAVQG5UqFvA+OMGgQwR8jdBYG9M1yi1/gt0HF+4A6Lf94hhn
         dA9LISw/z5rbbQHgvWwTuaGiu2CFPeyhNk1Zvp6Hg6ByO0TZh+QGmPBlsNJDDAooclpn
         qyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UNeYS0fLwL6YrAMOhPkwDAq0/jR9nvbQ+A28GPhM8eU=;
        b=I/IaA9hjQxK1KJ6VSqVJiNGeV8cU5f68dcM0ESlY3nMNVDqfFCvM1b34gzd5l7M+M4
         nlJb6ObnKLs70Ud0p/u81zN3JdVSgCpZ08cUHR9cKle244ZfiWEvIFXJW13nFLuRoQel
         Sl6isAzYG48A/nS2WPDZCA50QrGgp/GKs4k6a79/B7ZOCFVjgmt28m9SxoHxOoHXvjUx
         6Xzzh7Um4tuw3BroWg97D40lVOBKDohKbewqL6luvle1/U+bk8ABMUCsmXWaWqRVld6c
         LY9mH9m+sh3DcNcpjr8KcMz8MLH3KpH/hjss1g7J6zuVZyM2Hi0uthSBsLRtLLu7iscY
         +EVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lo9EaSgCLXzbgkZ93sFcZP79D9bbvwJWSoupt+q29S4GqiWhd
	UFmX04flbH9IaNrF2iUHH2w=
X-Google-Smtp-Source: ABdhPJzeqli0QH6PeqNSXJCQjUKnkCkw/pnRY8VFue5aHCRCPcySwl2l4pNvpYoZ9tw/6e8o3GePZg==
X-Received: by 2002:a17:90a:ba8b:: with SMTP id t11mr5093273pjr.177.1615664505002;
        Sat, 13 Mar 2021 11:41:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:511a:: with SMTP id f26ls4705048pgb.9.gmail; Sat, 13 Mar
 2021 11:41:44 -0800 (PST)
X-Received: by 2002:aa7:96f0:0:b029:1f3:97a4:19d2 with SMTP id i16-20020aa796f00000b02901f397a419d2mr3867340pfq.73.1615664504470;
        Sat, 13 Mar 2021 11:41:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615664504; cv=none;
        d=google.com; s=arc-20160816;
        b=FAegKsxPDy1CFnrkdcktgFCtMZgQP/fl4Xv0DqZ4ag2mwRvdhF6zfoU2hK88YPrCoD
         7W61aGHeZTwXzv8OGDvnzqv21Q8USVbCz6gTQ6iZQLmEb/zedQnXjyjeDyIHaOlAXqhi
         S+aM6J1yyxM4A4yTTJr3Vr7uETpdchlwgwli9kjVEcvmk2X00NCwxAS17D6iYi0yOexL
         tldnf6vEiqhgoFA4bwRBZSvYelSg/xhGYaEWX6nuwNJZh4Tq4ofy6bAtrNDRGIQSH5Js
         idmSIG4Utdg1OhgBhL1U2zTVsJRzZJ/fiYpRT6xO0BfTVayZCKrvr/aj1pEQ41QkfFJw
         svlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TdrYeiGyVLgXFwPmN4HpK00/pwJc8KhvbPJX7aiYxLU=;
        b=O9pBwYOcx541pcUJj+Tuxw+civydzcMeccTnW+Rh+6FrS1ncKOm0GK9dc9h6Pg+6dC
         sUtcbJAxr+l9bswoa9aXhN8TdPRTt9ypIqNQc9KqwUzmfla3iNvQpGpVyDuzhnGU8h71
         UtE8ybWe2JrbkazT9yzgNQwUfEV9/LVPukN2uvb9TIw6nvo6wV7tvFq+LklUxtTTrMuu
         YwAmkawy1hypH200BX4We/2GAe0PM+UR14KRvScHwtMHuDWZSb6EpwViffsc8KvgUggx
         P2CIkuUAc2ntxEJZqaWYMFoXPZyXTBoSCDnF8LCwgOwbCoOfSAgCObdfxa/daZ2h63UH
         BeeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QWId+khd;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z16si630102pju.0.2021.03.13.11.41.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Mar 2021 11:41:44 -0800 (PST)
Received-SPF: pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A9A2464EB5;
	Sat, 13 Mar 2021 19:41:43 +0000 (UTC)
Date: Sat, 13 Mar 2021 21:41:19 +0200
From: Jarkko Sakkinen <jarkko@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Sumit Garg <sumit.garg@linaro.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [jarkko-linux-tpmdd:master 9/12] WARNING: modpost:
 vmlinux.o(.text+0x1176e44): Section mismatch in reference from the function
 trusted_tpm_init() to the function .init.text:init_digests()
Message-ID: <YE0VXyEbYj0wNB//@kernel.org>
References: <202103140024.AKbZvW9a-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103140024.AKbZvW9a-lkp@intel.com>
X-Original-Sender: jarkko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QWId+khd;       spf=pass
 (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jarkko@kernel.org;       dmarc=pass (p=NONE
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

Sumit, I applied a fixup for this.

/Jarkko

On Sun, Mar 14, 2021 at 12:08:29AM +0800, kernel test robot wrote:
> tree:   git://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.git master
> head:   cd18a1dd7b57c78927fbe9c9e86823c54d373961
> commit: 251c85bd106099e6f388a89e88e12d14de2c9cda [9/12] KEYS: trusted: Add generic trusted keys framework
> config: x86_64-randconfig-a011-20210313 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dfd27ebbd0eb137c9a439b7c537bb87ba903efd3)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.git/commit/?id=251c85bd106099e6f388a89e88e12d14de2c9cda
>         git remote add jarkko-linux-tpmdd git://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.git
>         git fetch --no-tags jarkko-linux-tpmdd master
>         git checkout 251c85bd106099e6f388a89e88e12d14de2c9cda
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> WARNING: modpost: vmlinux.o(.text+0x1176e44): Section mismatch in reference from the function trusted_tpm_init() to the function .init.text:init_digests()
> The function trusted_tpm_init() references
> the function __init init_digests().
> This is often because trusted_tpm_init lacks a __init
> annotation or the annotation of init_digests is wrong.
> --
> >> WARNING: modpost: vmlinux.o(.text+0x1176e65): Section mismatch in reference from the function trusted_tpm_init() to the function .init.text:trusted_shash_alloc()
> The function trusted_tpm_init() references
> the function __init trusted_shash_alloc().
> This is often because trusted_tpm_init lacks a __init
> annotation or the annotation of trusted_shash_alloc is wrong.
> 
> The below error/warnings are from parent commit:
> << WARNING: modpost: vmlinux.o(.text+0x174f8f): Section mismatch in reference from the function test_bit() to the variable .init.data:numa_nodes_parsed
> << WARNING: modpost: vmlinux.o(.text+0x174ffb): Section mismatch in reference from the function __nodes_weight() to the variable .init.data:numa_nodes_parsed
> << WARNING: modpost: vmlinux.o(.text+0x17502c): Section mismatch in reference from the function __first_node() to the variable .init.data:numa_nodes_parsed
> << WARNING: modpost: vmlinux.o(.text+0x1750b2): Section mismatch in reference from the function __next_node() to the variable .init.data:numa_nodes_parsed
> << WARNING: modpost: vmlinux.o(.text+0x174f8f): Section mismatch in reference from the function test_bit() to the variable .init.data:numa_nodes_parsed
> << WARNING: modpost: vmlinux.o(.text+0x174ffb): Section mismatch in reference from the function __nodes_weight() to the variable .init.data:numa_nodes_parsed
> << WARNING: modpost: vmlinux.o(.text+0x17502c): Section mismatch in reference from the function __first_node() to the variable .init.data:numa_nodes_parsed
> << WARNING: modpost: vmlinux.o(.text+0x1750b2): Section mismatch in reference from the function __next_node() to the variable .init.data:numa_nodes_parsed
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YE0VXyEbYj0wNB//%40kernel.org.
