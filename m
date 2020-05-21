Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBA6ETH3AKGQEH2XRQBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 574801DCBE9
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:12:05 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id c18sf2698404pls.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:12:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059524; cv=pass;
        d=google.com; s=arc-20160816;
        b=R1kMRaSHWd56Hy9T/2egyJh/1kRTdDfRvA7np8zbamMFxO+850AsgDkGCZ2dNMtvgC
         3CmjzApIcDajcYxCXDv+3eDhDXnqBSkERsLYQES/jeEnrVZnSfO+srao+kxzaFT90gcx
         Tp/Z9cFehXlN+Rm+/GmaOM4bRDtmMUYDzsG6nW6qtnmhz+Zvx8jYb/T39BhA5MIMLn8z
         X3k0hn2pwMbyiAI6q3WXkBzAvYYEdtiQbkrpBertPqCJAyAsyvPLRGz93vNqHSFbxwq6
         OS9kIvUNdS9y5RvpgcgYJdaR/rP3Hb1lifTPIwf/L67Gbmja6LwJCMoirwcIi+GOisFg
         0jog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xMm81iWYmuGJ7G3cxLj3BlT1tZJi4FSOUMNK45Aucxk=;
        b=qVek6oDxjfdmT7Qe5miJsE1oIuIYc/pMi6Rep5JiiK1vTMbgIMUzDnzmQO/uepKtm4
         oinaVwtPzJ5NaFvLZq90MCo/qnSaxyHFpfj/gHv39H9vw2PEYSE/Kqq4D6Q4IPIpQZm+
         2TUNyg8MkaJz0rnTUb0HIW6kn9raxlQBwEaQJy/PWq3KFZeI2NFDIV88VTs+w8VSXFJK
         LQM9dCftfac7sUY3qq4xqoq76nWwh6Nhp2k9VOGdJqkLEJ1bpsaZEVLjgV8zrWaozd7p
         SClNu4RWeTWEM0q8/5TnwC8D8yHDTm2ubgYfvlwfR5hWmjlwKDnMFindUuGbXal5y9PY
         DUQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SToWnglh;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xMm81iWYmuGJ7G3cxLj3BlT1tZJi4FSOUMNK45Aucxk=;
        b=PupdiTy0/z7Kq6tjPpHj6dcyf2Xg9va3faGE2zLRfEjOSyDYYRPP8RKCcSGZMqpj+B
         xV/IgA0M2CzvcMBsGNaXOC08+9rf+cB0cQvKb6TthCSIySOhpaEytWy88LaEl8vYjQ/Y
         7dXchzrwc5IhCsJGvYmHFzLW7pCulLcIUvqImFEHCK7biuu4uuk/8Z2HFZyuC+8jzWYl
         WnKKEgnsqpi51X1PD/kP0seUqDsP0iSYwuAgewt71cA0q9q6x/G12q5YsjVAWWp3Yxhn
         wv1GPO7Ozvk+eshu55nztrlT9KkmldUoL5cWiBWt1jVEzaj7H9S5Uqw77dJAdmRjgPQh
         wbhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xMm81iWYmuGJ7G3cxLj3BlT1tZJi4FSOUMNK45Aucxk=;
        b=UaEtq+y2uDjBl+kgwbGjyZhprGSZ3Gs18zGTmMnzbhHLAge4y3irJv/2UOxv09po0e
         JT3lJAowCPf8qDRe7rzXLXkdTkvnUlqSGKoQ3x/An4UX9LPNfUMMfvlhGoW8iQVtCZ+H
         YM/63+986HTZcdD0ISANLG/HcD+83u7erfTOCFjLDAMaaFxPNGhmWKjQSc51DJRcp0TG
         22nD7WdQJ79OHyn8/MS1WhkNTTg5eyQrKhzSfBePb8zZ392pKSFhc2WJ0pgPxc+E6dOa
         QLVwZ762nUzeeJw69O21SrA6lREmzmErt44Scw/SIoL7Bx/qku0Ur1jOpaJqUa5bOrzO
         5LAQ==
X-Gm-Message-State: AOAM531bF3ifAPN/ZMiDmE7Jt3VsdHHEXlsBZidEiHCjoN6ZXai1huLl
	b4gFhrGmzWPd99EEl7sWOhw=
X-Google-Smtp-Source: ABdhPJwOqbKitIEFAsCbDOSwP8SCP3mVNcL9QOtr3DEBfPB2icL+maShOc365c5u/LZWbqnS8CGqyA==
X-Received: by 2002:a65:4903:: with SMTP id p3mr8194242pgs.318.1590059524018;
        Thu, 21 May 2020 04:12:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1703:: with SMTP id 3ls585712pfx.8.gmail; Thu, 21 May
 2020 04:12:03 -0700 (PDT)
