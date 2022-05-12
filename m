Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBIU66KJQMGQEASPVFAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9EC524458
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 May 2022 06:37:55 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id l13-20020a056e0212ed00b002d07cd1db63sf915835iln.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 May 2022 21:37:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652330274; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZJLyTfFI0i/b5oK5evpZ5rbKaUwG1/j4kTjxwB2zHz4929mNuPmQj1o9uLQGakDm9U
         flM/uQcEndOxFHDAmsLtTPGOiRRWg9Sa0iHEY112os5ab/ZZf+hCF7HG7zoedZuzWuPJ
         ukueeDpewhjGRxLiFl3AiOHiCiwcfAjh0uSqjz+p14WXQiw35GYwWoWArhEFkKIKdPZv
         RxoaKGmPu1m9d6YfsmQOn1XeqYXivqn5R8XqUMAWkhzaZJdyiqSVFMCyNqTY9s5+4IY/
         c+sKLe1HU+917Id/6CE1lsUA750WlC4ENiv6BksiprtmM0rBn7V02pqfGZ4Hb20vwEcA
         6gnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=WBsnTNGt/AbUwaXgQxfq4FF7Usym/6i6X5p9qQxyYiY=;
        b=Dvha4l9n4xs7qVBdvF5QB5UBIoTOvqepVsikPN5znn5/LQUfIJY8Pb9K3FsgD2GKI1
         +JAKNZ4E0iNfJb/K2Lo8Jrj29EBjDIzlwb+z6/lpXCxcmynSdrnNBz/sz/+MLllGGKMd
         FCKFpP+l22W1kK2osfH3YfSaV8+zF2iCuk62MmCGCWg5alOjl6iJFMiP6Ft61+Yyt+ek
         1aCmFqxWzYujUSb5fc/LkyAf1CkQNtmmJF70NvbtzZ5WuHOLN5vGIV4wHF2ritX+XsH6
         tGzj6MTk+KFo79RG0OFo4H+pL++0i9sINEL6JzV9vsj2XXo4BQGYJrBaDMwjVYBB9kvv
         f1tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xXD+m8oS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WBsnTNGt/AbUwaXgQxfq4FF7Usym/6i6X5p9qQxyYiY=;
        b=JTMolrgC97Pgk4c2LGAv5CVrvRQOZKGMTyLwGesF5nxTrdEGMGGQtUGqWTNt3xBYgI
         Tmr+rgFHe7TITpaM1ZLsqtf/c74+n/orDLm4sIcf/i7lfdZdvo8mraYXwoIhOrVEu3Pn
         zPCZTPu0DsHiCTdkn7v2v1FSIBE88IsDqC5ueNoFayTACCuR5rP43gHBbTxoijsJjeWr
         nGAzQY4R5f9E+ORe0LwNr0/DO1dPS/I3rLShybBujtF5yIWFeI/m3/Je1yLmQsJrIpOT
         4xurBaItacxkoS0JEdOeerWLMZWNpWiTqZdyXb/38TOgHrCI0/Ew7BITvlICF1zNsf/T
         9/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WBsnTNGt/AbUwaXgQxfq4FF7Usym/6i6X5p9qQxyYiY=;
        b=dRi0i4OA8tFHvHcmhyLS9V6hBtp5Svy4xCF9IV0hUYfVmb8RklFNtg8XW4sDks4GIf
         0NgIjLWqd7x222rlrc+IImwQWvwFTvh3MpOe0ZRFf1BhMPaIvdvYYHl1eUkU8zdFLK+0
         sqdcgqlTnciYqQyFL/XAs2c/H4vv2pvdPJvLvFV/iPyqr9ZaezcwC60uVFfgCK8bGSp7
         hoai8cxHCqj/uAWrumAn1OKKqMVX8SPZ2ogEnGlOmXQqoerVjyS+44+U5An4qRz7NHk1
         O7DCqVGdHX9/QMQHub2LGfXyDwJKLwFcB7eW4z5tLXrjzUz/hoDtiV52SOUHHwUUL4Ym
         QmGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Pxgb6UthtKGQb9Nr/5ccbATHmSJ5Oof4M18XoSRB5/wT1g4a0
	FpqaqHhSivMju9G2Auo+o+k=
