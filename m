Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBX6E7SBAMGQEWZKXEUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E2134B730
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 13:17:36 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id e129sf13341220yba.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 05:17:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616847455; cv=pass;
        d=google.com; s=arc-20160816;
        b=D0tWJ24/QvP3NZn58EQNzrVkTL8h84CH3xFUeBsZaw3w1veFaQvsLQdYleoA9F1JRP
         w1VMNYB8XCPX1OBUHQKW/rx2vTgHOSEVG8guweTo0H4cVH/x8SeqBaRP+I1l+t7tcZMR
         eCpHYkrdCELMDSLpne6HE/KDQcMkAaW6raxypkU/QfYXRZlcXHxyVi4XFMKr5llmLllY
         y9Qy8lyVJFi61Ri5E6AhrBkQDEr4602f/HTc1vBR9F3PNsjBif8lHbztNn4cWXutqy8Z
         F1UY9fXGlGTp8+Z6XQvKvIHQQ+sb65d39D0jE9kIaDyYuL2fyMF8ULeHHjFr+Zt7+hg/
         L++g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7vKxKrmWXg6ETZjv7kCsK8Lsj8NyXRd32ps4HUV/CnA=;
        b=iGX4dziAxl0XOK7GGS9Wna4s1BwlBV+NzMBlQTS0sjimaAhmq2DnPH8lYOU5hgKiKd
         Zu1u6h2YjS6QabWljsTKqrn43vaJvNnipppLhOZA7ytI8UrDb70qF/7vtcaJIuV7UmY2
         66Q22+9u7AuVOxBewAtymOAeD8yRvBoVv31yXkPZeFbrR1q2TZhlHTuf/++pVwhMA65A
         akk+KFG4jKWrJvGXqAxnYMb7r2WoAZ/xO6eBIIwG/1gzKuZY0RZz2JSnlsdLbyNdQHrR
         Fcs5PpGN8gE5VKawZmvBXXoGzZTeVHiGOP9dhwbK3Erc21dVhFhcPRsSQQvOusm7VItb
         klFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iEWQcmzf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7vKxKrmWXg6ETZjv7kCsK8Lsj8NyXRd32ps4HUV/CnA=;
        b=oA9KpFuGIq+p6kax8oBNnklCwa1gRpHTt/TVVPfr/5i5Tg9g2sB1bXSWcld9jmutte
         QrGwtW9mb289a/trdihKWOHGvbLCI4xtlrNzVB48r4ewfC4USc9S93wUZLONoFRdhbZH
         xdQ0iHr1PvbPpbpOX94m5LUJlZYBjmO8E8xZBH5P5l9YEvm06emy3Ywl1JA6MTjw28tk
         KbjyLIqYDxjG0cd2GAsQgg2CF/63VxKDb/BxDU+Nhlifzo0cxRA6oWLlQgBC1fsgbz5C
         suX5aSZGA7OO1V/nvtbSYqEW3IfO0zG4dOEYtv3Tvo7Zxf7j7SG9Y+dRzdRAowecSUz+
         OWxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7vKxKrmWXg6ETZjv7kCsK8Lsj8NyXRd32ps4HUV/CnA=;
        b=WNscxqmcCnGINj247Qe1rZNrAuKhWhvGkoniZC8rPsD/zOKLe7iLLCeM+B3uk+bzt6
         shOXPQ/9WJa6S241BgtK9Nha6W2hjKqbR04WbI1BqgCpf3/54PoamWwJ/zoxzSarUEeP
         8b5S/vXbmcZJCdfeh4u6JU5MQVkM3LUwpB6/jWjGn+Q1UIsEhUBQTuUgykMpqwWoNiFP
         0YPf79ZBVHC16rvHJPa57DOE5Gdca1r17J2MaCknMw5eM73CThM7WSgw+ZQeeKUMdxl+
         XIdE0RshbPbVNHWogoSuSxc5vwAtvp1m+zs4w65eMc+RxWdBTMlwHjWiJUaE728t/fs6
         YGRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7vKxKrmWXg6ETZjv7kCsK8Lsj8NyXRd32ps4HUV/CnA=;
        b=DsefkfLUt/PvBsXKxODCSq+Z5TQnVLnsq5yz4dhuQ09m24TkZ5xm4076eHryI430lO
         NjIGwgv0wKYieQbUDvuP9cuaSZeTpZaikcGIuUSWLfCtshG2ubcrk9immBWE5R8Twzhx
         YA/B8BWVetjgdeYKDZwVaUPN71YsDxpkN564O/AvuNikR67OK46NDXALPgmS8Y5HTsD4
         AjcKl05mNSJ2KWKgtuN1KvvWE4BJBMY8JI05A76ze2XyAps9PIZoql9MaGzt1vA8ZQvK
         +lnrNLiQbMy9zBIk/xoIJ7L7PA9uAiOpXNHVDpHjNjFKVfAVtVdrmcUcrjnUdA9TDs3m
         F42g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cwPh17X4fWkQYJOj8CiTuvWJsJSrthqYO6q3vV4MkgO24In6h
	H4SFGTPWuJ8TgGgJ/nrIonI=
