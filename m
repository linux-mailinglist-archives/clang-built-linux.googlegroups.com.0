Return-Path: <clang-built-linux+bncBCMIZB7QWENRBGO4235QKGQERGCUCAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4891327FD37
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 12:23:22 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id ct11sf2765035qvb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 03:23:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601547801; cv=pass;
        d=google.com; s=arc-20160816;
        b=a4AYiVK0ccUNrE5xQVNOOEMZg+hKaO1/50X8oWv1r7xIMZIrTXIH1Pj/la2F8CsStv
         LhIKQsLEnnwlUSIE0Fg391LBHuny5IGuDzJdOqFZeB6rTda+Wi5avpredklgmWBi5dTc
         V4IOo77pwggKjYVdvd4gjZ86i5Dv/N0/rK3UT5tT5g8qzSvU2110KU1WTXaLKBwSL6yx
         r/fXpTjSqgi/tpTLohyJ9+UuWSKeZEGhmLfFJsMxsfdXN98VdEKs2VrhCsHznKzM2EQJ
         QYHhwh9d6xTv1qpXtO/EwSzK4jtWS9rZHzB+/29fm70u3k2ztQavTj+bYqWjVrtF+H13
         jq4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=H9VpeOQIHzpiAmm3ffrljFL4zmNapvpw6c94zOpCvmc=;
        b=Rc8ar9wZrqii+87U6Q2LOs/yLI58CSOr1bZiRJ4BfTu05hg1imCUJfgi1Srn1n16fn
         yxyIjZ/UWUUFiZVe6UgjVpoqUHcQoK3FDIkNeUSoLQtJA26tB8MRaCDrlvBBajHDFKaX
         MRi32FJ7errZ2FX5h4vieTIiLguQdeVYE6g/ZQDUIq7ZRvALR9t6xDISWL9KWjl0dAKN
         M5rzCWaDLey228nIol80uFL3XVNXyh5LVjZaNPstRcf18bMc6pc0IG4OpZ/uKUGnm9Kt
         yJvyRf3AKBjlzNFvFbojgqrnVed8KnPFyRKi9YUT4ZufgRbqo2kXWTl9OZSSZkIQ+pZn
         zAjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kYJsfwJV;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H9VpeOQIHzpiAmm3ffrljFL4zmNapvpw6c94zOpCvmc=;
        b=nOiX3yZNORjIASNYEYaYdbWF3/udb2gsG68RsOOaOfQOOCvsJtVNmDztsVyat17IOk
         13YG4qQmtH2I73up6Lk3IEsfS7SAvwQ+XZuF12yM0hjQ8Tn8OndjtadAKExancPDXIPB
         zN98sLfzGnCAh7jNGvk/7kC6gql05ayUOGaoW6BszmM1lmszamxfzI+vQa4uej+i1NXd
         iEyhgbkWfaaHAIIGl5f/6+PMozEvHlZ/gTlE25E44vvwdjIQqex4zOjjcU0kANKR1R9B
         mgYBHe2LVNUZO1MC6Ts3l0HuXLx18mAo6ONrK4B9yrbmrx43SVhUSqqJ+tvwhRfWjkxW
         00sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H9VpeOQIHzpiAmm3ffrljFL4zmNapvpw6c94zOpCvmc=;
        b=m7GSZCvCrBOCrTC126ODmj0f90pbulz6Txs5U7ay2QMwa0idGdj7PxYbW1uBIOsHA/
         RL2ZPNDvX1z5DoyMZpk2M1xu+5LQNPI3fwqVxdAu1AsY3i6aUsMQAmE6KZzEQKL9Dug1
         AHQCHBdgNbdr+cE5i5WQv7XfV/NLUuhraTe4H6lIJamNjGwYAmmDo4lA5CeMHdgXDKf5
         mVsLtqfV90jAylvHjyi4fFRmLo9430VjA4b2/HCZVOZb3Mr6+pfUIHqR7IUZgeFdtNhZ
         RqLFalsB4cUHFzcHUeA1h5Crt/LpNoU6Ne8ZBjhDZux+TWJYb1TUNMktS86KT8myemhE
         lh4g==
X-Gm-Message-State: AOAM530S4pPPw7grDO75jGHQIglGpV+BCMPGHXCQNyIPa7Gg+5+IWlUj
	w++dakglN4N+k19nzEloRSs=
X-Google-Smtp-Source: ABdhPJwuOwTdLTk3NegYfIka2BY4ywDw72bxvzCFaB0nbMQcA6e3bdPl/7OVYRYYEY0PB/2n25NHlQ==
X-Received: by 2002:a37:9bc2:: with SMTP id d185mr7201763qke.144.1601547801347;
        Thu, 01 Oct 2020 03:23:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:40d2:: with SMTP id n201ls2281487qka.1.gmail; Thu, 01
 Oct 2020 03:23:20 -0700 (PDT)
