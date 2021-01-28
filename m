Return-Path: <clang-built-linux+bncBAABB7WWZSAAMGQENR3SAQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3705530806E
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 22:24:16 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id m21sf1814891uap.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 13:24:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611869055; cv=pass;
        d=google.com; s=arc-20160816;
        b=bMTH5geIoEziiJ8641IyMsOxQyewWQAKj0zVHT39va4rjULww28zBoEvwN3Sa1fRC6
         SP+7Bz3LxmcF6lJX2j+TC2N2hAMsOG/G5EB8jot9CPOC8RqN0aBgMISwxvcdqlZg9gJk
         p26WOU2L/Dg9kXFpVTE8yMVImTUI+GuK+QkGIAuZwfRSy+YfYBzn4x2coLKvFLCHYIne
         XUcYlPVuxHbu4qMnJ3WREDGhFTKlS4v6ezppMM7BVZiFClrDYXIDUZexx8gahng1kDBG
         M5rEBSGd1WixssxCak0CN7Pt2LjLTrsGKhbjnUrV4u7cZ5cK7WMKaqjHkmldQYDO76Br
         N5VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hq9OWZglKlJBwHI0YeNrnlKev4VXqok6JFE8/yG+Liw=;
        b=x7SXSgC/BU3IZ9ORF2H6dHuc9KzpK33Lo1TJFxVfhrFrISb0xYL47ntkabBtoJMIXT
         1nrINUi/ARwEg8ZFT5pHxRp2u3FZyPhu0QvpBVRP8n5FPoNWUoG5IyeDcBnnbChTx26j
         919L8wpe/qnUgDBLsYJyItIDOqv7TCjh0F/Pbr8LyDE6j421/0KsX8wwJCyq3IiXOMBf
         HBE+w/V3/Vk+DiJNeZkKXGr/q0r1X91gfevX7j5stjAgYWCQg2oqa7KJNE9isrTAaemv
         IVaZ9/6OXpi3lD7pNmC50jrj2XvqdR0lIjUJ0TjFnxdCSmFUhcyWJahoT8njcqrDg3hm
         qPrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="IU/7AcHA";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hq9OWZglKlJBwHI0YeNrnlKev4VXqok6JFE8/yG+Liw=;
        b=c8GfMm1o6i4EvFFCgQI1NgZzthyVBQrbBfqzSa2t+12ETkskHk/U4GEpZgEyiCeQ6i
         x972BA/rcXXyt66hpU0BNLrS97Ucm7UXCIznrbmwnvb+n9/Mkrl2TeQDyAO1+1nPW1oz
         sxVMTkvbMfoa0h8U2+l7qZpN1Z3X7h6uCvEYONCEOe+tdj2CFYkKqV2IEVsC+JrG85MW
         7eWSLC3z8fDeWW2OiJAyTWN5VaFMsmjp1KN6dBYC/1Z9PKzDEVno3AYfoUuHzBUVcYqL
         pWCso5MPOd4ILR75eEAq5EE4hebjHH20ePsfD1hWsFXUhYc8IgcChKHamxzD2gmOJw6x
         RnCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hq9OWZglKlJBwHI0YeNrnlKev4VXqok6JFE8/yG+Liw=;
        b=GdugN69yi2iSuYT24f73uPluaLQPClKHXu2eBfiDWyWk/dQH8QCtgYzpxGW9v2m9jY
         iqMCkmN2ik5t4K46bWJom5MFUlfjmDyjFBUa6NP42QR9MXQXyDQn1y3TzBifteGgTpMj
         I9iuz0OHuM8PQduUR5865UOFKyz+/v9pb6FBohVSb1AifLcW639A33f1BDOO1ChjJlvn
         oEDJcD89GG1tSun+0+Srb/N7mfu9VA1P9qjPqZvZxVNGziL5r2PpNv+4W1pjnhHUE4Iq
         U5WB3SBaxI+Xa81J4lMqUSODvOxGdQDe2ZFK1i94a3EtKFccAmJ4Fk6LjfDBFgMRXPre
         GwJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HK5iVM9nKoka6fsV8NrSG5FYytQC8c2dTi2/eaa0MMbhaDFUx
	cvRKN+yq3rOHk5FQA8PhuGw=
X-Google-Smtp-Source: ABdhPJzyshuDJ1lO5fhFEskDa96cOiVSBJnQb3A5rZdxtqStiQq0MtIUuRcAdIoeQgLhsyzKl/vtBQ==
X-Received: by 2002:a1f:4b02:: with SMTP id y2mr1237361vka.2.1611869054995;
        Thu, 28 Jan 2021 13:24:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:67c6:: with SMTP id w6ls364865uar.3.gmail; Thu, 28 Jan
 2021 13:24:14 -0800 (PST)
