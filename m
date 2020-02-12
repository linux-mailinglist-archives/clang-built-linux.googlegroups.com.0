Return-Path: <clang-built-linux+bncBC2ORX645YPRBVXMSDZAKGQEIZOKN2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA3015AEB9
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 18:31:03 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id p67sf2226047ili.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 09:31:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581528662; cv=pass;
        d=google.com; s=arc-20160816;
        b=djgwaGxdyvbDg7ep1iaa2PMCuwBpqOKbOq9H8zIm8P5/V/lCOo7drCKnI6WQjUBWXD
         0VBC/Eh+2bkOZy0+lUfSFu2vCuq/Yu2zIUYw5f6YSOa5w6ICkA5gyLgsJlgkRVfQnqHo
         Gpb+mg9Ls125qTp+1m1UXz921g82kcucfVQn4HUKW2QleUW6V8+4XHaV0qv/UQCs6TMJ
         f/YlHl3uPa0GE6t+sPkLz5BGUx3JuWmWrlMi2xpgIpPOXDbeK/K4lnOURcmFZvhrfVLH
         zovC6o/v3ZlptGE4T0BQ5F3g8G0pZWdJJAJr6Wh7GBUeDs9R4SAwKakl21LpwlIJkl52
         pPEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5DZFzjosCm4Ltsf8gPpQKHAVlvpfRy0zx+Ef+zhP2Jk=;
        b=IKzs1KnZL3gcmHWlU5zCZ/uk9UHdt7rSJ1kuxlpCI75ozZELTnn1/BKf2dRR28S2Ie
         LeEbZh8/FxtIAJlCyCDHDuqGS2TfGHdwazJhfVVF8F2BmZ4JAdJS39EwOE/P8GYxHKXg
         e4ZC6yg+0bwfjJe2sBLSO8Drp1muD1gLNegileDJRD5gAooS30YKFjh/beOkuZfKpM3W
         ubPdDNkea9d2z6eURtyvPk3GChwC0SFw1ND8H8RYLPSQc8Ff1rdK3/HDl4PamsW4L4eq
         9zXEM8lvSGcS4zcGqxlfQbTc4TnSL7QFNHnKbjdECkxwFMZoQdZGPSTHVTKMvXODiC+G
         NNAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BtezE3UK;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DZFzjosCm4Ltsf8gPpQKHAVlvpfRy0zx+Ef+zhP2Jk=;
        b=UmeXGDlarOtkSR6NSUubuQg+FzhwMpiSdY2QzIF9lyx7zasALSDgjPfS+4d85KnEP4
         So6+VfhhT3+2PtFf7LcQQjUzxcpzHQySfRPTV0tsiDu+oJfk8xeH6BCBHxAlIBXXsLWU
         EXiggtu5PkJRPHXsN3aaORa5BwdsCIndW/N2XDjJ7KXveqyB6NoKVn59Lt8VXjYgCWHd
         7ViuJSkMBFZMiwhAVTu2I44XWfznQEfT7gSeGHf7ij/3txPcwbDnHGLnpJI+IEGhD69L
         9Zn9y6K7HvIQrVBNsdl3LhWAkQ8AoOm3sNsp1lkCJ0a7NEjq+e2XGAoC8qoSivCXC/BY
         IYqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DZFzjosCm4Ltsf8gPpQKHAVlvpfRy0zx+Ef+zhP2Jk=;
        b=QaLqqC4yJ378aHfcYdp4t3nsb4cmKgPH7XeHCvDuN9G6KPDgJiagyy+imTZGeq2A0z
         yOdTxPEUVSIIazNNl/sTcPMWFyKIrve3iMiMAsOoeHp7LuHKh9gFgoLsrP6iQOKU3J8H
         yg89SHiTk3CbGxwmfy46OV6+a68+uhGQIIIIhmmhhutkqcxiLLubiw8oRr6VoHh75Pyx
         1D4S6E9KTmoXdACmmSbFwerj0cKgOzyG53Zwyfnn6k3Jb5jqmUh8b1hV158R2lFxB9oH
         +4zd+y7m1ItXwAEoirEXM/LbXoBuJyG1O3DvP5YHAYYp1u4CpiVWhFe7WK6AXbfggRvQ
         okRg==
