Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB64QXP4AKGQEOON3BIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE80220849
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 11:12:28 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id l3sf2268914pjh.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:12:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594804347; cv=pass;
        d=google.com; s=arc-20160816;
        b=sTTPm7O6yVG/ddzQuWUzldLlw5xH9xloDho0YyE4unsyyEmUcFpNqY0pk9mFa68Ad4
         xZr3i6HYuxJ1t8qdcz6dDhB44gibXXIa4VqTmXE7LFA7XgqBi/4koz7ztFHYMbHamhky
         aVcPFb7ddD1LauLejRfmWfLQhPM1SBfiXQqvVL40EFGmmjOCPngbkQgucXbgliO4oWTq
         V69xNK9Ql+MVAIRxYXamqxk0yFPO9mVU2iwhSYcGJlLbjtnz2y72WmqP/JNS1paii8t0
         rNOc/ExBdn4pu0EObF5Z8NXa2gBC35yX/U8F88uLGuMEoZ94POSytDFdLc3M8lES0AyM
         seIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=I/ORxF9tfowE1M50L7FkeJGfiK4dBZr/u+ASSFArBjE=;
        b=AtYUWaoY6sWgywytIBRYcxGhguy5weP9Jecy4kOj6uHRNk3h9AaT/WBrGqv9bcGKcJ
         DDMgAO1MXVYYm25iBOjb5XhFpnbqZ13nLJpvSDs4jJW1tAlt0vfdV1C/Axjm1EQ+MqNg
         R4MkVG9Nj5uaviDwjD9M23M+gOcBbnCUrkYXM0PHfPVkGxNT1mQrdttMz8/kcwlkLJPp
         f+raCSu+Cpf/ldvnMbzbgOd9jx5kbmjJGgWAIMRm7br1yY4CwQfii4IB+MEkM8sAOePQ
         v59Bz4L1Cb/Y6l66Q8yDDwqNqLpf4WhMFwUM4Pm7s1q+pJLHxx7S9x0c2gPaK4120t0Y
         54Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fTqPG3r7;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I/ORxF9tfowE1M50L7FkeJGfiK4dBZr/u+ASSFArBjE=;
        b=h0tNqDfAQCe2aH48w0CIIa+mKv4+2b2jDj6Bjy2+Gzkj1Jn/8yHaU0mqCQU/kAcH77
         FOHOmO0M4p0MGMMQFK0nuTeV7gZzIAUd1zMMXXgVMMwjmS5N8h5sou2PThh2yix0kmRs
         1qX9M0RW6+WFqIcKEM8lMfBdQzk2+PcAh1Jq3ywQF9D9VdALXMbX+Cmm9VrIoB2R3d3S
         1Z0VV4qCJHPV7OQ6K1sTua04JL5FK4caJ8Savg5h6D+XbQovuZd6WnETnFfzmWYEFJ1S
         x1EW4kHc+l1YnYe8cdbkfgFWcVdlnaD6OobPD8DGHfIc6fQatT+VgU4ewRgddO9vxCNN
         cZBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I/ORxF9tfowE1M50L7FkeJGfiK4dBZr/u+ASSFArBjE=;
        b=XT6LiHMmCx/t7vwW7WhM5JEzmtSPYGKy0eZFx0wL1vlMEpnknYlHaEQ1OFz3Qpe27G
         lwQNmVLyH5d7yvZ8TTGj6ttn/+vT5yDSHUFftUxo6zVbpgboShzOa3bMcX83xxhMcw7u
         kGUgTTQhnx2qsBT74j7j6ZqTlhvfKxXAGfl87ZfWxvqly99iiNWQw1AXBk/ImdAN0GAR
         p48VF8DQi3/iGJAjArGiaVcTBGxA+dzyI4xVEQ6gwdW+vbofYkbTuAcM0mxfXqCjr1ju
         aioE4HYSYEUCsOKEIUJNeald+x5J03uYwMpnRumRCU2rypCBoNBhd9YoiQnLWvxFg9yH
         1tAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I/ORxF9tfowE1M50L7FkeJGfiK4dBZr/u+ASSFArBjE=;
        b=a28qNVtYEygjUuM7wqu659pVZ9mpNWCfZVncoWdJWi375SL+DV++UYGkjFbrjJwlov
         rBu+jTzpqC6neCV+c/ycjPDvHjXstRXmK/gK7pEduBbCUQDIKKDrs7zceD7Varz+KRhh
         6lukRdDBL50GAx8p04qDf3LSyDyIZu1Wm5YrcJbTw8qowgd1ZbTa9zPLd+fghsUkRbTs
         uP2obCNDm9dKQYlHbKgp8SSQW+oCTPBC7HWypPxfih+QPzXD5/DQqK1eUrf4fYRBzuXl
         SPZDO8ZFbASy+ASTiEqLRc1polcddNmY/UACS4zJhbOC4mG1WLp9lQrxEgSwcS7KyBOR
         HI8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RgMJo4tAw+/70cmthNL+C+h0BEnqUgRbaOVLrbXRNhvltSAxH
	KJ+To1ovu9hrkCHP5lVzJkQ=
