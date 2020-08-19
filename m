Return-Path: <clang-built-linux+bncBCIO53XE7YHBBTNN6L4QKGQESFVEULI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A7E24932E
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 05:04:47 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id bg5sf13380402plb.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 20:04:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597806286; cv=pass;
        d=google.com; s=arc-20160816;
        b=ni1qVZQKAr3iptU5eyCRkFbP99+Ta6NQGyHzZ4CFXMu2V0PzK7xxfafqP7RFbWE4Zd
         x7R525BFNBb+3cnDL1r4cMAdYw9vQyTVQKNOnKq2PKlbVA/U4kB1KjearCst6ipBVYvm
         T3K4Ee8cXrGE9TO2O9CuMJbFDtzB1Zq4HQNNUoSwW28PD4yuTPdjYcBWCwEo0fxonMMs
         1vQwkwLgOG5krMobF2CtoUtQG+E+LTm7jlh3W9yRJq5oAtkqdYqFJmrrYvqb6DaBfpDA
         HyPBkVWOrS04qNqoE9UNVqL+CP2o6O9oRQIXZZhJ2R5TI6yhjeUXp0/UJ1oJIQQHdede
         BlWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=qKdf/CdsBurx3ng8qr5In5HzqVuSBcY8O6nnA0BBMvw=;
        b=KaTy7gErTuFDgS5Qcz0bRzEhkbfj9BVezXTukm8ak2SDPpC76TwjoFnBCw8qZ5HJc5
         JpmU6qI+/GPa+hZzI/1AJlD7nDihY0eCX384+jpBf8nN3ZCx7/PQalGgYyp/fLaTKb39
         w8RZ6nBttbpf7sg9cTop6L/cCnrVF7zpG9xopS9k6sCxSHH/afFqRLa06yZty9ZyVjQz
         E7JZIYi45LsO5OXbBdIqItABRHkLExsACupva6rxwDKcDUPuQIujpQlHe7Xz3PkXkKoy
         KyzSKT/+qJmvxl1h0u01w036LNI1XxKz/e5tU8b0wwyKnjX+zXapm25SsGOGR4fIwXDI
         TzZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jRBORFL4;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qKdf/CdsBurx3ng8qr5In5HzqVuSBcY8O6nnA0BBMvw=;
        b=FspClA0F4aTrQjP5D0Rxm1Wp8h3Y9HnaEN9suWqMLPC83qOo9+eoCZ6RbJWRElctLJ
         II9ghSzOweMiZh8iNgb1jgLtNAuLcog1nCPrWB/TL1PhZU5iDj+b7u2x7JN86nRJPrXh
         1056kGm6D4a3UH//Ya3NvRYskXjvML1c/BTPCT5n3iBarHxD8ZuNnFWdS2pmAyQt5tmM
         c3MsPYcw6Lxgih9f+TXMQBX36E/5Ht/xuKgcLTq37pb7mi5m6Sq1w3krLd16xae3AzhC
         TNRX1lrbe5s3BSzmTy9FqxKWyv7x+lND9WZxM6stkT1H5XwGQrM0ywDxSqSJjY/P+NA8
         cdjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qKdf/CdsBurx3ng8qr5In5HzqVuSBcY8O6nnA0BBMvw=;
        b=nTMbVmwCw9LVeWgUcogAdTWE97Izk/Ch3AWF56/Ap+p7TlLBq1xZxQlAn7gmWfr/41
         pQGkKzv0pvH11NmeBnHZqyNtKb/Nfv2hN3xI4+DdEMznUBzYfLNK6x+8VqqtYF/BIo0t
         A6P3/U3DpxqfxyRKnm+OXxR3kDA6Ah7Mh1NPUvaGm2oqExlxB/9FyYuwFTGplNwZyVS7
         z7n7tSHPgheQKtqU1v8PvIH+LcXLoLogn+lP9+CstLyv9zG0vP90kTFKT5taTqvXNV7W
         8VlwXO1XUA8B83T1qFKxr6EHvuiEuWeNJpIxKxtytS2EnnsS8hzI6H6/S6eE+lU2NguE
         JiCQ==
X-Gm-Message-State: AOAM5336DGgG+UHnfFB/SDXkD/HbQksNMxo8gYpnhLdZ9W9N3i4Pu9jx
	DVK2UgYectBkiCDzmUIqyg4=
