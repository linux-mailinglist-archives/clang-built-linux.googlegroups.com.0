Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOHBWT3AKGQE7CHLTNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9C01E24F3
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 17:07:37 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id a7sf20018497qvl.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 08:07:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590505656; cv=pass;
        d=google.com; s=arc-20160816;
        b=HqwJLxbQbALszsY+dyOHSiQuuso9FzP2z7yNbCUvqyHnJTjvt6eR0u7FsgYGpoSuVU
         KGZVkGcaDR69tS+5FLdcWNEdpAXyXYO7xLvFq2cF4TaXuhl7j7KE12JnrETTfFPSekIA
         raTUuh88CSAp0XV5GczQtsRp/mDDnUOEPBxqvV6wyIc8kvI8jGqChlglZMdtQrU7eErJ
         dc4NxIBkNKMBQ2uz1rFr65dApaAoY3MCyj6FHzm4Qxr18px9OiOzp3TGBHa6R+WrcdXa
         0v9VmubJmMSt1qn8vsOY3Msn1grMw7Q5RJWrSBZCYhEAG8TnW9p4cphB0U7kvwp9rT+y
         o9rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8w+EM7iZqu2n0rG0nXsVkfgS6GiyUn80Ezfe8RRib7A=;
        b=rY5L88CeFw7EHISdVGOFoNRWFj9bCP5HYv0w+hrZrRVCI3m+tzOCYUI5aJeoSdM4Av
         d3ZTuQzP/jr+7JnDWZeAlGL2kzR/ZpftGT/OenOsEtzaW4wGiRQWVsIc+f3nDt6xsxqx
         ShkhkDZM2XXyGok5Xrlsy4eqN2PgR3egBOu9zIdtrfVRNjen76oPDHH6WxJhBsjs06Vy
         xlc6S5kAVcZ+2S+w3oqQtgnOreb6e0lQVI4ww9vE1mpcPJthl51JM3BU4rYiBv/hvz4X
         axrY4sHZR+0Iy0wOg43OpBVXW+/JHxIXovj0uglE82Q0N/JGNrBiRw6BD6tFsqX6rg8U
         Apow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kE0MJ6XO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8w+EM7iZqu2n0rG0nXsVkfgS6GiyUn80Ezfe8RRib7A=;
        b=ruuN8eRruB9rdB5H4NZylHZSTJDd1f0rGC+QhSUwy+6+IIjrq2SBTKEuD2g9SYGhgn
         Vnqp1SCL92aGgdz0ZLCAyMLtPEr9LzuxJEmMUivXI3wHOwdusk05Ha9yRmm4dojns778
         B7Ktcss6MvUHIg4uettddzKBCLQEuOuL1P0E73TDvOxq8tWf0hqVhmTE8Bza9cwc8oyF
         VOc3vDddvMzUwCsbvVHL3Bqp3cQ02smNVw4rDTwjdN0UdzbMYXxTw7UN6d7Ug4cHPNh8
         yveMSrlXuJrWWkichjXG1qn6EqW/glur99UVgJbjpJ7Tri8DinL+cHitd5zO/3mFUQ2L
         J1+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8w+EM7iZqu2n0rG0nXsVkfgS6GiyUn80Ezfe8RRib7A=;
        b=Z2yuUfj5miulqoxkdo8hrZgA50pzjpEDqUqq0h1Ix9Kv39unnnI0/e4AFBM8hpium6
         T/1gXWgppY1NBFfaTN5gT4+mWduBSJTl5+gZFKfkzuLMsW/zT59vVbEypgo9gyzw69kG
         c/gneTfmfNSPzEHAcoV5eJuUnGo+OuL2/AbGbLjjW2mvcbFhSEsbTwmTLf/H5GAd6LW8
         cOroYDS8nE/36S9jxyoeWWFQHF7gi0EbUgVT0ba0unrP+xub2vK1Jpl2b9HQCOCUqm6J
         xnyp0UhDaOXQ6D8XWk5nTLT77V/wz+LBRvTFKwRk3a+ej2v3zQA9WaRP4HZwEIW1NDk7
         PjHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8w+EM7iZqu2n0rG0nXsVkfgS6GiyUn80Ezfe8RRib7A=;
        b=rD+Q3F0ixwb5cAvtf5yRVSOl+hQnrQk9NpjtQjBKEGeBzIReWpjkrFvVnnWxRn/tsJ
         RQn2E4bb//pXPis3b/5bQxbuk5h5fmU1YD3OGbSBvMidYX6tLLskUgaFGxPdGe7l29M0
         5lkRHGd773wCpDW/pg3R38tPqiShstPgCQAtcpyrXxJeqgRf5NUbmoEL6MfXVsau+kGV
         63lt3iD6BNlC2WYdr0d7yAs1HZqjVL+GqFBgb6qXW6gWs5bg0azdL5GKxZ/MTJvSv7yu
         OlktqymfvNwVuYgR6MtLB+Ca+9MufKs5QVDNqeiDowO8aELKbwapqyUwXCF1tSvm2BNU
         wfQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pC4AbOeKuwA4BiKHidG+2CvJWLKJmG9opBKdrqahYkSNckcY7
	1P8A24XKMwh+mdgEtotEk+w=
