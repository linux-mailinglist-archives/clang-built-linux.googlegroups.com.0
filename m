Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNOHYSDAMGQEQMDFTMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B542F3AF9A8
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:41:42 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id k196-20020a6284cd0000b0290301abd2c063sf3263657pfd.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 16:41:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624318901; cv=pass;
        d=google.com; s=arc-20160816;
        b=pqOldU8rQVq6dfWIoPtFfXAyoqXQb8V30xWMh6kxgHLUc5HpLLXOfqh3rh+ShkoHQH
         8OU9WVORHfbYmTH2eCgq2wIDuORtOyqD6QUTUvTFlz/frD30Xi3ZSnQM+PeU83HFkaZb
         dFlOByNpQs+CA9y12NsfpojKDKlB2Wt8wavHoz6O3dAWaXmMATZygGfH3s99WE5ZQxJv
         ThgB3y6hBoSIZblHIc+soJbkNlh2VJ5CaY9bPrqVAcMcbFhhFhd1PfTo4fRLTBmnX+UX
         DL1b9O2bo2DCum8zVU8mhpJjuaDlzAdpnHxG+4icqtwgqn6aBpigPe1ajI782anV8fFr
         2OzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=rxK5X7EexkTdFNv67JQIBZp8U3rWyGQQfH3mHBh8u9Q=;
        b=qcrbGtO4JK5w4J/TQQqmJQTtImq+EGUhk+e2p3GIXTYLNyTuaY++LgOqh/gRgf82MA
         RATx8s0hgG3HY4MdQBLYiAC3G053qB8kd1trpeX/eXwJv9BisRNoP9xU+aaOJ4k7VSJR
         FLBZuP/k5TcHOQgZNU3AwIBtiBLHMtuKPra2Z94ttRzpbjeg65Xu4bWA/a1axH8N/wZS
         8Nsl3wOCj5f9ZDdyaMInfn/kwoD9+OiBBBIPcFPGdFzYnYz/iabE+3Xpq4aORZ5ImwBd
         NS/kTQZt0MECZguGor0XjeeBDrLGsUI8K85UjYoR11Br8sHHuJUSdHzP1zeBP9387j6N
         MT/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aCin44Ts;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rxK5X7EexkTdFNv67JQIBZp8U3rWyGQQfH3mHBh8u9Q=;
        b=DnI12J3fl6NLZqiog8NKYtThX/SMf96O/uE0jS9W9zw2mbARPe24wDxIZj35CBZRZA
         6I1RGEB4clYTdFK6XyCB/BKpCyl7+Qvg5kTZkqPWLGV/ogXd0ol9+2r4T/b1OVGaGJTL
         utsvEDxkjsmWVDlx0MyWRUfNZhKEw36+lay/JBNlAZzHEF7HAouaxmyexl6EuJNghAMW
         7YRdXnSQDwumuJ0rxau0uvVwff/4IlQb4cpLVicla+GL3RAswhKrSwV3usgpwTRQ/BlS
         PPO8UaHZDFQwxRv133t0CEDvGBxHRqHGrnM8pycGeWfguIJgdKpWT5VnId53pQcAZlPI
         nLfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rxK5X7EexkTdFNv67JQIBZp8U3rWyGQQfH3mHBh8u9Q=;
        b=ni7Hh+0+9Gy7NVO3TK5DnMc9khx6NX6XtH9C0fXCg9BwN3eL7uwva90jIoyz2Sux71
         P8990eUUghbxqhqcVqOOD4Hfch+6sq+VsagVy7LQeoo4phnbvk21w3LHoNtjlA2+I746
         8QX6OUhWDOE1RHiyab4DMYNYWrIJeGKGyEyK8hzDD4uOuw/p+Wyqa0+lzUElROajI9tS
         gRzs4smGloqjiwV7Z/9hWoKg5IE6wFmfe8yT5G/aYL3H5bSPN8aXl216mcj6XNvwswiZ
         g4y+yYWdQUzrW4sMfTDV8BEnndjOrZG7HDkYhMCcAYsZ3aec6weWAStSLwG0aY2aopbe
         T6aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nph5HM60HHxKNoU4AsJ0MeK7LUhv/tjHb7IKaQqTvJ5Z8Zw7l
	XOQlh1yYL6QAmKhjSGigrdM=
X-Google-Smtp-Source: ABdhPJwFg0/vFyfez2RIOHKswK1+p0RuSIW8AofAmlrLt2eITXhg68K9JV8v4Kppbs2sn+OQiSeatw==
X-Received: by 2002:a63:2125:: with SMTP id h37mr882271pgh.205.1624318901347;
        Mon, 21 Jun 2021 16:41:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:501b:: with SMTP id e27ls9036705pgb.2.gmail; Mon, 21 Jun
 2021 16:41:40 -0700 (PDT)
