Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7OCR75QKGQEWSYTXDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id B892D26E836
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 00:21:51 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id f12sf2137897plj.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 15:21:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600381310; cv=pass;
        d=google.com; s=arc-20160816;
        b=M8u4CvCCE3EL28R08F5hp1WCwWu1GpuijcxBv+I6QOpVhnbF10QvjO7JgMXTsDn+wG
         5zG1KoG8brHgJYetfjiVbpsM8qjT36NyR802u1ua8NRulXCEtHwV4dGKrfVM9HkMEWkV
         QkRt5VxzMFcVOm4uCiL9NtyNx8Wg9UaSFs+pETAiY17rnVXKAoNmePpbkIV4Cnk/PAs6
         Gfnxv7XXrRhPQs550cgD9hTeT8TVhWt531FN6f5Yv6nhP97v0K5kC03X/VwPZ3bx8Oa5
         MfiS1fYT8eND2IUNZ6NPCEdYcbL5l7U/gEErcKkZIPfPp0uEqTiGNizSesxmUIrw8ptE
         79ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IeeQowEwn4nopegsoZvW/Yro0Y3cpGo/QD0o8qU1TW0=;
        b=JUNGV/m8cedWCbXM6hXKOTOu+Iz1RkP+H314JF2O9G6UGKXfFXawN4LUp9fj6Q9Nxc
         2+otB4ZrPNCA2iKkoWNoZGQ0WWAvA0qDvIplBkjgcdnIVjB2Ifh6TNqp6PEIbFhP2G0g
         j5R4xX4/d+Gmse4ADJxO7d0Z9Tr/ITqhMHCfxswSjt5hSniSJwQJjQs7xGPieYfSw91/
         6WCBb7KSR+WsVI6gE0l4Qcs1rr1kYMfom1p5s6lZSoimFHOoeROMs15rGWIgZppViLam
         CVVRv5cnnGsvCUOR4ob8dqn/KiYl+Ub/CBbEHSdV+9O2dm7Xx44bf98j+XPovZlzZ8GQ
         8Lgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ciFNzf+h;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IeeQowEwn4nopegsoZvW/Yro0Y3cpGo/QD0o8qU1TW0=;
        b=bRmy/nRxrfzbEzSrnOMazz2SoZjCpKE0boWPDfHnwZpmP1PAbB/qVXuiVnOXv6QqfZ
         GuCgfJroXORCa8pTliOSqoncomilL/NI3lK/cQbprYdtZCZKlmzSQ7egrWXrZiy+he5R
         pZniY/PjMLevn3ioTGrRdc/OkMOmTEaPt8f8STCbBGt0ri2zko+vupYzvlc4PRkFHsXH
         w43KBqEiBBUoARwQ9C92wTA5W3lXOFqW3saIOjtNbK4gG8SyNCfXvtYzcMImu/+8EcF3
         f8TXNKx1drUGcvUyIjBPWMbuc2TrpX6s0nhY+n7QLOTi7OcbVn06PRe8qghBcmXZ82P6
         IcWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IeeQowEwn4nopegsoZvW/Yro0Y3cpGo/QD0o8qU1TW0=;
        b=Wh+IEvnVgEdZQTtlMSGUehvUSEbsmLpsc9n038CX2UJBa1IMb3PDgvGyeaWPvCDNcf
         LhGtBLTnr3+p7I9hddCKuLoRyTeVNsZuDBxVMOAklrddfx/gfXLRID+9dfO/zW1ytEqw
         WREqp97MnJl4ByZCvjmkJcxJ+j9AFCgvBWLL9IUUaTMxFvJH3JQvgluxwj7f5U6um5ep
         7OTkmPUK1Bzw/TkfMe78N8PzUb4VbvgFq6zEM9XmBS+dKyceHG8zoiriTcpbJZeEBdXS
         stHoU0yZeZIcQN4uQ6+XiAX/Kww7zN+12AZZce9UohpX14f8iXnK40rBtVI5N7M4ML2t
         TFCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533b/mDwiliQSYz4u9HYXNcDBwjnr2AjqD7ZAIkcVSQ/vf+ns6Yv
	Q6b3F1cKa4Elx4lxYkmNGno=
X-Google-Smtp-Source: ABdhPJzsGYBw2p1IcF2hw1QxSb78gBQkOr+mQcofFx0erFeWn6p4Sl0D9HZ2HM8SpEhwLa+HueW/Tw==
X-Received: by 2002:a63:6346:: with SMTP id x67mr24658439pgb.121.1600381310012;
        Thu, 17 Sep 2020 15:21:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:551b:: with SMTP id j27ls1284735pgb.2.gmail; Thu, 17 Sep
 2020 15:21:49 -0700 (PDT)
