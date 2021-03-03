Return-Path: <clang-built-linux+bncBDE6RCFOWIARB2WX72AQMGQEZ2XBHMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE4932B8F5
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Mar 2021 16:31:55 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id o24sf2295483edt.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 07:31:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614785515; cv=pass;
        d=google.com; s=arc-20160816;
        b=nlTUk06qid7wb0ptNexv26HrkcgfgJU48r/ms43tmlVzBJxESPSYS3V06XqkLzmYt8
         GYYzuvPeQc+WR8k11IGcO0ubZk3qc6R8wkhcloUdpz/Nyri8a9En7Krk2tXlfuLxE445
         xiBZO/bEzM7D25C/00yVsv1xW6vhRoBNQbnL/+i7d9SU/ieLs89PblbdahAZ0/r9E8xK
         VvkZfHGwco5KYmK9Zo0l0+FvYA9Ta8+Fhs9uEQNvB/KP0TrcxZXUXA3HrLaLUrPkW+tH
         m+tjKT/WzjEQ1zHAcD+CkvS3kY/3k7d+MNc81VS4Mx6fZ7X4FiUoZIItzPbxF/DGdosi
         Y8TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=1szl2NPyeLBGXzcOWXcl349aK2sF3uU2TO/jIRfb5l8=;
        b=VfZrT6gh1JMsWk2ZdeHLloLQJjeNrBnDrYzOKIZZa4K+LBpx7bu0PmHY6i/iYeijA9
         XIqKXH8LEbkUWtCunQi6CwYry9DpOQSvTWhGWj/oc+bdIHvTiL/7DD7fLZyGXp5SgSws
         kXF0f56Lkrt+mb+dS950n0cinpRzIjJsfDrmn6K7z1rHvC8es3w+0lYIYxPyFUdB95vV
         JloNhCErx6OJD0nMT+1VsBQiIV0kugzzPE+e7BJ5jx3V1YBuxCYVBHq+XCtyLpLJWLjt
         us37X9pB7iltHPMQv/JAgczt/tWMDeuagFJNX4B8KDDssRR4y312VboaDtaHRVB0XRQI
         kMZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hkdy5FBk;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1szl2NPyeLBGXzcOWXcl349aK2sF3uU2TO/jIRfb5l8=;
        b=rKBY+vn7kbNBJ9G5uL6kCKggKG+C4AdPU5jPE2Mk537jGU9aFvB6j7jtQqHHjxLr1D
         8HP2nPwCKhyUx6VahAbTYGEuqUiUfadEoyRv2bYHT18mRirl0nQiXGRhjBM/qmRtyBa+
         P7s0rj7U9F2glJ9iUSCX899bbQktrZxv872tVrdrcqQJTAfBitPP7B1jvviyka9Dke3U
         Pw1/6jJPHrXdKqc1FgeIOgWiMJoSvq++bUti6e44+kETdeXXWYgOe9APeZV6CaDcTWTu
         QMZ/6kTVMegoVW7K3+ZogL1ngyvmi899IiPTguxfeuRXMpw1+QYyGdt6kQX0eUXcB08q
         W+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1szl2NPyeLBGXzcOWXcl349aK2sF3uU2TO/jIRfb5l8=;
        b=uj/wyVvYvH7uFpm/Da/x3lrouyPauh5BqOFIGY+CPDopbyf1ht2JwrrcXCllvM8CJx
         GuCWVSmr2QgEgCLh5Uo2ynvqZkTWDY+JcoYh5n6Ay2kCRxlESMXAhhT57A+hJtJob5dH
         gWsaYWKR4ZWpQF1KFZQ0mu1qTjHlSC9Cjpet4+01/pa4XehnQoIsRCjAd/tEOTGoENjB
         pHX3GCSTmppgRbspE8fohsYn2bPHiSPSo3Uvd9RXGZkSzDbebHxc2cN3a7xOIPznBfvQ
         0kNQI+k4X9jwnA3k+HAnnnmrLJvVWJJ6w5QN6UsPmkug9nzhlwLNKHbWz3we+bJm3ncV
         rFdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EUXjoh+D5bexjDpeMc+8PMBbSY6kJTb6pCia00kNBbdMHFUZr
	r1Tcuhk+Civ0AzW/Nl64OXY=
X-Google-Smtp-Source: ABdhPJxmCvV0zaow5eVXQZy0LwPaL1eVEDZzu8IBEnWcXHk+PGTP0cxLZmTtasFAzIBEkrT206z3ug==
X-Received: by 2002:a17:907:77d4:: with SMTP id kz20mr1472543ejc.93.1614785515022;
        Wed, 03 Mar 2021 07:31:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls526927edb.3.gmail; Wed, 03
 Mar 2021 07:31:54 -0800 (PST)
