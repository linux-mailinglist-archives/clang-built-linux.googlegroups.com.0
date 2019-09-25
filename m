Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW6NV3WAKGQE4REYFYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AFABE387
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 19:41:48 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id m45sf54996uae.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 10:41:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569433307; cv=pass;
        d=google.com; s=arc-20160816;
        b=K8oQTz5dkyX9V6K3eCeaLvi0F0FiIFDYj88KNHQT35nvKp/KeuOiflfBcOaFUuoLb+
         tCmSk/rNRK5Q/yrgyGqcHxvoEteEQtlc18BRBKd2IQjfKaj8vNwuc08+3W86AzYUCkc2
         ozbeNOOWrxBXWWpEZ6lXp4OBQkvH+3Xte343GBLt2CozTtip+jtiiNWr/XsIbEdJSMo3
         lndwmvUxAHXOHAE2/gkTDtnWZFj4Qc32tmBXcLRkE/DjsrrfDDgk3MDDPutmQCPBEMw+
         Stt4DVw6/DK2SL3s771YKkz273icMLIh7Ilp/s5T4ewCo68OZpGgToHMlKu3OKrf4dzY
         AXKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=V685QvMRlyIxijW6oHN/tqQVG4joCmzC9yb30UNdq3g=;
        b=VICiLRQT/GtkBKbpD4NJ/CgvP2avuy4NmO9UqCTE/vsxYqRUOIKp6vWtVETqpuZkrN
         QLXrJLhNQ42F0AsErAe0NCq29fjmfm/xIqSetaaH1uJQd2QSxXeIrS4zEsuJLGLNCMQ5
         d3D5SMC9z1Ewz+HhYgI/z3CuaZkYewmdljmS3vh3ylfwdBFOYDgyN54cTyUPpBsggXOD
         rycDJAq4oapihDXr5MjnQ42SGtBXr0mAFIqbcy+MJwxC45bcBWVV3yMjnn9LYbDAQZ36
         q8QEcILnYigisrniPr6Lvv+sI2gvKeCTpZ5GbZffV40ey/zsPAKd7oM3Yzgm3UQWz/pH
         Ax8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xrv8KSG+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V685QvMRlyIxijW6oHN/tqQVG4joCmzC9yb30UNdq3g=;
        b=tG1SWLi5YtDe75JDTYrIVF9mYHSlqovOQBj85wCW0Lcnt0XXE1EU1NP5xQ0SLEiZ4i
         kQAJ0eKUJFYNo+Z4369hJcPCaSqG8pc5OfWdIt1na+xsagKG5c/fFKOUyN45sFu8tC/K
         HvW7obxPUsVR+xw4emTA1kUFljeXBKc9rHs4L+lu5yDPopZtz/TS09lbTsmxTZSrdwdG
         DHuMBs1BBtkc/dEPz3YuCVjvrRrW8d0nv03WSuPt2nqhK4kAeEtlRGTLH9zV5AoHgXL5
         1JgkLCgnex35irCr9aNUIydwrx+VFQu7U3byyRzCl/BRdBodCHHqjH2IIfvsEtSfkjYG
         EA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V685QvMRlyIxijW6oHN/tqQVG4joCmzC9yb30UNdq3g=;
        b=OIhgQ5jROyfyCOMgcI4P5nygKVeirvcEbIlhW8VvmC5hkr7v2qPmucKTp70l4AprNA
         qAjrHVskqpgA8ScaTdGbptu+0I1Aw5uzdreSmFtPeN9igjJtctYDbe2O4ey5YyEPvcKV
         OfEaOgaQWYGEfQug8l2JhuinBQirVkrejkTC3Vw8lgfAntLfBli83zehtKZb20rlcDBZ
         8GBlURpHf59lBuhiJ40mOlVbo8PSsjrdmE//vWGNG18tZPxjyKM6bNYQLV3ib406HF24
         vxWUvEbMRdL6XDM4nBUyl0/B3ZWgMXcgvJaso76sBk9bHa3MNpotmAQHkoi+2zvt/sH/
         ieMA==
X-Gm-Message-State: APjAAAU4yqwpAxfdHz0kdZX5VBSKpv+qJdfjqzWRQr6kwZJQUxP7bCBp
	gZf40bZAhllvemi661DxSQQ=
X-Google-Smtp-Source: APXvYqyk550qmwKBSEMJxEbUkdbOsdpYsIpB4Vffqws4tdIGaodY27jEVAXHdJMtsN9f1WdaVIR9tg==
X-Received: by 2002:ab0:240f:: with SMTP id f15mr235010uan.103.1569433307486;
        Wed, 25 Sep 2019 10:41:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:efd2:: with SMTP id s18ls682131vsp.6.gmail; Wed, 25 Sep
 2019 10:41:47 -0700 (PDT)
