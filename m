Return-Path: <clang-built-linux+bncBCR5PSMFZYORBTXWTH3AKGQEC4M5TGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A5A1DCD64
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 14:59:59 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id x20sf5530799ilj.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 05:59:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590065998; cv=pass;
        d=google.com; s=arc-20160816;
        b=bxshbI/ptqMwk2u9gjmytkDdAgSQiPQrzqVTmrl79BuFEzINih5Ul5XMemacQEOwKw
         b5mVIcvTRHR09VhkoZ7z7TCXuAvZGCCMPTwRqGeq7tLQ0d7WVyb5berHCW2ZY7AHUGJT
         yJLRROhGiYLi4qzAa/Gw0InbT48Y2TnJKMWo3lUBr2L3PoSZlt4DuNpzTcl33oXMduq+
         7pZNuTw4uIuW37ZCAbwMsn1S3pzB5gP5LV4YKk19rMNBdilJ5+zTSDGJbfL5GGQ4wkrf
         tzzrrPFqDJzXGy+CXq+XnqqjRwmRdE4K0u7GTpOZV8peN+rtiHEO4YM1+Fo6ggK21AD+
         O01w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=RiWLP7uGBuxOq9aEn8zKVu1pQRLa3FMq1FCl4x5Gv0Q=;
        b=S7CZ/A3cNiQgK8gi9k8YCc/m2qb7tzOX9UxvIuQelKoZ/CMAl/nPwyxBRfvYrzkwHw
         d/ClanLxMzLAo1jBbF9CiZbXEHX9UqNHVoviC/zi01PnZHFEDnVfGnH33oG0SrCmTtCI
         nbkn6Mu2DnWct3sLm/bfNQaSK1LDo8Jzggji4X62cEmGM/iV2rmwngBQlcBEYko4OY+U
         4KR/XUej2IPIzPDELWmDH0yZgP/s1VsZeZ03alOiv93myoLJVAsjRDWopQxPRzZKlCDC
         9uddCshTAK/Is37pyZKHuchTH2vYd3gKsfPnbyFyRI+Jz2nffksyzYHyPMrgpRT9b+H0
         BdEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=paErik3v;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RiWLP7uGBuxOq9aEn8zKVu1pQRLa3FMq1FCl4x5Gv0Q=;
        b=a2t5lYJXwagfoMH+pv/5wTca4LaOdqJNoj0CSTwDmtkbLE2GjN4ycLRgZ1xI+AIXzt
         fgkEdgrgT9PPU4c3qFwyOtXyLPVNrh22ho0ZQujZOqlnW0BVWiZE7fkbu0JY8Zh6lspq
         crev6WH+RVdjL5s3bybnKHOZjDIX3bkbQfRtgiGxiCtMsxZkUXLFVnQCA78LOxtGcqO3
         8F77smPatoRvUFSdSFJCDIc0Ch1E0LFsXyqt2RuxwPCgxWmJuhqDJT62SAM6NDxgX4Z5
         lFRuBYwxUBXaggCAGSAIHP//3G9aMBBJ4uoX/huVU6SaD82RfyCJHNDeJ8V+F8/rLBpu
         BbZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RiWLP7uGBuxOq9aEn8zKVu1pQRLa3FMq1FCl4x5Gv0Q=;
        b=hkpXSaSJ/fTk64BF+07bDJhMUcwLPgClMdHuFyF2/DVYnatiOPTLDuaAmEbvrAwQXs
         s7AjaHYFaTHpcnWTHUXtCE0POS+plGSiE+aKxU59O8lM61y6XsolDwKjQ+xJcGAH/3c6
         wNnjm3OBhZ4TOQZQBnsittjEjtUQXAGwbF/aflI4vn93S0mhSByZA9KNJon4fh/BNiy+
         2PAoIVHkH76bFsr5sRAwz1e+ci9wW7pIql1y8IvDZ0q5dqoPj6ofz5/LrptzyjB4D/oy
         sjmBoKGZDc1d2op4Sj8LoX5ayqGokD5I4gG/QXzGDwI+HnW9Q2WnhJZftyRIag+uzacJ
         um+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309r2qbL/T5+ruVTsfPMK2+1OZH4JwvxjV/hfsk1z620B3gAkaI
	Kuxfj4cccsycvWQU/LezEPg=
X-Google-Smtp-Source: ABdhPJwVJ23/LNd/01iatJ4Asty2mVPEgCbNdxxhlvmW5Ix3tZ2gxVMb+vhJBbFnWdFfdNAbBkMsIg==
X-Received: by 2002:a92:9c52:: with SMTP id h79mr865153ili.252.1590065998737;
        Thu, 21 May 2020 05:59:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a98:: with SMTP id c24ls606614ill.0.gmail; Thu, 21 May
 2020 05:59:58 -0700 (PDT)
