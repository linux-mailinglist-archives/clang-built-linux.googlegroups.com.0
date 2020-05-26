Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBP4ZWT3AKGQEHBBGKPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id CA72B1E21F7
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:34:08 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id f12sf15516041plt.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 05:34:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590496447; cv=pass;
        d=google.com; s=arc-20160816;
        b=LvvrNCciQ5sMYhxf9dGODgfeKsJDcLMCmGz4KxBIZc6RVTKg2ki2Wt2+ricCGLQzmh
         nGJN/Gl0q7o4cvZ9QY6g5d76yn1TuGRU1qYdurElI7GUxmCaE9DQGBvvFxwlBGXpqTL+
         hXDAf16NR7oAvjjabZVVX5TF4yS6cOewVndIk3SQpGfj6vr/OgcPBU0l2smpyM/w+JTe
         Db0iCEn9QlCNaMBSECtdM8jyoz9dkYdK1VIvLcYDvBygnaOwRKOMdd5SFxe1tp5zd0My
         0AyNHx33KfPNTUhjHavmMFnB3++E0B3qO6U3XOPLZy+KWb42wDszRqIGFsxC3j18MOfk
         xBtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZkDGDAMjP4E0oRIKXOxLnEsNIpACuSh94lkUbCVwX6A=;
        b=byPULE0KZFqoDIfuN6Gpynaw2U7ZVvVg5pa2D5de3Sty7Rtt09uqNzkihz9McDOrtZ
         YxGAZtilTcqXBRYv/+G2v8CPCTpqsmfw055dlEBo7XVU/PzMBI8jBY/A32aIUG/nYk9f
         wFfosiTvT0Ihe8TXF9mwkklDk6o4cjhQ442HdXI5GFCZD4V07JuaYr7YKneyOEhPMT2D
         H2n1ihnFHzENr/MtJhmpIuPC1uu9wMY22ICO/GMeASYRObFab5Zfn9xTiBL2tG6n/d7O
         2P/2G2BxWDXxP/IguVJiukzCJoPn6Lb+iOb169if8/4HJz+NZgE5unGP5pKF+siMc9uZ
         K0UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kmztc0PZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZkDGDAMjP4E0oRIKXOxLnEsNIpACuSh94lkUbCVwX6A=;
        b=aab3JMGZebbB6t8NWi5foCG6/fwgXPvNWG3N5SvjwTOIxwQgd1Lt8Xc40bGp1v1mpo
         n91q6d9IdSBUDvThWEVyJhHOOEDJ0i4Cn+SwdY9v90g1vY+1S6OoGI6JX3Ip2Q7kLnMs
         8jous/XLOqvjuQw8vUmQ4AZQ4fmBhKi1nkSQBZ5FBwGTCpswtT8QCG5IU+xvMGYzMevf
         +xiyO3WMWkWbeuW++shq/i8wUIwb7HTxP3N39LRmzJxETqA01tkUW/teF1cd5R/pwT8j
         Kb7Pfnuc4H/5FfRUwKNYdhvCZPAsrMO9FjJWSks2E2FR9Ht+T0CLv7PJWDn/2V6x0tjC
         MPQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZkDGDAMjP4E0oRIKXOxLnEsNIpACuSh94lkUbCVwX6A=;
        b=ErYJOo5zVvGVIgt18NgXsxfE3PSdnL8xzK1E8WBOPvqEpW9HYMer8voIXiIRpihQyV
         MnL2WyhwheB3fsDkxFoc46s8acei9Rt/J4ujq8hslwmmbeMj03GAfFBZJh0XQ0GwcLfH
         fxhUj8NpLPWiV/FGyrNtxeTwaQgAs4IpoHWPg4BPAtMXjnr7SWdxgWXxAGbYNnqQbeA5
         VdPpXZEAx8CYKnJ79mKYF/CtQG7c950bX2bnmkLIS6wdns2uZm6JsGFJhA5UCtywMrrt
         yEjR3bitDzLE+yqEiT3usYczNy/BtfSFgf8XRN85kaCCAgF1uJrD4KkZ7xoG81FZw0LN
         2D3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZkDGDAMjP4E0oRIKXOxLnEsNIpACuSh94lkUbCVwX6A=;
        b=WIk0LxgSR9qrGBE2r9ym/ePT7uM1Uajb7go/uz3PITeDi9CvIh9Wi0IcFgnm5DX4uT
         ME4e1rsqMD46nzN9IYqQdghIwXdfLule4P2iIdH0cYIxk2CCV5Ug4RnhUtdzcOvkepjW
         fXsoQts1tSdFLa8wn2A12tWeTIQ4tHF666yXsSKTPrynIHx90EU5DtKiqlo9uhmfkPuh
         D5PxHjAeQak+nldy8kISK0EOR0tA+dPOxoGAiVg+QhC+GsnTvj2JgSdf6LorGGIYARRN
         kUhelnMmC2ViXv+XcUMgI66r/0y+/LPwSEVhfp7brPq2gZ7poIISjyRB7A6za8gnrEOF
         u0qQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RzCYo9dQ46ZNrWkY4jQuyF0Qvi62b9FkQSN6SBJ8kxHkstQk6
	Rp72qZFrvpljEpgOoHHIGpk=
