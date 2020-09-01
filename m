Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY5IW35AKGQEGZMGPYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 237832584BD
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:23:01 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id i2sf7340940qki.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:23:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919780; cv=pass;
        d=google.com; s=arc-20160816;
        b=PrGXLCRM7FqQMXbQfs8aGaffl6UTeOQhms8tlOGdPyCs/a0hgrnjvOGuYRo93IoPV3
         Xf/s+m9jF6F3cEyWtEbN5waQUHyXM1Akz6ulH6HqXYdjZBO0MCW4Z4aKA7/QJNFLuam6
         2nIBLIADYWQFzsmneb/1xRJLBXsXN3i1aBMP9VqKyQGaLrHCHH3FCNWkiO6sSBpAFCye
         NJqm4sJx+xOIjTU7VxxZOE44ov63IhimQg6XTi6I4QW6SEuFWBhgUporN2GUtRh4fDZr
         sYpm4IJNQ/60tf/uBpueGzBPXWay/pRM/NY0WjqW7MmOJDgNMhSHncGW3W0E8DtRTbY/
         OWjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4NB6KGjaPUyHmGD2BV3y06ThawOtQ/uTpUBvKWTxElg=;
        b=LiAXVse+nO3jZ8O7rAWROKKfqk2PGF9l6AywovSBk1FKLt+B/FaLnHbgzHfdQqNVgL
         UN2+pVMutllngOwVQOeKynjfEEIYc1nfC7oyaKMuf0E3Rkc8qkfmTQdaQUrA/0WzRU2I
         UciDjEfEeC5V2rLkbj7ztLgaN3xHkFZ1P4IbwwsjJwRo8XfozxU/87HTjsRX/9QD1bPH
         dNEMEP4YC91OZtik4rQuSznWrw72U6KEZ76AdvxEqvPKzxIDgoQmx9fQRWi2PaFEiX5S
         TBjrLuA6awXzdGoOngQB7AdLFod7RzctHJT6Z0wBXQjnHHcm/J4fYtepkxPP3n21f+jD
         178Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CCIq4ztq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4NB6KGjaPUyHmGD2BV3y06ThawOtQ/uTpUBvKWTxElg=;
        b=CIBTpHWzhsJKIkQph8lCQiM3SJYfJF1SfTWEDuqULdjnpnJboiKyp6tJlSumkQcuMe
         OYkv5Y5uuLyyz8ThIxAShMEU0hoZ7DRcO8L7tni0H7oFz6j9jkRI8tBFvdWEpwsckL86
         LlNQO4tJlmkpc4leAuZewZOEfMfpeXffHucUxdkaL3iP/21Y8Te5GwmeR0M9c9j4BAQR
         V8xS7Cho9utcGJ20ItqWjrJJQbHiVmcNGWovh0l+xUW4aeHpq+GyPN/r8ayHTqCl0hur
         xMUSt5/23zZPeGPTp3R13w8DpHRWXN4+l6GzWRfswTb2WmKoUXw9vrcR62cOdGkdb9GO
         uKWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4NB6KGjaPUyHmGD2BV3y06ThawOtQ/uTpUBvKWTxElg=;
        b=fGFKyWEJvzNqR8k2a+wlo4caBmBqd9+MkRR3R9+0tDNLb8a0WaUQCXMEnhmR9IY/sN
         m+v1zguMenvbm5v+BbMTbVZUe70bEJ9fjv5sbw6SEWSyO4uEjq616hBO2J1eiW7965wQ
         GmhbThXLPA0tZ/tA1bVMDIBQpUIGNCujB7nUmGlcIjkBAVhoZDnjS7ruqVjn0x2bwahy
         JeNmtd9LRz6yuDU71c778g3bppM+Ns6H0awpJjU8G/KFhdgla8lJGsASijTHXDXCga7I
         k3RtDlFGsBGYDL6V8xNZAQelCQqNj1Py1inI8Lvv8+eape4WauLAQ4C++9BaJay8KuIk
         nm2Q==
X-Gm-Message-State: AOAM5333ShaP6M3eOIArzoCAkXqkw2rhFaiMxpra1+18+N0rRuJTGGFC
	ZUrSx137M6QNcg2fLeBPyzw=
X-Google-Smtp-Source: ABdhPJx7oMddO9GFl6qUPrTna+gZviIuPPCVb3nLJ0LgdUdbbfjhfdp7ADDK1O8Cjk7krfE5hb+4eA==
X-Received: by 2002:a37:87c2:: with SMTP id j185mr4174308qkd.458.1598919779914;
        Mon, 31 Aug 2020 17:22:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b987:: with SMTP id j129ls4316206qkf.5.gmail; Mon, 31
 Aug 2020 17:22:59 -0700 (PDT)
