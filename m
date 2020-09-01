Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBI4NXL5AKGQEKNEVSZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CD3259D44
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 19:36:37 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id y7sf1529810qvj.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 10:36:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598981796; cv=pass;
        d=google.com; s=arc-20160816;
        b=SvWES2LQD8YrK/tYC0N7PmUzxa7NOFOZQh0RQ5p3zjj32prBIpvbXgdAfZ++x1Xrg6
         3zSqjN71EuA4kkzGUM/4fwvDAFm1nZCVFl/fHK3v98jMaRo/BP7gKyuJCHrsKjtSNCAP
         mXQ/qODo7G20V5s1nqyzxg0P/RZgHAMq0lz59scBR5vaw/B78OR8FFZjnVMLlxYeSdH4
         3pOvsNnj+uuWvguo+NMRFg+G/3oB+PniNzd2LTPxJzpmoLAulfhbQlzRd1A5fpdzpIqt
         0h4WBe9LnjqKaLQhwQnpweniqgMUA86Ic9AiX12N6lgYZMNj70uQr1i4xoGQPLaZObgi
         jS2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SWAW++xC9lpiyjootH0HKrlsX+QYg3mFLF0+xy1a9Ak=;
        b=Jt83xZ42e7qZQ0LekEWSrVE7Qhs9wleHwf5fvtu/cYNy1qUe33044nZ8pSUzkUse/V
         kH+E5f3HAWwaprDgfsmi+yWeZc06lkje3M7IcwXPptAF/P2CxprfethOadpj4Lxa5j2G
         AgyZK537gLImTa99G11RgyTke+B/B/w3bjRf0mrbu3xITyR6LxF+Gpn/N5Hwlpu04iRr
         PdcJ8eo+UYJZmnVD+oupAj4gu8C0Ql9g+2aE/fv0Y8kzRkwyv40kZo5FQ3Aj5OldW6rO
         Vr7d6FZbfvBHbzmsSIIph7Nf5M+nJET5D/jBdMq+/8r/OSGguZP96plGYApnsCdVwRJp
         NCcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Mc8biK6/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SWAW++xC9lpiyjootH0HKrlsX+QYg3mFLF0+xy1a9Ak=;
        b=DvKNgzkD3q7sxagr+2eQnQ5wLrBwfK84cDUzvvv7FGhxyKN7alNhfPJM/3NHXZ4xAc
         KuT/thl82oG5mLwmlah+/UcvhIaXzzZp40bLeumsavWpP22pRr/xKIda23RB+N9mJqRo
         hJ/yxkyU1YLO7MgmqtCeB5DGH74/lmqAsbwgxh5hlqvgSEFkVB7mDwgaxjalggJ2LfCM
         qMDrHSWCelG3BoCf86wgIecLTml5Pt0RU75Pgv5jeRjKtuG5lci1Vo2E7QKAUsBbYMVa
         adrhrogKEnJasXvD4pREBp+p5RFMOLGTNwKBPH630n11gyrofaQtix7B/Bf24Z9m4q7x
         C7Uw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SWAW++xC9lpiyjootH0HKrlsX+QYg3mFLF0+xy1a9Ak=;
        b=hPSzRT2rO/6NUFpFldFjO1i+/z0uv6HC15pEhr5WbxWAB2as6WKo3wNVVg+kw49WVP
         jS4LLaJ1o5LlxDhfDrA0iPzk1Z+pS9AXKloCNnGCLVCVOOQdtIlbJwIltDkic5DguLhW
         BN6w5b7LVwLY6dCKDNIjjmKHKdAW0U4uggPfcLUk0NXVAObZV6F9roBVFcndp7N/mz31
         /VA5t2MRXJ9x0JtmaVj5YwmyMZklvXA+X4bLLZlVO+nuWEBP330z8krglpPOIfTxh0gK
         H87GF/ZYatFpD5gEHeGiDh5ge4fIXv0hfv7n83I3yeVIhnLsicRzPWn0AhmpxWdBjHSY
         l/Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SWAW++xC9lpiyjootH0HKrlsX+QYg3mFLF0+xy1a9Ak=;
        b=RaY0aB5XJks8IcbIpO7GjDjsfw9y7eosaxmRF7Be0X1i29WN93WGjRdxV3lEP+ljOs
         JpfA4qHBiir68k0EQsP7HZnMA5SIkFnrQ/5M4QyooPR3YuiU5Vnpnju1UljiD6ajE+ME
         GI5bXniV1IGBJfmx0+gmB/V8YzcoHXZZRh8aE2hjW3TR+V99nJ/QAPzw7g5AEIQvx7kW
         QMMKSGBMqbXBGgF0ndqqox2ja1voNMDPGDXd/laM2qnGRtMASAk+8lBgWylQok3mdUAb
         ycUfMxzYt3eUqPtpSiULXq6qJCYWYkPJJlP7nN54VGWqGehQzxshclrMaxtBIYWnT+L8
         RQ2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xcWOxuumbxldz1Gle9ybpKexh7byoZonJnqOb6chzQULN8IX9
	oYXb849JNmatywgJwRh3bNw=
