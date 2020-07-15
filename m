Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZMIXP4AKGQEALCLXOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F1F2207DF
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 10:55:02 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id l18sf986589ion.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 01:55:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594803301; cv=pass;
        d=google.com; s=arc-20160816;
        b=y6odi9iOiAmLHJ37tfLzDunM1+F0vlEc9GXMclignkpnKZPagJTxg1xW07uZHZD50p
         a+hxIrEfpO+ytUdpnIKWOri+Wb8Xkf+XfSzwKd8ooJHqkqd7wUPzhMz7jmjJv0GS1whm
         zRsB9QgPM5TpvFAGVaMTkvViVLB84hXkn+PgXQFwgcBT6cVyAbLqz003yeu4SuthaDBG
         8+SPxD1yPiBzqHNEs6Jw6JEYvyeVN978jPPbOAtt5cKLjygpxusjbjJ9Auv/SUCmkLVC
         LZVCGLAA83tCGB6x5/7Y1nxutRqE0baRR08/DnU2/FHmfd2txjsCHZJGPaZEPfUlZcdP
         fhgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8XBLs1dehJ2IHp8SCQ9dJNrjMl0agrpyFhn6MHY8VbY=;
        b=JLQ5UxIDMrZS66rRWD5kuQ/CfnIgYsIGOHrswagVRO7eM/oS0ueJmx9jXXWw8jyHCS
         s7BEjJhaGKWnbsHqv7AQpkNABRAVQ2gAtlE0Ywb3Sqx08S994xrwgDoXfAvoFNTWgQnE
         DMvyDPDRxWDMMjVdpUjbmt5l+ZnsFEatJKgURRg3Ufu2il2MVfFmwiGcEWgK56EboRHi
         hP0vBq/w9schuUGfy201Bs3WgW+kBCvazuRPAW0DaJuwjyK/3YQb/R//LxKTPGlFiMlr
         mpktVokp4zwnS3QsXGWAwIGPAV8sHAueOCGbg+E1Dpn+J9Bhtirnf6CL+s3dm4+pdJQM
         YYug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=REAg+4jM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8XBLs1dehJ2IHp8SCQ9dJNrjMl0agrpyFhn6MHY8VbY=;
        b=osmMCvbPYVdlWU3oDWKTsmTGSIEfENzARFAdadqVllH6N/kmnoErGyzw6XDV1R8Y5b
         gdLFf/Ji2vaAlhTx8dqLLXvQOJyBJwWkwOqLEqonWG5MyIVB1PDK8YCcvFX/WuoB4CKW
         tleYferGmKL67isEpqSX8DMV7cp9bh/yeBM6aSmjv3504eZR3hvuKYhgGz6unroq084F
         FvJ3Um3xSqy7zg8CLsLqQBfA3KhIzao54hmoadhIhp34Ck5HKLz00Vg6hZbXrFRCrx9S
         2wC8A4H8elIE8sh6ubvUKKxR+l1nlIuITni9Llzzv3iprU+4NeIHTlkFRrtWPvurV5ba
         tHHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8XBLs1dehJ2IHp8SCQ9dJNrjMl0agrpyFhn6MHY8VbY=;
        b=ZzTTegAk6OPtGFRruHN8t+N1SbP4ETlOkP6mzRXsn2bxzIdZlXLiN6Fq8D6jn7UV3b
         8Ud9q67Vo/w/YD7v46C3D3OhbZQJ62ZymIWEJVR1sJD91i6X0f9Vwmh4qyFw/cc+0kVM
         hxfuqbOcfkaRm2cAWc9gEkc6UqVh//KrOkCWsGFqQKSrGkxzqk4AF4bKUnjMzwdWzk/i
         IXViaIlvjmL1+qtTrW3hwYLKWveMI7GXmG4bd/LDvFB7W2m3aEFksl7+eka7nhWMBPWT
         9IIo7DAftswWjf/UFgjkxErArq/0Dm5fpITUWCY4cDMDhH5WoNbsgTx7sxwmrF1Rsj+D
         HLVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8XBLs1dehJ2IHp8SCQ9dJNrjMl0agrpyFhn6MHY8VbY=;
        b=kdYkXpkpb5EKF56ToNt/yn8la4o7KeHIjRPdp/4d7caO8A2SOSTFMLFXB80tIzOzTP
         rEfTX1J236G8EqOS1j/yIZU8p3vz4fUmgMdJkNVfczAQ6ljt8AhHslk39iqIc0vq7rZn
         Zfn4fpkcfAoi+FR/yJ4LqqkGqNiFtAs8u6pnAk57G7I8uT5njltU17LS1fYvtLpr54EK
         vja6sem9khS8B+Re8/QObR+/RKJcY6U8MJH1w/H97WGVS8Oaa6EumEkFkKrL2JgNTyoe
         oFtQtUTE0azelmqq9iO0tSWPNRZQUEx11t9dd0sPoVa/JHzg34ac6qrMwQFur40Q7DWz
         p8pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VWk1YnZjUGiGD6j2jiqUSNTsFQZjTarYMIGDVeoZCz5FunxQK
	Q+kXRe+m4SifOpynE6l1uHg=
