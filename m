Return-Path: <clang-built-linux+bncBC2ORX645YPRBJNE7ODQMGQEFTNGJRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id A98AC3D5CD1
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 17:17:58 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id p14-20020a05620a22eeb02903b94aaa0909sf9202125qki.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 08:17:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627312677; cv=pass;
        d=google.com; s=arc-20160816;
        b=j9L3P5TIkcwaumynemvYdnjEBaCM/Qf/3kGhkhbh+c6itHfxEfEmLsakdDbV4sYfJq
         a5mKFVan4v3aq0cX+IAyTApJ/mLIOivNexD+QwNW8lBPRjP4l+MFkPyQfFE0c00UxoIz
         KoB9QBcbFKt46ZyWZsnA8B/JigyNYDkV/mvnkJmwt4E0o1L41DgAOPSmZPWSzIujhVJL
         7aEPzhGuD5kthiXMZE7PJfPXVOKppT/8tM5sAo8FyAgC5H4RiD0tsNBdQtB1pJ1l0ms4
         RzBudGgT8yTFlaVAudsV7FhEMh5X5Vy6NrWVW5hM2k+zvXSwHEyPcHRppqsiOo6UaTN4
         Sjbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CK5Q87IgNjtvkawzn9tyWvIVEAYZCVmPWR521MPhXTg=;
        b=zuPu67a0gQGHzo2EExzIcp9dbaWQC/o/EgC4c0Dxp0SqPJ2GjL3EYcaIw/FS8e0c4A
         E6C6NJ+DJa6DqJ/G+yJIkdgWxVKGID304X8aFky357NSYrEYH5G4Qfp6mKAL/N87iMBa
         gdwolT2bVigi3eMIZ5JJZtjeZxdJPHSConppTj9TtRJ2GAxK9Pyi0c8CjY4+vu+MrXLD
         hLvjgUW6q/7QWf2YVDGa3sT/Pn9GjI6vMxgA1sAd2p8iLgQ0XJAtqzePXpx6rF9wvjGX
         B0SfmQdweE8ml/RuxjtfOwyWKuIGR8N08MSZh+3GZvnrCDFeLn+JFuXLOr5ZBSULtS+o
         xLIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="hI/BOSEa";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CK5Q87IgNjtvkawzn9tyWvIVEAYZCVmPWR521MPhXTg=;
        b=bGMy4oLmtCc4puH5FUx/wdiZXFae23wgJp5/J8eNL29aujXpZjvwDunNrKychIx5nY
         ogBNT8Cl8WgufyHixDE89jzhkTcdzYZzYETc6BxwgX63M3lXrJNwLXcNu2LKhB89CeMu
         CBxl4aGejJ2gl3k3KNEi4udFGhVSI2Mz9opVjEedHGWHlF7epG2scrH6Uxm6/ZpzypJ4
         UH5+8RTz1u9hpUEm7pEwfZFEN8V3htKPu4zDzBURFSW7n3BEfyTU9eP++LVGmH1e+wsO
         nevs1OI6Q+bJ/J7HPOozIZZ1qu+kWctAhDsRCszaTn1mQ5z4h3CXRrmBXwBBa2tA/M1y
         /z1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CK5Q87IgNjtvkawzn9tyWvIVEAYZCVmPWR521MPhXTg=;
        b=rR+ZkoK6QeilC5G62g6nEbjrosdA3DMxGg6Ca5Wm/KmeV6ebxH0N33/v9Ct6h6/oTy
         qAZ+u35ir/sOQyGDBtEIaTMmKrskmvBf+ybOqGsmpf1XKAhxJZPvJEG+uSiyNw2uXmnO
         gilWBemxevKmUlmo1WZmB0hCZiWm0t8aiibk+Qy9H8xpqbe6EGt8BEQ5H37hMtCcUDuX
         IkIwc72tcPDG2cda39PRiPpteW2Iij95JdZ5fjX9oS5yypDVrTJGMB6mU+HrKhTrvdQY
         cwo8tSZyduhlvjX2jDghn10+FH4HD0HZblR8hfdDaxw/bNm6m87LTdB7N47r+DZJVe61
         DbRQ==
X-Gm-Message-State: AOAM53274uuYF3F9kGnjCl4H7pJMqteX3DHdu5x/tKsP9ehsCgSiK6lN
	AaCV9Dv53mfmwphEy2ouhsM=
X-Google-Smtp-Source: ABdhPJwPZrJDe3qV3jfviYzAoWqI8ifBfE9RzDFMZP8pGONIOxhD8CEuYrHXxTe0i80dvK+s1PBAzA==
X-Received: by 2002:a05:622a:1828:: with SMTP id t40mr15389238qtc.276.1627312677549;
        Mon, 26 Jul 2021 08:17:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b3cc:: with SMTP id b12ls6377658qvf.9.gmail; Mon, 26 Jul
 2021 08:17:57 -0700 (PDT)