X-Received: by 2002:a05:620a:2284:: with SMTP id o4mr4193627qkh.206.1598919779635;
        Mon, 31 Aug 2020 17:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919779; cv=none;
        d=google.com; s=arc-20160816;
        b=e2C5vhcbqSys4KSJ/2nOx6yFLlDkv3IGjqGrgvJrdrtOIiUGr0nyuOhPaomaGnqriN
         xJxbYg45w3i1pNfg5QKoWbyNCaHqo44O3v2KR2QXjNis1xiMqT4FM+R6ri+CXHM4gxL8
         +U607TVavAUSJAEo5UBxS0wiWsaE5hT2w3qbECqj8V+U8qbF8lgda0P86THCuFtVgD/0
         FloN2BK+BdCjxySJ9Hk35u166KK30HvcGuTg1B+PuCw41lLEbxEW6+2JdC/8fUEVclCy
         f4j2x52S8rtXhbZGUJJH+pNXie+NwS6fdPGT3TeRkJrzDRH2wQRmRNZSJ4G3CoCGhrvC
         xAAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a41Sdxko0CIj2tO9yfoAmi8aEK150JoYcmEVMOA9hRI=;
        b=jCiypWH7zAZnKWMRUjtm0qOXMS7tz8xFIvPVsBs8gz0TJJuJ/cvFQW+FQb/0pogWHn
         UhCWXOyh6W5lCorNCBRkvRXFY3MLMrPS6ROjFpMvDQ6JIcNkc0K72hlabFbZXKKUziH8
         epVGjiwUy68wjtb5ntjxLLuCe9pc/NNlgq1R/IbuQ0XxU8rFuz2/P8NxjjwNDcGasJ9Q
         Pa0vlTa8kam5aNygPeHlUqLuK0iqEyTdB3e4UZps/t8ZmP9a7t/8+VCjUyQHZWBl7dwl
         9WbQDC1I9cKdN/HY/Z24jFWQRpsBHjOsTb3bNvNUcvJuwVnZdwg1a76fNtSNrwv4Y4fM
         LnDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CCIq4ztq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id n26si477251qkg.5.2020.08.31.17.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d19so1659278pgl.10
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:22:59 -0700 (PDT)
X-Received: by 2002:a63:9d09:: with SMTP id i9mr3121182pgd.381.1598919778517;
 Mon, 31 Aug 2020 17:22:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200901001821.1126189-1-ndesaulniers@google.com>
In-Reply-To: <20200901001821.1126189-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 17:22:46 -0700
Message-ID: <CAKwvOdmr=gq9agfnLFRhQKkW8Qjm1=j3ZDXwtNjiBN4o-XR8rw@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] set clang minimum version to 10.0.1
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CCIq4ztq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

And I forgot to cc LKML...sorry for the spam, resending the series.

On Mon, Aug 31, 2020 at 5:18 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Adds a compile time #error to compiler-clang.h setting the effective
> minimum supported version to clang 10.0.1. A separate patch has already
> been picked up into the Documentation/ tree also confirming the version.
>
> Next are a series of reverts. One for 32b arm is a partial revert.
>
> Then Marco suggested fixes to KASAN docs.
>
> Finally, improve the warning for GCC too as per Kees.
>
> Patches after 001 are new for v2.
>
> Marco Elver (1):
>   kasan: Remove mentions of unsupported Clang versions
>
> Nick Desaulniers (6):
>   compiler-clang: add build check for clang 10.0.1
>   Revert "kbuild: disable clang's default use of -fmerge-all-constants"
>   Revert "arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support"
>   Revert "arm64: vdso: Fix compilation with clang older than 8"
>   Partial revert "ARM: 8905/1: Emit __gnu_mcount_nc when using Clang
>     10.0.0 or newer"
>   compiler-gcc: improve version warning
>
>  Documentation/dev-tools/kasan.rst | 4 ++--
>  Makefile                          | 9 ---------
>  arch/arm/Kconfig                  | 2 +-
>  arch/arm64/Kconfig                | 2 --
>  arch/arm64/kernel/vdso/Makefile   | 7 -------
>  include/linux/compiler-clang.h    | 8 ++++++++
>  include/linux/compiler-gcc.h      | 2 +-
>  lib/Kconfig.kasan                 | 9 ++++-----
>  8 files changed, 16 insertions(+), 27 deletions(-)
>
> --
> 2.28.0.402.g5ffc5be6b7-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmr%3Dgq9agfnLFRhQKkW8Qjm1%3Dj3ZDXwtNjiBN4o-XR8rw%40mail.gmail.com.
