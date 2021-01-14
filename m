Return-Path: <clang-built-linux+bncBDRZHGH43YJRBLEUQKAAMGQEOOU4JCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1542C2F6906
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:15:10 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id b1sf2641580vkl.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:15:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610648109; cv=pass;
        d=google.com; s=arc-20160816;
        b=sVmoTL8XVNFX8k0QhPJayfwAtnC3MMoW77inSbWNr0mDbtXpu6RraDxO4haYGJCWOf
         eAYLaL9GpMjHRguLs/BxDpsrJQ52lzPpy4HR1RLm0agn+mc9mpEtnlhOKQHTNWc1tthu
         bzdzsEamNM7aQKFwtWbk8in7iepBfI8c31c6JDrwSHkJJ7NzP8LsyNez7oyzpTei3OuT
         TFIRrQ8qQlDlfUusHmLVpy44qwu+/25ImjGVRzLyFk2J+mTLt2TqnWsMATNZ8GCifY/n
         HcNlV8Y5dz9WHH9/WH3s7IBsCh+ncd8a9InflTdLqC5CqZ4V8d7XJXoj6FvcFS40bxLk
         i3WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dJXNU0iOuD/negxvg8VB3o7I4jHM/oxI4su8C0Y6YwM=;
        b=Imc2W+tv21wbNy5IfSI/pzF9wiESXlefyZwg4O+sAEUdOYxNxyS4kWnPO3JDQrHweJ
         iMFGEjVhmv20daQP4T8r2PlXyPHjb+ig0Ht/RTtRI/QBGpjxcWGvi5AVkKB7TmIosdiY
         mqRbylX1FR3VdsfeVTIMBu3pmu5yP249mIYDPQ9OLbpf8aMwdsIThARS0atDN2TU8S7y
         Q8dz5+o0eD4P8HanlOlG/gcBSeTHEmgjg8iJgsDNQRZja7QycPwwOFQpq+/Z4dDD9cyv
         8bvT0ToBLuoRPT33CrxIVP2v4xHaBg7RDlJkmczscKlWIZ1cm4zlJ3QGmYubSdMr06qK
         +jIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tf6V0LKw;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJXNU0iOuD/negxvg8VB3o7I4jHM/oxI4su8C0Y6YwM=;
        b=fGpmXSM/nBwdRNcFupTESFTz1wZ9LaMj0G2g8dJF8JRY2u2AvK5zbxh+4fWsVW5gR1
         3MOS0T83rnJUcr8jCawwcw9ItrYilkBiGvVN6thUFWstnzN+c42LSjczcbSDQATXU+Oj
         6PeEd42EclmH1BYPbIyPWQxN10+DpDeU3ewHf0mNaIuUiO8EdoafGu40Z6xm2ozJwj8g
         /ZbSyRD81i3FAqpT4UzZdMAEgMyLwnGBS7GXFS6jSxu/ugv/WwsANedFvsWwaNAYRV8I
         oeY6AmTKjmQR64jNUz45RcH9xGH4f1ffJh35GlqR0eA2madbz0ODidJ4laYwHNt128Yd
         StzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJXNU0iOuD/negxvg8VB3o7I4jHM/oxI4su8C0Y6YwM=;
        b=ppaGHfZ92tqMDfdnW5iIi7Fa6zywgRnKY+qQz+fV2qichHdZqO8489CIe+CzcojUgb
         3oZKnc0vxg9Y7DJS9YoWHLO3IVcS2nrZT0MmL8NC9zBmZ+zw59N1lkXSqBOr5SyPNPEx
         oQNmYzyy68FTkAW5Dykk7PPJ/q1zimUB8UGY91H6XXinCmidaHNpswXWqradyS0ShDOa
         D+Wtt5EcW84YRhxn7HnWvyLHp4UxxNLsPiMUvyP5CtmibaJ0yWDSwSUdo13rYVr2L38q
         UVN3yrdBjSy5HQSiT8r5FneKGh3/bV+YQr3bonxohoINbo9x/BA9z6n/vp08/qMcT6Vj
         1oeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJXNU0iOuD/negxvg8VB3o7I4jHM/oxI4su8C0Y6YwM=;
        b=WsCRojZJQ2H+LHAewlPTkKECdu8M/g9X41vUOqBs+D7wgQxE7/WXX2FDdO5Q1SWb+O
         XWHXtFwTW1jyh+vXWmKVifjY/bpLnTakUZ1SO71ytFccng7jH2FK4J6Ngove7AmRDxWB
         1sxZ0iJIMLVBiHaMByKk1FxICcClc4aDQBhkfFCdBpkf92wjPESlT81nxMPVlNaDt6jA
         eErrhSftEuKiumJ7t+zqGTgrJPaseWmkx56KJmfNP+18fNVJUb9TlM/od+H1cS2ldxPl
         RMNqaTDJGSotQ3wiCs65vYqK1+qbfKm8isbImeO3jkUqU3S1z0sEck5N2eL9UTUDtmgz
         KGTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wb9HdfQplaaQkeJ+rACU7DvBKVtmJ7dLIrFB+p4diRC0mr/vX
	FnNGqkro7iilH9TyI8kY4L4=
