Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMHQQOFAMGQE6X2VBVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id ED50A40B7FC
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:29:52 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id p3-20020a0565121383b0290384997a48fcsf94087lfa.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:29:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631647792; cv=pass;
        d=google.com; s=arc-20160816;
        b=jj+PescrQT4r4/a4kWwhJwqkvfUTPKn/sAiVc80buqocmGHjO/zYIjz5bBtRA61skD
         uYpo1UZyUJ6ne9ciT3gIC9OeBd57e0k1kwwvZYuz13qaG7kO2dsi4Urq7TyGt5TRZcBM
         e0p04JANDonob9sikdZJjiRW2z0sKO/YDFKfCe5JL9XKzJ4PTKfijIq6FT05cFdDfIhC
         vg/AZdbcwm8bkwrgscFiVHtRQsvgwdfwcurMgc/Du0QvZASpCe7HLiHJBGNQQrxPFpQg
         Gm/mJ+tiJSR8+OzXwAu/vindN4+nbbdKbbDdAWOLC7wetSbDxTP6kJbd1w14zYBL0kCf
         nUvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IGJht8jmYJ52WuMEkjsMgi3qqBPa2j+JyBtZE++OHsQ=;
        b=IegDrBf5nVmQbyNzlRSdTuf4rBBC9PAB117BZpM0BYmEzGh+xxMMBR0buvtj/bJSVj
         OudRaKBdP2i8kku3oPiQmsAN756dQd25CxCvTbFKhcK2knq8g4zBUbismuM/0kF9ezX3
         uoPddU5r3c62n6UZbdbNbDGwfRZPXbIgnhURaxMNyrG3B7etvwxhx1QI+Mt74sBET19z
         Hb2ImK5maWBqcF/i5YMGL5wLMEssQoH9UQhfAu51pmtS7e5Y/bEaTxzihyGnn/VlsqDA
         zWk0OSfr3UrjoqwzUNcSbBqRx820kFd0IkvzZBpPyEjzVzuvixiJOLOcoASh575c1ObY
         R7dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=gzzlYXXn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IGJht8jmYJ52WuMEkjsMgi3qqBPa2j+JyBtZE++OHsQ=;
        b=tXfOtx0wA3Gb06covANl806Ph76FdHiahmbzrBOr3fPu1CTFSAFQ/4R6JOrnK75VJC
         z3c529UhW0UYnwNovynILu1kLhF+vwRkFgilWvcrpGHUz5vuvvtj0cMKfT1GvG1txnUQ
         adSDTSCI6Dv8/nBcE5wZHTjV2+4sNUlpuFNxu49UAHnZiSYdzTRy/+rbIsA/akD+HdCM
         Bt7OjNKmQEy272rMOVQX8u7bVT9BTP5Lb3MpWHVhLn93rcJsTo3v5XWd9G5BTMC1PXgm
         Qq901NjMwBDyCg2FX7JJkTH/CZfwDPqsl+3Aqop/HnxgwYzBX/mbaK91RAlHQDHaTexy
         tung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IGJht8jmYJ52WuMEkjsMgi3qqBPa2j+JyBtZE++OHsQ=;
        b=xk6i2zIwuyAi60NxQFuhxhGnOPvEjGrOK3QJ9FHVGDseNBxFcj4OpTjR8rbrhep5rQ
         Dps0VpIF+Tt0HH8Bdu4nFlhTu/QFdql2eHC2+Z8CZW8SgxSiX7C/W+olINudxV9TlaEf
         KILn0oYsQyPt6DklEE09xxVJruVBfEMNmYZkItbMVmUkDKVUeC6ivTMXJSQbBR4BgO1O
         bhvsQxRR22nTB4BR7jYZWKMzy3QJdsNfSgSvMJC3d4emAqAE0hgggnCnfYGUTCsR5PAo
         aNH0HSuhLW1/vVsfxCqjGlDa0Gchnsast7cv4jC86Y7VtlCu2Rjfg+5wvAHdVy4q+ANv
         b5wQ==
X-Gm-Message-State: AOAM532lsfwvAYcyNiTdZbF/eG8RQcmu7DXSfIf50CIMLNog2mJKwiLw
	Sdg8M5VBWYQPAUuoWWK46/A=
X-Google-Smtp-Source: ABdhPJz/NFTF78MydKNHeEEKaPMTtzNhl2NFAk12vEDhl7dcUNzA6/bVSvh4xbviQXKKTSNMdzHYog==
X-Received: by 2002:a2e:7503:: with SMTP id q3mr16723288ljc.48.1631647792463;
        Tue, 14 Sep 2021 12:29:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b88:: with SMTP id g8ls14210lfv.1.gmail; Tue, 14
 Sep 2021 12:29:51 -0700 (PDT)
