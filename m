Return-Path: <clang-built-linux+bncBDTI55WH24IRBTPP3TUQKGQE723PLRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A1071D03
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 18:37:34 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id b78sf4424904ybg.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 09:37:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563899853; cv=pass;
        d=google.com; s=arc-20160816;
        b=rQG6sZrNZ9itVbHBMwDQiilfQLhiTn9zFoa6Ij/xLFfw4PkygwFDg1iBOXFWRfatZt
         9NuP5bqAlb50EoWaGDhzr0pMkkbaLiSlXnvh+iNwdjYHK55/r9PRjMQriWtaOZK5I0h6
         IWYtSLrpX9Rabx1wN97NINAfMwVIzT3LQX3RKgfAoMKPNUFLDw0m1KSonUuJ3GzWsCtu
         f9XUtHB2MbN8PRiigMHDQGVyZIPr4bwos8TLWU+QZWDKtLgG2xMPsbcX6SXA/FL0VjpG
         QzArDev6Oqrh4cPLBJNgPSDc5oDEMKie8EczQxJ9Wh65Tk6xg6Rl6BQoG+J39m0e78q6
         dLcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=CUrSmpU63hxKH2r/5dlzsIlCeAVTi65OeNzIDszOKOQ=;
        b=E1psU8gzEPT2IeJgBbF0PsgWpB0b9eAIEKwiBVfVCndEkjFAZ2G05zWpJ3H6KSVHRy
         0lsVowNoedmT6w8SBBfmZby0krTKqFRr4El+pW0VaNEY4BtknkReeK3KNHCY1ImM0Od+
         ig2yMwnk945bkUbA6tIoV0yydwPU8SqCC9TsYJguDB1xqnHFmqu+t69dCRSCcX/bO90u
         e+ShMJ2IZ1crNYo3hct/pk1SC846Pq6OdOgHr9Q74yzAYwqqPcCTyYpCTbqSIy605Wqp
         xw1UJ0oUeDoXmKU5W8+IhNCYwWBeNIospkxFO4XWLBr4K/lMEN323kJEKZlCQTRCcXqf
         COyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=L3WysIDV;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CUrSmpU63hxKH2r/5dlzsIlCeAVTi65OeNzIDszOKOQ=;
        b=bJ0fVYf8x3DPqkau9rihAyfrZVEH687UtLMDQ7IPS853veOoHFQibVfUiPApKCyUFa
         yTRTJkZVe4eMkS+ZRGOxW38q7qsp5uYOl5H8YtUUhe1hUPSBPZA/1+pIOUN1rer8sWVR
         G8pqulq5zK0/FesEqGVRskQQOPRKOrY3axho530F0SNEi0/kMGIbWjt07BdKNuYbAX2L
         4S0WnTdPd6VhCEU/CgZ1sb9ZEfR7MeyF1YrxCWKO1Xz4Dt52zTIJwJkGJBpZU5AcGyKO
         4QsBG0ca4dk0A8ByljLq0VqDvn0OD7gMfOJVCFAKElPoK5qTnd6vqZN/4DVKwMt5wlxZ
         NNzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CUrSmpU63hxKH2r/5dlzsIlCeAVTi65OeNzIDszOKOQ=;
        b=Jwy0/IU//xmEhRXu4YAUmhtKA1kjSlWJGSq3wG/gjWsyTWwqLkr5VpOghlwaB8PF7m
         1Ga5a2YDsQ2zXeuYIYX2DExclwdKqosUr6u3GuqvZyLrm+nAKIZiAEdFCdDcSXbuTjs0
         Mjv217PrI/XQhm0NFMPEY36qfprhUs3gtu9MqQGF1sVn1iYk3U4ePKH7N145QQ19YJkx
         U581O2z4S62EycpaRRGu8DLK2QRPuALW9QxLgG4FL3wNyER7T6lV6LOPLViwcpxZWMZp
         Fb96BtDHxgxR9fglPVX1kG1iNakfrdKuHF5K9VWsPccveTugwnLqxF6vi/FlHJBihLQe
         TWYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVT5j5P6KJkR9aHlISHxvBclg90CIxW4GmL3AlDvcMQesE3B6oU
	vnZ4k2ETQqP8YuEg5w0uFhs=
X-Google-Smtp-Source: APXvYqzB7EUnKEMWY2jqzLGdEMMXxFkcJpxx2PhvD0EUg9091hoiVOY0YWjugYvjIezHxeMgKiDdLw==
X-Received: by 2002:a25:d38c:: with SMTP id e134mr1940253ybf.349.1563899853159;
        Tue, 23 Jul 2019 09:37:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a1c9:: with SMTP id a67ls3960561ybi.0.gmail; Tue, 23 Jul
 2019 09:37:32 -0700 (PDT)
