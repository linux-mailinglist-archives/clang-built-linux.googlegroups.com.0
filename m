Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCOL4WCQMGQEYFT6SLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A671139AEA5
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 01:28:09 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id r15-20020a05600c35cfb029017cc4b1e9fasf3879438wmq.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 16:28:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622762889; cv=pass;
        d=google.com; s=arc-20160816;
        b=qpS3/upPV50JEh33wfqAomNb/xyokVyrX5NLtIooOysSFvNgkvU3q8gx9QNAHJmKW+
         zMw5p91d4Ny1N5xAAqCy2fSrewVQTInT/CR87FbMav4C5rYxLwXOtHFCqYUVYV3Ef+O8
         AGXx6lG7+ESpakqD87lStNouqOepYi+uIqvBkBUIzjegcLsAXuG9Crm3RwzgrU1AvGNz
         Uzv3izevCa8ilPd3lUjJwq4kSqCGiQ1IVjW+svfeMzcV9o6xl6ftDu63GDKG95D3FAIU
         3dKSWFmEy7XWS1o+JWh6GbA2tS45RGOZPCM7yWabkQx4oaxio/oKHOZv2b4/36wi9cbf
         asfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fAHO1E7K9STbD2E7LGCwko9eFCoT3pSca6ZDnjJWdJc=;
        b=YFQNn37dvdym3MWzIcPTyV1ytw4T+UPH+QEZ7hi5UXLuHrODDlZm3B2foGUS98SeKi
         BbaQ9RYpz8V3uoHzicai2gsABOWrrqXibCtB8WQyk2OnDSff2fzO3wq7EXIJY6Sv1hPA
         XFQnUG0OLsyRpk/TdJtS+4vbkszS6G82ECLsXPWMaSk3T91VDaJfpuid/oTzGDk+hwGs
         u7dtOQPHpMHG1QFLx2/MowdtRGyn18YS7AW+MYoSJH1GgWovm+nP0JalZHdsTrQR4tIi
         RhRtJWoUvJ2V7OYGTQ+FNoMHHCvw9rEjFRAz5R2TM5YOs0Ql3hFECNYW9ZHLmJaXkXh8
         YoGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MPHHM8hg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fAHO1E7K9STbD2E7LGCwko9eFCoT3pSca6ZDnjJWdJc=;
        b=bUI85mLcLjCXBu8x1y5+F436xw2f6rvFVulcUWjwuxH2VZhAyYqrbw+LCtJmH7LL2z
         cpMVOxTKsMTQ3kn8tjs52sPbXz4ekZTJontve5Ffxa37C1cxTJ3G/TR6oqJXXqf8PGYk
         VZq1Bg6qDKFLpAy3u+E+eJMrB2VGHVnhtkNtYu0qJPhZQ0urXIL+BRXFy4DKv0hxaqzq
         7382m0KYLiwwBKdd6s52gPOuNJZEyvjT10bDs+EGeNk4WWFiTXASbneSG8Cd/ww9aW4N
         B5iGDeizb3EV1oVmlJp7UYUSmvEcN1bVG5CenARqyAn4lpebjPXd5nWAuJtLA2glw+l3
         1KAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fAHO1E7K9STbD2E7LGCwko9eFCoT3pSca6ZDnjJWdJc=;
        b=hbn2Vgnrc+lrkNpqSjqjmkmbB8Ph4NIQ4K7iTbp1OalfRSgoLEDxrhtL9sp/nzkofi
         Uqb44qCgS5NG3tcoJlKpi6FPftdbsNt5ZBpGJrWq0UUbgPr0KeMD3k6yeEu2X24ScejQ
         LNd70hlos30F6oZ6BTSQ18yjtq0HFNUIseLMtSDszcCJYPZlzhGQy8EL/nfiMae0e5vN
         kUUTTaK417LP6qRCT3bnwiTVXHDqbXsehon1iYG2rm9T7evfUBMgyAlhjtGcDZA6uVz4
         XGEYn6TnEegGr/t83j6lwZSSoW2Qwcxg4vxSGIEkyxHFxYav4oKfaD4bcELHu8e5iFl2
         FtSA==
X-Gm-Message-State: AOAM532iBc62W134MkVlAG3A13eZ8tiu1y06r7cWSf3VVXLwJQxsn26D
	rMqS3BThPSfJpKCFQuKwB90=
