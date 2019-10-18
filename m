Return-Path: <clang-built-linux+bncBCU73AEHRQBBBRHAU7WQKGQESZUELXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C34DCC25
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:03:01 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id p10sf1627887vsn.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:03:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571418181; cv=pass;
        d=google.com; s=arc-20160816;
        b=net8J4BbEwL3yjKJ33PiBupml+Yk7Ha0iUvokCGLUlZjH+w0CRwQ30UZK9phJueUJu
         j7DG+s6M3HnjKTOMXe5lFmK7DNp0lIllq1DBz/4HkKg863We9XzvPjzfeJOKx8z1Ma9q
         ZCMcFafpzY5lG0T+kk8PwnBKpEax3k0zja3roUN7OqfB6G4ac6LMYLMvC9yylZDv57bI
         5axw6J1ovxnFDSxFGYm87c9kWcJZGpYdlzWq1ivOwDTkqOcWYWJd/z5SaaiQ6ckJt0dF
         ALEFBOVl+uTpVvOWggk8/osFvI5qCNfKT/iVvww17xBB4Vle8hYnBOzN64ESWEUCZ0sJ
         YJow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1DCQVYjQpTiPSgTQD+J25erURjLj8HPiq/Maj12by3U=;
        b=FS6WV041WfZDhUcz1agTVNeXt79WlZZ3htYZmHy5/xdVgkEvp33kZS4F3M+KDtx31R
         mX9VJu4NjWdGDquPgMmUOQKZSLvMqEoAl+1KgUyNJlmNiJtN6nOxjo+Jvq78q0+qI9Hv
         VAQMSFW7s+5pgfW4K8f3R+zJmA6gGZSDQQeChBSDOnB2AqcFfMnOODesr+L4gKJU+kNM
         7t0F92L3RLWyN7/eg/PabraCmLmqVM6ueflEUBeYVtEfeD5EhPsoS+Ch8JQXGGPEvRU4
         BIAn3qFkRfGG4LNYw8xPKMW6CMmd7tdU5i+n2gcHo9GBwwpq7atN82gtx3gkbpdN2nGy
         IZcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=7xBn=YL=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1DCQVYjQpTiPSgTQD+J25erURjLj8HPiq/Maj12by3U=;
        b=sS+1ufNgxRpR5jItTUOmEFgSwTEztsRfn2zSqg7Y5W2BORYbC5Ms0vBanunfl7ygvU
         3Uo3iz8hgE5s1fl5u5ejdmgtz6TOJOYCY1Hj+TM7QU0LuriVG7BZBLaKqwBWY2OVXhBO
         R1MiXzRPpH++IUaKt76W3MsL+kaqW/GRirNpAEKFFFzH8Cul0jHsUs+tFM3ln6Bwma4Y
         7t1hr4xky33/tZZv1WO+px+EWHnRgc7RKetDksgWSuJtJ/bNQfjSxf30CDUu3dGSlwQt
         eY1U62SQ8xwCjrOqBXI/gd5pc3AywP9jG0/Uh0dTAd6l2+ucyJYlFZyUk3utaPLA0JcN
         twfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1DCQVYjQpTiPSgTQD+J25erURjLj8HPiq/Maj12by3U=;
        b=tzKAHzraT3NDqvwz8QaESYGjWyMAh/1DLDS291NZFZS1fwRIaXiw5qwv5eb1OzLjmG
         GgiKPLk1kUJp2Bwhl3ckDEHaMls8ITdRkOEfQxaWDrNWT2UEZWrem37xmi8q5AX8zlKc
         pCQEzDoDI2ohflghmcK99N3iNGXT7CHFgoiPXx0+QjEgU3G6Mv7iXZR6ITvPA0nHZ71U
         u1MgPSWWpf8sbntQGhnmFA5IC2VLhmqZvzItXQymtuGqrRIUKZDuiLOUhsULcjhBsnfC
         kjhkl0CNwnBtsv5FSEWIxZReQ8doPCKcevEYMd87+QDbnBkk+zoTXsn5lu+ZdubAl9/y
         s2tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX8jHYypj7A+nAtMJEJP/k/NNZC2D9g8QQ+aBG1n1FVyRRmE/jX
	+GfWkkycpsC1Xal4uZOJctA=
