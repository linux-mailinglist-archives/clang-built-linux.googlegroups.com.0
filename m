Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGGC3L3AKGQE6Z2IQ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 6758B1EC23D
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 20:57:29 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id e23sf1540263uan.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 11:57:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591124248; cv=pass;
        d=google.com; s=arc-20160816;
        b=dDEtZewN9dd2ScT+aLkm0dKNFwvh8LhRClIJ8NiEKiDjvOqzedOYoYxuplApjjXs8W
         ZimLyY/FAvrL7RXjgnh2IbdohgJ/3Cjgo0AF5gVYBoEDZkldtSb5tVuMHo6muMgYfof8
         CH2ahWtsE2ZbQUnCcgGi/4rthA5K5JzjPgS7LAITBwySCc9nZabPUuXNxqYeYN9bDfTa
         DxFOG4jrlP5CLL1Oc3rqXBxA+RVJlkb+lXyL8j5O7YQ8kSlUengxYp2tMj+wu7Oz6Wf9
         C9m/kKm3tuxv/l1QCS7epNihC6VbLtvcuJ2e2Y0pUsi897asYi+dAyF2DvGl0qFpjmTd
         W41g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gNGu9A+fDQbos+u8vNlX58nYhL/4ekHH3Rtr286BlNw=;
        b=iMOCubMkU12+oAFXfVA4gGTEm7Kme5UPz/aHlZWZzH8OZgvHfRs+HiIL4Q9Bgwx8Xp
         tGLFaUNQH8PtBc72FvhW30dmu+HNULe48RhcShxrm2ayQ4s5cyVuW5LpD5ANM2tG07zJ
         NYW2/Enw4ZUCp+4yb8yCV6sdS8PfzPnPI29iPIkf8MjZx+681sGms102cdeJWHtmhGLK
         fV7o4WGfIV02boXpCnJoUtoYxk4tS+BTJ9e3t2vSVEETaFTQKlWCP0w2c3mGP0vVqVCt
         Yva0TcQbbDGLEcofQ3zllgDAFmlGcLuTGZbJykGDoo7j3NUO5RSJRRxEj+HuLOWzl917
         QegA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IZTwU0Bw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gNGu9A+fDQbos+u8vNlX58nYhL/4ekHH3Rtr286BlNw=;
        b=kr+ata4FkuBQH2+DRu+mos93p3nfMU6NUaipZGaNWrtyu5Zi0TDF2xr4mvvZmNMkrg
         cpBWWW/pbLLSFX91ktu3mMu1FP4HLV0vwjJLCrRCgI8xUZ/yu41hyuTl5hUGDLlPfPDk
         kO/6zZ4/4szRfTMnXo85DAmyiPFW2+QFdjbX1SacSKFxdK3FHKjYOFn0E4TnksktoNtp
         9hBEc7Ekd/wffkXz3UDyq18JN0vKbEPoxVM122lXQh8sKj36zSqpR4MaOE8H7eqZkuZG
         0ZzYq0g4vchJUlPvPoKoBb79Y25WcgIehRlKhqYn4eyUzplUzIhmcTYad4M38zWbH1Tq
         z/NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gNGu9A+fDQbos+u8vNlX58nYhL/4ekHH3Rtr286BlNw=;
        b=bXZ1SZN2OAzMYIyj1ixl1gUOGXOh1EWL9CePf6qAaveBe3xdBzmHtMYvFDTtifL84/
         McyUnNoRefAAgT3VSbPYVOnRK65/q8uMlMw5WEhCFsCHUhcKRUxosqn1WInfOtvsfm1l
         zUPujkd/u1EiZeSWfYMO6MXs1x60yV8SDimIvunpX9JhRlW8EZmQOHRct4PkMz4JJ63Z
         lDCwPJQGAzWWNyq6kCxoSiX+VEMX7ehi8z91OTS0+7QqZe0NIquewo/kiWoIJU33NQ98
         dqkx3xjtpiI1ISbBlHTJ8k5nqXGgKCh5v4qnuvUNLxIgP25Awbx17j4QJxgh71wTa9Ne
         OhJw==
X-Gm-Message-State: AOAM531t4zpBBlkPGkPrbmlYMsNk4iy9O49Yi7SopauDxBnoBmCvKDbz
	qWl+JH5InN7H2b6Lu/zt/tY=
X-Google-Smtp-Source: ABdhPJwicLp9+4zOoo+CaGEwQ01RijOVuZhx1mBw4q6wBcBdcwwYGpPexXcwfV67ZDk27LfgtBhcEQ==
X-Received: by 2002:a1f:ab4f:: with SMTP id u76mr18615069vke.62.1591124248308;
        Tue, 02 Jun 2020 11:57:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3749:: with SMTP id a9ls397431uae.11.gmail; Tue, 02 Jun
 2020 11:57:27 -0700 (PDT)
