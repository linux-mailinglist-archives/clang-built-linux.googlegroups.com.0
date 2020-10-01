Return-Path: <clang-built-linux+bncBCRKVNO2ZYFRBIHM235QKGQEKDWTO4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C0327FDE1
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 12:57:37 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id j17sf1716526lfm.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 03:57:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601549856; cv=pass;
        d=google.com; s=arc-20160816;
        b=A5gn4i63sB4325aEaEniazfddoAsFtt5588i2MxWySRMlhqyR4k1MWov70GgfDn5f7
         +E7/XnVXLHAvoY0i3kT9/FYVvshro+UXjZ81+YKxfiKF5ujV8snug6wVThBVfUrO1m6Q
         k9S5SFZqncrJXa/0tOpF5zTh6luDg3jWMhr41eLcWXGz85WzsuFgsBS7wxJxR0UzUf9Z
         YaH33DQSOrZ8ViCaKDHnLzgum7m6DS7J19r9gINYxmCMchneshZpOXom8VOn1BDD63vj
         +9bjZcDhwsADjcemZvufId2e4IM5g9fCnhfcPLfWy1LOcnjhwcpkG21NocRnA6aRLvOe
         xP3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=CWWpnEiUSFdbnhuoUwSZ0U9SIdq2WdPupUU6NNjqkww=;
        b=yiHcDn6IW4M7zufhfjEjLBiMvm7bRhTTCqZ9SajOdnl+gYq73G5I189oPAvskHsmOO
         hCiQ8S1jQMb6kOSKRUEdP+ZvwJ5pLlxdFH+JYHwUpUXiIDqWg6xODJ91Nm18tyDWmtjA
         IwkKANQ5Hzq27VroR32qV0ol0Xk2UsGBGXdNtPXJtfrU3LPBO9Prba4eulC7zPXgxbex
         2DOUGj5Ij+19JlXvtDELB5BK9x+j/B41zjOPevTuH6DnvJcR4XJcczLztDzxefony54R
         9tgToIz6Dv7muC6PsOGHMsaOKIioljdH/8MTErdFfabQwEzETyqmzIe0JHS1wfkXjGF0
         aBrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N8ey+Ycu;
       spf=pass (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ascull@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CWWpnEiUSFdbnhuoUwSZ0U9SIdq2WdPupUU6NNjqkww=;
        b=cCVtfruMCp8tNI55AMspxcFRvmYwWfubOxOTbhyMuR0oAGcOaWYXIMof1X7gejTQT/
         WtftGm8waRYCN8PhkS666RhmeIINycM1EQVqZK9RaFN2Z33JVYYyWmrJjrU9n2Op6aWx
         Qiz96TL1l/fpEYXasSt/Lwcc28XmzM57bMYPI20isLb5HS+J2KOC6M7ZLVQBfMO8QjZP
         dXIL1P6RHXg59p0fNQa9JGogqC/fjGiXkKaDTRpnCiQwcxZBoZ1QJxU0NWxsUjaI3axr
         MHb4wZIOw76dJDeygfhDdjy7scMeYLdHAzPowd3VKTRF6CpY4mBOIMrhIcnkPSseupr5
         ABkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CWWpnEiUSFdbnhuoUwSZ0U9SIdq2WdPupUU6NNjqkww=;
        b=AgIwdt62rX/wBdA6iyXMkBJ1a97jeZFf7sn3DYPIZfvlLL2Jx+1b60cw8yQ2PWREn9
         LaEdlQbMiqaLyIgIzlsmipjw+lIL91BMIjrv7HmBl/klThvLncK0Y9mdVd3NEDwXNWKS
         Y2te3qvPMe4z1DZ7dZBqFMZ11CuVmbqOVzUNy0zdK+2n6Cok+8QuXuxlL66Fb7WsilAr
         4wZ/CBlFbNt6oLm8jArWzBox5K2DGTbCfFXS66yBXc5pIajTC4sFYthpRfyv9fCJD+zO
         FeuoYeAjDOiido85rvzUnUCrQn50RHQq9f/hd+rXiJQnw+BJLSgt4MvlT2bqsh2suuPj
         L99Q==
X-Gm-Message-State: AOAM530PeRoBKmhNicPEeBQdwWsz90L4NASevfiit2cuct+6hbP8bqYt
	yoMn8YPx18EiZR+KnBwxFzE=
X-Google-Smtp-Source: ABdhPJxgdrboiv93w6ffiIHLjZID2nKPfsYQWInlRjml1VZBrHQuUTU76EdPRFp0wwDjbRaDvps07Q==
X-Received: by 2002:a05:6512:525:: with SMTP id o5mr2721513lfc.435.1601549856622;
        Thu, 01 Oct 2020 03:57:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:544e:: with SMTP id d14ls791552lfn.2.gmail; Thu, 01 Oct
 2020 03:57:35 -0700 (PDT)
X-Received: by 2002:a19:c608:: with SMTP id w8mr2248689lff.88.1601549855458;
        Thu, 01 Oct 2020 03:57:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601549855; cv=none;
        d=google.com; s=arc-20160816;
        b=BJt3d7i32fi0nwQZNpe1YYlEI2IpF5gZXjSrgAvpyAHyCfvRA9I4w/b9BVqj+al0V9
         YX8UgUBZG9GgpO8rjjLklMl/I0QCwruXUaPvIPiczE8EOYI5auXa6e5OyOH0EFSAnJp8
         /N6dE/6WkDYzRHSaNRfCdzP3MqkxK36Zn+XmB/ottiCVYoaDS+czDH1xX6zLb8rcakTD
         UO3LsPPavcbXY4mtbzD10iwB79Ktwg790WKOOr+iMwB3AcyxaEcQyfRwbBAzYuKMDwf4
         2eGm8UmsC6ijAOIMi0wYvQQLj/L9wu5enkTkdKC+oak5gWEr7g/bW3xlwxNQqCe8K6Kw
         fgWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uIC7dj7oltWe68l04x0L6fWnaqmGQcvXiQBbnnS12XU=;
        b=QppW73xGEuOJOpvCc2k++pQAgaH5RA033A+++R+BIoA7p9MT5PrC/qugLoG0OXcQVm
         41ZuOS2ItK3db35+7n1bZEusylsZrRSPrJjLlRWPqHRRvO1zysRQ7cUCHcW1fHR8zXVz
         iLrwlT+kBjG4eah7uMxpUDVA8B0YsxDJAUrBAklW93NOT4TiMaIxJAwrhzIp14xKiWZ3
         95P1y6e/uu5uoRq2AikWQabbwk3gqVGk7/OkFSy9oXuGNbN0jNhjtbQ/Y9/wvW7bz1yr
         ddOYGqDkBN8Z3cvP4EG02TEMzHUA9x7u/Squx3OTf/G6CdOcU9oDKwuvhXsiHhhm8rBf
         zQAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N8ey+Ycu;
       spf=pass (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ascull@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id t80si110255lff.9.2020.10.01.03.57.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 03:57:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id k18so2531550wmj.5
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 03:57:35 -0700 (PDT)
X-Received: by 2002:a1c:f612:: with SMTP id w18mr7636314wmc.47.1601549854655;
        Thu, 01 Oct 2020 03:57:34 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:4a0f:cfff:fe4a:6363])
        by smtp.gmail.com with ESMTPSA id z13sm8267476wro.97.2020.10.01.03.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:57:33 -0700 (PDT)
