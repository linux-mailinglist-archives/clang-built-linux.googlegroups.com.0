Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7OSYX5AKGQERZPWT5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 4961B25CD2A
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:09:03 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id l8sf2584534pgt.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:09:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599170942; cv=pass;
        d=google.com; s=arc-20160816;
        b=HuVw58DGWd2zxShJKUoY18O8n6l3zZJsLp3Xp2FG7wK88o57kAesWo0JO7NwXM7z6B
         ZU+gpEPWoFTeRh85c8a4DY/9VnGYlFvzuQrpKn/uVfyZxpMJZowBHeQDhFn+z3+ZkrUq
         OTAR1HTljVGt6BTTjgYQInoMiijvG6n/oKhjtZcQtZ/E7N1XDFAvGUxoLLKrSH2XNqHy
         1ABaVLaoe/dPAj4SlpBcgOEW82rw32tbgLmGIWyx6Mom128sg9909kx2GWzDzVgtU85j
         ktfS7+xDIX24Q4AuaFvjvgYYIgT+vxvuGrEGmJKzuAwhSAz8aNzjDugnUVreswpqu1tE
         L/QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fmvN5ETY/qo28H2k+XET4ayLT+fo/T9Lw7N8nK4+jLs=;
        b=X2Afg/d39gQG7vKpXgZAVAr/NYKfXP3p+hBvefmLm/z9bfCwBoA7uwF7XB3Mom8XSq
         Rh/Qr/nnBGULJ7kAvNK92qPJTz2wVb7GNFbdhB1Y5TKW+mZoKoQ9t2VQm/0hctRCbA3d
         RPdaBeca79FP3pdwz7sjsiTRfKg/BqmZuEOJ2T2P9sx7FSvtH6EZGtK0OqiSDUaUY2aG
         R0QSg4nYKpe6sMVDvIKCqyoSc4V9XNhi08O1MJtx0pXXU6AkIwiklXnO5U8m/w2XY8+1
         xXdkNXAlBCSxydVBKNe+5PzEJwxb/6R8bqpzyn9igul4z6i6NfcWpr9Ono9yULbOQKDZ
         c3+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RMbQl2aW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fmvN5ETY/qo28H2k+XET4ayLT+fo/T9Lw7N8nK4+jLs=;
        b=SFkMpxxgMxkdi5IMrBIAR7jZ4vqazNmPbPOLjlF5TCJU1r/kDJDtF0ihBSAo1NUDk1
         fQzAWRyOPPKmR8bcwaarO9HPXN56b42YaAPIGgrX6T/K8aYaBq/rD+aHbmBFsUDjtIXy
         akfbDGawYeLRnMIIJHJyZA3hXwCOhL4hMhfOzfeMt8YKx4xiv5ZH1+fDxwu88b95PB0V
         k2V7hMBuRSNz3+a1Zw1ol+Up2rZV79zz2SVvonQInzQ585MJuYFNld0oZ/CnAzwIEMjv
         SXa3bz0FVcymeIdQ0Um7/jBZXLoNArGY/WevrPt5okwpYY8W1Ydds2fk+vCwlkzBPnw3
         s6dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fmvN5ETY/qo28H2k+XET4ayLT+fo/T9Lw7N8nK4+jLs=;
        b=qJdkQwuQC3nOArc1iSZ2TWNIuyO9wFVveABL4ZytSfbe8U5BULisNnLWhzzrDy4XFw
         8yLNSj/RvMWp+1v4xDiBBcpwedqQW2UWChJ9BnG2W9S62lAl1DOMKBR9bepOxDbbYfsF
         zOl2K5uhZcfn4K4qOuDzGJc7/fyDOwdv0obpF98vTfpEUyrP5PY9jjIK9EZimKbJHQjO
         tO4hKNTFv48jXUzr1GcjUaUsoj2HZAewzfvYGqobTLwaw4BYY+cjo0k9fwzWCOOvWjOX
         FDsC1lr0IQc9a+Mk6BZAbna3Xt+30kWAg58OM0zU1jBG66OD2V5OO4DVG3kFOFtvxfm0
         IPnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fR5r7LjyS5WS/Ol/UYw11QYyf1bOrVTN1CRT1H6MaWNvSFh0u
	jL8PdhscSSH7Cts114HHBSc=
X-Google-Smtp-Source: ABdhPJy8Vy0dqozWhlpA5a50dYYjZt4KPbkrTkWI/TihlKVhMv6LGoKvxVHaozaYElOtKRpBmAKpHw==
X-Received: by 2002:a17:902:758d:: with SMTP id j13mr4895015pll.160.1599170941992;
        Thu, 03 Sep 2020 15:09:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3502:: with SMTP id ls2ls3124150pjb.1.canary-gmail;
 Thu, 03 Sep 2020 15:09:01 -0700 (PDT)
