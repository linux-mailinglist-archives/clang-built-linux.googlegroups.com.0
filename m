Return-Path: <clang-built-linux+bncBCIO53XE7YHBBWP7Y3ZAKGQEZUEH6UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id C1628169266
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 00:57:14 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id c125sf5460592ywf.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 15:57:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582415833; cv=pass;
        d=google.com; s=arc-20160816;
        b=vXmKo+nLLO1EnRiyWWlt/lKn08r1VnekHscBK5Zm8ljVYoEwpiJ8VrC3TOikhZun7v
         GTD01wrSSgfnaGYaeqIBYVeQyiBXXUdVhqujnTsEroO4vHeLyJ4vT4/jv5SP7yP+6iVe
         jG+8vq0BQbixNvvRWbCdNEgns4bKExTQmCpLuz3h9D/nnX6tUso6OklQWDkIlzDzlY2l
         B7Mg1i2GmB42y32Z7maPWLfVoPkuiuhEMdqjpuTYmA18xmBCB/qX7Y+g/bDDnzf6wrPX
         /QW/u4wj8f4VArkfoT7hkFrHv51dBq+Dwfxy8/xDjjSDdb/u5Q2aDu+1rapx/f3AamxM
         A/eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=NgZgcwIUcW1oZBzY2BIkZX3tSzIi8rCZ9P3Qi3XmVbQ=;
        b=C841KUrDpb/prKwYq1NOZv8qfcoYU2419SVBxwRCG0t0LDsOW9qBQ4kkVaD4Y/V1wY
         lbhyQYQPMJpY62rer6ZO3d6amZqpg0rf/w5uGmR0XVsK6wlGaKLA0MrgtbhVmQS6xw7e
         9v2BxznPOT/rdJUZ5Q+BF1L48/IBv92deDyK4HZwheTvOh9Bt77BJ3gTlYfxOOFIYN3S
         9qCRyqtSS7Vi00RIrYjCLV15LGVD6mAk8xDfUuZsJGyP4C5tFhgmbwQzuqClqHX06XiR
         VK+dqST2qXkdzOumWNKxGNKWctergHRhHHfkSG4t4JiWTuxmZgiYPqQPXbgrl6Ge3fDo
         9ARg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uI78GAmG;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NgZgcwIUcW1oZBzY2BIkZX3tSzIi8rCZ9P3Qi3XmVbQ=;
        b=Hb+54ethyxXVFmfjxXZ0kcQQmnVCH6XAsbarOdDlhyL/sRXcdRYwut8LIpK+gCBFvJ
         z5O4Q8eX9ND9UwPMajZ8VIrQRECm6DKqOO2qTsvV8FAj68auwIDJ+laoYrsv4prZpx4v
         t/97WI/85lApbQEQrYVJj8FDrGV0CqKXzfJs8vV0X4oVWtUCUq1JxgmKn39IS/ktfZR7
         bp6kJu1YcbStve3yKuXtryCWNshjVNIM2JTs40RO9AhU/3r8eotiqR7ag3e8nSEd+kI/
         /HdZTNnhMvVrB9vpa+uJ8juBmqSO51im46DR8oQyXWA9Kd5hQwa2xCOUD0DXSKtx1ANT
         e0Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NgZgcwIUcW1oZBzY2BIkZX3tSzIi8rCZ9P3Qi3XmVbQ=;
        b=kdrpcKDKPOeH4gQscvaKOjZAaqepd++6ueunK4s7AJ5LChdrdMAjHGWvevAmA0y/kS
         UOTVIpePOfB2YsJGGPx4MIFzuepkqpANNNycIr0+7GKmlrjJK6+GfQna8LrbaTKQprN2
         q24SiBsdTJCMcUNpVwDCJC7cK2Mb9qgKt7HM/UtW+gW5wc/WfjwAmk4yzPc9Kpz3IHa/
         jE2NTqpBa8VQ2hqPOcZi2lOmEJNti5sFzA1qpkEljQ0IZsAIHbpQE+aUPSvQZ9RU0qQm
         dwUtDJmr9BvDOOfuNBdxzF6Tohni4SDsa6SOe/xjRBpUHDCZSIql8OyB2A/PalJ3jgPY
         6T1g==
X-Gm-Message-State: APjAAAV3DRUQjp6Hf+zANuqMXqkj6V7mjg8zU/bfnI80kaUSVWYIsEsa
	DWYfsZtUiJDopL/ykSGnQD8=
X-Google-Smtp-Source: APXvYqzAxcoQChgMSAX9VYzByBo/m3QZNLavw5brGyMW5gpBkmAZyjz+LE5T0nZ7copquVASl9qS2A==
X-Received: by 2002:a25:685:: with SMTP id 127mr22500018ybg.517.1582415833488;
        Sat, 22 Feb 2020 15:57:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:1bc4:: with SMTP id b187ls1239884ywb.10.gmail; Sat, 22
 Feb 2020 15:57:13 -0800 (PST)