X-Google-Smtp-Source: ABdhPJyBljTbsNV6vX6bcT22TI/XA6ZYuRJ75KnIkCLZ8KLWX2USXDk/ofBuebae93TfzX0lr/QGIg==
X-Received: by 2002:a5d:48ce:: with SMTP id p14mr813017wrs.170.1622762889168;
        Thu, 03 Jun 2021 16:28:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe4c:: with SMTP id m12ls3265109wrs.0.gmail; Thu, 03 Jun
 2021 16:28:08 -0700 (PDT)
X-Received: by 2002:adf:f708:: with SMTP id r8mr787163wrp.159.1622762888305;
        Thu, 03 Jun 2021 16:28:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622762888; cv=none;
        d=google.com; s=arc-20160816;
        b=da9Hw/96v6nLS6gUCCQ146ef/FoPnZD4S5VucGoyvgffzMMct/Bje7kzpW35JmZYpl
         OCtI5/ofcZaAEKQ4sq2eOiKDixMDr3If88Ld25OY8u/YNsrr/73/e7yGdkpIjWUaC09s
         zZlJowAfMLv6/hB/mEzn7xNyJi4WKk26HhgErhE0nUhFCcSP03TgZrFXvQbyr7cuNK2X
         JxCaPYsi2gq+sylL+qnmp/pzWd6pPIYeszoNPiprwgzAx6T14U5p/Alt1iUAJ1KhHh+u
         0FqZZJ9ewMLAWKC/gYsNd14GDv+A5OdB3XOUv0jQ+CGKy+oZCdc6sYMlMsi1vzEhtrfz
         BzjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yp2xRS7FBwt+MIq6S/QXxDvwXDIU2o3m3x2Gm2/0e9o=;
        b=owU5Mafh9GGZQklkxFo2jmNHOS6+FHmgBkFE4wJvftb+DK8jXT3YQj2R0y40rahaJO
         OmFXZ+0P+6FzW7hZwNsoA9tt3mbjWmEvdE1HprbC8f0VRXMrOh0J1RsiSWHU+sN6vkJ5
         m9srCwuFWK4A4kUns0DrHM28oBtFrx8v2t94Q2iMkXBgR8A3WVCf06jyAvbVE2JsFS3R
         qQXFHeWA07RE+/fvMWDiEQu9P5PfbE2jSAbp5CNu27jMv4RAF6bcIyYdiymVvM02DQbp
         BSnRcQ+PDliv/J6j8T6guZUZT+GXS/iyslo8JCwRVBwkYQKBCLRMbCwAXTmFdUIJy+lg
         C75w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MPHHM8hg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id u12si117343wmq.2.2021.06.03.16.28.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 16:28:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id f12so9242768ljp.2
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 16:28:08 -0700 (PDT)
X-Received: by 2002:a05:651c:b1f:: with SMTP id b31mr1302202ljr.0.1622762887714;
 Thu, 03 Jun 2021 16:28:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210226164345.3889993-1-arnd@kernel.org> <CAK8P3a2E0pv6PKzcCoRZH0G_gGrhWeiDwN7h090iQpd6c=XG1Q@mail.gmail.com>
In-Reply-To: <CAK8P3a2E0pv6PKzcCoRZH0G_gGrhWeiDwN7h090iQpd6c=XG1Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Jun 2021 16:27:56 -0700
Message-ID: <CAKwvOdna9KPAsN6+qTDkWMdXYDg5AGUnp=ek5McxtDXLSQdVWg@mail.gmail.com>
Subject: Re: [PATCH] ARM: ep93xx: don't use clang IAS for crunch
To: Arnd Bergmann <arnd@kernel.org>
Cc: Hartley Sweeten <hsweeten@visionengravers.com>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, SoC Team <soc@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <nathan@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MPHHM8hg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Fri, Feb 26, 2021 at 10:01 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Fri, Feb 26, 2021 at 5:44 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> >  obj-$(CONFIG_CRUNCH)           += crunch.o crunch-bits.o
> > -AFLAGS_crunch-bits.o           := -Wa,-mcpu=ep9312
> > +AFLAGS_crunch-bits.o           := -Wa,-mcpu=ep9312 $(cc-option, -fno-integrated-as)
>
> I reworked that patch just before sending it out, and ended up with two typos
> in there, it should be
>
> +AFLAGS_crunch-bits.o           := -Wa,-mcpu=ep9312 $(call cc-option,
> -no-integrated-as)
>
> I'll wait for others to comment before I send the fixed version.

Probably good for that v2?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdna9KPAsN6%2BqTDkWMdXYDg5AGUnp%3Dek5McxtDXLSQdVWg%40mail.gmail.com.
