Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW52TWBQMGQET564VFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id E577F352EF1
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 20:07:23 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id di5sf3382361ejc.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 11:07:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617386843; cv=pass;
        d=google.com; s=arc-20160816;
        b=rxfWkXHXfTvms/gCYqynb4WZ1Yp1cnFvb8wkZOvjEaDZ6OuuOjQhDXFkOHTZwla50A
         A1fejKp92RDKDmDLrFD2a2+xLO5w0V/Te0ATKO5MSWU1UsrcIzk44NVqTxWTwwIaR1Ne
         UKFs9PGmix5ED1Cw+jjVR1xd7+0JZWSCwTAmul17pz5ItaVICXmNjJojhtxsW9RfOfhv
         6ki05HOTSDBXzdD2HOQsCBXlN+X6qm3jBnRoz2j37Blb4GSsruTBo2/V3C6Zoa7KaGri
         0eTeCV+ekjIqUmLy+bVO2W2A8xW3vCmYCFwO9JXYUjShwXEYRayxcGmopffOl6oB8H9i
         Vpcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=dcfjeh0m67mtUHto33t1BiSmzbqjOB06wl2JWIvNA6s=;
        b=gLFGV0ARjGQFk7/MkFsxey8yRAxPVXurA4A8nu0UzUNZZW7ry49ZEMklIvJyg9+IdP
         rXkDELQWvU1yHXQGp3I41NpoXbvgfEqa7u4nEtLHhrukImVG+yiJJ42kJ9wH33GqTXul
         GD8sDaicWVgTUtbzJY/ohl4kCKElojxZSHvbSS+f+UtYO1oJVMnb8v8S9qcNrJn8sKWd
         GVKa03CeBY9QJb6g8QkQ8cK/jfFewbpLkRdtY317AhDW2ANK30NznPQLwEFBYfsB/a9g
         iwmjOrTdvh7bMElcHwadBXhcwIQim4NHOn2Rw+Pd9x/9QQLzpG0h04WZ9c10m5zKUdDD
         zyoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B58X00Vn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dcfjeh0m67mtUHto33t1BiSmzbqjOB06wl2JWIvNA6s=;
        b=K+azP94MD25MYuUfHnSoS9AFhJ6gKFq0dbtTriKzQvrfGg2Po6Q3SlMC+lYGOUB4HA
         FMYmgqm5FNxdHsN3FEx6l/nB+Lq8hQFELdZVGxl3YBPaYr+fA90ziAKhy12gVZ8XsDQf
         iHcJzR0yuBOwxvgzH17yrL4Z9Gh6zHAQjjCt1Xkb0do7nlGUCdU1RI2e6QxcH+5oEMmc
         hRSjRS8DqnbJJqMSDRhuPeyTl03wu2Rb/wvHRw5mRcfYryb4WuLOm84iuWyqIPpMM19C
         Tj3rOsEeg+dVloFRI2orcPqjbCV1m12D6pLbZjjphixx1pnYqihlA4TLsZyBDRRNOwGW
         +OJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dcfjeh0m67mtUHto33t1BiSmzbqjOB06wl2JWIvNA6s=;
        b=aKZitTjx3Z+Zw23VRad18KT71fGtQldB61HwWaxvsC5wusLK0YPyto8YqTkmBhgffW
         c67u+x/Aq7ZAIWHdz3x+yupiy54jfX3p4+Ld8qwQK195W4v92Yu6jwE9ljgfgJNxGQQ4
         DWUv8gjDiRwy+/Ku10yq9dKlpsj2/4AcPlr1jeuHXNjLrSNNtGSYylsJPH1GXTj90sq5
         QwmwmSGhRzPUUS+ZXPgvkNh1okX3tmdL2/80ILFXihAdzeQ5eEC8Qb9568IGLcPovCVj
         IPGMDyTiJHIUrv5algtNIGSGM5cUdzbPeXcK6b6E6lB3ioDyX2Nv3mPmvLBDjdNYv0PG
         6fIA==
X-Gm-Message-State: AOAM5321uxuqRPhdXuC7PkwZZvRUQmC96R1jrKkaWKBPZ0xGGENWB9ih
	YZR0QtShDfdnLnZmElc1SO4=
