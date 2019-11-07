Return-Path: <clang-built-linux+bncBDYNJBOFRECBBRXOR7XAKGQEVT7SXOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AC5F2CD2
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 11:51:50 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id e3sf756340wrs.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 02:51:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573123910; cv=pass;
        d=google.com; s=arc-20160816;
        b=CsyjZ2yXwDKVS4CXkGiP/GskxvSQqgnkfLQSxWCS8k8I8MgG1DOLnJsg5qibYdE3rr
         lo3htAy/rq5tviXx7P4Zi5Vtrc6/DrH1nE3Sj9vzl4oal9UuleivJBd4jFTmjJrM6T9/
         zfOPH4tqlkKnceXAT1jzE0pJ8ZrUYX0FAPxeTwMoLnzj1AZinHqZ6vs0HHgX4lQP6zE5
         mjd3TRv5VefL/ja8Qc6r4tT93LVky15Hv8rquXpmPwOBPbJd4UqXVnlCGvySDzUtGbsP
         YfRpaqoweMVaadwotc+TTlebjj3nPJd/nUHiS79qTCw8/a1YZqn5q8O7BdhEJsCQZK22
         JgkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ktlSR0yD/ZLVxmjUoIHMlVcgzYA3CYi2grOP6hmpCpM=;
        b=ucAOenrY0nj01ncKajfAsNFfaXZb6JWOTPm4iG4nKHImpkMHQgk4rDEqob284Jb/S+
         E0lKcD2Hu1GTTygq3hiRYVVOX5psuUiGBaTCgeRQ24UXXaCQeiWflud/sPebszR4H2T2
         tYNgtbZLZzBgX25fmKPG+z1H5nDVolxu7+lDd/8jdeQcGnI/Y8S1MeENhlKOT4WWXhPa
         LNrgyody6G1czNotMKNh9FExpfboNUF3CrOCkJhUUxWll0jfk946rNgRIBspsmQzCddA
         83FggQcB2HFTDrfZX3E7/EwQCAeXGhlc6ti/Bar1UiEo2jjhmbMJhfBkIBfPRI9lwhiA
         lQig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HKwEOayk;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ktlSR0yD/ZLVxmjUoIHMlVcgzYA3CYi2grOP6hmpCpM=;
        b=AI0uJJfFtElmzjlbyVNTTi+ZuJN1ZadxFwEt6ARlljCs69ltSimFkGC+TLFVrkMxT4
         PuLfn+VZPUTAPb5xI4JPLcbx1hIU57pxp//edPIl7/AYgN46jEG9EQrIZVoYb+HBHd0L
         vPEuwFZd5jfitAB+Lipcc6a6a4wzG1y3lDkUgxFSsVEOLNenzrgh9LXXTOy2dMm4bFnA
         /zwmSsZYJm5pVaOHjJ6y7EuJAM20PmqvY+H7/hMdf4XYxycB8nbLY+E6b91JunXIAHv+
         FXXSTK1DKJ07zzpVWWucU5345Iduu0eks63AWQxuKQUXsyMGiBToiVnVjoZsBpMpmmYB
         +REg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ktlSR0yD/ZLVxmjUoIHMlVcgzYA3CYi2grOP6hmpCpM=;
        b=BTwFT/3t3MdHPf3eQUDvbhsCGWLIbyKyxWBnPGScYwp33r+sUfJF6GgvkrKgNsl3a3
         CcpDspkXYGeMDX9c3TVyKidrxXWDV66UfMbedN+wA/dZpdQW68OVce2tSUvjGGWOlwH9
         aw5WnxGs1jchRANhY0VSqayzTNHi4HRb1pSdgjwv0aYR8GRwGHJC+etimCq1rx4J5oz0
         tsSm0KBEqtEH0h1tp/CKrRGFuCMNYpyv3Rc7PMeTmcT7I3snHMmDAkd61ps2xZLYw5XM
         pxAO6tvFH0j1zF+UmdDt/9LmzWtX6Ie1BRwKa/geuYoaCjqDYwm16hbofISBnDoehKen
         wxFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTHMOH7m8aYPcVqVKlEXK7HESiIDBWbC0YNUSgNmhCAW2fyO8O
	qy4tyELVVrfQCerQFUCWnhc=
