Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBQV4QL3QKGQEIGXFWQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9FE1F5083
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 10:48:03 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id f16sf1452485ybp.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 01:48:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591778882; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ct2BxKVSCOOkAIdSkQgp3+12TwSAXMsuDiAcRu1m3CByqBBPMTCuvk7aKHOCc4sm0d
         dkFRRQbsHMf1lsC1ySKWuZOcmwPkOa9gwu97b67faAe/t4Me8/u2IxF92pM1cXKk66r8
         RpZrf8+Nv2I6P9ySRgt/6rgYW6OYd4ESPRiz0r9tQ2jNWJbXWqKzvyMW/G1UEBkXBpf4
         hFwJpfGWZPOJdRaacnSKlJc0N1LoKFG8pERtiVOwg1NK0bYKViBU52DigjcbeOlhw4+H
         OBx3rZ/X//ujBs/zOrwiLg+nHup9Ywsw1KSyr+/1G79EK/9v48JpTuuSiOIXUGcvGV5D
         UkKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=G7ldojokNv52ibnV2WW47CQ5/l1cSWNbarjN7QnWJvM=;
        b=iBqWsOiWSwbv6nKI9bB/4i/93++/ZSjQRuC1qFjNnjElbrzb/uxZRJbaITPsABNfZK
         kzgB9wcJz9Im5eui0u1aUyXzXpsAROHn2HaoCWK5PoESqWH6+dhRaKcFJ/LzPJSas/PA
         ad2UFMzP85d2ZjnoSJTxVa6xUn1wZQFsWIZoxa/RR09+Mg/7VBny1JcdZXR85157d7J9
         TnsTZTqDnP07uByuPTWwjTUa8SyPaOvMXPgE8srIyMnFeTxRTqoDJ1uidXsyS+DBg4g5
         VEFhiArGtapzNJhNevtYCcyBIStu8L9ZaMA83kYaFTZivaLbVC0i6pholeD07phrun+V
         +7lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yPQ0Gn3M;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G7ldojokNv52ibnV2WW47CQ5/l1cSWNbarjN7QnWJvM=;
        b=QJchtGXDhcebEhBoljVyru3GrDqvL6lOllF2Cy2SRJBMPFZsuJrMB28qsMrI0xEEjT
         FMuqL9+nrtV6Cc6cwoC77adclFLPJ8eCAO6mGXme6DU8zRfW4zlrCLe8Jf+MB9p9igBe
         wXEbjemLmtJ8SP/CkPlTQqkrVYgF57TCfR6L/4JGaHkaTLTTfGn6HL9oUZML+aGjrYNc
         wcTBJtMLV3/eBtfun24qM4rY88wYv1GuHsxdmNTWLvMGy5hlYj3+RNUrZmh15gCjLOOE
         rQ35TIJACzVg1ECNQkWnAJNukSv/u7v1FkK4/EX/06gVs9o9kiCIQZbgz+sZipXV8f5z
         sPzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G7ldojokNv52ibnV2WW47CQ5/l1cSWNbarjN7QnWJvM=;
        b=M3WhxGxan2MJWnOPZ3kR3GXxMLaEKmlKjjQLOuBg2S0kSIj/jquKvHsvW7bp99Gt8A
         /RgaTCm3sPfunVJktD/qGqRvKmqX3WN7N1yljg+No0KxEvgSPK16MJmOBxUSsNLzbgpZ
         IHkIueD16dL39X0btBXPHm0d1yT3ZURensRjWewVaglJEYu7vkHhPNZILCLWHJrGxP4I
         QFtMtcV+FZVhBpUKHMBvG0hFH/d0+uXF8ah4rS0h+39gMAAW1ZDGXSKUb4ybhBeBkS3o
         Id0e3tbOehM0gwzhabgkiNhBim2x8tSK3KrT9uunrK9vQxXfRrEolPR40onmdBQmnemw
         vg+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jYPWmByY2drO9b3QhrQrBa5Xim9e6MqUBYKe4Wpis8REF8oLb
	83wJPHNdtu64MJIWmFQw3hk=
X-Google-Smtp-Source: ABdhPJwjT16hpWO4vJzW1GiQrZC8g3WTU+9cK0os1fP9jGNbMA25t0RYS6MpRd7O8GdQt5w8DiIFOA==
X-Received: by 2002:a25:b98e:: with SMTP id r14mr3934717ybg.20.1591778882486;
        Wed, 10 Jun 2020 01:48:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d603:: with SMTP id n3ls2353246ybg.3.gmail; Wed, 10 Jun
 2020 01:48:02 -0700 (PDT)
