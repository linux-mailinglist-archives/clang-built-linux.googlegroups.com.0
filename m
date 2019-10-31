Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWFT5TWQKGQEXRZJQTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF85EB621
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 18:28:57 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id w1sf5180204ioj.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 10:28:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572542936; cv=pass;
        d=google.com; s=arc-20160816;
        b=N/9m9FlWIHxSAZd312m5lc4s2Cee3qijI8WBCVFAPlrjGkrrDFJv5bGo68ylaO/1u7
         ty1f1XznjgMAKpEOwiYxBesgZfexUaUANgMLcYEM+NEwjKpI7gYVawubBNkjvk+7CjCx
         JDA7tEYt8QS1WgwycheZjHQZTVeA9NHy0y+VgnxcShI4mz97U/1Mu/ZFlSNM2l9k7R7s
         BRhTknMFDgu2n71fIIMuCLY6Vt0H5AN/ms6F2CvSt2RYYBV1OAUnkkOvTkPFM+ycwBkE
         rzCeGZnNc75PO45dQkwAYfZCo1Ebot1LPvvx9iPPhRH+Lwiysum7IZGNUCUi0e/VGjzt
         DVag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=faufgsTVYocHRGPxRTD2uHVElP6ulnLJvC0a1cKEAmU=;
        b=kroGjmiJKEI7cu1eXu6MRbgB+H7bCUASWTwfB5Ey8032YGB4g5kZWbeDj8PdEcTd5T
         4hjB8GccJuW+obfp/ah3eTJadFou0AADvdSHCeibtM/+0y9rpqV1nq0wT2NYz+cBD6xO
         ZgVtFoLZkwzG8AzsRyB3cILZsRYb0kvfes+hUu/KtTmlhbrqvtM7N31tIy12rweBXXOp
         2UQp81Cwd3GwOeBTo2DSL67M1XtH1h5GSOmailR2Aa2Gd3KBns8Nx38TuYIWiXmkasfO
         0ksfQyoF8tvQwCdqll0HicB0O79NqglwHJ3W91UE3PIVIqEi6hE1nMeq5UDEltZ0lSY6
         IO4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gpOK87CJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faufgsTVYocHRGPxRTD2uHVElP6ulnLJvC0a1cKEAmU=;
        b=oAXvFjsW0nSl5HObUQTju66MWLCDA1wDdk2/NZY3wmV4xIcKgybVJntnuKQmzYmoOO
         1MgBc+6J/Ls0UBqz2qdTCmgImZ1XRLxYkKb40va3cYxubfejV8vtXQVA710N0iriwgPs
         LUp1uRDn4XnQI/aPbNOAi1Qs8+djXTMjVyXvJbwYOAQTlxohknrz52KJoIUiSr+eTJK7
         LunRbMrFIWcD/JxkRdbZY54/oalm6dqfmFUFQ3g498sNHmDiq6IwaLbiVwRJv5yZkNKj
         SJ1k1FfYff3OAyeYm/nDtoy1jgN2Zu5Loet3ipG1dETkKVjX14qk1HYBKAmZWbAwX5h4
         N5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=faufgsTVYocHRGPxRTD2uHVElP6ulnLJvC0a1cKEAmU=;
        b=GHzAvVb6Kw77CMhMxcXAoNcz61FkT+c2Kh+GuAPZkjvQcs+lVTPLvfhXW4KXnnPPRM
         Cx5vZAhpEJe7I3F0qMhcXoqThsesFIWwWDP3SFWjCMn0GLvdas2zt6TA7YHgabhaFQeX
         5iwYkwxbklACsZhtlAzwthD07ZaJQaouUiaudaxV5wC+kUTO0Cky8rYG+QXx9UYXQfnV
         HdKyQlbmUQyKanVn4c1gAHnoxolM0xVuaVprbXMt5hgGIvtec3xXdGTBWaj7k7MVDKnJ
         6I8M0T0ghF4L0wBweq22qOdntKJNouxGOpxjwMRfowPyK8Ny8yRvK+hnNMAAusN/68+g
         Hcuw==
X-Gm-Message-State: APjAAAXhvXyd81BrVc0SeJznM61c5YT7pzeIfAh+yVsO3RBmye7Uc8MA
	0CIvj9okdNS1guViCHaLPoQ=