X-Received: by 2002:a05:6402:5203:: with SMTP id s3mr2390103edd.79.1614785514193;
        Wed, 03 Mar 2021 07:31:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614785514; cv=none;
        d=google.com; s=arc-20160816;
        b=i9CBOevfO7vXqnXdADB5PqJNi5RFcGqsTNSw943TLHpJopKwPitmR1DzBP8IaQeCri
         jKOgBDXQ3MsAK27I4YogYUu2xTDV+F3AMjssuL3VOqpXWN2dPwTo0NC2Tz7aqQ0kAnWo
         tgD0tdaJjYHdVSSZIyY38IwiTufflduuFgM0VQA2xFJsSdZWt3pPGzRPfhExMbf6uItX
         d2fj7FK/6v61iOvsLP20luhjVIhvlH4LOHaM/+/Ts0yDraFkfCs/SQFxzLquTmhgQaCJ
         xVPkrwjsyJBcucagJAANvdlMKDWO6lT1W1Tmk+I0JRE34mTu+bZSxiLM0HGtZr9JawAw
         WFDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q7aMRHBSl7NHJrCVQqtGWHia3CjmS5YDu6hw58y3144=;
        b=IaB/4bwsfV7mlG0Jr71wgwAB1tB6rUDck3RNW7+VKloVD/bS4F2D4D8azb/F74sSmv
         F9ju2lfssuApT+P/3lADS1/EfvfnAR7wGVB5zAKZLoFNPT3Se/wvyA4sPRINIILV7In4
         AuefQnv7uc3rm+8IPRX/++IOmISpyT/c3ZbL9AYbvKZdbvhOLBw40lZQDgZuyjFbkXNM
         IJuRhbbQ8UrYO4vL3QJY9zYo3PoIgOvVN87pQiS5SIMSdqP1HY+M3C2LkQJcHJZJpjf1
         lVvJ4pS76f+FDqu9bNy9ve8MkgYxKIzNoyfjGXIx7uv+X0AamVTMsJBKcVks7Ms5qD4Q
         M+Yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=hkdy5FBk;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id df17si638768edb.3.2021.03.03.07.31.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 07:31:54 -0800 (PST)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id q14so29216109ljp.4
        for <clang-built-linux@googlegroups.com>; Wed, 03 Mar 2021 07:31:54 -0800 (PST)
X-Received: by 2002:a2e:864a:: with SMTP id i10mr14866199ljj.467.1614785512273;
 Wed, 03 Mar 2021 07:31:52 -0800 (PST)
MIME-Version: 1.0
References: <20210219201852.3213914-1-jiancai@google.com> <20210219230841.875875-1-jiancai@google.com>
 <20210222115816.GA8605@willie-the-truck> <CA+SOCLJVGJSn67VU24wPDdsOVeHhGe+KO5ekOCusano=bhn1Mg@mail.gmail.com>
 <20210223100453.GB10254@willie-the-truck> <CACRpkdYaSEb8bAztR-s_K17K+Zqusiofwa_dSjz-cwM2+N=57A@mail.gmail.com>
 <49e8725f29ab4ecda6d669e9216bca29@AcuMS.aculab.com>
In-Reply-To: <49e8725f29ab4ecda6d669e9216bca29@AcuMS.aculab.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Mar 2021 16:31:41 +0100
Message-ID: <CACRpkdYM3x6pJU3Vi+EEHtC3wD1DkrtVbGDd3PFHWL0fxjSA9g@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: Implement SLS mitigation
To: David Laight <David.Laight@aculab.com>
Cc: Will Deacon <will@kernel.org>, Jian Cai <jiancai@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <nathan@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>, 
	=?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Ingo Molnar <mingo@kernel.org>, Marc Zyngier <maz@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, David Brazdil <dbrazdil@google.com>, 
	James Morse <james.morse@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"linux-security-module@vger.kernel.org" <linux-security-module@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=hkdy5FBk;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Wed, Mar 3, 2021 at 4:29 PM David Laight <David.Laight@aculab.com> wrote:
> > On Tue, Feb 23, 2021 at 11:05 AM Will Deacon <will@kernel.org> wrote:

> > I wrote some suggestions on follow-ups in my reply, and I can
> > help out doing some of the patches, I think.
> >
> > Since ARM32 RET is mov pc, <>
> > git grep 'mov.*pc,' | wc -l gives 93 sites in arch/arm.
> > I suppose these need to come out:
> >
> > mov pc, lr
> > dsb(nsh);
> > isb();
>
> Won't that go horribly wrong for conditional returns?

It will so I would not insert it after those. It has to be
on a case-by-base basis, I am not planning any
search and replace operations.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdYM3x6pJU3Vi%2BEEHtC3wD1DkrtVbGDd3PFHWL0fxjSA9g%40mail.gmail.com.
