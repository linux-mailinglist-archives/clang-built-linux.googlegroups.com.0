Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBP4QWCBQMGQEMMC3Z4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A68EE354D46
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 09:05:36 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id k188sf12049636qkb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 00:05:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617692735; cv=pass;
        d=google.com; s=arc-20160816;
        b=CF+VhFe+bvQe8Lo8kf6/iB3ozt/+dPxOtJExGnNyD28dEU54QCmdtJaYxgkkppHMeH
         pZtCT/pd0/lzuDbcMxioX6g3WB2ZCHPzTylwDtAfRLamPTndIKS11Jlyjtasrp8CUY7z
         13HTCpdu5Htq0E3rshgZ+aHdA6SNRAICDjbyaPHKjoeVuaNeHxB/faBlCaqqSzLkGP1g
         HU76mb6skE4Z6lf88/CzBYxZnaAOog81OBVjOp67/BVX8sgawxWZDeh7ehNxWYg54w0K
         tBgCmtEjT+bl6ednOFluSxx9yHE6YAQeZa1p/aOciBvs5dWVF3TR7dHJtiJI86xHq03K
         Hdng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DlwyeHfLzNiF2Uu1z+ac9E1uh9nGxi+wd61TnXZgfl8=;
        b=laVieH02FBDckl35lfVasyHg/Q+8UKpb8HTdEgmTI8BzlUgc/2KyK0V2mQP7ECZUKT
         v20uZXa4cyHwnLM747/1yeHn6gZxy7L3woouznTKG1j0j3I7JSb4EZppt5DqVivZRJev
         e8y+ozJv0an7w9VE7lHpgQtVoeq9dRuqqfIGISRhuAFtYNFtDLHuLUgjArlFY08UZsoX
         qLCWk8D4mk/3fNDli3WprMKMxyhANheGanuB5CaynIafylTqAKb59HS8I1eTgF8VyShq
         qTSEcLoGnePtlK2eI8n13WPMRx717wVkE6i/K6f6yiEaGbm7TNwvAIlmdqnpcsXqLFBL
         yRXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BlvCBLBt;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DlwyeHfLzNiF2Uu1z+ac9E1uh9nGxi+wd61TnXZgfl8=;
        b=INCekGB2PerAJCJ5Fo6NWwEesrYQQRj3WTXO8QQyDYObcnsiUwZ3cLtqMu83hs8+nd
         ndlN391ULyyHjP0crIV3N+kHSm5pxi/KGnbACepH6HEmdqAR1a4GdbGRE57aAp9JWafJ
         rJpEC2AaQ5SkIhlAwAPP08Hh+EPtNEGleM6FancAmtZpfHCL4yi6se+HN7Z8NBKwdFW6
         QcQiWKI9E/313cPjvx0pDDQtUcI0P/iX2qNT0HCiq+enW2Xr4R26pQT7Chh6txRlUq6v
         eXmrCPUTwqXSAB9wymvgxZ6gzVRHHAg08m6JJ3pCroHTtwopH5199wftv+NKHkWzMWqj
         ii6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DlwyeHfLzNiF2Uu1z+ac9E1uh9nGxi+wd61TnXZgfl8=;
        b=p+tta2X/kGdWt5FieKKfs584VY0wo9xBKiBk1sZRLyHjiZypEAUX9APIKVWhqqv/5b
         InGfEiFVR2dA9y4SpCgvCF7J/GgpPGsXmI4wejQuPc10nkppgm7iVp1D8LFkVVRsU47X
         gfQTPMDG5b35/0xdQ3mO3AV+7pH4EKN3aMdrNiPIrvlRkqj3T/bYOyvJGEjngm3iTXf2
         64A9A1PFr7b53UO/13axTrXUOs48EHo8ADwic3MOyT5ZfgV2GexA21XwMhtJjbatpSsv
         YXwMyRNcuNB2eAvovLPilquri/v39j+f8xN5CtW+Y3xQc1kJOh/3WimPDeUwiFJrOK0M
         OUOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DlwyeHfLzNiF2Uu1z+ac9E1uh9nGxi+wd61TnXZgfl8=;
        b=WXS3HRA0k8DX2IVrOJF7u06gx8mRk+pku90sWdhhy2VXriwMWhgAQrkXC1gbmSxMO1
         Q9BKM5FNOpbX0bwslq5kKuSIw+QgjRIG1GYRmA4DYMIlWEEJjVH9J/fIghhq88VEKlhI
         KbqN2WWiWQzpUP/oW67SVy5+otLZGPU8KOAe0GW+PR3UuWjFbk4DMKthURrbKJ/ZMKJC
         kBBCTZSdyP8cBpZR+ZxuoyZdb34QlqhY/y6HpCMVrzKnjrbzl8KrSnILeeUDl+n10uJ1
         6tdTfa0ktMPLRrwtiNJM1viXEZJGQELuuxngeJVPBMqcZJcaiuYwjvybWIA7kUsUp0PA
         uexw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HzOnLrpDBJZY0sDhCf1GKhdwtYjRjJWvkVSBb++tTX9a6/cqV
	N6HprGJtCLZACl0MP78YOsA=