X-Google-Smtp-Source: ABdhPJxE6dzWLVRiIBloSRV7bM63ZjEUV4wkoCo3yjH8Jt0sUGzl3xgkh4czJNqntS1/kjCKgdbKOQ==
X-Received: by 2002:a17:902:eb54:: with SMTP id i20mr7290426pli.183.1594804347261;
        Wed, 15 Jul 2020 02:12:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ea0e:: with SMTP id w14ls861775pjy.3.canary-gmail;
 Wed, 15 Jul 2020 02:12:26 -0700 (PDT)
X-Received: by 2002:a17:90a:319:: with SMTP id 25mr9476483pje.77.1594804346714;
        Wed, 15 Jul 2020 02:12:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594804346; cv=none;
        d=google.com; s=arc-20160816;
        b=f9+Z+rWnWvtUpMFQ1K3tzMJKnB3xxf2fPchvMjgczAv8LvYu2dRLhV6uiumBBTHk2J
         OVBW+ii8LpDnNDhYdWRpqBJbfN1MYNvK1TyrVA3w8oN58trp+5LJkV8VpOqXdsaux5uL
         Qb8302bwRngkPW8+FPyxYY0fZGNLn23h4QnajwhUkWux39WgmGENlVZ3lOdhGBLSXNjT
         OVzTkNxVb60gekbtNKCbIjaVpWc2GXqvOXoor84USU5ufRJz9mLkJ3ESdwYe78CRg1Rc
         LpKyOX/RtXk1l4nb4Y0RT+Fluxcsxp20CtotdNTjtASMLYwu5+7mfa12NqQJUuRj84+f
         41zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8rsbdVH+KC3/YgU90lgBBUyoDt5JRerD1kAjn5HbfQs=;
        b=yXQfAZsfyLHKs/8YYUyT/7qWiLIBrLeSU3EG6N3oQtE1eLb9yOux2L83/UBKCL+Ekr
         q3+34igLznqjbpvqRD1XNpH9TdBhwRCvQgSZPv0WdYRkc+qFR0nseoqYj60qBMZxi5cu
         5Yujhyaa8wa/iiCNNeJfzp4dJIJ6t1O0AAoRs2A2VuoPCRfgs+/j5Ox6el/NAA316/uk
         IIsgwGrzzMDUP9S3Yk+ObPbpP8KGnTN8JGE6+jS86yqowBH29ZDTW3dvtYVMYLpeunp9
         tuA1XZOCakE4OS7QsXei4x6PmXloR/ltLCNAhZN8BRF0NcVYvG6EliXwK9lhrnR+hWJo
         8erw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fTqPG3r7;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id n136si66834pfd.1.2020.07.15.02.12.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 02:12:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id i18so1329459ilk.10
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 02:12:26 -0700 (PDT)
X-Received: by 2002:a92:290a:: with SMTP id l10mr9449309ilg.204.1594804346151;
 Wed, 15 Jul 2020 02:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-8-nivedita@alum.mit.edu> <CA+icZUX56cEjdkiuxOXtCgY1F0NWD5QxqMBRQxE5Li3=RUe-7w@mail.gmail.com>
In-Reply-To: <CA+icZUX56cEjdkiuxOXtCgY1F0NWD5QxqMBRQxE5Li3=RUe-7w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 11:12:14 +0200
Message-ID: <CA+icZUVJLreLhESAhd2AMyPOJF9bqUqqJ2PR6Qw5Y3ae4se1eQ@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] x86/boot: Check that there are no run-time relocations
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
 header.i=@gmail.com header.s=20161025 header.b=fTqPG3r7;       spf=pass
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