X-Received: by 2002:a17:902:aa41:: with SMTP id c1mr5970715plr.224.1599170941503;
        Thu, 03 Sep 2020 15:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599170941; cv=none;
        d=google.com; s=arc-20160816;
        b=KdnOl4wJ6CeLXpJsSRhoW6PQBsrogdHWyHzExuIjreRtpiO3YIVm8mIYusU2qtWcQ2
         GAu07VfdZ/76vCKhECN0TuWaOv2D+fT/pRaeQ0dSYwWY2AVJnr7k9fWOm0dna1ptn9xe
         YQrqBUeMLnS2BscNo4MPHVTAwp67kHgM5+knH5VzGh/6ikUDKtQFnV64GBQjAlaAvOAW
         ehyxs31b0yNZ403eoljedo4Wywy6kMx0vcnH8YIskXGzuTH7wXsiWw81Gui+4+e3t9lu
         Z4tUwmS8LQ++bprBLIe0Vv/xb3xIgMJy45p+YQlDV7ObMFdKPxQYEdQQ84FMkC4qHx5f
         wvww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1TFkAeGi9KR3Vg+6dLLM1QKXoNn5coQYzJIjZ0tVjI0=;
        b=kbuSezGNdTzXtrpS+o/BHmo+MDsGplLc5eKlUClgFvlc52bLsVUDaJXS0BnKv/1nzx
         rI7dpPleFBYBJ9Di3aQbMWcx7btlvz1tbvtxFWyleHbHoL0NQtZMtOEYOqYgSstMB3qE
         Mfn7F11PCfvEqHZrGQWUV1VWk0/9h+iSy+REDpR/Vkigl2aKYZ+PQOOVDfGFiqcszme1
         3I/80zWO5krdZfVYnFHuT24H/5ginqwRY1ybkXqd5Knir1LELUSkJNmeEjmKux8cp4LH
         zsyeH0FPzy7gx5wM7nlNNISNIgl16vjqNNG8NXa/YcgcDdBrJ42VWeb+x5MPMo1UlR9R
         VtdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RMbQl2aW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l26si326703pfe.2.2020.09.03.15.09.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id g29so3221805pgl.2
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:09:01 -0700 (PDT)
X-Received: by 2002:aa7:925a:: with SMTP id 26mr5953492pfp.6.1599170941115;
        Thu, 03 Sep 2020 15:09:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t11sm4160655pfe.165.2020.09.03.15.08.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:09:00 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:08:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 09/28] kbuild: add support for Clang LTO
Message-ID: <202009031504.07098D6F8@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-10-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RMbQl2aW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Sep 03, 2020 at 01:30:34PM -0700, Sami Tolvanen wrote:
> This change adds build system support for Clang's Link Time
> Optimization (LTO). With -flto, instead of ELF object files, Clang
> produces LLVM bitcode, which is compiled into native code at link
> time, allowing the final binary to be optimized globally. For more
> details, see:
> 
>   https://llvm.org/docs/LinkTimeOptimization.html
> 
> The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> which defaults to LTO being disabled. To use LTO, the architecture
> must select ARCH_SUPPORTS_LTO_CLANG and support:
> 
>   - compiling with Clang,
>   - compiling inline assembly with Clang's integrated assembler,
>   - and linking with LLD.
> 
> While using full LTO results in the best runtime performance, the
> compilation is not scalable in time or memory. CONFIG_THINLTO
> enables ThinLTO, which allows parallel optimization and faster
> incremental builds. ThinLTO is used by default if the architecture
> also selects ARCH_SUPPORTS_THINLTO:
> 
>   https://clang.llvm.org/docs/ThinLTO.html
> 
> To enable LTO, LLVM tools must be used to handle bitcode files. The
> easiest way is to pass the LLVM=1 option to make:
> 
>   $ make LLVM=1 defconfig
>   $ scripts/config -e LTO_CLANG
>   $ make LLVM=1
> 
> Alternatively, at least the following LLVM tools must be used:
> 
>   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
> 
> To prepare for LTO support with other compilers, common parts are
> gated behind the CONFIG_LTO option, and LTO can be disabled for
> specific files by filtering out CC_FLAGS_LTO.
> 
> Note that support for DYNAMIC_FTRACE and MODVERSIONS are added in
> follow-up patches.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

I remain crazy excited about being able to use this in upstream. :)

The only suggestion I have here, if it might help with clarity, would be
to remove DISABLE_LTO globally as a separate patch, since it's entirely
unused in the kernel right now. This series removes it as it goes, which
I think is fine, but it might cause some reviewers to ponder "what's
this DISABLE_LTO thing? Don't we need that?" without realizing currently
unused in the kernel.

I'm glad to see the general CONFIG_LTO, as I think it should be easy for
GCC LTO support to get added when someone steps up to do it. The bulk of
the changed needed to support GCC LTO are part of this series already,
since the build problems involving non-ELF .o files and init ordering
are shared by Clang and GCC AFAICT.

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031504.07098D6F8%40keescook.
