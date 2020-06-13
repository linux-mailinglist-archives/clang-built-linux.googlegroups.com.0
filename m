Return-Path: <clang-built-linux+bncBCR5PSMFZYORBGW5SL3QKGQEFNZK7GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE9B1F82FF
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jun 2020 12:46:52 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id k13sf8241932ilh.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jun 2020 03:46:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592045211; cv=pass;
        d=google.com; s=arc-20160816;
        b=c4NWY4x0kqGt99bFmmwQnw8gNTHlGuWzo6nYctfe5cV9QuxhTHvN9ly9AwjdZlf72D
         LkqzjiiFqvhLaIC72kVdrvJ4Kb3OuO9YYesTkjr7TNLqMThSeYrBT+hG1fZnJk+x6OOP
         9bYJDsV+Omo3tJRQLly6omdpsahbZOsrz07yrgUlf00rNF600zh5xw4y7jfkcFBZ9bvd
         3Cvblp7S6gEEUIy8ZCJRui5nTVpUrJ9Kamluae0elbIgr2eoxBQbYwlBUJv+z7NwscV7
         Hg4vzOgoXyVX9zgFJy55IGm/nYcFXwCqszoo6sW0Sl53PGZRHg9mA3QuKOsneetntFVW
         sWew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=6JeEjlntGsXMwiI4j47GK6stlEgiLqe2jW8q4AgU3wU=;
        b=f8PyuT27jZ6ket0n92gkPEumTMmCcfdTD/Yk6aEcYxzE1dRm9Q7c4FxK9fIR+tllcQ
         ZDPnQF/Puu5y+l4SC2MzHODByN2gSDcLM62QMuEawFvJoAynVwsZ14C4UUkKKWGtqzLk
         8Nm+qsPpM72xZc1tERzfcQI49tzxble+61YIb+F3UdBLZjc/scLORjVMeBnpu2muixLG
         CDM+PGCqYH/3TZMem6PPiW8SUpc4WEk42gTwuQCXdsh3nL9gH4usmQR91myqTpVt8rOk
         Y7e8ai7ibUdfTJvkzzVIOElinqS/33wuYLmyt+wBUwu/1QmXzMnrwYH0tG9mzwGqiEZc
         mwzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=BFq6fOLl;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6JeEjlntGsXMwiI4j47GK6stlEgiLqe2jW8q4AgU3wU=;
        b=JOgTzT192Xo4S7AjO+OTwU1l1RnHGlmtL7F33jekLrDwxBkd+HQBkTZfjGL/EfQLT0
         l8tv9rEc1pGiyvXccDU98sjBV5FkceiCdnpnqXXUGWw7W4GotsCqHsWe5KVQNXwpvMM0
         f8AdngzsYk7sTRS4BmV7KAjUFDb9BfJ/NGSU8DAlVtcmuH0XpGmp97YZcyHHuNblIPG2
         /QCO0+u5Dwc+9q95/lxjhXdDY9JlW3t8g2kia69f/kmUQ+p5oSQRwT+11r/iv/qTe665
         ScdUCB3NQYUs979Z4AkaQrCvBLW3pP70Soh7fYBD1q/Y0ZjIIDrwtNCwgNZf9pMU5eqn
         jgeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6JeEjlntGsXMwiI4j47GK6stlEgiLqe2jW8q4AgU3wU=;
        b=ivAWGoqjE/WM8QMExp7KQXgvKRPIPU+vrP4DU8z56CbmV91lGhIce9W1857rJ0VPb1
         nW9GfTuAusXzOT9eVm2KvAflF98kJCIjPxXE9xNMJtYq515EfPAE0COR8NTKOsgS5un+
         cZR7wbmlz7tV2xpBTiGlGCwJAykg1lr2kV19Wcp8EYpjNVZCWiLIafebcthP1/EenY6r
         CMJVxUOsTeyl2egkymXzmaY/AscPCnUbBAH8NoIhxnokYgSKLUBKCL4a0QF50FsWXpab
         QQ1cNvnsojFi3RUdE8RQ3i3Nxc4A73dujFR/y7P74D/pSiHXZhFxfTt/5I/tBSqi8VsA
         0vng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ylJbY6/WItrz7KcwDeO/sBx6zCyhV0Ru0gDJrWMKGUuK9Pwt5
	XV9SoAbuS2f8mcjEryFVv/c=