On Wed, Jul 15, 2020 at 11:00 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jul 15, 2020 at 2:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > Add a linker script check that there are no run-time relocations, and
> > remove the old one that tries to check via looking for specially-named
> > sections in the object files.
> >
> > Drop the tests for -fPIE compiler option and -pie linker option, as they
> > are available in all supported gcc and binutils versions (as well as
> > clang and lld).
> >
>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> Here I reported the breakage with LLD and tested the move to
> LDFLAGS_vmlinux with a previous version of the patch.
>

Feel free to also add my:

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > Reviewed-by: Fangrui Song <maskray@google.com>
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > ---
> >  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
> >  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
> >  2 files changed, 11 insertions(+), 25 deletions(-)
> >
> > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > index ae2c0dc98a6a..a9e082b8c720 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -29,7 +29,7 @@ targets := vmlinux vmlinux.bin vmlinux.bin.gz vmlinux.bin.bz2 vmlinux.bin.lzma \
> >         vmlinux.bin.xz vmlinux.bin.lzo vmlinux.bin.lz4
> >
> >  KBUILD_CFLAGS := -m$(BITS) -O2
> > -KBUILD_CFLAGS += -fno-strict-aliasing $(call cc-option, -fPIE, -fPIC)
> > +KBUILD_CFLAGS += -fno-strict-aliasing -fPIE
> >  KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
> >  cflags-$(CONFIG_X86_32) := -march=i386
> >  cflags-$(CONFIG_X86_64) := -mcmodel=small
> > @@ -51,7 +51,7 @@ UBSAN_SANITIZE :=n
> >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> >  # Compressed kernel should be built as PIE since it may be loaded at any
> >  # address by the bootloader.
> > -LDFLAGS_vmlinux := $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> > +LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
> >  LDFLAGS_vmlinux += -T
> >
> >  hostprogs      := mkpiggy
> > @@ -86,30 +86,8 @@ vmlinux-objs-$(CONFIG_ACPI) += $(obj)/acpi.o
> >  vmlinux-objs-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
> >  vmlinux-objs-$(CONFIG_EFI_MIXED) += $(obj)/efi_thunk_$(BITS).o
> >
> > -# The compressed kernel is built with -fPIC/-fPIE so that a boot loader
> > -# can place it anywhere in memory and it will still run. However, since
> > -# it is executed as-is without any ELF relocation processing performed
> > -# (and has already had all relocation sections stripped from the binary),
> > -# none of the code can use data relocations (e.g. static assignments of
> > -# pointer values), since they will be meaningless at runtime. This check
> > -# will refuse to link the vmlinux if any of these relocations are found.
> > -quiet_cmd_check_data_rel = DATAREL $@
> > -define cmd_check_data_rel
> > -       for obj in $(filter %.o,$^); do \
> > -               $(READELF) -S $$obj | grep -qF .rel.local && { \
> > -                       echo "error: $$obj has data relocations!" >&2; \
> > -                       exit 1; \
> > -               } || true; \
> > -       done
> > -endef
> > -
> > -# We need to run two commands under "if_changed", so merge them into a
> > -# single invocation.
> > -quiet_cmd_check-and-link-vmlinux = LD      $@
> > -      cmd_check-and-link-vmlinux = $(cmd_check_data_rel); $(cmd_ld)
> > -
> >  $(obj)/vmlinux: $(vmlinux-objs-y) FORCE
> > -       $(call if_changed,check-and-link-vmlinux)
> > +       $(call if_changed,ld)
> >
> >  OBJCOPYFLAGS_vmlinux.bin :=  -R .comment -S
> >  $(obj)/vmlinux.bin: vmlinux FORCE
> > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > index a4a4a59a2628..29df99b6cc64 100644
> > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > @@ -42,6 +42,12 @@ SECTIONS
> >                 *(.rodata.*)
> >                 _erodata = . ;
> >         }
> > +       .rel.dyn : {
> > +               *(.rel.*)
> > +       }
> > +       .rela.dyn : {
> > +               *(.rela.*)
> > +       }
> >         .got : {
> >                 *(.got)
> >         }
> > @@ -85,3 +91,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
> >  #else
> >  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> >  #endif
> > +
> > +ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
> > --
> > 2.26.2
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVJLreLhESAhd2AMyPOJF9bqUqqJ2PR6Qw5Y3ae4se1eQ%40mail.gmail.com.
