Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBC46ZCAAMGQE2OSR7SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B213069BD
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 02:10:38 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id 8sf2718646pgn.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 17:10:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611796236; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ya7ClbfFVu2rtD2Ns7XEWtc+PpU+v1qhDiih+O5GyP6k54J76BBDbveKKbvhFq8b/I
         g0o4ifzV/jvKZAaZl4b1O51fAPwqaExyQPlhhn5VUdiCGLvukFGbqS+b6fVmp3te4oor
         ArlCsygYgJZjKBO5ZPiU0HYb/JHLVE0omeIU+WX2fJmkwMNtuMCNXflfuT04pIhrtVNo
         SHzzc8j5BOkhdumZUIrK/oIsqP7S9IuABGFqyECXA44CY7sGs72JBYZviRDjaLym5JPQ
         bDIbhQd+SwlHcp5oT3tud9QkJ4TROMm91I3BLIfZqbgAD1xVeHAbSatLc/RNEtpFNaVQ
         FyJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ptYU5k4/mUvxXaPJiqFmcN/nZY9GgxJgHN0Xu6AfKdE=;
        b=otEn1PyZoD0f2fXtyOH0dmj6+tMiIz6kcQfQUWQb29v27q7YOg1v8uzmCHoXM12Xe2
         pr06GvC5w1u7Ow2UWHu/ZR6jG7zcE9b69kUUX7uu33JgJHVk3Z/3wP1wAzoXkueIvwi8
         ZP8tDbK3WxkAlaravCVhYZ4nkBN+9O/nDcAds0PlnEqskbzHf035rU+TcnRmAsGxLheJ
         SLAp5pylT6HGxX2Cif++vvBXKsSnKaR+7oOuo0aUea06Dzq16rFswWmIC+A66JKuWeq6
         h1Jk0h+ruUpiDD/XW/Di1VntsX4/dXr+5L3ADAreJHoEzzIaM9NPyeYI6IzM2chm1q7J
         JFTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pI/cGUyN";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ptYU5k4/mUvxXaPJiqFmcN/nZY9GgxJgHN0Xu6AfKdE=;
        b=YMC+MapqXCorf9CCOguCaOOnuEOqll6VwtuZMz5N8dBCz1XlEG6fXo07c9CttJyV2s
         xd5nFKor/vHfZh+rmdMC4bwoaxQGIrTcBlefUlCR0Dq3DUzwc6jYlj6LssSTq+qpe90o
         9VaOsWwYdvN9m9xrJkyuydZqfwCtxLCTi2haEaJC5TkYgqNcQKW+YK6uXPdsGINUlduU
         7+8mDpYs1dzLY2ZztJk94oKsN9TnxIQg5vX2nNl4IjG+NlwafPYo7eYgzDizEwEeU9Dy
         2neIiRAFmQ2MeNRUMVzYkKsMri8517z/kIWmpCTgPvtCf2+yozGE77MCc8X6Y9NDaijB
         cyAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ptYU5k4/mUvxXaPJiqFmcN/nZY9GgxJgHN0Xu6AfKdE=;
        b=GjqsUPlcBwEoqY7c91PAiKJzQX93N9JPL3QWnQUrMa/ReLHtA+QVgejCj29FtRwZgK
         1CfN2Vn4fld6fBLrEZRcKQVyvI2CuMwlYOsKNol2n5NTD/tkNP949EfiGp6JiY06at63
         tYpLjxal7P0Xop7c/1BWRO93CxsEQY9bQ+oJNnz0b2Wg40b0NXhhRYYtGDG3b/UsTXDE
         T0y/yy6rEejM02g8zHopDDSXFqyvKxmXm6/7h+nJxNT7wA8BhI4Bi0ZzqFe/Le6+R3h/
         zHcZb+Y+4TGHCl1sXQf/DBhjBjQDCjxQ2vZVEat1tw+TFm10fdePEFESJFevCgL8s3mg
         VKeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ptYU5k4/mUvxXaPJiqFmcN/nZY9GgxJgHN0Xu6AfKdE=;
        b=av+dPV/KjCyWSoQJNpA/PLQs8woJnvhhqawMdvGWaee/5ZuB8/J14m1jIsAj1RDaor
         twotqjQlO1BpdwlMnA979VPHkxfCKHjW5khnG+nVtr9/JHzoFTlSuDmntxxaFjafoACg
         mD4isvRJGcSuWPmoAdqqglTcDUz5cdUb+pvUXp5YlXvmBDDj7OWHGNJAdczkxC37w/z1
         P3fn+n6o9999eqIlTuzg5jB1/fchS3lBoEej0otdKQp4geMDwFCKSdL7/iHEEcm9j5A3
         9JjcfZykZZ7jDXeYTBd74LNX+QzEP0aGLuHCSldGKEQvEDaWTpUgin54YfK40GRarGWE
         tYCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yHexnZt8bJLX/0Fw7vuIGJ7qadky+tXBJ7iQMTjIFaSWTt4PR
	wJwZh/Zkgud21D4Wu/dbeWo=
