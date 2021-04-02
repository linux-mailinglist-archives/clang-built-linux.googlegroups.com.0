Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBGGGTWBQMGQE2VBYDHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEEF352F4C
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 20:31:53 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id l17sf4704874ooi.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 11:31:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617388312; cv=pass;
        d=google.com; s=arc-20160816;
        b=TL/dZaVzSUe/SxPHWhgYrGpKHMaTuk/lWt+Bwo5k4XcO6iSbMLAnnTHpN5X0WCnqek
         +APfXsFAN9IHN7iVOTN5sPLpfxMkl5baR2/fsMwwwO3npNR70K7ZGYM52GFB8ZebPOu5
         aYhfhpe1WVPvsPaC2fvexYPPC3ejy+k2Atkp/FpbY7Hmu0cf0hWkX000LuI/GgDonQej
         OTFw910fjeofvuhJa3Jr75Wri1oknJcN4s+/rmzZ6axSfYjtgWyI2oQOY0wCadN9olbU
         vuWvEEh1D+JPt1/fceUUcXp34SkTNODSweseZURy9gTHR6UxT11pXVv0EXuG/WReQCUt
         BG2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=H2he/tLDSEe65jM4ql1cTknDPDSM9vsiMyR9zQlwHUQ=;
        b=gM+q5DQYj6ST1F+CDgQWmI7quU+kpr/Fp+iUyebF9YoFwsL4dXWcwhq6fgqFUKRWw7
         tjvG9yoCE4Rq5mpGiVwrY4JZIEujYFMqMj6Uzwe6RdDqiMM+gM9aHJEclZDMqGgqd05h
         fswzGuC7yrUY3usnI3c0H7pHIJgOSYIqpUlDt95Reh7NIeGhMHyq0iT65u97dVCP0P6/
         qaTCbjX0emjIg/qye8MLKKNpGzb4WrO/nhmEgT1uJR7MslW7i63ZEeKaFnJqQZC7zKcs
         Klwl1TKgkVWBYqJiXa4R+eobQYcqkN1IdEOYnG+3XL8IOsETXUo6aqqBK1n+/ZIOjtAB
         4TTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tc5Kq3mP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H2he/tLDSEe65jM4ql1cTknDPDSM9vsiMyR9zQlwHUQ=;
        b=FXy2Uta7gkffUg2neaITJgDHlyoOmwehX6NkKdy1Dp6VBebz0rFsGRuTYNTzGpp4NA
         A73SSoByDySiIKinQ5tX+UlfVVKSVEX46JEZxv3TQpHY4UfOceL/r8UvD9SnJSakFSwB
         DeZYx7wmzGjwMHiisKRxOqbP50qGgOAwatLCdwR8gHvtXIFvHviy+JRPTOGP5jL//0k0
         ctKwd4H7pLGGCRmpbW2blKkASrP8wAhgY6+3VrpkzZHwIDzyF7d4c62pldkUerdgKMHz
         roUpb3d/vT7tp1UnHvC5MgNZvtC1ttaadBUKySB9OQ6xN0pvhcELa8kU17/S1b5biEKT
         XNTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H2he/tLDSEe65jM4ql1cTknDPDSM9vsiMyR9zQlwHUQ=;
        b=GFaQ4YXy3LTlP3pjnhhBO6ZfW9/1NDjTYC3zraNc6dJb3zr5W/RzgKXHu/KtlrxSys
         K9DPhCBWX3FDwx4xfkoIcHMEgBMpSB+Bq4tAoi38nwpIBKnIp1m86rSyfETXxCx+dscH
         vytuuha3ctuUwLzB8i81kL5RUMAvXRRSYSihegVKHV3S0D8aMTqSz/mi1Dx0d+R2T1OP
         BB3oJ5i9FeBgpZzI3eAfRCrXTYBK/T8bNSA6AAFEKJEDUryCcfOdKlpP3PuxdnnXa/96
         LJ2gdz/vnXvDE9TGM4FXOj3esya8aVGiJDM6AlaiMEcnZGgdTKJ8o1EQhcYcD3xbZBWa
         tULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H2he/tLDSEe65jM4ql1cTknDPDSM9vsiMyR9zQlwHUQ=;
        b=b/4WOLTLh6lkoC90josgtvNcKl/8uCme01Izj5YaB3yeSZPmZJmFPgChkvM58BHGCZ
         pl/ujCo+6OVfAp8s18i90kVkh+tRsXvaSEDf9jkdWAy53OCk+WgW+fitg44NisfDM6VJ
         m6gPgLnEbw5OgyP2a0SNg7FggoAeoIbfKHyZM+AU/lul81TyEKtIpX7/8i2GqVdoHU+q
         iEAJ/oGDJhXCgaihlkeFItHCzRAICpe/lmUPvYG93tGhqJ5fjLtsp0AvxUxlyrF+4yFa
         MoUjtS25dlFRWYGGxWEsU9A2kc7W320DXy3OiLt3M1ECzMZWssqEniU9MEzdfN8R7vQb
         +omA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZbHKRNrUVSoTsMyUalGKiNewbEUjgloLvf6K02UCuKemcFISi
	WWGEALNGfKuSDJ3PgqCOaJk=
