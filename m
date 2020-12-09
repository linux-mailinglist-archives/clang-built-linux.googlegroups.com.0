Return-Path: <clang-built-linux+bncBAABB6WIYT7AKGQEQXGG6DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EAE2D4A02
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 20:24:43 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id e13sf1937403qvl.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 11:24:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607541882; cv=pass;
        d=google.com; s=arc-20160816;
        b=aNwd/InIIzX3Q+ZN74da7FGD66Bq9Fr8M3mHbdhpmE98QUadoGQlIs/n/k1itiDxCr
         QVYSOf/aomXHf6fmCYu26RxdD9KPU5ntptNAsLChwlElxGdIrVBgAcvsKm/OKCwwd53C
         1lhWgiZepo2KLHJopKMkCjh3VkOIwcinO50vSuyH8Eo6nu3+EHykkaK7D444wumvbVZH
         5yNkqLeKU6+hFjj3BalIwgRhwbTEHdcYCdXF69hnwASyUnQnFRY6XgGNRmuXuOMuTkHw
         zApZDYWOiEpy3S5Cec9SWxYmPz0ZKy2KMWhxGdjznejwhmzrna20/3fxFDyY24EKQ4Td
         WAwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0dEXZOzmnscw2X7GkAnM6YOATDsEe/uwoh6jtbEEgpE=;
        b=BonNf7y9A5SV6+2O5MGcMJkjqxvl47iovb45clC6MzDbr80CCSpQmgLn+YNhTD377R
         dNSWWcVXEkrS5YldWrkELC7DKIhppSyMN/tjE1cOs3u1gnUXPh2FPcMSzAc1dA7ToenG
         hXRq6JvX/wFQDb9MYt8nlY0wNdlJ4yDdmpBSbVmmzfo+EWMOGzAr5Pe5Ti1LC/q0kGeO
         b5VezPkrgQlgHCuim4D2RB0kqUV2B9Ty4eogNvadHwMlQhh6PUvPCy2HrHQjyNbP6sIC
         +VqUInMvkMxRddrszYFBUUWjaOFfW8j4NM6PFOJGJjQD6OiLNoyFajb6B2zLwUXEjUm6
         6fsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VIdtJMVm;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0dEXZOzmnscw2X7GkAnM6YOATDsEe/uwoh6jtbEEgpE=;
        b=Gkp+HenQmQ9HhEIO7/oBiP3HBsjBQKJ1d0NXVMRGfqYXQpYD9Z8Le24BRErfUA/1ZC
         Nfoopu6buAr4iaTsOLuFkOBb5j4+6H/c88s1rKjlu3O0m2cjfWjI6eeS6CX1/vyd7cfF
         VhdGN3siIBZp49neK8l9ECIyoRROsCvYrmttverUZSeQ0GW2b4gfPRcBkH3o986cQD2n
         vLIU1bqGD1jND6jIifUcUZmagnfPQ0HjdLXXBKnT0PykgKVMv1VLrZrEGJT9uT9K3VrP
         004zTGiWp45fFjq5tgfEoVipAZjPlpfM9oy9pGzYjXVcHdicdL4rIzTh7vRv5Gv25hw9
         3mLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0dEXZOzmnscw2X7GkAnM6YOATDsEe/uwoh6jtbEEgpE=;
        b=oGUOt0vK5snO9pFDc7jq9jdTgt9EHPnOMYiEpAWBbrLoeMhMCNPsavWr1pzx85ig7M
         IOoJnedZZsg2Jn/YNrFwcbVGNcjLhxcaC+BGPK7XtYyTOqDGE2hAVKPDhWO8oOhyMzL9
         0Chef2emNxxlWmPsszvEB/ZANWMvQ9t+HSYu1LWxYzQSKyHsjPi9+uRC3Lh6Zpwc/zb7
         OHF10xyInD/pPYnAkEfIgzW1/Z6iy+dvBymkM3uK2qXzFiVt8LX6l/HV+vVMEGMSqvvN
         hcus7hf+itJO5DQJbCgPguni7sijz4B4ZsGKVzLvhUD574WaepMhzVWWxNihpLqNTDWZ
         dtbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jmcqg8/mKkI2MLcpt6ulb8qqsNESPx0wLt62neWGAMkrAnLF2
	Sf8PhG7B+uaiaUADlZ2jCqs=
X-Google-Smtp-Source: ABdhPJwoxiQUsXonMnyqW/GYS44LrZUv2SXR1gWxJvgTn6CmEfl4Kqgu2XSe9IW0Of0Tx3T/walXtQ==
X-Received: by 2002:ac8:5901:: with SMTP id 1mr4844877qty.350.1607541882107;
        Wed, 09 Dec 2020 11:24:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7196:: with SMTP id w22ls1011031qto.6.gmail; Wed, 09 Dec
 2020 11:24:41 -0800 (PST)
