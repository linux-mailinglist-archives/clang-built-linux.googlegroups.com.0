Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB6HFTWBQMGQE53N7XTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D184352FDB
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 21:39:37 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id g62sf6280212qkf.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 12:39:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617392376; cv=pass;
        d=google.com; s=arc-20160816;
        b=CTrB6/1nlIkvn3yylHTFGuUP9jt9UZ0wX/8fJ85UVERc1nTaSh/HsGxyJ788Wmmtw0
         hwAw47x6YZplm+xVZS6+HsBra7lV5FCn6sPmTBzP7ePFc9Jb4P0GjEp20kqEhcZB8mYt
         qpWRrUb3qPaWuwX2lL5RT+KULzeSYoK/QTWFrVWqAg21XJADCcUKitkJIUl0vzwzMweu
         Y2r0cGrjINUyfulibM5G3F8S3RfMNGIvgTkcvmHtAF7/k4enSJoevrU8K24/PArQGEgV
         pQ3OCgHu86tpqXOyrknyxUCWTOygkdUFuJoCl8BOCK9E/YFG2s+618IRjQ4eXlfEr0rN
         2+1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=FLbwl7zwb5GTgc+pw4+p0rtGbsVISKrI/KRBs47KLBg=;
        b=l6WjjnPh9TXTsgKoR0L75kyVUwlfygxY0SjQMac2rxmd5/Zxty60YXerfW2q5fqaL6
         B609mPcSmgKj+ZLNPf0344kJZDAD46wXZtzDEDYLntXBtS28ROUMEBxXPBWpuWa355iY
         7js7ZlJCFTOcbFfkWBI6ofUonGRhPh2Zth7BKCc0tm+rEkOIDb6kF87JuoTYGPWLtf7p
         1k+jcThHYNPpzhcrmNKDLb693QkprmfTgMK8lMBVyaUsd15nZc2NVbi5af2FzIjKsmNw
         Z5ppWwK2JMe3+y4k/iQWd9j04OnC3OGpNu7Z0TOTD7aPfnQVHprDXACDvfCaeZgNQ6tc
         BKtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SeA7WEOI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FLbwl7zwb5GTgc+pw4+p0rtGbsVISKrI/KRBs47KLBg=;
        b=o5IwayogqWPMKTn35j8i20H7Qg6HQy/33DcnPGbNxre0NGxSxQYwywgPc2IU7GpShm
         PK5dsfK11r3jaIoss691u5uBlCLec1f5/bEOxiNXOXMT+xvMvVO/Hc0Vv6Vj06gWtKyn
         7XAOw2cbeH/UmsDUTCe0nQi7galKJY8AuLdrJWkwZmaqxRTRJRyBGyWT1KgZqy4z+vyu
         DC6Itj75bXiLTvL6hZSAaIcQQTe786/J3dvsUWDbRJE2VhI4BmCdr0rCzUDmI3Wa6g/y
         GjFOPYwozH9GmEvfY5iYdCxeyLGmi8XzwObFxXL5GAgEbhp1gw3eM8jYoh9uiuxYxts9
         PVmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FLbwl7zwb5GTgc+pw4+p0rtGbsVISKrI/KRBs47KLBg=;
        b=OfSZonnnmYEVC0FA3us1zs/VrlQpnBydE9DuGF1KP99klxd2GbbPDD+HTFfHiwGiLj
         sKQ6awnLC7DPce6MpLUo4VXsiCOfY11F1MCAi2fZDSLP9mkF/bh0rtt1So29U2ub9v1z
         m5tKC61C0cZubOoZrH6WGeQfmB+SVWBd2Io/RWM0Ole8C1pkivP0WbJyXkKWH8a241fX
         5iIFmhy3NF6xuINjcpcFoAKYia/oADEjymrspVCuNoDRNtCRNloMAQBisb0dS/8hxy5x
         H9U6ERhNHPcUM7lNo8kNmfnbK8BGITApI/tgGx1ecWyr9fgiitbNFFlmx6W2/QRGR/z2
         vtEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FLbwl7zwb5GTgc+pw4+p0rtGbsVISKrI/KRBs47KLBg=;
        b=ufxZzzMH/lRHnrWQgodUTpIu7LtH6k8Bdlo64mjaPDUHrTtoovAbro7CH0ZfSV8Zzl
         OHloLqPYqguLzqGbV/C1lEKzAOT26gLlE+NNKSTvUPX9fbGEQueEB/6zDuO393HF9iAl
         V4HvablhEFYEwhfBtl9tQN1lrFQ6PNSlJEM89Eca5SNdj3q1S7MKVj7eOcqZTnOyBi1o
         qhAo0e7hgQxmL252RFtID3XPPNtoLXLOQy3HfV+3M4YF+b4fOW/k5uv4132hTAc55r7C
         uBafAKT7n8ENQGgvVNFK8izsAzg8y1vToQxOdybZC1y0+1nhkR9legJt8dxKmvfXmchq
         I9Fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QF0kRIiqW4sfD2OTL9TS4NH2HI+t3DEXDiQ95FUUyX7jAnmCc
	WpWU0yCXunHa2mtSRe6KrWU=
