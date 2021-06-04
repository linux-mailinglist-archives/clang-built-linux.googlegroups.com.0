Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK525GCQMGQE7G7K2VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7511039BDFC
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 19:04:44 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id l13-20020a4aa78d0000b0290245c8f11ac2sf5932253oom.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 10:04:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622826283; cv=pass;
        d=google.com; s=arc-20160816;
        b=z0iMaM+f8DxUfAV4FMlXVzzRPzTQBGIJZYm3mApURgJn1ie/syB8N4i3IlC2A815lZ
         VjIMcLITCEQKsBfI2E+58o7pz8sm/tIgl2KVPNSzgLHEeShOzeTn7z5coVQPv/dFSMjJ
         zNiwDoz+BSbT2lsxgRj4oh6oMcxkY/Yqkdmwe/PzFgF1ApQPLAO9kz6a561NUiJb1xqE
         XtZ6I6/D7uuUTfth/4kmQ8GE070XtsRD7NTU+Qm85f9xkgOcM3pek9rnC1awHKOIC3G8
         qNtFwccdJrjobFH3zDdPdvMoUDPwNsVpgp1/b6lshSONAY/9DYbsqpEr5jwOaffxN1Ym
         7opQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=+maD1so7v1RkX4vLyQjwkEQhtyJcRwuYu7bWmkS/LI0=;
        b=gq5x1cRx9BtmWeWrDfT+eG66iOfy+rnI2iGFKpqNotR4/6ZE4kTwJnsq2UDxq4kkpW
         g7U/IvkR0teMi7C+4Cpv3lqOpbk0N+8Lz+gG1LqanKX4NZ8GIf3nktyv5X7Xzbcdgnug
         XSzhMHt/Y7WB/0/4qoasTjSqyGOQXj4SYeCh+vLXlck1qxQKE0uWcQ3fbmOyYhjx+JUk
         1/6TutXWY66aShshYagwO0GiztI6DUmxAt4r9VyQEHuaIf9czCB2cq6jEwRP3O7hMwUc
         84IjC9FUAKiTYBohCZiRtlqlvDGOP8Dd20WTJ9hBOahhyzi7HeUEkaQk2jc5LuekhUob
         BV6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=W0ZC6bs1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+maD1so7v1RkX4vLyQjwkEQhtyJcRwuYu7bWmkS/LI0=;
        b=Xm2KiulBO7nF+A/h+an8QWigQsfN7DOIMbfFJ41/uIvkUJSHctWTgzxzt7ZgJ6XElb
         w6NY/ky9RKL6cmTatEQtr2ak6f0NyuakOCVEXvnc1cTim3Kp4MWGd4pIcqC9txJTkyw0
         P8KGZZK5XiZfjjwVWtvSOo/ay1i5JZxxBTZuKRLyQ4xyB+M6hoUBsMcic8ql0KDogolF
         r96/XCq0Wym1CloeyjRktoOid2fwNl964UrlmmFD2ua6Cf8z33BDyzW2GFb8p9u5dS6L
         ZfqJMAnXcVAkl7AA2Yyvpy4RmrE5X6Gtcl8CUkIZutbm33azeUGMk7TtmPoKwpKyAMMe
         N4DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+maD1so7v1RkX4vLyQjwkEQhtyJcRwuYu7bWmkS/LI0=;
        b=k4vzVAu8kcfMug+b4la9/PDkLmJ2r6Ito1KsakNsmOX1Ihbf7xhr1Jbm4m4VPF4zKb
         A+COFB8qRYhOCummY6cbxt55E930BPPIOcudouhSMBncSW60GcykdF9r3yh7VhWw6tWz
         vMD2vL/LPtsMRTsuFFmQ3Ia9tB9aJgkRNm2l0IStpWrh99k2NEkaV8HaPJ6cmvLBX+B1
         wasHJjXHINDyjIjCuiRFRRGJxNprg7Qhutpjg+Sfdk3Djhhhv3GvK3vrHcRdNMec0eDV
         2LlC5o9jeHSFGXymjH76iej0kz1PWNIxvUw8Ic6bUoG86bQsIKeqeIJruFyIkuegDs8k
         UYrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OuRF3uaWrYrgxZIKovtCy6wFZzdbQnTAuiPBKgj8p2nzG3R8l
	BRi2ZrFPTPLPY68Zy99dnKQ=
X-Google-Smtp-Source: ABdhPJzfo9uQVOj33XuHmcynwbdgGOzymWe4gQR1aN91OS5hNM6aT9fPJPkjmuVLv3yWec3rT/fHZw==
X-Received: by 2002:a4a:b301:: with SMTP id m1mr4330836ooo.7.1622826283142;
        Fri, 04 Jun 2021 10:04:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3916:: with SMTP id m22ls644727ooa.5.gmail; Fri, 04 Jun
 2021 10:04:42 -0700 (PDT)