X-Google-Smtp-Source: APXvYqySdsvYwghOyVks8pzDC43cJ/vKWJed+Kiabi3Cz1/gKkASePuPupJJPtG5jUkSaG8NQuCpvw==
X-Received: by 2002:a67:e1d3:: with SMTP id p19mr6127967vsl.212.1571418180902;
        Fri, 18 Oct 2019 10:03:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f916:: with SMTP id t22ls661239vsq.12.gmail; Fri, 18 Oct
 2019 10:03:00 -0700 (PDT)
X-Received: by 2002:a67:f799:: with SMTP id j25mr6347038vso.116.1571418180562;
        Fri, 18 Oct 2019 10:03:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571418180; cv=none;
        d=google.com; s=arc-20160816;
        b=pXiQFprkv1DD8EHUqeUEYTcKpIqkDQnVx/mJcwpZYBI+RimdITzTCXmHfwS0vp3fYt
         6T2pP1LYKE47l6apmhsiZRIaQocjpo09tT/zrXWOlEXiuFxsKOHigq7703jr9DefX1gm
         NOzKj2KN3SNYuDBqceL+AmvjNGrKrsD2rbLEmF6J2nClytBBENyzhFR/KoLq20UGz4Ds
         RCD/idnhZMyNP67A/5+viXi4mlwMrj0Y+wEZtdWg4eAp7FP7tQC4TtIpiq4X1gY9ZahN
         ceqEmFozo7hg4ePtDc8kiazjJ48DYL8lJVYuVp0B/7XCjzBU8SzeL/M8m4Mp8Mj1xp1B
         VzPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=OKq/04oZbGmlloN8Rgb91MocPeH++0Rb5aUEgr475cg=;
        b=n3MlAu3tMYCt86/ka0IvUl+tW0RXigzyTbTJBLzRM0qwgm2ScpZVWx+HX3grG3G3Dp
         JYcHBYbvawU4T6O17s6Ef6lZJPtDF8kIvQ5d+QZ7MJb7PEm5Cp6scEEDQvezLF7MZ7Rl
         sOHOd3Mvc3jkHlfRd+iFjjpY9L4dwht3MA8RdYqlfcAiTT1dL3zwwDSRU9ISLpmqTLRz
         ulc+0O0QWTZoLAOLWmc/MvswkNBdu1jsQcl5cw1V2hxM6Fg4nvEFwv9bV+KVvV6LEmgW
         5uJKtunI2g+h0pSh+CoQn7qU5vG9ZR23gOegvJyKRCwMrjAZKRufyuqIVC+/sBwxTT+0
         Olrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=7xBn=YL=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u206si305662vke.2.2019.10.18.10.03.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:03:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 819952064A;
	Fri, 18 Oct 2019 17:02:58 +0000 (UTC)
Date: Fri, 18 Oct 2019 13:02:57 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave
 Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 10/18] kprobes: fix compilation without
 CONFIG_KRETPROBES
Message-ID: <20191018130257.3376e397@gandalf.local.home>
In-Reply-To: <20191018161033.261971-11-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191018161033.261971-11-samitolvanen@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=7xBn=YL=goodmis.org=rostedt@kernel.org"
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


Added Masami who's the maintainer of kprobes.

-- Steve


On Fri, 18 Oct 2019 09:10:25 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
> even if CONFIG_KRETPROBES is not selected.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  kernel/kprobes.c | 38 +++++++++++++++++++-------------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 53534aa258a6..b5e20a4669b8 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -1829,6 +1829,25 @@ unsigned long __weak arch_deref_entry_point(void *entry)
>  	return (unsigned long)entry;
>  }
>  
> +bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> +{
> +	return !offset;
> +}
> +
> +bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> +{
> +	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> +
> +	if (IS_ERR(kp_addr))
> +		return false;
> +
> +	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> +						!arch_kprobe_on_func_entry(offset))
> +		return false;
> +
> +	return true;
> +}
> +
>  #ifdef CONFIG_KRETPROBES
>  /*
>   * This kprobe pre_handler is registered with every kretprobe. When probe
> @@ -1885,25 +1904,6 @@ static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
>  }
>  NOKPROBE_SYMBOL(pre_handler_kretprobe);
>  
> -bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> -{
> -	return !offset;
> -}
> -
> -bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> -{
> -	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> -
> -	if (IS_ERR(kp_addr))
> -		return false;
> -
> -	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> -						!arch_kprobe_on_func_entry(offset))
> -		return false;
> -
> -	return true;
> -}
> -
>  int register_kretprobe(struct kretprobe *rp)
>  {
>  	int ret = 0;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018130257.3376e397%40gandalf.local.home.
