Return-Path: <clang-built-linux+bncBCVJB37EUYFBBS4B776AKGQEDS6IXGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF912A25EF
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Nov 2020 09:18:21 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id b73sf4655561vsd.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 00:18:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604305100; cv=pass;
        d=google.com; s=arc-20160816;
        b=n0FBAQM5IS7LKijh2eNLRh0bajCu7yLGqS9ZI/vDJKBKcS1pz/yT4kkAiLRkIc8oa3
         vUWpu3kiyNKLB/a4F7n1ufxGakR+Y1gZgoCnhv8M4zzppVl+OTC2ffjWm6+RxvrpKmwQ
         MTsAuHwG8MvGtSEc4hN/9My/M09KpSbBf1hGRlQit+PZURzRc5j7KLfWGIJ5OmpUc6kL
         3YIvQveDYP/NezH6yO7a8wbD2yTf1W59oDlwo9OgkAEBqYEL2lPURL+nBayjgq48Xw6R
         1Mag2aYQr+qkXFUKt11533s/wFXzCtGjLk/hmIkqwJfTnqBlkASOh/K+23oMUltUkWec
         8b+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=jakmWlNJ9JGZi8PdwITOLCOIMOsNFjZbmUvm37GbgYE=;
        b=Tr95RVv2coz16eh80YO5gSSkeC52tIhYktSSTwi1llB5CCz3I2IRaRgAtKKN6P7gyP
         Diawat2WK7OiQNpUqcYiALUdMOvpj3VtV82PQjTk6mbSJx66Svg93lDdXwZG8ZnfE2pe
         qIPtKS0Fo3QTwom3Ro/irct3zctEk0wtlxcg8JLIn7l4KrPvWHqveNFR0MyslG/g7hTP
         HjwzVPx3r13z8mYR3xV95F06RK4gEbLIcyRyxmSMNuZ7pg5K6KcCCfauRs7+nUrUe0sw
         zmA3M0ZQBIvpBPIQIDlW83oETyDOsjcCLdK0PTroCM+zM9WtwPGvJcDHyUieX1c6N+YT
         m8pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bqzLN3q6;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jakmWlNJ9JGZi8PdwITOLCOIMOsNFjZbmUvm37GbgYE=;
        b=jlro8ze40NAn+3ZH8YQt/HxRjInjj8nDDpxdpyoVvlB0MTZ961DsQ1hqqSGLbKdXbl
         UMdec9FCu9F7csjKyGTdt4ZOfPmBzullivU5Non1RBEm+SdkYFL6zkd19fvDBXMrgbW6
         DagZGmn23mQ/QNYs1I6/Wg8/mI09vqwR+vdweDt1PS9HFfa4kCq9oHX25tpZt5ouYa/a
         RU9oPpci1QB05MPZ/1TgnD2xtbgz6xF5/nt2kppw/K9H2ejpEJs+9LEUKxcch0aJXSBo
         K2Lo3KLdLY5csS3K94EQ/EwaWyU1bnmNueXhJLG8gCzrt4lcm0N71JXMeFdH07ZOqgp7
         l3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jakmWlNJ9JGZi8PdwITOLCOIMOsNFjZbmUvm37GbgYE=;
        b=mjopg7FskxBwTFtadnSJiT+ubCmgkKVbvM+I2YlZjuWOrVrP9kUKKyMh/qNLUMsvX8
         CrVnu03yWx9Zaa8W/m+Usuh0KsBubMYBzpZ696XatiSMOy6PajSt5Vw1CSKLllkt43fK
         dJ1yfu9g3VlPHK/crksmRsVpyUGf9UimZAGqLsV95hc4UGYxb57SwBFBLUe+4stEQv8N
         +AYDkkvcEpak8hArtHU3MW0HLYpbnhli5h+1bVD2KtkI8wyfXvGjDJYM7DqMMd3pPPkm
         fsqq7FrmZgJ0bbWZ8ZevJVGB1mqLRJxt9REQFY+rpLHIrWF5S4ysVnbKAwHHtiX96U47
         TveQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qn1eYMeNzbcGUPoQMfl9wt4VMN0M8mFqNJCD/ch1M5Mreqsc/
	IdBUUSB3h5yHD3oSRfjRAUo=
X-Google-Smtp-Source: ABdhPJzjGjXM3Dh8+7UEZyASgAoYsTaY3Id0dbKliDgsQ/ZIaFAlgMPg9jd7W9NoVooNWqk49FjO0Q==
X-Received: by 2002:a67:c981:: with SMTP id y1mr13072349vsk.14.1604305100126;
        Mon, 02 Nov 2020 00:18:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3f51:: with SMTP id m78ls666729vka.6.gmail; Mon, 02 Nov
 2020 00:18:19 -0800 (PST)
