Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBIOG2KDQMGQEN4S3PYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF7F3CCB2C
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 23:54:43 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 29-20020a63105d0000b029022c245c3492sf13139203pgq.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Jul 2021 14:54:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626645282; cv=pass;
        d=google.com; s=arc-20160816;
        b=vdtFzjKRP0Iw9SittNHJ2PWoDzsZEZ+ru94zgv7ddOWcRquomsD6dHqQ7zjEENw+4i
         Uqjou5IubOwZaLamkB5ccIAcSMI0IbMj21VjSy6p8cepkr0YL9gAUahhfVr7FRwLvkXC
         iqoinyUNAUZEJw1uvvHOz5MXZZobmajaDjvc5k8RiLYvtfJNQklruvpQhS99e+ua3Pbw
         f0yrGtvk5sIz/A4aRtBYyuyjfC1uZs2EHOweV9d9kcy0M56tozbsMeE0X73ZhGscFRTR
         iSow/U9DNjDHZHdt0Gtvd3OgrncYNEa4wRvWqJkriBg0KnTl9xfa/4gJdrF4xYtrSWYP
         ZNVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=tMtKjqyrFip7NShOuOxkX6LwlV1CwFy4HY1GTvNVk0w=;
        b=LG/U7U3SK+oQSO5gj0ejauprbKgWMQ8XOVRzyN7G5asC0pUnKzq7W6TUwoOXRtZEZU
         ArTtH5ghonAudkevwRebBi7qEMs/Y9h0A02kBZM9zkV0VqdPpHK1ud4Ko7M7l20C92jQ
         XNlw/1QJg0SkFcbvUDggApL7Xp9e5I1vNkXy6L/WrdiMHuoc5fhZowGQFdjQPy0lRHJy
         xmiELK7JG/P5E6O8jn4IfqSTPkiIcFn9Or/XIEnGq3/OkoRDA6TIQdlXMEZ5gAOb38ru
         mVxAk4z+zCDm8DTqcOgy2d4JneP99IPz2Oa1YNI96SuvEQVOIv8BNgGJiPvDubbCS/Qq
         gBpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JdBncGJc;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tMtKjqyrFip7NShOuOxkX6LwlV1CwFy4HY1GTvNVk0w=;
        b=HfS/WqEN701B5yuK0uPTj1SpdNsKPbg96WoNbfMcvH8CKaireXauwzj6RIQqtJFz10
         zJspy9yjAkt0GRPb4Ic6eJqrpuW6KBC8ZhJ1PMJjvpC+hr8sq+/IiaFPMgLDabTDkHHy
         cBhC4tDXBlzhqjowj0owJlZfVttMUaFBVIMRfMtZLi0TZuVKtV5b4fem71dJFPgqE/pr
         m2sYxncBruV56EfZ64eF5u20m4YlFzIIbAXz9HaP+OAM9iO5GWm/IM859Hkd6TT55OHb
         0zOjU7thMQdhfapgr0rjurdLd95Brvr5VSSf4cXaTcOShS7raagq1ftpgw/puTNs2JK0
         1Hyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tMtKjqyrFip7NShOuOxkX6LwlV1CwFy4HY1GTvNVk0w=;
        b=A8OH0AIryR41jLOsP1IxbgKFyHddsMK0zdC3WjBYcrK6gd6QO8/r0szXYmoFYjki7g
         w56BrNfEpX+eeZvjFyb8mlmqcHAF113p2f8HQ1592otWt3KMuuIHwbBBoVfX8ddHTyDS
         HkLnubJJ09JDshNaAD3tHD/Ly+lOZORUmFnCH4PNd8rNHxVo3FEgSGzV/3/XtY8IUd2+
         k3/xGkC+ze9bEmdCpkaAN+yOja5XXtDMBrOUyoWVu0fF7p9On7Ffe+EtL12UnsvjrlL+
         U0MUxumLwBxuTh4+ceZQS9TacmEkty9F5UrT+9oXMll+wU+kcHCy00EYfFbgcME/QLxr
         2efg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tMtKjqyrFip7NShOuOxkX6LwlV1CwFy4HY1GTvNVk0w=;
        b=cj8xyUdU39WphEd+aG13yPRYEp4Aek1WvqSf1vUHizDFJRYY9fNv+rh1p7QTt17hcg
         dtcMC+5K+L4pEDp/JQ79rRgk8xmAtwLuJCSsmP3Xbi/fMCNVwj+Orpyhb2NYKEjZefMF
         wbAZ1Jn9Hd0i+ZjHrjMU48tYiXhL24RncWva7NhrTHaBh6ocih6NXysq0OiLzbNOx4AN
         SJ3EpHkJqLLOEXdmw9+V4YfW9GT9JjhA+tMoMOwXUAgvWAcQM7zr8wPXGln91ZXa+cML
         d8udWUXymZWqFky/b2RLhCXh9uieEzoi2EK95kWFa/TqnJzp+9qGmB7aEYxPMRe4CCO7
         9ybg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RSA9JRETsgZVEkxxep9+D26vQVrlSh4rxHYAD0MpKlKPuSMkb
	rda5OJuPIW2L0yvo66MzE34=
X-Google-Smtp-Source: ABdhPJy8mKoBlRV/L8YhAmLv61m4mXKQZMU2f6Mg+Ymr+QIm0MPIrHRXGYe3whM8UBSgzb3bwH73tA==
X-Received: by 2002:a17:90b:1947:: with SMTP id nk7mr27497400pjb.67.1626645281982;
        Sun, 18 Jul 2021 14:54:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5386:: with SMTP id x6ls8075024pgq.9.gmail; Sun, 18 Jul
 2021 14:54:41 -0700 (PDT)