X-Google-Smtp-Source: ABdhPJyCdtAja+ReKkssqfxjyEgLjCMzu9KMQdGp36HgvOvXLUKTmB8vjaKbSC0ARFNU1/mIwpIgPQ==
X-Received: by 2002:a05:620a:16b0:: with SMTP id s16mr27777491qkj.115.1617692735562;
        Tue, 06 Apr 2021 00:05:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a050:: with SMTP id j77ls68999qke.10.gmail; Tue, 06 Apr
 2021 00:05:35 -0700 (PDT)
X-Received: by 2002:a37:6592:: with SMTP id z140mr28522092qkb.464.1617692735104;
        Tue, 06 Apr 2021 00:05:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617692735; cv=none;
        d=google.com; s=arc-20160816;
        b=FUIhKeitptAePbgaD81EhsS0p/hqbShNxXugNCIQ/IMpqWGUQJ3jksAQYc35JFuJjk
         LMdnPOQctRbctG+A1t+wXHyCO122R5C05utDaPvPHVQvGRXx/Ab8JxAO6y7aQ7BDMl5y
         dKAWrh9UoalAiKwG4Tiypp1l4eO7wk/QMdhxcoLsg9eErma88wqd1Qu3zLZuztgW9ieD
         5f0LtIZLiOyF6bDDILgYzI0JTZwp16IeiXRkQzoJjZktTzxmSlTC8XKnRK4mhIN623kT
         hgKlVEtK+h9g6g23DOfZGpHaHX2NArhLEecxX0A4LiRLVmPcX79NRpggdDn018sJhiEu
         3pyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Sgx+VqVjNYgnD3uKhExQfK4B3VNxG9vWI6kx/ZiAdMQ=;
        b=Qc6yrWH/p+Iblf7syUySlIl8jF5lz9PmLT9pMFikf60Jp/R3dYDA60YemmT+TZFf7d
         bxk3UKs27qDc6Xwk2xDhNoIyShOt5aAW/hLwVCjyrrrz/vl7LSg5LGTrdCiDB1kG8bbW
         KSoYwtBPHw1HlSms6jnm3i4KVzGmtX4v0lLNsnUip4boPc8WGErn2aA+QLNN+v5HTmN8
         74y8gH5n8QuipZQQ229m45SFnZ1lJi6asHsjRk+UnlKvCqAoyHU0RyRtI5MT9+qaTolk
         nOh5F6VnOUw2OTQHcpf4HK7xz3m27TmAHBDP9t03foZokoOqQxYEF5/TTHLqnUepCosi
         tbEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BlvCBLBt;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id k1si3389831qtg.2.2021.04.06.00.05.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 00:05:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id z9so12195997ilb.4
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 00:05:35 -0700 (PDT)
X-Received: by 2002:a05:6e02:b2e:: with SMTP id e14mr692933ilu.186.1617692734571;
 Tue, 06 Apr 2021 00:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210401232723.3571287-1-yhs@fb.com> <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
In-Reply-To: <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 6 Apr 2021 09:05:02 +0200
Message-ID: <CA+icZUVKCY4UJfSG_sXjZHwfOQZfBZQu0pj1VZ9cXX4e7w0n6g@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=BlvCBLBt;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::136
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

Thanks for the patch.

Feel free to add:

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v12.0.0-rc4 (x86-64)

As a note for the pahole side:
Recent patches require an adaptation of the define and its comment.

1. LINUX_ELFNOTE_BUILD_LTO -> LINUX_ELFNOTE_LTO_INFO
2. include/linux/elfnote.h -> include/linux/elfnote-lto.h

- Sedat -

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVKCY4UJfSG_sXjZHwfOQZfBZQu0pj1VZ9cXX4e7w0n6g%40mail.gmail.com.
