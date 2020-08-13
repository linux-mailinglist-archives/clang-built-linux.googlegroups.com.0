Return-Path: <clang-built-linux+bncBDAMN6NI5EERBW7Q2X4QKGQELGEV7TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DFC243E4C
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 19:29:00 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id h10sf1402467lfp.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 10:29:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597339739; cv=pass;
        d=google.com; s=arc-20160816;
        b=1G14IR3WaZ9xjAsKR7WvB2yxN8vEFUfuxo+b31Pju+mJxRDCVVgBEYQ5C4UTuT1dM2
         rwd0GWEhufR92bB5+s4VDp7qwEmBYrA7gEtC4D6NibBjDoGMAETDfolkABMc9jiOEFBt
         5jrsMj20WBfPmWmLT+181hlT6bp0ADJ2Hq24zmHsqr08hbnCudpZ0WQxW/m/s2Ld1Wxr
         aPUCmnHm8uvOX5MdJN+OlEmnSJ+wgOqqq+fmNl7ZIeDuTvG/G7UwQXA8NAW9CPRa2n1o
         DBGPcvIYLjL8D50qOYwggNWnz6Zb62CYD0VpG7XlJtxKR/8LHfV0+160lOCu+3Erl9KS
         u4rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=LyyrLNF14i5FUA+xwRKeIdaWCK6g3HCYiAGsgJsBfAc=;
        b=UcnQJ2B1rFRrehsFuAoAp0muvgmqsjNUGFsuDoEtVKZj3Neh9VEwjYt2LWBG43OdGG
         pgfn6QgzE4ndnp3m1R3X+7h1eDeN6+Tt3jHSQNwQDQApAA43UQBbXEB1Be3iyCjGGEZJ
         qMNgPkvJfxEaiv9zyfm3cLml9UGsNkRCUyPA7bFrOYLiEEpCt41SgazGr5Q0L1LeJP3D
         A2+MGiUzfOyeVBWRyQ5E59cWlbhsxmzOapnGk8piHR9jazvXBektkdmqZBAPCnrdVQxy
         NbUMbIag2n2AjziqgK2BeAGkS/B/vDel4u9loYcRqeQe+WLTAgCF0D9PAM1cQ1j6RT/z
         t0fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=QVk6G8vB;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LyyrLNF14i5FUA+xwRKeIdaWCK6g3HCYiAGsgJsBfAc=;
        b=Ju0FO/2h+iFoSDB94R0sW9r0fPUw0flkiaSdaC/DL9ki0XbVDhnP2Xe53yJx0lyZ5D
         ou2alZm9U0IKJSA7Ih/h7+GcGRWY0Vc0SmDWcNfCiawm4XSfLACcMt6yLGZr7mklPhri
         DntdUrIiZbWF8sCqaOBWqc7ietTcTPBfmlJW6dDzwCKdREsU9x0MPpdrr7MD5cyP5XyL
         qN3cnWtAX2zFE8KpCjqOCqsusGzGCDqrij//SEgIxJRGUG5l7/4r1IYuJneVCev7tKJk
         gpMRUhyWaXl5QywNOppCRGm+7WDglHSYjknKiMCYvryZLQ4Mob427LMXqx+9c7N7fGjg
         ca6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LyyrLNF14i5FUA+xwRKeIdaWCK6g3HCYiAGsgJsBfAc=;
        b=Lc89cJcslnb3J40pCYYKoQHTV5BU1kKgzqJx/Nx26SZ3da9j9KAJTmIafCATZgaTp1
         nOC1SsxLOKNgAfoZQfhGMMSEJ1Sru3afn81I/NQoNLaulNy7LJQkPx1VILerxQd6t4gR
         zjWPAC+nepEO5cU3NSUsN6ybRcQ1t+VzgdJKvqkK9G8Lgg0Eptdh7Mdn0MzwsahhZy7u
         usHNeNfPq1VXh3IgVIMKT8dlbGi7OG7MGUzvK5ib2+V+cYeUK2qQb/Fi5ITTWeatbjGA
         2q1ivBbUFnTk4/aAcecUWzFNP+vSSNLjFnz0zjjhdA1W2sw5d9iKzVhz46cMlDrNmSpG
         890A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532P0asXVIEDHzAOmctaLfDKxgpYp3sF9DGa/JK0MR/xKJPJrD+a
	0bQ138aqmMJYI3QrTbcsSI4=
