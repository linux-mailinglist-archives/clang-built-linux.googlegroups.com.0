Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2GUTSFQMGQENLFZKRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B7F42C912
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Oct 2021 20:50:17 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id s8-20020ac25c48000000b003faf62e104esf2629856lfp.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Oct 2021 11:50:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634151016; cv=pass;
        d=google.com; s=arc-20160816;
        b=grCNShPnrizuPahMe2om9F3cDi8R/O+kChzk4AxjfM6hxFWO+7yJEnn04pL2l6ot16
         0diEko4WljR+bvzgf0q6c4m/VD2Eh7oxQWsi+x99rp0wPiKfMzE4BOk8oYMsYBIyPvZL
         V2zqIIouItuB6AjGhSSBdqZMy7JEXhzOMOmoLBTU7XFVNsZmwwT6JXC0Cw+0TFbPWij4
         Z3XPAfwFDjlIO6QpbRG5WP1qjHMZqy+9Z7PHXDZf1rStqo8LQa0rvu+deNzxkVcmvH8D
         /JqoUz2Bw6IoSmJSoMWQKAwE181XPrdFbBJg9JLHYrz5t//vImP81v4uHCP38Tc0QlWE
         Y9GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=saNEBQVW5LsH0RqsFZN67TeizW92MR4Rp3lH0yAngnk=;
        b=jdxQ+DZrCo2NSR+CJBR6gqdIm/VlvXmCOyJaiIWyzTMR30J9Gt7RCZX0vQWmYqy/KE
         lTKVdSPz8G1HpSof14dbj5TbMf4hROfCPaMg1lHWjz5SqvUqRFSt/rqkxlF8WQP+3LuI
         bQ9Ql0pXMgKFk18OL8PyLPo49sbd4t95ndgSGdA25iR/Q0W2LM7UXC8M2/7bXWnsPR8K
         0b4wUnyYoO+c7/xOFG1Txuqeo+W1VyUHwj81BxsMylzCeZYm44MdsEX9H3s0k/fHaz2h
         l4Mdw3DChX/uYf5tbm2n1LwEXnT2LGRmjpTCNVNjiTAw8e7AOglEHr8A2N7+xJr+FGf7
         abRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=kDywsRyu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=saNEBQVW5LsH0RqsFZN67TeizW92MR4Rp3lH0yAngnk=;
        b=dcNfQrJZWYBcC8aft3sA5UPb6UnQfYbORnjWAQXuRKw3W/urbEAyOeyjN4o7OYXbWJ
         Q4v4B3R5t0ld3ErcMfRugtkb9XSay0CZ3g5l7MB7R6acCojG/9g5lUzNan09yTNIm15w
         c0PaPRvtdVGQvh4lrJqQwnVQdoiEHr9kyiFqRIAPtk3MWwKwooN7LCq2YZKO8ute4vKe
         ADh3ifoON67erQ1sIvY2jN/+46LVF5fUcWCC9OKuvucHWdKRGZbiMNMkmxb5vkGvdVtl
         H508j39YtUQ0D9xyL9iHtbMg83yNotm5Dh4Etuk+fQB/zw+UpZ9Gy3EqIWIWjO0CO/qH
         V1RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=saNEBQVW5LsH0RqsFZN67TeizW92MR4Rp3lH0yAngnk=;
        b=r8my7FtQC7nJiguL2sMP8MyQy2TAMwfsyEXMpMX0iBO3uOHvrp99/+0xzHQW5d+C+Q
         bIwPyCGuaFMCytTVGMoHqR6DKm+POiVc40OgmN2fwMb+3tiJAJYBXE1g27OH3DrpqULq
         mMZSMB9NIcjLlMjC8gDqXo8L9jM32KDfW8Iga53rJ9R/aBYLy8yYbRFRs0N+egDNJABJ
         qWcID2fCED9HKSBKDwAHR+W9yIGaW/GahznDCxkXxoaYi9E1/Xuyvw8XyQyYHwyiRtf4
         iAIw3h5E68ZVjbZvhl2C+0nbr/uLkab6gbt5AH0Oqz/ntNtWyqjuHUJIEj4gkVa8rcON
         juRA==
X-Gm-Message-State: AOAM530UNCCFsQKwnMf16TjhvsAeo42PhBAuQi24NsP7La18EkoyNwvS
	kNX9RAs0HJ1G4SZF8oMtIgg=
X-Google-Smtp-Source: ABdhPJxS9PEhPqY+w4u1m6JiRHnjsq9e1oWwiSZwTLk+vdax2j37xvA7JhbWQTbb9mFz/NSF5XhNuQ==
X-Received: by 2002:a2e:4a0a:: with SMTP id x10mr1143111lja.146.1634151016627;
        Wed, 13 Oct 2021 11:50:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc16:: with SMTP id b22ls620920ljf.1.gmail; Wed, 13 Oct
 2021 11:50:15 -0700 (PDT)
