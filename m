Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2NMQT7QKGQE75O4GBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0E12E021E
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 22:40:59 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id w135sf5658201pff.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 13:40:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608586857; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hw8+taH+mmAbrP7M4Z1QJObw4F4DLtVZld0seddQ4yddlBWC7zUAY8ZQL10amltiOr
         VsP8xs9kzfcOM1/NBE19pkV/0CfGO21Foq3TUbM4yw3u18yFixuaHe7OiYxt6mpVKVB9
         IA0dDVT8+rMixr2arKGcM6ZUn1U+R8P0e4heo3xB3/39/e4nXNr493IDHP+TDFJJbM03
         EPR49lC+mJMl9jm8ztMXanCdoNY8QtQMxtnpZ3Rclbff4ei/SpTkjqFxwDh/48859xOQ
         QAZ1hst6HYWCamcE5Kb7zT/Oxrf5NvopzF8GiSSx1DSWaYV/i2wWm1EYiohQ+VI7g0l6
         m3Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KXbc+wIhPF1GCrKRAxpOHci+e7MMXR3kgLD3i2KDQNE=;
        b=TAuHiWW+hbC9CQIafM9dwVPoEHSIVJIfR92/XM18d6UOK/aJIiNkcUyxDaPp3NMlxK
         iW3uAtxTaVNPXhQRH83vy2wTImkyOnYsuyihTd7QBPJqO4CtHxglHOtyZqeMULOLBA6t
         KGcVsscYpl2hYzbBUfANBjWkEiQ54PnSQIhSgmBuPUaieliThfs9MMjgWslN7DLtb7wp
         uPCmXhS+rYHvWKG/3ZTZdnA08voATGYAks8T8Qxebwq3UeWFoSWhXrxJVQBYWGc63sak
         NlHgezssmcdHWOJ4XXBYuqtoMJQhf2PU9HvpJeA8PSZJdRHAh7KpEp3C3uGKGKAutm3v
         t8Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=anaAo0Cv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXbc+wIhPF1GCrKRAxpOHci+e7MMXR3kgLD3i2KDQNE=;
        b=qy7A8vibWd88zx1inCaUApqW+3gA5q5jao15PWXiSO2oZ6ItWryvSm1Z+IadWd7FG/
         /tiS/M1koWOI8ybpSI+LxZmb4rMm7cm7avbDeIQTCuaNoONi7IsfVCbjwI/zUlytwZDj
         nmh18qkRfgbMlfpdd3JRfOh8OygvbabR6k0uYd/bFDqHHb9hIAbuXajhyNrAsKjKZo+b
         rkx9rId+xI3tJAyQUwRFTC3Od9mvPC6roVaKwuUQJd1KM6QDZilg5Qir3KUQte3pFstl
         jlDC3mctgRAhGiPsG04KR3lY3zp/ih3xPqSvYjRUrx2ay4EovWlmj1XexUc5+NwjvEPr
         b2TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXbc+wIhPF1GCrKRAxpOHci+e7MMXR3kgLD3i2KDQNE=;
        b=PnRZ5mr1v8Oq/diswsN1EWGqpJdHDSXxHbL09afVmHY2gKdHJ2HDVeWBPuC4C+Xdxy
         NNG7lLgzxoah6wYl6SMB3ZgRqEFE8vNNn9T8jkc6wLqxE65BUgszs1q1pTWV3lcwPIXi
         BS2MK9Ff9VRiEt2KKT34ng7TJCoUhRcSSdr4QqQWxFTtvNbAldzTxfLu9wug5vjjqW0t
         O9aLMIdHiofx0JZyVihh2aggJzuB9W5aj5NzEvheaZeiKkDmQ0ddTKMFsxvunoNrsgbI
         bZioJxQFUCP7V1sCIObCdSYw4Igw7gL49ZfGpOIwsRpB4UNyI12PqyNYDJ8ZQ3Tj8gT3
         /v7w==
X-Gm-Message-State: AOAM533Dr5b43kcfCz4XIwTHB4TPP0eLuLHDQ1VUtf0jVt5snDzuNxMQ
	SNS3H/96diYItIT7Z1tuVsg=
X-Google-Smtp-Source: ABdhPJwclfGWADz6/IEMF+WDo2PEJkRny2nv18FI16gs+UcCOPOJgvLC8ipjeFfA7o1CshyO5tZ+kQ==
X-Received: by 2002:a17:90a:c20d:: with SMTP id e13mr18236109pjt.185.1608586857725;
        Mon, 21 Dec 2020 13:40:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b782:: with SMTP id e2ls18980539pls.10.gmail; Mon,
 21 Dec 2020 13:40:57 -0800 (PST)
