Return-Path: <clang-built-linux+bncBDRZHGH43YJRBXWSZ2EAMGQEZS4IASI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A6E3E8EDE
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 12:41:36 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id a2-20020a9266020000b0290222005f354csf1080079ilc.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 03:41:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628678494; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZcGP400L+VqbClk6sTdOOwNNWXfj963XHwDJhmovE9l7u2yw83q7fRU7m0aggkeEDY
         ifu4cDNsJacZAQnO1pUDlUpuwhr/ywlT3Y7kTZ9rHzlTQBOEPTBWsb9AqA2Lr5lNivzN
         s6h5IEsvw08mLzSWi2JQu01kRWLVwJBSSUFV9WuyKca3yGf2TnGH7qHY8UPwSNyQhGiO
         B6fTf7MudLmHJqtkttZva2hpnFkW8znXxZTbMtTaaqXW9fxP8aO6F76aHBoh8HtpEH7H
         UYFgiGpNVR6F3f2+0/nXDMRJkEaOVWaj0LUi9J3JK4euC+Sm/DrSlr5vSH017qK8w+K0
         P9Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1lPRduW+GBJHCCHr3ad5DZhxQ3LTziBJjWPsqGVN73E=;
        b=x6jaCGk4Z/MYKWAAouRpUd1hT9iGKgmYX93KCylAVdCW+HZzAzlmGyo5eGi1xkg8jH
         xaT90nXYfnrLtB1+l6yrqi+BVzNWjNjmTSzMr/+SNOeO/oEs4CpI0UwkRXdTRv1c6uf7
         eTKFmNqa6SvNwDRo56dBXIs5FxuAqDIFQn2r/OKr0uiHYSKkz/WlVU1N6TUwEKeEtWAh
         qElz4WPb9NqyXrUEGwB8Xg1nfyrI46045dLmYfzQs02pCCQsNh1Bn8Xj95ErUrlX/Mnt
         wNP+GKmfrdi3l3lzPYbO6efau5mkXiEY/HsVllz7onJqf2CfJ7XQzbrnhRhFhkzywE+O
         MlNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GBu7/zNy";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1lPRduW+GBJHCCHr3ad5DZhxQ3LTziBJjWPsqGVN73E=;
        b=eetb1KBgldgy32IOSry9j1jgjnlHNpZN//7Bb/pMkoCWMP4SpDzY4eaCEDkzy6JHCn
         zUUgv8Xrs3ooD8AYq5y4rUgeV93beHOY5/Ahi8MdyINZOyyXd53FnydPzUGgo/Iiqcux
         hpIGtIFVs5v/Aux9/U9J4+wwVywrX1UeEd9e0018yFrtS6fOJPfBXRzKPVd1/+PgyXXG
         oR0cNUttUSlGuMpwNoYGGiDFns2+rU9ztcv7bYmJ/Z5FAJPZxD+5Qp0pbAjv9NfHkE5B
         3Z18r8tt1Juv5tkz2I9Kzrrb6x6q4I8inWCgL93uMEjlIgQx2BRbzJhkrjgTg7o7F4oY
         n3kQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1lPRduW+GBJHCCHr3ad5DZhxQ3LTziBJjWPsqGVN73E=;
        b=BlLMVA48ChieFGqyzTJngN7OurdmesgEkWDpnrXq0f2mUy50EUDgkcceq/0Zb0D2Ib
         Xho6vanc7Jy1g0oHElNYIzw96pdNOQvzy4MQmQnnEK7MAHbwZGd7onBlmCkkQTICLgC0
         ugf+CbJfKN0J2DuAPzkuhUnGEDNmxmTWp0y/LEp11QGK+d+91le+3kbMukI3+Voa5vOX
         Exweh6bBBF1EO5jAo5qVbDsiMzGD3GpksL8+N/13G5b104D0t+sCpxmKR0oDoQeHciQe
         Xvw1qg+3M42Cvs08ex8QR/z0LCoD9Jys6lrii9Fdcz0G1rLV/BiIAxXAt01OZThGlyi2
         zKkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1lPRduW+GBJHCCHr3ad5DZhxQ3LTziBJjWPsqGVN73E=;
        b=ElhYJvVi4Iimo+E4h55sR14sGvGwnCOnF4Y6NgO0AnVS81orT4qfVjwKnUUTABSgcr
         62gdvfaqJ0RFMz9EGlXTNlqVn6VeYPJ8Oj+Cco88fOXqhJ8RVZ1JVf5vy9ahLcyTgY9L
         aao49GOYfrakBbZVN/xB5ZCDwv3PFIuUIU7nsylkXTFDRJm/d/EsLC04mBjNgXh4dQsS
         ZfJ6ZTE9csPD/aEgH5D1SUpM0U8ohSRo2TVFPQm2onCYFxeWkFFV49+bdroNKVf2LWDc
         458tfNfMQQu+OUNmLoj69iVl85NUG29p/ZaaAXhZ8H9sF5CBuLrwUH7Ca97yhBmUqpYK
         zKsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qHnngzdkzRB0vjD6I95qN4yB9da8+ajgtHUroUD5VyYZYt3Bv
	eEBrhPv/AwGFyVwF9pyuIGU=
