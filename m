Return-Path: <clang-built-linux+bncBCQZJVV3RQNBB7O6ZWDAMGQE223DJQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9987B3B1F74
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 19:29:34 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id x7-20020a63db470000b029022199758419sf1872056pgi.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 10:29:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624469373; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bts2o+zR7eWnPyIekwl0Abz7sLDOD5l591foFz/dAK6mE9mkAQ47V9diqh+g1Yzd2a
         7RKA5B6g5O7wUGafNjgRBvmPrfytKYpCFVzMX4SObTn5Od4rrDrtkGRyQKkHV2ugwNUg
         83IbIRwW8amTVC5i4BvhwZcO655ReKWeUEvNBcVrdsaA6XdrnJzWHypKtIhC8wi5Lvs6
         zkztG7nva5Rp/YwIdPLRO1b/ZCQNslxZnWow9kE8HM3CCIV9Hu66+XZg1HPoJL1PjF7r
         lWLlglsx2/+tmqkxV+jJdQBckxmpSVgW5PSSEXXiTDyvSUWpUA6c+rwGC9hxHlM7E6qH
         9kJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nQVurrfL9kZoyfGC0FFQ72KrmnlZdxOGU6ZkkIQaVkM=;
        b=zecCFbbEfg94Muj51c9jYBRoQy9C6LpPghNYWOTcZJwhx7HHVga+MuUH64d1vpiLE7
         pmP4CLM29qMcM0ByOxu5I/iiNpmKIpGReyCpvxGT2E8CvLFRYtJUcmm/ZXNvHq+KqmhI
         qH9NPk9Uzi2tzgTUlh0v/N+Y/f6OQJNT0qswFxm9rL4dNwoDWsRSn+ABpY0qnNNBfysq
         9ohRX1O/KZLfUIg9FIO9/baXWYaIlHHHdyAqnIdA3onABaeTzntUdufxQ9NB0YcD8oTp
         9oxTFxobjOvQAmRJOXGfXz9MSbyheomTJjRS2C6lk2FXBqDCkOwdIyIrKkvfp4lreKxa
         EIlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQVurrfL9kZoyfGC0FFQ72KrmnlZdxOGU6ZkkIQaVkM=;
        b=GEon80DRw+smJQH1AIB5K3Y6nJCYVovXW4DwkGfYqdoiXXYfST0OJRk3pC+5UqJ8b/
         J7okwc8LIhcXCLF6ZViPyKMEbKWS5x8EETMgl8V+D09qHjiWTsUNZl8YaTyyDWqMKIJb
         zEw+F5sEuXQnyXtNqWfzavGDAoV6ZXrtkeWbBMzy7COfyuUlrcHtMuPd+zJgnSZBvD7P
         ypwwXE/gwCKPlpJ1/8Yp0mjqv/dMV56qBq01hSmknTaXfEO0cLmsm8K0W5YDVb04LOmL
         cOn+g/ZYtkvueS1WuNL99CDNYxpi3qsnzFZpjRE5W24ivbf9kr+FRFCmEmVVDAgS8RbK
         xlow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQVurrfL9kZoyfGC0FFQ72KrmnlZdxOGU6ZkkIQaVkM=;
        b=uQYlShu90CRnx6o7dm8neX04KPgZysuUuIjzy2JP9ZZSmxhLtV8unvwPDbawG4CgSs
         +C8iwnyzh06MZ5uq8jld21OAIluKD4c0AkX4FCeJG+6Mq4fyFGjqeJkwQAqxOKl9KT6J
         wE0/wsfXiflTQUurF861PgCV489R5AdTfKuy4lM8omjMKmCgpfSsXKxHyfUMp4SWKPar
         BEQp5saxdwlzDSWn/QoMhAebkN9RTPSxM966QiNZgLvRiHFcK71z9ZfnYPIn9Tj+f8Hu
         mucnmrwTmHN3ALaYAxsu/dIcUqbSaRxuTIdTBmPVT2vl1NayTDShGKDvRtlao8HULf+z
         4DLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JvchVTRY4Eh2fBgqFY0pZ3NVisYcM42GrkoxPPRiSoDzy6H6V
	PLJ5y8XAf9wjjbSXTRJoRbs=
X-Google-Smtp-Source: ABdhPJz2lBfAZUDyoEL5icgLjuYAvjIsgtKx971RCiSqGX1RbSmpgbqGOSSwZZtS8CXQdKQgsj/X1g==
X-Received: by 2002:a63:f20:: with SMTP id e32mr522745pgl.235.1624469373310;
        Wed, 23 Jun 2021 10:29:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6487:: with SMTP id e7ls1492271pgv.7.gmail; Wed, 23 Jun
 2021 10:29:32 -0700 (PDT)
