Return-Path: <clang-built-linux+bncBC2ORX645YPRBNG5UWEAMGQEUFXKF3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D83DF28B
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 18:28:37 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id b9-20020a1f99090000b029025cb7d96adcsf3179623vke.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 09:28:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628008116; cv=pass;
        d=google.com; s=arc-20160816;
        b=cHI6pt0+V+tBgfLZ9CcbDiBCCDTYVTEDM8G+Az8QR+fjJD9lKFuQ4l3kBcBlWDRl5c
         giVmF8Zm7V09JoaV86ufcn8Qp34TGT5HCVWOYPQ0+Pp+pT6LkRrXVGopMxSC+DhnDKfY
         DZ6nw2uML6PhmSyL0jeZ/ruN1txMqn7lIKxjpss6yflKpgqtCtxW2fZLn9fDJmm7cgAw
         d2xnu3zu+2GVGv5K4Dj2/qEyqOboKmmfknn5eqLwWvih9fxn6ZOKUlGK04QA3pjOeZ7S
         g7XPolIIpZCmGwYNqucki7xLTq9Jdahl3zoRlzdjmgELW/J+LIjKcWbSOgTK6pwpqLJE
         Sxfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/6ALU+6drZNfVfStKE9o6u2nwOs9YI19twlWKZ0g3J0=;
        b=UCBOgRTwJq+wb5D0/cjndp14hEmyLOEJ5GuJ8w9n31ZaUXz/lAQuj0sTu4kR5Kyb2R
         GXINIy9jJfwuh0+VtW8uz4dNh8CFm/++rNtBo6w0TOTs2vSF/1n4pOC/qftOlrZWFTQl
         JFsFhcGICprKR9GtqbGP/LfYo28aA4+2AAqoPH80A/0Aqm0ziLL2MlublIc9JfsS0qRg
         jFLcBw7fIr5mjZr4wSZ5M1kCPjX7SZqBuDUXOEOKSoJrrz9fgQeTEdzrJEoqNVvvpao9
         ZPA70ZvB/ltT6GZOzF0lxNJC7GtFBBKWAsSKgrxSizspmSHDoN+xdB+Q4jntr78HinwG
         Fm9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ECRfHDay;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6ALU+6drZNfVfStKE9o6u2nwOs9YI19twlWKZ0g3J0=;
        b=AoqDPrWsk7ym+uzZFIwvW7U14rS/Uzion4Y0vryV09fO02tUdJgbd1qDFxcB+1Ry+G
         WDwCSJomXI7/ordgAKZHDeCd+ZYvax6X7TNV8aewHCJhuladzyLkl7xQEhCryQkhd5Se
         z76qQXu0eZowThmrHs/OUm5xAQmIsceDMuM2MnnhppSRoJs3BjyFo0rEY4PLZWoNAD1K
         E0dXG8JTlptdm7RtcB3FydB0VWOjLJx7B0h6rZdCDw5hP+BM40dpNBpT3yOvU3CVDN3x
         CRgIJ8SUtVyiUvAfGYsVBImbLzNAhXLmoJ7i23m4nVd6oMJUWroHr2xIBiMCrgLmv4xX
         FwgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6ALU+6drZNfVfStKE9o6u2nwOs9YI19twlWKZ0g3J0=;
        b=EuUWD+3x4QOH2Rc4TOmne6vj+xflOtsrVNL9iX9e+5XuXVa6Cx7Qiyxp9UYJ6W9yKz
         4TMgiztLQvrLobTHnFZvJRRnQ36CrhSVsqtkY4H6Smad6eIDz+bz0/drnRkXJevVMpyG
         wJ+4/jHDHwZItvKyBMcjFI6QB/P4JvPit9lhmNRVG7wsU3vbPHqukWLAwndQ8pMAOW5l
         y1hrJRbUKjZthK8lNRBvtoJUhFuMqUC0+R3Xv4/4qgl41Ick/bgOiQFSZMMi3Gj/fqsQ
         pxNCCqJjfhHzW98QM6vYKG/YCsQw+a9dyBar66a2yMii37JavqXKW94Sh4rp37TiSTc5
         Dptw==
