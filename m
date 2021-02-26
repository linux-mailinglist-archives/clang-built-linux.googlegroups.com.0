Return-Path: <clang-built-linux+bncBDRZHGH43YJRBQOY4GAQMGQEJACVV5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 374F5325BFD
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 04:34:27 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id j1sf6117896ioo.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 19:34:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614310466; cv=pass;
        d=google.com; s=arc-20160816;
        b=xqPjFWeIrDrQ0LJXu0x/PGuFE5zXSLJXgH8kkgD0YmL65MlwnemZvcwZgCaGffYr9z
         gMLBU6nSYeL3bksf1CYPrTURi5+BpRQMXfs8l3EKuLtevq4s4f1Mgo4IO01QXAV3IeM+
         3awv0v9HthDQbbaG2EljquScG+AhRlp+3fpnhZ6tgk0QJywlIZ89RRWua6VxrekSXVXL
         ku5iJ+r6O95aWvEYu7559DXsauxEYlyX8fH5b0HNvP7VzwlXPE4gwcW0lPrrGu0S7ZlU
         Q+xvUMJTcKQ79o4qgM3XX7SFGRbZw6PphJp16yGlo8VA9w/dS3YQRYCOUZlEjKQ6bz4T
         SSfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=/6peWu+5xZwld6CtkgKpsqB2HqZDcU2VmTIpu09vjLA=;
        b=G/Y5riCOVq9TUe55aO7sumXZexAXC176H+iX5SwBxVcq8XK3gUYqTCufYE2sOwOrb6
         a8lTfA+/ZZsHIW/lOhQbirNEUJKaU911YeuY08VYzNUiPNHHmUKk2G1Uhz6Uv2hyJYnz
         x/vSXuGMgbBp4Qs5zkzwVdIPxTed6nPh+f25kNf/k9AURq4f+k633GZapAiw7QJDyBRt
         yHEwHugGkDNn7kyIWR7a3M1QnU+FmTjAt3ygz+lfiDwsPcSw7KadNyZ4V9MFbovUzDc4
         1QjDCVss6N/FN/F22K622e8eP8j6Pjuz0D65d5vIfGznPsfSNo7SEA850xLMXM/n2Aq2
         sd9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hCJus5y1;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6peWu+5xZwld6CtkgKpsqB2HqZDcU2VmTIpu09vjLA=;
        b=THPDLcF+W4Rs8MetAoliWpRJ+MIQi5SPyAssyMk5kWfpuf8QnBKcQcN0xrF1Jvmg94
         PjZFTzksFMwZMHVOwRTmePTxJlktJWdrfiP2ZrAiaAjyJ4LYgNk+r/LyXOpDP+1HdGgK
         nNpsmkz2t5hHGPbpFlnHhRMYcw7JWN75gG5MCXg6CRPRiVM5PpPpZ65k8ek+fb2Eydd3
         dx2B60UyihZX0d2jyceldckJMfcgWlutQ5E3G4d9YNL1iDDgPTJPgCxpNBMl8+t1E56C
         DMuY1fneUcnoOXyUHa9kBBgRxmMFPFJzFOJf78dCzZlr4KKyZTgjwlpi1/sqnnMM9EfL
         MvZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6peWu+5xZwld6CtkgKpsqB2HqZDcU2VmTIpu09vjLA=;
        b=c+yGvGS2rllr9Wu9lKqr1iRh/alKnt2k5ZrBMNeLMbAcxv2baZind0MhKeoJ6sgPKq
         0b+OL2Ix+HWFZY+Aup3smuNmcyKEc7a/3VDy2SJD2rmMj6Rr0+ERzehhCiBwdZ7i2z6b
         dWTWjGcam/cF8+pXKENGieXrQgF0L/bo/1czhWmOFh4P57J3gp69CFQpBGfg88SH9Wqz
         wLo0khQ8mODV445hOUM4tew/44+j+tzk4bGJa/vsgyXM7fVZnW21rzd6xkN8IQdKlfQu
         6OcWfsRmCfNeTMAJzn74HVkZfuqXCp7BMkLi1rKhXFNM6+naT5yF95MktSipkkuzLn02
         gNcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6peWu+5xZwld6CtkgKpsqB2HqZDcU2VmTIpu09vjLA=;
        b=A8AV/uDVwFe4lhSzHNnyYyFWTM1FUIJoZ2ak/uyyRuCTGbH9nGdr0poOvkkzOOusyV
         /AnKIaRFSc2eXlqUAWWeFZxaDXuSPJK/TSsrpAA2MX1l86l4GjKZ9ZFnzZzAIWEYvU14
         BPvWHIdjH8keSgZTcKeRJisKK7bSQbxkVJfObSg1WypTaI/LKURFea3qreGxDhVSffVO
         hDPufxQEXig0FTKc099aS04g6VqO7tu5q2wTrW5v6hI89C41Mwmf/WWCMY5it5SgXY5s
         WTmdxQWxF2x0vmOfXH6blPEi9+IAI/4UHzNTB7sOHl53nZCpiCKbv5Roq9McSqdzh1xp
         7tPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wYDhwgS77qyxkbPk8t8egBiNyf+ZhpMGgbpOyZK0IkJd09Jr7
	2np1oearAlzgeytssSGmd6k=
