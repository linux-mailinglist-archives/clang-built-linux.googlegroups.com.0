Return-Path: <clang-built-linux+bncBDV37XP3XYDRBEWPXTWQKGQEBUKD6XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1616AE0821
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 18:00:19 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id w26sf3069398ljh.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 09:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571760018; cv=pass;
        d=google.com; s=arc-20160816;
        b=tv68nAMYigQHw6njmH1VRFzGd2VjLj5wlcLpKeKMt7GHggv1O/ARsOk1OMIWpG3wWH
         0m+pdRCS2IoxT03MwbmywoDZBTxvh/ke98PY8rZFUhO7ayK7M+gZiK8GHb/QldPMaJcN
         uHzgEuQjav0h6HniAVWYDw4fxMTtqFKSTnPUp0hLq4sbPawoHd/aCXKvwAYx65P1fGVE
         onvhHF2AZzFb3fk2xEd4cWxwnoQ3Jbl27xgh9avH2W3kqiPXls83Df6lZbCaha+9PaWM
         l1hYhmDpaKOikRmrgjrDY8irsZaB4toE5v1tAggqqnX8lS/M+CVGzbyi1XoR3/V3asBK
         SR5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dgnKuEphTwWMHiLb22+rY6USHQrhHEV/f+hhkiY8d+M=;
        b=zhP2gZSJYT2R+E6MZ2LoXaskFmD/iOfisgbN2RbtI0xV+s2bjchFjiELi+99xPP1eY
         WnT/v/UW7R05e1wKgxCagZp5Emd1Fkeye5I4Zf7pcypbV1qndRjjNx7wA8oRc6bzYOA9
         DGXCT2beMXfCh21nN6r2LcffcS2tJsW9f8GMeD1Hz4ahQ2wgZlt38twEOOAA8PiDUOHf
         mgGamNXGpt8+kmtw15OWGWMErHWHBe2eWmDTWBgHcTASZUm91cNycifog01vGmLOsklv
         GRvGrb89GTVqNB0bhP1YB4VjzkCDKeXUamIjmkoJRpxMzrqMzfyhrNDZ7mPA5QL4HnDD
         ulpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dgnKuEphTwWMHiLb22+rY6USHQrhHEV/f+hhkiY8d+M=;
        b=e00Ak1c7tm3Hk1EMze20eguZ6nYNCDCkjWfNobmsUb/HsIiMZG4aw7g5R+WcIGAcMl
         xkReOSB/U2fWaUkwQPaTggYkV62jVbksq2wcz54r9NXptI/FCJpzafzCjZTYLQOkrqvO
         fyzgufl4ZD4MVoRVNbau1dzEBX0jN5DTxh1P9MjMb0txQoZW+bnRBqsDT273SAqaBtxa
         3RAB0cf3dKUXDzK5e7lQZC8xwrwea67DblOIU7725W+au2AbUpttXlBqmdO4u3ms2WKK
         rDneWA/aSESjmKBEFGMk08P9vF9d0J8y2h4Vfc/v6v93D/LTtZlbxUs4Wx9yq/JE3KpW
         r1Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dgnKuEphTwWMHiLb22+rY6USHQrhHEV/f+hhkiY8d+M=;
        b=coc9z+n7pr2AOWzeWmKhtaJesk+AA0NGnT9vAOa15D1koItXaTu6i7jleyoq88Z0ME
         ry5deUHvSgA/FzYR0uADaopgD1CHT080o860JAwwPVV2VxRs0OMEP0hYMSyhY4lghgVJ
         XDfqlwe20ZAFX5kyhI//7WTi9mCk3JU4pE8PEm3UeUoZPH2RNjJ0mwGNrGBuYCD5frrV
         5kRN7Mbi+67zlQTr36r4E4iKSjIq0lAUTRwinvkiJwlXwx0/0rGWSFJcFCeeEOahv4Lc
         UQdiAjEvA6ZuZyq0R8oDkMHXWeK8FNRkq8ta9gyvXvKAlSfVgLAm//GSgByzg3A0pZcX
         UwxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXUJaODewDe3hEplEVhuprRu33Av1oSBJifdvFFJQVeuXv15gbB
	0eqsoi0sUEdD/K4lHz43LzU=
X-Google-Smtp-Source: APXvYqxle2AFl+OlbyKvC7giuba5PdCenhScGQUvkb68O0D9UYc9sMWwFfr6wQQ2XIFl8LLoeETbmA==
X-Received: by 2002:ac2:483c:: with SMTP id 28mr14679888lft.174.1571760018641;
        Tue, 22 Oct 2019 09:00:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b0d:: with SMTP id u13ls543369lji.10.gmail; Tue, 22 Oct
 2019 09:00:17 -0700 (PDT)
