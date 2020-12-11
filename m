Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKV2Z77AKGQEKR3DZPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5C92D803C
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 21:57:15 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id v8sf2618648vso.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 12:57:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607720234; cv=pass;
        d=google.com; s=arc-20160816;
        b=xG14AQr2uHML80I7twKA2dVR1EyTdNE7Wm788wmJ3Hl0rbj4o37g4vQkiCk9ovir1q
         Gop1rD6wXz8VrhrVgBtSVn/o3n/gGAfSGELSjTQRHvFWxn05o+vjOpCdXVwFdh2RQ0uM
         H0weZSaS+31NO2O8AKaAbjTHIm9WP8QjB4yZW1p6rnzZHfwxclJkbfXpYhqP8lH0ua9+
         HVPYh9nZa4OOMUeFicA2jb5jXYj26zKqvs9QVVeeRmj46Wxr1KBiN7akhScNy0lH8WfC
         YFTFZbXyDScgP2kRmRDZYo7E1Orb1/hmk7gGarQLtrMcv/ZQBHjbvja1bqkhfmaIkF59
         K8GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YPpTzojN1pVjuHnUbO2GR3JmyZztdL3rHSYLQImc8nQ=;
        b=qifmWabErZi3kpNYNLFysagIknrcSemTsJIo172C/VhHLXjHgAFJ4luecXsj+0Y+bv
         NZjyp3mYLT4Fr+G4L/76jKPUK5n1MOwbcM4+8jGkJdo4rvrRRPiD6lahOHpt7rOphJnr
         Wiu/aZ23otmZhTI2AdJx51zn2Y8wsHie7+zeCmn0r2AoN8o/iHxeh9kI/iH/TDw1CGQd
         QEqq0an4WdB1AzSM7JtN/n3oieuD6nFVtPpDXoj07TbY4s5vljRCCYnayuJNQim+RRi5
         JWwEyhzLh9KlNLgPSr5xDWyMLJbSQwg9QAplfWZQSQxGs8H+h9yamVdOH4Yjo6Fj7nO5
         cbFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fqi9Rxvv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YPpTzojN1pVjuHnUbO2GR3JmyZztdL3rHSYLQImc8nQ=;
        b=S9gSZ4THNu9mxTceXiCl6ThbwGEBdA5Uh4PEPY4KRsCI6a5IxYWeu5F3jdzwSaQoFS
         laMHJ5wwh/5wVImYOiYdq5tzZRZpZ6Zkcn2SmRWSPOrJJv/p29rCMz/tXpfigRHloPzT
         pw58CMqBbdVziw9fXnLiZiTKF5zIMwp6wjmDMTPYRAASEAnfub/xa37ObngN3kLA8lN8
         qFXKRwOSNQg60Fh5oO4DRxvcpP9L+rJPdDWNMnkDROxSKKa57rzRjCiodGwBBlx5QpaM
         UYvchtWrqVXoVDzHbQYucxhi1XNKv+HspCUCwX1bK8tvL0ZrwB17jomruz/5OaBXoRPf
         4CjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YPpTzojN1pVjuHnUbO2GR3JmyZztdL3rHSYLQImc8nQ=;
        b=PxosMdT/l7z+U+B71jqkkgpaysodPPvZySDwOOp5vbjwuGd5W1iH3IrhfRjmGY95//
         ftdcRuR4OVAAEFjv7oyTPoUu04HhlUMvP+1o4d7HbaTGizzXyYM2vQ2h1w1b9/0ANDXh
         Cgl/WkttJwFph8o1Zh1AxmgzpEyMt22ExXeo0JpeVfVLVuOWpDdavwbIK4L7dzyj87RK
         y99LzwjROBryDGN2WVemJbJIGeXIaRHw7c09EnjiLzxVieX7rxIhzbx8osDYDQAK8F/+
         fMOSjfwgWSC61yhS0ZQZ/9bb8XIeUxQ3Nx7kKgmq5Nr/lK8a0V9vbVo6P/OW0SFPgpS7
         X3ZA==
X-Gm-Message-State: AOAM533IQWf7WHztRHXPP79IbQbFhYXeYBqr6A6grl/sAumA5+g9eJBx
	nZogdnA5Z2djY7jORdXhD3o=
X-Google-Smtp-Source: ABdhPJxxJpYDDUjfVvMY67n04zJXd/Gtvf+hmmyNmeoruUwp6PNvS/i3uBeLePSF3d6cCOGZ2L7ZxQ==
X-Received: by 2002:a1f:36d4:: with SMTP id d203mr15969061vka.22.1607720234249;
        Fri, 11 Dec 2020 12:57:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3f4e:: with SMTP id i14ls767547uaj.2.gmail; Fri, 11 Dec
 2020 12:57:13 -0800 (PST)
