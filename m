Return-Path: <clang-built-linux+bncBAABBV7UWXWQKGQEFXKJFJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id E583CDE80D
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 11:28:56 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id v2sf8219933plp.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 02:28:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571650135; cv=pass;
        d=google.com; s=arc-20160816;
        b=kZmNNjURnC0NLG5vUazsHkH2B3eVkyhD6PxtCAYj0EovORol+/80P2wPUVh/INuPSA
         gKRWhic2wHIvO2Woq+++Cj0ZBuc/9d4V2Y2YS9dBca6jzVadtFohFKMjngTsTZPj8kjE
         cggVXBqmjYA1ceXSBtX/E9ya8iW34wx0WorXWf7A/Z97KkwvchXauuOX/EPdNMnaSnhp
         q7+vPSe/1HIlu3zKRfyHGFjnFxaDVqFJWaFUS7mytanEKKInvQzZE6/eiMpm8TJkIdQW
         J74Y9o4Az3T5hAgwvj7nB8isBx6KouEI9n7IJoXUzCgTfpny/Hi+PHpQVUh8f0E4fjo2
         MDhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=lAqR11sVve4CWb/GXojAd4wfVznEsEPAh15sqivZZOU=;
        b=Akyc7d5YE6pjFfnRTNm4glwimjO+qjoHMli8hQEE5b98hy8fqYT2wJeVAB2v0hUJkx
         E3JXlYrJ9RQM95UiYBzghflEZtpnnzFUrJ3ty4o5VpLK+BGZEU0FFdIsm25vNEzx5e6+
         w+ZmzD55ewBntnrJE5KVdjkijToLfO1WY14EbOiNGyfFMOX5Xg48ahWRmksrarbfe8IY
         a+35kZYsL3gF8PN58wAL0z+KfwFgRrMVPwG8ekq+GsQnyd444sC5ZYa7iK0CuhcDjHrd
         CGrj4W8D/ES+TZpOkLOnYwBCTOifQbUzy6LFlrKrrJxg8jg8kQZWJUfH98w1c+4c5Ql+
         xwfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zWZzDrii;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lAqR11sVve4CWb/GXojAd4wfVznEsEPAh15sqivZZOU=;
        b=k/pK5X6Sg3hie5OQrKMS6gWszeJ5akWvps0ZXXCI3PnvQ6aYmP4N/hPHv1feqk7agw
         2jztU7+IROw9SaZ7zizP2Zw2EgBVqYpspJSpepgYVpXxe7ZBEOV51qMcdVE1FzVLbvss
         ZiaI21ucHSwmoPhCaR/hR3aiIoTqypXIoWxkVU7feuabK7HUVcDhpdVucR5bn1nyI6MA
         XjMRdvaNwJiH6V/cIjVqgfcEeCcwZD08btMnAaV7WYYiZQSjkIp0eKRNkZ4eFRrrdQc1
         K6deueJaTUybVGYqPTfM6x2V22d+AENjNWF1YQToWMf34/LyKyJ09BNHZL/ie+Pw8518
         6z6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lAqR11sVve4CWb/GXojAd4wfVznEsEPAh15sqivZZOU=;
        b=Agt1BX7CVJzBoS6KRvKJxqvsAfmBFd8OxCIczrzWclVmJINkcrgxachZZDfCaUsiyz
         CsBaK1cmmF062h8JOtrlw4dt7J8FrVfMcCI3RRLpHLSq93arbztBloQn02tjAX/PxbOq
         1pu1Gqs8DuJev6ruuglaKBKrBVfiblc4iZL6a9lkJ1tbJhAF65KJ/8hZienamxzQXdl2
         59wXxXbzHkw2rCOg0C/p94Nt5DnzzK1lerj9XeJTHkXZfQEQ70OdFpZuPfZfFjDWVpuW
         s1jSU6inK8wjI1M9e52iR8WEjxU/++YfA8Cf4MzYjtjbYSSAH0YdGVWpXhoqSdurtkBB
         vk2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVqQVUdYIEoG1Cm0ehsgAQrle443AXBw+D5mVV1eA4tHv93gYWI
	y1dEEKe93t0Ei9SbiGm6XWw=
