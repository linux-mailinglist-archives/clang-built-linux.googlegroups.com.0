Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJULXP4AKGQEH6CLVFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC192207FB
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 11:00:23 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id l53sf904011qtl.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:00:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594803622; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2ufZ6VrF4UZtI9uS7eg4fVVCm08+gIzD0iVWFpwyhka+bP300HlEd8yhk3+WI1kSO
         S3wPL5oCrfQhQCL3bU3OC0dt1WNFtlWenUtmF6TaDhtli/r9LyMMytXw5zf5MZnAI+Wq
         B3Hm/zSwIDnM6tWCYRp89jjWXc7Si1MJQ96TtF7XFCTDNTMM8ATVqhdQ9+DVFdDhmIHh
         z4i2a0tgFH12l7z0eTWEh5yAcV1Vl+e/DSRW5A7WIZbAfRaYzZHDWsZz0pUC2XcFJvs7
         BhAI3Vd7XYvgZXQsdf0rsDWM6kC93qKAJl1ovbSBJ39+c9NtGxwsJSFWdgm+3hOoifid
         NIKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tZPmu92lD05bjq35pBSZ/KQe+XNAWHueLPO7csbkIFk=;
        b=uvj3OvaHvEpDIctsR3Zv/hr4PMKvHWlK2T/iiqI534VZUNICU5xW888P17SBeXxpcB
         gl0PdZ1c9jIniKtA9g0sQoQhyaHzcwIDDi4dU03BxRlKBZfDMZzhu6Q0dMQw4OaR3NyY
         ZPKAuMb6h7y6vjvUbk8iaqlml/hOvsmDbE4qk5pVhLHnqHRbiNsifA3r3qDhohTiRkzL
         QpjDWgZyMMP30muNH8GRKmOdvN/0GFFgu7ZH4E0QbuNRu5p1/SqHjRjlDjWIRcDiyO4n
         LFX8AZPx6MW+57zWU8cpPfiVeaFFxssQRv1x0s3no1meOPtyW9Cg2BmKnKHeVC/jSAif
         xASw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G7nhBArn;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tZPmu92lD05bjq35pBSZ/KQe+XNAWHueLPO7csbkIFk=;
        b=oamK1Fgk/1xDPDeb28BoNlP32CniUSRGhe5IqHKvlpRDQaX3icp8diOSXxR1T6kCbi
         k2P6O50SJznYV+dkK8TCXC6T+qJq0RfcKpNi3IjLYXQx/AyNkign1TAKyU/zaeKu4Y3k
         BlmZHHOd/fVmumpwAswSh/5drvkDmv1tr8BHRqY4TjWJcIi/BA7fbMybPQ4f8WrRMcwB
         dLmay0H0ijT8wlsvbJXkZ2uF5yZjSSgKLFK4y9dF9lF04nvxM+qJd9JID2BCTL6U3Yiv
         dWYYtDjGvFwXqBIlpFFm8kkmNLE6gY3oTnCcPk6oAOT8bLx6NmImyfOHnGUfRX0+Dgnp
         CM4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tZPmu92lD05bjq35pBSZ/KQe+XNAWHueLPO7csbkIFk=;
        b=E01BCVWwAFD38JUzNuxeNkkkNH8gArLGUzOuHHnoGjzY8LmnF/6Xe3P28uz6PGiP8+
         c086f2GwtgtvocQ0sAdGkOXO7PSgV3O38Klyf0a6Nj5Tcf8auq/7CQKxwUg+nl4uRXKT
         M90FafhHlnrXJ9k637zFzPMsvRfsZTHUpNvLHOq8ezOMAw+fhhBaNNiLIfDW5RbSQ3CO
         rFwbAeJhgTOQt1AXZpkGQ55TGynMnxgCwnWQvZLvoKhpndyTHHcMVbDcD+vRz2H2OnIW
         DxgvHYFbtvseOuOssSZWy8Gz25m39bFG1HNuX1vft+X4gfgaawOwOX5dOVLN9TumxLv0
         v5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tZPmu92lD05bjq35pBSZ/KQe+XNAWHueLPO7csbkIFk=;
        b=cHcOtYGHezQK2eENaPB65AM7WySc1wE2/5q7WqUfKACcf1SjEM6XLdqbJdN/c9GS91
         B4KKes7lp5RyRgv914iqVSoTyWz+GLRrh7Me3njlv5qAdoHyVkcmAdjFaTJYRKRVI1/i
         5UwhQG6FhgDrtRwyzNat8GIJZe7CTDfICP3yLz3cMdFaVJ044g5/tC5ufWVYXMlFG9c8
         +y46zGyFMSMY/+nt7ea2Hq1DlnV7QZH5Kk1dJm2d7aRql6QqBM4u+CbgnYqBXC1lAfmn
         vqzhc+4u1LDp5XUWR1TSvUeAcj3Lv2YykFSUxEG5jmxJcFmRrNWfyYu3N6XTn0/HkLWr
         oO8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cgZwf+JfquWaKq6alh0yztFL0sfX38u2HDZ79FA5mbq+az7CD
	YNhmSR2IR4cl5vOWakED8ns=