X-Received: by 2002:ac2:54b1:: with SMTP id w17mr14570346lfk.466.1631647791391;
        Tue, 14 Sep 2021 12:29:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631647791; cv=none;
        d=google.com; s=arc-20160816;
        b=d/zeIKDda82ccuUywbOglFLzbpK9T+P11h2quOmQ6erPRv6KcLRSO6XqTSH2ir4MnD
         dMYZQgm7Fgrsgfaz6AtYdxIGTF3rUa0E5R6zQKhTEbqRfOd7I1hSY8mVgqY+dki7apRt
         fu7cOp6/HW5jX+WP5IoVDYqRzNsE5HWhJ005CxyL5U7IpM98WqyVLN59b9pdeebtDb4X
         MM/6BgiI6eoaAH1V9NpF1Onf6ahTeU4illFeJZauLiHc3gqgbRboJyyFHWUCvnT/FPAI
         irUou5gap92BNh19mdJIOpL3QngpCkmbUKv3VcWWVAca3DcJ5StpD1jkzGUOPeEi4Z2V
         yCzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d29wXxwYw2ENSPs6TRPPGxX2mpwXTs89xVA0k6Truos=;
        b=IYHJ73v6mc2C6ShvI4/DEe6dtgoQrUkVg+g+CJ8bUNWHgmS3l6whsGLT06+AV2p0Dm
         IdB//fqeYdY4h8e8Sgxe0A4984BfYJJ+boUxlG7tdtJTqCADjBt7WSLDhHp1qkFENOOT
         1bB2N7WnD3q55Z45bMS6GcWuKr5lzcOrFKdfB8lY9eC0IqeB/eSSjhUsbU+CXlnbbBd3
         HMaWtUJnzxonT+rER+1eQW+/1V3g82c2LikWxtohG3zZ/69JFe0xhqWGe1UL0pbZUtsP
         gd1s2fdwe79kUAvF7K7N/91tPH/C3dZ5LyNyp6lq9H5tSoAZD1PpQ1C+M0qdCx6l+WaY
         5Opw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=gzzlYXXn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id f16si1121032ljj.3.2021.09.14.12.29.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:29:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id g1so645164lfj.12
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:29:51 -0700 (PDT)
X-Received: by 2002:a05:6512:3b9e:: with SMTP id g30mr14030392lfv.651.1631647790861;
 Tue, 14 Sep 2021 12:29:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com> <20210914191045.2234020-2-samitolvanen@google.com>
