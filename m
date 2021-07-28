Return-Path: <clang-built-linux+bncBC7457HKSMPRBBXGQWEAMGQEQGDKBTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-f58.google.com (mail-oo1-f58.google.com [209.85.161.58])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C353D9185
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 17:08:55 +0200 (CEST)
Received: by mail-oo1-f58.google.com with SMTP id s7-20020a4ae5470000b02902690a9a92fesf1336085oot.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 08:08:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627484934; cv=pass;
        d=google.com; s=arc-20160816;
        b=wVEkt52dle5PvobEZVgBRLU6+5n1VirBR/8GOs/nm4vYcUGlM0jxu4G53tBZS8jyxW
         e4wdQk+zHiEB3T102M1tM9YSAe2hUJnYpuVhImvnid8m/lMqZ6Arzsvox2ZYFzwm/5s7
         CPoXBNjG6IC7UA+lVi7vdOFxIRBtRjFGfwEJZleR1zF1TB82xxS4I1x2+QmS04+IcxR7
         WRE2KXNOVdVeZF0qXLWpPKFkwmJoKDFt+0bRbbzzf6N8l5uYgPczoz8fbuCCryQJvHqP
         4zRaZiHMAIO/9oPGrpUBZDIo2d9d0DTcjqwlkFoOXOvrZ9XdU0grTsKu9dS9+zsKS+kD
         OA3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=nSLykRmPTvYwF/2qRdWyhgtHTwkPGBn7/nTg1yRVong=;
        b=Ol0tOAXyt/ED95N0YpsZv+oTGLfjosA6MnGtvx0B6RHhefyXSkAoXB2XdkvSnflGbY
         6PP70nLI64zihNTzMpMi0lhdGikIjxEkWQ/0RkRCAWISN1rf/dAKBaoHUxPOA+HmmQ5z
         Jx3vBXI0LNI+mCk1e4aeOEaFKJlYbR3JgqeHzPNa9IPiiCqPv64tAwhAuMSv4NXRjjVK
         GVppiNCa697CblMHxIERnzlEPuQqTiJq+UR+5WAFRjmc9tXpbvQQ3sWD8KfsVXQMzsQu
         A/CMGrYtLlRRLZ76SA3QgkQzbNztpV5B1tev7A7ki66ZXuxxfgiR9FLNeUKC7qmWZUKZ
         YWNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=XONcEKVq;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-language:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nSLykRmPTvYwF/2qRdWyhgtHTwkPGBn7/nTg1yRVong=;
        b=iMzjG2Xn6gjsp51DVdq/Kn5rEQyn87NiIr+b6oU0lI7CNcAhHKCePRqnIaHoLjViwE
         M4CJFM2AZFUAtgqL+IgJiNvpVUj9l6gZQd8krAcQ/rWvdM10qz7HBg/EM0I5Rrv9cRnp
         HJP5B1Q+A6ASh9F0p7TdEzih83eyNie5+0SOhyBhy9i0FnLm3MZUuAXzKj6grdZ2AGby
         i/3L6vJV48ZGVC1VozeACDM9ltDkmarZtZ7BrJ96RDJuBCygA/aXil84e373AavMHS5i
         v/Lh6Ws6RzbSg55kGiyxw134cTFpCrhoJZWGIXkHUTFY2y9GopGqS20SXwPOlU8ve/yJ
         skcA==
X-Gm-Message-State: AOAM532gZJRGVYtwYSZcDSoCQOAMdYFKHs9VquAqWjQIlR2f0AdrsRjm
	HaveEtJfE+7kYxPIRjq9Lyg=
X-Google-Smtp-Source: ABdhPJxLe5KzS3HjuSqgrD/cioC1VvDqao2O9C370kSrnGrjp7/9GtG4u/ZuO+BWzFXKXWoH4EvG4Q==
X-Received: by 2002:a4a:d2c9:: with SMTP id j9mr46270oos.88.1627484934305;
        Wed, 28 Jul 2021 08:08:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls660288oto.8.gmail; Wed, 28 Jul
 2021 08:08:54 -0700 (PDT)
