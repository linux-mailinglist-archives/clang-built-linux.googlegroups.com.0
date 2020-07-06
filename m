Return-Path: <clang-built-linux+bncBDRZHGH43YJRBRW2RL4AKGQERYMYHMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 246652151E1
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jul 2020 06:49:11 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id 65sf25164831wmd.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Jul 2020 21:49:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594010950; cv=pass;
        d=google.com; s=arc-20160816;
        b=W0rvEOLvVUqTxvuGuPnjklKkp6PNtj4mrR46/+Jknjd+ESvpD+wEKW6moz4MKBKirs
         E41e5tSmXxqAh8sZy+aMC2jkdRkeKOu8NOr8+x4p9K4ZAgxMnU34LPEELv3RF3yT9Yy5
         632fLsgjqNTadioAI+m3fQ3cOdf6ybTGWtqzNt4qSxgmYLpdZK6DNrxd4oKWizHCbOYg
         tamXfkfBC1PWAMcEbgQYJvAkQSAkB1ESReE97tqyLcM+njXCrnrBBi2Nhc94ZnGjvLWE
         iGZSMiYsJcpIR7AguhrqOqLnSs1xEZR8PtdWYRLrRnTdPnDZYds89zSjZ11kTe9FoEUr
         jxOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=VlB3gCKdySUGLFLxfj4ZiOQJ9Ajs2s43gYvCwP42kBI=;
        b=oczPboXm3VSzzYSYkR0TZIY9H4eBpbebG9uLF9LcYwVXqfRAPhHc0Udb/8TG27c6gu
         nESENoF4R+AEpKEh7tFnDee/3EBpK1B562+mwOhdiyQyQoFznw1L/MPbIr9rGBWquyCj
         yfom3lenDAurl1A3MlNYXgkcIAvXaI46VwtBQIt2OPD/lj2pU/+M9GXrgh8HVFBPrsic
         p/wIY+Qzih/fBAAPhF0yns4T4JhONUyEPmYTUVVR3FTJkcSRZs6MilANOEJMwuyq48s5
         IbWA1oYAGBkSst4YD10ynRoO2QVMuONdkambIOyodl81mKmkwjR93da2dl0k4rcsqPis
         YICA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aufaQjV4;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VlB3gCKdySUGLFLxfj4ZiOQJ9Ajs2s43gYvCwP42kBI=;
        b=r82J10X660Xne6bCCpXRrEa+emyeS/9Lujzym71WbjA4+LLs6mQwM4e5WRnvE1DiVz
         1saS72lQIzFtJ1hXY7SaMaOEpa9cJBK53uE88SqDazx6AaHK44wMJ8ZaT6KtEeY21sex
         wGdlfL4QEj3Uuz3ey4RCEx2IeDxEelJJFSi08IxH4H35lLIcwhFYeVUqGN1rbXMOLf8H
         MSSxY8lFQyEJXopo9EdAtkvWJalVhneBFeKCYbbKK7FpoTzLErlwuh9bJgtBJSmx7Fke
         tXdgoI6sicYOqX5E2M+h90bxzL8+jFhzwiElItrmGcwSHUHmlH4cUej7wZMc0mIWfbWz
         pkvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VlB3gCKdySUGLFLxfj4ZiOQJ9Ajs2s43gYvCwP42kBI=;
        b=iR2Ua/dS+eeZSVZqumsey/izkPmVG8pJ/Z3yRaQMtmQ2SLyTRkwNte3zX1M38hW+x4
         QpegfXEMFynDmffNQhCckFREV4uuq3FKlJv8xIvu0Y+MgFMtxKn/A2sgy5ArGX1OaTLJ
         cK0pByhDDvcwgiCHwVxa89Xvzll2Nkcs+C+14/ySytNaUHjQUp5Yp5JRIN6zy/Lj/9Ks
         du+nOqKgMKGrzVO1zKqxSm3Q7UkfzP9tK6baCWi2/a7EGmOjkzUHNseYR1ATtFQM7nId
         dfy5evZMTYyXkncrr4V857IZK6uTBePcYGzPVwG24GwHriSJAwzlfkpS5hIX2JCNmdFZ
         Y7GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VlB3gCKdySUGLFLxfj4ZiOQJ9Ajs2s43gYvCwP42kBI=;
        b=JFQ+VpfvLWHQXHxNbWKu+dLbkHcokOP4Qi61SBCT/BrDhvWhGddSl/hhzzoINIoXcH
         pLeN/IIwxA4Cm5odCnvLdm9SLWz1rpMPE0ElhnPbBrCK1z+UYf2s3vvIBabyIpx5nm9X
         +dym3DsgjksQpK/xw3YEKE8qEIiApcjmiqiCmH1svdBMYjljJDyf8UVLk5Uzv4dLlpEI
         q6YMAxQan2EIrIgkIdDi1yP4teokA3nJQMSvvG/5Sl8/GPUDg/14kBPYcn/QOunjlqlK
         KQE21CpsoAcowcm8YBfn/tg6JJDCpRvPSN3acK9eF1RfnbsH7ckEejigEgBX53V0m4ew
         0Img==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Y+wxTBJhGIUkfeYJnr2ATvmOny+eoFTxPaon6Y9GcLCnGXBYn
	2DwDDTz4FYcxqCOif5Mmar0=
