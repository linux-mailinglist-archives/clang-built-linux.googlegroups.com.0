Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOM6WT3AKGQEBPAO7VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 205A31E222E
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:44:43 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id 70sf15565122ple.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 05:44:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590497081; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4Uw8BW0kaoRVXnu4r8uq1dC4TSIpKSbsqpjJLu7LpUwh/y32L5dTSWnNPYbhnepq0
         SyTTtkjx2nVprj7j8RY41R36CpdB5flbk4APgPT33EWBJ8pc9YwdHj6NcMXzeLy6TTTz
         mb+m/j0Nj+0WVqfkdYD4MkQP4f15HopemM/EOa0uexcJwTCTN4oyXUR/pNOAVRYwSgLP
         qC9DbNWrs1nvnkXavHXJ6Fj0EqCxvo2591k0C9XD4S6E93+wFsS9Btr0mbhD6idU4QRi
         THFtaAhMyQKMcF3NJcFyJIWW0bieziLRClRxeLNXDtMTEQCL6qygyOc8cKDOJ9G9i+j+
         Bsvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=elHIIH+oIpxwUzjMJRTbhJ/CqIZ3PFtrDv1ojPVL4xo=;
        b=UVNnrxPsnXEAMn7NX3Zd9gA06M+h7lfAY+Qu/YpziVBCyndqTgbNNYrlBkYJei0IHX
         Cuv8AGgwHtRYSZBJorOmlwFYslBFi2aXXdrzOftYty1WtJql9RQ71lUOaRMpyD6tAXsL
         vQGgTBX5yNlljQRpaGUUNnkyIO5N0d+hO9dzehxXB3GeTzrg/iq7GVhDaRh/qARUc74M
         9sC+J7Ne69q0gU1GLSoT8eQd6IK//QU7gSV4ibwGme0R7bQ6RbuYdZCqG2QLdlZVIlGf
         ap3LvAkhf7HqAwNT4gJ7vojLTmL10Q08PbzHiXCZIxv5MDigIxvJgzTGrh9xEX5B2uF1
         fD/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d4oVsmlS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=elHIIH+oIpxwUzjMJRTbhJ/CqIZ3PFtrDv1ojPVL4xo=;
        b=OjVrO0apdps8A1HvZLN2MieTaumYKhTw8AeNSYMeNTmEljciJO5nyJcN+x28S6HF1H
         krvrf+RO74k9sDR1YS7mkNfx8whd4dnYIM6XXEyB4hQuTzIFhWLdACG3ohI8JlzU+Cx/
         kERrz0wXnN3IrfoOdUVw87YTC9V7Wr8YjWArEImWGW11uQ7DWuxrZEp7kl4qJKPaXFzU
         T7eN4PtNYrX3SstC8CGPHrPgiQVlolcSRuPhQ+fN53UB3RVeZw2Xdxn0mILX+ztMVUxM
         cf2247J9bwL9IAGqDMhxMsyehGphvbZxbd4IcEcFpweevXLIjCsQgfnDZ6BylHEDx66w
         zDDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=elHIIH+oIpxwUzjMJRTbhJ/CqIZ3PFtrDv1ojPVL4xo=;
        b=iTWt5G7wsUkL34V1W3erzqAQsPZexTtW12XFupTltp9lrQWJw+qE4W5SS4jsNXnprq
         /e0fvmk41LWDLf6TpOAWN67l0gkU0XDs7i2olAcf0C9QUdDoq5qoSDEfxNkdSQ8ECEHA
         9jujlo4nmTGXciNR753uaDfk4TywkMOC9Qj4TI9AcQc7k6EEF7WBuGT9jBDY9ijQjs/k
         bZgH9hrwYdICLoYULg4xH7v2kKWS6KrNM54bxvTYFwhLIiDKXjeukkmX0e6qJVeueUVv
         pJ724Fjy5XBKiBHqrO3j/2JNLOC/nx+5VUf3YzpIVWsmsfIg+6xO8PQcfd/siUKMC2Oj
         95yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=elHIIH+oIpxwUzjMJRTbhJ/CqIZ3PFtrDv1ojPVL4xo=;
        b=MhgoIMTHUWQ1I6fMMVbH1LrGMCKnJDKqZ6tqgieAbmPEoXCbw+0CkMwHXvUXG7+Wt0
         uxvOTtrZ5KHawSjhG7aD8ZWWtgnyNRoeh+CVxfCtYcBeu7f8SyUEWXig8ut1jJpUcbFc
         QhcaVt5AQh/p9Y3cpiOyI+EJDVP/EFOMTOHfSyF0BBJZ7DJebAguvP+TgeecTsWGoemA
         z+lr3i00XJRG96vcxuvOKyFoh9duTlJiYOYzL+CjDAMf+M2/Os8RfPCy7Ovf9QMrQ5QS
         E7NlkS8osMuPw7AfzokYB4UQjKbMq6tMT+KRtC/xosFhfTmIPSZ6n4yM5zgovV9h+ZSV
         9kJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RJcbvg42X2TAMF3r6CPz+lXVpEASEQBWgGaWq0dR4NfVQywFB
	NsbAlIgKLT4SoXWZIwo6UWY=
