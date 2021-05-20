Return-Path: <clang-built-linux+bncBCT4XGV33UIBBP5STOCQMGQELD646TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3186638B92D
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 23:48:49 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id f7-20020a9d5e870000b02902f479dba730sf11701603otl.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 14:48:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621547328; cv=pass;
        d=google.com; s=arc-20160816;
        b=xmprjjRQ6tT372ermDgi68WHSnES4OUSMPQ9Xg7XKR2dtbAT8UbklVKZ8SYYw0N4p9
         tmQ6R9VapxdgwhY+IMwZmh0VmG5Z/pDr1u1SwDh8fMGPt35UVFXnKqfVoazPfKKSreRl
         BQhR8OkVTv0W00Qs7UBcbUNKBO0sPimth+WcHs+NGgbRKRUe6hXAaymcfMVw1mCerxKt
         XQHakTNy9i8rRff2t8iAaNaMhCLC4ZJGBx6XnF2OJvQTQwDezYEkONMECJgfyKvvNiwz
         xNnz2vA1wlY8Gxe8+8JG9G0YQ5ef2CB5TMjR/PngORsV/Jg34n1XlLqY4cSvKI02jY90
         okDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=DKCblFybux+enD3rspRoZYaD6FNZW9WIT0Hk5uVraZI=;
        b=Gqewl5gRcNcUoQV9PCidc9TrpQkr0qEskgI/WEnxeQOqmMBbklZiAS9jTWwSroiTls
         OspN0pV9slA3HQoYbbMxdp/mSaXPAiEHuRNjNomKilkUAPR/MmP+e03V9dziFcgo7GsV
         ia5my5WSvhUwSWWlo/zzWZKbAIF++qqfIlz7az7Bs/knrdU+NChHIB5q8a6lU8rOz9JA
         kiIh/UtXfewN34FLFdXMJIr8BjayGvSBnWkV/5AAmqrQmXKuRVnVSlfRMQ7cEUz9v0Jp
         49o3ZuPUKzAiM/fp5W2x2exn3ovv91SNrZtqjky/WqzKhZYfqAgAzZYFSqPB9DfAwddi
         nU6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=WjJdBLSX;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKCblFybux+enD3rspRoZYaD6FNZW9WIT0Hk5uVraZI=;
        b=kKaiIThMCOlIivMcWfwrD29rOAJo9S6SgRoHBLGOpYUgC9ISjF5sLOg6wRqSmWSqYP
         yQthk51Me96WD/gU3RPQBxDXm3Tfi8jQs84UPQXh3iAXingc7yJIpElmrVIrfKecRtNo
         Yf07Q+jF628+81coXKTAvCSyPWioMjxNdEpBUI1ybZqrOGXk7ouUtFGAALqZOVAw6ZgD
         N8rEeqE15RH/8g+vX6z0kSycyF6utnsCtcOLFs4ZoEQ5K3ryQJKREBVLRjJWxXQoSkVv
         Qbop2MJ7ys/6ho996YJArOKoBD2hbspwOIvXgvR8BfzHat9OU+Nks2rkETYqirK0H+yR
         dbuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKCblFybux+enD3rspRoZYaD6FNZW9WIT0Hk5uVraZI=;
        b=tZZb1yO3IBohI8s6YGwjx5ntcczyM2lPiKcY8BBY7TIzPwgQ+WMdl/ZP/yBBAoIs5X
         mZYngu0qpOjsNGp1JiAsOxBJ30k0nWPL8oATnJ1qcOQ6W1RtaUmee6yW6PkHfLonf/lp
         +4XYAyS9Gp+LzkghORUfTMiUq5DUFp7+RUUeAYdi0Jrh+wShRvgn93ZttokpFbg05PiO
         AFnLRX0A2OJ2JSO+lTCT5784ceScMCJfRi0NJ900H5esJklBP2w9c2ccivcP3pKdGbID
         P5JMPfv+9P6h05SWvndV1UMVElpsjHcapmi9dwu0pMeqAXDKsMUQrPNm026U0nmga5RT
         m3Nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FTYMCivskGt7u4h3uijsVGuymP2I0TbV/jwii0O5OML7l0geB
	JDtRa2sj3vvqnwSpeDDfrus=
