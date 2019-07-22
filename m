Return-Path: <clang-built-linux+bncBDAMN6NI5EERBK4X23UQKGQEPQ2BZUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D75E6FD69
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 12:10:51 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id t62sf11971240wmt.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 03:10:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563790251; cv=pass;
        d=google.com; s=arc-20160816;
        b=gnAUojjhIadSeu8O4ruq7JsLk3MxxktDuxRsJs0P39jvo2Z2AawhVdyewUh7ciO/UF
         jytIJYFTYnp5xJjCZCTABP3zGpfAPEqqYNBSbcK+iv6L1WEbWIxqPfgD0YFrkC3AVCIo
         zejZKjTqEtzO3qJD0VcENZnzWdOiMpdE35C6u5lVE+wmiUPlXrM2sZXGeM68v7uaIPrt
         VwQjP6U41YG64xJHIhoSvbF/R0r4TcLDAyhEomT5yGkWyYDQsJLo/HaeEs/kFq80v5gJ
         Ne/+2q05zKGy/VFSjYVZpTq1qxj4Y3a1oEG3UQL4/91m85kjwClQGq4GbCN28dGRCQhR
         7NQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TUzcd565KJytonaniv5TWCKBVnUhnmtVglxFiph3OOk=;
        b=ZU58I/zH87UseCa/9TEjN6ooN4k4Pqi/8+Y7AtgheRPWJf/cN8Lo4mJMPSGwX91CiS
         0xZKYJejRi5vmrO0SczkYWPgxLlDF8gzHGd7xc7Hvp4KpYeaJjMyaXY4TCtoZlnWNd81
         SvSse1w5j6En+dIYVNXhg0l9u4Lj5DA1Wc3qCaZb2xk3nQ5X9/ZI3Y5z+HN8zQueN5Tb
         VqHX377l7uXT/iV92Pf4VApPjJ1zfbT7VNTauQRWmJciG4hnaToQWyCelAqLrEiLmVnS
         /SyIOSE559dC7bxOg1bOGchaa+0oYBc4IBjVoqK/IyRbNczygTGuLAPu5WiXfZBMicRT
         rp9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TUzcd565KJytonaniv5TWCKBVnUhnmtVglxFiph3OOk=;
        b=SThYpMNNcQ56ciAQsCJFK/OQdbg1HBBio3vyH0hwGFgiQFx08oPhz/hLvRx3geq9Wi
         b2meqCIMvaYzmkw+ZVGLM6nDduiC/VtoFlyaVw/2a75SjfE1buynCiojm89GeYHnprTx
         uTlXaY/RKzaYfBIyZOrfVWZs8/8Rfw7A9yLft4Um8bxpUmS7n409rfduf5Z16dxG5QRu
         BB4aicJseOtIl5vlDKr0Dyom7r/bFxH1sIJmoeYg7cd2KcbW+qGUgWcGHhSF7hP1/0qQ
         f9jcbGOnUUrYxg78XeMhzlF7JHXRY673FQkJbr8mwzPW5vXzrx+Uv1oCMM909rEqKYVL
         YAng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUzcd565KJytonaniv5TWCKBVnUhnmtVglxFiph3OOk=;
        b=SeQW8dFqkcqAyOxuKIuYo7x0K/yPrXqIgqOzY1zlzeQrWt5IYnz5pnrC0KUFInoCD+
         5is6z5ECDBvCEqdIAHqn2LszoZrSZUpr7ewFXI/FnDXKuTRaxyVVGimMP5YoypAqXGKr
         Y6s734fguBOtNmt2tMe3T2PNa9WvyZN/TZSBR/E5WeTf792HgskrT1dVa+RDhsbXI8HK
         GEvLpfH26ohet1kTwwKAU5iI/vX3uNH04CztdU2GdiGj2CXwlMYXxr6odfwDUQzZ+3V3
         gZ54dKHYkfN/wLeMSA2otbRCXr/eaXrWpKoXPGP6yAXM45Xy0m9pnf4T7eBuG+jXTwK4
         wZJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW6occrADlx7x5FVuJ/ZFuRgJ7wu54ZFKNmq75T4yxkVAe9nAIa
	9ANfcTxUJfmTjbth365nU3o=
X-Google-Smtp-Source: APXvYqzQH4hz8F7CxP0ijzmju8OyVepFXpmAMkSoeCDMrh0OGrzTsdQQT0Ii/XPhG8pSDig2VhNQxQ==
X-Received: by 2002:a7b:c313:: with SMTP id k19mr60671398wmj.2.1563790251188;
        Mon, 22 Jul 2019 03:10:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ea50:: with SMTP id j16ls11594659wrn.9.gmail; Mon, 22
 Jul 2019 03:10:50 -0700 (PDT)