X-Google-Smtp-Source: ABdhPJzSN/qCIUB7wpAOLUj3BN8jsITgd/M45oARY6vyxBEwy26TVdN3dzYTSZODrmaFkzfOgrSfYQ==
X-Received: by 2002:a67:c89e:: with SMTP id v30mr7637243vsk.54.1610648109110;
        Thu, 14 Jan 2021 10:15:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4c41:: with SMTP id z62ls346418vka.2.gmail; Thu, 14 Jan
 2021 10:15:08 -0800 (PST)
X-Received: by 2002:a1f:1c83:: with SMTP id c125mr7876848vkc.0.1610648108462;
        Thu, 14 Jan 2021 10:15:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610648108; cv=none;
        d=google.com; s=arc-20160816;
        b=WIN5L0bqILTsdakhTzrFsIkO5+pgqze9e0bn820w/cSXRE1RY62ZD4G/TrdhO7a1B0
         nT+TFccl4E3okeximptfGVQkc23IJEgz4ywncyGyRyy0SVf5+ZePKSM7iq+pnrMUXzIX
         R549b7DHGH4JktlJoK8kq1pY3BmvdMZzb3Wxq7RFY0KwRoF/bqJGyewG83axtOQB3WlV
         r/xI6H9GDI7jqBJ/DHu45xdlrnungsNaZ9SqaVttIR8jQIHb3OeMkiCwmOj0+VM6pifd
         0qUn6EL5f5KkhmQn1KmqBZdTkt8bqvkb7kQ1s+Morwg/YwzPSnEBFrZ0pDc7GslMwWA0
         MmgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Yb+qq3jE3dz702Bx7BFxZGv/G0yc9+3LN1cCdlwEu2c=;
        b=jiJRV8FmjpkKFwWZRjHyx6yNpmDrTtJRkMVUwMFMuACEmVp31cydVxNc8bNnUdnxn5
         eJSkr0hQbHbbDM0iy0emvjMzVEXc4cgnude+HcOeXF7x3ykLHzEH+Ed8VGxwmyVnjrWt
         r+N9gLjKOv6XOn/6zeqTZ2Te7vo4XV4XlVnY6XfkVOm30qa5GJfiaFfvuwKb6J3kUAo/
         1Rucrt2CDKoWVPVsohwqoUiolEYDkM0aDzYncypqHW2tRQq11+R5NR5XQW1in0echacv
         4WjQ8hIE1n/H0eLNVb1xjPJ7rYNcyUOpFOExJmbHa0RBcKk8JWgn7Gj7shizxsqlJjep
         R9ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tf6V0LKw;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com. [2607:f8b0:4864:20::b31])
        by gmr-mx.google.com with ESMTPS id n3si384486uad.0.2021.01.14.10.15.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:15:08 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) client-ip=2607:f8b0:4864:20::b31;
Received: by mail-yb1-xb31.google.com with SMTP id r63so2645766ybf.5
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 10:15:08 -0800 (PST)
X-Received: by 2002:a25:ac03:: with SMTP id w3mr11967015ybi.135.1610648108210;
 Thu, 14 Jan 2021 10:15:08 -0800 (PST)
MIME-Version: 1.0
References: <20210114042420.229524-1-masahiroy@kernel.org>
In-Reply-To: <20210114042420.229524-1-masahiroy@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 14 Jan 2021 19:14:56 +0100
Message-ID: <CANiq72krA1VrVC2ecUCQFAgJC07od8POjpVUoGFYJOHjZ23ckQ@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Paul Gortmaker <paul.gortmaker@windriver.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tf6V0LKw;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Jan 14, 2021 at 5:25 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The cc-version.sh also shows the error if the compiler is old:
>
>   $ make defconfig CC=clang-9
>   *** Default configuration is based on 'x86_64_defconfig'
>   ***
>   *** Compiler is too old.
>   ***   Your Clang version:    9.0.1
>   ***   Minimum Clang version: 10.0.1
>   ***
>   scripts/Kconfig.include:46: Sorry, this compiler is unsupported.

That looks nice. Hopefully we can do the same approach for other tools too!

> I put the stub for ICC because I see <linux/compiler-intel.h> although
> I am not sure if building the kernel with ICC is well-supported.

I doubt it, and there seems to be no maintainer listed either. I think
it could be considered for removal in an RFC.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72krA1VrVC2ecUCQFAgJC07od8POjpVUoGFYJOHjZ23ckQ%40mail.gmail.com.
