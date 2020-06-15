Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBQ4XT33QKGQEKW6DFFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD511F9B04
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 16:55:00 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id o140sf20868017yba.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 07:55:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592232899; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ps6sAFBx7af1VJ3LWtaz+F6C3S1VzgjnYAEqCYse0BWbiSD3a4LRw40ZF711+ewlfm
         BkVzN7QnsIvaqmHtbQvytTJ79GtvuwVRYyzaUot8QDvgu+6vo6VWLvqzczyPMPSkJ6Z9
         50HFDl7VgDSq9H1UoG9c3BCy9jp+e/kA3197i+SLbXbmZUDM9k7km2bLWFgGKrL8P25m
         zZUkUPP1+iE/5EBzsUhurpGZVrG1VqP53r2kRNeAeE5oi+/ffRxWfuKNl6UYzZ/VWz8y
         J1/O8pzDwgQZicqQkMrIXHyWIGtk6jNju9tGrS65riNHNwXS00kiT5XRRk6XXV1jMdzj
         WCVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hNIB43U9bD07rv+yo786uDlIpmINdYQ6ga0Jn3HHqCs=;
        b=A7zQKQi67AB6ix0s8LlEb7oTq2UkWjg7K+zP7SulJrEVHHoaEUOkejkfFoiemCKP4f
         VgfwgaTmw6T8SHydaLMitJXm06okvyoaKbfa03L5RUc8S+jnkZFLqzSDqHu6VT1e2wyY
         gqxYpgXDS8onXjd9GG6spF9jqJ2ttL6s5ulbpkjfynN/23/ZKHC1MljIb6/DVdIsi7iX
         qNJRn51Wka4z2IgeOsjBdPf4R9iinYeNRSuuMhYWE1szN+eiwZrGdm9UAoxbvndPE1Dp
         fNn1X3rg0fdPdLJteHsl2hFYEQxmNZX/4ZMz+DBzGhvn+8Q06AIwPOvj2g4t9oOJoRrw
         wHFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ecmGxFrs;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hNIB43U9bD07rv+yo786uDlIpmINdYQ6ga0Jn3HHqCs=;
        b=FHwQmnywT+01Q59TSgyQeCipw1xZj8QHVXYF+/Y9dzpLDsMx0X/BGFxcqLw/8237AJ
         76eGnlUQ+QuCnTEETBecFiA+zAcmyhJq9ukf/PfqQiqTow9OsqJJZE2HYuyy1pglQr9f
         iaVcgJtoO4EGdlO5l2eMtq1AAFxh6FiEyxXeVLUtl2tYOGjAp/vMTtAOGnbhFsEOp8vL
         5jJ5J8ZDyZsS1GQpLhIFbqIalpk1lYT0edFY99YgY0JaaQVanvv56vNXM7d6yDZlPj6M
         UcQecsI64/18/Je6lc+0LT5sdcZGlBs7WWU5DCX7Y+fvRUmroC0E/DGx972X8u5BWhed
         2YXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hNIB43U9bD07rv+yo786uDlIpmINdYQ6ga0Jn3HHqCs=;
        b=LEI5erU1SxTTELyQupTTzxlqT+00KDbMBSJ78uzutcqQZh82bAwXa6DSArK5U56/u4
         B5oQL3GPM72XVVOYfcB/oNq8kRh+WaWp+OY5BWZVInEZx91cJ3jsbL6aP5lbUx0ynx4V
         ULHmYk1lnu6wsRsLvLufBIEyFpeBOzy72uN0Cl89PICGF/qYasWtMbAuhbxpzNSsV/t5
         GMcXt1dSnHp8D6jM6JJycfFXp4pz7rN4xUsBraOKlVJK5ET1alsvFyzw0Pu/e22es3TX
         GzopYiIYI8Sh8xCFOhzWhOpFOMg6DcAYQeM9C4Y/N6OnbpFDEn20AOTp1o9PLfRnHlXX
         cQUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jAJc3GJpSD8a/caGT8ZxPlI0Qtat6MI8GfVydEkT3rB8WmMHW
	8uBPBwr9FGpJCAIZnXsYUsg=