X-Received: by 2002:a2e:aa8b:: with SMTP id bj11mr1118947ljb.180.1634151015675;
        Wed, 13 Oct 2021 11:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634151015; cv=none;
        d=google.com; s=arc-20160816;
        b=BLJymAWcoj8nk7mjnMxMBZa76EXS0jN6en/oipkl29PHV6wxRJjfTXWoUCcGpv3s5y
         6bOisvzvlkpL6S2eoUUaEUVZduaFH7ZhknMO4We3IZzh5W/Fwi9jQU0DNw8X9jYOpNlU
         1CqPS1slAbo2AbK1wUFbvD6+xw5+uSZ65t3WuYadGZJSXpXyrcezxE/l/zSL5OM2a/ca
         v9eICV3OsEeFzu7xPrpL8nlogLg2ROjzVIhzMoUZ/wqS787T5hfT9Jg5mH10odyM90Qh
         QyXS6ChGX3tSzVcFPGJrMGVeQH+rNuOoexJPnfI6MMXe9GBksaMveByD0kJGpJGUwoTf
         qZmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b8/P8tB/Z2lB3uczx8fuNs4yrMjdgai73jQwqgSmb8k=;
        b=UvyS20h9+BkvHdjDZr6HA41rVDxFs7mstu+vDXgEZrbHqY5mJbCYvAyKLhhZ9crdIv
         GAvRR+uXVVFPTjGK1Pa2JWO1KU6ktjNuDSUtm8GNTZfYKvbxXr/X41kgzGi69N/f3mSv
         Qz5OFBPfple5P78Dv3Lz1Xaka53UsWYpN+JpvcA8vZVbSJ6S2UMwBkTzrSRss/+LofVg
         oP3BAqQMl/AuHAwfysm4ktiYSFV9i3Tsby/u+aA2dvvzIYCRHqg6EWOWSPDCSlgFNdJp
         Ax4S14JhQ+h+mu4/ZpN9hqJgwcIpOBURp9wodAvq6nVGab+f3fo5xdKbltF6qTAuhRmm
         w9Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=kDywsRyu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id b24si28725ljk.5.2021.10.13.11.50.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Oct 2021 11:50:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id z11so15222424lfj.4
        for <clang-built-linux@googlegroups.com>; Wed, 13 Oct 2021 11:50:15 -0700 (PDT)
X-Received: by 2002:a05:6512:4c7:: with SMTP id w7mr700247lfq.444.1634151015014;
 Wed, 13 Oct 2021 11:50:15 -0700 (PDT)
MIME-Version: 1.0
References: <1634148189-29393-1-git-send-email-ashimida@linux.alibaba.com>
In-Reply-To: <1634148189-29393-1-git-send-email-ashimida@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Oct 2021 11:50:03 -0700
Message-ID: <CAKwvOd=qxHU41HFEWLAz6DOvSMPdW863E9SKVe0PFK0ePDvizQ@mail.gmail.com>
Subject: Re: [PATCH] [PATCH V3]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Dan Li <ashimida@linux.alibaba.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, catalin.marinas@arm.com, 
	will@kernel.org, keescook@chromium.org, nathan@kernel.org, tglx@linutronix.de, 
	akpm@linux-foundation.org, samitolvanen@google.com, frederic@kernel.org, 
	rppt@kernel.org, mark.rutland@arm.com, yifeifz2@illinois.edu, 
	rostedt@goodmis.org, viresh.kumar@linaro.org, andreyknvl@gmail.com, 
	colin.king@canonical.com, ojeda@kernel.org, luc.vanoostenryck@gmail.com, 
	elver@google.com, nivedita@alum.mit.edu, ardb@kernel.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=kDywsRyu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Oct 13, 2021 at 11:03 AM Dan Li <ashimida@linux.alibaba.com> wrote:
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 62c3c1d..da2da8c 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -81,7 +81,7 @@ config ARM64
>         select ARCH_SUPPORTS_DEBUG_PAGEALLOC
>         select ARCH_SUPPORTS_HUGETLBFS
>         select ARCH_SUPPORTS_MEMORY_FAILURE
> -       select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> +       select ARCH_SUPPORTS_SHADOW_CALL_STACK if (CC_HAVE_SHADOW_CALL_STACK || GCC_PLUGIN_SHADOW_CALL_STACK)
>         select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
>         select ARCH_SUPPORTS_LTO_CLANG_THIN
>         select ARCH_SUPPORTS_CFI_CLANG
> @@ -1062,7 +1062,7 @@ config ARCH_HAS_FILTER_PGPROT
>
>  # Supported by clang >= 7.0
>  config CC_HAVE_SHADOW_CALL_STACK
> -       def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> +       def_bool (CC_IS_CLANG && $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18))

I guess since clang supported SCS since clang-7, but the minimally
supported version of clang according to
Documentation/process/changes.rst is 10.0.1, then this could be:

def_boot CC_IS_CLANG || $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)

Then we won't have to touch it again once SCS lands in upstream GCC,
as the cc-option test will start to pass?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DqxHU41HFEWLAz6DOvSMPdW863E9SKVe0PFK0ePDvizQ%40mail.gmail.com.
