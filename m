Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBZU47D7QKGQELW2HBIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2FB2F3BAC
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 22:02:31 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id o15sf1716902oov.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 13:02:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610485350; cv=pass;
        d=google.com; s=arc-20160816;
        b=BhBxJo7ORI8gpeA2VjVcebasCbY5XAft1dNNOWRtEjmJ+w3jpvnxsboFOIUE2ahAOG
         kEvk8pYBwR+v0nQgtSjH05EvpagCwRXylYyMNEtMcFBjqnHzLRyKvRPn9ZvfAu/WN7ne
         8QnLpVMyXbjS4NDBGD1X+0m9y6or83cpaiU9VKCL6ioD6krqLEnPHBDMw6XYoJkqjnYA
         tXcLY7Pf83XbMWvLvYD3BMu5QMmX6kUzmpabxz7RTKtBWXWLnl0fKVWkV2hA5o6XpZlx
         Qh0/AFMBLE9E28t7X0Tve8rT12tuvGRPxMr8VBpGkEHa3+qxl8exAazll2YBOp4whOAb
         oZqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=343VsX0lpf9s0xRiRutnHbt5w7Qsi3iaRKdW2s6SgKQ=;
        b=0dUf8gOmDVdNwjetMYiLTnFhfGJKMYpQ0Qq9O3jFjuZ609Z+fP7EUZei0/OO9u0uZA
         MjYbtWHIH3OiMPhyaUYK39Up7lGJDYstmlbBZdyUT+LgABLqj3iRHAtBy5gLH10FISTP
         ltqwEPZUZBrf5TYNDCOYshd7g0x+9rBosKMAbfEPMremNwniQEMbTEXphKyCwXgDaFmK
         Axs0/Z9hn44jbCl8tkDaqEd3Ua7DBcSxJUUP+I3r3z9NoRi0m5+2oygYdenPSCqTrrPh
         ZEEokHVdDcSsZWgnGFPMZ1vXI+mejO4d40pmzypVnO9+o9eq5g0iWq+MVOhKqsE+Q1qT
         gAyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uAFq5wox;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=343VsX0lpf9s0xRiRutnHbt5w7Qsi3iaRKdW2s6SgKQ=;
        b=OJsVtcQQO41TUY8gsz6xo6tUAYjMONttyWulA9/m6/0hY1Me2Bg7045Cb8efKqHyhQ
         bTxbxkhgOpMpJYPwM8+nzquOX3Rt/0f52EDY2l2Q3ZDLhFV5TuynriCtPycUCiTTS79Z
         FgqglzVHT2VA4cjxNxPZ9pkikTn3px4qy/7nyXVb9b9Q2eVBO0AOmLRYli1nuYfd7ZFf
         2QXVOB3aOFLGSbnIqJQr424NSdRvGJHGH71XzAqJjQ/PRbPwx0xqfwAe1rqmVMT0Fsqr
         T8v/uI+tiOr8gXwqVO/5cJy2B9dO7/YWd7OkjOwY56F4hEWeSoJwJHfZS93TjEpfVkRV
         v5jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=343VsX0lpf9s0xRiRutnHbt5w7Qsi3iaRKdW2s6SgKQ=;
        b=UDH11MM1RhzwftDOD/L9Wflw3Ol/vE06P5HhekfLOdf3o4LruRHtPTABUMoGnD9yf1
         wWKKY4UmjGWRY3ikKAYi65jsPbbrbWkSRlsP1KWXCVhbnl0cYkG5iTPZSXP4nz2XShGQ
         XSDf80E2s2coKVIdzuNt6x3M6ADyWf6BrRGbAiZbtcx26YN6dMUiT7sGUbl/uLGi9l5C
         VmlZLkzBm6jJkXs4j4qsMlI8VAaSD/64lf1GG/m3tP3iTHfjzVDYiEB/RuylQ1BiRTJ/
         SaDapJzBObMtK6m51OYC9ZJhIJTtxBngk8pHKAtvJMHh0aaoOD4uf5RgQBdOe/hnwKvd
         ii7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OhniJqz0bP39qF1wbGg0kvlCZl+jLIXu3NSuw4YSpZ0KRXVMS
	nayD/OyuQl9uF2fQxBzbAfg=
X-Google-Smtp-Source: ABdhPJwN9aJxOhB9nSCw3JFTItOEA1dS6MPybfwffSAJF5Gf6CBnWi++yNMvF5N12kq8KatiUckxKw==
X-Received: by 2002:aca:e007:: with SMTP id x7mr672928oig.8.1610485350381;
        Tue, 12 Jan 2021 13:02:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:24b0:: with SMTP id v16ls1106498ots.10.gmail; Tue,
 12 Jan 2021 13:02:30 -0800 (PST)