X-Google-Smtp-Source: ABdhPJxsCB7t0ri7+JRCsZn7Jw4uR/jAxZG7lScKWwmm+ohIPvc/+mWgneMTVUvo3dX7qfLSI4RfdQ==
X-Received: by 2002:a17:902:8347:: with SMTP id z7mr14203271pln.20.1597806286127;
        Tue, 18 Aug 2020 20:04:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b12:: with SMTP id b18ls5672825pfb.8.gmail; Tue, 18 Aug
 2020 20:04:45 -0700 (PDT)
X-Received: by 2002:a63:4b21:: with SMTP id y33mr15507768pga.142.1597806285468;
        Tue, 18 Aug 2020 20:04:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597806285; cv=none;
        d=google.com; s=arc-20160816;
        b=xvq25HoNgGYo0WMXf3ukXuQS9zeC/OFrwOrjDDUCIhlWm20fyK1C/BxoQ5zNLTzyiJ
         FJrqr23OaemRrqqLatpHVHF7AptZTAuQdhBmTcO2A/A06TLD2SWaq0iwhFlZryCVDVqw
         vOyuylWX2ENUrrfZi2iv6aD8XR137Fe5oLVHUsiVuQDn7Aj95wqXwmoUPHuWSVTl1iF/
         cAjHhWLNFEfzoNVXrq1arEcw34ZfD/UXP75S9OOgUwssFVcojTL8C+TTxv+H+75fChPz
         F9zTGp8rA0iOptlED3qramJpHy0pKviAuYQ8WS+oxNcEXTqUHVTXzZQRnND7ncE6w07A
         ZuxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=nOKL9LH+LsUrk/QCDVM6daNP5A1QGjvzKuwMZ1mFQmI=;
        b=GlrQ6NH8827UHsVeTge/bRpgZFPxGb67peKe39uvBlzHTtlg0hrnnuUW5NlpH3lJxx
         uWLvAs9LZfIkkBxCfYe7V+uBNk8Jxeu5eK2oPStnVGshdvEJEXYcfRCNmqrSWLvy8eZV
         wuDtRdanmfo9Fq++ix1AjkLqy/tI2mcCy7aTgdnGo69pG5OBz70j/dTbzK6yzeEcx9yW
         ij40L1Of4LC2uqno8D8qRB0OdBeQ9hKoAAQED9IjGO4n8f3mbHiTqkanYVyrKt4+IcGr
         Uj1LaaXTwRIlBXhdirEVTf3wgrQiGtRooUWSaYgCjHVWqWFDUmVZ7+Y9kCdnSOztHrVb
         2Sqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jRBORFL4;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id t75si1312986pfc.3.2020.08.18.20.04.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 20:04:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id w9so16800891qts.6
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 20:04:45 -0700 (PDT)
X-Received: by 2002:ac8:188:: with SMTP id x8mr20855686qtf.372.1597806284575;
        Tue, 18 Aug 2020 20:04:44 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t25sm25136296qtp.22.2020.08.18.20.04.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 20:04:43 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 18 Aug 2020 23:04:42 -0400
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] lib/string.c: Disable tree-loop-distribute-patterns
Message-ID: <20200819030442.GA3396810@rani.riverdale.lan>
References: <20200818234307.3382306-1-nivedita@alum.mit.edu>
 <CAHk-=wik-oXnUpfZ6Hw37uLykc-_P0Apyn2XuX-odh-3Nzop8w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wik-oXnUpfZ6Hw37uLykc-_P0Apyn2XuX-odh-3Nzop8w@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jRBORFL4;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Aug 18, 2020 at 05:44:03PM -0700, Linus Torvalds wrote:
> On Tue, Aug 18, 2020 at 4:43 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > This by itself is insufficient for gcc if the optimization was
> > explicitly enabled by CFLAGS, so also add a flag to explicitly disable
> > it.
> 
> Using -fno-tree-loop-distribute-patterns seems to really be a bit too
> incestuous with internal compiler knowledge.

Fair enough -- you ok with just the -ffreestanding? That's what protects
the memset in arch/x86/boot/compressed/string.c.

I think this is worthwhile to be safe.

> 
> That generic memcpy implementation is horrible anyway. It should never be used.
> 
> So I'd rather see this either removed entirely, ot possibly rewritten
> to be a somewhat proper memcpy implementation, and in the process made
> to not be recognizable by the compiler (possibly by adding a dummy
> barrier() or something like that).
> 
> Looking at the implementation of "strscpy()" in the same file, and
> then comparing that to the ludicrously simplisting "memcpy()", I
> really get the feeling that that memcpy() is not worth having.
> 
>               Linus

I don't think anything actually uses the generic memcpy, and I think
only c6x uses the generic memset. Might be worth optimizing strnlen etc
with the word-at-a-time thing though.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200819030442.GA3396810%40rani.riverdale.lan.
