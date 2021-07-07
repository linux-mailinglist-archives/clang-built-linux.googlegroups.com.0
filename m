Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBKX7SWDQMGQEZNYS4PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 366E53BE648
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 12:19:23 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id z5-20020a05640235c5b0290393974bcf7esf1188588edc.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 03:19:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625653163; cv=pass;
        d=google.com; s=arc-20160816;
        b=EVFyJFQQzK7fTBABN874CrzW+PdQv9BtUbZaCWOFkcyRKlY+ZzjOYvrbJB9c8rtFq7
         LnDh0KEOQaRo8mXx23aa0f4dk/jIicReOwRGjdx/+VnO1VlB6dPjqt3qpaU/DVRs8xc4
         QANkPUQ/7Arvz+sdWxpvZ0x5vcXc+/u5c523aaIW32hvLI3+CGQ0t5yA/HwZSC0QnhAx
         PTOdiGs8761cTDoVJWhAFuIMw6Ezx2z3VEfLm0KUxDSQEUzNGWyvJlBH+lu8taNaTacl
         KNovcl4rGMlWkqTxztBUbSjN1QfzjCwjuBjiFsH6LHvyvHednO5dvu3swmPXOuTriVv0
         lnIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=VZLn8DoN68176e33NDYqNcxwe9NGgU6PQ+VKJ1wPlG0=;
        b=EkB7h2hMbHU2KE9ytxI9k/JT4SDxnQqFPj7cXZsixUfaEfNsx3lqc+MwPWgKpH3ovQ
         77x2d+68KbhahA8iDI135/JlUKJMw8kQIe+iylkl2/19hme7l+kMxdQd+qmEBbSOTAqM
         vNAJCP3ehVKFJ+khUaIeZT4Kr39j8wL4FhxfQhysaK/xiBTe08GNlWLRMzowCNKu+hLO
         SB2TVtJdpMa1cVfOxexBLAp4OzNbw9yjYX21xThYvRQn1QIJK0nmYQxFEmqdFRnXAnWu
         B3+o94zEttxQl3HKevNTChuxJnO9ALuSH2pw9Ang365ZB5JPWGpedJcZsN/r30jV73kS
         6TTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m6Prb02g;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VZLn8DoN68176e33NDYqNcxwe9NGgU6PQ+VKJ1wPlG0=;
        b=gRFDdrrcyALGngiXrhlqumPml1KqbWSVI+SnTrPVmexvlrxuGnSM+Q3OkOwLAnvLGp
         X7KX78SrqJHL3Lj+/oxr3upkGIFs6lhuYq0Z1PFigjgp5F1IdlsdTC3vvWRT/EUELcJr
         OZ8Cvu6+vjfvWD0zLBWRN/0Zlu6ZPY7ObX+4csDz0m0AurF/JzuxMNSZu1ZUNlz7JHrr
         5ENXchZ7GW+eA3AjYtDiNmmdaQ2LbfSW3vuG1AxR/yHFld0wSGT0OBmLJUD6kFFFjvw4
         fhyisV7oaKQZDLdykV7nUL8kzQrasHtSMEsyNZckfHCE0YnzmOo1aD6dr4tKCW08RRo8
         mgpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VZLn8DoN68176e33NDYqNcxwe9NGgU6PQ+VKJ1wPlG0=;
        b=Diufg2U3Bgu47Igrgned3X4hUfaecGGhXDO5QyupiFR4xXgmajV5Wlwh+kKVvJLr6l
         mOtCWCFMpsZP7BSAAXigL6CWsNlEbibJdkzFbId8o+EK1ORZWbShRgau8CeqeDTrHZPj
         WwPxoG3VISZ4Tn/CwfDgQ/kU12Zep2//+AwDnYemQyxVr2quOYNY8gMhCc9KezAHunkq
         TpDI3zNoMu7xpfvKy1FqynIypFvhVknwU/lyIw5cA5HgNlSlxSKRQHP+3d2YvrpsGEEm
         ga88nIetRaD/9a0PUjJzN9aXfWDocaHI6kdCWC5sLku+vtQj8A1Zta7os8D46IWLq0kQ
         aCbg==
X-Gm-Message-State: AOAM530jTgpnbIEwRB5x5KZupZYr0bMniyzyDZ2s/1i2F0uU72Ae0dT9
	q838GlhqAjSt8pe5bXW/qlg=
X-Google-Smtp-Source: ABdhPJyQq/19UkAp0uXs49HnuiyaEPOMmC6IeucDrvKWYU4WBlrO6vKybbiz0bTe6atz2pJvmeitOw==
X-Received: by 2002:a50:fc0b:: with SMTP id i11mr28778509edr.383.1625653162945;
        Wed, 07 Jul 2021 03:19:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7fc5:: with SMTP id r5ls7942314ejs.3.gmail; Wed, 07
 Jul 2021 03:19:21 -0700 (PDT)
