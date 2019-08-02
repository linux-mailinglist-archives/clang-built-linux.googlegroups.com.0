Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBDXFSHVAKGQEAMN3WFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CF57FF8C
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 19:27:43 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id c70sf56066053ywa.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 10:27:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564766862; cv=pass;
        d=google.com; s=arc-20160816;
        b=nFVgNBZ/TlH0gVVUFpxSvDaAxsATqk6oVaqJQpYVM0pRVB0JhPwdI4UO+Z8+hZHKkt
         jY7RBO3/RN86snq+ZthWdMCvTVT5lYrZHbmxb31fZeQUrUKYVplp4OFFoQBO/Nqfxs52
         JDQUxOMTBCFFsJFLbwueh18mVqBzxvMOLCaphwysGHiYvXmu0F4uwzoaZ1WoA1uo7zTQ
         huNGgvTak/ilOskmqKaX9kd9EfeinsmJcub5ksZqzFOC53BE+n2z+7lGCTNUsOLai5oR
         F+08YZq6WPSuPiRw2Qk7mPbtIcbBR5DwYTc5ScDPX2impHFvPNo890u9KQQh0GkQ6yV+
         eUgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=52U6Ng6OHWh9Pn0TRqp3fRHZ1IzqikId6JklhN6TkRs=;
        b=z/ICENsQNyHpEgpcmxnfZR692buSwopZ0nWOzS/gPgQY6FIKDmRIAnUoAYoms4BUJk
         CsIdQM1TQfGRgnHEy/hWX5m3sEJFbDhVLhEfDfzGEec+mElcpZyTISZlHHDhhrAXzpoQ
         0zw9X9Ki5NLJ7opIuTRatYmuaUYVUegKoV38lKgfQxMonOA4ISoi1stRS1UEV7hWeo2Q
         gh20pzMN7rbJj7HXZyw4wykDJvOcCCu6kZPKdpPdjbIs8wtnLbpdZAL3KtY9Reh6k8gh
         gh1IFyr20GPX/JRK46i92dd8bin12i+bLqr/3527bkjxxUteRu6vpEkhp6I07UtUB4ex
         WPXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ua5jLx3V;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=52U6Ng6OHWh9Pn0TRqp3fRHZ1IzqikId6JklhN6TkRs=;
        b=DYl3MRJjuW3jb6RxZb7p/8u8LJEOTe1hDs00j8DfJsLnPeY/ZRWX43qPhxExDA0J5U
         AGCqRMDXQPRdxFdRHK5MRe1Xot09K7GvrDJuWyxN8T+J1LkyJFVhV4X2cmtCj0asB/Qn
         THRbmsojJZsYepTONFcsqCW9zt1D+wrghf/DW7zUj1J0hVU2nKUW7u1vMhlbHs+Z3dQm
         hAOdbDnKbDOxbgqbYOuk2ANSbYoTf/bM/Q9RbhSv5TaVuYvn6+RO5wTsFo5tz0+z5lYj
         +QW1AwrE2INTNVKrUglv6MM7Yq68kmbeUdyZrNic3DbSmBxCwWqho0mAotH18yd9b8Z+
         jUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=52U6Ng6OHWh9Pn0TRqp3fRHZ1IzqikId6JklhN6TkRs=;
        b=LCPwPvV7q/z2pnzJZZCsuh2gfKX7y934Uli+dJtvozz12W2NtwyfO/a4ZNkXqWsxW/
         ZAPv1RcpP2nM0N7pI0nKlWbTy9dZEhOTz+fWtWU+hT/SsREGeG2sMgsIUG5gAk7gVOXC
         8k6iqaK7Zcmy4KMdkRmsBYF9oLTXn5QCD/JXq/Uj9/74sAjWSaHhjP8HW37ZF6FbVcMB
         WhdJAl8Gf34QtUY2t+XKVjVe9JEI+VfJxBJJN4tdfDfYZJK5pEKxwx5Y8n/u2HmuzZyO
         mOMRMYmM+o5b4lpoz7dF0mwNqBsfLPnsuC1sc7c2ktHsrRC3Ifi/4EPekUGCmnAUAY6y
         eVHQ==
X-Gm-Message-State: APjAAAVtaRDbmXtwz6pV7HAQY2Fr5Ofz2XxUMhjdkyg73M5f+5ahnF+a
	4ix0U2do90g09TPsJSDms54=