X-Received: by 2002:a0c:c612:: with SMTP id v18mr17915168qvi.20.1627312677051;
        Mon, 26 Jul 2021 08:17:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627312677; cv=none;
        d=google.com; s=arc-20160816;
        b=m60nD4N4X3C44j8vjb/Q839g18XC9mXo4HKINKqVx6NlG+QivyplVfS1Kf7t5y0tAc
         p0S9nldLWhyvIy5XTOZJhj5xeZZ6ZdQhweMJaHfv1rqV6eWf6XQNsCHm8echf6kbzGAl
         ZFrl4uYlGCRO7Q7MzKcz3RxSXI/w5vSPnu0dXatP9Hk2UCUfFIuRlpkWAiX6DCyeKsEk
         OErUHXgOLUqC4GfxWjgovpi2DB/cSHSPtTlBNWocwpCoHe2qXYs/pgLnvPXSXLD+1z/O
         aLNl6B+L9ph1wMycREJk0FVoXw7JTR48MxRa0YbwDm6Na4RNb4a5sdkIUJmgZfGZgtj0
         IP7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OnAIHyCEItEuPsqof61uC1vm7KM3TYKYc6ro2iKHDXg=;
        b=dpPrCUkS6YDH65fmexmck3xSBKejyzTtOcCQO2BO30EqGImxbBIQjifKz4IUreCb+L
         3Sa03dGdsvZ31dJQmmEXI7Qx6I/8FG6H3idL6txSzfR/DAmDH20nUyvguNT+Qii+Uc3a
         YVBNlh4iE5YS7g42SzbiUw+84Iv77vV7zEz+48PlCZ0uT115HYjtVJ4rfWWPFV2fbY2F
         N/6+nn41xmjkNSlkTYgzoeDguLkxm20IF898lJvX5GglLx0GUZXnA+nhswL4HqaG29lO
         BefmoCR2ghzj7dQNH0e1BGxfXCaqEb6ovRxRBW0vRfkC9HQj5rhbFb4xR9z20aj7cJXw
         if6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="hI/BOSEa";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id 12si28369qtp.2.2021.07.26.08.17.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 08:17:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id m193so15383377ybf.9
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 08:17:57 -0700 (PDT)
X-Received: by 2002:a05:6902:703:: with SMTP id k3mr3168736ybt.47.1627312676488;
 Mon, 26 Jul 2021 08:17:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210720221541.16164-1-padmanabha.srinivasaiah@harman.com>
In-Reply-To: <20210720221541.16164-1-padmanabha.srinivasaiah@harman.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Jul 2021 08:17:45 -0700
Message-ID: <CABCJKuecCch5v32GJ8Bt9wEJOWtp2aYanRT7qdrD6BHx5qDRNw@mail.gmail.com>
Subject: Re: [PATCH] tracing/syscalls: Clang cfi enable syscall events
To: treasure4paddy@gmail.com
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>, 
	Padmanabha Srinivasaiah <padmanabha.srinivasaiah@harman.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="hI/BOSEa";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33
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

On Tue, Jul 20, 2021 at 3:16 PM <treasure4paddy@gmail.com> wrote:
>
> From: Padmanabha Srinivasaiah <padmanabha.srinivasaiah@harman.com>
>
> With clang cfi syscall symbols are appended with <syscall>.cfi_jt,
> hence syscall tracer can not find corresponding syscall name.
> And results in no syscall ftrace events with CFI.
>
> To fix this issue, this introduces custom cleanup_syscall_symbol_name()
> to strip postfix ".cfi_jt" before comparing syscall and symbol name.
>
> Signed-off-by: Padmanabha Srinivasaiah <padmanabha.srinivasaiah@harman.com>
> ---
>  kernel/trace/trace_syscalls.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/kernel/trace/trace_syscalls.c b/kernel/trace/trace_syscalls.c
> index 8bfcd3b09422..dbc253fea34d 100644
> --- a/kernel/trace/trace_syscalls.c
> +++ b/kernel/trace/trace_syscalls.c
> @@ -79,6 +79,27 @@ trace_get_syscall_nr(struct task_struct *task, struct pt_regs *regs)
>  }
>  #endif /* ARCH_TRACE_IGNORE_COMPAT_SYSCALLS */
>
> +#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
> +/*
> + * For a syscall symbol, clang generated non-canonical local jump tables
> + * will have entry as <syscall>.cfi_jt and address of this entry
> + * will be used to replace references to the syscall symbol.
> + * so we will strip the postfix from appended symbol name.
> + */
> +static inline bool cleanup_syscall_symbol_name(char *s)
> +{
> +       char *res;
> +
> +       res = strrchr(s, '.');
> +       if (res)
> +               *res = '\0';
> +
> +       return res != NULL;
> +}
> +#else
> +static inline bool cleanup_syscall_symbol_name(char *s) { return false; }
> +#endif
> +
>  static __init struct syscall_metadata *
>  find_syscall_meta(unsigned long syscall)
>  {
> @@ -90,6 +111,7 @@ find_syscall_meta(unsigned long syscall)
>         start = __start_syscalls_metadata;
>         stop = __stop_syscalls_metadata;
>         kallsyms_lookup(syscall, NULL, NULL, NULL, str);
> +       cleanup_syscall_symbol_name(str);

Shouldn't this happen in the kallsyms code instead? We already have
code there to clean up function names, and it seems like we should
just strip the postfix there before returning the name.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuecCch5v32GJ8Bt9wEJOWtp2aYanRT7qdrD6BHx5qDRNw%40mail.gmail.com.