X-Google-Smtp-Source: ABdhPJzZ+Sr8hQHZGZ682jpuIObiu6RxQ/ijxwAG0qAnItHNh3emDpedZcbwIAXsSVvXQlRKJ4uZHw==
X-Received: by 2002:a05:6602:48:b0:657:ccb5:1d85 with SMTP id z8-20020a056602004800b00657ccb51d85mr12127896ioz.217.1652330274620;
        Wed, 11 May 2022 21:37:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:b29:b0:2cf:70a:55d4 with SMTP id
 e9-20020a056e020b2900b002cf070a55d4ls716418ilu.6.gmail; Wed, 11 May 2022
 21:37:54 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a23:b0:2cf:3ad5:f01a with SMTP id g3-20020a056e021a2300b002cf3ad5f01amr13170357ile.137.1652330274124;
        Wed, 11 May 2022 21:37:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652330274; cv=none;
        d=google.com; s=arc-20160816;
        b=kgO2dEKLX1OXxP6izhozDL/Nmmt6WGXiw1NPxW44R+LTzn4hHDW1nCoNlYu4KiZ1Bi
         oeia4Uj3ZsBxl2oHMKGq+jYv3e+l3TEMNurvgH+bUl4aJitvnlcI0CGIHOYYDwzub/sx
         sLlmotQjWsf4umZgSA0UxZC3LHXB2pN/3jf16lEd2zwV7Dci4EG+BmiZlvH48QBn/559
         d14NTqw1K4srK3DjLFBYkdJh5/D7DBLSdSozlgZiH/uJkohZmrDPzIWsfUAb22V64sQd
         PKIvvPwxK06bnNcCUFSqnFRoBDh++IrSRy1NxHoCDMqM8eHD4u4Md+9aRK0nUL0J88j2
         wsAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=IUVNjJxNI8Y2N6J08VzVrWq/34IrVEKJXOQ5ZZINgIk=;
        b=tT7YVWa3JEGZsBP0bSdI0WrBoJPWyYx22yP6c4wiRZlRn04y9hEhIcQ+YlclAYw0Rp
         2yzDfdllGPPRXo9nl/o6viqqQFMJAr6+hmgk8KbI4j5Em8I2lo68wZSvO5dLHUsGB2YL
         u4zOVMYp9zazVNIB8CgdMzUoo3AH9anf1V4YG8Zn93cFXTQ3dfZz535cyNRmI3Wq+Ekh
         wRD65QB07kgeupWkPMyASH75TRspc1klIT/TGS+fkKsdfsNerQTPgq0itUGzV3ksQNAt
         nkK8xIJ+1yJ48PTnrHC+tHkup9FXTheETMzEz+3wQScc3DIvM1a6rdRnG0eO+uUOlja5
         qqNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=xXD+m8oS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id i16-20020a02c610000000b0032b399f3bc6si265022jan.5.2022.05.11.21.37.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 May 2022 21:37:54 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 24C4bPsj025304
	for <clang-built-linux@googlegroups.com>; Thu, 12 May 2022 13:37:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 24C4bPsj025304
X-Nifty-SrcIP: [209.85.216.52]
Received: by mail-pj1-f52.google.com with SMTP id l7-20020a17090aaa8700b001dd1a5b9965so3836806pjq.2
        for <clang-built-linux@googlegroups.com>; Wed, 11 May 2022 21:37:25 -0700 (PDT)