X-Received: by 2002:a9d:5d1a:: with SMTP id b26mr914022oti.112.1610485349991;
        Tue, 12 Jan 2021 13:02:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610485349; cv=none;
        d=google.com; s=arc-20160816;
        b=IsqFnKUVM86bOBMLuEIADCgpY6WL/tt4u6wLO/DQLH3F+ukEW37xQaCRfGyqcqsr7w
         w4HslEdLfF9TyHh1xW0RQ0gwKppkXdGN17pBlkQ4jG6q0S6rJEgmWD6sxLVB0AJxJHXg
         TweNQ934tHuUmpBTchWR9DhOvWfij9J7QYEWkVtv8Ag5L7qv2HmdfNHzRX89bHe09Fi0
         +jibmCzTPAhHkISmmtr5xgLU0VOPtBMgaJ4pRwxDoflt5+xZ9mZQI32oYL4ZSdFArd5y
         Jnr2VaJGxYMLkbAqF7NWZt0lEtIikE+M2WtZekw051N5fPUHuaPXHXQjJFT6oHQPHH8/
         ne/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=l6LoxlPMN3Zl3CTEzuEfgXkmVj8xOkLrWbymWfeo30s=;
        b=hBlkPuXoZpG3YVRnKzQB6/WyDL8MT5v0zPSQSlD6SvlcKk5KjJWKDB5iayOSVHQFy1
         pnex831rhtDx/16PMCtC3KIUQ2DQ2647l8ulGG2mRzSfFyq2StTbqC2clYh7UwtjKAdN
         FwrRY6IE51RtLqPDUdpsAU0Ouvf2DvlGIo2uX4vS0X8Na+EbVhOVBa3wqWZ2PzZwU6JG
         scILGmSVL6u3GLccwmyxA++tzdUn192O3BTThwHh60jupOWT+kSBRbYktTqp2Z1BAg3H
         v1erLQ9+tEBRlyVyG/oc113rsueJ/cMAwr6FtfLicWEBZNo7xS87Z8p2oVI3B1GZzUGJ
         20Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uAFq5wox;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f20si320049oig.2.2021.01.12.13.02.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 13:02:29 -0800 (PST)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3BB2D2311F;
	Tue, 12 Jan 2021 21:02:28 +0000 (UTC)
Date: Tue, 12 Jan 2021 21:01:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jonathan Corbet <corbet@lwn.net>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Joe Perches <joe@perches.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4] x86/entry: emit a symbol for register restoring thunk
Message-ID: <20210112210154.GI4646@sirena.org.uk>
References: <20210112115421.GB13086@zn.tnic>
 <20210112194625.4181814-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mXDO3udm/xYWQeMQ"
Content-Disposition: inline
In-Reply-To: <20210112194625.4181814-1-ndesaulniers@google.com>
X-Cookie: Stay away from hurricanes for a while.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uAFq5wox;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
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


--mXDO3udm/xYWQeMQ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Jan 12, 2021 at 11:46:24AM -0800, Nick Desaulniers wrote:

This:

> when building with LLVM_IAS=1 (Clang's integrated assembler). Josh
> notes:

>   So basically, you can use an .L symbol *inside* a function or a code
>   segment, you just can't use the .L symbol to contain the code using a
>   SYM_*_START/END annotation pair.

is a stronger statement than this:

> +  Developers should avoid using local symbol names that are prefixed with
> +  ``.L``, as this has special meaning for the assembler; a symbol entry will
> +  not be emitted into the symbol table. This can prevent ``objtool`` from
> +  generating correct unwind info. Symbols with STB_LOCAL binding may still be
> +  used, and ``.L`` prefixed local symbol names are still generally useable
> +  within a function, but ``.L`` prefixed local symbol names should not be used
> +  to denote the beginning or end of code regions via
> +  ``SYM_CODE_START_LOCAL``/``SYM_CODE_END``.

and seems more what I'd expect - SYM_FUNC* is also affected for example.
Even though other usages are probably not very likely it seems better to
keep the stronger statement in case someone comes up with one, and to
stop anyone spending time wondering why only SYM_CODE_START_LOCAL is
affected.

This also looks like a good candiate for a checkpatch rule, but that can
be done separately of course.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112210154.GI4646%40sirena.org.uk.

--mXDO3udm/xYWQeMQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl/+DkEACgkQJNaLcl1U
h9Cq7wf/T25FXiQQZ1vqQuvuSs9y7UidITjNn00or2An/9AZvjd7fNSIGitE6JZF
ulLa3Dnm6DnJ8IHxCom/f9HA0Bhqduottun00gPpRE4yYnc6I6rs4+jD3D3yaM+e
P48KYy2zaNF6Xgud3wdMdBWrO6wHbpk/FtrGu9myxKXbPoaWXCc/2JO+lQGHy2Ld
stRoPLzuNHGsqiiQyQVFUCJcva6y2q5UTYqWG21loFirQ0khEI1aHwVuifeddpjE
JamhRqQhmlTD8qRrnf8c4iVj6oexQsKzjOKkaKX2qpyYhK8bxdgvG8r0kwJfnuZM
LObeotMsynR86MF2K/fVFTw7r4fXMw==
=H9dS
-----END PGP SIGNATURE-----

--mXDO3udm/xYWQeMQ--
