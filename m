Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBLGJ3L3AKGQEGVKBWTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC171EC270
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:12:45 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id a8sf4573631qvt.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:12:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591125164; cv=pass;
        d=google.com; s=arc-20160816;
        b=Se0MsYaHGbk1EWmjh/MhkKa9xIf0BmrwfH/X9VrZlxbCQ33Of5vD8j7BkpZ+vd3qWS
         +JlhBk9VYJ7Gso+xdnbcYse3a1gpadWAf7FA1r1IjB1wjguRYXJ+4De2/ofhTH/df78s
         KwIlJChY5PElMJmP/B0kFLnubWV9yoFN6LiFJidhdQJGb7hkeTkkNSXMsXroLHNjZgUU
         WoyId6cCclwb8QXcc86aBQ1lSYEbfIxQkVIhT3s2O4ANJ5KiUbJcsgvYjhHXxKPG4OT/
         /uHjiswoCpxFEg6h7dPGSOTCbW/dC9abfLm9k3okAD9Dyh0USZ+FSWzEYjcNCWUTl8RL
         IQNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W0FGcnbBSBPt+JEKdZoa9Wxw0w9zZhpVSOHjZ/wgDGY=;
        b=u8JNoP07BF93/dBsCAQHX+VCfPHEwF46UN6JSQq9q6qvT8wvbLzcB08Un1Dspja5xt
         BxEhxSkurAA021hhLzsJbtUueTlX9izJxbQI/CXSY6zH4ZB/9Ww57xbjrv1y3c65yfhf
         Ir1mn8WWDLRfBB+p14iVc5ryx64G8oF5Xxs+8HO8RYgEFpp1JGuBoMKQumHnM0O/537M
         ntUYEo7HbygGU0EOERNJb016hhN7fIpx3pKdOE+Pc4oocS2KFGn5+GxAzZ04JBwdYE4F
         SIjh/Z+6f9kGhIzC3r4x+D0I4ZnpRZQKeV4M/8aUIPN/F9aSq9MYnDB3LuZKXssr9D1o
         jLzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aF3rgGsV;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W0FGcnbBSBPt+JEKdZoa9Wxw0w9zZhpVSOHjZ/wgDGY=;
        b=V9k3Zm7bfelARgsDC1bHMnlmXaw321Bg9A2FjtfV8L/uv9P7mQd61wZjemIo5bTf40
         HBbtX7cyMXZpsk/LeKWObzEi6xzjQXbtHWtsiRJvbdK0wRFB1yuxvXHIHo0sgNVMfHpW
         2LkW7go5coKanEBcZUq5Mv7HyDKXaGq+vmq35FaiVNfTb6gLWXNRRzoXxWED5tgBjCM9
         yDhh8JWUHFV+1SCUV/USPP//Mj4sPPwV+dC+KEmDom1mJ89SIJqNE7YhlGXy4p4fRWLE
         +2JluKIz04S5o/XnZCFdswlcxMrsMErPvCCZEq5uNUA0SFn9xUsY30US6aWjwWmzNqr2
         ba1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W0FGcnbBSBPt+JEKdZoa9Wxw0w9zZhpVSOHjZ/wgDGY=;
        b=fYgUS9q/JB9YCoRWRxrXYbQyOmumBfJQfBb085JR61DICWaAGmeUHzd98mL+KEgSkk
         LGjsiRbHMzH3niTfXfbubrXP3eSJAbMMw2IVR5zLIy9TlLkXtfc0NoG2nHdoxzFDdTx4
         r31daBwiOOJI7xVNq0eYOMaDfPXa19ucLGmOecH7QzbLnynAMQ645lpsm5IkcMmMtgww
         A4O3vXPJX0sm70FcgUCE0WHn1Oj85oKt+bXsagzVWRzexD5+xE2h30hviqMbJyY7CDrK
         bpO5/9VF3ZXoqOrdeoLhM7rhYvdC11kj3eOcD1Osud8UmJwiNB/e1iavd0XQx5Awj5wJ
         t0LA==
X-Gm-Message-State: AOAM531UUCIGkTzEl0lIB1fQJZRelp4GTUd8Z17IkkFyKjYW3WLIMeNE
	sAnDDDAzwUKMIK1WSYMnDnY=
X-Google-Smtp-Source: ABdhPJxkA+q5f235yJLsOWzB9o+hIU/BMYH+ZnUrZDGR8jZ4orjntFh56F5RZZluq/5o6XveZsVomA==
X-Received: by 2002:a05:620a:68a:: with SMTP id f10mr15334722qkh.419.1591125164585;
        Tue, 02 Jun 2020 12:12:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:488a:: with SMTP id i10ls7885473qtq.2.gmail; Tue, 02 Jun
 2020 12:12:44 -0700 (PDT)
