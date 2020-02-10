Return-Path: <clang-built-linux+bncBDV37XP3XYDRBZN7Q3ZAKGQEBZ3THDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EFE158234
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 19:24:38 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id l19sf6909176edq.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 10:24:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581359078; cv=pass;
        d=google.com; s=arc-20160816;
        b=XwfJ8JKl6RVIe3CVNkfW5rrmJy3lwq5uHLu2wKuWj9laucOvNeZHyoPrdObBgzYUZk
         OPWenSMvHwgl3uDOCRhpyTO4kLqQQFu+IkfhhGeNxOUZRHb7wr/HkFiSBZQGo4fRMs2n
         Cgs26nTRTIxeMaKviqNWuo/yjjFtKklSbBhno+VnPlVTry4yCXRInfpY2vT4az/jolNY
         NEkTrHOliIzqCXAMmm8UWLthYhABpi9UjgjXhqwJBpOoVYF2pK6vxBxJNAk1GP35bGNa
         M5VMpHEJ8VgTkR01MJIfr2cN/sOMmaKr7xutAtzxW5GbbP5ZIxB4nyIYojxCdkL5yycX
         nBQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+pcm1RYzboDBq2fl6cCw2lU5+FmN//SnYJXAJ8Bnzf0=;
        b=i2ByTfBqISwkox/un8CtTW9Aosmbqro/DmWMlsrY3fn620Ryb3O/MEhjAjqUTcbnyB
         bkabJd399zoCr0/VHyJj0uInXJ+033IWsAPA02X3hXjPQdz3YSZz+n0IwrIOSIYCakO7
         x3Ars/nhAtGiEbx5OjwuQoA0hahwd5saIIPV8C4Bzi5CbMnY7H0/lTBpi9AwQZjykHQl
         K14d/2j5GKpQwS49iQlAMKn6t+RNqxVDnws4keJcZRVHQ3GcdjN+7VPI5HPy6q2Umuew
         of9plTFv37lcrxQVLPJseF4a4VbwPKPXG6j/tbPemHlo8Cq3b7GMpf6xBDq434xoOe1s
         /qig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+pcm1RYzboDBq2fl6cCw2lU5+FmN//SnYJXAJ8Bnzf0=;
        b=ZTxDjUPggzSg0sI4P0wuNjrxfDa9dYrbwisIXyztkpeWjBQZ/EiNsATXQeWPMxpmNJ
         GQNDrDWMhVvPK9PEslYuxgng9UczJMteu9gTp9UgM2wlINP4GJ9D8DaIXwfXvNMiV0Oc
         7jL5ZZ9f9AvEvPzHQj2bKPmJ/gFAgtLZ0iyTZUEKMpp6Djm3OtZ7AT8tHf36q48+uTVy
         0FmXpjangixZmE4suNztvryFYI2NXCdGzSjmTdnJS7oq3S9tpxmO9BNRmOriUVAd3xv9
         1a4x25sf4ug722mZvvV8bm9P+yreQ/qXI/J4HtIgrUu8D8VYjzwX/xl1iak72chVBN8b
         odyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+pcm1RYzboDBq2fl6cCw2lU5+FmN//SnYJXAJ8Bnzf0=;
        b=XI87izIftyy+2rp4kC1PwahCxv+yZXfCAW2koMba6G4Q+okf2xngQjqhXc+Je65gHO
         W9O89LiPXKJhr/lUcITTwfrnC8C7jbOVycVWRrfFrGnV4DhB2FAa0dT2XC2IsjUUeNWA
         czwoOYBSjKT4tlimA1b7L6eL/FnZIVO6ZfiSpeEnaWCP2ScNEo22BNWCTmNapW+mxO+k
         Hoji/q657zjNeV1hkivl3n9Xjh9buzVAhGiAvU3NRgo0Bu0MPZDTlBABM2H7FGSA4VUW
         Aong0lI1+K7jv9mRuv/91DIPD0kfapEusTNm4M6VAyeKIMvY+iAsDHitzv/dSFB3bHPd
         SSDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU0FakcAHNQM6dau5nLaKlfsrQdBGX+N+cmMgk+hCYElTp+l28u
	G9gs0xLS1aLqq+JOjzA1iZM=
