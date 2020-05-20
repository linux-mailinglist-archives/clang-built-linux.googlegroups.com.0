Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTEASL3AKGQE3D5ZLRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id C71911DA6D2
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 02:56:45 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id l7sf1395614pjn.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 17:56:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589936204; cv=pass;
        d=google.com; s=arc-20160816;
        b=PsiAhNNZv2iYnGOtYoYeay1IxWuHedjWgyezSYJK4aKgb33WRV0sGyoa/aNEUzb/l5
         aT/WhUbjhE5MMCIFVZhuSw6kcx6vYF8BPem6TEzMc5X3rZbuMaIHxScx7Mcbxz/wfYlg
         ulQmRLK2xwzujHiPVRHghEQFzBs7ykS4/lnY8jy2yVpAoliVeWXhWE324oV0g7G316vu
         oHOl+n229M1te2VsZdVQcjKHbTg0f99vhrXL6aRUW72d5NTjw17dLN6dNQF//AXLjhew
         P4WxbB5Adka/LeJ/NHWgUy1PQ6TvrC+t/EEMEWQzdGLVgpLXg/S8DLAWCAewCDwJ9RuH
         Suzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oYqoDY9ZIJJqEzQoFnnmIDK3vmQSzTk7ImaEILgYIy4=;
        b=j1wp5x9OlYrYRuyC6cKHKF3bIbETdtex/qYBjxnSDVs7whgrZYcnUz1cibc8ng/ZHc
         VoTBLUfOoSoWyzWICFQ0cq8Wq99+quGxynka+0lofWkeYdzbeieOgVCvf+Tld/evsub6
         PrnDJnrqgOMfMmSI2fH+31pOkmERwSPxMqP2icRBPuWpNl3KYMZ3igcFAwac07oc4AOQ
         w0wOcttv+NxUufciEDTQYcSto3c1Raj28dI8rMVENBD25217Du6wi3Q5ONsOgPOMNMDm
         KhklNK1Y5Cz/OKa7mSpyKCTd2CA6lO919sc4DVVP8paBGoGp1TOkh/SD6GIDJ2hxZKD6
         VUww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fmjUwFgw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oYqoDY9ZIJJqEzQoFnnmIDK3vmQSzTk7ImaEILgYIy4=;
        b=KccEdsCnuQEgogsalspF1GVAUywYm0O6I0E12GVjWYQHnwzPv+44Qoo3a5tJqLHNw3
         86TNsYXHTOQXuKMcoXiw6oG9tyP8IcIfi6hrdn4eeN6I9WpzsiEFNJJ1Y+LeNlPgv0Jj
         6B6XvQH5NlOaHIVHNk3lycFgXEdQuu6VaqpMSGK4xLxYmH3SreO3pEuibzugC2ionk6N
         5n0zktnXcQLdGikH7Yl81/tDaf/01HpeJYAWBgnBHX+44exBUrkUOpctOmyenHokpFnR
         VUdW60kh3VTzoMY0bZJNSNPFkXUUN/j6wvs1ZFoupkJy94osduHPIW4YrcjW44rZknnF
         geZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oYqoDY9ZIJJqEzQoFnnmIDK3vmQSzTk7ImaEILgYIy4=;
        b=Gah8jqr3w9au+AUcDSs08gsUjHkDp5BwFFaznsrpwPtwIX1c7g24Mtfn6TyRMkzA+O
         jJSEyHkIQGU4b1JRjWqsKvIvCgalITR1fReBb3oa2DdvIZmDZ/FeroUWuwyb9hn9wuIg
         p7txD2/ZN95mwtN8tKpA80LsNCD6v5tJ5nF+QNLq+VjY6MviFiVNvTki87m0GQYscl0F
         tFlpcxunvC+oaZgqcSTeUjsaQX05oUcZjSwSbE87tspnzSLoV9ff5NlfXbGpIJ8UwJJC
         jdo7FE6oZK/GxSCLXaZwS/nDb+aJ3yQ6z48O23unycZJU+AFePqm6td9zGuxW1U48ZT5
         iBpA==
