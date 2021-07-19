Return-Path: <clang-built-linux+bncBDWY34ORWUORBO6E2WDQMGQES55ICRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5CE3CD3E2
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 13:30:04 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id x9-20020a6541490000b0290222fe6234d6sf14642096pgp.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 04:30:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626694203; cv=pass;
        d=google.com; s=arc-20160816;
        b=diTJE2KdKJlX8/KZApCJ+a83XeVLxfTaQNG/fxJCiKpkT2wtbn+xIjCjMke4exJTpE
         zyzk9xQlN6HWmfXYdp2Acm2I8lT+GtY29i9yNTFmGSYq5pd4LK2/tbE0eI1PBF2LhNFq
         eGDnyRdZe7tfOMB4VQlnIxQp5LqIK62A4maTtWGyRH4jYpv+VGFclD+yJSedOJTRJzhP
         bfxP95Zhmpag2e9sGQYORtjlfzGEApfGv1QAfeR5T3FuMU+DkZqVeYm7qYyun9emK+qw
         nziyOUu0rIB1BKgd78EJcoBexyzPnnuF8/7x+nzTRNQmeNvfRSCCwPlv6lFrjHXNs+4p
         ga0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:reply-to:sender:dkim-signature;
        bh=IAJGEIjKGINd7v4TO13KiYUMr+sMBaXE1Evf7MtrNts=;
        b=vckWK9tK1K+x+w1W3VopY5KYZEuf3KtVm425BImbahzxaK9Oab2J1Qm3f/QfnDO5Ii
         3GH1RzWyvU083auHlDTIoSYzJcDKhjOMf9dI2W/upC7996z/bWZ1+FroXUlcbosDtk8O
         9Gd4j0hT6XlnySLN57Eg/LDh5wLM0nsKtUjZ1+p5CAizuefZ6c2Bm7jQ3LtQc+6kSiwI
         deIzXufTh5dMSR65aZFQv1SO8Y+nKdy1aTm8sAxAcyIjN07eK9JaqS6zw7b8UnMvVVqJ
         AKu0ydu9U15HRBd4sHxTCGdOg6ta/qGdkAex5V9570TanZw4Km/vpsmILRtWP/nKLtz0
         XJww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VnA5wtoe;
       spf=pass (google.com: domain of gshan@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=gshan@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:reply-to:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IAJGEIjKGINd7v4TO13KiYUMr+sMBaXE1Evf7MtrNts=;
        b=cgXqucXPDLWNTTe0X8pJt/ohC6dKWXo8EqeiAiQ1sEEidPg2+YSR2/bBQO1d1BVM37
         5tkeakMxWTc0OW659MFYxLHEYvlcOVm+3AnkMWJQKIOtXTPx/Kx1k3GVtiKc+xKTiPWP
         Q0IsjkmjHVe0xhXDvWA7jmMdxPhxfELdpxMxG+iLkXdx2zmbsrw8uwuc3qKP+dxLxxI7
         wddppl0h8DU+J8opKh58g1Jbwclgf3pGr5a+Iwdv98BAvnVccjft1uvFgmvljXGtZtdo
         rwcXp27ZM1LpWOFVLNsRzf3USUNEE3M8vnN0+POiMobc8lBIBFH2JyCjk3myFYZcUiFy
         3IZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IAJGEIjKGINd7v4TO13KiYUMr+sMBaXE1Evf7MtrNts=;
        b=kL7S6r03oH6Ps6wNnStOaAF6Vkt0FuD+KpFcsuW3e65BMiSd8oTFisgmtGo7w6bL5c
         /eq+uCpvsvGkE6+BXXEpzzcn2rJilw6tGztV+r5vrUUtEWUvwYdr7xIS3uuk/KjhGhcb
         42ewdpefcLEQiZ/3ZrelxFVpSki4iuhl7NGKKpWT4pjRgnJisKxm23oF3qJDPnkRatbP
         77Z+RH8xu4xmKTNUUqS48pfdbYTimwG9ELd87VT3bP9BYg6gJQj3owQDop+Zpqoy1LSE
         NIbya1n21GCC34wt4nNWe5LSmmv9MA+iWxrK6G2hNtWODe6zbniuNzz0xM5FTtRzZ1Ml
         qPYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531D+wTFZtWNG1uOSq4eswHnjdRb+/CJvnowi+8DHXYLQStvq33K
	eHfWfJ6hu3QCY5SFXzJMzcU=
X-Google-Smtp-Source: ABdhPJwpykxJlflMFiMW+2l1uwru+dRtj762xIN6GqgNfFRoB8Dvuk4JjIra7o2IG1t8Ff/+KTMV4w==
X-Received: by 2002:a17:903:1243:b029:ed:8298:7628 with SMTP id u3-20020a1709031243b02900ed82987628mr19071040plh.11.1626694203117;
        Mon, 19 Jul 2021 04:30:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5348:: with SMTP id w8ls9218371pgr.10.gmail; Mon, 19 Jul
 2021 04:30:02 -0700 (PDT)
X-Received: by 2002:a63:303:: with SMTP id 3mr24280840pgd.111.1626694202447;
        Mon, 19 Jul 2021 04:30:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626694202; cv=none;
        d=google.com; s=arc-20160816;
        b=cWVLQp7y3jU/O764T5frEQtYLO3zlnPFrBPJWlaQKC+LRAqB2qs44kCj3RSWBS15g+
         l+WiXbDzH9wXBILw9EObd0ugN2L8yXhiSJkq7AGsg8yGnQXO5VMvEBJjX0JvqUDV+oml
         vM+4ltQNGU0mmZU4bSVz+mrt6Mf7fG/dppG+T2X8rPfhXVbhxxB4qm9QN4yM3hfMANy7
         dnk1wxmFXbJuYips1VZ7Yv10IzPXIHpn0QNhnr5SSuIYArxksbf/y17AJEX8OUCOsYD8
         tA0OpHaYao22WzIDihVMYPi9OI6HviktNDyvR+lENwJcIKe64Yo8BDPXkbKsJUO/E+vp
         8o4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:reply-to
         :dkim-signature;
        bh=ESnH2S6yBdJz7yr94lSisLVqQUkwCAoXoLcXG4GRyLI=;
        b=EUqoUrLaS16dkH7nVKKxzqIOhOda/IsS+GqWEtHE24S1J5Hp0FuRTC29c+9mdtkDu7
         B6h/5EpY3ZoePgaKtBWeU8Y4PEb31b6aBrNfnBXsofwbjisPQxLLaBKgFYS7gz4f48yt
         OVKStAD1aaG4BPM+mTYVFZ/fhWjwe04ToWwRIaWFZ+Z3HLsUBc5CwGcBPbFkvpEuUrzn
         hBIl7LqQ1tUQshu+v1u7h60YCYbs2rN37DS4sv4d60viu1Vv9A5cY00i09GYXyeRnvj+
         RAbYPp3B4w488YYRfUk7EF5LpupazbkSUJqZwHJ+uzWezavc1VpGKeeG7maVH6sD8Iq/
         VFMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VnA5wtoe;
       spf=pass (google.com: domain of gshan@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=gshan@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id bt9si1836632pjb.3.2021.07.19.04.30.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Jul 2021 04:30:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gshan@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-QLcfgylOPmWWZVhyrvl0fA-1; Mon, 19 Jul 2021 07:30:00 -0400
X-MC-Unique: QLcfgylOPmWWZVhyrvl0fA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 78E5D100C660;
	Mon, 19 Jul 2021 11:29:58 +0000 (UTC)
Received: from [10.64.54.195] (vpn2-54-195.bne.redhat.com [10.64.54.195])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B86E620DE;
	Mon, 19 Jul 2021 11:29:54 +0000 (UTC)
Reply-To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v2 09/12] mm/vm_debug_pgtable: Use struct
 pgtable_debug_args in PUD modifying tests
To: kernel test robot <lkp@intel.com>, linux-mm@kvack.org
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, will@kernel.org, akpm@linux-foundation.org,
 chuhu@redhat.com, shan.gavin@gmail.com
References: <20210719054138.198373-10-gshan@redhat.com>
 <202107191750.5uS1cDBz-lkp@intel.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <e3f41155-817e-01f5-91d2-596a89d2004c@redhat.com>
Date: Mon, 19 Jul 2021 21:30:10 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <202107191750.5uS1cDBz-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: gshan@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VnA5wtoe;
       spf=pass (google.com: domain of gshan@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=gshan@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 7/19/21 7:13 PM, kernel test robot wrote:
> Hi Gavin,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.14-rc2]
> [cannot apply to hnaz-linux-mm/master linux/master next-20210716]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Gavin-Shan/mm-debug_vm_pgtable-Enhancements/20210719-134236
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 2734d6c1b1a089fb593ef6a23d4b70903526fe0c
> config: arm64-randconfig-r005-20210719 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5d5b08761f944d5b9822d582378333cc4b36a0a7)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install arm64 cross compiling tool for clang build
>          # apt-get install binutils-aarch64-linux-gnu
>          # https://github.com/0day-ci/linux/commit/69db26024e6bd48423ebc83b0f83b7b52217b624
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Gavin-Shan/mm-debug_vm_pgtable-Enhancements/20210719-134236
>          git checkout 69db26024e6bd48423ebc83b0f83b7b52217b624
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 

