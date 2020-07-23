Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBAGP4X4AKGQEABXUC7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D04E22AC9A
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 12:33:37 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id q15sf1633221wmj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 03:33:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595500416; cv=pass;
        d=google.com; s=arc-20160816;
        b=eY7TaAMyKCLSgdzEn/HnmxIdmC37/xuDnX7ZT79QCwTswOEZpvuYjGtsuK833UyuWa
         7U1Q82qlYhsvPgIqcH+HEiOVlKqyYpsyJZMv6Dc9fvA3NWYBWPxdCaNQpe1vzzvwWNlS
         hO6jvdN5WxM56OXAzq1GOq3LAanyiIBUxsI1jIX0f3lxKd+O0+f8bRx4j6t32R9xyNmw
         pGe82cObMfesYgk3WpuzZEeJiUa607ySOtFaa0IPXgz/hQknFVlnWyF6AXJVxS+B4mNF
         ZW66EuS2AhhDkqsmeAVGhn9ZDQV1eM+bFxFJnJ+zUpNmbAPSEIVyu9hIXGOK1MKILPpA
         j/Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=88VPHgSNcjie88KtwGcwwRD7frv+IfWlwH9gaf//ZGU=;
        b=F9AC+OxkGA1clUlPzseLm/hv/dP6rsxADUvuQqLF2dfilLHSGd9bWLy6SQsTfVIRos
         /YXAD2b56/Dd4nu28DPqZvOe1lrSzagcv6WPvb6td16DPGEuAj3GZe76FtNzO9YvKDY/
         5pyi/q1K7i541nVugPyx/ohQ+ih0UuV9zCbJm+E0lqtK35UCVIFMdNG+899zgQhbMVGT
         shlzK1t9R78J3lsgrNOZ+HP58wslnr+mCTmvsc0MIogSQz9EWoD/7jMdYcgNvWYIpgzZ
         pTx0pEpY5IaSzfKjL8xyQEKhEVKzE0OdPUGlG1h8LffvepFJBlrmhskQ724s00DkYBY6
         V/mA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OFO2OGvU;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=88VPHgSNcjie88KtwGcwwRD7frv+IfWlwH9gaf//ZGU=;
        b=DqzAxTFZbUB3BG88SKix1afF3FUL/xx9wf2/oC12gmtisjSOLwU5LenuBkc+nMzLB2
         ufmDhXnxEtF/XBh3/+YmdgxbGGcW0E84pNQd94JOSpJb4vBemE2SewtRUQdV1KFIj7HP
         K75OYNhbs+RxS48aWGkinAZl/S/VqdFHWcr2Lbj0YLOGvUY9mi9v0N9k93HJpX0c5LzT
         WGSe+vf/arDNi3luxeIcVIYUCZoJeibPj5BeVyjWKdvLc+CoxJ/PuxQyF4hIjjrG9wD7
         KPPVWlvvBTt29wGDZDitmOk7MDUyiqaa4kxEy735eWZTEuGPxQGDnQANV05ipViVlHXi
         gGDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=88VPHgSNcjie88KtwGcwwRD7frv+IfWlwH9gaf//ZGU=;
        b=brQLcfXPoQdOyAkBo8yLHotR+QcwH0PiuWST0a5ADkOrvYKqj6QwEdtWzPeoVnm3xZ
         D1uw7/7NHAYIHmSQHxiHidmBXKhIQEn1T93emzqtEOUjosKY7oKRXo6wYK/bJKWUCvZ3
         FLzGevBdlp1fvqBFcShmfsALjzpMxHneqykqpRCpxmSzQvGUnHSputeILvLNKFnLGqK/
         8uuvPyP+eJdgMu3gPDNKJF4nCUo3RWn5IGJvlUD8sClwH4GIwfSKuVX28aubEgm7U36I
         RXFGLh8G6tyTJfLljStZULQi0EUsXtIOsiG8F6qsUQusKhRPOWEy+9siZtZCP0tBXp/a
         JIOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Oz52sONmh54zdfeGeZCqHttqzQ3V7t/reKF8nzA7+eDM9wSO1
	iS2nZKKwXlp3iA8gzfg+J8g=
X-Google-Smtp-Source: ABdhPJx+RdPM2mNKZAR7mI6ABXMeVEiaPXprIEoIqzlqdM+lCWcsHIoiXlA4y28ny0wUN+16RxZT/Q==
X-Received: by 2002:a5d:6910:: with SMTP id t16mr3710283wru.178.1595500416827;
        Thu, 23 Jul 2020 03:33:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9c95:: with SMTP id f143ls2599902wme.3.gmail; Thu, 23
 Jul 2020 03:33:36 -0700 (PDT)
