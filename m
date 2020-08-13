Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7UK2L4QKGQEYDFEVDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7B92431AC
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 02:12:48 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id z16sf2822271pgh.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 17:12:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597277567; cv=pass;
        d=google.com; s=arc-20160816;
        b=q/CBvr2D8utFmFzE0ThMg0Xd6Zny70TaHVS6ZWI4SPAz4Rn/QOHYwhFQH9ZS89GGFt
         hZcS1Fxk42bg0aY5AygjdDcToinO6BUkBawVMekncaFBg3jwc6VtZX+aUkNmLOFIztts
         3dtULeT3LaaFsxRGwjqazF10pt0fFtLEaEqtU/qqZ0/SqiD9mSWLfK/xzBloXZvBI54N
         AoraEwrOEd25EkM7fWfCtVwHddWQfdMSf+D/HYxQrl1XvUkJdtanysUWTN0GNo/3gI2H
         PWG0GcCtGHLrspruY7+AQ68teglravlmZE6+OkNLfQ4mGK6nnOi+34QI9ZSji7mCkw/N
         aZRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7Y4MqJYlpwoCr3HetWHnnDuKObvpS8PsFHe3q8TYNL0=;
        b=0K8aTc2ZULYgB0o6/+mSNqmRbRj0wmZgWNAkt/QLBXIgl6tx8hL7OvKPZagAUx/5Pb
         LsQGyTDvzrvOvwDzrnicSqGfxiaUP2xzCXAg3EQIxo7RLm2wpGxTSX0bamyJTn8hs7TV
         1KnN/K1iiA4XLHioaseu13qzSzm56Nhimyief8XkvxEXlpbQ/lKpsy6WafAhlC3UPmX2
         CuLk9C+erMebeub9+6QBxQDxNhVUsik7YqZJ9T6HaF8fJ12CzDzlf2xL61s9hAxHevaf
         Mkm33njL259cBG2bq2yQMjMXDiydivuhHx0A11wwqsPPgIEPLuYBpchzE4+3fLoGVZOk
         x6Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cE9ovcxB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Y4MqJYlpwoCr3HetWHnnDuKObvpS8PsFHe3q8TYNL0=;
        b=XuGacWVPrH2SZLz7+IdXdjAxrsP2Pj0Uty/ooRcldaEoswlT3C3sWZtcQpE56Rx27t
         aZrUvfOa9PwLciK/D8MENwTHN6AnexjX7cp9oebEws5G+Lb81XaDcI8rpvYLX298298V
         sX+BBEpTFawzd2vr7xOxzQ09rHf9QvOwUPmW6lSspJy346ahZ6xRFFZef1ZnmLXOHSzm
         xcDmWqhJQp3clTbAsmMhMJ/kd4xOoohyZm1cksVLPMiKBl4KsD/f4ZY5Vdsm4dumv+Nh
         rLL/ZSZUX/eHaPRUdNd7+37RgHqy3k3VGidyYAgbP3wn7sPgj1E2AmteI7JKrZPsHWrW
         teig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Y4MqJYlpwoCr3HetWHnnDuKObvpS8PsFHe3q8TYNL0=;
        b=VJneqIb1ctIt7gmiElFLOlk+tCcYTrsyrc269ECePkwaHqSf7RPAo2ESFgqcKUX1B1
         8wcdKRo2C0qKxx9Tp+50aKyP34TXPuKrXz2NGTzDiMfKpEPIWAf4UiWCnzBl5pV445wj
         W9gYwoyVDiH1bKiMtAoSzFDkPuTQfLomCxkz2L1LZhdeP/cmiRn1vAdG/lksLePlXDKj
         09G/ytuxSM1MbQQsnxeGrJQiKuVtXF26Hvq5Tz5zyyrJdr7yqw5oWw2sVxh62WNTEeLJ
         L9J6LUJkRmU+wBQVSJMZ65QW7lX2mSxjCagpsSsQfKcTiQF+H7eZ67Cp5MhXmguJecVq
         idNg==
X-Gm-Message-State: AOAM531MnOiYkuG8M/oWnGzzgoO9Af+ZVopRL8QsKwbDITF/VRYvWILt
	uPfjaaesyZpl04cxfR3A/ik=
X-Google-Smtp-Source: ABdhPJxpLVBA0BypOBmu5h4pfO609Nibn0MtAE99c/4hTUcLngWVyQBpU6XwZYzDTBm8hQ+1+ilBmQ==
X-Received: by 2002:a17:902:a9c4:: with SMTP id b4mr1743259plr.40.1597277566955;
        Wed, 12 Aug 2020 17:12:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls1095814pgp.10.gmail; Wed, 12
 Aug 2020 17:12:46 -0700 (PDT)
