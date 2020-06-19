Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBVUGWP3QKGQETIJTHUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9AB200AC3
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 15:53:27 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id d64sf348071iof.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 06:53:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592574806; cv=pass;
        d=google.com; s=arc-20160816;
        b=PFFmvochgW4VICJod11QjYI1E+TFIrxnrjM5GumlMKQ5DoGBVMdiUND6BisfWA+SnF
         qZ2+tdnWpWYYMhUXaQeKbKgOD0xHoIts5tLDQ2G6Na0tuf8SjRrLQVE0UuZ2GRXvR5yV
         6CjAV0E1apx7/+1wy143fDhT+3OUo/Rl4btLOydyDDd1+V11Qk6pKj8sh5AFO0F9nLU2
         s4Et9Be7IFQe3Zk9HVUt/DLLpQoStOL2qAXUwGYoaNPtDDVt/dOOv/w++dfhYIgPje4D
         ABwW9pmKH3WhZPrT2D+L7IqyuuRv8Sm+Ar4P/iVBHl2J0IP0IfvM6JXFrladC7fEjLdu
         H4YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=L8YrEdSTQ1e6lbl3L2j4EDGbOoU6Fe+w08/CJN3Hcqc=;
        b=wiCLoX0L615HPREwWhDrYQYgAvIAmOJ16G9eTFxgyCy1BFRCJmmNMGK7aeuA3BkdmR
         4CgG9ebg1SCuwx9/jKTFkVhEctHlepJN55AwdY+GWfAkkIZu18gDEl72LqQQHm9Gl1D5
         K3z104MVwvoEuV2X7LGHoC7zpX1MoxNNnLZ/p8ojqPrp9XypITn/RF9MmP5J+YC8Sy8J
         lbVyXsz+spLzFOEsu5Ao+DfWGCeCKuPpcXw6wgYbsiywnxd8/nf7mYs4o73pjXBrROrS
         zHGdUPuV36YTD1PFgwBa/gvrg6xBO514e9k6GhbM7SMC/QfY/y20lbcy4x/09DZTcaiw
         5dbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCnrqAUm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L8YrEdSTQ1e6lbl3L2j4EDGbOoU6Fe+w08/CJN3Hcqc=;
        b=ap5c6T87iynSRsnfZ8nM51tpf4Amy9AHAdVWVhm1HJmZhoBq65u4ejvBZaLsAfdB+d
         ZMwlgQG5++6iIvGEO7bTE4A7ZGvcvbpcmrdplBoD/E2oQDBEg1jhjfer55HkGUowY2HH
         RKGongMo4ZdkAZNYxpyKQKHyXhzsUGRirEvPzZX6YGiU8iHkwpmsmmuwzWJE92W6sWLZ
         fRyQVdWox5vEzs4LTZgTS2y9s5K1gXd58NilvP1r3zqL7dKe2WQtoMhP/nGsJhOZO66k
         Y//R7loNx7U+kQzc3SmbR9qz6YJFoK3qeNpKWJ5DDdgyzIwj/LbDSH7LIZeZp1qR5F9P
         feww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8YrEdSTQ1e6lbl3L2j4EDGbOoU6Fe+w08/CJN3Hcqc=;
        b=Jfk9jWEN9G8a0OnGROEwIKTkKXjWxW255ovuk/V7+CqUhbixT/IIoxoLGuzhq8Qpgn
         ehqS55Uc3sKyD5td+qd77EzDHMpMAW5b+6hnB15/k+BvL+yr4UcK+wC6jcMhli42fijv
         m9NfnhMtNYomP3Xhw15FM68EmMW7WIDDtWP0j2eT3kMQn3LvcYJHkx48h7Zp6WlLkZbo
         a35UIFO4wLvJBUXCl+fd0Te+DiGh8uECD9ZT42c/CzM0E0F2EOJLd4nX3a9BbfJBBqx3
         5ydoGpPT6Ak0MX73L1iP2vAvauiHspWoS3Mi00CgoyDTyvuB61LQP/hIsu6wsVgueROX
         pYmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L8YrEdSTQ1e6lbl3L2j4EDGbOoU6Fe+w08/CJN3Hcqc=;
        b=spfn41ZQYEHXTI+/KeN1/TqfEick3hQQT5dDl3GjxofbBJhaPQQJM3KJ0NQ9NYrqVx
         azz9lY3mEmfUCqtFbvxJSfcE6eWkin1lEOKC5nsIeFKtEVVayygAgg6GVfjEVMARzfon
         a4Nj/YO/q4j25h7f20fbuxCIVrDXs8d0zvl/jplDmuaRcKo1BF7Q94k1U9oIdGuzMj1A
         eyhmh0L6prnwa4MpuGHFVIXxFPrRT6t0zVM0urqUzaIWqSVEaaeWIjhDpxqX1yy4fL7w
         6ZGa4sHl7ymmkvzjbsPkwGzgaHO1OshzlsPbibgZqXzGv3IGnvrel9XKv311I1b7tsOR
         Agkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GIi8wzqWSWik+2HuyaMJFTgKfkvVdkWd2YcQZmwkUB7/8yYVn
	Vwf7AxmxQgu5BQGWjVrZzsY=
