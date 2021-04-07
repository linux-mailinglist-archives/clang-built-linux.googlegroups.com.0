Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJGBWSBQMGQE6WRWWQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E741356199
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 05:01:58 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id j82sf6015968oih.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 20:01:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617764517; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ip34D+/x8e/uGLWKwxoIQqpWoHED4craEu9w9YvAuFefEO4+srHcnvxMZdlf3hoib0
         brf7EXubFkmBoV8MqTFgINjTNtYzqpqN/xHIO/oXEuf2RGbWpybMIHUEKTTUDw1mvUg1
         yZjsqZ+zu+2QtQWqzHzAZyzXyWQpvgxK6DDRCd6Nd6qIad6U11KC0xVTKXWyKDejPmPK
         QjNX76xc3m7NPc1Pg8drj7DNbhTvpFF8EfdX6bmZBBTuFzvKCO1WfVi8nb9AlKV6ls0G
         v9Wq82dwsSeZUgnASnoQHeJMxnf59f3i4cHY0sNAa/zRqdrH2ooY/4v2VYx5nWUb71Lj
         Q6NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=qpffkfBmooIs/UZ23XTjnDN9LJJOT9KgveVor8XDcMA=;
        b=uAR+lOnqQ3goI9KvxYfjAlgmtsWuh/3oHRBFyC804asuNMtCxbwClE8aSAEwbuLXYK
         jrxyFPR8Niw/08fgG7dNTU0iDFpYXhrSWzH3V+hs23DqBOn7YjU5hfaTIzeNA8xTKZgt
         6LNh11Boc1XBajn3afwuPhno9Vu6b20OH76nExmT99pLvrd0alSnQn61w1WrfeyHOTiE
         nEW1LI2o142yRhM02Z645QrLQ/dVbF0DIBXaIrPkVB9o130lwx15AjZ3mNTwfnvRXoKK
         jx8XHAbf0EY/S3pWpCqgKItm1rBxgOAnbDKHdn8OWplWw4iXLGdF/CSEm4+dDSlI5oqA
         AzjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IhRDrWKu;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qpffkfBmooIs/UZ23XTjnDN9LJJOT9KgveVor8XDcMA=;
        b=mgbsvRA4oCCU2Lk3Y75tkff3AlvXPuQht7j55fQxZJ62+M4jdpRcqYAEwbORIaa4vI
         YqYqJ1QSRglOVX+DAE6x3k7EUZqyjgbCkc9V2xPVawlKY56JyQgfo37T08byELLzauP8
         q9gBc1XVu6jG/t73RyC9CHBSXaHQC6OJbEnAYmKaBaY4FedK9LVnBLkuwYRSppGfYlct
         ASwO8YlVeTlTNF+8/8kvpusHgFTCwrxHe1maGzuk2r13qBzkIA55p6DXuo9dvsieq5K2
         +LaWXEHuEydDsjBFxYch1JZiP1EkDSQVm1vgf8BQ9hyp7fL6u+fqyccnR/qM/CN43AgS
         4mrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qpffkfBmooIs/UZ23XTjnDN9LJJOT9KgveVor8XDcMA=;
        b=kBz1jfrU9RdiCoKGT2LkZidiQa/2fuVQ9cqEvTIoifhhzUkUNWB4MHKC+zgCVJPynl
         fGK6D8LxIXuS0TEEMuoxcYfsVmqRsgMH1duibfvGqXgPbIjQ1/+DJ3e7HhxgYDyujsFJ
         FgDQQA1dqOBYuR0SjZr/HeVfbJYJUBc+Diwstgd7AyxTPj3ctt2YmNja41AhE6kABDE2
         yvAxxIQPqW6MK81Fy+1ZB51qmgp+SdVTHPZhOgcx4F1Yk6ULGAmQK5/4OG+Ri3XnKdBn
         NnVvP8vEUNvt6ICAPF9489IFEFx0f8r0pzyG58e2Z2iMtx92X8Y6nhdF7kcWfD10qzTE
         gwaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qpffkfBmooIs/UZ23XTjnDN9LJJOT9KgveVor8XDcMA=;
        b=q2YhSGB+N0sgB3cK7ftOsoWeLXvwHzRWmufYwyKbzDdgcO37MMfXJBo4gesYodAkJz
         JGhistblxSfraZtyV44v+0wX6b+Swj9HHe7uzsGOCilqPcZNYuVk2zvY+2pbzIAlVOC8
         2oHnoYY/tdxAyQE89J63i+S7YVYLNQgRvbqLmSq4Wmwdr3H1fO6jHCT+5futJbnMwm94
         f8m7uZah3KGL9DuVHl8DAdXs44p3F0M87NUftMFXafpm5UvAWA951yklaRC32o78Q3sZ
         uY4fN6K22HW3USFGw73P8mODa6lwgLYzAW/Ng2iXAkMrvpk6MPUR9gx+FaRP5Otrg9l6
         +AEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CuHmwIJAKG3E8AZs+v7VXGyX0ZoCwZ6o9IcR2TWxByReT61/o
	lRJXMHZPmUvUNTzSTB5u3rQ=