X-Received: by 2002:a63:34a:: with SMTP id 71mr876392pgd.305.1624318900817;
        Mon, 21 Jun 2021 16:41:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624318900; cv=none;
        d=google.com; s=arc-20160816;
        b=odxdozr4/PkXfVtqTj7TZGx8K8gZ84H6orV0yBPTaDQA9uJ5PwI5f0nffhT2QM20t3
         KO6XS+jTWIopqfe0pJMmE9wN65nZqS4q7Z5v6r3qF+tZr0CJhHcVeyZy4gS4a2pLGjN/
         tNpfeeKSE92XLTDtKqnsF3GDLMGlhaZOaLrAjEQGs+ocDOEWN12XJjI7lAa/LiZj2OD9
         Izv4lXtGZM4XQUraE/G8XgET11HRjyVPFG4JDRdM/v9vge1O0MRX1Ga0OrOuBAfpAX8C
         CckUsLeta6Hb2Mnw/LHTDlt5Z40qg+YscJTfit1VRjyt7fSE9KmOLZiR3z507qvsTsGk
         q+UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=dPwQR5dyH4TwAmp7OvM5meMMdRFLbpwECWIHk5er6vM=;
        b=cOZDOZNKwZmvd3i2ZSl34RR566SWBVDSlQVyl1d3jSyIyD9f82W7O0r0Sy7cbFRETv
         0OWSSPv7wpBRQa+Vwuugns/4+j8vpNWneQeOZGllN9kWi9ySYpbSTx31NJ8acsfUuSVO
         tanYjkXmgTT9vs8i+cWoIQFii1+Y6h+vB/NcVRtMcn+SjEVbHR3oysKBksZVMezQpc8R
         Pun8hwo5UE2/OnvFEm8zZtmMHgpxRasivbgV7vyZOToj6tQk2WFmBse6bjYoFfeT6Es8
         P4TKo2Yn0YL+uUtr40Z3E+aEKbC+pmIBh5dR454hjKMy0DSAfROngQNVQHNfhDG5WMkT
         Xa4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aCin44Ts;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ob7si18378pjb.1.2021.06.21.16.41.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 16:41:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D72A611BD;
	Mon, 21 Jun 2021 23:41:38 +0000 (UTC)
Subject: Re: [PATCH v2 1/3] compiler_attributes.h: define __no_profile, add to
 noinstr
To: Nick Desaulniers <ndesaulniers@google.com>,
 Kees Cook <keescook@chromium.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org,
 Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>,
 Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Fangrui Song <maskray@google.com>, linux-doc@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>,
 johannes.berg@intel.com, linux-toolchains@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Miguel Ojeda <ojeda@kernel.org>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
 <20210621231822.2848305-2-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <6ca2bf5a-f0c3-b972-2313-f09c39b67e3b@kernel.org>
Date: Mon, 21 Jun 2021 16:41:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210621231822.2848305-2-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aCin44Ts;       spf=pass
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

On 6/21/2021 4:18 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> noinstr implies that we would like the compiler to avoid instrumenting a
> function.  Add support for the compiler attribute
> no_profile_instrument_function to compiler_attributes.h, then add
> __no_profile to the definition of noinstr.
> 
> Link: https://lore.kernel.org/lkml/20210614162018.GD68749@worktop.programming.kicks-ass.net/
> Link: https://reviews.llvm.org/D104257
> Link: https://reviews.llvm.org/D104475
> Link: https://reviews.llvm.org/D104658
> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223
> Reviewed-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Changes V1 -> V2:
> * s/no_profile/no_profile_instrument_function/
> * fix trailing double underscore on GCC 4 define, as per Fangrui+Miguel.
> * Pick up Fangrui + Miguel's reviewed-by tag.
> * Add link to GCC's doc.
> * Fix clang's doc format; will appear once clang-13 is released.
> 
>   include/linux/compiler_attributes.h | 13 +++++++++++++
>   include/linux/compiler_types.h      |  2 +-
>   2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> index c043b8d2b17b..225511b17223 100644
> --- a/include/linux/compiler_attributes.h
> +++ b/include/linux/compiler_attributes.h
> @@ -33,6 +33,7 @@
>   # define __GCC4_has_attribute___externally_visible__  1
>   # define __GCC4_has_attribute___no_caller_saved_registers__ 0
>   # define __GCC4_has_attribute___noclone__             1
> +# define __GCC4_has_attribute___no_profile_instrument_function__ 0
>   # define __GCC4_has_attribute___nonstring__           0
>   # define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
>   # define __GCC4_has_attribute___no_sanitize_undefined__ (__GNUC_MINOR__ >= 9)
> @@ -237,6 +238,18 @@
>   # define __nonstring
>   #endif
>   
> +/*
> + * Optional: only supported since GCC >= 7.1, clang >= 13.0.
> + *
> + *      gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-no_005fprofile_005finstrument_005ffunction-function-attribute
> + *    clang: https://clang.llvm.org/docs/AttributeReference.html#no-profile-instrument-function
> + */
> +#if __has_attribute(__no_profile_instrument_function__)
> +# define __no_profile                  __attribute__((__no_profile_instrument_function__))
> +#else
> +# define __no_profile
> +#endif
> +
>   /*
>    *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-noreturn-function-attribute
>    * clang: https://clang.llvm.org/docs/AttributeReference.html#noreturn
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index d29bda7f6ebd..d509169860f1 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -210,7 +210,7 @@ struct ftrace_likely_data {
>   /* Section for code which can't be instrumented at all */
>   #define noinstr								\
>   	noinline notrace __attribute((__section__(".noinstr.text")))	\
> -	__no_kcsan __no_sanitize_address
> +	__no_kcsan __no_sanitize_address __no_profile
>   
>   #endif /* __KERNEL__ */
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6ca2bf5a-f0c3-b972-2313-f09c39b67e3b%40kernel.org.
