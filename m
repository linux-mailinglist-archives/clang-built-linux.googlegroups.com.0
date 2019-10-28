Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOMQ3XWQKGQE3DITX7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0B1E7976
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 20:57:47 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id i187sf9420535pfc.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 12:57:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572292665; cv=pass;
        d=google.com; s=arc-20160816;
        b=NCm4gr829pWq8FO9JNsOna8NrAcDeJkbd2stFIptTbQDeXKauRwONsRfnHMMeOJTqd
         rG61zikqXycnqyHGANbdxqY4KgVXlTIxx7p+veFQ59AVetwfxaHTDZBAcK5TGFO+WMnO
         Fzd9JTDoLAYXVgxyhJfKfWZnFzJsOt1v1XhOcp8wmjZukM2goM8y83vUQSFSvtmlEYSL
         u2AQzylWDJTQBOsPdwgdCAAknVbwu2Ry0J0BgWsvgPs0PalOLnGYsHS8+OvhnuAVyJRi
         tl4MmNjl2fPT2Uglk3GJLYGwy+AzbJ28pArDegxJsLwfEJJ/CSVPLtePPG83Kow5zbBy
         1KTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zKUW81W954F3DLTre1PiyMWpRAeA+EnFEaSiqZcCyls=;
        b=F4iTGRgpe4CrnxnJz3EJPCgA80p8+5N6wlWgwGxldspA97N1B7ithq0jiHqmBpEzIr
         909loEQbyjow26rnliriktfY3xdMzYheL8jv93QEf/kUGKb67Uhon6wobORgg8VSChE1
         AN1BtN7OuKgoWLL2f9NcIYaZw8XgsA8x+wSkgwrfojucX/+PF9uU5lqkWG2ksLI8aM1q
         zMkXdSYzqiNNCBRYyW1K/JUC0v8X2juqovDWJk2twW6V1vesdjRjZLUZ7yC3NkLWz8BR
         yH9/RYvmzpHzLNajMjmeU+lwmo2M3K/5Rc+/Oc01ddn27TL55viMW0aFrMbMXn1pCM/o
         6/Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=O0yZqC1v;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zKUW81W954F3DLTre1PiyMWpRAeA+EnFEaSiqZcCyls=;
        b=m4cU1Tgvhox5jJxGhpwWAVe2mL3uA+uLHYFskexzia9/NN5+600J+amsZMSO+Zu3yl
         ki0NZBu8JhhIOrRtu1omJxfmQ/zCQeRJkKSTvfkYzPLlxfKDonC/k4ikJVDi0slbZrT2
         dqRASZnmL6YM/71xUNYDFKe22akZF00Tc7lbU/jdnNRcKEdPnFyACZV5QBVHQH68n56t
         I8bbyPVjceMeCXXuegYNMaJrF6KbIdTnNjqtWUOHKlNFCyYVGvObRhNjg6iUOA51Va7a
         DFxHKqft3CyplxRStoUs3k2aGPpyqXUteRyDOEMJplbYkiwRHkXKLyKpM+kHTomaTJ5G
         8BHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zKUW81W954F3DLTre1PiyMWpRAeA+EnFEaSiqZcCyls=;
        b=BeEjVoVQQfyBWdepzBK85IYHxfFQilJ5WC3hI4KjWlMPfrWejm/eM+jyXqdXnhtjxZ
         zhJ08KJ5iZEG82HVtHoFRTluI9qQhUayeSKSOAbxh6vEXG9Dr0i8+Sg7oUI4lmnHGnX+
         /ZhdFRrt1e3Fgf6Nvm8d8Xk6kqhShXoeB3n1DVoH5usZ6vtpdNQ92yaU9tw1ut/Bl4T3
         0Z1oPWdrCUjRE+ku3rySyqhMqgiriMTZm889Q0oavZXjHv0F8tHPD7BQY3KADKxIZwuk
         zzllh+15JVMeoqRWG/RTOVcHh6oII/YoVMhBCCHtfJFFTA1LLRVplUb3wjdjeCnjfLOO
         Ly5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTD8fxss0pH2R7Fy5UGRfhTgGr5qqzAnlYjiGxb+G1idg/fJPu
	6Ispl6C01r2qQ1FTvjemZwA=
X-Google-Smtp-Source: APXvYqzS3U+U8Srzz7MkKf4vTeGJOO6ESuRz0QSvsqQi3fi9kHmcpTp3cRVTlfrxK7VoLl8WMzIlLw==
X-Received: by 2002:a63:a504:: with SMTP id n4mr21970513pgf.97.1572292665555;
        Mon, 28 Oct 2019 12:57:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9f85:: with SMTP id o5ls381724pjp.1.canary-gmail;
 Mon, 28 Oct 2019 12:57:45 -0700 (PDT)
