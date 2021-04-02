Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7HNTWBQMGQE2RLJ27Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id D484A352FFC
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 21:56:45 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id w8sf2790966pgo.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 12:56:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617393404; cv=pass;
        d=google.com; s=arc-20160816;
        b=OWjM4Xrgak1x0tx7oCQ5rtEAzQzhSTB5ZKQRBQMT2wINAxiNvTNdgTdqLX4f/VL0EZ
         AH4gHp37cg0udCOKfSfH1LldG3DFLsWRc1gA/aZwtnXMmX/vTsWuX7ChI9L/2YKJGeIs
         Vq9eLH1Rcde81qou9Ucmbt7SHZm41nCBYmNj+RFgdfL4SnFHj8nqsPK6i1ccs90yJG9l
         Tn5q/aHadqZtGqXrXpvs30PdERQQ7ZXileBYgTRwI4czNnhjY/updpDm8tnb5vURZcEw
         7IuY6rApHZ1cw4Bj5S/fD/QkUmSfRCBdoV0y/6MMPPN1fTUTRAY45OSLB98E1Cq6R9e/
         +EXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=FBaCWKX7727oSQF/6HJ0iagdmMz1UpD2Ax4HoE1awno=;
        b=sMrS/mpU4ULlQwXZfIAJ1acZywcybobzMaf23968XH3df7OlV7vQHK86vQJztWnJcZ
         9xG5GT3AOCTOyhszsWvZKl5He8volkNsze+M+vcm5rIaWZIR74aSxGiuE3goWBeynE0/
         buYc1Nj9bVQYt16T8nCdxxYVqfs/73/9Cm/mdW0Dp6yQDmrGZcQmxIZP8Itbjqu2R6DU
         eK/XjGAFydNlLQjD5unoZFQD5pHSUzofhyczaEVKFB2OdxeiaCwqc1RkDJeRBj6uxCOU
         2w0QSLBIQTYD7Spuwy7f+nlo8Bz6PYVZyvv9VySoPbHURVdFxLGHBN44KusgxmgbWKjd
         yEKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FAN5wdPx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FBaCWKX7727oSQF/6HJ0iagdmMz1UpD2Ax4HoE1awno=;
        b=W69lCLuhorhfiwZBwE4dLihzxirWkNYXBVGyFeXOZQLCCYDx86LHLM9q6pRSVY61JJ
         mt/hLx1nxbnakLA9qInCNz2SsAegq3jz3hDBXWfO6x6yUN/rFRiLH3udxXzm1cDeHIB9
         p4usQhFFDqPTBu5UzMq21EScDhvagQCEpjx4jw4R1uqa8IKnsbchm1qAj5ec45zOJoyk
         EezfSZOobeAEji7xnZEMHenmXuALMGvW0s5hwKC4WHZ8yPNLEMQsA8jxHZKUnq6wQwMy
         qqzmx4AJiVctHappfp3SDq/CvH0/ZFlxpH9xs6DjQ1InN1heQcMCI2UFvRJqtr9SF52e
         mrMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FBaCWKX7727oSQF/6HJ0iagdmMz1UpD2Ax4HoE1awno=;
        b=YyyMofJ/VWi3HdPHhQKl/KYO25Y0wZKCoh8UILAZpufSZa+0p72x3Gcb5p6mDMAq8V
         PggkW3D6ydDalDMC9NKVJKrfZYiOA8xKbprti1ER2L7pcFI2DicOxWHIWOJ6SQGnbszI
         o/Ia3SdE5SLqGaoHKUcqqyK1sYrlfHMQvs8ljTsm7YA6UQzF6YCt7ajdQ5tq6SW+yPXM
         U+Ee/nff5QSBCqnqRXt4JFWomKK2LDhLN783mfgZ3Dym6OxklnEK1FOb5ESEAONu0n2u
         4PnADmXXmLa3hJuIYFhtM4LZPo87hOavkJwd6jogrZBjwfdPnNYd4t+D6iqInE8Ag3jY
         +O4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FBaCWKX7727oSQF/6HJ0iagdmMz1UpD2Ax4HoE1awno=;
        b=ASI58czeGVo38uInSJdIrC9EbeFK/4hiSvbbln2LT3qLKaNbmd3sBifucRJ0zaUK9G
         A/ReQNFfYwDWAW4je3xUxu3easpG0dJSk/sDxhULvDFSBfsmy6Hx2Ih8FLNjs3Lz2ViW
         eWw44oUDw1xhUpCYqOd96x9J3cP2iXeXFHIgF551iO1Wc1hlBRVVJLRZdaIvJqXkAyV6
         wITgmK0quMTFSCx9FD8RFzgkU8vNV9vZhF3px8UdPZ7VAVidd1MF1Me1I40UMVS+iCzs
         sWp0KOUpSRSkWSuH6CpYJctaeF0pPmagzGvqig67DtyJj3qyr3JkDFMqjVDR3b/4qMO9
         8iMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CBMMN5BcEh5V2lwGd+KF53k3UFNWfZbj0nW+OcQtukT/X9czH
	BpwYE+94fEhdUFtYeZcc98U=
