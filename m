Return-Path: <clang-built-linux+bncBCFYN6ELYIORBVUOUPUQKGQE2DWTW4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 055D56748E
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 19:45:59 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id l10sf2554753ljj.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 10:45:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562953558; cv=pass;
        d=google.com; s=arc-20160816;
        b=IjCuNi8kC2M5Dpew81LxLQklo0u2PrC79LYIE2uWxxrCIWYOzE0c2xDvBjFVdtRH9/
         KJjj765DZn4F+Zoc+zWY2w/T413gIvvUqeHU+oA3qeiMh8CPOGckXTNNRpE2foHoQzZE
         KvzPimEpD9w7ZhuZdf9kMGCuldPM/L3mXEFnSupgDU4R9s0R5J+Q2DrqWgViTujQQ5wW
         e0obNfh8VxhiuluYgZyBLhVWM0MbvZsJORVKFrrOhjsOrY9dYa8iDUs/Nfj6KjJ54Xi+
         DKY582GVhqECfO1vpmQHUTo6JKSrnBZ+T4U/E6YU/K71dY3lQp3Zpc83JrW7NUCBJvls
         b0Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:openpgp:from:references:cc
         :to:subject:sender:dkim-signature;
        bh=LSWOLXRjntFcQp3W+GNcuYxKpTVS2gelytR/hWHBv+0=;
        b=dvCTEdh5SbMoETTWuUBctNHmVEbSWPWGKF97BDYJsI8URUTNaTEjLgTdJkvxZri2vu
         4yT2R+o2ilbxigAU9G4bTiShiRJsMHzZV1EVfK0XNdzFvP09FvTaIkjqMJmAKLivydHM
         yjaflRizvBBYQmHRiWPCKuM3OedKcynIlGOo+XA0u852YU4EW0BysHcKCrbxhU9X9FP+
         Co25/I5FpSearVREQEpyA1e0QB0rseANnh6cUp9lKQIHvxV2QiYgR+pA9BjGw2ufqLTn
         ilyO9AVJTsZAH0E/PnHS6jZW2lCNrs1jkeTtBd6RjOQieWjcLVzOHOh+/oi/r6lHSNR2
         ZxLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 209.85.221.67 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:openpgp:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSWOLXRjntFcQp3W+GNcuYxKpTVS2gelytR/hWHBv+0=;
        b=SHRyT8ij8zlqXyQj+acxX1u+QsQGgo48ZBzNfd+35JrwEUiEJTg6T3ZJVhODJ4budo
         Zn71vGDeY831kDp0y6Z4UqWfZtlq2t26XqMX/1cfSfQd0Lc5RArmvqLLDPQRsxnb/Az0
         YnXODovucKA41HXtFTgCPZq4HfEwfhYSXqS1+bNGwrZWBUCDMfV+YGmLpvA6pFFchwn0
         +fMmfC5fedydS28qFzuWsEUuFu9sivVhNs8zOmi3tMw88Mjhbu5kIrjxe/+R7RKs5bwU
         RNyeSm4uEUiga+q7yi7O3Zu9XqWVvq3vREc6mKJLxp93aIyOcpqupPFJuvUC6aHwghAK
         9QSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:openpgp
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSWOLXRjntFcQp3W+GNcuYxKpTVS2gelytR/hWHBv+0=;
        b=GHO3lbYBeWO2R3Ct22bQ/GdQkulJJVH3vUJQMrfzAgRDGDPpncBa0yvEfcnS114xCZ
         oFdJmxwDVwml3F6Bv6aPMv4zpndzT6ZYGhG+4PW8Q/esjiHgs8OucF+DDoV9XPBu96u3
         Mvo5Q/TG7wnv0rqyGuMmLfT6UkDkz3nNjpqiwvMRz161Ogq5q+R3bUsdjDV0UuB3CmPh
         8s5Q2Cd6uF8a7YNLx9heh7SrupaIBIlFikXQaOL/s3+CQPyfzI//LC6sULUtlH6DXG6L
         OK1LThdTypJeDvrBeZ2lc3/5iPvY3scxxrunXt1cQIFJ4n8O2ouS6BrygGnw7d2hHxpk
         zsgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwt1lokG3ouFxdkEcwq0oF7CFULUWpqwDW3X76kJ/OOQQlh7Xw
	hBUWFiAvVDhvD5Edcm5+xms=