X-Received: by 2002:a17:90b:30d:: with SMTP id ay13mr1340539pjb.29.1572292665181;
        Mon, 28 Oct 2019 12:57:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572292665; cv=none;
        d=google.com; s=arc-20160816;
        b=dRVfLWs7mqbvvd5aaARuYhcNQ3u4liCPDxnN1WBTChvfj/08nbZZnIF5nQJjPrL+5R
         MqOYOe+gYSkBH60bM0Tl5Ps+xmLtUuDAyyrBITj67uKcQl3Fn/rxTfqGDrqAKzLDU5Lj
         n70QA3Xjbs6eyclTV+5GidxnblVF4MqBf16Yn2QGizXmEcvBEn9vsyNidQbaj0CYjCdH
         2fTZkr4IayS/z4oafUPUtk2gaEUuQDQCXIjXWf0FoPkTVGr/Dq69veYRVw6hIROl+lB6
         x8EU9k9y5yCyX7my6pIFm1ZeBfDpEgI9+oLftNS114fgzt9td+JeRwkxKI7u6OsjrJjr
         s+VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+wOJCmH0g8vAxxe+FcShlh+2/nEo9CAjIamY0wkPKUQ=;
        b=1GjjaKQviLSGj0piP3P+vBb6yk/wwcH/EMqK5wR5/gwKxHexrrCqyvI1GEbF+lYomp
         SZR6OQPnDEVOOh9ED3C5A6ueLGuzH9PIHQmcdk6xwVZhxcB7me+bJ5ydrVCohp4v2UcY
         uFxD5izydJASFUsiFzSW9WzGriPnKTSE7cXQkTGyeTLi1hI8ALvOmItd3WuyGNLQu6rS
         9NGjjpmnitVVGa16Zo2lnRxktHSFr2wyN7JTCBKKVCELk2DXc2bY42PVdKhRgdea9uA7
         EAy4xopIy8pFkET4OD3/soGVxuCjdTBIcDHhXmrEpaBmTzo/RSBcfErc1NIpFU1rcYR/
         GUeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=O0yZqC1v;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t17si49383pgu.1.2019.10.28.12.57.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 12:57:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id f14so7634437pgi.9
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 12:57:45 -0700 (PDT)
X-Received: by 2002:a62:e10c:: with SMTP id q12mr13396875pfh.248.1572292664956;
        Mon, 28 Oct 2019 12:57:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y129sm12883990pgb.28.2019.10.28.12.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 12:57:43 -0700 (PDT)
Date: Mon, 28 Oct 2019 12:57:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <201910281250.25FBA8533@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
 <20191025105643.GD40270@lakrids.cambridge.arm.com>
 <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
 <20191028163532.GA52213@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191028163532.GA52213@lakrids.cambridge.arm.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=O0yZqC1v;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Mon, Oct 28, 2019 at 04:35:33PM +0000, Mark Rutland wrote:
> On Fri, Oct 25, 2019 at 01:49:21PM -0700, Sami Tolvanen wrote:
> > To keep the address of the currently active shadow stack out of
> > memory, the arm64 implementation clears this field when it loads x18
> > and saves the current value before a context switch. The generic code
> > doesn't expect the arch code to necessarily do so, but does allow it.
> > This requires us to use __scs_base() when accessing the base pointer
> > and to reset it in idle tasks before they're reused, hence
> > scs_task_reset().
> 
> Ok. That'd be worth a comment somewhere, since it adds a number of
> things which would otherwise be unnecessary.
> 
> IIUC this assumes an adversary who knows the address of a task's
> thread_info, and has an arbitrary-read (to extract the SCS base from
> thead_info) and an arbitrary-write (to modify the SCS area).
> 
> Assuming that's the case, I don't think this buys much. If said
> adversary controls two userspace threads A and B, they only need to wait
> until A is context-switched out or in userspace, and read A's SCS base
> using B.
> 
> Given that, I'd rather always store the SCS base in the thread_info, and
> simplify the rest of the code manipulating it.

I'd like to keep this as-is since it provides a temporal protection.
Having arbitrary kernel read and write at arbitrary time is a very
powerful attack primitive, and is, IMO, not very common. Many attacks
tend to be chains of bugs that give attackers narrow visibility in to the
kernel at specific moments. I would say this design is more about stopping
"current" from dumping thread_info (as there are many more opportunities
for current to see its own thread_info compared to arbitrary addresses
or another task's thread_info). As such, I think it's a reasonable
precaution to take.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910281250.25FBA8533%40keescook.