X-Google-Smtp-Source: ABdhPJyVD1p93LB3KmM9grJ9EFf3OqPwpju7HaYL4n6pp89ol9yzJoDZDeXmVyNzXbMEoydP4j/q2A==
X-Received: by 2002:aa7:8d8d:0:b029:1bd:f965:66da with SMTP id i13-20020aa78d8d0000b02901bdf96566damr13386395pfr.9.1611796235911;
        Wed, 27 Jan 2021 17:10:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls1813923plq.7.gmail; Wed, 27
 Jan 2021 17:10:35 -0800 (PST)
X-Received: by 2002:a17:90a:f302:: with SMTP id ca2mr8520919pjb.233.1611796235188;
        Wed, 27 Jan 2021 17:10:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611796235; cv=none;
        d=google.com; s=arc-20160816;
        b=EepQRjcKAsAcuQOgcAfrdjUQM+YWR3KMGzYTFINQ75jmWUPcA9LEhx3jq/8IdccxBu
         JmeanrXqwLo9gz9+dn7xeJHv7pHAfMc021Eu6kFnq38oyqvJc14soPWUeAtfiOaocnJX
         MWAC53XNE357mLzsDsu2KrVN6+gmYwpRngTildLptVEfcrt13cDtzbrX8TzAse6k7cbD
         UYc3wRUlkXWXd1XOAQVKJWCMcIiwAnLZD+hU+7ZzvkgPjeWRRWGzHpdiGn5H/LUTdRS+
         nca1g5OF287lxa6y+/88sFxSfr/i10DsXhZoa/F0njYjkI40voBdr3vjRx9LswG/JglI
         tZrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v+u1DiVrW3O+pldsYbx0PikwzegMHzk/tjgfkZuCvGg=;
        b=0rAkc6VXfoaezd50G75Im4VSKZAS5C6kwT03wXv8SvRUK5gG9ubVD8PODOHy0ga9Lj
         dXMkMhX5t5IwttfazlTzklwh21Xe+USMYqKnm7JUEPjP2EeN9Sy2iyvVEscnhMybzI4c
         zhmpmF3TtIUcbMgfOKPabXmDFx9QabqMF2tB99JJHspKjvoiz/PIjIco/he2EV+yx1ju
         5erPcNeGZe2+veP4ipARauabahbMef6uhbPVp6jFDQ/fbEa9be0DXwKKg5/d7r9P94ZR
         CBdp3iS1ryn+2d82SH4I/a0Q4SawvHkChxAh91Hv9aMx2w5R/yVmBzATgF8u/xW7qI7Y
         /hmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pI/cGUyN";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com. [2607:f8b0:4864:20::134])
        by gmr-mx.google.com with ESMTPS id f11si164696plo.4.2021.01.27.17.10.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 17:10:35 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::134 as permitted sender) client-ip=2607:f8b0:4864:20::134;
Received: by mail-il1-x134.google.com with SMTP id p8so3729510ilg.3
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 17:10:35 -0800 (PST)
X-Received: by 2002:a05:6e02:e94:: with SMTP id t20mr11016518ilj.10.1611796234823;
 Wed, 27 Jan 2021 17:10:34 -0800 (PST)
