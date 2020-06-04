Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBG5F4H3AKGQEP3HFUFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 071C41EDAA4
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 03:47:09 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id y16sf3720539pfp.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 18:47:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591235227; cv=pass;
        d=google.com; s=arc-20160816;
        b=gKtckFtH3J+2IfZg5ZUGvcATPubhaWfgfyt7M2TLKFOl15SQMiEIHXeQUkDgfrLZPI
         sn+/SqTybZwiVPafQS6A5J1E62j07goG2BFsbEfIxqvmdIVsySidAc/2mhjbIm3+JTTS
         XOb7IV4t73Z3/jklk63pOzltG150gLb+SgAjuEtvFr31oXbjVubmXDEe0kBPD1OMZRiF
         6hyEF/G7TuHI1B+y6NOdLpc8UeKDGE6L+20/pIBYaBHX/fHpD0QKEB0hMUWgrBwx5SmS
         nrH9ti7G+3wmnEQGEYcICMhMdeawkPml+A445KDvM/fkz3Vh2GqWy0zv01OKAvhgYpiQ
         sxLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cDBcSfiUkQnGumMY/O2e90Owq21DcULC6Nfv3amNqvE=;
        b=s44Nsq7HX4Be71y+qY9sDmXRGPQMtwAwBXDthME432irTE/rmB5EHglUfKsloZFNPJ
         KbbECyD1fs2zBlf/lJiiDgV3cY8+lnEU2+IV6UkBO5FNh0c8gnj6rSZDTB+UBbM4GTtJ
         D8FG6JBmQla5zgc1gAMygmNAzEpQp8yW89+39Jx3MombU26gfTkH7t0HW7lY5+DVBM0b
         sXGSKOujt2hcZD7mmX7bhg0ny9xB7CZ9eYYXuQRo3l4uip5QSeNv/iR9LAf6Efj3+c8Q
         hY+6+3d7wOnOOtVHMXV2Y0xwXPt35GLVH77vfpNxdgHoRbOeIhTW0iyMpVxgKVli6ICL
         PrlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RiWcHHKI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cDBcSfiUkQnGumMY/O2e90Owq21DcULC6Nfv3amNqvE=;
        b=XAuJQJQiZDAD4kzdHqZab9iVgatucyW7265O2NF6qEbe4TF0kpxzWaOYzOCyWGfQnb
         2NKtXDTF6yQQF/m1Kep/2xJkuO92YgcSdGDTX2Mk1i10Z5MBiBcx+sOkcfwsWk4ooCb5
         3PQwtDLnYrz2BrEyJIjfofHQmLkmhdayvZuqrXbNuxl2rt3yOONfWjn/4wX4StRefLZN
         QcceyblC5Jn534IdRHx439sZPI1bOXbbHg9A59B5ToTIiGh8NUWU3latufDXFZPfe6Iw
         7BEeps52/iIKMMrO4BoQPYfJI6nG5tESDm1iZJ9HuiHMaXzlZcWyxhyy9Kqx8OB0HFez
         OXvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDBcSfiUkQnGumMY/O2e90Owq21DcULC6Nfv3amNqvE=;
        b=H+P7pp0BhcJEn8/6acmLAARzi6HUvQr/TIw22yvdUdnDqrFZmdU/PeRU5J2jg0dgIv
         9EdO/Q7/Qacabx+dHJqlJpk4fBLERg3sG0bMcB/Cu5kfFcSQhX6axqaumdIvghdrCbbs
         xJihGkmXih5qCX6HbNLXrPMznR3YPyiU8trwR85V2cbs5SrRy6XFLpr+csWbd2YeM9PU
         g2kYrlSYVjpccGajJPNyI8lJI99W2krx00f6SOflzaxewShqE2ZJnFpCP2/1YaWPITNn
         //rQlVfBMmxcXqzmBUBWNZrdnBKs6npUbXuViJBB+S4OwbPwCBfMlVVcmioz5NLTelWA
         Wbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDBcSfiUkQnGumMY/O2e90Owq21DcULC6Nfv3amNqvE=;
        b=nVJCTfGDF+oSELMHUoZlBPfK/y9ohohDFIRYrznO+1W7BOboSK9AF2I6JVB0Hu3yo5
         KoHBo/EuvKURpD0kPGZswyYAAcdRAb5z8iOzo4UgX8itBKlomCxO6q1BaLvHTqAAlLzJ
         2ZxDrXhRTcNTjtDx/H9vJNIdefODeLKzoru5RoLbr1Ulx9v+PvvAZAiCsRIgrnqVvoFC
         KB4j7SnV8t/IuImkDLfc5g3T3lzSaTyf/9gjXLxW08khgr/eImKeCnQd3LjRTqfntw6J
         WO0kmtk7V+4+Dc2+OaufU1hmAkP9s9V9RbEaZY3FUvOHDuCE7HO1qaq70EQekz/FHp2H
         EaPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cGxJKCzlcW63eEjL2CR/k9Z978++nPr7s01q4VBKCIvctx3hi
	rPrhYCJfm7K2C96pR70EhYE=