X-Received: by 2002:a25:6b4d:: with SMTP id o13mr3904782ybm.496.1591778882198;
        Wed, 10 Jun 2020 01:48:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591778882; cv=none;
        d=google.com; s=arc-20160816;
        b=WtwGchOx+2mgv4Uq6c4iXVPKV7NZNow73Qtzbm/Nk783WmaZrwq9daMiAQJHzmcA2l
         VttXpK9IMxzHs9FZV0MrIRdm9hyylynMHSB+8X5256ocH0XsGA+psWnziG6ZdakPWnXx
         kQlzeecFkEcDOe3woaMxepaEqkY2nQseyokTKWvpjvQBbhUbJdPxTab4nORaLoQ7yIF/
         MMOcNYeHRyGmMHxIwj9jq9Cs9ov03Gs5KmjYb1vdqLjv6adPU1zwLJthfpHhsGwG9HGw
         v38sj27svfLOS/ppvOVbVBe/geDA0tgXamakmNKd6K2UaEQVSVGB+VSG046ujZodr2sb
         lDtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=P+vvU45MJMiDu6p0L8lu+2vQjc3zgE65BjIoqAuLI8k=;
        b=MBZWaDNto/RhEtoXSxAkPOk94Dl9D05k12N4ev6KzU4rsE7NMDxwlMl2Shapo8olRG
         +DDRG+IALb4npsd4rIcCKzx8S9cCyqY4cvueDESDdkZ4mgEL6uHLNY9DppMrMb11K1cd
         P5bhXfkKg9REBhDTjlqeZkCf9ujMBd6UFULqyiuhTR5MO5lSP6M9P2cOccD2sNpuaBJJ
         GXosYVUEuCiDiWaqG01vOVyN2azE6LL4TYEM1/XKpWNXX1MghtwPZWFbUpWhNI5wAcHb
         C9iggy2Hr81PYrwwAUc+Y/3l9VQNbeoTFFnqBtAhkCsaRUKphYApK4a8i3VOvOOA3eQ1
         rFLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yPQ0Gn3M;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n82si191432ybc.3.2020.06.10.01.48.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 01:48:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EDCFD2078C;
	Wed, 10 Jun 2020 08:47:58 +0000 (UTC)
Date: Wed, 10 Jun 2020 09:47:55 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Stephen Boyd <swboyd@google.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Dave Martin <Dave.Martin@arm.com>, Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Naohiro Aota <naohiro.aota@wdc.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
Message-ID: <20200610084755.GB17035@willie-the-truck>
References: <20200528072031.GA22156@willie-the-truck>
 <20200608205711.109418-1-ndesaulniers@google.com>
 <20200609203502.GA21214@gaia>
 <CAKwvOdnDeYQ-tbyW8=tcKcbbFxtDzqk8dCUSzbBYP1amb9a2hg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnDeYQ-tbyW8=tcKcbbFxtDzqk8dCUSzbBYP1amb9a2hg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yPQ0Gn3M;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jun 09, 2020 at 04:55:13PM -0700, Nick Desaulniers wrote:
> On Tue, Jun 9, 2020 at 1:35 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Mon, Jun 08, 2020 at 01:57:08PM -0700, Nick Desaulniers wrote:
> > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > index 7f9d38444d6d..fe9e6b231cac 100644
> > > --- a/arch/arm64/Kconfig
> > > +++ b/arch/arm64/Kconfig
> > > @@ -1299,6 +1299,14 @@ config COMPAT_VDSO
> > >         You must have a 32-bit build of glibc 2.22 or later for programs
> > >         to seamlessly take advantage of this.
> > >
> > > +config THUMB2_COMPAT_VDSO
> > > +     bool "Compile the vDSO in THUMB2 mode"
> > > +     depends on COMPAT_VDSO
> > > +     default y
> > > +     help
> > > +       Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
> > > +       as -marm.
> >
> > Now that we understood the issue (I think), do we actually need this
> > choice? Why not going for -mthumb -fomit-frame-pointer always for the
> > compat vdso?
> 
> "Why should the compat vdso be configurable?" is a fair question.  I
> don't have an answer, but maybe some of the folks on thread do?
> 
> Our problem is more so "if the vdso is built as thumb, we need it also
> explicitly built with -fomit-frame-pointer."  Whether it should be
> built as thumb, arm, or configurable (and which default to pick in
> that case) are still an open questions.  Will asked for it to be
> configurable, so I sent a patch making it configurable.

It's configurable for 32-bit arm, so I was just following that as it's
hardly a maintenance burden to support both. I suppose you could have
a toolchain that only supports one or the other, but it does seem a little
esoteric if you're building a kernel for an arm64 CPU.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200610084755.GB17035%40willie-the-truck.
