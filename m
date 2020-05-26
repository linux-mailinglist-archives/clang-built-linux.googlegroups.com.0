Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBXO3WT3AKGQEXOHRFII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD591E2497
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 16:55:26 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id l7sf2850225pjn.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 07:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590504925; cv=pass;
        d=google.com; s=arc-20160816;
        b=jF3e8CRiblIp0Sp8Ie2D1wEymakzcotCJ+CalGsiPD89cmYRvErhztdKTDpAj+qf0L
         BhfYrwsTt8eItGv3CMF/3bfAMuALl4hn0hkwOjGm0UQwFwlTA0lamduaiWUh+ggYupee
         8JnNdnld0929Xv+8MHMKpnpJFftjrRBUL8k31FGz86Y6nTB65FmxRh7b51pFlkRT/rZP
         MxQFq/kp/47CTqHX449+Hunu2ZtS8iAOTUMWYUYBrO5cPrglb6i2zbLpHSmcnqqnBnKC
         9uhf+3CwL0OlZ/ls6og3jIAXmEUJRUM4K3ONxp/oj44NK0+IFVCtgqlZquEYsSLNjeLH
         USqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=c4SKI81oVOkrwiZTkpfX/mhyXjGnwPuVrBSa1M59tfA=;
        b=TU/XIKHh67KdSY1JSBGkXKG+jcgMmAh+Ai3IBfNk59oys4EwCD2gxAlXtkhw45jGLg
         KPtQYWhAGZS3vFl4C26sbPoCvl3s/Y53Af+ReYU8lAyGEJSf7PcrTdRUqUWOJDouPvWq
         DQueH6rM36JZAxMpp8711FPpuVSXCFXjQUUPXPhQGrGa17dE68Q/5mOXPRZTzIsikbAX
         8hY4N9gXj9NnPUCkgl/XcHRrhSVPs7OfPQS+ZOH8EKDJ4DYUQj1Hani3pHPuE6oWkapJ
         gSWBaNURixN242tkBqDxmAVLc6tqDitFTEVGySt6sm8DcY2w2k6JVPjOvkmHYq3436mY
         o2mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nk3dMpOP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c4SKI81oVOkrwiZTkpfX/mhyXjGnwPuVrBSa1M59tfA=;
        b=PWCGTH6OB+ArEXyGnamBGrHHFLPUBMhiGxZCzo6en0ldDOWwHt8+7B2fgqb5WG7jY4
         utjW1MMaBbNSRlOWB5+92rQAIa5mXV4tuouLFiXt7YyQwoYXBGbNqWsrrz5nLgUaLU4Z
         O6uYiw5dEEbNk6n61kLv6hcb/KjgGGHATbzB9q5t6bo7VHo8Izie1AqUgv8uM3Zkgzdj
         YOljp3mMJsgTxP8WE65+RUMcQbw99r3dEghyUXZDM0UtWSuwmEbiIHfmR3i73bJ8GSkK
         XM8VKn6HQseZvEe5tkqepZEHWBMUSGbi5GqRnWaCuy39sz8sBApyGazkIJV0d2pJS9sA
         oKSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4SKI81oVOkrwiZTkpfX/mhyXjGnwPuVrBSa1M59tfA=;
        b=pf+Ve3crClh3+UjXGNk8dp6dYSRJx7B9KLyBQE0CmK4aQlob8Y4Vj3X/pdfL7cPgEN
         g7RPhha3Pw7OOdyAxrdkumvgXGNy1aJxad9ZwrHAzSs6Jtsyb6nzGYpLthD/t1HH6bF9
         pruLi5QqF+vLS6mIQ2ICkeKtz7GAMC4H+C926H53ZuU+pYFnHe7tO37yiKQNBf5rNPF/
         FnbBDzjfCto3IH4JIWXA8Q74i56fGmKMX1iolH16WPy8992t/XokOTz7mUG080F/J1xW
         bjSF9DjUAaDGKqgdPCKzDVuD5dXRlmJi6Nt0o/Run+254PEVTsrjnqL0RSGPOjqksLbM
         XiCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4SKI81oVOkrwiZTkpfX/mhyXjGnwPuVrBSa1M59tfA=;
        b=Qvnq2oo2154FDNjhfifr8rzShw3U3YntIuncNI+UfSe/YBECBuIbQyp5CBRGOyOv90
         TUw7OeToAuR0IR8ESTqzPS7Mi9NSDT8k1klj475F6GunHxIIuHUgimCez+AIyAy0Sd6t
         rJ2xrVVmPWebBsXWU05git59pILjbztMFjZQWZFEsHwXsqzeI1PAnl+4yieGWQKHQXTS
         DalT7edSSVZaE+154nm2ni4AbqdOdIrdCoO6C8T5RYBtw61UXEWxQ206cxWsi9nW+uzZ
         C8hByzwuiY/oKR4NQEI/csu6wyqy+p+h7W4iqnNR3NT4S6WoocmiKXMWx2+qi0Yi4puP
         hxyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JBg2llp9ZRc85zZfHIBWGdvhl+R40PPOwBgECnv6ldV1eNABt
	RsB9hR9BFUjyQa+f3GbVnuw=
