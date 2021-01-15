Return-Path: <clang-built-linux+bncBAABB7XFQ6AAMGQEDIPG6HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E49E2F85C4
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:54:39 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id x17sf7801941ybs.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:54:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610740478; cv=pass;
        d=google.com; s=arc-20160816;
        b=qplPJVijhT91zyIBu89SdFegsseeiNtHVypnnKefWQq1cST9myPAwwaHmixf3uKcCD
         1Fqn7DhMvnNyT3jI+cKjm6/7sloYCxiwnQU0AJVfYRHcJnA3m5uwg6toFR02A6804jwD
         +x2eQ3E0PPOPEQ55efv1cwZnUIz8lJhgQz5Hx/OCq6CgPkyBpZt/FxO2k3QlFZb57Xxx
         LHV2UR+iVey8fsYRHJHySC4CqmA7mkLLzM351vsRH61mujEHY2k+BXD9U5UPe4ohk3vf
         2mihC8DKTrvu3Xd0qSOj8ouvnMLwLEGtIg8HOsgyeOdY/7VqsFMkO39buz+xcUFfn73l
         N6VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=09KYkqbMVB7CM21ALV2NfHZ8owySt/zGFcTeAaMNoHE=;
        b=jmWVE8Gi8CsyKPzACYBdoqAJaUFo08/Xn0GT0wfQ2DeZaPMQ5WUiIvWWyIGkGFojD8
         0JU5QW4C3JeOAxK/wTQ3MzUttvM9FmCW6SIpM45g8xSBPDFvpBiRpUJJKRBHqw6Q/x6P
         wxmKMOOsynW/NGR1TeaG6ohogmexPNMZuolCgNtmEiTF9Gzer5Nf4P6ZmCB9ypEvnec9
         hPnRCEDRWusbHlHf8tvfBX6U2DgXUYupi23QcoqxSfm4F4B57y1iAjRPS2hdiEwBJHkn
         G2xb1VyqIpIB8YsS2BQzxzfUgQvkogctZTlpMwveCCqcjfRJxRAjkqXrQ281Raaca/a6
         hZpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="og1RkAf/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=09KYkqbMVB7CM21ALV2NfHZ8owySt/zGFcTeAaMNoHE=;
        b=Sc0Cn/5wMQ/3ecUAStuxYqPXR03iyQbeCos7vHTy8ccoj8b8hgttc3Q6vwyxBR9dAj
         bGWagUj0uroKYn2ZGLgoMqR4aXGXfnaOHP7kGl1d94HZRBbeaAJ1zVCMZccO5SxFeCgt
         yTYxidargWRwj1UU+SLXSKlG70mb2G7W4Zxz58OHelcBKdFrj/RLN4jUZVp5c2veJmdz
         SzHpvikdBvYnFGiGLoiyKSBHmW6aT1VH1glmzPgcu0gIOjsDLSBkg4ihhiLQfcDCHbWN
         JOg9V60PidH1ocekBfXdn1SalHFTIzyN8O08B0X2kjM3cEbM2/NLnn68xJnXa6pGK7L0
         0bpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=09KYkqbMVB7CM21ALV2NfHZ8owySt/zGFcTeAaMNoHE=;
        b=fmtbiemA0wlwLkzFyIJFWKOjYVC+B5RZJCtpLK0aD4vDsmIVcTTICHq725p+6k9CY6
         8/6JaL36FWTerKU80om0dE8R/1GLGVlmHHc6wjjGPyxRBn8qoPG7pKdToxB0jlDs/Uwi
         CRnUAnlw2NSLj8xIFB2mPDyNvF7ZkXtM7cEtNo2S7B77oiwzWSlY4m1upOafLZfCHyrQ
         dKVv3yFqOPWdK4jB2jjtKxl7sDPYC3lRaUKBsE8DBZzJkQjJjf2gs7IH9qK4DRs+wByp
         k+HEYRPATCnrxbRaNlnBWz2dwH+pJIfFsxHOg/0Qq7Zu7ckiLwoGAsviML23HcztapeT
         oPGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312Eo0t0oeR28DGG0KhTeQU22ok853qONjCoQqluo9KcdYKu6fA
	98JUd9JIKin/dUMC4HfVN9w=
X-Google-Smtp-Source: ABdhPJzxqj0QMr0q9Es5EDYg/G57mQrgEPciWh1Q+h5FieCq9pDeiOTp6fbEv1jJmb1Vm6Q5sRn32g==
X-Received: by 2002:a25:e0c3:: with SMTP id x186mr21014372ybg.431.1610740478442;
        Fri, 15 Jan 2021 11:54:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c802:: with SMTP id y2ls4913907ybf.7.gmail; Fri, 15 Jan
 2021 11:54:38 -0800 (PST)
