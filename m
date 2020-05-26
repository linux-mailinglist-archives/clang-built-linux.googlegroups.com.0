Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBTMXW33AKGQETIOTQPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA2B1E3143
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 23:36:14 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id j186sf8529413vkc.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:36:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590528973; cv=pass;
        d=google.com; s=arc-20160816;
        b=yA7Kteg4pOHwiDbriJ19ywoPw9tXrhThxHxEHSjvW5GHzG8nPYo7yGdnKbOmWzKqyX
         nBqfl2My/CUPJs81x7Dacul0ZEPunCjhDwXrIEk9l2s9LV0IjGnk1/mWWD4njLozNfrg
         rnCz+4BIBP1Ic4He7kxSKRSVNE82dK4TECDJ5gRPv9DMAqhF0HoLWL7JZbJIsNw8X4pp
         Uw7GQgDcfhpaRfHhCo8zPCARshWXrg1B/Y4LPBfpna3qyJ5CliG/OMu6np8WNyYEwGCb
         5VzNrKf46ZLp9BoLfw0ERJ/71191BQvSGAKhANzxEzfd9B/FRzM/Xk5vH5/ZMxsCxHDF
         hjsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ma7GPL5RetXwi2jnHeNFbckZITH6zQWSm0bzHCRXoWM=;
        b=IWL15Q+6LWvd00ONk1cKEQpTtYC810Vn6k9qFlzO0JLWU9TCqWawvPhQdRAzEzftk5
         bwlDxW9/yG3yliI5I3/vF2CNW7w50ZurVGuk3Fcld7i+0tjHp3rUTrhnWR22JooO/plN
         XSYh4WuyU4mC1fdYYuMsWgRBnC04loC3Tld5OiHHZ4DtzhVmy2DfK1EpXBR7abeARtDH
         opzGy2slFXsye5yFmhAHitH6CBBnI930vs2ln0SjBkzgTxhi2lw6CjoZIjiCqvDRkuq1
         g4HjlgQW1JvSzdxQi1XFiEv1PEfyWkvIvOYlfYt0UvMwKSV8l7YadTHGpPVK/FHNR8ee
         VFOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=iuLiKeXA;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ma7GPL5RetXwi2jnHeNFbckZITH6zQWSm0bzHCRXoWM=;
        b=dQu6fFgjd2lULnbfk3RHgqIibw7kmHd97bSbaoGtAnYH5hSTGlqrImc6f11wBHS+jO
         HR5Ol+nGxHL8vUP/hmi6ylCVK95zEUX/3oFFg0VPBbL3WWwrta8XGiRGnjoHdtcAipCI
         81ecrfaq/+HJ0/10gxt5UmCbXBk6hypLhFRSE2mBtUlYQ2qqPFL/8B1WmHlXa7DWOD00
         x62uiSH+G7gOI2jk/n5HPIUu7T1keCphokRbQ1GOWoY3NOO2qamwkabs6MncGm/3vBLe
         4CMGuYKogVGfOV7M+uc3dfsH9GL2wM9tJQ8sbiZZvMbQHmaci2w4C05LhSutm/lTgcns
         ostw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ma7GPL5RetXwi2jnHeNFbckZITH6zQWSm0bzHCRXoWM=;
        b=SRe1UBOwO3pJGHDhh6YyU2k0sXWsoinrKjK9/847X23dX8pYdZ2ZCqyXIE3373C4c1
         qw37WFyeWhwzrkXpgXJweAFrFBLt0r0d2kJu7rMJY6ErrEpfguzfBLzXfSo0JHlZWmCu
         Bozi5SVtCSp1yTKpQrSBPl8SxvyA0haRZdPj2Uy0sE2/Ip8lkM/00cWRj3UKnrHcDh91
         S64jSOYxKtpovNPqJTSioyleyy1tSNneetKToz3ne7lolj8xJrEA1g3oN/ut3WgeHQE+
         oKDhk7YtrsJk23IBrXCqzUSDo8MTa3tUnVrWksgBPJyILMAv5D3YM7Hekj0QQrGvzg2u
         Ci2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+C/0qFM4f848MRywkT8HKnIPbwJZXXFxc47PpDki/8xRfk/ni
	4DcnC2UWb+FJ4O7BcMUESdQ=
X-Google-Smtp-Source: ABdhPJwn8F+MP0Aq13Z++BTl2bPy6wGJa+8YN/48t3DmwcZ4GOi3XpFPAJPDkDZ6SMsZ9odfFMqXgg==
X-Received: by 2002:a67:7d47:: with SMTP id y68mr2601100vsc.145.1590528973417;
        Tue, 26 May 2020 14:36:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:138d:: with SMTP id m13ls554873uae.9.gmail; Tue, 26 May
 2020 14:36:13 -0700 (PDT)