In-Reply-To: <20210914191045.2234020-2-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 12:29:38 -0700
Message-ID: <CAKwvOd=pmcfJRkgBFnqePauMd67+eQ9=JAbSjxrWmBQY9zRveQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/16] objtool: Add CONFIG_CFI_CLANG support
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=gzzlYXXn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Tue, Sep 14, 2021 at 12:10 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> With CONFIG_CFI_CLANG, the compiler replaces function references with
> references to the CFI jump table, which confuses objtool. This change,
> based on Josh's initial patch [1], goes through the list of relocations
> and replaces jump table symbols with the actual function symbols.
>
> [1] https://lore.kernel.org/r/d743f4b36e120c06506567a9f87a062ae03da47f.1611263462.git.jpoimboe@redhat.com/
>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  tools/objtool/arch/x86/decode.c      | 16 +++++++++
>  tools/objtool/elf.c                  | 51 ++++++++++++++++++++++++++++
>  tools/objtool/include/objtool/arch.h |  3 ++
>  tools/objtool/include/objtool/elf.h  |  2 +-
>  4 files changed, 71 insertions(+), 1 deletion(-)
>
> diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/decode.c
> index bc821056aba9..318189c8065e 100644
> --- a/tools/objtool/arch/x86/decode.c
> +++ b/tools/objtool/arch/x86/decode.c
> @@ -62,6 +62,22 @@ bool arch_callee_saved_reg(unsigned char reg)
>         }
>  }
>
> +unsigned long arch_cfi_section_reloc_offset(struct reloc *reloc)
> +{
> +       if (!reloc->addend)
> +               return 0;
> +
> +       if (reloc->type == R_X86_64_PC32 || reloc->type == R_X86_64_PLT32)
> +               return reloc->addend + 4;
> +
> +       return reloc->addend;
> +}
> +
> +unsigned long arch_cfi_jump_reloc_offset(unsigned long offset)
> +{
> +       return offset + 1;
> +}
> +
>  unsigned long arch_dest_reloc_offset(int addend)
>  {
>         return addend + 4;
> diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
> index 8676c7598728..05a5f51aad2c 100644
> --- a/tools/objtool/elf.c
> +++ b/tools/objtool/elf.c
> @@ -18,6 +18,7 @@
>  #include <errno.h>
>  #include <objtool/builtin.h>
>
> +#include <objtool/arch.h>
>  #include <objtool/elf.h>
>  #include <objtool/warn.h>
>
> @@ -291,6 +292,10 @@ static int read_sections(struct elf *elf)
>                 if (sec->sh.sh_flags & SHF_EXECINSTR)
>                         elf->text_size += sec->len;
>
> +               /* Detect -fsanitize=cfi jump table sections */
> +               if (!strncmp(sec->name, ".text..L.cfi.jumptable", 22))
> +                       sec->cfi_jt = true;
> +
>                 list_add_tail(&sec->list, &elf->sections);
>                 elf_hash_add(section, &sec->hash, sec->idx);
>                 elf_hash_add(section_name, &sec->name_hash, str_hash(sec->name));
> @@ -576,6 +581,49 @@ static int read_rela_reloc(struct section *sec, int i, struct reloc *reloc, unsi
>         return 0;
>  }
>
> +/*
> + * CONFIG_CFI_CLANG replaces function relocations to refer to an intermediate
> + * jump table. Undo the conversion so objtool can make sense of things.
> + */
> +static int fix_cfi_relocs(const struct elf *elf)
> +{
> +       struct section *sec;
> +       struct reloc *reloc;
> +
> +       list_for_each_entry(sec, &elf->sections, list) {
> +               list_for_each_entry(reloc, &sec->reloc_list, list) {
> +                       struct reloc *cfi_reloc;
> +                       unsigned long offset;
> +
> +                       if (!reloc->sym->sec->cfi_jt)
> +                               continue;
> +
> +                       if (reloc->sym->type == STT_SECTION)
> +                               offset = arch_cfi_section_reloc_offset(reloc);
> +                       else
> +                               offset = reloc->sym->offset;
> +
> +                       /*
> +                        * The jump table immediately jumps to the actual function,
> +                        * so look up the relocation there.
> +                        */
> +                       offset = arch_cfi_jump_reloc_offset(offset);

Sorry, this comment is curious to me, it looks like we jump to the
offset+1, not directly to the actual function?  Perhaps a comment
above arch_cfi_jump_reloc_offset() and/or amending this comment might
make it clearer? Sorry if this is obvious to others?  Perhaps comments
can be cleaned up in a follow up, if this is not a bug?

> +                       cfi_reloc = find_reloc_by_dest(elf, reloc->sym->sec, offset);
> +
> +                       if (!cfi_reloc || !cfi_reloc->sym) {
> +                               WARN("can't find a CFI jump table relocation at %s+0x%lx",
> +                                       reloc->sym->sec->name, offset);
> +                               return -1;
> +                       }
> +
> +                       reloc->sym = cfi_reloc->sym;
> +                       reloc->addend = 0;
> +               }
> +       }
> +
> +       return 0;
> +}
> +
>  static int read_relocs(struct elf *elf)
>  {
>         struct section *sec;
> @@ -639,6 +687,9 @@ static int read_relocs(struct elf *elf)
>                 tot_reloc += nr_reloc;
>         }
>
> +       if (fix_cfi_relocs(elf))
> +               return -1;
> +
>         if (stats) {
>                 printf("max_reloc: %lu\n", max_reloc);
>                 printf("tot_reloc: %lu\n", tot_reloc);
> diff --git a/tools/objtool/include/objtool/arch.h b/tools/objtool/include/objtool/arch.h
> index 062bb6e9b865..2205b2b08268 100644
> --- a/tools/objtool/include/objtool/arch.h
> +++ b/tools/objtool/include/objtool/arch.h
> @@ -81,6 +81,9 @@ unsigned long arch_jump_destination(struct instruction *insn);
>
>  unsigned long arch_dest_reloc_offset(int addend);
>
> +unsigned long arch_cfi_section_reloc_offset(struct reloc *reloc);
> +unsigned long arch_cfi_jump_reloc_offset(unsigned long offset);
> +
>  const char *arch_nop_insn(int len);
>
>  int arch_decode_hint_reg(struct instruction *insn, u8 sp_reg);
> diff --git a/tools/objtool/include/objtool/elf.h b/tools/objtool/include/objtool/elf.h
> index e34395047530..d9c1dacc6572 100644
> --- a/tools/objtool/include/objtool/elf.h
> +++ b/tools/objtool/include/objtool/elf.h
> @@ -39,7 +39,7 @@ struct section {
>         char *name;
>         int idx;
>         unsigned int len;
> -       bool changed, text, rodata, noinstr;
> +       bool changed, text, rodata, noinstr, cfi_jt;
>  };
>
>  struct symbol {
> --
> 2.33.0.309.g3052b89438-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DpmcfJRkgBFnqePauMd67%2BeQ9%3DJAbSjxrWmBQY9zRveQ%40mail.gmail.com.
