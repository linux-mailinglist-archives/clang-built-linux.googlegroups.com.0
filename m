Return-Path: <clang-built-linux+bncBC2ORX645YPRBQWS22EAMGQEDJPYV3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BFD3EAD72
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 01:05:39 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id f9-20020a1709028609b0290128bcba6be7sf4722086plo.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 16:05:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628809538; cv=pass;
        d=google.com; s=arc-20160816;
        b=QKRWYKgm6MDko3IeWjJDwlAsmhuQsOTDALRwIObd4fy8+UbYEP7c7rVTqJBZadweiu
         iCT8rBka8Iyxm82X6/eiknMnPZDMYHjh73Qmnx7Au8SVmZ8NJQpQCq3X7WsYXTVLxrcq
         AIoD7MU2kIA2Lxu8EpsQS9+/D3irVGjsD2KQGwm+6iqq2cSjJOoeEV+dvpCUzqGkhtGl
         3LYeimrS5bsDrZ7H9BQPIeWcPXd0eYRbwoSxx5U+tVxorPDmXey3wte8R9VGew9tBWZn
         f0YtLY67Qwkv0zDVD8JsXIejZsfKgSISpTBt3ccCrO5Mju/Ld63A3JShzS5tnPO0TWPi
         4gvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3N524X0TrCzyRG3x9yq2Ms3IwCcaBmiVfcOqh+OEcLs=;
        b=0xTGyKXr3fOlamKmmnTDt7ec7gSSjwjR6ntkIRXrj8OdWbdi9lII/LGz1HAyYb4Mki
         gZUP7hR2be0nkbUjVRL3dsdiSfDlIj4XfvT4yKU9VczNGnO9PYxxQRwx4GG21CKtmaRm
         INuQwUmKZEzqTRJMyrI8WHusAkBjdD3yzFBQtHzNBWHX7SzK2ZmPRYQkpjeKiSC7TDvs
         kb6wjzaUiHuX176Cq0B8ldUtxU1xyjeQ/kkoIR7KjUa2Y1wAW5BKqkl4RTSiLpsmxxI4
         sdy1TZdpCwPBVe1ecxZxP8AtBIs9qIHig/BDwsDnVUlKt/dHwTruCatEB05urvBxVFgE
         uisQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DVRYoece;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3N524X0TrCzyRG3x9yq2Ms3IwCcaBmiVfcOqh+OEcLs=;
        b=tYPtqXsDVm3pVZ13D3+oTTg3GPrKFPj6cKhdAsCHJZpzRUvftf6vqFlfOdUr2uE9ot
         ItEeT5pu7XToTVbk47gULRzvHeDnRuJjCdCubc1E6gFE9TjZ9gX6uRlcbOO0bA/SL9kG
         fDE2/8janIbf2dyOuCW3t9rxJVRzhXcdrrPFXBc96Csgjt0uIz6PjfMywb9uqKUTNexc
         BMFuLM6X4VQ49dzN0mZl5U0VNGn87wKDuUatK2Y0+Cfo5HKE/RI4oQmFa/RQhNqo9Er1
         utgntYBHgnWTgoFyAlmCEvK3epeTGgDzbBIjVxSuCANG1OazPVnDOdXgRBQVrGyJp+S5
         xAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3N524X0TrCzyRG3x9yq2Ms3IwCcaBmiVfcOqh+OEcLs=;
        b=UBQCacOxDr++TpMTYkDdw5GjqpySqLyPY9KIE4QLj/MPeDllHJQQigQzaYWIJ615bG
         1ksoT7p3/eZWtC70/CRCWpz/y840QQ3BMwZFVGP0A7sRYSQrXfNuNhCjhyaH67plJ+ki
         y68eUAtnZvXRQE7JaA+34I/V9ADY8tG3O3ipz8prFfpco9fqjwfsQPnq4pkFDzM9eeNu
         +TNm9tX+TWGFoFGUxQWh8GcN4pqBG5XFumnXJ9ZJTDo3etIxSCwarYfPSJG20n6GF1Mb
         kcUjk+KV7pdnI6+06Pr3296fqbgf/h7upfsmgsDXHSy/urdbNw20ddKBUBEyvtQterRe
         aycw==
X-Gm-Message-State: AOAM533sNM9Y4E8qbGvxrGDVmGAsJX9dsBhsDVcClxfrhEXequLYcSYH
	x3eQybGh1kotQScutklEsrU=
X-Google-Smtp-Source: ABdhPJy3lW3k5WparDB1QfZNnr2aPIyaWzRRUOzHqjJwTQl06RZL9x/sjgJETLI7gK4TuTDQr0PLnw==
X-Received: by 2002:a17:902:70c6:b029:12c:c0f3:605c with SMTP id l6-20020a17090270c6b029012cc0f3605cmr5273836plt.70.1628809538485;
        Thu, 12 Aug 2021 16:05:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:99d:: with SMTP id u29ls2521943pfg.7.gmail; Thu, 12
 Aug 2021 16:05:37 -0700 (PDT)