X-Google-Smtp-Source: APXvYqzMoMEfynnGB4Zmke9nPW4iR88SyOTwJiIy6HopfQKHOAS3xVnI0D8MIOR0bjlm6QPYHj72wQ==
X-Received: by 2002:a17:90a:9701:: with SMTP id x1mr27055188pjo.35.1571650135391;
        Mon, 21 Oct 2019 02:28:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:80d1:: with SMTP id a17ls3689617pfn.7.gmail; Mon, 21 Oct
 2019 02:28:55 -0700 (PDT)
X-Received: by 2002:a63:3441:: with SMTP id b62mr25850981pga.274.1571650134987;
        Mon, 21 Oct 2019 02:28:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571650134; cv=none;
        d=google.com; s=arc-20160816;
        b=hTTiKabkrnUh5YJ8NFa/fcqJ5QlGir4eW/McrfCxFjJ2xpSIUssshw6j7+1Ve6Gxz7
         tdwwwxx5o7DV09n5CMNEDxojExM5YhsJ1i6z4AIozsJ/TC81V3RolxM+PL/eJZF9yrqn
         NKTrBniaCqZWVAbIKQsY8kEoTdSaKqaWcdJVlf4sqg/5JdfW2jQ4jgo7e1KFWc5IyGgw
         QGjWKv42dpVD0sxDsMEI5wBpPDV6VwSMgq7DdRauUI2Ecaq73W0SrUlswIVRgCNKbujk
         dedJ+OY1tqXgTOvAKgAlRUpZcya7ws++wmIw8Qu7uf6uNeG0cg4IuK/Jvhen6JHEHHDi
         cinw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=j1Iow+/0y0NVDOfLSDZ5iWHws0+t7SiphiGwslqoErg=;
        b=cPPUFtYesHJ4+jYIO0AWehNm+oz59J9y5ZuP0MTAnwLOHSt0KaDGFjACflzn2FrBaF
         efEMfm8adl/nO/Yz6m3SLpQiZEYlhLJCDaaCPV5pxFnG7EJ6xqEoJKHAPNqgGe9FSio9
         LEhdH8EnoNE2Q0pIpu9oxrxV5VA+WafuJIw/G39qBzL07KHyc93VGXgM4tytb13m8gBp
         SQcOr3UE/nUvRT6TOrU4x3PZtVJ9nbYuQLbk3JZiO5ewJhwe/vpdH3WWx5RAJRxuN1ku
         cyBpKvHHf4wdjhnYYPb69wMT+aTCyI+oXhYLxHCcYxSXipSziMp+pt5PHIvYvlfBE7F4
         PzbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zWZzDrii;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 91si524102plf.0.2019.10.21.02.28.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 02:28:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6C8F620684;
	Mon, 21 Oct 2019 09:28:51 +0000 (UTC)
Date: Mon, 21 Oct 2019 18:28:49 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Mark
 Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/18] add support for Clang's Shadow Call Stack
Message-Id: <20191021182849.d51a67b0c0fe74d8d524147f@kernel.org>
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zWZzDrii;       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi,

On Fri, 18 Oct 2019 09:10:15 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> This patch series adds support for Clang's Shadow Call Stack (SCS)
> mitigation, which uses a separately allocated shadow stack to protect
> against return address overwrites. More information can be found here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html

Looks interesting, and like what function-graph tracing does...

> 
> SCS is currently supported only on arm64, where the compiler requires
> the x18 register to be reserved for holding the current task's shadow
> stack pointer. Because of this, the series includes four patches from
> Ard to remove x18 usage from assembly code and to reserve the register
> from general allocation.
> 
> With -fsanitize=shadow-call-stack, the compiler injects instructions
> to all non-leaf C functions to store the return address to the shadow
> stack and unconditionally load it again before returning. As a result,
> SCS is incompatible with features that rely on modifying function
> return addresses to alter control flow, such as function graph tracing
> and kretprobes. A copy of the return address is still kept in the
> kernel stack for compatibility with stack unwinding, for example.

Is it possible that kretprobes and function graph tracing modify the
SCS directly instead of changing real stack in that case?

Thank you,

-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021182849.d51a67b0c0fe74d8d524147f%40kernel.org.