X-Google-Smtp-Source: ABdhPJykKh2XbxmuMBblFQzo4FmaW7Fm1FewK07Kn+aJdombiQwJg853D/iTZYPB1Gb4x3cphl0lHA==
X-Received: by 2002:a0c:df0a:: with SMTP id g10mr14299742qvl.57.1617392376424;
        Fri, 02 Apr 2021 12:39:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4e89:: with SMTP id dy9ls2640801qvb.10.gmail; Fri, 02
 Apr 2021 12:39:35 -0700 (PDT)
X-Received: by 2002:a05:6214:dcf:: with SMTP id 15mr14109825qvt.28.1617392375883;
        Fri, 02 Apr 2021 12:39:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617392375; cv=none;
        d=google.com; s=arc-20160816;
        b=K7MOrQPCx5KEndeC1KACZ05/dnssGtLc5qiKIaKzyHZrpgx1yi2ArRnA8IpX1SqRMW
         0eZRHlZD8HO1SyROyGar1SJSqVEnUKf5VR6fAQldxbUtZune2L0JvLncwsIgdDPEv6+G
         nd97ZfCORdXNB69Cv8YTwErujJop7rHG14Lva5JPuaMJR579m32rOEo2w2NPWnScxcME
         oVwjgJgtsrrIGMtkJIIhBA48PjGS/Opg4P9fls0Z4imL/b9J0phEzoL7Qk9VUOgsh90V
         HSA0tkPd5bV5pMc5ZCWVnDVPG9spkzFUrkSurVcHlN575WLhWoMzX4eWClVAg/lfLJ5s
         f1YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SjGDs+Qa/9i8ji0NhBFxGrsZE0ynLmxwlichp6PJDdM=;
        b=L0Q5F6OPIdPjCuP523Va2zQAbvZP4uP6er5HDi58sV1mgb693X5ZXAhQLzQizQjaz+
         5RyzZSsayP7bBdQYhJk2lWV19D2xGKIS7HjnzquV6aOb+C9/VJYgbWaVG4qyk6WftVo1
         7pqm7seR8PS8XzZ808CxNVx0coA5dWg2lLVGfpZ1H/SHY7dAY0IVjQ0CX+SVGnYzSvms
         XjLYhxEAvZhE1LTXfh6sqQG0Dm5E0EuEmN4qdIXHoWzPPKSghlDDXa/JvdItxNWmIymM
         2QyqnyNL6J5fMgjlvx2638NdLvCPLhgQ4nnW+DlncK/qPLnyZEE3MiuYU8hu1M4tVjYX
         87SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SeA7WEOI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id r24si1248987qtp.1.2021.04.02.12.39.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 12:39:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id e8so6305805iok.5
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 12:39:35 -0700 (PDT)
X-Received: by 2002:a6b:d80d:: with SMTP id y13mr12334390iob.75.1617392375486;
 Fri, 02 Apr 2021 12:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210401232723.3571287-1-yhs@fb.com> <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
 <CA+icZUVkS4epkNoktGDGGEQcOY8CNcRsAHbjK=Z-9uLUgqiNfw@mail.gmail.com>
