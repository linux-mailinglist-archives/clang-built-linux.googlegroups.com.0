Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMUM4WCQMGQEONA45DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A9C39AC6D
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 23:14:27 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id a29-20020a544e1d0000b02901eef9e4a58csf3619876oiy.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 14:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622754866; cv=pass;
        d=google.com; s=arc-20160816;
        b=deJ3NgiF8AOQDI1hCk7SJlgHp2VstmuVgjwlb4XV7qLI41pH4BO901vTtpPRQ2u0AC
         hfCvtI7ewg+g1Yl+HPAebzlkyN/BqpYFcqW/yfaByC4iGVZSAjCfM0PT00hq9iJuKtp1
         F6baK/0VpoEwJr7Hr2mq7RhKWWK/kATHYTIP5ed3U8z9/uGnj0raeXsQ9UmZHkVEs5fD
         v+SpGie756k3E5eAJsUWeyXQJKu7rH33GT3QTHSpEm+TWiDTDDGcoeREcuWwfebDPkeU
         myfnvpidccfpfHwPIDScmOTBGCamWEJlTQBDb70rxDcJCWH+t7jZa0zMDZ0+aYORXsxF
         ZO8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=u9G5LoN3eG35O5rYR+XBxna29E3izN1jzO0rB9IHaQc=;
        b=KSnsk4hpp/F50RBxAiS/BdHB+LqsJ+GCdimbyg600Ur5kFo0HuxdxU06P+vRmJAmgB
         EPmx4loPD3CwOlJcPEselWvWcqtetDFSWhIUOagiFRwVmAj87/4jDd89dfGEwY5cWwTN
         ejFv2yTc43a2LY4MHlkEDDBW4568roGvupdXyxkXD6e3Mz1y4vYMY9iADXUxBHs6dnM8
         KJuiXztlaNyxgz38FSPswHc8oEj8H9crlMd7FGKhDfcCpIqv+53/zz1LzffbF+Ib9qRQ
         G5qyV9OxxRhJu1gIF8bbU98a8+hAluzfV/+t2rr8j1c9idxUitfhq2CUXc+mDN9qCsiz
         z2gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pu+42oUa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u9G5LoN3eG35O5rYR+XBxna29E3izN1jzO0rB9IHaQc=;
        b=WxZ91LK24lS8CBdC34hrR3kKfX6CwXLuvmaHNusBJZBIHi7a2CdioKOVNkTD5VzPln
         24JI6mTwR+Vw7tfOCV+7sjSZ2BQo3g4gNNHRxHYreHR3y4NgIcDzqnfeka00mZpwYHsE
         qRNCkyTCjE1+ZGCX8pkI4UX+NwRrudtzL3ChGWDImY+U5uDHm6UCNPdAX39SS2KArzbT
         BEESe0q/JZKam0lAuiWWA4xcinZ7Fv9lI7WIbqhYx56OkeyTRuhBo7jYYXpxskMOZCrw
         20hKMK2fDY0LWFRf5p8SocHkdeJ7yiaBHZLwIOvCYCtjxF9Zcr+dF/bqOJHoEJwmvR0J
         PBrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u9G5LoN3eG35O5rYR+XBxna29E3izN1jzO0rB9IHaQc=;
        b=fS3j34PHgpIn0iMZPx6BDZFi8uG+R1ZmpBlux7J6KSQQY+MUNuhuxPxicmUkacQewL
         Wi1tioWA3JJI7nNLEScsbuNHq2Jn3zKpyW874Rx5iGgfg8EPy+s33htEewcOsIBVVdHu
         SkY0e6fzIMel4eHgvgHF7KzB6kH1dm64y4S4DYMVin5ZY6w1qWeVBbJxR0q8Pvu+PQyr
         fCYd5g45+OYC1JaHszgd62oSYtous9TeAaDwbc9yrxwRYVEzo8KyYTkRr59WerDl47bD
         Pp2Bm7+BjAsXHukIYksQUeAmlIMVbRzMloTW8cnlywNWOh4+MBgYLEpMHPu71PhyWMOo
         SrCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/Su9P3uRtBiWD1bL4NhyTV7abHwWqpKMPn/dWrK+dvUkrhKlt
	/Dz1OVjo4lqR889LJPdr+vw=
X-Google-Smtp-Source: ABdhPJzr2rE4M4NYLVCGA5yz5U2h7ETuc7vnzjCnPLv0t+3Z7tA8gB7nVv9UrYGqo2tucBj1ej5DPQ==
X-Received: by 2002:a9d:7a99:: with SMTP id l25mr1028618otn.97.1622754866197;
        Thu, 03 Jun 2021 14:14:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:641:: with SMTP id 62ls636230oig.0.gmail; Thu, 03 Jun
 2021 14:14:25 -0700 (PDT)