X-Google-Smtp-Source: ABdhPJxDHMnBneQ+1ZmBQY6FkKjnYYsJouUbLD+kfhMA2iPR840HeqpAlZjWiJUModz/3MwGrtceTA==
X-Received: by 2002:a6b:e60e:: with SMTP id g14mr18053007ioh.141.1592045210687;
        Sat, 13 Jun 2020 03:46:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:e93:: with SMTP id t19ls2307327ilj.9.gmail; Sat, 13
 Jun 2020 03:46:50 -0700 (PDT)
X-Received: by 2002:a05:6e02:584:: with SMTP id c4mr16854261ils.304.1592045210218;
        Sat, 13 Jun 2020 03:46:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592045210; cv=none;
        d=google.com; s=arc-20160816;
        b=Uph0825ntvxhzkg5q8m6KAiyXCw1imXA6OA57Rj/JL/1vbZ1f9eBPjn5uxTQDnVoce
         jFAU2roc9cT+aNZLDVrAlHnCL40OtbJjR3evW9sJvv9kw6A97cWOwyUOPuoiY6i/S0aw
         2MCxsEUqDpqQdbbEbz3l3OaBnAgImxNkpDEXhniAEtz+X5tceptQv1LeqZGIMCNvyEch
         vOllSy0fKkxbtDXGTZ73TdT7AMDF/0Pulyrk5Ud87nMFQGjHbPZaGfLHsdO8p4NrJoTa
         JMwKW2DqnywJeqPt+3uhmp1Thuq04/f1V9KmKU1IsfxMIwagHRL2Bwh4/QmhrPPUQl2e
         FLxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=NkyloyX9F3HuQS+KjXQm7NDxZYwBjoPO4Z/5kfLRPdA=;
        b=UIDwpJ2meSSgQAs4rD0Isi4L1Ny7Vn76t50lJh8uzwRevp6JNE0H83A/4AqVL6oOU+
         kbSyOTeq2+gts9ymVQUvJ54eVIPPfvUIxeLDl4pC9u2bLoIU3VQ1lOur9pFlRQK/FFmz
         OWuyXdcFeRW+sTiRfLS0DMnlklVJ/fMB4pOYrIvYgIw4qQvGrXtb6mLI9uWqAkPviJ4Y
         b/FjBb82FjaYTXKGZuodHuK7yMFdUBEO48/e0IWlFTt21GL8EhFDD8mG6meOlk8UE79M
         wPAES8PD9Dr1DanAIOphpUq6uo+AorDy1k+SZ3RsY3+j5J2rPVOYe6dpi353m8SAz7dE
         t/lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=BFq6fOLl;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id d3si201499iow.4.2020.06.13.03.46.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2020 03:46:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49kZ5w30F3z9sRK;
	Sat, 13 Jun 2020 20:46:44 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, Segher Boessenkool <segher@kernel.crashing.org>
Cc: Michael Ellerman <patch-notifications@ellerman.id.au>, Christophe Leroy <christophe.leroy@c-s.fr>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, LKML <linux-kernel@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Nicholas Piggin <npiggin@gmail.com>, Paul Mackerras <paulus@samba.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v4 1/2] powerpc/uaccess: Implement unsafe_put_user() using 'asm goto'
In-Reply-To: <CAKwvOdkKywb1KZ-SDwwuvQEmbsaAzJj9mEPqVG=qw1F5Ogv8rw@mail.gmail.com>
References: <49YBKY13Szz9sT4@ozlabs.org> <20200611224355.71174-1-ndesaulniers@google.com> <20200611235256.GL31009@gate.crashing.org> <CAKwvOdkKywb1KZ-SDwwuvQEmbsaAzJj9mEPqVG=qw1F5Ogv8rw@mail.gmail.com>
Date: Sat, 13 Jun 2020 20:47:11 +1000
Message-ID: <87366zfdjk.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=BFq6fOLl;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:

> On Thu, Jun 11, 2020 at 4:53 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
>>
>> On Thu, Jun 11, 2020 at 03:43:55PM -0700, Nick Desaulniers wrote:
>> > Segher, Cristophe, I suspect Clang is missing support for the %L and %U
>> > output templates [1].
...
>
> IIUC the bug report correctly, it looks like LLVM is failing for the
> __put_user_asm2_goto case for -m32.  A simple reproducer:
> https://godbolt.org/z/jBBF9b

If you add `-mregnames` you get register names:

https://godbolt.org/z/MxLjhF

foo:
        stw %r3, 0(%r5)
        stw %r4, 4(%r5)
        blr


cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87366zfdjk.fsf%40mpe.ellerman.id.au.
