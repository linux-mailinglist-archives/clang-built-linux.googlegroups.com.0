Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWHP5H3AKGQELQ4AEIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C92D1EFE3B
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 18:50:34 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id l19sf5499304oov.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 09:50:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591375832; cv=pass;
        d=google.com; s=arc-20160816;
        b=KFrb5nLlTyyPUQganYxl2Uksi1/wbdiFEs+y6FAmWnYHysJ1oArNUkpyvH9z6O0Ja9
         bRQJClC5Ur/DRjvFHYHmY6qa8Xzpt6xfofAad2toBkN+PE7p7JTx9eNfenbZ1qS67OqI
         Op8/X9SvGqJDVKYCcRbyFbb3O4cajpiWe/RnFLkdzUl+CsO5addii5gYjxUTP+VypwRD
         dB0/4vQcZD2x/HjgD7FhAyFKoZ+WDvm6BFvOMFPETzC7dBMmvqwvjFq9XOowlqB2FPuc
         uhTS0RLfrmnvjeeVjP2dc1iVcMMBxRtDKTYa1EHMm86mC5nog0R/KTuymlh3+YCgo5+7
         IK+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=M7pcQxQQVYeui7Zt9qabw7NvHIbqnbpRjK+eVJpSjJE=;
        b=X7CSROCXjgy2DAcXqd+7/FlwnvkAi6/1UDcYy7TswXnxZQlFGxAV5FIv6KtAqbraV5
         +fGidXdGjhQDroziyjTL9GE8fortDLbwWCwF/4hGfDBN/bHlDbFwFocA/DI9aYMtXZbX
         GDXKzjKcmkir/fkW8CxU+F/IY28aMZmncAgl2jw+lRCTx7BGfXnY7VyfQTUgWBRFvIYA
         j4HEmTTMeDqKxJ2Vv3yvrqO868T90DvLSYDVr+7h7j+Wrhxcjk1cqEl/8ae+N6QiGKjH
         tdwVjEGiOxtxjv6jSj3vTkHijGh3+dkm1UltrWKfY1M34D9/AQ+TRHBJfsy8mOCi4JNW
         E+qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xlk62jXK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M7pcQxQQVYeui7Zt9qabw7NvHIbqnbpRjK+eVJpSjJE=;
        b=JVAFqemRfnpmrucV/gJnlXBKiqtExeHZbd45Sv4qOzGwVZgWjBseciIwE5ukpVtMdm
         LzQwlFoPvd9drulFlUYDRJcAOHjjXv+z4d1am6aYhRwwKmWuwG9xqKdzLMNJlyGPYKPW
         rFnyKLMnTN7UaxopXtopWFCLnp0gzj3zJF4xQZMbrGMWbVanwsrlcb9J6EFNU95X23Jp
         WwWuaOWCsAKtsZHiRzkoMWO1PBRo5P2bLSPKfEhYIKN66DUz+Wdj8qjdGILxMh6sh1vJ
         9XfiayfFwjc3bZzABz8GrGUg/wVqAZy+pF7fljWVe0Vl/k09CL8PghFR1UrOSxSMTHYk
         XgKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M7pcQxQQVYeui7Zt9qabw7NvHIbqnbpRjK+eVJpSjJE=;
        b=M/JZFZG0qBY7nSZPAT/Kfbn3hlXEXPVpoLNfADAf240KT/7tzzbg4l0IvJjA+Fyra6
         Tc7HtncbHwB2V9AjC45e3QZhHGEuGpDpXVdXR1ZEkgfGysR8EYrAguUZYmA3QMQaRkrD
         hY0BguRGp3emIfOqanMXKJsDdwOEvYNQAnk40cm7CKvoZFAxH60A5sxYI9nw/MOtNqfz
         9ybmz467x7lRZR8Uz43VjiYwHrm4osyaGdLGj9Jvp3RxTIfL5fUA/26zIi5E7Wm9oOBP
         t8FPvHqq7tI50PwO8d2m99rhndQpZyBIVjpU4MB2xoZ9yDigLdiZ+KwUn+vRY97OwCZq
         yolg==
X-Gm-Message-State: AOAM531tAI8ejWqCs5vCMWyDARqkjmpCE1twr2skx6tTvk3JjN9CHOKp
	FWoCjDokMNmpr96WlkMGy6s=
X-Google-Smtp-Source: ABdhPJx8V46KRzE6hTvdjquM3KIjKoSd0hQKuQr0emN84Jfr25XhsqhV0lxJs7rTtdQnBElpRcJboQ==
X-Received: by 2002:a05:6830:18c8:: with SMTP id v8mr1340390ote.119.1591375832636;
        Fri, 05 Jun 2020 09:50:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d656:: with SMTP id n83ls1916615oig.0.gmail; Fri, 05 Jun
 2020 09:50:32 -0700 (PDT)
