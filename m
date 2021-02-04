Return-Path: <clang-built-linux+bncBDRZHGH43YJRBVXR6GAAMGQELXO6ZWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F4F310047
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 23:44:39 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id w4sf4835097ybc.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 14:44:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612478679; cv=pass;
        d=google.com; s=arc-20160816;
        b=bQc6cmyj+14yKw1kR30lDlqO9Wqtvr5ASE4eataNlkpYU1SLimu3lVvKsfDifD+TqG
         hVm45S31keqjWoOYGuj/K7xx9IzbWI67PLoF2YPxUo97TecGW9564IUMbRRLWAFl49gs
         mAYqlZ3niueCWYE+S8unNNc7UTuu5H3gFKb5m+zNrWqkKgv3B5SlzynZ3lMsgx2nogp5
         7j/g7zU8eiNjq4CcUOiFMX32gH9Nbb8MBIMdwiNGJu3y/R4lAU6uegRGokWDueIX02I/
         uGBsczHVKrSzHIxck9g/iKEmTu6d/6UX+qxTmMAhTqHzqSG+uW/Q6izUpJB9iQ7GHvJ6
         AWOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hGAOfPXNTUaDCeNIGnz00/8La+2uYQqCCyDS2RAd5AQ=;
        b=o4GP5iR7GIp/x99V/QS2inugFZCDiMpSKd8jghW20S4IFkAPUwLWav2cf8fBsfv8OG
         q4k5WKJtmTRCNQjqNrdLlHezgm2bP4KAPSQLks4xGbY9rw202sgtkw9hPKq7Y9qik/o6
         T+x5O9v2UScvuTYpwhONXP78jM/i1DBCTgyp69cBrrD/36YTDncWp4L63NlOpd8g7WFI
         OX3pObTI9t1y4lEi1Uq9QcPC7EOzWqilfMm+xu58VqYyo9ou6FGL0rfIG9gLbJwaRdRY
         2xJRDC9C+TbHybsYKqc1AptgtpHkVO6BFjO9glPULztW1LBRUNa882Y//S6Tml+p6DLT
         3n3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDd9vhuh;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hGAOfPXNTUaDCeNIGnz00/8La+2uYQqCCyDS2RAd5AQ=;
        b=qwtYm5zzyiirZEjaPZbytHlwgU2ZV/ChkPwcjYeAL60v2f9IUIOg/s8K8ss7n9ewar
         8bMEMQbJfxKoYlwIz0Nc+NpWLiWru+flZMD2y89dHRB65YRlgPWSQmIP3b4GT+VYYuTq
         HW4W2pJJgDxRKvzpgdSYseYjlIlK0Np748tK0XOYTQ3L/mtbLKkTLO3OQj7hJ5L12jbl
         ITBtTtl10fUeYT9lVGu5/TP2DqYbGjQDzoxGOoozf4vC73TKQHRk0Al25KdT55ZPYNfv
         XBzSAVJWA+MXr4sWO9D6yN1bydRnFsjDKES983S77eu++S3CVilGk5JWkztsOkbHrNos
         PYhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hGAOfPXNTUaDCeNIGnz00/8La+2uYQqCCyDS2RAd5AQ=;
        b=CSJuZXDXGYXWUuvxnitkj3YrzEZaXWMLChSolb/lRj5dd/sOxXV8PL3GkEpuVE6RWa
         g1Sfla+wC8di6n1sVqEpuqURRAWwMpZiM+XdjLAWyfes8mm6LbJLNwyxl71cZBmGI8A6
         L1aWy9y66dkmOXK2EOBSoRgmPnxvf5qyEHtSmkzeDbW6KlddKGNdHw2UqnahL3EBXC2K
         7OKphOJrjXD1ePAIO4zL2ST1kf2PT5Hhd425YxzDxbtq27Q/WzV1ZQM122HzBCfeHYm6
         lzG6IAYTIwhlsaG6Wo/fB96IfRRXW5kgp+CIIFE3k9UWjzdRrSBChbJJR9Uo+CXyjKbq
         P0MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hGAOfPXNTUaDCeNIGnz00/8La+2uYQqCCyDS2RAd5AQ=;
        b=XbhxyKMYdLdJhHz4P2EJaYL9LEe5exBTLw1z23c6NlNviMIUDt0R7Npv+5q0uNc/f9
         vbcfouSkruVk7v5pPMgKPIAleDWBBJ/c9F9vW8gH3c6biurnP/YQt31jxrfxZionjihS
         +QyPZe/W3oV183vSa2r3ozODHMmzxzdbl8gwoP6aOKXyLzxgwO8OwOXZVjA5tyOEZ3s0
         2ik8dAPJjwNqv4axvPpVz2NH+rVyNbvtThcV/Ks/gZRM1axc8+Jf8Z9cm0e+S6AiniJf
         Og6PWo9zkmCLT6hMTNY5w2UuAjgOWhxW/5s0G96t5y8ejWQthLVc5y2vvYdDgy0gG/By
         36EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531alpZXfkMSHQVhis+cehkPJxQUUn2nrH//MK0I2UBrsVRzUYQ8
	lUbhp/3YifxyAFRINGPWm5o=
