Return-Path: <clang-built-linux+bncBD7I3CGX5IPRBYX2QSEAMGQES5JTHYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5EC3D8C94
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 13:20:02 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id e4-20020a05651c0904b029018bc821fd31sf246198ljq.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 04:20:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627471202; cv=pass;
        d=google.com; s=arc-20160816;
        b=sBjU24vwJnNUWJRUxHYoSskhFVRy1SjnADzf0BHgT9YFOx77cYN66gwY9oQplBpGLW
         tVslPAfKC3oInIZ3N4HBhb/1O7RpppsdbETJ3fT9ok+KVmBHupL3lfbMV08URtepuDjJ
         ann41cXb7a5Y9LkII9l+anNQQTVDxP0LGliOewHbe//kjVeF00uLIvGQ9cqmV0GP57re
         IpglHyvsKvEOlZeFrz2ZjFH+Tkhx09SYqbSU/LDPNIbS/DEP4tWrMirWNw2psHfmSNRl
         RqMdYRe+9ZTq1OSBO8koowr1aKyWoomMBeu8v9+ep9InJkPVf4umzgXn+ImFR6BlF44Y
         /cOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=0qOKMJ1qNkarf0xqmfO+vASfDsN07A3xNMGivca/4oA=;
        b=xGTxw10yEqr2QRmaLecIVb8QB2fzxvXajmJGJU3G4m16HU2ndh5xGKJD6tNXAuVOqn
         2WZK6f7F8U9sDZjCrzP6ho2sdoi2L7A3iqpNdDro3BVvF98tL/RmGd3VFoYUQPdeGavP
         rpICNDOqjl/iWLU6pLtxDdxuMp8XOaKjUh18UXQgSSg4VpCdbB1+KZsUrnxqSApRFZBJ
         47WZGtBrnmpfhxM3nG8Wroj4FcZaTZ2BbeIPcqsUDIBc9rGL2afjWCp+LQmC8yViSbGH
         9gkbSE0iep0qqSr1ft2UmaCPxXS0A1rwFbWcZg2mrY7+EBvOO3vSRSewqh9/UZ+t+Sdr
         p0Mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=ZITf0JJk;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0qOKMJ1qNkarf0xqmfO+vASfDsN07A3xNMGivca/4oA=;
        b=T96leOOOmBOP6vpReWC3+QT5GzSFG+FufnjJqciOic7hpR3OAdQypKkGyf6LK5lMgO
         V6NiOKQSG9WdTl58CUIzn1PdOwNFbwhPh3slNe5YbMZQjdbgJ8M0jgRZ+fWuuMoisB8C
         8kp9TPNnSN8MRsJOmGRRmC/I11SY4Y8RUG+AnyB+lz7O7VDhh1wZJl0wdNwZQkgQmOVg
         nLSBGIyVBLzPa63EfPwR7k4I7KIYH6HsfhtFgeSR4Lh6v6YDIfOvJER6LVkifghTPnxR
         xtv1CcEpoQlrDKV+Cf96CgMehHeZgo4PRfCMlq++lUHlAOl1ZbjvIHk8o+iHPuDyoGxq
         eEuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0qOKMJ1qNkarf0xqmfO+vASfDsN07A3xNMGivca/4oA=;
        b=VwOZtkCfSpWenSH3uNIU+mR2lX5GzWAZ7o/XaHbHdLCwfbhiCeZKQG2yTgTHM3ezx2
         pc4vIe98i46GcgFezGPqZhZ3ECKOM9gEF0ldn2Lvuioyn0WNDhY0J1Qqv2PzZQWh+SCS
         vsDZb4xB/gJQXDrmqtmz1UXp7L772xlzsr7RWx+NawWQQtEV+QptuK6d0FNJGRB0XwOa
         pm+haNZcofh9JPOYL7RMI3/P/nXYZjcBhQi6UD2YRbtdvxLw1nzTghn4t+buqulZl9bI
         u6h86K7NL02zKLougvvqbad8EiafMZ65Kn8hOsdeYd/5RwgYlzTlJjMCHk1vh/tKd7xv
         t6Wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533trDRbMXWFmMcW3bnMO6G1FF/UodluMnbYY6aotBXPHKZuB2CC
	mPgUPmvXhLzveBBYBt5DUrw=
X-Google-Smtp-Source: ABdhPJzLMzE3s1c/i8eBX+mJOsYZwE9Pm8lrQdNl5W4uqJGj03DSFe2MQjh+0jn22Vb2LehEgFbq7A==
X-Received: by 2002:ac2:4106:: with SMTP id b6mr19996653lfi.89.1627471202380;
        Wed, 28 Jul 2021 04:20:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls1403492lfv.0.gmail; Wed,
 28 Jul 2021 04:20:01 -0700 (PDT)
