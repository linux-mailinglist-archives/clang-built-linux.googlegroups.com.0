Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB3FRXD4AKGQE62SQM3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C34321FEC7
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:43:25 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id o15sf13291680pgn.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:43:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594759404; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9me/RUop6MyhYXxj1CgQD+jRpaS5WiPLR00ljRjiHeG+MBLypLOwGCcgZN25qlI8P
         JKWD7jpMWhS2Ymg8CAXV/jlpT62LVtwT5Rdvh9jtJj2Uu46EAqj5K7wmsfOqOEiwL9uY
         pjKxNi0epZ5CNE02FYSr7mcNuihtDtKNtlO9RnRDU9bMMTfWYlN2gb602Fsn4krUVmbg
         Iz0AWDDG7BIkQVWvuzhb22A1P8gYvy5eErSyOYbGwGZv3Ottzc3QAK3lWi9RH+9nbdSE
         LbDtRPuqiCoxwajPVanB3orYR+JTcD/5JwVMgJaSQQaNt9oBbtSlULTcRWdiSfOTZPa7
         SiUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jlmWuf0ilfxpOkVDpMvVbLYyIey89n3XmYpHLXlLltc=;
        b=JpTmtzcvS/5SXceMhOgye2A5HVO0m2XIbeb+tLHXCi/Vw/+vB//uelqNfDCjZHCgA0
         Qcxb5CddQ3rEBOpmST1sRZZ2Jar17beTOCz40U/H5jykgNwH3eyyk/wHGon6obex0v4Y
         VwWhUH1y0H3XL84IC/lCyTYF7J9rR9XolCHPGmjB5Dc8jWRgqzV56VyW7KiCeHBEvoYY
         6v/LNEptU1Ci0nerdnd4/Z4YaXzSRMcVH1gX4K8GtJzVpl6h/Nuupawd1HIfKrbDhXYz
         Uy3/zaMYsYYezlwes5jD6mzqusuThm6tNSnxVGKKDKdz223VlzHbu5vSOsufaBlusDTI
         +FmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unoUiIVB;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jlmWuf0ilfxpOkVDpMvVbLYyIey89n3XmYpHLXlLltc=;
        b=p+52jTParjJtXY+snSECFVkrytOXuluBCrtq/V8fgutZwatLgJECr9NHOxO4m28Q58
         2s9lM5G5nDl7zVLk3VyUt16XVgKg+Tw0cmWtbnogwyPXt073wjuYQbYbzTQcL7rypi+i
         GKSEF8Lr4xSfhRn1mIHYWmvixRGsBKxUhpXAhwBNyGWjuyoILn6oDO8xNEzHHwNzyIRk
         94XsZkvU4E1HRkQoKECr83g0vho5NMrmnelQIgex22uawMlxoLO/zUn7+C2GVPCKZzZr
         P5tdhMPQ1hLAxhn/kCJYF1Y/Pgh5dolg/uaumK1m/4khij35ZRQ9X3Ezjig2T2VgW+LF
         l5eA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jlmWuf0ilfxpOkVDpMvVbLYyIey89n3XmYpHLXlLltc=;
        b=nCal2612vqxNQhBfiEbxoD1QNzfbVAL3+EpEtZdBpp2BIaLccZ3rvOiRy7DBgd1EHe
         kJo3gQ30hMScLpit5CGr99/8iaas+jTaw4MYGo1T0HsXjb2seLwRlcTPwEaJ+9NQ+pqo
         Z5OfmwseRkNwDgRkeVHfSDYxLIf4uipn5ZJVPJhiHcht4xBjK5hU5gJ/30O32wla/HSB
         K+NXiJj6jzpEVugBo8MqmVz77N2I9f/icNbApLwvlU95Oy8n8h/2gfHYay77lme9y2Yc
         9Q51/psgOTp6tJPzV5Kh2+sDeg5ZNq6eJ7D14tspYDS6HkZlmuTRb25/ypOAF6PuuOQC
         faaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jlmWuf0ilfxpOkVDpMvVbLYyIey89n3XmYpHLXlLltc=;
        b=mHyJwOZBUjqn3iva9kjMGBU0DiBuArVjUAfpFxnfjloqLp6R+Zbh1CCjQ54Idbp/+h
         uSf45lj3+GjRuoZ3rHZ4k/pZ8txRwAXIUvZVBJV0sQHmmzXdq4Saw9s/Obuat+Hkacje
         0AnSwc7ym/JORDV5/M7VqDPmwSHjvTUxhxCtEMrhiQfYORjofQU+6U97KJu3HOZWjcWk
         u1wKIK9UQ+8kR55Gfj3jGwaodxuZEGjTE8sAbVZjNMr8VithgxlTwJr7h8cy7ICT2bo1
         7Nr+Tn69nJ491EjRblG3OsV27SK0SzWq3fy8X9VEUyvEvr2MPbUTr3RrkPrNFeh+75zP
         L4AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533we1+c6qkT/oiHFastGoCB45iSSsWEasx5MM9ZCn2HkAyf52vK
	VdNRI8QeRFfiCGxDFfZP7xg=
