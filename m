Return-Path: <clang-built-linux+bncBCS7XUWOUULBBEHHUL2AKGQEZINTSAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id AE07919E66E
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 18:19:29 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id v29sf8687198pgo.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 09:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586017168; cv=pass;
        d=google.com; s=arc-20160816;
        b=HBk0uRwL52DNfgFVHMYvRs/+pWGcHomeCAccIql337eZUTPysQsK5POlWUiXzAcWWX
         WoEvMWZWVPwv3FV0lgG9JpFmAp5wNF65YbDhU7z3RAORy9SC0MBrZQ73MKrBySZgKS3A
         AftqmjCsOxa0WuF61/qJWfTPw36mcd3nRLMOXUYGG7rflzQ98Ty9GGKYYyud7227zkm3
         n0DQojgqpwzrPABBk71EABBNvvckbzreEdZvkq+3zq0/vZGsprL+/bW/LDViHqMa6lkv
         C2iXfMV6qiqtoQaaouOLDb/FZ0BNebYLL6yR21pW5HnTy4nU+XHhQXBV6eiWS64LVYiy
         YQlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Tw9/fGTzdiw5KkDdqsER1GmvjuoiYjR6C3Sf8Gcu45A=;
        b=GvzFaR/soTh3g2p5Sxy1DbHV+dV7mN2feN9g5qb2M/5NF6MIqnxBwyK8G+gE5d0dV0
         UZ+0exga969DbK2YQGMfL81HCKk2EyH4t9Tt7DTNGiRBbn7MX9gJMJK8UwA8aV+aosCC
         DrbAH0apneHntzHJ8zt902Nmd0gcnPpEqH6C6pQlXblqDvYX+36XVU3RfImqGTP/PLAd
         KbbHDI/lEXYtV5rC0z2SpbYe3Gx4Rw+983IMcf6DaRxYYVXu/AZhx2m4CMZIXvEGSCkw
         AehjmMPPzAZFanFrlzfKjSPqfsuGw/r73ip92Ycu/ln40cVGdiWyh+sxFCJN2iwDUi3Z
         roHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wHgM4Pc1;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Tw9/fGTzdiw5KkDdqsER1GmvjuoiYjR6C3Sf8Gcu45A=;
        b=iolv03qVgTK/TwjwXj4ZCr1H7s1qm1NcL2BEit7FovIPfKEHVWcpNI5X16xYvuGUxk
         Sj6Y/JVPtdOd/9Ugxya98xYqOLebo4EWWnODerMOJFUrwA3TEPGOyS8A5qzFzjK7Zfn4
         LTAT23U8Nd6lA+UUGupT6DqWNCS+3r1XBMc2WbinQmCCDX59zPVlMvwJ29ZH+BwzBT32
         xSGkntr0cNm0z9RjY6Q2E59QQZeAFZIbbSYwd4q4i8wlW3e01Hv4BW54iRL6gkIMwNmC
         kG42Zk0/cLoxoZxTWx89Z0ngvoKsNNp5Fmeo27d+Wcc1ilYmTiRZYkYVTrkQHldpll9I
         IKyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tw9/fGTzdiw5KkDdqsER1GmvjuoiYjR6C3Sf8Gcu45A=;
        b=SzO+V8NV63SlWnFnSQbG1dCNh33PcTsB2GpIjiuCGGHrkqXHjvLeMuH4CC2LewiPQH
         HWal40rHy3WNHvq/eyRiZbzmG9Z/gjFlwYxtEh92coUKzNcorn13Smh02MxPk62PInXP
         xPr43yyMU71cFmb7mwU/bJWgrUaJDMK1NXtnZMUsGRlrFVXDwYGOxtKyqkmMNKQpJFoZ
         hwD++2ZsqI3A8uRQqvc6Gc2CnqXO7gEkRBznlIdB3y3bvYMeC304PSBEi0cJXyIvvTvl
         ueF+pvE8xnpfAVlznDAynIPkiAMNMtnLJ00MXhonAORd0kzyjyz4Wgoz45lyCi6mO0/8
         CPRw==
X-Gm-Message-State: AGi0Puazmg85IUZrF45XG03WGBcVHrRNrNsfMbfUQrldd7BfniWUQgcl
	6lGFgm6E7J2GvBmbvappOhU=
X-Google-Smtp-Source: APiQypLkyH/C4bfRsRmlgb2FYNfJn02Uyb0fyr8aNSWEDznTfq5y6IAtmKBDN+7KGIk1KUFjZzO7/g==
X-Received: by 2002:a63:2360:: with SMTP id u32mr13810741pgm.190.1586017168186;
        Sat, 04 Apr 2020 09:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fd82:: with SMTP id cx2ls8826309pjb.1.canary-gmail;
 Sat, 04 Apr 2020 09:19:27 -0700 (PDT)