X-Received: by 2002:a2e:9b12:: with SMTP id u18mr19754858lji.142.1571760017896;
        Tue, 22 Oct 2019 09:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571760017; cv=none;
        d=google.com; s=arc-20160816;
        b=xWDUtGLQdZPSPZFRCgsGTBFqGv/oz9WGR6xmpxi8ano9LJqnn5GsNwIjO66c7nHATN
         +sCBv0ENmJ660qs+4TOkSFAwYnzmL5zFSG7JpyDShAXXRsmX52x6LohB4zHcaY6KgWNd
         /FejkTDGyc88QI3lcssaiTVPPy6t4krtJ+f29gs9Wh7fAqC6REpnPddq7qd0a7/I1ZTJ
         cT0uq7b/OLKtLIRMgY0Y57OA1Mg/viPi7N94V2mKfroKqL9gUMzzhYCJdKaLC1sjOBkP
         knHrRI5TpgC6UzUUCKawSItOhc8UE9kTLouDk2wZQSQHZgN0Wa7oSC6x38y7I2mWOPCe
         lrUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=bVXzkQQS/M5myuo+9rMPAg111c6jVV8u89+DVmZfmJg=;
        b=z/jALqhjKX8G+lqsUxMgVCAqYWR9sSdsk9HGDVEzulV4XlCxoRKZcP0es//gOO42nS
         lp7iuf7IZ2G8kIT8d7GDPqg7sq3zGPdvCypdT8LIPPRbNZMINt1tY2T+9vdvADveebMb
         lHIW2+uPOy40TdcSeG6EWSdtX6YjGl+NVDbCHT3CVi3Sae92Q9WHjtnI3w6KZXAeIWJy
         Pb6dOR5zJX0i74sucQ4ugd//y+VsKNymjclOg9FIZVPVA8t10NxfIevPqROzF93PnXbk
         NhXJqqSimLjgwD1kyW5pPv4JCKBs+5oK2G277AS07Uw/ya1G627Xcha4nm52Y7KMomn5
         OXUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com ([217.140.110.172])
        by gmr-mx.google.com with ESMTP id q25si1025668ljg.5.2019.10.22.09.00.17
        for <clang-built-linux@googlegroups.com>;
        Tue, 22 Oct 2019 09:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6C2C177F;
	Tue, 22 Oct 2019 09:00:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 09A513F71A;
	Tue, 22 Oct 2019 09:00:12 -0700 (PDT)
Date: Tue, 22 Oct 2019 17:00:10 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 12/18] arm64: reserve x18 only with Shadow Call Stack
Message-ID: <20191022160010.GB699@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-13-samitolvanen@google.com>
 <CAKwvOd=rU2cC7C3a=8D2WBEmS49YgR7=aCriE31JQx7ExfQZrg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=rU2cC7C3a=8D2WBEmS49YgR7=aCriE31JQx7ExfQZrg@mail.gmail.com>
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

On Fri, Oct 18, 2019 at 02:23:10PM -0700, Nick Desaulniers wrote:
> On Fri, Oct 18, 2019 at 9:11 AM 'Sami Tolvanen' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Only reserve x18 with CONFIG_SHADOW_CALL_STACK. Note that all external
> > kernel modules must also have x18 reserved if the kernel uses SCS.
> 
> Ah, ok.  The tradeoff for maintainers to consider, either:
> 1. one less GPR for ALL kernel code or
> 2. remember not to use x18 in inline as lest you potentially break SCS

This option only affects compiler-generated code, so I don't think that
matters.

I think it's fine to say that we should always avoid the use of x18 in
hand-written assembly (with manual register allocation), while also
allowing the compiler to use x18 if we're not using SCS.

This can be folded into the earlier patch which always reserved x18.

> This patch is 2 (the earlier patch was 1).  Maybe we don't write
> enough inline asm that this will be hard to remember, and we do have
> CI in Android to watch for this (on mainline, not sure about -next).

I think that we can trust the set of people who regularly review arm64
assembly to remember this. We could also document this somewhere -- we
might need to document other constraints or conventions for assembly
in preparation for livepatching and so on.

If we wanted to, we could periodically grep for x18 to find any illicit
usage.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022160010.GB699%40lakrids.cambridge.arm.com.
