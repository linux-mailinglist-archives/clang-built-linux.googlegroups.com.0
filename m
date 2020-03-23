Return-Path: <clang-built-linux+bncBAABBCXF4TZQKGQE77HSHIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABA71900DF
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 23:04:59 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id f14sf12417805pfk.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 15:04:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585001098; cv=pass;
        d=google.com; s=arc-20160816;
        b=E3t8Ka3Oy3rwkCHPmOcR8Z7gK5CQFnD9BU4NE26DrQdtv7pk1F5OMVWv2kkwZLKWvd
         /GOinjWub3mm+Q27VHAaEqKfNyFj5I/wl/uXggxZ/4jEbuzZEpBl4wxIN8sVnwzkHCGH
         iXftxkH2dlUPTjM6oCzTt/wwDQ16l2ot6e2Fq8sqXKAt4NsTLrluLQhyxGWrs0LGy7v9
         2oWR00dfp6qvj663ypqk1Cyh0V3ykIUCkIQLtM3yG/LT1GnojlPIASku/L2yzQhJy8w3
         CYkpxVlMwlShPYjag+3dE+2My5uA2+QXjQhMqjkSLO7UWfdjta/y0fH2bNCpg8Zpq5rr
         RYyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=7ZN6dyh8F2uU7sCZrdJk/8ClsbDmg54VY/h4BgpvfOw=;
        b=cq0bVp9jY4EJPRkCf0w+sxZS1oHVdq/dFpKZP/sf6W2kL7J8wHgCZ8vb+eJZozWCok
         sXQtDeUMzme4KuTFEJ/1ptSTsbmgvd7uDSZFoHf1bRcm7HExvRVfVr/318tA/9zR1bib
         2cLCw4ap5lsyAmg/09cJKgJoQFmSNJ579BgQquoXkcOX6TklZPzFj7gRHZM/1Uba4/HX
         pa6LMOz4dj32LrLQFv4yZIAvw7XDzgAn9DPQme7FioBuHnEdcOvsFw0TNPb5A+ULWaSv
         JO3x1TnX0DOHJ3txq0jRvYgfKLpA3N7+s/nmmqgcQLQKc2HgA1eUWu+SSMWSvUS7qbTG
         a8ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0NvQzc9v;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7ZN6dyh8F2uU7sCZrdJk/8ClsbDmg54VY/h4BgpvfOw=;
        b=EVUpvOH1faLwWVE/OcuVZQtyi0Kmho0un6kKPzWCd5nuFcxjhLvqD4SZjjsWz1YhnC
         K7sFncMFGM+7biSMh1gc1uOZbYEafamCD1loJKkrZb7EM9dTpEAs3cUpyOl6XNe8uTvh
         k/AjgfX18ICqo2/SPkC7TRNPayz6uO9tCgQ1OcozYnrD6FOyTpg3DdrmjWfcjC/EOy4w
         3glbVmgMo6/dI5rCr6Yt28ezK8O8PLzFOrv38rIB8QxC5Y/RSzJ33zpIms2lU6BH6Gbm
         YTWWiVst3HyBRTHbeNEJb4vknTTIyIVZ5y0mhK9s7yDEEenFjLyUqhR6ZKiu1AIIyrTu
         XlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7ZN6dyh8F2uU7sCZrdJk/8ClsbDmg54VY/h4BgpvfOw=;
        b=CBFnCvwpniSdabTNsNyR/VSgM/tUsiVoM11x3On6KWeCCFyZS9kO/lj6MdDXtKYtSF
         4t9/yx2FcpGhEr8SUHWSzA1qtIf6UR4C74g1PqjHKyZRq7gyVkfS1fKbHov36c+QwJ8S
         k/GojMVWOkhv3gmdPxpAYofiDVGyTv7UNs/EtrKBRBISBOc3Y/N5wTIw8i1zM7zGVDro
         Esgv3WHKDkTs+G2xWKf6pBooLNxZbGszD8+G9QCZVC5S/j0PdtJWvrrUroUB/Jw6BYyI
         CXWwxoiGU/fBO7RNYYUFauV0j5pSWOumobt3NFSFGu78UXTR7MRAyWsLS7OQmxzuHxfg
         T/EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ02UeDT21WGeaNoMglxmquFphkys/fjsgzZYAffM3C0h+VGysgv
	cjpj9IwoZBTnNDuHVPFXzdQ=
X-Google-Smtp-Source: ADFU+vusoBjB97Da4fptsBZRKMri8f0kRPvny1da1xvfSf1fN3Zp0SEX1+9voImK0vMSEptAaMv2HQ==
X-Received: by 2002:a17:90a:d103:: with SMTP id l3mr1632047pju.91.1585001098088;
        Mon, 23 Mar 2020 15:04:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls730823pjo.0.gmail; Mon, 23
 Mar 2020 15:04:57 -0700 (PDT)
