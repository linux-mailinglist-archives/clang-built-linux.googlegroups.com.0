Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVOHYSDAMGQE6S4LW6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDA63AF9AD
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:42:14 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id e14-20020a0568301f2eb0290405cba3beedsf10131772oth.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 16:42:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624318933; cv=pass;
        d=google.com; s=arc-20160816;
        b=fijtSUplRMaRaL3vq8yYUcQqbDuARbMBaoc7dob6md/ttplbrGY/wR8BPQHEfDS1jW
         EyBCZmj1lI3c92SjSvis55CBRjbqvzUaRLyqhgn65coQz28c3OxeE1bNVYL69F9EMoIf
         tDdvVh3wL8fpVip3k/BSvU/NYzCrETNJqMyxKJUM89QYVGLwGDKeeMKcuqAWghvhT9JN
         Lniv76q0z+0D6AdTH7r0zFW8W8UyCti/yM+Vuvfmlhb5buwv1NrVhktFmT8yIJhCQG9R
         m7u+Zsqd/tDV02INraKOXfUBAWT+Vgc6Vuu2NME+IYhriwHQSF2La5MdAdaD+11ilsBW
         +hfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=goPtxG+A/JFOYnzCATPO2CNXDPhwji56JGgogdu3vpc=;
        b=BcjJF9Bs/DjD0WXjNF8xNndUey8Jposrh5AKiCukeQWg2l8FDFs+VaOi31IL6C66dr
         6X1ONxsiEzrqaDPzaXExRc6uZapfvOgdUCeVq/CW+iuw4K/OUXi4Vr1HhoOdfy7vGKtr
         THOLH9IX90bvFASD41Gsom1iCNc1z/nwG30pf+rOKm5HkCYRdBqDM8+ovBMA/r563ono
         XoBu/whygh8aAOelmUuvfyFiSzHnhCsJJjl1Mqagf/PxGIPLIirrOjxg+Pz2YDzJSNqk
         GzuVkZ8FRbEs37sw6+tmQaMCzGiu/XZLRItpdTD1vCdMssSxdGiqH+tr2lH0eW+puMRu
         UsHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="e/XBiSb7";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=goPtxG+A/JFOYnzCATPO2CNXDPhwji56JGgogdu3vpc=;
        b=YHMtucpYi/u0VvYFfxDFyJSYCu2uZ/gnL3K2t+aWyfuGSxtwgRsvU9KUyP5mEMNqSH
         AeFbiRFckVfZ1wwSOprmkSH4ENCRJAitosjEHUsmbjs/9laedmh+59FM/s7l40og6tWD
         FrnbIXfF3DTaID+vWfhsjzTLupFDwm1jzlJs+LdMl4kfh/SDP+ZBnLmw5ZJLZRV82wXy
         p7owXiMvV+znaK2IEv+L6pJV+vyF6CBXQOHTIA7E8Vr5W9DhrI1Xi3s1wyn9llT2iqkK
         YQ2qvP3OC9Zy3T0fJl7U1XaY/gbT2yDq5E+gac6PYnaoXW1BWZEc7aLbH8ojpRMLpF+h
         CkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=goPtxG+A/JFOYnzCATPO2CNXDPhwji56JGgogdu3vpc=;
        b=BPAjF9sa+gxa5dkNZIw8Lbzbab2aX5dnxfEaeiX5u/DuOtXVtN9QaJX0H0zy+Ysk29
         PvXOwv5ZDunUf1jUA/Mwv+iTbaJzrOInPjyWieZR7pl0SLDV4+GYCthFxoIBLA0jgW1M
         OK+2zTLC+kxa/aqJLKT92q7+XDbKyV5+oR41PIdBPEVjNXPXDffMq5ekCxMDwoQqpYvN
         rJ8ZJ/8xoKM6SBWCVdDVKXrOpdcW+w0ayly+04WffsbknceUp697dMjrsEuOO3snb/76
         8eKnomHU6FOdg59GbM60cRt2kiv2YYdmsnB3+xLvQfwvXRJGuhAD3s26XfUagRaAD341
         aETA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OuKSTsvRQ30GXg3EAovz5Tnl0lFkEchI0hY05ytobHuK8p/1s
	5Yc56Ao8o6ctlqhuFEn/1/o=
X-Google-Smtp-Source: ABdhPJwBDcgyfMSdsEdIE4OWaSQcP7AgOYWEM2E2ktSuR4FsiasyxBOF8e9xop/rGIGtttHxpiyaQg==
X-Received: by 2002:a9d:554a:: with SMTP id h10mr521403oti.177.1624318933467;
        Mon, 21 Jun 2021 16:42:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d11:: with SMTP id v17ls7343256otn.3.gmail; Mon, 21 Jun
 2021 16:42:13 -0700 (PDT)