X-Google-Smtp-Source: ABdhPJzao8WHJpGK1q2H4+g3Pk5pqwmFcNDhK/2yetQ4DRrWwlXe7fmMsHaqpSlJ0VqP+yDuScQz5A==
X-Received: by 2002:a25:7086:: with SMTP id l128mr45511423ybc.34.1592232899200;
        Mon, 15 Jun 2020 07:54:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b18b:: with SMTP id h11ls5780380ybj.4.gmail; Mon, 15 Jun
 2020 07:54:58 -0700 (PDT)
X-Received: by 2002:a05:6902:1005:: with SMTP id w5mr29627713ybt.173.1592232898710;
        Mon, 15 Jun 2020 07:54:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592232898; cv=none;
        d=google.com; s=arc-20160816;
        b=wyCAgsxFzwkRlwWsaAfM2SsJW9gDt7LqGckSRDUFXx5xaRMmzFYefK1psT1mG+PZAZ
         k7wc/+jcGzdhsuVdtapB4hLgJ0HAqwn7ks4h1Iq5VWwfcn68joAhWclUBWPmHVF0BhV5
         /G4aobIQYRnePsspJ6njYHZ2VKJ0STkkRIq6u9Jtl0cuG8HWGmh8A7MGLUx0hsnLk9Q3
         Tsnj8RiAhu8aJrVt119wFcQo91qlP+0yBhMz0yrQT7v6tiOjMvupwsbehyWRop+uQ4++
         T98gq6SM3oDXvaSj1irbblauq89dYiFwpSZup0ZZs3Oohrnp7DYkRS1OtLkx3uZeSzIU
         mMSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4zGfMuE5j27OryPVO0IL9HdYeTzioBh7k+J5vYWJu6A=;
        b=wxjdLEAbAoOidN/N8SFJ0794kpE2opx2/hL4IKDzW/8pPp0ukNisKSX9ActXVNXYlv
         CEco/QcjaFWYVojb2cdgwW9WtQBFQV/fCTnWS6iEbzJhfyPcndzWl5+atKGjpBEW5r9z
         pk6NI3tf+2/AHV8xxD9psuY3oP05hxzsn397WyyBmsfcBerZZBvkqy+28tQkAVThdBv7
         o93XVPzXGyZSJK+gu682ATd0g2PCpID3iCPc3WSdENtpDtpnVqiloZYpSwvGp567oy75
         NTmNGeiSDllK105HBgTRZKlvGb+5xLXpUJCDqrUnKM9gl9WA+H7hEZ/hDhmwJJLp16jF
         OLLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ecmGxFrs;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id v16si1020841ybe.2.2020.06.15.07.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 07:54:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqVe-00072A-5A; Mon, 15 Jun 2020 14:54:50 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C3DD930604B;
	Mon, 15 Jun 2020 16:54:48 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id AFEF8203B8070; Mon, 15 Jun 2020 16:54:48 +0200 (CEST)
Date: Mon, 15 Jun 2020 16:54:48 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200615145448.GV2531@hirez.programming.kicks-ass.net>
References: <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
 <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <CACT4Y+aKVKEp1yoBYSH0ebJxeqKj8TPR9MVtHC1Mh=jgX0ZvLw@mail.gmail.com>
 <20200612114900.GA187027@google.com>
 <CACT4Y+bBtCbEk2tg60gn5bgfBjARQFBgtqkQg8VnLLg5JwyL5g@mail.gmail.com>
 <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNM+Tcn40MsfFKvKxNTtev-TXDsosN+z9ATL8hVJdK1yug@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=ecmGxFrs;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 15, 2020 at 09:53:06AM +0200, Marco Elver wrote:

> For KCSAN the crash still happens in check_preemption_disabled, in the
> inlined native_save_fl function (apparently on its 'pushf'). If I turn
> fixup_bad_iret's __this_cpu_read into a raw_cpu_read (to bypass
> check_preemption_disabled), no more crash with KCSAN.

Yeah, I can't see anything weird there with KCSAN + KCOV + NOP :-(

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615145448.GV2531%40hirez.programming.kicks-ass.net.
