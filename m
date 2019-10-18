Return-Path: <clang-built-linux+bncBCQ2XPNX7EOBBCXTU7WQKGQEEHD75IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FE0DCCF9
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:42:35 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id x198sf4975253ywg.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:42:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571420554; cv=pass;
        d=google.com; s=arc-20160816;
        b=mjwlZrYm58V5gf8Ef88MdNIYd85IaX1m9eocDxg5otWPL+y8Xv1p/5dSIAtiKNNp5P
         zT2ShqLkrl97d7rvFsK8ysYcdDwvNg9bLP5d0rFXNKvEXugVyFXrY6qiG91hJkrVB1fq
         xsKJgaqyddFkPwldJr1WBWUMhIULDgB1u+MySbZSTsflLn2/WK2UZfjvj91VDMkBQmn/
         DfGqSecEqwM/y55PK+kyzvETkodAZpo7TmwV8yQZ6+SnepDTOisXAJ/4I2l/Ps/NWyPd
         u7GSOSod+PU85GUjxCw6Web/3QLuNC7nJKTKq50NMXNTrsHZeE5Iw9DUlugLRr4QZjAi
         fHNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FZ2r1GkABMk6HH0iYLBGdiRxYaniPqbAhHRqfVwOw5g=;
        b=vMetnaYAflQrHJn0w2tqg9x7RNBovMwMWA1vaZBX2Aq64s0hi3HnWHLhJ6nNJy9cFt
         rmksTHJhEt2jwnVnWsbhUfHFZf9fWxsYI8HBPgi8TwMh7HLknMEWq6M8gh/Kyh9e4+Eg
         9yhc26Xfe5jMtv0bTu8xmqi27JD7zPk/mn5kebh3Y9vwG2HR0QRjlWkqKujPvRjzKp0x
         r8bgjvF8GDOUpuUa1VKXPB0msoYaQmIWKOiU5cYxzLJmtaVZZIZ+WdI2hyirN5UgUwkp
         LFA0kwTjMNTsBVLHh1yCL3v+exaXs4TUU94ZZdgXri4GZgrEJ0nxxpOQHZiebeDmtnq5
         O5kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Im9v9Mzy;
       spf=pass (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FZ2r1GkABMk6HH0iYLBGdiRxYaniPqbAhHRqfVwOw5g=;
        b=s1se89TqYraSoKHvYxCB60RYW6KHcvUWJXP3IR9ahT0HnXUV3as/22UXLuGAD4O6ZF
         8pqNY4TQ4+Azu8obBME2zeRekf8mY4be8Fv/V2/dtpcweeWrDA9y5T9MlRxTZyVDiIVW
         D+KY/5lNbaOUFNkSF2oUjD9GHxyzsl6ItmhzVtrr6C0EGm8sQcPNUZ3+5euipLDjIZXG
         fO98MS4hOtrMsDb/LwtQ8K3wEQ6V5ojC/rirZ82/bMFDnIeM+i7/9CxpSZdVHFprxBx9
         /1icqsZvTBObp96tRJxhhBhxQDD6P4kO6lIWoE/23rDZZWZeYjePU8cxwcOQ+a5x8n+A
         WQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FZ2r1GkABMk6HH0iYLBGdiRxYaniPqbAhHRqfVwOw5g=;
        b=LYGxUWrCMsz/g62U4yaivSBuAq4NIahknKUkRvYj7uuc/wD9GTdxpaP0HCMFbJlnDw
         1jx5afDbU+oAfCI3L27Xuy/rB7VYvzmHAJe95uENo2AfROM5obwz883PNd/XH+tEXtQZ
         fPECx3OC9Kx+S6RYwIKtDWuzkbbd2UteqkHzcXaxW0gG6QuhcKHugRcv1pP9tVuirKsi
         G8SWzkDzTiNKsNXsVVmj1DzN0Ua61qzHbE3HGd1Ly3+BudXmoqHNT1ZBxBy5mFfaS8Qq
         w5azpebLP4PijFQ+dWOWx7DckNTLZEXYJo4SzDv4tr+X0uowgMvPr9DmALq0pqQnr8VH
         Nibw==
X-Gm-Message-State: APjAAAUlRua64PFpcUvSDcrbX63DFtJSM/012x90/zn78FEmBgwa2jhz
	2+Diu5SBmxBq0KIu1yGmdg0=
X-Google-Smtp-Source: APXvYqynXA2xEsha1KPdM4q/gsvZqnHlMtJAKqCYigQV2bkmE8AHfByfRJ1SetdD+nYCWljS9LmDJw==
X-Received: by 2002:a25:680e:: with SMTP id d14mr6995498ybc.226.1571420554530;
        Fri, 18 Oct 2019 10:42:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e805:: with SMTP id k5ls999599ybd.3.gmail; Fri, 18 Oct
 2019 10:42:34 -0700 (PDT)
X-Received: by 2002:a25:e649:: with SMTP id d70mr7265212ybh.455.1571420554122;
        Fri, 18 Oct 2019 10:42:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571420554; cv=none;
        d=google.com; s=arc-20160816;
        b=eqcYNimwljvQSZhsmNeTgjBPJfPk/JJuzbQJuf8ZXhcH1VopyZFJD+fxEQKe4kLmB0
         a3EQ/EWFDB/pLmuZ+AInF4KjXaVpyqlfchlNQsJTzL7bYH7zuC6cId12VcSTz+QP73Hl
         ZUcc9XUoZpIjqLDO4MAF5X6AUVLBXxxFWbm24bmqNDtGVNvye5WlQra+/emQAi/0r4WD
         1ZFAlFiSWvqpKykHYegwzXrlzRWzDP/ZRgvqkNuTGYt0ojaNV+BuRKAb120L8zYifNU9
         W74eEqr/RpzIUHY6f2EJqve6VTQdGDyoBcozElnMwJ+kXkHk98ot8l9NHTowtGcVj8fU
         89sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dgmibiKo/0d1me29Z9Dof5MRYzr1N/NxNY1XetBfk8Q=;
        b=PA7uvXsP2jqIzAnKycELh6Y4PIzf8DyHW5jcK2vl7gTY+sWuF3KfKQ3GLdW1FHlWgq
         27Y3zGas6XV34pbT007an3Cqh9n52c0NLDrGpqoiuCa43DjLdo67hX8Bk6zG7Epc6a3i
         NkAqTHB4wGshc2jl8Q8EBpW0OgnVna9W6kVYgT+FgwXuNkQtohwPZUnscfeo2lqyvY+w
         q2oPeNxPrTjq5f1z479CFgGnDOtXCKRNT4tkUDV+d17tW0GXADv7yjOhP6bI6gJ9MlDm
         jU19Iw0JeEObqWY+/QVl/Ib9h2LYwdA67ma5VBJ+9SKdlX0Y+iIApye28gPW89g457Bm
         gCXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Im9v9Mzy;
       spf=pass (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id g203si490346ywc.5.2019.10.18.10.42.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:42:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id o205so5874077oib.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 10:42:34 -0700 (PDT)
X-Received: by 2002:aca:cd4d:: with SMTP id d74mr9183592oig.157.1571420553320;
 Fri, 18 Oct 2019 10:42:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191018161033.261971-7-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-7-samitolvanen@google.com>
From: "'Jann Horn' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 19:42:06 +0200
Message-ID: <CAG48ez30P_Af-cTui2sv-YVUY5DdA1DXHdMmAW1+KpvjEPWUOA@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, linux-arm-kernel@lists.infradead.org, 
	kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jannh@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Im9v9Mzy;       spf=pass
 (google.com: domain of jannh@google.com designates 2607:f8b0:4864:20::241 as
 permitted sender) smtp.mailfrom=jannh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jann Horn <jannh@google.com>
Reply-To: Jann Horn <jannh@google.com>
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

On Fri, Oct 18, 2019 at 6:14 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> This change adds generic support for Clang's Shadow Call Stack, which
> uses a shadow stack to protect return addresses from being overwritten
> by an attacker. Details are available here:
>
>   https://clang.llvm.org/docs/ShadowCallStack.html

(As I mentioned in the other thread, the security documentation there
doesn't fit the kernel usecase.)

[...]
> +config SHADOW_CALL_STACK_VMAP
> +       def_bool n
> +       depends on SHADOW_CALL_STACK
> +       help
> +         Use virtually mapped shadow call stacks. Selecting this option
> +         provides better stack exhaustion protection, but increases per-thread
> +         memory consumption as a full page is allocated for each shadow stack.

Without CONFIG_SHADOW_CALL_STACK_VMAP, after 128 small stack frames,
you overflow into random physmap memory even if the main stack is
vmapped... I guess you can't get around that without making the SCS
instrumentation more verbose. :/

Could you maybe change things so that independent of whether you have
vmapped SCS or slab-allocated SCS, the scs_corrupted() check looks at
offset 1024-8 (where it currently is for the slab-allocated case)?
That way, code won't suddenly stop working when you disable
CONFIG_SHADOW_CALL_STACK_VMAP; and especially if you use
CONFIG_SHADOW_CALL_STACK_VMAP for development and testing but disable
it in production, that would be annoying.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG48ez30P_Af-cTui2sv-YVUY5DdA1DXHdMmAW1%2BKpvjEPWUOA%40mail.gmail.com.
