Return-Path: <clang-built-linux+bncBC2ORX645YPRBRX3VL7AKGQE6U2BGVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3704D2CF719
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 23:52:55 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id d4sf2969252ybs.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 14:52:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607122374; cv=pass;
        d=google.com; s=arc-20160816;
        b=bU4t5vOFH3KmLyRLhmjcMlqH6FoXrO9RBIoXdvlGI7iDK67Lg+sjxM+tKJzJr6e6R1
         ux0Tm6KCfKwX6f+V4dVX+irmKsP0JHfRZNPwPKYUtaZaDPuB69aWwx/8Eu63I8hHgS9F
         jFklAFEYoGngj3U9INEazwU7g+cgJi5TqHFN01g6ThMJgfsik4o1jyX+pL3p5FJ6RdkP
         9SN5epz43KFB7rzTPeErBd70Ea6TfAp9LcDT4YB0l9ZzdczIixmTkh/QA61V1gBeumG5
         bMxdc5Xj634yrF9eJDa5OXD8uYnUaQlkcSEWw3Q1ZrwZgyIsgWmUXdDrW7+YxmUiuSky
         GLzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=kal8WJhA78pKZeJe5bO1IksjzuszjB5T2ZEl1lRz/AI=;
        b=msqvUi7/gpEackBSU1N4TjDG0aeLO7q1mlPhov+g+KPIWsiEBfQJJnT4PpDhTR7UcK
         qYKgSX5EsaP3V+e3pSIEba4SbtimuxtkwaB2VdyA57NamJvoIwQHb+BElHAffx1iR1/y
         ZpAulR4way2foCeltvD2ilVfz08BeqlZMPRdUm/QPIc6Vq32q+Iy8TAWzjQB8W4UgTvu
         GqdN5kli05uj2RL8hmfij4l7WdGdwbvbVH3fy/nF07NdER6JMx/BwwcdBBxCCoQbF9Ik
         SbFLL9R2KUlwQyQohhSWdoBzeJaw2p1zuknVePZSzY5eF3CqE4q6x8hO9We+k1gHS+Tx
         7VKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vlYT2PP8;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kal8WJhA78pKZeJe5bO1IksjzuszjB5T2ZEl1lRz/AI=;
        b=FD+QI8Wa4X/ZcdvUdQAtBYaWgqFbe5zKWbeiyMiMXU8M0v9RdFzXykDCicdo8Crbnq
         L6nltUzvsbJYRlFY7l2cxosl5qOM59g1YQY/LQapptw8/WdiEmXQgBJuhp4BSiUoQDQg
         Uv6T0zyrH61CbCDkR6qjrGR5scWnaoT/aiEd/Epr5vj5zEqw7PBdz6upXB+K9V5nMwuC
         F4nT3U0tsf0gLM1LVTXQ8yDzC0nAaDBScl7zHnh93RqmxRThd7G2ojJ+UBpLPmK4tweC
         OSeYk0ribVjZJ4bWgbSAjaKZ/oGIyv6iBhPiFBOfO9y+9nJKAPTgZKrmAMkgzZNQiOig
         AJVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kal8WJhA78pKZeJe5bO1IksjzuszjB5T2ZEl1lRz/AI=;
        b=ZarAASiQZYDIzNVX7PG5eRi1wOcjQ8O3C4UzMdpuX7xp0tVmGDifZhRniyBxXTvtvU
         147MtbMaMMcD4lbAFplLCIn2eT35olZL0+XxA43khdVVQYEQEXfMkyssi1sUDNsFLGkO
         Fp/p7G3ZqGTG8unKLVAE3NPY3GBlAClyRWz3xQFiweDdMOmgObhWRuQNYiwLTaxTJTDX
         6faTnKM7ubV+Q3NDMTfSprVPgEbszm0usi4VWVqIl/AFX0Is9O6ASiTkNHujzNuzWnlg
         guzTXZIoeG0Eg3tBYp0cA8xpmKsl7vjIpwYWhJc/9Y2TUZ6DZth5vZ7p6taqkrsmw7ZW
         x2jA==
X-Gm-Message-State: AOAM532mWd2iDNXldOUwToIyhQGdt9TiIQy64R06Ezlj583m0FC8Gs/i
	Cf3NOUuOIs8aSQSp9f+27q0=
