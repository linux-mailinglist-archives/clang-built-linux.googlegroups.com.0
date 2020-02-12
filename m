Return-Path: <clang-built-linux+bncBC2ORX645YPRBNWOSHZAKGQEEDHDRRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ED415B263
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 21:59:35 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id z17sf881961uaa.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 12:59:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581541175; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZjD1CHwbCxigDtUkZhg/wPlk8sP+DCijyx1Ff9wZxHn3mudurPmgoVV5KUJ6u1gD+G
         p2lmgYNb82R0TOXKz+7mXSzeJ6iKNSlyRyQw2IsBdffQbIQ2LGEvLM46Kh024Ea4epQt
         XUIhHSoe/bghtHfRO/ivHn/An9QL50JiaEtFEULgDxdGYvj8MjK//9xC2ACyFO1fRFDl
         98ACxr2rQfXRO2hxmba3X3WYjOKAhxX+KBjkOzcxWMyzH6yFYsFA18xAPorPo9h6eQv2
         GeGXaqpefeX0IU557uZPhyRfjGYf8W65OSm6edMbqSN0BvuLlOVVEd5VNwjctqkB0hCs
         pmjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1wd8tDgFBb/39NZRoG6V8Mw6mYqemWeC+bvb1cqVgPY=;
        b=VHDQlJyJYcRelESxgWt1xqJJm+fu9IkC2b4+F+KxvDUkaDJeI7bZA/bvdtwseQRgYE
         ceJ4pmNwIicszH5FDLEy22Mt/1Ob0l/FtTzamqFynqmD92sboswrCm5xfpnSGQFur+p7
         l3Oj1NsgNeB6J57wzMN+054TbXeUjqjfQRFRRVPF6scioNFf4/+wIuS6HAKN9tm+Kfwn
         KQuy4aNBp2KJbr590tR/T4MRzA3PMHiyXQl2J6ra+dhMZsiIgfWM67T2rci2TZpKqfLD
         THHYCbHvBuAiFELxUfOicjvksfdYauSqBdGCog8gPrpHtDj96p281nY19Om/47uwta5Y
         zQEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hqtkQWWM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1wd8tDgFBb/39NZRoG6V8Mw6mYqemWeC+bvb1cqVgPY=;
        b=kylzeRqIaeJX2thqKLfcwDNuxhd4rzK35uiwDm0hq+BYFwNuQs3ZL+Jmefjdo+L6VU
         vggKyuvs9/RJ08d2DIJeM80R0b3ra9ztFFlb5OraqRIcNejxOW55+nf+Q9NpEx3GJpy9
         xhIDCUGwkSiaYZBEl1HfpbVyJ4i5U8OXVG4x1IiLFj8WiN8uUoJyE2VrcwrznNo9YxyF
         1MJsG9sbulIg9H61qQ8xqHl89bTwTVIvqBlXw8FaGDl30IZLu8d3FjWwTSmfm9SJETer
         sCkESffUUUTBrT+lR8o/QVKu0dOBJXg33Ar+UNsYSx2mt56kWcQJnP2do8C3+2o+dtbj
         B0/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1wd8tDgFBb/39NZRoG6V8Mw6mYqemWeC+bvb1cqVgPY=;
        b=CzAMv+EwKPXZ7+QFCpgfzwhv1MufeBaDOh+Jsx74IAuYOoads4W3esfKGJWwkF0Jwg
         5GA+WZYFvwKo+YRhzOAJ4+FwM4vuEoimiWfplFH87I1LcnfLxGOopEU1s9baKQLX4UkS
         +iHbicbNFiWn34TXDGP0OwmcX1lyCk8KaNJ7crdJJVf5AvkCRV0QOwjXfcKB/DtY/wJm
         dIpn3pEJOaeZ2NVCmIAsaGkMl/DExFBZrpVqGOsejKZwVgQME0bN9muicqPfrjWJKjfM
         IO6LokuoS3mh++zkWFrBSyq0CdUE3D5gNmY7c2e6MZY4gdq7gvWrvmj28F9B3zeQGx8j
         OoXA==
X-Gm-Message-State: APjAAAW5dR7EfSDBakksUqnisF1T5QA6e+ic8cp9La0RxnKuzRaEUH0O
	1NGhPPhr3whPhXdY2PPMmOg=
X-Google-Smtp-Source: APXvYqw50tvdvyGA7oPn92gW9SzBbjDxTPanNgWRlOEmYdCTONPD0DToTKXgArcEgM/86RC8PMpbUw==
X-Received: by 2002:a1f:4104:: with SMTP id o4mr289459vka.80.1581541174820;
        Wed, 12 Feb 2020 12:59:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2885:: with SMTP id s5ls1072663uap.10.gmail; Wed, 12 Feb
 2020 12:59:34 -0800 (PST)
