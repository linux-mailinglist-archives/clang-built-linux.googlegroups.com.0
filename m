Return-Path: <clang-built-linux+bncBDRZHGH43YJRBYPG6LWQKGQEC4LFL2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F90DECB6F
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:36:18 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id s26sf7518264edi.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:36:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572647777; cv=pass;
        d=google.com; s=arc-20160816;
        b=A2YGPKGMVHxGf99vZh99S+RNCVNywb9hTxrojwmn/lN9e3TedODfd3AGEy/xnUc/lv
         GU6gbu0zbYW0rn+XdNCs9/klp7qM69rVk27hZfkGBCCeSMglTDU/NgyheimRccOqk3VZ
         zYEaUlfyN0o23BqP7MzN/DxI4jX0an9ywmoA2lO7Uq6RsmRaLEq7q0uymDmhN5SUuouQ
         klMAjNpQokdYdJgw8xWhAQ7kFHJl3vu2q/pQIhEkajCtsqtJXjMQRlAVO0YnZpwEt7vw
         gqWcVUFSvtduz1rj5ZsCLIcfAhf7vYmzQcGj6J+0rt6nkfYGgH/vRWtlL76nAIu6VhuW
         7gYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dK5X1LLWf8nDqfbmnAYPPxaUADueAGlumPADHWRKNYM=;
        b=ToeRkUaPA7tjIJDAx2Ef5ELW2tdm7jUjzpBofeEhm3f4Z0/YDXuEcBCsxo38xVuHi8
         fmqwJto+6J7rCaqLBK16aIui2Kvn/XM9wPD4kPEnygjks0xdNSyONXOxSI+YBFAnUDr+
         +DlZIobbVbJzl2Hm1ItGPydbivBU7HLuy4GRM5cUWj3sMH5dfDZdmkCoyekSCSmbgTjV
         C1zpxYiDheR2DtJFfuQBcSFjBoKtMkwEH1aq+3DACa4EjEYSEHUOC9LH0fZsa5YJo+CY
         ot4uYx/vZMdskkbHZIaldDuEiNs0fNMa4R/JcujoRtzIguX0qLDKC9FgzlndYPIg2Mgj
         QYKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bli3xmuB;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dK5X1LLWf8nDqfbmnAYPPxaUADueAGlumPADHWRKNYM=;
        b=qC/dN409zMr0JthXEcEVm8zUcfskqah3NoeH6qDUIIqEhPLek4JI0R7Fl04BncDpTt
         /eOqj4KLi1hyQYhUMNRNyV2nH87eFuWNLWdhw68YitDGtDJd9F5yi8Ru+7Gj0hxIfpmo
         d1HXMhqFkCDr0G7sWptAvFvCbQyl3cQrL/I8Bp1+cz2ar3VX4WcmFxox1SoucbRXnSsG
         Gu8pnIIS3HW0JAjG8dbHSIYcDUHuuhkxuLPbqWSYsdskbnCTXC2QZIty0hyjIml4p1kj
         THvoit4WA25/gXqF2s/ic3y4EQO7VB3M2LhVKnxQQ99Erz2nwWnIaSnpNyhaumxxIq2J
         yCGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dK5X1LLWf8nDqfbmnAYPPxaUADueAGlumPADHWRKNYM=;
        b=tdN6mtAqjEb5f/PrROofK0sUQqtNgFNcu4YWckillvps1gBHsthFl4jqMhkHvfnVvj
         yBUgWBly1piRIGOLhxFmK/SNUQRagVoLXDzMZTcz+6Us1R9YJXHe5RO8ybQt7Xi4nCNR
         jj9NBJr1U6dH7OpAj7OiXad580F56d0hkQO9Yi3sQsNDiKGJrtR32wxLD4iiZvvv/yKg
         4PWb4FUf+REf8fpLrlIFWNIZV1iSKVF5pbVZMTjhjhBdjlaOZLcrd1GaWUb2rMyprbXZ
         3DOV8RbWlrKJApfnjb4qZklK/f4NtVMTpH+199fqgzZAuual2YL3ikQeqsR2KQ8HdBgX
         6Q8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dK5X1LLWf8nDqfbmnAYPPxaUADueAGlumPADHWRKNYM=;
        b=gXNPDw0klLNtMh3KlYGqVOaDS9OVQapiI1zwCLgwjLp58HSLThzjPukzDcisbcUvcZ
         Wssrg2Q4cIFMrtDcBswIpo07ASeeaw4EX4e1eklcKsB5pHtwchbX7KQYVSd8Tu8A0CmF
         qSSpQo01XZNWL8eEAiFO2v0qBYbldF5BfqDSCj/S95RlsAdHy6UFF9XE1lmCJuvwmVBK
         /8to0bNFrjjpy5p7OOpPQdIzZDtK/JzBSbPiYSFlJk2d+2oFjqA/+3ci56Ogz+isQe2V
         kzUce88d9CqfI7k1hcoRp7hIEfAKbfUcYwijEC7ERVB+FNQXUsPDIV7sRfzH2aFMrW+S
         gcww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUdQoQ13mmOkzTatlcUIgHjzQBdOd16kdiaBQ4Mxvyc40uT+hyF
	6dcN9G5FoPZXngUhE12ARTg=
