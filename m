Return-Path: <clang-built-linux+bncBCQ5RHFIMMIIND6B7ICRUBGG6XPCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A8225B84D
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 03:31:51 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id l67sf1252064ybb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 18:31:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599096710; cv=pass;
        d=google.com; s=arc-20160816;
        b=sq875UQiy7KaFtrzeSB+YzKwNdhAcIcwDEZr5XRAIsBl6KPXwm9MR9A3P/a76Krzna
         pzpQdkBfWK7l6L3Jy1uYOhK8AOUgjJxd5B/Il6GTewoLNQyHf9qr/Ty/HhLJ7k8eN41g
         6o4UG0dw/5USmuedYwzI13LksDz42iGDjyfixyyWzc4E/82wwn5pIm3cBkngfk2JB1Mj
         a7OA/TXejauHdWt8YOXJqHsSSzGVijnC6e/aoV7vWN2notPKUUbgzeE1GJmHMD+GmBVX
         abIYtguAUs+5ogxlSf7kq6PmIvbmW4x8RosZUbPoBm9ONv6X0yigOx0Ea1lr60JYTwaI
         bT+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=+gcsW+HkwqsDwI/Aw1OlZyLjjJF5Ib5LsbYNu7FVQlU=;
        b=1BHiywn2jf8CrFBt9jpQWTyMaYJEasnvwpASxItcQsFuFERi+Civ+Sd6JTv91kTYaF
         bc59k+cAefqWQQDggdtOg0oaKr/5JV4gjb2B7qUGQTsXw7BURLf7D3cQxC2vmOJBPtdW
         mwli2O17VggIsshYh7EtpyJafhpzfzF19sXFDinj4gM9aBWnsFXG3bAzwuS+/nnLSpC6
         t0mW0vbcLP8w9Q50qE7kHQJhA5pADD35E1pm0mmSXTevfBDK8GFUgxldcfsSy/IiS4nQ
         4sMVgHexlkyiMnwnA8rGMrAWfTPAdQkcZ8SluSR3gvdj8g6yoBMAkQuyQj34tU9rckQt
         1Meg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c0yR4ztO;
       spf=pass (google.com: domain of lihaiwei.kernel@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=lihaiwei.kernel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+gcsW+HkwqsDwI/Aw1OlZyLjjJF5Ib5LsbYNu7FVQlU=;
        b=DYyzFWMxegdDpE4EVQQA09eEMY0gHpC7PmznEzfGXGBs9Wr+I6S8CCsj/ORPcbX37b
         R8kpbXNS5d1rJQcF0FhlV9JwLsSFNB/eXG+OeCn+8LhIqmluxw7D/9tvd/oATjXXLaH0
         YOMF+VVGRxBKaDBWR1h9JTKuzUJ33lOjkJKqp0owtAoUQ+oYZ8O6mRrTm3RMNMt2EWta
         qLeU+PTl2CjGdfzF/Jl1FAVjUX39gWY/DJ6CadlbC+DyS0FjhJesO8XbtU6bWUk+UEvp
         0FWCHZfORblVF3A+rEDH57dU3PY5wnSoJeKb/6hCskREqMhUuUUwLMZWP9ekhxsnKY1X
         bgbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+gcsW+HkwqsDwI/Aw1OlZyLjjJF5Ib5LsbYNu7FVQlU=;
        b=bYHcaS8JjC2+Yu6Ox4jItMNfRuoxD1PGrGBVHBOucFfWPNntGtWQzJF052eer8lvXr
         9RQ8DdIXZ+r8hoBQAnyWWB6VCErAk/Mo0LDIsUsDXetVLGZT8FGLuPfiiBZdjDpBFzPh
         JPulpoTktgHAJMp51nvIkm9liDeLogOdTEi3EhsYbFc/qX6N2aT0xNo8iUBNKiH4sbyI
         zz+DPqXkB8GCvQM6zTUbHOxzb7wKwdBReTMCPOxc6EtL378NQKBhbuytaQzpO39+DPqM
         aTq2ejKwjBGGTdwmMXqkhPvZRBm/QpM6WLc7uCB9NfI8FBwbQyRNM1LMGYDT6t885C+B
         b2fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+gcsW+HkwqsDwI/Aw1OlZyLjjJF5Ib5LsbYNu7FVQlU=;
        b=VJJlgUuJWIMXM2oDo3Qpukb0nI9IvVisYc+UZq1gsFH9SizppH+AQ859l9zsZXA8tb
         oG/tm2O4nQitU2jZ1sxKyOZqv4Xqhl6VWPss8TPttK1ZilkxGhqmF+NZribW07BjyyXt
         VO7qfdkLWlFbE7ADH529RPGQyamPKlAAY1lxcYq43hZsyHrZAFEc8qu2ZH7aYf6O66FD
         uJa1xaUR05ujUZ8/Oaafv57KabsPRpYiGrnsBc155Y54nQUDuveZivoxpOW6BaMwRCci
         5ES3POyCtSR6DOsKOOb1YHCdNPLsidy3K4avksZlatKHbkf9v3jwAI1xPJm/9B/30TmP
         BreA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XbnVS/i67vRRSt8PaXzowDk5OLb3o8GVQPe3nLDVoP5SJNvvO
	Otm23gDnblsIROEBVL6z9mY=
X-Google-Smtp-Source: ABdhPJxUgalRsZ/ndxVnx63OBGLJOB18NB1W9J6QOERxFbcYRG2F8xxNTkfPXLs7R1R1q06bljp6MA==
X-Received: by 2002:a25:ba4f:: with SMTP id z15mr754551ybj.171.1599096710281;
        Wed, 02 Sep 2020 18:31:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6cc1:: with SMTP id h184ls2084925ybc.4.gmail; Wed, 02
 Sep 2020 18:31:49 -0700 (PDT)
X-Received: by 2002:a25:5887:: with SMTP id m129mr809958ybb.11.1599096709870;
        Wed, 02 Sep 2020 18:31:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599096709; cv=none;
        d=google.com; s=arc-20160816;
        b=iGYm2cDQjvMR/+qz3Mkez6aLArNFE+/lPaDj4X6bd13+iiX2s6N+tXMKNnvnJf1yDU
         froUSrxnQ981QBesNkBRrztDVxoLoBRHZHzoi+tDRwJGs76YVeSALBBgU++6I22iIOiZ
         90OJYEx1CrHfFF9twQB4gr5ioeXaMs9/VTn6EjHcnNJpaLzy9+HAlPi76eoj3vt/W2g8
         4N4OuOFoXA18AsdoroTeNG/4nAb/awHPA3Ts6xhr/OW+Rl7P9vePeY0+apHxx2e/AjT2
         zRv/EwI/fIV3EVZPQPl0fw6VHQEB081NjZH7SFISyYcSmR7cDQie0aqqHtPF4KvX+Tlm
         JNaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1UF8ZswLm2YxPJUQw7iNkdBHKwOAXGZ5uov9qTxwmRc=;
        b=LgRdgXj3jen1S4i+cgDzWBAk9Yeo0k6zkHqcTl6nvKpcUfRP+lPN4sZMDfMEsG6Q6U
         uB+mihoH2DxRS9U4z0xEfWfZYkyu3viIVMx/aaGl2abw8Pcg0teoGlzF3ILY9ssMcNyF
         ZnPutcVBu/6RnZUQSBIvXJh2M6D4mvk7HqbYp9qU8wzzZHKHKics3mOrTQrXGua3yNkF
         lpgyQmIjgo9v4MJd04Z7ZhY0eEU93SGEJ7tY7ZpSskyQ/zDiZn1w50ko1MKGFU4M8XOQ
         dJYoInjSNz5QcobgbD7j5ScDv9QF9BL6OxJdbxcjgKC1TbHrQk8w1SocA6vgp3DSr0pA
         zYYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=c0yR4ztO;
       spf=pass (google.com: domain of lihaiwei.kernel@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=lihaiwei.kernel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 7si107932ybc.0.2020.09.02.18.31.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 18:31:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihaiwei.kernel@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 31so727632pgy.13
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 18:31:49 -0700 (PDT)
X-Received: by 2002:a62:3814:: with SMTP id f20mr1227163pfa.23.1599096709093;
        Wed, 02 Sep 2020 18:31:49 -0700 (PDT)
Received: from [127.0.0.1] ([103.7.29.9])
        by smtp.gmail.com with ESMTPSA id y29sm834242pfq.207.2020.09.02.18.31.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 18:31:48 -0700 (PDT)
Subject: Re: [PATCH] KVM: Check the allocation of pv cpu mask
To: kernel test robot <lkp@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "x86@kernel.org"
 <x86@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 "hpa@zytor.com" <hpa@zytor.com>, "bp@alien8.de" <bp@alien8.de>,
 "mingo@redhat.com" <mingo@redhat.com>, tglx@linutronix.de, joro@8bytes.org,
 jmattson@google.com, "wanpengli@tencent.com" <wanpengli@tencent.com>
References: <d59f05df-e6d3-3d31-a036-cc25a2b2f33f@gmail.com>
 <202009020129.H90h8RdM%lkp@intel.com>
From: Haiwei Li <lihaiwei.kernel@gmail.com>
Message-ID: <cca7f343-6b0f-2717-a24b-a66b307f8888@gmail.com>
Date: Thu, 3 Sep 2020 09:31:38 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <202009020129.H90h8RdM%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: lihaiwei.kernel@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=c0yR4ztO;       spf=pass
 (google.com: domain of lihaiwei.kernel@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=lihaiwei.kernel@gmail.com;
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



On 20/9/2 01:35, kernel test robot wrote:
> Hi Haiwei,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on kvm/linux-next]
> [also build test ERROR on linus/master v5.9-rc3 next-20200828]
> [cannot apply to linux/master vhost/linux-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Haiwei-Li/KVM-Check-the-allocation-of-pv-cpu-mask/20200901-195412
> base:   https://git.kernel.org/pub/scm/virt/kvm/kvm.git linux-next
> config: x86_64-randconfig-a011-20200901 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63677f5d20f18010f8f68c631ddc97546f7d)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> arch/x86/kernel/kvm.c:801:35: error: use of undeclared identifier 'kvm_send_ipi_mask_allbutself'
>             apic->send_IPI_mask_allbutself = kvm_send_ipi_mask_allbutself;
>                                              ^
>     1 error generated.

THX, i will fix and resend.

> 
> # https://github.com/0day-ci/linux/commit/13dd13ab0aefbb5c31bd8681831e6a11ac381509
> git remote add linux-review https://github.com/0day-ci/linux
> git fetch --no-tags linux-review Haiwei-Li/KVM-Check-the-allocation-of-pv-cpu-mask/20200901-195412
> git checkout 13dd13ab0aefbb5c31bd8681831e6a11ac381509
> vim +/kvm_send_ipi_mask_allbutself +801 arch/x86/kernel/kvm.c
> 
>     791	
>     792		if (alloc)
>     793			for_each_possible_cpu(cpu) {
>     794				if (!zalloc_cpumask_var_node(
>     795					per_cpu_ptr(&__pv_cpu_mask, cpu),
>     796					GFP_KERNEL, cpu_to_node(cpu))) {
>     797					goto zalloc_cpumask_fail;
>     798				}
>     799			}
>     800	
>   > 801		apic->send_IPI_mask_allbutself = kvm_send_ipi_mask_allbutself;
>     802		pv_ops.mmu.flush_tlb_others = kvm_flush_tlb_others;
>     803		return 0;
>     804	
>     805	zalloc_cpumask_fail:
>     806		kvm_free_pv_cpu_mask();
>     807		return -ENOMEM;
>     808	}
>     809	arch_initcall(kvm_alloc_cpumask);
>     810	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cca7f343-6b0f-2717-a24b-a66b307f8888%40gmail.com.
