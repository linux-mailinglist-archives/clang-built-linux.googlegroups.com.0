Return-Path: <clang-built-linux+bncBDYJPJO25UGBB35ERH7QKGQEDOPMV4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF0B2E0F2F
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 21:09:21 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id c7sf8045665iob.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 12:09:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608667760; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCE9qBgLYKSjRO7s1341bAofUzrNRSWLPTA3exXaoCnK/OGpjV4+FvH3qYNlAQBu7Z
         kGxEjLgZtfcB5F7c++IQaMZowgpdL/XFROb50HX7Qhht2GTv6oP6lTUBHPBnDZvwih4y
         oKiGX9ZhsrskEg4gbD38BNSAiW06FUxHO7l9vRa7tGweoaa6lChE2hAAsKpdWljae9Sv
         LiY6pIyWYWY9nQfWsYGlw//7qWhedYZKADiDzHCpipZzsYs3kYRYL3BjLgFZExw/KJah
         79DeO1AjzaGzPw0TkqmimYfnR9o2kyVV1leXQXkQ03/xnxB3iObitb0WL8Zm73V4boa5
         tYEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TwTMXBkBrXf7tVKU1sy7VJKcpO+aAPXH/8TIZORyLmA=;
        b=p718FCuiRXyiqLLRoCLaWnDuOYkFz4S6aXnt1p4N0Oqvpi9u8lEopETs4sTrfcUAIe
         eSr3jNlSe+UV0sngFtd4TGvqXbpeKy8R09BZCal6R7Ljc80AKC+VNIS6F/9UYglCvXAZ
         H/2C20RWqA8Jv2FXcunqbdRJqdsOTtFj18PHuW5kSmL0e16U54gwSh5oMq98HF/8jj2Z
         ikVrgS9MDP/vrkGER6WqpDL4XqESLJgUHQy1k9/bFPTd2rT2InZPv+hbQOx0HhHVqOPO
         uKee/BDk1jXFoxwlFyCp4HXJs2NCoO0uKs1voeu+MavFgHdIBOT0/XmfEDQql3vlPAtV
         l5CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NYyLQEma;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TwTMXBkBrXf7tVKU1sy7VJKcpO+aAPXH/8TIZORyLmA=;
        b=WRjxgYRuorO3U+TJSVF4xca0wJ9TXAp3wYMyEBV9kIBZSM4IfCX/sEEJnCL6OuOQC8
         koFf8n6LGtb+zj4rV7u7SRt+TEHty/SYn2vo6YimovEu3qYtJlinOCMdoGgqFyD8iLXL
         c9dt2CP3KoakVbJWztugWBEhwuFv1jOT5YgwWu+3Ix6lKQPF5qd1iKC7Twjm2C0GBfNQ
         n1hEZJsBV5l73m86uSDd9lISB2UaAOmUtHDDqbwoKi8wd/EuFJ31LNcRTvOPZzblSZl2
         Z53zpl04PQt4AHZbeSLzqZw/uTCr008W74amp/K/338q44Tqwcceu528H71i9cl1Hn10
         i26g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TwTMXBkBrXf7tVKU1sy7VJKcpO+aAPXH/8TIZORyLmA=;
        b=YbqCPWD3MGiUp57lHdGpMw1V8U1PkCP23Y+sq/IPQmbJkdLU6GSrkd0AwlC8v+9TBe
         lKriir98Tp6L3qGzCvplD/oytjnVLX+lyYResr5/isbSvZGV32oMTdWBkwysK9BskkNz
         zaqKzf7zjzLInNOJG4ELAA9FDYqngV2TCh/QzJFRV1msKaxHkX+bkp5BK8uMJu5PG2Fs
         NR4Mq0kLy8mtKr06bBvabBPvS6laWi4YEB0GVnJhTHxMwInh1fy0xj/JANtp/aEIR3ni
         oVxfiqfqiUwnhwetZ96NVkEFDcHGpTw8iMW/7VgSpJO7TKPE1Wj9b+cmK24+xdeB1+SF
         /hig==
X-Gm-Message-State: AOAM5313QcBnvenwu673TfQlhDP5E2EarYt/9Gv1DljGlI1w4U+I6UrO
	Lplhy57mE74Uo9Mn22eXuUA=
