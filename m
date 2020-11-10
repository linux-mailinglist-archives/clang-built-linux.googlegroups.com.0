Return-Path: <clang-built-linux+bncBDE6RCFOWIARBSV4VL6QKGQEBHQOHJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5ED2AD841
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 15:06:02 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id y26sf737253wmj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 06:06:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605017162; cv=pass;
        d=google.com; s=arc-20160816;
        b=uUlav9r1qEz/1DnabVL2LqNt3QhK7EZexd/5Cm+AlcVe+eDPFCUhqi8dBePV9h2xNQ
         hTjKghyg/FwuUuFBPwQp5Ba5/VDxz3p67lnrsUaHdGe0kiDik6Ea9AKxuBTKhq+xrstG
         O440LNZiV3dBMyOiP3+IDBma2DHsTt5kr19uLk/sKhu2IE7wCGX0GW/LPtfBJ8FfTDR6
         Dy0wOE3E0OWTSccMDdlS+7kq+mcVIvTYcHvTouKWgLOJMkbPTKxjVm3PVgM4UxzDqHkx
         rnRA+2qxc2qCj3Z/ApFZGkVM8JHm5IIUE991PSR/SuCPAy5EPqULt03NVvDrGdeID13Q
         emTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Ch8ZIQWeVFx8EmXEpzpSkfum+wi4OD4qRUuHFxnStEg=;
        b=tKcdfgwTpCixTx63cuRSsw4UMGPcgyYvWM0meE2NTEBPkZllMsdUQhSJu2zB7JAfJk
         05FFAYvKSliq15ZbvDEDatTCdB1VvK5BVE/Z6WhbX126+FtvXbQqfgPyra5iKKaAEPdh
         3oL3jPBswJZyBwrOU/advT80yo72S6rSPAp4z2UTo2mFAETtxOfDvfUugjHY4ZgX3PC8
         bkQjgyvA7OoGQmQguCskaGP7dyW1XQIq4fO/tXRX+VLakgfbUZb4foX+tMftXoRuWzor
         ZuYUaVtqGaBco+Ntm8oFISg1Kr3PsNO343gmYaj/ICU5ShMPbtj1RB9ZUaZJdfOYEdVS
         cJNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GKdAFJSc;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ch8ZIQWeVFx8EmXEpzpSkfum+wi4OD4qRUuHFxnStEg=;
        b=FMFL+PtAIAJ6OQrZtyC1Eu+w2bGUbZjNtdrKrdMvrs76KsckiMJWRlEIwL7Eo04dDn
         bY/Z/x4nF+aYToz2hMXzzWRGJ6Kouwp/zkXOcxg6hpT6y2k9HiZqB/uC06hsuD63ia9k
         Q9lh8fcSxStUFJoEUywOkR71KeHqd9UZ6C/PUuk/+6z//wwKbB6avheHc4i/W3wydN9R
         Z74gQ7EUv9Qc44+w/NzA+a2EdB5Vbpxke2GHr/z+KPE1qEocRduHdWfrd7DJRWkqnKKg
         zSUzrLpN4a0uJcHiBrtDBmqTIuVoo1vEdkJDCd//WWFcQQqdajc3GF9UpTcx8GhqNFwb
         fwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ch8ZIQWeVFx8EmXEpzpSkfum+wi4OD4qRUuHFxnStEg=;
        b=sxxCwa01D9IwtZsyEFxJGJqZ5zeYzHDzCboY39eQvIMJwASJRrNfszmmfy4j4ekZsj
         EopALs485q/PmcnN2+5H0MbbX0KNDby90a16uVgUM2q4USQZJdoFAME9oBMPf+A48lUW
         FMVVd23fzUlNEs8VwVxvb3hFH90hk7d65RqNT1rQYr3hOaSxEjBB7LjIjnTQG3SlmZOr
         W567xiNIskdjS90CzmXGwNloHiYYX1D/PnDh0anDFtFF2V2lAsPBV7rwJJ1cp/B4D3bw
         gP+mo9bEQ38+BwCmB+4pVou+jASLdVHP4IHVLxLbh0r4KMzSfCLaYY4DVB+n7MKYXa7y
         CYaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YqnEb8PJUnSsOdPP2jVxGNvBGhWRuoHcbMmlZ2YSDvf4VUCR3
	Ev3zv08kNDxmE43+W/W0av0=
