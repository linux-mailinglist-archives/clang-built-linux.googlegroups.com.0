Return-Path: <clang-built-linux+bncBC2ORX645YPRBPXV4HWQKGQEUVIWQ5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2FDE8E84
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 18:45:36 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id y65sf8384803ota.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 10:45:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572371135; cv=pass;
        d=google.com; s=arc-20160816;
        b=n7FYLYDLIq9g5BChwRg4BtqKmelppFI9fkbcQd8dFJfWB2GtSdYOc3sg0Y/c3w8xXk
         +OAKqx30xiB/W8tWU71O/9bdNQM3rrcV6JFEzg/we2cwEj6TQf8c6Q1si99e/DJyZ4yo
         l2pOrrwkUfP51COYiB5C9d5pdeu+pjdYCJXhNJMiDQAWCVcZDK3r3MDmjOU8lgQqcZGq
         /VtT7jwmDSQcYJn0+p5ubwfXUmgdNW9HJa1ukeB5HjtyuGPjDhvv4ojRAhga0UDqYAYU
         3R89FoTDm/Ahfn/2RrxvlUqwcN8eXuNMPxFH+oHJ1668kpjvsg1rBOfnVWikRe7XWqsl
         nO3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pAEAoAgeOOwDqnMjXUx0f5GqiEvraWPI7uunTOCrBLk=;
        b=gssd1u6KEit8H5NhGNXBSZoSUhw7YJi/L5KP4s+iYWKH8+oX6f5WTNq4Hr5ygd7zLM
         cr+teziGT+yjbeN7+oj3nb47OEEsqzm3HzVk9mR+QmLBaVo4wi1JuaUg19aTafJcLYbR
         BmsIwy5oDqgbevvLZZtE+Jh+ovh9afry1pKvZ6H/cX3j8pam4PqDcfILcDkgyILaMfMj
         khgLI7WSlAL8yUQ1JA4KdlyiK5gfqXQoO5Whh5ktjQ6+UUO0AjNa+e0XrrTYka75Ca0y
         Iro7JWXQ3ZQ5QQyjisaJu3iODSL6V09CAvI5DRRxffRm2cEEk8WXjSlEowEKsodsKMzL
         numQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rPGbbUqA;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pAEAoAgeOOwDqnMjXUx0f5GqiEvraWPI7uunTOCrBLk=;
        b=mJNlGs/bF8QSRNtv4Rdc9RqLzGgcWT9ddp8MK241fkp89ZF8EKQIs4tdvjlVI+c7sQ
         diGTyOoKY6TLI4tjCBn7/l1UpGSKiwnmPQsHwX7BrXXrYkjrbZxxz58WIr3MHoGJ8FuP
         aA1Ux970/cqERTtB3VaoPV/H6Ksh/gcAi//b8UuggkHtPTdIkNtTkFnV5EbsyV/Rtjcz
         2ixpRxOZ0lXWo6RpMTVfttekI62X7IVIVlc86FtWn71DUr5bI0Qv5zXhNEsricAmJjG+
         RRL6q1qXFh2cPmilXeH4bYFzA5dusNjRVduE0PPiPbHtCb1wRE0FSMPau/rU1N4vwf4i
         DpPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pAEAoAgeOOwDqnMjXUx0f5GqiEvraWPI7uunTOCrBLk=;
        b=JnAOr1h5M7A+DrDuUB7Bi+ZGOgdppfa46c16mTtjnvOawGw2I1xSSey64+1YZH+rIV
         K3NonqQBYIZVUf/pt6vaI0uF9ccFUj5qvKVJqL7fZQS61RRj0UJ/poDPPrd6z0AhnZov
         goryoq4vy8iinXuv5wz8nUDZ5eFCrVvU49bRRb2DIXMX80BkAUU6sn+D5gT70pHPXY4q
         5oMLEaiUmPFnAW1QfoPtEoy8ypWjSRTJCcl3EfMVEL3MeBlQjaySumkRqoXZAkx5Hrik
         4MG0iLPgkGpEC4uW2hB3lzEHpebqo4lpDVJyTr0aXQtLGQVnuLufZ04d3aoZBvAXbEh3
         ec8A==
X-Gm-Message-State: APjAAAUAsqLy55TG9V+OQ0rk+hteGWiDyVpKviyCOewXBfbOryWUb92J
	XGp6t1LEmdISH5IDft9wl7Q=