X-Google-Smtp-Source: APXvYqwDG4U1buZEoSlVlN5ktJqrOtFG0bF+7HaukbvQVx/byfytoOusxhRuBtraPSGpliM6DWHBpw==
X-Received: by 2002:a25:840b:: with SMTP id u11mr73492446ybk.283.1564766862506;
        Fri, 02 Aug 2019 10:27:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dcd2:: with SMTP id y201ls7353572ybe.7.gmail; Fri, 02
 Aug 2019 10:27:42 -0700 (PDT)
X-Received: by 2002:a25:728b:: with SMTP id n133mr3073474ybc.344.1564766862212;
        Fri, 02 Aug 2019 10:27:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564766862; cv=none;
        d=google.com; s=arc-20160816;
        b=ZTwWkNWvakDIPTFvKObIzi8SBWxU2oGQYtgDXCSoSd/GGTLJBMW0eS2FFr2DveHLUr
         I4JrT4hDelYHp8scrss6NDNp1iHb2bIxjXKD1WM2CRGUPYD784lEoXMiYB507pf033wH
         XWoTQ6QANF7Rttkv/9Wjro8+FffLI6qs0QXkKKb44zioQ/ha85LWpbTCAYjoHa8k2aLg
         dDX96p+7iieWiY7kTmLNenU4bp/2M6vhMmymwRPPU4+TRambB93kRuQZdwyu/0Do6Xjb
         WGg1pyQwPd39QQ4VbmDHueeIILzW/hsvYcosW6ohJxRQ3D9eQkbR+TNwB+4dTa2GXagt
         ZjnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EAgJ8NtyM6KHFbQkJ8tXJFeRK1KfMV+A92hOUXvjUKw=;
        b=V/gkhLv76X0IYF3xhYJv5hURZVKvuzfTUK/U8+gVpaoEh0fxeI+g/mw9rYwRsla2m1
         HaIfr2iKtJiVijq3gXUiXScy9L+Dsk/klHwrcX/Ui4IIOLzwdYEcVc74CaAw7efwt6Qx
         37eetyCl2D6xB8zyobsXeNv80tQuX2sZnuYavo97yYp1fhlVbWcTBajVYew/cFnK7oVW
         XzqWFSl/OYKt7gygHswz8XccKD0u+7nz11wOgmf27LM/ZAUS2s1Jml0rPtimL1oUl4kc
         HizVVFKhOgY/1jZBMyuHC/7Q0MqdE2aNJhSMCZORthC78ZHgLwKq2k6b7yoaX7LU43Ey
         Yxkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ua5jLx3V;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id b74si3240591yba.4.2019.08.02.10.27.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 10:27:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id w17so30365844qto.10
        for <clang-built-linux@googlegroups.com>; Fri, 02 Aug 2019 10:27:42 -0700 (PDT)
X-Received: by 2002:ac8:25c2:: with SMTP id f2mr97462220qtf.164.1564766861594;
 Fri, 02 Aug 2019 10:27:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190801231046.105022-1-nhuck@google.com> <01222982-4206-9925-0482-639a79384451@arm.com>
In-Reply-To: <01222982-4206-9925-0482-639a79384451@arm.com>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Aug 2019 10:27:30 -0700
Message-ID: <CAJkfWY6StuyMuKG7XdEJrqMsA_Xy02QZKp8r0K2jwSZwBCt+9Q@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux@armlinux.org.uk, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tri Vo <trong@google.com>, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ua5jLx3V;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::841 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

You're right. Would pushing an extra register be an adequate fix?

