Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUXYTKEQMGQELR3PYYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 224DD3F7DFE
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:55:31 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id w22-20020a2e9596000000b001ba46d9e54csf286048ljh.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:55:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629928530; cv=pass;
        d=google.com; s=arc-20160816;
        b=EziSSFaWPv+DiKXGyrec9CSDs9a9lrPApxzOkebkCNp28nWlWClXMLP5AU04EEnhch
         OettncFU69EOasI6Sq6mz4IBVNmjcGGWl88W0O+t023NGzXviyyM80VCxRaeSFLZVLIR
         BDFxDoB4j7xpSCrHjstM4x2QJ5gWf9FjODlUgxqzWNbaQsi+BVL9wpiLYLeyKAfhjOvX
         7vchGNdQ8CxyhfkxEN8zeJO368RY5TgDRu6Pa/RcNWm6s6a4o9mDBWuTbC+f8fZxRnm/
         AbCNr5j/kiYrO78p+mTrZ8jwiYmnHFIRdRSx1u39biz21icumt7jZUYUE0MhPcTLqulW
         oHYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2jq0hV6jFqojlRLp/0OXk6yP0VX3msTFaeYyT+da8Po=;
        b=0ESRPp2XiAisBNjs406Xl1mIeNy20UMpckrPxI9KBC8MEjOSuJ0ffKImtY0g7s0mP7
         yuMNVLj8BUveQYpXJxN8DnMxkw78hnzyEW/Nh1GKmAG5j+H2tRyL+dTqzd9fOL3x9ASH
         13cHmp2YXWWdUfvaUnxbVyd7ODllcZ6IzMD/FUkmn+epOrVP3+m/6q3a2j7Eo50mF7/a
         yUvE9WW56ippm23+bNbbErwa00QB+pdXgoo1tQ3vom2J64KRXiJ3NNgDEfhYdl2JFGyx
         107GTgHjK4I7s6tORqUhnQsN5CcTH0uT4lDYWO5GKtQtb40dgtby5CfhwXmy+igYSp4n
         JgyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kPYP3C82;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jq0hV6jFqojlRLp/0OXk6yP0VX3msTFaeYyT+da8Po=;
        b=b5s6Ok+lSfEpkFkeB2Dny94xAsc2x4qR7Q6kuUEvKc8H0VRn/douEsmjemgPutByRf
         QbZaSL5LUf6XxRkJnWxmGWDfI4FwrpHyY1q+gLHolqza9Gl8aGGyXCiK00KwXWydDYY8
         IjIWH5r3mBgGgIZZVCkRgwGW5rPAKEdbPodctAaRlooZ4qu8iQ8fLkGK1mupBnH3a02n
         CRWsmaHnGv6E2eLEgmy7Pk+yIoZIV6mx5MJ/Ej7clNouoAnNCROippybPNU+LWFhLYQB
         9hP0YR9ix6c7ibQIbTPTrXJJhW+0Xx4+DnUDEkrY3z+CRrwRvneBO4uZmRC8qzl7QerM
         YuJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2jq0hV6jFqojlRLp/0OXk6yP0VX3msTFaeYyT+da8Po=;
        b=DW6K0oyk+j4IghSD0xMLk8ow43ngu01LWHTGmeHjmbqPp0lseaUDsaCWTbFWjbBWWA
         +DEw4KLYHWr3JQBdmj4EWJbAde8UXXzoIyzWQ3O+ohG8dhZXXP9POdxjr/DVIe/rWRry
         Bz8SB4rE4n/1B4HBY92rLY3FKU/BLrOJ1NdpQoQQq8hAtlWhDNPlhwEKEke6TtEL70lD
         kF7CO0Nq+vgY01AZBf+xs5dZCET78zhp8amJprvDmUqhAEHFVCUw7bW1UvyMu2YM1gZi
         ypUlWe7MilJ4Wf9Ri2wp6pula5688R2S2MFRUhD7ZyKufb3qoo5IPVcwiOTllKJW37g+
         nj6Q==
X-Gm-Message-State: AOAM531gZTManlqQtQMXAl+OmhpMA128R3pNc9AUclGx47+dHVPosnIZ
	VUuKe1zHacqFsOGVvUr4ylM=
X-Google-Smtp-Source: ABdhPJwC7fIK8ITd8zZu7+/aYgkV8NYLHRYpODJjKXqiK4WJuJTvCqM50z6VsOB3ufAC33PqFEoabQ==
X-Received: by 2002:a2e:1556:: with SMTP id 22mr288312ljv.253.1629928530676;
        Wed, 25 Aug 2021 14:55:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d43:: with SMTP id y3ls719635ljj.4.gmail; Wed, 25 Aug
 2021 14:55:29 -0700 (PDT)