X-Google-Smtp-Source: ABdhPJwGChLP5AyGOj17/OEJ/rapsWBgw38grhkGy3GDNOiXmm5gWnnVJ9HanFf65IS2q6rWPKSrbA==
X-Received: by 2002:a05:6808:57a:: with SMTP id j26mr735089oig.122.1617764516794;
        Tue, 06 Apr 2021 20:01:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3a44:: with SMTP id h65ls179985oia.7.gmail; Tue, 06 Apr
 2021 20:01:56 -0700 (PDT)
X-Received: by 2002:a05:6808:1142:: with SMTP id u2mr720335oiu.124.1617764516395;
        Tue, 06 Apr 2021 20:01:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617764516; cv=none;
        d=google.com; s=arc-20160816;
        b=S85Cn5pgANHNaC6F8UyHz1vkCmgN//QF1taJUScGPVeEal4m8ni9hS5qDTj9vKdlBr
         khub6oM48QY4YuDq53soJcItvERvqzfXvdn0wmBcWNhAlVA8cU70xEKP8xXiXAIG5Xgt
         rEjG4lq5ZSlmJ2+vJJyA/VkwV0phP7Y4Uc50TJIApwK7rJf1eRVbMQCB0iwpZ+hhwBut
         tF3+DU8cIJbQuL1u4DY5Cfwzhm+KOvKvKuE6lV1b7C8ZF5s5PseeVizkWyBQ18sgdv8f
         04m9jL9kxAXR2ji/ESfj+R7icyfGYHg2zNCOGQ5gur0PyppNnobZZNKSa0TYuv2N9u+f
         k/Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wGQ0sxcwnuJFFVwGhbqE7uRx2c2DK/aUefWolAGGvoo=;
        b=F6BeIdJkrDnCRLZeXRwW+MS2FzN6B6H1cVv9h3Cpqs6DDT5xzCM4jPuHkiUpABm8jW
         rw3HKVzbmzFVLBT9SHjKVHNIUQrVStOcjLFA6V55ViPDhiFo6XP11ACurv6lzMCi7QLS
         Qz+1IB2OrGVJezx7dwWMXVcqglJC3dQd2u/I2P+d0Pnhi0xQ7OcZEF89/jOJYMOCOKqz
         dK+ub9Y8wRDTkjrEvAkfe4VZ3YI6eF47Z+VymiitWYZg8B13SIYmyICZm+EAD9vwJsuC
         g8CbkHRL+TlGfAmIVdY18P7v84dcrMKCwjfyf/obK7V8532kZyOtux50RDX+raO4X9qB
         MmwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IhRDrWKu;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id h5si2197554otk.1.2021.04.06.20.01.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 20:01:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Received: by mail-il1-x133.google.com with SMTP id t14so14984160ilu.3
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 20:01:56 -0700 (PDT)
X-Received: by 2002:a05:6e02:b2e:: with SMTP id e14mr1045849ilu.186.1617764516036;
 Tue, 06 Apr 2021 20:01:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210401232723.3571287-1-yhs@fb.com> <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
 <CA+icZUVKCY4UJfSG_sXjZHwfOQZfBZQu0pj1VZ9cXX4e7w0n6g@mail.gmail.com> <c6daf068-ead0-810b-2afa-c4d1c8305893@fb.com>
