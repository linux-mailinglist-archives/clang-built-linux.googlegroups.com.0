Return-Path: <clang-built-linux+bncBCU73AEHRQBBBTGZQKAAMGQEAXMIS6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 872612F6C5B
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:42:54 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id q21sf3993340pjp.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:42:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610656973; cv=pass;
        d=google.com; s=arc-20160816;
        b=RClesMjvB2UBsb7+z7dBVq8v3cM62VClNXuHYu9dd8/mUJxY8/6IrJpbbwLNE/m7ww
         WmDY9ncdrCfxQ3YqDmpSVDYZGix52EbM7IvQ9UmQt1vHpWtcNaZGBHwtDwgWvoiDnKDZ
         soHXnDNtILKG4DfeIkfmuJEMIRjlrIuvEC2ahIxMIqqJ+ugM5iXVre+Lkuc5vZBtIfj2
         15q2GhxHtA0E7ruOYH+psodmvDNg1KTl4OiQIoZ5i4PuqISyGAnQ2lm3OXc23WOP906T
         2vfMjpRM2xGcpEbKD3xRTuL3seSmnDZdcJ31CFyyVdozyXddFQ7O6O2fujkjn8IZ6D6a
         BQLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=A+/K/fwBfZ8fUAaTSrNGO5lxrwLQ2gFHW4I429Kiwbc=;
        b=BZZ8Sx1Tb4qHp9Uu6514AJ1Ge6eFeZxj9dUwsjKI6NoR4+ZVBWz3Vd2oegqMqMYW7p
         cmACk8GRn9Thqkd/jZCxwJf7q+owqlmzXtt2QHVgyqgRQ0kUrzD4nXIo+loNwiCQI7Ko
         DGxux6B+HhX6GggXWWdpT/RYiAH5MxsR/HKILc6vmKqc8gS6UafpoxSuJOExX68Hz7EP
         +4sciuBbm6cG7T2eGP9S/ow13JymOo9ORveBHIMX4LxMR7FYEMde6vckyH4vzEMtzwCo
         VdVBGyl7x1b+l8FZ6zXAVHVU25lJWDhM6o/zg92xf33D6VXEEhUJRCBtCJe46ka38pcu
         mJXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zz8a=gr=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=zZ8A=GR=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A+/K/fwBfZ8fUAaTSrNGO5lxrwLQ2gFHW4I429Kiwbc=;
        b=sEQ2h3Gy07wbtQuAEKNR/0F40mfecZooHhB5MMp7Pl75PWrrkktLaLfDUj2uqWFjOf
         FS0B+RA+Vwh9F77vbf27hSVhPx2wRlso0mAp2HgDFfRDL027uzWKcELpzzV+rykdbwdj
         gB5o30JHZ6NhF+zj9gRug5rdwx5q4NmHeN3+iwf8dU9h4KQQf9G+VdiY896u/+zhG8lI
         NIgL5yecx1M+90HMGZJy2aoinMmf+aPfGPXI7ZIUk/0+aPcCUe6Lr7YOBy7OA7rWfK3H
         fP+j606fgv/+unKAAFImLRx28QBVvOupMA1GXF37Swn5jKjYkbnaSpk9nl2TT0P+D6Qx
         Fqzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A+/K/fwBfZ8fUAaTSrNGO5lxrwLQ2gFHW4I429Kiwbc=;
        b=JI+olIqxfipVlfBR7xY5xriUaXYhWmlMH03B5Sm78jF7KW9KObB+jY41fSeOZzDsWd
         OFSMUkzmfIYioXgYn5Jx6EIhQFOVieYJ6y84V39pR3IPcULKY9HGP5oeShhOh6pLMGQi
         hh260ZcxlQvQmXKWnHrLIVd/hIhp0CYGpCGhfPkiN+5bBJN6Pp66/p6Hp7XNnamc6VCl
         /Cgl0GhCdbi0WT+bkhduxwM8BLaWVr6QG+hFyeIRvPNQkY9I3EQGnyTIsYIPgj5xHeqq
         psZtWW5e6FW7X8xHmjum+dsIbKkMBYOe8AKDa4ZVeJ5hbXWK0R0LMEnOvZXaZz1bltz9
         Sw5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53181Zo9J6zG3/ZAKyj2roObjkQUKxmaQAPNXHaZtQLHR/mpivyS
	dfxFFPnwdC4TNb4/x5wknRc=
X-Google-Smtp-Source: ABdhPJxu21qkXZNJTL7OO5vxYSqRHG5gdEIEZVx4Ii87x7ghY8pJY9ocXMOn1ijaa1F9IAVMy0B53Q==
X-Received: by 2002:a17:902:7793:b029:da:d44d:1968 with SMTP id o19-20020a1709027793b02900dad44d1968mr9308005pll.47.1610656973093;
        Thu, 14 Jan 2021 12:42:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc47:: with SMTP id t7ls3397741pjv.2.gmail; Thu, 14
 Jan 2021 12:42:52 -0800 (PST)
