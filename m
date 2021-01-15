Return-Path: <clang-built-linux+bncBD45FSE2XIORBN43QWAAMGQECFWU62Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A732F73FF
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 09:09:28 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id d25sf830057otc.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 00:09:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610698167; cv=pass;
        d=google.com; s=arc-20160816;
        b=fplrDAOn2lFkW1HJDY2jlU2F/cUCdeaCbUpSZv5r3u5rV4Fxe8kSaAgs4DUU5ExgRx
         7piUfvcd4uxu8Fte8BnSHSlEpR8ooiliCWf2ZBH87yj9XZ0URGyOCTJBlh/FtTJC6Y+m
         p8fQAOx0zlUngFZKJH2JFKXEDw6rV6o/dq/qcLVatYeUlwo5neEuqA2srz9n2ed9xMDr
         B8ifP+PisdDfa/iDkdMSmtX7W4nJtcyfEVC/vfIjkTGwHFoUydiISext0CEaCTKvHN0p
         jVxCbiVnLBHo8/Vat04uM4n+qqTTjLiGDY/KGdLstkd/Dqx7L7ASgYVuPyDIb+saYjYC
         rKXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=biUSDvOzUpxvQv7VfUJL/bKuoPqcww0A40ntZoGkYe4=;
        b=MATFu/lwgAPzBD+NIbQ2f+ysxWDzi1FLo7kiHc2j1C+yAcn5hPfBegHpxbKIXm2dE1
         Kx70As/ohxxied4PS71bceXIuvhDWdVIYBdHyQkBcbkAcC+WvbOOq9gUz0AlXGuHoD3f
         ZQdVBNCju/9GENPZ9BoBi0buDMhm9tuSZg88KI0JJwKrnWMDpzzy2FjxxpGcc8vs9FkH
         enzChxvyYm5vkh9pk525dkAvIwsrO3lHQWYaBVrDe07Jy89B9tzaZT/mL2rbmT52OowP
         mwZivT8k45acfFfE7K+ZQVAEfmCeL/uC9HkFc0l7K/eUUAT8h8iXNKY4NbMNY5ahLLba
         9Lvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sciVsVPc;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=biUSDvOzUpxvQv7VfUJL/bKuoPqcww0A40ntZoGkYe4=;
        b=shnXfZBx/B3FOy6+63KQ5CbCN8cRYKgqtsV2+QMHa+MMcoEzHj/QCxCR/vsG0kNia3
         ltvS0M5TSKJpVCqksn+N8HUrsj5Va+Tspn+bYcSfdyGTo3wTI88gr7PrHKvuPjuXIj7V
         VytUc+Goisuu88CoEo19tTkru5qFhAVkvp0UAw2a1R5H34/8fbn6Vlf5jsQp1h7waJgd
         I2/6a+Ucib0f1M+c627GbS3P4uT9BqePWTcfiP+c1S64SQUOewnkDFQD8fQsZBnIP/Rl
         D69sFdb/IwT2fpRpBywtUJg9wCAzoOCUqSvcuN4s2U1qJTBE2qkJn0fkS9LFfRbLY9TL
         mB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=biUSDvOzUpxvQv7VfUJL/bKuoPqcww0A40ntZoGkYe4=;
        b=BIMSGjiFNGfrHTekyaWkaE7B1uZ/3MdEElMj7qr7wJUnwYwE5v0QbDAtgFvY0t0Ajv
         y1t8WUMFLxS3AmVc6nwV4MtwdwVfv/9qDU1gVVeNQg7zdcrl3AXUqMf674BPEX7Q9DiU
         KTRKBrtmkQ3Ca3Qn7W7gYtE6oSLYcOnpieG2Uy6HHGmnzF0/W2siSWa8Cg1lFBJQpQII
         kX+UBqDpM1Is0liSJfuqiBsB/QcJ/C2g6XJzW22NLBod1qmY7ckOggrkARTukwG0R/UV
         +cJx2J/RejOYjd+jUsdn0DU55z+pdQy+8BMhiXxjABpRLDGmBJM9QA0QJfMOJVXwO1on
         b9wQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iZtSJfj/k9M/rja1pfG5dsEwUGoOmwVMBr6moKywDGCdcbZe9
	RQC41sUrMZppfCSDdroXWAk=
X-Google-Smtp-Source: ABdhPJw8RGe4B5OhmS2i7VWaS31STGaisVbrRYfedWeZ8qhMZP8yNGP3Y0nglogoGLr9rNLFcV0G6w==
X-Received: by 2002:aca:75d3:: with SMTP id q202mr4883552oic.36.1610698167198;
        Fri, 15 Jan 2021 00:09:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:b36:: with SMTP id t22ls1976890oij.8.gmail; Fri, 15
 Jan 2021 00:09:26 -0800 (PST)
