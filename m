Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB54OXL3AKGQENRHMJNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id B28461E4753
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 17:30:01 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id y7sf18352681plp.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 08:30:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590593400; cv=pass;
        d=google.com; s=arc-20160816;
        b=VLijm3Q3/S0melH1NRanjZvUxa0nzJG7B9WFGQomhGjJbenHbShxlQ8j9d33Ze56mw
         64YlnyKitnhyiZQykruKYwk/h3mhCQEK5u+bNOYNSlJK+f//tIa2wAH6ItX++9Z+Uh35
         pUrNwjDzCNTbItghUzo+g5/nodnsCgMJ7mVsho7ejCOpSFp0sglKCJSwF4/nQyZNFEya
         J8TcFKUz7HAcd7QQKXJx4TgEz+3KPRPIH9gNmSNPZIvk6YUw+ogR//p7K+dGm3xh+wjX
         a0I8VouJmMZVA9pA973YGzIde18Q+nRqKNTGa7YErzo1muazb1v/q1KZyrfsVOMkNJTl
         Kkaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=0pf02PLvEveAU6il4oeGo600RdyBSbVefTQpxMxxBio=;
        b=fnpg212YzQWowz/zQLKnUp3RrWY4QXHUZDW/NUGboKgEf4b/KXmxrNkMsMDHpP127g
         EpFHblLl5H+2hkOvDyNRPVcoQINSTxl8dXHMOqWk8B1IgyWa1mhGqpwx8eW3FDrgPL3G
         ORsI0340tMcDD1gz8Sm+Z85Av1cugYMGdKsfT0Kw+CThXsj75qQp9O42zbINH93D5m6b
         HZRwHbx8rg21oBB9xAsga1HDL09wJFUreeJj9CoIrvFrKlLH2+L2u29i5iDj4a/SX+cM
         I1yI4D8Czm9EZwRldoadumPTBgeAkQGrcDVQPOXANWHkvZUfQJqjLi2W45JanpjyAPip
         fenQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="C5MB/EUe";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0pf02PLvEveAU6il4oeGo600RdyBSbVefTQpxMxxBio=;
        b=qdhygKT1FrpQDR/wbgkH1YzW3aal0OrAVUG6TGQSpzYud+5rljYIyKQ+pEFDP2tYcX
         gwY1r+rN87L0lX2VCpspFfd4ZmG+soy5psWoza9clxsdX/beP9Xg4lsuOfTAqIhSJrru
         FYhvT1zx+i0PmrU/EEmGmyuWHYxhSyfeFzYDXzcyBpXBTsfLaOCNceHQFlWyDrmLBplF
         n0e9h9pz+8gvzbbjkOA2c7YCn8sCJES8sEE8fp49aWeNrn65ECXQ20Y6mbkNciLK1uCq
         W3AkGfFZ8DhEjxBu9Xijris5IDMrNNrQ9YQjDB+zK2gcipP49PuqXS3YujaE1kd0I4zQ
         N1lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0pf02PLvEveAU6il4oeGo600RdyBSbVefTQpxMxxBio=;
        b=nNu38eG+aBS2CF5YLM2RbekgkTgMTjSu3T+H3FJ/XNyjSZSN8EESm4xZRr5YgjXx7N
         d1/VHQxrNykuSLy4zfTdekEw137JJcuijl9mYHqLW6cEJultc2/sWUOClLQ7dhAKtHqY
         WeNgKPuTopf65OcKLgMDPMXMRcdn2GWgdT8w0d+krllyLDBDbHOGKhnvKK6rN9JD8g6c
         jVStj9NEv8oTBQNI4dj8pGJES+SMW5n2/zj+XYT1e7m4LAk3BfbIZGet5hu6q6/hGk09
         IARVbHHGON+xbhMOroc+IJuiRZzYnzwcTgfmCWuJnGa585VtjTcgjPBqRuEJxuyYL+eY
         1pSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0pf02PLvEveAU6il4oeGo600RdyBSbVefTQpxMxxBio=;
        b=BVDoLCoQLn++PvnNzD5rMptM4xmfuP1Tl9g7c1wE4cW/h4t+V70QihPpo0vbe0YAfB
         ve7KBAeDi0dUp852w/+/pZuGrTzwkyWFEuwTm7wVJ7M7ZTn2KBa/ImclI9tSg4WSICzA
         H2ElTJ1TXC/vxFrdCSDxKC0ND35avhfUonHRgS6eaIz5eu0CSA4P4J4mZlvOhgbZ1RPn
         04f4RwG3bjYTE7g6Zgnt4B/rQcaCTUhjh3LrqPJpgEKbWuPmrrq+yozSCkB0s2UbHPLg
         ha2dVertr6A0P2uJ9pIaHqLZy15UPHEFeP/Wmwdpy0Caznx4T0frbvPD+Ujt3daGmiXT
         r+Qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532M1fqpAhUt/1JUK0X7/ygBuMT57gOaVpRLGU7/DP3wJwQad9IF
	8FUgQ69wnhpd4RG2FM5TWB4=
