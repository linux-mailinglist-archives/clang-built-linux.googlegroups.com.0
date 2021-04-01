Return-Path: <clang-built-linux+bncBCU73AEHRQBBBW4TS6BQMGQE57W4KFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6B535151D
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 15:25:49 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id h12sf3336420qvm.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 06:25:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617283548; cv=pass;
        d=google.com; s=arc-20160816;
        b=tYWFYE4QPUuKHjJx7rU1hoHlRGZpsPtVIwcfq8/zyPtATcd+F6ZmCOR9afkIsG/SCV
         GuoTv8p1RjuMUvljcAvP4QNDh3LiNBTcjbV2qg8uN2F083FxxWE3m3i+2vKErGRSxvWH
         CCdXu5HolOKt5xZfdURlp1zV/QDe8suTPlKeClGz6MHcMC6x8c2G/5Ska/S42L1IDcAy
         tQDvAycy1TNI1mrliDWocsE4UU6pbfv4/R73hCin+ZKJmbar2S9VKFb/HtzdlgWPQWwH
         TDgsQWZ9IXTj1i7AdXPAfc2SzygWyLtsjn9aqSa30gF1DybuEoajoYE+Byfdx1slryJ4
         nsuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=GMIVuq8VANkmYHuWBmp2Uw5zkav8RqvRYS7lt/ZyeZ0=;
        b=CLW8U4dSLW62+QVSXTOxD69l9rZMRR1OaW4jr4I9r+torHUWXvlYfYy/IRcJOvp2IE
         9jWNwYwLtDtwWlDG97ZU3SpvLEdciQkUPGfsd7KK76QMLJ8Z+Qc1FR1TbgjrNAdFMcOu
         aL5Twp7kTCxPekus8/0W29uOUIMHNRxRClL/CXq6A5RlPfvTRX+niXiYvwAYGXXcwGNc
         6nrVkLOHgp1lT3D6QnLxUnrDk3OZwGOYj3Wm/2muLzzJmqIV8BcP5lc/RnJNL0XDjJWy
         y5CfZk94p/ILAtQ3W2yZ3M4ZDn2+tdEuHxIKKg5EFSFrvFZjcjP49XISe49hoMevuW6h
         UknQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GMIVuq8VANkmYHuWBmp2Uw5zkav8RqvRYS7lt/ZyeZ0=;
        b=pJ7vRNzdTegVtXyJXsMRDgakr9fZtJgoJFVg2sXKOCqH6SRsmJK0F5S6zdq05OXOtc
         ukIRL3ft77lFbddQl87ZqtlbVJlYAZzYgIfIrqzoVGLBkRuk9dRRtRv9VMHYo6qbIFMe
         NRLnQf7ycpV+prr4K4lvWUVG9Xukp3ey0xT547sBGHvG9rTHaJzUKS6IRRnGxXV5ljoc
         GI24nFWMOdNU3bLwTp8CWbSqQ2B09FKbwWh9s5JB0XEBdmclfU+Iq4nuQaPGsICsjGi4
         AO6L2TzNn9K6mtspIlnrEAyPf7jpFbImt/vcWqTf4JFEJVHqzNZM1uxGoq1EGqaTnh2D
         GcMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GMIVuq8VANkmYHuWBmp2Uw5zkav8RqvRYS7lt/ZyeZ0=;
        b=EiVe5mwoYopXbcGASjMpTjJbqzOaNXJWEtOW1L8PpjCBNZ5NoWSQt6RQn8ZVHji5GA
         Pymdyv/fBEf2ACmkt1euW7hKxXsIyPdkneE/bBalnjFX95QUN23QZxqnfVXi7dYe14t7
         Ns4myaaXlzOm+betlry4J9svhcNY6oeUBcjXrcEzb/2FvQjDA0gbxF54AaJXwfqP8fU1
         d4q+PXm9tJ6mIwblE7FqevdHqjCc/ybihKVvu/nyQdZkHFl4vPPTTpEzKQhOyFXDz0LI
         lubnKhAXbZjY2AtTD43yL1MKt9z4Q0TcSortY3RLnmo7j10uPRm2eH2GH3/uQQFiZoJl
         Y3qQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337wga7IwNycUbvEceZbA54S9gaHwYG+FDrhzI3Q2T+8i7QGEoW
	ceUQYgwp0f6zBRx/NG1mgxY=