X-Google-Smtp-Source: ABdhPJwi/fYLZjm4xjzbTjA40vuRNgZo/FIOsc5DQRB/P1FrDBPeN9gR+UxfhLNE8eYy4zA2qTAD9Q==
X-Received: by 2002:a25:ad93:: with SMTP id z19mr2909503ybi.486.1607122374260;
        Fri, 04 Dec 2020 14:52:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:610b:: with SMTP id v11ls5093714ybb.3.gmail; Fri, 04 Dec
 2020 14:52:53 -0800 (PST)
X-Received: by 2002:a25:22d5:: with SMTP id i204mr10111578ybi.0.1607122373833;
        Fri, 04 Dec 2020 14:52:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607122373; cv=none;
        d=google.com; s=arc-20160816;
        b=YUj+vAcX80h82a5KsFU7Ctfz2K8U+9aNFSwLrznsF1dA53ZX+6mQEJiBCiafx1a2jx
         zZitDjay7KJbeOMOeSICpULPr3Y7PCSBfjsa7peX3JKN5zsiq36e7gKIl+BoGtxYLpFF
         VlM14BidEqSiYk42ORfKRJ9ZqfVEQiPYHa7HO+LUINBopTyKHLRRs68rY9p2Ti79/189
         VbGC4t3WS49Cn3YadguIH0CZeOjBPBIsRILOYoQ8DAeYmNU8GouISI9w5/dUkrWQL24i
         qrdGwWlorEcG/IU2r3RdSA6oB+poj3qm/s2uzXSoc4YvK5OxHySsOR0rE7dU9P0taCGZ
         2OJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=APDwfrMJO9jpMmlvJs1QQfYlFxkBjLtMOQGI8Flupio=;
        b=Sl4s1Z6d1BJZY3JUdtu3GePa6hOSxMJsvT2rDVhnLNiU0+2zU8RA0qq14/9P34htxY
         Wk/aks3TokUEhOe1syMTSUYYbD1vGhIISI2WN2CwbHSpSQBnlp+xKpE6MVH3OP+4Ma7K
         +jjaKVt73KeeZ52L0lEyvAuIbQJENpL+E/McycUfYg0BwJno9U5SswdHr5GkkJlDCajm
         XWeIBmUJAz4LioCA+G97IhWWbEY1x/FIpGKDpRwFNAH8vqaTYnrzhHeDYfEqJzn7QgMs
         e1Tx+Kv4iUh3z+tLkoXdN6vJzpYt2byk9ykN3e0mPUDSG9Pt5f8Gk1tKknH3EjLhLxY/
         WsJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vlYT2PP8;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id e4si507100ybp.4.2020.12.04.14.52.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Dec 2020 14:52:53 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id q5so4198153vsg.0
        for <clang-built-linux@googlegroups.com>; Fri, 04 Dec 2020 14:52:53 -0800 (PST)
X-Received: by 2002:a67:ec3:: with SMTP id 186mr6679107vso.14.1607122373106;
 Fri, 04 Dec 2020 14:52:53 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <20201203112622.GA31188@willie-the-truck> <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
 <20201203182252.GA32011@willie-the-truck> <CAKwvOdnvq=L=gQMv9MHaStmKMOuD5jvffzMedhp3gytYB6R7TQ@mail.gmail.com>
In-Reply-To: <CAKwvOdnvq=L=gQMv9MHaStmKMOuD5jvffzMedhp3gytYB6R7TQ@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 4 Dec 2020 14:52:41 -0800
Message-ID: <CABCJKufgkq+k0DeYaXrzjXniy=T_N4sN1bxoK9=cUxTZN5xSVQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>, Jian Cai <jiancai@google.com>, 
	Kristof Beyls <Kristof.Beyls@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vlYT2PP8;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
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

On Thu, Dec 3, 2020 at 2:32 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> So I'd recommend to Sami to simply make the Kconfig also depend on
> clang's integrated assembler (not just llvm-nm and llvm-ar).

Sure, sounds good to me. What's the preferred way to test for this in Kconfig?

It looks like actually trying to test if we have an LLVM assembler
(e.g. using $(as-instr,.section
".linker-options","e",@llvm_linker_options)) doesn't work as Kconfig
doesn't pass -no-integrated-as to clang here. I could do something
simple like $(success,echo $(LLVM) $(LLVM_IAS) | grep -q "1 1").

Thoughts?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufgkq%2Bk0DeYaXrzjXniy%3DT_N4sN1bxoK9%3DcUxTZN5xSVQ%40mail.gmail.com.