Thanks for reporting the build warnings. I will fix it in v3.

> All warnings (new ones prefixed by >>):
> 
>>> mm/debug_vm_pgtable.c:445:8: warning: variable 'pud' set but not used [-Wunused-but-set-variable]
>             pud_t pud;
>  

A "WARN_ON(!pud_none(pud)) is missed from PATCH[9/12].

                  ^
>     mm/debug_vm_pgtable.c:1140:17: warning: variable 'protnone' set but not used [-Wunused-but-set-variable]
>             pgprot_t prot, protnone;
>                            ^
>     mm/debug_vm_pgtable.c:1142:36: warning: variable 'pmd_aligned' set but not used [-Wunused-but-set-variable]
>             unsigned long vaddr, pte_aligned, pmd_aligned;
>                                               ^
>     mm/debug_vm_pgtable.c:1143:42: warning: variable 'pgd_aligned' set but not used [-Wunused-but-set-variable]
>             unsigned long pud_aligned, p4d_aligned, pgd_aligned;
>                                                     ^
>     mm/debug_vm_pgtable.c:1143:29: warning: variable 'p4d_aligned' set but not used [-Wunused-but-set-variable]
>             unsigned long pud_aligned, p4d_aligned, pgd_aligned;
>                                        ^
>     mm/debug_vm_pgtable.c:1143:16: warning: variable 'pud_aligned' set but not used [-Wunused-but-set-variable]
>             unsigned long pud_aligned, p4d_aligned, pgd_aligned;
>                           ^
>     mm/debug_vm_pgtable.c:1140:11: warning: variable 'prot' set but not used [-Wunused-but-set-variable]
>             pgprot_t prot, protnone;
>                      ^
>     7 warnings generated.
> 

