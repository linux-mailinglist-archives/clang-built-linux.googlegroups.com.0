Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBENV7T7QKGQETWQVGZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1282F4F7F
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 17:06:42 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id 6sf218261uay.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 08:06:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610554001; cv=pass;
        d=google.com; s=arc-20160816;
        b=YTagJtZOfjyCh88Km8iVNSx8HyofwiV0srT8Mrnvy7FJ9/8jzquVUcXL30rVa1Cz6t
         HwD4W5i0tgR1e7pr0wWc/LEVajapmFJx8bY6zgsDtEfGy3D6FkCcUzPDKDqHI85SJ1vp
         kCUrH437/nwQIPF29h7jpdlZkls1/lteGptd8IUy8ILhIzcx75ak+JX5rIqSx8tLxhHj
         S6snLTaHRBTFACmo4pOMOdYnLoRckIko3TvXd3z56NfKr0wbRyYTvrVaCALJkN99N6jb
         8dVVD8AQCv5WZO8T85SqaX9VoxnvM5IBhhnYWd9+yM4Kg+PUEv3g90sa4o84SEOoWCKx
         wFhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rFnqZ2TWxg08uIidKCvY6ZscJyiH8d2nC+nTVMCnoEg=;
        b=VlhJl0gysmkiynAnelNY5hRTUOwFdZLnFCjXZZQ+yYOc7zTEiJutRMLQtUw8xfje1j
         YdXflpjg9pksVROF+m+wF4H8niVS3ypyEShYOZKwgp49nFezwmau85w5xiqSRK5Gs0Tz
         irtbUE9SEK9eZQEB8qy8HbUl7d6VR0gB2pk8zVEuP6XpOg13r8A6Y85wylNPcXnGgqO0
         FCDnDpj5LewqnXrbh6GegT3gDJLQ72Wt266J0SIfb84qGgPUV5od1j+EoeHECgcKbv8C
         RsVw8I2wEoMYEpn+qmDd775dmPdFIZMMnrHiW/QDg45tN4ruFgCWo9lq7/HQc5ujxMGd
         D3VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rFnqZ2TWxg08uIidKCvY6ZscJyiH8d2nC+nTVMCnoEg=;
        b=ctVaaHkW4qO811S412PEyIsEg+sYRQf19qFrwRSy5jw9Ch8hi5a4UWAt34y9k7TTSd
         A3EMdibiI6XC39XoNME2K4DslkBUB5XMZjoB4xFNvMzBVwwdnEI4qF2nlUzuIKS9bbtN
         HEALxirtmzeTVri99JmPbyGMXs/0Asgw7G0JTTae2a81NkDJYFjKlOhVLUGZvVs4LgXW
         n0tPkxYvvOWfKeIW3lO41QJGHfmH3Lq0+XFebP1opkT4VhAZCXiWa38UQj3KmAXj7wnR
         gEyVJkMbH0WXPg7DpZwsnjOiupyFr23Ikdsnyq2tSF6GTGnH7Mr6RPhgIVG1T21VADzy
         vSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rFnqZ2TWxg08uIidKCvY6ZscJyiH8d2nC+nTVMCnoEg=;
        b=LTRBjUWY5C9GDcD4976Qu6enYDc01YLUmBR+3NH89dAJyxD8WdwZlldW2X1qmZtY1K
         lzL0EZYOhgCiv4/fB3n2sfOOK3kaKxB6e3WPb6DqZL+Y2nVZOx5rQlyhwOnmSEXz7KSU
         07j9Ap0PRURg6eihkRUPauVRdjqxzFbPO8xcaMb2PkZBe1LYASEQx17CxUcKB/unplZ0
         qfuiyfNVQ+ILv0TfGymeTDuUAke3mp+S55LJ9iqwejMj0SZXI1iCOln+wmyO8Xxw2Paq
         H26iCVFnOi6nSqM1ISxIXdUYQsfZ+/ZvHs7jGxXZ+Ma040lVFSoknm9fZs64J/ogpiZS
         GOfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RZbN8QgFZyI9o+5zRuW9qVco1VgeEcjQHx+jOxmSI/zNr7QUw
	jTmopZrXvM4Q/nh6ziDcGJg=