X-Google-Smtp-Source: ABdhPJychpxQRAJb1g8p8ocDmjXk2OV7J8IJUACbYa5rFT6LbOKBiL7oP1Dm5ho9wCEVxDReVkBIYQ==
X-Received: by 2002:aed:22ef:: with SMTP id q44mr8625836qtc.333.1594803622417;
        Wed, 15 Jul 2020 02:00:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:786:: with SMTP id 6ls732822qka.0.gmail; Wed, 15
 Jul 2020 02:00:22 -0700 (PDT)
X-Received: by 2002:a05:620a:1654:: with SMTP id c20mr8728385qko.138.1594803621973;
        Wed, 15 Jul 2020 02:00:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594803621; cv=none;
        d=google.com; s=arc-20160816;
        b=Kt0lcKjaxyEoWWjHRQSOCfof0ZfLn8wvIJay4NCFTHHE6+xkcZeqgstRiVsCAZGr1y
         6gem2NSYqiIT8sHqtk8Nlu1PKTGBweSMfBb00enQyvTkizYlqS9yLhaHPrLgeMzKnm6J
         s1QcbAw0se8aSGaPjPXesnlHIhrX4yd/ClCOYKq/VdMlJkJsurvsXMh+okywtlRalfnv
         rIWZP+bBUBar0cQINPktEDSc/KjnuLiMsrTn0xrkd50bei1efpXSfoOorpRrq/elPEEs
         lRElqZDGqmH0ewGL3AbizPrdZX6vlZ9xSPl3uw+U47sz/JLh0fsFrCMDjC+LFa2A4WLQ
         NyFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3PdI5My1859p1IPLjt/fTz0M9NmoIv3OJiR/upvR4pU=;
        b=1Dy7M4hs+mjtwdMHOafvllgwKFGevxCAMWV9VudwJzfXU5HtC58POjGGuin+69KlpH
         Cu+eRPzYE3VM9Syujsw5/Z+HqOccs4U2j8WBdmhA8w7XmnbMJF/iboCoEXPAFZPFdvlZ
         NGQGMwoFbOAdatwwAtiLT4uyC80WJ+WunPOTQp4+Z31vK9rOKJBsdEoRKi7lwqnJPC/K
         TOLZP78Vyjoe1Z4U46PPt9u39H2Zrm8pkLY1rhzvvHQ6Vo9wGkcZpKVhaDKeGiL26JJ1
         eiqF3JO0COdwdyPOuKOWdnu8gWKshWG2uPxpG63UizAS0cfvgYt9C+fp7TyjbxyXw/As
         aZ7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G7nhBArn;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id m1si64441qke.4.2020.07.15.02.00.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 02:00:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id t18so1338566ilh.2
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 02:00:21 -0700 (PDT)
X-Received: by 2002:a92:8b11:: with SMTP id i17mr8783455ild.212.1594803621436;
 Wed, 15 Jul 2020 02:00:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu> <20200715004133.1430068-8-nivedita@alum.mit.edu>
