Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFMB4WCQMGQE3PR6KTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B67339ABF7
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 22:50:30 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id n67-20020a198b460000b0290274351652ddsf2748543lfd.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 13:50:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622753430; cv=pass;
        d=google.com; s=arc-20160816;
        b=pCwYqjS3iGvGlIeYBElO9/LkyOSXazUK41gnVFACLqDzrIqhUoNe9ULmXGpj+UEJ2T
         pNaEvh9fxSee4qIkgG3imMr2oSm7WN0EmOHo8HFJdFx2BQDHnwzNGO8ofls0qKoBJSja
         uWwkcGylHISw3oLqX0wG8Tg41rCDC/WTzmr/UlxILqZgKwg/UBegaDuAUhgQ4UqDV3wF
         dMVOOnhFprKna3CQqke0hogaVDrS8uhICt4/x2bRa7bj6lN0ahVbIArp2vIvK5KZS/V5
         ItaXtkRvflgTu32lom5X+jRTo5NMx1y7sHCl1JV8syCpyrW03LDJUdJgea70VrGZf4Dr
         60Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ujt4cVwfLxf4M4HqoANv+JjUOEc+7yV0ade5tiNz4gM=;
        b=XeuCarlNOffKklybSmSpBz2jN10lg1vXyPFiOL8dW4XYAaMuv+BhMKwI2KTK+RAvSx
         qm62Eoim+aoXzVEuV6gvc6hvaMUGeGzz2ly4AUsbNpXcg2tpwx/3D48tzcVNCxP91zf6
         xBVvVvAGbiHbcqugzQF4AhSSzyQwMog1vZdM45cPwoEwWU/8JH7rJxeycw4j1SDyq5nl
         XNH5UZDqNr9tWr1ki7NgupEIQ8QB7aP0AdHvuzJ4nsMQRKlyWSDfoRocg1RifygDwu5K
         TBnRV8Lxv3sDs1YF362UmAy5n0EVXLM7sdRt56RNpFS0EbeyvgYlOiNXHegBvC9A5giu
         i2pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tPdzhjkB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ujt4cVwfLxf4M4HqoANv+JjUOEc+7yV0ade5tiNz4gM=;
        b=K3+0hIZx0b8nqjBHt7qokWE83u+gTpbQdn2cHgUZzn4kzlAMi4ypWgifLiKVBu+D+w
         0OD0ydKWgZ65HtutiOWJZ/2TlWsDIN29VU+QBhtuJcSuwaqtjsHTzJxwkRqDkCDT1ikw
         B77PIvm8FDhQFl83dhGIFZyAojoFBb6MEFOY5zEHf3e6K57x1QxTw0sC+cehfd15JL70
         AGIiALyn1bjbrhxXSLGNTgYI78iWkOQW6YLTEBkD/pM6m2SQUrFUHAf5N5kwR2i7YB08
         dgGRgKdC/7AhcZ02/pTahs9NRfPVx55Fm/TFI+rqFZEtsJezl4lOY+qxY4wtSMHiDvG/
         kMIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ujt4cVwfLxf4M4HqoANv+JjUOEc+7yV0ade5tiNz4gM=;
        b=VCEVAWTL+ilqca/UEG9r7ymv2uUF3+WX1EjSQPX6V79qc88W/etC9eKiP3ekvE+rtO
         atDCZQj+eg5o/VNsqSVL3EDC3V/5ztTVVeD/R2b2AuiTRTtlVLC9PGfGGXNSX5amWlWI
         EgVXw1folAht3gbdioBMkEfWJ7AxI78m1LfbYW07cN/DpnHwP+/iuuIJcMfTSdvyymwW
         4Qf/06DHRR84FgxbyZ2/A0POnO9SBjm3XEK3OVKT3rcNGxsdFpvUmlDEVgMyt60mXKMT
         f2F3nTWwLV/PO+mHeCkkz1h7MasGOcaPc0o5x0V3r657IIZpp3zXzzdMXCat+u6rFvpO
         k/tw==
X-Gm-Message-State: AOAM531JPHfntClIGAzNIzOf35WB1PcZehEPFfhJcija5nlfCSWlNte8
	oDOXvwQftpNq/jp1Wj7Ef2U=
X-Google-Smtp-Source: ABdhPJw/m9zEhdRyKJUgxhMTXaBxClGoga1cG68iUy2M4qHKLid3BBxs0SisGuqM/YGvDdiOiSX0rA==
X-Received: by 2002:a2e:a4ca:: with SMTP id p10mr840677ljm.271.1622753430026;
        Thu, 03 Jun 2021 13:50:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls2100344lfa.0.gmail; Thu,
 03 Jun 2021 13:50:29 -0700 (PDT)
