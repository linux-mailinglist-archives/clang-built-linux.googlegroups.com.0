Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGUP7KCQMGQEK6ABTJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8607E39E8C4
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 22:54:50 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id z16-20020aa7d4100000b029038feb83da57sf9870752edq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 13:54:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623099290; cv=pass;
        d=google.com; s=arc-20160816;
        b=QXDd7nMGLsMAW888TCZ4mJRchryVdRdvQdKfNtKDI0H1rRhSIGv2ZjiuszgnncZiUi
         gQyrC3oegKvNQ1hFj+9CYcW38txSPnUa7hlrFuCvXz5RiKGu1l1fwyQ2skbGJvTWUgc/
         C422B8mpIBetvygBzXhBGzWy/y+Ag9pgvSoRK1nXk0kLmCzbpJ6h9Qc+BO2YYstK+nlK
         0y2sZy/rcJC5uqtb82g7H6Xp+XvdT/6xaMpDwkc5ExJHavsIBHiClKPcrXxGG6mcuwXp
         7pV4NmRHpkd7fQYnRSF6myW7RkT/1A0c3Tyd2aLEopwp/cVMkcnQL+3/gc+Mx+T+6rGj
         FdDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=76DvVnHJp57d/oe82csNVdm0SqhGmu0B0WdlNzKQBbY=;
        b=b8yFnJ+5Xm+eEZA0x0/4pjcms915Dpp2VbMg7wjHkfm3F72+O+sgQ774lb6c1WA1pU
         //AGO4WPWyEv5jKC6ZeSnhzSgIMkGY7sIy+3J1RTAtkb3E+T32PyhoPBoEa6tK1zypIe
         r4xbK69970GDSuOZ/axrOmetFbCOHKInGMS9YRGXqGwXmZP1P+IVvgPauid9ejrchWBf
         pAe1X54c9Sph7z7khnYRffmuLwMMcAQDxAIjl3Xmd9Lg4r6pxkJlYTulNn3FsZQsOwwb
         ovZQEVQn3pW7ASGCM7B+bcef5UPxywf+7Z1nIrU+BfxzrPdSesFkqOeehdXVecI/gG9k
         UPfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hqeep5Yt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=76DvVnHJp57d/oe82csNVdm0SqhGmu0B0WdlNzKQBbY=;
        b=ICPl7j99E16nNxbUEmRO9xqDcjNNb0miJ/yVjyTHYsEpd8W0fCLo0nEDSTpJn9m2+D
         /vsT0WMxOdLtX9TWZpX+4ay03lq77ly5x7LoG+8ICiRfMf69LTtUNPXKBG/OW/jIG0cI
         0fcXJdYitbBGvRk2InsU73fhvPnXGb8F9zOtSXtK9nj1ZZXP6RcNk3chRkfxWlF0NNEH
         jsl6UafPD25sMFpilHPfB0Va+Yg/Fy2J+4yjXi4vCBTfxpfPf9WQNJpsKBTbIE6qkPqE
         ebWe13nPqff4g2CCPuCrs//UNp6SSUcgb3iME2PdpPlU8qlbr0vsge/cxh+n5x/zqYP+
         3ucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=76DvVnHJp57d/oe82csNVdm0SqhGmu0B0WdlNzKQBbY=;
        b=bgP/O58PdN2q6UkJKqCb1f2akueII/M4ATMV1ALByXUAuUjJ718pFPbIdxlij/vW0R
         djmeJe5MCHA9QjE/gqRUM5BHjiBMna2BmWDsptPePYbGpRuyNLYSO997BsuZ3EcZJv5s
         1YVSiTd4d/OWusp3mhuQvVBvE+dNcwAA9KpPj2u9CF15JS1D8LRDUsHwaoIx2Ye5Vmki
         lgnjHUd5AjSJOXn/9igCKn+xPRv5tdsJmUNirobEwBWQiKNzdxIvMktFzjp4J8BSEukw
         P9dVvIeQBb3mBKxbJgPwChrByQctFtrg6nC9b5phep9/tH9rWQijM8Pe+Rz94eyDA31H
         zJ/Q==
X-Gm-Message-State: AOAM5326s9OgVxv2SgsF1vACvCNPST/4pJIfSWGwAU0VtpVOne5Omii2
	c7dowyLSmfNO+yfqIAak7Ag=
X-Google-Smtp-Source: ABdhPJzuA0Gk0u2Ujt4PZzxlWZ9ma0IHqLvo2f67za5MZz4ReYHQkFcd03jelZ1uj3DhFk3ftM3NIQ==
X-Received: by 2002:a17:906:5289:: with SMTP id c9mr19858102ejm.342.1623099290330;
        Mon, 07 Jun 2021 13:54:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1f09:: with SMTP id w9ls6735610ejj.11.gmail; Mon, 07
 Jun 2021 13:54:49 -0700 (PDT)
