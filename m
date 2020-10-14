Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCMDT36AKGQEGJ3E64Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id D42EB28E8EC
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 00:54:02 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id b41sf712236qtk.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 15:54:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602716042; cv=pass;
        d=google.com; s=arc-20160816;
        b=q7jF9dq1Z08Y8WpMImvL6mLczweVF5VKNfzF9c6pj8dyuMNtzoHPC2ZgTpxRLz3v+Q
         Uvsjqpw/o7+VnWw9u6TpMbbZwCk9KKoHt6W+P7vkPBvmlb8jVV2X8BAODKQoAuwFFDJA
         TDcX8q+FBFLyFpebzUFKoUr4KDB91k72Fq4psLO4k562HNC1TtbyVC/KluZzes7Kxoeo
         REwm4LGg74aJthztkD9Qz4M5gdHkUBd4+Y9PwC7DEYqSgevFPZES02UPQKOL52Udo1gK
         aljNeh98DMANLsmofoQ8OqUdodqyGRITKOj1JCMCec0bMdmf8HN4vWfpllV7Yh+vYSkY
         DUbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZtTonLp1SRUonYq3WZRunJsQhRVUO2C7cCVlG833Lbs=;
        b=ldkNIBuxrO11Irqw1EBMQh51Y1a3WoOIa+kdIBeDK8SspJeOqprhR8vIvtCAkmYl0S
         6yXLZ1yx3c5wcY3QN1AYEMe3bmOnQAX4VL+HYIK2iXSYW1DV8F/MD+/WKx5f/TD66Msd
         nBLnSNs1Du//TQFPzxZn5SSOI4KyWGg7kQGsVcGhvdSZI8yRtpx0LfdgrUz3iQrQkysA
         H3IgdgayBI91luxQxxtmvQL+iGfv38cxvtf8EcwJ33ciJA/bkZg6OPzn9SLz+DxZwnJx
         cMoe50yFandMSqEahi42YyQdyd46c6Aqv4m2mv/NlMb2Tq0RNJihN/D9boFGu3KBJMb1
         cJzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QpUrFNEH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZtTonLp1SRUonYq3WZRunJsQhRVUO2C7cCVlG833Lbs=;
        b=bxPtF/anCE1swWyGsKWSHEEsyPYwYFBT4DQ71JS/5KZ+U0NE4IOFDYh3AQ0+lHokmC
         VcuZ73BIFUMX9LEvgPppVoZWZg5HCel3RxDT/VmhxSst5nC/9eZjKx1b9Ws5cWY/iZsr
         vI+rGUOBf8m95nRyeFTxz13thILrYQZ+2TOb2mnOLzEihZUpBPgIvyKkY4SO2hYJZZDo
         hyAKTXb6+NnfAhV6pf3bM2x88hQFKIEQgjD28VRbYn0zYQPCVMZEq7mWRa572b1Hx0N2
         tPUaqu/A91VCdKkHnfUcbnr6efsO0/daUrliVZ1374EtmvlteHjDLzPPLZTXwMQjwmVP
         K8lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZtTonLp1SRUonYq3WZRunJsQhRVUO2C7cCVlG833Lbs=;
        b=GvhNy5e1ZAtAUO3iNZzu0N/iDpRzv2nuKBpFTXcGBnEQzgbO3Arpy8dGlvxuMSedL1
         depm2joXSY0pJ7ZXatfENnG3relCgOiiwaKoMY8b0XPDVi1uBv1hvBr7oIHQT5IiPWy7
         5A78vHNJXe+lfMxqJa/NYqIH+0zmKUDd1+ui8+E4BI3eyrcw+XA7xMgfG2ZV58fZZ/to
         j2uOCYuXL9RNNba5A/xOju0/EHdE0QUlnOLTXvIo9zfpolx2TqRoaf3tqCGkhSKADtUN
         LPyhnoqBxAlNAnVPajFKPpRLeFaiAdFBGCy2kKer4z2DP4C0nHzt50Iz+RlbsHA+YBsz
         ghtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DnJQDGzSA/7z3molxB+Nn+Vf/iAwMTWl2pMdcCQfX9+z9Sjrt
	TmnHheeM8K6x+z0MVfpUIkM=
X-Google-Smtp-Source: ABdhPJyFetSJ7yoWHcpRiECfaHfdb4iaPGpQ0qgFm5q6j32N//n2bHnF+IivTItZBV4DYN6CVr1H6Q==
X-Received: by 2002:a0c:b21b:: with SMTP id x27mr1676256qvd.12.1602716041792;
        Wed, 14 Oct 2020 15:54:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:18b:: with SMTP id s11ls318803qtw.11.gmail; Wed, 14
 Oct 2020 15:54:01 -0700 (PDT)
