Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJVH3WFAMGQEBJ7N3XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C36F41F4FC
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 20:29:59 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id s28-20020a056512203c00b003f42015e912sf9667276lfs.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Oct 2021 11:29:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633112999; cv=pass;
        d=google.com; s=arc-20160816;
        b=npQJcPgXES1namSofqE9rqkj4o8hsC5vWVwxioUnEm11M8MzY8zPRm0OS5nemIhNdR
         8Yjw+3cQiXn3F91KRaIoUQutrk8CfDvR8xzRN5S+CzgEAhVPwMz+7qfNtrdgLXDXveEB
         1JuMKqnzSr3hjxAPxc5wQ2qhIC51uX0YH9ZjEuKrBuAw5/NSjIxfMBnOsOPJkq5/Qw+P
         KBeS+X8QXsAMk41WVpXf56jPWsKixq9pyDRzksprUIzN4rsv8l+TKMddFI5Ox1c1t99L
         0rWx0F9RHlDzfS+jerA9pF9Ztv3Nt6eZLjI72XXlPXqK3FZTdRnGEg1rPKohGGoymwN+
         3oxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=L8+hPHp7FCKRh/25rAmrtZi9JBuBnw19xA4jDdI0z/U=;
        b=B8pETBJa5UrcEew+UQ8zqmMbWOtXlfxzLGPm1EtVoDxKGX/qBTdtjejqUnFOg5H/cJ
         n2z0eeljmXVjTohAYCu39QDeotVN94Pc64fihY2/vFdUG8TLaPsKqj62Zzh3iEbojSR2
         019Ga1sH3us3y5U4rFcddcp/3fkl+zIZ9da1yi6/cZV31BAvCmlh10cua12BC6zTebes
         aYL55fyL/POx38AxjdIoHRW92Dd6lLJu7HBNy4PFxv10q+WuFH/2QyDKBjrTgSb9tlFB
         P0d37aYiUmcw6+N73QTbGROmaYRABHOOWqZVGzGhBRqCWe0a8hZ0mMm+osbKH8BMlE3P
         QipQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Mw49pwye;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8+hPHp7FCKRh/25rAmrtZi9JBuBnw19xA4jDdI0z/U=;
        b=ShFowiUWGJYa9sm1UPyuIxIgIF13IfCqQRFzaFtzWt+XSPisJmz0agHf3hXg8WEq9J
         zcJlDvP1FHrB1zSiw7rihP9U4lXS9iKYWGannmfIotItRPQnHB1mkiQmuSpZL9AO/XM4
         8PLsr0rDtVHkQMqmOh9UYSFsBxfICQVCbMoFGt9MiSfa3iQ/7i+aMwHASiQ1NoCysFCx
         3kQsvffkjexKDiZWpX17q3XjfUqObVeVy1H8IHDLhnqPMiCTwtCF9JvRfzX3FUwWEMe9
         wzGY8/rrh5XSdiWuZEQtBXRRFjOBkHOQTEqrQ3xkaBUfHxhdGaUyljvrTFpNsrpu9LMC
         PWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8+hPHp7FCKRh/25rAmrtZi9JBuBnw19xA4jDdI0z/U=;
        b=XbuTHrATqVwOcj6YiSHd+fqj/M0NGF4l9UWgO8QVwnSKa4sJltu3EBQc3He3pV3DJc
         +75db3sHeGpMbHVTsUQRs50JvDgQSLoDOIe0JMWWaaGzJAHXnclpBAuwqKe6V2Sg+8FA
         Cz9fWtI2FfIVcjXlyn/ATothTZFwpShsXDTI5zFI6Ap8WWaEM3MoE9+a6nXMPZHoUR4m
         T9DMx8UslGEqWoQ1MkduGQQQ+XV5AiP5l0/vs4qWxULwyjAOjuYzJjiozDeSTAc/Pt3B
         iBK5x85rPkWSm/6RWb29vBcobh/+MRY1lhCOQnOm5p2zUjeXbVOE6FJ08Q0IE/aseyFx
         D1ww==
