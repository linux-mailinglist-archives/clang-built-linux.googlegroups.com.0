Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQNL5TWQKGQEFV4X62I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9CBEB5DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 18:11:30 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id c30sf5068238pfj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 10:11:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572541889; cv=pass;
        d=google.com; s=arc-20160816;
        b=mfETdh8sU89xYahVtAR8KhzMGUl1CqGv1eAOzjFnnaeSX3gPWSOHHRmbg/gky6eRnk
         oIR8q6gOtfVGnXlTvRwX43WHuOPiOzsD43xKO/ZB+sEwshzU/f3kC0QDbUNGmu97wMZz
         zdG2VjQH1ORcLxqB1bH79EilFY5D9IkJf+lJQWYDtS94UBFOEloOjsU/msD47pxs5dBQ
         0pphlZm/oM3LNreyuOjPBTWzLK7YEzF4NeNP/vJJomwOwEz1BXRblB+hj4TWGuy8WuR5
         6dQRHiXm3+S72jKfSY2xo96OVl6iF209kCia9kTedjiVkCbyU6Sf6zyHSbGjUA7ZUaeY
         Brrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mJNUAv3eDxDg/I26Ae+8JjWY/7zxgArLNIywdRwx1rw=;
        b=OwpmxKKoHwHyCZ35iuLeqOJ1mBZq7z5jHMxS0fSm6TDkmno4iYZAnCkBy5QRpHUaHk
         wIXM9/LSKQJrmHkgi5n0MVKAji/T3TGI8ZyWOrD9hl6SAr4wZccgPHG1uTOMDRRjNGlX
         cCS0s6z+fctPhpbU/xv5UW9WqyD9QgYzSDdPA96WSTNdRvKfuB7ffjSu3n5MLokqaV7d
         Lria+Wwa48XEAdvD9jqPLKfCr2ZbQO8pS/A9kQf+vsRbxyT/h4Ck4Ue48FCf1RqwRQct
         dWTgHyJq5VlD34A+9Ev2zUodF98qmdKwjvmcqqktD1jj2/PAR8u/lqNxBvn3IHhbp7mv
         NB2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Jy/SacxJ";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mJNUAv3eDxDg/I26Ae+8JjWY/7zxgArLNIywdRwx1rw=;
        b=gChRiBYCSIPOMD8nVGum+QVGQtaDJVLHs8/Ua3ePu359OU2iaOMiniNOVao2AUSlRf
         +dk6KIdQe8K86nGKBbX+jqgeuYttG/0aPCPBFpxaZ8nugDmrIsORxqgfHtVHLXxExYAc
         rwIYw0sWQ73tBAxhXN01BPxI9Ibj1cSMQNK8S7hnJX/Hcojy4is4DMzoZVYF4v8N3/Ig
         t9PheR6voJ+GXX5STytW6wlodxm2dcBGnB6L4fSG+Uwo4W3bh08gxWygnyRgvSHiWAZ7
         iKEvUUtSWGkgd5GDmh1byERL+Vqa6lvgIM3TKWi0Gtb64P3O+XOqzITxksdOnEvqQqn9
         ogmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mJNUAv3eDxDg/I26Ae+8JjWY/7zxgArLNIywdRwx1rw=;
        b=LS+vbnJRD/4qI9lP4QpmRzUQ5tFv7uMWTSZh+YTBHD2XY/PCYNK1VPTzQsfPq+mjjq
         07Envndk2+u3pBJAqhrXSpy7MQlSzaWi71FdjIACtDKilCbV038s2pDEMkHry6V7NHF/
         kXsveMQYpyv0ZE7QqTRcwIZoDl/bv6b0o1UcGf4Bnq239jgEKhtoQMHHQhiVNQA+uqXC
         QnpTt0ehr3DkxJYcD7XFu8aUWaFncTAzaoAqrGkeuuRPExFwisNxvzrxrdHgxh2k8D41
         Gunx75BVrO04rGOld9x67dLhG9tOVcx1BtUt2mhHhtC6i7KkWquVKETWDPZ6gLBizklY
         BiWA==
X-Gm-Message-State: APjAAAXlqewD0xtm3nueeB8M3KK9OMTyznGabu/KCp3aTuKsO+sRDkDm
	05ogiJJKSvQ5/StBq4GOG9c=