X-Received: by 2002:ac8:a8b:: with SMTP id d11mr4698684qti.0.1607541881698;
        Wed, 09 Dec 2020 11:24:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607541881; cv=none;
        d=google.com; s=arc-20160816;
        b=aQ2uxVWnre/4b3mu0wELRLsfvQVktzXbWKZUZnTvbNYTVBGPeYTJYHfgPFXo8RtpOe
         CTCWqe4irxJWBXsHTNJ3TLwCMHv/DgvtZNsjpW6zsOCIOX2hVN8G/PjcUDeeYUxZ+3nm
         TChhplw2Jm2lJ2yEvHn5Xpva/BgqP24tkCCwo7caC/geBApDZkVswEvY8ykVKNfWwH2V
         gEb+/RMFsuM1W25pSFJrK0cHoHpa5mHo5Vq14yTS8BykXraTU8/FZAkX/CxoAvl4vOxT
         nCRam0gLurq4f5c52wVG6lKTrf6VzVLKvHSCMO19TL74kPA9oe8upQ9rmuYYu7dP1Csx
         qKdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bqhxnqaEI8XwG+55qMAAy2ow9/7wnmFxj6d59TQ2eh0=;
        b=oYYgo3Ss/dkhnFhXAg+TosbqhfYajT+VNW5NJZ/cAy+F/4V2RG7sINLxT2b5ZD/++x
         81cdAkj7bmLgTkHuzahCVvhOfL69L787c+sAUFqBWwe8P6ssxB/Z2a9NRTSdkShMuj4g
         sFtWPlV7BBUD7K9fhJ7XTzimRZeig0AbSMOKztrvA4cawLJmKPZw5ghMhh8yrtra3W8b
         rH3oGNKbbgNkK1Du6oH0cEJZRg2Nr9Oq5ACy+7JDS6l1iH9TmRezzih4WHCT3QN9+wdN
         5C0RRp9YxxgVPXnHIT2k20D1tRwCmuOKMrmN3tehQFNmNRJq+T1D5CCbpCJd7fVSvRrh
         jqYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VIdtJMVm;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y56si138108qtb.4.2020.12.09.11.24.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 11:24:41 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:aca:44d:: with SMTP id 74mr2951158oie.4.1607541879572;
 Wed, 09 Dec 2020 11:24:39 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com>
 <CAK8P3a1Xfpt7QLkvxjtXKcgzcWkS8g9bmxD687+rqjTafTzKrg@mail.gmail.com>
 <CAK8P3a3O65m6Us=YvCP3QA+0kqAeEqfi-DLOJa+JYmBqs8-JcA@mail.gmail.com> <CABCJKud-4p2CnTyC5qjREL+Z_q8sD6cYE-0QU7poVKALgoVcNQ@mail.gmail.com>
In-Reply-To: <CABCJKud-4p2CnTyC5qjREL+Z_q8sD6cYE-0QU7poVKALgoVcNQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 9 Dec 2020 20:24:22 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0_QfKEQ=F_F9ZUaqzN7gGGGSrE6Zk=8+qxFgGap-X5OQ@mail.gmail.com>
Message-ID: <CAK8P3a0_QfKEQ=F_F9ZUaqzN7gGGGSrE6Zk=8+qxFgGap-X5OQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VIdtJMVm;       spf=pass
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

On Wed, Dec 9, 2020 at 5:09 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On Tue, Dec 8, 2020 at 1:02 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > On Tue, Dec 8, 2020 at 9:59 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > Attaching the config for "ld.lld: error: Never resolved function from
> > >   blockaddress (Producer: 'LLVM12.0.0' Reader: 'LLVM 12.0.0')"
> >
> > And here is a new one: "ld.lld: error: assignment to symbol
> > init_pg_end does not converge"
>
> Thanks for these. I can reproduce the "Never resolved function from
> blockaddress" issue with full LTO, but I couldn't reproduce this one
> with ToT Clang, and the config doesn't have LTO enabled:
>
> $ grep LTO 0x2824F594_defconfig
> CONFIG_ARCH_SUPPORTS_LTO_CLANG_THIN=y
>
> Is this the correct config file?

It is the right file, and so far this is the only defconfig on which I
see the "does not converge" error, so I don't have any other one.

I suspect this might be an issue in the version of lld that I have here
and unrelated to LTO, and I can confirm that I see the error
with LTO still disabled.

It seems to be completely random. I do see the bug on next-20201203
but not on a later one. I also tried bisecting through linux-next and
arrived at "lib: stackdepot: add support to configure STACK_HASH_SIZE",
which is almost certainly not related, other than just changing a few
symbols around.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0_QfKEQ%3DF_F9ZUaqzN7gGGGSrE6Zk%3D8%2BqxFgGap-X5OQ%40mail.gmail.com.