X-Received: by 2002:a17:902:9887:b0:151:6e1c:7082 with SMTP id
 s7-20020a170902988700b001516e1c7082mr27988770plp.162.1652330245039; Wed, 11
 May 2022 21:37:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220508190631.2386038-1-masahiroy@kernel.org> <20220508190631.2386038-3-masahiroy@kernel.org>
In-Reply-To: <20220508190631.2386038-3-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 12 May 2022 13:36:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNARhgfkSP+jmoTF2nVJtd=amPTNsNRjgaV+H7NhgjV+6Bw@mail.gmail.com>
Message-ID: <CAK7LNARhgfkSP+jmoTF2nVJtd=amPTNsNRjgaV+H7NhgjV+6Bw@mail.gmail.com>
Subject: Re: [PATCH v4 02/14] modpost: change the license of EXPORT_SYMBOL to
 bool type
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>,
        linux-modules <linux-modules@vger.kernel.org>,
        linux-s390 <linux-s390@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=xXD+m8oS;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, May 9, 2022 at 4:09 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> There were more EXPORT_SYMBOL types in the past. The following commits
> removed unused ones.
>
>  - f1c3d73e973c ("module: remove EXPORT_SYMBOL_GPL_FUTURE")
>  - 367948220fce ("module: remove EXPORT_UNUSED_SYMBOL*")
>
> There are 3 remaining in enum export, but export_unknown does not make
> any sense because we never expect such a situation like "we do not know
> how it was exported".
>
> If the symbol name starts with "__ksymtab_", but the section name
> does not start with "___ksymtab+" or "___ksymtab_gpl+", it is not an
> exported symbol.
>
> It occurs when a variable starting with "__ksymtab_" is directly defined:
>
>    int __ksymtab_foo;
>
> Presumably, there is no practical issue for using such a weird variable
> name (but there is no good reason for doing so, either).
>
> Anyway, that is not an exported symbol. Setting export_unknown is not
> the right thing to do. Do not call sym_add_exported() in this case.
>
> With pointless export_unknown removed, the export type finally becomes
> boolean (either EXPORT_SYMBOL or EXPORT_SYMBOL_GPL).
>
> I renamed the field name to is_gpl_only. EXPORT_SYMBOL_GPL sets it true.
> Only GPL-compatible modules can use it.
>
> I removed the orphan comment, "How a symbol is exported", which is
> unrelated to sec_mismatch_count. It is about enum export.
> See commit bd5cbcedf446 ("kbuild: export-type enhancement to modpost.c")
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
> Tested-by: Nathan Chancellor <nathan@kernel.org>
> ---

Applied to linux-kbuild.


