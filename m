Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5XPQKAAMGQEJF7JSRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id BC29B2F6D31
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 22:30:31 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id c70sf4132814pfb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 13:30:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610659830; cv=pass;
        d=google.com; s=arc-20160816;
        b=p9O0l+T0tXUdMJLpQxKuMaEZYKkBhHiMXvpjKN54CbsRdpC54fYOwSfJTLr3iXPxtk
         qHO/jp8nT9cpu0ZejIVitViqxYdcx7DBtXuCZ3HbKoabPcuaz1rjHUf3sBmy0R6lSMgD
         7OAyo8BoysVV3mMSHDV97LBu2nPRdMfP0Zv733hB3vkglo3rj0NyoqO4+EEgYdH5yDat
         SuJp3ejkVg69G2TGX86794ybZyJYT3wdPyDHr9rYv4gNJS3yLOWlq0rO+/ZGzwf0nybI
         8rzvulYwmgFfnG/rxgSRkmnWMX80o8RNDssEg8TN8peai0/iwgma5GaAdhNpktuC4tTH
         EupQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AjTrLYnD5uVGE8O7nnaWlDYneYg73j+JD8lG7Knzoe4=;
        b=BH5dr6BF+TYGw/iYHpEHZGUXlPH4IYDAg9E0KzxwC8gL6ioFijeTcoYfX9rICqk3/o
         hdpmj3x+YXkj1vmMGPQrWpZDzBqVobsNA8Hp+gGdRkGyw+Di+6iqtJbgtjtBHN2S+3yL
         W4+dbx5irGRo4rBRLXGwb9dcspsonZYlYjyvtohcimXPfVEtsWlz9dSKhvGNepr/4xiC
         76LbnVvIE6PpYKmOwqOf+oc0vyMUPl4iIOsD38D0bD7DKQeNz/f7BBOW8VEHd1eh1dPJ
         hs6WlkLW2zm8ju5R7ZvAfxuXp1NWWpdJvhpgLWwxOfKwyPC2MTnE72jRRwK1+D9MsRqM
         ylNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QSjKT2f9;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AjTrLYnD5uVGE8O7nnaWlDYneYg73j+JD8lG7Knzoe4=;
        b=BGarKldzN6MIX02MruY86VdxrI8hM6CmiC+jZEDFUBGUpz0aS+U6rUrTpsyoVoLwZJ
         MfLCcRZuuQ+PruHSbxM5RwhXiOUfu/dZAUNQMbXN6dFJ4Ru9+bcq62oO7Ve2IKlNjTQK
         NBaSgdmKT16EbJE8Y1zHNUx2Ss3PnMLNMKOALtcXsXT+Tfzy5JOYMPQuJw/YQmumMh7h
         l7cqgkdQh/pMP/j+SUl/vKJWsS6Bq+5UVhHi82suDQwV1XB5bLnzNMrlyLrUOOklRePj
         DlZJkE/7aMtg7EeLtrlQeUyWZG6+00JPrKIdvLotM6yjO/KC3oUcxd5DAMRE94ff8Fns
         dAJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AjTrLYnD5uVGE8O7nnaWlDYneYg73j+JD8lG7Knzoe4=;
        b=fqw50tRzpcbsA5dGoYfTcHnkyk+7HZ4W9DTA6za+j38h1Dq4od8LuN32aUdAUoXav2
         u0qLupjyMOOeR3ADnl/y1VXwYPVsUKfoc51wuFgJyQ/l8HmS2x7DU6IIewIxVQp0TNb8
         SOWBQADB6JJE6Z6CRFtrEBqDtibjywCOKIKbx51zfvXHQJ4Qtfj6Y9Xj5q4L9JZQT+bB
         4K7n7Ju/VeU3K/1iSr+OKxfTCrcjxGrBKvuCwjzSNCOkf13JsLwvTG2yo4jsz564EWps
         JhLed7dTzdbndM31ZfDVbyGTjHkG9dNoXSHOqlUGJ6uNAC5/A3oQkrwcQNHkw8UURq0B
         NTRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AjTrLYnD5uVGE8O7nnaWlDYneYg73j+JD8lG7Knzoe4=;
        b=M0zR+KiQk2z6j/hHdN9DhV9yT9tjGv1Uq/9+zXgywBp8b7nQrQlX6fxz71QU4WLd3A
         AKW9un3gkXC4zVWHZBbI4VYzzetbJ7QK8e+x6hAaWk4+CYFj1WVVK6r8wu2jrmwcoDWn
         d47SZ6ADO3k54oSB3ERKadtyA8fr/PDZdZtxLTAcS13jNDPZ9XyqdbAJCTuzE+2fkcVK
         bnzuvjvZ38kFkQ/Tambts6UzJkmScTnByn7xxPXJTrheKuSGdH0QF1jmsgkjEIIBwWmR
         CFCOTlFh5BnwrUfeB71h2SvsnA1Bic/o5+vyY0AicqChbOFzpKSc8Rq6zSX218GlhMVr
         0a9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IGexkltWta22k+pAzDi+qaHv1SHXfv6hbbmasgFSYCfJlAxmW
	ej3VFu4X6D1To8r9nX6Zsmc=
