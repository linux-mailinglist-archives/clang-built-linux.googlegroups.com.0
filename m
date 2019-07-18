Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBI7SYPUQKGQEWLAGGNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FFE6D6FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 00:56:36 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id n139sf22324519ywd.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 15:56:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563490595; cv=pass;
        d=google.com; s=arc-20160816;
        b=BbnK/3przBLCYjnP7g+UHSZgsIswZ22HlsALUu4FPzMqBPuUtnlkXY7fBBPdRLpCQa
         g5lb1YaLVqWiti1ZYA/c0pOFGbmcItN3mNuRMSnxDELAEOYFTUMVxF5LNq1DMjmN+eQq
         QNwsSviBBM7+SA5IszcGEpQt0kkchZKObuSpqrAnTQoocj6KtRt1XXlCAWhWEjbp/wsE
         s2qMhtcsbe2xjbw5Dvt1K/8s3x5dKEUn+fRj1j/NSsmzsv3CUnMEAkQNA8xEMNRQxxSM
         ZSCUQDHOp9vLL2/GmF8zs1CcSOP9fgM/2BisTH9zEG/jKO9wYlCOtKzOUzzSZjqd/Oi5
         qLhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bQCzgSJNO/V6I+jz2f3cLcdKWtMg0ZRH1bB1ipXVpTY=;
        b=pOog4XE34VA1rKzk0tIl0V4ml8aV0kCPTbfCmUYYiRgMOF0SNfBIWI7mUphdNEUJta
         V/5zK5b7iMaPFr4NyntLvJGCGkvXxZtEJQ5QsdV9/Mnh+l5/qNfIAkM8ysheEUuEI8ki
         dXBzv4omfhSgZqiVGHV1aVC/NQSH33hcJjFdXpDkNszy0+b2G2z3Kdeq/bKC3my0Lcq0
         p/tkmOqRLyqpBZHPal+p7UP589lF+eC07tkOlPSabiUu4PPntkUNcrOs/X/pSSLV0CyG
         49JpTabp1zZWdCDXrZmZKJe9HINGhSw50CtfMzTgt/gVKgQGc2BE1o3ncedsTfrVgzLX
         Rz+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cXZUUqLV;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bQCzgSJNO/V6I+jz2f3cLcdKWtMg0ZRH1bB1ipXVpTY=;
        b=CEY3KCo7e4plKvf7QrYwZx9FomVUzeCi9Xd8jbrAaabcaFH2em2phHA8JVDX0gYWcJ
         aoAhBswLNFVSGJYKJFWVOgxAsQtgx6lKYQiwdrxRbIoy1YDi6bZuyXdmijzTG5yYiTY2
         P9UeYexfuQ1xefxPVFzp9jdGCv+jW6jWhOFWRCoAZtE7LWobP6Ejd/Tim7yXHL3yrZ7B
         n7wv0TIrBf8ZNEsZTXnYi9XAYZHAfup4hyJki+0nYROZavBV+a/GZb1s/fC2jMUfFYVd
         A+JT8pOAleE4ZImpJItoW3mUrGNqNl8CkKLLZTL5VN3EFk6nJHlhD8mbRcBXRl7YOPaF
         XY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bQCzgSJNO/V6I+jz2f3cLcdKWtMg0ZRH1bB1ipXVpTY=;
        b=WiE24xsDFDByHnvSAKD8IasYrJdWzAm9B3sv/nyXndoMrzOdaiAT8L9MdyTXOdrZZo
         qCZouxdaaD7nVdtYVrR+/AMwZ90f5V2hGdt3iY5HSuOMc/x0AgSXtiSowxqYzHvC6K54
         ciM9wQ2jl3W5b7yzVeSqsMD20EjlITuP5U8GgFP5J7120e9ygmPP4DRsvhJhjFUvuAcf
         gg8A7P8AjPlzUCZRGDUDQZmS6IIpXjDZnn2HhHiLA59IPmq4AQ+Kw3FmXR6ZwK2vhiNp
         hXvhl49BNyn1c15VPNyTlZ8D7lN7Gp1p2WmqmDYeFJRPjS0qLMq2ArOP6J1Alf9lxDa/
         sG6w==