X-Google-Smtp-Source: ABdhPJzqg1HF6EljVYBozhX4j+CBfG/F21+x/nN2I6ZNuofKWkYlnYg279tYCjpHJGQPbFvKhQEEDg==
X-Received: by 2002:ac8:2492:: with SMTP id s18mr1706649qts.81.1590505656285;
        Tue, 26 May 2020 08:07:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7406:: with SMTP id p6ls480797qkc.8.gmail; Tue, 26 May
 2020 08:07:35 -0700 (PDT)
X-Received: by 2002:a05:620a:218b:: with SMTP id g11mr1816718qka.251.1590505655790;
        Tue, 26 May 2020 08:07:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590505655; cv=none;
        d=google.com; s=arc-20160816;
        b=v91tav6NGT+SBzpYe9jtJPfhJxLN/JZuqyRHn95CtBOxCOQcs6gHfGnBXY3Mdw9Q8I
         NnNUC5oachfTXmFKCV+/ICsjDtcyBlw63wolxS0/LXmaM7o7iU8g0Dq79z6GUTpJivNj
         3M2fjkjOJVqBSPaReUZQCmNeceXPd4XOcghueN07OUWUlAiluahaFiPmj0j8OOM/sxDs
         Z9KORsTZe9aBMMZstyLI5X46EO4pcINfKVnDUKoB9gIhhHUH2cdTfYuWApKqS+xjXLV3
         1n9banamVHWZb8Z1l1aEWreNTtZbpx6tVqIEnpKhHwTndE5eFH7E3DskacgL9TF4YJV1
         kZNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hMdv80WCUd9hQ/hXNFK8SQ5YaxUugqvJysyWA3zQQac=;
        b=TG2PpW3FPQlzGMKpxEensHDJIktPhudkvnQGSe+Og1ex1I7/n3jfVl0cihXebkLVSD
         vOKt6oUVbkjF/ZRj5kO6sx0DfGR71/w0jEKOh4o1X+l88BPQYaih4Gtg4K5Bfas6Ls4W
         khDIVzGk0cBBcO+7J4wCnikXpOKLkN3S+AdXrD+Vb4QtMoEFAfpi96T1y7+jMLA0Fhrk
         /ExF28j8KFKtEfSWHU3/CvmAlt5lldSqM0l//lMh+fX8xci1pKt1zfUwqE/QAwqwyokD
         hrmQDKNfQCmeJAEUBwj64xPCks4rH1JD+/fC+B3AJisSlk+aMReWBUuiSjaSVRAFtTwn
         lW8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kE0MJ6XO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id n23si18846qtv.0.2020.05.26.08.07.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 08:07:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id b71so20716942ilg.8
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 08:07:35 -0700 (PDT)
X-Received: by 2002:a92:de09:: with SMTP id x9mr1655602ilm.176.1590505654871;
 Tue, 26 May 2020 08:07:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
 <CA+icZUWTKJ=-OGJPzqm6HNQMkB1uS_B0ydU-9Xa035wB7vA4iw@mail.gmail.com> <CA+icZUU54K8z2--6fS=LEaMJGgeWfudViT7ETMsSYF1i59_4mg@mail.gmail.com>