X-Received: by 2002:a17:906:e117:: with SMTP id gj23mr8255971ejb.131.1625653161888;
        Wed, 07 Jul 2021 03:19:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625653161; cv=none;
        d=google.com; s=arc-20160816;
        b=HmMnPyG2Bbdhny6bpYqZ3y1lJ35F7RUwCfSygtth/D3/GU8dfJhRTxOHoEx9MWREnt
         XF/JhAUjpqGHczmMWU4KjBAm2HXN4qBwT+OnKCLJpzBVjfhnYz3bXUBdyRzUKkPLJwmG
         2KwwtU9f53mtD8jnjcpaOtfAv5zwikYH2xZELERh/DCId4681Gw472tXYxYgecLp1tNV
         qNOrYUVZ1DjxZdf47Eryh/DR5us+bErWuYphjPMp+5fadnpDGUlhT/D/cefCzWBbm2p7
         HkbGfF+MSwcvXwByQ2p7uBH9S9I3jUSLDNGQ8YJ78wrvKwlIxZFig5I9rN/Er5AkdXw0
         T3lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5/41QsdtJR+pnNTqK6DmTCH5qChei4s6l1r+fcxa5os=;
        b=LxP7FNIwWCv/Kl9LhipNzoII1GmplqhLJGwqKXOUv/FvpboEcfgHps+BoXSevFV1iA
         AptVmDklnU1kIVhlKbJF2FlU0B6j9n7cFhClcoo928K3CpqbsNcy5DkeztKvy+ayNzlo
         STtd5ecRSQrsCG5mDfXzlcAXubG79ibqBBAS6UwmJKjB89Dk+5x3e3UkaINemo+BcNNz
         GhWTw9YoEelk/Rb8KorfMdDn3bx5Pf/AjPk6gMOrKfRCOV3VhcEHpUX2sm4poBSgHBbj
         NYMHtUadgkLmYdlXJa32dM7ehVfW+kZK6BW+BdYfTyK6MTwfJPlHurpoqsS5M1Rjn8eE
         mPVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m6Prb02g;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id s18si650208ejo.1.2021.07.07.03.19.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 03:19:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Received: by mail-wr1-x429.google.com with SMTP id i94so2428483wri.4
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 03:19:21 -0700 (PDT)
X-Received: by 2002:a5d:680b:: with SMTP id w11mr14879170wru.426.1625653161522;
        Wed, 07 Jul 2021 03:19:21 -0700 (PDT)
Received: from elver.google.com ([2a00:79e0:15:13:396a:6bf2:9c33:26ce])
        by smtp.gmail.com with ESMTPSA id c125sm2543281wme.36.2021.07.07.03.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jul 2021 03:19:20 -0700 (PDT)
Date: Wed, 7 Jul 2021 12:19:14 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: ojeda@kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	rust-for-linux@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Geoffrey Thomas <geofft@ldpreload.com>, Finn Behrens <me@kloenk.de>,
	Adam Bratschi-Kaye <ark.email@gmail.com>,
	Wedson Almeida Filho <wedsonaf@google.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Sumera Priyadarsini <sylphrenadin@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sven Van Asbroeck <thesven73@gmail.com>,
	Gary Guo <gary@garyguo.net>, Boris-Chengbiao Zhou <bobo1239@web.de>,
	Fox Chen <foxhlchen@gmail.com>, Ayaan Zaidi <zaidi.ayaan@gmail.com>,
	Douglas Su <d0u9.su@outlook.com>, Yuki Okushi <jtitor@2k36.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 05/17] rust: add C helpers
Message-ID: <YOV/oj0rjHhzluH2@elver.google.com>
References: <20210704202756.29107-1-ojeda@kernel.org>
 <20210704202756.29107-6-ojeda@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210704202756.29107-6-ojeda@kernel.org>
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m6Prb02g;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::429 as
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

On Sun, Jul 04, 2021 at 10:27PM +0200, ojeda@kernel.org wrote:
> From: Miguel Ojeda <ojeda@kernel.org>
> 
> This source file contains forwarders to C macros and inlined
> functions.

What is the story with Rust and LTO? Intuitively, I would expect Rust
code to only perform optimally if the kernel is built with LTO
(currently only supported via Clang).

Because if calls to every one of these helpers are real calls, I would
expect performance to be pretty poor. There's probably a reason these
are macros or inlinable functions.

I would almost go so far and suggest that CONFIG_RUST be modified as
follows:

--- a/init/Kconfig
+++ b/init/Kconfig
@@ -2028,6 +2028,7 @@ config RUST
 	depends on HAS_RUST
 	depends on !COMPILE_TEST
 	depends on !MODVERSIONS
+	depends on LTO || EXPERT
 	default n
 	help
 	  Enables Rust support in the kernel.

[ I'm sure there are configs that don't yet work with LTO, but could be
  useful to enable for debugging or testing purposes, and therefore would
  make it conditional on CONFIG_EXPERT as well. ]

[...]
> +unsigned long rust_helper_copy_from_user(void *to, const void __user *from, unsigned long n)
> +{
> +	return copy_from_user(to, from, n);
> +}
> +
[...]

From some local tests, it looks like simply attaching
__attribute__((always_inline)) will do what one would expect when
compiling with Clang LTO (I checked -flto=thin).

If you confirm this also works across C and Rust TUs when enabling LTO,
I would then suggested adding __attribute__((always_inline)) to all
these helpers.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YOV/oj0rjHhzluH2%40elver.google.com.