X-Received: by 2002:a25:85:: with SMTP id 127mr49754777yba.186.1563899852719;
        Tue, 23 Jul 2019 09:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563899852; cv=none;
        d=google.com; s=arc-20160816;
        b=Pag8ncZEgcF1inufiOpI5DgeXiq0nWlQ8uBvyi6g7MVH1mCnXPCKHsf38CJFidKP4t
         upZHCfjRA4MYTyg1W4C20SwzI95Ie+D/7Tdf7wlmAV5uEcg4Lq0uLu+f2L5wwgw+6y6A
         O021w4zGU9sZBLk1Gm3MIPXctpR/ebGPVPcpiqsj5PQ5KYKiMxzvnqCStdwCn/EABEJi
         fSK7mCEqzJKScmS/POnVOhY8SpzQ2cmZUlKPS9kKS1ylBVXcLd/0g74dUse6Q4MK4oUM
         x1KhowUe4ejKulSEOYq+JsJ47BfUgISL1kDEUz09Jk66VYHPQY/djCkZN4YVG3iUXvvg
         sztA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=JSFWAiztZP/N5BXKMO6gIHsKgS5zrSPfJfqhid6TItM=;
        b=dDbGiHNNxBwW8oWxDdJ07oku/8x2PFyyiT+Gd2tMUNoiQXJQz/x7oIvbiFpGrY57Iy
         kj6M5rBya89HLbfbFIoC3ksFESxijKOlpyvdI3z8RVH/z/47vsq+CnLTWBRjBbXpXmQF
         11jXxPCh4EvnHI2OV3d9CSpQmEOpuQIn5z9v06t7gq5NIy5G1uA6AdWv4+wYySKw1oD+
         Fe3rc5iqEVn8/yQphgX2BAE16NSb7fO8mYyHhSpjdz9f5JBNF7dOl/YSn/HDQnpr0Jov
         23DARijaMb7jG0GPE1kZJcCXjj6Km3oSGHVPudFUtzp4AKuZqoUIo8/aCBsZbJDtxjIB
         ouJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=L3WysIDV;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id f131si1249279ybf.5.2019.07.23.09.37.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 09:37:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id x6NGbDOC018112
	for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 01:37:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x6NGbDOC018112
X-Nifty-SrcIP: [209.85.221.181]
Received: by mail-vk1-f181.google.com with SMTP id b69so8782720vkb.3
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 09:37:13 -0700 (PDT)
X-Received: by 2002:a1f:4107:: with SMTP id o7mr29435305vka.34.1563899832702;
 Tue, 23 Jul 2019 09:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190721085409.24499-1-k0ma@utam0k.jp> <CAK7LNARBjkYHkmv1michYYMd-2_70d+-Gvg1Kv4FyPeeBShvdw@mail.gmail.com>
 <20190723162840.GA7110@gmail.com>
In-Reply-To: <20190723162840.GA7110@gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 24 Jul 2019 01:36:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQqUtUPSu=UmtZ-dqsjUgUO-f6U1tQa9VPmJ944poh6zA@mail.gmail.com>
Message-ID: <CAK7LNAQqUtUPSu=UmtZ-dqsjUgUO-f6U1tQa9VPmJ944poh6zA@mail.gmail.com>
Subject: Re: [PATCH] .gitignore: Add compilation database files
To: Toru Komatsu <k0ma@utam0k.jp>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=L3WysIDV;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Jul 24, 2019 at 1:28 AM Toru Komatsu <k0ma@utam0k.jp> wrote:
>
> On 07/24, Masahiro Yamada wrote:
> > Just a nit.
> >
> > The patch title is:
> > .gitignore: Add compilation database "files"
> >
> > Maybe, should it be singular?
> >
> >
> > On Sun, Jul 21, 2019 at 5:55 PM Toru Komatsu <k0ma@utam0k.jp> wrote:
> > >
> > > This file is used by clangd to use language server protocol.
> > > It can be generated at each compile using scripts/gen_compile_commands.py.
> > > Therefore it is different depending on the environment and should be
> > > ignored.
> > >
> > > Signed-off-by: Toru Komatsu <k0ma@utam0k.jp>
> > > ---
> > >  .gitignore | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/.gitignore b/.gitignore
> > > index 8f5422cba6e2..025d887f64f1 100644
> > > --- a/.gitignore
> > > +++ b/.gitignore
> > > @@ -142,3 +142,6 @@ x509.genkey
> > >
> > >  # Kdevelop4
> > >  *.kdev4
> > > +
> > > +# Clang's compilation database files
> > > +/compile_commands.json
> > > --
> > > 2.17.1
> > >
> >
> >
> > --
> > Best Regards
> > Masahiro Yamada
>
> --
>
> Thanks for your review.
>
>  Sorry, this point which you pointed out is my mistake.
>  It is should be "file".
>
>  I'm begginer because this patch is my first time,
>  What should I do next?


This patch is trivial enough.

I will change "files" -> "file"
(patch subject and code),
then I will apply it.

Thanks.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQqUtUPSu%3DUmtZ-dqsjUgUO-f6U1tQa9VPmJ944poh6zA%40mail.gmail.com.