X-Google-Smtp-Source: ABdhPJyvKTwqDQi1NI+wKEBsULmlYwaq0+SDX/xTx9vcMiAAbpdBnkgDrblGSm3N3TbMWuV5V+FoWA==
X-Received: by 2002:a17:90a:fa0b:: with SMTP id cm11mr15856610pjb.140.1617393404343;
        Fri, 02 Apr 2021 12:56:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9d0d:: with SMTP id k13ls4015187pfp.5.gmail; Fri, 02 Apr
 2021 12:56:43 -0700 (PDT)
X-Received: by 2002:a63:1149:: with SMTP id 9mr12951700pgr.169.1617393403683;
        Fri, 02 Apr 2021 12:56:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617393403; cv=none;
        d=google.com; s=arc-20160816;
        b=XXG7EbMjypRzYacj3Z3xZszM73Xqy+pEJ2l0knpDNI0SYBTgd1KOAH9/dcNoY77ITB
         zID80oupC+xoA/Ba8KNr7BXMxOygvsExgggJMkgmJEuZN5HPayklxm7BEdJzw10c38Za
         +a9JXH8G6798TW3tsuMfYiOVJYEbt9/X11TLZuTSMgR5/l6YUUEvL6UGwDHdjBUwUCJp
         RSjyG6DYp+VmiY1WLiIUX8ObD1miPWjL5uDQuM1oiWkHqySqIGU9tntk/NMIqtUNQ/Mj
         u3lrdxvklKAgeVxVlNSUpBcYc6NUqKmqiMwJzdjw1FBCz8TCPMWSJfo3YxdvWft56HiG
         TPgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SEsb7vh+CZcEKmk1NVRcwdvZKX+CQxqLVH4FqSzjuYY=;
        b=ZWbP5NEhIegRkMV9lQXFu8J4PXkJK1xSARbO8g6/dEzYkjos7Y/smMrSuisEaIIg/7
         xrNenlRROqzS7SIsaxgyOFScnNpPwYvQOcKWqfPvPsb/wsSiAJVnsUvagSFNUKcExhFb
         pNyQWKwYsZsGoZ/fTaHLEUKLlL6qCQzbdHdRKL2PBZTv/EAkrWctn8NwsjY4NvYONFl4
         pwaig/piQFvy9if7Y+bBeX4N/HNi7esJONGz9Vb4wx+3G2vH0mq3Q9zMlyjmQhQf/LL8
         l4PUUQ1KfrauVy9wOR5cki/Dmwg5RyFNSpTnVXZSX1XZfXVEw3xLx9QObHlz8QjNXrTV
         Rm4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FAN5wdPx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com. [2607:f8b0:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id j6si497559pjg.0.2021.04.02.12.56.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 12:56:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) client-ip=2607:f8b0:4864:20::12b;
Received: by mail-il1-x12b.google.com with SMTP id p8so1084181ilm.13
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 12:56:43 -0700 (PDT)
X-Received: by 2002:a92:d78f:: with SMTP id d15mr11976407iln.112.1617393403125;
 Fri, 02 Apr 2021 12:56:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210401232723.3571287-1-yhs@fb.com> <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
 <CA+icZUVkS4epkNoktGDGGEQcOY8CNcRsAHbjK=Z-9uLUgqiNfw@mail.gmail.com> <CA+icZUWskBYk9fFzJ-6=P9bRA3Fo-_+tQNO0HFOOuoA3S26oRA@mail.gmail.com>