X-Received: by 2002:a05:6512:49c:: with SMTP id v28mr20667603lfq.528.1627471201363;
        Wed, 28 Jul 2021 04:20:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627471201; cv=none;
        d=google.com; s=arc-20160816;
        b=LdgB2brKy/TBUzLtHUdyiKR/hEi9v3dMUtJk/g5NMxENCUrSAVU59hAca0aOf4kjyl
         KwmKpN9sBRi3I/YC3kG2UtPbCX8WHxPeQcVrEiLQoU3RAEg7NP4qmi+e6Ts4WagGoGGq
         kODxePbM2rZSgzVCR2DcAlsIdR1KOMgT5tKB5mhXX5Xaa5NheWY+J+DB4WDiL4x3cxE+
         i3MJdttrWGYIKlYAU3N5Sqm1Lam6ERKfZ5mgOtrJQQ1cSiG0W5nC01B0Eu5rNncG7rr9
         IT5eQXrANLbkG7HcfcFU1sdXcpE1jNkvQkZuSnR+h3J+c5VpUtwJ3g8unabQyYViwMy5
         2CKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=WRpAt4Qf30VQcI04z59j1Xhna4kVm3ZAFQjWCiFVzII=;
        b=SHzj4s/fJKmnyJMmqrsY10rjeXpH/RWworlSpEKk1rhrQsR4cVx3rxOMiLCzeIfWv3
         0hN7PpP58gXVb9/M8KWlsAMOVoAmN71dSXExkaBSzOBCJ2THNrzFe6jiVxvbgg5t0edN
         4vg+TadgC8v8Tq4Lyojt6gs2iTUMwmFEVrcZ4JuDzBkB7sqBhU8X13+iNx7huGRioT2x
         6fxBjRJGqOWjHx1XeNUiBvuxspKoXt7YO8F0phqWbEv8xzQP3Ah2oHLQgedQQ9evdIlS
         l8YNxGKYmuSiCdDbTyrdXV56+XCup7Tuuu/Smt15GQDVUYNhkbhIE0b+AfwLmlha1f5x
         eVbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=ZITf0JJk;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id r190si255634lff.0.2021.07.28.04.20.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 04:20:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id z2so3276986lft.1
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 04:20:01 -0700 (PDT)
X-Received: by 2002:a19:dc5e:: with SMTP id f30mr20474709lfj.318.1627471200888;
        Wed, 28 Jul 2021 04:20:00 -0700 (PDT)
Received: from [172.16.11.1] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id z4sm564853lfe.274.2021.07.28.04.19.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 04:20:00 -0700 (PDT)
Subject: Re: [PATCH 34/64] fortify: Detect struct member overflows in memcpy()
 at compile-time
To: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Keith Packard <keithpac@amazon.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-35-keescook@chromium.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <d2f9f21c-4d6e-9458-5887-ca5166d07942@rasmusvillemoes.dk>
Date: Wed, 28 Jul 2021 13:19:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210727205855.411487-35-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@rasmusvillemoes.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rasmusvillemoes.dk header.s=google header.b=ZITf0JJk;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates
 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
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

On 27/07/2021 22.58, Kees Cook wrote:

> At its core, FORTIFY_SOURCE uses the compiler's __builtin_object_size()
> internal[0] to determine the available size at a target address based on
> the compile-time known structure layout details. It operates in two
> modes: outer bounds (0) and inner bounds (1). In mode 0, the size of the
> enclosing structure is used. In mode 1, the size of the specific field
> is used. For example:
> 
> 	struct object {
> 		u16 scalar1;	/* 2 bytes */
> 		char array[6];	/* 6 bytes */
> 		u64 scalar2;	/* 8 bytes */
> 		u32 scalar3;	/* 4 bytes */
> 	} instance;
> 
>
> __builtin_object_size(instance.array, 0) == 18, since the remaining size
> of the enclosing structure starting from "array" is 18 bytes (6 + 8 + 4).

I think the compiler would usually end up making that struct size 24,
with 4 bytes of trailing padding (at least when alignof(u64) is 8). In
that case, does __builtin_object_size(instance.array, 0) actually
evaluate to 18, or to 22? A quick test on x86-64 suggests the latter, so
the memcpy(, , 20) would not be a violation.

Perhaps it's better to base the example on something which doesn't have
potential trailing padding - so either add another 4 byte member, or
also make scalar2 u32.

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d2f9f21c-4d6e-9458-5887-ca5166d07942%40rasmusvillemoes.dk.