X-Google-Smtp-Source: ABdhPJyu7suJqJANnQ0ZZfFP8rkc9yydH1JD0+5GG05MIus1Gcojkz7m+VwIOvq813icwkNlicPoqg==
X-Received: by 2002:a6b:e20b:: with SMTP id z11mr8899220ioc.2.1594803301145;
        Wed, 15 Jul 2020 01:55:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb4d:: with SMTP id w74ls412904ili.6.gmail; Wed, 15 Jul
 2020 01:55:00 -0700 (PDT)
X-Received: by 2002:a92:cacf:: with SMTP id m15mr8483842ilq.34.1594803300777;
        Wed, 15 Jul 2020 01:55:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594803300; cv=none;
        d=google.com; s=arc-20160816;
        b=lH+Cc0KE01IsMzjXqLw/t7ePQmpb2VaS+H0dLMXB+aD+H+DTsUvul8cVKjxAzIcVrn
         +V9FUKXJviQBGM9BOQSPw+Qq3IC6VuY/QSLGez/2+JXnnIQbxmOl0kxTrYNGTN6xQSSQ
         37LUuh4TYfhHzUZlW5sLjwEFk4M7utPOYr5fBJ969PNX58YdzEoiYWOIy1kUcGslJxIY
         fflYFjiQxh1yJwuxud1zj6m9mMym88DXTzTKROwjtdNAZ+OPtEDZM6OrjQDRJU2P0rc8
         BJDaOrVeEdA7gS79dczoh7EMf29ngWbFIgHLbN1B1WjbysA99VN180h24qiexVAKaZwy
         Yxyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E2KzDTTFRMDiRWJvyL1sP2xPLBu+h45b96i3t1+zICg=;
        b=YMExwkmjtsHtvT/HhT7CUhrxQ9uHKGo0+8AngNMI0jxoqmeKOaerRJTMigodb4S77i
         nZodh0On5yCiPPywMGZPF37FWHtjMoJqnrcf48cvAoiriT/qcgj8x8Mg1LL0TGRAd/3G
         1xyxbDfj18O6tOjd8oP4SfnlMPNL6Yqpd7MDiGiI3yylVwvlfrvC7XgWtDMtrVAwyyi4
         5fW1M/WryDwCtC19vPdoZErEZbu+Bl5w/j79u/mD4hUs724G5kZxUycEl0laZf+UAkUl
         GTijy1Bbd95BmphbvXPRf0vn9ZurHvU4B2fMo20hTvZqGfoJ0UOs41Oo491h8wQu1RWU
         dxvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=REAg+4jM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id t7si62846ilh.2.2020.07.15.01.55.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 01:55:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id a12so1390645ion.13
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 01:55:00 -0700 (PDT)
X-Received: by 2002:a05:6602:1555:: with SMTP id h21mr8957112iow.163.1594803300431;
 Wed, 15 Jul 2020 01:55:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu> <20200715004133.1430068-4-nivedita@alum.mit.edu>
In-Reply-To: <20200715004133.1430068-4-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 10:54:49 +0200
Message-ID: <CA+icZUVPzMnEe-VUabCCA_Kb9X00NZTUoms1Q0Wm6sK-5fHn=A@mail.gmail.com>
Subject: Re: [PATCH v5 3/7] x86/boot/compressed: Get rid of GOT fixup code
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=REAg+4jM;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
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