X-Received: by 2002:a67:c018:: with SMTP id v24mr5143979vsi.23.1569433307212;
        Wed, 25 Sep 2019 10:41:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569433307; cv=none;
        d=google.com; s=arc-20160816;
        b=K7yP7Ndz7hTtSAl0rXlaj49qtcPu0r/UGPp5QkPdQf7AUuOH9ZJFKKAYDbYxVPaNOG
         nvQStEBKs5BK6/7urfvH3JsTJmSGK37tuMN0Kby0JgEzrbVeBIy4F51LMPdfNPr7a35l
         ryJg7JJkBKFWJFZiCvHisYACJPI/YGINaGnOcz3fxrAQVNx5elDRJedHJThk77LRQiRX
         1tQwgcB8sp1AgXEHcroxA+YTi8dW7iryyiJnJT9UrVUbKKri0lZn6PfCFO2qJSSl1ZuF
         L/jvhly9GYj1PbiyCs5HaNbqnZ3YDbwjI55zuW6u4rZFtdLlhy3zyoq2wGme+VwK3mfn
         YBwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1CTVsYgoIpsmY3rHqOtuzts6AZf4hXcs595qDdhE4QU=;
        b=laGbzMWqmASaEmlk7Hdou+yDJ2f5YizPzwgYmcqOwpzcf5TKEe+VkDmiXJO11u62TP
         tSDlGX02dsjyACgGVd1Dw32izWTeoyu76I7NCV8dzM73YuIDpmcMPKdih+74R3SBzuIq
         LYXrvFpKQU7ZPSbwlRMvSgLlbNdZy0uKGoypkn4+jJKS+oMexcDPABZzreFQ7nlEWHBM
         3V9gjBIKj/8cHe0abs68ZyU5ocmMU1dBFtf9ZAU6gY7N6qWGmpxiLjQ05whFTs7vfwQg
         qyxrZCBKqveRXZmIB5lAl79wg6S1UTjuv+CzgEUWoTWHYF940TO6T4QW9WvJOwpaJRWh
         NxhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xrv8KSG+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id u206si135749vke.2.2019.09.25.10.41.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 10:41:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id u12so2798267pls.12
        for <clang-built-linux@googlegroups.com>; Wed, 25 Sep 2019 10:41:47 -0700 (PDT)
X-Received: by 2002:a17:902:8484:: with SMTP id c4mr10189391plo.223.1569433305873;
 Wed, 25 Sep 2019 10:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190925172915.576755-1-natechancellor@gmail.com>
In-Reply-To: <20190925172915.576755-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Sep 2019 10:41:34 -0700
Message-ID: <CAKwvOdmO255nWf2PrfJ54X95ShNbYPf0FK2x=f57LmzOrCmJug@mail.gmail.com>
Subject: Re: [PATCH] tracing: Fix clang -Wint-in-bool-context warnings in
 IF_ASSIGN macro
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	David Bolvansky <david.bolvansky@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xrv8KSG+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Wed, Sep 25, 2019 at 10:29 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> After r372664 in clang, the IF_ASSIGN macro causes a couple hundred
> warnings along the lines of:
>
> kernel/trace/trace_output.c:1331:2: warning: converting the enum
> constant to a boolean [-Wint-in-bool-context]
> kernel/trace/trace.h:409:3: note: expanded from macro
> 'trace_assign_type'
>                 IF_ASSIGN(var, ent, struct ftrace_graph_ret_entry,
>                 ^
> kernel/trace/trace.h:371:14: note: expanded from macro 'IF_ASSIGN'
>                 WARN_ON(id && (entry)->type != id);     \
>                            ^
> 264 warnings generated.
>
> Add the implicit '!= 0' to the WARN_ON statement to fix the warnings.
>
> Link: https://github.com/llvm/llvm-project/commit/28b38c277a2941e9e891b2db30652cfd962f070b
> Link: https://github.com/ClangBuiltLinux/linux/issues/686
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

I can't think of a case that this warning is a bug (maybe David can
explain more), but seems like a small fix that can stop a big spew of
warnings, and IIUC this is the lone instance we see in the kernel.  In
that case, I prefer a tiny change to outright disabling the warning in
case it does find interesting cases later.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  kernel/trace/trace.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/kernel/trace/trace.h b/kernel/trace/trace.h
> index 26b0a08f3c7d..f801d154ff6a 100644
> --- a/kernel/trace/trace.h
> +++ b/kernel/trace/trace.h
> @@ -365,11 +365,11 @@ static inline struct trace_array *top_trace_array(void)
>         __builtin_types_compatible_p(typeof(var), type *)
>
>  #undef IF_ASSIGN
> -#define IF_ASSIGN(var, entry, etype, id)               \
> -       if (FTRACE_CMP_TYPE(var, etype)) {              \
> -               var = (typeof(var))(entry);             \
> -               WARN_ON(id && (entry)->type != id);     \
> -               break;                                  \
> +#define IF_ASSIGN(var, entry, etype, id)                       \
> +       if (FTRACE_CMP_TYPE(var, etype)) {                      \
> +               var = (typeof(var))(entry);                     \
> +               WARN_ON(id != 0 && (entry)->type != id);        \
> +               break;                                          \
>         }
>
>  /* Will cause compile errors if type is not found. */
> --
> 2.23.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmO255nWf2PrfJ54X95ShNbYPf0FK2x%3Df57LmzOrCmJug%40mail.gmail.com.