X-Google-Smtp-Source: ABdhPJxaE/oYn1ztIkX3yihwQXeXB8FZ9IccR4HP7wwHWRyGDzwrf9zGSTm21X+/L+8hO2GufXgPYw==
X-Received: by 2002:a17:90a:1aa3:: with SMTP id p32mr27784410pjp.4.1590504925334;
        Tue, 26 May 2020 07:55:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:c31a:: with SMTP id v26ls3975399pfg.2.gmail; Tue, 26 May
 2020 07:55:24 -0700 (PDT)
X-Received: by 2002:a62:543:: with SMTP id 64mr6990480pff.271.1590504924762;
        Tue, 26 May 2020 07:55:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590504924; cv=none;
        d=google.com; s=arc-20160816;
        b=iKQHtt/FypOt0osEXFiTre1K31ENPdZngn2g0j6D7+arLK+Ou3yZswuCLpvtjxKLnv
         QdPGqcUiaXL54PeWBJWq4Cfp8hiQ9LcA7+g8D2Ge0+n17A8f+B19i9i9Jeb/wsnrfh5d
         +pNBR6TQskKvGqf50GKvC9nv7+PchBm3dQpMgHLQa7TAp+C3LPp5BXwYqiqHU0rfC/SA
         ZZx0sT0CqaAmYxumBKvTZURbmgOP18+n9WbCjmPL2vFLy5IABSiXwv4GuD86JwcwQ+ZU
         sxe3xwtq5xLpXITUN+XsK0qXv97olCwlqEx2cwQy02/sOAKI6sEVSMg+D/zW1yXzZaqE
         xFxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3CchUKaOl3OxUD8vzoOX6WqHhwZWNC7mGRsWtMwPBrA=;
        b=vhDRINQhZyluhKK0utJc+cTSa6/vrOx/c+cINibHWb+32unq+OXQW9eLSjiyoneHUa
         xYGcIn9/VWyuP0+Luwro1MjHTXqb05KFdeYqKqaA/aJNn6fldLJA9Uks/wNn/tC+due1
         VcIlVRhAO/cr48vsZPVNaM7JkXp0yvHtk/EajKou/MZ7EBtHYNIu4vTA3R2shOS/6iVZ
         /4O6ouI2Djs3cNmcINBsZdCZ4JQXVFf41x8UyydMkeOu0tmqx+ezexU1LIocgykOFTri
         KXwi2ItwBLrmhW2NqYexxtWTbh5QKPJFVePn7jDWjxPl+PgV52Lhw2FNsuWZLxzHjG/k
         s/rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nk3dMpOP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id e13si18739plq.3.2020.05.26.07.55.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 07:55:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id v11so3317785ilh.1
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 07:55:24 -0700 (PDT)
X-Received: by 2002:a92:5893:: with SMTP id z19mr1541597ilf.255.1590504924113;
 Tue, 26 May 2020 07:55:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com> <CA+icZUWTKJ=-OGJPzqm6HNQMkB1uS_B0ydU-9Xa035wB7vA4iw@mail.gmail.com>