X-Received: by 2002:ac2:443c:: with SMTP id w28mr503451lfl.446.1622753428956;
        Thu, 03 Jun 2021 13:50:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622753428; cv=none;
        d=google.com; s=arc-20160816;
        b=TmB8Rw7kGPaEfGjqlCarllvIXLj+JLRQrlvt+8DQ59MLhTx0SSVE5kx45l3Ivd85aG
         EQT6OZWiwX2gafa7xXE8T5Hdi0SfinVkbMac4TXooPscO8TnaF0KeoZNBvpdBfAtcAA7
         0y73+Mgdig0l0KW3dr1zwGRbHGLUxqMM6lLytpaBvmfIEARXkhByrs8F/oHy5Q0PrXWX
         bvlj/Ieyzi7hrUE0jn9dhmM3rdnqD3KCdu3DKS/1LkppkX7XBilN1ba8zkUMMeG7/o/n
         EB/ozmLhSWASRcn7feCsgq/XkByEeZJUJG/j1mW3RQAwSODcwSc32Izk//AJZl+rPlVD
         H00A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oFtpiwNW4KLJeXVYDPJIFJ4JjYTJQN5IziHpM5XenKM=;
        b=SK8JXdODD9JXaOukD133SAs9PwPQUuH+6qpP86nIW5rTnS7aX6FORjkETV0co141Z0
         DgZ4g3e93xYZt+pRUAcRtyQRNd07Qd4KcODPZPuAtEqeHS4B/A7IE9Cu3INBH2Qz8KjA
         9J4U58Ap8ugGXVuGkwCz73+TSwn3ZwwLgT+ysuIJfXqcCgJ4jzkX6VANL8QXiKk6Weyj
         z4AmYFssawXrnMUFNSRoNR8Kxp3EWIfgBf24YxLNndXWEOcbCArURfLSMKJi2FtjYf/Q
         5fFRuVAqccFfPl7pEXpAfgyJmqNvNDOHNXe0FE0zN5JcluRhZU8pELp59OZZHTmt11Al
         T6Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tPdzhjkB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id j2si151821lfe.8.2021.06.03.13.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 13:50:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id p20so8789109ljj.8
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 13:50:28 -0700 (PDT)
X-Received: by 2002:a2e:6e13:: with SMTP id j19mr882738ljc.116.1622753428492;
 Thu, 03 Jun 2021 13:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210603133853.5383-1-jarmo.tiitto@gmail.com>
In-Reply-To: <20210603133853.5383-1-jarmo.tiitto@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Jun 2021 13:50:17 -0700
Message-ID: <CAKwvOd=ygrySyMkJuGwyG7OPCOrTagcFn02RfEKANvhhuZJdOA@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] pgo: Fix allocate_node() v2
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tPdzhjkB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Thu, Jun 3, 2021 at 6:41 AM Jarmo Tiitto <jarmo.tiitto@gmail.com> wrote:
>
> Based on Kees and others feedback here is v2 patch
> that clarifies why the current checks in allocate_node()
> are flawed. I did fair amount of KGDB time on it.

Kees can probably cut it when merging, but the above paragraph might
be better "below the fold" below next time (doesn't necessitate a v3).

>
> When clang instrumentation eventually calls allocate_node()
> the struct llvm_prf_data *p argument tells us from what section
> we should reserve the vnode: It either points into vmlinux's
> core __llvm_prf_data section or some loaded module's
> __llvm_prf_data section.
>
> But since we don't have access to corresponding
> __llvm_prf_vnds section(s) for any module, the function
> should return just NULL and ignore any profiling attempts
> from modules for now.
>
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---

^ ie. here. If you put text between the `---` and the diffstat, git
just discards it when applying. It's a good way to hide commentary
just meant for reviewers when sending a patch.


>  kernel/pgo/instrument.c | 21 ++++++++++++---------
>  1 file changed, 12 insertions(+), 9 deletions(-)
>
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> index 0e07ee1b17d9..afe9982b07a3 100644
> --- a/kernel/pgo/instrument.c
> +++ b/kernel/pgo/instrument.c
> @@ -23,6 +23,7 @@
>  #include <linux/export.h>
>  #include <linux/spinlock.h>
>  #include <linux/types.h>
> +#include <asm-generic/sections.h>
>  #include "pgo.h"
>
>  /*
> @@ -55,17 +56,19 @@ void prf_unlock(unsigned long flags)
>  static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>                                                  u32 index, u64 value)
>  {
> -       if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
> -               return NULL; /* Out of nodes */
> -
> -       current_node++;
> -
> -       /* Make sure the node is entirely within the section */
> -       if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
> -           &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
> +       const int max_vnds = prf_vnds_count();

Sorry, where was prf_vnds_count() defined? I don't see it in
linux-next, but I'm also not sure which tree has
5d0cda65918279ada060417c5fecb7e86ccb3def.

> +       /* Check that p is within vmlinux __llvm_prf_data section.
> +        * If not, don't allocate since we can't handle modules yet.
> +        */
> +       if (!memory_contains(__llvm_prf_data_start,
> +               __llvm_prf_data_end, p, sizeof(*p)))
>                 return NULL;
>
> -       return &__llvm_prf_vnds_start[current_node];
> +       if (WARN_ON_ONCE(current_node >= max_vnds))
> +               return NULL; /* Out of nodes */
> +
> +       /* reserve vnode for vmlinux */
> +       return &__llvm_prf_vnds_start[current_node++];
>  }
>
>  /*
>
> base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
> --
> 2.31.1
>


--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DygrySyMkJuGwyG7OPCOrTagcFn02RfEKANvhhuZJdOA%40mail.gmail.com.
