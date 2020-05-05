Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBCPLYX2QKGQEHFTURCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 9267D1C58B2
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:17:46 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id y14sf1052809oto.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:17:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688265; cv=pass;
        d=google.com; s=arc-20160816;
        b=nxbBytK2JcaBA+/EKqCvJf6tAYDeV5fc5jMKtSjk+eJKYfEFFOEpUpK2xNtZGy0mV6
         2/9h3GNuH4Rv2orqGfzZ5W11usgFbxxQcuYCBFSXciGDxo80uDHefDerQ1m4o80ZTAG4
         iFTHjv+s5ZMw0/l9Z0ow9rDehZT9FyXDYGBLz6HQsWFcXb0UWn7i5FFKivvC+RfjNNlY
         sHKwZGZbhiozUfBT66+U+6/G9YpoQ7BnYPnA4aY7PcsA9xyB1Dm0Q7Ms7j5fYyDqa3Cd
         2hmpngtsSfx56aGHiBFWPPDwWP8MDv2sQThgV1gFM8VJQzPtyo1N/1zYWif+kaZN11ee
         1ffw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CU8no+AMcDghmwOmKXINheuJ2uleAfSJRfs2Y6drfF8=;
        b=cfd+/nh9bFWegBqQF1mQs8Iwn9OHOINlgplKMJrnIpDncX7OQnE7feIl6ac5BO7MUq
         RsbAhgrxsVYGRgnw9yqJ+mj3LDiaheuaJVnbES78MrhofjRPowaYIeD/DYTKL0D3LRnH
         +7JPU8tNtbzkVi2FBJddIeON6MI44bM4Y4Jzc7nVusTmVoIYygp5Xwq/9GcoE55ipmZz
         69pFC6w1TbHSRSj3PoQyYb4Dk5T4/k4cj6fFWyHwIluFGjWnt62XDCz8ZsRFNMn0erAV
         uGFFTDwqmkWSQQv0zyXr12DO9sLFuFRbyaww3EkV2dkQzx7gYtS5vJDmj7v5yFSbze3X
         CrvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rdomWIn1;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CU8no+AMcDghmwOmKXINheuJ2uleAfSJRfs2Y6drfF8=;
        b=kr7hVLGg6kdXR1UJTiLY1EfW27/UVGB2o56OjcYaRNrsJGXlP2O8/ZS+vFeAYtIHrH
         Mm23UBv8D519aHBpJu5agB+xq5ggItT92BFCjGDIp9zfJo9eV0ni+RkCPFBfW3FVFMbH
         NA9RUW/Jd3FLyZ9eZEWfePzxNsWWYS8bquDScCSBFW20i3UCtl1zJrWYx2m0YvP4Q5Rj
         YDCfWvonnLbjxA4vngeKjkurdLLJZc+E/YO/G2Lxbhxcb5+CUzSr+eNJkzNrZe87HOmb
         HOQ/bRP716fwsij9gYMm8aZDDxBYYtAnjnX0eHAvKJJthHBp5SzwlcsjcbfZ4+MMXPkU
         TaOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CU8no+AMcDghmwOmKXINheuJ2uleAfSJRfs2Y6drfF8=;
        b=hEmO+jzed5kIptTC7S9/pxP2M+t5iJPFglSrczsmNEStbC++AiwFQyVgM4nprR4vJv
         /0h2l147M6wDezmUm0SryakXfTNHigIsobeznR9PHPMsXY/Lj+pTRY29lvCeGlrIq+zO
         jJ3tQeiQicJMnm155QQMJ3XFGDfKcQYSg5aSNVv5GhBBbsg3IRSw3pB153CyCjg7IEwu
         TrjKqmuLGH0aJcP+0rEEuLzASry4VfbZ4g4ZwlgTtkQuSCNmzVpn0wCW1ZbNLQjYQZlm
         Db/Wyuojx/0WecGrnVQXIl8rVErnCIUvLBVpyoGcjjJJmK9u6d5/M45mYGiNm3XYfaLR
         CjkA==
X-Gm-Message-State: AGi0PuYinlb9BJ6UbAScbPlnwqDGsSJnLf7LcZY84vS+5QP84H7zt478
	w9q8gVigOiG8lNx7bPlscGo=
X-Google-Smtp-Source: APiQypLCMXK1Peg5KvH6/ennSzKWFeWayamjhfsIMgtHq+67F3tYz2hxtgot+peyFP2wblDzqbsw8g==
X-Received: by 2002:aca:ad87:: with SMTP id w129mr2458304oie.173.1588688265504;
        Tue, 05 May 2020 07:17:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f456:: with SMTP id s83ls546754oih.11.gmail; Tue, 05 May
 2020 07:17:45 -0700 (PDT)
