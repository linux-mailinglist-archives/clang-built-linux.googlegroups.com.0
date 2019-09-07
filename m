Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3PXZTVQKGQEBQNISYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 282F5AC4BA
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 07:11:12 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id v15sf3560352wrg.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 22:11:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567833070; cv=pass;
        d=google.com; s=arc-20160816;
        b=0xBQepGwKCIecQ1CC8sEUK7rB93W2YFBQ37KKIg/SWTSrXkobBJ9LHbdmDjwGKc2wt
         u3Cb6H7h7POY9pmM10GEyLb0oQksJhrvgofA9MHeriJ5WvUQJ6VJbWdnUnAepn9h0MNe
         /x8M6Th7GltWqu4QjWte3chOjJR8RZWfPHe8qwAmh1xEK3FSLhisvtjxXb0/fQx1FQi1
         ewhCMvnYC/fK6Ww1kVVcRkbRdowHNYuAbTLIFRXt6p7kcliVfrgiMOxC31ZdOZhDEjd/
         /xU4Bxy5KsZw0LfqGTGBIS4RzJhj/BwZlvJODZEGplUfl4A4MHocOnlbI4m3L1K0iRzs
         l5MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qKwBoz69kSICTFf0PBItjvBuEYK77juLUKndlsIh8cg=;
        b=fbFYttbnLKghv7PzfnAowmRouFkHuV2E7BMZCMuZpDyUB2xdaJ8yUIq16OkN71YESM
         GxbYvixVcB9NA6UR/laHnALY2naNzlcooqfb/AqacgAUFsPQy/TPm/zxFh33oOkZw+0F
         0LYiCwsJM83A8WyCi4e5VY9XQJhK7GtYjVIwsfigQlNxGD2SvF4FwSXafy8Uu29KJDs3
         f2GGqm1SsFE81dSBS2MXTANR98nSftlo26iL8I1ibAMp3iKWyO9lbLhYd6uyLQ3SPkAN
         XU3KtPv7aS17g08a1PzrvY34h2O9s/EvoZaWxftDjA9KBWF457iARKsXKVfq+Ye4/4+o
         r2Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="fjMyWlC/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qKwBoz69kSICTFf0PBItjvBuEYK77juLUKndlsIh8cg=;
        b=nlxJCG3HCwOcuEdhdQcC/ZOuf1gQhb2Jqlo2Ooa6rA8SbL/snSO50hWRk3SAj07gOR
         ALn98Eji8byaTlo8nKEuvUJYxA0jBcgKT1d4KkUbB1dLUMowyhSKVfTOE+YkCkeS7kVp
         25beJFuvLfy4yQMAFqub0Sj9KlJk7zzsr9fKR8zfTXkZwTr51c+pRL0kcOwy2ArXv9DM
         qOxeKl/Fp5Cx2nU4SChp5rM0/4q3l61HsT4EEoqsDbttGqPo5CyJSyGCxnPYeVl5QXnw
         kGBKrFYR2ruEf06aKSEemMpYN6Cjxa5jD4tWgyQfQ+DouWgHkpL9Oih3bhtpmCNmc0+4
         50pA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qKwBoz69kSICTFf0PBItjvBuEYK77juLUKndlsIh8cg=;
        b=R4+Cf/seBXayTh56ZTdhnGyuCjl63dQ4rFQOh0t9j5HgSrFzW2dl/CrumvG5c54GRG
         HhQQUjlyN8lu4DDaIP3pwnIj3Orb7pJg7+3T9Mk65K6Ii8YkraASK8gU20w+7aymm5bi
         F6O74FqqG3heBoAouWBGV9YQVDbCLx7Ojo+gB6mT5FBmmvNyUmfnHyKE0+qoxmn9o4wf
         od248eltUXrrK+VkP0bDLMYJO2JRql0/hZR3eDjTOo0YuevuQWJy1Tgn59v2+phnEvV8
         QnIVKTIfIx5K06l6fXpix6nXPxOudQFL0cwFyvN+hGuJKArMDupalig4LnS92HMko00x
         i02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qKwBoz69kSICTFf0PBItjvBuEYK77juLUKndlsIh8cg=;
        b=WdQZq7Tu/d8zjjs7V4R8xpyTWRBWsqsXfoePh110JgnT7NtDiO8lRLe97ifzNuGzhB
         IugmgoXcIzMQ2Ng64XGv2Jl9csDQIN/3V8sPmeXwn8qyyfUFaX1JHDiIDzQqTk9y8fOx
         fPEOh+ezhAR69hQj+aQfAuNLlbXa53y0J45V4JGjX+Z3pbPQ/8fJ4wYlaTdmahrzPAWn
         xHE3LlUiT7NN7k43BvoGUn5f9sPputFRX/ifZX8lyQQkAu+Gft/o6H0TnQBWtlD4RT/V
         xKDbcYBoyhc9q+SwYGsUsrJubHOIvwo1T2GF+02c6tnTbMiVzGGCgu1JRPt++RjS8GSL
         hRHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVvv/BTepR2v21PXXC8BXqGFKZup/fu2uLCydeyiiXeZCUWlrI3
	wNeK99059+eNtkaL5mnnHrA=
