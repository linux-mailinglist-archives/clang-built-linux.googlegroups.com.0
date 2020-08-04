Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS6OUL4QKGQEQIN7HMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CC82023B191
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Aug 2020 02:09:48 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id m1sf21513827oom.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 17:09:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596499787; cv=pass;
        d=google.com; s=arc-20160816;
        b=VVuqw3RK7D0bEUJL1gjF+LVL+DeAXEtsJwl+pv+AwnnISUpiAv9kswHbMTmAbKpnca
         02kp5Sh8pXz1zhDqweCq/CiqcEz8ESr0bogg+VTN8YS8BpQeugxx4zjDAGcA1deAE9tk
         X5qXSLGsJqpxdFM/A2qVgjLtXiyVKS2WTMckpaaxy4t58FtLBmCnYUntXI7h2nyprn0T
         psBBHOj/Za8X5+qQkRkS6FTXzUfKD8kzQX3gpo/56H8+rh8eHhyz9rKpkdPlQ9upi2Nf
         SOEd5rzdFcMjQ1plJxIyawzctVLwvm/R0tIVpO0PjGj+N0upzQ1rKqXTbrjRrgk4CFWk
         EKzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rmqbNlr9DKjQ+wx3ymovXkajW5IOuXULelVnU0+jmdI=;
        b=auXHS8JGIqa5Rm5MW8I5VTK+EdGovSVYetuOJyqiiRpxPLVK23uJjUUkSHZgNkDvJu
         PdNo4yGx8HwNpWiM8G/pgEegexPYUxhwoC9w9qFBAsNuQdgAVi9gCMdeEedBKaOa4MC9
         Q5UgFl4q6PaA9pGqvS2HO6sp4wNCgJ2UCT72sK6UIX9jYI983N8laFQ9Q22vt7rVpDgF
         c1uniWvdVr8IIMFlGWeWgBC/VOvK+D94J6Cn1YyWk7WXxaJF2tYTL6Xtq8MhE666/JSb
         4ABrz5yLR96/zyGrNTyySBXDjdzeuuiQbzYsxidwF3zOeuBhFQtwk5AFEbDab/3XjBWo
         +OCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="h+Kr/xh5";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rmqbNlr9DKjQ+wx3ymovXkajW5IOuXULelVnU0+jmdI=;
        b=Dv4J9R/dbfdvOvqUvJuwaJbu8o8/sWjH037ktRX126v2CMjZFMaJdZ4LIWScEjveWH
         f76U0bj+TQqZhacTEfVDHAfKAct79Z2gAx8IvkInABAtXkNlFtJ47bEf8iVb4zywotxT
         aHQInEOXeTpky6uK0k96ni0R29EdddHJvLV5Re1mGuGifFl/e4kEMv39QH9gvS9Misp1
         lFOKDlh35h6vQndVgbOr73kQABx4gBPBC6X/uVZl3pVp/dNNDHOTtA+gn/ijO8lnf6NK
         n114orBdbC5h8S6v1PvyxdnlKf5Ndwvrj0FHc658JMT4D8eyHmKKw6ckTJRx8LJK4SuT
         2czg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rmqbNlr9DKjQ+wx3ymovXkajW5IOuXULelVnU0+jmdI=;
        b=M5DTLUPW8HYLigdQ17zs9LDdOVbfJr50KFkt6e+9hhrCZIZGhYPIpkj3GFlAqW3gh9
         WPEm/175VIKu8rSkWLl9PIEhMX7mSEacVGQ0A7oHghnjz0lnMlrT+gnSt4vaiERHOnja
         AqeEAph8nLJCBbktclFQ2ETzSjLrswd4rl55+90wrnbsoGCHfZ1KFrvANZ4DMlQuDiqu
         +4qYu5IUt/5i2YqczTCGCLrery/jSiWj74zE13hiDPxBg/jJwfdgXpWNgj/RO5uzuJbJ
         l0QT+5nw7SGIAFmydlu+hVvQj+BVE58ngdS1GbbzcwsJanPhwC56IxWkm2CEbXUu1EDC
         /MsA==
X-Gm-Message-State: AOAM531+9zbekO0WfxNw/1UD3VxdpqUADZcY2WbIQxlRS2ctMMfVYK+r
	p063uB4iNGBLZdlwjm9RS74=
