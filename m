Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH7W5X3QKGQEJVDOUPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D01920FAFD
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 19:49:21 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id e127sf5691259pgc.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 10:49:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593539359; cv=pass;
        d=google.com; s=arc-20160816;
        b=x2US6mD+WxWD4rid1fLfgeCvWv4CzQaqjHwCNxM83Db8EgwsZM19D2d3WBrj+tsetx
         8ip/drRgK8hlgcziYVwtcdmHa9KxvqruAsNr5WnEEoG1+fXcGMTq22eJtIMLKanTfT+Q
         snTg0Okff/5E1JjIfSJF9k7qkJPUW6u+ikdXyELmZwrJjAnWUrEincQMgTwjURAHpmOp
         KiMcX8TqtqHBqVcrNpdfkqQ4x6x3DYNQCHBK8imTrkyweYXgpiZ0hTASJU8d4qYW2Hch
         nUwQa/QUiglnQgojXxBkAD5vgG4ahgdPs5zYUFJIyVAYxJ1W898DsrTuZ9uZ8pF5bQy9
         PO3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=rHYWf/KQDcscNydUCCeVwoLpGtrZihdCAcNHdF4kXho=;
        b=kHSrUz4hPH6cvapTNjmC+6Oc5+IlwiiIYwzSuALXW425G2h0B+h4uKN87PTwgWLf9r
         IpS1SnRqhWVaVk1LbnbnKf1ROIeGNhhU0rRzCmryhQmjhQM1OwxgR/RHzmzcLNa4blba
         nTnRk8Nx1xdfpwWNcrfajhhLpE2QAYaqFRbdV4N1hgn5zjcqZoBu7K7zRMaxlYu0J7m+
         T/NjaXPtRIMZ6YSNoPLau2JZ2YpeQA27xmoLFGEfrylb1+zJYJATxHuoncAKdXnidU+9
         eFf2C9ml1Nlsu5QrL+iRY6tBSUVjk5fJoC5u81tTmT+Rrufbe7acJpopU3eXzjyCTnKy
         /F6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oJwiWX8Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rHYWf/KQDcscNydUCCeVwoLpGtrZihdCAcNHdF4kXho=;
        b=U+APIjbFsg9ewTpBIsr62KEj1m7dcPTWCQ35tambDsVb1DRYc8D1XEjoWk1/OBTxk8
         wJmxE4ZE4AuWrQwQxPRlKz8FWOdmj/bwuDeYe+P8lu2j4x86XwYfbO+baWx1drjIr+SU
         tLyvJjUkwz/gOJtp0EgLRqBBqhCGdl2u3N/5V68g+FwmylxD0tc7QN/Qfa+htd9BXZIv
         OmJZQcpMXiHJUabt1unfIlgEftkrTyUDNRKYCgdLAUhFPQHLEvRZcOVmF3Q8/UBBPnIz
         Pb81fe47b1PyAJgTz5jO6WGCyQ320eH2pryhs83u2NSVXXxeQeqnzJkxxzWgC6pIsfep
         maDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rHYWf/KQDcscNydUCCeVwoLpGtrZihdCAcNHdF4kXho=;
        b=POqjf2dfxMUwrnoHkqYHKBgECgHAmepZ9ZWs2jjxiOyoKoqjMMBhJqvlQAcTo0gRtx
         eWnojL00CiYO1UUX/ZqrlH9jqzMNhLUGjRUNBWFt9cwjE4UX27NHcG6H6pbLiwwRKCdu
         jF4AHawGoXp4t7aK/3LNLg9/xk/+urAyMU7XxLN3zpBWO7847AWutYtZt32lInOWkK+c
         nqjF0fCM+88Vb0BdyS/VIH6isxs/OvK+nRNPsEBLdHqYzyZ/8hMa/k8POBYdO7tlp4MR
         aa2JMmn+uP3bXOcMz73ozlSGHM/ILGRRodi2/0JYTVjnL2WRGcc5b4ROferkVCQISOY/
         TwtA==
X-Gm-Message-State: AOAM532eOsiNp9VNW7Sd1CPK+ISH2zD50pkRtslTYEWzfx40MJue+Eru
	uqSYEmKt2NH4dm0C3YH/bzc=