X-Received: by 2002:ac8:3438:: with SMTP id u53mr3933166qtb.8.1591125164263;
        Tue, 02 Jun 2020 12:12:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591125164; cv=none;
        d=google.com; s=arc-20160816;
        b=SXMn2y41BPtSY9Z9360L6VuGpOabp6z09QcHxSH4Hn1Erw1HBD7tPxHaPvDHg7u6J/
         qJCU1eoDUiK04yV9V7nI1Xf+L4VJ8oIgAAonvpYgDVnIzjQTqbm3jhiXFx6JnK7//GH5
         N6m3Cw6vAoJxN3IZrOd3D7vAeZf65/llqgMR98ErRMH2lOdYGwB/73YxJKy8MyZ29HZR
         SsiRPa3HpfKjgRdUK3L4dLvfAbsGrTP/T6YFzSwFty7mqhzOcDphCJMDI9bb3CXY46+4
         ugiW1oVf5VI8Ix9KPU2ApxxHmuhU3Qh+Lh29cy7I7lkM9m13KjA3InPZ1p0VjDCxzwN9
         UM5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dT5kVRE874bAh/32tBP4Sh3AXgtH1D6NYtRpFWupE3o=;
        b=gnyzSgqW/yE1pb/Y6j2QXAt9nruWgAyoSZSchX2fP1jbQ8iJIZecIXK9ljbWC5pkVt
         JgqXPYz+tyW6TfeQAsj6xjHijOIrGacIURV2lVah2s9Z8Ze/lLFAgobgbVHpM35Ro3QD
         lRWNsUCU1r5L0EGNZTVmVp6js++vzCKklPwxHkzovQwtTRJaCWRSAZ1rphmHHFf+6XZ7
         NxtrLBGSscU551PpLmo4ZVdhD7Sl7HtRgyOt2W/uYTUUDsG8hJquK2OakHAOSrQoxXVw
         FeNFdRccZM4soeWh8BFsB7kyVYZQUYKepiD/wxOcQDZ20O8dmNPAR7D8AhE/chAAOY8S
         GiDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aF3rgGsV;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id u204si83235qka.6.2020.06.02.12.12.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:12:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id b5so2694997pfp.9
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:12:44 -0700 (PDT)
X-Received: by 2002:a63:724a:: with SMTP id c10mr25112669pgn.130.1591125163555;
 Tue, 02 Jun 2020 12:12:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <CAAeHK+wh-T4aGDeQM5Z9tTgZM+Y4xkOavjT7QuR+FHQkY-CHuw@mail.gmail.com>
 <CANpmjNPi2AD5jECNf6NBUuFk0+j+0-RA6ceFCOPPvw5PtoQu2g@mail.gmail.com>
In-Reply-To: <CANpmjNPi2AD5jECNf6NBUuFk0+j+0-RA6ceFCOPPvw5PtoQu2g@mail.gmail.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 21:12:32 +0200
Message-ID: <CAAeHK+y2kfX32TbzcosCLSmr6sMB2BvEfKF8B1_4PrxgjKeLdg@mail.gmail.com>
Subject: Re: [PATCH -tip 1/2] Kconfig: Bump required compiler version of KASAN
 and UBSAN
To: Marco Elver <elver@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aF3rgGsV;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::42d
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Tue, Jun 2, 2020 at 9:07 PM Marco Elver <elver@google.com> wrote:
>
> On Tue, 2 Jun 2020 at 20:53, Andrey Konovalov <andreyknvl@google.com> wrote:
> >
> > On Tue, Jun 2, 2020 at 8:44 PM Marco Elver <elver@google.com> wrote:
> > >
> > > Adds config variable CC_HAS_WORKING_NOSANITIZE, which will be true if we
> > > have a compiler that does not fail builds due to no_sanitize functions.
> > > This does not yet mean they work as intended, but for automated
> > > build-tests, this is the minimum requirement.
> > >
> > > For example, we require that __always_inline functions used from
> > > no_sanitize functions do not generate instrumentation. On GCC <= 7 this
> > > fails to build entirely, therefore we make the minimum version GCC 8.
> >
> > Could you also update KASAN docs to mention this requirement? As a
> > separate patch or in v2, up to you.
>
> I can do a v2 tomorrow. But all this is once again tangled up with
> KCSAN, so I was hoping to keep changes minimal. ;-)

OK, we can do a separate patch after all this is merged.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2By2kfX32TbzcosCLSmr6sMB2BvEfKF8B1_4PrxgjKeLdg%40mail.gmail.com.
