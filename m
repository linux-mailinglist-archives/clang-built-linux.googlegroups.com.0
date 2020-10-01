Return-Path: <clang-built-linux+bncBCRKVNO2ZYFRB7GU235QKGQECA5C4KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC4627FCD5
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 12:07:57 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id r10sf1064210wmh.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 03:07:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601546877; cv=pass;
        d=google.com; s=arc-20160816;
        b=zscq+g7zvkCn1MtTfLeAoipfUMEIGs7HRmH9+BxODQNogEjqYsM4Yk6uFjVEv+TU5y
         bO4OCjZAP7FtfZ2rZBDnIwMRI+swGOy7aU/cYkQxTNpgN/7N8ATtEED/C3WPDp+lLdFJ
         +/6FibEwzLKHb3K3kzOeb22SIktUjHoPbgS8GGa0Fz+A+axAcYYFDuhAIXQrJHgGZnMA
         cD/jwbVGdPA/jlOTTAH2UALonzzGxOPZbZ3q9fR3yC0uPZf3UQVD0W6z2kmUvx68dfWk
         uV1d5yofhudXriwSq5UKN9HbdvlXf+reW2meUpoWtN/GOZ8W0h7B264ogiCc4ONq5BL9
         ki2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=oyAsy2PSespeGJb9k3wdONZvQqsS4uxB2RlbLeTrAoE=;
        b=1ErJEVoQBJGOyE/PiEgR0NsIgzXOYXGYmjdKtyasMA8lLqnWFoQ1/kOTHEuXxr531d
         NgxyzEuon7h5705M+MKdpRB4fh6qS8qkBGO1AXY6MrORdymm2yHF5B7hcw/WPe6GZ592
         HGs0D/+1m8IhEg451FhFYW3NxM6HP4MffJIz/olcwj2swBqYWqQpY0+R9sydMmituSan
         /rHpv/6lBmlw0gZ+KPXAAAR7TGp4024yLnYkHqkZMQm0N1gl6+kIL4Db4YvW3hjcUNUW
         TF28UNEqcYgwKUniucK0MZ9hBwdOEpUNRhZztRbNRKNn7bzEETuyhraW75dv1o9ff03i
         xDaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hWAwHmbv;
       spf=pass (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ascull@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oyAsy2PSespeGJb9k3wdONZvQqsS4uxB2RlbLeTrAoE=;
        b=rej8sCpid0nfKMHDqb6RHhcmwXQW9QAX53zMxd9GmqdCkHy8WeMjJ9Rj7g16JRHl6R
         T3dvFZlNkOseIz8/YkZeFvbtWZ5x77RL5pIdqsF7ku5O7imPmQsVyH5qvpE8pwjNuOjh
         frYy9nPVMpjR2XQIhKzVfpt73X2f//zJf0EOsU1Vi2dBDgMPh6rRIZuhfQGAel8brVOg
         u96rlzVg36g5wBfefmcIL67+VS2BdVq2TuNUD4UmwyaX3wk/lkVUTd/0R/+fOpSN6Sss
         tHwy7j7ERX1fHV0aRLER+4FqrvLgCw65wouiAIYBTsKoSOyH1eGc0viXDVtQ0o2i3cOV
         04Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oyAsy2PSespeGJb9k3wdONZvQqsS4uxB2RlbLeTrAoE=;
        b=VowU27pKDU1QqFZkOBbfbNpmYO0T6x4QMpubn5qWJAB50FPF4g/vNpIzrIrGnneIvl
         mlHjk4QxvYP//xENs0jLGREgfwnX6FlPCYrEMCSU8LwjbQDBAZeD8GXTCU8jDx9MU9kH
         Wix9ZzVUMq+c6QikAroon+bZPbSnT87yaQMT4X7K1kaY3lbSL9qbtiSsS+ojaGD9wTq+
         v8XQYndFHPeTOKOYES9m/KVc+Dma6JdAZoxK3+YShBahPYcPrkLGaahMY9HR7fPxYFj8
         BHYemhWaVW/sFFbcB6Btez7ykFZQYGQWpQWCXBRbQtUEmpLFCSB6AA/BXDrkvEIP6LvW
         ysoA==
X-Gm-Message-State: AOAM532OJ+02dW2M6mfhK5iEtYMbuYrz6XGATZ2YQ2tOwr+txFhRZQN/
	4kepkXfuymnduxj+2J6VvlY=
X-Google-Smtp-Source: ABdhPJzyYvnTJE14gclMOnGM6asH0cLBpMRbc1hJ5sTdLn15cqESI1BtliXo8sJNotT16shGRwWGrA==
X-Received: by 2002:adf:df81:: with SMTP id z1mr8317572wrl.9.1601546877104;
        Thu, 01 Oct 2020 03:07:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9986:: with SMTP id b128ls2584334wme.3.canary-gmail;
 Thu, 01 Oct 2020 03:07:56 -0700 (PDT)
X-Received: by 2002:a7b:c241:: with SMTP id b1mr7601761wmj.98.1601546876064;
        Thu, 01 Oct 2020 03:07:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601546876; cv=none;
        d=google.com; s=arc-20160816;
        b=w3LTPuw6vhElf8HAh3ejDiUH6B3AOGxf+xBfRsWyB/KQuu/1NJ2u+e9KcDprr9Nd1p
         wm17xhmwp3temvUEjVrsyZ3vD8aPFsu8Oec4w/M12OTE1mAHtL/9tFCYD65Yuu/xFYmC
         a6qSf03ivvWq0yhsfgQSosSNP0f3ixFX8oxYKoNCEVpTb8Ks+dO/v3qD/P5ku2M0ueZs
         tsCzz4evZcJCApYN+l1U9o2gCbH4LlXtgrjUoCwO0JERSkMnMvPyuD7DTzBF7KkYi6+1
         j3WqmsW+LJgziadN6gdd9nucmGQoNiw5G/CjN7r8rfo3Z57egs9rHsfcR5yKikmC1CTL
         5xcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NUXTaxsY7NaXachlgBjQGlyIz9BkJJJNfphdb55Lwns=;
        b=Em/sL1SULGXMdAjASatZ3bm2wnF+bq5uHBzo4LkS4rtZkremOOABrmvWUI2dXKKT/c
         U+mc32M7wYU0/BZVXBhMsuogXHht+84CcFtvBwlOaYLgsrGs2Nsx64EjkXUY/xIMUl1U
         /mYlKeKb9l1aUWVLmNPGSNGHzdberBv4lE6Yt7F6KiG7NNvAciLuyDkelH8AxLbBuHU1
         FkHuurCXDdZ/Z1FxRol9brLyZAhltrFoKi1y/0G3yhpYrc5ruNIiZI72OsXejmJVkQDk
         9yP3t4FZCzxhAohODcaEx4WonCOZR9yvpZ6PsGnr0Kc8XcwXJEkVC3bxb7/wxJXAKhz5
         x5tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hWAwHmbv;
       spf=pass (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ascull@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z11si184239wrp.4.2020.10.01.03.07.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 03:07:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id e16so4982099wrm.2
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 03:07:56 -0700 (PDT)
X-Received: by 2002:adf:f750:: with SMTP id z16mr7697659wrp.377.1601546875447;
        Thu, 01 Oct 2020 03:07:55 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:4a0f:cfff:fe4a:6363])
        by smtp.gmail.com with ESMTPSA id p14sm8281917wmc.8.2020.10.01.03.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:07:54 -0700 (PDT)