X-Gm-Message-State: APjAAAX/fYR7+5oebdNamNnKOxvT3M/YgnY8yQ6N44p3ik/49/VOAuu1
	DwE3nthf1VXUDXdpEbEo4dg=
X-Google-Smtp-Source: APXvYqxqYvf5Ri+Ph69SoJjrFVZ9D3Q3xMFkEYZmr5JB1LDct5NbeEhS91ba2eeYvJc27TXPATlEfw==
X-Received: by 2002:a6b:ac45:: with SMTP id v66mr18536352ioe.76.1581528662080;
        Wed, 12 Feb 2020 09:31:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5f17:: with SMTP id t23ls3336197iob.10.gmail; Wed, 12
 Feb 2020 09:31:01 -0800 (PST)
X-Received: by 2002:a6b:b4c4:: with SMTP id d187mr19092159iof.82.1581528661579;
        Wed, 12 Feb 2020 09:31:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581528661; cv=none;
        d=google.com; s=arc-20160816;
        b=y2yhv/78s4RNIGGF6xSpm39QnyFevYPbxSDWZk1KxFDKkDtfls7s9rEMiiEc5RZHMH
         YE+XfQB1nZoQNrDbUi7Ulhf948LMOTitF2t8d6YBZSb1G6QOOYQgVnRU5pz9kWKNZcuo
         sHcRAMfHfCyk/DiUTHlBTVXLFniubkSlD8w+tjtfgBc00AY5eQLPnqp3d/5TAqlpwIK4
         HROmU8LwFQ6XVCwBYiZox/7byptjvHOyqcj6Z1Qe/J9O7Xqm0OtNkBwu/RS4DCzRau05
         KdnoLFwYn8TxJdaW51mIgC5Ydeh6v4ku0maBOywGKjORID6Ngg29bA07b6W7lIXfKm5z
         lLnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XgpctoHh6dg1wxvj3BzSThVl8kpcEhXa3sNGXPcFbT4=;
        b=eWGcfFf2kjI5C+aCZnJ0ytupgfZAvCedhCBMifuY/ccdLlaPUx4W/HPmq+pScel6+m
         Xp5zfGiyVjw8owK0uTf6PS+eIiQL/+jB5Lpp/JJkLZ0gCe+pLhEmlDkHL/5uyYUdD+XE
         OcXTvB0ydHJEx6o/PxakStuXKFfDIGhZQfLDe1xEQFg35R465UN6JeKOm6ZJ6qOsvRhe
         h5fZeaHK0s+nWjt12tG+I9mNxSIE8YMLOG15bF5KSogvamx3WX92q18+ZcfZ8jxMKQNE
         z91Grylt2Sxb5vTOz1cKSioRrtKSjDia5562QXC0HQI329BdyOmkSpoWMZL+teZz4IQc
         G0dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BtezE3UK;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id z6si63632iof.2.2020.02.12.09.31.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 09:31:01 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id p6so1684502vsj.11
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 09:31:01 -0800 (PST)
X-Received: by 2002:a67:f4d2:: with SMTP id s18mr12516774vsn.15.1581528660711;
 Wed, 12 Feb 2020 09:31:00 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com> <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com> <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com> <20200210180740.GA24354@willie-the-truck>
 <20200210182431.GC20840@lakrids.cambridge.arm.com> <20200211095401.GA8560@willie-the-truck>
In-Reply-To: <20200211095401.GA8560@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Feb 2020 09:30:49 -0800
Message-ID: <CABCJKucpq=zu7ikf+Q-f-v+6T-cbQCEb1setiZfFvHa8iw3erg@mail.gmail.com>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
To: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BtezE3UK;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Feb 11, 2020 at 1:54 AM Will Deacon <will@kernel.org> wrote:
> Thanks, I missed that. It's annoying that we'll end up needing /both/
> -ffixed-x18 *and* the save/restore around guest transitions, but if we
> actually want to use SCS for the VHE code then I see that it will be
> required.
>
> Sami -- can you restore -ffixed-x18 and then try the function attribute
> as suggested by James, please?

Sure. Adding __noscs to __hyp_text and not filtering out any of the
flags in the Makefile appears to work. I'll update this in the next
version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucpq%3Dzu7ikf%2BQ-f-v%2B6T-cbQCEb1setiZfFvHa8iw3erg%40mail.gmail.com.