X-Google-Smtp-Source: ABdhPJzPg3WFK2OpcTq8aqDde11tIN1Mw6GoCuC4no0Y+Ezha62twEqcm/MpL/Y3qM6lyA3O2nJQGg==
X-Received: by 2002:a25:8405:: with SMTP id u5mr26605289ybk.274.1616847455736;
        Sat, 27 Mar 2021 05:17:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e0cd:: with SMTP id x196ls3246069ybg.10.gmail; Sat, 27
 Mar 2021 05:17:35 -0700 (PDT)
X-Received: by 2002:a25:a166:: with SMTP id z93mr26269931ybh.354.1616847455207;
        Sat, 27 Mar 2021 05:17:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616847455; cv=none;
        d=google.com; s=arc-20160816;
        b=YxYuFS/a0z/Qgk7kY+37UEveNCkUnAmg97RghoaQosTMX9yArviAToCGt5YDZYPvd1
         /M86M1yrf8pz0wGdevDU/riIZSdowVM1GbvJkFDGfpSp3v1Hpd9Kg0a1ggwA/9DGCpfc
         2dFG2vyt1k/GvvDpUdOALc1cAOwlDgt40/NNE0A0UsJLERPdYhNT7itsvjMGIQZLK/bN
         QP6Rawj9BVD0jqlvmwoP+bT+Nyf6pJ+EYXX7ZkcbXEMea0ZpcBsCbP88QpqolbrhVKb5
         Ng3LyeuYzw+NM69gJs/gXZJqeHvfiKbiVMVpfu4Np5iGfxHlDUXcO1a3vJcfhDoMMkEE
         EsDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W0OCNJlAmSG63LfDiOFxZzKLOJtCIjR/fUw42G8WAYI=;
        b=VIfHQDD5QKUPAoJ9TLlUVl0EGkrCzFF8MlxMQMVKRVhG57Dp+33CBgJB1+uri9p+Ww
         jpq1b7P6iVe4P/jV/B+jxcFRHwkYKSd+i0c9HfF+WRhYG3wn/NtDN0HbtZxLjJx0b4j5
         2vTCpUbbTmd7aICc+ccxddYyZulyoxKfxYgEuHyL2SWOBf2X1WGazUhMKJLujtljjoXJ
         i8GudieFu14Vqb/cgQhTgMTjZAd34VsCGfq747JUM7tkn1RVwCmF7OgtK/aW9BOXZyOP
         XCxtEdMLT/I9eGzmGuCa0onQ/J45bD/V3gfATBKBHtyAnft9A2W9gfButXdNK2AdpETB
         k4yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iEWQcmzf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id s18si554447ybk.5.2021.03.27.05.17.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Mar 2021 05:17:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id j26so8086969iog.13
        for <clang-built-linux@googlegroups.com>; Sat, 27 Mar 2021 05:17:35 -0700 (PDT)
