Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHHP6CAAMGQE67KJK2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0302D30FA9B
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:06:22 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id v108sf2131189otb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:06:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612461981; cv=pass;
        d=google.com; s=arc-20160816;
        b=i//kOrVJb5Te24up7gvwa8dr1uo+sVDgG2KGtl9RPgklRh38SmJrJi7wvHtP3Y25Aa
         +NEnTyWCPm7FczbuHYq+w7cZOtGH3sedfhPJli6Pvbvj7idEZVoNOGgYDfo5BvE/C2i5
         gPMxvHK9ihN58fe9t+rxP88tG8rXK0j7XpQ2E1UTyOXdLxz64uW6siiGWF2oxJBiynfO
         /pd52+jHAmVFNW0bh+pYv3s6ArFgBGS1biTbPrBtuUdjxnhrBkFeL8D87GvuziLnmxql
         psMxw8xHN1M+95bVprDyn3Zpjq3N2EhhFgdAAIMbFhcSO07q6xTmjYRnMiHBlIMeU9/e
         LfMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DNoDpR70A7HtyUUl/TwHJmMSpsAb9MKWgR+KufwGI/U=;
        b=PHihNF3mXQZhmnc3TBAE7bn1AiUiCUAWv/t76pfabhDD9yUtKqEUF1A66ClvXFy3yy
         W+eTDXhFCW0m5EB8bI4c30ous87l6QtiiB6wWf18PH47BicFwoPESgA4B48e2Zn8I/cr
         pqaZtujIS6PUEOgcY0gETXTd4GMXc279iuCi6rLs/yAyOX6+Ys2o3SOz+OPJkuYIqykm
         u9W0ymS3RdtxkcgRNZrXKrDd6kOn7Hbq0NBodxxdluHukdndnxb30eN9+arW13xFWDlx
         fQBXRO+WIVyn/L0aIfK8j0tYEhP/eqrQ3dR58kMk0D3MnttSkikMnUzBbh3/BWr8C7Pm
         BSLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vQn1IKJ8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNoDpR70A7HtyUUl/TwHJmMSpsAb9MKWgR+KufwGI/U=;
        b=iWQM11jLiPgDfNhRbCVEcRa+hIqemiH29BJPWRsbrEYBr4fdfby9e4Xv9N1JuElKQ5
         jRAdmMf5hTHDi1PksRGM1upDEni2rGo9HR4FxXnSnKUjhWCkwNcHpjOOMNMENAPly0Go
         f39C61gQjKqTttxOO7Jf7mWpPwQKUkEb8ajP3bD24yuPsvEYd9TWi8DlRXMPshTX/HPJ
         AVKw4y6CA9/rTE93I3ynY+h8NX75BqmCotVfjLe+yAL3PjlmUd0JAMKOthAsn4ccucsu
         ZZQrALoIetP8icdsO9dNz05D9TF5CmH77hvd5nciJu6n+qJkJNnFY8FXns4AyK0LIoZ5
         Xhcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DNoDpR70A7HtyUUl/TwHJmMSpsAb9MKWgR+KufwGI/U=;
        b=nhmJs29sJDZ5fGY7OjNQfe5cS6j0iNqGbUt66/6PJctNSt1ccF7uM0eGvWeLykgrvv
         digZNauK7HbgdoyJldD2wjWo1T3x9/SqMh0UgieKQ+dF6ttn64Rb9oJj1q8tT0AVvo5x
         FxDh5W7WCGIbpK9u7CqXLQRLcEFYNWka5Qkv5B70CtH48KUibZcy5Ak0i8wOhAaQuGUr
         kkdPAcAYdRnf/hzO4WLUoeOT4xQRNUKb3igXEF/4y0L48lvCTEIVF/OSjgazNcFP4QZM
         MktytL0GA08DbeLktfIUTLOA+rNbGIVvyEuvjwjoTlQNJuQa4/RJzIsG9vpeLYl/Vvsd
         2I1Q==
X-Gm-Message-State: AOAM533AyDf9pUmpzNpFaK6GDNni+/tdQbIlWGpqLOyihi9xuaUQbDoM
	CiMSACW6PI5aYPP327iHi0I=
X-Google-Smtp-Source: ABdhPJyg8n5wGFavYGbhHpHVSK+mnVvRkKN2REI+GVvhjrWrtFGL7d9RgemHMVestzc424S2HNXzzg==
X-Received: by 2002:a05:6808:8ec:: with SMTP id d12mr493293oic.34.1612461980977;
        Thu, 04 Feb 2021 10:06:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:10d0:: with SMTP id s16ls364231ois.7.gmail; Thu, 04
 Feb 2021 10:06:20 -0800 (PST)
