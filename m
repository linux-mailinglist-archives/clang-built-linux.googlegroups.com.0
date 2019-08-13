Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB4O2ZHVAKGQE5WG2CVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF558B1C1
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 09:57:38 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id j10sf16826660qtl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 00:57:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565683057; cv=pass;
        d=google.com; s=arc-20160816;
        b=t3Yc7fXkq6wgspqgrTIBnUulNQL5CBqcs8Fgh4KJ+24W7z289wcQ6ROXS8D+tud/ZD
         JOxKcPmoLLrQsFxfi6c5v3ko9g/c8xbWm8WGPkrQcFMPphOGNPdXYycwuHFvmmG+KGlP
         vIdG4k3eTuNtFhZMng0ZrcabAl+U7VOHKlxSncwtJoTjfGKYUzy4T90ngJkALxyevctH
         4/LeQnIr1oHwxxahfbqPOmFxViydb6Lco3PNR+ypEvG1RCelpmLuth2unEHkC+svOvzC
         FrQIveeWR54o6m6+Pm5HCIQSPUxpx66ggocneKP9XtpR3JYn/NDHz4COaIu2zwFGVcs4
         Y/iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pqfZqMAP4xntR+ZCCVRkY7cLT2Ev1Fj16C57DtaR62Q=;
        b=b7dzfdEsA9L6P2RGwD952JtjXUh6GwYt4BDskyC3hy4rW0Y+Ex6XSh1mvNL0a5kFQb
         B9HcEOJg1mbAtjybOVcZDD3oEesmb3Yc7+Js/6z9xbmgp50o98Dg67EpOJRNpSdfvepH
         Mfc+vJsH3ZG9Kxr0fR6FFEdEzcrzGqXo3rWvDYpWz2ESj6AOYt/PWuZv1dkqSi0YyHmb
         pCdvNKDMIP0hQFy2v+BaQBEO07x0h8onUSzaFJpIoawk6KqFlO5k2iOgazQHfb0os8G2
         gLDESXjVVkUlxkwz64iujp2uBDhkkHYtiat5BgnIBgndz/pQ+6E5ieZTCkwcAVMbpvn5
         u7bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pqfZqMAP4xntR+ZCCVRkY7cLT2Ev1Fj16C57DtaR62Q=;
        b=LEDB4NUbhaldJSxnLnjeD9xnIsXyPwEIrkauEftmNaOtaKE3dNr/HD5gPuLC7CHzVW
         5plV/U60nVT7CRwszTu2vbdOtRDoQVvBOUFtLzXlDU1tmPKw2OjJQp0VH9XDVSdqFPQO
         rjStcjkdI3IrmJtYBCIsa9zA4tRVMl3QeJzLFZeSw+ANiuAmSm96lUxB1ceUoVmhjl0y
         6gMs+vRn36z8Z1t+7vRSfE4kigcvmDZsaQdlAwdix1R8+TJ40ytv/TgDqcwpzQIDy26/
         YkWbXj07yt9fWFlz7oQR/ZUBexkZ3m8Tdeu4Ayv51VQiLTt1S8csicy3ycrTXUq4UEp/
         4vYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pqfZqMAP4xntR+ZCCVRkY7cLT2Ev1Fj16C57DtaR62Q=;
        b=Xmd0uGJsg9MDdulj35xoZmG2G4OqYiv9o+iPRqPE9FsUsMnGRyA2AIwJnm6gSblosX
         UKGijyvg9JwSVj3PMqhAwnSFKiSOYtHPgQu1Lr2+4r5odFZeGYWSCfXByooOcCd7BKMW
         GdiB3ijO8svMdzEJPtuLXKRZWwSof1CJOPWe8iW1LLjChdWmoXkpjvGuWG6o1X/g1x8u
         aTSGOcrirJNknDQ/VbXWC5ZeR+Jt7Vzr9jmTXN4iPBKvGCvFPKyBY3pzpG1xZ98/fAZH
         G51r+qmOPxR2xFKM27AtbcrvfmaAK+3D+SnbfNcGidHyrHmD274oTzYUjSDf/O/ZXm0s
         bZfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXoINqvOX6dDGp990lGvR2MplfqK5iPoFZxP0WMk7XiZEQEuOz
	YqbAyLAjgfW2ewCiga1GtCI=