X-Received: by 2002:a17:90a:3547:: with SMTP id q65mr17097495pjb.118.1586017167756;
        Sat, 04 Apr 2020 09:19:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586017167; cv=none;
        d=google.com; s=arc-20160816;
        b=uAH1nsG60k53i3G4zbTK/UPMxz2fsRY8Au1m+Qr8Md9l4MCqADGG1SQ65wngQG10ai
         9UdTS1v1nJmI7UVgq3aL4N1dXIG2Rtpn2tyhOIUzM0AODvo2lOIkXEkSrWEwKxRV+NHv
         cqZwJZf3bOu0Pp5d8Rap+9fxJjgYmZJ+uoK6wuP8nrq85FMSe9iTA78tZFidiXo6WZEw
         RW57ztTnyxOpOIppDpYcjxqwXmLuyNvEQJe2pteOu8Tsi5PCL/5PwFxcYlPYhKwPunX0
         vc5dJg2cskeChWyfqW7dFkYop+eG1Qv6mA+lNhwTU/3vc2F6OgqUBNTmTwLycROtezGw
         gynA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5c2TKc3/Skvb2aNLG5b+DKVIZTcJ6UWaKHap6ye56Uo=;
        b=ZkbMd9mU3kLkyhkN7BFF1ghrDHeH1bT5VAjYFOZd3fQX3DceFWO0lyIFGdP3x1Nk+U
         Tqub7My5nvcJ/p76ONmLh7iIqkHLOZV9fSy6gTJ2eG6K270gAmzXaPP1+ZeByjE+wmC6
         1S8kwWmfF8gJzM3ZUAeKOPslNfFE4S2vJ8Il7FaqFT1vZJNb5eejC5cYAbSkKN8cFd4J
         q1U1soKmvEFyfuRSho8zEHf6XzzzfPPgvptzdARg8hC1eCUMAnpkttf8c1+PAOT64ukr
         aXEFeUS3vDqoVrtfGORJYhIixpgb/Ka7BjSF8/6eemzNNoJa0lW6CJT58B3czGmNRLnG
         TpPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wHgM4Pc1;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 62si869080pgf.0.2020.04.04.09.19.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 09:19:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id z3so4478747pjr.4
        for <clang-built-linux@googlegroups.com>; Sat, 04 Apr 2020 09:19:27 -0700 (PDT)
X-Received: by 2002:a17:90a:714b:: with SMTP id g11mr15791044pjs.17.1586017167213;
        Sat, 04 Apr 2020 09:19:27 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id f8sm7957200pfq.178.2020.04.04.09.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Apr 2020 09:19:26 -0700 (PDT)
Date: Sat, 4 Apr 2020 09:19:23 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rui Ueyama <ruiu@google.com>,
	George Rimar <grimar@accesssoftek.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	kbuild test robot <lkp@intel.com>, Philip Li <philip.li@intel.com>
Subject: Re: [peterz-queue:sched/urgent 4/5] ld.lld: error: section .text at
 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
Message-ID: <20200404161923.iprsqjhvv5n2ggbl@google.com>
References: <202004032329.oBqXCsfi%lkp@intel.com>
 <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
 <20200403192058.GA41585@ubuntu-m2-xlarge-x86>
 <20200404010210.GA13010@intel.com>
 <20200404013204.p53fteofnppvf7pe@google.com>
 <20200404211252.3540251a@flygoat-x1e>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200404211252.3540251a@flygoat-x1e>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wHgM4Pc1;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044
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

On 2020-04-04, Jiaxun Yang wrote:
>On Fri, 3 Apr 2020 18:32:04 -0700
>Fangrui Song <maskray@google.com> wrote:
>
>>
>> Reproduce for a clang/lld developer:
>>
>> make -j$(nproc) ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu-
>> LD=ld.lld O=/tmp/out/mipsel distclean malta_defconfig vmlinux
>> (Requires mipsel-linux-gnu-as and clang in PATH)
>>
>> I have noticed multiple problems.
>>
>> % file .tmp_vmlinux.kallsyms1
>> .tmp_vmlinux.kallsyms1: ELF 32-bit LSB executable, MIPS, MIPS32 rel2
>> version 1 (SYSV), statically linked,
>> BuildID[sha1]=ff348ad92c80e525b3f14149e57e8987de66e041, not stripped
>>
>> In arch/mips/kernel/vmlinux.lds.S, VMLINUX_LOAD_ADDRESS (from load-y)
>> is 0xffffffff8010000. GNU ld seems to allow 64-bit addresses when
>> linking an ELFCLASS32 file. The addresses will be truncated to
>> 32-bit. This behavior seems error-prone to me.
>>
>> lld does the right thing by erroring out. I do notice a display
>> problem of lld -Map and I have a patch to address that:
>> https://reviews.llvm.org/D77445
>>
>> For 32-bit linux-mips, the right approach seems to be make
>> VMLINUX_LOAD_ADDRESS fit into 32-bit. However, my Linux-fu and
>> MIPS-fu is not strong enough to do this :/
>
>Hi MaskRay,
>
>Could you please try this?
>
>--- a/arch/mips/mti-malta/Platform
>+++ b/arch/mips/mti-malta/Platform
>@@ -6,6 +6,10 @@ cflags-$(CONFIG_MIPS_MALTA)    +=
>-I$(srctree)/arch/mips/include/asm/mach-malta ifdef CONFIG_KVM_GUEST
>     load-$(CONFIG_MIPS_MALTA)  += 0x0000000040100000
> else
>+ifdef CONFIG_64BIT
>     load-$(CONFIG_MIPS_MALTA)  += 0xffffffff80100000
>+else
>+    load-$(CONFIG_MIPS_MALTA)  += 0x80100000
>+endif
> endif
> all-$(CONFIG_MIPS_MALTA)       := $(COMPRESSION_FNAME).bin
>
>Thanks.
>
>--
>Jiaxun Yang

Thanks! The patch fixes the problem linking with LLD.

If you are going to send a patch,

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404161923.iprsqjhvv5n2ggbl%40google.com.