X-Received: by 2002:a05:651c:985:: with SMTP id b5mr325443ljq.78.1629928529644;
        Wed, 25 Aug 2021 14:55:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629928529; cv=none;
        d=google.com; s=arc-20160816;
        b=v/ypyu6RXkU5zaLW2s9y3iBCR6/NF2ilbO8XQKak3zFRKrDwrfwBptUJGm54QSejXi
         08UmO3YofT7QVK3CnY9EtOivHWyPdTj8qxwQ5U9EkHkDYdGDqb5nOluxXI7LNQGICvyq
         AQqHVAYMoE56eWd4cmlmVWQc8z/vNemn8HMwE35ALepZFjGN0yr7BIzGE5w8azRjSWNM
         hFU4cVpe/1/MQDSHt+U49+Wrl5tFvxuxHhe+cKyjG+F4qi+VM4B1vm8wfzum2Xc39U4I
         HUr29PSkygDgaueMxN+unm4USAxqmS02OuLiwk15YEk3u4EH1cZkAPjOCD9BP9PkVjIm
         FZbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jxSZH2j2eaq7YbJpNkogw+OvVkZIag0gCuTap1CAdjw=;
        b=nbPA3TKj4+TIp0PvkpempHWsH4ibuKbgPouNzJTzwuDvMn4cFoCc31mBiPJxMdnw3W
         jy6H4NOB5HzSM1Y3GPLCbCpxJ1W0NSS40n4Iz7AwRAHdVjVOxRo8mqF+10rHUb9K8y0Y
         2brWtQonjFV22orxWT8juS3U+AofYnBti4rVGKzGUkCrrgjI6K3zgMZ9Q/MiR6PvWf52
         xlr7elPlrfLPKAMPAb8Aw0JaAPvmG/pg09Jh9cTF/tK8o/7DU/VKTSjAVq45CFv4Z0EN
         WPcJ5OCryHlXrxTCj94fvg/EmIDpfEjfaJ/dtvpE44ESWMr9ADxgDDDS6hVGtWumUgJI
         GuAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kPYP3C82;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id j5si39160ljq.0.2021.08.25.14.55.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:55:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id j12so1166375ljg.10
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 14:55:29 -0700 (PDT)
X-Received: by 2002:a2e:a788:: with SMTP id c8mr321743ljf.116.1629928529265;
 Wed, 25 Aug 2021 14:55:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210822075122.864511-1-keescook@chromium.org> <20210822075122.864511-18-keescook@chromium.org>
In-Reply-To: <20210822075122.864511-18-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 14:55:18 -0700
Message-ID: <CAKwvOdnjaBZiPOD35hxb3SLVpV59mYcDBs=YZBz0KrTisULi9Q@mail.gmail.com>
Subject: Re: [PATCH for-next 17/25] fortify: Fix dropped strcpy() compile-time
 write overflow check
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Daniel Axtens <dja@axtens.net>, 
	Francis Laniel <laniel_francis@privacyrequired.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Daniel Micay <danielmicay@gmail.com>, 
	Bart Van Assche <bvanassche@acm.org>, David Gow <davidgow@google.com>, linux-mm@kvack.org, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kPYP3C82;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Sun, Aug 22, 2021 at 12:57 AM Kees Cook <keescook@chromium.org> wrote:
>
> The implementation for intra-object overflow in str*-family functions
> accidentally dropped compile-time write overflow checking in strcpy(),
> leaving it entirely to run-time. Add back the intended check.
>
> Fixes: 6a39e62abbaf ("lib: string.h: detect intra-object overflow in fortified string functions")
> Cc: Daniel Axtens <dja@axtens.net>
> Cc: Francis Laniel <laniel_francis@privacyrequired.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  include/linux/fortify-string.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
> index 7e67d02764db..68bc5978d916 100644
> --- a/include/linux/fortify-string.h
> +++ b/include/linux/fortify-string.h
> @@ -287,7 +287,10 @@ __FORTIFY_INLINE char *strcpy(char *p, const char *q)
>         if (p_size == (size_t)-1 && q_size == (size_t)-1)
>                 return __underlying_strcpy(p, q);
>         size = strlen(q) + 1;
> -       /* test here to use the more stringent object size */
> +       /* Compile-time check for const size overflow. */
> +       if (__builtin_constant_p(size) && p_size < size)
> +               __write_overflow();
> +       /* Run-time check for dynamic size overflow. */
>         if (p_size < size)
>                 fortify_panic(__func__);
>         memcpy(p, q, size);
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-18-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnjaBZiPOD35hxb3SLVpV59mYcDBs%3DYZBz0KrTisULi9Q%40mail.gmail.com.