X-Received: by 2002:a1c:a54e:: with SMTP id o75mr3230877wme.181.1595500416221;
        Thu, 23 Jul 2020 03:33:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595500416; cv=none;
        d=google.com; s=arc-20160816;
        b=bOnKaW1C+h6NKzH9/ooaHKyZ8rhlr/FqpF+XZI3zfoWNHwuYUDpCuLSTyK9dPCaPPU
         M04irMLGyQDjZlDaWxcWuBYG0k6/Tl/5VSve1sflxrjYSDt4ndwUR2dGqEOvWJ8DuqD3
         WVN1hzwCCchkOdP+JQPbZMW5qSYKL4NCDJuAm8k7LqCbzT30ouxZOa3fy4Rh79HUawyw
         eGXdfIvyNlkHLqjfW7J6N8/rxyt8HWC673l3OCvLu5C+TzYZxg+H/w1r0nsaHt5FHGg2
         VOSYj0y9iLQShg64x0M8ZPuYCILkz1ETtiKLDErNZTB0zyTAN7xSEQwNOLWfQITdIZOR
         Pnkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=kMkunFqI5uWPQg1SZXJZmt2gqQjySBObshw2va86iQQ=;
        b=ODSx7zp+eYOto1iU0vCBERtZSWEYEbz+/ZP2yp1ZkiXpRd4BmIgwd6p0qBUeX5sCif
         U115sH/LjTvWWJ9cXNJSMPXL2GVV521yWmQSVZoZqWZtNuNgKYIeEShBOrK6npJjugOh
         1DBxB+H0pdit01oOzZkAY7si0dLit2US5nY4B1VdpJbKrYpqw9FMsrsYEs8RW/6D3RxP
         Q3MjhFRNvKokVOp5Cn+fRRPsKbYGHJ28dUAYeg46nyigVGXlma7r+9Ql+g3H+H+6Nw+m
         VDZXkXGvTpQRxsMUGcY4baYq9U23GpMdGbadft6Did4TvkC/2o3Icv27OS9FsL6ldFft
         3KkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=OFO2OGvU;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 14si135273wmk.1.2020.07.23.03.33.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 03:33:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id r12so4619135wrj.13
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 03:33:36 -0700 (PDT)
X-Received: by 2002:adf:f785:: with SMTP id q5mr2583020wrp.298.1595500415904;
        Thu, 23 Jul 2020 03:33:35 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id i9sm2920657wmb.11.2020.07.23.03.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 03:33:35 -0700 (PDT)
Date: Thu, 23 Jul 2020 11:33:33 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Federico Vaga <federico.vaga@vaga.pv.it>
Cc: linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/1] doc:it_IT: process: coding-style.rst: Correct
 __maybe_unused compiler label
Message-ID: <20200723103333.GO3533@dell>
References: <20200715122328.3882187-1-lee.jones@linaro.org>
 <4e50d1ee2ebd55f8f87fcd5c631e97f3@vaga.pv.it>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <4e50d1ee2ebd55f8f87fcd5c631e97f3@vaga.pv.it>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=OFO2OGvU;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, 16 Jul 2020, Federico Vaga wrote:

> Of course, you are right! Thanks
>=20
> On 2020-07-15 14:23, Lee Jones wrote:
> > Flag is __maybe_unused, not __maybe_used.
> >=20
> > Cc: Federico Vaga <federico.vaga@vaga.pv.it>
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: linux-doc@vger.kernel.org
> > Cc: clang-built-linux@googlegroups.com
> > Signed-off-by: Lee Jones <lee.jones@linaro.org>

Any idea who will/should take this?

> > ---
> >  Documentation/translations/it_IT/process/coding-style.rst | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/Documentation/translations/it_IT/process/coding-style.rst
> > b/Documentation/translations/it_IT/process/coding-style.rst
> > index 6f4f85832deea..a346f1f2ce21f 100644
> > --- a/Documentation/translations/it_IT/process/coding-style.rst
> > +++ b/Documentation/translations/it_IT/process/coding-style.rst
> > @@ -1097,7 +1097,7 @@ la direttiva condizionale su di esse.
> >=20
> >  Se avete una variabile o funzione che potrebbe non essere usata in
> > alcune
> >  configurazioni, e quindi il compilatore potrebbe avvisarvi circa la
> > definizione
> > -inutilizzata, marcate questa definizione come __maybe_used piuttosto
> > che
> > +inutilizzata, marcate questa definizione come __maybe_unused piuttosto
> > che
> >  racchiuderla in una direttiva condizionale del preprocessore.
> > (Comunque,
> >  se una variabile o funzione =C3=A8 *sempre* inutilizzata, rimuovetela)=
.
>=20

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200723103333.GO3533%40dell.
