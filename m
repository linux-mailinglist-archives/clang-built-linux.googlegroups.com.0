Return-Path: <clang-built-linux+bncBDWIJUMT74BRB7WYY77AKGQEDR53HUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 179192D5754
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 10:38:08 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id u67sf489630vkb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 01:38:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607593087; cv=pass;
        d=google.com; s=arc-20160816;
        b=XZH72RtUDjnd8Rg7gdm4mI9F8OG8hVBwwyAiw5M6dS2Xsz40cT8PCzjKaoiA4DKBuu
         YaILnO2JC9+qNLMFEyoVnEyeO0SLIFiqUmeMlNF4yVE3BXYc94VecJPoucR1eg0TIFG5
         CyifHokdG97+iiQuXWlZOrPNoSHH6vB7FB8YYWBawlPVkKxw6D8hHTUrFyiSqzYFJ2mH
         8gePRBioDllbugMhrt59YYHXP/EJxGcAUg6UwVpEHQssPGQD7msfzCgVePei3HR1LaIy
         n7hnHLgsCPZ9v/4szbz4+SlxKuC9csv9StGt12LvYhEzx0u7rEsw0H1nGosNH+sb96kB
         tnng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=NyaGvx4rZ/R4f3LQgjUCPoL3e8dOfB05rlt7Nfpjjq8=;
        b=Tgr+mH/WLHUCUt+i2JPveNg4y3Gn6/JO8yyGJyUBjfdACpiGR6UvEGl0YwqIdrYnwd
         Swgy0ClFpbVHdxSxGMhtX4Ho3DAXrD83MxYJLnwdXno4ksfVHLvcuF4ELUlxQ0t6UhO/
         oHw+mZiIRh6Clgl0bUMLOOtdTln4nGkkj6MOlOGkxOySOUNTg5gLPqmFsp0M5rjgqX6j
         FeBkHRh2JPbiKhIdYrdW3XexelH279Hhzbf7jR1ZqJk9Px1Wr13yQnl2KcIRxB/IFX+j
         fhwllBIQZ68oD+gs/SrY+zKdx2GnBSI7OCbYNAcP/G24V0T7YGSLoi4SwOTP500qo/BJ
         7mNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NyaGvx4rZ/R4f3LQgjUCPoL3e8dOfB05rlt7Nfpjjq8=;
        b=LnKiSCQjzrpUqXPHy950B2fjXcL8EyUskQlR048sXRsVo9oRwDv9gwQ8oYMnOUZHJo
         f2Ccwkpo+XFROvDyR4ybfGQYICK9hz3IXbfxZ3lBu0gWoOL0ApnxXICkRG2qmXCeQJmd
         J2zA0RfQru7LbC6B5s66JVc5KPkt8/Yp0fBH5faUuG3fFT5c3kmelngEHv+75vT1qZTg
         DbccgiFamcul4Q7bUGjBcZZ6v74J53Zlw2ZO0lkrCl9mkkQlaxo5aO60GHQWp3R1m1sx
         4ZKMbSkUP+9q+zGd00kJvcYSwSVIEZ+Bt8ts6sHcUIfUCL6F0o3gP1+CXYdnpsHLaR8U
         wRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NyaGvx4rZ/R4f3LQgjUCPoL3e8dOfB05rlt7Nfpjjq8=;
        b=bYDP4j3T8qgXaiAef9dnZ++w6jc6VtLXBHoguxb9Ai7RjV20gBrn7Fb6KmGPGZAUVf
         9GcgqCRLzyj/ULahpT+pioRuC3G6PdERX0tKmSC2fyL0IHvk9rDyWRrElUOJa7J5LKiG
         +T6e50lVPz14iS1eWVyutWm+NLbqPYMVTzfoU0E7U37prtsI1wjc3lGNM+RliKQGiMjz
         5vu9KGBTuMcbo7CdyJ5GewrGeHPQe3w85Sc8+Y1xHd+n2YPL1yMPNIq7EC4SPKJ7sK87
         KZYDzPNxPlGZ6wlBlKoTxnNO9A7HXCPSveF/swpv509tKnHYotg5lM8bH/bp4ehgadUV
         Su8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310BE0ucAvlv9wkicjjkGO26tiVhdjzzm4X4xRBjf3HBtlWjigB
	Y9S+X3kXI1uy1aTcJ9BCctY=
X-Google-Smtp-Source: ABdhPJw5a1nvYZzbJ/KTclzwh7jZNVZLzB5U5IBlz7I/YhkKwMDntOvXwZbZZ0psuV+eNwM2xGbxyA==
X-Received: by 2002:a67:2907:: with SMTP id p7mr6874379vsp.21.1607593086969;
        Thu, 10 Dec 2020 01:38:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:320c:: with SMTP id y12ls560698vsy.4.gmail; Thu, 10 Dec
 2020 01:38:06 -0800 (PST)