Date: Thu, 1 Oct 2020 11:57:29 +0100
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
Subject: Re: [PATCH 07/14] KVM: arm64: Enable UBSAN_BOUNDS for the both the
 kernel and hyp/nVHE
Message-ID: <20201001105729.GA632887@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-8-georgepope@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200914172750.852684-8-georgepope@google.com>
X-Original-Sender: ascull@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N8ey+Ycu;       spf=pass
 (google.com: domain of ascull@google.com designates 2a00:1450:4864:20::341 as
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

On Mon, Sep 14, 2020 at 05:27:43PM +0000, George-Aurelian Popescu wrote:
> From: George Popescu <georgepope@google.com>
> 
> If an out of bounds happens inside the hyp/nVHE code, the
> ubsan_out_of_bounds handler stores the logging data inside the
> kvm_ubsan_buffer. The one responsible for printing is the kernel
> ubsan_out_of_bounds handler. The process of decapsulating the data happens
> in kvm_ubsan_buffer.c.
> 
> The struct kvm_ubsan_info contains three main components:
> -enum type, which is used to identify which handler to call from the
> kernel.
> -struct ubsan_values, which stores the operands involved during the
> undefined behaviours, which can be one, two or zero, depending on what
> undefiend behaviour is reported. As an example for: out_of_bounds there
> is only one operand (the index).
> 
> Accessing a slot with no type should do nothing. Each slot is marked
> with the UBSAN_NONE tag after it's first usage.
> 
> Signed-off-by: George Popescu <georgepope@google.com>
> ---
>  arch/arm64/include/asm/kvm_ubsan.h | 19 ++++++++++++++++++-
>  arch/arm64/kvm/hyp/nvhe/ubsan.c    | 13 ++++++++++++-
>  arch/arm64/kvm/kvm_ubsan_buffer.c  | 13 ++++++++++++-
>  3 files changed, 42 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_ubsan.h b/arch/arm64/include/asm/kvm_ubsan.h
> index af607a796376..575881e0bd5f 100644
> --- a/arch/arm64/include/asm/kvm_ubsan.h
> +++ b/arch/arm64/include/asm/kvm_ubsan.h
> @@ -11,7 +11,24 @@
>  #define UBSAN_MAX_TYPE 6
>  #define KVM_UBSAN_BUFFER_SIZE 1000
>  
> +struct ubsan_values {
> +	void *lval;
> +	void *rval;
> +	char op;
> +};
> +
>  struct kvm_ubsan_info {
> -	int type;
> +	enum {
> +		UBSAN_NONE,
> +		UBSAN_OUT_OF_BOUNDS
> +	} type;
> +	union {
> +		struct out_of_bounds_data out_of_bounds_data;
> +	};
> +	union {
> +		struct ubsan_values u_val;
> +	};
>  };
>  #endif
> +
> +void __ubsan_handle_out_of_bounds(void *_data, void *index);
> diff --git a/arch/arm64/kvm/hyp/nvhe/ubsan.c b/arch/arm64/kvm/hyp/nvhe/ubsan.c
> index a43c9646e1e8..b2d3404f6215 100644
> --- a/arch/arm64/kvm/hyp/nvhe/ubsan.c
> +++ b/arch/arm64/kvm/hyp/nvhe/ubsan.c
> @@ -43,7 +43,18 @@ void __ubsan_handle_type_mismatch(struct type_mismatch_data *data, void *ptr) {}
>  
>  void __ubsan_handle_type_mismatch_v1(void *_data, void *ptr) {}
>  
> -void __ubsan_handle_out_of_bounds(void *_data, void *index) {}
> +void __ubsan_handle_out_of_bounds(void *_data, void *index)
> +{
> +	struct kvm_ubsan_info *slot = NULL;
> +	struct out_of_bounds_data *data = _data;
> +
> +	slot = kvm_ubsan_buffer_next_slot();
> +	if (slot) {
> +		slot->type = UBSAN_OUT_OF_BOUNDS;
> +		slot->out_of_bounds_data = *data;
> +		slot->u_val.lval = index;
> +	}
> +}
>  
>  void __ubsan_handle_shift_out_of_bounds(void *_data, void *lhs, void *rhs) {}
>  
> diff --git a/arch/arm64/kvm/kvm_ubsan_buffer.c b/arch/arm64/kvm/kvm_ubsan_buffer.c
> index 28dcf19b5706..ce796bdd027e 100644
> --- a/arch/arm64/kvm/kvm_ubsan_buffer.c
> +++ b/arch/arm64/kvm/kvm_ubsan_buffer.c
> @@ -16,6 +16,17 @@
>  
>  DECLARE_KVM_DEBUG_BUFFER(struct kvm_ubsan_info, kvm_ubsan_buff, KVM_UBSAN_BUFFER_SIZE);
>  
> +void __kvm_check_ubsan_data(struct kvm_ubsan_info *slot)
> +{
> +	switch (slot->type) {
> +	case UBSAN_NONE:
> +		break;
> +	case UBSAN_OUT_OF_BOUNDS:
> +		__ubsan_handle_out_of_bounds(&slot->out_of_bounds_data,
> +				slot->u_val.lval);
> +		break;
> +	}
> +}
>  
>  void __kvm_check_ubsan_buffer(void)
>  {
> @@ -25,7 +36,7 @@ void __kvm_check_ubsan_buffer(void)
>  
>  	init_kvm_debug_buffer(kvm_ubsan_buff, struct kvm_ubsan_info, slot, write_ind);
>  	for_each_kvm_debug_buffer_slot(slot, write_ind, it) {
> -		/* check ubsan data */
> +		__kvm_check_ubsan_data(slot);
>  		slot->type = 0;

0's called UBSAN_NONE now

>  	}
>  }
> -- 
> 2.28.0.618.gf4bc123cb7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001105729.GA632887%40google.com.