X-Received: by 2002:a4a:d349:: with SMTP id d9mr4345084oos.76.1622826282652;
        Fri, 04 Jun 2021 10:04:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622826282; cv=none;
        d=google.com; s=arc-20160816;
        b=P2GlZYeiRmXcBLutN4D42G+6aystK+BdE9tac2oo45HYOnLGLHQ08hoWl2z3WTkgvj
         KQ1j/FyTA0zyYJNTprUDVvuwVqrybcgk7q8pds1G7wVkkX/YB/39SxUqTd6V4MfX2UKP
         fo5YegT9gSMdhV4/6NR6W4vN7w6GfzfKv5bbMmM8uzTYwabPlRtA5V1XpHDCrxRHHSTU
         zUm1xqQK3tBU2cWSqAUQCzWwq5HIgjpW/B2sU3gOm1scPy1gUSp8TqsNkg03OaN0w/dt
         VbaCdTUyyvJtD85P4cLU+Shxy9f11Ow7h1u4w61XDqU+IihmNXh/CjhlgksdPRXHF+8g
         M8Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kIde/03mhm0NO3Rj4yom4IZsvvyhEgWVbgOeYU3ltyQ=;
        b=z0bpsCfKqvpd95ylaOsbFs0oDVjtncEQ04Z5kgBabXHYa+QiB8ywZ6sHdEg2ZepWHU
         PIJJhWGQhmHk5Kqg9JTJRch0X/sczKCe8ZBRk/EztOZ3VN3WYFLqViAVMwNvMxQNxUID
         NJBZUaqmRaJ9Cd/nIvjgYSij7aFn/5d0F4UFUzjKkmZjsHXiL+34l+Og+grbx2Ma2msV
         XZInpsIHKeGunxVr47UbQkJJUmcrhqnHOMkwu5Iqr5YTUqi4rHk3g2yJdokRqsAFUyNf
         ZFf9XLcH1/esDP/8JMLVucZbvGYE+LexKR6AUlFTIAnaBHDPr6uEb9YPHTjJEBzN235S
         5ffA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=W0ZC6bs1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a10si385760oiw.5.2021.06.04.10.04.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Jun 2021 10:04:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 35E31613F9;
	Fri,  4 Jun 2021 17:04:41 +0000 (UTC)
Subject: Re: [PATCH v3 1/1] pgo: Fix allocate_node() v2
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
 Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
 Kees Cook <keescook@chromium.org>, Nick Desaulniers
 <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
Cc: morbo@google.com
References: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <b04bafeb-541b-b1e7-9fbc-66bd1a04916f@kernel.org>
Date: Fri, 4 Jun 2021 10:04:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=W0ZC6bs1;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On 6/4/2021 9:58 AM, Jarmo Tiitto wrote:
> When clang instrumentation eventually calls allocate_node()
> the struct llvm_prf_data *p argument tells us from what section
> we should reserve the vnode: It either points into vmlinux's
> core __llvm_prf_data section or some loaded module's
> __llvm_prf_data section.
> 
> But since we don't have access to corresponding
> __llvm_prf_vnds section(s) for any module, the function
> should return just NULL and ignore any profiling attempts
> from modules for now.
> 
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Based on Kees and others feedback here is v3 patch
> that clarifies why the current checks in allocate_node()
> are flawed. I did fair amount of KGDB time on it.
> 
> The commit is based on kees/for-next/clang/features tree,
> hopefully this is ok. Should I have based it on linux-next
> instead?
> 
> I grep -R'd where the memory_contains() can be found and it is only
> found in #include <asm-generic/sections.h>
> 
> I cross my fingers and await if this is my first accepted patch. :-)
> ---
>   kernel/pgo/instrument.c | 23 ++++++++++++++---------
>   1 file changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> index 0e07ee1b17d9..c69b4f7ebaad 100644
> --- a/kernel/pgo/instrument.c
> +++ b/kernel/pgo/instrument.c
> @@ -18,6 +18,7 @@
>   
>   #define pr_fmt(fmt)	"pgo: " fmt
>   
> +#include <asm-generic/sections.h>
>   #include <linux/bitops.h>
>   #include <linux/kernel.h>
>   #include <linux/export.h>
> @@ -55,17 +56,21 @@ void prf_unlock(unsigned long flags)
>   static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>   						 u32 index, u64 value)
>   {
> -	if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
> -		return NULL; /* Out of nodes */
> -
> -	current_node++;
> -
> -	/* Make sure the node is entirely within the section */
> -	if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
> -	    &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
> +	const int max_vnds = prf_vnds_count();
> +
> +	/*
> +	 * Check that p is within vmlinux __llvm_prf_data section.
> +	 * If not, don't allocate since we can't handle modules yet.
> +	 */
> +	if (!memory_contains(__llvm_prf_data_start,
> +		__llvm_prf_data_end, p, sizeof(*p)))
>   		return NULL;
>   
> -	return &__llvm_prf_vnds_start[current_node];
> +	if (WARN_ON_ONCE(current_node >= max_vnds))
> +		return NULL; /* Out of nodes */
> +
> +	/* reserve vnode for vmlinux */
> +	return &__llvm_prf_vnds_start[current_node++];
>   }
>   
>   /*
> 
> base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b04bafeb-541b-b1e7-9fbc-66bd1a04916f%40kernel.org.
