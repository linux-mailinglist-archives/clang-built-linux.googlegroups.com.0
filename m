Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5HHVOCAMGQEZE6PLLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 232A636EF3D
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 19:59:17 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id bm3-20020a0564020b03b0290387c8b79486sf6610775edb.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 10:59:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619719157; cv=pass;
        d=google.com; s=arc-20160816;
        b=IiTkrP97FIThMl9CPZrpceES0SZ2+cDVQ8ubpWEHZ3mMiaqZJ+UBTpuTVch2C1faNz
         sr3EEnLQga56mgV3mFFCEYEoAKE1BR730yj0qRPFWHa/3Uwrf7xubW6X8jeu5ATNQAoY
         g3hu0cFLxOJpmdCxTO0lE3ScXDKDS5eBcs53VzLOccEpINCu1J+bc+nzVXqYUrjoI6Tz
         uL8dBrwfOEPVY2weTRuTPI+zQdkPFMsJ8/saegrivpN8V0OEka2SvwFl4olEOl5fDky4
         4i6/hH35Zso6fD6MY6cvHMD1V3UVALcAXaD9CjZNjFE7tQ7Z5z31JlVBqqF2GJf7cONc
         z6Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pu4aNmCDholnllQ7AppKgDZYBeeFvDAzFfLjt0KEBI8=;
        b=uOZht+/CXDGZSj76nqmKjSEg7Ynvi7mIaWdL8FJ8V37tynxIfflOdfOp6xSMs2uEWd
         ztSb54y3gvtDJdbFcubdrT443X+79O0BX2GkTReJkO9owRSJP+nZnJQA9GR4pvfzxaaq
         WKW/2EuvwsnJUlfZccq6EVeBnplNdAffxA4DZxORRuN0Fh/LTrsqTJvq8FlHcdB85l+r
         qiuYkLfyFuw5sJcnjpebKcYZE0zY4X5GY5yLdTs4aUuykz5PX2rmsEz4+ohjLaWbhk6b
         FMFWH/EKOnYvy8cqGAdBgX36S4c/BupBS84wTUTTeKzu1Ql0Ju9OKtWgtljo3+sa4dzC
         OLIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RReoRiMB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pu4aNmCDholnllQ7AppKgDZYBeeFvDAzFfLjt0KEBI8=;
        b=USalWVq+9tb9reCsLMN4YZWX5YYm4wY+56JLQhwvZ1lxKVW4roslQvnvyoOseh5RRw
         baxF/dN1Y3HT8+V2l4LAeFPM/ZJc6ww7T0V9Nhp4cmUHOpqtWVlRK4kXJ72EIBk2A+Xz
         NXsnTl38oC+XjJzr5fCaazCJxwwYr5ptPrTAQrgiBTbs8UCZBhB1n8LizoGwiErV747m
         pzVYDGpwS7LzZP87zV/QHYdjxAG3JfRx4k+SeVNOEZ2bZbTKbTF90CCqIS/LabUQnc+6
         A7BKI6PEpcYeK2UZCAepzUaqtRPXmn6CTfNjF6/cMosQyEPMZbT5v3YTf5oyV5/d/JjV
         /rxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pu4aNmCDholnllQ7AppKgDZYBeeFvDAzFfLjt0KEBI8=;
        b=lMJ9fTUc83lTkvu+3jDKVReERH8yhx8dz5pvbbpemC2m3M88JR6xrFJpi6q6closff
         c3nBfkilTrxESIBY/PTzaOdkgP0dSKf8h5iawstlQinIvz3c0Uzeju8sgmHmbVsteYUQ
         X0DCtzZhPfeQLn4a6XzZwF6S9z7mBYdWwKsKtsqfwuHq6iRUz1sk/4PwyVCvkjgwg8V3
         dn5kPmeAWgBpLuMUUeGYMJpEuiwXrqamqHM6RuzUZZaMj9HETPcY7xyEwdWKKxLI0+Xb
         ooGmtKlgLJUIeMNHP49WSFNUS/x/3Se6g2OdLb8SFZIOpNrPERp1DYg9QdunOwRS7Cfu
         grjA==
X-Gm-Message-State: AOAM530U4sUJsNPJPr2jtLTA0aKmkKpOJXuiLxh77uP5RVhrP1eN263z
	wRk/0D85L+0sP3LVqb3Td/k=
X-Google-Smtp-Source: ABdhPJyMBcAP84fiGh/HDlPJN2LnVeQgsHjAWBsw7oMv9JFniXlaTNlzWL9+73T98MLf+SnSUgQvFA==
X-Received: by 2002:a05:6402:145:: with SMTP id s5mr963676edu.221.1619719156922;
        Thu, 29 Apr 2021 10:59:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls4536729edw.2.gmail; Thu, 29
 Apr 2021 10:59:16 -0700 (PDT)