X-Google-Smtp-Source: APXvYqwj6G0oR+z1vg1oBwWJUoHcJpCUhC2oRBebjKuVQ+e7CEBqy0thi9cm+Y0YZ1Va4bBYy0WqFw==
X-Received: by 2002:a05:6402:655:: with SMTP id u21mr2446452edx.78.1581359077959;
        Mon, 10 Feb 2020 10:24:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bfe7:: with SMTP id vr7ls4725668ejb.1.gmail; Mon, 10
 Feb 2020 10:24:37 -0800 (PST)
X-Received: by 2002:a17:906:2649:: with SMTP id i9mr2434999ejc.120.1581359077193;
        Mon, 10 Feb 2020 10:24:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581359077; cv=none;
        d=google.com; s=arc-20160816;
        b=uUdGWuYWe1wAp6cHeRNbaqXvRO2WdSPmiZgyTClLb+tn+ioEZyoWK06Un69hWfPEnk
         9vyWUiMlLfPfTCCEMOkhk2+Ij5xuR//vlpJ/1MangQxV/ODuj0ZzEIqQRWpcyF1GHFpo
         /tM/K69JIc92VQeQ97iEX9C2o9z6T570XyqGZ1KY6ZVW9btMA2B9UiPH7ULVLOJPNH8N
         Ctdzidnn+dZMlhK2RytyR4Qrv85wWMUqtlbvLUGNPfu2m/u0vLrVNTBp7y8B+0RwXWYe
         4j/831mp2j36EA5a2BLo8nKNq/Cjf+Q11iM7gKm0aBtzknBCiuXqf4xfBKNAOR/0XdVe
         14iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=IniGBrWbuUOk/lBNNkQxNpElQvfCFKJO94k6yP8AiSE=;
        b=rO+DeXygDI+sM79etv36Qk8xTS1EMXNSma5Lg1HnE3Om2vqRrUrf+UXrG6rgo19E5d
         tLzaoNVW9HnccP7SLHEfxZ5nxhdI1MjnrIY24JVGpMIwgbRoOe+QtxT7m2oU/+l+QHdA
         mqGTcxfLQ3btJ/kaQr9U6DFqqlmv7D1GSyTmzIXojQcUJJY8HCN4Yu83V4OYXJvvBZ5M
         mERCMTl5x0+n53XaK6LooDI11XhsmNCGIa2DgYGw9tU8BU4XlNDspd+t4W+X2y/sGfiX
         tATdgsxlXsGQOS7NItHuG7KMKrR6ZRDXufwJdzzAPyeZAKE5yIrnFCMrFsWFrtf9CVzb
         vr+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id df10si77284edb.1.2020.02.10.10.24.37
        for <clang-built-linux@googlegroups.com>;
        Mon, 10 Feb 2020 10:24:37 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FF621FB;
	Mon, 10 Feb 2020 10:24:36 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 326BA3F68F;
	Mon, 10 Feb 2020 10:24:34 -0800 (PST)
Date: Mon, 10 Feb 2020 18:24:32 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Cc: James Morse <james.morse@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200210182431.GC20840@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200210180740.GA24354@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Mon, Feb 10, 2020 at 06:07:41PM +0000, Will Deacon wrote:
> On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
> > On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
> > > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> > > > On 28/01/2020 18:49, Sami Tolvanen wrote:
> > > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > > > > different exception level.
> > > > 
> > > > Hmmm, there are two things being disabled here.
> > > > 
> > > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> > > > shouldn't KVM's C code still treat x18 as a fixed register?
> > > 
> > > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
> > > introduced by SCS (in patch 5) and so isn't required by anything else. Why
> > > do you think it's needed?
> > 
> > When EL1 code calls up to hyp, it expects x18 to be preserved across the
> > call, so hyp needs to either preserve it explicitly across a transitions
> > from/to EL1 or always preserve it.
> 
> I thought we explicitly saved/restored it across the call after
> af12376814a5 ("arm64: kvm: stop treating register x18 as caller save"). Is
> that not sufficient?

That covers the hyp->guest->hyp round trip, but not the host->hyp->host
portion surrounding that.

Anywhere we use __call_hyp() expects x18 to be preserved across the
call, and that's not only used to enter the guest. If we don't want to
do that naturally at EL2, we'd probably have to add that to
do_el2_call in arch/arm64/kvm/hyp/hyp-entry.S.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210182431.GC20840%40lakrids.cambridge.arm.com.
