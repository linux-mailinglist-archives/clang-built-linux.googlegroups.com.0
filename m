Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKFMXTZAKGQEGMQ6AZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D007166AF6
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 00:28:42 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id o1sf62479pfg.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 15:28:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582241321; cv=pass;
        d=google.com; s=arc-20160816;
        b=YNCXNWdJbmkiD18iENI+8cG4YjlZogG2yS8Wpj0IkwVVvp983sbxlWmNQcHjPhswkN
         sbKVDF2QYe1I9V9Mk3JbMh3tj5ww3gIvTL1Rwp6wmAHOYIk74fBo5qRPB4E5lBi/jVrf
         MY54F6iNkFM98iGHRJIzu6Vox+SxxbUdTP0z/+jWxPTq1PILflIREIvmUXmqm4g27MFd
         t7n/bwmrKA4Cy/NzwOF1N+quOiO60izhN3ir0mCDpfOkFWQt3qGIGmf3+DHlsSP+d4E5
         CArz8sB2FArUewktXeSYcc5Gk1EmwBvMUdwC6Q0w14ILiKq6kR+yaGAw2mDO4LyqgP/v
         g3RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Hpgym/T5SxfsZzo8Z+qtpaG0u2pn3xgBwbwSEDAYoOc=;
        b=ec21mrOEM0b7HgddXgLeMPMAl22pO3wDa5rOX80CEM3vW5SoPdKVhyq5pkERBE171N
         s9LH6QPzQaZ4+FGFwyShP5dVycw/rmO+F5cL4QyUjot44AKH/3RyV6JGB+rwz6+tw7S9
         LccCqz7tuFUjpkxB93ctPVkJzaqJ0DcjLY9ITk7hevR0FjPDDAAq0xcVmfHkVaij7VQ5
         +wd6CLIsMNv4YXsxRtjtJ3zGvjnyJK0Blnu5AOeIUhaqsZD5LSMwWmlH2VdVG9nl8ap2
         o5NxLErX7MYfbnGXDnPCFFFIeH4CAi2PrHOh6kKvfikK/ChQiaMePIYT4sw4NRZLVuiP
         oNpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bEI4jj3J;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Hpgym/T5SxfsZzo8Z+qtpaG0u2pn3xgBwbwSEDAYoOc=;
        b=bjjM+yD5G8mxeMpgTB2iirALOL5eCl54TyuqoUFqJFlGMQ5XUNwUKZ6zAIh/ZTrNGX
         XsT6MTtTagZECKpz9kCxwKLMqnZnMOlHcd9iN0RRBZNbgSUf2b58Ed+zev53X9q6WsX3
         V8fTyPd3/loL01B14q4S1vzTzdHdxGbD2QFZnkrDCdiYLX2/x1tHxsEniTHUAWpnr2zS
         0JGmByM6wmbcV3vUtcc4MtCVfM1M0kdDzeMN0uUdVCdHTbx7r6ne76DuA1lo2FEDQSTy
         iOztrIM85PjF5snaCG/i7RCQYABei6363DBoky8kLLZyGx8LWCvA4UqZ4+P8SrnHpTid
         9KBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hpgym/T5SxfsZzo8Z+qtpaG0u2pn3xgBwbwSEDAYoOc=;
        b=AeDQUa4gyGwW3SNf6TKcwIXP+vLmUEnVKK7EVNGDcm84gvOHe87tioHJnNv24iC2e1
         FB03Ksv/TN6sl7Uam9WH6PPHXK2AciHTU5tXEt9oGay4lFfRC2a/fPzB0AYM2Tl7o0bJ
         kPZ1XBtoehnmgU8huzbi9iNEhjWykhISDHBX5ssdCqX1oaYOh+spSWxuYjW7BtGmw7nx
         ZDIEJhxrRrgtvfSUCRBYc/xOx9RXqQtgh9oImR6V4gg4n6zgJ3yO4X0fNCJi9lc/j/DH
         HosGCbMM1msKigNz1Z3i2aCAfm7czr+llK0C6I3fwGDQNRWy0UX/blZRJjzM0Yn3FIYG
         yFtw==
X-Gm-Message-State: APjAAAVzHio2MWd2hC/ut7ELXnCpT3C7BxHd/MCfQoAKsYhPYKFZ5B0B
	BAm4vJIHlvznH4M95rulHa0=
