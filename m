Return-Path: <clang-built-linux+bncBDE6RCFOWIARBVOR72AQMGQE6N4PA2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DC132B8E0
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 16:18:45 +0100 (CET)
Received: by mail-ej1-x63b.google.com with SMTP id p8sf4331465ejl.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 07:18:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614784725; cv=pass;
        d=google.com; s=arc-20160816;
        b=B6YpDxOY9sDs/bYkFK7LmURV1dYHE4Lxa1kya0LpdO8F2lN4di6YmZLgsWroEoK0A9
         AgltQVrdvMsMJgfdsyNPCvFB2vukgO0g07gb5digOVKw6T7cOKZBWC/ZWCJHxmF42SZr
         ZI56ukOcwC2GgmHI6s0/+zEQiLRgf2H5Ib9O6zCTSz6KwiUcXVpSHHwikmjlcgoasiMu
         VP3FBv+9WkZXmY7/lUDQaAZ6V96GE7OlqhM6v0anbqqp0KydYIPXKTDEaoeNb97voE4B
         dsYxD8d8C0D8lxisgcCwSj4M4pkFiCE2xumn5uEPoP3XwDLfxh51AF5CMqA/HMOCpr1V
         jQIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=XjGyQdj9fzHcyEnIFyF7EMn8b54MRXgjJUkbtWH+id8=;
        b=QdYgqSkKaKIb4cmpza/lGjmnpz06GO/F1ecTMuprMGy0AVj1gb/qfVgy2sL+vaawkP
         sdzIhf9QswGSr249jSou8xXCVQ4VgVeDzW8mdw8UQuINvW1X4TUPE1hYr/Mkrj1mpTpG
         rT9a6KojG1Vc2nDc2tXnL72k60TdrZNs8WUXAg5IM4mR/+ZIh4Qyc4i2+vy0cY+DK1HI
         unaE9E/hII9KTMUHq1pXy3MAuodTo1c+lZ/WKiq6fvaL5/LMM4o3J+zW3+cKh531HqrG
         uOlFE32qFOJm5mnYerW7eOOglC5+yKiKXvN/z7Ed7gZGWg+GxrRfV6OyjhT+NYw6MyJY
         P0og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MeXdy5EL;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XjGyQdj9fzHcyEnIFyF7EMn8b54MRXgjJUkbtWH+id8=;
        b=ay6/vYYkPP2IajGLdiIBO2YCfT1MNihHaQDf7sRGurHm8pDvtgLIoM/t9dOX1sT1GE
         QWIfTb61TqmFXLUp/h5yVSD2iq32GbkI6GHLcojiV2jYKwuQ8QfI4llaI9c2IJIKHjET
         3pzhXexFcA9AWGsJ8oeKVaWa07XWjXoNMVk9eEdLYxUwpCMMZ+hKfJRLGGfXwgsGTn/g
         hK6grC0R3v0fXRrtPpPQo7N5WJgtMfdmDTH7FBky08alhbMLXDcEZxGkjN7p7UkEVUgi
         8+d9HYmO6gfR0SPd/NUJawkyXpsryd5rFuev5YKIFtdKcfX1pNDSaokdC3V337w3igcB
         NEoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XjGyQdj9fzHcyEnIFyF7EMn8b54MRXgjJUkbtWH+id8=;
        b=hnC79xArKMBEY1D7mJHVrLzw/tK5rOTvmMJ4X1M4S9wS7GDwixOSQsd7tDpW6gqjzI
         lfFoNwyz7qj7rF2kmuUx6hKDX/u1LkY0LJ60Wf8zMOjyKgf8ZkEFHZ5j0eEPiFTD5Lft
         cAsapCAMpV+z8KiIknEbBzsFEv4mzTHDvsfqFQ7zbAiBjgdmFGzPgHcz997ocxOf6ob8
         mhVpMRIGMqOm8wZbXexeLbeGMPEUpsm1CfB6vsCXsRwfQDWUrVAI99gEqT+NwV+fCWea
         cIqKfnd5CY1lJIuMt6D9wCwfiUbO0xoTYB50837DhB6J9cSgitBPYvZ3pxIOlTXtu+S8
         95rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328+5RDbxJcRenS2013yd3LYQbvA2uONpA8FZMCzlOcfc0nVu7X
	Wn9xbgZC1mewhWMvLoJlORM=
X-Google-Smtp-Source: ABdhPJxjmTt6C97dIdRmDYnrLOPlw7Lu9THS+UhHR72CUxfgBPNHXaOAaE+CdW44hvb73pXEH0nb1Q==
X-Received: by 2002:a05:6402:5188:: with SMTP id q8mr25629691edd.89.1614784725391;
        Wed, 03 Mar 2021 07:18:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c909:: with SMTP id b9ls474523edt.2.gmail; Wed, 03 Mar
 2021 07:18:44 -0800 (PST)