X-Gm-Message-State: AOAM530GVYQumK5tfDzCTcYQUBZws3+U8MzZRdbhjg1Tf10LyYb9pjeE
	ulybdYCmmVWCkBQEmDsIK4I=
X-Google-Smtp-Source: ABdhPJwPs7RoFUlQVt6339IDI5unUlrlkO/TbhlTiLxAiRb1RhTKTtoemLhmnuXvqfAk/jE4Vm0lCg==
X-Received: by 2002:ab0:2809:: with SMTP id w9mr2308932uap.120.1628008116312;
        Tue, 03 Aug 2021 09:28:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c315:: with SMTP id j21ls410729vkk.0.gmail; Tue, 03 Aug
 2021 09:28:35 -0700 (PDT)
X-Received: by 2002:ac5:ccf0:: with SMTP id k16mr7136770vkn.9.1628008115702;
        Tue, 03 Aug 2021 09:28:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628008115; cv=none;
        d=google.com; s=arc-20160816;
        b=MxgHrKlCqk9ZMuClL1UFHF3cC4FN40UtQmLcf1gpLnO07SxpOgJ3KGOrB7B/2lCiL7
         ZQ4G9dn4w5Ss1X91V/NCgCjqnSWdmQ3NLXKZpL18mLvmL6oGl8Q+a6nCavxjIZ77Mn0y
         4TdrwQQW6wm/novfiZJ6cEZ47wOZAwEZprEeGmCyZhjp6SLzqqGpmfb4HiRWypCl664B
         3W+hBJggsm8B+h9uBBtDoy2xMqNVc5B1CD9GCElyJlOtlt3/cEBphGvzaFPcUCIVGv4V
         v2xTtVmNbHuEvk5wOhmFc1fd7JeuIAkOZnaV++UcgSgYjfgd2sBRaOgjYc6LU01CgBdf
         Gt7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fSb2IKKpERpkumP5sU1ao0eAPDF2DFQMa3HuULiiIYU=;
        b=jsKl65ELM5I3eULpxW5BVKq2soVT1+BGL62J4iuzAi+FomSWq4w8Kvknw9UlOFPd+G
         4Wn6L2QnmhfXq25RagVnT1FhXJfuAqlrehd18mAtxcp0DfH9shWE1OYMjTNcdfBKsKC6
         Kf4XF8skiqL4lNRlNMQvFh7D5ELV/r3NeHaC0TsF6Khrfka57Hdo6bVFGtX5XxJQ7Rdq
         wKTND5S5IA+5LZtU/29ArjfiBcXawPUjcTQXyz03oXSqrg125O8rZ/2DJmk75QMAopoa
         JlaaP4AEJFrOCy9/iw7AQdeSKrl3WZqfRzuVQeg1UWqhUk8iSiB4x9L6aPMuBrV1i1Kz
         3obg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ECRfHDay;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com. [2607:f8b0:4864:20::b2c])
        by gmr-mx.google.com with ESMTPS id x18si727682vsn.0.2021.08.03.09.28.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 09:28:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2c as permitted sender) client-ip=2607:f8b0:4864:20::b2c;
Received: by mail-yb1-xb2c.google.com with SMTP id s48so11678770ybi.7
        for <clang-built-linux@googlegroups.com>; Tue, 03 Aug 2021 09:28:35 -0700 (PDT)
X-Received: by 2002:a25:2901:: with SMTP id p1mr29523316ybp.459.1628008115237;
 Tue, 03 Aug 2021 09:28:35 -0700 (PDT)
