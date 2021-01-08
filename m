Return-Path: <clang-built-linux+bncBDGPTM5BQUDRBHPP337QKGQELIBQ6EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3852EEAFC
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 02:38:38 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id j1sf13720726ybj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 17:38:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610069917; cv=pass;
        d=google.com; s=arc-20160816;
        b=YjT1deweF3IPi+3w74nEamqj8mk/+JSXEKYkOJ/RxRjN6BiQIfaQPRr2GnvubmuaaC
         DWKWQNuQhiKgGBFjXRlV09RNnOEKANxrkgKpjwQbw4GCJVcJkp1E4Y46nVHupu7K4sOV
         hH5XXE9RWZk8kPLKuN176PWv43jlu56Z37xmgMyaQQs10SvVutbwMd1gOriEZxnchSIK
         CM3EhyS8KxXlFuBLOXEeLlPGoN0zL1jHmNplVPqybcadivn/44xaSJSxprGeExkMWSMH
         SCceF1KjVnHZUaMgioTj8OoNYDGQGE9APvMXM440R5UZjGFNeLSNBgjb/7lS0lvc45sl
         ijSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=H3VMtzIcky5PzkU/Wvd2s9L6I2u6Swkwoqhbkb6Wf5Y=;
        b=cgrBq9G545iEd8Y4C4tiIEb/3QLA9UFOVjh5g9+K96XjcLpA+StavmavmBZSOocEDS
         erIkfev1rVHef0OfjGv2PQxVfuno+tIsoMoZzGlDqzPtBFFKuIEoDXLhCFVhsFNPZNik
         x0rogxqSHK96gaC3FYOfpixCfISYNX+Akc+FmoGaD6Fd9VsAPt2wZb5Fpt7wJATOt+CR
         8U3oew041elPm/FTwlVyZlaxfNcyaC2aBMCsjFUbUYdWxwbDiI9TB4IJA2d+tEB50Jgy
         QUQ3PlvRvLuUICcUfM/6yzepvCLHeaBagDvMxnWS0cG68lsOjG9TCtnkJzgX9mOwrbD3
         ihyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=cV7EBqGb;
       spf=pass (google.com: domain of walter-zh.wu@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=walter-zh.wu@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H3VMtzIcky5PzkU/Wvd2s9L6I2u6Swkwoqhbkb6Wf5Y=;
        b=fyW1at3eOop04tWyV8DFBX8T3edIX3g7bRD/46lV1jVP5w2XSJYKNJNWxs7mvUmJEA
         agQFIos1rjF9AmhaJD0P0CtB8ZKekQeRe+xTH16ocQpqj8lVbx5NkXqYJ1xq9mTjbh3k
         D7eYvQ8Ms5SMmGj6Cooi1zYTopyw5SB9Cp7kyv+se+Y7PbAvis2NegoI7yGebHojXFd/
         xR4Y2HU8OdYOSrZQY5jMdxSu2NRX0pIVssC2aA5LmYM1DmakGnkFfkTkjQbb5fofx/LA
         R67C61BfPaB30MYAFAGDNhidUpoObl+DHRcRvCK+c25cOqJ1RNawLxiv21a3MA3zOQ5Z
         8Mqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H3VMtzIcky5PzkU/Wvd2s9L6I2u6Swkwoqhbkb6Wf5Y=;
        b=ZDolGM6wbN06wbNqOAtCq+kzK4s/5DG03g/xByrHWRw82bevJRcS/SdNudV4xv11gz
         mon4Zx20qjPJCjSqCYTw6mOBTsvmelIkr00wC6/7U4KsFuMRaSX68SSKVBMJo3acaSnL
         5NqEO1cbDIwOhKoOdnBE0h99AcWYPSrwlRLBK/ym2/DkVGpzx01DfZb3AcQJZgVHViyF
         W6MsmUhYxH7Fnt2X0lzUjy2P44MzJngvEmew2E1vpH7x6MZkoun2NoT2baDR6wXEMLtE
         qTF+55CEDUhXvLbxH+P0rjmH8pZXUqPs2WvkYV5J/hnN0Ed7RbptLnsswbvU/Qm/DqpU
         Zm+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315Yhiju5zixwbV16ivqAAmv038WeVVkvNaseVenlYJmHmND3Kl
	wohE3yYDs3A5IPwCV8D6iao=
X-Google-Smtp-Source: ABdhPJxZ6L/lh/B6hqyCbJ99HUWnP+MjGQ3Fn1QnCIYHJGF7YlfRFdiS9HQ8+XyXMZ2i04xbMhR/bw==
X-Received: by 2002:a25:4905:: with SMTP id w5mr2524256yba.498.1610069917328;
        Thu, 07 Jan 2021 17:38:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c594:: with SMTP id v142ls4764141ybe.9.gmail; Thu, 07
 Jan 2021 17:38:36 -0800 (PST)
X-Received: by 2002:a25:2e07:: with SMTP id u7mr2303876ybu.393.1610069916827;
        Thu, 07 Jan 2021 17:38:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610069916; cv=none;
        d=google.com; s=arc-20160816;
        b=uNlsU2Ro075bzNJV2RJ/RwJVXBjh+zYeWtRfZ5QsOchsGTZtNTLs8phEo6FoeahJ9X
         beuXPSs4p0rXtvVLpF4dGxXkLzU3/QqKLXo6/J/DKcxPSQ9W688bGCC/z/gtNh0T4T47
         OoOb033ULbjhcCvUT5h2lHH/UNafe08u4ep1rXEVxuXVvbwjb9nseZeKImwcN/uL8tGF
         09vjqvG+9BYa2Ew6CfMMEvhFo7i9jR+NSMeQC7vbzoVejF9TDd70gBLHUJ+8wZl/j12V
         H9Eu7+yQvE2f1oRctA7hl4F7BbkocIDI+r8Ac5ARUZNvWN/TXoJBlCOVcU8Vsd4V8h0F
         ifeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=s+o0wQ44oQ0OJjcZVE6WER+igqM6j9ySewzTsgGNyp8=;
        b=h+XBzFSJL8mhrHAxGykh+LBuEemZm9fdgHdCpjUgR9xl1ZwuWh9mJ5CoP/iYgP53Bh
         lcUIpeVg9FMLeCHVaW91Toe2/3VgQq45kK072Ex4kXG+byUGjUWc9fq913QQFaBqqN/9
         ugsqDurr8n84Ipkf6B+Ze7qOdISPRqZrcnnj9jQGLvjffbp/DkpBYp/HePlqZfzl8c5Z
         R+fH7DL3rtk9JPh2okY1xUBx+6DpIk4ppWPGsbCliWdapRtFZOKKiv49vLMNHPBJl+ij
         scP4160zVKa3TChEBjbBkhsCXL/3uBplUkbu/XS0cndKHO+dYmSnDbQWerjRxePHEHbZ
         Jf/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=cV7EBqGb;
       spf=pass (google.com: domain of walter-zh.wu@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=walter-zh.wu@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([210.61.82.183])
        by gmr-mx.google.com with ESMTP id r12si725724ybc.3.2021.01.07.17.38.35;
        Thu, 07 Jan 2021 17:38:36 -0800 (PST)
Received-SPF: pass (google.com: domain of walter-zh.wu@mediatek.com designates 210.61.82.183 as permitted sender) client-ip=210.61.82.183;
X-UUID: 24877376222d4592a23c8e03783fa998-20210108
X-UUID: 24877376222d4592a23c8e03783fa998-20210108
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw01.mediatek.com
	(envelope-from <walter-zh.wu@mediatek.com>)
	(Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1771301999; Fri, 08 Jan 2021 09:38:32 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 Jan 2021 09:38:30 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 8 Jan 2021 09:38:30 +0800
Message-ID: <1610069910.29507.3.camel@mtksdccf07>
Subject: Re: [PATCH] kasan: remove redundant config option
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Andrey Ryabinin <aryabinin@virtuozzo.com>, Alexander Potapenko
	<glider@google.com>, Dmitry Vyukov <dvyukov@google.com>, Andrey Konovalov
	<andreyknvl@google.com>, Andrew Morton <akpm@linux-foundation.org>,
	<kasan-dev@googlegroups.com>, <linux-mm@kvack.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	wsd_upstream <wsd_upstream@mediatek.com>,
	<linux-mediatek@lists.infradead.org>, <clang-built-linux@googlegroups.com>
Date: Fri, 8 Jan 2021 09:38:30 +0800
In-Reply-To: <20210107210045.GA1456581@ubuntu-m3-large-x86>
References: <20210107062152.2015-1-walter-zh.wu@mediatek.com>
	 <20210107210045.GA1456581@ubuntu-m3-large-x86>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.2.3-0ubuntu6
MIME-Version: 1.0
X-TM-SNTS-SMTP: CFE1FE589981CD48E25B11BC0CC153010BB4FBB961CFCB681BFAFCF0AF1E593B2000:8
X-MTK: N
X-Original-Sender: walter-zh.wu@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=cV7EBqGb;       spf=pass
 (google.com: domain of walter-zh.wu@mediatek.com designates 210.61.82.183 as
 permitted sender) smtp.mailfrom=walter-zh.wu@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

On Thu, 2021-01-07 at 14:00 -0700, Nathan Chancellor wrote:
> On Thu, Jan 07, 2021 at 02:21:52PM +0800, Walter Wu wrote:
> > CONFIG_KASAN_STACK and CONFIG_KASAN_STACK_ENABLE both enable KASAN
> > stack instrumentation, but we should only need one config option,
> > so that we remove CONFIG_KASAN_STACK_ENABLE. see [1].
> > 
> > For gcc we could do no prompt and default value y, and for clang
> > prompt and default value n.
> > 
> > [1]: https://bugzilla.kernel.org/show_bug.cgi?id=210221
> > 
> > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > Suggested-by: Dmitry Vyukov <dvyukov@google.com>
> > Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
> > Cc: Dmitry Vyukov <dvyukov@google.com>
> > Cc: Andrey Konovalov <andreyknvl@google.com>
> > Cc: Alexander Potapenko <glider@google.com>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > ---
> >  arch/arm64/kernel/sleep.S        |  2 +-
> >  arch/x86/kernel/acpi/wakeup_64.S |  2 +-
> >  include/linux/kasan.h            |  2 +-
> >  lib/Kconfig.kasan                | 11 ++++-------
> >  mm/kasan/common.c                |  2 +-
> >  mm/kasan/kasan.h                 |  2 +-
> >  mm/kasan/report_generic.c        |  2 +-
> >  scripts/Makefile.kasan           | 10 ++++++++--
> >  8 files changed, 18 insertions(+), 15 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
> > index 6bdef7362c0e..7c44ede122a9 100644
> > --- a/arch/arm64/kernel/sleep.S
> > +++ b/arch/arm64/kernel/sleep.S
> > @@ -133,7 +133,7 @@ SYM_FUNC_START(_cpu_resume)
> >  	 */
> >  	bl	cpu_do_resume
> >  
> > -#if defined(CONFIG_KASAN) && CONFIG_KASAN_STACK
> > +#if defined(CONFIG_KASAN) && defined(CONFIG_KASAN_STACK)
> >  	mov	x0, sp
> >  	bl	kasan_unpoison_task_stack_below
> >  #endif
> > diff --git a/arch/x86/kernel/acpi/wakeup_64.S b/arch/x86/kernel/acpi/wakeup_64.S
> > index 5d3a0b8fd379..c7f412f4e07d 100644
> > --- a/arch/x86/kernel/acpi/wakeup_64.S
> > +++ b/arch/x86/kernel/acpi/wakeup_64.S
> > @@ -112,7 +112,7 @@ SYM_FUNC_START(do_suspend_lowlevel)
> >  	movq	pt_regs_r14(%rax), %r14
> >  	movq	pt_regs_r15(%rax), %r15
> >  
> > -#if defined(CONFIG_KASAN) && CONFIG_KASAN_STACK
> > +#if defined(CONFIG_KASAN) && defined(CONFIG_KASAN_STACK)
> >  	/*
> >  	 * The suspend path may have poisoned some areas deeper in the stack,
> >  	 * which we now need to unpoison.
> > diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> > index 5e0655fb2a6f..35d1e9b2cbfa 100644
> > --- a/include/linux/kasan.h
> > +++ b/include/linux/kasan.h
> > @@ -302,7 +302,7 @@ static inline void kasan_kfree_large(void *ptr, unsigned long ip) {}
> >  
> >  #endif /* CONFIG_KASAN */
> >  
> > -#if defined(CONFIG_KASAN) && CONFIG_KASAN_STACK
> > +#if defined(CONFIG_KASAN) && defined(CONFIG_KASAN_STACK)
> >  void kasan_unpoison_task_stack(struct task_struct *task);
> >  #else
> >  static inline void kasan_unpoison_task_stack(struct task_struct *task) {}
> > diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> > index f5fa4ba126bf..59de74293454 100644
> > --- a/lib/Kconfig.kasan
> > +++ b/lib/Kconfig.kasan
> > @@ -138,9 +138,11 @@ config KASAN_INLINE
> >  
> >  endchoice
> >  
> > -config KASAN_STACK_ENABLE
> > -	bool "Enable stack instrumentation (unsafe)" if CC_IS_CLANG && !COMPILE_TEST
> 
> You are effectively undoing commits 6baec880d7a5 ("kasan: turn off
> asan-stack for clang-8 and earlier") and ebb6d35a74ce ("kasan: remove
> clang version check for KASAN_STACK") with this change. This change
> should still remain around so that all{mod,yes}config remain mostly
> clean for clang builds. This should not change anything from the user's
> perspective because this option was never user selectable for GCC and
> the default y keeps it on.
> 

Ok, I will remain this.

> > +config KASAN_STACK
> > +	bool "Enable stack instrumentation (unsafe)"
> >  	depends on KASAN_GENERIC || KASAN_SW_TAGS
> > +	default y if CC_IS_GCC
> > +	default n if CC_IS_CLANG
> 
> This is implied and can be removed.
> 
> >  	help
> >  	  The LLVM stack address sanitizer has a know problem that
> >  	  causes excessive stack usage in a lot of functions, see
> > @@ -154,11 +156,6 @@ config KASAN_STACK_ENABLE
> >  	  CONFIG_COMPILE_TEST.	On gcc it is assumed to always be safe
> >  	  to use and enabled by default.
> >  
> > -config KASAN_STACK
> > -	int
> > -	default 1 if KASAN_STACK_ENABLE || CC_IS_GCC
> > -	default 0
> > -
> >  config KASAN_SW_TAGS_IDENTIFY
> >  	bool "Enable memory corruption identification"
> >  	depends on KASAN_SW_TAGS
> > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > index 38ba2aecd8f4..02ec7f81dc16 100644
> > --- a/mm/kasan/common.c
> > +++ b/mm/kasan/common.c
> > @@ -63,7 +63,7 @@ void __kasan_unpoison_range(const void *address, size_t size)
> >  	unpoison_range(address, size);
> >  }
> >  
> > -#if CONFIG_KASAN_STACK
> > +#if defined(CONFIG_KASAN_STACK)
> 
> Isn't '#ifdef CONFIG_...' preferred for CONFIG symbols?
> 

Yes, I will fix in the next version. Thanks for your review.

> >  /* Unpoison the entire stack for a task. */
> >  void kasan_unpoison_task_stack(struct task_struct *task)
> >  {
> > diff --git a/mm/kasan/kasan.h b/mm/kasan/kasan.h
> > index cc4d9e1d49b1..bdfdb1cff653 100644
> > --- a/mm/kasan/kasan.h
> > +++ b/mm/kasan/kasan.h
> > @@ -224,7 +224,7 @@ void *find_first_bad_addr(void *addr, size_t size);
> >  const char *get_bug_type(struct kasan_access_info *info);
> >  void metadata_fetch_row(char *buffer, void *row);
> >  
> > -#if defined(CONFIG_KASAN_GENERIC) && CONFIG_KASAN_STACK
> > +#if defined(CONFIG_KASAN_GENERIC) && defined(CONFIG_KASAN_STACK)
> >  void print_address_stack_frame(const void *addr);
> >  #else
> >  static inline void print_address_stack_frame(const void *addr) { }
> > diff --git a/mm/kasan/report_generic.c b/mm/kasan/report_generic.c
> > index 8a9c889872da..137a1dba1978 100644
> > --- a/mm/kasan/report_generic.c
> > +++ b/mm/kasan/report_generic.c
> > @@ -128,7 +128,7 @@ void metadata_fetch_row(char *buffer, void *row)
> >  	memcpy(buffer, kasan_mem_to_shadow(row), META_BYTES_PER_ROW);
> >  }
> >  
> > -#if CONFIG_KASAN_STACK
> > +#if defined(CONFIG_KASAN_STACK)
> >  static bool __must_check tokenize_frame_descr(const char **frame_descr,
> >  					      char *token, size_t max_tok_len,
> >  					      unsigned long *value)
> > diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
> > index 1e000cc2e7b4..abf231d209b1 100644
> > --- a/scripts/Makefile.kasan
> > +++ b/scripts/Makefile.kasan
> > @@ -2,6 +2,12 @@
> >  CFLAGS_KASAN_NOSANITIZE := -fno-builtin
> >  KASAN_SHADOW_OFFSET ?= $(CONFIG_KASAN_SHADOW_OFFSET)
> >  
> > +ifdef CONFIG_KASAN_STACK
> > +	stack_enable := 1
> > +else
> > +	stack_enable := 0
> > +endif
> > +
> >  ifdef CONFIG_KASAN_GENERIC
> >  
> >  ifdef CONFIG_KASAN_INLINE
> > @@ -27,7 +33,7 @@ else
> >  	CFLAGS_KASAN := $(CFLAGS_KASAN_SHADOW) \
> >  	 $(call cc-param,asan-globals=1) \
> >  	 $(call cc-param,asan-instrumentation-with-call-threshold=$(call_threshold)) \
> > -	 $(call cc-param,asan-stack=$(CONFIG_KASAN_STACK)) \
> > +	 $(call cc-param,asan-stack=$(stack_enable)) \
> >  	 $(call cc-param,asan-instrument-allocas=1)
> >  endif
> >  
> > @@ -42,7 +48,7 @@ else
> >  endif
> >  
> >  CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
> > -		-mllvm -hwasan-instrument-stack=$(CONFIG_KASAN_STACK) \
> > +		-mllvm -hwasan-instrument-stack=$(stack_enable) \
> >  		-mllvm -hwasan-use-short-granules=0 \
> >  		$(instrumentation_flags)
> >  
> > -- 
> > 2.18.0
> > 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1610069910.29507.3.camel%40mtksdccf07.
