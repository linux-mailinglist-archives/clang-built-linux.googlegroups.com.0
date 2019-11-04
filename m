Return-Path: <clang-built-linux+bncBC2ORX645YPRB47PQLXAKGQEYSLXY6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F34EF157
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 00:44:53 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id y127sf1771240yba.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 15:44:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572911092; cv=pass;
        d=google.com; s=arc-20160816;
        b=OnwooqykjTrOmq80siBRezRMB4o2ObM8O7Yq6wIs8RVgWxk4smDKAG0aaOeSVElD4C
         FZBAgiEfuHFBUOytBZMy+TxhddkxtMLjc7EPDmRVUITFZUs0ANZ38Gha+EAzipwVlE5k
         NPQ1My0UkUnsqIQfDYIKzfWxEsaqeq1mX++RDvOm/Yxw2InH+hnZV8jl+k4IkUBKMJoc
         6GLwof0JDlBylozko4E4AWs7GPZb+CdZGM4eCcPIqnm6KCgyMsUCl7seolaSz0LCPUMn
         sM+Emj3zqakSDqK2BQf+7y4NCDq+eeAcVSRe9x2B28+ERIgQwIzlwbSTK3n5GSBURGRH
         ZmRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E3RBobZq0Uhiin/23G48JALhCblQWQ6Nq19/5KpvXrE=;
        b=Ib5LEXqmvMK1c9XXpD4INSyKvklWLrXrOInemCqbF+PGyg23JDZaW1aDR7iO43B55W
         4wNBj+lff99Y0lqRmGhlUKr4XqaJn9jS3lj542b+WrAmz0XyGt8r/t1aq5r/UnxdymXV
         BZNNYmtw3I++6iXHv+FWVG6agqOry/RIkpzxb05401I7j0A5l5z565u5XvI75Jgs5tvU
         DBqzcZlcngSOi8d5IaKnFI7mvGpN8oTRlz4NKGlJFuSA723NPM0o4Qz5FuLpj2+3V8cv
         p7cg2e9lrv9f3zZdDE3CCdT7xl7wf/sVUG1vVBYAuQY5zDDX5tko9mApT8D1/u7XwasE
         nbFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XWr7kryZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3RBobZq0Uhiin/23G48JALhCblQWQ6Nq19/5KpvXrE=;
        b=SOiqqx4LHoozBBIsCBeLmTgl2pAOhHQt07eyyea+J5mB6gDz17WLqTNUz6yjh4CzFS
         9IslqGZ8FKrALwbpmP2HIQ5OOAmE1aROp/lmmfwijacy33eO1HxWt3Vka58j0vNnETPa
         cxNXeMOPZO3iNZtjoDSvSdtLDrfmgZWg9D3NSD09G2LMyGfPBvFYnPYPSh4RcqvRKc+u
         +drJugOw0JK4xRGwBA9JWd10mH57MxJVPNkT14HjMB4EQSyTR0PSoH4JPQVcrxBUTKU4
         9NGKI4ubEk5DD55xCjIXiHvz/H4SCeaPubtwNr0bKqvr+zAY0iFehmdEftm3S+CamT1e
         eK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3RBobZq0Uhiin/23G48JALhCblQWQ6Nq19/5KpvXrE=;
        b=hkJi1u/lXsDwmiI3PCCMEk12qSujsClc3X+jiL+LIRhcdW5DRh0PlS6bZW+SGWIv9i
         s+MnujU5BZGkipFhEGIWt/Nkc8eUQl5uH+nvg096jxIs2l1IV6OqJhAAS9V8uBqJk3k4
         zR1wFRXqbyYwd8Hm9h862lRr0jHMhJhciNJPHA5rK6QQz3oWjxCZ75N+Hf/qM8WDmd2z
         fJIemRGTYB1VTYqtYEQzbMtOc858t9xjyGE6I31DvDVDReqECBFN20ZdQs10dybAgJW2
         NpJ2IYUEnXxf1cG8UH0hTW2XxB5d9S0aNuUH3L+fREWWShO6DbLLG8k0/oOIFVtjEndP
         cFUw==
