Return-Path: <clang-built-linux+bncBC2ORX645YPRBOU242JQMGQEWH3NV2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id AF17152071A
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 May 2022 23:52:59 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id f9-20020a636a09000000b003c61848e622sf6527393pgc.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 May 2022 14:52:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652133178; cv=pass;
        d=google.com; s=arc-20160816;
        b=t/6uSIkwCucfdRp33rxm2+y6hvn6wAk9nyKaJRdIKxUbwjZM1/DFisoHXNCQZU9dI4
         0sZs1M4Qpxevou/asY06QOZlz550bOVxnQvzer8l8B2fy4KIRFqekQN9E7s5avz3m+MR
         nqudqpjQjx2RPcqhq5KcSlqOm2r0uQ1T/RDcAj4bzOuCQzpNW42QvkhGHb/cLwAJDv1t
         ELQ47N3ELzcstn7oY1t3Xw8OLH4fllXUJr+pklGoEB03duCxPDL8AF2r/EwE1GmbhXXp
         wdwTfTYrl85V1cfozAt4WOMZAQS/rQQjr3iTGohEOSRAETgmgYjJ9371bS/JDbev1G9o
         O6Ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yQMS94IaIbJwYG9d06tnV1OhH+coIdsliI6bXYNMvwI=;
        b=LwrM10i2GVcPMIJwQAOL7RgegDszGEim9pp56BCfwl3pgk0EcSiGuUEyq1AYdOlvTp
         dXkxyM5GHYbe23VIHbfZLxw+0G3rZfWOnUm19cRgCudc4j+RBjXrBTr6UdXsymBjU6fz
         TIrMNRg6skuoRy1SGv+ok3EIrQYhVkTMRJ9LuIP/vr3HauEIGPzjRWPf+ZlnEZI/jnw/
         Q/mru49HEkvoNFo7FQ35HP8lhQmZNCbzEt+86rKDKdS/AWhNKv8fzRiGSKit+mzkZVvv
         IBOQlBLJV9hT5OwJtGrYJwyxMddgNsK1VmVHNrO7SPbAGJySe7+76rRwJAu6CpowlmeR
         w/6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Mmprp3lz;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1131 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yQMS94IaIbJwYG9d06tnV1OhH+coIdsliI6bXYNMvwI=;
        b=WzXvebz3U5bqiJKSeTKxt+1IBq4md92qBr9qyfgBzf7Pq/iIv9tzmg4DTnDNVO7qIh
         q0F8uHH8fVFoD4014aLdifjD8rNuB+CuR4CE4aySXEuclu1OQrntgIZCT1c+fOzSLSmu
         iLVpMC66JMTP+0tKbUYGMFtAI4W9qihOY7SKae+lAv6Az/mME8MvytEYeaUE2aFg+WXo
         JCEgfdBnlMxBEirMLG9SJA11ivwBTIIohm5T6ug5I663U9jQNKwH6bh3HpiHv950tedS
         grxLeuwjrgvmAii0j90aDIQDCo0hLKoSWHpN9rorkwy5Nfl2BwnRTgzShlOoIeBVOOS8
         1Xpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yQMS94IaIbJwYG9d06tnV1OhH+coIdsliI6bXYNMvwI=;
        b=YHxDqeLrx0SF4J5KBWf/XcBsP58e5zJ7+Wp/OALSOSqgtXDARIl/Rl5ZATmDWvPasg
         FO3xkd/zv9Ah+bnC86qIeAPJfFqtXpqn9BLgUIO50E4xnNIY3NBIAlS+ci/NitWIi/WD
         iPnyMrGlQa5cF6ZOZNsY/1O3MeDrAURhL4Psb5Fj3lpjLi6ov8cUMNvrBlCkp0xJCWA0
         0mSH/bDwD29Q7xo68tWGdsriPuMvmPnMLrp92yDd1N3op3hwakL9lgv1rVFNWfI4zgrz
         ajEIEALNKZYGd9M9JhuHwkhjRjDSSXLncjI7oVPVAnBla3EaYVXHOwdI+F1DsGGhjdT/
         bNyA==
X-Gm-Message-State: AOAM5328uL8gbgOsqurFcuQuJIs04B4XwDA57aMhX1+w7LKfc9rM/HDx
	cLZ/RdXcDNW8ZJm9hl+7Z2A=
X-Google-Smtp-Source: ABdhPJyi7lq4cnfqp2VmBrvho4kBQ0SHqlx+dpG6DwMk6w3VWxY+E2urVg9O75g4wjc9qb2eus/KrA==
X-Received: by 2002:a17:90a:f30d:b0:1dc:792f:ddac with SMTP id ca13-20020a17090af30d00b001dc792fddacmr27646062pjb.20.1652133178194;
        Mon, 09 May 2022 14:52:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:185:0:b0:3c6:ab6b:a05d with SMTP id 127-20020a630185000000b003c6ab6ba05dls1763318pgb.8.gmail;
 Mon, 09 May 2022 14:52:57 -0700 (PDT)