X-Google-Smtp-Source: APXvYqwqrbSSF84u1gkfajF+cyjHH5f3z3tuaE+onz0nefUfvif9n+DIo5tSS6l//kwao3f4VKB4fA==
X-Received: by 2002:ac8:550f:: with SMTP id j15mr18553253qtq.25.1565683057105;
        Tue, 13 Aug 2019 00:57:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9d4f:: with SMTP id g76ls4170617qke.0.gmail; Tue, 13 Aug
 2019 00:57:36 -0700 (PDT)
X-Received: by 2002:a37:7ec1:: with SMTP id z184mr33030031qkc.491.1565683056862;
        Tue, 13 Aug 2019 00:57:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565683056; cv=none;
        d=google.com; s=arc-20160816;
        b=kQ6JBoIyoTseQFz9Bw2xqVfYwR8FTLWBJTlGW6fdeArD10fcuq4vqmT/ySSNJmTNWC
         9B1JdKLzm9pn1dHcp3a/4KVAIIm71g3H30sCWUvMY6ZxRgAsj+5JsDtqS2QA3pbr61X9
         AR5R+6J/uzXeoBnRG7A2LG4ZcUPHvku+9WkE0Vwiqy0DtKGuaZLDX2dCNZ6PtSOuBPyw
         icSiKusVOD72g7luecrJjZNJ4/PCriFFoNDNo+n3qr1I5t00vN+o7EsZAGYS3imiL5Fa
         fbgVJUS5Lei7cAPpCWF9hWWqIC+FKoqCrt7isqUH3jyG8bM4eaOMq4FpwczobQavD/c4
         OycQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ajCXkLrc00rBA8ZUOVEgUaqN7M+DNR8LSQCK9+5f2+g=;
        b=G/oq1Ixou7+CnwhufEvklRJ0N4vbmGzLU+aYFFChURnIycr5UzwlW5l+6gbLC+FiN8
         FCoZ+98Nq3dlKxZXwdGg3rFnguCQijMj8O/a59bmpFGmXb9j/GcOgnGYlGdAK3g3zNeW
         CTZ2WghMHmEAN3dcQr8OBKfUlYkTQcJ9OlPsxVOnIj6rPQhKceGeAFKe9zBHfdLgiCAa
         CCXIAjoxAWTyR48XYbxZM2xzXSagzxqYcDdvEVqy/sg+/8XbEqTuT15dCDXiXVKpcmQX
         txYNetKcTTxTt67ZhyoggxYzNzY4gipfD/hZwVNRe2fXwXklpKfdr5Te4ZFY3F5HrT3o
         ESsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id 37si1005973qtv.2.2019.08.13.00.57.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 00:57:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id 125so5934543qkl.6
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 00:57:36 -0700 (PDT)
X-Received: by 2002:a37:76c5:: with SMTP id r188mr32664415qkc.394.1565683056420;
 Tue, 13 Aug 2019 00:57:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com> <20190812215052.71840-13-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-13-ndesaulniers@google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 13 Aug 2019 09:57:20 +0200
Message-ID: <CAK8P3a2fSKT7AJXwfKQOJ5N3=NtwMOCw_5tuD+oOsmh2g-Kokw@mail.gmail.com>
Subject: Re: [PATCH 13/16] include/asm-generic: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, sedat.dilek@gmail.com, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>, 
	Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, 
	Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>, "David S. Miller" <davem@davemloft.net>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Mon, Aug 12, 2019 at 11:52 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

The patch looks fine, but it looks like you forgot to add a description.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2fSKT7AJXwfKQOJ5N3%3DNtwMOCw_5tuD%2BoOsmh2g-Kokw%40mail.gmail.com.
