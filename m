Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVX4TWDAMGQEK6UN3AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 323E63A6B41
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 18:05:44 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id e17-20020aa798110000b02902f12fffef4esf8506390pfl.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 09:05:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623686743; cv=pass;
        d=google.com; s=arc-20160816;
        b=BpCdZBgPDdawEdqDWOePi6MpglcgLNrphZQ1H+JPlToLVgyCYUIdekKFlfWdgeNRYx
         qbEHNGro9c1Quy9tmppvw8cu3d03u9pku3QR8qVIUpBVCYKNRdRkol2RpQQfotaw00As
         bHeYDZUV0QZBezP7JEodUB9atJ10lW0aFoNfR+buzCWwRj4tGT28BE715xVY1hwsmUsr
         cNGo5rnZzwDzLVoiNzh/UwXrH2rK6UM3iB/hgBAZG7XOAJObscvefaQL1UV/7YIZQh+z
         xpttlJuvZj1n8cjUSYlsKUehOVvjvBo933HG92mNapRsen36++WT60WQz6m8CnDO8PWR
         7F4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bxHqHoLpaPU2jAY1C8clQQDDb34eh55QSLx/wPUQ/oo=;
        b=GXO3xVpkfC3DMtAGc+knRR/UOZ8IKkPTTgAa4QdgeS0n73XDRjZkqFBr2xNE5vHHFi
         ByU1gOdLcEfMXQyrdCFmp8cU7ctFvzIJYxWsMuxMI6O7WQIS/KOa7MQf3RyqRMJMQtzn
         TcSw139NSBpNgXetiz8iTUfylifA9eEz74Y6oLKUAWX4eMgCY2rKzB7CScnNYh9vjmcd
         zmArVQzWPoznM/X/oyd7aQa1ImwBpP7mfQP45r+b5K7tJW084hRLba9WkHgYu8dU7qkC
         O2SadWJX3gTg1r9qAquRwcGiDoiK4OKyMIXGflFVcEJZsYNlrKCubnxL9vn2BJk6S2lC
         9eFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D5PESK9q;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bxHqHoLpaPU2jAY1C8clQQDDb34eh55QSLx/wPUQ/oo=;
        b=DM3LA8A7ju7KB0+7xyqm7Y3rz2cw0epwhQ3YSP9SOXujzlNEJWo8jo/cGM29tL0pOD
         mCwumv0UhNVbwcPYenvNcMfqFE4Mnh3zUIOWu71XlM0macpi5Vn0l6GaLp8PGrCO865a
         UJfBtlsruHUyGU/K5PJhDr1osvI5CoXik0vLzaRxiSS+Dxqw0CpA+lXmFebEu6kShtGf
         /RtigGeod4lSFaUdzf9WVTVH7eoDkqbYQdMEKakY0RDdtNVRGC6rm5mLgsXh87gVY+YE
         DS/GYQajQgqFxjkAlJqmbObUS12nD7JAT28ka8+iRwXnjMEV7f7AMZ3yXNahhjlLmxtF
         yijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bxHqHoLpaPU2jAY1C8clQQDDb34eh55QSLx/wPUQ/oo=;
        b=ts15C2VGfY5o3E6796g7YwkLJaQsSX5jG67YQPxJVI5kRWR+c3looLIYnt3ov/1oTJ
         dtBnsSJfGH5SnvZncmZd8o+yB5t4wnDu5Y21uKEPA3uMOvXw3kelGO+5QD3zNEJIzfQO
         jGOXZFywXoDn1Xk8zLgUBJTwbh8vGdRFPN07lmW69jn04noASEuMgYHABu89iNG9ljil
         wCAEv392fiwk0PaF4+PWCO9xugZ2gujjKwauHZ/R7haiJjLfAXB4z95YscSMz/n8DUGT
         8NISJpm7vkEi2v63SEQkluI2L/YNluHsf54use5gXLy5ikGwQYJcjvgZV9zm5xcr8WPE
         LUSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531agqomzkpWqOm7dCC/OgnSEE4MEtnrIn9SQ3t351J+jmrmNYxn
	d0GvtmfVWcrWDURKuaJ52KA=
X-Google-Smtp-Source: ABdhPJy3Fy/fNpXat7MORoPlWJZ3oSO/QuVYnpZIne6C+osoOEwyL6xTj5Z77ftLKDrd1G4ZDW0AxQ==
X-Received: by 2002:a17:90b:17c2:: with SMTP id me2mr19938979pjb.176.1623686742910;
        Mon, 14 Jun 2021 09:05:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:24d5:: with SMTP id d21ls8950433pfv.1.gmail; Mon,
 14 Jun 2021 09:05:42 -0700 (PDT)