X-Google-Smtp-Source: ABdhPJyeXHhvEi0eLrg8xafxjNm3ghbkm6NRTbKTR9DVuXsN7b6wDWquJnfkywtWqvxRBfN59DexTA==
X-Received: by 2002:a65:6089:: with SMTP id t9mr4911454pgu.236.1594759404188;
        Tue, 14 Jul 2020 13:43:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ce4d:: with SMTP id y74ls6888527pfg.3.gmail; Tue, 14 Jul
 2020 13:43:23 -0700 (PDT)
X-Received: by 2002:aa7:955a:: with SMTP id w26mr5865066pfq.137.1594759403751;
        Tue, 14 Jul 2020 13:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594759403; cv=none;
        d=google.com; s=arc-20160816;
        b=a3VcreZCrCAxvDd8+tzCXC3tpi708NJWBmSPP+NDNwFIXnVfPmA390gfbj8nJdfOxO
         EZwIBGUHy0MVPGJ0zeF8rwA9McVBY0mspMUvRCIFiTX/Tm1LYpq9uWLHWUNXeOaQlIPO
         j33X1KipDoUe1e60sEa3XJgD7TivUOpya5XemKHW81HNtS2qb95Qy4PZKTUOXhRFto7Q
         IYxhWLkDyssYma5D5i8QBq8GCg2ub1A4smI6bjp8MLY5HAJve+EemVefW5oQvvUbVFUu
         jZgzlDq6i/PS2owOcQbIQh/g9N8W4to17bkLMS8kk0zQ6f8v2VDWKCWIIHp2QP7VZrgA
         529A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=659l3loeZVWVHQe88TmNq0IOrVNRvE12czGtYHK/OHE=;
        b=jpCTURJfBunUb94jZyWBubIp2j69xMM6OG2+wcnhJvWq2nF5j2Itc+2T+d3oxU3psc
         lN6b+lr7N8BIhrJlUs0IiCUPHeS0EHsVHioKKLfUgD5yr3n5vMI4ryhncjh5vi6nIuXa
         ovbzmj8Cm8LNxF3GbE+BnZXcGL5yiLaCcNDZuDY9NL5mu8a2LqoZGCy9U2SOFUaMI19O
         8b+tX8sm8zP5AG1KoFPpj+spq9Y1epggzhS5htcF+rTtZQ065B7hMJq31GPcMknQT4tY
         uXGPsbgVunsxUdq89OcFyfeSEFWbhsRnQWx5mw7RjD1ccDnUaNDDwq4WZG6/bMXq5fZL
         O8bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=unoUiIVB;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id a6si5735pgw.3.2020.07.14.13.43.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id v6so18799790iob.4
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:43:23 -0700 (PDT)
X-Received: by 2002:a05:6638:2591:: with SMTP id s17mr8067905jat.23.1594759403170;
 Tue, 14 Jul 2020 13:43:23 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan> <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan> <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com>
 <20200714202100.GB902932@rani.riverdale.lan> <CA+icZUVcyAfXqyAQp+bjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA@mail.gmail.com>
 <CA+icZUUtcQhzO=1KToJyhL0-kWFvV6Ow49u_28Ez9AhvkVjWEw@mail.gmail.com> <20200714203537.GD902932@rani.riverdale.lan>
In-Reply-To: <20200714203537.GD902932@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 22:43:11 +0200
Message-ID: <CA+icZUX93x_vhG-j+H+ktC_vt1d0f-KWZ+0L+hf1dnr=0L9h7g@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
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
 header.i=@gmail.com header.s=20161025 header.b=unoUiIVB;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
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