X-Google-Smtp-Source: APXvYqyJxT1nF7f5BRDpjA5r7GEmVf7oYTwOwXcnDD/sBGcN6Uf3MiGIjrHt15Q5RzfFhZ5zk4QKSg==
X-Received: by 2002:a17:902:7591:: with SMTP id j17mr32964128pll.163.1582241320885;
        Thu, 20 Feb 2020 15:28:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1bc6:: with SMTP id r6ls48791pjr.1.canary-gmail;
 Thu, 20 Feb 2020 15:28:40 -0800 (PST)
X-Received: by 2002:a17:90b:11d0:: with SMTP id gv16mr6440195pjb.109.1582241320497;
        Thu, 20 Feb 2020 15:28:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582241320; cv=none;
        d=google.com; s=arc-20160816;
        b=YMb7BMyweAX5AzetMiyiM/qIZjO1Z6d32JSmIZVstAof9l4W0jZO+qJSp9H56q578H
         lIE6vdTJgcCe10kErh0eIWfVJvMSW+omMpw3OBAA07AGpKlTvvs+3lu/OqIU6jAw3auW
         BL03zfz5zX4z2nlt964Yyh957uE7VemLS7xkP7Ho4ThkV4ey34QgbIWOq0zxMhrhasBN
         sXWhEnxwzdczxmTkSxA6hNXAfBIO33poHw5quzMsvyUc3Eur32uvSl9/9xCgYvlEKiH2
         A0ei4wWbm82S3MQyVNlpwHgRiTvdV9gsKmq2FdYGOiqLJgbJ4HBlFjGNEuSVGw33Pm3I
         hhxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=xgyvDMpCfwAA5e+OlFDkKepOFu6+kxr7ZAdob03+UrE=;
        b=VN2D2xEwymAh7LPlk6Oj9vjY4ohkCT2+YqgWERxFbMJQAXEphIFNBYyZZUPCkN9qSo
         jweQFdNlmRLxSZz+ush/QpQlue3+dg4rdMJVpfgTuFwWIWgUuv7jmtdRyM6hNhpZnJdX
         ohso0va0kH/Su+QOTScqABASnYZl1h2tyagYLG3raVdqlDkToZHgG6KjDdgF+ENtM23J
         KhCMVMsr6V3c/IrahxhvPbWqm4Uy174N4MXs2N1ZTduj/7AAeLZfP/afAkX10GUPVnv/
         tK54AB5i7wQjY3+JJejcKZZo2NyGwa4TVWFTBha8BqSs4tuvmJvuVONePdp/QnP6Z8pz
         zEqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bEI4jj3J;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id m11si36023pjb.0.2020.02.20.15.28.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 15:28:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id p11so43451plq.10
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 15:28:40 -0800 (PST)
X-Received: by 2002:a17:902:760e:: with SMTP id k14mr31740970pll.119.1582241319800;
 Thu, 20 Feb 2020 15:28:39 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 20 Feb 2020 15:28:28 -0800
Message-ID: <CAKwvOdmB1uBx7BUOth=yXy4XNsmCvcSWjBLGtN8=UzeRQxJ8KQ@mail.gmail.com>
Subject: OpenMandriva distributing clang built kernels
To: Bernhard Rosenkraenzer <bero@lindev.ch>, =?UTF-8?Q?Tomasz_Pawe=C5=82_Gajc?= <tpgxyz@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bEI4jj3J;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62c
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

> =E2=80=94 OpenMandriva clang compiled kernel, named kernel-release-clang.=
 User can install same version of kernel-release and kernel-release-clang f=
or comparison

4.1 alpha (Nov 10 2019):
https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1-alpha-avai=
lable-for-testing
4.1 beta (Jan 10 2020):
https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1-beta-avail=
able-for-testing
4.1-rc (Jan 28 2020):
https://www.openmandriva.org/en/news/article/openmandriva-lx-4-1-rc-is-out
4.1 release (Feb 1 2020):
https://www.openmandriva.org/en/news/article/and-openmandriva-did-better-om=
lx-4-1-final-release-is-out-now

Congrats OpenMandriva team!
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmB1uBx7BUOth%3DyXy4XNsmCvcSWjBLGtN8%3DUzeRQxJ8KQ%4=
0mail.gmail.com.
