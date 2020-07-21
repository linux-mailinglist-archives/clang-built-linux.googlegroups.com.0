Return-Path: <clang-built-linux+bncBCILLLGERUHBB3OX3X4AKGQEW6PYDSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EA6228BE9
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 00:27:59 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id h5sf134606pgq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 15:27:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595370477; cv=pass;
        d=google.com; s=arc-20160816;
        b=kSZsevMZG5qHO0jZv2fPIjbx+1S9vnoXV293IwNTFgQUUZuzapapqTUwi1UjzgW1Dm
         Pw+XLE3OtuYa0DI9N5CQGrccM6tZLCoOxqmGVXN/ZFRC+VohsXGP9ksN9/FKAkSqtANJ
         v41MFoece0PAitOdsDQ3Xb2643k04anivJXGyYKR6hmxj8adYJLml+vXMZx1Bc63lWZD
         LaT8hO5W/Vv4/tps/ItdMB3CjAQeS3zrHGqLjYjwF2rkH/pYUBmIbISdtzSjwHxEK76c
         F72Hutt7EbzxUwQh/tzvK53oVC+LoJpg2r1hJi0jR0kHiMlpu6VEKPFtA/BOHectmTDX
         Iw7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YC5yd0JUzIrLVkQU7mV1jJXE4FXL4cEx+5A81P9Plfk=;
        b=Out8fnOujYyBKl3S2MsUlxeIBlYJoI+qX/zxfVHKOQ3XfdF40qSUZgXj1Fd+GX+hwN
         KqNfOtlC8Nk9d3RLXZ4ji+W+r7N1eR52/hXGWoh5vcKv4HdZWQPNj+/GClHU8HZXsyYs
         2VwRS3dRZQQ7RjvJ9yqg1xcKfNAv5THTwQaook6/9253GXneMtGQODGyPaLe5jy6zlAc
         w/LBrbcECg0bTrfoBYUJKX21JLbFcsDFI5qjOxqh7JCG7vE95hcBYMVwnOtaKnAt5/aZ
         Ix5mQ7YuEdhleY/ErI/2SSZLLpnZkhqs/7sZoPF1ocq6yVO7EdKKrp/1a4pIcE42Bq8V
         9oIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.217.67 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YC5yd0JUzIrLVkQU7mV1jJXE4FXL4cEx+5A81P9Plfk=;
        b=K++TTNdxAsmMan/rzcsV49rr3geVtIQCF0I/lzDsXvYxVc2khSrP3K3sIZHfAPX4qz
         mSOqhwQMdjP0ajOOzAM0jWHV2S6jCHpLvULbv5sVWIWCuc4rViWz+LTnHCrMIprcpZte
         2Q0FR01LJYjT1G5rnDwJWV/3gocCLyFKApENVzWKZPFu5Sk0V9p+CyGApeaPv/LRFjAJ
         l7IzY8HCz0QRGIUJGHG5JghZr4QkHcrMi0VNCe5DIU3TSSkHIilD4xxEk4V8/mc0VeSE
         JEYv9z2+AADA6lL6zzUUdJtjNdpMQWQXfJzG+l4C+w7O3X+pVopWWqjwI0GTO4IAGV/N
         JHRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YC5yd0JUzIrLVkQU7mV1jJXE4FXL4cEx+5A81P9Plfk=;
        b=Hd2Qsx8HXUmhUjDWrlZ4cdxBgk4HM0E3toHuayONEC52y17iYNVGcqmvILfM/4kMx+
         2d86P5KmN4AQHr0th+RKure/Nkdxqpmfr7y84bvSG0MgOLxMPNn/xJ707NIgPqEPV6m6
         xoiMYqT9/LZLZlbwKKcrBOyOV8hGzZ2rvePXCsvt3nXZDbsX9LEZDlpXUTQ/alL2ipVV
         f2Z9ltWGw1cEiXlBmqjvOEw9RIqnNGoJuKi3EORoWRG9yv+8sgD/nHWbAWwsRpm/ixNc
         oG32jOqJi5z02D65/6pS4JfYDei3fFvc17eop6rwWJ7CXs1np8ZZLtED0aP2xzFq0tFF
         1Akw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Vs4a31DNYT4axclGFZsCsC/2Fc/abYVOJ1FoToRizrifJ3Dk1
	6oGiotLmwOTddipyJkkAnBY=
X-Google-Smtp-Source: ABdhPJw+10oLgv+tFsp/89zgI+qomL2iJ6ZXwSmXlEs3gmjMO4S9/s+4bSF/AxJW4cWdowjzK/JU8A==
X-Received: by 2002:a17:90b:3684:: with SMTP id mj4mr7271037pjb.66.1595370477728;
        Tue, 21 Jul 2020 15:27:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1b4d:: with SMTP id q71ls2047048pjq.2.gmail; Tue, 21
 Jul 2020 15:27:57 -0700 (PDT)
