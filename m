Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBS7S3DZQKGQEGIVCXXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AF418E2D5
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 16:57:00 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id y14sf7607967edq.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 08:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584806219; cv=pass;
        d=google.com; s=arc-20160816;
        b=qp6ZQh0+pr1Vaitkgp3lOKEM8txN/WGkklFvZRMFPhOP4AZ6FCOycePvWJLE6BtNkI
         2kFSJXNoYBHtrWzmLAjki+AOYly32BPwWdCWzyOiLsZht7nXXo3P5JmSoxjF1nEGLMFv
         83WqdF0rAHz9gTmLM/KtcD4fqgQyI3+IxCFb7QpU0SMfck6pHLZ9e+WWl8buk1sTni6l
         Xr20otIzQcXzFy6esOnqQYhzDKA+E7kgQbPyhriKMiB9vVxe0c7yB9IvuevFsaAJ89uF
         zN6lXaciy8ds1Cb6tlC9tNOSmsoME/0LGnBnZccsc9gpKuPJs5quCMDkIMKIfA5uMPzS
         7lyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=6miblO4jMF5FLwBZ+ll/QHGB1a6yCOaMfs7F2M8j5Fo=;
        b=gjjq2ILenkzQmlp6ReL7RtHOc0d0NsDoyDgZBz4E9uCyji4S4Oqfj8JADMC0XBXXMX
         bYehizjklZTDdrvb+yVw8E3IuRLpC489c7T31ItxD5xJjfWqz7ZanTNkICOure9RtdgQ
         sPTOW8QhEwG2jCDxYiM87Tb/APdxzN8JHJNt4je+ZSgB0wGQR6/DUv0KCqmQPAJ19g+G
         zX2KC/S30Rf0byrUOxU+kowmkpmIsEHrc9O1arrjy/GuaDzb9kNNWn8yMJtcxc6a0jzZ
         zy/H20mj5ygCLMCO6eHLMhaPZNsNTOGPOvrnBD6pnodmsHo7fSdUrf/2qfO1o7OtRsMU
         cbbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mP4OzNfc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6miblO4jMF5FLwBZ+ll/QHGB1a6yCOaMfs7F2M8j5Fo=;
        b=rVvnEYMas3nWE2vQ5Gf2v5I4zrEXlMGN3EdRJklrJoIUcEJBzEeymLvB6x60f+6UDX
         qUd9sPFPb+Qk4KrW9RdcgxD4y2pMlxfCnGxR9gmR6b6dviwKdU7odGt5x1Dk28vU9Jgn
         5nVV6hUCNAZm+4Fta+6zf7uQsOQ+V0fjYyYouaaW5zEcvKSdqg5tCFIwoyPx51OpFIWS
         4mPk+QwWcEqwCxr13fO8Ngl+wXGZDxeVZSAL5SBZDwLBE390X2t+9HRYl4rz546a784T
         +hQTCtNawN0kKVhRGp/6Je3+xDeCqrr0rOGmphmasYTqPLe9l9VOHU/l1U0DUmBP2n/C
         B9Pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6miblO4jMF5FLwBZ+ll/QHGB1a6yCOaMfs7F2M8j5Fo=;
        b=SW1XoagiEtCGQWxcy7grGqb66+5gm9+GURDckFtOgTkuSeT4/q3Ca85YJmCvx7j1z7
         J4bydcm+UNvq3Lfit3bQ8Y17XUA+OexbCqYgiMH3EiH/+vpxfjrAvHSVV3VMejlkNCFO
         DDD0D14e8EGGxiADzDhKGujLgVQ/gldU6Mx3cSrp4WlAh6wD+IztFRrOqGH20tLWQIii
         FVF390agFjXhstJIvx332+gm4ZpzEXwGV63okannmYNtejpROFLKcvpnzON9rTnD4tYi
         /nJQS0zEriFIl6vUeTUb2OmAYzXpPSWuNgmA9isOgD0O0l35OFjQL4SxOzUNVwrAXR3d
         Ek7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6miblO4jMF5FLwBZ+ll/QHGB1a6yCOaMfs7F2M8j5Fo=;
        b=Zkhfx1gbwa7jnSqpieUo8nTcDKxFZHHvCTU/HaSOngZABOGekiM3jlR3VlZjMNz5ta
         QF2zI+cCszfTEElQMbIqWDYX5fSs0EwH8txoMRNsDuiKM7QsRwoVvkwZ9MqjX3RjvPD1
         MaINb9xTb06F0ecZvEaDq8JzejH9bISLI4YF4YLHPSWKOSav9yBZDEh5QV8OPbhbENON
         lIF7ZjKzhDI6rpoDJR+5pQWUuid17du/U5daAxsEdiLDP68XQhgl18m/TxAtb8E1w3w7
         JxjS7evwqRPEK/m/LW5NdYhxM1Se68iL9XYrepZtcKRvtolc4pQtTrWtyVEXmnwFNO1w
         7gPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1384QvHZW1lSl5tzcCkysPA8q5tTBxcNXaOwUnZN4bskcu7NK6
	f/pfqFrKvVrqj5ykppxufyg=
