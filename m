Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJHYTCBQMGQE3TUIWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 887703521A9
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 23:33:25 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id d16sf3097674otc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 14:33:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617312804; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fom38JI+FAL81p36cU4thi1UdN3hLJI/ESK8SpK13jBcRFrf1A5ASnuFKgNpbvPmJG
         DlsQAi0CdK4yvLEU9c2Zjrf9zx2ZOpS8KcQpGDuUFnLuMv1y5yvNlk4OqBVY4j2G9MgD
         2o3hg8Sc+Dmx9cDfaEWcJBytqZeH0wJNXSCE19HuAed1/XKXszVlaPdXeRLo1UIVD5Y8
         uHRQ5HsaFCYeBiy421ndQXHK0x1i0B1OA5A5zFhj0CT7aN71c93LLHUPUUR9nlzJ6FHM
         MNxBaI0x8WVYIesCIL/IJHrzz3l4LsFctyUk5VgvS8Lvaq2nfbaT6IUXMbDslnSUusej
         hGmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=ZL8I9pXrGa43++3F0DlP/7gPybBoD3PpSt6+TXBYh3Q=;
        b=nxaAaNwEmAbCBiXwwdQHU9TqWp1kr778E033KwKgV7Ow2LkKwehBqpCG4wkVRRZW3z
         92EepxWpUbrSEdqdHSOGPa//S5MHA9JcoSrLSr2+AMNqlxm/Do1OZK4MVnSF+RH3E5Zk
         I04vS5Xjbx1goDC60+oWS7e+aTnuxdh3UOEB2mbJH772sxBoAhKW2KzjhMokMshzKSZ/
         OdasyHuMZOiK1nynzJISA4E9mCX1VHq781cR0R3ICg+VN8Lsq5PCYzalP5pT1yS+r2YO
         kW/bINYqZngV5QWr6QqMGVE0H098FOoKMZPkdHeNQauHNCnU9oCLaxc6/QWhpdi5wUJB
         8T2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Pb4XR5Rn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZL8I9pXrGa43++3F0DlP/7gPybBoD3PpSt6+TXBYh3Q=;
        b=XZDxwCLy2zy+gpLjEglTBtgKwmTq97p6q9Gpb+bWXmHrGuckvV4wWJ5j2zBoIkTXMo
         CHYqU7Psl40Dp3TXoVr4SXfjwcnisBqHoUUope6y+SFTpwt2d+nyxF+Fq1/vlYzNtATn
         eYV8mjPpUoQdUaFwzKs+X54I9mK2GZPTa5xRdi72pr4ta1sKWAs9SfIlN+64UnF9u7fk
         /JfKGNSLgNeUQ+uiJRKhFLZReWL3eMg/sKuoYjhK2IeifdChQg2oXJhuicWa1QImu5ft
         uyFnj9uqel+x2rQokQqzPQrMEU5hK+V9EDokVUIWLBNGhrO3heTY88nm+H5kSdFiIo93
         S3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZL8I9pXrGa43++3F0DlP/7gPybBoD3PpSt6+TXBYh3Q=;
        b=KA3MCRDHRF5TTtzRVErXVpp2P/+LznxP68s+Qa5779D/j2cNmR5ErcMC5MNNwSasy/
         D4iqp4YQ+KsL/QETXGkK2nSt7oJ6G69s278c+78KLKiOhXt17iX0KDGHVTF0VXK2D2yr
         K6QWZxqmJPEeHkLcj+ZrHiVlpjt7liCFe3dhqJcv+i0gwfYwjLDGxYw0j+0hA2OePPRP
         pffWavV3sn4b56v9vcJ2/f0x96Akw+4X3SLRn/ejN36tGgnyk6As2NIheKoXQpw2bbNn
         byhnmCtAR1f7gZkhUGB9EJNkt1yBfcVNShRQwHAOQNlTdJjZiXjD/j03pMX1RPFC6p5/
         +GKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wRdNzFt72PTTzPcCGgYF3j85zPZm7eP1aGqpZ62wWp6VwIEcR
	Ls/hArlvy48bx46zX9HHkE8=
X-Google-Smtp-Source: ABdhPJwNQ5O9gIURvaB/YxMtjuR1Cc4znZ84qHsVvWKfSPp4tXxZCsA2GjLH5JRk46VZWwY4KgMZNA==
X-Received: by 2002:a9d:17e7:: with SMTP id j94mr8749904otj.41.1617312804423;
        Thu, 01 Apr 2021 14:33:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:20f:: with SMTP id i15ls435072oob.10.gmail; Thu, 01
 Apr 2021 14:33:24 -0700 (PDT)
