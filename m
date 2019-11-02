Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZX263WQKGQEIPLYJPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F944ECFFC
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 Nov 2019 18:31:20 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id w20sf8319949plq.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 Nov 2019 10:31:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572715879; cv=pass;
        d=google.com; s=arc-20160816;
        b=v/DTNL4jsyRdshtVoMruvOVpJffz+wb7iNeocKMMF2kDj33jE/ZMDl6dxguIU/WTXK
         dja7TFkWhVafEv/sFOYXmbNB7cI4jfQIlH9Fgy1RelL3WTUlmSYVm45kCcuUYU5vPpnX
         GaXcMPax7prXhJDvYI8DAmPbec1R271NJYhQ8IXtWnlVSTY0OdjMyFBIy3IwF8NJIO+9
         T/UfqhOTNxk3nanBUfxuBPCCujSOuQLFyAsWCAm9HTIRPQ9V0fC56v2gIqbamR4zxXqI
         QPQduKoIQDzH9o0OyDOa1QofhuPfQ9+blUCPh/Qi9AxyNdxt3mZJE5GqINxm21b8ogHj
         mE9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bo8PpgDtvBxh/TLJA1CE0fNfOIFZfiRRCe1HVFivIEY=;
        b=XvdPejd2PFjzsZ10OR6RNtUtO4Wb4K24stx9PoKu4xiEw0JbCFQ/K7lieC+wszhPTH
         2sYdH/tOrDbWIScaOMsuVoLpYxlKM42sSXpGiPHSvcpVQf6mArJVJJMPHhXscdoGfmQ0
         GarShCPrTdN3W8yWXqBif+UvqNVPgpk9uQqtrmKxnb0tifKyftlUDpdOy3fKIF3LobnK
         38JV81W3P15G59nXFxA/cVngzufhCgLZQ5qJYozwDzdpSGF13+QCld/WLd14uoAYWHMN
         qB6OdS3zrFvGm5rGF9zvGsBj/NPzqS+Z79DpFaemObgPKN8mTesn5hytUKX5H5SI5P46
         XO9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nZuWTF4B;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bo8PpgDtvBxh/TLJA1CE0fNfOIFZfiRRCe1HVFivIEY=;
        b=S2E3mlnz/wro3KFAJOFpjbpGpz2nnxlDqgNW7fEzqH5Mp/L5mHR5INnfU8xrw3jQv2
         ZJmCn2nvj93qnQzmvz0EsWMOC5bo74RfU25ArXpKRTz6/98G6kUhU5Qr5z21AHAV9Jsi
         wrAnAmK/Kylp/bFHf6Rv2H4ZkZzDLxHpIVEzeFLMb7vdnf1HlRl1/sNpBudpBdxuPbpf
         6mtIlqEp83L/ciE2oLpKveL7s/wStokxf3/8JUYdH25wxIOM3RGaD2BVWl2w4bYaJI4K
         PaNSqhpl4o9/CwbQbGe9wGBdo0P+mYoSegEgtyJni4f4h1UmfNbeFHjUSL1B15HhaODq
         Kzsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bo8PpgDtvBxh/TLJA1CE0fNfOIFZfiRRCe1HVFivIEY=;
        b=ct7Ju7gtOSgJ/D/kpdiPF5Hlocuj1l6IV8K4E6f61qEabOTRUy5JZB7mX5BCg+T26j
         CL/37EarrDEHL+lA3C/QZYAWix3SiJbO9lb5grUiCnNBOhYG88YlcOlQUOq35IBwzan+
         Z0p9q5eCFIA8jAzlJPHhKz8/z0VXbGwErgRKnKlHfS5VFLjhjBx0BYHpk2Il5cDWMutM
         XXEsOLDVbIr0ygkId/T2jdHrS/zXliC6Sco88/omjKXBPQFWvI2jGXxDzARZz95lrFIz
         TRJM6EoqngpPzJW0Tw9Ggx/lEccQio07tHWvSnnhozIoW+NDFNUCXQA0tvBRkiMTycwH
         9dDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV48D8ya8i+zFHjda7evMOunexHQIFXgGPqzHGEUnf1yLNcA88R
	QQcG0cNFJ0RI4rZjv4PD1qg=
X-Google-Smtp-Source: APXvYqxHPVjGT1EsJu7QjBBH+1Kx7aMDZJEjtya2qGfransj01O9Jcbn2NahHAOdDLEXbaJuJUAe4w==
X-Received: by 2002:a17:90a:77ca:: with SMTP id e10mr24646557pjs.132.1572715878930;
        Sat, 02 Nov 2019 10:31:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a02:: with SMTP id v2ls2351453plp.15.gmail; Sat, 02
 Nov 2019 10:31:18 -0700 (PDT)