X-Google-Smtp-Source: ABdhPJx1waKktzBxbEstYjEQqQ6cuoCMrdMZs+sK1sdKuabxP4KQtIgf8cLF92cMc6zX0ObglFPSQw==
X-Received: by 2002:a63:7016:: with SMTP id l22mr894911pgc.284.1590497081725;
        Tue, 26 May 2020 05:44:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d95:: with SMTP id v21ls4924441plo.3.gmail; Tue, 26
 May 2020 05:44:41 -0700 (PDT)
X-Received: by 2002:a17:90a:fe96:: with SMTP id co22mr24909013pjb.220.1590497081297;
        Tue, 26 May 2020 05:44:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590497081; cv=none;
        d=google.com; s=arc-20160816;
        b=NKEy3SPzNXJDHeZ97yO8N/kWOYnK+zaIwWrJuBLtGd+IZTHv8PzYhWcFKB6+8iTZqY
         7l4rHv4waEGAyhT8S9GrCYDNhrksnSu80s3XZV6p5yU49NrK7RlXM4cnEsaR1dD1Z/YG
         hvserQnC3lEt2EOZ9JKXpq64p66tT2tifKB9LfnxsqlImbQS2KC1/R5pY1B6FtvrRDPM
         eVE2Hdt6qBL01Yv6JUESJejbuZWw6IOk2HwAQD/xb71Xn8pq4Vr1LSWDFypy1RF0AiUI
         e3eNYq07icXbxw126LhqRuH/rE02UTI4nfx6NRGldePL6hunlPMAunnJCx+9buXSarei
         eDDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=192v8HLLXNUx+tzLmNUVYrYxDcyonvfeueAArNuXXsI=;
        b=tUVRU599BlpvYKvQAYkoMir981UHtwhs6BxeSKcsCEdWk8yrU+uY/0cwPTnHhdA5V6
         dB7oqA9B/568gAjG8cqAyoAaNnr0u3PQyGYnm3QxTO1WAxUUUotnaf3MPeLi9LUh8e/L
         C9K421syS0PO6k1crejnOPxhAY51VZoD2tJRSLyOyyrfWjik8OF/0aldVMibk52DIQu9
         Bp9bN2vg2OEFvgfATHO5DMgPcBotbxtuOb7TkjY9zJ+BkReMFnjGGMTc+iwvTfSaur3y
         lrTUQWVJBcXUczaiucnXNRZBM+X96Q4AK1KjtX8MfsAv+g3cCQQd3dWWSEZ1vBvIueQV
         W/SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d4oVsmlS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id t132si766748pfc.6.2020.05.26.05.44.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 05:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id 18so20226998iln.9
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 05:44:41 -0700 (PDT)
X-Received: by 2002:a92:6608:: with SMTP id a8mr934770ilc.204.1590497080697;
 Tue, 26 May 2020 05:44:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com> <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
In-Reply-To: <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 26 May 2020 14:44:29 +0200
Message-ID: <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=d4oVsmlS;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 26, 2020 at 2:33 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, May 26, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Tue, 26 May 2020 at 14:29, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Tue, May 26, 2020 at 12:59 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >
> > > > The compressed kernel currently contains bogus runtime relocations in
> > > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > > but must not actually be processed at runtime.
> > > >
> > > > This generates warnings when linking with the BFD linker, and errors
> > > > with LLD, which defaults to erroring on runtime relocations in read-only
> > > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > > relocated are only 32-bits in size and so cannot normally have
> > > > R_X86_64_RELATIVE relocations.
> > > >
> > > > This series aims to get rid of these relocations. It is based on
> > > > efi/next, where the latest patches touch the head code to eliminate the
> > > > global offset table.
> > > >
> > > > The first patch is an independent fix for LLD, to avoid an orphan
> > > > section in arch/x86/boot/setup.elf.
> > > >
> > > > The second patch gets rid of almost all the relocations. It uses
> > > > standard PIC addressing technique for 32-bit, i.e. loading a register
> > > > with the address of _GLOBAL_OFFSET_TABLE_ and then using GOTOFF
> > > > references to access variables. For 64-bit, there is 32-bit code that
> > > > cannot use RIP-relative addressing, and also cannot use the 32-bit
> > > > method, since GOTOFF references are 64-bit only. This is instead handled
> > > > using a macro to replace a reference like gdt with (gdt-startup_32)
> > > > instead. The assembler will generate a PC32 relocation entry, with
> > > > addend set to (.-startup_32), and these will be replaced with constants
> > > > at link time. This works as long as all the code using such references
> > > > lives in the same section as startup_32, i.e. in .head.text.
> > > >
> > > > The third patch addresses a remaining issue with the BFD linker, which
> > > > insists on generating runtime relocations for absolute symbols. We use
> > > > z_input_len and z_output_len, defined in the generated piggy.S file, as
> > > > symbols whose absolute "addresses" are actually the size of the
> > > > compressed payload and the size of the decompressed kernel image
> > > > respectively. LLD does not generate relocations for these two symbols,
> > > > but the BFD linker does, prior to the upcoming 2.35. To get around this,
> > > > piggy.S is extended to also define two u32 variables (in .rodata) with
> > > > the lengths, and the head code is modified to use those instead of the
> > > > symbol addresses.
> > > >
> > > > An alternative way to handle z_input_len/z_output_len would be to just
> > > > include piggy.S in head_{32,64}.S instead of as a separate object file,
> > > > since the GNU assembler doesn't generate relocations for symbols set to
> > > > constants.
> > > >
> > > > The last patch adds a check in the linker script to ensure that no
> > > > runtime relocations get reintroduced. Since the GOT has been eliminated
> > > > as well, the compressed kernel has no runtime relocations whatsoever any
> > > > more.
> > > >
> > > > Changes from v1:
> > > > - Add .text.* to setup.ld instead of just .text.startup
> > > > - Rename the la() macro introduced in the second patch for 64-bit to
> > > >   rva(), and rework the explanatory comment.
> > > > - In the last patch, check both .rel.dyn and .rela.dyn, instead of just
> > > >   one per arch.
> > > >
> > >
> > > Hi,
> > >
> > > I would like to test this patchset v2 on top of Linux v5.7-rc7 together with:
> > >
> > > [1] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
> > > [2] x86/boot: Correct relocation destination on old linkers
> > >
> > > I tried to pull efi/next on top of Linux v5.7-rc7 and cleaned up the
> > > merge problems, but I am not sure I did it correctly.
> > > So, which patches are really relevant from efi/next?
> > >
> > > What's your suggestions?
> > >
> >
> > efi/next is here:
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git/log/?h=next
> >
> > You'll need the top 3 patches.
>
> Thanks /o\.
>
> - Sedat -