X-Google-Smtp-Source: ABdhPJzWVeJ2aICOLcrHAI25kROcU23NfeYPq0WWj/Zgz8ndbu8ugdaA6F5zbmSx7WKYo7d4HV1Few==
X-Received: by 2002:adf:ee0b:: with SMTP id y11mr24463419wrn.360.1594010950798;
        Sun, 05 Jul 2020 21:49:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2902:: with SMTP id i2ls7549841wmd.2.gmail; Sun, 05
 Jul 2020 21:49:10 -0700 (PDT)
X-Received: by 2002:a1c:6a03:: with SMTP id f3mr27566858wmc.58.1594010950248;
        Sun, 05 Jul 2020 21:49:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594010950; cv=none;
        d=google.com; s=arc-20160816;
        b=OHB6JI5LfVVGwzAeesI/rs0czsVVd6xbvoxqPB0EeRGm+uQqDxSUTwvqypZcIhybqo
         cMZ17OyK+ww9YVqOALDH2HjRshHhHXsoQWkh12AGr7u1fr0RiGNIQE7q7+hNMLXsnnuO
         tUWxnqj8Ue1flsOaSO6teUA+KP1mraunSYqLRm9UQnMMiAytMlmha0dSp/hCTP3VaTKy
         BhQZWxoHbZgAzcUB40G0WQ3jfvDCkaY+E7cdeQswCqbJ6vzEN1sPbzkO4M5j2aXTEyoS
         +SwdaZtCLnZOOG7WH6lb7nzVy0ikbN724QLUHxTF/P5I/H8kBmfrpTVyrSlqvrEJ4iwS
         myxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LlRkNitp+HR82fwyqhAOC5T4sKDfW6mx6YbCDa9qCYE=;
        b=doYOO4Bbeo/M3TQjHEweweKv9EFHE7wLprQwDeixCRDlCwGnH3GNqOLgKwpr7duVbe
         /uD09oTvyRaKeaw5XNRmu2ShVbMzy5UrgVisYI6i4yKZeKBj1NICVWyappVfppoVRW79
         fYKjGLRWMJc6/lrwpaJF8XJvCqbKWvsmmd6VeKxN+HdqhndeY/IPQ2GvwoXpyPlo0OcJ
         Iku2+XdqaiuAkIYL8UVrDMAjsUoI2cwziN8k6k9teCWcLlcSL7MEuYSS8JqmBeuHKBLF
         lOaqiep7CmklLbVYJeGwNobMgw379LrDETNYwZlYgbkw/eSgKxhW9fc8IPGtUcwwVjR2
         RFpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aufaQjV4;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id y6si858986wrh.5.2020.07.05.21.49.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jul 2020 21:49:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id t9so21806038lfl.5
        for <clang-built-linux@googlegroups.com>; Sun, 05 Jul 2020 21:49:10 -0700 (PDT)
X-Received: by 2002:a19:c389:: with SMTP id t131mr15690870lff.130.1594010949775;
 Sun, 05 Jul 2020 21:49:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200629085911.1676554-1-masahiroy@kernel.org>
 <CAKwvOd=qe5KE1vdUYQmpsW2zmDbk5i-MgRujs9B7wqnAj+af0w@mail.gmail.com>
 <CAK7LNAR49jFZkEmBqpACE0V_-VyCXfFRcKe1Zq+cqO65QX1ozg@mail.gmail.com>
 <CANiq72nE+1F3yM+e9XzfphzOe3mb9DUcRCAtPuLMyFE4Rh38pg@mail.gmail.com> <CAK7LNATRAuEXp+Wz7f_VUTSFS4jqmdTE4Xugi1MZozimsj6zuA@mail.gmail.com>
In-Reply-To: <CAK7LNATRAuEXp+Wz7f_VUTSFS4jqmdTE4Xugi1MZozimsj6zuA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 6 Jul 2020 06:48:58 +0200
Message-ID: <CANiq72=LOgebNs7kwLGrkgsM2pr=dQG4F1VWskdndAh39jHWcw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: make Clang build userprogs for target architecture
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Sam Ravnborg <sam@ravnborg.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aufaQjV4;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Masahiro,

On Sun, Jul 5, 2020 at 5:30 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hmm, adding '#include <sys/types.h>' did not make any difference.

That should have worked, because POSIX defines it to be there. It
sounds like you need --sysroot to point it to the proper ones.

> If I add -std=c99, I get a different error.

Yeah, that is the expected behavior. C99 does not have the implicit
int rule anymore (unlike older C) so ssize_t (an unknown type given
that program) is not being interpreted as int anymore (which is what
triggers the warning later about the mismatch between size_t and int
in the format string).

> In contrast, 'size_t' has no problem.

That is expected too, because size_t is defined via stdio.h (size_t is
a C standard type, ssize_t is not -- it is a POSIX one).

Hope that helps,

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DLOgebNs7kwLGrkgsM2pr%3DdQG4F1VWskdndAh39jHWcw%40mail.gmail.com.
