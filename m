Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6HX72CQMGQEAIYQH2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEDB3A0108
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:50:33 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id z13-20020adfec8d0000b0290114cc6b21c4sf9724684wrn.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:50:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623178233; cv=pass;
        d=google.com; s=arc-20160816;
        b=S6GhAWy1PxxxrXztkT1gX0m79mAJP+nf7E7h3w3KOSsXM0ZhSaw1OB3hq/ZKHzijRh
         tEkh2z9r3CH0GkuI+a9q1uH6Yz/2oX5VTIEdfZ8Yzwl3ouJWZ61hmf0gLbvgY/y8o5a5
         QJod0nsw0y4NyQjdyGF9z7KFBBzeBfnGUMKedjoe1Dfa36rq6Ci5PWY0ACuZ6dx1Dr3q
         5nCjX4CJlSG3lgDwzHgImR4gKskNssaBBPXsr6iBwmc24K8DWsz1EJ1apJwsaZt77nTN
         lODSVRbbPjJj4pZd+r+V8rsaoZ7ZeVvTQooe49njq1QX1kZItKAYFZtB4y47K7NrzTU+
         TjzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VkSmD119HKtSQ9FhLI0kJluNHr1D8UBVwlhWCU3pM1o=;
        b=Rd5YecwQvJC6qfzkf+wfPNpRCirHOAPITJAi6W+lWuK2YWkV++ZLQVWhEwVQwagZhS
         SzTdbCxZUmPdJaG1U99KPjsU4NWTy7ZgMVSlGCCKbJKu+v22tnwYTYsXqCIDqQdwjhlU
         dpHcf2lkfqpXVo4h8yojSlWE/u+MY23pIngPhAx1/GaSBz5mME7kQkEZadxCTBy3Z/sj
         HyQ+KEM/hG48SsKecviXMjGUeGGDLNcBuMm2zEE/wuXd7Olw1D6p37nGYHFfVWRRkI4Z
         kmYi5HY13ewZCGZe1eLyi1mw4J88J/3Al4nTmlLGgaSn28FMH+mUeGBhDWBohscoTn3g
         MsKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ez4AzRe1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VkSmD119HKtSQ9FhLI0kJluNHr1D8UBVwlhWCU3pM1o=;
        b=YIXQy+2L/ZdCk+oGr/dbhaZDQC2NbpUU5nTXO4sXKkUVeRP0/ds8ooge1PM0n5QCRM
         lZcQIl+OTdNByoJ42TGSzGl0XKJk2Hf3auZe/wmAWiZb0+p2zJ3WuRDb3W+fdNivE0lB
         xOhcNja4KsGHNvoxD7rWnLKXQ9qhV89hwKYSIyGQg5w34tO1Y3+s7EZFoNh4IJdrIT+1
         BUtB/5mvZeZdBc8m4wUQEgX0nr66ktYIy0rUca7rVHrNc6rv0iEaU/+n+EuPxk8IRY7r
         HN/426anGFVVS6MPxlKzGOsr3sIOddXgicCjs3t5DWO67CRrTpzEkLq66ClE6eWxDHWH
         rJfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VkSmD119HKtSQ9FhLI0kJluNHr1D8UBVwlhWCU3pM1o=;
        b=seVOq2Ds1I9W2W0QbZX8gFNZ3AfO9wDVQyEf7ejzPtXl+mTYJoxRLVQh1Ebi8QtcWZ
         TLquWCIRwfkYwvpKyevHPPHqhW6HKCb92I+VvQlP1RQdsjp51i+H+loZOKlERL0mVo+i
         5orWtgpUtP1p3shMWqLqlok0Ea1onlVCRjfj5pqxJo6awoRWrvsaVvRMC7m0PIEqZ84T
         Pk5aMs7uhWlF5GXvSuKxqwU3u3Mth/kFZGWwxOgNJVB0y5SNLzIAJAtbHntHC0Sz3lWC
         D6I7/RviZewoy4rAdbBP+cFzQsX2RlHMLyZKAjeXOig1xUXfAwsSTMFGrjZ1FiCHQ9RI
         Xo3A==
X-Gm-Message-State: AOAM530uJ8p6de6PP3rOv91boxwWSUQlt+f8wNIRB4LS4ILFSv7HtuJu
	fKLpx3Hd4hd4xg1iKAZjb0o=
X-Google-Smtp-Source: ABdhPJx8ea+x4y1BXDlTck3yfaVeM4PUJC1qMomP6TPGoMfBPhyL4Gr+eAbIlX9JNQn4dsJnECuY2g==
X-Received: by 2002:a1c:f30a:: with SMTP id q10mr23634384wmq.138.1623178232958;
        Tue, 08 Jun 2021 11:50:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f603:: with SMTP id w3ls2014506wmc.2.canary-gmail; Tue,
 08 Jun 2021 11:50:32 -0700 (PDT)