X-Google-Smtp-Source: ABdhPJzMb2N9xlq4fxx7pEOgoD4Vaa3faHLushTGhUaxivAmCdmEbRHCctIurmj7nNYqG04cbyi/1Q==
X-Received: by 2002:a17:90a:f98c:: with SMTP id cq12mr5576575pjb.39.1590593399615;
        Wed, 27 May 2020 08:29:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a605:: with SMTP id u5ls2996563plq.9.gmail; Wed, 27
 May 2020 08:29:59 -0700 (PDT)
X-Received: by 2002:a17:902:6947:: with SMTP id k7mr6512298plt.258.1590593399207;
        Wed, 27 May 2020 08:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590593399; cv=none;
        d=google.com; s=arc-20160816;
        b=AC7s5Cz9MOpA1Jiw/eDKt2Pt/hSk8eZVzXadTBdMFbfpaVc5JfoK3munvlTByhca6Y
         OYNafTP5h8U4bADeEtwKcYlyBoIcGasAmxY9dHzGKqXe4fGyLK0PtDQd6RRjiBdYJtyP
         rdUP8MIIClDK1Zh9dhheTGMT7NvmDmWEGNE1xDFdintrew7TTvjOGN7jvPyKpjmjghgP
         3f/o8ioEYV+mQA+/pDmFpCdcsh8LJpUj6mvpk9jJeBa3vNdGfpWYLc15epbx47Lk4V4L
         I26t04BujpK+4Mtys0NX/1N2GPZoytpb7WqRAefIqdE9yXqzd+fko1jpDVQN/OInsTBf
         nDbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EP0X4nrq+dBeA9FW2rwRe3EmgkIyPMB88g1VDoRBEaI=;
        b=bOF83juG4d3oRz312cZVDT0l7csyfnlI3ZMpnTe+LJsefilTbRrGKGREYx7DwzF5yO
         HuKkjTzPJ4FDQ+xxqblw5E6rrjmzXHFA35ypcXPDoEliDIfJjuMYTUj8HLJUGg1J1QqH
         LqS/vBxRAhgyHIZdMrFJ+lnRECUx8GScTO9Iqin1oUd45iI61CHWScyWkprm4KJ7+Uet
         RCNp/5TOvwqvrGWn+GZEo02dIn3TLuWeYrV3YSjY3D1TOn2UL81gGrb0lWAKhBlSS+L6
         iPc0Ypz4V4QB12NqSRXC7OLVB95jlGmhJ5LAJimmOUkffgZHfvxR48tXBg1KlhJxu3qf
         U5gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="C5MB/EUe";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t132si368695pfc.6.2020.05.27.08.29.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 08:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id w20so6871405pga.6;
        Wed, 27 May 2020 08:29:59 -0700 (PDT)
X-Received: by 2002:aa7:8c53:: with SMTP id e19mr4487122pfd.264.1590593398712;
        Wed, 27 May 2020 08:29:58 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d2sm2409483pfc.7.2020.05.27.08.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 08:29:58 -0700 (PDT)
Date: Wed, 27 May 2020 08:29:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Marco Elver <elver@google.com>
Cc: will@kernel.org, peterz@infradead.org, bp@alien8.de, tglx@linutronix.de,
	mingo@kernel.org, clang-built-linux@googlegroups.com,
	paulmck@kernel.org, dvyukov@google.com, glider@google.com,
	andreyknvl@google.com, kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
Message-ID: <20200527152955.GA3681123@ubuntu-s3-xlarge-x86>
References: <20200527103236.148700-1-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200527103236.148700-1-elver@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="C5MB/EUe";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, May 27, 2020 at 12:32:36PM +0200, 'Marco Elver' via Clang Built Linux wrote:
> If the compiler supports C11's _Generic, use it to speed up compilation
> times of __unqual_scalar_typeof(). GCC version 4.9 or later and
> all supported versions of Clang support the feature (the oldest
> supported compiler that doesn't support _Generic is GCC 4.8, for which
> we use the slower alternative).
> 
> The non-_Generic variant relies on multiple expansions of
> __pick_integer_type -> __pick_scalar_type -> __builtin_choose_expr,
> which increases pre-processed code size, and can cause compile times to
> increase in files with numerous expansions of READ_ONCE(), or other
> users of __unqual_scalar_typeof().
> 
> Summary of compile-time benchmarking done by Arnd Bergmann [1]:
> 
> 	<baseline normalized time>  clang-11   gcc-9
> 	this patch                      0.78    0.91
> 	ideal                           0.76    0.86
> 
> [1] https://lkml.kernel.org/r/CAK8P3a3UYQeXhiufUevz=rwe09WM_vSTCd9W+KvJHJcOeQyWVA@mail.gmail.com
> 
> Further compile-testing done with:
> 	gcc 4.8, 4.9, 5.5, 6.4, 7.5, 8.4;
> 	clang 9, 10.
> 
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Marco Elver <elver@google.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: Ingo Molnar <mingo@kernel.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Paul E. McKenney <paulmck@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Will Deacon <will@kernel.org>
> Link: https://lkml.kernel.org/r/CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com
> ---
> Same version as in:
> https://lkml.kernel.org/r/20200526173312.GA30240@google.com
> ---
>  include/linux/compiler_types.h | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
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
> -- 
> 2.27.0.rc0.183.gde8f92d652-goog
> 

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527152955.GA3681123%40ubuntu-s3-xlarge-x86.