X-Google-Smtp-Source: ABdhPJzLrxEBzQHB12jBGYPfkUD9Bm+tDAFY8me6ezsfDV+3WMCg+KQVx2oxnR+Y2o+dYv8c8G5Bng==
X-Received: by 2002:a54:4f1e:: with SMTP id e30mr1522293oiy.176.1596499787216;
        Mon, 03 Aug 2020 17:09:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:310d:: with SMTP id b13ls960306ots.0.gmail; Mon, 03
 Aug 2020 17:09:46 -0700 (PDT)
X-Received: by 2002:a9d:53c1:: with SMTP id i1mr16444580oth.161.1596499786876;
        Mon, 03 Aug 2020 17:09:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596499786; cv=none;
        d=google.com; s=arc-20160816;
        b=Q0k+O9sUkY+yyBb+9PjUk8Kwap/E31xrD+aqHTN9s9/8TYAA1meRordJ74jM/ZX0xX
         ACtZuSOzW50yGbhVvtxUNmKLF2RPZZgXq/+2g+GcZfYWm7xo7SUlgKseRHek9I5B5LjH
         uRfwgsIeUKJpZla19xanqGIlbDoiC6+4Ul2cUSz8AJk/V9x8dtelGeVhnB1dmewifaTe
         BchR3pmqLne1jtIJu16lNjRWJK2aUDPGtJic6NPtSFulLkN9+7b2NbYIzmKyjiTei3QX
         uYjakfjdRawrU6uuY4Qz6d1Pndrox8o6A4C/ETVSx8MRyqsGMjO+UJLcn2KDsWdD23zQ
         p9pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6kNl+hfthpZUs0DMOrCZCaKc5u5G5K72jxV4KQTYuVI=;
        b=DZupKgkl/cehVb1WIZOqyrpT7Vrpp3RGzN/qfZcpI8NmltXTXHqz5M/JZLyOVUg1yE
         eow6n7CcYvQcQ0UxEKluhxnnulgQiNEelctTmRFRbxrCVLJJCQbAjtu1RUoxQFjhTy2i
         T5YjFsXY4395M+LqVqspFpEiZQ5sUvSrY0IoRQdMsnkm2w4Qzpmdn7HbLb2qHtwI9lhO
         H0m3D+HiaMEVME2z/EOqNpyqUCOMyTID4FzkupY/CMtLSeWAz1RoMg2bQs5IQ65HEI8u
         ldedMXpJ2DL4tg1hMEME+RCctws3+x9OKf0m7vbKAiEWgP897+IgAYxobchY3Laab2+q
         PQAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="h+Kr/xh5";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id i19si1034732oie.3.2020.08.03.17.09.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 17:09:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id l60so1015898pjb.3
        for <clang-built-linux@googlegroups.com>; Mon, 03 Aug 2020 17:09:46 -0700 (PDT)
X-Received: by 2002:a17:902:cb91:: with SMTP id d17mr16563102ply.223.1596499785878;
 Mon, 03 Aug 2020 17:09:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de>
In-Reply-To: <20200527135329.1172644-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Aug 2020 17:09:34 -0700
Message-ID: <CAKwvOdmA29WzTd7APsQCsG_a=NVWuR53Z2h8NTLza5sisnV2PA@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="h+Kr/xh5";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Wed, May 27, 2020 at 6:53 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> When using the clang integrated assembler, we get a reference
> to __force_order that should normally get ignored in a few
> rare cases:
>
> ERROR: modpost: "__force_order" [drivers/cpufreq/powernow-k6.ko] undefined!
>
> Add a 'static' definition so any file in which this happens can
> have a local copy.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Hi Arnd,
Looks like
$ ARCH=i386 make CC=clang LLVM_IAS=1 -j71
defconfig+CONFIG_X86_POWERNOW_K6=m
is the simplest reproducer.

If I run
$ llvm-readelf -s drivers/cpufreq/powernow-k6.o | grep __force_order
    39: 00000000     0 NOTYPE  GLOBAL DEFAULT   UND __force_order
we can indeed see an undefined reference to __force_order.

If I build the .s file via
$ ARCH=i386 make CC=clang LLVM_IAS=1 -j71 drivers/cpufreq/powernow-k6.s
the only reference I see to __force_order is:
979   .addrsig_sym __force_order

