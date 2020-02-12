Return-Path: <clang-built-linux+bncBC2ORX645YPRBI7PSDZAKGQEW7ZP3WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C0815AED2
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 18:36:36 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id k129sf944461vka.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 09:36:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581528995; cv=pass;
        d=google.com; s=arc-20160816;
        b=iab72+W5rHG0t8B74ZVeawhCxeEjx3u36n1EoNnr/Zskq3xcuXiLqr1tU0ozauZ9Xw
         4JVpKcSa70CtCtqqAqKUAF/QzFCWJ+HOWIQuGobPIqzfcjalf8K9C8eljnfsCvbbvmAS
         kUtiaL3+xsXc69yT5qzXuvRM0q4Y/Uro3mHoUVj4yOnpcOy1cWcdeH9Yiitj07lRcPP1
         qTWfCaprsx67CS6WWLvp6aULlkob0lg0SMr6GM9OSAr1ZFwHN3pmZPgyOCbgj2DjhDwn
         +yv8GG0b//tGYxJxm/tTFVAMYch1YNCv0WV9QZt/2DYbh/QTJnSPhsDtW/m+IH46BuvF
         JbvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=X4OrsI0RRkReoJa39Ywunv5aS4FpPxFqYdnZoWrbKVU=;
        b=xeNRExpgue4vJnhhrHFLJA8c2WVE3I1L/LSeNnA7QOCdDudnPca94rlAZCEkRzTmwS
         2xu9UR7ojCKQPMfaodBF8eYbkvT7yb5Kozb2vIGo2aJvqgXHJAeAXD7gImXZSzdap1HF
         yl0KaUlIoW0kJN/4eEXellTmerHQvpRjODvxmHqC/PsxJEwTsUVb1D2/k8HiLTXt8Ufn
         Qz5Jm/UV8L3BtxBPnvaBpgXkb60wSNZBy1pAP5D1iJMuuz/L5Kng3Gsu4W65C/XNu4jX
         tWDvjlpoppEMQ/Z1SF02/jxNf656s358MKaN36LHpWGlefW+vdzAEhkqirvOwSa2Nszc
         BCoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WTUFnbqw;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X4OrsI0RRkReoJa39Ywunv5aS4FpPxFqYdnZoWrbKVU=;
        b=WYjo78uhOSC560txZ3UAQip7z6qqQHv2OzjRw34QZLVclLBhLquCVRGWbXfg2KjVBZ
         cgt8bhmnsbWQFtF3PsCmfz6Nu+j7vxLJs87jgch3+2+fCvef4KpcTCzltxdf9Kj4hKV1
         0siwuXqOTsncnvM/lwdI/qNpF4RzN0ZYlAszBu47R2fifBOTrG2ybsmX9hp8aE+bS9J4
         TKnxFP+PSPf6H627kBY3rjB3FLoOqnX+AqTkX2efZEFo6dW7UZiTQ7RMnvxMgAlrqPMB
         iSdTsCv7BXWiljD02V9juLX3ickya7VBEzEIFRUPg9bbpr/td1kChoUHyKytG6qjO9BH
         64Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X4OrsI0RRkReoJa39Ywunv5aS4FpPxFqYdnZoWrbKVU=;
        b=twYI0pc2wWv8rwKgjkYtcZ1piSsBfLv2+Ldrch+3CioOHQhDfurHvscg28f8sk0CXy
         EAil+zqA6rh3Tj5WrbToVFmua0RnDOAIRQmThK2fo9U/qts7AB3iTut4j/3ZfP4XelO/
         Q3bhdV710JN7L52E/HWdLwcGujlWvPgWn2Qf4vMva1dWrInHXs8gbqKjkMOcYEjYOXxh
         kUUCkV1c5sMBy+Zm6mvSFYFOjMrWK+79AJNsdn7ska9Uf5+8rJ17kwmvAWEKt1e8Hqth
         KkPaNGxxcSqlg9dVhFjpaMWnaOIEdUQfYNJMc4JNGCpGV/OSWhhmh1KKZUrbkqMLQDw2
         B8WQ==
X-Gm-Message-State: APjAAAUQD0LGutXbkF8BlLsVO5b5eV1a3nQ9ZBUGh4pPVRwNga6ffLVl
	0CNi1OsT2CMcGctChcsuXHM=