X-Received: by 2002:ac8:33d3:: with SMTP id d19mr1526818qtb.302.1602716041373;
        Wed, 14 Oct 2020 15:54:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602716041; cv=none;
        d=google.com; s=arc-20160816;
        b=U9Fusp6vweTvcvuWKuNYXS/28xmDCCTlfOKYAu+hLHzsWEqNL8mfGl0QeLJ3cesbgi
         pj0Uldf4/VFxpHHoTNC8XiFqVMnJZc5wpHjbhIF76XFNJbjr06+KZuR/H0w/6LuBqjYe
         FTHcuPjMMeNhkEhT5RD11CaGeVWS7Z6rqXXOTOYy0HX8ODGqHH/iVQUIeiRkbvFRoIzD
         GkBaV0ebypTIboRnna8SdpaBcmTYLwcFiS8Yugd5DGNMg0n2mYWqSr/ZPQwfkBMNDJIA
         XPPTxMn5UilqhXl7e0kcYHCqzgw5o2laPhTDnBPEDsm/InaS0UfRrCEUiNd1bI+YNgPv
         DqwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q8SxKFJ37keEA3fcjeZ0MUjIlmAhyy2Ds4RMjo12YH0=;
        b=wgKIF2GDffQ3pt3/jW+UbzHxAfCwcJB766M5LLvdm5ZfwkMgp8rmlDCwINdJsliA83
         CYwp5qDeutR3QlbZszv2xqlsQaL8w5caMYuyFkdoF/BhZwbMxUe+j2n2HF7J3onTqaun
         j4hcsYgOVYh1UU7riYzzt/v6BEzKdo+ZEdt1AdSF3l9P3vdtT8+oEkkYKzVStLik3SdM
         NTqSMzXiQUbZdJzt0Cz9GaIbmMV5C7n0LV0xgyle1+30bBkS8ocQ3z6Nwac1+46qnvk+
         pqS4wQpC6jJToqrS9PCxEvflUrnbQuroNmNjI20PxR41QL5psfut+UyGzolW9YIB99hw
         OfJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QpUrFNEH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id x11si65669qkn.0.2020.10.14.15.54.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 15:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id p3so424438pjd.0
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 15:54:01 -0700 (PDT)
X-Received: by 2002:a17:90a:cb91:: with SMTP id a17mr1300337pju.220.1602716041061;
        Wed, 14 Oct 2020 15:54:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k11sm643943pjs.18.2020.10.14.15.53.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 15:54:00 -0700 (PDT)
Date: Wed, 14 Oct 2020 15:53:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v6 16/25] init: lto: fix PREL32 relocations
Message-ID: <202010141552.9172003F6A@keescook>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-17-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201013003203.4168817-17-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QpUrFNEH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

On Mon, Oct 12, 2020 at 05:31:54PM -0700, Sami Tolvanen wrote:
> With LTO, the compiler can rename static functions to avoid global
> naming collisions. As initcall functions are typically static,
> renaming can break references to them in inline assembly. This
> change adds a global stub with a stable name for each initcall to
> fix the issue when PREL32 relocations are used.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

This is another independent improvement... this could land before the
other portions of the series.

-Kees

> ---
>  include/linux/init.h | 31 +++++++++++++++++++++++++++----
>  1 file changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/include/linux/init.h b/include/linux/init.h
> index af638cd6dd52..cea63f7e7705 100644
> --- a/include/linux/init.h
> +++ b/include/linux/init.h
> @@ -209,26 +209,49 @@ extern bool initcall_debug;
>   */
>  #define __initcall_section(__sec, __iid)			\
>  	#__sec ".init.." #__iid
> +
> +/*
> + * With LTO, the compiler can rename static functions to avoid
> + * global naming collisions. We use a global stub function for
> + * initcalls to create a stable symbol name whose address can be
> + * taken in inline assembly when PREL32 relocations are used.
> + */
> +#define __initcall_stub(fn, __iid, id)				\
> +	__initcall_name(initstub, __iid, id)
> +
> +#define __define_initcall_stub(__stub, fn)			\
> +	int __init __stub(void);				\
> +	int __init __stub(void)					\
> +	{ 							\
> +		return fn();					\
> +	}							\
> +	__ADDRESSABLE(__stub)
>  #else
>  #define __initcall_section(__sec, __iid)			\
>  	#__sec ".init"
> +
> +#define __initcall_stub(fn, __iid, id)	fn
> +
> +#define __define_initcall_stub(__stub, fn)			\
> +	__ADDRESSABLE(fn)
>  #endif
>  
>  #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
> -#define ____define_initcall(fn, __name, __sec)			\
> -	__ADDRESSABLE(fn)					\
> +#define ____define_initcall(fn, __stub, __name, __sec)		\
> +	__define_initcall_stub(__stub, fn)			\
>  	asm(".section	\"" __sec "\", \"a\"		\n"	\
>  	    __stringify(__name) ":			\n"	\
> -	    ".long	" #fn " - .			\n"	\
> +	    ".long	" __stringify(__stub) " - .	\n"	\
>  	    ".previous					\n");
>  #else
> -#define ____define_initcall(fn, __name, __sec)			\
> +#define ____define_initcall(fn, __unused, __name, __sec)	\
>  	static initcall_t __name __used 			\
>  		__attribute__((__section__(__sec))) = fn;
>  #endif
>  
>  #define __unique_initcall(fn, id, __sec, __iid)			\
>  	____define_initcall(fn,					\
> +		__initcall_stub(fn, __iid, id),			\
>  		__initcall_name(initcall, __iid, id),		\
>  		__initcall_section(__sec, __iid))
>  
> -- 
> 2.28.0.1011.ga647a8990f-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010141552.9172003F6A%40keescook.
