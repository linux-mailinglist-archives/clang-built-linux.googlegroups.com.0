Return-Path: <clang-built-linux+bncBCU73AEHRQBBBMOZQKAAMGQE5QGJDJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC682F6C5A
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:42:26 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id e74sf3051951ybh.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:42:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610656945; cv=pass;
        d=google.com; s=arc-20160816;
        b=eYgx+Zsjms+p5n+b4sGVxBe+i/Fi8zFFx4GHlyQRoUZcyP8nDTYIhE1NZsjmkx+RJ2
         v4yRY2/JC2dhYHFBgyQeQ0XTjPUeWFjZ0fxJK7mIB+5U+S0Vsbl1hov3fm5YjhE2fQ5e
         P87z5eR8b/HegYYPUeLuQL7EwEqN3AjKqOR9uFVo70AVia4V9PiI7ffLDmTBdNtFpgXK
         k9YFCbsSSytdhCH1QxHmZUUB3XHvcra/MegIzIsPG8RKbq3okMt8quEQQl50NYKXTA/0
         QrT38fcjpYH9FC0SVmOQBmnzG1g+ht88rz2JAFPUpIVbvNMYNnIx8vh3MhER4vKIIYVI
         NJbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=NDCS1E4BWFPAgv8m0OZlDbaC0g02CLsYXzGiIxwAHmI=;
        b=ZbfiWwY8PpNOszUXWjlDR8EBw1WNNNSWXTMmZGEL1fnUvy8c3tUuFptD5qAfTjMoFo
         gAzz4+KxOrJOtSdTLF9i/YWEFd/y8f+hz/q7q+QPI1e/XuQclzOMD33icE/z9FKQusti
         2uQAaQxYyMSY4LU9pBxlhXqBhhdEIpZljKJetVMqFMzXGZS1IPa5OzQEUFtxCytCg5TL
         pYkdyAJk2uqV3SOtBCsdLl5qq2Aav8I7jF9H7zXoXvvUudESet9JkJcbx4BUVfzqQru+
         AURwIYrT3YWyMZuSH/8SMn2wWvcdXhjKkcYcmY/sc86wChahekO+AYmLmcyg7TjmiBzW
         bRVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zz8a=gr=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=zZ8A=GR=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NDCS1E4BWFPAgv8m0OZlDbaC0g02CLsYXzGiIxwAHmI=;
        b=QuHl4cPV5P3F2E2qFrdI7QwkMDvKaSDF8lVRNFQektZgp2IYWliWVb1MwYtJv21hT6
         i2xp6qb5+6yE1F43C46Yy+zNq29cPn4uSehlq2m3zSUSxEDOiMgxp5D/doUDPXfzmm3H
         UWFB+B3bmBBp/sjUcpRsToJE1p+8dA0bdNCtKI8aDabddCaCnP4lr6eU0KFQqejLQdwp
         n+aN/Cd3qgCtWEluyb7xa4S0/k6Q+9iCvwTnZ00wC+dJb6xvnjDQ0klE1hIbHmH4JGo7
         x+etW0pHwLXUCUmKAVxX510IpaqXJnj09tjiu6oRa9IPHdO2fcU7RwF8F7IFhNb+Fgc1
         LiSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NDCS1E4BWFPAgv8m0OZlDbaC0g02CLsYXzGiIxwAHmI=;
        b=g/i2WhN06/rk8t+PmlZotXpiiCWgosupP33HcOJlmKg7pwtdh+OSF45aZvzo783QVs
         j4Me8Ws1mPWpJn7LjzwxtnGXxaMFbim9Gy8DxaHnZoAwWu1V5KVQ2juy4N4Hmnou8qYT
         sVylgx+7HP2zES/arY/4ONP2U8r/RzBPT/cXjn3Qth5AfsJSkNZweyPIguMEBtp6wWR+
         uG1tLOwUYZBf+Q2wsZ1n0YOZnmsyQ5qqGUZY+y8ZRKGAXzUnCTpsskvGqEP+tA1E9oMx
         SU/FQedyGen1FVdKy7UeXruo9ZTCrAhPXTjUq7zmGMZIbB+0Kbncxg/jEJKsOUHoBcCz
         QsKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301fwW1xG2lMKBHVJ+scBUwGKtS7gZmfK/IADLrKT1KWUKdJdMO
	f0rsACasYbquWoZWl8K3StE=