In-Reply-To: <CA+icZUU54K8z2--6fS=LEaMJGgeWfudViT7ETMsSYF1i59_4mg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 26 May 2020 17:07:24 +0200
Message-ID: <CA+icZUWH9fFURgbiCuRr5-mc5s=Ft97_TMP4YofDMX5zEu4_eA@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=kE0MJ6XO;       spf=pass
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

On Tue, May 26, 2020 at 4:55 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, May 26, 2020 at 4:48 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Tue, May 26, 2020 at 2:44 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Tue, May 26, 2020 at 2:33 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Tue, May 26, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > >
> > > > > On Tue, 26 May 2020 at 14:29, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > On Tue, May 26, 2020 at 12:59 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > > > > >
> > > > > > > The compressed kernel currently contains bogus runtime relocations in
> > > > > > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > > > > > but must not actually be processed at runtime.
> > > > > > >
> > > > > > > This generates warnings when linking with the BFD linker, and errors
> > > > > > > with LLD, which defaults to erroring on runtime relocations in read-only
> > > > > > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > > > > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > > > > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > > > > > relocated are only 32-bits in size and so cannot normally have
> > > > > > > R_X86_64_RELATIVE relocations.
> > > > > > >
> > > > > > > This series aims to get rid of these relocations. It is based on
> > > > > > > efi/next, where the latest patches touch the head code to eliminate the
> > > > > > > global offset table.
> > > > > > >
> > > > > > > The first patch is an independent fix for LLD, to avoid an orphan
> > > > > > > section in arch/x86/boot/setup.elf.
> > > > > > >
> > > > > > > The second patch gets rid of almost all the relocations. It uses
> > > > > > > standard PIC addressing technique for 32-bit, i.e. loading a register
> > > > > > > with the address of _GLOBAL_OFFSET_TABLE_ and then using GOTOFF
> > > > > > > references to access variables. For 64-bit, there is 32-bit code that
> > > > > > > cannot use RIP-relative addressing, and also cannot use the 32-bit
> > > > > > > method, since GOTOFF references are 64-bit only. This is instead handled
> > > > > > > using a macro to replace a reference like gdt with (gdt-startup_32)
> > > > > > > instead. The assembler will generate a PC32 relocation entry, with
> > > > > > > addend set to (.-startup_32), and these will be replaced with constants
> > > > > > > at link time. This works as long as all the code using such references
> > > > > > > lives in the same section as startup_32, i.e. in .head.text.
> > > > > > >
> > > > > > > The third patch addresses a remaining issue with the BFD linker, which
> > > > > > > insists on generating runtime relocations for absolute symbols. We use
> > > > > > > z_input_len and z_output_len, defined in the generated piggy.S file, as
> > > > > > > symbols whose absolute "addresses" are actually the size of the
> > > > > > > compressed payload and the size of the decompressed kernel image
> > > > > > > respectively. LLD does not generate relocations for these two symbols,
> > > > > > > but the BFD linker does, prior to the upcoming 2.35. To get around this,
> > > > > > > piggy.S is extended to also define two u32 variables (in .rodata) with
> > > > > > > the lengths, and the head code is modified to use those instead of the
> > > > > > > symbol addresses.
> > > > > > >
> > > > > > > An alternative way to handle z_input_len/z_output_len would be to just
> > > > > > > include piggy.S in head_{32,64}.S instead of as a separate object file,
> > > > > > > since the GNU assembler doesn't generate relocations for symbols set to
> > > > > > > constants.
> > > > > > >
> > > > > > > The last patch adds a check in the linker script to ensure that no
> > > > > > > runtime relocations get reintroduced. Since the GOT has been eliminated
> > > > > > > as well, the compressed kernel has no runtime relocations whatsoever any
> > > > > > > more.
> > > > > > >
> > > > > > > Changes from v1:
> > > > > > > - Add .text.* to setup.ld instead of just .text.startup
> > > > > > > - Rename the la() macro introduced in the second patch for 64-bit to
> > > > > > >   rva(), and rework the explanatory comment.
> > > > > > > - In the last patch, check both .rel.dyn and .rela.dyn, instead of just
> > > > > > >   one per arch.
> > > > > > >
> > > > > >
> > > > > > Hi,
> > > > > >
> > > > > > I would like to test this patchset v2 on top of Linux v5.7-rc7 together with:
> > > > > >
> > > > > > [1] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
> > > > > > [2] x86/boot: Correct relocation destination on old linkers
> > > > > >
> > > > > > I tried to pull efi/next on top of Linux v5.7-rc7 and cleaned up the
> > > > > > merge problems, but I am not sure I did it correctly.
> > > > > > So, which patches are really relevant from efi/next?
> > > > > >
> > > > > > What's your suggestions?
> > > > > >
> > > > >
> > > > > efi/next is here:
> > > > >
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git/log/?h=next
> > > > >
> > > > > You'll need the top 3 patches.
> > > >
> > > > Thanks /o\.
> > > >
> > > > - Sedat -
> > >
> > > Are those diffs correct when using "x86/boot: Correct relocation
> > > destination on old linkers"?
> > >
> > > $ cat ../head_32_S.diff
> > > diff --cc arch/x86/boot/compressed/head_32.S
> > > index 064e895bad92,03557f2174bf..000000000000
> > > --- a/arch/x86/boot/compressed/head_32.S
> > > +++ b/arch/x86/boot/compressed/head_32.S
> > > @@@ -49,13 -49,17 +49,14 @@@
> > >    * Position Independent Executable (PIE) so that linker won't optimize
> > >    * R_386_GOT32X relocation to its fixed symbol address.  Older
> > >    * linkers generate R_386_32 relocations against locally defined symbols,
> > > -  * _bss, _ebss, in PIE.  It isn't wrong, just suboptimal compared
> > >  - * _bss, _ebss, _got, _egot and _end, in PIE.  It isn't wrong, just less
> > >  - * optimal than R_386_RELATIVE.  But the x86 kernel fails to properly handle
> > > ++ * _bss, _ebss, _end in PIE.  It isn't wrong, just suboptimal compared
> > >  + * to R_386_RELATIVE.  But the x86 kernel fails to properly handle
> > >    * R_386_32 relocations when relocating the kernel.  To generate
> > > -  * R_386_RELATIVE relocations, we mark _bss and _ebss as hidden:
> > >  - * R_386_RELATIVE relocations, we mark _bss, _ebss, _got, _egot and _end as
> > >  - * hidden:
> > > ++ * R_386_RELATIVE relocations, we mark _bss, _ebss and _end as hidden:
> > >    */
> > >         .hidden _bss
> > >         .hidden _ebss
> > >  -      .hidden _got
> > >  -      .hidden _egot
> > > +       .hidden _end
> > >
> > >         __HEAD
> > >   SYM_FUNC_START(startup_32)
> > >
> > > $ cat ../head_64_S.diff
> > > diff --cc arch/x86/boot/compressed/head_64.S
> > > index 4b7ad1dfbea6,76d1d64d51e3..000000000000
> > > --- a/arch/x86/boot/compressed/head_64.S
> > > +++ b/arch/x86/boot/compressed/head_64.S
> > > @@@ -40,34 -40,11 +40,35 @@@
> > >    */
> > >         .hidden _bss
> > >         .hidden _ebss
> > >  -      .hidden _got
> > >  -      .hidden _egot
> > > +       .hidden _end
> > >
> > >         __HEAD
> > >  +
> > >  +/*
> > >  + * This macro gives the relative virtual address of X, i.e. the offset of X
> > >  + * from startup_32. This is the same as the link-time virtual address of X,
> > >  + * since startup_32 is at 0, but defining it this way tells the
> > >  + * assembler/linker that we do not want the actual run-time address of X. This
> > >  + * prevents the linker from trying to create unwanted run-time relocation
> > >  + * entries for the reference when the compressed kernel is linked as PIE.
> > >  + *
> > >  + * A reference X(%reg) will result in the link-time VA of X being stored with
> > >  + * the instruction, and a run-time R_X86_64_RELATIVE relocation entry that
> > >  + * adds the 64-bit base address where the kernel is loaded.
> > >  + *
> > >  + * Replacing it with (X-startup_32)(%reg) results in the offset being stored,
> > >  + * and no run-time relocation.
> > >  + *
> > >  + * The macro should be used as a displacement with a base register containing
> > >  + * the run-time address of startup_32 [i.e. rva(X)(%reg)], or as an immediate
> > >  + * [$ rva(X)].
> > >  + *
> > >  + * This macro can only be used from within the .head.text section, since the
> > >  + * expression requires startup_32 to be in the same section as the code being
> > >  + * assembled.
> > >  + */
> > >  +#define rva(X) ((X) - startup_32)
> > >  +
> > >         .code32
> > >   SYM_FUNC_START(startup_32)
> > >         /*
> > >
> > > Thanks.
> > >
> >
> > With LLVM/Clang/LLD I see:
> >
> >   mycompiler -Wp,-MD,arch/x86/boot/compressed/.kernel_info.o.d
> > -nostdinc -isystem
> > /home/dileks/src/llvm-toolchain/install/lib/clang/10.0.1rc1/include
> > -I./arch/x86/include -I./arch/x86/include/generated  -I./include
> > -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi
> > -I./include/uapi -I./include/generated/uapi -include
> > ./include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments -m64 -O2
> > -fno-strict-aliasing -fPIE -DDISABLE_BRANCH_PROFILING -mcmodel=small
> > -mno-mmx -mno-sse -ffreestanding -fno-stack-protector
> > -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign
> > -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -include
> > hidden.h -D__ASSEMBLY__    -c -o
> > arch/x86/boot/compressed/kernel_info.o
> > arch/x86/boot/compressed/kernel_info.S
> > <built-in>:345:10: fatal error: 'hidden.h' file not found
> > #include "hidden.h"
> >          ^~~~~~~~~~
> > 1 error generated.
> > make[5]: *** [scripts/Makefile.build:349:
> > arch/x86/boot/compressed/kernel_info.o] Error 1
> > make[4]: *** [arch/x86/boot/Makefile:114:
> > arch/x86/boot/compressed/vmlinux] Error 2
> > make[4]: *** Waiting for unfinished jobs....
> >
> > mycompiler is a wrapper-script to use ccache * clang-10 as compiler.
> >
> > patchset to previous build:
> >
> > $ git log --no-merges --oneline 5.7.0-rc7-1-amd64-clang..5.7.0-rc7-2-amd64-clang
> > 8b74901cb9e5 (for-5.7/x86-boot-remove-runtime-relocations-from-compressed-kernel-v2-nivedita76)
> > x86/boot: Check that there are no runtime relocations
> > 83fb1bc3b076 x86/boot: Remove runtime relocations from head_{32,64}.S
> > fede23dacbbd x86/boot: Remove run-time relocations from .head.text code
> > 3e5ea481b8fb x86/boot: Add .text.* to setup.ld
> > bec910ba3d67 x86/boot/compressed: Get rid of GOT fixup code
> > be834cee6f39 x86/boot/compressed: Force hidden visibility for all
> > symbol references
> > 9b7c7d8d2d7b x86/boot/compressed: Move .got.plt entries out of the .got section
> > ba6a49f806a0 (for-5.7/kbuild-compressed-debug-info) Makefile: support
> > compressed debug info
> > a1fb11944d11 (for-5.7/x86-boot-nivedita76) x86/boot: Correct
> > relocation destination on old linkers
> > c70e3890058f (for-5.7/x86-build-maskray) x86/boot: Discard
> > .discard.unreachable for arch/x86/boot/compressed/vmlinux
> >
> > $ find ./ -name hidden.h
> > ./drivers/firmware/efi/libstub/hidden.h
> > ./arch/x86/boot/compressed/hidden.h
> >
> > Any thoughts?
> >
>
> Maybe this should be:
>
> [ arch/x86/boot/compressed/Makefile ]
>
> -KBUILD_CFLAGS += -include hidden.h
> +KBUILD_CFLAGS += -include ./hidden.h
>

NOPE.

This works:

[ arch/x86/boot/compressed/Makefile ]

-KBUILD_CFLAGS += -include hidden.h
+KBUILD_CFLAGS += -include ./arch/x86/boot/compressed/hidden.h

$ ll arch/x86/boot/bzImage arch/x86/boot/compressed/vmlinux
-rw-r--r-- 1 dileks dileks 6,5M Mai 26 17:05 arch/x86/boot/bzImage
-rwxr-xr-x 1 dileks dileks 6,5M Mai 26 17:05 arch/x86/boot/compressed/vmlinux

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWH9fFURgbiCuRr5-mc5s%3DFt97_TMP4YofDMX5zEu4_eA%40mail.gmail.com.