X-Received: by 2002:a9d:892:: with SMTP id 18mr472728otf.265.1624318933142;
        Mon, 21 Jun 2021 16:42:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624318933; cv=none;
        d=google.com; s=arc-20160816;
        b=QCssXQjgq+YEXxIfpzUC4SEd4nhr5RenC70Dn9dsudrMxwKCwWHRHbbk5l/HtDo3GR
         0R7zURMOom8czGQHJzeyHvS3fAsAhDL7nspINRywoFNYTrUEwBFy3Y6EQoBeT4a+VRNE
         7xFVQfRpZweyipzTzMRSc1aYNUf4dhW7jWy4wHZ40MzZMZamQko08P+hHLl4upqdPKP+
         s/2KyNnUEf5HqotjrTKdSpqfAzDl/HFyyZQYkayAILIGQK1/78/WdlHgShs5eMk9DRgc
         cRownLtPqP/UJOdzDokmt1dDVn1oUZWota6DwE/Gtvtz7/YJQPOg3kt7yhkq9OHyt1Uj
         OgJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=uvx/GfAJwNsjuZxyem8Ohxj3lS1zP4+9JG8Rd4G4B/Q=;
        b=a1kl/yqzwS5O+Lyml29J3LEBAF2Ws8sPxD7qbeMET2+3TaVSu8sPkZrDEPxb065RUd
         8JYYyyFGyngfKLuMCWHcTpe+1JrW8KcubChSUiU4j4WbhldMRurWG5Y+9bsTfI9JhDMR
         56CKde1zaEztTr5wP9i4bt5D2tnjbdJlIW5RLZoTnEC4z9Gy1E8k4x7ScuJtpYmDsXXP
         ABDhB187WTKKRi0yyl9Jrn6i/Tr8uSFRSTOfPyN3e2baJyW04sJbPMJY0LoxbFXvEWks
         ams7OQvzGxMcDQCclKGhoyK5FY2TdcNrIxVt3nF7RPm2eDVqy4aMtOk+cF3t8fKSh4Au
         Ycgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="e/XBiSb7";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m4si38234otn.3.2021.06.21.16.42.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 16:42:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EB77E611BD;
	Mon, 21 Jun 2021 23:42:09 +0000 (UTC)
Subject: Re: [PATCH v2 2/3] compiler_attributes.h: cleanups for GCC 4.9+
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
 <20210621231822.2848305-3-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <b8a97953-762f-e707-c1ba-4ea25e9ad259@kernel.org>
Date: Mon, 21 Jun 2021 16:42:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210621231822.2848305-3-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="e/XBiSb7";       spf=pass
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
> Since
> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
> we no longer support building the kernel with GCC 4.8; drop the
> preprocess checks for __GNUC_MINOR__ version. It's implied that if
> __GNUC_MAJOR__ is 4, then the only supported version of __GNUC_MINOR__
> left is 9.
> 
> Cc: Miguel Ojeda <ojeda@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   include/linux/compiler_attributes.h | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> index 225511b17223..84b1c970acb3 100644
> --- a/include/linux/compiler_attributes.h
> +++ b/include/linux/compiler_attributes.h
> @@ -27,7 +27,7 @@
>    */
>   #ifndef __has_attribute
>   # define __has_attribute(x) __GCC4_has_attribute_##x
> -# define __GCC4_has_attribute___assume_aligned__      (__GNUC_MINOR__ >= 9)
> +# define __GCC4_has_attribute___assume_aligned__      1
>   # define __GCC4_has_attribute___copy__                0
>   # define __GCC4_has_attribute___designated_init__     0
>   # define __GCC4_has_attribute___externally_visible__  1
> @@ -35,8 +35,8 @@
>   # define __GCC4_has_attribute___noclone__             1
>   # define __GCC4_has_attribute___no_profile_instrument_function__ 0
>   # define __GCC4_has_attribute___nonstring__           0
> -# define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
> -# define __GCC4_has_attribute___no_sanitize_undefined__ (__GNUC_MINOR__ >= 9)
> +# define __GCC4_has_attribute___no_sanitize_address__ 1
> +# define __GCC4_has_attribute___no_sanitize_undefined__ 1
>   # define __GCC4_has_attribute___fallthrough__         0
>   #endif
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b8a97953-762f-e707-c1ba-4ea25e9ad259%40kernel.org.
