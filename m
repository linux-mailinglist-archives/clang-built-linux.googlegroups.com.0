Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVPTULUQKGQE2W2NDQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D3567391
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 18:48:22 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id k31sf7531250qte.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 09:48:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562950101; cv=pass;
        d=google.com; s=arc-20160816;
        b=NqbwB0w09/iawUaiOamP6MnoZ7jNOeVJKeqOxE3rn1H3li4iA4WzEUkkCpCt3RFR69
         OMUGi7CbX53YNeqredxyd5w2NLTuNSIuif+LSezmutbaTIh6D4NGOvnbkvUxQQI1U1u/
         NA5CvixKqpBf7GVc+9cIF9PiYSav2i4BxrXHYmSKAYHt+tSX9EcD5xooXVA1G544aDbS
         v0XScFTxiUk4oTwREg/g1MvFOH3anQZPH4PWUEjC3PCofnTx6fBfk2UcYzuDEpvdLKPJ
         QJqs+P8GZXEmRbDyMocvZB3S0k+K6IxkO1Dwv6HJq4Wo7GOkJg0lUfVd8NZI97JrApaD
         OHZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JuWKqC8q+DO7+OHe+PKjRE9qWB8B2cvsSrlmQOg7hL0=;
        b=w/f+cPWq7AdlE5effKgPle46iWH1cjyN/wGU8ou9serOl+fbIkVB/lhUwtZOH3P3xb
         3t54TGCdYmTXazyyJ+/xDxvJA1kvXCF6w9Wm6hgluo5SGI2ysJz00LvO1wPUGHlG7tZ2
         LH6MoyP/hP+7jT3NgX4O8Gl5spOeb6g793H/nNfDJeWki0zCrHvYMk5sT1qSl68Hrmq2
         lfAcmk74y+1MFF/qfvqpOqxNkRGzHICFu3ldK7lcdfwYCmPdwPRwjJ/T8TQyV/Yajpmr
         Os17yWEqAl/LFr7Whj4ns8tkn+QHuJvtGx+dl5PcG8loX7OgyiWNUNRpunGefhtM/mZS
         beEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QGMFdpC6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JuWKqC8q+DO7+OHe+PKjRE9qWB8B2cvsSrlmQOg7hL0=;
        b=YWzMhRLqN4VbDTsCNVZp49l7CTac/TjczdrmxipRohclm89qh50pln7AnoFk3RrCNP
         AThqHmMpZclq3+TPZIZWueWKlxQh59bcdzegrIaynivrM7KqAl8H8nmevtI0ol97LKdI
         U52lJNrSS6YyVq/7PMozJkhiopDM/+zHL4ucbAzOK3eysSF9GGWP9nORUkU5XFlPPrOu
         ufVHzP/pvwU+XST7ICBfhZCbV+0GxZ1hY/GdqdT3VF+2UkQ0vPTKpFJ+sjheeIb7v17l
         BvZZIJvLrjnTRZ+ocSNCYSR6rKrfHP01kLQPcHZIEozaRDs7utv8sFfI+C7mPbLUuwC5
         oxsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JuWKqC8q+DO7+OHe+PKjRE9qWB8B2cvsSrlmQOg7hL0=;
        b=EeCBNtCTAbranN1xZGExecJKpZZboKOyhdTiqctHS6rvrk+XcnTkEpueoTpp3pzuTj
         ec/CYJrQeBXkS0dinBqwIXjAI0g+fKW7MHyhFacPnQSEMIRQHihW5FF1msgQSSlAsWva
         7WeNpOS7B4qbzGUUGix2077ow22eJxl7HM7zqkBqQVpkbtdou4M3AHxf2MuxeFi5yLaB
         94/9VMJdFmSyEzPOezp7kwNJ5yMt8S3aVkQ8UAt1dgsK2QlRAWrbGY7YMp8u3eFy5DEi
         L+B8BfJE2c9KyLe9XcWgZNeHTSLvQGxllQMAFw7H7oI/V6rvyX/YA6KMlnIDaSvuyye/
         zmeg==
X-Gm-Message-State: APjAAAW6oyM/4pQE5+84/zcEia0ZmQDXvtRFNAw/rTY01doUXSW5q6rA
	4dPL0BuObF8ztJdrUT2jutg=
X-Google-Smtp-Source: APXvYqxvmrIs9pzTe/TdmiLsLDFXq2clBKraEFldAb/nsCVHegpOffK/l0RsTA0bN66t7dNBlshhPw==
X-Received: by 2002:a0c:f945:: with SMTP id i5mr7273657qvo.33.1562950101520;
        Fri, 12 Jul 2019 09:48:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:49d8:: with SMTP id w207ls2959195qka.6.gmail; Fri, 12
 Jul 2019 09:48:21 -0700 (PDT)
