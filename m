Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB2WZWD4AKGQEK3UALZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC7521D30E
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 11:44:11 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id d18sf9160868ill.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 02:44:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594633450; cv=pass;
        d=google.com; s=arc-20160816;
        b=O92wrumX7CFFHKrFBKU4YklYrQJZIs+hXGMXKF5n5d6ks/5aDT1TSCl0FF6t4Yhu1n
         VIVeF82w4cOctNT8hJDuiHnMVvntOqFKPPAOAXf6Ys9NuwctApz/QshQTiV4wcR+BhJ0
         5Vdo7rmz45OiazrIuNCG8AlD7oC9LYBdimAdfRmBadzRoNBT4PJ9pxflxPw+S1SqXy6k
         uJpTbGXgCSz2mjFmcgOWJ+5jz5aB78Tvr7EuElIh3Uyk/TSvlENj+jQZFjDmNptt8fng
         rKwLJsC5SO5tpvQnnq6nJLbTNlfYvEy4/AioefNbWIt4P6G9YEtSQaATPquJZgT/Xtig
         FQ4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jMo1yUC7YgRzNF1FF92e7AawsAAZ9vkKMsaj0DmpD0E=;
        b=skIPB67A7I09p/GOIEAOmQRk1ujzzDJ7u+1CkAAhKYkU2U2o1GMTnVgMiu2f3v2Kg0
         ankExXc2RpKUffqEbYYXel/aMEvBkOKjwPguBa6qdYGRxUCp+3rK1LTLelSkv1kzT2RY
         UdeO8BwEza3VDFai/xgPi3vudkvnJ08uTQeDpH9mz9F085oEVI3oOulTjDIaDIKO7PCM
         F7hQmRMziYJQpTe2QbFemXZWMa2GNMuVZq4C22OyUL/xF1xN2Oi5bHIkWlXk3NjX76dQ
         V4thlvEF6gVkLQ4q399NQ8oHH14NAVKURxRLp4ZMqr0JYyHoPE/6uc2f6a8yLW9hQdii
         MZCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NSMgQy5y;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jMo1yUC7YgRzNF1FF92e7AawsAAZ9vkKMsaj0DmpD0E=;
        b=OhP/hI60UcgpngaFlicg5mgNHxX8TPYoafMKVa7rr7ZbNE+J+Mp8rWKnPcqZLEwiSI
         0buqMrY+nTyDeG4kltLH5uE2FZurq696StTRrGwJeaKnpgEX9cov59LAeHEBdKntZVvU
         0D5FzuYu8lW6QeO6e4fGFA+RdYaj5NQVg4iT5Ialdh2x765IE/s1FmABdqpHqo0ts8Dt
         W/wUZi8cogDwhq8PMuFMivClaQYSWqymjwEFZ6wKrcZ2WtoJjnq8RbON/7NjBQvjwlUt
         hU4EnymTPV8nxkOX6OHVvYUP81WnJp1NprPrZwKPikCg4wwHBJThVTwaEUhcBa8AZGlg
         H2qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jMo1yUC7YgRzNF1FF92e7AawsAAZ9vkKMsaj0DmpD0E=;
        b=Gka41hKrtalOIxlY7K5u1hfydrnmcsFmE01C79GFZK0UfIOhOyEcApfMOvtBrcBNLQ
         iDbM8ZIxlvDLuOL8JmSRbg4gRGFrrzvKDaUrssvemORAIFEcM4pRw3cEgLQVlleL5n7h
         UowWV8BZJlRluk/8wUpPjWSlPGZutAfo/UNsa1cDYQ0I/rIvxI8h+OSPZVv6ZeS98vyt
         4vmq/Y/8wCLJpo681My6XERZ7723VnfocSvbA5M6v/wpJJWDgA16gXP4l/AkN3Eu8DSp
         +IgED5RkNPqgWwXK+fWkZI2c9HL3w32TkaJ8G51mt0J+eLuD8lbiOvAAszYNJ1r+LxR2
         Pm1Q==
X-Gm-Message-State: AOAM533YhRFZXIxDQK7oyuFMRd8ctKHi6pKefxCXEfFWHRgZe0antG2r
	p+gehxwGe3usCleYt7vCCpc=
X-Google-Smtp-Source: ABdhPJxvG4ecnpVRZGWnv7uTuYrziq5ZupLh8tpN6fW7LsXbCWUn6cAl5WxHLcpeQyknCCLvUPVMfw==
X-Received: by 2002:a02:b81a:: with SMTP id o26mr81900398jam.41.1594633450357;
        Mon, 13 Jul 2020 02:44:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:aadd:: with SMTP id p90ls4050489ill.11.gmail; Mon, 13
 Jul 2020 02:44:10 -0700 (PDT)
