Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBNEXH5AKGQEXDLHWLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 398CE258F7B
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 15:52:07 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id n19sf559314oof.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 06:52:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598968326; cv=pass;
        d=google.com; s=arc-20160816;
        b=LYSLbVrBO7tOtItYEhsTrGUVB7HQ4wKRJL/Ie0gZHtf832GqA3HGFqrpMEgTpRm8+2
         WOcriMUatNcc9/jc12Xl6rZsGAQEBq5PvZLoh2icxEnuMAYfdbKcyP2hZ4UtKng3rzOi
         ngEhZ7qYZYwdsmoFo9aRPkqnGb0AfTV9qOJF9eps/Ud5DqaIOj0yVoi++8I0/DQzPu2T
         7bJF0Hqt772enkDG4ntZ/pEdnsdDm76Ap8ujGUNPmfRUivO7mns0QTLJ/UEV2dlhOC0Z
         BkQX+lozmsphDA/sFOWnea/J2wkd9DKxhcIdQhm7Ocn9V1htdTK9fCGaroyfuRu+kLbI
         i7qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+INpV5NU04uNfg81Vyhc+HYcZXUWk40UVUdct7qU+Vg=;
        b=AHpeTDrub+5xSNNeen/2U7OGcbZ/VZnEB/JUmmvS5f/mrPeBcTUqoKimnWhmirzjCO
         RZpkSB95sba/I6ZUrLa3cHnf9kxzLjBgzi7PN+z/urgbhxTKZoh0eHFm3AgMlXNRD+de
         1szIn8kPedDYfoYjve5xyJ2ed1NXkYL0EL1/6Z3IGgs/XTnEB+Pv6nrSr99czpjNJMj2
         i1CS3YviPWxvBOMXGrepvGzcUB/CP6TB9PtSJBgBxzqX/ixyjjFGJO36AVO8dM0NpyeO
         +J1kmliVHWWK1LI/7n+7YbfRHmcuuFtx73PzP7HJMc97YqaNFeWNQO1RPEOP/L5MOmyv
         d9iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RzB+6u5R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+INpV5NU04uNfg81Vyhc+HYcZXUWk40UVUdct7qU+Vg=;
        b=Mqkr5tHy97nKd7MnG027uLb+ZUT/kdALsbJOON49O7IF44CfMC39KJG/7J3/78w96d
         JvF+KyPd9w+8M08UFg/W+ZAhZl+zPKSaVtVOmiqrr0QRv2cz5naYiglH8bWGpUcwxf7R
         zxK2/Bij4ip9YfWqJUtlMyJqV5LBOh9/9o8hPgGhNKsqPhWxUPrUaTXDEjOewWfsXs3H
         gzx5FSz2fVKwG0klTagDiA96S12MAQOXcNOXg5TU7NA0zgj6uDEp0e1PENR+q7jZzp72
         EAHScgZ0bfX9/3hbbtmn0ssf1Lp2OsrgF0qBkPJEzseBcm0HdDooFs+cgQLbDXW99IDx
         jPCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+INpV5NU04uNfg81Vyhc+HYcZXUWk40UVUdct7qU+Vg=;
        b=piG+pkJAko/S5bffmFTltpT+ui0Ne/LQFuu3N1WXCew8BPlPP0EGNpXTfqhnU3pF06
         r7CjL3vD6+W64vv/AqQWjwSBfEQPFtS+WGrP2Pm1L7CnUb1CBZCDPSg/PL5kw6biwW9z
         Lq/4RZ0W0lli+TEK1W2xQbUPQo1+VB1bvF710u+D5IDu9hffBv4rFqchicyl3pdx4TSh
         mTwfJYJmTRWjqZNDPEIaxWZaTKnxmVBw/2lMkklYyfiX3vH0a86ICQXjIezZlvofWPu6
         A30832fByr/mrugFkQL0qKtDYvCF+KMdsak7gm0zO4mQQnSKSHae96tr1oFM1jp4gzBI
         djqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+INpV5NU04uNfg81Vyhc+HYcZXUWk40UVUdct7qU+Vg=;
        b=tHvojDHO5I9iErzUogOUOIj7U8Mimy0TUnIkSvIbuJ2wech7Os2ijeEpFE+915kbq6
         nRxVnlpw8EaqI1+nytVwtd6wumYzjiSZyyuM9mVaFPG2X8IPzIIhOPQjNYMDJIkI7U6Q
         sFpVnTqrglJa2IENIS7QsKT7+0RkxyacLFT69zrTAt+QTb1oLGPTnt8ULdBbfgTzvWru
         IRE4EKHoPR4MaXS1y4oi/2H3/j9Vii5fGGC9TCrVm5Za9c4oglpm0hY97VgGtz/OxVwI
         bua+f9Fsxain2I+3fwUHUr7dPOsBkVtKo9P0nVKBzjOX+YboSyhPTI4Y8PXYSXoEsSa9
         6cPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gfJ2BFA/dZMdPVAu8Hh0BzY8zq14Jo+QvGKgsNbntrSu+e/Dc
	FvB4CcwX3zK0peFDrvMTf6o=
