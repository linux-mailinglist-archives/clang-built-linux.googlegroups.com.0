Return-Path: <clang-built-linux+bncBCT4XGV33UIBBNNLVP7AKGQELEISIXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B02632CF802
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Dec 2020 01:35:07 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id h5sf1922861vsq.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 16:35:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607128501; cv=pass;
        d=google.com; s=arc-20160816;
        b=kTMzLe/cr0DOnDdRqOSFLGNyam97EB8v7RiayDKFc0r5A5Q9gfjClTQh1zgbymNl8R
         lTXaoqzI1X3+MPLMqGh9UGnJCfvmWIqgGC5XtHbHmieYwFb6V4BicMUFeGgUxDDivy9h
         lC0/A6UffuaFEU8VxwT88EJF2J8hdCDGNe7jXYEad/th1CJq5HbRhQag/Rp8rrPL7ejC
         nHJT+uQSepdAsYu52VdSGZuMDQujsIRN8NjFCSvAQd2rujOf56vJ6O5g3yYvgNgELZoR
         bFWUxKBQrmDAbNURjpUQS6I2iepSVV/3O4OojL30mHODGbo4B9fdAwJo4UFNPd+hZZfy
         cwCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=mwefJEKfS9U6bwh8j0mf5Y9jJuGDt4k9a5+0nyTUMxk=;
        b=wEN2FdG0AwAQJyEmJHjZSykdYMyBnglyklI26CKOVDZVbgeeZA18fPMBLkLozfhp16
         fBnCR94lJowewtV4IIhRL7oXEcVhc9tBcx1WuVmO8V4ZgRWmSkiWmAbqVkIiwHEAkKQ1
         ugyWDnh7v2RpD3YY5pwrkRzI6uusDp/F77Y56QG3qhiaCP6xUgiXYQKkr5cIjXZCIu1y
         wU4MxbRO6SUZC1qHqxh1xATUulD6RkiCdlVIDld2XLDvg/bNaRiyOxMUAKaDOsFWGbkO
         fZwKVuSyHhCatikRvJzln4s8w15E9MoJAgZw47LW4DO/PBLrM9p21AkTGOkVC4SVN9VL
         zZQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=ArMxRUdQ;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mwefJEKfS9U6bwh8j0mf5Y9jJuGDt4k9a5+0nyTUMxk=;
        b=eCAh6D1jiL71zG9PEIyhGMCW/K0WCkH+O53IiYo+56aZWjjIq9PUQQ3BBIeZ+juf7b
         67S0OZEM1uLcNqhcuz9pOAeFjtZK5x41ri6UwtjPtfHKD6gBLjJAbNkfP3JniPzWmouo
         arRmhvebq5AR3wMQHK9e67nSoPVX1OjvaQz/5JWINT6ape+hPedi3mo/bciSSJweK84R
         Wnshq8OFryyiTzl9PwxTVBFwu5gpdugpBC4I3WM3zkMhX5I0lw703eZmiwOm4JffCdVd
         qF6Eqmcy3oEVURteoQo+vrkbVepYcpKrW4ZD4rm415z9xR1sM+MckpW4A1Km2QrUOTAB
         KPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mwefJEKfS9U6bwh8j0mf5Y9jJuGDt4k9a5+0nyTUMxk=;
        b=femW2AZdnV0xvBct0ONWexup+dNBhG/CUwL6NDrq8uF+UUXIo2pLI/XaX9XL+pI3hv
         SLnewojA4QWGVG8c9Vcr8lGJwsiUSybD7jC8LFDJRcVtVrbMqVSHkBRwqdp6rFkt288k
         aQ39oqsMxcyqLIl6+orZ0yFjIoPPDmQjTiB/rFRhqZRptHP8yO/vZzEc/D1bwaYp1BYM
         +CNMSvOoXacjb8tkPnwYP9iadAL8NRNApJkrzcEx96whBuddl5FJM8+Rq1WW/fZc3ui7
         yDT+vDXAsMqR3S7puczWCBtTdf/mJ8FHl25FIbC8Yvz8/DmVR4s/luphgtq+/RSan2Sb
         zJIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KRznZs4ca0SdfOhr8SO92GWfhT0uGv04BOjpiawWC2B1RTlD+
	GHV/5/Nooat2mGPNhDuN5+4=
