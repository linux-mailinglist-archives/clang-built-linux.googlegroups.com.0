Return-Path: <clang-built-linux+bncBDRZHGH43YJRBMUE3H7AKGQEMTDZQ5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 950A72D8EC2
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 17:32:51 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id x15sf6067472otp.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 08:32:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607877170; cv=pass;
        d=google.com; s=arc-20160816;
        b=jiHkDJIGFca8DEVhQxr+3jFrQS9WtUF1bFBeEVBZsO3NrAn3SEbG4/pSK6d16eiZm+
         Dx602HzfKcLa6i88zdqvx8PU1NhQAxnr7+mAEFYzQMJijj610LW8H4rtCi4GFkOrRVFQ
         +xNk2OY6yaJP6UB+M80PW4m1IMo1AZEga/4UmOEdgXUAfiGVlE09yl96Cowuvpq70ZGw
         izqkn0asVCnsvWOnMLCxVJu6NFk45I8bj+dmVpk/Px2RCR+oqZOpEBDgvBBV/CiwY2Ba
         i3WyVVQgPhz5oG26vlkbEje5ooiCiBJUJm4dPGVOLbhs4Zn98cG0R5ouUZyCTLVGdAdu
         5qWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Ak/i2JSiU5ud1uVrOUMtag0rtVRO9gw6MT07m8ZcmE4=;
        b=VZPqQZBmtIyD+y5wEPg3YSJZu69u/4+M6wt1/pOvytboYELb6T1dyKXD65EVSanTN+
         EFWoE1B9TDRMBn2ohVT1V18pYYmZHoIupiatM1a3kLiRwCefDsWGpnU+WtTkJNFIFXJf
         kJ8xzIAlbfklUQGuus/FgN8yXj27b0AhotwKxCD5d7sN1ZN4frONYsMdf396iQZZlg61
         X7NZbP+BAUUClhUXOYpVf56V+Cs0Wz/KSumzlVl7FeqzLW222+sNQ4bLDKL6X5Fg+Gcj
         En7/4z8QWItXzCUpTrm8RUgsbRMBRR9lAHCOUc0F92DlLyeWJxyLH8MQFPK/pjszPrdl
         mw4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CQnFeP/q";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ak/i2JSiU5ud1uVrOUMtag0rtVRO9gw6MT07m8ZcmE4=;
        b=lOH0NlBIJmmFK70YUDEDuyhhHeHazASD+DOr8a5lntyYVIV82X3DFvPoFtxa5BL2bx
         3ByIWRx+UVrlImmUaHoTIt4s54vJilw4lJhcGQUh6dYh/cvKDgY9gxJ3w8KOejRmN5yk
         MLNGSd/aGPfIPX77qd82Tbonapdw9KsVU3DgzLKIaC2gA0lOXzxpdrgzygshAhdrM/PL
         9BrLnwugC5xGuuCzhVFRC21NPUqicN2NI4dHiZAODo8PGzhZozx5iudZXy9GQiFHuqc3
         S3jgoQvFHlgrTrNXj9U1VxRjKdgE4O9snXApad+Uqk46ETXNA5uabrnbVMJXMvgnCVto
         MkwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ak/i2JSiU5ud1uVrOUMtag0rtVRO9gw6MT07m8ZcmE4=;
        b=PY6b1K/s7Ztx8C32CUxwZT1A5+2rcey3MniQFIdoQ7LrGHNTNKL+qkwyW7lfUI6zSy
         MICbD9lL4xPBMcbmdwk/IAgBxIltZFprJub+bWCJzCGqHXNFbMOHlyF5j+mNvvELLMGF
         SJdNj4OZ9CKcdQPv4akKh8lomDZeQFoaR9o1vyt2rzxFx3rawtQ6sEnN8shuOhZWX43p
         w8qMDpQo0ffOw+gAaj5R16w8Z4ztyzjwew4PB9mSml6Emd4S1TLphdTiiNGZevl7JBFO
         C7aAIaNR0CHWmeOIh8+z7Y4Yqs6iOsMDkuweJ6Nthawlbvt9XZTGJyfuaLP6sgAE06pm
         biCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ak/i2JSiU5ud1uVrOUMtag0rtVRO9gw6MT07m8ZcmE4=;
        b=ON3XIoO/B+UfBcv7E5CyxBPC0hLTZf/G6UZooJc9ru5YDpIARa8VgtgXn8+8M7UmRR
         iD17MRDbcNieVVnNMqSBLU/j/zpDHAT2R1e+WEcQybm2e7lpZSioQwxbPBhddvmgCkdH
         JJ/8corpOn2aSRE+cETMC4BRhf2pVThzGCI1gW4tud8Jlvpo5OAuBKIoTyj3zRG8NEV7
         YFar2egeE8etXLZ3jwqKBqfzZ4usFETCTe7W5BDXdypPhgI8iWDRGaTIifJJXJNZrrQD
         7xAhy1DfPew81C5dTmQh6K7t6ty8Q/DOU4Lo9HViqtwrRiJnavGaIQYfx/r5abU4Ec9l
         S0ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cGMZZ9U0Lt1QXLOrFV0zSpk0qzkQpP0khjD0bHE8yl9Sf4j9c
	96Bf9UQuahr3kZMB81aJmas=
