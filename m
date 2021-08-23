Return-Path: <clang-built-linux+bncBC2ORX645YPRB3NRR6EQMGQEYIDQHAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0CA3F4F67
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:20:51 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id l3-20020a056214104300b00366988901acsf7352237qvr.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:20:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629739245; cv=pass;
        d=google.com; s=arc-20160816;
        b=uxhro/AoecLcJ3eIZjZwXWj1+b/63z69gX04Rvzh8jEaxQSt7daB3PdzYZhEC/C9T7
         TwPIH0LI/nIhtjrW5WWKVj/2LDlypPFOf/LhDm3mdFIbiRshKvb+o1ZkaYJSQGvesDGO
         OwCp8v9sjE3bg0tIGSQFcEouX1yotRzrkIExT8ATb3/Lls94mziFhnOqitxP2jqyz0Il
         X7FUeXCDq2vR/Kdqb1iljiMu1MFWC2Gt0A7mbeMviatN7feQbKKlu59e+8kLstLuweQ5
         0bfGY04OWqX69bat+xqi1pEHNJhPNPnhU5GGx+vrbq6jRlS0KVvo1i1iMJ1mUbPm2Qm6
         WuxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9HaJdHNIYIVNzgcrb1FQbN7SdtC0/8c//Tjf0/mNKzM=;
        b=O/ou0QPCREn8Mu/GYru32kynDLxKCPRiXXPRMIDhMX6OWkHb90FE7HDTvPhS/6+J9p
         1SPzsqFo2eyBaZPn6pTpE/HK2la/7+pUsasiKUyWbBWz7PBQ45YX2BaPsTcKxGoAnUxN
         cby6Y41y528Qza9e0a5B1ljX+6XJiuBokSDaxM5fF3/c6bivRbNjj51iw1jAKjGjv9+U
         eReOUAQraoruN89zuZeoSWFxnWaF69rJd9ZbArIrkWybJQmYFV+X3FIqSl9bdKHp8nVE
         xx2ESEyIuzFegkyfZEFZ2MISiGPECpeCpbQOA7tV0otnpU928uDAY4w7zohOusvWfu8K
         QU2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P5bg4x+s;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9HaJdHNIYIVNzgcrb1FQbN7SdtC0/8c//Tjf0/mNKzM=;
        b=hUO5AkYFEEZQOq75xmht7FmVaMEQreJcbEq/ZKNRQIiGOcHGJFqo0UuRSr7qkU6bZg
         HTrG5oolfvLw8tYFEtC4gg4OMtwqBuYxkSW5X8jqYdwb6jhAnQjNZx+a7YQID1ED+NRd
         /Ry4Go+c1Uq1+orX8nT8FKjLh00/eNyoAsZjqGOXL+9vpnOIFid+VG0RSCrhHc2+3+xA
         /mtO5CmVkUDBjC/9apUnfDzX/8MZl/K4BHKpZXGVf+MX4W0d4uIrNbMPZpxfVG7t7flB
         ieXBGBfshf2mQ5Nn/Z5KVvBoxc1g8kc/Lu07OL3Yys6XJ7vrxMXqctINZD6ZR5rpp+VK
         NG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9HaJdHNIYIVNzgcrb1FQbN7SdtC0/8c//Tjf0/mNKzM=;
        b=CqEqIOU8k7IkKwPOcgVty78qjvOx0VkHUqMyAIdX01MOW6JBCVKZ36CNBD36GcJU9+
         dKUM7fvrCua4MfQXE2ZyQLG5uSUbZ7DiIk9m0FAWtzXMgEN97Jcu2mAWwm+lSd3nauqL
         nK4rl0aB1VK6DI04X+Rl1rpWbsbZk0ah1m/yVW1gXCPvi3Yh28V48M/rYCBytiihcL/t
         g8zv9EjNcpLmk/QtJPvyr48HSQtXen6b0i6/JexJSE8y//bJXNuFMXEkBVrIwuPVzd8H
         ODvQsXmFeUEREBw0VpwWMZEUHKz8HLVYXlhKUBBvjKkJ259ShmpJZ28DEZhGtFbQF/78
         3iZQ==
X-Gm-Message-State: AOAM530JzoGqO0GYp3B+29l/TABtcjmfLppsbOfl2TEWFrMKYwKNIFLP
	RkJEpYgg0w6rLbu9UYJvuGk=