X-Google-Smtp-Source: ABdhPJy86NKmRD5ZGy4JzUWrpXvpdYNNzsxaWDP1lWKtna5q1s1fpL9nG4Tr64oHGKit4Smg8sjIug==
X-Received: by 2002:a9f:3004:: with SMTP id h4mr2566600uab.61.1610554001758;
        Wed, 13 Jan 2021 08:06:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4823:: with SMTP id b32ls174193uad.2.gmail; Wed, 13 Jan
 2021 08:06:41 -0800 (PST)
X-Received: by 2002:ab0:238e:: with SMTP id b14mr2611649uan.105.1610554001101;
        Wed, 13 Jan 2021 08:06:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610554001; cv=none;
        d=google.com; s=arc-20160816;
        b=da+D6b4hcZ3KzYMD9IvcVCVDe3V3GyNdtKEkHXNGx961IWlmg2nS/a5Da9uOyFcjGp
         KWcrj1xDDl2kgMBhwGnAZbMkJoH57AWfDv8Mjgz2A+6ey+56IN6nzVA3uStGyyMJGL1G
         DJu5NwuCUUxceDbCXLUP47bsgel8nofZPrWrFspgbQ5c0/GY5XtBM8HK5tnKMc9Tt599
         eXwXsmV1H4ZmWXevmT3t7Xn0rJ8otobjOk7wm7L7RZttJrhlZC2qlYTAz+GgTuZfbuDt
         uobl9biMyT/JrOtPQ2m+4rV9cny6kcb/z8vy5JSUCKX7TnLHf+fnV12b2+UKsaqRN2is
         wiQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=6fN21VVz6oD2fkzG710yEriLnpIRQ/nBVZhmT7WgWl0=;
        b=uAY4xa0mMp6k3lt6Bh28/BEdUu2TBzpg+Rg53/A676yJ5xH5LIZ1LUiwtCVGolDmqB
         G3ut6Sz8uISfnZJoaPQAC3a5xrHyoNX/Fx8wqgHHn8CBtUmtU7gGMxq50zcI2gskI9Ws
         XYZuSBLlp/hG+LZPaqLvZhciaUOpl79rjYuph/ZbM01ZYYBHY9aW317tpi+lZ1CuqH61
         Iix8CdeafICaU7nXUzymruwwbmB/VEolHjWdIQSezcdYjtnG+4QWCBkbkUz8Iuqmaz0V
         w/2w86pkEloaWouL4QP9OmQ9RAhsSXbuh1JhWMO28ZADQedghpgp2QCJjWKO/KSBQEZw
         WJnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r13si166386vka.3.2021.01.13.08.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jan 2021 08:06:41 -0800 (PST)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4969523434;
	Wed, 13 Jan 2021 16:06:37 +0000 (UTC)
From: Catalin Marinas <catalin.marinas@arm.com>
To: Arnd Bergmann <arnd@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Arnd Bergmann <arnd@arndb.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Mark Rutland <mark.rutland@arm.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Boqun Feng <boqun.feng@gmail.com>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: make atomic helpers __always_inline
Date: Wed, 13 Jan 2021 16:06:35 +0000
Message-Id: <161055398865.21762.4907792828255955851.b4-ty@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210108092024.4034860-1-arnd@kernel.org>
References: <20210108092024.4034860-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Fri, 8 Jan 2021 10:19:56 +0100, Arnd Bergmann wrote:
> With UBSAN enabled and building with clang, there are occasionally
> warnings like
> 
> WARNING: modpost: vmlinux.o(.text+0xc533ec): Section mismatch in reference from the function arch_atomic64_or() to the variable .init.data:numa_nodes_parsed
> The function arch_atomic64_or() references
> the variable __initdata numa_nodes_parsed.
> This is often because arch_atomic64_or lacks a __initdata
> annotation or the annotation of numa_nodes_parsed is wrong.
> 
> [...]

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: make atomic helpers __always_inline
      https://git.kernel.org/arm64/c/c35a824c3183

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161055398865.21762.4907792828255955851.b4-ty%40arm.com.