X-Received: by 2002:a62:1951:: with SMTP id 78mr1906332pfz.137.1597277566396;
        Wed, 12 Aug 2020 17:12:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597277566; cv=none;
        d=google.com; s=arc-20160816;
        b=kBBCshOC8sTjgXAGw0r53BYSgz+Y26WYZ4KvzgF/ESAgU2hcboaNIJ+JmYr4au23wZ
         rMdWMNGRxdJ/hBVkzOGuEtVRiEKVfU9Xhm000beGIAj6JhQSfV/+K9395LAF8DcijqJk
         Dx7YxfD20QXjezmkljlRXV8qWbtvONKdBJdqaD2YUPTFGwJKK1WbSB+TItn/78OnRGkf
         I3gMcFqwh8FwM+ENacFtawqnEUdT7CZeocJoWcvtlGaPP1iA3uQMkFvaUD8ixWHG25sb
         6Rl9PadtUAP8XhglcvZSBGTVw3VW3C/xHI5Gj9HRauRHyuiJDuPn662zjcHu94wX5j5l
         c2BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rQ8RM01rFuZ8r/9BI4QTmJ2mrQfdhz3BxI3jO3ju76Q=;
        b=w9r+pILNzhSY0pDocvRoARudrzfsMf7nFcxoaTUDrSrRp1JdXtnpCwyDq4Xgv3Dwlm
         sqdQdimhRFsocaJEdkXVOl2TJ3Ms574yz8+14/5aBUSCanbC1SslJ8aKBZ6tUVuvg/21
         l9KFqqZkFkNzER3zDkrWfQcJwuXNM7eYwjgpTPrv/23AqHv375SNLcL2xWhKYKJqh8xD
         g48KDkYz1lRSxU+N8xGx39FDa6/ZGBo+80KHVTRCDPKFm/sW75h48H97NpyMfTrowyjK
         PsGp+BcKjZdabBuEBT14/OhbNWpDPCET4BurdnzRM9H6AOZSWa7cxFKug+JIXwyLHQYF
         DAnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cE9ovcxB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id ml3si276122pjb.3.2020.08.12.17.12.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 17:12:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y6so1847095plt.3
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 17:12:46 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad1:: with SMTP id b75mr2316606pjc.25.1597277565702;
 Wed, 12 Aug 2020 17:12:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <878serh1b9.fsf@nanos.tec.linutronix.de>
In-Reply-To: <878serh1b9.fsf@nanos.tec.linutronix.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 17:12:34 -0700
Message-ID: <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, 
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
 header.i=@google.com header.s=20161025 header.b=cE9ovcxB;       spf=pass
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

On Thu, Aug 6, 2020 at 3:11 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Arnd Bergmann <arnd@arndb.de> writes:
> > When using the clang integrated assembler, we get a reference
> > to __force_order that should normally get ignored in a few
> > rare cases:
> >
> > ERROR: modpost: "__force_order" [drivers/cpufreq/powernow-k6.ko] undefined!
> >
> > Add a 'static' definition so any file in which this happens can
> > have a local copy.
>
> That's a horrible hack.

Agreed.  And static means everyone gets their own copy, rather than
sharing one memory address.  I guess no one actually writes to it, so
it doesn't really matter, but __force_order just seems so strange to
me.

> And the only reason why it does not trigger -Wunused-variable warnings
> all over the place is because it's "referenced" in unused inline
> functions and then optimized out along with the unused inlines.
>
> >   * It is not referenced from the code, but GCC < 5 with -fPIE would fail
> >   * due to an undefined symbol. Define it to make these ancient GCCs
> >   work.
>
> Bah, we really should have moved straight to GCC5 instead of upping it
> just to 4.9
>
> > + *
> > + * Clang sometimes fails to kill the reference to the dummy variable, so
> > + * provide an actual copy.
>
> Can that compiler be fixed instead?

I don't think so. The logic in the compiler whether to emit an
"address is significant" assembler directive is based on whether the
variable is "used."  The "use" of `__force_order` is as output of all
of these control register read/write functions' inline asm, even
though the inline asm doesn't actually write to them.  We'd have to
peek inside of the inline asm and build "use/def chains" for the
inline asm, to see that you don't actually use the output variable.
Best we can do is see it listed as an output to the inline asm
statement.  And if you reference an `extern` variable, it should be no
wonder that you can get undefined symbol linkage failures.

I'd much rather remove all of __force_order.

>
> Aside of that is there a reason to make this 'static' thing wrapped in
> #ifdeffery? A quick check with GCC8.3 just works. But maybe 4.9 gets
> unhappy. Can't say due to: -ENOANCIENTCOMPILER :)

From the comment in arch/x86/boot/compressed/pgtable_64.c, there's a
hint that maybe gcc < 5 and -pie (CONFIG_RANDOMIZE_BASE?) would fail
due to undefined symbol, though I'm not sure which symbol the comment
is referring to.  If it's __force_order, then removing outright likely
fixes that issue.