MIME-Version: 1.0
References: <20210125172956.j2prlchhqwfcgzuc@google.com> <20210127205600.1227437-1-maskray@google.com>
In-Reply-To: <20210127205600.1227437-1-maskray@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 28 Jan 2021 02:10:23 +0100
Message-ID: <CA+icZUVUfgyZm3Sz1scNYnXaz3C22W0BnQx1z79G=M-23eUmJQ@mail.gmail.com>
Subject: Re: [PATCH v4] x86: Treat R_386_PLT32 as R_386_PC32
To: Fangrui Song <maskray@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="pI/cGUyN";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::134
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

On Wed, Jan 27, 2021 at 9:56 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
> R_X86_64_PC32"), but for i386.  As far as Linux kernel is concerned,
> R_386_PLT32 can be treated the same as R_386_PC32.
>
> R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types which can
> only be used by branches. If the referenced symbol is defined
> externally, a PLT will be used.
> R_386_PC32/R_X86_64_PC32 are PC-relative relocation types which can be
> used by address taking operations and branches. If the referenced symbol
> is defined externally, a copy relocation/canonical PLT entry will be
> created in the executable.
>
> On x86-64, there is no PIC vs non-PIC PLT distinction and an
> R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
> `call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.
> This avoids canonical PLT entries (st_shndx=0, st_value!=0).
>
> On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
> GCC/GNU as convention is to use R_386_PC32 for non-PIC PLT and
> R_386_PLT32 for PIC PLT. Copy relocations/canonical PLT entries are
> possible ABI issues but GCC/GNU as will likely keep the status quo
> because (1) the ABI is legacy (2) the change will drop a GNU ld
> diagnostic for non-default visibility ifunc in shared objects.
> https://sourceware.org/bugzilla/show_bug.cgi?id=27169
>
> clang-12 -fno-pic (since
> https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
> can emit R_386_PLT32 for compiler generated function declarations,
> because preventing canonical PLT entries is weighed over the rare ifunc
> diagnostic.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1210
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # v3

- Sedat -

> ---
> Change in v2:
> * Improve commit message
> ---
> Change in v3:
> * Change the GCC link to the more relevant GNU as link.
> * Fix the relevant llvm-project commit.
> ---
> Change in v4:
> * Improve comments and commit message
> ---
>  arch/x86/kernel/module.c |  1 +
>  arch/x86/tools/relocs.c  | 12 ++++++++----
>  2 files changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
> index 34b153cbd4ac..5e9a34b5bd74 100644
> --- a/arch/x86/kernel/module.c
> +++ b/arch/x86/kernel/module.c
> @@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
>                         *location += sym->st_value;
>                         break;
>                 case R_386_PC32:
> +               case R_386_PLT32:
>                         /* Add the value, subtract its position */
>                         *location += sym->st_value - (uint32_t)location;
>                         break;
> diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
> index ce7188cbdae5..1c3a1962cade 100644
> --- a/arch/x86/tools/relocs.c
> +++ b/arch/x86/tools/relocs.c
> @@ -867,9 +867,11 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>         case R_386_PC32:
>         case R_386_PC16:
>         case R_386_PC8:
> +       case R_386_PLT32:
>                 /*
> -                * NONE can be ignored and PC relative relocations don't
> -                * need to be adjusted.
> +                * NONE can be ignored and PC relative relocations don't need
> +                * to be adjusted. Because sym must be defined, R_386_PLT32 can
> +                * be treated the same way as R_386_PC32.
>                  */
>                 break;
>
> @@ -910,9 +912,11 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>         case R_386_PC32:
>         case R_386_PC16:
>         case R_386_PC8:
> +       case R_386_PLT32:
>                 /*
> -                * NONE can be ignored and PC relative relocations don't
> -                * need to be adjusted.
> +                * NONE can be ignored and PC relative relocations don't need
> +                * to be adjusted. Because sym must be defined, R_386_PLT32 can
> +                * be treated the same way as R_386_PC32.
>                  */
>                 break;
>
> --
> 2.30.0.280.ga3ce27912f-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210127205600.1227437-1-maskray%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVUfgyZm3Sz1scNYnXaz3C22W0BnQx1z79G%3DM-23eUmJQ%40mail.gmail.com.