In-Reply-To: <20200715004133.1430068-8-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 11:00:10 +0200
Message-ID: <CA+icZUX56cEjdkiuxOXtCgY1F0NWD5QxqMBRQxE5Li3=RUe-7w@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=G7nhBArn;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142
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
> Add a linker script check that there are no run-time relocations, and
> remove the old one that tries to check via looking for specially-named
> sections in the object files.
>
> Drop the tests for -fPIE compiler option and -pie linker option, as they
> are available in all supported gcc and binutils versions (as well as
> clang and lld).
>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>

Here I reported the breakage with LLD and tested the move to
LDFLAGS_vmlinux with a previous version of the patch.

- Sedat -

> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
>  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
>  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
>  2 files changed, 11 insertions(+), 25 deletions(-)
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index ae2c0dc98a6a..a9e082b8c720 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -29,7 +29,7 @@ targets := vmlinux vmlinux.bin vmlinux.bin.gz vmlinux.bin.bz2 vmlinux.bin.lzma \
>         vmlinux.bin.xz vmlinux.bin.lzo vmlinux.bin.lz4
>
>  KBUILD_CFLAGS := -m$(BITS) -O2
> -KBUILD_CFLAGS += -fno-strict-aliasing $(call cc-option, -fPIE, -fPIC)
> +KBUILD_CFLAGS += -fno-strict-aliasing -fPIE
>  KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
>  cflags-$(CONFIG_X86_32) := -march=i386
>  cflags-$(CONFIG_X86_64) := -mcmodel=small
> @@ -51,7 +51,7 @@ UBSAN_SANITIZE :=n
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader.
> -LDFLAGS_vmlinux := $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> +LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
>  LDFLAGS_vmlinux += -T
>
>  hostprogs      := mkpiggy
> @@ -86,30 +86,8 @@ vmlinux-objs-$(CONFIG_ACPI) += $(obj)/acpi.o
>  vmlinux-objs-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
>  vmlinux-objs-$(CONFIG_EFI_MIXED) += $(obj)/efi_thunk_$(BITS).o
>
> -# The compressed kernel is built with -fPIC/-fPIE so that a boot loader
> -# can place it anywhere in memory and it will still run. However, since
> -# it is executed as-is without any ELF relocation processing performed
> -# (and has already had all relocation sections stripped from the binary),
> -# none of the code can use data relocations (e.g. static assignments of
> -# pointer values), since they will be meaningless at runtime. This check
> -# will refuse to link the vmlinux if any of these relocations are found.
> -quiet_cmd_check_data_rel = DATAREL $@
> -define cmd_check_data_rel
> -       for obj in $(filter %.o,$^); do \
> -               $(READELF) -S $$obj | grep -qF .rel.local && { \
> -                       echo "error: $$obj has data relocations!" >&2; \
> -                       exit 1; \
> -               } || true; \
> -       done
> -endef
> -
> -# We need to run two commands under "if_changed", so merge them into a
> -# single invocation.
> -quiet_cmd_check-and-link-vmlinux = LD      $@
> -      cmd_check-and-link-vmlinux = $(cmd_check_data_rel); $(cmd_ld)
> -
>  $(obj)/vmlinux: $(vmlinux-objs-y) FORCE
> -       $(call if_changed,check-and-link-vmlinux)
> +       $(call if_changed,ld)
>
>  OBJCOPYFLAGS_vmlinux.bin :=  -R .comment -S
>  $(obj)/vmlinux.bin: vmlinux FORCE
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index a4a4a59a2628..29df99b6cc64 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -42,6 +42,12 @@ SECTIONS
>                 *(.rodata.*)
>                 _erodata = . ;
>         }
> +       .rel.dyn : {
> +               *(.rel.*)
> +       }
> +       .rela.dyn : {
> +               *(.rela.*)
> +       }
>         .got : {
>                 *(.got)
>         }
> @@ -85,3 +91,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
>  #else
>  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
>  #endif
> +
> +ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX56cEjdkiuxOXtCgY1F0NWD5QxqMBRQxE5Li3%3DRUe-7w%40mail.gmail.com.