X-Google-Smtp-Source: ABdhPJyfq3fr/KEpCL5U+PGpHwWeQh/Lh0H5yMuuUkk6QwUIGUBhWKGn0awsibwDoa3v3ca4WACujQ==
X-Received: by 2002:a63:f80f:: with SMTP id n15mr9282217pgh.415.1610659830495;
        Thu, 14 Jan 2021 13:30:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d4:: with SMTP id h20ls2601817pfq.5.gmail; Thu, 14 Jan
 2021 13:30:29 -0800 (PST)
X-Received: by 2002:a62:d142:0:b029:19e:62a0:ca16 with SMTP id t2-20020a62d1420000b029019e62a0ca16mr9212283pfl.46.1610659829803;
        Thu, 14 Jan 2021 13:30:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610659829; cv=none;
        d=google.com; s=arc-20160816;
        b=VS9Kct5J/wBHd8LTDZffxdWkh/3CS5qBLy8uywEGdPzD+5UGSdjOUkQWIA11Q7X0t5
         YPcj3aVPv3XQlFBi2rosD7ogss31oHyLRbcJfidw6nUAMQcrseKK8FU6ScIWBEXCACNf
         FLF3hjRtLUGGhgGwsZAwzMxdxg2b/jjUCHRCYuCvfEoYE1n05McPSYBKtyveI/+OuaYm
         6x/GhHLjPKkloO0L2fgzUnef3fVqA1KN3iIPBF42tvNGZMNHy1AGZFrPaCI8u20VZVFn
         rZbDJSl2SZOd4+45ITGsprw7AMA8otKy8+vHvb/kzfqbqGgPTzC0vaAss7CjeHhQbbYO
         0x6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/5OcUCXKSVoXp2v9h0odUus7RHd5rJAYMLUHH9GNUHY=;
        b=qddkgmJq1nXtfvOkHyHLbgOI2iYgKjOWCfWWc401Toz8KUblQejHrPOyMyXERLRUC5
         Qui632UTlIXJUoYmZEHwU8Sw2+U64mo0rG2FqUOlx0ZTCWJ/4IqvZf5Mt2DdCUcJQ1GW
         bqmrztPtTOFsQ6ZqqSsfKa7BAIjrpl+tcgWivkuSdWDxBVwZIdPWKemkxbHEbSOQxR1W
         rMal1UrXuTcRbb4L8fB+l++0A6Oe5uXkjEXbDL2XPUK0nEwmMVc4Ia0wUI44WEmJq56H
         vBUCMWrOmxd5r3pDcYsqTgmaa6RdMGzX5T/cnlBaVj76n+oy39+VdsvssvIytOeky+Wz
         Z6jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QSjKT2f9;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id o14si548513pjt.0.2021.01.14.13.30.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 13:30:29 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Received: by mail-io1-xd2f.google.com with SMTP id o6so14119926iob.10
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 13:30:29 -0800 (PST)
X-Received: by 2002:a92:c692:: with SMTP id o18mr8526362ilg.215.1610659829438;
 Thu, 14 Jan 2021 13:30:29 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com> <37e341c0f4522656a6320528f0aacb0cb7ff0034.1610652862.git.jpoimboe@redhat.com>
 <20210114205544.ehynfby5tummams5@treble>