X-Received: by 2002:a92:cbd1:: with SMTP id s17mr9314828ilq.43.1594633450051;
        Mon, 13 Jul 2020 02:44:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594633450; cv=none;
        d=google.com; s=arc-20160816;
        b=ouPjb4Aqou0itBIQ6XQ7wYGwBKijZkrYAazWa1rlzLA/J0etYunjdbUuGrGgrooia5
         g9MwcWCzP1GxfIJFVnF2xpBP7mjVxnAW+GjUrAoFPd2kGvl6RDfRGbA8UIBL8BfYTp1y
         YmzdSh7ekbGMlxj9snCQz8Q1bKC+pt8T/Mi5F2SfBEOTTHUTcfzUuJuGha7rdNCIJCXr
         drcJ+5ATLXSxO/n5SYW8EBllU8gu4J9SSHE6qf1Uth+RXwF/bCsIjN/WPLXN5bwv+Yzm
         xijbVbzP0KYEHqlD2LtSWOmv2ROl/WiMAMMb8qGEvbBqdHnRzLXXM8KUUa+Ewgz48h5T
         vrbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6jaIJflUL9k2e2UMM+JSLx1wjPZ/zAPnXmkJg4wz7mQ=;
        b=NnMju+U2Z7lmeso9IJB9M3sgDOVAmgnwIfcWlR0iAz0Kj6j9nMVadn546x8nNF5dId
         m7nOl9RYYKpPqlEpOUevfZobKVtT+z+63DIDdnWO1rBujRRFgVeG9G9UJsH0e/LQCIhm
         pMi93eLqmfygeBSci2K1lUWksn1PCAxKuBRwsfhm7l8tWhQqVOnDSKMqWzQtH9UKXZ3d
         EPugzmNgWbo5YjYXBvuN5+sscrS3PxGWoaQfuFHFXw+V2JWEgIIN1IxUm5CpFYsZTXaH
         SB4G3qyhcpeCfRPDDR8dDqz2jgurN/HJ+ovQIMEIk0LGBwDZBJfpMJa48iaVCFg7ckVH
         DCkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NSMgQy5y;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id t7si723719ilh.2.2020.07.13.02.44.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 02:44:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 95so9045774otw.10
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 02:44:10 -0700 (PDT)
X-Received: by 2002:a9d:4b01:: with SMTP id q1mr53019086otf.17.1594633449383;
 Mon, 13 Jul 2020 02:44:09 -0700 (PDT)
MIME-Version: 1.0
References: <000001d5824d$c8b2a060$5a17e120$@codeaurora.org>
 <CACT4Y+aAicvQ1FYyOVbhJy62F4U6R_PXr+myNghFh8PZixfYLQ@mail.gmail.com>
 <CANpmjNOx7fuLLBasdEgnOCJepeufY4zo_FijsoSg0hfVgN7Ong@mail.gmail.com>
 <002801d58271$f5d01db0$e1705910$@codeaurora.org> <CANpmjNPVK00wsrpcVPFjudpqE-4-AVnZY0Pk-WMXTtqZTMXoOw@mail.gmail.com>
 <CANpmjNM9RhZ_V7vPBLp146m_JRqajeHgRT3h3gSBz3OH4Ya_Yg@mail.gmail.com>
 <000801d656bb$64aada40$2e008ec0$@codeaurora.org> <CANpmjNMEtocM7f1UG6OFTmAudcFJaa22WTc7aM=YGYn6SMY6HQ@mail.gmail.com>
 <20200710135747.GA29727@C02TD0UTHF1T.local> <CANpmjNNPL65y23Qz3pHHqqdQrkK6CqTDSsD+zO_3C0P0xjYXYw@mail.gmail.com>
 <20200710175300.GA31697@C02TD0UTHF1T.local>
In-Reply-To: <20200710175300.GA31697@C02TD0UTHF1T.local>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jul 2020 11:43:57 +0200
Message-ID: <CANpmjNNetBqbqDbRS8OQ9z5P=73vAXG2xys6HKSg_dzqp9ksqA@mail.gmail.com>
Subject: Re: KCSAN Support on ARM64 Kernel
To: Mark Rutland <mark.rutland@arm.com>
Cc: sgrover@codeaurora.org, Will Deacon <will@kernel.org>, 
	Dmitry Vyukov <dvyukov@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NSMgQy5y;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

[+Cc clang-built-linux]

On Fri, 10 Jul 2020 at 19:53, Mark Rutland <mark.rutland@arm.com> wrote:
> On Fri, Jul 10, 2020 at 05:12:02PM +0200, Marco Elver wrote:
> > On Fri, 10 Jul 2020 at 15:57, Mark Rutland <mark.rutland@arm.com> wrote:
> > > As a heads-up, since KCSAN now requires clang 11, I was waiting for the
> > > release before sending the arm64 patch. I'd wanted to stress the result
> > > locally with my arm64 Syzkaller instsance etc before sending it out, and
> > > didn't fancy doing that from a locally-built clang on an arbitrary
> > > commit.
> > >
> > > If you think there'sa a sufficiently stable clang commit to test from,
> > > I'm happy to give that a go.
> >
> > Thanks, Mark. LLVM/Clang is usually quite stable even the pre-release
> > (famous last words ;-)). We've been using LLVM commit
> > ca2dcbd030eadbf0aa9b660efe864ff08af6e18b
> > (https://github.com/llvm/llvm-project/commit/ca2dcbd030eadbf0aa9b660efe864ff08af6e18b).
>
> I built that locally, and rebased my arm64 enablement patches, but it
> looks like there's a dodgy interaction with BTI, as the majority of
> files produce a build-time warning:
>
> |   CC      arch/arm64/kernel/psci.o
> | warning: some functions compiled with BTI and some compiled without BTI
> | warning: not setting BTI in feature flags
>
> Regardless of whether the kernel has BTI and BTI_KERNEL selected it
> doesn't produce any console output, but that may be something I need to
> fix up and I haven't tried to debug it yet.
>
> For now I've pushed out my rebased (and currently broken) patch to my
> arm64/kcsan-new branch:
>
> git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/kcsan-new
>
> ... with a note as to the brokenness.

Seems it's not KCSAN specific:
https://lore.kernel.org/linux-arm-kernel/20200507143332.GB1422@willie-the-truck/
and https://lore.kernel.org/lkml/202006191840.qO8NnNsK%25lkp@intel.com/

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNetBqbqDbRS8OQ9z5P%3D73vAXG2xys6HKSg_dzqp9ksqA%40mail.gmail.com.