X-Google-Smtp-Source: ABdhPJx85jPbnJPAAHEVwPg9hrBJ3XsBQ7fqnsU09ZVt+DkG4JenUMsHHrq/+MqtJO1T9CuEgfyOig==
X-Received: by 2002:a17:902:b706:: with SMTP id d6mr953987pls.16.1590496447353;
        Tue, 26 May 2020 05:34:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8e4e:: with SMTP id d14ls452823pfr.0.gmail; Tue, 26 May
 2020 05:34:06 -0700 (PDT)
X-Received: by 2002:a63:bd49:: with SMTP id d9mr890924pgp.166.1590496446840;
        Tue, 26 May 2020 05:34:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590496446; cv=none;
        d=google.com; s=arc-20160816;
        b=vHHBQbfHoVifSzMFHb0oL1rjr9WmE0IQoCj3WFsP24CZCO10HRztLyMF2WwjAyOv3d
         nk8yjkIlDdxcJfLqlr9UpcujDd2VQ69bJnWmt2FRZTZYmSL8+cqibgFbs2hQrRxwYTys
         ah8Bx5ZoSEvwjxDJzutc00LKPJaRjy8g3P/jamYyQr3wZ6IRouBqj7EU/6aHk5nTIaci
         7zS4NwXxR5fbX/+WxgF8+R7yvkrb7kHZpw+Cr2FxpRqKArelTDQ0MnAlHamQGBUYJJ6q
         sPoJaUkUgpRkERp0tmqarSGXPymRXrdgzcIGLG2p/Ja7QIhaSosPO4SJ+eAKG64/fauy
         H3wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dKMQLkfxGfTGmxyabfuv0+iSbqh28h3pHwoaw3c28Js=;
        b=UJFXB92CpOMod3qETyA+8xDDcHZWXR/XPL9tXAdQRrBzb9T710+0EQHMkxMD12qpTI
         N78eRoJ9/NlaohFaeWwyIuf6MheLBBZSyeJdJLTd6ZuO3e8/CbY7wcylYa0+OkT/v2db
         OWRJIa4NS28S0JJZ7sFOWXW1X4F+s57vXkKLjDJ+i5n7P7SGcQz+F2wL/iF1/nesabYy
         ZwtPUjy/wZ53tQmtJC8mS9xU+GPUlpxSKVcsD5CUWJRvg7CS4HyL7mbg6NpSiAlVCs5w
         d54eDuiin7fPkvFk4KdJqBRWZXFi/9ckv7rxbfq4tdbIOtuP09pk7niYlbreFAx6le4a
         O0Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kmztc0PZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id q1si1224104pgg.5.2020.05.26.05.34.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 05:34:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id h10so21701004iob.10
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 05:34:06 -0700 (PDT)
X-Received: by 2002:a02:a408:: with SMTP id c8mr744385jal.125.1590496446177;
 Tue, 26 May 2020 05:34:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
