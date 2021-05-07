Return-Path: <clang-built-linux+bncBCFYN6ELYIORB4G72OCAMGQEJYJLSUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC37376159
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 09:44:49 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id c9-20020a2580c90000b02904f86395a96dsf3357300ybm.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 00:44:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620373488; cv=pass;
        d=google.com; s=arc-20160816;
        b=YQ4JG00GvpYHorlyzwuGRXo48MUpmIYaCVfGS0KA8kz5kICNqsEK2hqG0JL1F4duPR
         zAQHXbloZ3oepSTrC7r/OxT17yXQgRS+4ykoxxinZS5aBM2jKvsj+ed3zPyZmZIX4hlH
         WWN3VBrFlAb2CsAX7YmEy+U2xFqGpxP4tCy9EjS/Y9Cq3VEWBcS62Df1Pv9cvr8FdlFN
         DVqgsN+LRM2sr2KB+wgadWCNk6KVkbwBH024pTdPpVbxx74sg56O7iAOtrURj0j/Vy5r
         uNuWX9b6eBHzujkateLAIWXhpduMlUdGxg2WILPfY+1o5l6CwhpfoFeOI65/reWjUtDU
         q27A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=fUXuGptESoCaEni8fm/atA+YWGzXx4YhLZiiOTcGobU=;
        b=pF/5Qo+acT/W3Gv4iTPxb534zNVGRdhdLlf37a4iqxQuqLDtXg4OnOjq+74rWt1pfU
         5SmXqn77SdATDfg/KTT7v2s03Z6zSo1tfmlq0ZsuMBYrQwvpLgQQo7YCz7zVSY3f+WYH
         TMdlLckGGe3qck5CA8naYcfV1k/S3KxB1hRHdgeY2MGu5FFAvWwwSaqevJMbZ0uFg1BJ
         aLnMmLqRFvUZxYp56Ee+ti0oH6ftiLlALi5FAshkCluP14U1LIbLvN1caHcVRnBUh+l0
         5nGjCesTRXrNL1xzknO3HdegU+S/I049XaRER1DZax+9opWcG9pE9cyJSgM+9y/TZjYj
         VTlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fYowjTGh;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fUXuGptESoCaEni8fm/atA+YWGzXx4YhLZiiOTcGobU=;
        b=jw7ROjBwBw8DIe1aoYZB7plVh8n/Lgrkthm99PUjs17YDRx0u0reK8MiQBZMQPo3Up
         v13c42bSVZxGxQnn188q/ERP87S3TciZNfrpsP9ZjQ1BPSQ4EpJmfW2zuwg8wuhtqQSk
         SAdQzdOaZCQUgj4b7GBtoML/lLHzJoZBcNIol7CiCioIjGv/ONKQqhwgCsL+5kGecVGG
         Sa/3U2Db27S9vHSSfx4NoyFP0AyXIYwDhFfPqh1S3iF2htiwlGtPp85DGOFWa1d4N1Dg
         ZvCT/w894R/yuR83e3Z8Ge8MIeUI3vSXMNO/Qx4Uf8voEIrGy9lXb03xk61MDgCcvxgW
         iUbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fUXuGptESoCaEni8fm/atA+YWGzXx4YhLZiiOTcGobU=;
        b=F0DFMdIY8L5LoE9xZUfLT/leOMRNi/rAmTx2aij1LPwXoku9qphZ3QVgSQKphLFoYC
         JXsAjj2LJtH9nxCMQYltCUMkAyz8JOBOVXtB03GzZNQG86zz6+meCK4thRM0Iqs86vqu
         QJ9YyK4s7z0/lgEMoIB+qrAtculaS3M2UggYlVs+dnw1ulgPWxbvxhQdBMiPv/Rngb0q
         fuLVVIXB25hDiNsBoUbMRNW4/UZTrR471nbJiKEhgyOJhZ7e65hLX5Afb8CDWcR70Wkd
         NSdiKJm9i+90LDWJSXO6GeqD/sRkD6QLfBenUOjxl9ok5jQAdAWHsV3hWi1XNOuyaoiN
         l6Tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HXKYIf0ezGbsllw4Sh4BVhIJr+SX58xgxH6nwndQr8AYXwq93
	nBEyD9POka2csL+MkCsAx+E=
X-Google-Smtp-Source: ABdhPJw8eVq9Jrr2rDKdXQS1Woeptc64t9VVK9+aYYeOWF7o8+UiToiurEESuc5omE9XvlkpQcd53Q==
X-Received: by 2002:a25:a168:: with SMTP id z95mr6514338ybh.395.1620373488642;
        Fri, 07 May 2021 00:44:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7714:: with SMTP id s20ls2723172ybc.9.gmail; Fri, 07 May
 2021 00:44:48 -0700 (PDT)