X-Received: by 2002:a50:fc91:: with SMTP id f17mr999725edq.23.1619719156088;
        Thu, 29 Apr 2021 10:59:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619719156; cv=none;
        d=google.com; s=arc-20160816;
        b=cAg1wvOdV3JEUFM3Bf8NNg+x9Lc0bPS3uQiPkGapgtJAVe/L9a7aa+0UgsrlkTlPde
         lK4vPk479aOjT/7/mM3QL/3BWIEfbXoPnWPCHJd0pTM+tmC7Nucel/yAgZx+CuB9rZXU
         jpdfQjZKtboglcAE0GPkLNC3JcV/anV1USstM5hc7OJi7wqwDc7P7X+TJ+mC9Zl1T1cr
         vO3R0fjK1P9RVsyk4kUQsmNmfAiJmMBQRkD+dnwyW4sESR1f6oVtFz5aLTnJstmjVz/+
         bZkgr6+AoEEkNykAC8WufJmz1mHnZR0SAlo/arlvaguox74U/2voRgilQ17xveH4qzk3
         sZUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QC2qnWeKXbTTUpqV9JgNoy4XQlN/baFbQ0VV2WgCP0A=;
        b=gCrLJPJGXoOdw2knmp45lOpsyfP/YEoNrB9/jQ97JjC72IKW9XjWFqO78kXVyjf+hH
         sOSQ2C8vD0IHyv9aXGCUUt+5M0ImUpo5ji4SdMjN4dDfLcKV8JDC6iQqkaqQijCgc2Ni
         4oLEZ593e9XBV3GjvesvseZ5LSZmYw8rtrpZuNuWX12ebseathmuVDBS1cs35pLA8HJS
         TRuuiE4tXzpOiTBrtoT9RHOvpmYkYaJmn9+jEHAp2M67YoOL5O95oGStXakSB+eHh7W5
         V1dXai+YebeYrDbp7K6m6GG1tJneFNIJ2ku0jcgOHWNl/SnPgEwoOWd4Y/JlEQcZ54a3
         6hgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RReoRiMB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id c11si234197edy.4.2021.04.29.10.59.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 10:59:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id n138so106325255lfa.3
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 10:59:16 -0700 (PDT)
X-Received: by 2002:a05:6512:2190:: with SMTP id b16mr553502lft.122.1619719155339;
 Thu, 29 Apr 2021 10:59:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
 <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
 <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
 <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com>
 <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
 <032e01d73c9e$8c7e5d70$a57b1850$@codeaurora.org>
In-Reply-To: <032e01d73c9e$8c7e5d70$a57b1850$@codeaurora.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 10:59:04 -0700
Message-ID: <CAKwvOdnFsnofhaM_OZ55r-00ewwJaRY-1sDwCUJ99TRtZLKmJQ@mail.gmail.com>
Subject: Re: FW: ARCH=hexagon unsupported?
To: Brian Cain <bcain@codeaurora.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, sidneym@codeaurora.org, 
	"Manning, Sid" <sidneym@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RReoRiMB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Wed, Apr 28, 2021 at 7:23 PM Brian Cain <bcain@codeaurora.org> wrote:
>
> > -----Original Message-----
> > From: Nick Desaulniers <ndesaulniers@google.com>
> ...
> > > > Yes, please. arch/hexagon/Makefile KBUILD_CFLAGS would be where to
> > > > add it I suspect.
> > >
> > > Done.  Rebased for-linus.
> > > https://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux.git/commit
> > > /?h=for-linus&id=38f974f061c5e7c83910bd287d2be8325476a3f9
> > >
> > > Build log attached for reference.
> >
> > For the series:
> >
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > And that's the first time I've been able to build hexagon; nice work!
> >
> > For the assembler sources, a common convention is to make the .S files so the
> > compiler implicitly adds `-x assembler-with-cpp` to run the C pre processor.
> > Then SYM_FUNC_START from include/linux/linkage.h should be used. I think
> > architectures are expected to define __ALIGN (5 for
> > hexagon) in their arch/{arch}/include/asm/linkage.h.
> >
> > Otherwise, feel free to add my reviewed by tag to the first 3 (not
> > 38f974f061c5e7c83910bd287d2be8325476a3f9).
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Thanks!  I have incorporated your feedback.  Turns out we didn't need a special override of SYM_FUNC_START/etc -- we just needed to use the existing arch-independent definition.
>
> https://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux.git/commit/?h=for-linus&id=0ff72a0e4abdeb1b86ad3d8f6ba62c91b37789a3

For the series:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Are you going to send this to Linus as part of the merge window that
is open right now?

I've started wiring this up to our CI now in:
https://github.com/ClangBuiltLinux/continuous-integration2/pull/125
We'll have to wait for Linaro's remote build service "tuxsuite" to support this:
https://gitlab.com/Linaro/tuxsuite/-/issues/107

The next steps for us that would be of interest is boot testing under
emulation in CI.  Our current setup for all arches relies on qemu and
buildroot.  We're not doing any testing more extensive than power up
the machine, then power down the machine at the moment; if it takes
longer than 3m to do so, even under emulation, the machine is probably
hung and is considered a test failure.

You mentioned qemu work earlier, but only userspace?  Are there plans
to develop a qemu-system-hexagon?  If so, what's the progress or any
timeline look like for that?

Buildroot is a tall order; if needed we can simply use our own binary
as init to initiate poweroff, though I guess then at that point the
question would be which libcs have hexagon support that you recommend?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnFsnofhaM_OZ55r-00ewwJaRY-1sDwCUJ99TRtZLKmJQ%40mail.gmail.com.