X-Received: by 2002:a63:f925:: with SMTP id h37mr8807116pgi.112.1590059523649;
        Thu, 21 May 2020 04:12:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059523; cv=none;
        d=google.com; s=arc-20160816;
        b=Z3f5fIRID2BUYNaUbiA2zLHRYdHVzGGuH6PG9jmcyjXtrRPIMuSuy4psbbtRfk6Vs0
         hbDxzfr6OMkL9O1/WlTse75Op28hkIAo2qy4rW3fKzK2DAdeFfev3ym/wjQ7RGjM1afq
         ufglbUkIvluErZiQBNlZwRK8TygMohQk4yBOh+eak2BmWQUX/u70zaxVtpEqQL0qez/x
         Kio5iyPCdwPhRjGW7G2JvSZ2ss6MvyFh6C63UOaUqKvwISxRovZUUM1AOUaSAVMp/LOw
         PBZEFD871ULfjHVCUr4BLhgpS1KChRQ+FUTiyxleDTxSveczsa5Tj9ckukGAgubARPBi
         NhYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/oL7dAuaA62cBm7hAceUJOjBRK5rQp19BMPlUMceggo=;
        b=OCqY87tHs8g4LUGsJHm5ecuFscyGMHY1QuhTA9AMeHYzc0amA/U9bQqaLM96MFR5Yl
         8PG4F3QZuFzl5eGojIXyWMdeNKkKK87yKBYO/sevO3wnahP6K+SnYoTncTnfJDlKW4dx
         X6dbros+fBwDzu/TqdYAlF7oTVqxfG0j+iVEdWGIU0PFSFgW9A1fFLfv9Mw6yiys+m4U
         XPT5bB5wYCldARvEgmhUAZj4pbVcQf+ty5LtPuHpstFsXtWizfUvLYWbsAyzjPufrtj+
         KYrPbiJUJct8CNByGyCNDosPtEpNlVfINsLySJmoaIrnplFoBZuf45YpcKZJqwG9YYUM
         ngSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SToWnglh;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id o9si412505plk.0.2020.05.21.04.12.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:12:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Received: by mail-ot1-x333.google.com with SMTP id h7so5198978otr.3
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:12:03 -0700 (PDT)
X-Received: by 2002:a9d:27a3:: with SMTP id c32mr7112271otb.233.1590059522704;
 Thu, 21 May 2020 04:12:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
In-Reply-To: <20200515150338.190344-1-elver@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 13:11:50 +0200
Message-ID: <CANpmjNP2GsUuHAfvBa6qhnAe1W=1Zo=0i2eB09V7GAdtRSjVfg@mail.gmail.com>
Subject: Re: [PATCH -tip 00/10] Fix KCSAN for new ONCE (require Clang 11)
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SToWnglh;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::333 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Fri, 15 May 2020 at 17:03, Marco Elver <elver@google.com> wrote:
>
> This patch series is the conclusion to [1], where we determined that due
> to various interactions with no_sanitize attributes and the new
> {READ,WRITE}_ONCE(), KCSAN will require Clang 11 or later. Other
> sanitizers are largely untouched, and only KCSAN now has a hard
> dependency on Clang 11. To test, a recent Clang development version will
> suffice [2]. While a little inconvenient for now, it is hoped that in
> future we may be able to fix GCC and re-enable GCC support.
>
> The patch "kcsan: Restrict supported compilers" contains a detailed list
> of requirements that led to this decision.
>
> Most of the patches are related to KCSAN, however, the first patch also
> includes an UBSAN related fix and is a dependency for the remaining
> ones. The last 2 patches clean up the attributes by moving them to the
> right place, and fix KASAN's way of defining __no_kasan_or_inline,
> making it consistent with KCSAN.
>
> The series has been tested by running kcsan-test several times and
> completed successfully.
>
> [1] https://lkml.kernel.org/r/CANpmjNOGFqhtDa9wWpXs2kztQsSozbwsuMO5BqqW0c0g0zGfSA@mail.gmail.com
> [2] https://github.com/llvm/llvm-project
>


Superseded by v2:
https://lkml.kernel.org/r/20200521110854.114437-1-elver@google.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNP2GsUuHAfvBa6qhnAe1W%3D1Zo%3D0i2eB09V7GAdtRSjVfg%40mail.gmail.com.