On Tue, Jul 14, 2020 at 10:35 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Jul 14, 2020 at 10:27:25PM +0200, Sedat Dilek wrote:
> > On Tue, Jul 14, 2020 at 10:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Tue, Jul 14, 2020 at 10:21 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >
> > > > On Tue, Jul 14, 2020 at 10:08:04PM +0200, Sedat Dilek wrote:
> > > > > > >
> > > > > > > In any case, I think the right fix here would be to add -pie and
> > > > > > > --no-dynamic-linker to LDFLAGS_vmlinux instead of KBUILD_LDFLAGS.
> > > > > >
> > > > > > Hmm, you might be right with moving to LDFLAGS_vmlinux.
> > > > > >
> > > > >
> > > > > We will need the "ifndef CONFIG_LD_IS_LLD" as -r and -pie cannot be
> > > > > used together.
> > > > > Is that the or not the fact when moving to LDFLAGS_vmlinux?
> > > >
> > > > LDFLAGS_vmlinux will only be used to link boot/compressed/vmlinux,
> > > > whereas KBUILD_LDFLAGS is used for all linker invocations, and in
> > > > particular the little link to do the modversions stuff ends up using it.
> > > >
> > > > So once we move -pie --no-dynamic-linker to the more correct
> > > > LDFLAGS_vmlinux and/or stop modversions running, we'll be fine. Being
> > > > able to use -pie with lld is one of the goals of this series.
> > > >
> > >
> > > OK, I am doing a new full kernel build with:
> > >
> > > $ git diff arch/x86/boot/compressed/Makefile
> > > diff --git a/arch/x86/boot/compressed/Makefile
> > > b/arch/x86/boot/compressed/Makefile
> > > index 789d5d14d8b0..056a738e47c6 100644
> > > --- a/arch/x86/boot/compressed/Makefile
> > > +++ b/arch/x86/boot/compressed/Makefile
> > > @@ -51,7 +51,7 @@ UBSAN_SANITIZE :=n
> > >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> > >  # Compressed kernel should be built as PIE since it may be loaded at any
> > >  # address by the bootloader.
> > > -KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> > > +LDFLAGS_vmlinux += -pie $(call ld-option, --no-dynamic-linker)
> > >  LDFLAGS_vmlinux := -T
> > >
> > >  hostprogs      := mkpiggy
> > >
> > > - Sedat -
> >
> > Not my day - today.
> >
> > $ git diff arch/x86/boot/compressed/Makefile
> > diff --git a/arch/x86/boot/compressed/Makefile
> > b/arch/x86/boot/compressed/Makefile
> > index 789d5d14d8b0..9784ed37a5d7 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -51,8 +51,8 @@ UBSAN_SANITIZE :=n
> >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> >  # Compressed kernel should be built as PIE since it may be loaded at any
> >  # address by the bootloader.
> > -KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> >  LDFLAGS_vmlinux := -T
> > +LDFLAGS_vmlinux += -pie $(call ld-option, --no-dynamic-linker)
> >
> >  hostprogs      := mkpiggy
> >  HOST_EXTRACFLAGS += -I$(srctree)/tools/include
> >
> > - Sedat -
>
> Nope -- -T needs to be last, since it's (trickily) put together with the
> first prerequisite $(obj)/vmlinux.lds.

Good I read this.

Checked the previous build-log:

  ld.lld-11 -m elf_x86_64  -T arch/x86/boot/compressed/vmlinux.lds
arch/x86/boot/compressed/kernel_info.o
arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o
arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o
arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o
arch/x86/boot/compressed/cpuflags.o
arch/x86/boot/compressed/early_serial_console.o
arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o
arch/x86/boot/compressed/mem_encrypt.o
arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o
drivers/firmware/efi/libstub/lib.a
arch/x86/boot/compressed/efi_thunk_64.o -o
arch/x86/boot/compressed/vmlinux

So there is no -r option in this line.

If we move to LDFLAGS_vmlinux we can drop the "call ld-option" as both
linker GNU/ld.bfd and LLVM/lld.ld support this?

Do we need to adjust the comments?
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader

That's the minimal change needed:

$ git diff arch/x86/boot/compressed/Makefile
diff --git a/arch/x86/boot/compressed/Makefile
b/arch/x86/boot/compressed/Makefile
index 789d5d14d8b0..d0aafcd8cf6c 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -51,8 +51,8 @@ UBSAN_SANITIZE :=n
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
-KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
-LDFLAGS_vmlinux := -T
+LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
+LDFLAGS_vmlinux += -T

 hostprogs      := mkpiggy
 HOST_EXTRACFLAGS += -I$(srctree)/tools/include

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX93x_vhG-j%2BH%2BktC_vt1d0f-KWZ%2B0L%2Bhf1dnr%3D0L9h7g%40mail.gmail.com.
