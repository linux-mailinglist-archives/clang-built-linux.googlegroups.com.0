Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBFNN3T5QKGQENYR2A3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D1D2811E7
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 14:01:27 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id m10sf799605ioq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 05:01:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601640086; cv=pass;
        d=google.com; s=arc-20160816;
        b=uS4unTJqCtVCZNkucneRM/Zvqp+QKunY+NzdjV+fHdDZALsFBJWt0DfAPLAkID1gIm
         cfP/QCzYJKvnrJXvhxuYttJTRV9mL20UahiUnIIUwkfzihe2xr0gXJLj2UQ7xufJXQVm
         4hdrW24p+SZZsjAxnWDjXNF8oi7YLsjY8r0KyjHCxIQxSVqGvNlvE5Qs2E2SjLxOW6yZ
         KfkcmoKBWtsbmLbf3cLdfuDF+o2TaCpB7xx0cJDAuUfoH4m+LOGLyqoEUKaYufS4T9o1
         e5tTwXjXlACIprjfVlVGG4SAWkzLeciNwdnzb61dCQFWO6fGxn3SlETHzKojeU/Q67s1
         wScA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZAiZd5cbLv2DYBU1osIUT9SJmHgzUA4yWl6TjqLMnjQ=;
        b=kzed6oLy/TBsTTcxogJH1ScpbuT9ThpXbzGwqoRuvsOIhU8m6ijBG9HKnutm2PFKo5
         oJkrJF97kLA7pYGsqRPQKPcby0oUFid0C1nwjHt7z8CbWiErQnNWBeH7SAwG93k6u8kP
         Yx8iTvcyLllH1OSqw6e8rqie0R9D+pgKGN05UplCQUqwH9fCNYfms//o0Cz6H1yLvGiZ
         TjUdpaUSgLjNOgSszjYXdhDKst5nimTX5R2h80n8ZqPwvNrfkW3Ms+TpNebLDXg4IbUw
         8p8OH9F96Syo1f1atcDymIacx+Am56d3IAwxs+iz0LdNv6u3cUj5yCT+W2RC5CEI1/lC
         mQzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oRCA71Ad;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZAiZd5cbLv2DYBU1osIUT9SJmHgzUA4yWl6TjqLMnjQ=;
        b=P36gHqoSze/6XyzG5xpjo06oipAOIHVGibVZzVf0Xwh/T/BTmmKk9FnXHNrfWujKT8
         O39bTdsXjtSsIkuM39KyB50XYEtH0yKdkoTTtW/9VdiHa51R2iqWv4U19tuhT/Jmix49
         +i77MIqbSV+XBAVLLobbvHS+1l6Ne5Yko7d9U6M3UlVqCtxiSN36VM2XdF3EehWLXQIv
         EL1LIgwXn/MoJ5gv+rmvpR8q+RBvaeQWvsNp0XhJ+kEMy0InDFnwVup1giadCWVNJIl5
         M2cj6/bJF862Y9ObTu+O2mNHKvdLw4w7bo3oZMS+nRdk3fO/Pj3dfN9JoBYOqjMvfILP
         0hhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZAiZd5cbLv2DYBU1osIUT9SJmHgzUA4yWl6TjqLMnjQ=;
        b=g59Dai9tfv0VwEpoKqAG4bvC0c/xgLZptyCQF9ljzrvhWyfTlmTyuSL/R6d8hUZzrC
         /VNZhOjZRA/dSGXNPzr8O4/0VhDB0kwoLIq/Ztk4qbmXUUEjIWLAXhMBI+1AvMGHDH6/
         wU6vREBgHml8CTxWrbbnGlSwIDhdJM+ePIRLz1nvtp9wjA2D7yMTRuRgO6w3HYFAg2cg
         HwY9AP7/wC4WDYpEuCc/qZp4oJ9/KnFNL5YkoQjAB2UsNnBiwB+pCn1OpKNVVCK+UUCk
         +dRy/DAuzZyPlvXKXVgq5vLb6OpU5yNHWci5FGGzvbZBcSzoM8I83yIAl3hlwFL84/Kb
         r+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZAiZd5cbLv2DYBU1osIUT9SJmHgzUA4yWl6TjqLMnjQ=;
        b=JUO1SZjup+M+87Mp0yyaQuwuiBbZaKEyO33sA7XyciOOHBPtyozjUrm9rH+9fdyEaq
         YWvF/7FSXwDVJ27qALwX09/Z72OSOuG1zSSgFtd8iZNrQpGl2v+4uPcrl3QkpQhdrQnA
         pqF8tbwtgqGNlusClhE9JxEEoPajI8uY0CrMDyXziZFfZLx+v0eRFl5J8B7klcMfYQ7F
         LH1k7HRbXdvWph+GQb5Pv47QzLgtAsy7TROnoz/dMkpuIQz6IdWeZS33iERzU4VoSVci
         GBkPpjZx0poWmhEDLX5cdQ8huWx5ig6MUTFAZAX3bqBDnM1waKPympbsQlsMgCyS+vDO
         vlog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wIzr5J9Q/H2arNVvTPLXj8l5mvjwRkWK73fOqa+WKMwwOy0dV
	iOxzsWAgKSqRlpR02RQ2N0k=
