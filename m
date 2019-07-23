Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBCWN3PUQKGQEL2CJPMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C85671693
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 12:50:51 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id d14sf19122446vka.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 03:50:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563879050; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vv7K9sKqtxp1aEMcdiLpY1iJfQvLYXBRNZYn8Melq2QayKI+lovCMqOMSXI8o0DTt0
         8Ry4nmyOGYTx/Nq3/jBOpZys3kSawKsIhiqZxVK14qCND1fBMNRxpteXyv6D0NyDypdt
         TFsNFVjGv9SeZjnBCx7ZppFVqXbmfd0/d1tIzgJX05i3T1kRpri5asLhHbDif5oQ9QqR
         IweOHHRiZ3ED+P+0nnwGF1TYyyYhBVfcp4DPmFOi0/VjER63gMIo4BeP0ThzZap4BxLl
         nqWg+i/jjbSlLMud38qF9gru//DMLsLEJ87VXvyWJBT64QyUrMpl/kpBu4sroMnmw++5
         7YTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3CKLoCCqfLe6XJ6/cflIPpR4NjmTNWz1Id0TZj8ci2s=;
        b=R2kW6djAbtppr676HeJ3rw0KoacXDrAU64GGevBWwcQW/fCco3Ny05sXqxahpVWRsd
         7wBnXpcTnTGjV2ehJIGLcs6SoKsieDR+iILkFjx8D8ijkHdx0CicSTla41fuBWp4qsAM
         Rk6rt5e8nrNFysHpYC/W31dsWvYNw0+pA4tH8xDY3WEQzNCAWy028CFWtfoPHYdMPNW2
         jQxgfB9gEoSOm2kOspxiDYzFFwcshjAhQ/I1kENXDBi3d58LbmchCUF4vi1X6T6p47cC
         yZ57MgktUSiDYZfgoELOBpahMaq6b5Wmvr1+oMWY0LRuKVw1iA3870fb1gHtwBsjdDEL
         UhRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=F3dkwvek;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3CKLoCCqfLe6XJ6/cflIPpR4NjmTNWz1Id0TZj8ci2s=;
        b=MbMonXmisB3NKt6SCtGp0nM3MoaUks8FIkJaNu8kI02pRA8xGK7bv0NqMHjs9E6+uO
         u4G54cfhzP2OJmo8EANQca2tvoU867ySScESPrZ9Wbab0gfmjv0QNHg96felwSr8j6JV
         b8PiNgu7lBwLUChK8fgDBcjUc5qudy2tjQz0JDlJdG19+b2tf8ZoyXVVqF2CnyEhh/a5
         an34niSKRSY3XrbnCURVQSjjgEc9m4IZ7A+LO5hLKoKZmGYM3b+BoJInfYFlDWeG6HQe
         vMWQoE3ZmBZhyNXXzmTm3NQNvvMYtqdvbbKRyYW3T1wkTz0NyDpu1g/413rTMAWMI8Kv
         bOmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3CKLoCCqfLe6XJ6/cflIPpR4NjmTNWz1Id0TZj8ci2s=;
        b=jCWaKBOcqs0ktsRwyZqveZODvXhMJqptTDadlDZMypGBbPskAmlHgk+3tkF20A4EQD
         ire2pO/2RDm9vk1+DVfNCAqMyCvRCrKt1r/9L4yA8Ax6O6KP0vOeOkB85X711AaV7IhT
         HaubFiFzDud++jwYvKVuNSAXnj0XqF69HsapCnNscIcwH0QFVFqpchbgv6Je7VxBMraV
         347JzUUNIoBwkyzzJjtlZKuNLJiojpR4ZivMI2jJBzBqIOOGvQLpT6qCmcuHN/6sPDN5
         WIxPRigqk6IpG8ewr+asJsJHjRUCjuOm419vxn1D9fBUm91hV7GpKsyAQUzHpx2hFTt9
         3JjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWIrsh1UKgk+lpsH/zc/xhhUTLFWu/G8zFHouh2eW6M09eUKxQp
	6kVMGmKTrju1dPi+5OL0CnM=
X-Google-Smtp-Source: APXvYqzXVRHpYujsz6I6bvqmE47+HwhhF2RJLURV1qAce8q7TGqSpnv+YzKTYGwaM2csaDoS482Ldw==
X-Received: by 2002:a9f:3208:: with SMTP id x8mr2384206uad.49.1563879050203;
        Tue, 23 Jul 2019 03:50:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:31f3:: with SMTP id w48ls3108995uad.12.gmail; Tue, 23
 Jul 2019 03:50:49 -0700 (PDT)