X-Received: by 2002:a4a:8247:: with SMTP id t7mr8855719oog.53.1617312804096;
        Thu, 01 Apr 2021 14:33:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617312804; cv=none;
        d=google.com; s=arc-20160816;
        b=o3D/uVdE5p22QEi+5j3V1yR/T3HT/l4JBF05y2nsDOiqhFeo4UjFgvVwwM5acGaebK
         PlS1Ud4T11tfPctA+MhZjIP9yKjvrc1EBd2HdjZ6i8Cw1c2BpSQemLU9fkfi6uPWUVvt
         +8jrv5M4wSsPTYtfWW9gIn+BM35CRGmoFeJHrb9BeCGJMAkBYrrk7vdiZj2UBfAlYz4z
         gIUcaNpX7yY3ZucloQqtarwc1CEu8aIudIPjWV6sJeTdftEqYToxVZk37ZFSZ/IT2qRJ
         Bq7sPcDi85hlvvxiQa+YLGswygS5v72zD1pn2uIdL42ttagPG9OsuWAf/mcgKmCjKJck
         kQwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xUvZJIJIDadxvdRdsIrLgm58xD07+hDQPhDK3/jq060=;
        b=WW0QfMMp82tvJgZMfvplptcjuJN2xj5kOG9LPbONjFq69Bk3OA2BzkRSFO0UTNw2MP
         2T4TLONhqRDjAszdVBCwhWsLpfbyCWztLPmeEipG7FevKKaQ6S1hSeaimH0Cn7YSTS9r
         IxdLDyGWIuxEO1E4t0vNKMS8a9eT82ucGfz+2zuwa59kymMzmKeDYdW2B4EtmElmaJRf
         HY9Fji0A7uDHFgSL6QwTbGLZlNC6alql3387UD+7qSBfTkhOyN27SXskk+3hj19xC5w9
         6Qy1LrxtpeeIqJC7zzboIskvOGBOIOeH9lL3RjgVEWT8KXO5GC2C/lxHpcTq+WqFP+fm
         nPkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Pb4XR5Rn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id w16si1133814oov.0.2021.04.01.14.33.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 14:33:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id h3so2337218pfr.12
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 14:33:24 -0700 (PDT)
X-Received: by 2002:a65:47ca:: with SMTP id f10mr9380550pgs.206.1617312803473;
        Thu, 01 Apr 2021 14:33:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q19sm6363000pff.91.2021.04.01.14.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 14:33:22 -0700 (PDT)
Date: Thu, 1 Apr 2021 14:33:21 -0700
From: Kees Cook <keescook@chromium.org>
To: Sean Christopherson <seanjc@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] kbuild: Merge module sections if and only if
 CONFIG_LTO_CLANG is enabled
Message-ID: <202104011433.48B4149E@keescook>
References: <20210322234438.502582-1-seanjc@google.com>
 <CABCJKudMQ9CP1zhvywTf-_=PY5zmeviURR+=PqsMn_bqa_MV-g@mail.gmail.com>
 <YFoZBY1SqilWAmx4@google.com>
 <CABCJKucYHQ893LS1iCHXivPS05RMDN2BpDFou306jOEbWnt1Dg@mail.gmail.com>
 <YFvBEIkuFY2ajNlG@google.com>
 <202103311228.D42822B@keescook>
 <YGTWdju9UiDGRCCJ@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YGTWdju9UiDGRCCJ@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Pb4XR5Rn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Transfer-Encoding: quoted-printable
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

On Wed, Mar 31, 2021 at 08:07:18PM +0000, Sean Christopherson wrote:
> On Wed, Mar 31, 2021, Kees Cook wrote:
> > On Wed, Mar 24, 2021 at 10:45:36PM +0000, Sean Christopherson wrote:
> > > On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> > > > On Tue, Mar 23, 2021 at 9:36 AM Sean Christopherson <seanjc@google.=
com> wrote:
> > > > >
> > > > > On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> > > > > > On Mon, Mar 22, 2021 at 4:44 PM Sean Christopherson <seanjc@goo=
gle.com> wrote:
> > > > > > >
> > > > > > > Merge module sections only when using Clang LTO.  With gcc-10=
, merging
> > > > > > > sections does not appear to update the symbol tables for the =
module,
> > > > > > > e.g. 'readelf -s' shows the value that a symbol would have ha=
d, if
> > > > > > > sections were not merged.
> > > > > >
> > > > > > I'm fine with limiting this to LTO only, but it would be helpfu=
l to
> > > > > > understand which sections are actually getting merged here.
> > > > >
> > > > > It doesn't appear to matter which sections get merged, the tables=
 only show the
> > > > > correct data if there is no merging whatsoever, e.g. allowing mer=
ging for any
> > > > > one of the four types (.bss, .data, .rodata and .text) results in=
 breakage.
> > > > > AFAICT, merging any sections causes the layout to change and thro=
w off the
> > > > > symbol tables.
> > > >=20
> > > > Thanks for the clarification. I can reproduce this issue with gcc +
> > > > bfd if any of the sections are merged, but gcc + lld produces valid
> > > > symbol tables.
> > >=20
> > > FWIW, clang + bfd also produces mangled tables, so it does appear to =
be bfd
> > > specific.
> >=20
> > Are you able to open a bug against bfd for this?
>=20
> Yes?  I'll ping you when I run into trouble ;-)

Hm, I can't tell if any of these are duplicates:

https://sourceware.org/bugzilla/buglist.cgi?bug_status=3DUNCONFIRMED&bug_st=
atus=3DNEW&bug_status=3DASSIGNED&bug_status=3DSUSPENDED&bug_status=3DWAITIN=
G&bug_status=3DREOPENED&component=3Dld&list_id=3D59962&product=3Dbinutils&q=
uery_format=3Dadvanced&short_desc=3Dsymbol&short_desc_type=3Dallwordssubstr

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202104011433.48B4149E%40keescook.