X-Received: by 2002:a9f:2c42:: with SMTP id s2mr14338037uaj.94.1607720233829;
        Fri, 11 Dec 2020 12:57:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607720233; cv=none;
        d=google.com; s=arc-20160816;
        b=x8GwDtJizSGNdqKHqv6jpOWhQD67VsO2Higb3tYte6kDsF7BkvS1eAZGARrJu2IxqJ
         tdETgSa+jBzgXF0nnA42qEvhnlA3BYgLAJ3GS01Ui51Jd16R3BgPtZZExAhVuCTzyGcn
         hz7eknOLROb9F+o85C56cvmYzvbDn6Ka/rNQl9GzLD9N3ZdkHMiyr2xB+OPRhxuQ+NKP
         bMReU/EhK5fk7R82t+cJvcldh+Bh8Wk1jf92iLTGH9vQs6C9j9RoYKiBzRqBxc7JAqva
         7mgYQ/FICelSW4aB7QKrynBGgmOX4OcM7qDd5/TyLAbtEUuynrR0NSi3r4sSAzdfto56
         Zknw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k3vq2jru/siTbZdWkGfGAc+yfoC9FslKe6Q/L8tWLHg=;
        b=Qqz9wOrt2vNyLD0/TGoj6cMBSSI/TdFet3UI0rwzx5xP6CUNlHyH0vXPJPiISlRsQx
         PWbXkyg5QoS0Sov0Ha1s8p0+E0nSV9Wo2M0ZrK37LLLJihLHzHLBy7lUDtFWqdrJVJOr
         mNnX75C0xAXhLExFdl9nNKTK00APxsi0JblaPs3H5OeyicHor8ZKtfobRe+IGIvXL4pE
         zCo4LmMT0pHdYHA/wKUBgggIauYpzSHIk91ZZHGgzFrdqa3roeXqJmh6UAZSALpX5dy1
         kJnHZA4JaCSmV9v6JK0SGKdZDJU5q+C3v2e1L2QMOwNGv7NTDd3qbJAkVEe/a7iBGf2Q
         UUww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fqi9Rxvv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id r207si610289vkf.2.2020.12.11.12.57.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 12:57:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id h7so2317025pjk.1
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 12:57:13 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr12754106plc.10.1607720232471; Fri, 11
 Dec 2020 12:57:12 -0800 (PST)
MIME-Version: 1.0
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
 <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
 <20201211093205.GU2414@hirez.programming.kicks-ass.net> <20201211163748.b37gashl6an6misu@treble>
 <20201211164915.GA2414@hirez.programming.kicks-ass.net> <20201211174610.2bfprpvrrlg66awd@treble>
In-Reply-To: <20201211174610.2bfprpvrrlg66awd@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 11 Dec 2020 12:57:00 -0800
Message-ID: <CAKwvOdkWU3qQ_m3v1xn1Mm6+obC202NWEaF8g_gz3oqeeLkMQA@mail.gmail.com>
Subject: Re: objtool crashes with some clang produced .o files
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Arnd Bergmann <arnd@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Fqi9Rxvv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Dec 11, 2020 at 9:46 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Dec 11, 2020 at 05:49:15PM +0100, Peter Zijlstra wrote:
> > Do we want to capture all that gunk in something like
> > elf_reloc_to_insn(reloc, insn) instead of duplicating the magic?
>
> Yup, here's an actual patch
>
> From: Josh Poimboeuf <jpoimboe@redhat.com>
> Subject: [PATCH] objtool: Support Clang non-section symbols in static call generation
>
> The Clang assembler likes to strip section symbols, which means you
> can't reference some text code by its section.  This confuses objtool
> greatly, causing it to seg fault.
>
> The fix is similar to what was done before, for ORC reloc generation:
>
>   e81e07244325 ("objtool: Support Clang non-section symbols in ORC generation")
>
> Factor out that code into a common helper and use it for static call
> reloc generation as well.
>
> Reported-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>

Thanks for the patch!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1207