X-Google-Smtp-Source: ABdhPJzKCjzJMZ8m2h8T6RsE8geLV1Bt6aKGsEuhCH/1cv6k33Rx+o8g5rfKbVNS5grJ8EYAYMXWrw==
X-Received: by 2002:a19:7d04:: with SMTP id y4mr2776277lfc.51.1597339739602;
        Thu, 13 Aug 2020 10:28:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e33:: with SMTP id o19ls312258lfg.1.gmail; Thu, 13 Aug
 2020 10:28:59 -0700 (PDT)
X-Received: by 2002:ac2:5e3a:: with SMTP id o26mr2821218lfg.78.1597339738946;
        Thu, 13 Aug 2020 10:28:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597339738; cv=none;
        d=google.com; s=arc-20160816;
        b=0xumdd/ooOwS1o1bZDt2c284YnBfqOJf22dVoAboNFqeA9quk5d9+HjF1yBGhvMxqm
         Ij8m+ViFKINt0RDgo3cwK2LxKBzkkyMEAFJYbkRxU632ymcxpucPCbSbt9q4teRD8mg5
         G1MnfBww+/BLFZzMsuV8qWI3TgB3KsmcFlpwog4F6kpyLsCZJSrjXaME1BJF284B+6vq
         1dsVxeZ8EKoHOGqWWUT3l3C0980L3BL5e3hFMV2RalKCjebx2SLqRAj4p/arVDY39D+O
         /PMLNnaWVgbH4ad6DDGR0O1jPJ962eVBGOVDVYeAsWEExV5V5Tu/tN0odB794blPyv20
         eq1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=11fDOoD89XYwtAI0PHZUjX+Yj9I0KxTiJv3RjtEDo3E=;
        b=WJ4EBosoVXbtkNgYuuqs+YdSLtIVeF60tLBl8j6Xs2vb8qznruYVT8uBYoAPUu/VhS
         K9ZHbsuMWB+xHajoxL4lbDmpuwPZmmyc3Gnr26ZRqkAM6ZyVzC/bqN4jwExEg0YCDIOG
         t0Vr+hgQ9N+lqLPN9XcyUlYG/MxnSjTaJQY8ebaAcUNy6Gb1eM/7hzyuocNddYSKzSI7
         cLKcPAod2TjV43ExHgL0ZUZN6oprQOXFGV40LCnDWyMbtUDoQtfQaDmUvFwmsdq9Ti8z
         T2LB/QgDhlwspsHLVHZzxfBtwG+aKdMkBj2hdyd6KAJqakmdUp53xXLjrFVHPekZfCb8
         ytwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=QVk6G8vB;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id c27si420260ljn.3.2020.08.13.10.28.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Aug 2020 10:28:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, "maintainer\:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>,"Paul E. McKenney" <paulmck@kernel.org>,Will Deacon <will@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
In-Reply-To: <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
References: <20200527135329.1172644-1-arnd@arndb.de> <878serh1b9.fsf@nanos.tec.linutronix.de> <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
Date: Thu, 13 Aug 2020 19:28:57 +0200
Message-ID: <87h7t6tpye.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=QVk6G8vB;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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
> On Thu, Aug 6, 2020 at 3:11 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>> > + *
>> > + * Clang sometimes fails to kill the reference to the dummy variable, so
>> > + * provide an actual copy.
>>
>> Can that compiler be fixed instead?
>
> I don't think so. The logic in the compiler whether to emit an

Forget that I asked. Heat induced brain damaged.

> I'd much rather remove all of __force_order.

Right.

> Not sure about the comment in arch/x86/include/asm/special_insns.h
> either; smells fishy like a bug with a compiler from a long time ago.
> It looks like it was introduced in:
> commit d3ca901f94b32 ("x86: unify paravirt parts of system.h")
> Lore has this thread:
> https://lore.kernel.org/lkml/4755A809.4050305@qumranet.com/
> Patch 4: https://lore.kernel.org/lkml/11967844071346-git-send-email-gcosta@redhat.com/
> It seems like there was a discussion about %cr8, but no one asked
> "what's going on here with __force_order, is that right?"

Correct and the changelog is uselss in this regard.

> Quick boot test of the below works for me, though I should probably
> test hosting a virtualized guest since d3ca901f94b32 refers to
> paravirt.  Thoughts?

Let me ask (hopefully) useful questions this time:

  Is a compiler allowed to reorder two 'asm volatile()'?

  Are there compilers (gcc >= 4.9 or other supported ones) which do that?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87h7t6tpye.fsf%40nanos.tec.linutronix.de.
