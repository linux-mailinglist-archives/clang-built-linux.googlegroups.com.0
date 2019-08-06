Return-Path: <clang-built-linux+bncBDYJPJO25UGBB77EU7VAKGQEGRGYGCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id A32CB83B5F
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:34:56 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id a17sf50687552otd.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:34:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565127295; cv=pass;
        d=google.com; s=arc-20160816;
        b=vjnZNvPs2tj4Ck+Y3/Qn5NL2Z5+Ey9ogRIRqFDXD4O6VbdhIJpiUVTIxEV/7jVUXq/
         j8VPQEynSqeUMSDL/v3JnffTy/gtZPamsxQu+wi+j85rKCBwb3mFzs1YHzhEwe3zjP/U
         xbIkK8I5CiNSGKP5InEMg6l7C9PhNDOOwzZJOcVo1kWRB55eMsKqsvXgbk9wCRE/FT0D
         ZarhksZvZervepSaGx9xf6e5Luvr9i9X19yXuPbEA0if9FK7Qi3T1w6n7PfsIt8XbXkm
         hUolIJVFSEJWOkkO6inrCL1IbZhwVLe7hI9Q1Jtv0Q17HYWRi5xtZ5uHj34/J15mEvU4
         UvUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AOdB3NNV0blsy7zoqL4+XR7HTm4oAp4eqgJiCZgu1OM=;
        b=X7XLjjg6HEqatVHMJ8GKmNs8GpGV0NPZH0NIThohj2fx/iAieRK02rtqWXZrdXMglm
         0f0uztnBDXBklNaXh6tJZ6Y7TqNmKYv6tiVj5LqOMSXeQIr1j183r30IrhlSnlD5SVcb
         LRDfa9Bk85igFP8CaTTMbYk4vyZ01gJhZt/ZmDtCXkFicURzWuTVFX9+4TzaPmCQLtDp
         cjoXZCvenA+89wfbI3VRAz4iHBEgpWHWauNW+pauzKaaDCMPHrHXVMpm0ZRgKsI6HPQc
         /koyu8/rct2Z0ei5KsO85acL1Tte/jtSyI99KChLDePDdqFv5ScGbdFyDWB4o+D700Tr
         qdcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bZs8jjk/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AOdB3NNV0blsy7zoqL4+XR7HTm4oAp4eqgJiCZgu1OM=;
        b=U9BOlU6SrFob6yyPz9EU0ZWfXIN1YSsMF+5TlY5b1XtERz+CapUxj5MGsIHjQdRqUZ
         k0VVk5vVe4sNd1Z2RhBcxGDckk93GHfHLl1DsGJKWLt+oEtL6H5RUKwqRh1hFHxZwVL3
         /CttjEh+JJDnqw4lL8liHicBS4zv6MAVDl/Gp7/WHNBAqpeJZc45j8XOx9St9yyO7pT9
         hO92DZpPrP75f7f0eA7UD0Le/iaNA73hmPGIbWPBqdbxJZvRDcuJC3a2MrulSIhklr1w
         7WtmlB0Qa1i22npTeIM26zjb5NHiPOE903uXPxGoBzFWue0yu/Ke2JI6TvY23UGqZ2WX
         mi+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AOdB3NNV0blsy7zoqL4+XR7HTm4oAp4eqgJiCZgu1OM=;
        b=Vilwm4wDKLefVtLHNTtjmWDn5XfyQoVbPh57fG5ElS6m405dX1u8NoBnjpJF00BBhE
         /DFBkZC0i9rc/V1YGEftw2xsdX8WI6hRvqtic8S6b8Oc9U3ml0SKUmZubXhFBauLune4
         BZdo/iFBMiz1lgzdh4yj5e0NVb0w9/K4KHwqnDQSH4CxwU//+XjvTx/Sz+8jGVFgQaMb
         zy5GuWfibxEgQsr9NrTrCrRqVrZq+uZ+T+VVQk2/qCjUejcjyXI+ye1VokyM7cCYQ6cT
         3B4+er2zsEmaui91fmjPd/4dyO2aVGqK5ApwlO2OcN1LA3zIYzfk3CwAEXGu35B5QLOT
         bJig==
X-Gm-Message-State: APjAAAX0n52JrHUTHP5DptmFfb8BKJ+tlh4ffbegz5t4DN9q+kLPm14q
	8dPEda8dMPUT+H2zsfcpUFQ=