MIME-Version: 1.0
References: <CABCJKudYRiK0KcMHGHeBFcr+Smwa9EM+NFeBpMo_ePqK+zHz0w@mail.gmail.com>
 <20210729205317.25685-1-treasure4paddy@gmail.com>
In-Reply-To: <20210729205317.25685-1-treasure4paddy@gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Aug 2021 09:28:23 -0700
Message-ID: <CABCJKuei==gaaKw0qH1WkshcRyUbqdS_WGRWr6anYAew1HHT2w@mail.gmail.com>
Subject: Re: [PATCH v3] kallsyms: strip CLANG CFI postfix ".cfi_jt"
To: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
Cc: Jessica Yu <jeyu@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miroslav Benes <mbenes@suse.cz>, Stephen Boyd <swboyd@chromium.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Joe Perches <joe@perches.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ECRfHDay;       spf=pass
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

Hi,

On Thu, Jul 29, 2021 at 1:54 PM Padmanabha Srinivasaiah
<treasure4paddy@gmail.com> wrote:
>
> Clang CFI adds a postfix ".cfi_jt" to a symbols of extern functions.
> For example this breaks syscall tracer that doesn't expect such postfix,
> so strip out the postfix from the expanded symbol.
>
> Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
> ---
>
> Change in v3:
>   - Modified commit message to indicate fix is for Clang CFI postfix
>   - Rebased on recent patch from ndesaulniers@google.com.
>   - Fix is enabled even for CONFIG_LTO_CLANG
>
> Change in v2:
>   - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
>     extern function name.
>   - Modified the commit message accordingly
>
>  kernel/kallsyms.c | 21 +++++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> index 5cabe4dd3ff4..67d015854cbd 100644
> --- a/kernel/kallsyms.c
> +++ b/kernel/kallsyms.c
> @@ -174,7 +174,8 @@ static bool cleanup_symbol_name(char *s)
>          * foo.llvm.974640843467629774. This can break hooking of static
>          * functions with kprobes.
>          */
> -       if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
> +       if (!(IS_ENABLED(CONFIG_LTO_CLANG) ||
> +             IS_ENABLED(CONFIG_LTO_CLANG_THIN)))

This is redundant. LTO_CLANG is selected for both LTO modes, so
there's no need to also check for LTO_CLANG_THIN here.

>                 return false;
>
>         res = strstr(s, ".llvm.");

However, we should probably check for ".llvm." only with LTO_CLANG_THIN.

> @@ -184,16 +185,24 @@ static bool cleanup_symbol_name(char *s)
>         }
>
>         /*
> -        * LLVM appends a hash to static function names when ThinLTO and CFI
> -        * are both enabled, i.e. foo() becomes
> -        * foo$707af9a22804d33c81801f27dcfe489b. This causes confusion and
> -        * potentially breaks user space tools, so we strip the suffix from
> -        * expanded symbol names.
> +        * LLVM appends a hash to static function names when both
> +        * (Thin/FULL) LTO and CFI are enabled, i.e. foo() becomes
> +        * foo$707af9a22804d33c81801f27dcfe489b.

That's not quite right, the hash is only appended with ThinLTO. I
would leave this comment untouched.

> +        *
> +        * In case of non static function symbol <funcsym>,
> +        * the local jump table will have entry as <funcsym>.cfi_jt.
> +        *
> +        * This causes confusion and potentially breaks
> +        * user space tools and some built-in components.
> +        * So we strip the suffix from expanded symbol names.
>          */
>         if (!IS_ENABLED(CONFIG_CFI_CLANG))
>                 return false;
>
>         res = strrchr(s, '$');
> +       if (!res)
> +               res = strstr(s, ".cfi_jt");

And add a comment about stripping .cfi_jt from jump table symbols
before this part.

> +
>         if (res) {
>                 *res = '\0';
>                 return true;
> --
> 2.17.1
>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuei%3D%3DgaaKw0qH1WkshcRyUbqdS_WGRWr6anYAew1HHT2w%40mail.gmail.com.
