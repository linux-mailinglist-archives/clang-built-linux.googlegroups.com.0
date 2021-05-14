Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWNW7OCAMGQEWSYGYMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 4860C38119B
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 22:19:38 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id g17-20020a05600c0011b029014399f816a3sf147385wmc.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 13:19:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621023578; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZuyfZ8bbXSOhVfrfMEgjghit4Ab7nlkd4fir24GW4V5WDx9QsTrX2BfOV2A6/lvVLF
         Vo7XUpyyoBUJgRKVMnfzV36wDGeOuZF8mN+X5J5e/4C8uXDJdWpjIgZ11AnR3SjM5y8F
         M7Cvc35IWwz0MZjF96MEQO0fxVWILSSyotVgeK90qGQwFexDdQs2MtHJ8mpptmb2zvMV
         zFOzsjuY7Q1/qC80pFsALCFnjQEOrh/7h0lkhRlle3DhzxyKMPyiK5GM2OaxtL6zR2fI
         Vl2vUuhrFwac/MZjQcttsS+Ea6/lNoJ6MqPYGXNnhMpblvE6ujCAFAf8RfMiZEsApZO7
         VQCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0xJuDk+ANMidgRP6xjp2BmZx8sz0jGSR9G+iPUIGgT8=;
        b=rqZrn74OGcVphvmKS2ZdPMPDmbTjuWFsQGM8IYh5jJ2vRA5qX4GHrfUlVIciO6KO3m
         jXS8wGFxsPqIVnIO+V5SunTkkqAVWubgFjou3MvyFKI6PMxS84ltpz21gRgJjat9D9WO
         49CxlpMXWhYp6gFAbKxAC9UwkSKwFNhAMauY3OYPgetJkx/2fSgbF7xqcYppzPg2eWIO
         x9Etwtzxp8a0qBhAhBuX5w6bZMW9lsxZgTgTaHag48CR6dfPDGJ6URUfj+3NhzCQw0QM
         Dxi3qeLT8Kic3Xrgz/KMWRXMk31nYVJ+0MdeeBdoCk2HDeECnm3mQKIPQN5O2+ZvyBtv
         /41w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="L/qRdLEj";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0xJuDk+ANMidgRP6xjp2BmZx8sz0jGSR9G+iPUIGgT8=;
        b=VFcARUoS9ddCbV3r0llbpeizp6uffVYQkWgHa2iukdl29auQky6JK3a2LlwCG9OHtm
         eoRgXp2pS6aF2EP1G9vearj5uQq1xT3FjBbwIiAvuk1CCxnpSuZFwmTqYGb6yI7fVT2b
         bqob2XA3YgGwJe7Pz5dAnxPcnZBFvScgyXIN6j8KsV9fgeSgWuvYfRQg50Ui6edpfxsx
         wB7fTv7UJuFxCRpRhSEt9sBjnIpsyNF7T/IYePHA7bkSusDZTyg6KymBisGcHV9Us1kg
         a2YOqKnfmU3DEkMvCXtboyU+v6z0Xxp0pxgCMufHFmp7Rt3059PMVb6l8Vv90225yAmc
         rz8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0xJuDk+ANMidgRP6xjp2BmZx8sz0jGSR9G+iPUIGgT8=;
        b=qUBZ8TZMyxZaruFKWaH1GQ+tRCQu6MUrEw8qDxilgr90aeCBhnLyLpNPd96tX44MIn
         MbyzZKKCm3MDNgLRyx5lnUUeQ/Np0SdoO7n37feFWkMMB4qCnrgOoK49I0Qlt+OYmcuF
         qO883xYqi1KFq4s7ghhPF5iA8BgbJjJT14eLzJ5NUkbC81/g46aWSuGdXlXHF0ooDPVJ
         s0aMxYTKrIL1mRrgqj1kdPjLIl967SfJolZdvLbuCv+PgxwVHERBSKcZlapPvbVeoLqD
         xxG+ZsuFJWNq+f5tEf3kSmeM0U6fne+Qvu/Wx5no74DXZYWGYzGSN+OHP1TFOxMmwea1
         E1fw==
X-Gm-Message-State: AOAM533g0jNLVwWoV4fdOV8R46Pc/exuFDtuuFhRNg01aFfRJon0wiPn
	GsaaB9xM+h5MAPsFpUsfoOY=
X-Google-Smtp-Source: ABdhPJyZF5dO7fX+T/Nq/RnHJQSvwdz8OZYKxvDRf1Q8doM3nyS3bnfuhYkQ3g9QHqIfDQFpLQB7+g==
X-Received: by 2002:a5d:59a9:: with SMTP id p9mr59348527wrr.289.1621023577992;
        Fri, 14 May 2021 13:19:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f603:: with SMTP id w3ls6371063wmc.2.canary-gmail; Fri,
 14 May 2021 13:19:37 -0700 (PDT)