X-Google-Smtp-Source: APXvYqx5yrOc5fg1JYxqk4FAHep8Wwahq770pj1kLMS/c/cdVicNrMO2IobVv3ifm+Mv21kHREdnCQ==
X-Received: by 2002:a9d:744a:: with SMTP id p10mr5301510otk.321.1565127295638;
        Tue, 06 Aug 2019 14:34:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5015:: with SMTP id e21ls993878oib.16.gmail; Tue, 06 Aug
 2019 14:34:55 -0700 (PDT)
X-Received: by 2002:aca:4790:: with SMTP id u138mr3269072oia.44.1565127295383;
        Tue, 06 Aug 2019 14:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565127295; cv=none;
        d=google.com; s=arc-20160816;
        b=wwtYLJDxrfcvmGP/QVVWM8Z9Fy+wfmCHfXhpTAEOuPfsYowK5JNFZiL/LLYRG2vBYb
         hBT/dXFPMEexXCeTBP5DTgWVLjqLdCPt9nETXHo6EC0zVkR80nKUxlFEG++QorRNnPr4
         epjpUD4X9+YiUHbsomZlqCgbizKBHB9zUZ+3IJehJo1PeO6xVsKR7ILrQEJ2w7zXZooa
         dlAXP0nrFeVhjW/qWFQXzMi/0wAGwUIXRFs28vEqh4yL29T2ntemnGvANdIyUhfT4KUt
         6dGaYKztKd3+Zsl2gmFpvtSs7psD1alkO+6qcvrxDxVEleGzpEr60+Bhp7IinMUNSf5n
         d6aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eGRYxd1TXTwLEtz4yuH2Yktx/pte19iilftGEeVQXYw=;
        b=GLK7XeUkRSna5O184wlF9Gagc/KokM/s3ZIB1fZ4OYIMXptmNaYunGnNiJ1kYD3bry
         EgvXBTXaJ/x8UrtGxGiUiIKPWWPFXFndFYShxdiFj7rEH4ezCWU5yPXDD05DOkUiioEw
         1sbtoEvUXrTPRY1dm6tmkUazmHCznQkR+LEs5YDmY+kVaF2u8N5PSU20t/RVg9gQISmJ
         EXgarh/YPevwxYU5j4sRHiOp8eJOJAK9xA5BnzcoMPq9wOB1tS8JT+lJn4QhIt0mnlJQ
         /b6QtaQ8PB2+wTI9uqLRSw96rdLQsyMzn53vUAwG41Ez/LAn0WSKqDAfnv65xnhZ69PF
         XvLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bZs8jjk/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id i20si4897231otf.0.2019.08.06.14.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id a93so38319994pla.7
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 14:34:55 -0700 (PDT)
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr5000150plq.223.1565127294296;
 Tue, 06 Aug 2019 14:34:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2FecM1Phd7HRK3Mx1rD92MuU8a1N3++DHX4sq-R0S-nA@mail.gmail.com>
In-Reply-To: <CAK8P3a2FecM1Phd7HRK3Mx1rD92MuU8a1N3++DHX4sq-R0S-nA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 14:34:43 -0700
Message-ID: <CAKwvOdmXMAeNQ_abJehDhXigYWeqZjnUWjxeE+y29QWcQczFzg@mail.gmail.com>
Subject: Re: apt.llvm.org builds
To: Arnd Bergmann <arnd@arndb.de>, Sylvestre Ledru <sylvestre@debian.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="bZs8jjk/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
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

+ Sylvestre

On Tue, Aug 6, 2019 at 1:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The llvm-9 builds I use have not been updated since July 16
> (r366056), and I keep running into linker errors from the lack
> of your final patch.
>
> Nathan commented on IRC
> > which just missed that snapshot (r366056 is the base, Nick's patch is r366130)
>
> Can you make sure that r366130 is in clang-9?

It looks like the clang release_90 branch was branched from r366426
which should have r366130.
https://github.com/llvm/llvm-project/commit/2cf681a11aea459b50d712abc7136f7129e4d57f

In fact, here is the commit:
https://github.com/llvm/llvm-project/commit/c4f245b40aad7e8627b37a8bf1bdcdbcd541e665
From release_90 (link likely to go stale quickly):
https://github.com/llvm/llvm-project/commits/release/9.x?after=13c43456a9a81293549e292c31cd29e9aaa67ead+349

>
> I see that there is an Ubuntu Disco build from Aug 04, but
> the other ones are still on the old version. I tried installing
> the disco version, but that requires a newer glibc than I have.

So it looks like r366130 made the release_90 train and will ship in
clang-9.  I assume then the underlying issue is that clang-9 hasn't
been repackaged yet by Syvestre.  (I assume that distribution gets
hairy closer to releases).

Sylvestre, is this a known issue?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmXMAeNQ_abJehDhXigYWeqZjnUWjxeE%2By29QWcQczFzg%40mail.gmail.com.