X-Received: by 2002:a37:4ad7:: with SMTP id x206mr7375830qka.85.1562950101283;
        Fri, 12 Jul 2019 09:48:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562950101; cv=none;
        d=google.com; s=arc-20160816;
        b=vwW6whY4HQiGhp08De9aoB/UpZGnPvTgewGDPHJHGPqtBEiyMeF+mnBJT4Pzddohwd
         rUnE8MXfyG6eAvpdM+o8j2cLzAhLKcHlGdFRLxUxTX628I3nR9Sj/duT1+UmMnbUXyaC
         6iIZojbOYR6n5J4cWmldORGsbcWGs2tIGxA0jMFFArzjtMvneJMXP45fH8VBwLPUPdeN
         KMjDs3Yq7Q5jKi7ijE5UVHVLcrq8Log5IqRI0FnDlHaKR9dkS1mhhCn0OQt5OU/mUZaI
         THzZKwBgUy7zTpbim0IuYAsX9SZjjJdDBwVqhd952jPFBNrH5Isi3KK1JtzkaTwfpWV0
         FkrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ni09UiARp+MdsV5i46eFbEoOGcDLZp7mIU1Zcn2V3hU=;
        b=saDzzxwI4zUY9TEdF0jx/tB34fFfEdGKSXw/tCyogEQIeCVlDOyRyKPjTLmrd6JHxl
         GLP6xRfUImeqmnFFBLUSVyc7ENxDlIbsu30m6RP32nQ2mRG2nFa42rrahwSph8vDjded
         lY1xWAVJasNsE33O/tbwkvdAeiH9jlWhcrCDgU9Lsz/8FGIgifzBEJpDhk2iyKIsV5pZ
         A43BWtpHBd7q756bh3A1jD0vwvOzJXAp2Y2qiSiegMmlNF1pwadr93fBxPwa9GgWQAhp
         YCb4PgBFDhljPIM9iR/XJTDWuzBTXtYp7arfk3GDw9pGl3Zd0LUeF48p7KvnkYmXB1av
         x9tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QGMFdpC6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id g41si484865qte.4.2019.07.12.09.48.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 09:48:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id i18so4769452pgl.11
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 09:48:21 -0700 (PDT)
X-Received: by 2002:a65:5687:: with SMTP id v7mr12062329pgs.263.1562950099845;
 Fri, 12 Jul 2019 09:48:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190703081119.209976-1-arnd@arndb.de> <20190711174949.dc74310efd1fd3c8bd4ea276@linux-foundation.org>
 <CAK8P3a2ZRw9B=X76yL-bRzC+01z6VaHDzPAhQQw7V9MXtkp+Jg@mail.gmail.com>
In-Reply-To: <CAK8P3a2ZRw9B=X76yL-bRzC+01z6VaHDzPAhQQw7V9MXtkp+Jg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Jul 2019 09:48:08 -0700
Message-ID: <CAKwvOdkOG_fcJLc-2mFUUp9N1CrJ6EcnZjpraHsvfTsmiKX4SQ@mail.gmail.com>
Subject: Re: [PATCH] waitqueue: fix clang -Wuninitialized warnings
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Morton <akpm@linux-foundation.org>, Ingo Molnar <mingo@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QGMFdpC6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Fri, Jul 12, 2019 at 12:45 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Jul 12, 2019 at 2:49 AM Andrew Morton <akpm@linux-foundation.org> wrote:
> > On Wed,  3 Jul 2019 10:10:55 +0200 Arnd Bergmann <arnd@arndb.de> wrote:
>
> > <scratches head>
> >
> > Surely clang is being extraordinarily dumb here?
> >
> > DECLARE_WAIT_QUEUE_HEAD_ONSTACK() is effectively doing
> >
> >         struct wait_queue_head name = ({ __init_waitqueue_head(&name) ; name; })
> >
> > which is perfectly legitimate!  clang has no business assuming that
> > __init_waitqueue_head() will do any reads from the pointer which it was
> > passed, nor can clang assume that __init_waitqueue_head() leaves any of
> > *name uninitialized.
> >
> > Does it also warn if code does this?
> >
> >         struct wait_queue_head name;
> >         __init_waitqueue_head(&name);
> >         name = name;
> >
> > which is equivalent, isn't it?
>
> No, it does not warn for this.

So I think this is just a bug in Clang, where it's getting tripped up
due to the GNU C statement expression.  See the example I put in this
bug report: https://bugs.llvm.org/show_bug.cgi?id=42604

Clang is warning for this pattern of struct assignment, but not for
non-aggregate (integral) assignment.

(I think that pattern is pretty cool; it makes it more straightforward
to provide macro's that properly construct aggregates in C; in
particular I feel like I've been looking for something like this to
simply the use of __attribute__((__cleanup__)) to do RAII in C and
make smart pointers, fd's, etc.).

Let's fix Clang, drop the kernel workaround, and thanks for the discussion.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkOG_fcJLc-2mFUUp9N1CrJ6EcnZjpraHsvfTsmiKX4SQ%40mail.gmail.com.
