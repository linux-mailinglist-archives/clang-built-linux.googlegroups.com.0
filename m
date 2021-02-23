Return-Path: <clang-built-linux+bncBCS7XUWOUULBBTHR2WAQMGQEC4XT5KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C4F323375
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 22:51:10 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id a63sf22232967yba.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 13:51:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614117069; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZYsSGPhW+/oxkLoYRe0ligk+D7KsuOIFWZVQzWuT2cc4zaDRNzMQQ5mjR09yDDeFme
         Ii+ihT4VpVEGT4l0BACZuUWvdE4g6j1WVvsIJOoWkIqxtiNi3kOtTRZqBY+sLr56A7lC
         eeQTaMKp//Dp7PSva/95S1+sDB5kL30/NLbCXskJG8TMwVQn8RHFBdxBE2mmNUZrQlQ+
         yGB6nvTpkSsEvNyj1ek+qzIRVZE9jGAywbzaOd6zWvgBVsZIHrQA9ME9+bWGx9aOuhHv
         U0OjjzmRi0GWZDANsrnx3dA/Wit9h4gS0QAMk/QVipejrlZsaIjvnj3vHMqq+xLB+zBZ
         bg/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Qc8bTz8/+aK2TbxXA0eqUuvsrVLW5RN94mnTVZBa094=;
        b=K+t4P97JgiTt4KvcejhrNQf4eMrgFkqEpztbd4bXyaaT/52JrLbkQukyQj5asNWV4Q
         hp2e8IAhlxv1dVovUJrlfNqbnbygqQy7eDNYJi7ETfmL4AAQf5DnOUDZXsSoh839jXN8
         I8QybFGGmVMVmXoklWKg9pA0tFKf22o+cFw1mbOL2ispPX2b5Fh2aKbkAfbGexbpSFCo
         U0LtI/DCLN9GCIFJ/TSchUDin05Kc84ZkQJ95hCFTzQT96s21ReDhAMw1Xz+LD56K+Io
         yavrDD+Ux4nDm+rGzYzUMqq4YcwkDmtUxzwG8X591f+VTgmX/F/ZeXbS8bJoRZs6L8ls
         RhUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IEZqbPCv;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Qc8bTz8/+aK2TbxXA0eqUuvsrVLW5RN94mnTVZBa094=;
        b=PbS41qjnn2QD2Blt00Rz45TM0qO2wbaHsscRKxyf8CLUyJXQamlgILCVT230rLbW5R
         GbKaW5lSug5CxiJj67S/qOUgiJ/bEm6g6t1fVxHEnBqXfr8Kf/Nt1XcIsioDFH4ZHltP
         RyxraVSY6SLSISXrj/VX31eRDCF60uWyLzNY8VQp8EXyEbCkWE6TLXufRMe4lCXQMKV9
         x7AdcOTRsCJTLcXekF3ZxoVf9kLDqlZvJmDldu1m7DX4S9rQMl7sYYp3FchEp7RT/B1t
         Pz9s7vN9AnJBnQIGJwpCXPR4of5p4/hgs2A5+MdtIyRiYONQ0ZNErmMaCoyJluJzXuK8
         EMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qc8bTz8/+aK2TbxXA0eqUuvsrVLW5RN94mnTVZBa094=;
        b=KPSCAL6MddcbUeJ279YG1+x0qEVIw49PxA1Fzswb2SrayQ1wXzw2nRoN4rq36WF8m0
         OBkrfCYZM6nPI0R9pvgD326hOIod3yczHimnIqXKS59evKvKZQma0/wH8zJm0BOWLUog
         aihnnqpSLdcT/Ekq5lpLFbS3X4cFpFx1cijjmLWQfnbyATo3uL4ymLrfZIDxhU29aMqs
         qEIaSRqg5cpZoovTrDQb7c2AjnvTOLw8+qYyqiSXjzEmP3Dh0zfq6jlEhNkxMXobCHls
         vclmkET+WvpdFg68qi5hrvfX4/xdNrV6CBHyl8hmCz8CMLVnqZO5m4GKHfJGONjDU1go
         6gLg==
X-Gm-Message-State: AOAM533t8azzERP0ppYJNHq5dz0MszVTpDRVY7iesglvYbe/tBRadlEf
	aMFa66MYAuQBJDNYN1RtCiU=
X-Google-Smtp-Source: ABdhPJxf/bPuqn7dwsjzRLTbveu/V2rWayLjd95TGDVk4ciMQriKtytmTZww8ePIQoE/6sPczuLUhw==
X-Received: by 2002:a25:2d07:: with SMTP id t7mr44266040ybt.127.1614117069014;
        Tue, 23 Feb 2021 13:51:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bc4c:: with SMTP id d12ls10560599ybk.0.gmail; Tue, 23
 Feb 2021 13:51:08 -0800 (PST)