In-Reply-To: <20210114205544.ehynfby5tummams5@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 22:30:18 +0100
Message-ID: <CA+icZUV2BWt=Q4Z0+4xXYkfQ9DRicNrjKkX6wP60Zf1+dwxGaw@mail.gmail.com>
Subject: Re: [PATCH v1.1 11/21] objtool: Move unsuffixed symbol conversion to
 a helper function
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, 
	Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QSjKT2f9;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f
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

On Thu, Jan 14, 2021 at 9:55 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> This logic will also be needed for the CONFIG_CFI_CLANG support.
>

Good you fixed that in v2.
I re-pulled from [1].

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-vmlinux

> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
>  tools/objtool/elf.c | 60 ++++++++++++++++++++++++++++-----------------
>  1 file changed, 37 insertions(+), 23 deletions(-)
>
> diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
> index be89c741ba9a..6d248a19e2c6 100644
> --- a/tools/objtool/elf.c
> +++ b/tools/objtool/elf.c
> @@ -262,6 +262,38 @@ struct reloc *find_reloc_by_dest(const struct elf *elf, struct section *sec, uns
>         return find_reloc_by_dest_range(elf, sec, offset, 1);
>  }
>
> +static int find_unsuffixed_func(const struct elf *elf, struct symbol *sym,
> +                               const char *suffix, struct symbol **func)
> +{
> +       char name[MAX_NAME_LEN + 1];
> +       const char *loc;
> +       size_t len;
> +
> +       *func = NULL;
> +
> +       loc = strstr(sym->name, suffix);
> +       if (!loc)
> +               return 0;
> +
> +       len = loc - sym->name;
> +       if (len > MAX_NAME_LEN) {
> +               WARN("%s(): unsuffixed function name exceeds maximum length of %d characters",
> +                    sym->name, MAX_NAME_LEN);
> +               return -1;
> +       }
> +
> +       strncpy(name, sym->name, len);
> +       name[len] = '\0';
> +
> +       *func = find_symbol_by_name(elf, name);
> +       if (!*func || (*func)->type != STT_FUNC) {
> +               WARN("%s(): can't find unsuffixed function", sym->name);
> +               return -1;
> +       }
> +
> +       return 0;
> +}
> +
>  void insn_to_reloc_sym_addend(struct section *sec, unsigned long offset,
>                               struct reloc *reloc)
>  {
> @@ -374,7 +406,6 @@ static int read_symbols(struct elf *elf)
>         struct list_head *entry;
>         struct rb_node *pnode;
>         int symbols_nr, i;
> -       char *coldstr;
>         Elf_Data *shndx_data = NULL;
>         Elf32_Word shndx;
>
> @@ -456,37 +487,20 @@ static int read_symbols(struct elf *elf)
>         /* Create parent/child links for any cold subfunctions */
>         list_for_each_entry(sec, &elf->sections, list) {
>                 list_for_each_entry(sym, &sec->symbol_list, list) {
> -                       char pname[MAX_NAME_LEN + 1];
> -                       size_t pnamelen;
>                         if (sym->type != STT_FUNC)
>                                 continue;
>
> -                       if (sym->pfunc == NULL)
> +                       if (!sym->pfunc)
>                                 sym->pfunc = sym;
>
> -                       if (sym->cfunc == NULL)
> +                       if (!sym->cfunc)
>                                 sym->cfunc = sym;
>
> -                       coldstr = strstr(sym->name, ".cold");
> -                       if (!coldstr)
> -                               continue;
> -
> -                       pnamelen = coldstr - sym->name;
> -                       if (pnamelen > MAX_NAME_LEN) {
> -                               WARN("%s(): parent function name exceeds maximum length of %d characters",
> -                                    sym->name, MAX_NAME_LEN);
> +                       if (find_unsuffixed_func(elf, sym, ".cold", &pfunc))
>                                 return -1;
> -                       }
>
> -                       strncpy(pname, sym->name, pnamelen);
> -                       pname[pnamelen] = '\0';
> -                       pfunc = find_symbol_by_name(elf, pname);
> -
> -                       if (!pfunc) {
> -                               WARN("%s(): can't find parent function",
> -                                    sym->name);
> -                               return -1;
> -                       }
> +                       if (!pfunc)
> +                               continue;
>
>                         sym->pfunc = pfunc;
>                         pfunc->cfunc = sym;
> --
> 2.29.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV2BWt%3DQ4Z0%2B4xXYkfQ9DRicNrjKkX6wP60Zf1%2BdwxGaw%40mail.gmail.com.