X-Google-Smtp-Source: ABdhPJzJhQ+og+eRpRCJpyT7yLcPd/cCJgN745hSmpfA7IrhtE0TQ9w4LaKkAk23rGMkcmOmdbp2fg==
X-Received: by 2002:ac8:7003:: with SMTP id x3mr2211703qtm.206.1598981796055;
        Tue, 01 Sep 2020 10:36:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2e64:: with SMTP id j91ls869252qtd.0.gmail; Tue, 01 Sep
 2020 10:36:35 -0700 (PDT)
X-Received: by 2002:ac8:2be8:: with SMTP id n37mr2996217qtn.107.1598981795629;
        Tue, 01 Sep 2020 10:36:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598981795; cv=none;
        d=google.com; s=arc-20160816;
        b=wHiih2j66nCtsS4unBH3Wqn7ishOG/zZWidlH0X8P6O6MuJTGOOGfeCHr2hu8ypuj8
         seT6lk+6mHRuem7QcnoY76dCgA0DzLyrzua4qKaS5D7iKb9c5ZVfR1pH29ZpUWh9HGWh
         iZFxPqDj1X490rH77hRBXLKaW+2BysaCc0kfWPZykryw5WO0ijZUMLOOi9fd/a4LbkTy
         Xjy49RzQPzH5HqFgQStODCmt7bzlJgEICdQZw6G8oy94MlTGhJ+lBSEsciSk0qnKp2UQ
         f9FUvtKqKkrWK8im4nxXZuI/y1H1Db1kAmiiM+QcTk8fm5eKs9IWgIkM7UL2IxRfB1RI
         m8hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+VnyCUAkTo6LTaWWSSmduxUOFyHV2SatZbV/3czen18=;
        b=NEFcXWqtEp4uxvuAo2XQlrSRTRnBHlbqwfjb87a4nIGo5uPZvVgFnwl8oXqZ/W5qa3
         MebK6jT7rxK6wbPJNHtsbzZSWudHUI8opy1j+8nDj5rVZOhiudrRXGgZKY7GyKkKhGzy
         QnGMu51q0MbYZbDQEWncmM2IaXwiaZbxupRJ1Bg2oYB9ZMSPHoeW/UULQlDnACmvhU3i
         JnVxNF/b+AZdI3wPaHJe43NoCM5lKSk0NlDPCtxX0qErC8/ELtY6ATWTNRNG/hMFFAEV
         z06YX4VyZRCCjJ6k2obWWK7to6efeFRMBVabDmneMFqmyYTd9HSzsY+SRRI0rfZ+hEBD
         Ttbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Mc8biK6/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id k6si141505qkg.6.2020.09.01.10.36.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 10:36:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 109so1892080otv.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 10:36:35 -0700 (PDT)
X-Received: by 2002:a9d:7656:: with SMTP id o22mr2109049otl.109.1598981795095;
 Tue, 01 Sep 2020 10:36:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com> <20200901002326.1137289-3-ndesaulniers@google.com>
In-Reply-To: <20200901002326.1137289-3-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 1 Sep 2020 19:36:23 +0200
Message-ID: <CA+icZUXzSGAAZ=fs1rTwDUT5aqEzMSsDdTr2V+fO0s4FGOmAAg@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] Revert "kbuild: disable clang's default use of -fmerge-all-constants"
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Marco Elver <elver@google.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Mc8biK6/";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::343
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 1, 2020 at 2:23 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> This reverts commit 87e0d4f0f37fb0c8c4aeeac46fff5e957738df79.
>
> This was fixed in clang-6; the minimum supported version of clang in the
> kernel is clang-10 (10.0.1).
>
> Link: https://reviews.llvm.org/rL329300.
> Link: https://github.com/ClangBuiltLinux/linux/issues/9
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
>  Makefile | 9 ---------
>  1 file changed, 9 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 37739ee53f27..144ac6a073ff 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -932,15 +932,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
>  # disable invalid "can't wrap" optimizations for signed / pointers
>  KBUILD_CFLAGS  += $(call cc-option,-fno-strict-overflow)
>
> -# clang sets -fmerge-all-constants by default as optimization, but this
> -# is non-conforming behavior for C and in fact breaks the kernel, so we
> -# need to disable it here generally.
> -KBUILD_CFLAGS  += $(call cc-option,-fno-merge-all-constants)
> -
> -# for gcc -fno-merge-all-constants disables everything, but it is fine
> -# to have actual conforming behavior enabled.
> -KBUILD_CFLAGS  += $(call cc-option,-fmerge-constants)
> -
>  # Make sure -fstack-check isn't enabled (like gentoo apparently did)
>  KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check,)
>
> --
> 2.28.0.402.g5ffc5be6b7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXzSGAAZ%3Dfs1rTwDUT5aqEzMSsDdTr2V%2BfO0s4FGOmAAg%40mail.gmail.com.