X-Google-Smtp-Source: ABdhPJyLa+eJgGcvhbMzzgHYHXfOB404npCYiovC0ZzB0zMXIOUR9ZPuWQMSNq/ozkKVwHn951VFRg==
X-Received: by 2002:a4a:8c4f:: with SMTP id v15mr12790479ooj.25.1617388312609;
        Fri, 02 Apr 2021 11:31:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls2122312oiw.10.gmail; Fri,
 02 Apr 2021 11:31:52 -0700 (PDT)
X-Received: by 2002:aca:1702:: with SMTP id j2mr10725006oii.165.1617388312218;
        Fri, 02 Apr 2021 11:31:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617388312; cv=none;
        d=google.com; s=arc-20160816;
        b=s4lLLaFHWx0D0CdEuG/fx8x0gbTUhAxdzBk6Oto/SzB1ymZNgFTPrrXnWLJPYp/qx7
         xk2L5peKj0nyKEir8nWSQjXOynOsT1Q5rjZVWhXsx9MoX+3zdbXp9yZJQlZbbutwPGlk
         GgA1fc/SLXbq3cI6P9q60PcldEwOiDekIiiTBo+f+BZs7pXwzgBSlkiFzbg4SC86uKkC
         1oUmuM0eJl4lSDg5B9a0LSHvx57ElczlJk9boGKKqnn00toEkQTBCE1IVprx5Jw8pXI3
         /3avGqdpPvRaIPjj1Srq2+QiwwZxKPBJJEuZJVq9JutbZx78J1ecr8ThSiYh9JBHcy1k
         NkIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BFBhTWbA18iJBRtXWFRSWL3NbbovxojieVF5twnWirs=;
        b=KK2j25/yZFitCJTHoMEbpohP3ZTfmpcqUxokm6TkrBQV5kxavQcFBSoUJHwp8gbOKQ
         PlBNkHuG1L3itYyBz8w4k19JGhuf1tB+lrnou7uHYt5uQdhAAgPLR1g2LRxBaCulj13l
         ZxTMTyUtIFvt+fFzyirYBJcOZyc/+SQyiJVHvkBSHZPvYN8vSjf00FSRjSjpn3DNSv+K
         Ajqi1Yqtk+cMI3MkIRTP+xMcLc2DeyrZwVBM3T5MHWS1fmB1ZFBGtDdRTvjHU7XLV7xE
         P2wTOoLtWGBE4g7XDS3wXkfJWAUWy0ViWZs1Cba1LZ8Va7XWlUCQcbCXU7dy8BIycWqH
         6pMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Tc5Kq3mP;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com. [2607:f8b0:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id h187si590323oib.1.2021.04.02.11.31.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 11:31:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) client-ip=2607:f8b0:4864:20::12f;
Received: by mail-il1-x12f.google.com with SMTP id o15so1162263ilf.11
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 11:31:52 -0700 (PDT)
X-Received: by 2002:a92:444e:: with SMTP id a14mr11798341ilm.215.1617388311933;
 Fri, 02 Apr 2021 11:31:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210401232723.3571287-1-yhs@fb.com> <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
In-Reply-To: <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 2 Apr 2021 20:31:15 +0200
Message-ID: <CA+icZUVkS4epkNoktGDGGEQcOY8CNcRsAHbjK=Z-9uLUgqiNfw@mail.gmail.com>
Subject: Re: [PATCH kbuild v4] kbuild: add an elfnote for whether vmlinux is
 built with lto
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Yonghong Song <yhs@fb.com>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, bpf <bpf@vger.kernel.org>, 
	kernel-team@fb.com, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Bill Wendling <morbo@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Tc5Kq3mP;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f
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