X-Gm-Message-State: AOAM533jO3moIQAcXNbCllYg8Ptl/e+JZ1p25QTwKpLMOLzy8BeHTyni
	q2CfPo362halE5JaUhUYnYk=
X-Google-Smtp-Source: ABdhPJy5g6WdKTlFFKQ7nkBXmpivuG5OtuGfGwFJj3nd/lF4h+u/EoZwkiqZE2bUYcW09loBlQNEOg==
X-Received: by 2002:a19:490d:: with SMTP id w13mr7037282lfa.30.1633112999210;
        Fri, 01 Oct 2021 11:29:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:240d:: with SMTP id k13ls2117582ljk.3.gmail; Fri, 01 Oct
 2021 11:29:58 -0700 (PDT)
X-Received: by 2002:a05:651c:1549:: with SMTP id y9mr13744562ljp.105.1633112998132;
        Fri, 01 Oct 2021 11:29:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633112998; cv=none;
        d=google.com; s=arc-20160816;
        b=uPoQLiX0bkJm7jjlEHy4N+giK2/RyQGNobozLMIOWW25FcDycZeLfTRVYulPsR3HyC
         arkO88uwLTKT3tixBDAin/enNWMCiPZUYUGypaZoeNGI6V+0w7j8o963nNyblkDvfALr
         nBxPkyiOndAYe9UE5hT4+6b0djXhHRKX/m7lYeBrZniiuTNPq94BfGjGTOsoCHDCio+4
         03W3tCsaMW4bifgLCTDnLKd/5EI5F3NY+X7NiraPvWS0ipeS6GtEs+8jZBBm2qiSDn3b
         NWtY5g8AAQNn+pbmdZNuYD2NzUfyHiVNdwGEba1heEIwnCtd6ah/GNZxZYi0p6lxgEyU
         +3/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XC32+DbuSvc3K5dOrrGub5C2bY3YFjXWwOoFToPcL9g=;
        b=M9Vh/IWMmffQvJKeLBw3uioLuv1xT/lmvsCLupV9OZlJ5JEF37dUyIIAJBNS9vdGUv
         CcZ+/N3ZRi3OXACdlUC01+l7lU1IWM5FfTNWOxApQ0UbEhh5xJCv9R7TEDFO4eaoeA5f
         cwHRVmctSxBM8IU571XxxVI/XvzN1PhqOnTCZ901aNnh54Tx16QSj4aufXAiYUkaN/Zp
         sjY6+VUWWuZdKlbNT1ENXEQDX8pyHi3yw/lFn/KTj/Xo9RDZjBvPbUWmgrBknacRvb1c
         ZDAOn3B7lH91ZCFbF9z8bBqyAOnl4ymnvPooBCUWt72gMMtB0+hyuhP8c7t89g0fLjgA
         Ja1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Mw49pwye;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id t20si303035lfg.12.2021.10.01.11.29.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Oct 2021 11:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id x27so42201365lfu.5
        for <clang-built-linux@googlegroups.com>; Fri, 01 Oct 2021 11:29:58 -0700 (PDT)
X-Received: by 2002:a05:6512:705:: with SMTP id b5mr6829134lfs.82.1633112997677;
 Fri, 01 Oct 2021 11:29:57 -0700 (PDT)
MIME-Version: 1.0
References: <CABCJKue6dYBYTJtyX6oE8Lq1LVHcS+vq+Z4cRE2-Tut8GRHjPQ@mail.gmail.com>
 <20210814124224.8551-1-treasure4paddy@gmail.com>
In-Reply-To: <20210814124224.8551-1-treasure4paddy@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 1 Oct 2021 11:29:45 -0700
Message-ID: <CAKwvOdmXtTE15mUb5x7Lq==emFwba7OGLfx9skayP-G9NqeiNQ@mail.gmail.com>
Subject: Re: [PATCH v5] kallsyms: strip CLANG CFI postfix ".cfi_jt"
To: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
Cc: jeyu@kernel.org, keescook@chromium.org, nathan@kernel.org, 
	samitolvanen@google.com, Miroslav Benes <mbenes@suse.cz>, 
	Stephen Boyd <swboyd@chromium.org>, Joe Perches <joe@perches.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=Mw49pwye;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Sat, Aug 14, 2021 at 5:43 AM Padmanabha Srinivasaiah