In-Reply-To: <c6daf068-ead0-810b-2afa-c4d1c8305893@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 7 Apr 2021 05:01:27 +0200
Message-ID: <CA+icZUWYQ8wjOYHYrTX52AbEa3nbXco6ZKdqeMwJaZfHuJ5BhA@mail.gmail.com>
Subject: Re: [PATCH kbuild v4] kbuild: add an elfnote for whether vmlinux is
 built with lto
To: Yonghong Song <yhs@fb.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, bpf <bpf@vger.kernel.org>, kernel-team@fb.com, 
	Bill Wendling <morbo@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IhRDrWKu;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133
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

On Tue, Apr 6, 2021 at 6:13 PM Yonghong Song <yhs@fb.com> wrote:
>
>
> Masahiro and Michal,
>
> Friendly ping. Any comments on this patch?
>
> The addition LTO .notes information emitted by kernel is used by pahole
> in the following patch:
>     https://lore.kernel.org/bpf/20210401025825.2254746-1-yhs@fb.com/
>     (dwarf_loader: check .notes section for lto build info)
>

Hi Yonghong,

the above pahole patch has this define and comment:

-static bool cus__merging_cu(Dwarf *dw)
+/* Match the define in linux:include/linux/elfnote.h */
+#define LINUX_ELFNOTE_BUILD_LTO 0x101

...and does not fit with the define and comment in this kernel patch:

+#include <linux/elfnote.h>
+
+#define LINUX_ELFNOTE_LTO_INFO 0x101

Thanks.

- Sedat -