X-Google-Smtp-Source: ABdhPJx0Dh8edNpgnwMxxEuhB1WZZrWt0+3WucgbpAJ/FU7wPs1E8mHnqEl24ykRGFu7YdN/xhwI4g==
X-Received: by 2002:a17:906:881:: with SMTP id n1mr1457118eje.56.1617386843630;
        Fri, 02 Apr 2021 11:07:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:41a:: with SMTP id d26ls4855354eja.3.gmail; Fri, 02
 Apr 2021 11:07:22 -0700 (PDT)
X-Received: by 2002:a17:906:7d82:: with SMTP id v2mr15496485ejo.524.1617386842750;
        Fri, 02 Apr 2021 11:07:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617386842; cv=none;
        d=google.com; s=arc-20160816;
        b=gvU34u5RxwoZk5iWgWuJIQhVf7nouPulfLx87rjv91u7bFPk73wlkpAJzoVi4a3b3u
         k9P9QJOXGoXsClYqs0AprksjI7N8Aw5QW0tZg/iogLqc2dUrI1dvpfJ598hNJ5TldNo7
         2Nl+tPGSRl/gq7LEzXm/V+MXrixPKL3d5ZZRaROiMK3ntArEEJcJgkAkgFzz2EsXVZ7q
         vSKMAn23ZYlLg1EvK903INXr5bCzdB+4gJwr26JizvljoWmKWWuSrkI25yh1aY7FAgpn
         edWMtc9HUEQApUim0QRKZlWOd1WhPZ9jW4FeF4QFrfNBIsJ/yYMC3gtLQ91uR4qLDnDR
         91Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PM3yJgN8KwxpiHp9xCT4k+uyrPB+t4rWGu++QPJE560=;
        b=YwhY/L7mbmST0u+9IogAuv2V1i86KLzrIplLfFHyAGs8ZsqpoMmNydzmwwaEkPyxoK
         UG0fyZQyhiwggt/HdbZtvc0UbWec4eF7xUE98paKkbPUXfnFxO2g9CoQmH5yJkgO33rj
         Og/1VhKYmNeLNEhWv5mrNBIqg+HSnTEMnr6cEdcvCpVZbyMRWcdWFKUYCtHxXwvoB7T2
         XmHy2+p7Ll/Du6iTWUDplOqR835qrHu4qbhkN85SbP/06dzIRggFsP9qXOggyEeisFNe
         wdaABWJU/M7PuVfKq/Ptg7IbFlVWy+HCMzJvIVmUtJjaFo/FqwFaCe0LQK58xPUEDYgq
         k10w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B58X00Vn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id ck26si1199359edb.1.2021.04.02.11.07.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 11:07:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id 184so6342592ljf.9
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 11:07:22 -0700 (PDT)
X-Received: by 2002:a2e:5716:: with SMTP id l22mr8865244ljb.244.1617386841985;
 Fri, 02 Apr 2021 11:07:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210401232723.3571287-1-yhs@fb.com>
In-Reply-To: <20210401232723.3571287-1-yhs@fb.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Apr 2021 11:07:10 -0700
Message-ID: <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
Subject: Re: [PATCH kbuild v4] kbuild: add an elfnote for whether vmlinux is
 built with lto