On Fri, Apr 2, 2021 at 8:07 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Thu, Apr 1, 2021 at 4:27 PM Yonghong Song <yhs@fb.com> wrote:
> >
> > Currently, clang LTO built vmlinux won't work with pahole.
> > LTO introduced cross-cu dwarf tag references and broke
> > current pahole model which handles one cu as a time.
> > The solution is to merge all cu's as one pahole cu as in [1].
> > We would like to do this merging only if cross-cu dwarf
> > references happens. The LTO build mode is a pretty good
> > indication for that.
> >
> > In earlier version of this patch ([2]), clang flag
> > -grecord-gcc-switches is proposed to add to compilation flags
> > so pahole could detect "-flto" and then merging cu's.
> > This will increate the binary size of 1% without LTO though.
> >
> > Arnaldo suggested to use a note to indicate the vmlinux
> > is built with LTO. Such a cheap way to get whether the vmlinux
> > is built with LTO or not helps pahole but is also useful
> > for tracing as LTO may inline/delete/demote global functions,
> > promote static functions, etc.
> >
> > So this patch added an elfnote with a new type LINUX_ELFNOTE_LTO_INFO.
> > The owner of the note is "Linux".
> >
> > With gcc 8.4.1 and clang trunk, without LTO, I got
> >   $ readelf -n vmlinux
> >   Displaying notes found in: .notes
> >     Owner                Data size        Description
> >   ...
> >     Linux                0x00000004       func
> >      description data: 00 00 00 00
> >   ...
> > With "readelf -x ".notes" vmlinux", I can verify the above "func"
> > with type code 0x101.
> >
> > With clang thin-LTO, I got the same as above except the following:
> >      description data: 01 00 00 00
> > which indicates the vmlinux is built with LTO.
> >
> >   [1] https://lore.kernel.org/bpf/20210325065316.3121287-1-yhs@fb.com/
> >   [2] https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> >
> > Suggested-by: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
> > Signed-off-by: Yonghong Song <yhs@fb.com>
>
> LGTM thanks Yonghong!
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> > ---
> >  include/linux/elfnote-lto.h | 14 ++++++++++++++
> >  init/version.c              |  2 ++
> >  scripts/mod/modpost.c       |  2 ++
> >  3 files changed, 18 insertions(+)
> >  create mode 100644 include/linux/elfnote-lto.h
> >
> > Changelogs:
> >   v3 -> v4:
> >     . put new lto note in its own header file similar to
> >       build-salt.h. (Nick)

That is a bit smarter (and smaller) than v3.
Queued up and building a new clang-lto kernel...
Will report later.

- Sedat -

> >   v2 -> v3:
> >     . abandoned the approach of adding -grecord-gcc-switches,
> >       instead create a note to indicate whether it is a lto build
> >       or not. The note definition is in compiler.h. (Arnaldo)
> >   v1 -> v2:
> >     . limited to add -grecord-gcc-switches for LTO_CLANG
> >       instead of all clang build
> >
> > diff --git a/include/linux/elfnote-lto.h b/include/linux/elfnote-lto.h
> > new file mode 100644
> > index 000000000000..d4635a3ecc4f
> > --- /dev/null
> > +++ b/include/linux/elfnote-lto.h
> > @@ -0,0 +1,14 @@
> > +#ifndef __ELFNOTE_LTO_H
> > +#define __ELFNOTE_LTO_H
> > +
> > +#include <linux/elfnote.h>
> > +
> > +#define LINUX_ELFNOTE_LTO_INFO 0x101
> > +
> > +#ifdef CONFIG_LTO
> > +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 1)
> > +#else
> > +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 0)
> > +#endif
> > +
> > +#endif /* __ELFNOTE_LTO_H */
> > diff --git a/init/version.c b/init/version.c
> > index 92afc782b043..1a356f5493e8 100644
> > --- a/init/version.c
> > +++ b/init/version.c
> > @@ -9,6 +9,7 @@
> >
> >  #include <generated/compile.h>
> >  #include <linux/build-salt.h>
> > +#include <linux/elfnote-lto.h>
> >  #include <linux/export.h>
> >  #include <linux/uts.h>
> >  #include <linux/utsname.h>
> > @@ -45,3 +46,4 @@ const char linux_proc_banner[] =
> >         " (" LINUX_COMPILER ") %s\n";
> >
> >  BUILD_SALT;
> > +BUILD_LTO_INFO;
> > diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> > index 24725e50c7b4..98fb2bb024db 100644
> > --- a/scripts/mod/modpost.c
> > +++ b/scripts/mod/modpost.c
> > @@ -2191,10 +2191,12 @@ static void add_header(struct buffer *b, struct module *mod)
> >          */
> >         buf_printf(b, "#define INCLUDE_VERMAGIC\n");
> >         buf_printf(b, "#include <linux/build-salt.h>\n");
> > +       buf_printf(b, "#include <linux/elfnote-lto.h>\n");
> >         buf_printf(b, "#include <linux/vermagic.h>\n");
> >         buf_printf(b, "#include <linux/compiler.h>\n");
> >         buf_printf(b, "\n");
> >         buf_printf(b, "BUILD_SALT;\n");
> > +       buf_printf(b, "BUILD_LTO_INFO;\n");
> >         buf_printf(b, "\n");
> >         buf_printf(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");
> >         buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
> > --
> > 2.30.2
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN%3DUBNdQiO3g%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVkS4epkNoktGDGGEQcOY8CNcRsAHbjK%3DZ-9uLUgqiNfw%40mail.gmail.com.
