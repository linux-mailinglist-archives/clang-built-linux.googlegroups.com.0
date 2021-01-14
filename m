Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKUKQKAAMGQEDCGBYNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AFA2F6848
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 18:53:47 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id b24sf5057853qtt.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:53:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610646826; cv=pass;
        d=google.com; s=arc-20160816;
        b=LlZrdwSpQ3tQlvk/46fUeH5oaBsGTcb/cM/adAssUfjTwaVZAp6gue4tHeS+vy3nbD
         H7eksTJFcFSIPXPbalPRUM079G8aETyXK2RZq8K/z6bNH78Wvz+NWMmwls2R9j3Mxc3B
         y7new5AeaaHCLRhrpk7SdCSAeufN964DdLFB67iKTbpBnoeJ+dW314V2JTNr2EHE2q+d
         cPn18hfcUN9+KFyvaFDtTXHszTKF7fc86JeJD3NrK5eaAqZVGVCV2YquvJS3ehxVXmDa
         VN7Tv21pOd1qAdQbZaq6msnhnVx6hfMKxQiaplN7dO0Eow1gNwnsw+gv9lyFswvQeDIU
         VAdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FYZz9FGHLMegZxlfUZMidGmMgAwOmgAePIXi6mIQArY=;
        b=uANwrXyGx/4j27LHCi4L/lBE1MDS3uKOVD1KgkT8mLE3ALlFe5hqT4ND8As2S5fWeu
         rotjlcSkYbuqfMEuB8hG/36JXMh3/KxG8mYYri8OfG8jakmfFvHMZGSDZmV2Kp7OXheU
         x/b6xr8XSseAqifzVHK4EtzD+qDV80iEPINdQuxzKIav4vNnFDqwshVpkmwz1xaxVLFp
         5WsJMKdKhXjg/3pCwQYfUKrcLRHmBMUdMgKAbxYnq7Q6EnTPnn1up8N/xe0lJGcu9c3S
         fyRohvjQmeq14Bk3kuuJ9sboxQP7R1X6RCV3LXHY7fBMHoSZ7nAWmBsDp1S4rnAcf3Yd
         ZHuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZE7YhPIx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYZz9FGHLMegZxlfUZMidGmMgAwOmgAePIXi6mIQArY=;
        b=qUVpEMPrayAa/EhYELhgvFj8Qp80YKJrF8bZu77XUPt/afOPPPJVCLkcfWzzA30dxa
         rU3S50zI3JAzcp4ss7r3BUAJj//P35fzpqa8V8YBoYm3scT2HWijRioeJ1VRNwjapm5e
         NGs5q+BHrtfXyyHPm/LpHLKPTeIFrARvtkJSCv3y6s1WCrH5IXKwaFDiE52TaBDIxpcm
         AzNu6TRULKXch7rxMJnlAzxQnkUUOqtiu8zcf3Q+lb9HXVW9q1iN7aq8eIpIvqyj7XdC
         OyynS+BzCz/4Hz9A/Fh6H+jrShWdYe7fksZhPzq40BnSCeALQHr4z5cENGgjMV8fNNhr
         wooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYZz9FGHLMegZxlfUZMidGmMgAwOmgAePIXi6mIQArY=;
        b=olT7PyjX3dz9Tt6AUFPgWGHImqw8z/EEGitKB6JsD3pk8NJ1SnkuJJjCHOKk4JnQLi
         yt9ppAPbWvE9wwzw5scESKYWPN6a6ZANX5PKP4h2lcG6DfooWWQLqewzzxnhsS9K4T7P
         bQ+st1fkdsWJHGxriGkHBirM9ZYBzHXdwHAffwKbj9oN2nG2m5hskrKXciKkmZiI0sYP
         AmGDd1vFNw0rKxmwksQsOeceylZLUR+ZwKtatj762GoUJWd5XqlLtGxD6y4wD4el+tgg
         Bv6K1W0Klij9c8DBmgaVxS1pdLYUjdC4lqnApFPywVLjDqHy5M9lxUZx1s4+u4NRxeYm
         dv5A==
X-Gm-Message-State: AOAM532tkJIpNHAISEdJFmmNrE7ceuRiLoLwGXoBJnAVVl2+MdU8XJly
	tIP6D6IaiEgtOBzy5Z6KIgY=