X-Google-Smtp-Source: ABdhPJwYHzd+RJCyXvaMQYXIbTD7TtyTHm6kJzpnQAOHJxF2j96UGQBVRlbb3u4+ZpoXe8ONupur9A==
X-Received: by 2002:a05:6638:159:: with SMTP id y25mr1958340jao.131.1601640086034;
        Fri, 02 Oct 2020 05:01:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c805:: with SMTP id v5ls295159iln.1.gmail; Fri, 02 Oct
 2020 05:01:25 -0700 (PDT)
X-Received: by 2002:a92:ae0a:: with SMTP id s10mr1540040ilh.289.1601640085614;
        Fri, 02 Oct 2020 05:01:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601640085; cv=none;
        d=google.com; s=arc-20160816;
        b=O7nOgPgHI3D4onA+Gwpip0ggFZ67DB6GgM8s1ej1xDpe3PrRe+fKLDy4cSNktwmMbx
         jcIGRGrSoAi7ES+vRYds7wO0ClggDT11gyT2sReIC/gndXsf+9Yrcg1+rNphYzTqwdi1
         yB0DVTYp4epfEoE1wKNH8/DovnJJv/UciVvnZTgw+MvOCGB2x4QdKWAQI4iwqXhN49/0
         Ye5AY8e6tgH8NvDtVPVurPqW5UdA8vAI/gt70L3DLNqdwJqkmxpbYhl+59MvRQ/fb/YF
         Phb4Wh8JR1PYSfgAhjGWS3RXEUp0g6iuYngsswFWtlpx9VDmPdNqsVL5GyCKirDkAlK4
         3PeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ibilTAtq7c7ViJ+NUjN/YiXyYNav9cZNhWApxQvHAD4=;
        b=ffDA0MjfTobdQLTeXFtFmf1kxhGgodHEOVukUu+PLplmMwrOIl4tTH82NFsIcTZCfx
         I24clLEwkC8VgcGDmrVn9TLV+uJ793mE/AAyHz8uH5vimgCyt0icZzgoMDeVwQtG047M
         mT8TmuJVz35vIrfgBCcXBIV1hiLYCGVvjRzL+u7dDQgroG4HaPC8nc4Obn4ab1UZWFZ+
         w8Q4eIBf5YJ5g0LhT5czq3deHzpuG0KgL+nRLnVlsYiF8mXU95PPYpIATLuYR26EAwkn
         MpSme8QVay460Gn6LIEUtc+cvJGB2KppYbpK/ACjUcRhltN+/cJzmJFj6mr8l5wJqUjF
         dBbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oRCA71Ad;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y1si101792ilj.2.2020.10.02.05.01.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 05:01:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 60so1100166otw.3
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 05:01:25 -0700 (PDT)
X-Received: by 2002:a9d:67c3:: with SMTP id c3mr1522386otn.9.1601640085321;
 Fri, 02 Oct 2020 05:01:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com>
 <20200930173719.GE2628@hirez.programming.kicks-ass.net> <CAKwvOdk+Rp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22+UMVerQ@mail.gmail.com>
 <20200930.152652.1530458864962753844.davem@davemloft.net>
In-Reply-To: <20200930.152652.1530458864962753844.davem@davemloft.net>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 2 Oct 2020 14:01:13 +0200
Message-ID: <CA+icZUXjYTJO4cC1EAhbdqnd19HjAwyFM+iSTW37xJM5dFHQuA@mail.gmail.com>
Subject: Re: linux tooling mailing list
To: David Miller <davem@davemloft.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>, nickc@redhat.com, maskray@google.com, 
	segher@kernel.crashing.org, linux@rasmusvillemoes.dk, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org, 
	postmaster@vger.kernel.org, peterz@infradead.org, behanw@converseincode.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oRCA71Ad;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::342
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Thu, Oct 1, 2020 at 12:26 AM David Miller <davem@davemloft.net> wrote:
>
> From: Nick Desaulniers <ndesaulniers@google.com>
> Date: Wed, 30 Sep 2020 12:29:38 -0700
>
> > linux-toolchains@vger.kernel.org
>
> Created.
>

I am subscribed, too.

Will there be a(n)...?

* archive (for example marc.info)
* patchwork url

- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/1170

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXjYTJO4cC1EAhbdqnd19HjAwyFM%2BiSTW37xJM5dFHQuA%40mail.gmail.com.
