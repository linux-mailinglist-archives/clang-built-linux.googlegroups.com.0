Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBU7K2L5QKGQEZGXMXBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 623ED27EF7B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:41:56 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id z12sf1351854qvp.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 09:41:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601484115; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZbLyefRFOZka5m4/laZAP6fdbhI0DZrF/j893LBzrfZ4UytIosDf1UPVwN441OTUi
         WdJZTk2D7xmMqUtpxcit/sugpyocU1yLgZQoGvk9w+7+FNiYF0KHn/zZ9oVIFkTHtShn
         rWuPka47N0Lxoax4ZL2hWE6RifD7dV/c1ntohdgUrINddHv0rTyzFTMs8skNTNT/1Y2k
         UgrssmAYqo5WcH94ocDv132JbS7sA2THsJNaaUaEJe3RdIoL8KJBBOmCOJabR7rnYGtu
         /eOEh2zRJ0wXOQ3H/oR1KvJ9hATEMprgymhctjBJtf8gb8ijuVHLxnXJfCHyKCx/Q/9M
         iQUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=rDoY6LYiXF4IuFxST3BTrqFl+wtaHk/8c/MSpB0tA6k=;
        b=ua5G9xwDADolCXmpFMRwKTLmbRwui7kxq5oCJMN2ut/C86LQDMI+nkliiNK+1fCynM
         uusDVoS0kyLHs7HGY1EPa9mcvgBWNV1Kc4j+ez7YzV8XfDVuF2MoKvXBJP1/18QMt9xl
         mi1mZ/kAhXu1Nv1dAcNIdW/KFOuKnS8v2SgmCB40FdB2g1uIkzFGmURHBgNIKbJMNXe/
         Kx26QMWdCHBdgmvHu/uo/M4QgOuA51jKbkdrkUR2aIsbhZSd0t83JJjWRJlE9ZKankyV
         GID88MAKY5yCavfQzze/e4+RFqEUSD+OOwrXbxn0yFKQ+MwVVA+Ji7jCVgv99vAsV1xy
         KbaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mjIYeO8s;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rDoY6LYiXF4IuFxST3BTrqFl+wtaHk/8c/MSpB0tA6k=;
        b=q9cIx/wh9u0hpVpwfolD/s5aUVhk6wdsue5c6Wso59hTF/NKwOiTKqQWOi4BliHd/K
         QpVefNRD68PRoJEEb7IISlvbcNoswxfi00xVrEXEONM3eAjKlC/ZIMSTpObctf57NfAD
         6EAXB0yXpu7EfawWBLyCogFuKDwShvGytSajeUOaz1nRfR8NFBvHtBvp3EQY2CQvEN2v
         d5JOtqt0eZfeysKS7qwqzjaLovQTCjaJ1Tz9BSMjbDpfsEqp++zdHkQBh80aOEHwaLy0
         +FZfuvSSmQaNs2qBNsI9PsMBYvA/KDThVn6XV7VUGfscIj1zB79Ks8mfLzw5wbKzzUkn
         geug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rDoY6LYiXF4IuFxST3BTrqFl+wtaHk/8c/MSpB0tA6k=;
        b=mJFIEytZ1jtCoGXh0ik9sENxD95DBmkRtji9n1/DuPusCX69CAazxPxVGUYFruV5N1
         d0bZtpi0vswcnIEyYS+wh8OiPfK46pAeEvUEGDTMfK3NME/NIdCoeH8XfOjN+RJ0zHb7
         6tRM6zaJANJ6stEBsm+99+qS+eqtINpS2U3WeBAuR9pdpTXKQeWE0ayf1IoHbfcxYeL2
         7dhz2czToe2WXOQIeWSscf4l+y1tDLtUWE9/zZM7QWS5XfPeOhsoWKrPOYh02hLNBNWT
         6WYKY/c7SBM5XIdezz22h9nJmRQ7wgLVuUS9fqNkOsugPTRImUxZspSlmgTaY6faIslq
         p5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rDoY6LYiXF4IuFxST3BTrqFl+wtaHk/8c/MSpB0tA6k=;
        b=FqoNlzeYOW+mh8qXTbmGyYb4iLF13w/geaeM3qI+nKQmLSLry4WLAV2llZQqVaI/eN
         ceM1eOMFqjZb7HGySjcnS41wQsKbb0fzzW/e84i+GL7xavg6u+M/6gKCDULzUH3+A9+0
         oOBfhVFw257i0rPE8KbMp1gxoNRXNIIdu3NYxu9rAxGV1tCzTeRReY1OyuQ/c8A+ba1I
         8XjQWCmnADR7Pk5n7Yx12AdArdIPD183StDATbMN666pQeQWaZ/xo++3NIFHy5QB2c6c
         59uhF1fbMuoKFGivRKHTKiYfxY9y+llFFkhYailjk+rqLM9wCveWRrv963sPXvhaLzTe
         6EZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532q8QVt7Z0D0E/FQJUKMlLK68f2SutYQ0S9zBpiXNM2bzY6Z8sk
	DJew2b9ioJxC2hq9ZZaEHQY=