X-Google-Smtp-Source: APXvYqzZski98RUHcgQNM4TkEOxJSYbO82mOpKW74OnJVdCcqngaeANDlnetcQYymb3qGxEe7+EkUA==
X-Received: by 2002:a05:600c:218e:: with SMTP id e14mr10216184wme.121.1567833069724;
        Fri, 06 Sep 2019 22:11:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c44a:: with SMTP id l10ls2925656wmi.0.gmail; Fri, 06 Sep
 2019 22:11:09 -0700 (PDT)
X-Received: by 2002:a7b:ce94:: with SMTP id q20mr7854006wmj.97.1567833069287;
        Fri, 06 Sep 2019 22:11:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567833069; cv=none;
        d=google.com; s=arc-20160816;
        b=FBPkDAW3RfZB3CZwdcZMocvFOoe0uiWuK55zevkZHBiHiaQP4wM+LjLNbPQrIaq6Ji
         oPJOmYGLsgUu+FSFqQagHfwXBcV4LcRKb6+krPEmu7Og3ZpsJRiX38uERUkJNWEbUQ5N
         3A2fmGpNlygjxgQGsF4FseXMCEdeMJML73CqRfLb0sX4RZsmQCSzyMr02ifFQHkFqGVs
         DrbnABV34tmRAYvg5jTJA9Glb6kkQp4xN0V5uPtVgOEwmmfmaZxcaNCI+1fs5AsIBIuM
         nU0xN0XhZvksz7yPxAYWT9yw/+FOrlPtr2THIWQpamQkkGWslkAJE94neYSJtdZ4sk2r
         C5zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NZYAp9FzeDLKOxEbe7Vb0lrWK7awTUAn7J1h7zA75Y0=;
        b=b/u67fzZfi9Fspw/ktS1jYQAGNIZwxFyV5Z5uF7JkLYzPX1O4V2HvSRJNOfrEX0K45
         L35z8FR7aKgbkfXuM7ATKlE6FiZE06GDGwNPL1kPQlv/dU/IVRJG2Eu/lFWkg+P7UL/D
         /OLj1XstFrR0ECjkTBShOQkKYQTSholCj1p54iQ8luUqfMrPrD1YXFcEN+/EHiiCFYwr
         xXS6p7HCOsI8bAG5hg+gY97+c2uqmnWYNzEUjSounNQGJxu/zrqiJd66sGcHbH/LNCYu
         8dJvqVgGqnSzqaNSD05ddlGiS8zVltzq06PgaE8NPmTCHc3HEkLOWr2dFZpC5hzRe6r2
         vk5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="fjMyWlC/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id s194si649560wme.2.2019.09.06.22.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 22:11:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id r195so9163044wme.2
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 22:11:09 -0700 (PDT)
X-Received: by 2002:a1c:9a94:: with SMTP id c142mr9835157wme.172.1567833068696;
        Fri, 06 Sep 2019 22:11:08 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id s1sm10434620wrg.80.2019.09.06.22.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2019 22:11:08 -0700 (PDT)
Date: Fri, 6 Sep 2019 22:11:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [vhost:linux-next 15/15] include/linux/page_reporting.h:72:15:
 error: use of undeclared identifier 'HUGETLB_PAGE_ORDER'