X-Google-Smtp-Source: ABdhPJxWIjXSZDKxzQ9aX64P7pFqGBmFNBRskHfCovIs7REYVZMOj3YoD0LOHB24qRDWagMTu2eiiA==
X-Received: by 2002:a63:1460:: with SMTP id 32mr2185508pgu.334.1591235227689;
        Wed, 03 Jun 2020 18:47:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c70d:: with SMTP id o13ls2427976pjt.0.gmail; Wed, 03
 Jun 2020 18:47:07 -0700 (PDT)
X-Received: by 2002:a17:902:8681:: with SMTP id g1mr2456670plo.161.1591235227248;
        Wed, 03 Jun 2020 18:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591235227; cv=none;
        d=google.com; s=arc-20160816;
        b=XXgWOP9t0NupTcDH2LbMKZIXW30iZOzH7/exgm+S6xthizSaQtAiR71KpMMhuJWwJr
         8N3rBw5/pgR/z6s1K+214QLiWlK1k4GoPAVssSkIdgpBNiJXulD32GU6Bqyvo+N2BQLU
         La8Dq4Jjt6kvmI6d8EFaleG3YDgnC7DMSgbwR/ChYnLCls1wUyqs4MkC6FhZkezxRjL3
         BJCCGWYuJSiwEbVmo6qXtYF+oK7dAv388IEe71yclWyapwU5GnBp0ABKuf8/H0sUXkw4
         OgmiEIwU5QGKoD7Y7pKEm4anxdFHKnuTGiZCAmHc3D7d4VdFayUcOHrrsByjd3+Qdv/O
         Cpmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0zAwzlZ1ZoyuyLwQ6ZCqaX3xkKXNzrbPMJM4RJOKE8Y=;
        b=B6cIvFOdQS1ximTN+Oi7ItIvJeH8ouhRgeyQjpCIZZnyjqeGafkqsR9+htEY7GSQcA
         0MoWE2nuKveDtGMo9j/EshQ44PMSPQH7V6jWjy6Uojx9pCyPnR3UVHFwpfSD1dJiDprz
         Hj40F+65ewwPCGCNdqJywpQF98sOW1PmVC23GKGBRrTmo7xHGGHqvvAbyvtmdijH0pAZ
         O30/ScDNR26DfCv/NdZeLtz1/mARAzsE+JBfDl67YNKNT6JKFZ1vq38Sw9tN0Lpun5ix
         QM9ubXQg+EbtodXFlOAFlDcoM9OvKdsYPkNODiOAWndZEXzQjfYifJFSdPkyWQ1Q+J/t
         5mYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RiWcHHKI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id i15si274237pfd.2.2020.06.03.18.47.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 18:47:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id z2so4551374ilq.0
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 18:47:07 -0700 (PDT)
X-Received: by 2002:a92:498d:: with SMTP id k13mr2205901ilg.226.1591235226690;
 Wed, 03 Jun 2020 18:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <CA+icZUVZwjM9o7aNXAkYu8K2BQAajw=60varP4g+NizCqu5gRw@mail.gmail.com> <202006031840.E2F0D15D8B@keescook>
In-Reply-To: <202006031840.E2F0D15D8B@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Jun 2020 03:46:56 +0200
Message-ID: <CA+icZUUsfZpuwfyEcbBKOf7AJF0-Ao8b1kUscpMJ+-ZdfZotsg@mail.gmail.com>
Subject: Re: [PATCH 00/10] Remove uninitialized_var() macro
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, 
	drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, netdev@vger.kernel.org, 
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RiWcHHKI;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144
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

On Thu, Jun 4, 2020 at 3:44 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jun 04, 2020 at 03:23:28AM +0200, Sedat Dilek wrote:
> > what is the base for your patchset?
>
> Hi! This was actually on Linus's latest tree (which is basically -next),
> mostly because I figured this might be a bit of an RFC but if it was
> clean enough, it might actually make the merge window (I can dream).
>
> > I would like to test on top of Linux v5.7.
> >
> > Can you place the series in your Git tree for easy fetching, please?
>
> Sure! https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git in
> the kspp/uninit/v5.7/macro branch. There were three small differences.
> I'm doing the "all my cross compilers allmodconfig" build run now, but
> figured I'd push it for you now so you didn't have to wait.
>

Hi Kees!

Thanks :-).

Regards,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUsfZpuwfyEcbBKOf7AJF0-Ao8b1kUscpMJ%2B-ZdfZotsg%40mail.gmail.com.