X-Received: by 2002:a65:41c3:0:b0:363:5711:e234 with SMTP id b3-20020a6541c3000000b003635711e234mr14624899pgq.386.1652133177402;
        Mon, 09 May 2022 14:52:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652133177; cv=none;
        d=google.com; s=arc-20160816;
        b=gW4U/wbBAIHaQbfVcFlqzHBNDVKZBUh6n90gufwQEqbwBiex7T6F9AroBXGGVmIgYd
         VVShG/K3RF6WlXf2+SDY/erZf1xeoqMnHLciZ+TbFnw4Ys19FcAIIlHwNFkmJoYEs7X4
         Yj6BTsQx9f/vXenrdQs2mOdIBktmigM5RC98fusVJ1nzEIX7Pxr/Awft28/XdxIN4nRO
         JZc9GimONU9jiTD7OtsrN4zLINvl4W8CWCBjWtTKyCa19axXrR1JZU0Hi3M0fdDm1g0w
         lUu0sZHRa7eVTQ/Pd4UzcGgSoXV2sBk0EM4Pk+caeLYtr5YaTWgfI75ZZ09KPKQpiAfS
         bwzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LglPYsJyh/Qh1FDu94XGq/MV3fomSZvl10mHqijKUDo=;
        b=xpPQo5rlThTu0jIjFMv/hRGkK20mGp9pRaFUZALO7AxZe2e2Ktj8EIiD+iE+Kd1ddR
         4nepVlbQZ35/me8EMw7Abd6OeiHS8GEYGUo2QGVpDOSeORqPBfbwY3YHODR/zQzd6qe/
         Q2D+ZwNOQPHR1al2M9sFDYJDQ1Ac1+0UM46lxQxGmqRbiM07YXyyjk7NCaOk9mzEsm/r
         +8/A5YrUC6ODCmsWPvoOHy9eSighP+zZ1r02JvLsFAHmmfrvWK5QR0meVWOwwN8z5dY8
         AxwROVypX0acjIB+uVt72L6iyANhSaaWAfHrC89N/eYShGCg4KTUUmT9UWKZWmA3AEb/
         GA6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Mmprp3lz;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1131 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com. [2607:f8b0:4864:20::1131])
        by gmr-mx.google.com with ESMTPS id e4-20020a170903240400b0015e8ea4b754si46592plo.6.2022.05.09.14.52.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 14:52:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1131 as permitted sender) client-ip=2607:f8b0:4864:20::1131;
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-2ec42eae76bso159948667b3.10
        for <clang-built-linux@googlegroups.com>; Mon, 09 May 2022 14:52:57 -0700 (PDT)
X-Received: by 2002:a05:690c:13:b0:2e4:da22:27d9 with SMTP id
 bc19-20020a05690c001300b002e4da2227d9mr17078815ywb.298.1652133176908; Mon, 09
 May 2022 14:52:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220508190631.2386038-1-masahiroy@kernel.org> <20220508190631.2386038-6-masahiroy@kernel.org>
In-Reply-To: <20220508190631.2386038-6-masahiroy@kernel.org>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 May 2022 14:52:21 -0700
Message-ID: <CABCJKucG4dOLm9pPWrACc+YReBXG4GNM9V0djsy0YTp8pRGmaw@mail.gmail.com>
Subject: Re: [PATCH v4 05/14] modpost: extract symbol versions from *.cmd files
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nicolas Schier <nicolas@fjasle.eu>, Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org, 
	linux-s390@vger.kernel.org, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=Mmprp3lz;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1131
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sun, May 8, 2022 at 12:09 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Currently, CONFIG_MODVERSIONS needs extra link to embed the symbol
> versions into ELF objects. Then, modpost extracts the version CRCs
> from them.
>
> The following figures show how it currently works, and how I am trying
> to change it.
>
> Current implementation
> ======================
>                                                            |----------|
>                  embed CRC      -------------------------->| final    |
>        $(CC)       $(LD)       /  |---------|              | link for |
>        -----> *.o -------> *.o -->| modpost |              | vmlinux  |
>       /              /            |         |-- *.mod.c -->| or       |
>      / genksyms     /             |---------|              | module   |
>   *.c ------> *.symversions                                |----------|
>
> Genksyms outputs the calculated CRCs in the form of linker script
> (*.symversions), which is used by $(LD) to update the object.
>
> If CONFIG_LTO_CLANG=y, the build process is much more complex. Embedding
> the CRCs is postponed until the LLVM bitcode is converted into ELF,
> creating another intermediate *.prelink.o.
>
> However, this complexity is unneeded. There is no reason why we must
> embed version CRCs in objects so early.
>
> There is final link stage for vmlinux (scripts/link-vmlinux.sh) and
> modules (scripts/Makefile.modfinal). We can link CRCs at the very last
> moment.
>
> New implementation
> ==================
>                                                            |----------|
>                    --------------------------------------->| final    |
>        $(CC)      /    |---------|                         | link for |
>        -----> *.o ---->|         |                         | vmlinux  |
>       /                | modpost |--- .vmlinux.export.c -->| or       |
>      / genksyms        |         |--- *.mod.c ------------>| module   |
>   *.c ------> *.cmd -->|---------|                         |----------|
>
> Pass the symbol versions to modpost as separate text data, which are
> available in *.cmd files.
>
> This commit changes modpost to extract CRCs from *.cmd files instead of
> from ELF objects.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
> Tested-by: Nathan Chancellor <nathan@kernel.org>

This looks good to me, it's great to get rid of the .symversions files!

Reviewed-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucG4dOLm9pPWrACc%2BYReBXG4GNM9V0djsy0YTp8pRGmaw%40mail.gmail.com.
