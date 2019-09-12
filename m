Return-Path: <clang-built-linux+bncBDTI55WH24IRBHHC5DVQKGQERWFIXDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D056B0E46
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 13:50:53 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id 70sf9498302vki.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 04:50:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568289052; cv=pass;
        d=google.com; s=arc-20160816;
        b=nY/bDH+/oawUkyKLPsZq7WMATBjUeXbeXi+zuJwuwTotIw/PCzy31iSZaMLwmj2umr
         CBC1E7+0HFTPFaw83HlCrGH63s0lBRF0QXgIaT1NCOg0H4HBVmwMrObVstS7t0AdQi1U
         R/i5NCxoC10adAjGrV4O6AHXbnbrc0+v7emFmgVfuADUOkS11OSKtfnVa6GXnNBomQ1X
         yW/PbTe9cVh6xUtVids2OHJaQHtVEI2zh93jfEECSPELZ3fZwvy+ZaPNHt3q0MympdVv
         KCLD6YL/erdh4YJw32yLL4U+zCI9pDuVXM35ePbRyG8AeHLEJrSnghztpyuZfUdcN1Li
         QihQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ipvTQRNRMY9twkPEYu2m+Ff2zDfslKjo4gjweXs08yo=;
        b=WhYxDbXiaQblF/YwGm7Koqzne9dajbR57dKhEC1CoPZh3QoQjioYoto0KBKS5ndJ5S
         2xBG1kRvn4J3kKCYDdE8z/XfMIpno3M+M7DfpWj+VOXjQGjj6RcqMHJPzMgeRuJZzSXM
         KBRaUYp1NIp4UmocJCSc+G00mwUMjNrtLHGiiyUjhS5KJ+jgtcbUEBQusQF6w+JtQhLP
         A7PQ8bC1H9ghuvCsuKxMQnUj4HvSb/O+cM9DxpZ0m+1jOsdKza0UrXngiTvyW6h7R4iu
         6Tg0/puWQSxuaadwU1EBwrw2zVZ6fyK5A84jF46jS+mmlj09Wmau6wDOF6L6wTxS1Mxm
         78zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=yXI1VxsR;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ipvTQRNRMY9twkPEYu2m+Ff2zDfslKjo4gjweXs08yo=;
        b=H3cbXe/ryUS/xnraCN+0C2PIqWALzus5Y5q2/vN3RMDrAyClzbFBHDeGXbqSC8gx1d
         EhyxLy8U6jP6akb++0dAfVz0lW72qpkUD1LJXvKV1fe/9Qfz4cKbtsgzKhG3ALf6ntw5
         FpZJRIsulhyrx/Pd+ax2dLhW+oKaHVCSDgzqscWEFffnVrPmA9zQwJ8qacgcx3GuMg1k
         EEBK3CcootDyhhEjT8US5UbLmf+BeBqE35fHrs4WyDqR9VlAIvIJChlVrnc/Moq0S1q1
         IA2hM8f2XU1x/yBFcpeWOyFWjSpONJnRwIAiEnhGJE1TNchVwO9pMHV/MFDEigNmWAfE
         SDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ipvTQRNRMY9twkPEYu2m+Ff2zDfslKjo4gjweXs08yo=;
        b=d55j2+suZylXbOSkuyNLj6QyPuCyLeGPuXQAZQGmZjw690JDKqCU1V0B/PJl1oqJR0
         ATPxl+1Ga51AMoufn78N2P+JeXrTlwRlkRIFQ69Q4ds39DhGru4cMsC1AjslsaeusPEj
         Pgy3AwXHrQenoMptU4G7EXQlKUBOn6zTSD5KHu3HEMujYeJCvOe4GXJ358iEV/D+cyBr
         tCqIbA16TPj5DL4JBGH5dKlPIt0lxZDCsQUppUVa04ifo1tAzLVushYLGH4kA8UljIwY
         MDyH8IN5ullQtzA3iZc+6C3l9v5PKQD3AgmCHHyyDMjONUtC+Gef1fjnyQvn/ouGnqvp
         L6aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX5dfzZugVWeMN3yDA3l/Kx1MJsUcW90cm0EV/2h5j6ehd3XDV2
	4tpdAxEo7IbcJYGyrhmbo8s=