X-Received: by 2002:a63:d347:: with SMTP id u7mr22396992pgi.434.1626645281357;
        Sun, 18 Jul 2021 14:54:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626645281; cv=none;
        d=google.com; s=arc-20160816;
        b=rJ39ArQCh6bT+6pYgA8XdeoaC6081S1D0bSMtm7WcSegd5SkVhneflFh+VEXilZ+mT
         Z7u8o8GaoGAG0o3PeqsVe/QrZcrevkS5noPoiB/5F5GQ/GMtpUBLFAr9aV3X1CdOWZGT
         0HgykwwjCjp8bNE7OOkbxuZ0dUrXqWjx8BRGj3t0ZYQst4ccD/FE61VgmK/Gges3VUc1
         QtPs3krmw1sICSVycUHxgm4nf2ggvpDjosHBL6CBkn3uoXEAweJ9IzIhrUICw4luZp3Q
         bn6WJGGv1N1ssAMGG3kO+0JqczrPD3AeVtFncZV1tGPlTs1d5jXFKcU0/v+6gLb/S3Hq
         BCZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9j1NWnlbjiSB+YS5FOue9N8gotu/EDm4p2Vpx7w+TB0=;
        b=g2TRGnny2/C8EbIPJ31o+mNzTA558BArzqX5EETHt27s9PLc5uiAGfqlMmRrqlHD0w
         2YVucpDkcIKCJBE1aDXE4xEgEXTuVKCDjeDCKulKjUPk6KVd3Ya93HmYwId8vFemaIS3
         +CCqOqRNAWIrVsw9J1whJJ2LpAqBx8w6alB8j6jpfg/iJd6eBX9dhGu3E+Z3YA+OC+WT
         +9H+4BSnEBVfvekNknZMy7TBvCpSmQEULHxtOtTrxsZ2ht8YgMPT6othZM7w87QFzpwe
         zLLSWJcn64IEbid8c1VdlxgC5xstHLJ6rnxaGKeVKK6VuNqO4uPlPkPF3Lp9PudkCw2r
         6SAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JdBncGJc;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id bt9si1683188pjb.3.2021.07.18.14.54.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jul 2021 14:54:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id x192so24597312ybe.6
        for <clang-built-linux@googlegroups.com>; Sun, 18 Jul 2021 14:54:41 -0700 (PDT)
X-Received: by 2002:a25:bd09:: with SMTP id f9mr27126985ybk.27.1626645280871;
 Sun, 18 Jul 2021 14:54:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210718065039.15627-1-msuchanek@suse.de> <c621c6c6-ad2d-5ce0-3f8c-014daf7cad64@iogearbox.net>
 <20210718193655.GP24916@kitsune.suse.cz>
In-Reply-To: <20210718193655.GP24916@kitsune.suse.cz>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Sun, 18 Jul 2021 14:54:29 -0700
Message-ID: <CAEf4Bza4Fd4vnJLHYKN_VE3=hcLSnxUN-YMN4iv=B5h+y+wCdg@mail.gmail.com>
Subject: Re: [PATCH] libbpf: Remove from kernel tree.
To: =?UTF-8?Q?Michal_Such=C3=A1nek?= <msuchanek@suse.de>
Cc: Daniel Borkmann <daniel@iogearbox.net>, bpf <bpf@vger.kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Magnus Karlsson <magnus.karlsson@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, open list <linux-kernel@vger.kernel.org>, 
	Networking <netdev@vger.kernel.org>, linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JdBncGJc;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Jul 18, 2021 at 12:36 PM Michal Such=C3=A1nek <msuchanek@suse.de> w=
rote:
>
> On Sun, Jul 18, 2021 at 09:04:16PM +0200, Daniel Borkmann wrote:
> > On 7/18/21 8:50 AM, Michal Suchanek wrote:
> > > libbpf shipped by the kernel is outdated and has problems. Remove it.
> > >
> > > Current version of libbpf is available at
> > >
> > > https://github.com/libbpf/libbpf

This patch made me day :) libbpf sources in the kernel tree is *the
source* of libbpf. Quoting Details section ([0]) of libbpf README:

  Details

  This is a mirror of bpf-next Linux source tree's tools/lib/bpf
directory plus its supporting header files.

  All the gory details of syncing can be found in scripts/sync-kernel.sh sc=
ript.

  Some header files in this repo (include/linux/*.h) are reduced
versions of their counterpart files at bpf-next's
tools/include/linux/*.h to make compilation successful.

> > >
> > > Link: https://lore.kernel.org/bpf/b07015ebd7bbadb06a95a5105d9f6b4ed58=
17b2f.camel@debian.org/
> > > Signed-off-by: Michal Suchanek <msuchanek@suse.de>
> >
> > NAK, I'm not applying any of this. If there are issues, then fix them. =
If
>
> They are fixed in the github version.
>
> > you would have checked tools/lib/bpf/ git history, you would have found
> > that libbpf is under active development in the upstream kernel tree and
>
> So is the github version.

See above, Github is a projection of the kernel sources. Yes, Makefile
here and on Github are different, but that's by necessity. We do ask
all distros to package libbpf from the Github version, but there are
kernel projects (bpftool, perf, selftests) using libbpf from the
kernel sources themselves.

>
> > you could have spared yourself this patch.
>
> You could have spared me a lot of problems if there was only one source
> for libbpf.
>
> Can't you BPF people agree on one place to develop the library?

We can. We did. We even wrote that down. And we do develop libbpf in
one place, here. Github repo only accepts PRs for Github Makefile and
various parts of CI process which is Github-specific.

>
> Thanks
>
> Michal

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4Bza4Fd4vnJLHYKN_VE3%3DhcLSnxUN-YMN4iv%3DB5h%2By%2BwC=
dg%40mail.gmail.com.