X-Received: by 2002:a1f:9004:: with SMTP id s4mr12793035vkd.22.1604305099601;
        Mon, 02 Nov 2020 00:18:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604305099; cv=none;
        d=google.com; s=arc-20160816;
        b=gWrN6q7JyHsvJUyIgtFBi9B8sGkmg4o0b3xn+pzh9dcAcPWT81vh9Le7JWwioWtZA9
         AvltPIyf9h5dKhUyOBEGJUVCFbmuSWzt4QflEwJhu5mpjBxGVh/73cyi8ig+kCP251EF
         1uAfU7uJ7CN0eVLQE5Sin2CRqQg1CE7ybTmTBLbghcKmwUVuZINXxfrLwpr/nA13W6NR
         ykjunwXjABeFZa6dy+8maPSHqz/WwL+5RW9kroz/unipk2G7QYAvuHBTYtekIS8AAysd
         y8ze4vhY/zQ14G8quWC020rbO6h+wTPD24kC/gh1XS5p9rLkyf2qB+oUsmdxJEyr35i5
         0W+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=p2/Gm5Zzs68XWZ1TIg04nCFfNOqnMxjP5SvlL/3RU60=;
        b=pkKklilFGx1wPdOzG2la5J6dkZUsyBQ6HWYtYvXbav5OuEhbI+ivwVFa2296BtQPGE
         bxVtBxCvczFWSWx8ZD+aBqle87NpEMGFrxZchwh/h78NtVQoirlqr+gQ41L3t2oyjHS1
         3lVP0abIb4kfDlslsoQlXUnN2+BgWJXLArddkRB+XH6ZnjZljZiEshbswr+GlzCC5JIN
         oSPF3nzEezmCBOhDG37uR2VBUvZuPP906qyvDA3Y9BxVY2vu6yOb809yeCFV7uv7AN1z
         pUiS49j+MdH+UdK+qwW5+GITYepw8sVTXQ4It290bQ2u7ifpwf7AtvJBQZ4nyMprjcHl
         pGlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bqzLN3q6;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id m17si41365vsk.0.2020.11.02.00.18.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2020 00:18:19 -0800 (PST)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-l823rQMPM8OOJ7PVoyo1Jw-1; Mon, 02 Nov 2020 03:18:16 -0500
X-MC-Unique: l823rQMPM8OOJ7PVoyo1Jw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A2AD6D581;
	Mon,  2 Nov 2020 08:18:15 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-113-127.ams2.redhat.com [10.36.113.127])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE8C619C78;
	Mon,  2 Nov 2020 08:18:14 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 0A28IBmo2320689
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 2 Nov 2020 09:18:11 +0100
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 0A28IAlA2320688;
	Mon, 2 Nov 2020 09:18:10 +0100
Date: Mon, 2 Nov 2020 09:18:10 +0100
From: Jakub Jelinek <jakub@redhat.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-toolchains@vger.kernel.org
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
Message-ID: <20201102081810.GB3788@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20201022012106.1875129-1-ndesaulniers@google.com>
 <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bqzLN3q6;
       spf=pass (google.com: domain of jakub@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, Nov 02, 2020 at 11:20:41AM +0900, Masahiro Yamada wrote:
> > --- /dev/null
> > +++ b/scripts/test_dwarf5_support.sh
> > @@ -0,0 +1,4 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +set -eu
> > +echo ".file 0 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> 
> 
> 
> Please tell me how this script detects the dwarf-5 capability.
> 
> 
> This script fails for GCC 10.

One thing is GCC DWARF-5 support, that is whether the compiler
will support -gdwarf-5 flag, and that support should be there from
GCC 7 onwards.

Another separate thing is whether the assembler does support
the -gdwarf-5 option (i.e. if you can compile assembler files
with -Wa,-gdwarf-5) for GNU as I think that is binutils 35.1,
i.e. very new); but only if you want to pass the -Wa,-gdwarf-5
only when compiling *.s and *.S files.  That option is about whether
the assembler will emit DWARF5 or DWARF2 .debug_line.
It is fine to compile C sources with -gdwarf-5 and use DWARF2
.debug_line for assembler files if as doesn't support it.

Yet another thing is if you can pass -Wa,-gdwarf-5 even when
compiling C files.  There are several bugs in that category that have been
fixed only in the last few days on binutils trunk, I'd suggest
just not to bother, GCC 11 will have proper test for fixed assembler
and will pass -gdwarf-5 to as when compiling even C sources with -gdwarf-5.
The reason is to get DWARF5 .debug_line (.debug_line is usually produced
by the assembler, not compiler, from .file/.loc directives).

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201102081810.GB3788%40tucnak.