X-Received: by 2002:a81:7853:: with SMTP id t80mr37027929ywc.68.1582415833106;
        Sat, 22 Feb 2020 15:57:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582415833; cv=none;
        d=google.com; s=arc-20160816;
        b=W/YOiyymXWtRJZOGyD8XOGnGAM23L/Ksr6KPp0r4G4mKXea5N4mcdFlgft18X1UOch
         tWRwQZZMm6Hh8LN+jjiAC1FmSvP8lYotZYkoBLn5yz5KL5MqWW0i6q11JCTTy3SGX/jC
         T+v73TlxltDz/ckswne5W5PZFX6q5AdpXJApc/MlYhpDUtk/5kpuf3CytRUT0ihwquRF
         L7QHZsviRWOHLmraIYKqw430Zo0Ds2xIx23uK/Y/aSW1f4xa7wtm3GRVItWXxZKshJy9
         Ds1ae6RY7UW2WG2vzt5AWdlqusvAV2Nf88qx+WxDp2MI38SmnYwW1eZAOsAknZT9DAoZ
         puzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=x3kNv1Qo240QfKiRXPHrXVP2xwNuaSo/ZPmgca9G6zk=;
        b=KF4Cl/exDt+Fw8NitKXvuhlsdd0c7oXHrzaIgC8HiY9j9M9LyGBtsFNlT8Z3bTfINY
         +AaskXRTlRS+dyjd+ZFkoZSSJBzISeqUqhd3CgGVXocojpO9xMWcJxA9wRT7PL/VK5vt
         xgxdZCy1dJ7Rl58pQ8MxpEW52f5NjmbrzSKQQ3s1npG1O8suxFZNG5yrNwdsvSLKiL95
         wlno+rz/hzGUUFrV27178BgSXQ7Pr2yY8uP1Ue5MOzor8tFtmR/QO7zkPz8GLEozUSmc
         SU8+cLEwJT8ISzh7Q+mTOCZDn0vcC8cDeTNwo11770sxj4xvluJw6Q46HKVU4Ovd6sqQ
         4E3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uI78GAmG;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id d23si473835ywb.5.2020.02.22.15.57.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 15:57:13 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id l13so2857092qkk.2
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 15:57:13 -0800 (PST)
X-Received: by 2002:a37:4a46:: with SMTP id x67mr36506139qka.160.1582415832601;
        Sat, 22 Feb 2020 15:57:12 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id o7sm3800660qkd.119.2020.02.22.15.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 15:57:12 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 22 Feb 2020 18:57:10 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>, Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] x86/boot/compressed: Fix compressed kernel linking with
 lld
Message-ID: <20200222235709.GA3786197@rani.riverdale.lan>
References: <20200222164419.GB3326744@rani.riverdale.lan>
 <20200222171859.3594058-1-nivedita@alum.mit.edu>
 <20200222181413.GA22627@ubuntu-m2-xlarge-x86>
 <20200222185806.ywnqhfqmy67akfsa@google.com>
 <20200222201715.GA3674682@rani.riverdale.lan>
 <20200222210101.diqw4zt6lz42ekgx@google.com>
 <CAKwvOdn2pmRqJ+Rs+dhAPJy3hOb4VNn70XB40jcVgTeM8XmeFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn2pmRqJ+Rs+dhAPJy3hOb4VNn70XB40jcVgTeM8XmeFQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uI78GAmG;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sat, Feb 22, 2020 at 03:33:20PM -0800, Nick Desaulniers wrote:
> 
> Ah, yikes.  For reference, please see my commit:
> 
> commit b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than
> reset KBUILD_CFLAGS")
> 
> I'm of the conviction that reassigning KBUILD_CFLAGS via `:=`, as
> opposed to strictly filtering flags out of it or appending to it, is
> an antipattern.  We very very carefully construct KBUILD_CFLAGS in top
> level and arch/ Makefiles, and it's very easy to miss a flag or to
> when you "reset" KBUILD_CFLAGS.
> 
> *Boom* Case in point.
> 
> I meant to audit the rest of the places we do this in the kernel, but
> haven't had the time to revisit arch/x86/boot/compressed/Makefile.
> 
> For now, I suggest:
> 1. revert `Commit TBD ("x86/boot/compressed: Remove unnecessary
> sections from bzImage")` as it runs afoul differences in `*` for
> `DISCARD` sections between linkers, as the intent was to remove
> .eh_frame, of which it's less work to not generate them in the first
> place via compiler flag, rather than generate then discard via linker.
> 2. simply add `KBUILD_CFLAGS += -fno-asynchronous-unwind-tables` to
> arch/x86/boot/compressed/Makefile with Fangrui's Sugguested-by tag.
> 3. Remind me to revisit my proposed cleanup of
> arch/x86/boot/compressed/Makefile (which eventually will undo #2). ;)
> 4. tglx to remind me that my compiler is broken and that I should fix it. :P

Ok. For reference, note that arch/x86/boot/Makefile also redefines
KBUILD_CFLAGS and missed this option, which is why commit 163159aad74d
("x86/boot: Discard .eh_frame sections") was necessary.

There's also arch/x86/realmode/rm/Makefile as well.

There's also a bunch of places where the CFLAGS_REMOVE have fallen
behind the times -- they remove only -pg rather than CC_FLAGS_FTRACE.
Probably harmless currently since the other flags should be ineffective
without the -pg but might want to clean this up as well.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222235709.GA3786197%40rani.riverdale.lan.