X-Google-Smtp-Source: ABdhPJzAJk87Nv43fmyUhz+fqlychX+f5gnWnH2/XrSbZqdY3o6kSLDDvAF5AommRlSXHf6c5v8MFA==
X-Received: by 2002:a5d:4f07:: with SMTP id c7mr25191349wru.296.1605017162318;
        Tue, 10 Nov 2020 06:06:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1bc1:: with SMTP id b184ls1347576wmb.1.canary-gmail;
 Tue, 10 Nov 2020 06:06:01 -0800 (PST)
X-Received: by 2002:a1c:6456:: with SMTP id y83mr5253055wmb.59.1605017161392;
        Tue, 10 Nov 2020 06:06:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605017161; cv=none;
        d=google.com; s=arc-20160816;
        b=HThBxvARp+7kX7I0JX0zLHZCi02ZXjmhiEljSUsx6zKVgDwoAx3iLJBfoegf5Utrdh
         Y0cuxbGEPUI2GZryk/NzpUUTWNFWsVc83Y3ViH9afvOuxj5xgqdT5ZSgctTEkqoiJMpC
         gf+lD6C6hbvibP6gWV1RJv7HgIWyAePyrEpUKyYrB/VI+VgB7RUhiPyYmg0sPYZ7+KEe
         T60nY43Vsb47ZZeT8Ir9SivCHtzJwfCZUxIKUdkhbgpYoRR7IXRE24ZSAOz17wuE2kL3
         rZpW/qiONEB61bbgANYjCVkd2JeLEKrH/Cgf86LrqGuO4Qo7bXC4xG7sQUQnXVr3AjB6
         Tx3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4o58Oh9AmE0As7uIGbgVLsLRsyZROjkMk5qNTO47evM=;
        b=sBneMxzTY7lVMwMA3ORhZBRa3l7NT6cIWU4hIdPLTqskhsMc7Ru35Us0oXhDjirttD
         VDSEcS3VsPqV8tnL8idsMQz+sY4OGgfZtaHt3nf3K91Euyl91W8RjI9/PIEzVhkyqkds
         G/1Nl9wgJvQeupXYz9fnKnROyU7dC/ZGTVGdsDVGrhPYd+X0X15YzsE0zO/1qW+EGlmk
         fFUsXbjlp+ZK0We+Iunc8ABkvCurBnp/9xYQgAUQaJA4z7m1aJcoo13YHf7TQzcnBVfY
         e1mZ2WbHpOusdDgwoN3rxIVSxiaKFehv7Edyic0honwzjjucbmjmLNhRE9QvTGu5ARML
         biZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GKdAFJSc;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id m5si123245wmc.0.2020.11.10.06.06.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 06:06:01 -0800 (PST)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id j205so10315747lfj.6
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 06:06:01 -0800 (PST)
X-Received: by 2002:a19:f00b:: with SMTP id p11mr7264525lfc.585.1605017160924;
 Tue, 10 Nov 2020 06:06:00 -0800 (PST)
MIME-Version: 1.0
References: <20201105181542.854788-1-maskray@google.com>
In-Reply-To: <20201105181542.854788-1-maskray@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Nov 2020 15:05:50 +0100
Message-ID: <CACRpkdbF4KnN4X_PMQ6NQoV3q6VfHhRmnrKWChJ1Z8PYW3415g@mail.gmail.com>
Subject: Re: [PATCH] ARM: Change arch/arm/lib/mem*.S to use WEAK instead of .weak
To: Fangrui Song <maskray@google.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>, Abbott Liu <liuwenliang@huawei.com>, 
	Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Mike Rapoport <rppt@linux.ibm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=GKdAFJSc;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Thu, Nov 5, 2020 at 7:15 PM Fangrui Song <maskray@google.com> wrote:

> Commit d6d51a96c7d6 ("ARM: 9014/2: Replace string mem* functions for
> KASan") add .weak directives to memcpy/memmove/memset to avoid collision
> with KASAN interceptors.
>
> This does not work with LLVM's integrated assembler (the assembly snippet
> `.weak memcpy ... .globl memcpy` produces a STB_GLOBAL memcpy while GNU as
> produces a STB_WEAK memcpy). LLVM 12 (since https://reviews.llvm.org/D90108)
> will error on such an overridden symbol binding.
>
> Use the appropriate WEAK macro instead.
>
> Fixes: d6d51a96c7d6 ("ARM: 9014/2: Replace string mem* functions for KASan")
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1190

Acked-by: Linus Walleij <linus.walleij@linaro.org>

When you have consensus that this is working, please put the patch
into Russell's patch tracker.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdbF4KnN4X_PMQ6NQoV3q6VfHhRmnrKWChJ1Z8PYW3415g%40mail.gmail.com.