X-Google-Smtp-Source: ABdhPJyVV/YVgVIvR/jbDTq4P7p8S2Z9YuDnMaM4neyXcW/tpxbp373wwE3XWpvWKq0RreM3bHPC1Q==
X-Received: by 2002:a67:de13:: with SMTP id q19mr7112168vsk.40.1607128501602;
        Fri, 04 Dec 2020 16:35:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1188:: with SMTP id 130ls7919vkr.3.gmail; Fri, 04 Dec
 2020 16:35:01 -0800 (PST)
X-Received: by 2002:a1f:fe47:: with SMTP id l68mr4413011vki.17.1607128501116;
        Fri, 04 Dec 2020 16:35:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607128501; cv=none;
        d=google.com; s=arc-20160816;
        b=Di4T5wz5PVzgEx0fU9LU75w29B6hlbhuFjxm4C6kQZDbyL7wlX4gQyiG9O4siTAyeQ
         hPg9Bsh4ddwXfZsWz/vrilLPueQShv91t/gIOyGqGdVNw05zoOMLPa+xZN6M42vX2jh6
         ay0CKJRreNlLPjTAu4rLtd0wQuFrquveNQvk/U+zf0xaM8gRFrt68m2U8RkxBZMm+hDy
         CyV3YO9w+3Lwl2RksnkcLImaqaxue5idiIdf/FgJ9ZHDjDe2/Wf9SiqZYQF3x7OPeODh
         dguvhllqKixqzKMA/o/gObmNppgDNZrscxVwpXpYE8YUWybvHz/aOOM4hC9t9VqEqskb
         tcSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:dkim-signature:date;
        bh=8jLHI44i55qis8cFqR8EBFO7NwUuINS5XZ2qDRddoHs=;
        b=VhNAtq14yfD+iboWCmqOREDRmZkGuh6xy65ttpYOj45jFwO6MfV1K79m6UKh6rgPGZ
         OF2om4A/HKoU17sKLGq9jeFwoN8yzZNGWUy2OeMeMY9DrYi32p3boJiuypFo0g8tq4KI
         /I7vaWFuRlJ9uUNLSF2fLzkUzJnOAZQQ4sF0JVYcK/5B86ktXl9f4elSub1RKre0xGJH
         iwBz3ISO0Axecu0RK20BOXAUgA5y1JPK+9Mqw0/hf56DwsXVt8FtUiJyIgm4Hta/Lt7p
         mSJpvyWfA3SfH3jKqxjAAzMjEKypAZzaoU3WvDfmvBS6fhaDIbTQWHeO67oi1eVjDIEU
         McZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=ArMxRUdQ;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y129si282554vkf.3.2020.12.04.16.35.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 16:35:01 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Fri, 4 Dec 2020 16:34:59 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, Barret Rhoden
 <brho@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] initramfs: fix clang build failure
Message-Id: <20201204163459.7e95c5a1b24cf5c84f779766@linux-foundation.org>
In-Reply-To: <20201204165742.3815221-1-arnd@kernel.org>
References: <20201204165742.3815221-1-arnd@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=ArMxRUdQ;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Fri,  4 Dec 2020 17:57:33 +0100 Arnd Bergmann <arnd@kernel.org> wrote:

> There is only one function in init/initramfs.c that is in the .text
> section, and it is marked __weak. When building with clang-12 and
> the integrated assembler, this leads to a bug with recordmcount:
> 
> ./scripts/recordmcount  "init/initramfs.o"
> Cannot find symbol for section 2: .text.
> init/initramfs.o: failed

That looks like recordmcount is being silly?

> I'm not quite sure what exactly goes wrong, but I notice that this
> function is only ever called from an __init function, and normally
> inlined. Marking it __init as well is clearly correct and it
> leads to recordmcount no longer complaining.

That works, too.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204163459.7e95c5a1b24cf5c84f779766%40linux-foundation.org.