X-Received: by 2002:a65:410a:: with SMTP id w10mr5945248pgp.343.1628809537763;
        Thu, 12 Aug 2021 16:05:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628809537; cv=none;
        d=google.com; s=arc-20160816;
        b=Oc208W8RQzp9v46jaKoFPtpOsTAHshiNIxJOklFFHaxSA+vyanveqSuRFSsDcZ8liA
         lB//tHRfxCE1YAbuOboYlxSTkFNGOIBJsUiJV6BJCB74x5vYL5vHkk6mF100U0EX8mSg
         EDOOhD+ETFw2v8vmhF8GZ/XeeQOVuWyk1bedHiClmF6eivL2z8YI4te+OyyT0uYeHtCA
         dJdOJi7vyLogN31pWC6sVA62KygpVib3LTtfDLW1L9VqJi7Eof5tmBNcCIammpFCFe9o
         IPbghOTxnw6bUH4Cpt3QB2e86Uecz/dPQzwLEV76IEGNRZcPIE0aIA4+EngOwKAQWTDT
         fI1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WAs5yGGrrPs05Rwlue3cPAfgQcKWa7aULg+SByGEVDk=;
        b=My84UYRqU8+KGlHarZ+uI+13cInOZxq3XyHFUKnmro6vZ7p54KVpuKbJMtU6VgyPb/
         npVc1owDiKXkGkFw7xl8rKJvfUyBbx5AdSVzyU/4t4R3zaFYmHiRFn3mM873kr78UryQ
         PH5XduZjS0cj4QReN85oo+bs/iVlLQFwKz0Tw/gX6kDwuEv66DBym+2ERYWMD/GciXHt
         SGe1E9xHNNQRmtOJCLKuloFGdh6UHBnc1u03I9CwLkaP1feH2cTRPMQvNPzQNquoMZvd
         7j0ARp2vZdhoXx+FvzDmW8LxhTn9UeOJOHmzINffKWWa8bO67xxAvhIUTjRICUxK2BXa
         xI+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DVRYoece;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id o2si636458pjj.1.2021.08.12.16.05.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 16:05:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id m193so15146583ybf.9
        for <clang-built-linux@googlegroups.com>; Thu, 12 Aug 2021 16:05:37 -0700 (PDT)
X-Received: by 2002:a25:26c3:: with SMTP id m186mr7496137ybm.293.1628809536796;
 Thu, 12 Aug 2021 16:05:36 -0700 (PDT)
MIME-Version: 1.0
References: <CABCJKuei==gaaKw0qH1WkshcRyUbqdS_WGRWr6anYAew1HHT2w@mail.gmail.com>
 <20210805232741.9501-1-treasure4paddy@gmail.com>
In-Reply-To: <20210805232741.9501-1-treasure4paddy@gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Aug 2021 16:05:25 -0700
Message-ID: <CABCJKue6dYBYTJtyX6oE8Lq1LVHcS+vq+Z4cRE2-Tut8GRHjPQ@mail.gmail.com>
Subject: Re: [PATCH v4] kallsyms: strip CLANG CFI postfix ".cfi_jt"
To: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Jessica Yu <jeyu@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <nathan@kernel.org>, Miroslav Benes <mbenes@suse.cz>, Stephen Boyd <swboyd@chromium.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Joe Perches <joe@perches.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DVRYoece;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Aug 5, 2021 at 4:28 PM Padmanabha Srinivasaiah
<treasure4paddy@gmail.com> wrote:
>
> Clang CFI adds a postfix ".cfi_jt" to a symbols of extern functions.
> For e.g. this breaks syscall tracer that doesn't expect such postfix,
> so strip out the postfix from the expanded symbol.
>
> Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
> ---
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
>  kernel/kallsyms.c | 23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
>
> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> index 5cabe4dd3ff4..1b40bcf20fe6 100644
> --- a/kernel/kallsyms.c
> +++ b/kernel/kallsyms.c
> @@ -174,13 +174,15 @@ static bool cleanup_symbol_name(char *s)
>          * foo.llvm.974640843467629774. This can break hooking of static
>          * functions with kprobes.
>          */
> -       if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
> +       if (!IS_ENABLED(CONFIG_LTO_CLANG))
>                 return false;
>
> -       res = strstr(s, ".llvm.");
> -       if (res) {
> -               *res = '\0';
> -               return true;
> +       if (IS_ENABLED(CONFIG_LTO_CLANG_THIN)) {
> +               res = strstr(s, ".llvm.");
> +               if (res) {
> +                       *res = '\0';
> +                       return true;
> +               }
>         }

I confirmed that LLVM renames these also with full LTO, so the config
check can be dropped here.

>
>         /*
> @@ -194,6 +196,17 @@ static bool cleanup_symbol_name(char *s)
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

Otherwise, the logic looks pretty good to me. Nick, are you planning
to resend your earlier patch? Should this be just folded into the next
version?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKue6dYBYTJtyX6oE8Lq1LVHcS%2Bvq%2BZ4cRE2-Tut8GRHjPQ%40mail.gmail.com.