X-Google-Smtp-Source: APXvYqzQZEYCK38q2q+oMVmBeGaFcQ+L4kGIYpfOG6FgJxuPKEXqtKaCb/QKojtaQ+Xe2pRPTdpySg==
X-Received: by 2002:a17:906:4d45:: with SMTP id b5mr12112579ejv.157.1572647777875;
        Fri, 01 Nov 2019 15:36:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:cd1e:: with SMTP id z30ls1529026edi.15.gmail; Fri, 01
 Nov 2019 15:36:17 -0700 (PDT)
X-Received: by 2002:a05:6402:1554:: with SMTP id p20mr3982247edx.8.1572647777167;
        Fri, 01 Nov 2019 15:36:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572647777; cv=none;
        d=google.com; s=arc-20160816;
        b=AvambOqu5618nj86+u9KHz70qujl8HLcIr2UFNrzaa5ip6bDxEhQzwZp1BfkznIUpZ
         07JAGgRrPLRSvHc4aDoggqDM6OxypQgAeZ981aQyismysjEEOJOtbCyITHQaM1fXwUDf
         XAzR8CKtyQ1XoTWWfRPAfyAU27d6AqxP6mg5TcHhfumMu/XbOIs2aDGs95sYrJS5Tnmz
         HPN5ZAFPqbfzT5QyWxDc7UpL+Mh9u+qw+MKl8VH0K44xCi4GMcszfCvHYP3Xt906Xt6w
         2uIAx9dg+A3sQro6xZAzSyBee2lqDoO942md6LmbCnDZxGNyMxmrczF01UM/3Z7xp8MJ
         GWuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VOVEnixRZLxQkCHgEpMJYKVl9naG8q4Bhsey3a4BJyw=;
        b=XoDF0WRygQ4PLoGebQQoX80u8pOYWHUgTaaxt7YCB8wAMn4gNsZNM0306KuFRk21v5
         4sXLlP3cV/4rfsYZAihZxo/1au0A5mCUewS5BptvJbWFZInZ7I1iNCvV/6q3ByWssBee
         fT6XB/gMuRGZk5d7mIQQKi/wWmf+gqvFp12xgXmr/4Ir/UC6CWcIVjFiJgQ8nMnz509H
         AHXJloTrZvE6XbLL0u8XAuJQib4Fxmi2fP7kaRQlzSuWe5eQsl+iCVG5mcLctvTpoxQj
         Eq0p6O6KX0535PoX0G8NU4GAcMO6kaUKUcFLav8lRhri9hfRgNkAuRufR2S4M3CsWJUw
         cEgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bli3xmuB;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c28si489674eda.4.2019.11.01.15.36.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:36:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id n5so708090ljc.9
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:36:17 -0700 (PDT)
X-Received: by 2002:a2e:8852:: with SMTP id z18mr9873721ljj.230.1572647776833;
 Fri, 01 Nov 2019 15:36:16 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-6-samitolvanen@google.com>
In-Reply-To: <20191101221150.116536-6-samitolvanen@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 1 Nov 2019 23:36:05 +0100
Message-ID: <CANiq72=Z285XTHguDoL5Eq_7XRcounmBfscquFPRWk3BH5kLvA@mail.gmail.com>
Subject: Re: [PATCH v4 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bli3xmuB;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Nov 1, 2019 at 11:12 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This change adds generic support for Clang's Shadow Call Stack,
> which uses a shadow stack to protect return addresses from being
> overwritten by an attacker. Details are available here:
>
>   https://clang.llvm.org/docs/ShadowCallStack.html
>
> Note that security guarantees in the kernel differ from the
> ones documented for user space. The kernel must store addresses
> of shadow stacks used by other tasks and interrupt handlers in
> memory, which means an attacker capable reading and writing
> arbitrary memory may be able to locate them and hijack control
> flow by modifying shadow stacks that are not currently in use.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DZ285XTHguDoL5Eq_7XRcounmBfscquFPRWk3BH5kLvA%40mail.gmail.com.