X-Received: by 2002:a05:600c:2055:: with SMTP id p21mr8342524wmg.135.1621023577155;
        Fri, 14 May 2021 13:19:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621023577; cv=none;
        d=google.com; s=arc-20160816;
        b=w33dCDwOicRl3GjLTs76Tupd+t3KZ1c9nzOCjRMQNCvxiwcTRXPngvFC0mVqadvSII
         ZeAUJqBw7ia1r1/WeoXNrT5+zHFjuYdbE+B0P2GIY5ZaHzfb+WQ52+vI4FGetBhPL9Bs
         5faU56K9yHWapFvl0kh2jHxno/tOGVldml1XQhRlpACtG9lcy0mMHsEOZfTIJJYjNYQ/
         ZNBcNnz+ZcAEkwWfdAY6MBQI4U0g3dulUYg2Q9wBUyB/YRdXujMSJUUtZcTvZgXH+Re6
         d9H4tq09TEsqSc5a5Fu6PfFo21dHUOLv8MMngpMI/ZBfLSxC6WeltXfZHaf7yNl4h9hU
         YE/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8dn6xF6E4S7ZVtx8t+6PEIzcxkpUIx58HJDrNJtVpLQ=;
        b=amYg9SyxFHPy8cQQ/7DaV+wEr3Xmfga0ckAkyKok6WizWQ3U2WeQNB8xWwwz6a8CAj
         U0I89iVyVStduIRi7yJXmBTLBI11dk9IQ1I+FT3sB/dUn4iEJ05cmGstA8TgSouBjGS7
         V5z1NndBrTlpKS/xrmZAzXXkHSwLV/7+yQGQ0Ew5YniA5HPJZrMLzTuNBoaZt1qADRI0
         Z8ZL+wKOUg+IrZlymuMGn7GZ0ZzihZhA/hZGZ9NKt+AD2i26FE+ngxNL7jPjfExB1l/b
         7wWNgIYDWOhmX9KOd5u1dJcS+6hcAc5v+EkNQH/XxfChLfqw3ZzNL0lSGBEooeKd/Sci
         x48Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="L/qRdLEj";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id t1si274397wrn.4.2021.05.14.13.19.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 13:19:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id u20so7697672ljo.4
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 13:19:37 -0700 (PDT)
X-Received: by 2002:a2e:a167:: with SMTP id u7mr38680058ljl.495.1621023576439;
 Fri, 14 May 2021 13:19:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210514140429.3334181-1-arnd@kernel.org> <20210514101610.4392adbc@gandalf.local.home>
In-Reply-To: <20210514101610.4392adbc@gandalf.local.home>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 May 2021 13:19:24 -0700
Message-ID: <CAKwvOdmJfm+PKxjR-N=YfFcjrXi4N4xUiRCLbSNMNJ+5g_wX+g@mail.gmail.com>
Subject: Re: [PATCH] tracing: events_hist: avoid using excessive stack space
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	"Steven Rostedt (VMware)" <rostedt@godmis.org>, Tom Zanussi <zanussi@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Qiujun Huang <hqjagain@gmail.com>, Tom Rix <trix@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="L/qRdLEj";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, May 14, 2021 at 7:16 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Fri, 14 May 2021 16:04:25 +0200
> Arnd Bergmann <arnd@kernel.org> wrote:
>
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > In some configurations, clang produces a warning about an overly large
> > amount of stack space used in hist_trigger_print_key():
> >
> > kernel/trace/trace_events_hist.c:4594:13: error: stack frame size of 1248 bytes in function 'hist_trigger_print_key' [-Werror,-Wframe-larger-than=]
> > static void hist_trigger_print_key(struct seq_file *m,
> >
> > Moving the 'str' variable into a more local scope in the two places
> > where it gets used actually reduces the the used stack space here
> > and gets it below the warning limit, because the compiler can now
> > assume that it is safe to use the same stack slot that it has for
> > the stack of any inline function.
>
> Thanks Arnd for the nice explanation of the rationale for this change.
>
> But I still find it too subtle to my liking that we need to move the
> declaration like this (and duplicate it twice) for internal behavior of the
> compiler (where it can't figure out itself by the use cases if it can
> optimize the stack).

Under which configurations this warning was observed wasn't specified,
but I'd bet it's one of the sanitizers splitting this in two in order
to tell which branch may have overflowed the buffer.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmJfm%2BPKxjR-N%3DYfFcjrXi4N4xUiRCLbSNMNJ%2B5g_wX%2Bg%40mail.gmail.com.