X-Received: by 2002:a17:906:390f:: with SMTP id f15mr19945539eje.270.1623099289455;
        Mon, 07 Jun 2021 13:54:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623099289; cv=none;
        d=google.com; s=arc-20160816;
        b=UMfinmtbmZz7LEpfBhgO4eaccoia3mTLG+tab+AWscJXBNWPoIKNOybIWHPurxI37f
         d2miN5RAyI9F9mtyuHWgL1xI6DsQeoDtSe2UP7SAwyOWjDKd5KJC9KgEZNDLsGwrnuhG
         ygVmU7dUEI99K6tgppPaaM/euyq8HDaUrpAcuTBW5sI7D78Ih+O4qWWiC7/Wd1mJ8Hyk
         8Pn5hrgYmPhY/cWC8bt63cC4+fnmu/eIZjW07T0Q9aLffBH+pqJRha+kyd+UxLTcVr3d
         9KY+33Q3+HgLs9HRb8aorotv/ECQ05RYyFEYE3TidTHlDIN8/kIo7cNuX3s44GCfffZX
         5XVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ytaaL5fir0dj08gu9cCAj1Ucrhllz0BBiheWMwRBwRQ=;
        b=ZNJSOcCfSsQnepG37MtHfz4H4pzn3lbgGruF9Mrv5dp46C9bYBytGNfHCC4W12eHpc
         4vqJ7kPRvMD9LP5BJOks0+5p08C4ht16MItOAKtd981Q1ZMDlr5agDvTFsfNuZMOL77s
         3VF/IeT8d2zwl/6dZv5/UCp7sEHaoycUtPkr0VCYQc6vT4XUaJzOGjCb29g4qY4hXb3H
         8ADL/uOUne3M1j3+kAZDaN0hWA7Rzt3Q5sv/moZMuDLtZUKCLtUl3TKIdUXnKKiiDAJU
         JJkIznWBXHrIerF4n7wEgNvpCIbkEFmig0UptONrJscf+oxpmbIb4NE/xgKOO87u30zt
         1E6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hqeep5Yt;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id x10si760447ejy.0.2021.06.07.13.54.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 13:54:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id n12so21515624lft.10
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 13:54:49 -0700 (PDT)
X-Received: by 2002:ac2:5cd6:: with SMTP id f22mr13823923lfq.73.1623099288917;
 Mon, 07 Jun 2021 13:54:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com> <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com> <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net> <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
In-Reply-To: <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Jun 2021 13:54:37 -0700
Message-ID: <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com, Guenter Roeck <groeck@google.com>, 
	Juergen Gross <jgross@suse.com>, lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>, 
	mbenes@suse.com, =?UTF-8?Q?Rados=C5=82aw_Biernacki?= <rad@semihalf.com>, 
	upstream@semihalf.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hqeep5Yt;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Mon, Jun 7, 2021 at 2:46 AM Peter Zijlstra <peterz@infradead.org> wrote:
>

Thanks, the below diff resolves the linker error reported in
https://github.com/ClangBuiltLinux/linux/issues/1388

Both readelf implementations seem happy with the results, too.

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Nathan,
Can you please test the below diff and see if that resolves your boot
issue reported in:
https://github.com/ClangBuiltLinux/linux/issues/1384

> ---
>  tools/objtool/elf.c | 25 ++++++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
>
> diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
> index 743c2e9d0f56..41bca1d13d8e 100644
> --- a/tools/objtool/elf.c
> +++ b/tools/objtool/elf.c
> @@ -717,7 +717,7 @@ static int elf_add_string(struct elf *elf, struct section *strtab, char *str)
>
>  struct symbol *elf_create_undef_symbol(struct elf *elf, const char *name)
>  {
> -       struct section *symtab;
> +       struct section *symtab, *symtab_shndx;
>         struct symbol *sym;
>         Elf_Data *data;
>         Elf_Scn *s;
> @@ -769,6 +769,29 @@ struct symbol *elf_create_undef_symbol(struct elf *elf, const char *name)
>         symtab->len += data->d_size;
>         symtab->changed = true;
>
> +       symtab_shndx = find_section_by_name(elf, ".symtab_shndx");
> +       if (symtab_shndx) {
> +               s = elf_getscn(elf->elf, symtab_shndx->idx);
> +               if (!s) {
> +                       WARN_ELF("elf_getscn");
> +                       return NULL;
> +               }
> +
> +               data = elf_newdata(s);
> +               if (!data) {
> +                       WARN_ELF("elf_newdata");
> +                       return NULL;
> +               }
> +
> +               data->d_buf = &sym->sym.st_size; /* conveniently 0 */
> +               data->d_size = sizeof(Elf32_Word);
> +               data->d_align = 4;
> +               data->d_type = ELF_T_WORD;
> +
> +               symtab_shndx->len += 4;
> +               symtab_shndx->changed = true;
> +       }
> +
>         sym->sec = find_section_by_index(elf, 0);
>
>         elf_add_symbol(elf, sym);


The only thing that's still different is that the `file` command still
prints "no section header."

$ find . -name \*.lto.o | xargs file | rev | cut -d , -f 1 | rev |
sort | uniq -c
      1  no section header
   8377  not stripped
      1  too many section headers (33683)
      1  too many section headers (50758)
$ file --version
file-5.39

That's drivers/gpu/drm/amd/amdgpu/amdgpu.lto.o, fs/xfs/xfs.lto.o,
drivers/gpu/drm/i915/i915.lto.o, respectively.  I'm not sure that's a
problem, yet, and whether 9bc0bb50727c8ac69fbb33fb937431cf3518ff37 is
even related yet; those might just be huge drivers and figured it was
reporting somewhere in case it ever comes up again.  CONFIG_LTO
implies -ffunction-sections -fdata-sections, and
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION explicitly sets those, too.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO%2B1A%40mail.gmail.com.