X-Google-Smtp-Source: ABdhPJxnZPsNQQk5AVAoYLEYOcVeEfh93fhwNTSGHxeS6GYNIKaJoSJQ5Nh8ZRfFQhUksNBetT0WNQ==
X-Received: by 2002:a9d:630e:: with SMTP id q14mr5434959otk.69.1621547327883;
        Thu, 20 May 2021 14:48:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:68ca:: with SMTP id i10ls1307084oto.8.gmail; Thu, 20 May
 2021 14:48:47 -0700 (PDT)
X-Received: by 2002:a05:6830:790:: with SMTP id w16mr3407839ots.209.1621547327459;
        Thu, 20 May 2021 14:48:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621547327; cv=none;
        d=google.com; s=arc-20160816;
        b=Vtmz2DUdxQPdj/JA0hJMSkWYQZdgcYfREXjgUO4yGT0HdQGTs83vCL5EKHkQsyQQui
         At32jcevOzHV3wikaZO57mzJZpmLf3FhZezxLjQzqrKywO1wMOauCT+HcYlKgQt1HVDq
         OEKJxW9IrHtp51LvCWQcUyP5RWCGqa7L+ATQ8JH6709mAfB6c9shafTOY7j2fbCROAvT
         NJTQz9EwUUGd7IJqEjAI37Um8cSDOTEJNZg2paG9WkJ4I77wTV6oqUnDgGSklE0yjqdK
         LoOlaWk0SoivNzO/rEWwacP3Ox4IrSZxTb83tKFYlO0o/EqumJOE1rW9/WLFjAxe/1Zh
         XnQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8OcOemnp8JGfhuYCqOjDuoK7Q1Mp8Qvqc/R1CHMHg6E=;
        b=LsNktjwsF8G4hXG5ltYfpfCBm1GuOCK6P7zkTZcakb6xuGm5h1UfiAvkOuByaHGNBo
         phzSm9vJheC/Vp2PzETbPwR/0IFvNBXAgke5M2BC7j1InwlrfyCsNnrV9Mv64evfWRxU
         bumd9biWdK+ou0pTHWSI0p4cBZrBKJXHE9HDfASx+8WJjo+J7y6D7lgT/+KBlISE7QmV
         xf0lVWa683Z81wzBNFp3bMJCcX9RjKtZvjDYo3echVOnA18PqKFgY/bSKHjkQpnmoCMe
         7mqFf39kuyjemzfQi6OHrIc/X6zqfJX88H8WLGlv9qD2AORoBN06fvd3is1yOpNmlG0g
         SbSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=WjJdBLSX;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si423992oot.1.2021.05.20.14.48.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 14:48:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 11FF26135C;
	Thu, 20 May 2021 21:48:46 +0000 (UTC)
Date: Thu, 20 May 2021 14:48:45 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Martin Liu <liumartin@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Petr Mladek <pmladek@suse.com>, Tejun Heo
 <tj@kernel.org>, minchan@google.com, www@google.com, davidchao@google.com,
 jenhaochen@google.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kthread: Fix kthread_mod_delayed_work vs
 kthread_cancel_delayed_work_sync race
Message-Id: <20210520144845.52755f3af700a902e07e2ee7@linux-foundation.org>
In-Reply-To: <20210513065458.941403-1-liumartin@google.com>
References: <20210513065458.941403-1-liumartin@google.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=WjJdBLSX;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Thu, 13 May 2021 14:54:57 +0800 Martin Liu <liumartin@google.com> wrote:

> We encountered a system hang issue while doing the tests. The callstack
> is as following
>
> ...
>
> Fixes: 37be45d49dec2 ("kthread: allow to cancel kthread work")

Thanks.  I added a cc:stable to this and shall hold it in -mm for a
couple of weeks to get exposure and testing before sending it to Linus
for 5.13.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210520144845.52755f3af700a902e07e2ee7%40linux-foundation.org.
