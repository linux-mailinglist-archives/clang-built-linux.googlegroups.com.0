Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBS6YZOBQMGQEVSCWIBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9205B35B43D
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 14:32:12 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id p68sf3901847ybg.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 05:32:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618144331; cv=pass;
        d=google.com; s=arc-20160816;
        b=TYVBDmR3grdQJrXZ6kFiKELGa+67VyWWAsMouQ3kndbD66QUoqXWgXIuFs2Vz6ONQT
         sdSJ0HmtDY+FySDDw8cs4zc1vLpoR7KMxciVya8Zmd6LwHBc0D82ExUX6yCXTROAPK47
         X5UPU39y63NQmkcEz3YsU2DgC/CdEA4WLG6Cj15Vc9EjzNNviR3u7NhR+28owK4jby8K
         jbnEUzH8Oi7psxDCNcmXIbcLlsGGKkutOpRX8K79qnO7+IxGH4bWy52AX8YQI9kNBxex
         EikwtWF8EHy5NvRkiEULInvkbF0IrKna0UCtShM7gmRl8AWJletrywRzRgPa+KO+ZUKM
         27Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ioObjnVRJNX8edtvDiMtF5S8axzituBBApuuTukG26M=;
        b=GE6Nzy6NMnZXipzSBsPgDN0GuyGZyYThaM75ap8ncglbq1Vx05Qc4mt6is9oZ3WMmC
         BpPAjYXYPPhCsFRsC5RxICxVNZ1npW/v6e7lNf8xQBxmJx1MFQnpAlBMU607W0hWrpGY
         3AAC9zR2c/Cygkmls9Qkv68PtUBUH5nRc18+z8TgM7BO57jiEQfQvOzfDEiGggxbN/Jn
         lizbNlDnArjiyFAdyFv91gfT4FI5t3cYrOl4ZKRfATwDWo864qoiuBtNILEHmstEHJXN
         peLES6ASDTpvSIB4P/Plq475MNYodSP6h893NqyALBUMEB+/shzF8Sn+nwEDQgAJtnwv
         mIbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dlJxX5md;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ioObjnVRJNX8edtvDiMtF5S8axzituBBApuuTukG26M=;
        b=BZY6wQYr7YMP5DBFRv7lvuaCITtCLhWnOrpK4Nvj0e//sgilbODaAXz+8vRJmXkfkE
         x9F5XkeqPkhfVduc4EB3o9izjYp75RuW9oKv03uDSfwms7LYb/qP2B6y/72UGlnGErX9
         8iUqzbNgxwRU/tp2/1O+L1uuCMxnB/DkMWabBACtymlaMZrsT2vup+LRTKa5d3PXTIVJ
         8bDQRnv6N8gog21NUWBjbBBZTUi0mzDZboJreZPvInp4utUJ2JuelbIrrJVFaWqS4pgU
         QRVTrcztPuS1SEbESH7GfHHhI0OltUwOLf0ZiOjwJS2k5Iix1aQayHCTkl5fs2eA9cYF
         6k7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ioObjnVRJNX8edtvDiMtF5S8axzituBBApuuTukG26M=;
        b=rjOd+NdG8+N6F5cCgpSg4czQUsw2rOG3sCKw7rhy1nquPlFMVKecvbeKHtLnn8840e
         4jLdR/K68+0VHScKPKGGKmEIhShobLO4BAA/hpPdBn6fu5p6/q6SdqbVOPXwUuthHobt
         uDkXX/ccaRmFqdwSZhSgNL4YSrYydUFdYJSKttpNLQPlTcNlfcfcQ//hp6qeZfafn31Y
         Fgd7Ii9WNRFiZE6N897CaVT8tfnLxX9xhS7RMnhOxRXvWvqvIqc5GmrtM/kzEHQXv35V
         +gWDhSy/Ucn7CU0yAAB/pIPx2rySjtcmP6hqRHEVDoEp3tC3PkYbckx4uOBnOuhiDOHC
         aCPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LIKA6EX21q90R+buz8TD91VT8JtQ1fDQsYugOpla4y0PLjaa5
	SZQr04PMly5DSfSWL5E6Xjs=
X-Google-Smtp-Source: ABdhPJy5pRJQLvjSfmQ4t4aLV+teHyA/XPYQ2fBHw3uOP7S8/dW09hmHhSTS8QLcFpyFijtfhtxW7w==
X-Received: by 2002:a25:282:: with SMTP id 124mr11593699ybc.435.1618144331440;
        Sun, 11 Apr 2021 05:32:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:19c4:: with SMTP id 187ls6193691ybz.7.gmail; Sun, 11 Apr
 2021 05:32:11 -0700 (PDT)