X-Received: by 2002:a05:6a00:23cc:b029:142:2501:35cf with SMTP id g12-20020a056a0023ccb0290142250135cfmr13321010pfc.47.1600381309451;
        Thu, 17 Sep 2020 15:21:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600381309; cv=none;
        d=google.com; s=arc-20160816;
        b=E0KabOud+UI27GNb1mSq4zaoCwlFn/Hqvahk35CAG3fuQUfxwDDl95t2fy86293T37
         EXdJBASbMCB98dfHNEUn3oI/flZ9vNzhnTgUN5cilKjWTycUl0901aWUFbQae13RLc4x
         Dck0na8H1ePum8+XAAUgPEIwHVssGq9CgZ07WlrTy/3AwcVYluWjtw6ICr6HZpiInD/1
         x8ZdZRHa323cRr8QPi04wu8hACS3+fpsYWAn8LYpv3ExDcED/4Wyk4/eNqQgrJTRbHmQ
         x89mcADsUJ6S614mESS9kpVqX7/j+ylawqb9bFiXiwYly4IRvLVhaXOTLx5yxJdsiHBY
         80DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9DPIpM4LW2/8oZNQwQFTEuyuoQvJ/tNgC5mR+LCoUuA=;
        b=sKwnLcfDm5/4Ys6N3PQKIbwngXyQYxx/t3m40nCvIILoIMY74p/+e121ht9ha1csUb
         gdgnYo8DTIEScn0Zs1oKVx17CxC/eLrVReL7+z5/IxfUa97B8M/RrJTBsPVaxb4H5qiM
         8g9mFpAz7C/5WWtODZMSMn0DZujYjvhHkoRZeBkEMQVgsMxmsILVxPQ0z+vGs5Gh+T5z
         Ih52YyrZaA18dZ/N+g6TOwV3IMkE+QH65OC0B86GbHkVpMYudLKig7loJUghCsRIoEPD
         1kgfkkFsq81RpkL0wIoYVlsGLo5U7c5rmkug+fCEzq8sXwjHKy3vYKJrSqeYzmdWbiWy
         yIHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ciFNzf+h;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id mm16si106747pjb.2.2020.09.17.15.21.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 15:21:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id j7so1864560plk.11
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 15:21:49 -0700 (PDT)
X-Received: by 2002:a17:902:c212:b029:d1:e629:92f4 with SMTP id 18-20020a170902c212b02900d1e62992f4mr12676668pll.75.1600381309149;
        Thu, 17 Sep 2020 15:21:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m5sm627685pjn.19.2020.09.17.15.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 15:21:48 -0700 (PDT)
Date: Thu, 17 Sep 2020 15:21:47 -0700
From: Kees Cook <keescook@chromium.org>
To: George Popescu <georgepope@google.com>
Cc: Marco Elver <elver@google.com>, maz@kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	kvmarm@lists.cs.columbia.edu, LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	james.morse@arm.com, julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	David Brazdil <dbrazdil@google.com>, broonie@kernel.org,
	Fangrui Song <maskray@google.com>, Andrew Scull <ascull@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>,
	kasan-dev <kasan-dev@googlegroups.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Alexander Potapenko <glider@google.com>
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
Message-ID: <202009171519.951D26DB@keescook>
References: <20200915102458.GA1650630@google.com>
 <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
 <20200915120105.GA2294884@google.com>
 <CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov+XWPZiw@mail.gmail.com>
 <20200916074027.GA2946587@google.com>
 <CANpmjNMT9-a8qKZSvGWBPAb9x9y1DkrZMSvHGq++_TcEv=7AuA@mail.gmail.com>
 <20200916121401.GA3362356@google.com>
 <20200916134029.GA1146904@elver.google.com>
 <CANpmjNOfgeR0zpL-4AtOt0FL56BFZ_sud-mR3CrYB7OCMg0PaA@mail.gmail.com>
 <20200917113540.GA1742660@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200917113540.GA1742660@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ciFNzf+h;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Sep 17, 2020 at 11:35:40AM +0000, George Popescu wrote:
> On Thu, Sep 17, 2020 at 08:37:07AM +0200, Marco Elver wrote:
> > So, it seems that local-bounds can still catch some rare OOB accesses,
> > where KASAN fails to catch it because the access might skip over the
> > redzone.
> > 
> > The other more interesting bit of history is that
> > -fsanitize=local-bounds used to be -fbounds-checking, and meant for
> > production use as a hardening feature:
> > http://lists.llvm.org/pipermail/llvm-dev/2012-May/049972.html
> > 
> > And local-bounds just does not behave like any other sanitizer as a
> > result, it just traps. The fact that it's enabled via
> > -fsanitize=local-bounds (or just bounds) but hasn't much changed in
> > behaviour is a little unfortunate.
> 
> > I suppose there are 3 options:
> > 
> > 1. George implements trap handling somehow. Is this feasible? If not,
> > why not? Maybe that should also have been explained in the commit
> > message.
> > 
> > 2. Only enable -fsanitize=local-bounds if UBSAN_TRAP was selected, at
> > least for as long as Clang traps for local-bounds. I think this makes
> > sense either way, because if we do not expect UBSAN to trap, it really
> > should not trap!
> > 
> > 3. Change the compiler. As always, this will take a while to implement
> > and then to reach whoever should have that updated compiler.
> > 
> > Preferences?
> Considering of what you said above, I find option 2 the most elegant.
> The first one doesn't sound doable for the moment, also the third.
> I will edit this patch considering your comments and resend it to the
> list.

I have a slightly different suggestion that is very nearly #2 above:
split local-bounds into a separate CONFIG that requires UBSAN_TRAP, and
then carefully document both:
- what does it catch that "bounds" doesn't
- why it only operates in trap mode

The rationale I have is that I don't like the coverage of some
mitigation or detection to "silently" vary between builds. e.g. someone
would build with/without UBSAN_TRAP and end up with unexpectedly
different coverage. I'd rather there be a separate CONFIG that appears.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009171519.951D26DB%40keescook.