X-Google-Smtp-Source: APXvYqyam1xrvLez271YArVwu1naO80zvsTIPEK8kMGS4pHEhrZmO7QKZi3y81jhplrVM8V/FvrNdw==
X-Received: by 2002:ab0:7017:: with SMTP id k23mr18941400ual.103.1568289052308;
        Thu, 12 Sep 2019 04:50:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:97c8:: with SMTP id z191ls45674vkd.11.gmail; Thu, 12 Sep
 2019 04:50:51 -0700 (PDT)
X-Received: by 2002:ac5:ce16:: with SMTP id j22mr11145762vki.45.1568289051820;
        Thu, 12 Sep 2019 04:50:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568289051; cv=none;
        d=google.com; s=arc-20160816;
        b=S2mKiTJVUFCvU+9y66quawW5TM1T+QZcc74s9rK/tWUYrKUOw0b4fkv1FeVPQur+WP
         1Xod7Xe8JlAZTM/LYWt2d4UtAMlS63L+h5Rf/KumOtukuyoB75lCLCsjYvCWliO0p7pM
         ofWCEhC1rzqztr3K/tSo7LpsM5weEZwouQAP+2vjxfFsO9eT+ulsoOk8kEEcyjb27NbC
         KXz12Rx2bXzxX3I+3VA5vBK3nO/4jDptZwBiVSv3FZo9s/WX9bqz84vXRMx71Sl6Ns4b
         VWVSEhcukmH9l6w6/AIEKbcz+a45TX+bMZxQwEdf9POcBgMBXOyZRmaHEPJoEcxZ5UCr
         Tj6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=dD91cCsOyIU6CL7hYXVBnV8msJ6UqcWEzTnqgSHYjQE=;
        b=MdqWnMFPvSMLbWdVPqo3so/Sll+xcbaxiuc4To5IP/c2NH1TKH7MMpItsVKy27HVVM
         0ObKjjKj7vWTqOAh0HjhPyu3Yj+YHW9BZfjCQwBPPAgG2XFd3YGYApQWo8QANbUCH8PE
         sGKjWvafqMVYj5zJ8Tjk+UlhOtbDkgm1s2wNJrrzOocL0SWL9C23T5onIeArWY2r0zcz
         ijn0zyvk9EI0O0I6kVNemOUG2GqYxRfn3yA6OIXV1bFE/ektnKIBKS1hbcBB7v8tuJLy
         8OIGz+DFfZ/tClausBlUWnTjrBkHUqB1gsl7NrdiwgKKqyJ1tiEtZgkECQ2u5AFZOd70
         JC/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=yXI1VxsR;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id m25si520066ual.1.2019.09.12.04.50.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Sep 2019 04:50:51 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id x8CBoR5S021935
	for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 20:50:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x8CBoR5S021935
X-Nifty-SrcIP: [209.85.221.180]
Received: by mail-vk1-f180.google.com with SMTP id s72so5077634vkh.5
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 04:50:27 -0700 (PDT)
X-Received: by 2002:a1f:60c2:: with SMTP id u185mr8154771vkb.0.1568289026492;
 Thu, 12 Sep 2019 04:50:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190907025236.31393-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190907025236.31393-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 12 Sep 2019 20:49:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQukxuyshqVausLr5bBgUHQD4TZo6zGa79oYPhpX85xcg@mail.gmail.com>
