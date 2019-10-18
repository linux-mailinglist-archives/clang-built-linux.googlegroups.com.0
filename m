Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHW2U7WQKGQEOOYJPJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCA5DCBE0
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:49:36 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id x35sf4672321pgk.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:49:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571417374; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rkktv0N9LN4sQ+7H73TsapyilGbvf2LOFYh3jMUPpl8QPk0H73nNLFpKHxcox9Npm0
         d5qRvn7SYCs/axa+p4dQ0qo14R/RFAMOdLkhbS3eq1flpgThYP+yndJWKw3GFnHbWhWW
         oLNRxzLjgqiWdS56e606uPanJCvF2WQxRwWrCOhNs2Mo3URd6Sl5ySDwzgPp7vCOOKAT
         olHDoCM7NtH/EDhqlYC8YFd0nr4S7SJsEWu8yJj56PmJSQfroMmNt/OiGrebm/NxTI55
         Q+Gv/fxsWSuQyLh2rpD05/+JlbDf2Phhxy7RKWCsgTkgYtpb/K6xdhApyWSxj0Ff+QR7
         ODZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ugaAgJ7ce9ILvICJhPqUm4EHBypFpnxqsw85yPZJla8=;
        b=I8rWriH+RqVhLJZO2Bmalp6jtFRoyeWNBF3DtfjAPVrN+Bd7yQ8GStMXe/FOksE7de
         dTNQXY9gmxM1EskQL+LpwinvwlMpTu7bNGaMxV46poTT8K9yIX3lsuJDfwC3QfOb8ogG
         tEkhWRQiy7Du7Cv/0Q4haiGdPBp1vBQ4C1qSinvbRXhJYtj9F0PWAgl+1nYR+ljILwGL
         yFhqj26zEuFhUg3QxrtiQTqRzHd6M9X0wgANIhiGrzO86b7H9JRqGlOQv1X8pkLNGke2
         OZnnQsHFdmCxnO5RspLYYYWayfeLVk0lBxCS0bWiq+Gzd78fzU+xOIIVwWUU6fV86gy0
         xPNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=avwoHFY5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugaAgJ7ce9ILvICJhPqUm4EHBypFpnxqsw85yPZJla8=;
        b=PFct5Q9EM0JWAivmQunN9I1kjKtfqBUX16bUZW1+TOmuWGWr9piYkADPEeWytzVjDb
         99WU6G3iyPs2W0Mlz2g2ENUjoRjn3g2rJy93R7TEIx4cWBAjCoOPRzYR1axuDd/JiFuY
         5Bu6Y8I/b/bn7H5FAXHMgrfY3MZ1LMa+s9W2RoOJ3pzRCKHzbsP7IXP0r5i65/8+SfXS
         eLcCHgcN+zxh7hlORf43cngOomq/uFQPTXxYJUnfWeOUyMkwm21QpYxW8udeFUMuQMeJ
         WoOu1MIjJpLR28ehaIkXw1yB5yuAOtrmQZjqFRGgvvq+hUUH2T8FtNKjY0BmMs4ghw1U
         otEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugaAgJ7ce9ILvICJhPqUm4EHBypFpnxqsw85yPZJla8=;
        b=kT+O298yxwYkWARu+q8P5vsKU0a6TeH7vIr9tLy8wp0WsHjhojB4Vf/zvEMNtXPFVj
         o1Rir1NS15kuiCmvkCnV5m6dKtA8CJScFtE3YHaAE8qxn3dX9YyvF0DbWTV9vgg5OUYW
         SMF/9h4rtjyJHGzJ3WXUiILqNwqxAYDWYu4CAayUe/swVIcIzzPIjOjEsbYJpp1Jry+m
         zghoNHvnWBsYKT9NQDCDl1nT6Nukk9eCiO0sf8iCrX5nPnSzxXlC7lai2CePeAahCymJ
         nPHgQZdvtyxE1h0Wf5JdFzPRL0Lq9QrDtCAZAdwTbFRi0cA0wt4U26CxiKE4b78bwvR1
         pQCw==
X-Gm-Message-State: APjAAAUI+kxw5nFPamY80MKx2xcN5fPHwzh0PoIc3KcFnydTvafO5PAp
	RyMJYUVdAnSQuBX9KS0XXtU=