X-Received: by 2002:a37:912:: with SMTP id 18mr6950304qkj.29.1601547800893;
        Thu, 01 Oct 2020 03:23:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601547800; cv=none;
        d=google.com; s=arc-20160816;
        b=nJ7x6rBR/pQpafytt756qrlmAdNmbmHQdUSinHh+Ivt4DhYREqxULFmwXrT4WjCnzo
         sUPZw9ORAVLnY02wXiLyxFfk+2TKB1ClsqE1i3aEzQCpW7uQBPIZfjjReTHxMGK9d1ae
         TiEYORta0v7KYegpFskzugPJ6AwUSsAmB1DxR/j57MLKyYtfNDyhk3PkoTAvrO0qWntk
         Xc51onDVa98lHrLfJhVeFjRvqv99/yDQVH5saosLCqFKgezcKcEkj2oNE+kY9YGXKEJ8
         Fv5qypdtQOoTObRYwb39ABkrGyEK1EG+xK4jZtC9iFJNfNCFKgwns8OAngoCch5GzIw5
         RC8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W259fc64ya1EFQ9j8EJVUKriprN8ho0dBOONikOqrRM=;
        b=KvaYf0Lhg0zMjZgcBCevHliyKkulM5VZJdT3794VJAks4kMtkLVjGLnWh6BRvsdzs8
         PwFJMQeZhOLPZbvC31TID7QcaHOGB2WsgEBfg1qBt3kqw0T3FEpGJAVPXBvNAUgsG5I8
         DEurCTt9W+EYdkiVjnztfYPCbe7X5UsFoFX8NSjCNosUlH5RnFLF29ka9rXcSGf5VAAI
         3djm3PnihJ9VWEujzVOuHTz1g5bHZUx13kNt6+yGE2muJk5BTwtDwQmyT7t9b5tZatUx
         aunvB1ZRwKLWR6wS0xpFuB5bfNQEqNHtWZg8+I6DDd6cMeVDnLz8ICUbENjIbbIy4zlb
         QSlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kYJsfwJV;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com. [2607:f8b0:4864:20::82e])
        by gmr-mx.google.com with ESMTPS id h18si317367qkg.3.2020.10.01.03.23.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 03:23:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82e as permitted sender) client-ip=2607:f8b0:4864:20::82e;
Received: by mail-qt1-x82e.google.com with SMTP id e7so3821379qtj.11
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 03:23:20 -0700 (PDT)
X-Received: by 2002:ac8:4658:: with SMTP id f24mr6711635qto.158.1601547800344;
 Thu, 01 Oct 2020 03:23:20 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
 <20200928083819.GD1685@zn.tnic> <CACT4Y+bPFASnmFRKpQ=KY1z+RnTbGmkPU3aikzdXZpKkV03D9A@mail.gmail.com>
 <20200928085401.GE1685@zn.tnic> <CACT4Y+Z4Y6SJJ6iYBhVRiknrWBAD6gGhQXiXLhxPniDNBFJGsA@mail.gmail.com>
 <20200928202353.GI1685@zn.tnic> <20200929083336.GA21110@zn.tnic>
 <CACT4Y+bfKwoZe3SC-BKJkOET1GxGp9tCpLzkae8q1sjWYnmgmw@mail.gmail.com>
 <20200930161711.GH6810@zn.tnic> <CACT4Y+Zc7kD431Aed49U4R6cqzWGAWqEXevnheRHKQRQoEnh7w@mail.gmail.com>
 <20200930163120.GJ6810@zn.tnic>
In-Reply-To: <20200930163120.GJ6810@zn.tnic>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Oct 2020 12:23:08 +0200
Message-ID: <CACT4Y+amigeTPFtwEgbeOGGTiRXFOVZauhOhQCz9CQ70HM17Ow@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	syzkaller <syzkaller@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kYJsfwJV;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::82e
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Wed, Sep 30, 2020 at 6:31 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Sep 30, 2020 at 06:23:44PM +0200, Dmitry Vyukov wrote:
> > Here is the answer:
> > https://github.com/google/syzkaller/blob/master/tools/create-gce-image.sh#L189
> >
> > # rodata=n: mark_rodata_ro becomes very slow with KASAN (lots of PGDs)
> >
> > I have some vague memory that there was some debug double checking
> > that pages are indeed read-only and that debug check was slow, but it
> > was always executed without rodata=n.
>
> Sounds like debug_checkwx() which is disabled by turning off
> CONFIG_DEBUG_WX.
>
> You could either disable it in your .configs or, provided there's even
> such an option, disable KASAN checking around it until that one-time
> boot test completes and then reenable KASAN.

Thanks!

I've prepared a change that removes rodata=n:
https://github.com/google/syzkaller/pull/2155

I think we will be able to indirectly evaluate if it helps or not over
some period of time based on occurrence of any new similar crashes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BamigeTPFtwEgbeOGGTiRXFOVZauhOhQCz9CQ70HM17Ow%40mail.gmail.com.