X-Google-Smtp-Source: ABdhPJzh8N6PuLdszytMnJ/QnqRHw72F6RN0zGRjcvXSU4rNZ0a/UWY2q8+lhTGW+mkUJ7K5S9Gu8A==
X-Received: by 2002:a02:7818:: with SMTP id p24mr3961951jac.131.1592574806491;
        Fri, 19 Jun 2020 06:53:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:d0a:: with SMTP id q10ls1209242jaj.5.gmail; Fri, 19
 Jun 2020 06:53:26 -0700 (PDT)
X-Received: by 2002:a02:942e:: with SMTP id a43mr3807392jai.113.1592574806191;
        Fri, 19 Jun 2020 06:53:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592574806; cv=none;
        d=google.com; s=arc-20160816;
        b=hOu77AMJXSzt1NKYEDwF38FAK6C1BqgKbFbSwXRZRD/z/pAvsa4YMA8ykuLXM+Qpcq
         k2ZkqVfjkorKHhwgvSICi0qXhabymHcl44cwD2uiIiVVh/Ma5xlIZtFjZuvRxUykz4OD
         I/LtTLS/a3flqKdajaoBKL9aTMRWwAkW8QrO3stMM4E8xoFIAu3Vcn8wQHabc4vn2mUe
         5K9Pne3rrVkPOCC1pS1UOjrTdFHPlKKmyioTi3Er6BEUEBS0rdcmIp7xn/s7QkMUt/FU
         nRF7XKe4DbHnzOMlg6I/6ftlCNxwyO/LxU99jZDE+66eQ4HBK9poxPNf5IClf5o1y4HL
         SjrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=N67LFZCCD5XjDCH+/cowa2h90QhFRw4fTnac82tg+S0=;
        b=RaRy/bEkwGUgzE7Ks1UumtRk3do9Mo/la2Mi7/2dCgPi1JNNMoSEF2bvtsLnTW+vCL
         sZfYaFb7SuVdMvWptwfxuixHH499YEL8lPZPNjGFYQwVGmAmyCFhRMj9MAMfOj5xiK9r
         7G+/wa7SCjsHrOBPEgdNSJo037Wmi4py6j5Z+RyeFUJCAYzhHQMvp3Z8YUx0U0pJViDd
         nU1hS19thoZ602bCesiAsF5izim70uxjg07UtW7VeT82ooCouAbjfRcoxXuHWQs3W7ej
         uqN0Sy4kkgiGAOxPrzf13t3VDuE7DJAJeWy9SP5j62YWJcgyBrDRZcrpn30ST5Pdda8y
         1fFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jCnrqAUm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id i20si138714iow.2.2020.06.19.06.53.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jun 2020 06:53:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id j19so9248838ilk.9
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jun 2020 06:53:26 -0700 (PDT)
X-Received: by 2002:a92:940f:: with SMTP id c15mr3891903ili.204.1592574805857;
 Fri, 19 Jun 2020 06:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200619125721.15946-1-sedat.dilek@gmail.com> <20200619132627.GD222848@elver.google.com>
In-Reply-To: <20200619132627.GD222848@elver.google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 19 Jun 2020 15:53:14 +0200
Message-ID: <CA+icZUU7tz3yPyB317yZR6ksMDT-4SbvF7kHnQ+GV-v+O5eKGQ@mail.gmail.com>
Subject: Re: [PATCH] kcsan: Improve small stylistic detail in compiler-clang.h
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jCnrqAUm;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jun 19, 2020 at 3:26 PM Marco Elver <elver@google.com> wrote:
>
> On Fri, Jun 19, 2020 at 02:57PM +0200, Sedat Dilek wrote:
> > Commit 5cbaefe9743bf14c9d3106db0cc19f8cb0a3ca22
> > ("kcsan: Improve various small stylistic details")
> >
> > ...forgot to improve a stylistic detail that was already done at
> > another place in compiler-clang.h file.
> >
> > Fixes: 5cbaefe9743b ("kcsan: Improve various small stylistic details")
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > ---
> >  include/linux/compiler-clang.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > index ee37256ec8bd..c47141b185fe 100644
> > --- a/include/linux/compiler-clang.h
> > +++ b/include/linux/compiler-clang.h
> > @@ -25,7 +25,7 @@
> >  #endif
> >
> >  #if __has_feature(thread_sanitizer)
> > -/* emulate gcc's __SANITIZE_THREAD__ flag */
> > +/* Emulate GCC's __SANITIZE_THREAD__ flag */
>
> Yeah, it's inconsistent, but if you look at the rest of the file, none
> of it looks particularly pretty.
>
> This change isn't really affecting KCSAN, but is a stylistic change
> confined to compiler-clang.h: while we're here, we could just bunch a
> couple of them into one patch and make it "compiler-clang.h: Improve
> comments style" or something.
>
> 1. These sentences probably want a '.' at the end.
>
> 2. Make all comments start with a capital letter, and punctuate
>    correctly.
>
> 3. Multi-line comments should have the first line just '/*' and the
>    second line starts the text.
>

More improvements :-).

I just fell over this one when looking through KCSAN commits in Linux v5.8-rc1+.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU7tz3yPyB317yZR6ksMDT-4SbvF7kHnQ%2BGV-v%2BO5eKGQ%40mail.gmail.com.