Message-ID: <20190907051106.GA92121@archlinux-threadripper>
References: <201909070330.i9uh9sEK%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909070330.i9uh9sEK%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="fjMyWlC/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Sep 07, 2019 at 03:27:34AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: kvm@vger.kernel.org
> CC: virtualization@lists.linux-foundation.org
> CC: netdev@vger.kernel.org
> TO: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> CC: "Michael S. Tsirkin" <mst@redhat.com>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/mst/vhost.git linux-next
> head:   c5db5a8d998da36ada7287aa53b4ed501a0a2b2b
> commit: c5db5a8d998da36ada7287aa53b4ed501a0a2b2b [15/15] virtio-balloon: Add support for providing unused page reports to host
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout c5db5a8d998da36ada7287aa53b4ed501a0a2b2b
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    arch/arm64/Makefile:54: CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built
>    arch/arm64/Makefile:54: CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built
>    In file included from arch/arm64/kernel/asm-offsets.c:10:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/irqdomain.h:35:
>    In file included from include/linux/of.h:17:
>    In file included from include/linux/kobject.h:20:
>    In file included from include/linux/sysfs.h:16:
>    In file included from include/linux/kernfs.h:13:
>    In file included from include/linux/idr.h:15:
>    In file included from include/linux/radix-tree.h:18:
>    In file included from include/linux/xarray.h:14:
>    In file included from include/linux/gfp.h:6:
>    In file included from include/linux/mmzone.h:775:
>    include/linux/page_reporting.h:9:37: warning: 'HUGETLB_PAGE_ORDER' is not defined, evaluates to 0 [-Wundef]
>    #if defined(CONFIG_HUGETLB_PAGE) && HUGETLB_PAGE_ORDER < MAX_ORDER
>                                        ^
> >> include/linux/page_reporting.h:72:15: error: use of undeclared identifier 'HUGETLB_PAGE_ORDER'
>            if (order >= PAGE_REPORTING_MIN_ORDER &&
>                         ^
>    include/linux/page_reporting.h:10:34: note: expanded from macro 'PAGE_REPORTING_MIN_ORDER'
>    #define PAGE_REPORTING_MIN_ORDER        HUGETLB_PAGE_ORDER
>                                            ^
>    include/linux/page_reporting.h:94:31: error: use of undeclared identifier 'HUGETLB_PAGE_ORDER'
>            zone->reported_pages[order - PAGE_REPORTING_MIN_ORDER]++;
>                                         ^
>    include/linux/page_reporting.h:10:34: note: expanded from macro 'PAGE_REPORTING_MIN_ORDER'
>    #define PAGE_REPORTING_MIN_ORDER        HUGETLB_PAGE_ORDER
>                                            ^
>    include/linux/page_reporting.h:110:44: error: use of undeclared identifier 'HUGETLB_PAGE_ORDER'
>            zone->reported_pages[page_private(page) - PAGE_REPORTING_MIN_ORDER]--;
>                                                      ^
>    include/linux/page_reporting.h:10:34: note: expanded from macro 'PAGE_REPORTING_MIN_ORDER'
>    #define PAGE_REPORTING_MIN_ORDER        HUGETLB_PAGE_ORDER
>                                            ^
>    include/linux/page_reporting.h:158:14: error: use of undeclared identifier 'HUGETLB_PAGE_ORDER'
>            if (order < PAGE_REPORTING_MIN_ORDER)
>                        ^
>    include/linux/page_reporting.h:10:34: note: expanded from macro 'PAGE_REPORTING_MIN_ORDER'
>    #define PAGE_REPORTING_MIN_ORDER        HUGETLB_PAGE_ORDER
>                                            ^
>    include/linux/page_reporting.h:167:36: error: use of undeclared identifier 'HUGETLB_PAGE_ORDER'
>                        zone->reported_pages[order - PAGE_REPORTING_MIN_ORDER] : 0;
>                                                     ^
>    include/linux/page_reporting.h:10:34: note: expanded from macro 'PAGE_REPORTING_MIN_ORDER'
>    #define PAGE_REPORTING_MIN_ORDER        HUGETLB_PAGE_ORDER
>                                            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:14:
>    In file included from include/linux/kvm_host.h:11:
>    include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                    return (set->sig[3] | set->sig[2] |
>                            ^        ~
>    include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:14:
>    In file included from include/linux/kvm_host.h:11:
>    include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                    return (set->sig[3] | set->sig[2] |
>                                          ^        ~
>    include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:14:
>    In file included from include/linux/kvm_host.h:11:
>    include/linux/signal.h:88:4: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                            set->sig[1] | set->sig[0]) == 0;
>                            ^        ~
>    include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:14:
>    In file included from include/linux/kvm_host.h:11:
>    include/linux/signal.h:90:11: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                    return (set->sig[1] | set->sig[0]) == 0;
>                            ^        ~
>    include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:14:
>    In file included from include/linux/kvm_host.h:11:
>    include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                    return  (set1->sig[3] == set2->sig[3]) &&
>                             ^         ~
>    include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:14:
>    In file included from include/linux/kvm_host.h:11:
>    include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                    return  (set1->sig[3] == set2->sig[3]) &&
>                                             ^         ~
>    include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:14:
>    In file included from include/linux/kvm_host.h:11:
>    include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                            (set1->sig[2] == set2->sig[2]) &&
>                             ^         ~
>    include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:14:
>    In file included from include/linux/kvm_host.h:11:
>    include/linux/signal.h:104:21: warning: array index 2 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                            (set1->sig[2] == set2->sig[2]) &&
>                                             ^         ~
>    include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/arm64/kernel/asm-offsets.c:14:
>    In file included from include/linux/kvm_host.h:11:
>    include/linux/signal.h:105:5: warning: array index 1 is past the end of the array (which contains 1 element) [-Warray-bounds]
>                            (set1->sig[1] == set2->sig[1]) &&
>                             ^         ~
>    include/uapi/asm-generic/signal.h:91:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
> 
> vim +/HUGETLB_PAGE_ORDER +72 include/linux/page_reporting.h
> 
> b1b0d638e6f93b Alexander Duyck 2019-09-06   8  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  @9  #if defined(CONFIG_HUGETLB_PAGE) && HUGETLB_PAGE_ORDER < MAX_ORDER
> b1b0d638e6f93b Alexander Duyck 2019-09-06  10  #define PAGE_REPORTING_MIN_ORDER	HUGETLB_PAGE_ORDER
> b1b0d638e6f93b Alexander Duyck 2019-09-06  11  #else
> b1b0d638e6f93b Alexander Duyck 2019-09-06  12  #define PAGE_REPORTING_MIN_ORDER	(MAX_ORDER - 1)
> b1b0d638e6f93b Alexander Duyck 2019-09-06  13  #endif
> b1b0d638e6f93b Alexander Duyck 2019-09-06  14  #define PAGE_REPORTING_HWM		32
> b1b0d638e6f93b Alexander Duyck 2019-09-06  15  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  16  #ifdef CONFIG_PAGE_REPORTING
> b1b0d638e6f93b Alexander Duyck 2019-09-06  17  struct page_reporting_dev_info {
> b1b0d638e6f93b Alexander Duyck 2019-09-06  18  	/* function that alters pages to make them "reported" */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  19  	void (*report)(struct page_reporting_dev_info *phdev,
> b1b0d638e6f93b Alexander Duyck 2019-09-06  20  		       unsigned int nents);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  21  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  22  	/* scatterlist containing pages to be processed */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  23  	struct scatterlist *sg;
> b1b0d638e6f93b Alexander Duyck 2019-09-06  24  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  25  	/*
> b1b0d638e6f93b Alexander Duyck 2019-09-06  26  	 * Upper limit on the number of pages that the react function
> b1b0d638e6f93b Alexander Duyck 2019-09-06  27  	 * expects to be placed into the batch list to be processed.
> b1b0d638e6f93b Alexander Duyck 2019-09-06  28  	 */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  29  	unsigned long capacity;
> b1b0d638e6f93b Alexander Duyck 2019-09-06  30  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  31  	/* work struct for processing reports */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  32  	struct delayed_work work;
> b1b0d638e6f93b Alexander Duyck 2019-09-06  33  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  34  	/*
> b1b0d638e6f93b Alexander Duyck 2019-09-06  35  	 * The number of zones requesting reporting, plus one additional if
> b1b0d638e6f93b Alexander Duyck 2019-09-06  36  	 * processing thread is active.
> b1b0d638e6f93b Alexander Duyck 2019-09-06  37  	 */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  38  	atomic_t refcnt;
> b1b0d638e6f93b Alexander Duyck 2019-09-06  39  };
> b1b0d638e6f93b Alexander Duyck 2019-09-06  40  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  41  /* Boundary functions */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  42  struct list_head *__page_reporting_get_boundary(unsigned int order,
> b1b0d638e6f93b Alexander Duyck 2019-09-06  43  						int migratetype);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  44  void page_reporting_del_from_boundary(struct page *page, struct zone *zone);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  45  void page_reporting_add_to_boundary(struct page *page, struct zone *zone,
> b1b0d638e6f93b Alexander Duyck 2019-09-06  46  				    int migratetype);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  47  void page_reporting_move_to_boundary(struct page *page, struct zone *zone,
> b1b0d638e6f93b Alexander Duyck 2019-09-06  48  				     int migratetype);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  49  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  50  /* Reported page accessors, defined in page_alloc.c */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  51  struct page *get_unreported_page(struct zone *zone, unsigned int order,
> b1b0d638e6f93b Alexander Duyck 2019-09-06  52  				 int migratetype);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  53  void free_reported_page(struct page *page, unsigned int order);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  54  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  55  /* Tear-down and bring-up for page reporting devices */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  56  void page_reporting_shutdown(struct page_reporting_dev_info *phdev);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  57  int page_reporting_startup(struct page_reporting_dev_info *phdev);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  58  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  59  void __page_reporting_free_stats(struct zone *zone);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  60  void __page_reporting_request(struct zone *zone);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  61  #endif /* CONFIG_PAGE_REPORTING */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  62  
> b1b0d638e6f93b Alexander Duyck 2019-09-06  63  /*
> b1b0d638e6f93b Alexander Duyck 2019-09-06  64   * Method for obtaining the tail of the free list. Using this allows for
> b1b0d638e6f93b Alexander Duyck 2019-09-06  65   * tail insertions of unreported pages into the region that is currently
> b1b0d638e6f93b Alexander Duyck 2019-09-06  66   * being scanned so as to avoid interleaving reported and unreported pages.
> b1b0d638e6f93b Alexander Duyck 2019-09-06  67   */
> b1b0d638e6f93b Alexander Duyck 2019-09-06  68  static inline struct list_head *
> b1b0d638e6f93b Alexander Duyck 2019-09-06  69  get_unreported_tail(struct zone *zone, unsigned int order, int migratetype)
> b1b0d638e6f93b Alexander Duyck 2019-09-06  70  {
> b1b0d638e6f93b Alexander Duyck 2019-09-06  71  #ifdef CONFIG_PAGE_REPORTING
> b1b0d638e6f93b Alexander Duyck 2019-09-06 @72  	if (order >= PAGE_REPORTING_MIN_ORDER &&
> b1b0d638e6f93b Alexander Duyck 2019-09-06  73  	    test_bit(ZONE_PAGE_REPORTING_ACTIVE, &zone->flags))
> b1b0d638e6f93b Alexander Duyck 2019-09-06  74  		return __page_reporting_get_boundary(order, migratetype);
> b1b0d638e6f93b Alexander Duyck 2019-09-06  75  #endif
> b1b0d638e6f93b Alexander Duyck 2019-09-06  76  	return &zone->free_area[order].free_list[migratetype];
> b1b0d638e6f93b Alexander Duyck 2019-09-06  77  }
> b1b0d638e6f93b Alexander Duyck 2019-09-06  78  
> 
> :::::: The code at line 72 was first introduced by commit
> :::::: b1b0d638e6f93b91cf34585350bb00035d066989 mm: Introduce Reported pages
> 
> :::::: TO: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> :::::: CC: Michael S. Tsirkin <mst@redhat.com>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Also reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-September/063931.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190907051106.GA92121%40archlinux-threadripper.