X-Received: by 2002:a05:6808:a0e:: with SMTP id n14mr5111186oij.75.1610698166796;
        Fri, 15 Jan 2021 00:09:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610698166; cv=none;
        d=google.com; s=arc-20160816;
        b=vBkA9I3weGYpNvbjptsd1czhHmlffsqNqFwLp7+emFInupsBx1NAXW3ZTvR6CyoAXM
         x3y0U1g7smWfoCbxo8TH08HOMK0R9xWkdm8MrO+DlVunUELIuKgyv9wstXtQdZxwXHeZ
         ErnzdQyUMNztIgrxzr4hs8DMebuK4FNhQibyqbb0A8h2po8sIrHWxdlGadoGLaUaqWlq
         k3vCI02z3AckLEueZvHtbjRiKVxO+YDSZsWaI9DaW1zpQ/FA/dIxS38sRqvfctZOmWhu
         nqUCXmR7/MYroscso8sa1mi2fGxgXdKf68IHB2qjx63ftUEtAF5acbgq8Yrvhy9sRGH4
         v7FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LD/haCq3XpvQOx/86O8R8bQ+l2gOmeWA4e289rpVU/U=;
        b=QbQto8UAatx9VwDOr3mSVInalHSYxMRVAnLpn3cmVgUdPQ6wZ2pZQAJUA+nWftktJz
         yqPNOAD6jvc/svYtrNxmbUvemtkg3B6scZ+PfODy1Tl4ke3n3ar3TUmZBbMEMlNTj5F2
         G+jxl/QuCX6E0FuBIWh1xH6+lxxulrzDxU0RtsaW1KIRbmh84MBqBj3+dPQ42Yx+XBrv
         HyRy0jTpS5B32eK+IkGp4lsIfcpDgctsmfArofnsgRPK8GlKAtDiKZNZw5xAdWOhYYZo
         EcpM8Vbzb3RrarIzvPMlkhDdvc0JR/Wu1jgkwBxPgl8BBR65Qo1qO7sNBzr78aDJYuON
         yVMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sciVsVPc;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r8si619140otp.4.2021.01.15.00.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 00:09:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ED103221E9;
	Fri, 15 Jan 2021 08:09:23 +0000 (UTC)
Date: Fri, 15 Jan 2021 09:09:20 +0100
From: Jessica Yu <jeyu@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Fangrui Song <maskray@google.com>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sam Ravnborg <sam@ravnborg.org>, Marco Elver <elver@google.com>
Subject: Re: [PATCH v2] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
Message-ID: <20210115080920.GA9637@linux-8ccs>
References: <20210114211840.GA5617@linux-8ccs>
 <20210114215416.993167-1-maskray@google.com>
 <CAKwvOdnG8VP2n0E5UiM+txxN6SJp-MOMfNqawqtrCi04BettHg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdnG8VP2n0E5UiM+txxN6SJp-MOMfNqawqtrCi04BettHg@mail.gmail.com>
X-OS: Linux linux-8ccs 5.8.0-rc6-lp150.12.61-default+ x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sciVsVPc;       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

+++ Nick Desaulniers [14/01/21 14:01 -0800]:
>On Thu, Jan 14, 2021 at 1:54 PM 'Fangrui Song' via Clang Built Linux
><clang-built-linux@googlegroups.com> wrote:
>>
>> clang-12 -fno-pic (since
>> https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
>> can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
>> on x86.  The two forms should have identical behaviors on x86-64 but the
>> former causes GNU as<2.37 to produce an unreferenced undefined symbol
>> _GLOBAL_OFFSET_TABLE_.
>>
>> (On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
>> linker behavior is identical as far as Linux kernel is concerned.)
>>
>> Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
>> scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
>> problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
>> external function calls on x86.
>>
>> Note: ld -z defs and dynamic loaders do not error for unreferenced
>> undefined symbols so the module loader is reading too much.  If we ever
>> need to ignore more symbols, the code should be refactored to ignore
>> unreferenced symbols.
>>
>> Reported-by: Marco Elver <elver@google.com>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1250
>> Signed-off-by: Fangrui Song <maskray@google.com>
>
>Thanks for the patch.
>
>Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
>Jessica, would you mind adding when applying:
>
>Cc: <stable@vger.kernel.org>
>
>as I suspect we might want this fixed in stable tree's branches, too.
>It might of interest to add:
>
>Link: https://sourceware.org/bugzilla/show_bug.cgi?id=27178
>
>too.

Sure, will do!

Thanks,

Jessica

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115080920.GA9637%40linux-8ccs.