X-Received: by 2002:ab0:7358:: with SMTP id k24mr3308057uap.87.1581541174365;
        Wed, 12 Feb 2020 12:59:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581541174; cv=none;
        d=google.com; s=arc-20160816;
        b=PNcHeTniPmkU5EDqeBL3ZnabbJo9C8MzJ43a4it9CrWbFsGbBsKPZt5QM1g6LoxFFF
         MYNE3b6RLks5PpJCyT8NqU4R3nPLy6WgQV2QUftsjnaFa+lDtfdQYo1t8nSfwA2crDVs
         s8MCaMCWWtMUKPecqQ6PJuGwsCA4fIJbYxjdHZMACN9fCwETb9Wwel0Frw9vZ4JtPp3Z
         j6QCgZSiiadtSr4LAq9G8Slx3EkuxjGibx2M9fcBiwTpZl3h5jFgiA1NFc1qst0OmS5x
         I/7xvssNoxO9+UW/JfKZqBahXAFGZaRCgcYM8PqBfVCdCMoTi+qh/GQc5urmQQW4ysJG
         15sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dNT84lBczGzzOgb9OnM5Fdxg6SAeViGOzJlzxW7UwtM=;
        b=CbUw/ENEFv9mGcufFVzp9gjmRdWKWCrJRf8ceC2cf3ZR9XP1B3wnmYEVwhXlNNSgfT
         uqaonRHLgglpQ9v0OEKSXk6ex5dUMlgCfhFtQkwPYdEJtemGmxcqpw+zMg29xzXz+y0q
         T4+oZzKOkmjE0AuJSDspyn7AP5kKAb7xhy7VwgXR6CfVhyo71HeVJKZTnDD5nheVCpnV
         T9nRat9sLEpSsyCJNoNtp9BYrskkSLIKwFegdd/WehbXJZNVY2GQKktD8MYJrYVFYS+K
         h/Kokw6OH/RQETp6/RexvVuo9rh1OtLIjSHY5+8HnXBomPCnQGKrGbGsxDPS2AQD5Sa3
         jHcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hqtkQWWM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id s5si13167vka.2.2020.02.12.12.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 12:59:34 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id p14so2144603vsq.6
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 12:59:34 -0800 (PST)
X-Received: by 2002:a67:2c15:: with SMTP id s21mr298736vss.104.1581541173587;
 Wed, 12 Feb 2020 12:59:33 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com> <20200128184934.77625-12-samitolvanen@google.com>
 <dbb090ae-d1ec-cb1a-0710-e1d3cfe762b9@arm.com>
In-Reply-To: <dbb090ae-d1ec-cb1a-0710-e1d3cfe762b9@arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Feb 2020 12:59:22 -0800
Message-ID: <CABCJKudpeTDa4Ro1aCsCJ-=x97SG0qu5LGpj9ywj1aLOtboNkQ@mail.gmail.com>
Subject: Re: [PATCH v7 11/11] arm64: scs: add shadow stacks for SDEI
To: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hqtkQWWM;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44
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

On Tue, Feb 11, 2020 at 5:57 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Sami,
>
> On 28/01/2020 18:49, Sami Tolvanen wrote:
> > This change adds per-CPU shadow call stacks for the SDEI handler.
> > Similarly to how the kernel stacks are handled, we add separate shadow
> > stacks for normal and critical events.
>
> Reviewed-by: James Morse <james.morse@arm.com>
> Tested-by: James Morse <james.morse@arm.com>

Thank you for taking the time to test this, James!

> > diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
> > index eaadf5430baa..dddb7c56518b 100644
> > --- a/arch/arm64/kernel/scs.c
> > +++ b/arch/arm64/kernel/scs.c
>
> > +static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
> > +{
> > +     unsigned long *p;
> > +
> > +     p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> > +                              VMALLOC_START, VMALLOC_END,
> > +                              GFP_SCS, PAGE_KERNEL,
> > +                              0, cpu_to_node(cpu),
> > +                              __builtin_return_address(0));
>
> (What makes this arch specific? arm64 has its own calls like this for the regular vmap
> stacks because it plays tricks with the alignment. Here the alignment requirement comes
> from the core SCS code... Would another architecture implement these
> scs_alloc_percpu()/scs_free_percpu() differently?)

You are correct, these aren't necessarily specific to arm64. However,
right now, we are not allocating per-CPU shadow stacks anywhere else,
so this was a natural place for the helper functions. Would you prefer
me to move these to kernel/scs.c instead?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudpeTDa4Ro1aCsCJ-%3Dx97SG0qu5LGpj9ywj1aLOtboNkQ%40mail.gmail.com.