X-Google-Smtp-Source: APXvYqyujEpCqMj/0Fe+6Dsyp+FPSxQQQ0gOaFkWBz2sLhC06jZyedCNWNIoaKk/1PT17vKwzRSnTw==
X-Received: by 2002:aca:b03:: with SMTP id 3mr5286120oil.103.1572371134990;
        Tue, 29 Oct 2019 10:45:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4f98:: with SMTP id g24ls4637372oiy.12.gmail; Tue, 29
 Oct 2019 10:45:34 -0700 (PDT)
X-Received: by 2002:aca:4d8b:: with SMTP id a133mr5262702oib.140.1572371134473;
        Tue, 29 Oct 2019 10:45:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572371134; cv=none;
        d=google.com; s=arc-20160816;
        b=TzA/cKxPGD3JfxxPdR5L4QAPpsZ0WBdFozyFh0yVhm8nKu5QtPWVl1VfwknZxux+WJ
         abNjq04oalFtlXU+Y9Y8TV02G8s9KpNzLWcqo3BLBEMe8WBSW4ieQ24K8Ifid52JOXTP
         6rb6sZwX8xk7C9aXiVlswBUr+YuCD/7SpC3SWCC7/99I9eLSCiaexMzZvRnJULUAK9Ea
         5/X+p2zjw8uufixi5Af3oBCzDsMrUc+lEdtNeJH09wSptmD0eiN77FJaUPXqBIRAURdw
         oEyRp4JIyPq+JDq/Dn7WVks8brmhlXaFLdQoQKfF8nvdXyavIRqgOndzpbCJdw1vyh54
         SMJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=65YP9F0KitFD9legdxyLM59RAjKBzdRGrjI3L/m7ObE=;
        b=nfo7+NAAqB3Aw1+R1zUJBuJgl0jqgsbZV7tpoj15ZkKSyiKU2vR3OZmFyLmmT+//QZ
         P+KmdJHMzq8dJoRHQ3PG/b1LRrFGYXOIgQw4RzxEJjnO7njaVEeXgjZwxmdOF+8TkGPK
         yrq6l3Pc8YqZGCi8DE+D/XlO1lYxaM0EcRHjDS9z0Ipj/YnDK7azdtdyS+qGPaNYBhIB
         c2HcjfOAWZIRYAT3uWW5zUuffSRkmOtZ6duQL4aiS/HrmPUDeUQNLJ4nD7tvNfCN+Gmu
         nECwb1ViwAHVAurl/oxEwP0HJ0GP3QnMPa5pfA6j/6RKWw5aAS7w1IaJuhxRe2ADmQf/
         1xRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rPGbbUqA;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id l1si714515otk.5.2019.10.29.10.45.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 10:45:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Received: by mail-vk1-xa42.google.com with SMTP id j84so1068543vkj.6
        for <clang-built-linux@googlegroups.com>; Tue, 29 Oct 2019 10:45:34 -0700 (PDT)
X-Received: by 2002:a1f:7d88:: with SMTP id y130mr12501967vkc.71.1572371133208;
 Tue, 29 Oct 2019 10:45:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-10-samitolvanen@google.com>
 <20191025110313.GE40270@lakrids.cambridge.arm.com>
In-Reply-To: <20191025110313.GE40270@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Oct 2019 10:45:22 -0700
Message-ID: <CABCJKud1xYEx_GVgfBHUuwNGKMxX+uVaE5TR6DEqo7CoSJJnNA@mail.gmail.com>
Subject: Re: [PATCH v2 09/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rPGbbUqA;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 25, 2019 at 4:03 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I'm guessing it's difficult to always figure out the SCS slot for an
> instrumented callsite unless we pass this explicitly from the ftrace
> entry code, so we'd probably have to change some common infrastructure
> for that.
>
> We have a similar issue with pointer authentication, and we're solving
> that with -fpatchable-function-entry, which allows us to hook the
> callsite before it does anything with the return address. IIUC we could
> use the same mechanism here (and avoid introducing a third).
>
> Are there plans to implement -fpatchable-function-entry on the clang
> side?

I'm not sure if there are plans at the moment, but if this feature is
needed for PAC, adding it to clang shouldn't be a problem. Nick, did
you have any thoughts on this?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKud1xYEx_GVgfBHUuwNGKMxX%2BuVaE5TR6DEqo7CoSJJnNA%40mail.gmail.com.