X-Received: by 2002:a05:6000:112:: with SMTP id o18mr48651451wrx.153.1563790250699;
        Mon, 22 Jul 2019 03:10:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563790250; cv=none;
        d=google.com; s=arc-20160816;
        b=Kd1QW1Yjg6/NZGa5X7qdvDsH5pe+RgLT44bwpeCOrCL4GVvb/SkyX4eU4rmPcCpVny
         ansNqYg+CseAS+LwU3DkswhX7pP/lsJZtXkgQarK0DissKla7iD2AWUFTTyWE9dXCvIq
         JihY0elYtaKPnYT6lQjKvDVBI6hiheZQaVWII0cItY4759me6JGp5ivXc6Es/vTWsu77
         AzwfSFqgJTnTwnZ5h4LxhRHp4uApqiiEtifRu2kVZf8qUP215xtAA63+LotSbC9vKZE9
         5lvSwsioR6sTMAOsRt1HGLKMxkM5ydGg59WJpS0NXVgZwgfl7QkU/g8o6mq6w7OIr8ir
         epuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XdDFGxs4qKXxA3u7ZLUOHyutYrpAtbCBB+ZiDQjLcIU=;
        b=N0YPsyk6d9zB2xDKC0OObcst//JsGxgr3sOlwfMgOXBXe9GL5lXB67oW+lBPUrrkrH
         /073EyvApkX4OYDqN8KT2B2xYJYlBOUNpw0Khy44wosx+PPOYJ4Qbc4XEudVDaWXYaF5
         3Nm+36JFrd/lcW9HG6oE1kVpZ0oSoUjzFkOx9Vtb+c81MXNezFv0ITTQBPfy/5qjOinO
         cNd+NnxFFwHncV1pdhOZjw93d7lmfaEvfRQTK1fKUs5a0pxnh+1VMm/V3G+AogIkmI0+
         DA/nqGL1hpxc0Xuh17rhGDsTAWougiDMafMe9vZBy0t4z63oKLnERd2Jcw0w3uG1y6g1
         gj/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id z24si1229776wml.0.2019.07.22.03.10.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Jul 2019 03:10:50 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hpVHL-00043N-KJ; Mon, 22 Jul 2019 12:10:47 +0200
Date: Mon, 22 Jul 2019 12:10:46 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Arnd Bergmann <arnd@arndb.de>
cc: Vincenzo Frascino <vincenzo.frascino@arm.com>, 
    Andy Lutomirski <luto@kernel.org>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Jan Beulich <jbeulich@suse.com>, x86@kernel.org
Subject: Re: [PATCH] vsyscall: use __iter_div_u64_rem()
In-Reply-To: <CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1907221207000.1782@nanos.tec.linutronix.de>
References: <20190710130206.1670830-1-arnd@arndb.de> <33511b0e-6d7b-c156-c415-7a609b049567@arm.com> <CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

On Thu, 11 Jul 2019, Arnd Bergmann wrote:

Trimmed CC list and added Jan

> See below for the patch I am using locally to work around this.
> That patch is probably wrong, so I have not submitted it yet, but it
> gives you a clean build ;-)
> 
>      Arnd
> 8<---
> Subject: [PATCH] x86: percpu: fix clang 32-bit build
> 
> clang does not like an inline assembly with a "=q" contraint for
> a 64-bit output:
> 
> arch/x86/events/perf_event.h:824:21: error: invalid output size for
> constraint '=q'
>         u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
>                            ^
> include/linux/percpu-defs.h:447:2: note: expanded from macro '__this_cpu_read'
>         raw_cpu_read(pcp);                                              \
>         ^
> include/linux/percpu-defs.h:421:28: note: expanded from macro 'raw_cpu_read'
>  #define raw_cpu_read(pcp)
> __pcpu_size_call_return(raw_cpu_read_, pcp)
>                                         ^
> include/linux/percpu-defs.h:322:23: note: expanded from macro
> '__pcpu_size_call_return'
>         case 1: pscr_ret__ = stem##1(variable); break;                  \
>                              ^
> <scratch space>:357:1: note: expanded from here
> raw_cpu_read_1
> ^
> arch/x86/include/asm/percpu.h:394:30: note: expanded from macro 'raw_cpu_read_1'
>  #define raw_cpu_read_1(pcp)             percpu_from_op(, "mov", pcp)
>                                         ^
> arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
>                     : "=q" (pfo_ret__)                  \
>                             ^
> 
> According to the commit that introduced the "q" constraint, this was
> needed to fix miscompilation, but it gives no further detail.

Jan, do you have any memory why you added those 'q' constraints? The
changelog of 3c598766a2ba is not really helpful.

Thanks,

	tglx

> Using the normal "=r" constraint seems to work so far.
> 
> Fixes: 3c598766a2ba ("x86: fix percpu_{to,from}_op()")
> Cc: Jan Beulich <jbeulich@suse.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
> index 2278797c769d..e791fbf4018f 100644
> --- a/arch/x86/include/asm/percpu.h
> +++ b/arch/x86/include/asm/percpu.h
> @@ -99,7 +99,7 @@ do {                                                  \
>         case 1:                                         \
>                 asm qual (op "b %1,"__percpu_arg(0)     \
>                     : "+m" (var)                        \
> -                   : "qi" ((pto_T__)(val)));           \
> +                   : "ri" ((pto_T__)(val)));           \
>                 break;                                  \
>         case 2:                                         \
>                 asm qual (op "w %1,"__percpu_arg(0)     \
> @@ -144,7 +144,7 @@ do {
>                          \
>                 else                                                    \
>                         asm qual ("addb %1, "__percpu_arg(0)            \
>                             : "+m" (var)                                \
> -                           : "qi" ((pao_T__)(val)));                   \
> +                           : "ri" ((pao_T__)(val)));                   \
>                 break;                                                  \
>         case 2:                                                         \
>                 if (pao_ID__ == 1)                                      \
> @@ -186,7 +186,7 @@ do {
>                          \
>         switch (sizeof(var)) {                          \
>         case 1:                                         \
>                 asm qual (op "b "__percpu_arg(1)",%0"   \
> -                   : "=q" (pfo_ret__)                  \
> +                   : "=r" (pfo_ret__)                  \
>                     : "m" (var));                       \
>                 break;                                  \
>         case 2:                                         \
> @@ -215,7 +215,7 @@ do {
>                          \
>         switch (sizeof(var)) {                          \
>         case 1:                                         \
>                 asm(op "b "__percpu_arg(P1)",%0"        \
> -                   : "=q" (pfo_ret__)                  \
> +                   : "=r" (pfo_ret__)                  \
>                     : "p" (&(var)));                    \
>                 break;                                  \
>         case 2:                                         \
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907221207000.1782%40nanos.tec.linutronix.de.