X-Received: by 2002:a05:600c:4282:: with SMTP id v2mr5759780wmc.18.1623178232102;
        Tue, 08 Jun 2021 11:50:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623178232; cv=none;
        d=google.com; s=arc-20160816;
        b=Wdw5og4HMY33IMDoZHd9ksq86ZZBhyLwqnc6La/0eM54+vETW+FVT/PKXNTlUkBIyF
         ptkAIblOapChOfZwhPVcDT8USkid/d3s6URmVyYETvT+Xj3sx6U6REryJ1BWNncqLKQH
         GJoZXjg4skueQfvwpzfQgv8Rg6W6e12bH64BBGzvfmQ56+V4Mq4Iz1d3uTng51ibAx8P
         MiYEwzQElucUsOtoCMv1hzGqfiG+Z5o5157LKH4Zj5swp+1w7jsM7Dk2oGRHYj5qJJFF
         q3BkS7ycFqN8GLzJWgYgc13qZEgwO/t1F6zKow+/CVM0gNaDFfOAh07ek96E+e7fKbBN
         gNgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8GY/TUNViSUhSAEc8pu3rUvbtYhUGyoUv6tEp67ay8c=;
        b=d4jr+vsblqx9S9NOhqkQFi0Gx4kK+jH4XhjHsQsz8YsRGLo2C0eiSY0CjB9gAIArZg
         KsF09qkMUAKvlf7ZiwPLFsjZtSyqvBEl9guL82g1W8dnELC3sAami/O8rQkZjIrUHMkH
         NBCRZRmnh7zC78yMTk4xDv6wDBH5yciZC2RozBRWczsytNh36nukQBBeicZcuWp2qYum
         xWTzvYlEE3kGr7G/K7VKA4+1IRZ/SXjkjVRpXhHf3HpHpvX6yD0UHKSoCixynBySloFL
         ViAOM0PLnQ5VgQJNS9Kn2axC0K7GW3MYlsscmlwY5e89aQkapFYQqsTRpXOYPgdMzyS2
         cM0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ez4AzRe1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id h7si216649wml.3.2021.06.08.11.50.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 11:50:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id u18so8207941lju.12
        for <clang-built-linux@googlegroups.com>; Tue, 08 Jun 2021 11:50:32 -0700 (PDT)
X-Received: by 2002:a05:651c:1111:: with SMTP id d17mr3735547ljo.116.1623178231691;
 Tue, 08 Jun 2021 11:50:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKfScQKPw1PY_vGD21A@mail.gmail.com>
In-Reply-To: <CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKfScQKPw1PY_vGD21A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Jun 2021 11:50:20 -0700
Message-ID: <CAKwvOd=7o=XHLehgFMk4Eu3q4uvRHnq-CqnZT5W91cmtQxvcNg@mail.gmail.com>
Subject: Re: building kernel with `clang -fbasic-block-sections=labels`
To: A G <akshith.573@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ez4AzRe1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Fri, Jun 4, 2021 at 4:07 AM A G <akshith.573@gmail.com> wrote:
>
> Hi All,
>
> I'm trying to do a basic block level analysis on the Linux kernel.
> I've found the clang option "-fbasic-block-sections=labels" to be fit for my analysis.

We've never tried it, so I'm not surprised it doesn't work.  Can you
share your patch you're testing with? (Or how exactly you're adding
-fbasic-block-sections=labels to the build)  Also, I'm curious what
you're up to with this flag?

>
> But when I compile with this option enabled, I run into this error:
> ```
> /tmp/main-81886d.s: Assembler messages:
> /tmp/main-81886d.s: Error: .size expression for .BB.set_reset_devices does not evaluate to a constant
> /tmp/main-81886d.s: Error: .size expression for .BB.debug_kernel does not evaluate to a constant
> /tmp/main-81886d.s: Error: .size expression for .BB.quiet_kernel does not evaluate to a constant
> /tmp/main-81886d.s: Error: .size expression for .BB.loglevel does not evaluate to a constant
> ```
>
> Setup:
> ```
> clang --version
> clang version 11.1.0 (git@github.com:llvm/llvm-project.git 1fdec59bffc11ae37eb51a1b9869f0696bfd5312)
> Target: x86_64-unknown-linux-gnu
>
> make kernelversion
> 5.10.0
> ```
>
> Can you help me understand these errors / figure a way around this?
> Happy to provide more information.
>
> Best
> G
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP8La3ye2sTyga8Dm5AySmETbswWHDaiKfScQKPw1PY_vGD21A%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D7o%3DXHLehgFMk4Eu3q4uvRHnq-CqnZT5W91cmtQxvcNg%40mail.gmail.com.