X-Google-Smtp-Source: ABdhPJwMgh8ttiLGJ65TII1HEOyn6yjsqDQ9CsW1peVwsbt2tsVRWUJqTkki5ffC8FtxTYM/kzboyA==
X-Received: by 2002:a0c:bdaf:: with SMTP id n47mr7955708qvg.48.1617283548278;
        Thu, 01 Apr 2021 06:25:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:12c4:: with SMTP id e4ls3271260qkl.4.gmail; Thu, 01
 Apr 2021 06:25:47 -0700 (PDT)
X-Received: by 2002:a37:44e:: with SMTP id 75mr8107018qke.150.1617283547489;
        Thu, 01 Apr 2021 06:25:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617283547; cv=none;
        d=google.com; s=arc-20160816;
        b=yeiYp/YSidXRFCILKG9pqwbRklRXPpiHfmXDuizSGJ0/emKjnNaYmEPlS9KaSr+J4D
         PgaO5YsCgbp/8C8Na+KLgOZ8fcyzD77T96v8czNj2UvCcDRKcht5RyJVP6L51A/ncM3G
         F4vCfXJJ4HB4Ml4kQaSIOMKMG4d26dvKtJaSgizwKRqlc2jw2Mfem9s4MXpQA8QcyjFx
         3uu0u2y+NhiBCOuTaPcpNyzqZWvd+C0EQySl+zxNMPBoKrw5fL4xutC6jRq3Ojjp/0+m
         M+8l3MAnDT5/6zwLqib4HNuXkRNWea7ihVMg7Zhf1X8FuV3Gndl6LU3L5EJRO5m0beAD
         kctw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=Ck+fVvwtsdvzGYiT3wa201VNhFJ+VbzpfxZXNUGJzB0=;
        b=tKmbLaemc+fy25V5n3dBHok9eIM1GyNh81ty9sTBc96aTpcnhBXOIaiN4ZXgG5K8AF
         ddooy05OxB5Er1TOFZnmTmFlRxCF427T9YrVmYMtgjO75bSFRIK3JJmdGkYoLZ8sHXpm
         8/6ur+9xAeeRT9Ls0InNE/WeGcbcyAZv4MVmGu2mXACByGBLDyxTYGciP5yDYYfeEuig
         QrBrWIt8u+kaQS/OXuO1LHY9FrwjI1g9il1QT8JLsOLyWC8j4LmK7Bpm+92I6nT3J7Jx
         3ZTRC1Na9KqZjf/Dc38ht6eeeKLlAbpGAaraPQ7Ew+57vlIj+IofBfvemKBaY+0+3qi5
         uenQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a15si857921qtn.4.2021.04.01.06.25.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 06:25:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 18DD1610E7;
	Thu,  1 Apr 2021 13:25:44 +0000 (UTC)
Date: Thu, 1 Apr 2021 09:25:43 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Elena Zannoni <elena.zannoni@oracle.com>
Cc: "Jose E. Marchesi" <jemarch@gnu.org>, Nick Desaulniers
 <ndesaulniers@google.com>, linux-toolchains@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook
 <keescook@chromium.org>, Florian Weimer <fweimer@redhat.com>, Christian
 Brauner <christian.brauner@canonical.com>, nick.alcock@oracle.com, Segher
 Boessenkool <segher@kernel.crashing.org>
Subject: Re: Plumbers CF MCs
Message-ID: <20210401092533.6b5ec086@gandalf.local.home>
In-Reply-To: <403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
	<87o8fa3oua.fsf@gnu.org>
	<403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
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

On Wed, 31 Mar 2021 13:34:47 -0600
Elena Zannoni <elena.zannoni@oracle.com> wrote:

> I am neutral on whether it is with LLVM or separate. I guess it all
> depends on how long we want the MC to be.
> If there are enough topics for a double slot, you should request that
> sooner rather than towards the end, when there might be no extra slots
> left.

I would only do double slots if there's room. I rather have more MCs
than double sessions.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401092533.6b5ec086%40gandalf.local.home.
