Return-Path: <clang-built-linux+bncBCTZJFGCSMKRB4GZTPWQKGQEWIIJBLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA57D8D6E
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 12:12:01 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id r15sf24351548qtn.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 03:12:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571220720; cv=pass;
        d=google.com; s=arc-20160816;
        b=LnBFoFCOx6fwYkyPounnztnaFX5v5jJUBLhrdgaIi+sQ57Vk4GbWUd+g97EHZb48ED
         jxDQSMOTiKbpovXsu9VW6txJe1gY2cMS2JVPSS8YSN9HNaVhnil3ov80WNMdskaiW30q
         huSb4MbGO6rFcB5V9ZyzXFIrs/IwcSOV+ymCrA9eCntU8+VNaXl6+J+olWwQTgSfBDMI
         wm8nEUIxQIIS94QdHbud9q5ThUxqiA6fFgjHAAZix7mXkL68/cfbiP6ma/E+F5LdD4Dr
         kPkWDo3oJrPftFf3G5H10zn95yGxyBoYHAxVhxzVWY8yM8r1mJEVDihPjyZogw0iFlnP
         Gnrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cyWpO7S37ZxkaKq0qrhR0hEWxkSNPLrDo/Be5ZOAO8o=;
        b=qIIzXv/lthNj2ekYKmbdO7D0UckhKByGD0j9qdoCApmgop9Mqtf02+RACBk8jPXMN9
         IvD0/bataG4yqRhJuk+FY5kHJp10kwT2ASrljhsSSqNamBjt2WVYww9mKY6tXjkwXeNs
         LvXaCGlI7ciukfpvCIym8J4H5KtFUpsmq9OQLdz1SCi5t6lGlREhl2DuG5BwU7jqVoT/
         GfHhV82MpkVoE3VNWNqyuWRJZuHZcMn9n5kIfTe7EfWC8bZYlh2/7bsJ/tR2JUJYrPZu
         SjxNVuzrSjGwqhhPTMbvNH3uQIBTRvl0htfZG2nAGsj0YfHKSayvzhGpT3lwRv2J5hPM
         tv1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oXbT4hNK;
       spf=pass (google.com: domain of mayhs11saini@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=mayhs11saini@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cyWpO7S37ZxkaKq0qrhR0hEWxkSNPLrDo/Be5ZOAO8o=;
        b=JIj+om/RBczWm9raIfshR94HlTpd3YHJe3OZJwdFkZqc0sgr7HtET6tYH0aZ2y4c0F
         +ShM6u3I42fa3fvSp9CKppPWDPKzaa6VqkfYPcQIUA2KYE5nKc9U0mZXBEzdh2iIjL40
         OMhxcUTNmYLYkBFwFR5lu9pvIhg4j+BLsvxMpxW+NEpek9OPzpuJX4PrgkMao0eAE2Lq
         y6UuO8BwqhJl0UefqFL7T5rxGecfw8ZctgAvB2OLFBFWU4WlxX7Jj+JvIHcBB+7+qc2A
         tsb2/e9v7UxaRpfKLHTRJvsysoaILTVbpQ6ShCS58cBtcxuMV5drEfDleSRrHUdbavNp
         q2Eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cyWpO7S37ZxkaKq0qrhR0hEWxkSNPLrDo/Be5ZOAO8o=;
        b=Kihrd9Un5+B1ZP36fmPuI85qE76wGLcDqi+g9WxNczFbD0m03Ly1EI7znZ5U5DsozD
         4Uu+Ysm/74o4lOuEafHSLt8BCm6FG2LA7jTncy57fqF6Kvy7CceIdtPmrMRTAAlEYN1p
         QuNzhLpNO5oA52nUK2KZM/oQlwJVmg4XXZKzd2WIMSrmrKY26b0jdesePgTmf9y0ahj6
         v1lHBkYiGa6lhP/E4scXittXwhe7xCI6PBtkchQGqTxIe3t/ofzIBUhaWkkmog1hC/9o
         cvq8ZC40Ce1bXdMT4CTOW/bRofHS8JqJ7ihiLNCDQjooNbsSxE+JkVUhHaKQvXDvYE0n
         vthw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cyWpO7S37ZxkaKq0qrhR0hEWxkSNPLrDo/Be5ZOAO8o=;
        b=jOD8ossI8iGivtrflrWzKZtlvMBoqpbGwF7jx2DREOnS0rxFQAeaafQhdR4Bnr7Kt+
         9PrWTCuXQnDrZ/6JKn/O98KwmS2dI77CDAlKv25988RKrc6p9uhkPzykW6gsl0kg7AIn
         N9QomjlM66IvWHWO7ATuEIz7rNPkyzpG15K0AEucDsqVid34acT/kewIQAey+9+IKBFq
         ODCh9Ax55dm3i5/I1O2AWdods0wxRrGe9c86KRFyvNU+By2N2C0iZJ/fUEZRR9JsOPDZ
         9+FwdfTPsmkQHmECH4Yf/1JhDkTC8Axu3HP3zVuqB8xLq04JWXFWEsgBu22HDETJwCWt
         IMUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWK0A5yu4k4PZQ7FYTWNEsN0FkHV1/lWaz/KUvnYj/gAvufc1lO
	y4SNbLT/8H/gOYmZa7UlruA=
X-Google-Smtp-Source: APXvYqw5lOXnFgWGDkBgsJ44QtPF+IZoXL5Na8/nvBqSR1Q9daGORM/E4wUUoLfdQ5Zh+CIytU7SKw==
X-Received: by 2002:a05:620a:1678:: with SMTP id d24mr4312439qko.349.1571220720536;
        Wed, 16 Oct 2019 03:12:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:102:: with SMTP id e2ls600553qtg.2.gmail; Wed, 16 Oct
 2019 03:12:00 -0700 (PDT)
X-Received: by 2002:ac8:7109:: with SMTP id z9mr31785526qto.13.1571220720119;
        Wed, 16 Oct 2019 03:12:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571220720; cv=none;
        d=google.com; s=arc-20160816;
        b=ersZb+7H+fCqPt+9r7qACFVEzn3LOfNKWqGQRWnXuiR2/pamFLoLjvwrwMVal7XIRW
         5wQ46ZRm041ltE0ciLdBcro+vzZyNS5+mO1Cz79IaTxa37pTWrhrR3A7552dRzvuG5Sz
         0Jn9LikuQ1pIPGrsUB9/hAqr1gFfKymHBmgWOsc0ipqIWHcLNQUZoWwPdMsroJCmw5Fu
         lOgbPKF7Uv93JlvT4A2Ta+hy9zaShgHEwLEG8ILqsAxqlGFv95hv51ADzAQbOanlOAYc
         P5R7S0nOGTuJt6/QfHu9oqQjs96bqmBRfKj7CWUEmAPI05EKsjS6bCuvnU5TObKAeWpr
         b1+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fIAc7kYct8VpQ13hbYyhIsPB/WrvUenHD8qPKsYEDRE=;
        b=Md2L+1qVj1LdUa5eQ7nuuB+5K3utWJbcv1MWKxHRwnNMEuL8qVZ4T/hqHE5sjIDWxn
         2ezPInTAoaZ9jjhvJ1bw8Ve/VMEoXV+ycgosmq8EhtLxFpg8tiLC57JaD0PBoldoMVW6
         Z+6BeZJcKQ84yiKt54q6CrR8/JMKuVtmJ/QsJwiQEiyqWoaM8dNp9wd+cSF/2RRlVzWS
         /6VposRWgqVhFbLyKgK3VoRKjcp1Ge3HL/0b4GttXQlGEBkB8sRlFaz6AbXt/wHwaF+M
         8Va53FmgNQf3/N5U/XKnkgHBe8TtxxgeFHuS4HAwe4xK+EoXXhg+AB/lRDjhrO1FMRCF
         vJ+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oXbT4hNK;
       spf=pass (google.com: domain of mayhs11saini@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=mayhs11saini@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id w41si2378230qtb.4.2019.10.16.03.12.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 03:12:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mayhs11saini@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id o205so19518283oib.12
        for <clang-built-linux@googlegroups.com>; Wed, 16 Oct 2019 03:12:00 -0700 (PDT)
X-Received: by 2002:aca:dad6:: with SMTP id r205mr2642336oig.6.1571220719443;
 Wed, 16 Oct 2019 03:11:59 -0700 (PDT)
MIME-Version: 1.0
References: <20191012122918.8066-1-mayhs11saini@gmail.com> <20191014022543.GA2674@ubuntu-m2-xlarge-x86>
In-Reply-To: <20191014022543.GA2674@ubuntu-m2-xlarge-x86>
From: Shyam Saini <mayhs11saini@gmail.com>
Date: Wed, 16 Oct 2019 15:41:39 +0530
Message-ID: <CAOfkYf5wagQzj0UboBdBh6iDq1ox=TN7inpatuhitw+Gsak1GQ@mail.gmail.com>
Subject: Re: [PATCH] kernel: dma: Make CMA boot parameters __ro_after_init
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>, iommu@lists.linux-foundation.org, 
	linux-kernel <linux-kernel@vger.kernel.org>, linux-mm <linux-mm@kvack.org>, 
	Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Robin Murphy <robin.murphy@arm.com>, Matthew Wilcox <willy@infradead.org>, 
	Christopher Lameter <cl@linux.com>, Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mayhs11saini@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oXbT4hNK;       spf=pass
 (google.com: domain of mayhs11saini@gmail.com designates 2607:f8b0:4864:20::243
 as permitted sender) smtp.mailfrom=mayhs11saini@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Nathan,

On Mon, Oct 14, 2019 at 7:55 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Sat, Oct 12, 2019 at 05:59:18PM +0530, Shyam Saini wrote:
> > This parameters are not changed after early boot.
> > By making them __ro_after_init will reduce any attack surface in the
> > kernel.
> >
> > Link: https://lwn.net/Articles/676145/
> > Cc: Christoph Hellwig <hch@lst.de>
> > Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> > Cc: Robin Murphy <robin.murphy@arm.com>
> > Cc: Matthew Wilcox <willy@infradead.org>
> > Cc: Christopher Lameter <cl@linux.com>
> > Cc: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Shyam Saini <mayhs11saini@gmail.com>
> > ---
> >  kernel/dma/contiguous.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> > index 69cfb4345388..1b689b1303cd 100644
> > --- a/kernel/dma/contiguous.c
> > +++ b/kernel/dma/contiguous.c
> > @@ -42,10 +42,10 @@ struct cma *dma_contiguous_default_area;
> >   * Users, who want to set the size of global CMA area for their system
> >   * should use cma= kernel parameter.
> >   */
> > -static const phys_addr_t size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;
> > -static phys_addr_t size_cmdline = -1;
> > -static phys_addr_t base_cmdline;
> > -static phys_addr_t limit_cmdline;
> > +static const phys_addr_t __ro_after_init size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;
>
> The 0day bot reported an issue with this change with clang:
>
> https://groups.google.com/d/msgid/clang-built-linux/201910140334.nhultlt8%25lkp%40intel.com
>
> kernel/dma/contiguous.c:46:36: error: 'size_cmdline' causes a section type conflict with 'size_bytes'
> static phys_addr_t __ro_after_init size_cmdline = -1;
>                                    ^
> kernel/dma/contiguous.c:45:42: note: declared here
> static const phys_addr_t __ro_after_init size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;
>                                          ^
> kernel/dma/contiguous.c:47:36: error: 'base_cmdline' causes a section type conflict with 'size_bytes'
> static phys_addr_t __ro_after_init base_cmdline;
>                                    ^
> kernel/dma/contiguous.c:45:42: note: declared here
> static const phys_addr_t __ro_after_init size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;
>                                          ^
> kernel/dma/contiguous.c:48:36: error: 'limit_cmdline' causes a section type conflict with 'size_bytes'
> static phys_addr_t __ro_after_init limit_cmdline;
>                                    ^
> kernel/dma/contiguous.c:45:42: note: declared here
> static const phys_addr_t __ro_after_init size_bytes = (phys_addr_t)CMA_SIZE_MBYTES * SZ_1M;
>                                          ^
> 3 errors generated.

Thanks for your feedback and reporting this error.

> The errors seem kind of cryptic at first but something that is const
> should automatically be in the read only section, this part of the
> commit seems unnecessary. Removing that part of the change fixes the error.

I have overlooked size_bytes variable
It shouldn't be const if it is declared as __ro_after_init.

I will fix and resend it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOfkYf5wagQzj0UboBdBh6iDq1ox%3DTN7inpatuhitw%2BGsak1GQ%40mail.gmail.com.