X-Received: by 2002:ab0:b13:: with SMTP id b19mr2653968uak.9.1590528972986;
        Tue, 26 May 2020 14:36:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590528972; cv=none;
        d=google.com; s=arc-20160816;
        b=oVuf/ozpwjvHZE84DX2btT/nHOuKPQsryhvohvOiDPKuqydRjizM3d39kDKgo4HsUk
         GUGRxkKhfOTxRldICzjPuQH9X1HGJKhPbfaLcXQSk4vxDaSrx/GJ3LIjmauNP94ASLj6
         JiJUfgYXD3TnX+Ts2DGRlm1m+sIgEh2kRdCP91OZ4VC4IFl34w+Ci0TDgN4zN1zxTXU0
         CIW0jl96m4xrH0Cg6XnCI1CSjMoY3SZLqhaDZFopcsQhUQBq2bq7H35lH5rl+G/pzEbC
         3jzQX3MM6+PIznBhj46SVwKczl/7pwDGgS1p18ezYetz08UaFodps/9kkMCsoRx0NNPZ
         aTSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pPz4T1JqBnfA3eSrgPWLUIAddODK4bFj5VmukAoBfaI=;
        b=kYPuANfmB58uoMXpRwYS3ET8V+BHh91qsZ90oHd6wN6VKkGnbS61xuNMsf8hgiqW3N
         GyXCKP8/QARWq1GIJevM0YqqXI8POY5KF2rzyabM08SMlr8tRt9fjmLjmG2iK/xNx0kV
         9227FJwtEwwMJATEkcKTPjiV8pu1gbL5fvwIO1vtyxuNKfmegebB6Y0HEBXU9g5P9DpL
         EhpvYYo1yZyGfR+qtDHcj9Fd5AFoY0ObuogofQvlR/gvIxLqh9asL2xGgGnh8L9m+iSI
         f5eLXCOKtAj0Hpw/ChdY3IEdnzIEk8Rf0NYAbyl5t2kG296DLjNI1XK5pVu1dtf1P1Xg
         PYNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=iuLiKeXA;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id j5si137148vkl.3.2020.05.26.14.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 14:36:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdhEx-0005So-Ma; Tue, 26 May 2020 21:36:03 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id BA9B89834AB; Tue, 26 May 2020 23:36:01 +0200 (CEST)
Date: Tue, 26 May 2020 23:36:01 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement
 expression
Message-ID: <20200526213601.GF2483@worktop.programming.kicks-ass.net>
References: <20200521142047.169334-1-elver@google.com>
 <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
 <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
 <20200526120245.GB27166@willie-the-truck>
 <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
 <CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com>
 <20200526173312.GA30240@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200526173312.GA30240@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=iuLiKeXA;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, May 26, 2020 at 07:33:12PM +0200, Marco Elver wrote:
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 5faf68eae204..a529fa263906 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -245,7 +245,9 @@ struct ftrace_likely_data {
>  /*
>   * __unqual_scalar_typeof(x) - Declare an unqualified scalar type, leaving
>   *			       non-scalar types unchanged.
> - *
> + */
> +#if defined(CONFIG_CC_IS_GCC) && CONFIG_GCC_VERSION < 40900
> +/*
>   * We build this out of a couple of helper macros in a vain attempt to
>   * help you keep your lunch down while reading it.
>   */
> @@ -267,6 +269,24 @@ struct ftrace_likely_data {
>  			__pick_integer_type(x, int,				\
>  				__pick_integer_type(x, long,			\
>  					__pick_integer_type(x, long long, x))))))
> +#else
> +/*
> + * If supported, prefer C11 _Generic for better compile-times. As above, 'char'
> + * is not type-compatible with 'signed char', and we define a separate case.
> + */
> +#define __scalar_type_to_expr_cases(type)				\
> +		type: (type)0, unsigned type: (unsigned type)0
> +
> +#define __unqual_scalar_typeof(x) typeof(				\
> +		_Generic((x),						\
> +			 __scalar_type_to_expr_cases(char),		\
> +			 signed char: (signed char)0,			\
> +			 __scalar_type_to_expr_cases(short),		\
> +			 __scalar_type_to_expr_cases(int),		\
> +			 __scalar_type_to_expr_cases(long),		\
> +			 __scalar_type_to_expr_cases(long long),	\
> +			 default: (x)))
> +#endif
>  
>  /* Is this type a native word size -- useful for atomic operations */
>  #define __native_word(t) \
> 

Yeah, this shaves around 5% off of my kernel builds. The _Atomic hack is
every so slightly faster on GCC but apparently doesn't work on clang --
also, it's disguisting :-)

Ack!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526213601.GF2483%40worktop.programming.kicks-ass.net.