X-Google-Smtp-Source: APXvYqw/GJ2cs1/JrbaycUvKk/ADvzZpMfC7d27waBbTLV8fZaNvDbEoMSsqtnGEyxlrnNBq4NkzLw==
X-Received: by 2002:a1c:2745:: with SMTP id n66mr2184559wmn.171.1573123910446;
        Thu, 07 Nov 2019 02:51:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7406:: with SMTP id p6ls1585945wmc.2.gmail; Thu, 07 Nov
 2019 02:51:49 -0800 (PST)
X-Received: by 2002:a1c:a751:: with SMTP id q78mr2332604wme.129.1573123909916;
        Thu, 07 Nov 2019 02:51:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573123909; cv=none;
        d=google.com; s=arc-20160816;
        b=cHwo1iQ6WCEnz96mSI87gEa1e/frun19zY6/t22bjFeLqqLO9xxZYghI7Q9P61TFUG
         Dry4KYund1dimN4jsrZRarH3FA6bW+e2S46FO/xXeFltMvP2JhVJbg3hdr2MCDnAfKof
         3bDpnoRmneGZvogBdOkKRJwyWbmy6EDw6UkM4/GwidpSiSWgZpdWfmhZh9Ghi0cbVG7N
         8IRwggthhdjSICq47/jgjIf0WM3tiw+SgQ72dhIVhfl86Gjo18vhMQwUOzTxmJEfR4by
         F1hvmmyHZTfN4DMR97DrLv9zFmA1sOIAYn6/eJCcWU9eZOKlMvZXVIxugAY3mbWkJj3b
         bTfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OvMY+y9t+JrwQeXlyarqTJXF9VkquzjWewr7iQbYsdg=;
        b=1BRWlbYvMtFj82ce7dCPQm7PRN8Lmoj4Vwu4B6Ry/68Q/B8YMawYEJQzmYtvFIawEg
         sfjCk9wsnvZZIcHljihbr0+ownWlOpZPZiZbhZwC7V8ovbxslZkVHfadys5CMONQ3ui3
         s9dvxtmbG5x/XLyEgPjC8YGrNYxR1KnLZidbZMeQhFEipjQ5O4k5Ao0T6Ia/8N6zTfza
         tEDm4B1zvOZ/OjJhQrcYrecKfOkcH4VC1DNZ49f00Bew9BRN+F3koUa+XUfCMXL4xrgd
         CzZ+kwje3ain/hwStmMKslrvhIFXKVlU8I6mv6AWts4LrEpZZFzza6wfih12nXuzSrfq
         FhzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HKwEOayk;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x2si96641wrv.1.2019.11.07.02.51.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 02:51:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id l17so1152952wmh.0
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 02:51:49 -0800 (PST)
X-Received: by 2002:a1c:b1c3:: with SMTP id a186mr2297717wmf.10.1573123909498;
 Thu, 07 Nov 2019 02:51:49 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com> <20191105235608.107702-12-samitolvanen@google.com>
 <CANiq72mZC-G_R_RJjapZS+NvkQcrjdiri0NyHUgesFzUpe-MDg@mail.gmail.com>
In-Reply-To: <CANiq72mZC-G_R_RJjapZS+NvkQcrjdiri0NyHUgesFzUpe-MDg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 7 Nov 2019 11:51:38 +0100
Message-ID: <CAKv+Gu9DD12BPV_jNv9Hjw4oSiZvtdiVVjB-B8WLXCoPL4CA9Q@mail.gmail.com>
Subject: Re: [PATCH v5 11/14] arm64: efi: restore x18 if it was corrupted
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=HKwEOayk;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 6 Nov 2019 at 05:46, Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Wed, Nov 6, 2019 at 12:56 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > If we detect a corrupted x18 and SCS is enabled, restore the register
> > before jumping back to instrumented code. This is safe, because the
> > wrapper is called with preemption disabled and a separate shadow stack
> > is used for interrupt handling.
>
> In case you do v6: I think putting the explanation about why this is
> safe in the existing comment would be best given it is justifying a
> subtlety of the code rather than the change itself. Ard?
>

Agreed, but only if you have to respin for other reasons.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu9DD12BPV_jNv9Hjw4oSiZvtdiVVjB-B8WLXCoPL4CA9Q%40mail.gmail.com.