X-Google-Smtp-Source: ADFU+vtK19nYN8v+BdoQ2waGsU/tnqY1AsAtZrFlTK55spJ177fLe+Rm8d1gkNKrXTHqAxTOZsdbXg==
X-Received: by 2002:a05:6402:1d17:: with SMTP id dg23mr14037510edb.220.1584806219814;
        Sat, 21 Mar 2020 08:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:11c2:: with SMTP id va2ls4806962ejb.6.gmail; Sat, 21
 Mar 2020 08:56:59 -0700 (PDT)
X-Received: by 2002:a17:906:3398:: with SMTP id v24mr7902816eja.125.1584806219202;
        Sat, 21 Mar 2020 08:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584806219; cv=none;
        d=google.com; s=arc-20160816;
        b=a1dh/k5UF/+RtbeP6uJnBGkI4WrzhIk1Fjfh02YFqq6IBjjhLjwepVThGL/IGFLBUs
         nylYpiMXGQP94WWoGFXVwpHZ8zGlpBrtoMuB29q9ueUHGXWafegQT5DyuLy3mapY7ciZ
         wrSF9IZzZDAstbAyyqb+zCX4D6Taoj2fqNruH5ei6SpjONR3+5gfSO0OZB1UQiy6zXtz
         RLjOCYnqr0Sd+NtTve9stjbL6Jcu7Yd8S40tVd2YjJsXwOF3Q1WucPjZqPoCV67QT2yn
         mIQ7t4dbsxLsXZVObq9wHgK1UhvwYzNfWfVRmnc5atRK3gLRRCNYKNm2kxzzAzt4zXZy
         mL3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=0TewNbMaqgTMDCiSOtY5xEWq0zx6IPnwLsxhjLOYQ28=;
        b=HWSAz5Ijd3kMs7k9icyu2fOjCYqtGKBFuZzWsSxXGHeiFnqAW+npfKHj7xZEnWnJ92
         Xp8FsXXF47ir+CI92L9Xo9UhTTcaZlCZ6PfW8ZtWIEgMoPR96au7KVyLDbNLWo/1r9hH
         gy5d3351GNuEl0oJMe8qkVBBqoIUh91xgS6uLqSf0N2NKvSOpbtVmzxQzOIu0Jyf3cXI
         524h6dnbCPrA9sIAskNEIiW7CzY63kx3rWqigXfjX5LtGcPNJuadWCvbd7eTzfuGjVRz
         ArTC80tzbOJ9dmllCTpmwbwtOIpAq4GBMogkUiYIElKnJdWDqjiBRL6N72iYxjDktcd0
         WEVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mP4OzNfc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id ck3si358456edb.5.2020.03.21.08.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 08:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id m17so2190860wrw.11
        for <clang-built-linux@googlegroups.com>; Sat, 21 Mar 2020 08:56:59 -0700 (PDT)
X-Received: by 2002:a05:6000:1205:: with SMTP id e5mr16691565wrx.73.1584806218885;
 Sat, 21 Mar 2020 08:56:58 -0700 (PDT)
MIME-Version: 1.0
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 21 Mar 2020 16:56:47 +0100
Message-ID: <CA+icZUW=_jdMGfsGxVX2RqKOF26hg12MCLZ64ZHxp06br1LS2w@mail.gmail.com>
Subject: compiler/gcc: Emit build-time warning for GCC prior to version 4.8
To: Will Deacon <will@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mP4OzNfc;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi,

Thanks for your patches in peterz/queue.git#locking/atomics.

Analog I suggested some changes for Clang, but I will wait for some
feedback especially for the minimum version requirement of Clang

What about doing your Kconfig improvements for CC_IS_XXX and
CC_VERSION handling analog for CC_IS_CLANG and CLANG_VERSION as I
suggested (see [1] and especially [2])?

Or even do that CC_IS_XXX and CC_VERSION handling as separate patches
for GCC and Clang?

I mean do the stuff for the build-time warning for GCC separately or
fold into "[PATCH] compiler/gcc: Raise minimum GCC version for kernel
builds to 4.8"?

Just some ideas... WIP...

Thanks.

Regards,
- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/941 ("Kconfig:
Build-time warning and minimum version requirement for Clang")
[2] https://github.com/ClangBuiltLinux/linux/issues/941#issuecomment-602055888

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW%3D_jdMGfsGxVX2RqKOF26hg12MCLZ64ZHxp06br1LS2w%40mail.gmail.com.