X-Google-Smtp-Source: ABdhPJzXsl4QIrEdlNjHtElB823PjISxKNUlAOe/R+bpJnqfLTgyywzeOJcgoOse5H/HhTLYM0oQLg==
X-Received: by 2002:aca:ac8c:: with SMTP id v134mr16095141oie.128.1607877170544;
        Sun, 13 Dec 2020 08:32:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:331:: with SMTP id 46ls3176259otv.7.gmail; Sun, 13 Dec
 2020 08:32:50 -0800 (PST)
X-Received: by 2002:a05:6830:10d1:: with SMTP id z17mr16576393oto.156.1607877170160;
        Sun, 13 Dec 2020 08:32:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607877170; cv=none;
        d=google.com; s=arc-20160816;
        b=pVL69GaiaSM08r+lOnrDyFD8iLrfLmD58YFX3RQ7iH94NK+/l31DdZYnNZgc1Q72tq
         D98f0yvi1Z5GTAY+tVhdo0zygf0FXg2Xp5G01qv3R7bGKRw+5w+M7QCRrVabg4QEJhLp
         UiNmsEnLe5696UTgww71wjqnF5EgKWSCbiAAMpvamRREptG1BodPKUQCj7eT4zOqHPQc
         zJQsRc0RxkGiraFWKcB6O2R8+/mXHHCWHfFgJ+TQdnIX1QsIk6rR74GT+GOH6j3SWSah
         HhXTHEBBrQV4VafRMvK8TxwbKXh+c9TBbSWBzI7C9ueWzuivtDJOP855+LRNKEAg8NTm
         NAww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OOly9loxLYTvtE1Njo5WCf0TNy0xF1kl9c/YUhN9Ldg=;
        b=gt+MF1JhIjqHd0i3AEB3CsRomO9hAUyfz8O/ExVKZsGpiMRrNNwiNq58MAfB0YUoMQ
         L/5E13etCoIDsGSWN/wymzthXL1WzinEG34YmJ9kCRy5iLMEbOGDvjGJ3wij3hADMKvf
         Jl+cM3SIH/ff/oBqApaUATB/vVjWTK4i3XuRqCtKR297HrG+IMhmA0DFPl2fNBN12r3Q
         PPuQ2n3ayiCf8jU7bJxjtvhnZpnaYnO91Oe4QLUnye1aoeBZXEm8kQcDMiHYovCjL5Z7
         IV6jx2Jt0XbLlHfYs3JKcI2ghkKSJksa/iFT4yUX3W2AChvPaDoNFq9mmreqcdRXBowm
         xaew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CQnFeP/q";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id x20si195857oot.1.2020.12.13.08.32.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 08:32:50 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id j17so13176549ybt.9
        for <clang-built-linux@googlegroups.com>; Sun, 13 Dec 2020 08:32:50 -0800 (PST)
X-Received: by 2002:a25:40d:: with SMTP id 13mr32470818ybe.422.1607877169805;
 Sun, 13 Dec 2020 08:32:49 -0800 (PST)
MIME-Version: 1.0
References: <20201128193335.219395-1-masahiroy@kernel.org> <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
 <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net> <f5c2d237-1cc7-5a78-c87c-29b7db825f68@urlichs.de>
In-Reply-To: <f5c2d237-1cc7-5a78-c87c-29b7db825f68@urlichs.de>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 13 Dec 2020 17:32:38 +0100
Message-ID: <CANiq72kajFSgKmYW0tXUXNEQpMwBW7BsFSeqbMVDmXqBXDLh_A@mail.gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Matthias Urlichs <matthias@urlichs.de>
Cc: Greg KH <gregkh@linuxfoundation.org>, Guenter Roeck <linux@roeck-us.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Shuah Khan <shuah@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="CQnFeP/q";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Dec 13, 2020 at 4:38 PM 'Matthias Urlichs' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> If your change to a function breaks its callers, it's your job to fix

No function has changed. This patch enables a warning (that for some
reason is an error in the case of Guenter).

Even if this was a hard error, the same applies: the function hasn't
changed. It just means callers never tested with
`CONFIG_ENABLE_MUST_CHECK` for *years*.

> the callers proactively instead of waiting for "as they come" bug
> reports. (Assuming, of course, that you know about the breakage. Which
> you do when you tell us that the bad pattern can simply be grepped for.)

No, *we don't know about the breakage*. The grep was for the
particular function Guenter reported, and done to validate his
concern.

If you want to manually inspect every caller of every `__must_check`
function, or to write a cocci patch or a clang-tidy check or similar
(that would be obsolete as soon as `__must_check` is enabled), you are
welcome to do so. But a much better usage of our time would be letting
machines do their job.

> If nothing else, that's far more efficient than [number_of_callers]
> separate patches by other people who each need to find the offending
> change, figure out what to change and/or who to report the problem to,
> and so on until the fix lands in the kernel.

This change is not in Linus' tree, it is on -next.

> Moreover, this wouldn't leave the kernel sources in a non-bisect-able
> state during that time.

Again, the change is in -next. That is the point: to do integration
testing and let the bots run against it.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kajFSgKmYW0tXUXNEQpMwBW7BsFSeqbMVDmXqBXDLh_A%40mail.gmail.com.