X-Google-Smtp-Source: ABdhPJybXNWLhldWqt10ONWy5Fm6sbnPKYDWIFlKkEOt0lGKoysF6KqCjGlRLx+/F4UWmj+y/bhIvw==
X-Received: by 2002:a05:6602:1653:: with SMTP id y19mr19188776iow.90.1608667760082;
        Tue, 22 Dec 2020 12:09:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:dcb:: with SMTP id m11ls5105972jaj.6.gmail; Tue, 22
 Dec 2020 12:09:19 -0800 (PST)
X-Received: by 2002:a02:37c2:: with SMTP id r185mr20178563jar.107.1608667759553;
        Tue, 22 Dec 2020 12:09:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608667759; cv=none;
        d=google.com; s=arc-20160816;
        b=QU2EZ6ks2hv97Tnj9dls5MT5S52nPJ8tF3JjnrmVraop/HPdpTRzfxZJpTICKp3nWE
         YPftAjOeYiCpEFUwBcYOICpPXWgOS0UtxIAcT3Lm2aNBGadCWC8jVbPLOFWPYMojQOkR
         FQV855RKlvX2XGfF1pw47BXiW+wFEY5Im5EPoLsAjG16GGCItY5lqQ2YbDmmm6snTeOt
         VVIbuwx6HuyDh2WgAF1dBmJy+ndv777mxMMD/js2RwECX5D5vcjKlgjNoDrBSA7RmQS7
         REnMzl5vDYy3XWd3l8Y58X4SfbIUcui79lxZxDEBvgmciAhAALctmvIoeFDDnLLBZjIc
         uoGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g9tEWfjd/nHwXAfMbNAIc1psG5pFafg0qAQNXnGAHUA=;
        b=n500svxaQG/YaiF4AaWbzt4uqlTg/bNVVdv5kl9aQtREqxQh9qkZ8Q1/CKOCs6q9+m
         oAtiMbcy3IfyiAV0MgyRuNvdSILZgh4Ah8nrizwVng7MmUcdYPEy9t9WcwzWkxz+anxA
         ROvQCZWVp+Hx1eqjB0xNL9FvQ16tJmqw2Um5F6gteNAlLyccGqHYAbo99/9/FWvSS7TH
         E+NsA8bic7TcovFtzeM0ID85BTOR9N6cxSKQM2gUdGNYXaRNyCL3sxb0Jfj/gI5XpEnt
         C8FOUS41RcjUWtnZNJ4oqssDqzZW1KL19sxTs8La+/Fwo2Ntb1KJ+INz3QITBaHO00kA
         2hGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NYyLQEma;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id b76si1973316ill.3.2020.12.22.12.09.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 12:09:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id be12so7982659plb.4
        for <clang-built-linux@googlegroups.com>; Tue, 22 Dec 2020 12:09:19 -0800 (PST)
X-Received: by 2002:a17:90b:1b05:: with SMTP id nu5mr23283928pjb.101.1608667758491;
 Tue, 22 Dec 2020 12:09:18 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmVD+=pQ+p0KJuu_HHNcZKeSQ2RwGkv0fHqga4hwui4eg@mail.gmail.com>
In-Reply-To: <CAKwvOdmVD+=pQ+p0KJuu_HHNcZKeSQ2RwGkv0fHqga4hwui4eg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Dec 2020 12:09:07 -0800
Message-ID: <CAKwvOd=eWXJTQ=orOkHGOFmL981B2njmRdPkwavrx=W5LYskTg@mail.gmail.com>
Subject: Re: A chat with Nick Desaulniers on compiling the Linux Kernel for
 m68k with LLVM
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Min-Yih Hsu <minyihh@uci.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NYyLQEma;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

https://github.com/ClangBuiltLinux/linux/wiki/M68k-experimental-backend-support
https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aissue+is%3Aopen+label%3A%22%5BARCH%5D+m68k%22

On Mon, Dec 21, 2020 at 10:48 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> https://www.youtube.com/watch?v=xN7MmnFbHRI
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DeWXJTQ%3DorOkHGOFmL981B2njmRdPkwavrx%3DW5LYskTg%40mail.gmail.com.