X-Gm-Message-State: APjAAAXIHeIRAIPOD82rQr7wfKkIzh5lTD6mMBkYm++ojWSI3Hh9WXO3
	+59XnOxq2wdtS23w0XAdeE8=
X-Google-Smtp-Source: APXvYqxuHlJr5zs1wEizmdbfIXkTZZFX6nHF9zwnVnPsQsgDd3Z5QXpjYlNzTZl5LuIVfkKUxNd8yA==
X-Received: by 2002:a81:84cb:: with SMTP id u194mr31172210ywf.297.1563490595623;
        Thu, 18 Jul 2019 15:56:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9a0f:: with SMTP id r15ls3912051ywg.6.gmail; Thu, 18 Jul
 2019 15:56:35 -0700 (PDT)
X-Received: by 2002:a0d:cd03:: with SMTP id p3mr30734315ywd.476.1563490595281;
        Thu, 18 Jul 2019 15:56:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563490595; cv=none;
        d=google.com; s=arc-20160816;
        b=LonJbdYsjAvQIjNtODNnKIUbhZ1mNxIOpxhkCjCyrEx7hyPr/FwKwC5TlYVcwLYdgl
         Osanehev4ec6rsvWgUakJy+8LVeFe2hWQBl+ALYcWy2AN230TxObnut/CtH7ayfZbHSw
         Lj8jC1THRauuJhZLvSHl39byTMjcrM66E4+VqKKsfPRxss8cyKUKW/6uh5jYMDQr2Q05
         7fNUirthQQNW7nZ9FnYei9tv3ZeDC0p6AoB2whzp3hUXHqjL+Hu2+LsvuUGOGxjNIHfX
         CKth5Fv/jIvsl5yi02mCF5/Fm91dqF3KbYlQhREcbdnuRgmJcnRIR3NtZ4/fDVvBzlxA
         iIaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4Kxt6y0lPtzhr3ys4CVyYG21gQOFhfxEkUOmBCIg4X4=;
        b=YmHVYkQR/NBEh+8GqKuPu1YeUACHspKcGbQ8riABpsTitre8NvYgQKeg11mpcBzF5C
         a8gr/n7h7RJMxzNhJs1ew0UnvPoNFABgZe9KTdsWEtwlsnxRSmMNlg8vTDGV0skbslZR
         lyC4XfNPu+3svb2oznXNkTNnnDh4nFL+YENx/0dnwevZyE13Cw3Ukow1l8b7aL7AyBs9
         CwR6NMbgWtEzJtRkDngIwZIRR6I0xteHf+ct2HMiZXdsXzF9PEMvwRqAaTkWR2w3org8
         9SRbxIqq3Xz8twtVBV20jwFNG0zjCJCyFY/0HOAHGEV4o5HA0PSNvK5jy6NbdTKqOBcs
         Fx7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cXZUUqLV;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id n84si262553ybc.2.2019.07.18.15.56.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 15:56:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Received: by mail-qk1-x733.google.com with SMTP id s145so21860740qke.7
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 15:56:35 -0700 (PDT)
X-Received: by 2002:a37:a854:: with SMTP id r81mr33094974qke.378.1563490594840;
 Thu, 18 Jul 2019 15:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmOrCKMXYhbA1363C2UA7f52MBSxeQPBtgWnkd+mERTWg@mail.gmail.com>
In-Reply-To: <CAKwvOdmOrCKMXYhbA1363C2UA7f52MBSxeQPBtgWnkd+mERTWg@mail.gmail.com>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jul 2019 15:56:23 -0700
Message-ID: <CAJkfWY5EvKqMyzh+8SAWU1n49=QT99+Ue3gjGt8bazwM9-vFcw@mail.gmail.com>
Subject: Re: Effective Static Analysis of Concurrency Use-After-Free Bugs in
 Linux Device Drivers
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Himanshu Jha <himanshujha199640@gmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cXZUUqLV;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::733 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

Looks like they used clang for it :)

On Thu, Jul 18, 2019 at 3:48 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Was perusing papers from USENIX last night and this one caught my eye.
> Haven't read it yet, but sounds highly interesting.
>
> https://www.usenix.org/conference/atc19/presentation/bai
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY5EvKqMyzh%2B8SAWU1n49%3DQT99%2BUe3gjGt8bazwM9-vFcw%40mail.gmail.com.