In-Reply-To: <CA+icZUVkS4epkNoktGDGGEQcOY8CNcRsAHbjK=Z-9uLUgqiNfw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 2 Apr 2021 21:38:58 +0200
Message-ID: <CA+icZUWskBYk9fFzJ-6=P9bRA3Fo-_+tQNO0HFOOuoA3S26oRA@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=SeA7WEOI;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31
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

On Fri, Apr 2, 2021 at 8:31 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Apr 2, 2021 at 8:07 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Thu, Apr 1, 2021 at 4:27 PM Yonghong Song <yhs@fb.com> wrote:
> > >
> > > Currently, clang LTO built vmlinux won't work with pahole.
> > > LTO introduced cross-cu dwarf tag references and broke
> > > current pahole model which handles one cu as a time.
> > > The solution is to merge all cu's as one pahole cu as in [1].
> > > We would like to do this merging only if cross-cu dwarf
> > > references happens. The LTO build mode is a pretty good
> > > indication for that.
> > >
> > > In earlier version of this patch ([2]), clang flag
> > > -grecord-gcc-switches is proposed to add to compilation flags
> > > so pahole could detect "-flto" and then merging cu's.
> > > This will increate the binary size of 1% without LTO though.
> > >
> > > Arnaldo suggested to use a note to indicate the vmlinux
> > > is built with LTO. Such a cheap way to get whether the vmlinux
> > > is built with LTO or not helps pahole but is also useful
> > > for tracing as LTO may inline/delete/demote global functions,
> > > promote static functions, etc.
> > >
> > > So this patch added an elfnote with a new type LINUX_ELFNOTE_LTO_INFO.
> > > The owner of the note is "Linux".
> > >
> > > With gcc 8.4.1 and clang trunk, without LTO, I got
> > >   $ readelf -n vmlinux
> > >   Displaying notes found in: .notes
> > >     Owner                Data size        Description
> > >   ...
> > >     Linux                0x00000004       func
> > >      description data: 00 00 00 00
> > >   ...
> > > With "readelf -x ".notes" vmlinux", I can verify the above "func"
> > > with type code 0x101.
> > >
> > > With clang thin-LTO, I got the same as above except the following:
> > >      description data: 01 00 00 00
> > > which indicates the vmlinux is built with LTO.
> > >
> > >   [1] https://lore.kernel.org/bpf/20210325065316.3121287-1-yhs@fb.com/
> > >   [2] https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> > >
> > > Suggested-by: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
> > > Signed-off-by: Yonghong Song <yhs@fb.com>
> >
> > LGTM thanks Yonghong!
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > > ---
> > >  include/linux/elfnote-lto.h | 14 ++++++++++++++
> > >  init/version.c              |  2 ++
> > >  scripts/mod/modpost.c       |  2 ++
> > >  3 files changed, 18 insertions(+)
> > >  create mode 100644 include/linux/elfnote-lto.h
> > >
> > > Changelogs:
> > >   v3 -> v4:
> > >     . put new lto note in its own header file similar to
> > >       build-salt.h. (Nick)
>
> That is a bit smarter (and smaller) than v3.
> Queued up and building a new clang-lto kernel...
> Will report later.
>

link="https://lore.kernel.org/bpf/3f29403d-4942-e362-c98a-4e2d20a3db88@fb.com/T/#t"
b4 -d am $link

Needs this fix for the pahole side?

$ git diff
diff --git a/dwarf_loader.c b/dwarf_loader.c
index 026d13789ff9..244816042c88 100644
--- a/dwarf_loader.c
+++ b/dwarf_loader.c
@@ -2501,8 +2501,8 @@ static int cus__load_debug_types(struct cus
*cus, struct conf_load *conf,
       return 0;
}

-/* Match the define in linux:include/linux/elfnote.h */
-#define LINUX_ELFNOTE_BUILD_LTO                0x101
+/* Match the define in linux:include/linux/elfnote-lto.h */
+#define LINUX_ELFNOTE_LTO_INFO         0x101