In-Reply-To: <CA+icZUWskBYk9fFzJ-6=P9bRA3Fo-_+tQNO0HFOOuoA3S26oRA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 2 Apr 2021 21:56:06 +0200
Message-ID: <CA+icZUUJ73vNAAUToauSLdHWcwiA_fK64b4AK0mAp3gcbWrkUQ@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=FAN5wdPx;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b
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

On Fri, Apr 2, 2021 at 9:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Apr 2, 2021 at 8:31 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Apr 2, 2021 at 8:07 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Thu, Apr 1, 2021 at 4:27 PM Yonghong Song <yhs@fb.com> wrote:
> > > >
> > > > Currently, clang LTO built vmlinux won't work with pahole.
> > > > LTO introduced cross-cu dwarf tag references and broke
> > > > current pahole model which handles one cu as a time.
> > > > The solution is to merge all cu's as one pahole cu as in [1].
> > > > We would like to do this merging only if cross-cu dwarf
> > > > references happens. The LTO build mode is a pretty good
> > > > indication for that.
> > > >
> > > > In earlier version of this patch ([2]), clang flag
> > > > -grecord-gcc-switches is proposed to add to compilation flags
> > > > so pahole could detect "-flto" and then merging cu's.
> > > > This will increate the binary size of 1% without LTO though.
> > > >
> > > > Arnaldo suggested to use a note to indicate the vmlinux
> > > > is built with LTO. Such a cheap way to get whether the vmlinux
> > > > is built with LTO or not helps pahole but is also useful
> > > > for tracing as LTO may inline/delete/demote global functions,
> > > > promote static functions, etc.
> > > >
> > > > So this patch added an elfnote with a new type LINUX_ELFNOTE_LTO_INFO.
> > > > The owner of the note is "Linux".
> > > >
> > > > With gcc 8.4.1 and clang trunk, without LTO, I got
> > > >   $ readelf -n vmlinux
> > > >   Displaying notes found in: .notes
> > > >     Owner                Data size        Description
> > > >   ...
> > > >     Linux                0x00000004       func
> > > >      description data: 00 00 00 00
> > > >   ...
> > > > With "readelf -x ".notes" vmlinux", I can verify the above "func"
> > > > with type code 0x101.
> > > >
> > > > With clang thin-LTO, I got the same as above except the following:
> > > >      description data: 01 00 00 00
> > > > which indicates the vmlinux is built with LTO.
> > > >
> > > >   [1] https://lore.kernel.org/bpf/20210325065316.3121287-1-yhs@fb.com/
> > > >   [2] https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> > > >
> > > > Suggested-by: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
> > > > Signed-off-by: Yonghong Song <yhs@fb.com>
> > >
> > > LGTM thanks Yonghong!
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > > > ---
> > > >  include/linux/elfnote-lto.h | 14 ++++++++++++++
> > > >  init/version.c              |  2 ++
> > > >  scripts/mod/modpost.c       |  2 ++
> > > >  3 files changed, 18 insertions(+)
> > > >  create mode 100644 include/linux/elfnote-lto.h
> > > >
> > > > Changelogs:
> > > >   v3 -> v4:
> > > >     . put new lto note in its own header file similar to
> > > >       build-salt.h. (Nick)
> >
> > That is a bit smarter (and smaller) than v3.
> > Queued up and building a new clang-lto kernel...
> > Will report later.
> >
>
> link="https://lore.kernel.org/bpf/3f29403d-4942-e362-c98a-4e2d20a3db88@fb.com/T/#t"
> b4 -d am $link
>
> Needs this fix for the pahole side?
>
> $ git diff
> diff --git a/dwarf_loader.c b/dwarf_loader.c
> index 026d13789ff9..244816042c88 100644
> --- a/dwarf_loader.c
> +++ b/dwarf_loader.c
> @@ -2501,8 +2501,8 @@ static int cus__load_debug_types(struct cus
> *cus, struct conf_load *conf,
>        return 0;
> }
>
> -/* Match the define in linux:include/linux/elfnote.h */
> -#define LINUX_ELFNOTE_BUILD_LTO                0x101
> +/* Match the define in linux:include/linux/elfnote-lto.h */
> +#define LINUX_ELFNOTE_LTO_INFO         0x101
>
> static bool cus__merging_cu(Dwarf *dw, Elf *elf)
> {
> @@ -2520,7 +2520,7 @@ static bool cus__merging_cu(Dwarf *dw, Elf *elf)
>                        size_t name_off, desc_off, offset = 0;
>                        GElf_Nhdr hdr;
>                        while ((offset = gelf_getnote(data, offset,
> &hdr, &name_off, &desc_off)) != 0) {
> -                               if (hdr.n_type != LINUX_ELFNOTE_BUILD_LTO)
> +                               if (hdr.n_type != LINUX_ELFNOTE_LTO_INFO)
>                                        continue;
>
>                                /* owner is Linux */
>

I applied above diff against [1] which includes v3:

dwarf_loader: Handle subprogram ret type with abstract_origin properly
dwarf_loader: Check .notes section for LTO build info
dwarf_loader: Check .debug_abbrev for cross-CU references

- Sedat -

[1] https://git.kernel.org/pub/scm/devel/pahole/pahole.git/log/?h=tmp.master

>
> >
> > > >   v2 -> v3:
> > > >     . abandoned the approach of adding -grecord-gcc-switches,
> > > >       instead create a note to indicate whether it is a lto build
> > > >       or not. The note definition is in compiler.h. (Arnaldo)
> > > >   v1 -> v2:
> > > >     . limited to add -grecord-gcc-switches for LTO_CLANG
> > > >       instead of all clang build
> > > >
> > > > diff --git a/include/linux/elfnote-lto.h b/include/linux/elfnote-lto.h
> > > > new file mode 100644
> > > > index 000000000000..d4635a3ecc4f
> > > > --- /dev/null
> > > > +++ b/include/linux/elfnote-lto.h
> > > > @@ -0,0 +1,14 @@
> > > > +#ifndef __ELFNOTE_LTO_H
> > > > +#define __ELFNOTE_LTO_H
> > > > +
> > > > +#include <linux/elfnote.h>
> > > > +
> > > > +#define LINUX_ELFNOTE_LTO_INFO 0x101
> > > > +
> > > > +#ifdef CONFIG_LTO
> > > > +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 1)
> > > > +#else
> > > > +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 0)
> > > > +#endif
> > > > +
> > > > +#endif /* __ELFNOTE_LTO_H */
> > > > diff --git a/init/version.c b/init/version.c
> > > > index 92afc782b043..1a356f5493e8 100644
> > > > --- a/init/version.c
> > > > +++ b/init/version.c
> > > > @@ -9,6 +9,7 @@
> > > >
> > > >  #include <generated/compile.h>
> > > >  #include <linux/build-salt.h>
> > > > +#include <linux/elfnote-lto.h>
> > > >  #include <linux/export.h>
> > > >  #include <linux/uts.h>
> > > >  #include <linux/utsname.h>
> > > > @@ -45,3 +46,4 @@ const char linux_proc_banner[] =
> > > >         " (" LINUX_COMPILER ") %s\n";
> > > >
> > > >  BUILD_SALT;
> > > > +BUILD_LTO_INFO;
> > > > diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> > > > index 24725e50c7b4..98fb2bb024db 100644
> > > > --- a/scripts/mod/modpost.c
> > > > +++ b/scripts/mod/modpost.c
> > > > @@ -2191,10 +2191,12 @@ static void add_header(struct buffer *b, struct module *mod)
> > > >          */
> > > >         buf_printf(b, "#define INCLUDE_VERMAGIC\n");
> > > >         buf_printf(b, "#include <linux/build-salt.h>\n");
> > > > +       buf_printf(b, "#include <linux/elfnote-lto.h>\n");
> > > >         buf_printf(b, "#include <linux/vermagic.h>\n");
> > > >         buf_printf(b, "#include <linux/compiler.h>\n");
> > > >         buf_printf(b, "\n");
> > > >         buf_printf(b, "BUILD_SALT;\n");
> > > > +       buf_printf(b, "BUILD_LTO_INFO;\n");
> > > >         buf_printf(b, "\n");
> > > >         buf_printf(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");
> > > >         buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
> > > > --
> > > > 2.30.2
> > > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN%3DUBNdQiO3g%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUJ73vNAAUToauSLdHWcwiA_fK64b4AK0mAp3gcbWrkUQ%40mail.gmail.com.
