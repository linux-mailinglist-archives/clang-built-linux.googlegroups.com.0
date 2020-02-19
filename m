Return-Path: <clang-built-linux+bncBCU73AEHRQBBBCUPWXZAKGQERN7V2EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B5A164710
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 15:34:51 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id z79sf349847ilf.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 06:34:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582122890; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tnx8Ckh/kh4ct8DomkdebkkFsuqzCAEMxwhMnMAMoeJBWaA83r1fJH7QlA2yW9TCsM
         Es4s4MPV7k7JR8SCAS0eHbhw/fTesIa3D9HYEArfNsU7mYpQWF1ZdNX430yo4pgUibIh
         eWHEYIy8ikzdS29CKv0k0B/9t6lrO4l76cUH66GjanE5UxJfqtVHsDoumfsuidSP9N66
         t38vTpOGMq2W8BNJYYqWBYSihEnbE3iciBp2ph5EzCB/OUc/KrOg7v/JSd0UXhNvy30d
         9THpp5CffnEye8wuLJMWYVAkEp2Ruc+RFWQ/bwsZEFzBG9wgtIsVaGAnaqwpa2Dhh/Xs
         S7cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=qXD0k6HMueYhJqxDSxqHmbA0vKW3z6WYuMCReXjnn1g=;
        b=aLmdSp7KSAi2+Lg5mQ6UBxaBPmk4Nn9ICtJK7zieICWtusECVGBEmzjHSwiY2q7yEz
         gm/7OTaN5gY0sRyDJu9w76Eun0IXFWBz1QUvdseh9TSjc0Uquvnfcei7N40Y9zdhcNUi
         8iWtURCoYRlVZAbD3TfhpGWNW58xFiW1Wzj3CbAFcuAK81d/+KADX6SjTCnxQWRKS19C
         lZivsBuQp+hTekVJmCnAJai3JQuayKamvu+SYp3ntKHQo4gOO6nWkRM1fChfgbZCwAR9
         ffi3SRfbJ0ygYUrZcZYIJkmo9WzW9Dsl69O4EKaFeYF4hOteofuW56EigaL7KgKwXEaE
         hzbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=S/OJ=4H=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qXD0k6HMueYhJqxDSxqHmbA0vKW3z6WYuMCReXjnn1g=;
        b=oqQLJsHnxguIIciFqe7OzJP0VolfUPkpsLuE1z5miw2bphqZoNAne8LnnDA7ObxwDf
         tDnC+FLv9lEFQ8h2tpTAUOA1AF5wEBJZ8xbpqIFXaijtEB76RDch2SrAXglecsR72jBy
         wQtVwXQ+6Q+CFEaHKiDZZwH+pBXAZ8/iJo4OKDJu0oN/FnQmB4tc96QcpwzFFxoHTjAA
         umXYTUXXGNFqzDrgWqIvLfW2nR0vCs45ocmD0/qFlX2kqZf8qA/T3t5L1WX8fvvLlvaf
         3ybAk5Ks5UTd36Qpex0idyz+s2W2+xvpSfI4IyxeNuRE6L36hTP0yPpQQsmip9gPE0tP
         FdJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qXD0k6HMueYhJqxDSxqHmbA0vKW3z6WYuMCReXjnn1g=;
        b=ihKgRqhVhGbm4f17S9TnPlA1RXUED+ckDH3HFdVi72ku5v3ddRijfEniUxS9fkDY+W
         htyKen8K9JUMGnwg6up3S6I/4rRSmSrX6emcahUGQbQxzkx6qF5JZwA0IJwhDUz4j9WR
         kiYMuapGXNbL7B4hmHlIg8F6F/PBTf8lOswniGnRtLJCQgoIIaueWugU+SUt3Rhnq2Bi
         VhMIdqDMwvUSw57nAMb3lm05yJSsK9RDS9BSNswaxME+y+grlepz4ke8q1p/lwyo81MM
         h3HVSsyAEYO2al1Co4/AB2unyNQS3JKieLZGn+3m7SNlWYNUDXmoLaqxoznP5u/ecFCF
         M0dQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVseMuCuIul3kF6yFTGQZ6q3A57IAW7mvJiSr9E2m4/9yPJPXY9
	Dazft6cS1eDhC9+qN18wDU8=
X-Google-Smtp-Source: APXvYqzRPWviRo6ulr3p7Xm75iXquGzOB7LuWlixdMUcCsI0CGpLvhx9FxrkKzHKT94DkhCfCj0InQ==
X-Received: by 2002:a6b:c986:: with SMTP id z128mr20020182iof.8.1582122890683;
        Wed, 19 Feb 2020 06:34:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f13:: with SMTP id x19ls4190318ilj.0.gmail; Wed, 19
 Feb 2020 06:34:50 -0800 (PST)