In-Reply-To: <CA+icZUWTKJ=-OGJPzqm6HNQMkB1uS_B0ydU-9Xa035wB7vA4iw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 26 May 2020 16:55:13 +0200
Message-ID: <CA+icZUU54K8z2--6fS=LEaMJGgeWfudViT7ETMsSYF1i59_4mg@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=Nk3dMpOP;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
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

On Tue, May 26, 2020 at 4:48 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, May 26, 2020 at 2:44 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Tue, May 26, 2020 at 2:33 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Tue, May 26, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > On Tue, 26 May 2020 at 14:29, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Tue, May 26, 2020 at 12:59 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > > > >
> > > > > > The compressed kernel currently contains bogus runtime relocations in
> > > > > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > > > > but must not actually be processed at runtime.
> > > > > >
> > > > > > This generates warnings when linking with the BFD linker, and errors
> > > > > > with LLD, which defaults to erroring on runtime relocations in read-only
> > > > > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > > > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > > > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > > > > relocated are only 32-bits in size and so cannot normally have
> > > > > > R_X86_64_RELATIVE relocations.
> > > > > >
> > > > > > This series aims to get rid of these relocations. It is based on
> > > > > > efi/next, where the latest patches touch the head code to eliminate the
> > > > > > global offset table.
> > > > > >
> > > > > > The first patch is an independent fix for LLD, to avoid an orphan
> > > > > > section in arch/x86/boot/setup.elf.
> > > > > >
> > > > > > The second patch gets rid of almost all the relocations. It uses
> > > > > > standard PIC addressing technique for 32-bit, i.e. loading a register
> > > > > > with the address of _GLOBAL_OFFSET_TABLE_ and then using GOTOFF
> > > > > > references to access variables. For 64-bit, there is 32-bit code that
> > > > > > cannot use RIP-relative addressing, and also cannot use the 32-bit
> > > > > > method, since GOTOFF references are 64-bit only. This is instead handled
> > > > > > using a macro to replace a reference like gdt with (gdt-startup_32)
> > > > > > instead. The assembler will generate a PC32 relocation entry, with
> > > > > > addend set to (.-startup_32), and these will be replaced with constants
> > > > > > at link time. This works as long as all the code using such references
> > > > > > lives in the same section as startup_32, i.e. in .head.text.
> > > > > >
> > > > > > The third patch addresses a remaining issue with the BFD linker, which
> > > > > > insists on generating runtime relocations for absolute symbols. We use
> > > > > > z_input_len and z_output_len, defined in the generated piggy.S file, as
> > > > > > symbols whose absolute "addresses" are actually the size of the
> > > > > > compressed payload and the size of the decompressed kernel image
> > > > > > respectively. LLD does not generate relocations for these two symbols,
> > > > > > but the BFD linker does, prior to the upcoming 2.35. To get around this,
> > > > > > piggy.S is extended to also define two u32 variables (in .rodata) with
> > > > > > the lengths, and the head code is modified to use those instead of the
> > > > > > symbol addresses.
> > > > > >
> > > > > > An alternative way to handle z_input_len/z_output_len would be to just
> > > > > > include piggy.S in head_{32,64}.S instead of as a separate object file,
> > > > > > since the GNU assembler doesn't generate relocations for symbols set to
> > > > > > constants.
> > > > > >
> > > > > > The last patch adds a check in the linker script to ensure that no
> > > > > > runtime relocations get reintroduced. Since the GOT has been eliminated
> > > > > > as well, the compressed kernel has no runtime relocations whatsoever any
> > > > > > more.
> > > > > >
> > > > > > Changes from v1:
> > > > > > - Add .text.* to setup.ld instead of just .text.startup
> > > > > > - Rename the la() macro introduced in the second patch for 64-bit to
> > > > > >   rva(), and rework the explanatory comment.
> > > > > > - In the last patch, check both .rel.dyn and .rela.dyn, instead of just
> > > > > >   one per arch.
> > > > > >
> > > > >
> > > > > Hi,
> > > > >
> > > > > I would like to test this patchset v2 on top of Linux v5.7-rc7 together with:
> > > > >
> > > > > [1] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
> > > > > [2] x86/boot: Correct relocation destination on old linkers
> > > > >
> > > > > I tried to pull efi/next on top of Linux v5.7-rc7 and cleaned up the
> > > > > merge problems, but I am not sure I did it correctly.
> > > > > So, which patches are really relevant from efi/next?
> > > > >
> > > > > What's your suggestions?
> > > > >
> > > >
> > > > efi/next is here:
> > > >
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git/log/?h=next
> > > >
> > > > You'll need the top 3 patches.
> > >
> > > Thanks /o\.
> > >
> > > - Sedat -
> >
> > Are those diffs correct when using "x86/boot: Correct relocation
> > destination on old linkers"?
> >
> > $ cat ../head_32_S.diff
> > diff --cc arch/x86/boot/compressed/head_32.S
> > index 064e895bad92,03557f2174bf..000000000000
> > --- a/arch/x86/boot/compressed/head_32.S
> > +++ b/arch/x86/boot/compressed/head_32.S
> > @@@ -49,13 -49,17 +49,14 @@@
> >    * Position Independent Executable (PIE) so that linker won't optimize
> >    * R_386_GOT32X relocation to its fixed symbol address.  Older
> >    * linkers generate R_386_32 relocations against locally defined symbols,
> > -  * _bss, _ebss, in PIE.  It isn't wrong, just suboptimal compared
> >  - * _bss, _ebss, _got, _egot and _end, in PIE.  It isn't wrong, just less
> >  - * optimal than R_386_RELATIVE.  But the x86 kernel fails to properly handle
> > ++ * _bss, _ebss, _end in PIE.  It isn't wrong, just suboptimal compared
> >  + * to R_386_RELATIVE.  But the x86 kernel fails to properly handle
> >    * R_386_32 relocations when relocating the kernel.  To generate
> > -  * R_386_RELATIVE relocations, we mark _bss and _ebss as hidden:
> >  - * R_386_RELATIVE relocations, we mark _bss, _ebss, _got, _egot and _end as
> >  - * hidden:
> > ++ * R_386_RELATIVE relocations, we mark _bss, _ebss and _end as hidden:
> >    */
> >         .hidden _bss
> >         .hidden _ebss
> >  -      .hidden _got
> >  -      .hidden _egot
> > +       .hidden _end
> >
> >         __HEAD
> >   SYM_FUNC_START(startup_32)
> >
> > $ cat ../head_64_S.diff
> > diff --cc arch/x86/boot/compressed/head_64.S
> > index 4b7ad1dfbea6,76d1d64d51e3..000000000000
> > --- a/arch/x86/boot/compressed/head_64.S
> > +++ b/arch/x86/boot/compressed/head_64.S
> > @@@ -40,34 -40,11 +40,35 @@@
> >    */
> >         .hidden _bss
> >         .hidden _ebss
> >  -      .hidden _got
> >  -      .hidden _egot
> > +       .hidden _end
> >
> >         __HEAD
> >  +
> >  +/*
> >  + * This macro gives the relative virtual address of X, i.e. the offset of X
> >  + * from startup_32. This is the same as the link-time virtual address of X,
> >  + * since startup_32 is at 0, but defining it this way tells the
> >  + * assembler/linker that we do not want the actual run-time address of X. This
> >  + * prevents the linker from trying to create unwanted run-time relocation
> >  + * entries for the reference when the compressed kernel is linked as PIE.
> >  + *
> >  + * A reference X(%reg) will result in the link-time VA of X being stored with
> >  + * the instruction, and a run-time R_X86_64_RELATIVE relocation entry that
> >  + * adds the 64-bit base address where the kernel is loaded.
> >  + *
> >  + * Replacing it with (X-startup_32)(%reg) results in the offset being stored,
> >  + * and no run-time relocation.
> >  + *
> >  + * The macro should be used as a displacement with a base register containing
> >  + * the run-time address of startup_32 [i.e. rva(X)(%reg)], or as an immediate
> >  + * [$ rva(X)].
> >  + *
> >  + * This macro can only be used from within the .head.text section, since the
> >  + * expression requires startup_32 to be in the same section as the code being
> >  + * assembled.
> >  + */
> >  +#define rva(X) ((X) - startup_32)
> >  +
> >         .code32
> >   SYM_FUNC_START(startup_32)
> >         /*
> >
> > Thanks.
> >
>
> With LLVM/Clang/LLD I see:
>
>   mycompiler -Wp,-MD,arch/x86/boot/compressed/.kernel_info.o.d
> -nostdinc -isystem
> /home/dileks/src/llvm-toolchain/install/lib/clang/10.0.1rc1/include
> -I./arch/x86/include -I./arch/x86/include/generated  -I./include
> -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi
> -I./include/uapi -I./include/generated/uapi -include
> ./include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments -m64 -O2
> -fno-strict-aliasing -fPIE -DDISABLE_BRANCH_PROFILING -mcmodel=small
> -mno-mmx -mno-sse -ffreestanding -fno-stack-protector
> -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign
> -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -include
> hidden.h -D__ASSEMBLY__    -c -o
> arch/x86/boot/compressed/kernel_info.o
> arch/x86/boot/compressed/kernel_info.S
> <built-in>:345:10: fatal error: 'hidden.h' file not found
> #include "hidden.h"
>          ^~~~~~~~~~
> 1 error generated.
> make[5]: *** [scripts/Makefile.build:349:
> arch/x86/boot/compressed/kernel_info.o] Error 1
> make[4]: *** [arch/x86/boot/Makefile:114:
> arch/x86/boot/compressed/vmlinux] Error 2
> make[4]: *** Waiting for unfinished jobs....
>
> mycompiler is a wrapper-script to use ccache * clang-10 as compiler.
>
> patchset to previous build:
>
> $ git log --no-merges --oneline 5.7.0-rc7-1-amd64-clang..5.7.0-rc7-2-amd64-clang
> 8b74901cb9e5 (for-5.7/x86-boot-remove-runtime-relocations-from-compressed-kernel-v2-nivedita76)
> x86/boot: Check that there are no runtime relocations
> 83fb1bc3b076 x86/boot: Remove runtime relocations from head_{32,64}.S
> fede23dacbbd x86/boot: Remove run-time relocations from .head.text code
> 3e5ea481b8fb x86/boot: Add .text.* to setup.ld
> bec910ba3d67 x86/boot/compressed: Get rid of GOT fixup code
> be834cee6f39 x86/boot/compressed: Force hidden visibility for all
> symbol references
> 9b7c7d8d2d7b x86/boot/compressed: Move .got.plt entries out of the .got section
> ba6a49f806a0 (for-5.7/kbuild-compressed-debug-info) Makefile: support
> compressed debug info
> a1fb11944d11 (for-5.7/x86-boot-nivedita76) x86/boot: Correct
> relocation destination on old linkers
> c70e3890058f (for-5.7/x86-build-maskray) x86/boot: Discard
> .discard.unreachable for arch/x86/boot/compressed/vmlinux
>
> $ find ./ -name hidden.h
> ./drivers/firmware/efi/libstub/hidden.h
> ./arch/x86/boot/compressed/hidden.h
>
> Any thoughts?
>

Maybe this should be:

[ arch/x86/boot/compressed/Makefile ]

-KBUILD_CFLAGS += -include hidden.h
+KBUILD_CFLAGS += -include ./hidden.h

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU54K8z2--6fS%3DLEaMJGgeWfudViT7ETMsSYF1i59_4mg%40mail.gmail.com.