X-Received: by 2002:a63:4d62:: with SMTP id n34mr551189pgl.302.1624469372749;
        Wed, 23 Jun 2021 10:29:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624469372; cv=none;
        d=google.com; s=arc-20160816;
        b=umXOfATdGk9NqPfAAyBEHCDTqM7F+dTVbD6P/5eGfLwJLHst7mDKhy/i2n5MOnv4wz
         JoFK0OKxO4kNKEo3Sv1V/fldvnnGpl8MtzIc9RcvqrQisktuZrPSuB+OTNVkE9Vrx+Ce
         8GjUPidY7yXuawlgSXQQLc1OwNMRjcooZJF1TbkExC+ON75kLHOLCBs97XWCDwoVf2Id
         ZiRGPHk6FTQO4ZBD4Kgy3SKUPGKPeLitzNkSFO9RFKnsCFFSabqQ0/SiDN5SShGsloYF
         Dzto/0CjCCR1KDS22UmiNXcmDxrIXUHXNNGqXxWl+jzKPc8AfE+G73jDVTEpBxDoqfoI
         8kIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=uL4OeCof1O3VCffukg7OOAMuEHlzWUS97O2lsZYQKCc=;
        b=GF+VMWKBwGz5UKCQPkkszyFQx4XrTj683WofggnSPQayZXJd5mMiTbFo2Jwy42lmEk
         LcugZ3bwQMlvI1cratnmyBiDhuL9rih5zsaaGMWI05r3exhHD+gRWztlQwyEmkKe0ycx
         0bEaJczXEtmS4V8u238oK+s9eQ/cjhW/r0SvMkIvf77Znu4cdwqt+jWsErduwP2NUP4z
         n3dqyoqcXSIhLsg5gMaAw5+QLfhnLUekdNxDANMmv6KSIruPRyLEmGNQkX2xktNNkVhR
         VouJzj4wlvQiZWPKY03awZJQRJtKRwZ2VBWnsPG+6ZcV4PF7bL+LEusPVkpl0tfi55to
         iG8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com. [209.85.167.179])
        by gmr-mx.google.com with ESMTPS id h17si64815pfk.3.2021.06.23.10.29.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jun 2021 10:29:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.179 as permitted sender) client-ip=209.85.167.179;
Received: by mail-oi1-f179.google.com with SMTP id w127so4130665oig.12
        for <clang-built-linux@googlegroups.com>; Wed, 23 Jun 2021 10:29:32 -0700 (PDT)
X-Received: by 2002:aca:f0d5:: with SMTP id o204mr754770oih.71.1624469372192;
 Wed, 23 Jun 2021 10:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210623013802.1904951-1-nathan@kernel.org> <20210623013802.1904951-2-nathan@kernel.org>
 <202106222250.7BD80A12FF@keescook> <a155e3ee-69aa-408d-208b-06144cf6cf8f@kernel.org>
 <202106230932.96179173E@keescook>
In-Reply-To: <202106230932.96179173E@keescook>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 23 Jun 2021 19:29:21 +0200
Message-ID: <CAJZ5v0hgk1_uofRKwQvOPgBqsMsBombAS5SpSo_FoeAXcBArWQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ACPI: bgrt: Use sysfs_emit
To: Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.167.179 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jun 23, 2021 at 6:32 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Jun 23, 2021 at 09:28:55AM -0700, Nathan Chancellor wrote:
> > On 6/22/2021 10:51 PM, Kees Cook wrote:
> > > On Tue, Jun 22, 2021 at 06:38:02PM -0700, Nathan Chancellor wrote:
> > > > sysfs_emit is preferred to snprintf for emitting values after
> > > > commit 2efc459d06f1 ("sysfs: Add sysfs_emit and sysfs_emit_at to format
> > > > sysfs output").
> > > >
> > > > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > >
> > > Perhaps just squash this into patch 1? Looks good otherwise!
> > >
> >
> > I thought about it but sysfs_emit is a relatively new API and the previous
> > change may want to be backported but I do not have a strong opinion so I can
> > squash it if Rafael or Len feel strongly :)
>
> Fair enough. :) I figured since CFI is even newer than sysfs_emit(), it
> didn't make sense to backport. Regardless:
>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Applied along with the [1/2] as 5.14 material, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJZ5v0hgk1_uofRKwQvOPgBqsMsBombAS5SpSo_FoeAXcBArWQ%40mail.gmail.com.