Are those diffs correct when using "x86/boot: Correct relocation
destination on old linkers"?

$ cat ../head_32_S.diff
diff --cc arch/x86/boot/compressed/head_32.S
index 064e895bad92,03557f2174bf..000000000000
--- a/arch/x86/boot/compressed/head_32.S
+++ b/arch/x86/boot/compressed/head_32.S
@@@ -49,13 -49,17 +49,14 @@@
   * Position Independent Executable (PIE) so that linker won't optimize
   * R_386_GOT32X relocation to its fixed symbol address.  Older
   * linkers generate R_386_32 relocations against locally defined symbols,
-  * _bss, _ebss, in PIE.  It isn't wrong, just suboptimal compared
 - * _bss, _ebss, _got, _egot and _end, in PIE.  It isn't wrong, just less
 - * optimal than R_386_RELATIVE.  But the x86 kernel fails to properly handle
++ * _bss, _ebss, _end in PIE.  It isn't wrong, just suboptimal compared
 + * to R_386_RELATIVE.  But the x86 kernel fails to properly handle
   * R_386_32 relocations when relocating the kernel.  To generate
-  * R_386_RELATIVE relocations, we mark _bss and _ebss as hidden:
 - * R_386_RELATIVE relocations, we mark _bss, _ebss, _got, _egot and _end as
 - * hidden:
++ * R_386_RELATIVE relocations, we mark _bss, _ebss and _end as hidden:
   */
        .hidden _bss
        .hidden _ebss
 -      .hidden _got
 -      .hidden _egot
+       .hidden _end

        __HEAD
  SYM_FUNC_START(startup_32)

$ cat ../head_64_S.diff
diff --cc arch/x86/boot/compressed/head_64.S
index 4b7ad1dfbea6,76d1d64d51e3..000000000000
--- a/arch/x86/boot/compressed/head_64.S
+++ b/arch/x86/boot/compressed/head_64.S
@@@ -40,34 -40,11 +40,35 @@@
   */
        .hidden _bss
        .hidden _ebss
 -      .hidden _got
 -      .hidden _egot
+       .hidden _end

        __HEAD
 +
 +/*
 + * This macro gives the relative virtual address of X, i.e. the offset of X
 + * from startup_32. This is the same as the link-time virtual address of X,
 + * since startup_32 is at 0, but defining it this way tells the
 + * assembler/linker that we do not want the actual run-time address of X. This
 + * prevents the linker from trying to create unwanted run-time relocation
 + * entries for the reference when the compressed kernel is linked as PIE.
 + *
 + * A reference X(%reg) will result in the link-time VA of X being stored with
 + * the instruction, and a run-time R_X86_64_RELATIVE relocation entry that
 + * adds the 64-bit base address where the kernel is loaded.
 + *
 + * Replacing it with (X-startup_32)(%reg) results in the offset being stored,
 + * and no run-time relocation.
 + *
 + * The macro should be used as a displacement with a base register containing
 + * the run-time address of startup_32 [i.e. rva(X)(%reg)], or as an immediate
 + * [$ rva(X)].
 + *
 + * This macro can only be used from within the .head.text section, since the
 + * expression requires startup_32 to be in the same section as the code being
 + * assembled.
 + */
 +#define rva(X) ((X) - startup_32)
 +
        .code32
  SYM_FUNC_START(startup_32)
        /*

Thanks.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam%2B6O5XSzgNaqAzPg%40mail.gmail.com.