>
> Changes in v4:
>   - Rebase again because I dropped
>      https://patchwork.kernel.org/project/linux-kbuild/patch/20220501084032.1025918-11-masahiroy@kernel.org/
>   - Remove warning message because I plan to change this hunk again in a later commit
>   - Remove orphan comment
>
> Changes in v3:
>   - New patch
>
>  scripts/mod/modpost.c | 108 ++++++++++++------------------------------
>  1 file changed, 30 insertions(+), 78 deletions(-)
>
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index d9efbd5b31a6..a78b75f0eeb0 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -30,7 +30,7 @@ static bool all_versions;
>  static bool external_module;
>  /* Only warn about unresolved symbols */
>  static bool warn_unresolved;
> -/* How a symbol is exported */
> +
>  static int sec_mismatch_count;
>  static bool sec_mismatch_warn_only = true;
>  /* ignore missing files */
> @@ -47,12 +47,6 @@ static bool error_occurred;
>  #define MAX_UNRESOLVED_REPORTS 10
>  static unsigned int nr_unresolved;
>
> -enum export {
> -       export_plain,
> -       export_gpl,
> -       export_unknown
> -};
> -
>  /* In kernel, this size is defined in linux/module.h;
>   * here we use Elf_Addr instead of long for covering cross-compile
>   */
> @@ -219,7 +213,7 @@ struct symbol {
>         bool crc_valid;
>         bool weak;
>         bool is_static;         /* true if symbol is not global */
> -       enum export  export;       /* Type of export */
> +       bool is_gpl_only;       /* exported by EXPORT_SYMBOL_GPL */
>         char name[];
>  };
>
> @@ -316,34 +310,6 @@ static void add_namespace(struct list_head *head, const char *namespace)
>         }
>  }
>
> -static const struct {
> -       const char *str;
> -       enum export export;
> -} export_list[] = {
> -       { .str = "EXPORT_SYMBOL",            .export = export_plain },
> -       { .str = "EXPORT_SYMBOL_GPL",        .export = export_gpl },
> -       { .str = "(unknown)",                .export = export_unknown },
> -};
> -
> -
> -static const char *export_str(enum export ex)
> -{
> -       return export_list[ex].str;
> -}
> -
> -static enum export export_no(const char *s)
> -{
> -       int i;
> -
> -       if (!s)
> -               return export_unknown;
> -       for (i = 0; export_list[i].export != export_unknown; i++) {
> -               if (strcmp(export_list[i].str, s) == 0)
> -                       return export_list[i].export;
> -       }
> -       return export_unknown;
> -}
> -
>  static void *sym_get_data_by_offset(const struct elf_info *info,
>                                     unsigned int secindex, unsigned long offset)
>  {
> @@ -374,18 +340,6 @@ static const char *sec_name(const struct elf_info *info, int secindex)
>
>  #define strstarts(str, prefix) (strncmp(str, prefix, strlen(prefix)) == 0)
>
> -static enum export export_from_secname(struct elf_info *elf, unsigned int sec)
> -{
> -       const char *secname = sec_name(elf, sec);
> -
> -       if (strstarts(secname, "___ksymtab+"))
> -               return export_plain;
> -       else if (strstarts(secname, "___ksymtab_gpl+"))
> -               return export_gpl;
> -       else
> -               return export_unknown;
> -}
> -
>  static void sym_update_namespace(const char *symname, const char *namespace)
>  {
>         struct symbol *s = find_symbol(symname);
> @@ -405,7 +359,7 @@ static void sym_update_namespace(const char *symname, const char *namespace)
>  }
>
>  static struct symbol *sym_add_exported(const char *name, struct module *mod,
> -                                      enum export export)
> +                                      bool gpl_only)
>  {
>         struct symbol *s = find_symbol(name);
>
> @@ -417,7 +371,7 @@ static struct symbol *sym_add_exported(const char *name, struct module *mod,
>
>         s = alloc_symbol(name);
>         s->module = mod;
> -       s->export    = export;
> +       s->is_gpl_only = gpl_only;
>         list_add_tail(&s->list, &mod->exported_symbols);
>         hash_add_symbol(s);
>
> @@ -689,8 +643,6 @@ static void handle_modversion(const struct module *mod,
>  static void handle_symbol(struct module *mod, struct elf_info *info,
>                           const Elf_Sym *sym, const char *symname)
>  {
> -       const char *name;
> -
>         switch (sym->st_shndx) {
>         case SHN_COMMON:
>                 if (strstarts(symname, "__gnu_lto_")) {
> @@ -724,12 +676,15 @@ static void handle_symbol(struct module *mod, struct elf_info *info,
>         default:
>                 /* All exported symbols */
>                 if (strstarts(symname, "__ksymtab_")) {
> -                       enum export export;
> +                       const char *name, *secname;
>
>                         name = symname + strlen("__ksymtab_");
> -                       export = export_from_secname(info,
> -                                                    get_secindex(info, sym));
> -                       sym_add_exported(name, mod, export);
> +                       secname = sec_name(info, get_secindex(info, sym));
> +
> +                       if (strstarts(secname, "___ksymtab_gpl+"))
> +                               sym_add_exported(name, mod, true);
> +                       else if (strstarts(secname, "___ksymtab+"))
> +                               sym_add_exported(name, mod, false);
>                 }
>                 if (strcmp(symname, "init_module") == 0)
>                         mod->has_init = true;
> @@ -2140,20 +2095,6 @@ void buf_write(struct buffer *buf, const char *s, int len)
>         buf->pos += len;
>  }
>
> -static void check_for_gpl_usage(enum export exp, const char *m, const char *s)
> -{
> -       switch (exp) {
> -       case export_gpl:
> -               error("GPL-incompatible module %s.ko uses GPL-only symbol '%s'\n",
> -                     m, s);
> -               break;
> -       case export_plain:
> -       case export_unknown:
> -               /* ignore */
> -               break;
> -       }
> -}
> -
>  static void check_exports(struct module *mod)
>  {
>         struct symbol *s, *exp;
> @@ -2192,8 +2133,9 @@ static void check_exports(struct module *mod)
>                         add_namespace(&mod->missing_namespaces, exp->namespace);
>                 }
>
> -               if (!mod->is_gpl_compatible)
> -                       check_for_gpl_usage(exp->export, basename, exp->name);
> +               if (!mod->is_gpl_compatible && exp->is_gpl_only)
> +                       error("GPL-incompatible module %s.ko uses GPL-only symbol '%s'\n",
> +                             basename, exp->name);
>         }
>  }
>
> @@ -2437,6 +2379,7 @@ static void read_dump(const char *fname)
>                 unsigned int crc;
>                 struct module *mod;
>                 struct symbol *s;
> +               bool gpl_only;
>
>                 if (!(symname = strchr(line, '\t')))
>                         goto fail;
> @@ -2454,12 +2397,22 @@ static void read_dump(const char *fname)
>                 crc = strtoul(line, &d, 16);
>                 if (*symname == '\0' || *modname == '\0' || *d != '\0')
>                         goto fail;
> +
> +               if (!strcmp(export, "EXPORT_SYMBOL_GPL")) {
> +                       gpl_only = true;
> +               } else if (!strcmp(export, "EXPORT_SYMBOL")) {
> +                       gpl_only = false;
> +               } else {
> +                       error("%s: unknown license %s. skip", symname, export);
> +                       continue;
> +               }
> +
>                 mod = find_module(modname);
>                 if (!mod) {
>                         mod = new_module(modname);
>                         mod->from_dump = true;
>                 }
> -               s = sym_add_exported(symname, mod, export_no(export));
> +               s = sym_add_exported(symname, mod, gpl_only);
>                 s->is_static = false;
>                 sym_set_crc(symname, crc);
>                 sym_update_namespace(symname, namespace);
> @@ -2481,9 +2434,9 @@ static void write_dump(const char *fname)
>                 if (mod->from_dump)
>                         continue;
>                 list_for_each_entry(sym, &mod->exported_symbols, list) {
> -                       buf_printf(&buf, "0x%08x\t%s\t%s\t%s\t%s\n",
> +                       buf_printf(&buf, "0x%08x\t%s\t%s\tEXPORT_SYMBOL%s\t%s\n",
>                                    sym->crc, sym->name, mod->name,
> -                                  export_str(sym->export),
> +                                  sym->is_gpl_only ? "_GPL" : "",
>                                    sym->namespace ?: "");
>                 }
>         }
> @@ -2604,9 +2557,8 @@ int main(int argc, char **argv)
>
>                 for (s = symbolhash[n]; s; s = s->next) {
>                         if (s->is_static)
> -                               error("\"%s\" [%s] is a static %s\n",
> -                                     s->name, s->module->name,
> -                                     export_str(s->export));
> +                               error("\"%s\" [%s] is a static EXPORT_SYMBOL\n",
> +                                     s->name, s->module->name);
>                 }
>         }
>
> --
> 2.32.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-3-masahiroy%40kernel.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARhgfkSP%2BjmoTF2nVJtd%3DamPTNsNRjgaV%2BH7NhgjV%2B6Bw%40mail.gmail.com.