X-Google-Smtp-Source: ABdhPJyDw0MAlIgEajKpv/m/9kUbE1W5q6/7gE7ZyjHosfDtcfuWcMfJH3W5XSZlS9TYZh4CEwvwTA==
X-Received: by 2002:ad4:430e:: with SMTP id c14mr3228763qvs.38.1601484115451;
        Wed, 30 Sep 2020 09:41:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:728e:: with SMTP id v14ls845404qto.4.gmail; Wed, 30 Sep
 2020 09:41:55 -0700 (PDT)
X-Received: by 2002:ac8:31d4:: with SMTP id i20mr3217986qte.179.1601484114469;
        Wed, 30 Sep 2020 09:41:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601484114; cv=none;
        d=google.com; s=arc-20160816;
        b=zOKetJf36yCxPDYfSGXKiBUHxOBfxo+Zf2xBcEHr1Ux0XcRAyZVdAuMuMHKDiN5P/f
         GUCjZWkNLpeMHOj2YMawk+JCyx4XivLWT8wjHtRJvZwmBVWDU9usys0tGOJ3ManuDU90
         67xDflLFxrZHIJLxBxWlZnNxLlPU25aUBooe76/6MJ4fxWvHm7hGbA3UMPjgjFny+VVi
         Vir+Er8dakhSxTJo3vxs9ONpMbMgzRKUxJMLHRkUBtsgwM6ZGPcjnplKatro/DbfsLAj
         +v3ybLNvYwovfSnByl26BtpfyAp0b1aEMpqJKoFZYlO+kZfh1AIW/1lWb2twmquepRth
         Lqcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5ZxDJXFnuUJY5eB85Tg10Agt73okBGLGzpTrO/59fjc=;
        b=vpOt6xrcjdHAtOnEkb+dVVR0OHr+gd52u4VtTWgOFoeeNEGWOmim7lv9bCHUfrJJvD
         IQ8rsZmB2NAJ7T/1HznE0tHP/9c9y8j5TK9unDjCMtm+MMD+O57PVwB0fS9AO0qMCb+w
         NwC+C+HVJzw2B4c7k+jnEGKfAzkEzr52/+3pJDL4RzclBTfSdcE+2CEbk1KPGKelnWTl
         vwLgsDPto44TWaxS3scaQJ4s7NpbawQxs87FpvX5x/xj8dXYA3nGJnwF553tcYzbQ4o/
         +emJURJStAMZ2aiWT++8LPUkcU7EP7hYWY5SywaoYg8o9c2F2M4sFFrGZvdzYoSGerbP
         tDZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mjIYeO8s;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a2si144010qkl.4.2020.09.30.09.41.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 09:41:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id w16so2404580oia.2
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 09:41:54 -0700 (PDT)
X-Received: by 2002:aca:ec50:: with SMTP id k77mr1862213oih.35.1601484113963;
 Wed, 30 Sep 2020 09:41:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com>
In-Reply-To: <20200929192549.501516-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 30 Sep 2020 18:41:42 +0200
Message-ID: <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
Subject: Re: [PATCH v2] srcu: avoid escaped section names
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Paul E . McKenney" <paulmck@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Josh Triplett <josh@joshtriplett.org>, Kees Cook <keescook@chromium.org>, 
	linux-kernel@vger.kernel.org, rcu@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mjIYeO8s;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::244
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

On Tue, Sep 29, 2020 at 9:25 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> The stringification operator, `#`, in the preprocessor escapes strings.
> For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> they treat section names that contain \".
>
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Puh, remember one year ago an overnight bisecting to catch the root
cause for "escaped section names".

The two patches I see - this here and "export.h: fix section name for
CONFIG_TRIM_UNUSED_KSYMS for Clang" were new cases?

Do we have a check-script to catch/avoid such cases (Joe Perches?)?

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
> Changes V1->V2:
> * drop unrelated Kconfig changes accidentally committed in v1.
>
>  include/linux/srcutree.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> index 9cfcc8a756ae..9de652f4e1bd 100644
> --- a/include/linux/srcutree.h
> +++ b/include/linux/srcutree.h
> @@ -124,7 +124,7 @@ struct srcu_struct {
>  # define __DEFINE_SRCU(name, is_static)                                        \
>         is_static struct srcu_struct name;                              \
>         struct srcu_struct * const __srcu_struct_##name                 \
> -               __section("___srcu_struct_ptrs") = &name
> +               __section(___srcu_struct_ptrs) = &name
>  #else
>  # define __DEFINE_SRCU(name, is_static)                                        \
>         static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);      \
> --
> 2.28.0.709.gb0816b6eb0-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929192549.501516-1-ndesaulniers%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVgfnVQ1%3DzjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA%40mail.gmail.com.