static bool cus__merging_cu(Dwarf *dw, Elf *elf)
{
@@ -2520,7 +2520,7 @@ static bool cus__merging_cu(Dwarf *dw, Elf *elf)
                       size_t name_off, desc_off, offset = 0;
                       GElf_Nhdr hdr;
                       while ((offset = gelf_getnote(data, offset,
&hdr, &name_off, &desc_off)) != 0) {
-                               if (hdr.n_type != LINUX_ELFNOTE_BUILD_LTO)
+                               if (hdr.n_type != LINUX_ELFNOTE_LTO_INFO)
                                       continue;

                               /* owner is Linux */

- Sedat -

>
> > >   v2 -> v3:
> > >     . abandoned the approach of adding -grecord-gcc-switches,
> > >       instead create a note to indicate whether it is a lto build
> > >       or not. The note definition is in compiler.h. (Arnaldo)
> > >   v1 -> v2:
> > >     . limited to add -grecord-gcc-switches for LTO_CLANG
> > >       instead of all clang build
> > >
> > > diff --git a/include/linux/elfnote-lto.h b/include/linux/elfnote-lto.h
> > > new file mode 100644
> > > index 000000000000..d4635a3ecc4f
> > > --- /dev/null
> > > +++ b/include/linux/elfnote-lto.h
> > > @@ -0,0 +1,14 @@
> > > +#ifndef __ELFNOTE_LTO_H
> > > +#define __ELFNOTE_LTO_H
> > > +
> > > +#include <linux/elfnote.h>
> > > +
> > > +#define LINUX_ELFNOTE_LTO_INFO 0x101
> > > +
> > > +#ifdef CONFIG_LTO
> > > +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 1)
> > > +#else
> > > +#define BUILD_LTO_INFO ELFNOTE32("Linux", LINUX_ELFNOTE_LTO_INFO, 0)
> > > +#endif
> > > +
> > > +#endif /* __ELFNOTE_LTO_H */
> > > diff --git a/init/version.c b/init/version.c
> > > index 92afc782b043..1a356f5493e8 100644
> > > --- a/init/version.c
> > > +++ b/init/version.c
> > > @@ -9,6 +9,7 @@
> > >
> > >  #include <generated/compile.h>
> > >  #include <linux/build-salt.h>
> > > +#include <linux/elfnote-lto.h>
> > >  #include <linux/export.h>
> > >  #include <linux/uts.h>
> > >  #include <linux/utsname.h>
> > > @@ -45,3 +46,4 @@ const char linux_proc_banner[] =
> > >         " (" LINUX_COMPILER ") %s\n";
> > >
> > >  BUILD_SALT;
> > > +BUILD_LTO_INFO;
> > > diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> > > index 24725e50c7b4..98fb2bb024db 100644
> > > --- a/scripts/mod/modpost.c
> > > +++ b/scripts/mod/modpost.c
> > > @@ -2191,10 +2191,12 @@ static void add_header(struct buffer *b, struct module *mod)
> > >          */
> > >         buf_printf(b, "#define INCLUDE_VERMAGIC\n");
> > >         buf_printf(b, "#include <linux/build-salt.h>\n");
> > > +       buf_printf(b, "#include <linux/elfnote-lto.h>\n");
> > >         buf_printf(b, "#include <linux/vermagic.h>\n");
> > >         buf_printf(b, "#include <linux/compiler.h>\n");
> > >         buf_printf(b, "\n");
> > >         buf_printf(b, "BUILD_SALT;\n");
> > > +       buf_printf(b, "BUILD_LTO_INFO;\n");
> > >         buf_printf(b, "\n");
> > >         buf_printf(b, "MODULE_INFO(vermagic, VERMAGIC_STRING);\n");
> > >         buf_printf(b, "MODULE_INFO(name, KBUILD_MODNAME);\n");
> > > --
> > > 2.30.2
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN%3DUBNdQiO3g%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWskBYk9fFzJ-6%3DP9bRA3Fo-_%2BtQNO0HFOOuoA3S26oRA%40mail.gmail.com.