X-Received: by 2002:a25:b31c:: with SMTP id l28mr11416363ybj.435.1620373488132;
        Fri, 07 May 2021 00:44:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620373488; cv=none;
        d=google.com; s=arc-20160816;
        b=EjslCK67TZb1g+YdHfPCuqkdMvfyWFmg/A9cXuQSW/nHS+JvOJXamSVziyhYAVhNlF
         Zawn1uINPiOXFBklESZ0AaJl2S4kQ3zAuO8AlF/Y0/2807T6MKkJ+X2POIjzu2pvU/Ro
         sQPPvztZOGeKC56DNN9bPh/l1GB2zOmdFDGTCBXVckDJVNkTPvSHuVuHQ26hYzLiwOD6
         4lmVhE1MfhXPqk1GBuNL3/8LvOmwkXhGGjD3eQhbDO7R/doUrtnC+fxIzlOv2QbJh92B
         OtIl+Q8b1hfpDoCa5Yj38XQSwbhAoBuc6kB0WoGX3XDRslQMKeQ822IV+aoohBqJvMNk
         IaYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2AzHD+mIX/ZO5hVREmfYA68VAf490QyrXZtGAVC/kOM=;
        b=YQQSpovybMsBIz9FpN7PVg2+AjtNrRHbRAFCEkuD54CVqgHctxPuldwghn4PU9olbj
         7x6rbpf4Ct1K+JqOQ1S9KRWGWdPcEhU7HV5Ob3pnmpdcc6vc4q1dSc9duRPFzfCYhONn
         +jm9SMGNKH2nE+lAYLrdirc6cTNKgQSk7uFfK5kP/fo4INSyt6UJPdFHqdtc/IIRsliw
         8xOlDOwqAqC5NIxhLB67tzAYdLROWWw4ilkAmCMj0qerNXqQeEtArSPXH4vmSu3Q+70b
         fRilEUtZiyBkU7ccjs2C3z7nnsG4Q87LC1d1m0JvEgTkm1o6+qpJzotJ/wbIi0Wp4MqS
         8bGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fYowjTGh;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id i15si303715ybk.2.2021.05.07.00.44.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 May 2021 00:44:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-hHgI1mmCMLSUbyNWKbdLbA-1; Fri, 07 May 2021 03:44:44 -0400
X-MC-Unique: hHgI1mmCMLSUbyNWKbdLbA-1
Received: by mail-ed1-f70.google.com with SMTP id k10-20020a50cb8a0000b0290387e0173bf7so4045798edi.8
        for <clang-built-linux@googlegroups.com>; Fri, 07 May 2021 00:44:43 -0700 (PDT)
X-Received: by 2002:a17:906:270a:: with SMTP id z10mr8366867ejc.204.1620373482885;
        Fri, 07 May 2021 00:44:42 -0700 (PDT)
X-Received: by 2002:a17:906:270a:: with SMTP id z10mr8366856ejc.204.1620373482717;
        Fri, 07 May 2021 00:44:42 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:5e2c:eb9a:a8b6:fd3e? ([2001:b07:6468:f312:5e2c:eb9a:a8b6:fd3e])
        by smtp.gmail.com with ESMTPSA id r17sm3596059edt.33.2021.05.07.00.44.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 May 2021 00:44:42 -0700 (PDT)
Subject: Re: [kvm:queue 11/44] arch/x86/kernel/kvm.c:672:2: error: implicit
 declaration of function 'kvm_guest_cpu_offline'
To: kernel test robot <lkp@intel.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 kvm@vger.kernel.org, Robert Hu <robert.hu@intel.com>,
 Farrah Chen <farrah.chen@intel.com>, Danmei Wei <danmei.wei@intel.com>
References: <202105070840.f1TZQ4rC-lkp@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <e671b62d-0324-2835-2726-6b28a0202b7a@redhat.com>
Date: Fri, 7 May 2021 09:44:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <202105070840.f1TZQ4rC-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=fYowjTGh;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
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

On 07/05/21 02:13, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/virt/kvm/kvm.git queue
> head:   c6d517aecd40b25ea05c593962b2c4b085092343
> commit: 9140e381e0f2f8cb1c628c29730ece2a52cb4cbc [11/44] x86/kvm: Teardown PV features on boot CPU as well
> config: x86_64-randconfig-a001-20210506 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=9140e381e0f2f8cb1c628c29730ece2a52cb4cbc
>          git remote add kvm https://git.kernel.org/pub/scm/virt/kvm/kvm.git
>          git fetch --no-tags kvm queue
>          git checkout 9140e381e0f2f8cb1c628c29730ece2a52cb4cbc
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

kvm_guest_cpu_offline must be placed outside #ifdef CONFIG_SMP.  I fixed 
it up.

Paolo

> 
> All errors (new ones prefixed by >>):
> 
>>> arch/x86/kernel/kvm.c:672:2: error: implicit declaration of function 'kvm_guest_cpu_offline' [-Werror,-Wimplicit-function-declaration]
>             kvm_guest_cpu_offline();
>             ^
>     arch/x86/kernel/kvm.c:672:2: note: did you mean 'kvm_guest_cpu_init'?
>     arch/x86/kernel/kvm.c:332:13: note: 'kvm_guest_cpu_init' declared here
>     static void kvm_guest_cpu_init(void)
>                 ^
>>> arch/x86/kernel/kvm.c:679:2: error: implicit declaration of function 'kvm_cpu_online' [-Werror,-Wimplicit-function-declaration]
>             kvm_cpu_online(raw_smp_processor_id());
>             ^
>     2 errors generated.
> 
> 
> vim +/kvm_guest_cpu_offline +672 arch/x86/kernel/kvm.c
> 
>     669	
>     670	static int kvm_suspend(void)
>     671	{
>   > 672		kvm_guest_cpu_offline();
>     673	
>     674		return 0;
>     675	}
>     676	
>     677	static void kvm_resume(void)
>     678	{
>   > 679		kvm_cpu_online(raw_smp_processor_id());
>     680	}
>     681	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e671b62d-0324-2835-2726-6b28a0202b7a%40redhat.com.