On Fri, Aug 2, 2019 at 7:24 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 02/08/2019 00:10, Nathan Huckleberry wrote:
> > The stackframe setup when compiled with clang is different.
> > Since the stack unwinder expects the gcc stackframe setup it
> > fails to print backtraces. This patch adds support for the
> > clang stackframe setup.
> >
> > Cc: clang-built-linux@googlegroups.com
> > Suggested-by: Tri Vo <trong@google.com>
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> >   arch/arm/Kconfig.debug   |   4 +-
> >   arch/arm/Makefile        |   2 +-
> >   arch/arm/lib/backtrace.S | 134 ++++++++++++++++++++++++++++++++++++---
> >   3 files changed, 128 insertions(+), 12 deletions(-)
> >
> > diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> > index 85710e078afb..92fca7463e21 100644
> > --- a/arch/arm/Kconfig.debug
> > +++ b/arch/arm/Kconfig.debug
> > @@ -56,7 +56,7 @@ choice
> >
> >   config UNWINDER_FRAME_POINTER
> >       bool "Frame pointer unwinder"
> > -     depends on !THUMB2_KERNEL && !CC_IS_CLANG
> > +     depends on !THUMB2_KERNEL
> >       select ARCH_WANT_FRAME_POINTERS
> >       select FRAME_POINTER
> >       help
> > @@ -1872,7 +1872,7 @@ config DEBUG_UNCOMPRESS
> >         When this option is set, the selected DEBUG_LL output method
> >         will be re-used for normal decompressor output on multiplatform
> >         kernels.
> > -
> > +
> >
> >   config UNCOMPRESS_INCLUDE
> >       string
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index c3624ca6c0bc..a593d9c4e18a 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -36,7 +36,7 @@ KBUILD_CFLAGS       += $(call cc-option,-mno-unaligned-access)
> >   endif
> >
> >   ifeq ($(CONFIG_FRAME_POINTER),y)
> > -KBUILD_CFLAGS        +=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
> > +KBUILD_CFLAGS        +=-fno-omit-frame-pointer $(call cc-option,-mapcs,) $(call cc-option,-mno-sched-prolog,)
> >   endif
> >
> >   ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> > diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
> > index 1d5210eb4776..fd64eec9f6ae 100644
> > --- a/arch/arm/lib/backtrace.S
> > +++ b/arch/arm/lib/backtrace.S
> > @@ -14,10 +14,7 @@
> >   @ fp is 0 or stack frame
> >
> >   #define frame       r4
> > -#define sv_fp        r5
> > -#define sv_pc        r6
> >   #define mask        r7
> > -#define offset       r8
> >
> >   ENTRY(c_backtrace)
> >
> > @@ -25,7 +22,8 @@ ENTRY(c_backtrace)
> >               ret     lr
> >   ENDPROC(c_backtrace)
> >   #else
> > -             stmfd   sp!, {r4 - r8, lr}      @ Save an extra register so we have a location...
> > +             stmfd   sp!, {r4 - r8, fp, lr}  @ Save an extra register
>
> Note that the Procedure Call Standard for EABI requires that SP be
> 8-byte-aligned at a public interface. Pushing an odd number of registers
> here looks like it will make the subsequent calls to dump_backtrace_*
> and printk violate that condition.
>
> Robin.
>
> > +                                             @ so we have a location..
> >               movs    frame, r0               @ if frame pointer is zero
> >               beq     no_frame                @ we have no stack frames
> >
> > @@ -35,11 +33,119 @@ ENDPROC(c_backtrace)
> >    THUMB(             orreq   mask, #0x03             )
> >               movne   mask, #0                @ mask for 32-bit
> >
> > -1:           stmfd   sp!, {pc}               @ calculate offset of PC stored
> > -             ldr     r0, [sp], #4            @ by stmfd for this CPU
> > -             adr     r1, 1b
> > -             sub     offset, r0, r1
> >
> > +#if defined(CONFIG_CC_IS_CLANG)
> > +/*
> > + * Clang does not store pc or sp in function prologues
> > + *           so we don't know exactly where the function
> > + *           starts.
> > + * We can treat the current frame's lr as the saved pc and the
> > + *           preceding frame's lr as the lr, but we can't
> > + *           trace the most recent call.
> > + * Inserting a false stack frame allows us to reference the
> > + *           function called last in the stacktrace.
> > + * If the call instruction was a bl we can look at the callers
> > + *           branch instruction to calculate the saved pc.
> > + * We can recover the pc in most cases, but in cases such as
> > + *           calling function pointers we cannot. In this
> > + *           case, default to using the lr. This will be
> > + *           some address in the function, but will not
> > + *           be the function start.
> > + * Unfortunately due to the stack frame layout we can't dump
> > + *              r0 - r3, but these are less frequently saved.
> > + *
> > + * Stack frame layout:
> > + *             <larger addresses>
> > + *             saved lr
> > + *    frame => saved fp
> > + *             optionally saved caller registers (r4 - r10)
> > + *             optionally saved arguments (r0 - r3)
> > + *             <top of stack frame>
> > + *             <smaller addressses>
> > + *
> > + * Functions start with the following code sequence:
> > + * corrected pc =>  stmfd sp!, {..., fp, lr}
> > + *               add fp, sp, #x
> > + *               stmfd sp!, {r0 - r3} (optional)
> > + */
> > +#define sv_fp        r5
> > +#define sv_pc        r6
> > +#define sv_lr   r8
> > +             add     frame, sp, #20          @ switch to false frame
> > +for_each_frame:      tst     frame, mask             @ Check for address exceptions
> > +             bne     no_frame
> > +
> > +1001:                ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> > +1002:                ldr     sv_fp, [frame, #0]      @ get saved fp
> > +
> > +             teq     sv_fp, #0               @ make sure next frame exists
> > +             beq     no_frame
> > +
> > +1003:                ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> > +
> > +             //try to find function start
> > +             ldr     r0, [sv_lr, #-4]        @ get call instruction
> > +             ldr     r3, .Ldsi+8
> > +             and     r2, r3, r0              @ is this a bl call
> > +             teq     r2, r3
> > +             bne     finished_setup          @ give up if it's not
> > +             and     r0, #0xffffff           @ get call offset 24-bit int
> > +             lsl     r0, r0, #8              @ sign extend offset
> > +             asr     r0, r0, #8
> > +             ldr     sv_pc, [sv_fp, #4]      @ get lr address
> > +             add     sv_pc, sv_pc, #-4       @ get call instruction address
> > +             add     sv_pc, sv_pc, #8        @ take care of prefetch
> > +             add     sv_pc, sv_pc, r0, lsl #2 @ find function start
> > +             b       finished_setup
> > +
> > +finished_setup:
> > +
> > +             bic     sv_pc, sv_pc, mask      @ mask PC/LR for the mode
> > +
> > +1004:                mov     r0, sv_pc
> > +
> > +             mov     r1, sv_lr
> > +             mov     r2, frame
> > +             bic     r1, r1, mask            @ mask PC/LR for the mode
> > +             bl      dump_backtrace_entry
> > +
> > +1005:                ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> > +             ldr     r3, .Ldsi               @ instruction exists,
> > +             teq     r3, r1, lsr #11
> > +             ldr     r0, [frame]             @ locals are stored in
> > +                                             @ the preceding frame
> > +             subeq   r0, r0, #4
> > +             bleq    dump_backtrace_stm      @ dump saved registers
> > +
> > +             teq     sv_fp, #0               @ zero saved fp means
> > +             beq     no_frame                @ no further frames
> > +
> > +             cmp     sv_fp, frame            @ next frame must be
> > +             mov     frame, sv_fp            @ above the current frame
> > +             bhi     for_each_frame
> > +
> > +1006:                adr     r0, .Lbad
> > +             mov     r1, frame
> > +             bl      printk
> > +no_frame:    ldmfd   sp!, {r4 - r8, fp, pc}
> > +ENDPROC(c_backtrace)
> > +             .pushsection __ex_table,"a"
> > +             .align  3
> > +             .long   1001b, 1006b
> > +             .long   1002b, 1006b
> > +             .long   1003b, 1006b
> > +             .long   1004b, 1006b
> > +             .popsection
> > +
> > +.Lbad:               .asciz  "Backtrace aborted due to bad frame pointer <%p>\n"
> > +             .align
> > +.Ldsi:               .word   0xe92d4800 >> 11        @ stmfd sp!, {... fp, lr}
> > +             .word   0xe92d0000 >> 11        @ stmfd sp!, {}
> > +             .word   0x0b000000              @ bl if these bits are set
> > +
> > +ENDPROC(c_backtrace)
> > +
> > +#else
> >   /*
> >    * Stack frame layout:
> >    *             optionally saved caller registers (r4 - r10)
> > @@ -55,6 +161,15 @@ ENDPROC(c_backtrace)
> >    *                  stmfd sp!, {r0 - r3} (optional)
> >    * corrected pc =>  stmfd sp!, {..., fp, ip, lr, pc}
> >    */
> > +#define sv_fp        r5
> > +#define sv_pc        r6
> > +#define offset       r8
> > +
> > +1:           stmfd   sp!, {pc}               @ calculate offset of PC stored
> > +             ldr     r0, [sp], #4            @ by stmfd for this CPU
> > +             adr     r1, 1b
> > +             sub     offset, r0, r1
> > +
> >   for_each_frame:     tst     frame, mask             @ Check for address exceptions
> >               bne     no_frame
> >
> > @@ -98,7 +213,7 @@ for_each_frame:    tst     frame, mask             @ Check for address exceptions
> >   1006:               adr     r0, .Lbad
> >               mov     r1, frame
> >               bl      printk
> > -no_frame:    ldmfd   sp!, {r4 - r8, pc}
> > +no_frame:    ldmfd   sp!, {r4 - r8, fp, pc}
> >   ENDPROC(c_backtrace)
> >
> >               .pushsection __ex_table,"a"
> > @@ -115,3 +230,4 @@ ENDPROC(c_backtrace)
> >               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
> >
> >   #endif
> > +#endif
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY6StuyMuKG7XdEJrqMsA_Xy02QZKp8r0K2jwSZwBCt%2B9Q%40mail.gmail.com.