X-Google-Smtp-Source: ABdhPJyOse90Kj+MF29Pdws5+nUVswyBhNfSx9K2raC1bklHGEgOpMPsLP79gVDbdvIDWQid3TYanA==
X-Received: by 2002:a25:2b45:: with SMTP id r66mr2125228ybr.269.1612478678875;
        Thu, 04 Feb 2021 14:44:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3d03:: with SMTP id k3ls3414043yba.6.gmail; Thu, 04 Feb
 2021 14:44:38 -0800 (PST)
X-Received: by 2002:a25:d9c1:: with SMTP id q184mr2274186ybg.115.1612478678456;
        Thu, 04 Feb 2021 14:44:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612478678; cv=none;
        d=google.com; s=arc-20160816;
        b=AWJ++kp/a8C+r+dSKR4NZGP3sap96UJubkK8TqeRtvdD8LpKSevIgBtTVlRerrTZAw
         Bb01z3vCLKrbaaA1AIxaHjvWlSiQLB8HoPMEefqfHxNbFD9hpeEOEwJHm0UARfpXXZqc
         V8YjXs7yJEpYvxK0yq9Kt/1Uyi/0+6Z0D81Epo2bd/AU7P07sZiqurqAmBkrX3ipyYz/
         bCwypdaBWy9iuHfCvxnrB5L1sQHNSd0Eg13JNXJrwB/SlbPLwfkTRR9tWbVMyu38WdMQ
         bU2Mv1Hy1S7nxIbSO+nP8qh0BiAb6uOOmewNZEwGIpFJIlQW9SltOAiEUkYXfLe6rDzh
         Vjsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gJPO4TLfxJ4qisLm1hjCjbL2PoIhlzJQzHOd+FnCNI8=;
        b=UXmWwN1pajxg+t62N5Wh/oOt7f4TfKQYyv0Ajmi2gOZdcmqfiXwkZsn125tcLzoCE+
         laOWkrkPxDpMu9zxgiQ5OJZyFrGoH6otHFZF5E8GryYBhiY4uiNjD1O+lWGew6fvMg8X
         dRCzq/jhL0SsWbhO+Uir4NrfS6O1HbKckwPGD+EVlh85yydWA462uaj8xcdkMtrcVJ05
         wkuR2nOjHWS1LZR4lXualE8qV/zYrvdhApXughjAyRYAGvWv+kViGDE+MgOLEEMvigXz
         9mPjKCGX4N83mARPT/lfWXLwq4vUnSnbn8DvcTawxj1lPG8/tlapz89Np/h11SaeGej1
         djnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uDd9vhuh;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id c10si445557ybf.1.2021.02.04.14.44.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 14:44:38 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id i6so4847144ybq.5
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 14:44:38 -0800 (PST)
X-Received: by 2002:a25:e6d5:: with SMTP id d204mr2079628ybh.135.1612478678274;
 Thu, 04 Feb 2021 14:44:38 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
 <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
 <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com> <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
In-Reply-To: <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Feb 2021 23:44:27 +0100
Message-ID: <CANiq72mB1GWRF1OudJyizKngniUQdU89d_SP7pV2cFtgLyhGpw@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uDd9vhuh;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Feb 4, 2021 at 11:22 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> If Nathan's cool with it, I would appreciate it.  I'm proud that we
> have folks that would volunteer to do so, and more than happy to owe
> more beers.  I look forward to buying those! Being cooped up for so
> long due to the pandemic has given me cabin fever.

No worries (I'll just choose a very expensive import beer ;-)

Joking aside, it is just a few emails, the guys doing the work are
others (and they are quite busy, so this will likely take weeks or
months), so we can buy them the beers.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mB1GWRF1OudJyizKngniUQdU89d_SP7pV2cFtgLyhGpw%40mail.gmail.com.