X-Received: by 2002:a25:3812:: with SMTP id f18mr19941815yba.157.1610740478142;
        Fri, 15 Jan 2021 11:54:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610740478; cv=none;
        d=google.com; s=arc-20160816;
        b=NUy9/038C91qvNr4NNIUQWqQ2pQ25yoVbnRd8fI9jxqN3NVkmFujlkZrBXx45M05q+
         OPyA23sLUa6kh/6ZpH85gPyLEL99CYWFUWRu19Z7ifqCrg5VRC12EeAJumRz9O7Ivlbz
         XwgwRGX9pITF7qtDb/QB8r4DFAVwr5XUvTpXN48i/Khi297lukgzTlNJdtmXG0txJKDf
         ayBUieZ2fk7waoDjg1/bMoFRicdHZdfQh0ieXw+t+7BufE+Jp7NovXJT5KAHNwPV758g
         lNY5uviRACSQgSaq6ch2A5VO07okum798ef+HF9vL0Xjx76VzpoHcpH5j/zmhW3U9Ns/
         r+xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZZj/vcdghhVObemcAi2/CGpxr25gu9/L6JiZW8TWCWs=;
        b=uWZ1wtWFbUm4lETZ93cRJJv3e9OPg9+vyohT5SHTwL0ptBc2fDSWuW05DpVfDjbbzh
         U3wdhI+DrTj9BRhUusaQyPyqjFV6p382/LpafalRbxOCVy+BuvbAQrVSlLc1VRDsAG4i
         TwTnaKtXxhEodaRCwsZJR4WCDN4G+xYzDib9gZHWCwkSnnLs2KFMFrT8r+BYnBd3rFhN
         jwxTc/3GD913ZPJVMkaMNlm5Gy+pCndMu8nF0uZiiYJ2eS5ATyPnhTDf2YRrd0i38Bff
         lD7wsM4zAPvuvLscTa/je8DMQHesuyp1TuGE3JnqTLzXil0UvlFiz/ds3xjF6lb6L4vg
         Kfpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="og1RkAf/";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i70si800837ybg.1.2021.01.15.11.54.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:54:38 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E2D7B239D0
	for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 19:54:36 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id j20so9691145otq.5
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:54:36 -0800 (PST)
X-Received: by 2002:a9d:741a:: with SMTP id n26mr2326419otk.210.1610740476133;
 Fri, 15 Jan 2021 11:54:36 -0800 (PST)
MIME-Version: 1.0
References: <20210107223424.4135538-1-arnd@kernel.org> <20210115182300.GD9138@zn.tnic>
 <20210115183203.GA1991122@ubuntu-m3-large-x86> <20210115190729.GE9138@zn.tnic>
 <YAHo3ZEMu+6mESZA@rani.riverdale.lan> <20210115191833.GF9138@zn.tnic>
In-Reply-To: <20210115191833.GF9138@zn.tnic>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 15 Jan 2021 20:54:18 +0100
X-Gmail-Original-Message-ID: <CAK8P3a39vtF8GvRVQtEYssc+GvX-75j9-4pwXj4qhc7LK2RgNw@mail.gmail.com>
Message-ID: <CAK8P3a39vtF8GvRVQtEYssc+GvX-75j9-4pwXj4qhc7LK2RgNw@mail.gmail.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
To: Borislav Petkov <bp@alien8.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <natechancellor@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi <linux-efi@vger.kernel.org>, 
	Platform Driver <platform-driver-x86@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="og1RkAf/";       spf=pass
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

On Fri, Jan 15, 2021 at 8:18 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Jan 15, 2021 at 02:11:25PM -0500, Arvind Sankar wrote:
> > That's how build-time assertions work: they are _supposed_ to be
> > optimized away completely when the assertion is true. If they're
> > _not_ optimized away, the build will fail.
>
> Yah, that I know, thanks.
>
> If gcc really inlines p4d_index() and does a lot more aggressive
> optimization to determine that the condition is false and thus optimize
> everything away (and clang doesn't), then that would explain the
> observation.

One difference is that gcc does not have
-fsanitize=unsigned-integer-overflow at all, and I don't see the
assertion without that on clang either, so it's possible that clang
behaves as designed here.

The description is:
    -fsanitize=unsigned-integer-overflow: Unsigned integer overflow, where
     the result of an unsigned integer computation cannot be represented in
     its type. Unlike signed integer overflow, this is not undefined behavior,
     but it is often unintentional. This sanitizer does not check for
lossy implicit
     conversions performed before such a computation (see
    -fsanitize=implicit-conversion).

The "-68 * ((1UL) << 30" computation does overflow an unsigned long
as intended, right? Maybe this is enough for the ubsan code in clang to
just disable some of the optimization steps that the assertion relies on.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a39vtF8GvRVQtEYssc%2BGvX-75j9-4pwXj4qhc7LK2RgNw%40mail.gmail.com.