X-Received: by 2002:aca:4a4b:: with SMTP id x72mr208178oia.18.1622754865879;
        Thu, 03 Jun 2021 14:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622754865; cv=none;
        d=google.com; s=arc-20160816;
        b=JHR8cfJ/OgcdyRF/kIgvKvryPBF/VrpyrvbDulfPGDLCAnefFoaJzEjmCYkxznNrin
         6OgtxS1oaM1N4nPoeGKQHjKaM/tubI8s1hVehhNtE5OQaPsAuHApAq8q09b9w+xsjigd
         bwWR91VsZIrhYno503E1KZOP+9mWKNE6zZlWucJ6EJyZthgV8lwdPLcRmrvfXLPK7llA
         UgGfKKHmAARrQIikAyGa6fncerNPRzTfZEzwWRKq5nn+N9bS6WOUjpPzmAY5sA2JKoo3
         8z+HVGQjN8G+Ryi5+jXqbbKUxvrypAemJzzzQRVbkj1arnan7oJMGQaNxSpyic3AQont
         X/wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=38rZaCcoUIrT8vFS2fOueJX465srb49UmP7YOKrEHG8=;
        b=YqVSeXVjr56WnHNy36bHpw/lmbZwbwDb1NRWDmvERb+aEetoy1pg9dBROVrHA7do7o
         3QZ/qGEH1ntFCufhAtW/bO4zUf3JF/N/gQE3SZBNUgMm0JZ78GmhN8Tnbd5JJAutY1D1
         2Q37m2MTONpOFmskXK//qyHCQjhSmTM3JzYhrOkV8N9uEPuwA5gLoO8zq/3wSfS83T8r
         AAurDgoroS6GvDtxT6hqBjTnPKOFVPGbo5De/qpBWcKjQtoIxPSk3xTpZPUX8ql5SPvd
         qa3ZOtvj6+I1BJ3KLK6W/rKZ6bzM3arAY3Y3fhiE+TN3OVolRZBLW4Qa/LgiYV81DzRu
         wbNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pu+42oUa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c22si3555oiy.1.2021.06.03.14.14.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 14:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 74340613EA;
	Thu,  3 Jun 2021 21:14:24 +0000 (UTC)
Subject: Re: [PATCH v2 1/1] pgo: Fix allocate_node() v2
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
 Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
 Kees Cook <keescook@chromium.org>, Nick Desaulniers
 <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
Cc: morbo@google.com
References: <20210603133853.5383-1-jarmo.tiitto@gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <d7e94352-0b24-1ab1-8b54-b6ffd4347963@kernel.org>
Date: Thu, 3 Jun 2021 14:14:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210603133853.5383-1-jarmo.tiitto@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pu+42oUa;       spf=pass
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

On 6/3/2021 6:38 AM, Jarmo Tiitto wrote:
> Based on Kees and others feedback here is v2 patch
> that clarifies why the current checks in allocate_node()
> are flawed. I did fair amount of KGDB time on it.
> 
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

I agree with Nick on the comments about the commit message. A few more 
small nits below, not sure they necessitate a v3, up to you. Thank you 
for the patch!

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   kernel/pgo/instrument.c | 21 ++++++++++++---------
>   1 file changed, 12 insertions(+), 9 deletions(-)
> 
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> index 0e07ee1b17d9..afe9982b07a3 100644
> --- a/kernel/pgo/instrument.c
> +++ b/kernel/pgo/instrument.c
> @@ -23,6 +23,7 @@
>   #include <linux/export.h>
>   #include <linux/spinlock.h>
>   #include <linux/types.h>
> +#include <asm-generic/sections.h>

Not sure that it actually matters but I think this should be

#include <asm/sections.h>

instead. Might be nice to keep this sorted by moving it to the top as well.

>   #include "pgo.h"
>   
>   /*
> @@ -55,17 +56,19 @@ void prf_unlock(unsigned long flags)
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

A blank line between this variable and the comment below would look nice.

> +	/* Check that p is within vmlinux __llvm_prf_data section. > +	 * If not, don't allocate since we can't handle modules yet.
> +	 */

For every subsystem except for netdev, there should be a blank line at 
the beginning of a comment. In other works:

/*
  * Check that p is within vmlinux __llvm_prf_data section.
  * If not, don't allocate since we can't handle modules yet.
  */

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d7e94352-0b24-1ab1-8b54-b6ffd4347963%40kernel.org.