X-Google-Smtp-Source: APXvYqwV5xS89jPhb5wjTajg/bLhLqvwzQYerBiWdlNPBeCwvCcRWICo++/HsdVBA+nHuQSdeIZeJQ==
X-Received: by 2002:a19:490d:: with SMTP id w13mr5293222lfa.58.1562953558590;
        Fri, 12 Jul 2019 10:45:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:553:: with SMTP id 80ls1251069ljf.4.gmail; Fri, 12 Jul
 2019 10:45:58 -0700 (PDT)
X-Received: by 2002:a2e:635d:: with SMTP id x90mr6681288ljb.140.1562953558048;
        Fri, 12 Jul 2019 10:45:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562953558; cv=none;
        d=google.com; s=arc-20160816;
        b=szMHQ4h4PEgrOVp6e/FytEHlMs12FtRnbi7FjzFVYGWvX9TDN+figNBpXgqVsa9fyV
         XG4gXs+oShMjqoXXXw7TRkMopiOVyKHXrV5IKdlva+EVRtsXuqlTbtD4IAxJ7y2Nk0NN
         3HZaNd8xdOlijNTJxAjbYlK9d//kJIoy8yuA9FL5xLfjGHRpM2B+EIfDYMd+sQVzPaMb
         qYj68kdWSWPJWjYJzWLn0Vb+Ucapr1yxfC5pShGfCrkJtjmrwVgoQVAtEjh4DWf3zs3w
         6LxERUSxtOspaGdTqKlb6erwA0zViiPo4LclHtnv7FhuoiP4Zd6cnezAXmQIB61tkbJC
         eqag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:openpgp:from:references:cc:to:subject;
        bh=5AAY/XLB5sNM5xu1cxB6MBuk0Q+am8e86PPXt5EsGZI=;
        b=BScHka3JmzKzu8QqDi2BUP+fqg/RETqDCaD0t8qzsqX1PRKU1o+42A5d9VKEr2l22M
         XKGR7RRTeY98PuN1YfROhKyPheZp/EB064MfgpZQfcKa1Rr6huePmUSVK47GQ+CP+MNf
         X6MG026u4OZRSCew4CQjr+MvfdRJxh/NNQEbHM031uWAStQq0iVHODAVWXXkbDKJ5TvR
         tICs9bA+gU4uIu84nsS3j63ocXXAjyUC7VwRjlVpib9fQ9fx8rbvFMYuMy5IkglIi57N
         2nAv4C15oUJgulngO/rW11VezVphG017twO5Rh0YdediApspdHAbr/8Ue7PNv2ZAwy28
         Jltw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 209.85.221.67 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com. [209.85.221.67])
        by gmr-mx.google.com with ESMTPS id f26si545268lfp.5.2019.07.12.10.45.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:45:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 209.85.221.67 as permitted sender) client-ip=209.85.221.67;
Received: by mail-wr1-f67.google.com with SMTP id z1so10762689wru.13
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 10:45:57 -0700 (PDT)
X-Received: by 2002:adf:a299:: with SMTP id s25mr5567669wra.74.1562953557279;
        Fri, 12 Jul 2019 10:45:57 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:d066:6881:ec69:75ab? ([2001:b07:6468:f312:d066:6881:ec69:75ab])
        by smtp.gmail.com with ESMTPSA id y1sm7470474wma.32.2019.07.12.10.45.56
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:45:56 -0700 (PDT)
Subject: Re: [PATCH] [v3] x86: kvm: avoid -Wsometimes-uninitized warning
To: Arnd Bergmann <arnd@arndb.de>, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?=
 <rkrcmar@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 x86@kernel.org