Not sure about the comment in arch/x86/include/asm/special_insns.h
either; smells fishy like a bug with a compiler from a long time ago.
It looks like it was introduced in:
commit d3ca901f94b32 ("x86: unify paravirt parts of system.h")
Lore has this thread:
https://lore.kernel.org/lkml/4755A809.4050305@qumranet.com/
Patch 4: https://lore.kernel.org/lkml/11967844071346-git-send-email-gcosta@redhat.com/
It seems like there was a discussion about %cr8, but no one asked
"what's going on here with __force_order, is that right?"
Latest GCC release on December 4 2007 would have been GCC 4.2.2 according to:
https://gcc.gnu.org/releases.html

Quick boot test of the below works for me, though I should probably
test hosting a virtualized guest since d3ca901f94b32 refers to
paravirt.  Thoughts?
--- a/arch/x86/boot/compressed/pgtable_64.c
+++ b/arch/x86/boot/compressed/pgtable_64.c
@@ -5,15 +5,6 @@
 #include "pgtable.h"
 #include "../string.h"

-/*
- * __force_order is used by special_insns.h asm code to force instruction
- * serialization.
- *
- * It is not referenced from the code, but GCC < 5 with -fPIE would fail
- * due to an undefined symbol. Define it to make these ancient GCCs work.
- */
-unsigned long __force_order;
-
 #define BIOS_START_MIN         0x20000U        /* 128K, less than
this is insane */
 #define BIOS_START_MAX         0x9f000U        /* 640K, absolute maximum */

diff --git a/arch/x86/include/asm/special_insns.h
b/arch/x86/include/asm/special_insns.h
index 59a3e13204c3..d2e0d53b0f69 100644
--- a/arch/x86/include/asm/special_insns.h
+++ b/arch/x86/include/asm/special_insns.h
@@ -10,46 +10,37 @@
 #include <linux/irqflags.h>
 #include <linux/jump_label.h>

-/*
- * Volatile isn't enough to prevent the compiler from reordering the
- * read/write functions for the control registers and messing everything up.
- * A memory clobber would solve the problem, but would prevent reordering of
- * all loads stores around it, which can hurt performance. Solution is to
- * use a variable and mimic reads and writes to it to enforce serialization
- */
-extern unsigned long __force_order;
-
 void native_write_cr0(unsigned long val);

 static inline unsigned long native_read_cr0(void)
 {
        unsigned long val;
-       asm volatile("mov %%cr0,%0\n\t" : "=r" (val), "=m" (__force_order));
+       asm volatile("mov %%cr0,%0\n\t" : "=r" (val));
        return val;
 }

 static __always_inline unsigned long native_read_cr2(void)
 {
        unsigned long val;
-       asm volatile("mov %%cr2,%0\n\t" : "=r" (val), "=m" (__force_order));
+       asm volatile("mov %%cr2,%0\n\t" : "=r" (val));
        return val;
 }

 static __always_inline void native_write_cr2(unsigned long val)
 {
-       asm volatile("mov %0,%%cr2": : "r" (val), "m" (__force_order));
+       asm volatile("mov %0,%%cr2": : "r" (val));
 }

 static inline unsigned long __native_read_cr3(void)
 {
        unsigned long val;
-       asm volatile("mov %%cr3,%0\n\t" : "=r" (val), "=m" (__force_order));
+       asm volatile("mov %%cr3,%0\n\t" : "=r" (val));
        return val;
 }

 static inline void native_write_cr3(unsigned long val)
 {
-       asm volatile("mov %0,%%cr3": : "r" (val), "m" (__force_order));
+       asm volatile("mov %0,%%cr3": : "r" (val));
 }

 static inline unsigned long native_read_cr4(void)
@@ -64,10 +55,10 @@ static inline unsigned long native_read_cr4(void)
        asm volatile("1: mov %%cr4, %0\n"
                     "2:\n"
                     _ASM_EXTABLE(1b, 2b)
-                    : "=r" (val), "=m" (__force_order) : "0" (0));
+                    : "=r" (val) : "0" (0));
 #else
        /* CR4 always exists on x86_64. */
-       asm volatile("mov %%cr4,%0\n\t" : "=r" (val), "=m" (__force_order));
+       asm volatile("mov %%cr4,%0\n\t" : "=r" (val));
 #endif
        return val;
 }
diff --git a/arch/x86/kernel/cpu/common.c b/arch/x86/kernel/cpu/common.c
index 965474d78cef..ba9b5234cf44 100644
--- a/arch/x86/kernel/cpu/common.c
+++ b/arch/x86/kernel/cpu/common.c
@@ -358,7 +358,7 @@ void native_write_cr0(unsigned long val)
        unsigned long bits_missing = 0;

 set_register:
-       asm volatile("mov %0,%%cr0": "+r" (val), "+m" (__force_order));
+       asm volatile("mov %0,%%cr0": "+r" (val));

        if (static_branch_likely(&cr_pinning)) {
                if (unlikely((val & X86_CR0_WP) != X86_CR0_WP)) {
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA%40mail.gmail.com.
