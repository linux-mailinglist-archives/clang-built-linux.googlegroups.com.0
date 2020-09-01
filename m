Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGGRXL5AKGQEFTUECUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFF3259F91
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 22:01:31 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id w24sf1176433ply.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 13:01:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598990490; cv=pass;
        d=google.com; s=arc-20160816;
        b=vLGTkaf9b+NnLxfCoxZAnEC9l8bAnMljFK+Cx2bCJq/lOSNoQUBu/n9+u/e1TZl76J
         Xljcb9xyfnHMTLNwvzCYCvhB3gsoMbvsKA/4QNP28PRKtnqIm9XV8AnNQd2vPl6Uwvn6
         yqkWaBNPD09qHMlmxxjasKaKIglW5Rkc3bNZ2QfM6OANcYdgV+WpepiLsYE2I91x3qT6
         fxEBASR/wc2a6iMeQPUdp9jpp1isg7VO0eUXmG3ozV5CeGH7vu0tkmTce34LbYS92aKH
         16DGlvpaXUUgmAE4YgWTOb/JhdziBqSDkQ5KGp9EpMzW8rY5+CxpXiigiFZLoYPUgWGI
         tppw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MS6kIyab8Pdcm7MDZKNVIcs+vcnxpGaHEekwq0WHG3c=;
        b=nO76U+rOXY+PC6Zx+Zi16mJPce8kSTlOyjjBxNVtvB23uRCLQuMim3mSyfL/1gcGqG
         mqQwIm2+gSDG4/aaIqYtNviCKttoqCOwAwhkNzkaQa7MzaUWNYMO3IQn6BhtURmYoTWy
         YaFPztQW9tpdooSGdvdfyBqN+Nq59NUtLgrjB99rFgoVoJmz92MeObIrftGD7BuYag4j
         ZPRsOw6kXyT2NKc0bMwlYOc2A2b9c/7R5r4pRdgmHyNSnyNauFXILasF0+MkE5AnOcFG
         oCSh3ufFPPDtfsh872rZ9H46HhJT2Hhy5Xf/fptKeAOkXRmU7MRsiB/JD/T2L61y20b7
         uM6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HEYouRK6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MS6kIyab8Pdcm7MDZKNVIcs+vcnxpGaHEekwq0WHG3c=;
        b=MsgLsy/xfgEZAvFToRwrdkZsaWYUtdsGb7AC7OtuDWoyQwve2Ej6S/NTvan62xzVS2
         pHfsguRrquHuXeMGOaBMNNmwzZLXC+UZZDDMbntDoMlXxYYNEItiVvfd7Hh2IU6uosy/
         WmOQgGZWHMnfoIDUb7Qo6Gi+ku1/d7XS3V07Maht0ocb9y+WyMk5ps12aMUIzaesCala
         0ym1g0bUAZlucPUuP2UIN3ru61+OCk2XLjuLBdhuuycfwo9lUa6eqjRMiMFTVBJVZhMA
         15C1nPePdyE9hgiZLsVqGR9QWfE/BpKH73CPFJFHu2i3ZPWSzi0mopFbAgv7De7Xgmi5
         1Sxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MS6kIyab8Pdcm7MDZKNVIcs+vcnxpGaHEekwq0WHG3c=;
        b=TlzNloeqyQZGiJBt3+cE6BYSFQQxB9kg0Jd69jpfb2I06nteoSEPV68nagm+9+quDv
         QhoS9pg96f0sYdPH8XhEyrJdx50pnMfVrDHcKqljV/FHZpyvEn42DlDtSl+9O6NzLKqr
         7hlpYCf3eo3Xwle2i1ATC9/2CaygNcUxErdPow8A/nmdUjGbCpyEKUPtG4blmYKNoise
         z1oAQ3uK6Upb38dYB4duroy1j2ynCHCvuR9/9gEUlT6s/xAiEY3ebHo88oxS8UBkfRIb
         2EPb6c+lThiebu14F0reaf5G7CLXUWI2hnAnuhK9fyf9xmsFRm/b5mRiPAgFvG86kyv4
         VaBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320A/i/uC5GM3Dr6OBIVir+rjGN2K25uPJxmreMUitG765iMO84
	nVEv0CE891hvbMFjVvMYOoc=