Date: Thu, 1 Oct 2020 11:07:50 +0100
From: "'Andrew Scull' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: George-Aurelian Popescu <georgepope@google.com>
Cc: maz@kernel.org, catalin.marinas@arm.com, will@kernel.org,
	masahiroy@kernel.org, michal.lkml@markovi.net,
	linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, james.morse@arm.com,
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
	natechancellor@gmail.com, ndesaulniers@google.com,
	dbrazdil@google.com, broonie@kernel.org, maskray@google.com,
	keescook@chromium.org, akpm@linux-foundation.org,
	dvyukov@google.com, elver@google.com, tglx@linutronix.de,
	arnd@arndb.de
Subject: Re: [PATCH 03/14] KVM: arm64: Add support for creating and checking
 a logging buffer inside hyp/nVHE
Message-ID: <20201001100750.GA541087@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-4-georgepope@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200914172750.852684-4-georgepope@google.com>
X-Original-Sender: ascull@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hWAwHmbv;       spf=pass
 (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::441 as
 permitted sender) smtp.mailfrom=ascull@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrew Scull <ascull@google.com>
Reply-To: Andrew Scull <ascull@google.com>
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

On Mon, Sep 14, 2020 at 05:27:39PM +0000, George-Aurelian Popescu wrote:
> From: George Popescu <georgepope@google.com>
> 
> Share a buffer between the kernel and the hyp/nVHE code by using the
> macros from kvm_debug_buffer.h.
> 
> The buffer is composed of a writing index and a statically allocated
> array. The writing index counts how many elements have been written inside
> the buffer and should be set to zero whenever the code goes back to
> EL2 with the clear_kvm_debug_buffer macro.
> 
> To avoid consistency problems the buffer is defined per_cpu and is designed
> to be read-only from the kernel perspective.
> 
> Check if there is any logging data from hyp/nVHE code.
> 
> Every time when the state returns back to the kernel after an hvc call,
> the __kvm_arm_check_debug_buffer macro checks if there is any data inside
> one of the predefined buffers.
> 
> Signed-off-by: George Popescu <georgepope@google.com>
> ---
>  arch/arm64/include/asm/kvm_debug_buffer.h | 34 +++++++++++++++++++++++
>  arch/arm64/include/asm/kvm_host.h         |  6 ++++
>  arch/arm64/kvm/hyp/hyp-entry.S            |  2 +-
>  3 files changed, 41 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/include/asm/kvm_debug_buffer.h
> 
> diff --git a/arch/arm64/include/asm/kvm_debug_buffer.h b/arch/arm64/include/asm/kvm_debug_buffer.h
> new file mode 100644
> index 000000000000..30c9b0b1a7bf
> --- /dev/null
> +++ b/arch/arm64/include/asm/kvm_debug_buffer.h
> @@ -0,0 +1,34 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright 2020 Google LLC
> + * Author: George Popescu <georgepope@google.com>
> + */
> +#ifndef __ASSEMBLY__
> +
> +#include <linux/percpu-defs.h>
> +#include <asm/kvm_asm.h>
> +
> +#ifdef __KVM_NVHE_HYPERVISOR__
> +#define DEFINE_KVM_DEBUG_BUFFER(type_name, buff_name, size)             \
> +	DEFINE_PER_CPU(type_name, buff_name)[(size)];	                \
> +	DEFINE_PER_CPU(unsigned long, buff_name##_wr_ind) = 0
> +
> +#define DECLARE_KVM_DEBUG_BUFFER(type_name, buff_name, size)            \
> +	DECLARE_PER_CPU(type_name, buff_name)[(size)];                  \
> +	DECLARE_PER_CPU(unsigned long, buff_name##_wr_ind)
> +
> +#else
> +
> +#define DECLARE_KVM_DEBUG_BUFFER(type_name, buff_name, size)            \
> +	DECLARE_PER_CPU(type_name, kvm_nvhe_sym(buff_name))[(size)];    \
> +	DECLARE_PER_CPU(unsigned long, kvm_nvhe_sym(buff_name##_wr_ind))
> +#endif //__KVM_NVHE_HYPERVISOR__

nit: comment style, here and below

> +
> +#else
> +
> +.macro clear_kvm_debug_buffer sym tmp1, tmp2, tmp3
> +	mov \tmp1, 0
> +	hyp_str_this_cpu \sym, \tmp1, \tmp2, \tmp3
> +.endm

Can you can use xzr (zero register) directly rather than moving the
constant 0 into a temporary?

	hyp_str_this_cpu \sym, xzr, \tmp1, \tmp2

> +
> +#endif // __ASSEMBLY__
> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
> index 905c2b87e05a..adc8957e9321 100644
> --- a/arch/arm64/include/asm/kvm_host.h
> +++ b/arch/arm64/include/asm/kvm_host.h
> @@ -494,6 +494,10 @@ u64 __kvm_call_hyp(void *hypfn, ...);
>  		__kvm_call_hyp(kvm_ksym_ref_nvhe(f), ##__VA_ARGS__);	\
>  	})
>  
> +#define __kvm_arm_check_debug_buffer()					\
> +{									\
> +}
> +
>  /*
>   * The couple of isb() below are there to guarantee the same behaviour
>   * on VHE as on !VHE, where the eret to EL1 acts as a context
> @@ -506,6 +510,7 @@ u64 __kvm_call_hyp(void *hypfn, ...);
>  			isb();						\
>  		} else {						\
>  			kvm_call_hyp_nvhe(f, ##__VA_ARGS__);		\
> +			__kvm_arm_check_debug_buffer();			\
>  		}							\
>  	} while(0)
>  
> @@ -518,6 +523,7 @@ u64 __kvm_call_hyp(void *hypfn, ...);
>  			isb();						\
>  		} else {						\
>  			ret = kvm_call_hyp_nvhe_ret(f, ##__VA_ARGS__);	\
> +			__kvm_arm_check_debug_buffer();			\

As Will was pointing out earlier, does the checking need to have
preemption disabled in case there is another call into hyp that corrupts
the buffer while it is being checked?

>  		}							\
>  									\
>  		ret;							\
> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
> index 46b4dab933d0..8df0082b9ccf 100644
> --- a/arch/arm64/kvm/hyp/hyp-entry.S
> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> @@ -68,7 +68,7 @@ el1_sync:				// Guest trapped into EL2
>  	cbnz	x1, el1_hvc_guest	// called HVC
>  
>  	/* Here, we're pretty sure the host called HVC. */
> -	ldp	x0, x1, [sp], #16
> +	ldp	x0, x1,	[sp], #16

Is this a whitespace change? Maybe drop from this patch if it isn't
related.

>  
>  	/* Check for a stub HVC call */
>  	cmp	x0, #HVC_STUB_HCALL_NR
> -- 
> 2.28.0.618.gf4bc123cb7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001100750.GA541087%40google.com.