X-Received: by 2002:a92:1593:: with SMTP id 19mr8400757ilv.291.1590065998391;
        Thu, 21 May 2020 05:59:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590065998; cv=none;
        d=google.com; s=arc-20160816;
        b=PscDK0k1DDmYLQbo2VaWi8AXHvaWXhD6F3wI4jMXCuSvDiyXZ9iwNvZcbfr9GbLlt8
         UKX6khCQwTH9OgszAbDRlpqB/3zY4cl2WUMuqxdbieq/Vm0/FzIAVoHRv/6PZjkehu/R
         w+i6gmq30+eqO593hI069FhE7ZeFe+curTU+kq69/gUcHBHC75u68afVQQFY6V5yUHr5
         GWew6URt+KY1qv0uLbYkjOG50Og/oUL8WclsyHnuTFAcN//mAK1cQhBOHmE48cx2jt8m
         AvxYtLtTuqilGYqXv0xqzRwEDd0c/Ns6GrPaJqatKeEiDTvYkg/NS/LqAtGv29Sq7Ptc
         zSYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=AwLM/FtL2M00Itzb43RFCo43QzrSQl0f915cNfyjF6U=;
        b=TUiCUjMf5IO0MxIYiAc5u8jfhfazvf5bn/feNidlDLqhDXAYD9guR4pD3m9PJHPewn
         xs9NJ2BT8QfCRn0cAHRQkFVtdGzQ61DcmSu9tg/x30VqfWHUgh7rY5XNPlM+/H9hj7Uo
         a5Dz5aCQMxL1IOVWe2WL5v3a01YA1Gv97vYYWfG4LIUmVQw44vXaUarNme9Mgi4x97Mu
         FWxpOkti6ZEMXvxCTTxptH1JAZUHH8H07f8avZBsUFPqe3kHcIC2PCscg/vKFLadSsZ7
         a0brsNdWWOgnJptBlAO5o/x9skPvK7qhz2qvHUdqZK3IrAZYf+Krry5v3SnB0qR4WXnn
         VT1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=paErik3v;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id t8si363724ilj.5.2020.05.21.05.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2020 05:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49SV876KwXz9sPK;
	Thu, 21 May 2020 22:59:51 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Fwd: [CRON] Broken: ClangBuiltLinux/continuous-integration#1432 (master - 0aceafc)
In-Reply-To: <20200520010148.GA3327346@ubuntu-s3-xlarge-x86>
References: <ClangBuiltLinux/continuous-integration+164415390+broken@travis-ci.com> <5eb43a0c8d43d_13fb5db924ca0104770@travis-pro-tasks-6cc9887df6-4zmjd.mail> <CAKwvOdmendjEgurRBAyi4R0rDZRdwfHjddS_pfOQ6761XiiFMA@mail.gmail.com> <87d07fcdee.fsf@mpe.ellerman.id.au> <CAKwvOdn0Spc15v3WUE_rdrb5UvaTXmOvjEJOsD7ahktQOwQk+A@mail.gmail.com> <20200520010148.GA3327346@ubuntu-s3-xlarge-x86>
Date: Thu, 21 May 2020 23:00:12 +1000
Message-ID: <87r1vdh28z.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=paErik3v;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:
> On Tue, May 19, 2020 at 05:56:32PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
>> Looks like our CI is still red from this:
>> 
>> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/166854584
>> 
>> Filing a bug to follow up on:
>> https://github.com/ClangBuiltLinux/linux/issues/1031
>> 
>> On Thu, May 7, 2020 at 8:29 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
>> >
>> > Nick Desaulniers <ndesaulniers@google.com> writes:
>> > > Looks like ppc64le powernv_defconfig is suddenly failing the locking
>> > > torture tests, then locks up?
>> > > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/329211572#L3111-L3167
>> > > Any recent changes related here in -next?  I believe this is the first
>> > > failure, so I'll report back if we see this again.
>> >
>> > Thanks for the report.
>> >
>> > There's nothing newly in next-20200507 that seems related.
...
>
> This is probably still a manifestation of
> https://github.com/ClangBuiltLinux/continuous-integration/issues/262
> because rekicking the tests usually fixes it.

Oh yep.

I was looking at the RCU warning, which I still don't understand, but
the lockup is presumably the same problem you hit with interrupts being
lost.

> We should probably just disable the torture tests like we do for x86_64
> for CI because we do not have access to QEMU 5.0.0 where this should be
> fixed. I believe it is slated for 4.2.1 as well but we still have to
> wait for that to be updated and packaged in Ubuntu.

You just need to start building Qemu HEAD as part of your CI ;)

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r1vdh28z.fsf%40mpe.ellerman.id.au.