On Wed, Jul 15, 2020 at 2:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> From: Ard Biesheuvel <ardb@kernel.org>
>
> In a previous patch, we have eliminated GOT entries from the decompressor
> binary and added an assertion that the .got section is empty. This means
> that the GOT fixup routines that exist in both the 32-bit and 64-bit
> startup routines have become dead code, and can be removed.
>
> While at it, drop the KEEP() from the linker script, as it has no effect
> on the contents of output sections that are created by the linker itself.
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> From: Ard Biesheuvel <ardb@kernel.org>
> Link: https://lore.kernel.org/r/20200523120021.34996-4-ardb@kernel.org

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
>  arch/x86/boot/compressed/head_32.S     | 24 ++---------
>  arch/x86/boot/compressed/head_64.S     | 57 --------------------------
>  arch/x86/boot/compressed/vmlinux.lds.S |  4 +-
>  3 files changed, 5 insertions(+), 80 deletions(-)
>
> diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
> index 03557f2174bf..39f0bb43218f 100644
> --- a/arch/x86/boot/compressed/head_32.S
> +++ b/arch/x86/boot/compressed/head_32.S
> @@ -49,16 +49,13 @@
>   * Position Independent Executable (PIE) so that linker won't optimize
>   * R_386_GOT32X relocation to its fixed symbol address.  Older
>   * linkers generate R_386_32 relocations against locally defined symbols,
> - * _bss, _ebss, _got, _egot and _end, in PIE.  It isn't wrong, just less
> - * optimal than R_386_RELATIVE.  But the x86 kernel fails to properly handle
> - * R_386_32 relocations when relocating the kernel.  To generate
> - * R_386_RELATIVE relocations, we mark _bss, _ebss, _got, _egot and _end as
> - * hidden:
> + * _bss, _ebss and _end, in PIE.  It isn't wrong, just less optimal than
> + * R_386_RELATIVE.  But the x86 kernel fails to properly handle R_386_32
> + * relocations when relocating the kernel.  To generate R_386_RELATIVE
> + * relocations, we mark _bss, _ebss and _end as hidden:
>   */
>         .hidden _bss
>         .hidden _ebss
> -       .hidden _got
> -       .hidden _egot
>         .hidden _end
>
>         __HEAD
> @@ -192,19 +189,6 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
>         shrl    $2, %ecx
>         rep     stosl
>
> -/*
> - * Adjust our own GOT
> - */
> -       leal    _got(%ebx), %edx
> -       leal    _egot(%ebx), %ecx
> -1:
> -       cmpl    %ecx, %edx
> -       jae     2f
> -       addl    %ebx, (%edx)
> -       addl    $4, %edx
> -       jmp     1b
> -2:
> -
>  /*
>   * Do the extraction, and jump to the new kernel..
>   */
> diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
> index 97d37f0a34f5..bf1ab30acc5b 100644
> --- a/arch/x86/boot/compressed/head_64.S
> +++ b/arch/x86/boot/compressed/head_64.S
> @@ -40,8 +40,6 @@
>   */
>         .hidden _bss
>         .hidden _ebss
> -       .hidden _got
> -       .hidden _egot
>         .hidden _end
>
>         __HEAD
> @@ -353,25 +351,6 @@ SYM_CODE_START(startup_64)
>         /* Set up the stack */
>         leaq    boot_stack_end(%rbx), %rsp
>
> -       /*
> -        * paging_prepare() and cleanup_trampoline() below can have GOT
> -        * references. Adjust the table with address we are running at.
> -        *
> -        * Zero RAX for adjust_got: the GOT was not adjusted before;
> -        * there's no adjustment to undo.
> -        */
> -       xorq    %rax, %rax
> -
> -       /*
> -        * Calculate the address the binary is loaded at and use it as
> -        * a GOT adjustment.
> -        */
> -       call    1f
> -1:     popq    %rdi
> -       subq    $1b, %rdi
> -
> -       call    .Ladjust_got
> -
>         /*
>          * At this point we are in long mode with 4-level paging enabled,
>          * but we might want to enable 5-level paging or vice versa.
> @@ -464,21 +443,6 @@ trampoline_return:
>         pushq   $0
>         popfq
>
> -       /*
> -        * Previously we've adjusted the GOT with address the binary was
> -        * loaded at. Now we need to re-adjust for relocation address.
> -        *
> -        * Calculate the address the binary is loaded at, so that we can
> -        * undo the previous GOT adjustment.
> -        */
> -       call    1f
> -1:     popq    %rax
> -       subq    $1b, %rax
> -
> -       /* The new adjustment is the relocation address */
> -       movq    %rbx, %rdi
> -       call    .Ladjust_got
> -
>  /*
>   * Copy the compressed kernel to the end of our buffer
>   * where decompression in place becomes safe.
> @@ -556,27 +520,6 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
>         jmp     *%rax
>  SYM_FUNC_END(.Lrelocated)
>
> -/*
> - * Adjust the global offset table
> - *
> - * RAX is the previous adjustment of the table to undo (use 0 if it's the
> - * first time we touch GOT).
> - * RDI is the new adjustment to apply.
> - */
> -.Ladjust_got:
> -       /* Walk through the GOT adding the address to the entries */
> -       leaq    _got(%rip), %rdx
> -       leaq    _egot(%rip), %rcx
> -1:
> -       cmpq    %rcx, %rdx
> -       jae     2f
> -       subq    %rax, (%rdx)    /* Undo previous adjustment */
> -       addq    %rdi, (%rdx)    /* Apply the new adjustment */
> -       addq    $8, %rdx
> -       jmp     1b
> -2:
> -       ret
> -
>         .code32
>  /*
>   * This is the 32-bit trampoline that will be copied over to low memory.
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 4bcc943842ab..a4a4a59a2628 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -43,9 +43,7 @@ SECTIONS
>                 _erodata = . ;
>         }
>         .got : {
> -               _got = .;
> -               KEEP(*(.got))
> -               _egot = .;
> +               *(.got)
>         }
>         .got.plt : {
>                 *(.got.plt)
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVPzMnEe-VUabCCA_Kb9X00NZTUoms1Q0Wm6sK-5fHn%3DA%40mail.gmail.com.