X-Received: by 2002:aa7:db53:: with SMTP id n19mr7085322edt.330.1614784724586;
        Wed, 03 Mar 2021 07:18:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614784724; cv=none;
        d=google.com; s=arc-20160816;
        b=VdYAbcXfZBk6I2v/8Pe83+NpufoQVnX+oPn5/AJJSeUqi+rOXoDPSxpXb5eBBwZGHR
         cLpGzUfKT4Wg9k7uAAunKes0kOarsCHW4KkZM+eoLhoBfmUjoKluzlFqzp3XxuDaMiId
         Y3LWoduxlsXskCpRWb9QMcgV1Yy8MEJy6d6KtqRuJnoHDjxr2MRVxNPxbed9iv+gDJB7
         yb3iCufcSJuQhSJwKNiWYrQIWvwin097ziZC4jM2kMeaR6lFRqneWLfTRIMe0uwtMUYq
         SFVh12F56w4vQQunlNKgo8/iDZB3Lr1r0qL7EtXvBTnHM/PeddneDdfoY07K03xQ5h6s
         h8Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c1EgmR4iNgHLIiSmovii//tHLOrgOuYElC0B+L466FE=;
        b=i1QpX09N2q4YjivmAO46zdNifTYX3JtRbVaRNtUsdFv86WkAyQCCAVwGRU23lRvruc
         F006ILyqKzBHZwqyEvLa2quhJs1a9vCdWmI5kY+FYFJ677KqAw+N7tCA83SpN3rRNepq
         I40nWxNRgICeiWco7ZNa+nbk8zDwR4V3k/rcO1MHInWxTuY9/uWAbi0ltKu0qLL5vy5e
         JsZlfIDnJuzdOyNsM/UwrigLMefPJUQmI1+hzw1cRaa/ti9SYDwBy5XREASDxQNes3Eu
         PYdRqGMeVUcQ/kIK3ZSWdkslHKdW4IzOjRCOOFzZkZqUtgQbQULi+DM4QGY8uyV1WzjI
         /7GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MeXdy5EL;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id k3si1270291eds.1.2021.03.03.07.18.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 07:18:44 -0800 (PST)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id u4so37697214lfs.0
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 07:18:44 -0800 (PST)
X-Received: by 2002:a19:548:: with SMTP id 69mr13152043lff.465.1614784724064;
 Wed, 03 Mar 2021 07:18:44 -0800 (PST)
MIME-Version: 1.0
References: <20210219201852.3213914-1-jiancai@google.com> <20210219230841.875875-1-jiancai@google.com>
 <20210222115816.GA8605@willie-the-truck> <CA+SOCLJVGJSn67VU24wPDdsOVeHhGe+KO5ekOCusano=bhn1Mg@mail.gmail.com>
 <20210223100453.GB10254@willie-the-truck>
In-Reply-To: <20210223100453.GB10254@willie-the-truck>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Mar 2021 16:18:32 +0100
Message-ID: <CACRpkdYaSEb8bAztR-s_K17K+Zqusiofwa_dSjz-cwM2+N=57A@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: Implement SLS mitigation
To: Will Deacon <will@kernel.org>
Cc: Jian Cai <jiancai@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	David Laight <David.Laight@aculab.com>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>, 
	=?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Ingo Molnar <mingo@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	James Morse <james.morse@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=MeXdy5EL;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Tue, Feb 23, 2021 at 11:05 AM Will Deacon <will@kernel.org> wrote:
> On Mon, Feb 22, 2021 at 01:50:06PM -0800, Jian Cai wrote:
> > I am not sure if there are any plans to protect assembly code and I
> > will leave it to the Arm folks since they know a whole lot better. But
> > even without that part, we should still have better protection,
> > especially when overhead does not look too bad: I did some preliminary
> > experiments on ChromeOS, code size of vmlinux increased 3%, and there
> > were no noticeable changes to run-time performance of the benchmarks I
> > used.
>
> If the mitigation is required, I'm not sure I see a lot of point in only
> doing a half-baked job of it. It feels a bit like a box-ticking exercise,
> in which case any overhead is too much.

I wrote some suggestions on follow-ups in my reply, and I can
help out doing some of the patches, I think.

Since ARM32 RET is mov pc, <>
git grep 'mov.*pc,' | wc -l gives 93 sites in arch/arm.
I suppose these need to come out:

mov pc, lr
dsb(nsh);
isb();

As ARM32 doesn't have sb my idea is to make a macro
"sb" that resolves to dsb/isb when this is enabled and then
we could start patching all the assembly users with that as
well. I need the Kconfig symbol from this patch though.

I also suggest selecting this mitigation as part of
HARDEN_BRANCH_PREDICTOR, by the token that either
you want all of them or none of them.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdYaSEb8bAztR-s_K17K%2BZqusiofwa_dSjz-cwM2%2BN%3D57A%40mail.gmail.com.
