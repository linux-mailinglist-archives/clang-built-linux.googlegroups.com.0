Return-Path: <clang-built-linux+bncBAABBI6I32AQMGQEATRJ5QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A8B325045
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 14:20:38 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id q17sf1748393oic.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 05:20:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614259236; cv=pass;
        d=google.com; s=arc-20160816;
        b=cDRl5A3ZblQssYTF8GIho2PC0LZZ1muttPSxIikObBP5uhOXB0WPkcJYot4BgIs9qm
         k722RHn1wogKzp0wuZouoblESJc49Iu+36TdAQ9Gm+kJTMNoBa9uHMrEKEfel6/NEJhY
         TbmMLQzMoAU19PeS7wWKCnj0ZOGaHC2WJ6awVqdqzpnmLvQ6RQp1xeAUm7KVu5R8BMxT
         ssJ0EAcxZ5R7hHdjL8ajcJM4gUAZ0F+FQnYTo7+XOHbN0VwUyYRegsYm82Js1QRXqh2N
         6GoZnRjNNbeHD3INtPfeTSO7iHl31L9Vpa77kIFyWqCN7v9aOiXODahn3JuqOREHYcw0
         T1xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ZfCLcM7QYKDvkVXikTvWGePfMeD0B8nRUxmD6UnTAa8=;
        b=bFSv82GvZ+Wuu3kG/UXJs1NcSsqlsqGZDrBY7nz4eIhW7+M+YIl3603wt+gACX5Xzy
         YfaLkDAmvWesRgcgaq/JTkw0J7HLWeYxd3cBkG9pPWLSK6dUAVcDFGuxat8GIVG8VvuK
         9/raLuU8TKtI2/tU5IQ+H3/ONsA9tVKgNRbai/iAYT8GDOtyrTSQRnAPgQTEOT0QbGIT
         w5dDOs4TIsubs7tn7Im1BdJPgDIWysSLykPcBor7Vyz9U8pTrwfFMdFCjyozF6WkD8fA
         Pxx72tkdimfZJAxdOeDpjJVpYPvnPF29BezC7c0PPM4du0mef1SMQhpeNczUNxDueuX8
         drSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ww48+dEb;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZfCLcM7QYKDvkVXikTvWGePfMeD0B8nRUxmD6UnTAa8=;
        b=LXVuuy6ci+nPPG/zNOUN8wRbfpUiXxANfYaVgi7KwZ3PJmUC1Ze/JrtLpJfSN9vmy5
         6xqz8gLV2I4oY04XpMhcj529hVE3jPHeYe5kcuSdBf8PvXuA9idjz24fgFxPJxDitgUm
         mR+YdbND+lvniT3VXk60N71Kaa4m0dwOpZB/7Zd2eHvrlwtCK+fy09VfLSP1Wh6gThDA
         1FShuduED7lyL5MMVR7MNG3vunN+Zx9LWwBXcTmDMG+FsNo2FMqo11zQKm+UtWcylMMT
         wMxWG6r671d0FNFR6iNcMLJWr+uaqOko0tABUec80o35zDdIKQob0frdAjyN/ZwOSJBY
         w9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZfCLcM7QYKDvkVXikTvWGePfMeD0B8nRUxmD6UnTAa8=;
        b=udriSqU/k6ZE3lxC3Bqs4MNIT4BDxEHlLxA4vm1LizrQy8TRRC+opgYi9AO4KU7UQ6
         UA/9fiayeehaSF0CCqQMXGrgX7GSMB3OpWLi0d/fs1MnNLAvOMLMzqwSPzW5oGs1qb9I
         tV2n1F/oKzxy7ISwnUgZlK3CE8bZfyFyaNyFhjnCePzmLaN/5OaIV5xsMemq2IMcRQrR
         VsYZesaiVeX2bj7fLw/ukMTNK83FWgWHUhfwJwXsNi3HurdTCnz8eIgT7m9PmQds4/vp
         mBGppeSvS9v2X4YLmWbPr0nngfCTte0AGj3YOMAQ6Pi+6smFN1zl74wUEErzgMjnWFpS
         J0qQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jwoFUC8hYybnMT9NnxyCLEG1IMCKSeyLxumOf+nnPXqws2lU9
	8/2FujUitO1ilx42yGAasL8=