X-Received: by 2002:a17:90a:6702:: with SMTP id n2mr7253279pjj.82.1595370477324;
        Tue, 21 Jul 2020 15:27:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595370477; cv=none;
        d=google.com; s=arc-20160816;
        b=X/x6F6KAbkLStrRtjyT/yTwItARaDwhiP5Jez59tAzKgC627hGM6RElfPEHSpMiZOt
         FcDWNcFA+DF1ZY7k5rMyun/RcsuvZGOlE+bZloGTF64cANSZmLB7CEsQClWly9FutnVY
         QU0zcAtGt6zEGt7pxpYnF/EVRaGrwvbC7Bk37QPDEUecI7n9JQTyqh//ZA/ivtsJ30Va
         /CbSaOQnwz6UmAhUL4GCpr3xoaRhUisSoZafnhGc0AkCkQHKg7wN5rw4L4/VSiLZiGWI
         Zbw6x79EAtEdDSXA7g7Qf7OkdBXrEMaUKQsxgckBr73HnXOW9xJG6gFoc0lnMVLaJoKb
         srog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=fwAi8CKhNi9kUtBAHHmNZzLLaAUQLEIM0QwmpiKPOJ0=;
        b=SYhY2UwcqgGzaN/uGAX4v44kLaFqHT1c2BCTy6MUnyEov6iVNVOlZcWWIuzMN2CML0
         rq1cAZ0VZ0m/nFwKhTxle5LHzpaa4EU9vXvUPUwqnDl62VGSwCjfmx77dRpNuvqUhCHx
         uSCzKYOOIo2Dq+GtCFHTyhIkwgz/koBiXthieRN+sjtKycPaZ5DWvHJVV0PnZgYWvL7u
         mrAu28xb2Nd8Wws7oYsU/ONk5+6edlxt3JKE8XriYY9wKOMtMP9Q7KBZIq/dVBR+kK29
         h+IPdGYsl8jZF+8nz3WkSieMrbzyEV9A5/c2Kz9hWJ1T/pJdqtaEEMTjeIi2hJwZ3kqr
         +ZZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.217.67 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com. [209.85.217.67])
        by gmr-mx.google.com with ESMTPS id w2si1007932plq.3.2020.07.21.15.27.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 15:27:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.217.67 as permitted sender) client-ip=209.85.217.67;
Received: by mail-vs1-f67.google.com with SMTP id b77so106577vsd.8
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 15:27:57 -0700 (PDT)
X-Received: by 2002:a67:e046:: with SMTP id n6mr22949972vsl.6.1595370476473;
        Tue, 21 Jul 2020 15:27:56 -0700 (PDT)
Received: from google.com (239.145.196.35.bc.googleusercontent.com. [35.196.145.239])
        by smtp.gmail.com with ESMTPSA id v63sm3603321vkf.45.2020.07.21.15.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 15:27:55 -0700 (PDT)
Date: Tue, 21 Jul 2020 22:27:54 +0000
From: Dennis Zhou <dennis@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Al Viro <viro@zeniv.linux.org.uk>,
	Andrew Morton <akpm@linux-foundation.org>,
	Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 00/11] i386 Clang support
Message-ID: <20200721222754.GA820494@google.com>
References: <20200720204925.3654302-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200720204925.3654302-1-ndesaulniers@google.com>
X-Original-Sender: DennisSZhou@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.217.67 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jul 20, 2020 at 01:49:14PM -0700, Nick Desaulniers wrote:
> Resend of Brian's v2 with Acks from Peter and Linus collected, as well
> as the final patch (mine) added. The commit of the final patch discusses
> some of the architectural differences between GCC and Clang, and the
> kernels tickling of this difference for i386, which necessitated these
> patches.
> 
> Brian Gerst (10):
>   x86/percpu: Introduce size abstraction macros
>   x86/percpu: Clean up percpu_to_op()
>   x86/percpu: Clean up percpu_from_op()
>   x86/percpu: Clean up percpu_add_op()
>   x86/percpu: Remove "e" constraint from XADD
>   x86/percpu: Clean up percpu_add_return_op()
>   x86/percpu: Clean up percpu_xchg_op()
>   x86/percpu: Clean up percpu_cmpxchg_op()
>   x86/percpu: Clean up percpu_stable_op()
>   x86/percpu: Remove unused PER_CPU() macro
> 
> Nick Desaulniers (1):
>   x86: support i386 with Clang
> 
>  arch/x86/include/asm/percpu.h  | 510 +++++++++++----------------------
>  arch/x86/include/asm/uaccess.h |   4 +-
>  2 files changed, 175 insertions(+), 339 deletions(-)
> 
> -- 
> 2.28.0.rc0.105.gf9edc3c819-goog
> 

This looks great to me! I applied it to for-5.9.

Thanks,
Dennis

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721222754.GA820494%40google.com.