X-Received: by 2002:a17:902:a60c:b029:da:e036:5dbe with SMTP id u12-20020a170902a60cb02900dae0365dbemr9023801plq.43.1610656972461;
        Thu, 14 Jan 2021 12:42:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610656972; cv=none;
        d=google.com; s=arc-20160816;
        b=1CdYE1ulSNyJ+bTKiVyvriqW/NRMQfOw4+1JPoUE6Mw3BFPIHCvU076e/UTHj/K+98
         HrQUD48GemijKN3QSbolvcFblYBGUI5A83ofbGh/xa83HRJHnE0M9cJLHfRwaRwKb9P1
         5Ur6kL6RnR68Ejy5rs7hmMwvDe9X8JeEWiF5tM5BUGOrxFxSe/q0kFfNs4U0Hn9M68ts
         Niegaou0EEvgwRIooQ0IsKeqPJHCiWRM8mbeI8/+FoJZ2pfWr/2j+2g4UvIBbe2DY6Y7
         44tz7QubMIpnqe9Qokd+jYboxwWGxxbsCKHFPTR45G0CWBpuPnhMHd4zpkRdOKwk9hXd
         t3Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=3lF7HEjBmhuLQXjlCfoeGcum7F+3dTZ3KEAo+ctXiJE=;
        b=tVstl2NQjzmt5cAW/8mS/SryP6P1BA7XadUs0lxIxG3YyOo+jBIr99LtSu7BZBltsr
         nMZ2LufIJueYGNZu3NWuTp/1xZtgzYeNbuOKGdKUUMY9ZdgTrsBTw74D2Kcf28f7Ju/o
         RkrXz86XTeNkVMl7/Fu6KPeeMcsx9ucc6fMc8aomcA4UMm1CW/RQNSGvySyCe4hFJj2p
         AcJgjiNoOYExLOeqdvnycHz7x6nErhsAj1cmE0TsmI7nikK/bbDB8NpSrb4L/NlkfTgq
         ytT+JpZpURXzitOGSabNRohdbJzq/KXKt8wM+Wrw4pYacB+PW4MImgqFH2qRbFCb7Vk6
         fPMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zz8a=gr=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=zZ8A=GR=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c2si459110pls.4.2021.01.14.12.42.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:42:52 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=zz8a=gr=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 243D523AAC;
	Thu, 14 Jan 2021 20:42:51 +0000 (UTC)
Date: Thu, 14 Jan 2021 15:42:49 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, Peter Zijlstra
 <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, Sedat
 Dilek <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 16/21] x86/ftrace: Support objtool vmlinux.o validation
 in ftrace_64.S
Message-ID: <20210114154249.63526c1c@gandalf.local.home>
In-Reply-To: <b46ad8966b1575978b7b9cee467fa6d63a089a4d.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
	<b46ad8966b1575978b7b9cee467fa6d63a089a4d.1610652862.git.jpoimboe@redhat.com>
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

On Thu, 14 Jan 2021 13:40:12 -0600
Josh Poimboeuf <jpoimboe@redhat.com> wrote:

> With objtool vmlinux.o validation of return_to_handler(), now that
> objtool has visibility inside the retpoline, jumping from EMPTY state to
> a proper function state results in a stack state mismatch.
> 
> return_to_handler() is actually quite normal despite the underlying
> magic.  Just annotate it as a normal function.

If you say so ;-)

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

> 
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
>  arch/x86/kernel/ftrace_64.S | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/kernel/ftrace_64.S b/arch/x86/kernel/ftrace_64.S
> index 1bf568d901b1..7c273846c687 100644
> --- a/arch/x86/kernel/ftrace_64.S
> +++ b/arch/x86/kernel/ftrace_64.S
> @@ -334,8 +334,7 @@ SYM_FUNC_START(ftrace_graph_caller)
>  	retq
>  SYM_FUNC_END(ftrace_graph_caller)
>  
> -SYM_CODE_START(return_to_handler)
> -	UNWIND_HINT_EMPTY
> +SYM_FUNC_START(return_to_handler)
>  	subq  $24, %rsp
>  
>  	/* Save the return values */
> @@ -350,5 +349,5 @@ SYM_CODE_START(return_to_handler)
>  	movq (%rsp), %rax
>  	addq $24, %rsp
>  	JMP_NOSPEC rdi
> -SYM_CODE_END(return_to_handler)
> +SYM_FUNC_END(return_to_handler)
>  #endif

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114154249.63526c1c%40gandalf.local.home.