X-Received: by 2002:a17:90a:eac4:: with SMTP id ev4mr24372608pjb.103.1572715878564;
        Sat, 02 Nov 2019 10:31:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572715878; cv=none;
        d=google.com; s=arc-20160816;
        b=NpZwY3Bp+fRM4xzHYhBpO1hcPWYDTIY4I02F1uUfk0STQxfE1xvGnlcWI+/1kXaqfE
         yCCW3btB57VdaSpYLyikLOVIyp7oLTtWVLwuM9KQXVeIixPGISJqiyIQ0ukk/itftS5x
         0/NIBlka3E0Akcqu6yVMFtK4Upyer/kzYogH5rW8g8lHwxupVggFJcmzyabz6zZSo8Dn
         CAQLQ2McyLLr5Zu0WjPazis52IVmMhhEv/sY8TXNjUmc2iA2pC8epDl5YJYzCfkH5agy
         1bqacQwb3wLPVTD9PV4DK0Q7HcSqJYSztphTsUxDaKlauhUUV+WLxMqV3oaiZcHkwQXk
         LgWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=R5U6Kj8zEV9KobA96rVptQNqSLtfG2r+Wn7yLIJ/SjM=;
        b=T1inUvKC/CSPQZT7Ai+p+Kj/fkMDHtNSi8JeLW0eCT08OBNzPDVeWtUoGAGbME/hdf
         3B2qr/BJWnjk6LwhVC64oGeFa6dc7I+uiNhNLBcgM9VmRHH8wfJZ9XqQQojGz/JSFiVF
         9ANfDLrfu/30M4DTrZq0x0qr2o594mrWxJ5wO0aN4pi1VmGdqlTsPZuqekXdgd9I8+ri
         ncyj9+OiPI80Puzf8L4nk6kUf6zhai3orOtus9NLY0DmTs9UmivO+TitJRXZ7GdUHiMY
         NR/a8uRm4QsrhLeZFrMB89wMjIZSoxPiiXEuUVKw8KUgNDR55RVA8YjmUvsgDvwgC4Tk
         dUUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nZuWTF4B;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id z8si167704pju.2.2019.11.02.10.31.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2019 10:31:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id l4so479834plt.13
        for <clang-built-linux@googlegroups.com>; Sat, 02 Nov 2019 10:31:18 -0700 (PDT)
X-Received: by 2002:a17:902:864a:: with SMTP id y10mr18474527plt.162.1572715878210;
        Sat, 02 Nov 2019 10:31:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m13sm9636034pga.70.2019.11.02.10.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2019 10:31:16 -0700 (PDT)
Date: Sat, 2 Nov 2019 10:31:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 07/17] scs: add support for stack usage debugging
Message-ID: <201911021030.88433384D9@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-8-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nZuWTF4B;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Nov 01, 2019 at 03:11:40PM -0700, Sami Tolvanen wrote:
> Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
> also prints out the highest shadow stack usage per process.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks for helping me find this Kconfig. :) :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/kernel/scs.c b/kernel/scs.c
> index 7780fc4e29ac..67c43af627d1 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -167,6 +167,44 @@ int scs_prepare(struct task_struct *tsk, int node)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_DEBUG_STACK_USAGE
> +static inline unsigned long scs_used(struct task_struct *tsk)
> +{
> +	unsigned long *p = __scs_base(tsk);
> +	unsigned long *end = scs_magic(tsk);
> +	uintptr_t s = (uintptr_t)p;
> +
> +	while (p < end && *p)
> +		p++;
> +
> +	return (uintptr_t)p - s;
> +}
> +
> +static void scs_check_usage(struct task_struct *tsk)
> +{
> +	static DEFINE_SPINLOCK(lock);
> +	static unsigned long highest;
> +	unsigned long used = scs_used(tsk);
> +
> +	if (used <= highest)
> +		return;
> +
> +	spin_lock(&lock);
> +
> +	if (used > highest) {
> +		pr_info("%s: highest shadow stack usage %lu bytes\n",
> +			__func__, used);
> +		highest = used;
> +	}
> +
> +	spin_unlock(&lock);
> +}
> +#else
> +static inline void scs_check_usage(struct task_struct *tsk)
> +{
> +}
> +#endif
> +
>  bool scs_corrupted(struct task_struct *tsk)
>  {
>  	return *scs_magic(tsk) != SCS_END_MAGIC;
> @@ -181,6 +219,7 @@ void scs_release(struct task_struct *tsk)
>  		return;
>  
>  	WARN_ON(scs_corrupted(tsk));
> +	scs_check_usage(tsk);
>  
>  	scs_account(tsk, -1);
>  	task_set_scs(tsk, NULL);
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911021030.88433384D9%40keescook.