<treasure4paddy@gmail.com> wrote:
>
> Clang CFI adds a postfix ".cfi_jt" to a symbols of extern functions.
> For e.g. this breaks syscall tracer that doesn't expect such postfix,
> so strip out the postfix from the expanded symbol.

$ llvm-nm vmlinux | grep -e 'T ' -e 't '
...
ffff800010cce56c t xhci_map_urb_for_dma
ffff800010cce56c t xhci_map_urb_for_dma.86d975cb70058c10e8ae4c2960627264
ffff800011227f28 t xhci_map_urb_for_dma.86d975cb70058c10e8ae4c2960627264.cfi_jt
...

so I think it's not just the `.cfi_jt` that we want to truncate.  Sami
asked me about sending a v5 for
https://lore.kernel.org/lkml/20210707181814.365496-1-ndesaulniers@google.com/;
I was looking to rebase your v5 on my patch, but Sami also noted that
here https://lore.kernel.org/lkml/CABCJKue5Ay6_+8sibzh5wRh3gPzV1g72gJ9m2ot4E1ezj8bpHA@mail.gmail.com/
that the separator was changed from $ to . for other CFI symbols in
clang-13.

So I think I'm going to "combine" our patches to truncate after the
first `.` as long as CONFIG_LTO_CLANG is enabled, but still check for
`$` for clang-12 for CONFIG_CFI_CLANG.  I will credit you with the
Suggested-by tag; stay tuned.

>
> Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
> ---
> Change in v5:
>   - Also remove explcit config check for postfix ".llvm." as LLVM
>     renames even in full LTO case
>
> Change in v4:
>   - Remove redundant check; irrespective of LTO type (THIN/FULL),
>     LTO_CLANG will be always enabled. Hence will be used as entry flag
>     to check various postfix patterns.
>   - And prior to stripping postfix ".cfi_jt", added a comment to
>     justify why we are doing so.
>
> Change in v3:
>   - Modified commit message to indicate fix is for Clang CFI postfix
>   - Rebased on recent patch from ndesaulniers@google.com.
>     https://lore.kernel.org/lkml/
>         20210707181814.365496-1-ndesaulniers@google.com/#t
>   - Fix is enabled even for CONFIG_LTO_CLANG
>
> Change in v2:
>   - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
>     extern function name.
>   - Modified the commit message accordingly
>
>  kernel/kallsyms.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> index 5cabe4dd3ff4..c8ef618e2a71 100644
> --- a/kernel/kallsyms.c
> +++ b/kernel/kallsyms.c
> @@ -174,7 +174,7 @@ static bool cleanup_symbol_name(char *s)
>          * foo.llvm.974640843467629774. This can break hooking of static
>          * functions with kprobes.
>          */
> -       if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
> +       if (!IS_ENABLED(CONFIG_LTO_CLANG))
>                 return false;
>
>         res = strstr(s, ".llvm.");
> @@ -194,6 +194,17 @@ static bool cleanup_symbol_name(char *s)
>                 return false;
>
>         res = strrchr(s, '$');
> +       if (!res) {
> +               /*
> +                * In case of non static function symbol <funcsym>,
> +                * the local jump table will have entry as <funcsym>.cfi_jt.
> +                *
> +                * Such expansion breaks some built-in components,
> +                * e.g. syscall tracer. Hence remove postfix ".cfi_jt".
> +                */
> +               res = strstr(s, ".cfi_jt");
> +       }
> +
>         if (res) {
>                 *res = '\0';
>                 return true;
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmXtTE15mUb5x7Lq%3D%3DemFwba7OGLfx9skayP-G9NqeiNQ%40mail.gmail.com.
