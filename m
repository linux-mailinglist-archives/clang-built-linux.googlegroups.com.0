Return-Path: <clang-built-linux+bncBCU73AEHRQBBBREVS6BQMGQE35AJYMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DD0351527
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 15:29:41 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id o70sf3715972qke.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 06:29:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617283780; cv=pass;
        d=google.com; s=arc-20160816;
        b=FhlbforQRrwuzsGvwEkoPGiuHGbriHUz8bzLapChDsYR84ZqxCI8XqdyyjTz/Li6s2
         QS53ggRbcLf+nHF30j8gpXMXNrplTZtza7eI2fsyG4NvkNbSmYCSLlG85Lr9jpsX+1tz
         6XKAkjovBZMTj7nqKdvQxkj2AEj7CsuWnGvs62xw9FmrdmiYR2YjuEYgC3XOBWeqBIl+
         spN7L/rQVcYFJDuuH98HY1WTUMDw22jsr3i9/Y6q6cZ0fgC2f1eV2tN9MmM8CJdE+zLz
         8kgqc63NxQfH0+XpAVIgtqLy4P7Nkbcq0va6RVomPrDv8C4Ng2o5+FJcfOC65TdQY9lk
         xXgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=nTrz/vPTQeWkw92P0Y4rVZOaSi15hiM8umwOdxMlwLQ=;
        b=bbHGBfPm92ioz8VzfW/vMKQzEtLy/x40Sf+ocpGjSH1rUNcfdyXi3E7Qgz5qqtVJ3Y
         oD8xBAsBI791x9NTPr+zMm8YCtoEGGtqUD+PkDYNWVrObi77QoKNX4tZXM22DL8UwvgL
         X2RwMR2J6xGA2/+elfbLqSD1W72Fi8FwUVGrwskaoXW/jqkExMqw/FIzGb5N38R9EKmm
         W4rzyIMdGvp/CXvsugR6jWwN3btjQSIxG6ly7aBBAPT0iTzZ3H/hq3/G5NJL2ZIeHD2H
         RhydEROLoM92apLWyQJfYpK+4qyw7wyuH7paQ0T+cyPfArvSVFUTyYddkfFUsZTWDcyz
         HRfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTrz/vPTQeWkw92P0Y4rVZOaSi15hiM8umwOdxMlwLQ=;
        b=j1ydAx1YEOn/brcOXn32COPCfP7Obh6XpQKXurR3nbPLTkf3t/w8hPoutOA0+izAOT
         uTVluEgOqzFxi90Ikl3RLG2Dhhx59TGNTD/68UavtvbFXdiEYYFAfTxNRqmpDkAEOMfs
         gPoR2ZoXsaCKBijS8MU7p3mylGv46SZ0hkVvwq9Uym3vjz5sw7aeuDYhdTBq2iPbL+58
         632Z3pDwaNU7aDX+8kKGh5O+ojAwPZq2ISEOhLZp+z+xnMs+UsnMM85CWALGI4hYK1hf
         LnXLpi68wXFxPZAyGBCimaOF2fLG25r0cqA2Co5thhodVf1mF8hmklwyiNOPs7/7d3DV
         LAiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTrz/vPTQeWkw92P0Y4rVZOaSi15hiM8umwOdxMlwLQ=;
        b=aBAJrG45icBnGcY4nSKKk4qyzXygWWWSRqhCEdBPkz+UzoQo66iM3p2+ns5X1EXZah
         lwqW+ekSQzgZkSL+CyYIX03RU6rH3LNCmS4Tb7xMOnR9FXQVBT2m5gIe3sZAcSrNE5/2
         KL2ZBIxzyxjzViNAWIYte1pcYtR8kR6oHw3aH64qdB1Y5VXRvkE8sGWTC3lkX2W3bIsw
         HjkxM5bEuFbNIoA9SoMH46jTTBl36hxzr1d0q257kI5Ror01HvPG2KoNok+VHG18g/cl
         4gCCndUD6mokwjRA+cJSuFw/Drpdo6ZOJaWNX+zP/TBwxX3Zio6OlhR+Ik8yTLXI5o/q
         wzuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xuMrSIObVu/8wxE2nKnK56dhQ/prZQNKdNfpHyzlR6MSzhbSA
	g6fRHJ8rR5nYHClWEHZv/C0=