X-Google-Smtp-Source: ABdhPJzcsnlX0jBQCvPYSrKdOJnyomXuNCmTsqf8ahuwtKQFl/yuc6WWcUmv5zsKB37CRzxGaE6hjA==
X-Received: by 2002:a05:6808:2d7:: with SMTP id a23mr1831531oid.144.1614259235716;
        Thu, 25 Feb 2021 05:20:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ed56:: with SMTP id l83ls1430759oih.11.gmail; Thu, 25
 Feb 2021 05:20:35 -0800 (PST)
X-Received: by 2002:aca:da83:: with SMTP id r125mr1885083oig.127.1614259235459;
        Thu, 25 Feb 2021 05:20:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614259235; cv=none;
        d=google.com; s=arc-20160816;
        b=dRhASdiF2C23j8ux97MSJZ3J04TnuOIsyjM00p92xdQZXx1WJtMdiALg34gdKRpmbk
         wpEweLFT0OXeh8O06fWdFjGgLrDJeRxunWvkTH8+zicNVSCsZDDPj1bXTqQJ6DiaSpPu
         bpPcIgqiHEhBl7biu4n7YyUZgIB9C2oYnc0yzVtWqDAYqWDrXvj4Snmv9DJW2ljBFag/
         7CtTdGPStka9Uiu/4bsoeAONNxwxb1vE0bixGpTT8q6UtSMGJWSxokc2TQ330w4caInu
         iZ71hCVPGu2+ZDu0vMsjVxSJZp9s5WdzAG7pURxJteMs56LXlM6wVcePwzB3nfeRMT+H
         T97A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OBohu8HDnr3RNlcqL9u/xKYshpIL3BXLumeLqSVRiEw=;
        b=TqVGY5B35VgxFgRWtNHnvcjZazmZ3Td91Nfkpge+oabZYIW83BUod1Xd/XzHzZQhDN
         wO4Wjhb3IvBTyH3Jzml1DfqM7F0Uv08wxHQvlNFu3KuEIGK18U5p/urwXjBIIU1eWNfh
         9MRPDw3eV+rtULHuB7tXqMiAjl7EwQQ1p3e1XqBbxx5KKElHgEVJvsQh97UJkyafN2pn
         yS+AGrvigh6mwtjhzgpkka5uA6Qh2z2tA1qA6G/jcGCDmQM+nEsdhlY7rJmutyt3GpHY
         QPLt2iQOyfnGgeFB50gXI1iOdBRzAAYefcAak8B2B11S4Xhzvc0fVFJdHidvVhrGGA3i
         yRiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ww48+dEb;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x196si280244oix.3.2021.02.25.05.20.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 05:20:35 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7691A64EC4
	for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:20:34 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id h22so5611876otr.6
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 05:20:34 -0800 (PST)
X-Received: by 2002:a9d:7f11:: with SMTP id j17mr2299490otq.251.1614259233578;
 Thu, 25 Feb 2021 05:20:33 -0800 (PST)
MIME-Version: 1.0
References: <20210225112247.2240389-1-arnd@kernel.org> <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com> <20210225124218.GC380@zn.tnic>
In-Reply-To: <20210225124218.GC380@zn.tnic>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 25 Feb 2021 14:20:17 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
Message-ID: <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
To: Borislav Petkov <bp@alien8.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ww48+dEb;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Feb 25, 2021 at 1:42 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Thu, Feb 25, 2021 at 01:18:21PM +0100, Arnd Bergmann wrote:
> > Either way works correctly, I don't care much, but picked the __init
> > annotation as it seemed more intuitive. If the compiler decides to
> > make it out-of-line for whatever reason,
>
> Well, frankly, I see no good reason for not inlining a function body
> which is a single call. And gcc does it just fine. And previous clangs
> did too, so why does clang-13 do it differently?
>
> IOW, could it be that you're fixing something that ain't broke?

Maybe Nick can give some more background here. He mentioned
elsewhere that inlining in clang-13 was completely rewritten and is generally
better than it was before. I'm not sure whether this particular instance
is a case where clang could in fact show an advantage in not inlining
a function, or if this is one case where it got worse and needs to be
tuned better.

In the end, inlining is a bunch of heuristics that are intended help
most of the time, but both (old) clang and gcc get it wrong in cases that
should have been decided the other way. Here we get a new method
that may go wrong in other ways.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1ZiUHRxKr%3DSFgEFETLcSQeViPnR%2BXB2gBvbVk24vGvqQ%40mail.gmail.com.