X-Received: by 2002:a25:2105:: with SMTP id h5mr40106953ybh.6.1614117068627;
        Tue, 23 Feb 2021 13:51:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614117068; cv=none;
        d=google.com; s=arc-20160816;
        b=dpb4qB52is8wacMb43p2GD7UyYPylHWAjIWQyXUmPZOjGLcwFK1C9wH/DExwcS+o2t
         iDjv5IdLg20cpROwp0/e4PK3edfmiagyj9IG19veyabM5C6fXix956ay6jocQz+a6Lzv
         aMZvVa8O5vAI5nrguMR4yQDH/JD3oZB7P7/d7/iyaPruqAKC3It5H7g/g2LitpmtZn/u
         +GbMEGXqvjFYW3IX283vmnsEi3OgiZBy/yrsVEOJOX+dNp1AtTRrf9oFVw2zqcNqK47f
         E2MXv2Jv4fQCR12I99aqVz2LpT3OOcgKc8YE8JjcAu74jTTCSmfPpKNoJGOfwIpuq97u
         2DFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ye2L49+wQ68oX4dFxzEcq970fG9pOcCPaNL9pU1T/RI=;
        b=MlU4r+50Qvf3arfEsqDZSOhiXGzTGa1sCMNCYWJyUNI0DGIpn8Uv4a3IKHWZxBR/9N
         BrhBtdx4dU/ZDsDKzvpHrG5HZ7W1IFmoRrDwzr0LGozDkCNmbL+vPovPFFzMawjJrC6L
         9BbCz9eKJx6PgYoxCPIAQSB0MxBVgYAyrzQSpx1Wb2oQcvPVQ9GLH069RY6pP91crT0T
         fqQ8mLM6/GoeQDCG3GsRSD5LSFPqXeAnqCbQQr9aRGzuPP0cJ/CWomD9TC+JsuZoR1MD
         O6qX6TyaaAUwvAJCrrNYcG4GKiWQVtjg9IVx/KT7v1BTOPsHTRablPcLGSoGTXzTkgXe
         4wIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IEZqbPCv;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id i194si6079yba.2.2021.02.23.13.51.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Feb 2021 13:51:08 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id e6so62019pgk.5
        for <clang-built-linux@googlegroups.com>; Tue, 23 Feb 2021 13:51:08 -0800 (PST)
X-Received: by 2002:a65:6207:: with SMTP id d7mr26941431pgv.92.1614117067890;
        Tue, 23 Feb 2021 13:51:07 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:3c0b:57e1:5dd9:13b1])
        by smtp.gmail.com with ESMTPSA id o11sm74296pjg.41.2021.02.23.13.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Feb 2021 13:51:07 -0800 (PST)
Date: Tue, 23 Feb 2021 13:51:04 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [linux-next:master 8545/12022] ld.lld: error:
 arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2576): unknown
 relocation (110) against symbol interrupt_base_book3e
Message-ID: <20210223215104.etyo2intapqy2t4n@google.com>
References: <202102222003.q8ZqV9Xy-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <202102222003.q8ZqV9Xy-lkp@intel.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IEZqbPCv;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::531
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-02-22, kernel test robot wrote:
>CC: Linux Memory Management List <linux-mm@kvack.org>
>TO: Nicholas Piggin <npiggin@gmail.com>
>CC: Michael Ellerman <mpe@ellerman.id.au>
>
>Hi Nicholas,
>
>First bad commit (maybe != root cause):
>
>tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>head:   37dfbfbdca66834bc0f64ec9b35e09ac6c8898da
>commit: 755d664174463791489dddf34c33308b61de68c3 [8545/12022] powerpc: DebugException remove args
>config: powerpc-randconfig-r026-20210222 (attached as .config)
>compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
>reproduce (this is a W=1 build):
>        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>        chmod +x ~/bin/make.cross
>        # install powerpc cross compiling tool for clang build
>        # apt-get install binutils-powerpc-linux-gnu
>        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=755d664174463791489dddf34c33308b61de68c3
>        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>        git fetch --no-tags linux-next master
>        git checkout 755d664174463791489dddf34c33308b61de68c3
>        # save the attached .config to linux build tree
>        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
>
>If you fix the issue, kindly add following tag as appropriate
>Reported-by: kernel test robot <lkp@intel.com>
>
>All errors (new ones prefixed by >>):
>
>   ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x23EE): unknown relocation (110) against symbol interrupt_base_book3e
>   ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2406): unknown relocation (110) against symbol __end_interrupts
>>> ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x2576): unknown relocation (110) against symbol interrupt_base_book3e
>>> ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x258E): unknown relocation (110) against symbol __end_interrupts
>   ld.lld: error: arch/powerpc/built-in.a(kernel/exceptions-64e.o):(.text+0x37F2): unknown relocation (110) against symbol
>   ld.lld: error: undefined symbol: .early_setup
>   >>> referenced by arch/powerpc/kernel/head_64.o:(.ref.text+0x5A)
>   >>> did you mean: early_setup
>   >>> defined in: arch/powerpc/built-in.a(kernel/setup_64.o)
>
>Kconfig warnings: (for reference only)
>   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
>   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
>   Selected by
>   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP

110 is R_PPC64_ADDR16_HIGH.
This is https://github.com/ClangBuiltLinux/linux/issues/1260

A newer LLD 12.0.0 (llvmorg-12-init-17087-g5fcb412ed083) supports R_PPC64_ADDR16_HIGH.
llvmorg-12-init-17023-gc9439ca36342 used by the bot does not have R_PPC64_ADDR16_HIGH support.

>---
>0-DAY CI Kernel Test Service, Intel Corporation
>https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102222003.q8ZqV9Xy-lkp%40intel.com.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210223215104.etyo2intapqy2t4n%40google.com.