X-Google-Smtp-Source: APXvYqxFeQSSEBRDHoC/QKx78Oz9zQsXN0jLpoAmZ6ZGyfrkckAED9zx4t4e2rmlVOFLOl4+8tesvg==
X-Received: by 2002:a17:90a:8592:: with SMTP id m18mr12495765pjn.118.1571417374837;
        Fri, 18 Oct 2019 09:49:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:5984:: with SMTP id p4ls1203913pli.3.gmail; Fri, 18
 Oct 2019 09:49:34 -0700 (PDT)
X-Received: by 2002:a17:902:b410:: with SMTP id x16mr11115842plr.46.1571417374504;
        Fri, 18 Oct 2019 09:49:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571417374; cv=none;
        d=google.com; s=arc-20160816;
        b=p4rOvNiluYsqFdk8CQ1nY2xfkU9IxczBfowEMQjh5dQkRXU8Ja/EIftLjP/FawPONd
         spg3snujc54PD0x4KkCNQGkTJvTDCXctzGFT0JFc+GNkz08vu+zHAXsIoyHx/oy1Mg4Y
         w98LL04OGbTf0F7SAn+C2oDNLf47Vq/2uin8juGFSge3dB/mvtGvCT3PJECMW2mpOU1G
         7TgeswVuWTgpD/T4E5rOZMpZMD7is9o5LcJv7ZKC7KFr7m0TlcrFkj7lbkKD+FZSj7wV
         +InAWXuYraos/piEPZLRfz7XmT4I0un7w1N8q75YxfD1EFrwfVwN8H7CpPvYt9II+J7m
         etBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6mKQPL/e7dgXDTrUQfJTszcQHu3ycRwNWrvUbHLb4pk=;
        b=gWryBnDwaznMaaG9poamGSokiE86PRlFjvBAuynI9L9iPKiFZgn9feVZFQIO6eY6HX
         Hy698Q4tkqLtwj+iyFsS9bgz8hTm20glcMdjY++M01STmfAXbZ+/3IeikDxQU9qvaVPy
         rT65sw5NrdI5r92jC7MGoMom9O1FVRjfbdZuaAH9IAE6QmOUGets8CJ5hVw2LDwXwG6l
         zjaBmRt2J9zycr3g60PBCf353nJZ84V6MFc/rPZmjfdNtlfxeavT5QqHTlnj9O1gVrNi
         sWd8TMqqJJ3fDwdOAcLpj6PW0syS8X2BpvfcoqHNcAg6ZuhDxfNJ4ayqCOXkyzegaRkM
         aQVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=avwoHFY5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t17si264642pgk.0.2019.10.18.09.49.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:49:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id w3so3682701pgt.5
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:49:34 -0700 (PDT)
X-Received: by 2002:a17:90a:b285:: with SMTP id c5mr12166608pjr.123.1571417373841;
 Fri, 18 Oct 2019 09:49:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-14-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-14-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 09:49:22 -0700
Message-ID: <CAKwvOd=7g2zbGpL41KC=VgapTYYd7-XqFxf+WQUyHVVJSMq=5A@mail.gmail.com>
Subject: Re: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=avwoHFY5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Oct 18, 2019 at 9:11 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Don't lose the current task's shadow stack when the CPU is suspended.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/mm/proc.S | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index fdabf40a83c8..9a8bd4bc8549 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -73,6 +73,9 @@ alternative_endif
>         stp     x8, x9, [x0, #48]
>         stp     x10, x11, [x0, #64]
>         stp     x12, x13, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       stp     x18, xzr, [x0, #96]

Could this be a str/ldr of just x18 rather than stp/ldp of x18 +
garbage?  Maybe there's no real cost difference, or some kind of
alignment invariant?

> +#endif
>         ret
>  ENDPROC(cpu_do_suspend)
>
> @@ -89,6 +92,9 @@ ENTRY(cpu_do_resume)
>         ldp     x9, x10, [x0, #48]
>         ldp     x11, x12, [x0, #64]
>         ldp     x13, x14, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +       ldp     x18, x19, [x0, #96]
> +#endif
>         msr     tpidr_el0, x2
>         msr     tpidrro_el0, x3
>         msr     contextidr_el1, x4
> --
> 2.23.0.866.gb869b98d4c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D7g2zbGpL41KC%3DVgapTYYd7-XqFxf%2BWQUyHVVJSMq%3D5A%40mail.gmail.com.