X-Received: by 2002:a05:6808:b23:: with SMTP id t3mr483729oij.29.1612461980620;
        Thu, 04 Feb 2021 10:06:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612461980; cv=none;
        d=google.com; s=arc-20160816;
        b=nwdJpMGOaElk6t512u45lwHhQcm84MMvGBWWRuqDNY51ZRaVEt8Ou1MLb2qry5nzNT
         Qq1k1U0lWmI3w6mPFjdVK5Zdlq+9GD67H/Gq9ueKuuckFbD0IBhyqaQoN3mToXDRoCIT
         7/v1CBqeHt1Db8MRVWpB0mPV83lunTyKr7KAD9tEjoDOk0pfjHy8tpg5r6Rccgxmzppb
         MkNqt4uC8tQZF5EuAYabErP3cOVByHdZsKGl768t7VKGRSlSfVkwe4zNPotEL0x95w5j
         SXCSLbL81b3wVfXakO85Z7xLxzxr3D84zlCVqwcu9dPl052I615+DLTLNNyVhUJxnZLj
         MU/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WDOXCpI6LRDhCjEBnTMAPXA3jx1S5SnX36Tq38QJKqc=;
        b=ubGx4QDroNkZcBQCA8tdbD3/3LQ0TNyn2pwe2e/Tex/Zwoas6nbi3uc2LDbaFHLqk9
         vcUmoEhqBPiXFkVc5u3opF6DP4FDm+ioWe7QzPPwERubPol4jYBYEpO6Cvu29wRax0Cv
         4N27HiV9eHPMeDbqUZJbzcChB/7S7Mhp+Ch6ZS2BZM+wKX6bqcW4CLcofcFRDNQuICTD
         YexlYUyypG9bNeroqZwdDl6ylpnfY3CllSf0S+e515C1S6Jn3WAys1pJEeiUyLOq6Jwj
         OrjjKXbWQx/4RqV6Z/2qEUONkmj1fVMp5a09RpkuZbdVa7UOYkSs0tkSnCOlU9s3EN9X
         a3kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vQn1IKJ8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id e206si190905oib.3.2021.02.04.10.06.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:06:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id e9so2275002pjj.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 10:06:20 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr579374plc.10.1612461979711; Thu, 04 Feb
 2021 10:06:19 -0800 (PST)
MIME-Version: 1.0
References: <601b773a.1c69fb81.9f381.a32a@mx.google.com> <6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com>
 <CAMj1kXHMw5hMuV5VapcTeok3WJu1B79=Z3Xho0qda0nCqBFERA@mail.gmail.com>
 <20210204100601.GT1463@shell.armlinux.org.uk> <CAMj1kXFog3=5zD7+P=cRfRLj1xfD1h1kU58iifASBSXkRe-E6g@mail.gmail.com>
 <c0037472-75c8-6cf9-6ecf-e671fce9d636@collabora.com> <46373679-a149-8a3d-e914-780e4c6ff8be@collabora.com>
 <CAMj1kXEshuPTrKvN4LpXQMftHJG+yH8+fgU7uVc6GYn0qd8-xA@mail.gmail.com>
 <7c685184-8688-9319-075b-66133cb0b0c3@collabora.com> <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
In-Reply-To: <CAMj1kXH_CCYyd5zNVRL=KWpBXtsKamV7Bfg=O1YWBJL0f_eXLQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 10:06:08 -0800
Message-ID: <CAKwvOd=ziPWHmBiPtW3h2VYLZ-CTMp4=aEonmMLM7c=Y0SeG1Q@mail.gmail.com>
Subject: Re: next/master bisection: baseline.login on rk3288-rock2-square
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Guillaume Tucker <guillaume.tucker@collabora.com>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Nicolas Pitre <nico@fluxnic.net>, 
	"kernelci-results@groups.io" <kernelci-results@groups.io>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vQn1IKJ8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Feb 4, 2021 at 8:02 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 4 Feb 2021 at 16:53, Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
> >
> > On 04/02/2021 15:42, Ard Biesheuvel wrote:
> > > On Thu, 4 Feb 2021 at 12:32, Guillaume Tucker
> > > <guillaume.tucker@collabora.com> wrote:
> > >>
> > >> Essentially:
> > >>
> > >>   make -j18 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LLVM=1 CC="ccache clang" zImage

This command should link with BFD (and assemble with GAS; it's only
using clang as the compiler.

>
> To be honest, I am slightly annoyed that a change that works fine with
> GCC but does not work with Clang version
>
> 11.1.0-++20210130110826+3a8282376b6c-1~exp1~20210130221445.158
>
> (where exp means experimental, I suppose) is the reason for this
> discussion, especially because the change is in asm code. Is it
> possible to build with Clang but use the GNU linker?

rk3288 might be the last 32b ARM platform ChromeOS uses. "veyron"
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DziPWHmBiPtW3h2VYLZ-CTMp4%3DaEonmMLM7c%3DY0SeG1Q%40mail.gmail.com.