X-Google-Smtp-Source: ABdhPJxLA9kt0ijtSUeMq7Y743Q1n6t5pwlThKJ+NFC/GyWwhPofwoMjuY3OxKsiUCRw0SI68NvRJQ==
X-Received: by 2002:a17:90b:40cb:: with SMTP id hj11mr3214964pjb.67.1598990488681;
        Tue, 01 Sep 2020 13:01:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d9:: with SMTP id h25ls998556pfq.0.gmail; Tue, 01 Sep
 2020 13:01:28 -0700 (PDT)
X-Received: by 2002:a63:8343:: with SMTP id h64mr2864510pge.445.1598990488149;
        Tue, 01 Sep 2020 13:01:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598990488; cv=none;
        d=google.com; s=arc-20160816;
        b=zKLdmU4TuuPJD+8k0O0Pslhl+SCr8Ze1czdFaQYsoSUhzBa95PolFVOgkHrnf4/jHa
         hHozl0RPKyCPKS+qDjIys9XzdQH+DZeKWmW4MEwVxSkwOBGH+3ax9XhdMMKHnVYQ8Nc+
         3A+uweynHO6rk276vdA/HhJJkkcj8QH8quYms2GmeMqOhj4frsCpobDCTVfTu/DZtVKs
         8MDv0ytdwiBwD5SrCDyqmsec9y5hG4oUeNMqOr5izYB7QGa7TdQWdaZv+MijsumFIdVA
         RFHbfRmPaumBTqteCRZ+hUztCxCb8V2wY19bUkcFf5pd6nW+eN0sl3yUdmc8tnJ2biXd
         8Hpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UjrXFlrwlFcaBJes26UhoSpBJyw05OEZbNN97Pv9QCA=;
        b=ykrWSBAc2fiF8CRtcgWjRg+hP5JJWKWHXvAgqvtKm0iPMe59dCtSM9pc+Dz9oEKrBz
         IH3mDghhWcGG76NFzN9//G9Cqv4lPxjYH3CmJyicSA2/eoOPIetrOXbTEyt6hCybfJ3w
         HRM+Z3HZq57Viyoai214mV/oYdSlNKQz0TlLXHXUDRdrUM6LO/G28mcbWMYhs0Dyj45y
         sHAGa4MowZcMyLSIdnIPjuImLrYajXTbCR5YtR0oia/fEvijxo0gC8beDpM9fkv45J0X
         my7demz48f+NiGULiyl/Jk7QQpitYD56kUIe0/P4Dbh3mcqWGzUd77HzTmF4WbbAb35C
         SuFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HEYouRK6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id bj6si101532plb.4.2020.09.01.13.01.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 13:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id k13so1069874plk.13
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 13:01:28 -0700 (PDT)
X-Received: by 2002:a17:902:d345:: with SMTP id l5mr2720112plk.265.1598990487868;
        Tue, 01 Sep 2020 13:01:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t11sm2829990pfe.165.2020.09.01.13.01.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 13:01:26 -0700 (PDT)
Date: Tue, 1 Sep 2020 13:01:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/7] set clang minimum version to 10.0.1
Message-ID: <202009011255.5BBF4F31F1@keescook>
References: <20200901002326.1137289-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901002326.1137289-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HEYouRK6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Aug 31, 2020 at 05:23:19PM -0700, Nick Desaulniers wrote:
> Adds a compile time #error to compiler-clang.h setting the effective
> minimum supported version to clang 10.0.1. A separate patch has already
> been picked up into the Documentation/ tree also confirming the version.
> 
> Next are a series of reverts. One for 32b arm is a partial revert.
> 
> Then Marco suggested fixes to KASAN docs.
> 
> Finally, improve the warning for GCC too as per Kees.
> [...]
>  8 files changed, 16 insertions(+), 27 deletions(-)

A nice simplification!

Reviewed-by: Kees Cook <keescook@chromium.org>

(I do note that for Ubuntu 20.04, they're going to need to do an LLVM
10.0.0 -> 10.0.1 bump to do kernel builds for their latest LTS...)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009011255.5BBF4F31F1%40keescook.