X-Google-Smtp-Source: ABdhPJwPTbowolHdeiod+oFXJHdhKRHgn7NMH28vk1xcHi3PDoylpslFzTuXMSPyzvTr67Ml3SbMUA==
X-Received: by 2002:a37:2d04:: with SMTP id t4mr22878926qkh.160.1629739245611;
        Mon, 23 Aug 2021 10:20:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4590:: with SMTP id l16ls6149212qtn.3.gmail; Mon, 23 Aug
 2021 10:20:45 -0700 (PDT)
X-Received: by 2002:ac8:4e24:: with SMTP id d4mr30291394qtw.277.1629739245124;
        Mon, 23 Aug 2021 10:20:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629739245; cv=none;
        d=google.com; s=arc-20160816;
        b=MJoUb9fhMc/6+fcIbsh+1gaxCIEFVFhC+0M2qHQVER3J+Srg0quqoPPWy/i4nEWoGS
         QfUUU7HdZclx1PPPjIT5HvCy8c63S1n6QCcrqgQw7WH4Hobcp0SuhqS29uEQocyVUzd9
         8YNdTaCdVSrOcwDzW3rP1GzgJ/RVACD2Grn0oC5jpScOO8fjGpy4yrgkadE/bvCISwly
         4nYt68jxMgWFy3skfpUw54xZxCrj2X0cOa6wB/mOd13EtGQJ7r0WmxY7Z/bQGzKhp2Ut
         fN4uvR2h41NwYj0ez9sWcmGbRvf8j8DAjgE2byPlaHlt6GFoklq8ADEYY9yBgYC/uQ0k
         YxRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J8JSmD33jCZgI4ZSaQy5K3s54xcB739cSJ9JuXolesw=;
        b=NfexzYk9KVaZlkPULvrOvOuqsUY3KwTyOYKLpwxvJI0A5ejrAocl3XYkIcCb9gwVfJ
         CXaDc11r8INuy8S5YHRo3+bOXbfcctc8072Nm+HEthDVsrXN8vMhAkEgcRq7waE8+KFv
         qOed6faWCfE3r0p+MG8fGdieYStgXXj4z42wJXdiH6W8EyAGdwpf+aL4MD5FMpA6vamx
         /Uwj2tMM7cA+cZ9f+QMeVrJEwdErK9SAhsCS1xx2kc/Jc/jPZfbXPWDXPtULHh5ueuuF
         xlwJqP4GgmAD4hYvQY11fxTNhOyTQ5/nqlLaJLp/u7Blz4E+B26cC5uSF1AaHLZC22fE
         mWRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P5bg4x+s;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id s128si1052997qkh.6.2021.08.23.10.20.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id a93so35569455ybi.1
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:20:45 -0700 (PDT)
X-Received: by 2002:a25:734e:: with SMTP id o75mr24134262ybc.498.1629739244588;
 Mon, 23 Aug 2021 10:20:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com> <1706ee8e-c21c-f867-c0be-24814a92b853@redhat.com>
In-Reply-To: <1706ee8e-c21c-f867-c0be-24814a92b853@redhat.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Aug 2021 10:20:33 -0700
Message-ID: <CABCJKufrpx9arM-hfX_bR-efO+13VBMFNBTe4ff036VEZi1LZQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] x86: Add support for Clang CFI
To: Tom Stellard <tstellar@redhat.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=P5bg4x+s;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b35
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

On Mon, Aug 23, 2021 at 10:16 AM Tom Stellard <tstellar@redhat.com> wrote:
>
> On 8/23/21 10:13 AM, 'Sami Tolvanen' via Clang Built Linux wrote:
> > This series adds support for Clang's Control-Flow Integrity (CFI)
> > checking to x86_64. With CFI, the compiler injects a runtime
> > check before each indirect function call to ensure the target is
> > a valid function with the correct static type. This restricts
> > possible call targets and makes it more difficult for an attacker
> > to exploit bugs that allow the modification of stored function
> > pointers. For more details, see:
> >
> >    https://clang.llvm.org/docs/ControlFlowIntegrity.html
> >
> > Version 2 depends on Clang >=14, where we fixed the issue with
> > referencing static functions from inline assembly. Based on the
> > feedback for v1, this version also changes the declaration of
> > functions that are not callable from C to use an opaque type,
> > which stops the compiler from replacing references to them. This
> > avoids the need to sprinkle function_nocfi() macros in the kernel
> > code.
>
> How invasive are the changes in clang 14 necessary to make CFI work?
> Would it be possible to backport them to LLVM 13?

I'm not sure what the LLVM backport policy is, but this specific fix
was quite simple:

https://reviews.llvm.org/rG7ce1c4da7726

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufrpx9arM-hfX_bR-efO%2B13VBMFNBTe4ff036VEZi1LZQ%40mail.gmail.com.