X-Received: by 2002:ab0:b0d:: with SMTP id b13mr12112643uak.70.1591124247761;
        Tue, 02 Jun 2020 11:57:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591124247; cv=none;
        d=google.com; s=arc-20160816;
        b=uuqAmDI3j31ej6ziAvTyUBph0f4wtJ6KTtKsjLumzBgOsGP2zpVT0c6/oYVqhD3+ms
         nizgnanHve5BDPlKYiXYI6QD8h6c/k9oZaYeOxyiEijBCcNIoi02oyRrMovPzWaPor36
         zBZi2zwq0OtdpoHdMucakmHsZHhk0HB5KNAGrgGKc4lrxOkgYTRM1VIl0Y1Aygz8f+JK
         ykgWxcgv/ezMgliuLUfFNkjpSuxzn+sre3D0qbYWJDiDEbiqh2wZgXD9vJgHoPhAPLnf
         J0tDzUvY331IDrViFIwmVTEYCvGqIcE9rTw68QBPAb3ycOm28r3Ymnq0zNLLWu62T+E8
         e69A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NBeXDiXpaNYSmdLg+CEOi/2SkM043Ho1hEbW/kRa2lU=;
        b=PIKes1nJgoAn+nw4LeIM6Dd77fdotGdZdl6g7AtEpb8Vi0MLINqXtCWu3bYMlWEDbV
         WgHSgVtUG20wWNNq1lihyL/J4QdFlK8QsJx4fDZsDh04XnPDZ/K5MweLrsysaBd8lYwq
         Qe5fQ5mA64ScXLnUiL8J8u9RYmAvod479p4K7cAXQ5PJSdhndA9bIhuOX2sWdVrlofE2
         KIiGecxR1mWd5zG/f3Fj9uFHr3kAcTSJ8QS5PqAiYLjvnR2M1wDaqbkceFuDfKRwW2SY
         2C5kQlyTPYNWF+110wJwzzOhMFrR9iUs544c5neueTn0Crt5SxbbuPWmtaxUbQHy4833
         N5kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IZTwU0Bw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a126si188539vsd.2.2020.06.02.11.57.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 11:57:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id p30so5509599pgl.11
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 11:57:27 -0700 (PDT)
X-Received: by 2002:a63:5644:: with SMTP id g4mr24385954pgm.381.1591124246486;
 Tue, 02 Jun 2020 11:57:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com>
In-Reply-To: <20200602184409.22142-1-elver@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 11:57:15 -0700
Message-ID: <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
Subject: Re: [PATCH -tip 1/2] Kconfig: Bump required compiler version of KASAN
 and UBSAN
To: Marco Elver <elver@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IZTwU0Bw;       spf=pass
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

On Tue, Jun 2, 2020 at 11:44 AM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Adds config variable CC_HAS_WORKING_NOSANITIZE, which will be true if we
> have a compiler that does not fail builds due to no_sanitize functions.
> This does not yet mean they work as intended, but for automated
> build-tests, this is the minimum requirement.
>
> For example, we require that __always_inline functions used from
> no_sanitize functions do not generate instrumentation. On GCC <= 7 this
> fails to build entirely, therefore we make the minimum version GCC 8.
>
> For KCSAN this is a non-functional change, however, we should add it in
> case this variable changes in future.
>
> Link: https://lkml.kernel.org/r/20200602175859.GC2604@hirez.programming.kicks-ass.net
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Marco Elver <elver@google.com>

Is this a problem only for x86?  If so, that's quite a jump in minimal
compiler versions for a feature that I don't think is currently
problematic for other architectures?  (Based on
https://lore.kernel.org/lkml/20200529171104.GD706518@hirez.programming.kicks-ass.net/
)

> ---
> Apply after:
> https://lkml.kernel.org/r/20200602173103.931412766@infradead.org
> ---
>  init/Kconfig      | 3 +++
>  lib/Kconfig.kasan | 1 +
>  lib/Kconfig.kcsan | 1 +
>  lib/Kconfig.ubsan | 1 +
>  4 files changed, 6 insertions(+)
>
> diff --git a/init/Kconfig b/init/Kconfig
> index 0f72eb4ffc87..3e8565bc8376 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -39,6 +39,9 @@ config TOOLS_SUPPORT_RELR
>  config CC_HAS_ASM_INLINE
>         def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
>
> +config CC_HAS_WORKING_NOSANITIZE
> +       def_bool !CC_IS_GCC || GCC_VERSION >= 80000
> +
>  config CONSTRUCTORS
>         bool
>         depends on !UML
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 81f5464ea9e1..15e6c4b26a40 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -20,6 +20,7 @@ config KASAN
>         depends on (HAVE_ARCH_KASAN && CC_HAS_KASAN_GENERIC) || \
>                    (HAVE_ARCH_KASAN_SW_TAGS && CC_HAS_KASAN_SW_TAGS)
>         depends on (SLUB && SYSFS) || (SLAB && !DEBUG_SLAB)
> +       depends on CC_HAS_WORKING_NOSANITIZE
>         help
>           Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
>           designed to find out-of-bounds accesses and use-after-free bugs.
> diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
> index 5ee88e5119c2..2ab4a7f511c9 100644
> --- a/lib/Kconfig.kcsan
> +++ b/lib/Kconfig.kcsan
> @@ -5,6 +5,7 @@ config HAVE_ARCH_KCSAN
>
>  config HAVE_KCSAN_COMPILER
>         def_bool CC_IS_CLANG && $(cc-option,-fsanitize=thread -mllvm -tsan-distinguish-volatile=1)
> +       depends on CC_HAS_WORKING_NOSANITIZE
>         help
>           For the list of compilers that support KCSAN, please see
>           <file:Documentation/dev-tools/kcsan.rst>.
> diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> index a5ba2fd51823..f725d126af7d 100644
> --- a/lib/Kconfig.ubsan
> +++ b/lib/Kconfig.ubsan
> @@ -4,6 +4,7 @@ config ARCH_HAS_UBSAN_SANITIZE_ALL
>
>  menuconfig UBSAN
>         bool "Undefined behaviour sanity checker"
> +       depends on CC_HAS_WORKING_NOSANITIZE
>         help
>           This option enables the Undefined Behaviour sanity checker.
>           Compile-time instrumentation is used to detect various undefined
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D5_pgx2%2ByQt%3DV_6h7YKiCnVp_L4nsRhz%3DEzawU1Kf1zg%40mail.gmail.com.