X-Gm-Message-State: APjAAAW802ZSe2EB2FtYW1hQqL8JGWYV/H7pQE6sS3dQvLt90smsRlJp
	xZ/8V4gja60PnnfnC31A/dk=
X-Google-Smtp-Source: APXvYqyBzzQFhXpdpXF2SzdSHu3QkFPsgrnJ29OP2CAO+dAzeu2m6YOwtQnyU90VOAZkz0lcC9gi3g==
X-Received: by 2002:a0d:cb89:: with SMTP id n131mr22044666ywd.316.1572911092063;
        Mon, 04 Nov 2019 15:44:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:edc1:: with SMTP id w184ls688391ywe.11.gmail; Mon, 04
 Nov 2019 15:44:51 -0800 (PST)
X-Received: by 2002:a81:3c55:: with SMTP id j82mr3377595ywa.163.1572911091517;
        Mon, 04 Nov 2019 15:44:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572911091; cv=none;
        d=google.com; s=arc-20160816;
        b=Qwz775SafnGJ9xZzmeC+bSQ934n3eub0ojOR7klJ/Xvu/15uQy64+MVbnIUpW/5oZa
         GfvqSA30puJ639BybUqZPUyz6jFkD+IY3MwVl1FWQirPjHJQDEIicNgnMRE0ty18kV+Y
         3bUXTU9CxaTkvHNEp4m/xKoCaH9e7q6R1fthSQ5qasP9mdQgpltCjXh9qwTH2crAI1vp
         KLmGxegjDoatyYLtMDIF6T871OLKlOEjXzSAvuyM5qaisHgAF+5hbcZAXKMFAw1B5A4s
         jND2+LSy5rWfPJiqHzt3ZwYtZ+49cwft2Dt3ztzApkW1RwOmf5fxmxxGabYQVJsbf6eK
         4FkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SpNwJfSJO9MidRCrn2p9uupIwuhjvEPSgYuh9TBYZuw=;
        b=mjRuxMuRScHzISnoSmcOp5CSi0sG+eFbh0rF4lkBMzVTKOffD5OAbNJx6sU3/MGbFa
         TonSPkrTKcP1+/CXq4xu6AudRZNCdfq/ocOOnewmgLan3Lc2HQdczSrSKjQaO6hTdUMT
         v7UDY4pViLohENh/qeIXrQATphNurT3/AnbpS4OEDe2Jp5UFFEOpjHq5C2Mky3+wpBYR
         u6evKmA0kNJv4D/OMwjSrKSWqKu0dG9xdD5bkInEzv8XU/Qv/z8zVk9CLMj3OXm1NOCq
         OQjvz9Fj4rggQbQvpTiHBQ/31kHbgMgIm0m8rGns7y/z/9JHCOhoHqqL/GIgT2rK91da
         TIIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XWr7kryZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id v135si1060871ywa.0.2019.11.04.15.44.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 15:44:51 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Received: by mail-ua1-x944.google.com with SMTP id i13so5547721uaq.7
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 15:44:51 -0800 (PST)
X-Received: by 2002:ab0:4587:: with SMTP id u7mr3850575uau.67.1572911090684;
 Mon, 04 Nov 2019 15:44:50 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-12-samitolvanen@google.com>
 <20191104171132.GB2024@lakrids.cambridge.arm.com>
In-Reply-To: <20191104171132.GB2024@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 15:44:39 -0800
Message-ID: <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
Subject: Re: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XWr7kryZ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944
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

On Mon, Nov 4, 2019 at 9:11 AM Mark Rutland <mark.rutland@arm.com> wrote:
> Can you please elaborate on _how_ this is incompatible in the commit
> message?
>
> For example, it's not clear to me if you mean that's functionally
> incompatible, or if you're trying to remove return-altering gadgets.
>
> If there's a functional incompatibility, please spell that out a bit
> more clearly. Likewise if this is about minimizing the set of places
> that can mess with control-flow outside of usual function conventions.

Sure, I'll add a better description in v5. In this case, the return
address is modified in the kernel stack, which means the changes are
ignored with SCS.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufDnLjP9vA-wSW0gSY05Cbr%3DNOpJ-WCh-bdj2ZNq7VNXw%40mail.gmail.com.