X-Google-Smtp-Source: APXvYqwUHBYGxiFcRIXEOIxjVfTg3epVlrAU4V7dLoJbAnZQjEFTx21btGXmOBkvTqwfI69No3KY0Q==
X-Received: by 2002:a92:3651:: with SMTP id d17mr7611096ilf.268.1572542936436;
        Thu, 31 Oct 2019 10:28:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:49:: with SMTP id 70ls715442ila.16.gmail; Thu, 31 Oct
 2019 10:28:56 -0700 (PDT)
X-Received: by 2002:a92:c690:: with SMTP id o16mr7639935ilg.52.1572542936088;
        Thu, 31 Oct 2019 10:28:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572542936; cv=none;
        d=google.com; s=arc-20160816;
        b=nJcpebnz1/PJ0sWQYAtfztOv26rjM8LuHv0cDs5cBxuc+gglwj60LmxhNiy2qF/5Gq
         DEyCNZikybdKxv9OhJU5pmbwnG/NjVV8uWsZ2JBFyMLBdCwSpD2w/ZVKitcVsCT+QjnA
         NlKwLQAQOStnhRFdxVKQrjxn00xw4ZzKQIVQAdYWpeluwUs5KRoxxRf2ipgQ2qDYaizG
         iSKktVy4NafjEFsM66XY5eaGiWcG1sZT8FrYnscwZ7YxKMyF36AlPbPoETPZhSav7AJU
         wbuVOU5PqrtIYJzhmMhUECAlqdiShLmep9YAnWw8WQ58a3C8ZgJsCI4Q8b/RrtUHadrQ
         sbig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6m++fSIeBZqcJkeOt8/Shjtnuo+Q7rdlGD1c3YsGie4=;
        b=Q1sucnFESXI6XM+hg5ibxiYlK3VXEWzSBiTRrWqL2QEwY/J96GTH7XHJMWWQ11f1yI
         UlvM5aPbiGiP5u2AhSVhPRM4gWSbqRPkpRZaXnHMLV5+Ngvkp2Dlq5TDyA1IIOTTxEA5
         FDyl1ecfQXxnMCMYbccjZsZFdoOnCchwzbWHxc2N17icsUHlc+jhtkUsEyQqhuLNRvDa
         tbOnPAw3Zi+s18bfF7ogLgov141Ht0ED3O/9X8SO3NoKGos1qVIVX9iG1pbj1pScNtoU
         27vShhFmrznjlsc7LJs/HKIyt5mCtx9az8kS1a1MkC2qzpmerH91M0xysyhAjNmQnIJv
         tmig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gpOK87CJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id f5si304280iof.4.2019.10.31.10.28.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 10:28:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y8so3003727plk.0
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 10:28:56 -0700 (PDT)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr7530087plp.179.1572542935004;
 Thu, 31 Oct 2019 10:28:55 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-16-samitolvanen@google.com>
In-Reply-To: <20191031164637.48901-16-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 31 Oct 2019 10:28:43 -0700
Message-ID: <CAKwvOdkAe9TeB-dVqrDT7ZRQG8U4nHkkHwiDcRRPPY8w-Q9wQQ@mail.gmail.com>
Subject: Re: [PATCH v3 15/17] arm64: vdso: disable Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gpOK87CJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Thu, Oct 31, 2019 at 9:47 AM <samitolvanen@google.com> wrote:

I've gotten slapped down before for -ENOCOMMITMSG; maybe include more
info if there's a v4?  Maintainers can take the safe position of
always saying "no," so it is useful to always provide an answer to the
implicit question, "why should I take this patch?"

>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kernel/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index dd2514bb1511..a87a4f11724e 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
>
>  VDSO_LDFLAGS := -Bsymbolic
>
> -CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
> +CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)

Looks like vgettimeofday is the only remaining source written in C, so
we shouldn't need to strip it from other assembly source files.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>  KBUILD_CFLAGS                  += $(DISABLE_LTO)
>  KASAN_SANITIZE                 := n
>  UBSAN_SANITIZE                 := n
> --
> 2.24.0.rc0.303.g954a862665-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkAe9TeB-dVqrDT7ZRQG8U4nHkkHwiDcRRPPY8w-Q9wQQ%40mail.gmail.com.
