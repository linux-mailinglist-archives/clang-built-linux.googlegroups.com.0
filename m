Return-Path: <clang-built-linux+bncBCU73AEHRQBBBUMTS6BQMGQEWTWXNZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B4035151C
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 15:25:43 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id n1sf3974645iob.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 06:25:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617283537; cv=pass;
        d=google.com; s=arc-20160816;
        b=GpLIvJ8305vsLSeFtwa9fQHFrRHH70uGOpCbE1eNs2lv2Tjb4BpPd8fKfiPXD2ZQDh
         4TKD4wtNtJAbuKyt9dn/8T6QePTihO2vqjNWfLzhtl1YDNvWET8iXH9QTySQCmIB27Us
         3Z18Zt6qknleExW/4++hyS3Yt2OWDRNt7Vt8EjZgs666/ZZohqmIS7wLth2wnttZPayB
         vUSXK5bQgW7cFUNMlnKwT4Eb1EHMXn9OzysOmFXQsevyK+A2fZx6R0/fD6Lo0JhbWzZN
         h2++UeoxhieSf3i8c9uKs7BMEN2u3lX1eVyKZafBITRUyB8Tw9ouAJys+NBowsALCfrV
         8rqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=E1Zv8yh+vhbE5rQeMKvZtAr9WjGTLA+JZC7/GkeTmqU=;
        b=WyduexBrGzlPFsVCkhArJBi5v1Dqj1huDOhRcHVdGRqEOu+0tKy+rTj05c+p/7jC2y
         f8QtTD5MYb7fBxPtUWDElU2/lT1F9eEQl5MlgjyUvVDM9UuCbiw8l91ySpH6xf5wO7aY
         O8AQbYzxUnOB412wHrNO7JG2L01aTOgO46eTSGfYMRwiQAiqhTP9JzBAyXmQOTiACCF+
         9UREFI4nKcKFVb+oNnyNAr7BZTxuBraanhugMN06c9lp9Jt0QK9Omc0Z4IqkfK7iVsna
         flTw3Vd4JhGyRBRJhGpuNaOmxthQ4Hq/iTEwI8Nv62g1vsOXZkTWDGPAZZkAQ2YSfyyk
         MrrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E1Zv8yh+vhbE5rQeMKvZtAr9WjGTLA+JZC7/GkeTmqU=;
        b=m+AlL8VRCUVuEQvUB4s4SLMqVsrB0yllDEav9ZJxbtjzranp3Bz+8KA0n9pQiMFnYj
         1t8xwZ8f8H9HYNxl5Ift7u5awIFh8zelwW91/FsFi8cR7OQZGzGbG7dJOm7E+j9CCZXf
         LUy/zLojkrWiPKmfEuS0Ca81JwBu0VZeN4y4JdkHNN0noBW9BeN5oqGh4T3oFc9P3QRd
         8VH2shK96HKFGCgp/IsimpPkoz+jhUJOYsSwq2Jt/T12afgNuoLbZwXSTR8s0jM0O0oz
         q7+mB7vV2+Py2lhscjP48hpBYOnNxmTjHeWLSLU2Qt5EKId+CVqea9LOH2a78vvg1Yla
         a1fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E1Zv8yh+vhbE5rQeMKvZtAr9WjGTLA+JZC7/GkeTmqU=;
        b=MPEasIFAW2S7XPk4t1fTA0Lddnl6P1KUlLtqxBdSCaPvvlFd2BWioC/rCKiHRYsyga
         DtamGX5kERJJY9hGxri5+Ev7eUw+mCiPmQ4CETqvzvH3BGxSeKzDbLCkcm2BJpCaw1Qv
         k7GfkWV4yzPFoi771gN/rsBlTTsayZ/uDwz7hgEul+H2FAqteEQhbaw9aW/X6CueNUyk
         2JLnPPvFHc72VuyfkoLeqiKDgEE6QxxGWt/ooN/irj7cQjroU/fI0OouraiX5Uu09l93
         9enl29wy627KaejNfdiuWFdn0D0rLWt3SD9Pd4Vh9zc/DSVNVfQkZUB8UMX7LBE/gnSC
         +zFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338CepZem6sQGG8A76TWziLlyxyzHxHaYbl9KTmzmJv+e8VRtBC
	3up6KCrstusc1e4aIomqCR0=
X-Google-Smtp-Source: ABdhPJzCEE901vrb4OaSN9H7RaYe//00izj48nqEoj80lynC9tbCmGUoGMXWDBa6YT0iXvS6Z2QNAQ==
X-Received: by 2002:a92:7d0d:: with SMTP id y13mr6871760ilc.269.1617283537693;
        Thu, 01 Apr 2021 06:25:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1c85:: with SMTP id w5ls1298015ill.10.gmail; Thu,
 01 Apr 2021 06:25:37 -0700 (PDT)
X-Received: by 2002:a92:dd0a:: with SMTP id n10mr2419027ilm.44.1617283537432;
        Thu, 01 Apr 2021 06:25:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617283537; cv=none;
        d=google.com; s=arc-20160816;
        b=m1+GwNMoVJvkaPeB9Qh6Xu3gO+jURyzkZReuOB6/LQ1YosoymIltlEXWASV1XuItad
         +7/01Lkka6pbwTJEI5q7q07+pNcJfF8F8RCwNWBojS4uAk4byyx/g/49IxH/LmP/x8KU
         8q8Gu+2Gbl7q7wIPrSinL04XuOoz87dveVI/nuIDCauPHud+PwCqCDaskn0LB2ZADju8
         aa5jHGVq62f5/Oo4qnvO2nfImb8yEIwGupY+ANsAzbDuiH+F6g+nDcxrlSFN7sbALWxA
         SlzWrz86pSACVBvk5+ynUpQc8zGmvNKdxGsjTnWwybs7iKO/hHubk88c79iY2h56nqxm
         skjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=rD4XchaaE7mQxMSkh0sKt2QDG4s63BO7d2GVmEUcGUs=;
        b=TI0KzSlWSIOuEmjLnhcJxeMlKcCfynC92uv/i6J6PGrqQH8QMqT73t0ylFd8Kej4yE
         mXLG6W1cIe7ixgm4qfH7kNhQng57PV60LVG7Zjn7Gg7WNw4QTgvYvXeh7zKzqhzhJSPe
         9YiBx8L6wS6y/+yXb4rK0wHTR1LfKyKZyLz4fCWuPqMEEdOLHdA5S6BkFmycFSWJ8PAq
         B9659nU7iMBZuib9dheHw4eKmf1h7xXwyDI5oTSfJogqFVQfwI9ikJYwCRXjDNedcYtZ
         JF1uoGnfNNtvI2OpVlTptn84qDYoNS0praw6Pi/X7m/Ob3YHa/Qyl5/MKcfaS3oCbdGJ
         COKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y13si219570ilv.0.2021.04.01.06.25.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 06:25:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 58F866108B;
	Thu,  1 Apr 2021 13:25:35 +0000 (UTC)
Date: Thu, 1 Apr 2021 09:25:33 -0400
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

I would only do double slots if there's room. I rather have more topics
than double sessions.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401092533.6b5ec086%40gandalf.local.home.