X-Gm-Message-State: AOAM532n0gE7+i8u1CeE7YACmSL/rY1L2RlEdpP9cWMikMRBUDStJIWg
	unyoSkNcVZAiTjbDZxdFX2s=
X-Google-Smtp-Source: ABdhPJylOM+uj/yAQppBAkF/AreH0bthqJQCWAbJ1XLxBvuLy4ymohzu4AoIpvhqRDXT/qb248Bt8Q==
X-Received: by 2002:a17:90a:fb96:: with SMTP id cp22mr2333584pjb.201.1589936204465;
        Tue, 19 May 2020 17:56:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9117:: with SMTP id 23ls353588pfh.0.gmail; Tue, 19 May
 2020 17:56:44 -0700 (PDT)
X-Received: by 2002:a63:1c04:: with SMTP id c4mr1785822pgc.128.1589936204059;
        Tue, 19 May 2020 17:56:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589936204; cv=none;
        d=google.com; s=arc-20160816;
        b=Af5VPrY7lNcl1tkEYY7qeUZAs5zGc3TbqFmADlaNT8t0lFIGPtgsUK4QcyqTyhT+VZ
         l8X++VLLdhKxRNEvvY9N1oj0XC8G3WA/M+Vux71wgKmp9JBV8h6ZN1Ek2U5ENksVr1jC
         EC2n8T+aVR/jSWXnyj+Xd9PBM3KYdCVJ04sV/UO5hJ1xrnLmN6WxLvYdAeC6sZQG0jI9
         +GL37ahZ8N+0wvZLeR9aLYzNB0BtKaZD3nTzF4Gk1axdIR4Y/P2aw5FNuMml+TDChdLG
         W2wl2pSjpNewUGhGAf+UeRV4VjVkxn/Gday5gM4sztEfTmjpSn+fZKPl06FgzoljiSXp
         FOOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4px3yIRPnf0/cKP5GrJgepyNTj4AtOFyCwz+sEXMDAk=;
        b=pcReZSi2/zHffbnHN89k6nHzOTezcib7n7uH7FfonXnxzifq3jYSzSWpoBbIaeB29n
         l/SZAevo6kNGV3qqc8ZtgkSP1ggqK8egrsdb3XrEcMGfg/0e6Qv3XyhTZING+iRju1GA
         omqeFGaOPBRmpbWxnUbbvj6e8TDsOXykQRtwZHYlMMDUeqg1hT4UqLu9QnxjZLHeJ+lS
         trKTsOD7wSI4LYd4JlmT6f6RWxSb9ltAErK0SzgT7W1OOq8m/vnFmkBoZGyJY773Djn3
         7Hy+OXJ2Ig4nFGm1G9ss94HllGbGB6Rx+BwOFsSp96SF1keY2ZvOVY0TukxRLmZluyL1
         +71A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fmjUwFgw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id s12si130202pfh.5.2020.05.19.17.56.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 17:56:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id x2so741639pfx.7
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 17:56:44 -0700 (PDT)
X-Received: by 2002:aa7:8084:: with SMTP id v4mr1725938pff.39.1589936203444;
 Tue, 19 May 2020 17:56:43 -0700 (PDT)
MIME-Version: 1.0
References: <ClangBuiltLinux/continuous-integration+164415390+broken@travis-ci.com>
 <5eb43a0c8d43d_13fb5db924ca0104770@travis-pro-tasks-6cc9887df6-4zmjd.mail>
 <CAKwvOdmendjEgurRBAyi4R0rDZRdwfHjddS_pfOQ6761XiiFMA@mail.gmail.com> <87d07fcdee.fsf@mpe.ellerman.id.au>