In-Reply-To: <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 26 May 2020 14:33:55 +0200
Message-ID: <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=Kmztc0PZ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
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

On Tue, May 26, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 26 May 2020 at 14:29, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Tue, May 26, 2020 at 12:59 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > The compressed kernel currently contains bogus runtime relocations in
> > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > but must not actually be processed at runtime.
> > >
> > > This generates warnings when linking with the BFD linker, and errors
> > > with LLD, which defaults to erroring on runtime relocations in read-only
> > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > relocated are only 32-bits in size and so cannot normally have
> > > R_X86_64_RELATIVE relocations.
> > >
> > > This series aims to get rid of these relocations. It is based on
> > > efi/next, where the latest patches touch the head code to eliminate the
> > > global offset table.
> > >
> > > The first patch is an independent fix for LLD, to avoid an orphan
> > > section in arch/x86/boot/setup.elf.
> > >
> > > The second patch gets rid of almost all the relocations. It uses
> > > standard PIC addressing technique for 32-bit, i.e. loading a register
> > > with the address of _GLOBAL_OFFSET_TABLE_ and then using GOTOFF
> > > references to access variables. For 64-bit, there is 32-bit code that
> > > cannot use RIP-relative addressing, and also cannot use the 32-bit
> > > method, since GOTOFF references are 64-bit only. This is instead handled
> > > using a macro to replace a reference like gdt with (gdt-startup_32)
> > > instead. The assembler will generate a PC32 relocation entry, with
> > > addend set to (.-startup_32), and these will be replaced with constants
> > > at link time. This works as long as all the code using such references
> > > lives in the same section as startup_32, i.e. in .head.text.
> > >
> > > The third patch addresses a remaining issue with the BFD linker, which
> > > insists on generating runtime relocations for absolute symbols. We use
> > > z_input_len and z_output_len, defined in the generated piggy.S file, as
> > > symbols whose absolute "addresses" are actually the size of the
> > > compressed payload and the size of the decompressed kernel image
> > > respectively. LLD does not generate relocations for these two symbols,
> > > but the BFD linker does, prior to the upcoming 2.35. To get around this,
> > > piggy.S is extended to also define two u32 variables (in .rodata) with
> > > the lengths, and the head code is modified to use those instead of the
> > > symbol addresses.
> > >
> > > An alternative way to handle z_input_len/z_output_len would be to just
> > > include piggy.S in head_{32,64}.S instead of as a separate object file,
> > > since the GNU assembler doesn't generate relocations for symbols set to
> > > constants.
> > >
> > > The last patch adds a check in the linker script to ensure that no
> > > runtime relocations get reintroduced. Since the GOT has been eliminated
> > > as well, the compressed kernel has no runtime relocations whatsoever any
> > > more.
> > >
> > > Changes from v1:
> > > - Add .text.* to setup.ld instead of just .text.startup
> > > - Rename the la() macro introduced in the second patch for 64-bit to
> > >   rva(), and rework the explanatory comment.
> > > - In the last patch, check both .rel.dyn and .rela.dyn, instead of just
> > >   one per arch.
> > >
> >
> > Hi,
> >
> > I would like to test this patchset v2 on top of Linux v5.7-rc7 together with:
> >
> > [1] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
> > [2] x86/boot: Correct relocation destination on old linkers
> >
> > I tried to pull efi/next on top of Linux v5.7-rc7 and cleaned up the
> > merge problems, but I am not sure I did it correctly.
> > So, which patches are really relevant from efi/next?
> >
> > What's your suggestions?
> >
>
> efi/next is here:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git/log/?h=next
>
> You'll need the top 3 patches.

Thanks /o\.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a%2B0otcr2Pd4w%40mail.gmail.com.