To: Yonghong Song <yhs@fb.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, bpf <bpf@vger.kernel.org>, kernel-team@fb.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Bill Wendling <morbo@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B58X00Vn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Thu, Apr 1, 2021 at 4:27 PM Yonghong Song <yhs@fb.com> wrote:
>
> Currently, clang LTO built vmlinux won't work with pahole.
> LTO introduced cross-cu dwarf tag references and broke
> current pahole model which handles one cu as a time.
> The solution is to merge all cu's as one pahole cu as in [1].
> We would like to do this merging only if cross-cu dwarf
> references happens. The LTO build mode is a pretty good
> indication for that.
>
> In earlier version of this patch ([2]), clang flag
> -grecord-gcc-switches is proposed to add to compilation flags
> so pahole could detect "-flto" and then merging cu's.
> This will increate the binary size of 1% without LTO though.
>
> Arnaldo suggested to use a note to indicate the vmlinux
> is built with LTO. Such a cheap way to get whether the vmlinux
> is built with LTO or not helps pahole but is also useful
> for tracing as LTO may inline/delete/demote global functions,
> promote static functions, etc.
>
> So this patch added an elfnote with a new type LINUX_ELFNOTE_LTO_INFO.
> The owner of the note is "Linux".
>
> With gcc 8.4.1 and clang trunk, without LTO, I got
>   $ readelf -n vmlinux
>   Displaying notes found in: .notes
>     Owner                Data size        Description
>   ...
>     Linux                0x00000004       func
>      description data: 00 00 00 00
>   ...
> With "readelf -x ".notes" vmlinux", I can verify the above "func"
> with type code 0x101.
>
> With clang thin-LTO, I got the same as above except the following:
>      description data: 01 00 00 00
> which indicates the vmlinux is built with LTO.
>
>   [1] https://lore.kernel.org/bpf/20210325065316.3121287-1-yhs@fb.com/
>   [2] https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
>
> Suggested-by: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
> Signed-off-by: Yonghong Song <yhs@fb.com>

LGTM thanks Yonghong!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  include/linux/elfnote-lto.h | 14 ++++++++++++++
>  init/version.c              |  2 ++
>  scripts/mod/modpost.c       |  2 ++
>  3 files changed, 18 insertions(+)
>  create mode 100644 include/linux/elfnote-lto.h
>
> Changelogs:
>   v3 -> v4:
>     . put new lto note in its own header file similar to
>       build-salt.h. (Nick)
>   v2 -> v3:
>     . abandoned the approach of adding -grecord-gcc-switches,
>       instead create a note to indicate whether it is a lto build
>       or not. The note definition is in compiler.h. (Arnaldo)
>   v1 -> v2:
>     . limited to add -grecord-gcc-switches for LTO_CLANG
>       instead of all clang build
>
> diff --git a/include/linux/elfnote-lto.h b/include/linux/elfnote-lto.h
> new file mode 100644
> index 000000000000..d4635a3ecc4f
> --- /dev/null
> +++ b/include/linux/elfnote-lto.h
> @@ -0,0 +1,14 @@
> +#ifndef __ELFNOTE_LTO_H
> +#define __ELFNOTE_LTO_H
> +
> +#include <linux/elfnote.h>
> +
> +#define LINUX_ELFNOTE_LTO_INFO 0x101
> +
> +#ifdef CONFIG_LTO
> +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 1)
> +#else
> +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 0)
> +#endif
> +
> +#endif /* __ELFNOTE_LTO_H */
> diff --git a/init/version.c b/init/version.c
> index 92afc782b043..1a356f5493e8 100644
> --- a/init/version.c
> +++ b/init/version.c
> @@ -9,6 +9,7 @@
>
>  #include <generated/compile.h>
>  #include <linux/build-salt.h>
> +#include <linux/elfnote-lto.h>
>  #include <linux/export.h>
>  #include <linux/uts.h>
>  #include <linux/utsname.h>
> @@ -45,3 +46,4 @@ const char linux_proc_banner[] =
>         " (" LINUX_COMPILER ") %s\n";
>
>  BUILD_SALT;
> +BUILD_LTO_INFO;
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index 24725e50c7b4..98fb2bb024db 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -2191,10 +2191,12 @@ static void add_header(struct buffer *b, struct module *mod)
>          */
>         buf_printf(b, "#define INCLUDE_VERMAGIC\n");
>         buf_printf(b, "#include <linux/build-salt.h>\n");
> +       buf_printf(b, "#include <linux/elfnote-lto.h>\n");
>         buf_printf(b, "#include <linux/vermagic.h>\n");
>         buf_printf(b, "#include <linux/compiler.h>\n");
>         buf_printf(b, "\n");
>         buf_printf(b, "BUILD_SALT;\n");
> +       buf_printf(b, "BUILD_LTO_INFO;\n");
>         buf_printf(b, "\n");
>         buf_printf(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");
>         buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
> --
> 2.30.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN%3DUBNdQiO3g%40mail.gmail.com.