X-Google-Smtp-Source: ABdhPJwGj0+4b0z/YaO7ywUzvkrkIiFS2sVgwOsubIBStvR7BNNezV4DNvBtzuaX0R4Gwj3OzP8xhg==
X-Received: by 2002:a5e:d91a:: with SMTP id n26mr34669iop.96.1628678494691;
        Wed, 11 Aug 2021 03:41:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:910b:: with SMTP id a11ls199138jag.7.gmail; Wed, 11 Aug
 2021 03:41:34 -0700 (PDT)
X-Received: by 2002:a05:6638:2590:: with SMTP id s16mr27916407jat.121.1628678494358;
        Wed, 11 Aug 2021 03:41:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628678494; cv=none;
        d=google.com; s=arc-20160816;
        b=VR2L8GlKu2bFK0xYyktmLM2gap/f5gUb+AdkGOIOnBGoBST6wjLLpYp5qvcKrhFBbi
         IUEPB3Qtymo5ij/ULQSfT/O6keli7zhibY/QvJ+pD74vOEyhRqz+TNaQllyCaq0L/Wjc
         DA4jqPzAkDPbJtVlw4VOx/gXcHEQeq/pIM0aOkbDb3fFKy/ombzxpNMolY/GTzGd3dlV
         3It1t46wknE7dcoOB0jIX/EulaPJL6vREGSqlfvh4J/gCBGq8hbRW0NtlE+DqTdw02C4
         yYw+ecjO8B03euea8J4FE1jvvp3GESc7iCxGAkU0MgHf8FvbWJjCoS0GRd9jzYjz/Vr0
         EDng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3jBxrILRt2SSh2fFdT37FtH3C1pi2n07Z5azmqkHTR4=;
        b=N3p5z7sTLsH3o2WmDhIEhTm4RSIUt0mg6LPilbvgtF2hqW+xGdfikL9UdWToVeubzG
         WIREiXIlYmThFqZUdzUkMbpsYe3fDy2EX2cfNoRcCdHxeJ1+eG3FHxlBQoYwdv7gjsof
         RCBJoU449haQ3V4TpncMqpNgjDkG4BslTephf2JBn08y1hq+b8hI8Nu0M/+jHshCwxr1
         YABulTjt50s00ViQqpQF9TG4NGT0Bc/dXcqqM/Vn4R0MUy3J/gyZzfyXu2rZi3Kkm6mw
         98buNVW1CMz8jSMVkCExAhmmjGFQ8d10pFQXyZ9A7Wiz4r/hEpTfxsUbWn3b8KH9RICy
         vwbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GBu7/zNy";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id w12si812341ilu.1.2021.08.11.03.41.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 03:41:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id b142so1663443iof.4
        for <clang-built-linux@googlegroups.com>; Wed, 11 Aug 2021 03:41:34 -0700 (PDT)
X-Received: by 2002:a05:6638:2714:: with SMTP id m20mr31099642jav.41.1628678494149;
 Wed, 11 Aug 2021 03:41:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com>
In-Reply-To: <20210810204240.4008685-1-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 11 Aug 2021 12:41:23 +0200
Message-ID: <CANiq72=H4ofcSfD=scFa3moBBDf81h3fFKEd52-4Y8ZygANWWQ@mail.gmail.com>
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
	Vitor Massaru Iha <vitor@massaru.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Daniel Latypov <dlatypov@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="GBu7/zNy";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, Aug 10, 2021 at 10:42 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> cc-option, cc-option-yn, and cc-disable-warning all invoke the compiler
> during build time, and can slow down the build when these checks become
> stale for our supported compilers, whose minimally supported versions
> increases over time. See Documentation/process/changes.rst for the
> current supported minimal versions (GCC 4.9+, clang 10.0.1+). Compiler
> version support for these flags may be verified on godbolt.org.

Always nice to see cleanups due to raised versions!

Shouldn't `--allow-store-data-races` have been on its own patch, though?

Acked-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DH4ofcSfD%3DscFa3moBBDf81h3fFKEd52-4Y8ZygANWWQ%40mail.gmail.com.