X-Google-Smtp-Source: ABdhPJxTJv7N5zF735SS50pmnbhf6xvcub00sc1NP6B0mV/6kwd1yR+k6sdL4YYTk+NG7UNznSrSTg==
X-Received: by 2002:a62:1b4a:: with SMTP id b71mr10090785pfb.9.1593539359464;
        Tue, 30 Jun 2020 10:49:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9007:: with SMTP id a7ls7850886plp.3.gmail; Tue, 30
 Jun 2020 10:49:17 -0700 (PDT)
X-Received: by 2002:a17:90b:801:: with SMTP id bk1mr24468451pjb.2.1593539357021;
        Tue, 30 Jun 2020 10:49:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593539357; cv=none;
        d=google.com; s=arc-20160816;
        b=i+x9kkSNAK88qprZ/ctnCkHeYCOnVE9hwNDdkfRGiPCnqTIKw5AAnaHXdBwU8mJPgY
         1b3nra1AKJybK6x99B4/zTgMZbQ6dAIB7xAhT0zarvAdlrWIvNCGoRD/bABky0IDQ+eF
         l+Nox0F+vwKbrOGUpnbhHoVfPd9LMCC1tT5nA+RqkunquPuR+CZH40RKjB1wXwXWDgYW
         2SmZ5bkEkv7AuCgHbjVsTR/LGhSWP1cmlLoABxdKwojirvf4cXZnA2RyQ9j1QTwviTfP
         +332nMYXuxV4BubKqyhetoc84JsEd624lyYYNcgQ6gu6jYxB8dnsfOduyWwdnkv9pOK0
         hrxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=0nUrGiUjexkgTjbObRwhZnqCGv//XrYLqiXL9DqI6n0=;
        b=iMf0sXtZzKF/e5zv85SShIuuraGk0SDqFdYWzHeyOwIMU11Hg2OyRngLnfOyYj8PGV
         jA6GUl9YFfXKPn+/UH2hPybU8bCYfwib3nFOGi9OeMNb9rAAIU1so6OJScyonI2OxHRt
         qQMlrNTsOxeK7VFHgntjzHakNUqsde33oIwch9H+GNVh0pihU7RZBWlWQPepyqpn/iIv
         uCI/u5eJV/YLMGfV032QAR7h1ZnYeHgrWLkD5c6ThhgiMoDGriJL1CVIMbZv6d2RLrCP
         p8dGTgL1lpoAw1bMGWr4MsSwiKx+FX3x/Kolfdhjk+ueydYzL4Ul2bQeNRoGCPZWJuN5
         DMGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oJwiWX8Y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id q85si220867pfq.5.2020.06.30.10.49.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 10:49:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id i4so9797200pjd.0
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 10:49:17 -0700 (PDT)
X-Received: by 2002:a17:90a:30ea:: with SMTP id h97mr23503177pjb.32.1593539355035;
 Tue, 30 Jun 2020 10:49:15 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 30 Jun 2020 10:49:03 -0700
Message-ID: <CAKwvOdmu2Yi=SdR+ftnnfX_HNTfri-MPmzA7kxNzjwuuk=5R3w@mail.gmail.com>
Subject: Clang Build Linux presentations + demos
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Mathieu Acher <mathieu.acher@irisa.fr>, Masahiro Yamada <masahiroy@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oJwiWX8Y;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

(bcc a few lists)

Hello,
For tomorrow's bi-weekly meeting [0][1], we have two guest presentations:

Prof. Mathieu Acher, an associate professor from the University of
Rennes, will be discussing with us about the Linux kernel's
configuration space.  A common question we get is "does the kernel
build with Clang?"  "Depends on the config" is just the tip of the
iceberg.  For a sneak peak of his and his team's work, please see
[2][3][4][5].

Nathan Huckleberry is a Comp. Sci. undergrad at the University of
Texas at Austin and a Google summer intern.  Nathan is working on
instrumenting Clang and LLVM in order for us to start measuring,
investigating, and improving compile time performance.  Nathan will be
demoing an RFC he plans to send out later that day.

[0] https://calendar.google.com/calendar/embed?src=google.com_bbf8m6m4n8nq5p2bfjpele0n5s%40group.calendar.google.com
[1] https://meet.google.com/yjf-jyqk-iaz
[2] https://www.youtube.com/watch?v=UBghs-cwQX4
[3] https://hal.inria.fr/hal-02147012v2/document
[4] https://hal.inria.fr/hal-02314830/document
[5] https://www.mathieuacher.com/
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmu2Yi%3DSdR%2BftnnfX_HNTfri-MPmzA7kxNzjwuuk%3D5R3w%40mail.gmail.com.