X-Received: by 2002:a05:6830:25c6:: with SMTP id d6mr371563otu.226.1627484933937;
        Wed, 28 Jul 2021 08:08:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627484933; cv=none;
        d=google.com; s=arc-20160816;
        b=RHH3AbRV7jQffdpLxb8CNZH6V6/JXO0UKX+ZyZ4B5m7AIFKC6na/jc6MMst8Rs0Y7m
         +kZXBBjMOWrsYxfHln297Rd65HXsyTRXgXm9M+oHnBwir30jIWUUTMfml18dcpLw6xEn
         WX3zFkY1wmQgRqe9iEhc3RtsA45MBvpTabC+rhod1wN/z9o3KkVVDi9r4NP4tcNEYNQK
         /9QEENix7P/DLKkN5cKheHeqEjMO5LVz4TgbYpshf7QAfMQnWRSrUVu2Kw3FomygujD7
         p0SNW5toJxh3YTUAKoq7YlkAdJvckXwVTto8yDcOXWTSWGhuNlErJB4mfsRQhZ2wmYDa
         NPTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=3wwq0AErdGICOZ9un5uPRzTUaZOh9Woef+N1yP+Q6P8=;
        b=H2xMZ+b+Fw77gNDX6Cvtfmv6J33NLejl/xVdSEeUdAyzZwIyKFcULwIiWwgj/vxD0x
         EmcFJHpwElTw9jVw02Pavl2JkcreZA54fZhE/ZIw2edu8J/hDQ3c9u9LMKxD9JCwZwn6
         RGa5m6yJrN9dhaMoe0266wxKDS2X6X0YqY/ha4BhpZkTBokhUywrsY/5uH0zJJgKSOIv
         Fxy+md+BSnLWQdOfNgaOneSYlVnAIzzLl7lai8OSmh8M9Ef4gK17T72WTs2Fi2UaGuXh
         /rWbMxlb/ePS+XjX1saaBIjHq6rBcNqPX22a6nkqPhlewasplTDTW4LICx7bxDRng56e
         IyHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=XONcEKVq;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id o10si12598oic.3.2021.07.28.08.08.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 08:08:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 610172f196a66e66b2ac45d0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 28 Jul 2021 15:08:33
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id DBD26C433F1; Wed, 28 Jul 2021 15:08:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 74E43C433D3;
	Wed, 28 Jul 2021 15:08:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 74E43C433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nathan Chancellor'" <nathan@kernel.org>,
	"'Andrew Morton'" <akpm@linux-foundation.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	<linux-hexagon@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>,
	"'Manning, Sid'" <sidneym@quicinc.com>
References: <20210708233849.3140194-1-nathan@kernel.org> <YQCiZSj1gfnF5x/d@Ryzen-9-3900X.localdomain>
In-Reply-To: <YQCiZSj1gfnF5x/d@Ryzen-9-3900X.localdomain>
Subject: RE: [PATCH] Hexagon: Export raw I/O routines for modules
Date: Wed, 28 Jul 2021 10:08:31 -0500
Message-ID: <03be01d783c2$6e684420$4b38cc60$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQFUlYLPOGQsXIMzH6S1xuiFiwykdgGu9yYgrFDh67A=
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=XONcEKVq;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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



> -----Original Message-----
> From: Nathan Chancellor <nathan@kernel.org>
...
> On Thu, Jul 08, 2021 at 04:38:50PM -0700, Nathan Chancellor wrote:
...
> > Export these symbols so that modules can use them without any errors.
> >
> > Fixes: 013bf24c3829 ("Hexagon: Provide basic implementation and/or stubs
> for I/O routines.")
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> >
> > It would be nice if this could get into 5.14 at some point so that we
> > can build ARCH=hexagon allmodconfig in our CI.
> >
> >  arch/hexagon/lib/io.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/hexagon/lib/io.c b/arch/hexagon/lib/io.c
> > index d35d69d6588c..55f75392857b 100644
> > --- a/arch/hexagon/lib/io.c
> > +++ b/arch/hexagon/lib/io.c
> > @@ -27,6 +27,7 @@ void __raw_readsw(const void __iomem *addr, void
> *data, int len)
> >  		*dst++ = *src;
> >
> >  }
> > +EXPORT_SYMBOL(__raw_readsw);
> >
> >  /*
> >   * __raw_writesw - read words a short at a time
> > @@ -47,6 +48,7 @@ void __raw_writesw(void __iomem *addr, const void
> *data, int len)
> >
> >
> >  }
> > +EXPORT_SYMBOL(__raw_writesw);
> >
> >  /*  Pretty sure len is pre-adjusted for the length of the access
already */
> >  void __raw_readsl(const void __iomem *addr, void *data, int len)
> > @@ -62,6 +64,7 @@ void __raw_readsl(const void __iomem *addr, void
> *data, int len)
> >
> >
> >  }
> > +EXPORT_SYMBOL(__raw_readsl);
> >
> >  void __raw_writesl(void __iomem *addr, const void *data, int len)
> >  {
> > @@ -76,3 +79,4 @@ void __raw_writesl(void __iomem *addr, const void
> *data, int len)
> >
> >
> >  }
> > +EXPORT_SYMBOL(__raw_writesl);
> >
> > base-commit: f55966571d5eb2876a11e48e798b4592fa1ffbb7
> > --
> > 2.32.0.93.g670b81a890
> 
> Ping? Brian, if you do not want to carry this, can you give an ack so
> that Andrew can?

Acked-by: Brian Cain <bcain@codeaurora.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/03be01d783c2%246e684420%244b38cc60%24%40codeaurora.org.