X-Received: by 2002:a92:3a9b:: with SMTP id i27mr25803505ilf.39.1582122890269;
        Wed, 19 Feb 2020 06:34:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582122890; cv=none;
        d=google.com; s=arc-20160816;
        b=pQ56A2Z6VNfGerF0sEEnIUUnOapsgPPe5sj7Kpx+L3PMu6MR7HURHVbP8YwcRHYYlZ
         PgxEpR0sNHdxWJS9aDt4Kykf7dvx6zqHC/6qpXQZRWQpUkxnNkLhZq36ggcZ1GHf//IV
         fpg/KvfaWBzwURwqLQOsrE1AQXRdQHxDYB6EyhCl0+xaR1YCf2N5dz3DA4FFKaKB60QZ
         DTcDsyFa1MAkrWu/iDsTHx6MzCZ3PZ3FCwhxPC6iQOufCJfJNgU3mCOz81BdFyOB9f2G
         /95czBPZkvpN3BeZdhgtQBogSp2+AfqF5hv20KyThS5WdFSXHbCd6O4JAoTdoXTyGlQA
         ZmeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=eTF9F8zNNQbhvT+EbROCvJ0p/vw986o3UGS3Ku0X7sk=;
        b=nllambOhs32xSE/FwJQT0NF8hsiA44mMmdG8+ZjGsEibw91HhzFC6VYR+3QzIdQot+
         KCQhBOjStJbf2MKKITlyoA3fFByOFSasMnManLd7R0YUTSCpr4a/U/j8ypzxCsdA1y/e
         hOwm5A6CtXYpSBRXEAgvrGqtXbPy2haV+WVA6oKSVINGI1fsucwgF7dRmjVCkaI3nL0y
         Sp2RON+z637OLW6lstGU8DKahy+eujAl+l1XfOhL4M+Guos+hgeLxf4Wauo6fXnkjdxa
         QjF/1rHnSAtUj1+5uHG+7ihYhqXxod2mbmFjAooRiMkXWhII2uAlYlDBp9wNCu7zdzeN
         B2TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=S/OJ=4H=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b16si519ion.0.2020.02.19.06.34.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 06:34:50 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5D62C24656;
	Wed, 19 Feb 2020 14:34:47 +0000 (UTC)
Date: Wed, 19 Feb 2020 09:34:45 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek
 <michal.lkml@markovi.net>, Arnd Bergmann <arnd@arndb.de>, Ingo Molnar
 <mingo@redhat.com>, Jason Baron <jbaron@akamai.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-mm@kvack.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/6] tracing: Wrap section comparison in
 tracer_alloc_buffers with COMPARE_SECTIONS
Message-ID: <20200219093445.386f1c09@gandalf.local.home>
In-Reply-To: <20200219045423.54190-4-natechancellor@gmail.com>
References: <20200219045423.54190-1-natechancellor@gmail.com>
	<20200219045423.54190-4-natechancellor@gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=S/OJ=4H=goodmis.org=rostedt@kernel.org"
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

On Tue, 18 Feb 2020 21:54:20 -0700
Nathan Chancellor <natechancellor@gmail.com> wrote:

> Clang warns:
> 
> ../kernel/trace/trace.c:9335:33: warning: array comparison always
> evaluates to true [-Wtautological-compare]
>         if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
>                                        ^
> 1 warning generated.
> 
> These are not true arrays, they are linker defined symbols, which are
> just addresses so there is not a real issue here. Use the
> COMPARE_SECTIONS macro to silence this warning by casting the linker
> defined symbols to unsigned long, which keeps the logic the same.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/765
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  kernel/trace/trace.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> index c797a15a1fc7..e1f3b16e457b 100644
> --- a/kernel/trace/trace.c
> +++ b/kernel/trace/trace.c
> @@ -9332,7 +9332,7 @@ __init static int tracer_alloc_buffers(void)
>  		goto out_free_buffer_mask;
>  
>  	/* Only allocate trace_printk buffers if a trace_printk exists */
> -	if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
> +	if (COMPARE_SECTIONS(__stop___trace_bprintk_fmt, !=, __start___trace_bprintk_fmt))

Sorry, but this is really ugly and unreadable. Please find some other
solution to fix this.

NAK-by: Steven Rostedt

-- Steve

>  		/* Must be called before global_trace.buffer is allocated */
>  		trace_printk_init_buffers();
>  

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219093445.386f1c09%40gandalf.local.home.