X-Google-Smtp-Source: APXvYqxe8TweY/svq6OFggZBTwMOgdzub2TsVlPaITSRDRpenAPC9tlC5hGjQ8RkCOUYZiq3B9veHQ==
X-Received: by 2002:a67:f144:: with SMTP id t4mr12725899vsm.36.1581528995610;
        Wed, 12 Feb 2020 09:36:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:804:: with SMTP id g4ls1787767vsb.11.gmail; Wed, 12
 Feb 2020 09:36:35 -0800 (PST)
X-Received: by 2002:a67:fa51:: with SMTP id j17mr4128997vsq.59.1581528995167;
        Wed, 12 Feb 2020 09:36:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581528995; cv=none;
        d=google.com; s=arc-20160816;
        b=MSe/H41oYqWx8cP4IamdsQy43yAl/FIecZAgW/PWLwOWZVlio1gJlyS+mpsRCOo8qN
         q/xsxxjmJ4iVn4LoXMpwRe5HnymwEBJhvMfSlVhSevAQ70TegaLUExCh0/6xvXRFH5bj
         RiJ3heYTO8gwZcHX01vU6iZ/TKbbssTglYAsjXULsJ18tsnvo1AijztdELJiXc/bhB5U
         53zCA1zotJ21xAJitSrYXUpI4ZF7jNn6Srln2K93ldhIzf8etz8F+zWVyzNKYBNUnOL1
         wbbeMHhZNfQ9eQ8clm/2wdLdMZQ1MlUFwp+YwWvlJo4KGhyawS3ffBQRZKM5EqUlVWEf
         J1dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oXC2J3nEK5SwOdFoK4ULqW0570rBTdySIYo3+gIlo9M=;
        b=QKS55KAZB8wgwAEkHMgq6WcnE6jWWIQ7/ChOGfCemWlnKN6dEXOsdGIriG2YaM07Zg
         S5jNjjufmLWeA24j9cvvvy8qGmcUsPfy8YAt2vKtfT/wr1Ly/B+u7LN41PpBZEGo/2es
         cAVflu0Z+8zvrHMINscsBK9VTPjBZ++oYVKEunUfnzApptwPYqxJ+DXMAFobVBUBrfTo
         8jYhBcpuGp9nqFJFXoxy2tNptdy0+nvU7NDWoRYfETF/ddIyLViV8ONblhlypNQHNQsA
         7TKd9J7Ei7CeMG7NRK2GccGp5oPy2yzQ7gyEkaFztGZkhIKVTm4Yc/c/AziRtHlmro1n
         OX9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WTUFnbqw;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id t76si50344vkb.1.2020.02.12.09.36.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 09:36:35 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Received: by mail-ua1-x944.google.com with SMTP id f7so1174444uaa.8
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 09:36:35 -0800 (PST)
X-Received: by 2002:ab0:422:: with SMTP id 31mr5283734uav.98.1581528994562;
 Wed, 12 Feb 2020 09:36:34 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com> <63517cff-4bd6-bb6c-9a54-23de4f5fbb4a@arm.com>
In-Reply-To: <63517cff-4bd6-bb6c-9a54-23de4f5fbb4a@arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Feb 2020 09:36:23 -0800
Message-ID: <CABCJKuff08oGqg-2WO-J=SkGHcX+2KCrqhmgVnQT7ujKGUcvag@mail.gmail.com>
Subject: Re: [PATCH v7 00/11] add support for Clang's Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=WTUFnbqw;       spf=pass
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

On Tue, Feb 11, 2020 at 5:57 AM James Morse <james.morse@arm.com> wrote:
> I found I had to add:
> | KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
>
> to drivers/firmware/efi/libstub/Makefile, to get this going.

Ah, good catch!

> I don't think there is much point supporting SCS for the EFIstub, its already isolated
> from the rest of the kernel's C code by the __efistub symbol prefix machinery, and trying
> to use it would expose us to buggy firmware at a point we can't handle it!

Yes, fully agreed.

> I can send a patch if its easier for you,

It's not a problem, I will include a patch for this in v8.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuff08oGqg-2WO-J%3DSkGHcX%2B2KCrqhmgVnQT7ujKGUcvag%40mail.gmail.com.