X-Received: by 2002:ab0:380b:: with SMTP id x11mr1095289uav.132.1611869054626;
        Thu, 28 Jan 2021 13:24:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611869054; cv=none;
        d=google.com; s=arc-20160816;
        b=T6c3w2pikGeV7tBzyU6NR2JmneU1WMRHkgDVpW1QoQvjOu1q1xm2jDocqSFPItT228
         l7f94Pg+ULgVSBbcZXcD2o331LSIZGcCDforG1PU4NBdQFdG2ldMQevPqt+6H3UAeWUn
         Imku3hCN0NK3W+cfjtz2WruuBhivzYJNFcaM4rAveOojDCgH/PpbE9ahC16QtSK9Dis7
         uHgSYU03dBVMp6FcLjRYWncWVqgiCUbir2rI4itKRNCnqPNNLw8opXNcMfQS8QyOmc74
         UGmKTf5FMjWS2ebP1i56u1c6o1hvYs67hgv6HDtOHrBpEhn8ZkpT2mMR0gAQdrToF72z
         rubQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IlugLiUD6ZIS3m/0qk9oFkFgVmeLIHAeYHbhyMmp9YI=;
        b=P31xuDxqII9+e1FklKIuNeHpBib/1cd4vBZhBEw8LPfKIYd32Io8/06hLnzGhZEiLq
         1kxcINWAZDzPzQmpEJV0C9czKir8cTM9H35DFeIHJ1Fcfb1UalBhtADlHEg7sRKzhaFB
         hZQAgI8PsB+sjdFXFVvz5mMVejn1rBqfTbLC+RiK506GIxX6gbJUzo9bB5AYdeFn9Wtm
         sJ4qprfMa6wZOM0bhGDYq5l7UStKqJwZ529N9DaNqaofQITR4fOmDSApvLNtDvHyERZG
         0cN/ZWa/xrC12XqLbPMdjHFMFDTYYi+7Gos4oVb0H9cBTGb6REYhm0arFx74LvRjjbTf
         LMfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="IU/7AcHA";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s196si316174vkb.2.2021.01.28.13.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 13:24:14 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 603A564DF4
	for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 21:24:13 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id h192so7640691oib.1
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 13:24:13 -0800 (PST)
X-Received: by 2002:aca:e103:: with SMTP id y3mr785811oig.11.1611869052544;
 Thu, 28 Jan 2021 13:24:12 -0800 (PST)
MIME-Version: 1.0
References: <20210128044356.38419-1-ndesaulniers@google.com>
 <CAK8P3a0MbxMC9iLe0NGR0ttLY7sZDjsrgKvfRZOXVJLjzDNKmA@mail.gmail.com> <CAKwvOd=ORiCsvv_XQ8By8ZUe0QnzH3T6pFEwnRy65tmUsQ2yQg@mail.gmail.com>
In-Reply-To: <CAKwvOd=ORiCsvv_XQ8By8ZUe0QnzH3T6pFEwnRy65tmUsQ2yQg@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 28 Jan 2021 22:23:56 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2Jxj-aEe-kk+xsEX19mHOc6LQ8O=XXCrWowAP0Vo2Kew@mail.gmail.com>
Message-ID: <CAK8P3a2Jxj-aEe-kk+xsEX19mHOc6LQ8O=XXCrWowAP0Vo2Kew@mail.gmail.com>
Subject: Re: [PATCH] ARM: kprobes: rewrite in UAL
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ardb@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="IU/7AcHA";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Jan 28, 2021 at 7:59 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Thu, Jan 28, 2021 at 8:15 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> > Plus a lot of extra errors when building with CONFIG_THUMB2_KERNEL,
> > as that uses tests in arch/arm/probes/kprobes/test-thumb.c.
>
> Technically, that's a distinctly separate issue;
> arch/arm/probes/kprobes/test-arm.c is not built with
> CONFIG_THUMB2_KERNEL=y.  This patch doesn't introduce those warnings;
> that file has the same issue but it is separate from test-arm.c.
>
> Would you prefer to see a v2 with the swpvsb fix contain fixes for
> test-thumb.c as well, or a separate patch for that?

I think either way is fine. I'd probably go with a combined patch in
this case, since you
are addressing the same issue in two closely related files.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2Jxj-aEe-kk%2BxsEX19mHOc6LQ8O%3DXXCrWowAP0Vo2Kew%40mail.gmail.com.