X-Received: by 2002:a25:ca04:: with SMTP id a4mr19527672ybg.367.1618144330954;
        Sun, 11 Apr 2021 05:32:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618144330; cv=none;
        d=google.com; s=arc-20160816;
        b=NnHK1AkRzuCMSYEHtxMCAnHn6jdvXa+sCzRa9kRvrn08aXkQjGOLl7fU08oSXCA1S5
         SpgHgez0Nm+deRp1U5YtxJdmzvJof2q06dJV7yi9BBM9176GPrFtR+STK5xfsRwHlz16
         dzoooBJi4R0staC7PtmWNRdFeRQ8uUu7dkTccttaDs/EfXKPu0c/1QcoIvBAE5/2g1f9
         OkedclrQ1G2c3J2qi5ZsOnMh6f9kjv4qazltyeYSXOH31Wi6c6Rfev5X/D4RBuCBOqdi
         A4+9vBi7/yRaHPqhnNcw8nJFsxEvBQhN0a1Go5K8j6EJ6JE09wmdgGvwyB1OIxGK0Lll
         o/OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=VQqVdAWK8Pqez30x2LecQTS0wUneVPy4UK/xjpuKRhs=;
        b=PeRlGP/4l9ejONF03y81hDbn0dLmYMKo1QOiSIcmak9a6OwNs8JjL2FyFlIdEOPB0J
         H5YR2cLCqT9WYgAnSp9l5SmYdhNggVWw76pA/FiTH8cf+n1+qOke48tADF35JALCo+fm
         M1VsGM0hDa5ejmk6nApTIdA61XC3lgo53dxwTeppmcVRTf0iiqcgoSaBXNa/LasfXdqI
         WTibovprx+QMy1fS78DLGZTdnOASykW1sYkRTP36LVnk2jzgeidpshe84Z6l3WBm/6TX
         bB4K3kDhU4n3qrqBWIVdszng3PgB3J/haTAqFroW8B0oz7RcBs08I9BLfPwF4gylVhPg
         Ryww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dlJxX5md;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id i1si556297ybe.2.2021.04.11.05.32.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Apr 2021 05:32:10 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 13BCVow5029400
	for <clang-built-linux@googlegroups.com>; Sun, 11 Apr 2021 21:31:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 13BCVow5029400
X-Nifty-SrcIP: [209.85.215.182]
Received: by mail-pg1-f182.google.com with SMTP id k8so7260525pgf.4
        for <clang-built-linux@googlegroups.com>; Sun, 11 Apr 2021 05:31:50 -0700 (PDT)
X-Received: by 2002:a63:181c:: with SMTP id y28mr22732100pgl.175.1618144309497;
 Sun, 11 Apr 2021 05:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210401232723.3571287-1-yhs@fb.com> <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
 <CA+icZUVKCY4UJfSG_sXjZHwfOQZfBZQu0pj1VZ9cXX4e7w0n6g@mail.gmail.com>
 <c6daf068-ead0-810b-2afa-c4d1c8305893@fb.com> <CA+icZUWYQ8wjOYHYrTX52AbEa3nbXco6ZKdqeMwJaZfHuJ5BhA@mail.gmail.com>
 <128db515-14dc-4ff1-eacb-8e48fc1f6ff6@fb.com> <YG23xiRqJLYRtZgQ@kernel.org> <08f2eda5-2226-d551-d660-dba981b6ced8@fb.com>
In-Reply-To: <08f2eda5-2226-d551-d660-dba981b6ced8@fb.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 11 Apr 2021 21:31:12 +0900
X-Gmail-Original-Message-ID: <CAK7LNASUkLi4gu-9TY7p7kaLFKtEFA1qA0kc3VtOcgH9xJgsfA@mail.gmail.com>
Message-ID: <CAK7LNASUkLi4gu-9TY7p7kaLFKtEFA1qA0kc3VtOcgH9xJgsfA@mail.gmail.com>
Subject: Re: [PATCH kbuild v4] kbuild: add an elfnote for whether vmlinux is
 built with lto
To: Yonghong Song <yhs@fb.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
        bpf <bpf@vger.kernel.org>, Kernel Team <kernel-team@fb.com>,
        Bill Wendling <morbo@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=dlJxX5md;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Apr 7, 2021 at 11:49 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 4/7/21 6:46 AM, Arnaldo Carvalho de Melo wrote:
> > Em Tue, Apr 06, 2021 at 11:23:27PM -0700, Yonghong Song escreveu:
> >> On 4/6/21 8:01 PM, Sedat Dilek wrote:
> >>> On Tue, Apr 6, 2021 at 6:13 PM Yonghong Song <yhs@fb.com> wrote:
> >>>> Masahiro and Michal,
> >
> >>>> Friendly ping. Any comments on this patch?
> >
> >>>> The addition LTO .notes information emitted by kernel is used by pahole
> >>>> in the following patch:
> >>>>       https://lore.kernel.org/bpf/20210401025825.2254746-1-yhs@fb.com/
> >>>>       (dwarf_loader: check .notes section for lto build info)
> >
> >>> the above pahole patch has this define and comment:
> >
> >>> -static bool cus__merging_cu(Dwarf *dw)
> >>> +/* Match the define in linux:include/linux/elfnote.h */
> >>> +#define LINUX_ELFNOTE_BUILD_LTO 0x101
> >
> >>> ...and does not fit with the define and comment in this kernel patch:
> >
> >>> +#include <linux/elfnote.h>
> >>> +
> >>> +#define LINUX_ELFNOTE_LTO_INFO 0x101
> >
> >> Thanks, Sedat. I am aware of this. I think we can wait in pahole
> >> to make a change until the kernel patch is finalized and merged.
> >> The kernel patch may still change as we haven't get
> >> maintainer's comment. This will avoid unnecessary churn's
> >> in pahole side.
> >
> > So, I tested with clang 12 on fedora rawhide as well on fedora 33, and
> > I'm satisfied with the current state to release v1.21, Masahiro, have
> > you had the time to look at this?
> >
> > Yonghong, as we have a fallback in case the ELF note isn't available, I
> > think we're safe even if the notes patch merge gets delayed, right?
>
> Right. That is why I separated the notes patch from other patches.
> We can revisit it once the kernel patch is settled.
>
> >
> > - Arnaldo
> >


Applied to linux-kbuild. Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASUkLi4gu-9TY7p7kaLFKtEFA1qA0kc3VtOcgH9xJgsfA%40mail.gmail.com.