which is created by Clang's implicit -faddr-sig.  If I disable that
for this file via:

```diff
diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
index f1b7e3dd6e5d..87d655d5af49 100644
--- a/drivers/cpufreq/Makefile
+++ b/drivers/cpufreq/Makefile
@@ -28,6 +28,9 @@ obj-$(CONFIG_X86_ACPI_CPUFREQ)                +=
acpi-cpufreq.o
 obj-$(CONFIG_X86_POWERNOW_K8)          += powernow-k8.o
 obj-$(CONFIG_X86_PCC_CPUFREQ)          += pcc-cpufreq.o
 obj-$(CONFIG_X86_POWERNOW_K6)          += powernow-k6.o
+ifdef CONFIG_CC_IS_CLANG
+CFLAGS_powernow-k6.o                   += -fno-addrsig
+endif
 obj-$(CONFIG_X86_POWERNOW_K7)          += powernow-k7.o
 obj-$(CONFIG_X86_LONGHAUL)             += longhaul.o
 obj-$(CONFIG_X86_E_POWERSAVER)         += e_powersaver.o
```
then the module links without error, and we get no hits for
__force_order from llvm-readelf -s.  This makes me think there may be
a bug in Clang generating address significance tables for global
variables that are otherwise unused, resulting in such linkage
failures. +pcc@ for that.

I ran a creduce job on drivers/cpufreq/powernow-k6.i where I'd compile
twice, one with the implicit default value of -faddr-sig and look for
the undefined __force_order, and again with -fno-addrsig and ensure
there was no undefined __force_order, which coughed up:
extern int __force_order;
int a(void) { asm("" : "=m"(__force_order)); return 0; }
as the bare minimum for an address significant table.
https://godbolt.org/z/cjfaqM

I'll bet this is coming from the call to read_cr0() in
powernow_k6_set_cpu_multiplier().  If __force_order is defined in
arch/x86/boot/compressed/pgtable_64.c, then I'm not sure it's a good
idea to build drivers/cpufreq/powernow-k6.c as a kernel module
(CONFIG_X86_POWERNOW_K6=m) vs statically compiled in.  Wouldn't
__force_order need to be EXPORT'ed for kernel modules to use it
safely?

> ---
>  arch/x86/boot/compressed/pgtable_64.c | 2 ++
>  arch/x86/include/asm/special_insns.h  | 7 +++++++
>  2 files changed, 9 insertions(+)
>
> diff --git a/arch/x86/boot/compressed/pgtable_64.c b/arch/x86/boot/compressed/pgtable_64.c
> index c8862696a47b..8595194cea41 100644
> --- a/arch/x86/boot/compressed/pgtable_64.c
> +++ b/arch/x86/boot/compressed/pgtable_64.c
> @@ -12,7 +12,9 @@
>   * It is not referenced from the code, but GCC < 5 with -fPIE would fail
>   * due to an undefined symbol. Define it to make these ancient GCCs work.
>   */
> +#ifndef CONFIG_CC_IS_CLANG
>  unsigned long __force_order;
> +#endif
>
>  #define BIOS_START_MIN         0x20000U        /* 128K, less than this is insane */
>  #define BIOS_START_MAX         0x9f000U        /* 640K, absolute maximum */
> diff --git a/arch/x86/include/asm/special_insns.h b/arch/x86/include/asm/special_insns.h
> index 82436cb04ccf..7081e587c1ea 100644
> --- a/arch/x86/include/asm/special_insns.h
> +++ b/arch/x86/include/asm/special_insns.h
> @@ -16,8 +16,15 @@
>   * A memory clobber would solve the problem, but would prevent reordering of
>   * all loads stores around it, which can hurt performance. Solution is to
>   * use a variable and mimic reads and writes to it to enforce serialization
> + *
> + * Clang sometimes fails to kill the reference to the dummy variable, so
> + * provide an actual copy.
>   */
> +#ifdef CONFIG_CC_IS_CLANG
> +static unsigned long __force_order;
> +#else
>  extern unsigned long __force_order;
> +#endif
>
>  void native_write_cr0(unsigned long val);
>
> --
> 2.26.2
>
> --


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmA29WzTd7APsQCsG_a%3DNVWuR53Z2h8NTLza5sisnV2PA%40mail.gmail.com.