In-Reply-To: <87d07fcdee.fsf@mpe.ellerman.id.au>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 May 2020 17:56:32 -0700
Message-ID: <CAKwvOdn0Spc15v3WUE_rdrb5UvaTXmOvjEJOsD7ahktQOwQk+A@mail.gmail.com>
Subject: Re: Fwd: [CRON] Broken: ClangBuiltLinux/continuous-integration#1432
 (master - 0aceafc)
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fmjUwFgw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436
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

Looks like our CI is still red from this:

https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/=
166854584

Filing a bug to follow up on:
https://github.com/ClangBuiltLinux/linux/issues/1031

On Thu, May 7, 2020 at 8:29 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
>
> Nick Desaulniers <ndesaulniers@google.com> writes:
> > Looks like ppc64le powernv_defconfig is suddenly failing the locking
> > torture tests, then locks up?
> > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/job=
s/329211572#L3111-L3167
> > Any recent changes related here in -next?  I believe this is the first
> > failure, so I'll report back if we see this again.
>
> Thanks for the report.
>
> There's nothing newly in next-20200507 that seems related.
>
> Odd that it just showed up.
>
> cheers
>
>
> > ---------- Forwarded message ---------
> > From: Travis CI <builds@travis-ci.com>
> > Date: Thu, May 7, 2020 at 9:40 AM
> > Subject: [CRON] Broken: ClangBuiltLinux/continuous-integration#1432 (ma=
ster
> > - 0aceafc)
> > To: <ndesaulniers@google.com>, <natechancellor@gmail.com>
> >
> >
> > ClangBuiltLinux
> >
> > /
> >
> > continuous-integration
> > <https://travis-ci.com/github/ClangBuiltLinux/continuous-integration?ut=
m_medium=3Dnotification&utm_source=3Demail>
> >
> > [image: branch icon]master
> > <https://github.com/ClangBuiltLinux/continuous-integration/tree/master>
> > [image: build has failed]
> > Build #1432 was broken
> > <https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/bu=
ilds/164415390?utm_medium=3Dnotification&utm_source=3Demail>
> > [image: arrow to build time]
> > [image: clock icon]7 hrs, 0 mins, and 54 secs
> >
> > [image: Nick Desaulniers avatar]Nick Desaulniers
> > 0aceafc CHANGESET =E2=86=92
> > <https://github.com/ClangBuiltLinux/continuous-integration/compare/877d=
002bdcfe6bc5cb0255c3c39192e8175e2c19...0aceafcfcca7c4a095957efae0939a612d75=
5077>
> >
> > Merge pull request #182 from ClangBuiltLinux/i386
> >
> > i386
> >
> > Want to know about upcoming build environment updates?
> >
> > Would you like to stay up-to-date with the upcoming Travis CI build
> > environment updates? We set up a mailing list for you!
> > SIGN UP HERE <http://eepurl.com/9OCsP>
> >
> > [image: book icon]
> >
> > Documentation <https://docs.travis-ci.com/> about Travis CI
> > Have any questions? We're here to help. <support@travis-ci.com>
> > Unsubscribe
> > <https://travis-ci.com/account/preferences/unsubscribe?repository=3D671=
8752&utm_medium=3Dnotification&utm_source=3Demail>
> > from build emails from the ClangBuiltLinux/continuous-integration
> > repository.
> > To unsubscribe from *all* build emails, please update your settings
> > <https://travis-ci.com/account/preferences/unsubscribe?utm_medium=3Dnot=
ification&utm_source=3Demail>.
> >
> > [image: black and white travis ci logo] <https://travis-ci.com>
> >
> > Travis CI GmbH, Rigaer Str. 8, 10427 Berlin, Germany | GF/CEO: Randy Ja=
cops
> > | Contact: contact@travis-ci.com | Amtsgericht Charlottenburg, Berlin, =
HRB
> > 140133 B | Umsatzsteuer-ID gem=C3=A4=C3=9F =C2=A727 a Umsatzsteuergeset=
z: DE282002648
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdn0Spc15v3WUE_rdrb5UvaTXmOvjEJOsD7ahktQOwQk%2BA%40m=
ail.gmail.com.