X-Google-Smtp-Source: ABdhPJzLZOCeQxwL4QDEhApW0PzbMXGp7+UZGPsNeKj5OViordBOYnh0z8WyLD5rMKHwnaI+ln2EiQ==
X-Received: by 2002:a05:6214:553:: with SMTP id ci19mr7778303qvb.18.1617283780359;
        Thu, 01 Apr 2021 06:29:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:400e:: with SMTP id h14ls3254341qko.11.gmail; Thu,
 01 Apr 2021 06:29:39 -0700 (PDT)
X-Received: by 2002:a05:620a:218e:: with SMTP id g14mr8203478qka.111.1617283779914;
        Thu, 01 Apr 2021 06:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617283779; cv=none;
        d=google.com; s=arc-20160816;
        b=GTRTpChJNDiyM4NG2aBf0/jMw44uWToouFpsoYyPpH0kaZcEKh1TAlO2rDC1i0w45X
         gB0f223K/q1Sv9OuiqMqeDpD7H2qm2VPucn7LRPLW3pJzHJes9NvO/3sXelBqtvc2Fda
         UTTezI/pw/529ilTYiWIPEhz/S4Hsw8snYla5QuOzqewZOqAx0xXZ/zi6i/V0w8Huh2/
         uuw1DHWd4ZTSukxrWR9J8+58BnfxFreiFhuPR4f1/W1gcYNbeRrfg2g19/WL6r5UL0mV
         zQ6fGF/PRdBf6l28E42hoFi6+3GzMslX6SKMfEMXHaSwsqdG/6jCQMuDa0/MIWXoXB08
         bLMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=ntSZdQUUp8Va7kxiZEfMia9uf3DEwO1t400sQ7y8uU4=;
        b=mkF/BQLwM8B3CQPJEmh57RdC8QnUrjUEzjKAyr9lw4WJ9DCYZsoKfv8BraPynUd0u2
         EJEYLdnMW/cHvkjYvurDMoXRo1C9G2rlsDNI4NHdZXJ7YubLHlfPZLIc4tNJcav4/uf4
         SxEPlEEQVimPG03xrn/SbN0ouWvjpmLns6EDJMLmUCM4iAYIuzx1RDOPzXrdvGweHY1P
         hYihoIOJUBO2Azbem2+xSJ6ZvMNMDvzdZ2eYO4CD7HWj+KTyA70c84oM5d7qWC/Wcn8t
         mpgw+I4qMd5L3fc5rdbo1Pg8TAKN+Ey1555dJmurv2ubxFaCXJ6YNhUr711YUgCjfou6
         iWcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=xJdX=I6=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d3si438807qki.3.2021.04.01.06.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 06:29:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=xjdx=i6=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B3E0361245;
	Thu,  1 Apr 2021 13:29:37 +0000 (UTC)
Date: Thu, 1 Apr 2021 09:29:35 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Elena Zannoni <elena.zannoni@oracle.com>, "Jose E. Marchesi"
 <jemarch@gnu.org>, linux-toolchains@vger.kernel.org, clang-built-linux
 <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>,
 Florian Weimer <fweimer@redhat.com>, Christian Brauner
 <christian.brauner@canonical.com>, nick.alcock@oracle.com, Segher
 Boessenkool <segher@kernel.crashing.org>
Subject: Re: Plumbers CF MCs
Message-ID: <20210401092935.43d3ed54@gandalf.local.home>
In-Reply-To: <CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
	<87o8fa3oua.fsf@gnu.org>
	<403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
	<CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com>
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

On Wed, 31 Mar 2021 13:36:03 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> Steven, sorry if I missed it, but can the conf organizers pick and
> post a date for the deadline for Call-for-MC submissions? This might

You mean for MC topics, not the MC itself.

> help MC organizers plan for putting out their own CFPs, and planning
> deadlines.  In our case, it would be figuring out whether one day vs
> more (if possible) or splitting the MC in two is necessary by the
> deadline.  It might not even be an issue at all this year, but I think
> that's the only concern folks have about doing a single
> kernel+toolchain MC (vs split like last year).

As I replied to Elena. We don't give out double slots when an MC is ready.
It is only given out if they are slots available after all MCs have been
accepted.

Since it sounds like there will also be a toolchain track, I don't see why
you would need multiple MCs along with it.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401092935.43d3ed54%40gandalf.local.home.