> Thanks,
>
> Yonghong
>
> On 4/6/21 12:05 AM, Sedat Dilek wrote:
> > On Fri, Apr 2, 2021 at 8:07 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> >>
> >> On Thu, Apr 1, 2021 at 4:27 PM Yonghong Song <yhs@fb.com> wrote:
> >>>
> >>> Currently, clang LTO built vmlinux won't work with pahole.
> >>> LTO introduced cross-cu dwarf tag references and broke
> >>> current pahole model which handles one cu as a time.
> >>> The solution is to merge all cu's as one pahole cu as in [1].
> >>> We would like to do this merging only if cross-cu dwarf
> >>> references happens. The LTO build mode is a pretty good
> >>> indication for that.
> >>>
> >>> In earlier version of this patch ([2]), clang flag
> >>> -grecord-gcc-switches is proposed to add to compilation flags
> >>> so pahole could detect "-flto" and then merging cu's.
> >>> This will increate the binary size of 1% without LTO though.
> >>>
> >>> Arnaldo suggested to use a note to indicate the vmlinux
> >>> is built with LTO. Such a cheap way to get whether the vmlinux
> >>> is built with LTO or not helps pahole but is also useful
> >>> for tracing as LTO may inline/delete/demote global functions,
> >>> promote static functions, etc.
> >>>
> >>> So this patch added an elfnote with a new type LINUX_ELFNOTE_LTO_INFO.
> >>> The owner of the note is "Linux".
> >>>
> >>> With gcc 8.4.1 and clang trunk, without LTO, I got
> >>>    $ readelf -n vmlinux
> >>>    Displaying notes found in: .notes
> >>>      Owner                Data size        Description
> >>>    ...
> >>>      Linux                0x00000004       func
> >>>       description data: 00 00 00 00
> >>>    ...
> >>> With "readelf -x ".notes" vmlinux", I can verify the above "func"
> >>> with type code 0x101.
> >>>
> >>> With clang thin-LTO, I got the same as above except the following:
> >>>       description data: 01 00 00 00
> >>> which indicates the vmlinux is built with LTO.
> >>>
> >>>    [1] https://lore.kernel.org/bpf/20210325065316.3121287-1-yhs@fb.com/
> >>>    [2] https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> >>>
> >>> Suggested-by: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
> >>> Signed-off-by: Yonghong Song <yhs@fb.com>
> >>
> >> LGTM thanks Yonghong!
> >> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >>
> >
> > Thanks for the patch.
> >
> > Feel free to add:
> >
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v12.0.0-rc4 (x86-64)
> >
> > As a note for the pahole side:
> > Recent patches require an adaptation of the define and its comment.
> >
> > 1. LINUX_ELFNOTE_BUILD_LTO -> LINUX_ELFNOTE_LTO_INFO
> > 2. include/linux/elfnote.h -> include/linux/elfnote-lto.h
> >
> > - Sedat -
> >
> >>> ---
> >>>   include/linux/elfnote-lto.h | 14 ++++++++++++++
> >>>   init/version.c              |  2 ++
> >>>   scripts/mod/modpost.c       |  2 ++
> >>>   3 files changed, 18 insertions(+)
> >>>   create mode 100644 include/linux/elfnote-lto.h
> >>>
> >>> Changelogs:
> >>>    v3 -> v4:
> >>>      . put new lto note in its own header file similar to
> >>>        build-salt.h. (Nick)
> >>>    v2 -> v3:
> >>>      . abandoned the approach of adding -grecord-gcc-switches,
> >>>        instead create a note to indicate whether it is a lto build
> >>>        or not. The note definition is in compiler.h. (Arnaldo)
> >>>    v1 -> v2:
> >>>      . limited to add -grecord-gcc-switches for LTO_CLANG
> >>>        instead of all clang build
> >>>
> >>> diff --git a/include/linux/elfnote-lto.h b/include/linux/elfnote-lto.h
> >>> new file mode 100644
> >>> index 000000000000..d4635a3ecc4f
> >>> --- /dev/null
> >>> +++ b/include/linux/elfnote-lto.h
> >>> @@ -0,0 +1,14 @@
> >>> +#ifndef __ELFNOTE_LTO_H
> >>> +#define __ELFNOTE_LTO_H
> >>> +
> >>> +#include <linux/elfnote.h>
> >>> +
> >>> +#define LINUX_ELFNOTE_LTO_INFO 0x101
> >>> +
> >>> +#ifdef CONFIG_LTO
> >>> +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 1)
> >>> +#else
> >>> +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 0)
> >>> +#endif
> >>> +
> >>> +#endif /* __ELFNOTE_LTO_H */
> >>> diff --git a/init/version.c b/init/version.c
> >>> index 92afc782b043..1a356f5493e8 100644
> >>> --- a/init/version.c
> >>> +++ b/init/version.c
> >>> @@ -9,6 +9,7 @@
> >>>
> >>>   #include <generated/compile.h>
> >>>   #include <linux/build-salt.h>
> >>> +#include <linux/elfnote-lto.h>
> >>>   #include <linux/export.h>
> >>>   #include <linux/uts.h>
> >>>   #include <linux/utsname.h>
> >>> @@ -45,3 +46,4 @@ const char linux_proc_banner[] =
> >>>          " (" LINUX_COMPILER ") %s\n";
> >>>
> >>>   BUILD_SALT;
> >>> +BUILD_LTO_INFO;
> >>> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> >>> index 24725e50c7b4..98fb2bb024db 100644
> >>> --- a/scripts/mod/modpost.c
> >>> +++ b/scripts/mod/modpost.c
> >>> @@ -2191,10 +2191,12 @@ static void add_header(struct buffer *b, struct module *mod)
> >>>           */
> >>>          buf_printf(b, "#define INCLUDE_VERMAGIC\n");
> >>>          buf_printf(b, "#include <linux/build-salt.h>\n");
> >>> +       buf_printf(b, "#include <linux/elfnote-lto.h>\n");
> >>>          buf_printf(b, "#include <linux/vermagic.h>\n");
> >>>          buf_printf(b, "#include <linux/compiler.h>\n");
> >>>          buf_printf(b, "\n");
> >>>          buf_printf(b, "BUILD_SALT;\n");
> >>> +       buf_printf(b, "BUILD_LTO_INFO;\n");
> >>>          buf_printf(b, "\n");
> >>>          buf_printf(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");
> >>>          buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
> >>> --
> >>> 2.30.2
> >>>
> >>
> >>
> >> --
> >> Thanks,
> >> ~Nick Desaulniers
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com .

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWYQ8wjOYHYrTX52AbEa3nbXco6ZKdqeMwJaZfHuJ5BhA%40mail.gmail.com.