X-Received: by 2002:a67:f113:: with SMTP id n19mr6842811vsk.6.1607593086536;
        Thu, 10 Dec 2020 01:38:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607593086; cv=none;
        d=google.com; s=arc-20160816;
        b=kd5nNgpGewuEAMt9foxq6yP2p+AexDI0CGKLUj+pyz7g0DhHAgoBbo663NGoKQ1rwk
         2Je4b/R/PUj+TmvNHGqTDOmW5ujXeLC6+z9O7+rvPC4ScBYvGWvFzQmGw/hg2AoEIvTn
         pzNc7ivlloxTNB3OSN2Ap+1defmYNt9zm54laFxZ4z0eQwMdtvLqi6BmV7RvU3JJcIoz
         H0/1uVV0S+LccE+46rKfRFs2Tvw9LPFApI0e+QJRkXIC7HH8IwQl2Sez81Y0MBFlNRa8
         4ZlbHVWy4VcrWRCIp8/v01EL/6DWo/eO9BQz+M2eBBGD1m/XYTMlmF2f9KIafI1sAHaM
         RhxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version;
        bh=doIIgO4RUO6QOSixPKsiPBoD2UFYZjN4k5o6drYhThQ=;
        b=uBA6z8VVHNO5vhR81cXcFzHcU7PwUKK3RZaRcOL4zavRSlDxp9SLkuUeHqriUSQc43
         AMg021M+02WwrHz2hAtxtAV7Gme3tA2i1pxWBkdmDSQsTQiArz0Nz6c7SsOLsdv6omrW
         /O5cvAbQFqbnBYtku11zRBrNGZ5pviUd/Hdo4/iBraPW404MzsDUUf6BFCR4gqvNWXhy
         HLLkdCGX06Dw6rO7n8E571Qpcy/5QBP4Cx3tfLDNT2x/bK4Syqlfz6G/y791UvBD+8jJ
         tibD1OuK1/tyuFRTyXBPW4GCXeP796+qS0GzLWpUMwzzVWfARpTpbj1WTyTY5udZXP6H
         CgBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e2si370258vkk.0.2020.12.10.01.38.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 01:38:06 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5C7F923B70;
	Thu, 10 Dec 2020 09:38:05 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94)
	(envelope-from <maz@kernel.org>)
	id 1knIOh-0002BC-Bq; Thu, 10 Dec 2020 09:38:03 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Thu, 10 Dec 2020 09:38:03 +0000
From: Marc Zyngier <maz@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: David Brazdil <dbrazdil@google.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Linux Memory Management List
 <linux-mm@kvack.org>
Subject: Re: [linux-next:master 10163/12085]
 arch/arm64/kvm/hyp/nvhe/psci-relay.c:174:28: warning: no previous prototype
 for function 'kvm_host_psci_cpu_entry'
In-Reply-To: <202012101752.oNGReKJM-lkp@intel.com>
References: <202012101752.oNGReKJM-lkp@intel.com>
User-Agent: Roundcube Webmail/1.4.9
Message-ID: <8d7aab68fd0d0a5d3ee1e99088e9a68e@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lkp@intel.com, dbrazdil@google.com, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-mm@kvack.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 2020-12-10 09:24, kernel test robot wrote:
> tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> master
> head:   2f1d5c77f13fe64497c2e2601605f7d7ec4da9b1
> commit: cdf367192766ad11a03e8d5098556be43b8eb6b0 [10163/12085] KVM:
> arm64: Intercept host's CPU_ON SMCs
> config: arm64-randconfig-r032-20201209 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> 1968804ac726e7674d5de22bc2204b45857da344)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         #
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=cdf367192766ad11a03e8d5098556be43b8eb6b0
>         git remote add linux-next
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout cdf367192766ad11a03e8d5098556be43b8eb6b0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
> ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> arch/arm64/kvm/hyp/nvhe/psci-relay.c:174:28: warning: no previous 
>>> prototype for function 'kvm_host_psci_cpu_entry' 
>>> [-Wmissing-prototypes]
>    asmlinkage void __noreturn kvm_host_psci_cpu_entry(bool is_cpu_on)
>                               ^
>    arch/arm64/kvm/hyp/nvhe/psci-relay.c:174:12: note: declare 'static'
> if the function is not intended to be used outside of this translation
> unit
>    asmlinkage void __noreturn kvm_host_psci_cpu_entry(bool is_cpu_on)
>               ^
>               static
>    1 warning generated.

I wish someone would fix these reports and weed out these false 
positive.

The function is annotated as  asmlinkage, meaning it is called from some
assembly code. Not amount of prototyping is going to help the assembler,
and making it static is just going to break the build.

Thanks,

         M.

> 
> vim +/kvm_host_psci_cpu_entry +174 arch/arm64/kvm/hyp/nvhe/psci-relay.c
> 
>    173
>  > 174	asmlinkage void __noreturn kvm_host_psci_cpu_entry(bool 
> is_cpu_on)
>    175	{
>    176		struct psci_boot_args *boot_args;
>    177		struct kvm_cpu_context *host_ctxt;
>    178
>    179		host_ctxt = 
> &this_cpu_ptr(hyp_symbol_addr(kvm_host_data))->host_ctxt;
>    180		boot_args = this_cpu_ptr(hyp_symbol_addr(cpu_on_args));
>    181
>    182		cpu_reg(host_ctxt, 0) = boot_args->r0;
>    183		write_sysreg_el2(boot_args->pc, SYS_ELR);
>    184		release_boot_args(boot_args);
>    185
>    186		__host_enter(host_ctxt);
>    187	}
>    188
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8d7aab68fd0d0a5d3ee1e99088e9a68e%40kernel.org.