X-Google-Smtp-Source: APXvYqyu+KDn7B8toXsL8gTQeycU+OXv2yZo9EdE3oXlcIA2YXYCgrCewl0uECZCR44Q2oOFT+WTqQ==
X-Received: by 2002:a63:e444:: with SMTP id i4mr8057989pgk.247.1572541889591;
        Thu, 31 Oct 2019 10:11:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c93:: with SMTP id t19ls868821plo.16.gmail; Thu, 31
 Oct 2019 10:11:29 -0700 (PDT)
X-Received: by 2002:a17:902:74c5:: with SMTP id f5mr5067766plt.316.1572541889195;
        Thu, 31 Oct 2019 10:11:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572541889; cv=none;
        d=google.com; s=arc-20160816;
        b=IC1RyQaJ9GgXneobJrxxrH4bgzRcVCh+Xx2dZ6TYoFZd0e5oJwMADI0DS51Y2OIl0D
         clOV/PMkvwGDlhoTb33+15FOugHDYP8nDo+vYI6plu73qe3sLv7vIO7L3yYcSPBSkJbJ
         KxZhE8RXN/whtxfRnbv/SYX1HbXE6wo0eYs5CEuvaqvq4SByRtOeSqb2HOEahemo/EoU
         MJbobzmu1WTmUkAS7h1g+cwkKgCNMYOMzBcCcKOSKhjp50Y3WslB4wAPeazgiYcSNjRa
         yLuT160MOoRei2VlKmy/L8ZwABt/gMcSA06vQwx1WrJEmp3oqITtOdjUkzdn5Y5e2xdR
         osIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b0X5YfN75r7PDdNJxvGQlnZAXFwdwuMLiQ3l0U13bDg=;
        b=rQPGiYaBERPwxhO8g/Pb393oQROsANTy7aIzFG9Mhprg+n+vsiVoP3Si0FBA5yMJf6
         1JjDXMnbzAXgGToqXBYPpYja9X4PEE5SHCEn9Wt5HXrSKK7YBwKOEGBQkL8we2Xrb9JV
         PIf+Hlwit6g+JW6nqTbLB3dHuyFzvoem79CDEsD3UGQk5so3wN0kp95+qr0cGZSlYjD8
         3CSnmmPeRiibGfRi4Kvo9lyM0pj1Xn2WJOGzhjrZV55uhUod6TJxoHcdUMNoqQteyKSt
         4rP9KyVSjPtdpeYkEJE1FRl278qJK2+MogjvFd7r/7evsCt6y2FPm1WjmgGct2RDzvv5
         HvWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Jy/SacxJ";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 83si304567pfx.4.2019.10.31.10.11.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 10:11:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id q16so2960046pll.11
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 10:11:29 -0700 (PDT)
X-Received: by 2002:a17:902:b40f:: with SMTP id x15mr3965837plr.119.1572541887443;
 Thu, 31 Oct 2019 10:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-13-samitolvanen@google.com>
In-Reply-To: <20191031164637.48901-13-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 31 Oct 2019 10:11:16 -0700
Message-ID: <CAKwvOdmBcHuhZZV54-76zY60F0Tvd_0DGCi+5dzFTxk0upOYrQ@mail.gmail.com>
Subject: Re: [PATCH v3 12/17] arm64: reserve x18 from general allocation with SCS
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
 header.i=@google.com header.s=20161025 header.b="Jy/SacxJ";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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
>
> Reserve the x18 register from general allocation when SCS is enabled,
> because the compiler uses the register to store the current task's
> shadow stack pointer. Note that all external kernel modules must also be
> compiled with -ffixed-x18 if the kernel has SCS enabled.

Inline/out-of-line assembly will also need to be careful not to
accidentally overwrite the current task's shadow stack pointer.

Without automated checking for that, we'll have to rely on a
"gentlemen's promise" for code reviewers, though we'd likely hit such
a regression with Android+mainline.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 2c0238ce0551..ef76101201b2 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
>                                         include/generated/asm-offsets.h))
>  endif
>
> +ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
> +KBUILD_CFLAGS  += -ffixed-x18
> +endif
> +
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
>  KBUILD_CPPFLAGS        += -mbig-endian
>  CHECKFLAGS     += -D__AARCH64EB__
> --
> 2.24.0.rc0.303.g954a862665-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmBcHuhZZV54-76zY60F0Tvd_0DGCi%2B5dzFTxk0upOYrQ%40mail.gmail.com.
