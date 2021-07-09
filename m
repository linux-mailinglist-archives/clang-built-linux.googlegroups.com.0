Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBGWLUCDQMGQEKZJWQEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BAF3C2244
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 12:31:55 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id h1-20020a255f410000b02905585436b530sf10856736ybm.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 03:31:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625826714; cv=pass;
        d=google.com; s=arc-20160816;
        b=fTlDhT52TaWdJgwjQ3yKYiaUPeLovPhnZZxOeWQers2s+gBe587Vv/JvtGDRqM020e
         dYMgEXosUu3LeJH/hO9hIcAPDIuRjBvaZHBq5TROusgOnm8Y0CqIyQZ4aLU4xfPaut2n
         TcmhPuz8IYORduhg8i4ajVHIHOWy88PB95xbgDtH3zRkXEI51Fq6CzO7As9RKS9e3FIL
         a16/tEe2qdciOJdinZN5Svq/cxw1am7gHyCvHfQs4n2j6yWfp32uW+vAxj4fd0cksmoi
         rDBX+csGbprZRk3mJnnxnQ4DwUasqWji1w8pmU0X+xeJ2fywv+z53F6Ud+OJ6pJUB/w4
         ZaAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bx4m7M+RA7vj8ds9jL56RtWkRb8cdQTVnHXpcE3LyQ8=;
        b=O2womsxURzhDhn9fQlnlGAiDyxa9or1XiUF6vDUEHQvPxHQLmPXz3HEa1oFgyZNwHl
         AehciAq6JSw7EqU9gkJruJtEklUCcCTSMw88ooGlbBqewDsafx/0TFpisBOAVMydBBwU
         /8HHhVGCDMIKWz+T5VeB7TIpiIcB+6T7YhxtP7qFg9PT3BvEh15lu1rnDoCo2jh0rB6U
         UeMpl5ljt3vPanmoVTkYiSPfTaCmAHuVMYR7YbzN0gg+DO05GsZF6Rd+moldCE54LJaX
         +EGz44M8yKKKWSDXUEYc7Dwc37B5Jcv0E6c8R2sVc649jhporRCXvSQp44oQHfVURfDq
         7BAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sy+60CSh;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bx4m7M+RA7vj8ds9jL56RtWkRb8cdQTVnHXpcE3LyQ8=;
        b=nwgYxoBPkgY3UQrBjLGIE0IzLTAs/8XTSEX2CwFECnGSr1HPoWr+ujNpKQ1ZLa8GMK
         t9B6e/qqj7qLfaRkNLM3pigV7cJHhrUN+UgLvzlecsFyGmtcTz0Oyh/dlrLzjbvhNzI/
         v4IEc8+JC6EAMjGHIq5c5F09OL/z1/lUfLSzq9L+VgxLXd01Cdvcu32BCOoZmR9tGEEl
         Y+Ddwlhk90/dX5RIkBGpflmAYW31g1wLavgSevvtaSoR2w8CJhRtGX5kyZoPn3k80bEh
         nH9loSV75cG5Czz9Uz1px8AJ2rmyEAE0v6ERR5Ve/rjy+39bqDqz/16O7sX6UB45O+pH
         LTqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bx4m7M+RA7vj8ds9jL56RtWkRb8cdQTVnHXpcE3LyQ8=;
        b=KJJ1sV1EUOhmsaA89OggDerUeUceNIC0+oVns95h1ZUVa0pBxIWCgkEEKtD10mEw9X
         pio1r6tqXnGZDL1NM49xr+1ef4EzwIpdFqI3O247VdqJkgAp0tiKlcU/hHPo5I5iPl5b
         7mEpYuco6/ySVuHqgLtGPlb17dm2wINLwzC8Eq18PCjd4zTtuFHbWQ2k3IjkSb5uAcPh
         wXrTFT513p2b1whLWgKhcogehgQWKlbIi93z04bSQ0+7qwsII2S7wZssz3wBIXREbAKt
         B71oH9qtMU8aQN47C3Uq8aCMaUjPmYtr2hoSyyzhZnEEU1slS2qPuHu/wM0xx5B/wWXf
         1pFQ==
X-Gm-Message-State: AOAM531RtLHWNIYvNmoUNo3NEoqM8ZMzWRYXpGnbGvbrAuqH6BrNN8qj
	+C8wARvlqUvMD60MogDivp8=
X-Google-Smtp-Source: ABdhPJzO8gKip3n+Fr/bnLxK9zh132ZEvgnNKdn+Tf2vGT9iJXahn8c/DqMQm1FIa5pHgiZsat9TbA==
X-Received: by 2002:a25:6b0c:: with SMTP id g12mr41377665ybc.303.1625826714544;
        Fri, 09 Jul 2021 03:31:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b6c9:: with SMTP id f9ls2993549ybm.1.gmail; Fri, 09 Jul
 2021 03:31:54 -0700 (PDT)