X-Google-Smtp-Source: ABdhPJwHSxiA+hojO1MaMdYZdKVyPUNYw4tZyUKUb14ODWlzeyf2OmzCwQF0zc8YuSr7EzG8gapPDw==
X-Received: by 2002:a25:70c5:: with SMTP id l188mr13829639ybc.45.1610656945767;
        Thu, 14 Jan 2021 12:42:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b5cb:: with SMTP id d11ls3303167ybg.5.gmail; Thu, 14 Jan
 2021 12:42:25 -0800 (PST)
X-Received: by 2002:a25:6185:: with SMTP id v127mr7684748ybb.65.1610656945425;
        Thu, 14 Jan 2021 12:42:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610656945; cv=none;
        d=google.com; s=arc-20160816;
        b=M67g6u/3inAt7S3RVuNB8KdaHhnIxY6aNPnW/SuQrA4kyNgWx/DAOXctoExHklFlGP
         hxql8LFS4H3XylmJ8gPQCTZhS/MH5a9UCpYoeO7hnmyQOLwFRlYIC1uky/UPPoU/vxhg
         bVe+s4VbeEygdNZiQSAcL4KXXRtHS2txwcCK6l2qF26UDqOde1pZ4ul4RdfEPglL/C8a
         +JBPcqbJrAGpropoCBTpmebNl4p6ux1BVS8BwPpjgZGPmmJDC3BIvuTRqX4gbzPT76An
         dwyXIKl+g4qLNJ4uQkXkRCXXvjkeyISKoztu177iQgxQ1UMEl9DWjzsBxxkrcRxlLPtJ
         cB1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=yiL1kJkCdiZL3fre8nZHbJcewGyt4DQEPVXXKdAPIe0=;
        b=Wb9cAm31nQQS0tE0eV0YS4AWF6YPwms1/Ls6kQtBaTbRMFHtG5NHPGyBqNcHCx5hED
         IuY9Av68aCzGTCfSjZnEmChn3XU/px/NmUfa3f6lpAAAgNHZxk4fV9bMnOIlKK8wuicB
         nqOcpt9Yfcww6FIyODMSyA/0objfbJVsuY8+PI/4lYMFuDjVLI1tLMX5Qcs7xyA14S/z
         1UcPbNhoIr2/1nAJx9BlhdZvj3LAULpqOKq2mJHqtk5GnQLvv16FIvyo2+7QhbMynlxS
         FgJ1SahD38rVfpwlkdLUlkWR1i9YNCAA6NEEdhgiUUMPhzOQDdTZyqCtQB/MUyg9odDg
         HoRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zz8a=gr=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=zZ8A=GR=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x18si190332ybe.0.2021.01.14.12.42.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:42:25 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=zz8a=gr=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 741CC23A9F;
	Thu, 14 Jan 2021 20:42:23 +0000 (UTC)
Date: Thu, 14 Jan 2021 15:42:21 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, Peter Zijlstra
 <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, Sedat
 Dilek <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 06/21] x86/ftrace: Add UNWIND_HINT_FUNC annotation for
 ftrace_stub
Message-ID: <20210114154221.4d6223e1@gandalf.local.home>
In-Reply-To: <8c06a9137fb88d62d0af7d9d358317919ba8a001.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
	<8c06a9137fb88d62d0af7d9d358317919ba8a001.1610652862.git.jpoimboe@redhat.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=zz8a=gr=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=zZ8A=GR=goodmis.org=rostedt@kernel.org"
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

On Thu, 14 Jan 2021 13:40:02 -0600
Josh Poimboeuf <jpoimboe@redhat.com> wrote:

> Prevent an unreachable objtool warning after the sibling call detection
> gets improved.  ftrace_stub() is basically a function, annotate it as
> such.
> 
> Cc: Steven Rostedt <rostedt@goodmis.org>

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
>  arch/x86/kernel/ftrace_64.S | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/x86/kernel/ftrace_64.S b/arch/x86/kernel/ftrace_64.S
> index 0d54099c2a3a..58d125ed9d1a 100644
> --- a/arch/x86/kernel/ftrace_64.S
> +++ b/arch/x86/kernel/ftrace_64.S
> @@ -184,6 +184,7 @@ SYM_INNER_LABEL(ftrace_graph_call, SYM_L_GLOBAL)
>   * It is also used to copy the retq for trampolines.
>   */
>  SYM_INNER_LABEL_ALIGN(ftrace_stub, SYM_L_WEAK)
> +	UNWIND_HINT_FUNC
>  	retq
>  SYM_FUNC_END(ftrace_epilogue)
>  

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114154221.4d6223e1%40gandalf.local.home.