X-Received: by 2002:a5d:9d13:: with SMTP id j19mr14040542ioj.110.1616847454985;
 Sat, 27 Mar 2021 05:17:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210325223807.2423265-1-nathan@kernel.org> <CA+icZUWgxmrtM=oj-aJi1KXxZx0YUZDiUPK42MjHvqS96aazYQ@mail.gmail.com>
 <20210326130702.3yaz2vqwejnfnlq4@MSI.localdomain>
In-Reply-To: <20210326130702.3yaz2vqwejnfnlq4@MSI.localdomain>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 27 Mar 2021 13:16:58 +0100
Message-ID: <CA+icZUVHyGSX1R89O-MG-fwfw7BPLGBP8COcpyPCwmhNj88d3Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] Fix CONFIG_FUNCTION_TRACER with clang
To: Nathan Chancellor <nathan@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iEWQcmzf;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
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

On Fri, Mar 26, 2021 at 2:07 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Mar 26, 2021 at 09:37:55AM +0100, Sedat Dilek wrote:
> > On Thu, Mar 25, 2021 at 11:38 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > Hi all,
> > >
> > > This series fixes function tracing with clang.
> > >
> > > Patch 1 adjusts the mcount regex in scripts/recordmcount.pl to handle
> > > the presence of PLT relocations, which happen with clang. Without this,
> > > the mcount_loc section will not be created properly.
> > >
> > > Patch 2 adds a workaround for clang less than 13.0.0 in relation to the
> > > mcount symbol name, which was "mcount" rather than "_mcount". This was
> > > written as a separate patch so that it can be reverted when the minimum
> > > clang version is bumped to clang 13.0.0.
> > >
> > > Patch 3 avoids a build error when -fpatchable-function-entry is not
> > > available, which is the case with clang less than 13.0.0. This will make
> > > dynamic ftrace unavailable but all of the other function tracing should
> > > work due to the prescence of the previous patch.
> > >
> > > I am hoping this series can go in as fixes for 5.12, due to patch 3, but
> > > if not, they can always be backported (patches 1 and 2 are already
> > > marked for stable).
> > >
> > > This series has been build tested with gcc-8 through gcc-10 and clang-11
> > > through clang-13 with defconfig and nommu_virt_defconfig plus
> > > CONFIG_FTRACE=y and CONFIG_FUNCTION_TRACER=y then boot tested under
> > > QEMU.
> > >
> > > Cheers,
> > > Nathan
> > >
> > > Nathan Chancellor (3):
> > >   scripts/recordmcount.pl: Fix RISC-V regex for clang
> > >   riscv: Workaround mcount name prior to clang-13
> > >   riscv: Select HAVE_DYNAMIC_FTRACE when -fpatchable-function-entry is
> > >     available
> > >
> >
> > Does this only fixes stuff for clang + riscv?
>
> Yes.
>
> > If so, please put a label "riscv" also in the cover-letter.
>
> Sure, my apologies for not doing that in the first place, I must have
> been in a rush with the cover letter.
>
> In my defense, I think the titles of my commit messages and the diffstat
> below make that obvious without the tag :)
>

No need for any apologies.
I was fooled as you sent two triple-patchset nearly simultaneously.
This riscv patchset here was not of interest to me.

- Sedat -

>
> > - Sedat -
> >
> > >  arch/riscv/Kconfig              |  2 +-
> > >  arch/riscv/include/asm/ftrace.h | 14 ++++++++++++--
> > >  arch/riscv/kernel/mcount.S      | 10 +++++-----
> > >  scripts/recordmcount.pl         |  2 +-
> > >  4 files changed, 19 insertions(+), 9 deletions(-)
> > >
> > > --
> > > 2.31.0
> > >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVHyGSX1R89O-MG-fwfw7BPLGBP8COcpyPCwmhNj88d3Q%40mail.gmail.com.