> ---
>  tools/objtool/check.c   | 11 +++++++++--
>  tools/objtool/elf.c     | 26 ++++++++++++++++++++++++++
>  tools/objtool/elf.h     |  2 ++
>  tools/objtool/orc_gen.c | 29 +++++------------------------
>  4 files changed, 42 insertions(+), 26 deletions(-)
>
> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index c6ab44543c92..5f8d3eed78a1 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -467,13 +467,20 @@ static int create_static_call_sections(struct objtool_file *file)
>
>                 /* populate reloc for 'addr' */
>                 reloc = malloc(sizeof(*reloc));
> +
>                 if (!reloc) {
>                         perror("malloc");
>                         return -1;
>                 }
>                 memset(reloc, 0, sizeof(*reloc));
> -               reloc->sym = insn->sec->sym;
> -               reloc->addend = insn->offset;
> +
> +               insn_to_reloc_sym_addend(insn->sec, insn->offset, reloc);
> +               if (!reloc->sym) {
> +                       WARN_FUNC("static call tramp: missing containing symbol",
> +                                 insn->sec, insn->offset);
> +                       return -1;
> +               }
> +
>                 reloc->type = R_X86_64_PC32;
>                 reloc->offset = idx * sizeof(struct static_call_site);
>                 reloc->sec = reloc_sec;
> diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
> index 4e1d7460574b..be89c741ba9a 100644
> --- a/tools/objtool/elf.c
> +++ b/tools/objtool/elf.c
> @@ -262,6 +262,32 @@ struct reloc *find_reloc_by_dest(const struct elf *elf, struct section *sec, uns
>         return find_reloc_by_dest_range(elf, sec, offset, 1);
>  }
>
> +void insn_to_reloc_sym_addend(struct section *sec, unsigned long offset,
> +                             struct reloc *reloc)
> +{
> +       if (sec->sym) {
> +               reloc->sym = sec->sym;
> +               reloc->addend = offset;
> +               return;
> +       }
> +
> +       /*
> +        * The Clang assembler strips section symbols, so we have to reference
> +        * the function symbol instead:
> +        */
> +       reloc->sym = find_symbol_containing(sec, offset);
> +       if (!reloc->sym) {
> +               /*
> +                * Hack alert.  This happens when we need to reference the NOP
> +                * pad insn immediately after the function.
> +                */
> +               reloc->sym = find_symbol_containing(sec, offset - 1);
> +       }
> +
> +       if (reloc->sym)
> +               reloc->addend = offset - reloc->sym->offset;
> +}
> +
>  static int read_sections(struct elf *elf)
>  {
>         Elf_Scn *s = NULL;
> diff --git a/tools/objtool/elf.h b/tools/objtool/elf.h
> index 807f8c670097..e6890cc70a25 100644
> --- a/tools/objtool/elf.h
> +++ b/tools/objtool/elf.h
> @@ -140,6 +140,8 @@ struct reloc *find_reloc_by_dest(const struct elf *elf, struct section *sec, uns
>  struct reloc *find_reloc_by_dest_range(const struct elf *elf, struct section *sec,
>                                      unsigned long offset, unsigned int len);
>  struct symbol *find_func_containing(struct section *sec, unsigned long offset);
> +void insn_to_reloc_sym_addend(struct section *sec, unsigned long offset,
> +                             struct reloc *reloc);
>  int elf_rebuild_reloc_section(struct elf *elf, struct section *sec);
>
>  #define for_each_sec(file, sec)                                                \
> diff --git a/tools/objtool/orc_gen.c b/tools/objtool/orc_gen.c
> index 235663b96adc..9ce68b385a1b 100644
> --- a/tools/objtool/orc_gen.c
> +++ b/tools/objtool/orc_gen.c
> @@ -105,30 +105,11 @@ static int create_orc_entry(struct elf *elf, struct section *u_sec, struct secti
>         }
>         memset(reloc, 0, sizeof(*reloc));
>
> -       if (insn_sec->sym) {
> -               reloc->sym = insn_sec->sym;
> -               reloc->addend = insn_off;
> -       } else {
> -               /*
> -                * The Clang assembler doesn't produce section symbols, so we
> -                * have to reference the function symbol instead:
> -                */
> -               reloc->sym = find_symbol_containing(insn_sec, insn_off);
> -               if (!reloc->sym) {
> -                       /*
> -                        * Hack alert.  This happens when we need to reference
> -                        * the NOP pad insn immediately after the function.
> -                        */
> -                       reloc->sym = find_symbol_containing(insn_sec,
> -                                                          insn_off - 1);
> -               }
> -               if (!reloc->sym) {
> -                       WARN("missing symbol for insn at offset 0x%lx\n",
> -                            insn_off);
> -                       return -1;
> -               }
> -
> -               reloc->addend = insn_off - reloc->sym->offset;
> +       insn_to_reloc_sym_addend(insn_sec, insn_off, reloc);
> +       if (!reloc->sym) {
> +               WARN("missing symbol for insn at offset 0x%lx",
> +                    insn_off);
> +               return -1;
>         }
>
>         reloc->type = R_X86_64_PC32;
> --
> 2.25.4
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211174610.2bfprpvrrlg66awd%40treble.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkWU3qQ_m3v1xn1Mm6%2BobC202NWEaF8g_gz3oqeeLkMQA%40mail.gmail.com.