Message-ID: <CAK7LNAQukxuyshqVausLr5bBgUHQD4TZo6zGa79oYPhpX85xcg@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: allow Clang to find unused static inline
 functions for W=1 build
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=yXI1VxsR;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Sat, Sep 7, 2019 at 11:53 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> GCC and Clang have different policy for -Wunused-function; GCC does not
> warn unused static inline functions at all whereas Clang does if they
> are defined in source files instead of included headers although it has
> been suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
> warning for unused static inline functions").
>
> We often miss to delete unused functions where 'static inline' is used
> in *.c files since there is no tool to detect them. Unused code remains
> until somebody notices. For example, commit 075ddd75680f ("regulator:
> core: remove unused rdev_get_supply()").
>
> Let's remove __maybe_unused from the inline macro to allow Clang to
> start finding unused static inline functions. For now, we do this only
> for W=1 build since it is not a good idea to sprinkle warnings for the
> normal build (e.g. 35 warnings for arch/x86/configs/x86_64_defconfig).
>
> My initial attempt was to add -Wno-unused-function for no W= build
> (https://lore.kernel.org/patchwork/patch/1120594/)
>
> Nathan Chancellor pointed out that would weaken Clang's checks since
> we would no longer get -Wunused-function without W=1. It is true GCC
> would catch unused static non-inline functions, but it would weaken
> Clang as a standalone compiler, at least.
>
> Hence, here is a counter implementation. The current problem is, W=...
> only controls compiler flags, which are globally effective. There is
> no way to address only 'static inline' functions.
>
> This commit defines KBUILD_EXTRA_WARN[123] corresponding to W=[123].
> When KBUILD_EXTRA_WARN1 is defined, __maybe_unused is omitted from
> the 'inline' macro.
>
> The new macro __inline_maybe_unused makes the code a bit uglier, so I
> hope we can remove it entirely after fixing most of the warnings.
>
> If you contribute to code clean-up, please run "make CC=clang W=1"
> and check -Wunused-function warnings. You will find lots of unused
> functions.
>
> Some of them are false-positives because the call-sites are disabled
> by #ifdef. I do not like to abuse the inline keyword for suppressing
> unused-function warnings because it is intended to be a hint for the
> compiler optimization. I prefer #ifdef around the definition, or
> __maybe_unused if #ifdef would make the code too ugly.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Applied to linux-kbuild.

>
> Changes in v2:
>  - Rebase on top of https://patchwork.kernel.org/patch/11124933/
>
>  include/linux/compiler_types.h | 20 ++++++++++++++------
>  scripts/Makefile.extrawarn     |  6 ++++++
>  2 files changed, 20 insertions(+), 6 deletions(-)
>
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 599c27b56c29..b056a40116da 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -130,10 +130,6 @@ struct ftrace_likely_data {
>
>  /*
>   * Force always-inline if the user requests it so via the .config.
> - * GCC does not warn about unused static inline functions for
> - * -Wunused-function.  This turns out to avoid the need for complex #ifdef
> - * directives.  Suppress the warning in clang as well by using "unused"
> - * function attribute, which is redundant but not harmful for gcc.
>   * Prefer gnu_inline, so that extern inline functions do not emit an
>   * externally visible function. This makes extern inline behave as per gnu89
>   * semantics rather than c99. This prevents multiple symbol definition errors
> @@ -144,15 +140,27 @@ struct ftrace_likely_data {
>   */
>  #if !defined(CONFIG_OPTIMIZE_INLINING)
>  #define inline inline __attribute__((__always_inline__)) __gnu_inline \
> -       __maybe_unused notrace
> +       __inline_maybe_unused notrace
>  #else
>  #define inline inline                                    __gnu_inline \
> -       __maybe_unused notrace
> +       __inline_maybe_unused notrace
>  #endif
>
>  #define __inline__ inline
>  #define __inline   inline
>
> +/*
> + * GCC does not warn about unused static inline functions for -Wunused-function.
> + * Suppress the warning in clang as well by using __maybe_unused, but enable it
> + * for W=1 build. This will allow clang to find unused functions. Remove the
> + * __inline_maybe_unused entirely after fixing most of -Wunused-function warnings.
> + */
> +#ifdef KBUILD_EXTRA_WARN1
> +#define __inline_maybe_unused
> +#else
> +#define __inline_maybe_unused __maybe_unused
> +#endif
> +
>  /*
>   * Rather then using noinline to prevent stack consumption, use
>   * noinline_for_stack instead.  For documentation reasons.
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index 53eb7e0c6a5a..ecddf83ac142 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -36,6 +36,8 @@ KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
>  KBUILD_CFLAGS += -Wno-missing-field-initializers
>  KBUILD_CFLAGS += -Wno-sign-compare
>
> +KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1
> +
>  else
>
>  # Some diagnostics enabled by default are noisy.
> @@ -65,6 +67,8 @@ KBUILD_CFLAGS += -Wsign-compare
>  KBUILD_CFLAGS += $(call cc-option, -Wmaybe-uninitialized)
>  KBUILD_CFLAGS += $(call cc-option, -Wunused-macros)
>
> +KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN2
> +
>  endif
>
>  #
> @@ -82,4 +86,6 @@ KBUILD_CFLAGS += -Wredundant-decls
>  KBUILD_CFLAGS += -Wswitch-default
>  KBUILD_CFLAGS += $(call cc-option, -Wpacked-bitfield-compat)
>
> +KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN3
> +
>  endif
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQukxuyshqVausLr5bBgUHQD4TZo6zGa79oYPhpX85xcg%40mail.gmail.com.