X-Received: by 2002:a17:90a:734c:: with SMTP id j12mr18687374pjs.201.1608586857146;
        Mon, 21 Dec 2020 13:40:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608586857; cv=none;
        d=google.com; s=arc-20160816;
        b=s8enZv3Dp7eQ4xcy0gMJraskvPgfLwDws/gJBVAxq00iPA5yoo4m2FoFsiSQMDV0LV
         NnAXCMOjemZgAi5wSEbBm6ZnO5OQGxQA9d+bV/fm6+BL/xwfGOaRi+38Oey9Au+sUWTB
         ZXmDNKMJfUNDHT5AIigND55qUtLrWAInNyhvLlWW6lk4Dem4TLZjkEr5InFnlq/qM9GB
         kaP2E8cUrxX1cFbJ/AUjk3yaf5XqkngFAu+KseXDQRWkIi+mnjbZsqK8P9RmZ2YP2VyO
         QCy5j7SMS/9aWIy7a6sBhM4W73lDYFOGdpXK81+qJSH6MQ9EWQoIBUO0jNm/lejfaHqy
         aCGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E3gJZe//5sJh25MpZhQ1REVhY7oVTDWIfW5HcKPRa3M=;
        b=pVdaBoZwng7OccnrQkWojqA5jK3IZgmtivc+PBWMj1vDTawv0RAXDlJHvfXH+VeJJP
         PuCls3j3gfs2hqwT7TofC/QxoVHCOoJTQiuxj7oUk+XqIHn4kO3qaRsLoDkEoj79t+qn
         D9hTZDt38oAY73v71NwlWd8rTdj2HgIPCzRz3dZ6SFhXXNwiU7Lz8/2QXrfx6wDcLrLc
         MLBnYrABEghqcQ4U9SosNXLukaftxeXXQoHFDqtDxA1HbR/z3kzqvjPpIcUplvZcNiAe
         NMV6dLZnQvGmGS31SFsWd8Z2Nf8SNyxX7WBeZTvkGn1a8R5u28TYKB8a2b74irD4eACq
         nTXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=anaAo0Cv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id r142si635578pfr.0.2020.12.21.13.40.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 13:40:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id p18so7074197pgm.11
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 13:40:57 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr17155484pfy.15.1608586856748; Mon, 21
 Dec 2020 13:40:56 -0800 (PST)
MIME-Version: 1.0
References: <20200903023056.3914690-1-nivedita@alum.mit.edu>
 <CAKwvOdm8qUpueOdO7e-rQotO5UynrgU2TZ9DEe=O4f9eU5EY0g@mail.gmail.com> <X+ESNP6HdYQpd7g3@rani.riverdale.lan>
In-Reply-To: <X+ESNP6HdYQpd7g3@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Dec 2020 13:40:44 -0800
Message-ID: <CAKwvOd=y7J8ehoEaFBLwS0UdC_mPbACenfRL9ssSy+UPUFGwTQ@mail.gmail.com>
Subject: Re: [PATCH] x86/cmdline: Disable jump tables for cmdline.c
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Tom Lendacky <thomas.lendacky@amd.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=anaAo0Cv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::529
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

On Mon, Dec 21, 2020 at 1:23 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Mon, Dec 21, 2020 at 11:14:39AM -0800, Nick Desaulniers wrote:
> > On Wed, Sep 2, 2020 at 7:31 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > When CONFIG_RETPOLINE is disabled, Clang uses a jump table for the
> > > switch statement in cmdline_find_option (jump tables are disabled when
> > > CONFIG_RETPOLINE is enabled). This function is called very early in boot
> > > from sme_enable() if CONFIG_AMD_MEM_ENCRYPT is enabled. At this time,
> >
> > Hi Arvind, sorry I missed this when you first sent it.  I'm going
> > through and mass deleting my inbox (email bankruptcy) but noticed
> > this.  I couldn't reproduce jump tables in cmdline_find_option with
> > CONFIG_RETPOLINE disabled but CONFIG_AMD_MEM_ENCRYPT on today's
> > linux-next. Can you please confirm that this is still an issue? I will
> > reread the disassembly, but it looks like a bunch of cmp/test+jumps.
> >
>
> The patch got merged and is in v5.10 -- are you testing with it reverted
> or just plain linux-next?

Oh, sorry, I missed any email that it was merged (and didn't look in
git log).  Just linux-next, so no wonder I didn't see any jump tables.
:^P

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dy7J8ehoEaFBLwS0UdC_mPbACenfRL9ssSy%2BUPUFGwTQ%40mail.gmail.com.