X-Received: by 2002:aca:ba86:: with SMTP id k128mr2701520oif.60.1588688265215;
        Tue, 05 May 2020 07:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688265; cv=none;
        d=google.com; s=arc-20160816;
        b=IEJqm+Jgyu+95omydjSN0zTYD1TyWlv5ke4W+LkT4LhazHAoXgPaeRpjEahY6u51LH
         y8M3MaOwzr56zimBjFFeH2/wScyCyUJWAOzsTkvr8fw/l8GSPGdG7AL2z0u2hFClevtD
         h/VnkKN1FOgZNkdXSXwZqG8freEgUE5Qc31oV+nU0zI2wSRYk+R0DOYCo7xYmuzEhjXg
         EkKN5oRFrpLemRxSEwpdfb4w8v+bkI5RtNRqeVmUM9IDX3k5usVJWnZUZTPasGbqKOGG
         OXfVHv8FWMCERNQYxinbndCsRznBu7fwzNOBdAQtwSvRZvXlzs5nm8WZBVwqRVjBLH0y
         2R9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Oozv1CurdVXPxFbon25FvYaSVZOel7H+M9qpgBithxw=;
        b=xNjODMLre0XkJC+lcDW9KkXdkjbYreI4zXOqd2tlDbTWpel+jb9uIaGJg+ab4aJZGu
         tXsdpinMbuNUW0WgOuz39AhfbVJDz7XN98MBG0HrvzjZUkFSq2o0Ou5cqrL1NXKO9OsO
         NiRb6d9HxvtAF2aKK2/Zvlu1P6A1+nCQQkh4GD567yLmsDF/R0xdX2GTqDe2zS4DLxku
         VzIL+LYM0ONvwLeCVH2VgNrOnaLtNeeRF9GxdpKLwOQY9h73MBNTVikZr1c/nUJgfBXQ
         KJY3kXk3MPKgBxAuCh0y1hlQ4intCXiDljs88Ti9qUIw/0NerQBEY2ZP5lv5Qeq86Cd7
         aMIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rdomWIn1;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id w11si135754ooc.0.2020.05.05.07.17.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 07:17:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id m13so1740510otf.6
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 07:17:45 -0700 (PDT)
X-Received: by 2002:a9d:7589:: with SMTP id s9mr2210194otk.251.1588688264613;
 Tue, 05 May 2020 07:17:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141137.665940-1-arnd@arndb.de>
In-Reply-To: <20200505141137.665940-1-arnd@arndb.de>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 16:17:33 +0200
Message-ID: <CANpmjNNwgkVR6kjFudrR4ga--PigU5Mx69HZ1mhCAQ0GCLqQGg@mail.gmail.com>
Subject: Re: [PATCH] kcsan: fix section mismatch for __write_once_size/blacklisted_initcalls
To: Arnd Bergmann <arnd@arndb.de>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	Kees Cook <keescook@chromium.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Dominik Brodowski <linux@dominikbrodowski.net>, 
	Alexander Potapenko <glider@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rdomWIn1;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 5 May 2020 at 16:11, Arnd Bergmann <arnd@arndb.de> wrote:
>
> Moving __write_once_size out of line causes a section mismatch warning
> with clang in one instance:
>
> WARNING: modpost: vmlinux.o(.text+0x8dc): Section mismatch in reference from the function __write_once_size() to the variable .init.data:blacklisted_initcalls
> The function __write_once_size() references
> the variable __initdata blacklisted_initcalls.
> This is often because __write_once_size lacks a __initdata
> annotation or the annotation of blacklisted_initcalls is wrong.
>
> Remove the __init_or_module annotation from the variable as a workaround.
>
> Fixes: dfd402a4c4ba ("kcsan: Add Kernel Concurrency Sanitizer infrastructure")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> So far, my randconfig checks found two such instances, one for read_once
> and one for write_once. There are probably a couple more in random
> configurations, but I guess they are rare enough that we can just work
> around them like this.

[+Cc Will]

Thanks for testing and fixing this. Note that this may no longer be
necessary once Will's patches land. Also noted here:
https://lkml.kernel.org/r/CANpmjNNw6M9Gqj6WGTHH4Cegu8roTVu5x6Vqs_tCBxX3gPwL4A@mail.gmail.com

For reference, Will's series:
https://lore.kernel.org/lkml/20200421151537.19241-1-will@kernel.org/

Thanks,
-- Marco


> ---
>  init/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/init/main.c b/init/main.c
> index 8f78399697e3..441c384a73cd 100644
> --- a/init/main.c
> +++ b/init/main.c
> @@ -1020,7 +1020,7 @@ struct blacklist_entry {
>         char *buf;
>  };
>
> -static __initdata_or_module LIST_HEAD(blacklisted_initcalls);
> +static LIST_HEAD(blacklisted_initcalls);
>
>  static int __init initcall_blacklist(char *str)
>  {
> --
> 2.26.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNwgkVR6kjFudrR4ga--PigU5Mx69HZ1mhCAQ0GCLqQGg%40mail.gmail.com.