X-Received: by 2002:a63:c1e:: with SMTP id b30mr17985133pgl.118.1623686742370;
        Mon, 14 Jun 2021 09:05:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623686742; cv=none;
        d=google.com; s=arc-20160816;
        b=C5Amulg8a3RLqGMm2BISJB/ck1OP8MWlQcd5uUQlKaE3UAWJGf4nXeyddyqrWxWXXq
         zGIp4Eq4bncl17p0Cr97gozOoFWndddvsxc2maBpZT9RDLsqNcMGCfF7a/zfWkz6exnQ
         n54Z+3kq2cJtTrfioa57DD7RquAKCdauY9sE3LMoz7wwWetCOGsIfJ9GE1hQo/JWka8e
         FYePwmuMibufNmx2y7Nx5PerMQmIIJBKDP+vdTJTn6PhP4o43LCJvGL3kZrKaWt834bW
         WAh8d0V+M4Ps1pFC0BmDrBaKxGOeQrg6G/+LgrdDS9dEHE2AypT22LkMGU4a9fWfkVsk
         Z5Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=aDFM4HLqCSVdycnwG2jrfVEbxImV1zS0UB5Gbh8n44I=;
        b=xUOJy8tD1Y5Ij2LP45ZIhsD5RNWNHMqZ4dKwcR2eTm9k9v0sow9A2T6fgX5rugXoYk
         Gh6GIDrJ/qO2hF3zAt/bNYNbBn8XD22g15xJvV2JJub4qUM2STqaxIEgpNu+bT+npWt+
         CG4Cu+gJp6tXju90c0wqnft8vYNt9MIYsEwhqVhT7fRrFISzRhdWjufTGD8bZYk2HGNo
         Yqby6/RAu0OqyjE4bOhUlA2GKKG8NU/bQfB/ctAtz8WJ582/e8pNAtSsaXRT2ZwDRvIe
         FR4CEBYS14hdhk70CWuSnVw6rtGocvmuZzdi+eTQKHoZYth+ZZBLHd085q/aa0O2AFHo
         PgfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D5PESK9q;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id y10si1480896pgq.2.2021.06.14.09.05.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 09:05:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id h12so10894877pfe.2
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 09:05:42 -0700 (PDT)
X-Received: by 2002:a63:3fc6:: with SMTP id m189mr17883783pga.239.1623686742073;
        Mon, 14 Jun 2021 09:05:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j16sm14243500pgh.69.2021.06.14.09.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 09:05:41 -0700 (PDT)
Date: Mon, 14 Jun 2021 09:05:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [RFC PATCH 0/5] pgo: Add PGO support for module profile data
Message-ID: <202106140904.484E2337C@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=D5PESK9q;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430
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

[oops, I failed to CC correctly -- resending]

On Sat, Jun 12, 2021 at 06:24:21AM +0300, Jarmo Tiitto wrote:
> This patch series intends to extend the current Clang PGO code to
> support profile data from modules. Note that current PGO can and *does* 
> instrument all kernel code, including modules, but this profile data
> is inaccessible.
> 
> This patch series adds pgo/<module>.profraw files from what
> per loaded module profile data can be read.
> 
> The final profile can be generated by merging all these profile files:
> llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw ...
> and then building the optimized kernel.
> 
> This v2 patch series is still an bit of RFC so I'd like feedback how
> to do things better still.

This looks pretty good; thank you! I sent some notes, which are mostly
just clean-ups and patch hunk moves.

> The patches itself are based on Kees/for-next/clang/features tree
> where I have two of my bug fix patches already in. :-)
> 
> I have done some initial testing:
>  * Booted the instrumented kernel on qemu *and* bare hardware.
>  * Module un/loading via test_module in QEMU.
>  * Built optimized kernel using the new profile data.

If you haven't already, can you also test this with lock testing
enabled? i.e. these configs:

# Detect potential deadlocks.
CONFIG_PROVE_LOCKING=y
# Detect sleep-while-atomic.
CONFIG_DEBUG_ATOMIC_SLEEP=y

Thanks!

-Kees

> 
> Jarmo Tiitto (5):
>   pgo: Expose module sections for clang PGO instumentation.
>   pgo: Make serializing functions to take prf_object
>   pgo: Wire up the new more generic code for modules
>   pgo: Add module notifier machinery
>   pgo: Cleanup code in pgo/fs.c
> 
>  include/linux/module.h  |  15 +++
>  kernel/Makefile         |   6 +
>  kernel/module.c         |   7 ++
>  kernel/pgo/fs.c         | 241 ++++++++++++++++++++++++++++++++++------
>  kernel/pgo/instrument.c |  57 +++++++---
>  kernel/pgo/pgo.h        |  85 ++++++++++----
>  6 files changed, 342 insertions(+), 69 deletions(-)
> 
> 
> base-commit: 0039303120c0065f3952698597e0c9916b76ebd5
> -- 
> 2.32.0
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106140904.484E2337C%40keescook.