X-Received: by 2002:a17:902:b948:: with SMTP id h8mr15221140pls.155.1585001097746;
        Mon, 23 Mar 2020 15:04:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585001097; cv=none;
        d=google.com; s=arc-20160816;
        b=Rt8IJ+Tr8MemeziZk68rtxjkSLT3IA/DDNxBkyuG0fBd3SnogaMsXRfa0/kaTlC7IA
         eX4cI+6LsJwi+TXEDQR5eaR7B+r6JgoTwDA8tZDFP5l1LX1qnIaoAzqsEOz6Bm0891bk
         qBOIwwHWmIyts/gOGqDO4wpcwahekT03/KflC8dEazywxEaouuToqYPAwuqhcGTcN5jo
         IZL/scGKCRmfKpPaCvlTa9srRY8EegTO5NGhE+xvF0CqbCyPJ44x/3BW2VOIegIKNc7m
         7cZptNAU1wzJvtgQQCUo4H3UpUV8ve7YWqYeZR3JXwY+e1EZmT4f7GWyfwRTPKau4U45
         82FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=h6nm2Hiq/kZPXDtve+y+JyahA5CoO2EzrLNaMh8pB0U=;
        b=U5ouWBZThmIOh8L4YjPsiTObkFro6BA487XWoJ2qljaJcMihPygT4ao0R0t7L8tsNd
         o34vqvwrLZi80VtWpF4KPJspMk603qWHpqIQdKbuKrSkW6yCvLAWW0TYxz/lDhHGMN/g
         w5EvRDHe14gTPeP0BuBHHaGS2lRz+bUHbChNIYQIGFj94c4OaowN22l+TOCRbMlQ/82U
         Z0wNz3/KTyJYt8YbnBw80XmQHy4UuRq26c0juzHrh6PMLgRvru7iPsvhySCzuCcqpffa
         ASwMJkmAGQM7Yjj50K94KPIxBzUrUxAzDfNM9MBn07PsumuIQdH8RDfb5PgKiQFNXu51
         WwZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0NvQzc9v;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id 59si826792ple.2.2020.03.23.15.04.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 15:04:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 02NM4Q6r010106
	for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 07:04:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 02NM4Q6r010106
X-Nifty-SrcIP: [209.85.217.43]
Received: by mail-vs1-f43.google.com with SMTP id n6so9901633vsc.3
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 15:04:27 -0700 (PDT)
X-Received: by 2002:a67:3201:: with SMTP id y1mr17991619vsy.54.1585001066297;
 Mon, 23 Mar 2020 15:04:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <CAHmME9p=ECJ15uyPH79bF0tuzEksdxoUsjGQSyz74FfdEJxTpQ@mail.gmail.com>
 <CAHmME9q4egN7_KeYB-ZHCFPfXs-virgTv4iz9jW2SVOM7dTnLw@mail.gmail.com>
 <CAK7LNAR07vZFzh1Bbpq4CoJ4zmsc+p5rxpkO1Zv8QVfqhfvr2w@mail.gmail.com> <CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-=vKcHWqNhAw@mail.gmail.com>
In-Reply-To: <CAHmME9qCjo4kOQM3Dw6PDjEebmb6rvXajqhK-m-=vKcHWqNhAw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 24 Mar 2020 07:03:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQgKgKgOpQ2bgHrB5h=LTffs2khbYRrBhrxFM44gS88KQ@mail.gmail.com>
Message-ID: <CAK7LNAQgKgKgOpQ2bgHrB5h=LTffs2khbYRrBhrxFM44gS88KQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>, LKML <linux-kernel@vger.kernel.org>,
        Allison Randal <allison@lohutok.net>, Armijn Hemel <armijn@tjaldur.nl>,
        "David S. Miller" <davem@davemloft.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Song Liu <songliubraving@fb.com>,
        Zhengyuan Liu <liuzhengyuan@kylinos.cn>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=0NvQzc9v;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Hi Jason,

On Mon, Mar 23, 2020 at 3:53 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Mon, Mar 23, 2020 at 12:36 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Hi Jason,
> >
> > On Mon, Mar 23, 2020 at 1:28 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> > >
> > > Hi again,
> > >
> > > I've consolidated your patches and rebased mine on top, and
> > > incorporated your useful binutils comments. The result lives here:
> > >
> > > https://git.zx2c4.com/linux-dev/log/?h=jd/kconfig-assembler-support
> > >
> > > I can submit all of those to the list, if you want, or maybe you can
> > > just pull them out of there, include them in your v2, and put them in
> > > your tree for 5.7? However you want is fine with me.
> >
> >
> > Your series does not work correctly.
> >
> > I will comment why later.
>
> Bummer, okay. Looking forward to learning what's up. Also, if some
> parts of it are useful (like the resorting and organizing of
> arch/x86/crypto/Makefile), feel free to cannibalize it, keeping what's
> useful and discarding what's not.
>


The answer is mostly in my previous reply to Linus:
https://lkml.org/lkml/2020/3/13/27


I think this problem would happen
for CONFIG_AS_CFI and CONFIG_AS_ADX
since the register in instruction code
is machine-bit dependent.

The former is OK wince we are planning to
remove it.

We need to handle -m64 for the latter.
Otherwise, a problem like commit
3a7c733165a4799fa1 would happen.


So, I think we should merge this
https://lore.kernel.org/patchwork/patch/1214332/
then, fix-up CONFIG_AS_ADX on top of it.

(Or, if we do not need to rush,
we can delete CONFIG_AS_ADX entirely after
we bump the binutils version to 2.23)

Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQgKgKgOpQ2bgHrB5h%3DLTffs2khbYRrBhrxFM44gS88KQ%40mail.gmail.com.