X-Google-Smtp-Source: ABdhPJzgv9+LdhiGMmRbVxCVXaLEo39WBwJHzJWQxe+AGjs6MggO+jGh+Jt18k7ESE14/LZ+9QyPMQ==
X-Received: by 2002:a37:b985:: with SMTP id j127mr8194508qkf.85.1610646826823;
        Thu, 14 Jan 2021 09:53:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:70ca:: with SMTP id g10ls2884876qtp.3.gmail; Thu, 14 Jan
 2021 09:53:46 -0800 (PST)
X-Received: by 2002:aed:374a:: with SMTP id i68mr8122139qtb.81.1610646826486;
        Thu, 14 Jan 2021 09:53:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610646826; cv=none;
        d=google.com; s=arc-20160816;
        b=bZVG0iz14vq+Ew84P+gx9jzCkpD9A+ncCLpsmKiKAuIB5nunww8wMufnofh6XJeUVu
         gExriMqWoZAQJC1tD8IKjtw2oglxa6GdQXlPue8WQGdVAsMvCVuQ8EAqxiFI23Dj1xNQ
         pi1tGKOBPRkUyv08G4Ltp9L6DwzGno/bn0b+0WaOJri9E6CfceicCdsvP/PQEC4lSVJ4
         RxqE2wOsklUmhjKJ7MPPlkNWdTaDbFlZ9qqd1zg3pB8P67vByCj8eZ7q/S2+N8PX5s91
         sObJr9c3/Nwa9T9aP7gt10vjWCLbEMv4WIjCUvfWlX3qeTFhDR0d0bKmS7UqtW8ezTov
         Echw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xfaedLmNvLX9iXMcjLIGfzS3Dnirkc2r8wJOKSFLYxk=;
        b=Yz5W2xEs0l54E9wR2/JF3K//8KiXMM8StXLMevHaU5NxBir+1h5hQMoH79s3e3KckF
         +5+ackbnngCSjeLGKhdnbveinBAbXALU8bj9bf8JQxBeExHlsy6fKB9WVg1cBu92f+ar
         zf3cZh+rjl7nMaqPqlUQiSdtn7jHZQXWA3MD2az73G03w5XUvN8VxnSpZ3f3jwzC0KZr
         m3el72vzd8ldrYP80aU6+WhQIFVmFByWPrY24hoh4aYus7P5IB7GquEwRq+mkEi3wgnl
         C+n8/NHt4Ghd+rKeYoAEQpjPOyRDvz4P9bTo9NC2DzSOgVIdAxmA4yK5tQtQKLIAgiV+
         q+wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZE7YhPIx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id q66si294995qkd.3.2021.01.14.09.53.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 09:53:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id c13so3774212pfi.12
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 09:53:46 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr8639411pgr.263.1610646825496;
 Thu, 14 Jan 2021 09:53:45 -0800 (PST)
MIME-Version: 1.0
References: <20210114003447.7363-1-natechancellor@gmail.com>
 <CAKwvOdnJ0VUjTX-cyLgtHvy68DHG1VMj7s0huk_FKh1E9pH9Cg@mail.gmail.com> <20210114073615.6b9add58@lwn.net>
In-Reply-To: <20210114073615.6b9add58@lwn.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 09:53:34 -0800
Message-ID: <CAKwvOdmHsO-yqUuCFouy4jhDwLaL-5+K8JkJ0Jo5Q_UQEF_2rg@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: Add a section about supported architectures
To: Jonathan Corbet <corbet@lwn.net>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZE7YhPIx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jan 14, 2021 at 6:36 AM Jonathan Corbet <corbet@lwn.net> wrote:
>
> On Wed, 13 Jan 2021 17:19:59 -0800
> Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> > Patch looks fine, but `make -j htmldocs` seems to be taking forever
> > for me so I can't render it. Is this a known issue?
> >
> > $ make -j htmldocs
> >   SPHINX  htmldocs --> file:///android0/linux-next/Documentation/output
> > make[2]: Nothing to be done for 'html'.
> > WARNING: The kernel documentation build process
> >         support for Sphinx v3.0 and above is brand new. Be prepared for
> >         possible issues in the generated output.
>
> Sphinx 3.x is *way* slower to build the docs, alas.  One of many
> "improvements" we got with that change.

Oh, man, yeah. Noticeably.  I had sworn I had run `make htmldocs`
before.  Have you had a chance to report this regression upstream?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmHsO-yqUuCFouy4jhDwLaL-5%2BK8JkJ0Jo5Q_UQEF_2rg%40mail.gmail.com.