Cc: "H. Peter Anvin" <hpa@zytor.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Roman Kagan <rkagan@virtuozzo.com>, Liran Alon <liran.alon@oracle.com>,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20190712141322.1073650-1-arnd@arndb.de>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <e85f877e-7c1c-7c9d-40c0-b41ac0fc68d6@redhat.com>
Date: Fri, 12 Jul 2019 19:45:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712141322.1073650-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pbonzini@redhat.com designates 209.85.221.67 as
 permitted sender) smtp.mailfrom=pbonzini@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On 12/07/19 16:13, Arnd Bergmann wrote:
> Clang notices a code path in which some variables are never
> initialized, but fails to figure out that this can never happen
> on i386 because is_64_bit_mode() always returns false.
> 
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'ingpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>         if (!longmode) {
>             ^~~~~~~~~
> arch/x86/kvm/hyperv.c:1632:55: note: uninitialized use occurs here
>         trace_kvm_hv_hypercall(code, fast, rep_cnt, rep_idx, ingpa, outgpa);
>                                                              ^~~~~
> arch/x86/kvm/hyperv.c:1610:2: note: remove the 'if' if its condition is always true
>         if (!longmode) {
>         ^~~~~~~~~~~~~~~
> arch/x86/kvm/hyperv.c:1595:18: note: initialize the variable 'ingpa' to silence this warning
>         u64 param, ingpa, outgpa, ret = HV_STATUS_SUCCESS;
>                         ^
>                          = 0
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'outgpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'param' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> 
> Flip the condition around to avoid the conditional execution on i386.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v3: reword commit log, simplify patch again
> v2: make the change inside of is_64_bit_mode().
> ---
>  arch/x86/kvm/hyperv.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/x86/kvm/hyperv.c b/arch/x86/kvm/hyperv.c
> index a39e38f13029..c10a8b10b203 100644
> --- a/arch/x86/kvm/hyperv.c
> +++ b/arch/x86/kvm/hyperv.c
> @@ -1594,7 +1594,7 @@ int kvm_hv_hypercall(struct kvm_vcpu *vcpu)
>  {
>  	u64 param, ingpa, outgpa, ret = HV_STATUS_SUCCESS;
>  	uint16_t code, rep_idx, rep_cnt;
> -	bool fast, longmode, rep;
> +	bool fast, rep;
>  
>  	/*
>  	 * hypercall generates UD from non zero cpl and real mode
> @@ -1605,9 +1605,14 @@ int kvm_hv_hypercall(struct kvm_vcpu *vcpu)
>  		return 1;
>  	}
>  
> -	longmode = is_64_bit_mode(vcpu);
> -
> -	if (!longmode) {
> +#ifdef CONFIG_X86_64
> +	if (is_64_bit_mode(vcpu)) {
> +		param = kvm_rcx_read(vcpu);
> +		ingpa = kvm_rdx_read(vcpu);
> +		outgpa = kvm_r8_read(vcpu);
> +	} else
> +#endif
> +	{
>  		param = ((u64)kvm_rdx_read(vcpu) << 32) |
>  			(kvm_rax_read(vcpu) & 0xffffffff);
>  		ingpa = ((u64)kvm_rbx_read(vcpu) << 32) |
> @@ -1615,13 +1620,6 @@ int kvm_hv_hypercall(struct kvm_vcpu *vcpu)
>  		outgpa = ((u64)kvm_rdi_read(vcpu) << 32) |
>  			(kvm_rsi_read(vcpu) & 0xffffffff);
>  	}
> -#ifdef CONFIG_X86_64
> -	else {
> -		param = kvm_rcx_read(vcpu);
> -		ingpa = kvm_rdx_read(vcpu);
> -		outgpa = kvm_r8_read(vcpu);
> -	}
> -#endif
>  
>  	code = param & 0xffff;
>  	fast = !!(param & HV_HYPERCALL_FAST_BIT);
> 

Queued, thanks.

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e85f877e-7c1c-7c9d-40c0-b41ac0fc68d6%40redhat.com.