There are more build warnings introduced by other patches. I need to drop the unused
variables in debug_vm_pgtable(). So I need to drop the unused variables in separate
patches in v3, instead of dropping all of them in PATCH[v2 11/12].

Thanks,
Gavin

> 
> vim +/pud +445 mm/debug_vm_pgtable.c
> 
> 5fe77be6bf14bf Shixin Liu        2021-06-30  442
> 69db26024e6bd4 Gavin Shan        2021-07-19  443  static void __init pud_huge_tests(struct pgtable_debug_args *args)
> a5c3b9ffb0f404 Anshuman Khandual 2020-08-06  444  {
> 5fe77be6bf14bf Shixin Liu        2021-06-30 @445  	pud_t pud;
> 5fe77be6bf14bf Shixin Liu        2021-06-30  446
> 69db26024e6bd4 Gavin Shan        2021-07-19  447  	if (!arch_vmap_pud_supported(args->page_prot))
> 5fe77be6bf14bf Shixin Liu        2021-06-30  448  		return;
> 5fe77be6bf14bf Shixin Liu        2021-06-30  449
> 5fe77be6bf14bf Shixin Liu        2021-06-30  450  	pr_debug("Validating PUD huge\n");
> 5fe77be6bf14bf Shixin Liu        2021-06-30  451  	/*
> 5fe77be6bf14bf Shixin Liu        2021-06-30  452  	 * X86 defined pud_set_huge() verifies that the given
> 5fe77be6bf14bf Shixin Liu        2021-06-30  453  	 * PUD is not a populated non-leaf entry.
> 5fe77be6bf14bf Shixin Liu        2021-06-30  454  	 */
> 69db26024e6bd4 Gavin Shan        2021-07-19  455  	WRITE_ONCE(*(args->pudp), __pud(0));
> 69db26024e6bd4 Gavin Shan        2021-07-19  456  	WARN_ON(!pud_set_huge(args->pudp, __pfn_to_phys(args->fixed_pud_pfn),
> 69db26024e6bd4 Gavin Shan        2021-07-19  457  			      args->page_prot));
> 69db26024e6bd4 Gavin Shan        2021-07-19  458  	WARN_ON(!pud_clear_huge(args->pudp));
> 69db26024e6bd4 Gavin Shan        2021-07-19  459  	pud = READ_ONCE(*(args->pudp));
> a5c3b9ffb0f404 Anshuman Khandual 2020-08-06  460  }
> 5fe77be6bf14bf Shixin Liu        2021-06-30  461  #else /* !CONFIG_HAVE_ARCH_HUGE_VMAP */
> 54b1f4b50ddb0f Gavin Shan        2021-07-19  462  static void __init pmd_huge_tests(struct pgtable_debug_args *args) { }
> 69db26024e6bd4 Gavin Shan        2021-07-19  463  static void __init pud_huge_tests(struct pgtable_debug_args *args) { }
> 5fe77be6bf14bf Shixin Liu        2021-06-30  464  #endif /* CONFIG_HAVE_ARCH_HUGE_VMAP */
> 399145f9eb6c67 Anshuman Khandual 2020-06-04  465
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e3f41155-817e-01f5-91d2-596a89d2004c%40redhat.com.