X-Google-Smtp-Source: ABdhPJzCmFunYBedYBExlaWhT5bXeHJvjH4meSIugGbqWmUdD7m/gWW+dWSOzql+OILAPKK2DZh9FQ==
X-Received: by 2002:a05:6830:1e30:: with SMTP id t16mr1525881otr.18.1598968325787;
        Tue, 01 Sep 2020 06:52:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b541:: with SMTP id e62ls283208oif.2.gmail; Tue, 01 Sep
 2020 06:52:05 -0700 (PDT)
X-Received: by 2002:a54:4101:: with SMTP id l1mr1189446oic.131.1598968325408;
        Tue, 01 Sep 2020 06:52:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598968325; cv=none;
        d=google.com; s=arc-20160816;
        b=jgFTG9UVOb16/TjBNZtSjRAbxN5gnx2VJt97N8/8gF1PW849zZGUtbqOmfjYL3wf3f
         wHjUvwRerptLlTtXnSb9JPMTxhu0Tc+6LqPcnYeaRd6k77Dit4epqo9tZDIYRIdCbTs0
         DJyoDvl53A5eWHXmFEcOPJ+juH5s+SvM2AeqXh1fFw4i3oH3y/v9IAq/EaEzOmNXqJ3k
         J6liMXbYlPNavpDsxMDBHS1+RZV/T6XJ52uwEUrziVancMQaAAhNrr35wEDNeD0tQ/8f
         /ySPc3xVlLE++/kLby+Sm0yApV8FFXNBbtgp6cUV8pzVIqTjeGnnrA1gUBAGFXxTff5j
         QSzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8hcm2K727CJua1c+VIHcKsQUWGaU38NC8nW5M5njWS0=;
        b=GtSKBN09h5y7glzHQnHocQG6TDrfF8ZPbSe+mHmiFiBygnVsd4V8cyvvIeZ9ki3ugR
         zCbNioH2FvGdN0KlA2Ot8ss3TJvUazo8yGiGmKhwvH7/kFa0LI8ICIqcVd7qlMeMlneC
         cN/No33Ne23uB7JfeGhrCcxMzxtACXWfpI4TVUy+nBaI77tCLNNJXJE4r9h9+TwAQTlE
         pkebMcD2ZqOxLyNN8WwGaBo3sIDqE7KFO9k7s64DkeoQKzF0c3867CGpjzBmb/0z7oyu
         nk75YRYirLnaqDJn/30UIP0FNyBi0VUg1VCzVfDdRTvFDGLBMkaPI37BFZ4UWFLzMZv/
         l9yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RzB+6u5R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id x50si66358otb.3.2020.09.01.06.52.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 06:52:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id u24so1196808oic.7
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 06:52:05 -0700 (PDT)
X-Received: by 2002:aca:ec50:: with SMTP id k77mr1149644oih.35.1598968325175;
 Tue, 01 Sep 2020 06:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com> <20200901002326.1137289-2-ndesaulniers@google.com>
In-Reply-To: <20200901002326.1137289-2-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 1 Sep 2020 15:51:52 +0200
Message-ID: <CA+icZUXZAsenwohDCiUb9ZvtJUfFOJV6xHFiekfMPJh68UGvPQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] compiler-clang: add build check for clang 10.0.1
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
 header.i=@gmail.com header.s=20161025 header.b=RzB+6u5R;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242
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
> During Plumbers 2020, we voted to just support the latest release of
> Clang for now.  Add a compile time check for this.
>
> We plan to remove workarounds for older versions now, which will break
> in subtle and not so subtle ways.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/9
> Link: https://github.com/ClangBuiltLinux/linux/issues/941
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Acked-by: Marco Elver <elver@google.com>
> Acked-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
> Changes V1 -> V2:
> * use a more informational error, as per Kees.
> * collect tags.
>
>  include/linux/compiler-clang.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index cee0c728d39a..230604e7f057 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -3,6 +3,14 @@
>  #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
>  #endif
>
> +#define CLANG_VERSION (__clang_major__ * 10000 \
> +                    + __clang_minor__ * 100    \
> +                    + __clang_patchlevel__)
> +
> +#if CLANG_VERSION < 100001
> +# error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
> +#endif
> +
>  /* Compiler specific definitions for Clang compiler */
>
>  /* same as gcc, this was present in clang-2.6 so we can assume it works
> --
> 2.28.0.402.g5ffc5be6b7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXZAsenwohDCiUb9ZvtJUfFOJV6xHFiekfMPJh68UGvPQ%40mail.gmail.com.