X-Received: by 2002:a25:a1c8:: with SMTP id a66mr46587120ybi.389.1625826714088;
        Fri, 09 Jul 2021 03:31:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625826714; cv=none;
        d=google.com; s=arc-20160816;
        b=RraxT5JoY0iG5WTYDjUnN3zcdabONzgxiQOgwIlHLtEhSRbgVFvqE9JnxV7brJ3P8l
         mvsPU/h3BwH7oYO08R6tPiNg8PO9F8d1OIJ6wTMCTz81/TR5p86HDvFbK2ZV07Gb7IKb
         tmwYz9gm2p+XsWvkLfIdwp3nztqQ82yvrns4ZZC2ve6WGPkVDvliim6x72zqT0R0UDwA
         Lwt/+XI1CYNhMvI8/RHtGeI7Pn9Rh7/4LDRIRtr6Kavm8ntGBVMDZ79Z/c1oR4SMiMtZ
         C1qWPfnyY9c+xxFX/7GtbbOCdAMfU9pZvaug+3jnIgKQL4M2bd1sCO0+8jzQVFU5CCoo
         3B/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+Ag9cLTRzEt3rLWB36U/GaTidnQngHz1mFDbPHdbYJM=;
        b=Qvz4Sngq4AMYXlNl5XrKNhNhEzlRvdBeprq4mzrnqyvyE5WvD6xGXEgHCojGxFnmJX
         vGux2+MMAwL41BqUARqjycDomB+lPck8qGTbRC+GNXVlqVAYuvyWzS3d7p/V5MvkaOTn
         HZKog9xIjhXtUwCvMn1PB5JPDu/BtUkW3+f4bQA7xtDIj3/SZn+KECiEbzbGschCMciA
         X2yTQS2z/M3k1IXs0f5/vjuz7MeYARy3BqAEHrHQABha50bToXY7aR2erReuJVVZQZ+W
         WsS96O5GY93Tp9CT9432jHrR+gh/9a5PCyCQL6y4QdqqxVUfeaTrjhSF6RJ1kVbcFlP+
         Iu9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sy+60CSh;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id s17si588619ybk.2.2021.07.09.03.31.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 03:31:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Received: by mail-ot1-x332.google.com with SMTP id j10-20020a05683015cab02904b568e08dccso2769689otr.4
        for <clang-built-linux@googlegroups.com>; Fri, 09 Jul 2021 03:31:54 -0700 (PDT)
X-Received: by 2002:a9d:d04:: with SMTP id 4mr29227829oti.251.1625826713387;
 Fri, 09 Jul 2021 03:31:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210704202756.29107-1-ojeda@kernel.org> <20210704202756.29107-6-ojeda@kernel.org>
 <YOV/oj0rjHhzluH2@elver.google.com>
In-Reply-To: <YOV/oj0rjHhzluH2@elver.google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 9 Jul 2021 12:31:41 +0200
Message-ID: <CANpmjNMOou5DccZvGAcy4U7iqoLk6NRuTFkd-6JzTmoSFR+YYg@mail.gmail.com>
Subject: Re: [PATCH 05/17] rust: add C helpers
To: ojeda@kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rust-for-linux@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alex Gaynor <alex.gaynor@gmail.com>, 
	Geoffrey Thomas <geofft@ldpreload.com>, Finn Behrens <me@kloenk.de>, 
	Adam Bratschi-Kaye <ark.email@gmail.com>, Wedson Almeida Filho <wedsonaf@google.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Sumera Priyadarsini <sylphrenadin@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Sven Van Asbroeck <thesven73@gmail.com>, Gary Guo <gary@garyguo.net>, 
	Boris-Chengbiao Zhou <bobo1239@web.de>, Fox Chen <foxhlchen@gmail.com>, 
	Ayaan Zaidi <zaidi.ayaan@gmail.com>, Douglas Su <d0u9.su@outlook.com>, 
	Yuki Okushi <jtitor@2k36.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sy+60CSh;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::332 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 7 Jul 2021 at 12:19, Marco Elver <elver@google.com> wrote:
> On Sun, Jul 04, 2021 at 10:27PM +0200, ojeda@kernel.org wrote:
> > From: Miguel Ojeda <ojeda@kernel.org>
> >
> > This source file contains forwarders to C macros and inlined
> > functions.
>
> What is the story with Rust and LTO? Intuitively, I would expect Rust
> code to only perform optimally if the kernel is built with LTO
> (currently only supported via Clang).

I'll answer my own question: it looks like Linux Rust code currently
does _not_ generate LLVM-LTO compatible object files, but only native
object files (which still link fine if LTO is enabled, but doesn't
permit the optimizations below we'd want).

rustc already supports playing nicely with LLVM LTO via `-C
linker-plugin-lto`:
https://doc.rust-lang.org/rustc/linker-plugin-lto.html

So, hopefully it should only require kernel work to make it play
nicely with CONFIG_LTO_CLANG.

> Because if calls to every one of these helpers are real calls, I would
> expect performance to be pretty poor. There's probably a reason these
> are macros or inlinable functions.
>
> I would almost go so far and suggest that CONFIG_RUST be modified as
> follows:
>
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -2028,6 +2028,7 @@ config RUST
>         depends on HAS_RUST
>         depends on !COMPILE_TEST
>         depends on !MODVERSIONS
> +       depends on LTO || EXPERT
>         default n
>         help
>           Enables Rust support in the kernel.
>
> [ I'm sure there are configs that don't yet work with LTO, but could be
>   useful to enable for debugging or testing purposes, and therefore would
>   make it conditional on CONFIG_EXPERT as well. ]
>
> [...]
> > +unsigned long rust_helper_copy_from_user(void *to, const void __user *from, unsigned long n)
> > +{
> > +     return copy_from_user(to, from, n);
> > +}
> > +
> [...]
>
> From some local tests, it looks like simply attaching
> __attribute__((always_inline)) will do what one would expect when
> compiling with Clang LTO (I checked -flto=thin).
>
> If you confirm this also works across C and Rust TUs when enabling LTO,
> I would then suggested adding __attribute__((always_inline)) to all
> these helpers.
>
> Thanks,
> -- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMOou5DccZvGAcy4U7iqoLk6NRuTFkd-6JzTmoSFR%2BYYg%40mail.gmail.com.