X-Google-Smtp-Source: ABdhPJyhho/MawIUo5A0TCw9feK7v+h7WABO2rVwChOwU6xNPDBRReLGuDF6Xrqy/NCgSEEUHX2zMQ==
X-Received: by 2002:a92:3f06:: with SMTP id m6mr725162ila.283.1614310466001;
        Thu, 25 Feb 2021 19:34:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:170a:: with SMTP id u10ls1988867ill.9.gmail; Thu,
 25 Feb 2021 19:34:25 -0800 (PST)
X-Received: by 2002:a05:6e02:1ca4:: with SMTP id x4mr780649ill.58.1614310465525;
        Thu, 25 Feb 2021 19:34:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614310465; cv=none;
        d=google.com; s=arc-20160816;
        b=ZmMjSLz87LUZZzqEZRmy23SsvL4ekXCnhvVwQFx9zboHr35MJ6tZq+vM+WOMfRDems
         eddmD9FxXun4m/bpssBZXPve3n43eLbiZ7u4vHgga4Yl5xRz8VSpP1C3WQfX6ZAYY4ow
         OSl7X1W2MiIp5gAoNHRLjHb2Cwvu7tBqrzYHNRfR9DSazfTfJFI1HwN9coAsUno8PuUU
         +SIbCrExM7JLE+3j6139ySHBCbxuaFPqV8gerZt8sOHrvv81vRwFY+TBO6JO7dV6+/Gt
         8glz1e2NJpSdiIAIZFt2lxsH/11/raNm6RNjqXDL/dAnKLpgYlev87HnGuvlaIxooZmd
         DLuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NCLOCkZfcktctstbvLCUj8NcVRDZM3ove1QcBc5lnhY=;
        b=l/0wJ/SJFFRmjwI6/i7n2T9LMUfAZHqoxFT8YhYHvNgzRmeICoAJzmENM0/gcF3Kfw
         BK2ZThj7Y0SwiKJhrGjynPu79so5BNz2QnvAmnsKeaZlpZwm5bBaE2SdJE5Dsd7aup5I
         Soa55gfGfXx7XX4+QkV6tCuu/aTQnZtp3TpJfqSG875Z63L12+6EkGaFt/d5wiDm42Fp
         u7YWLZx7SnNgwIoKZDLv+Lg9azPKL68egJT2US9/n+7EtF97elJQKnYBmhOsoSUzo/vf
         l4O8VgTzuo9vxgRwL78MZo7x8qpAuZEzpnaw6P4qpOZR91Ggb4wOUgWFjqDpKAEgHgXT
         eQtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hCJus5y1;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id y6si465671ill.1.2021.02.25.19.34.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 19:34:25 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id p186so7626850ybg.2
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 19:34:25 -0800 (PST)
X-Received: by 2002:a25:6e02:: with SMTP id j2mr1521515ybc.247.1614310465345;
 Thu, 25 Feb 2021 19:34:25 -0800 (PST)
MIME-Version: 1.0
References: <20210225164513.3667778-1-arnd@kernel.org> <202102251203.03762F77@keescook>
 <20210225120637.8e2a234f192952829fc5f471@linux-foundation.org> <202102251213.5815C9B33@keescook>
In-Reply-To: <202102251213.5815C9B33@keescook>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 26 Feb 2021 04:34:14 +0100
Message-ID: <CANiq72nP6Db4y8dKeO=iOQb8K1EE=fWactFswv+HPh-Pc69rvQ@mail.gmail.com>
Subject: Re: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, Miguel Ojeda <ojeda@kernel.org>, 
	Marco Elver <elver@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Randy Dunlap <rdunlap@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hCJus5y1;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Feb 25, 2021 at 9:14 PM Kees Cook <keescook@chromium.org> wrote:
>
> It's a trivial change, so I think it's worth it?

It is simple, but it is not trivial since it may change codegen.

Acked-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nP6Db4y8dKeO%3DiOQb8K1EE%3DfWactFswv%2BHPh-Pc69rvQ%40mail.gmail.com.