X-Received: by 2002:ab0:6788:: with SMTP id v8mr2076791uar.48.1563879049928;
        Tue, 23 Jul 2019 03:50:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563879049; cv=none;
        d=google.com; s=arc-20160816;
        b=jnoUdFCg4ADrhY7hpeOdhrGART0HYmmYiTjgOubHLLLAWWqX96SSR/J5R8G1o0iz+W
         iJYAF9vYfERY5gTaXry4njH+aND4L8mTISbSNrUpZR782QAxrguhLaAPzLPb/xw0Sh1k
         QsDD1YYLy+LF1Dp0SZxugtdfLU/DU6KcXmbY8ywkP3giZAwbmti0kTYHBYwexp5Kt8py
         X7IdzSQIzN3zlMj9dOdSY/byBrJ2cNtU2v3c6iRkfE4Hl5PldB9YtDYU8YpyB7IrN/iI
         WLbywmIBTg6nQeQCsVV8qkH4HyHxWo0ze8Cf73VaMjz3iVHS63DDwoAH+AxO+Er6sOqV
         9uuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=r8pKJvTBYjQmA6xTW4SL+CVHf8xD1EdzIVVKROq07g0=;
        b=zZ/XoTAobeJH2kGSG01WdEpXp2gnw3/CBdrrnJDLSqA9RNwePcgKcXI3kF3+PyHgDu
         EcC9PlYc3ysaeNqOIPJ/WX1Z5XGL9jgjzi4FTDiJlvSvjsfMSdw0j6SX2v/B1uy7YqvR
         qrb+tCPwF3uZPd5Zq0zRZCw4dzXM3cqgDZxEHz5qkVgcP741WnNxQ9gLd7JyvbuOFIia
         WUBKYWUhUKCjEhkzr3zuMa/j6cRuU2i3b/ajmwKuj8ojBbtjZO5/DpmWgS3YjSl18ys+
         X2Z3XJK7l+ueWRIvZiI/8daSRWdd9ciPsIrCFIPJvcy7+LlKRCzG1s41muy6BBzZU/mz
         VVfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=F3dkwvek;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id b15si1575856uap.1.2019.07.23.03.50.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 23 Jul 2019 03:50:49 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=hirez.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsNb-0003mE-QQ; Tue, 23 Jul 2019 10:50:47 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 3E6B2201A9429; Tue, 23 Jul 2019 12:50:46 +0200 (CEST)
Date: Tue, 23 Jul 2019 12:50:46 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Ingo Molnar <mingo@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] waitqueue: shut up clang -Wuninitialized warnings
Message-ID: <20190723105046.GD3402@hirez.programming.kicks-ass.net>
References: <20190719113638.4189771-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190719113638.4189771-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=F3dkwvek;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Fri, Jul 19, 2019 at 01:36:00PM +0200, Arnd Bergmann wrote:
> When CONFIG_LOCKDEP is set, every use of DECLARE_WAIT_QUEUE_HEAD_ONSTACK()
> produces an bogus warning from clang, which is particularly annoying
> for allmodconfig builds:
> 
> fs/namei.c:1646:34: error: variable 'wq' is uninitialized when used within its own initialization [-Werror,-Wuninitialized]
>         DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
>                                         ^~
> include/linux/wait.h:74:63: note: expanded from macro 'DECLARE_WAIT_QUEUE_HEAD_ONSTACK'
>         struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
>                                ~~~~                                  ^~~~
> include/linux/wait.h:72:33: note: expanded from macro '__WAIT_QUEUE_HEAD_INIT_ONSTACK'
>         ({ init_waitqueue_head(&name); name; })
>                                        ^~~~
> 
> A patch for clang has already been proposed and should soon be
> merged for clang-9, but for now all clang versions produce the
> warning in an otherwise (almost) clean allmodconfig build.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=31829
> Link: https://bugs.llvm.org/show_bug.cgi?id=42604
> Link: https://lore.kernel.org/lkml/20190703081119.209976-1-arnd@arndb.de/
> Link: https://reviews.llvm.org/D64678
> Link: https://storage.kernelci.org/next/master/next-20190717/arm64/allmodconfig/clang-8/build-warnings.log
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> v2: given that kernelci is getting close to reporting a clean build for
>     clang, I'm trying again with a less invasive approach after my
>     first version was not too popular.
> ---
>  include/linux/wait.h | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/wait.h b/include/linux/wait.h
> index ddb959641709..276499ae1a3e 100644
> --- a/include/linux/wait.h
> +++ b/include/linux/wait.h
> @@ -70,8 +70,17 @@ extern void __init_waitqueue_head(struct wait_queue_head *wq_head, const char *n
>  #ifdef CONFIG_LOCKDEP
>  # define __WAIT_QUEUE_HEAD_INIT_ONSTACK(name) \
>  	({ init_waitqueue_head(&name); name; })
> -# define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
> +# if defined(__clang__) && __clang_major__ <= 9
> +/* work around https://bugs.llvm.org/show_bug.cgi?id=42604 */
> +#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name)					\
> +	_Pragma("clang diagnostic push")					\
> +	_Pragma("clang diagnostic ignored \"-Wuninitialized\"")			\
> +	struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)	\
> +	_Pragma("clang diagnostic pop")
> +# else
> +#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
>  	struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
> +# endif

While this is indeed much better than before; do we really want to do
this? That is, since clang-9 release will not need this, we're basically
doing the above for pre-release compilers only.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190723105046.GD3402%40hirez.programming.kicks-ass.net.