X-Received: by 2002:aca:6004:: with SMTP id u4mr2530996oib.71.1591375832250;
        Fri, 05 Jun 2020 09:50:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591375832; cv=none;
        d=google.com; s=arc-20160816;
        b=I5LjOhYYH+D44JPPaFYd8BsA/1/YVX8y4Q3jt8jNok3u5cEQpDUVbrguRW+oYGKkpJ
         sTpLYc6WAzDfwQtupg2oXIqy5sbmm5VP7FmrUn9hYlQxAZLqOcAvGcIUYz25+UmlQfJB
         j0YmkQjhP9BgMDL3Z8U8II7cKb4gKOmHNRyZbiAhvCFPC9gIpUgxEsyj1jYHiiCzSdzw
         LGg9XvkH/OdkZOkTA9fPW2Ozhg78E2R4hiCGJoFKHJ3JRB4032YLdb9GGYb3nCac2rKe
         5c6g8hE4iB+Z9igURvU4o+Fz3yM3YE+1ILKegj88FFVU8Qow0DEHTMLX0mvCdlpv3HV7
         MxIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ndEcXCs8HGuPHBOdpnF2uLFbc3ITmk/itvLe9IIcUiU=;
        b=NoC51f8Ucc77qAaQFidmP1UYWwI2RnEfO52lixPF3piYWzaEaKPjA/AKmS9uVVYaGX
         0sLC5Z/oduTtuNSRJYxvDzD2/2YlaStrS2GoI0haKYViLhJYReJhW6CaZgJ30j6jGnQx
         F2M+6DIBlkYZvGz3G3sR7pEvSb/IRsFh0fHb7w1s44QQDKuHUZd9JuijrVJTdXZLh2zW
         OYOV1m8hv8eud6xcJAwLyivClev0CYABCxkc+1FX19f78ViM9yy7KuDRV3iVMdl4Mc0m
         44GG8DawGvMW5dh+pIYmZQWtXBpfcDbeEr/ffucUPlUpwSkM0NJd0vt8CACWrzj55lNr
         0dmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xlk62jXK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id k65si112566oib.2.2020.06.05.09.50.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 09:50:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id k2so2856625pjs.2
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 09:50:32 -0700 (PDT)
X-Received: by 2002:a17:90a:4802:: with SMTP id a2mr3849393pjh.25.1591375831319;
 Fri, 05 Jun 2020 09:50:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200605082839.226418-1-elver@google.com> <20200605082839.226418-2-elver@google.com>
In-Reply-To: <20200605082839.226418-2-elver@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 09:50:20 -0700
Message-ID: <CAKwvOd=EOQ8g43aC2=aW1kKPmroPCjBJ_1yDwo_zTCgvCuDG5A@mail.gmail.com>
Subject: Re: [PATCH -tip v3 2/2] kcov: Unconditionally add -fno-stack-protector
 to compiler options
To: Marco Elver <elver@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xlk62jXK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Fri, Jun 5, 2020 at 1:28 AM Marco Elver <elver@google.com> wrote:
>
> Unconditionally add -fno-stack-protector to KCOV's compiler options, as
> all supported compilers support the option. This saves a compiler
> invocation to determine if the option is supported.
>
> Because Clang does not support -fno-conserve-stack, and
> -fno-stack-protector was wrapped in the same cc-option, we were missing
> -fno-stack-protector with Clang. Unconditionally adding this option
> fixes this for Clang.
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Marco Elver <elver@google.com>

Thanks for considering the suggestion.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
> v3:
> * Do not wrap -fno-stack-protector in cc-option, since all KCOV-supported
>   compilers support the option as pointed out by Nick.
> ---
>  kernel/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/Makefile b/kernel/Makefile
> index ce8716a04d0e..71971eb39ee7 100644
> --- a/kernel/Makefile
> +++ b/kernel/Makefile
> @@ -35,7 +35,7 @@ KCOV_INSTRUMENT_stacktrace.o := n
>  KCOV_INSTRUMENT_kcov.o := n
>  KASAN_SANITIZE_kcov.o := n
>  KCSAN_SANITIZE_kcov.o := n
> -CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
> +CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack) -fno-stack-protector
>
>  # cond_syscall is currently not LTO compatible
>  CFLAGS_sys_ni.o = $(DISABLE_LTO)
> --
> 2.27.0.278.ge193c7cf3a9-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DEOQ8g43aC2%3DaW1kKPmroPCjBJ_1yDwo_zTCgvCuDG5A%40mail.gmail.com.
