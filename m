Return-Path: <clang-built-linux+bncBDAMN6NI5EERB64N4P4AKGQE7ZKHU5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1249722A2D2
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 01:08:44 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id b13sf1687084wme.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 16:08:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595459323; cv=pass;
        d=google.com; s=arc-20160816;
        b=oB2FPjQYlO+XgxfcYOoSd7DFxw5tIUt/N25ojEnQ8vQYqYhh4J3HHjKbD54bDlWfhl
         m9FxRjsThCtrCfpCAj54YBAIxHq4eSfbbgdB+angclP4OJEZtm92J+Wkr6WLPiWSG6FC
         pNvuKBiNJUjM8zNoGYct5kIVxrwd2E5fHcL5L/Za1fHJIRgS81KlS/1JuemvBjAqOIab
         qIlfBoSt+cKKMyPMD6MQP0Y4ZdnVUxFqzpSpC33Q7ztIvWVGsD7lbgyc/UQsAzmUZ0Ww
         9YNa+Mw5vhQM+c4mdk5WPl/QJePAZdrB+kI7fIw0zaZJE2KTbFS9MutmkJUFbkOKjJee
         VsFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=gMFHPDZ00oVfpTO2gp/kJgza0KPLwsnuQO/X9E6V750=;
        b=WvOlNkToKYIgCVMq82+XsJl1rPYAnwwD70o179vPZ0gpPmLLJSfQ7EkhhQQYQN85iE
         twSPwjzUsj4j0NSXnCo+UArJBeNo1HipbOow/w5ujQOSA5maaK5woJ6lzAgAyR7domQJ
         4Vk9otOu0KrDabWWhBhYsOiI877VPnFewFBnrmV1no3tYRdJUoBDlSFJZAqqsrKACRk0
         yOHUhPDC4c6X1suTxtQmgjzgQCai/Gi9Tdazrqld7yiFJUFHOB2Enx9ZJgHf2Tef1Zx3
         9ktzTr+2i6fT0N3LhfH5BU9MN3NWjWGefrMc0nZ3R+QArW9AxGhfPRr8mfggjXDH4AXW
         LApw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0VIdlQaY;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gMFHPDZ00oVfpTO2gp/kJgza0KPLwsnuQO/X9E6V750=;
        b=iE0SCrdXg3xlYj1vvyZ1Ln8XJxZqKuyRXWwwgoQQTKJ4Q/1Ju7cHoLFJXpbaZHoOuE
         mjtioX3yfDRYOtWpFNF4gzOSewVGyT7f2oI4R+sXL7R6TkdT9VfbxxqTKTMoqTIvShGv
         y9tTLYrnO4IKynxF+kLtwyfBcAEpr5N/O3gQId9WgisEyKPr7uFUJ5eG7rAs8Lj0mltZ
         xLUsf04X7pqpxGzKoVubbBgYgYM1AVb95k7SbRIQRkeueGyY0TuSXcv05wn96tFHCg8J
         lm4/DJIpVIoGUY2G6YfRPWAIupKyu0lvSaKyRiKO6EP837BfBSAxia1HAojdZ8F93DZc
         Q/SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gMFHPDZ00oVfpTO2gp/kJgza0KPLwsnuQO/X9E6V750=;
        b=H3UjYl5Dd8FxUAfFlnLVbn7bxAcpeRUVpn9cnFhCWIqWzPm0SzFSaeu+aLq/T4LA+5
         fyyPzw5eQXuE7fI8AKwDgpSOHRL5qQVv1sNScK7o/bMejPj7V4tqJgp7jGm1BPrHqzM0
         z66aE1K+hRLvrC2V1O2sLQ7tfM7unA8LsoDuqSbhQpFSDJF2NkRJFdnj/yEFN9HrdV/L
         M1lIfUfLSJMkK7Tu+QYvY/OP3mGUZ38S0GjO8QRu7lhCkl0I/j6/kp8D8P7v//5fVvCs
         92uFppjjXKxI3l95EASeHf2yyobxU/CKJXXPwm1d0kTZP17OPz2XWHN8v0GhIzUE6DKU
         JUQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cSdM0aUSzUxoYH9Jz3FXMU0V64y9zbpWYUXNG4yXSCtFeC8LP
	yxLEZWkqVmUBwN3boh+ngnk=
X-Google-Smtp-Source: ABdhPJzWgbeggwYwFXaKoNzhqzW3Pv7eQwgUVy4lCbehwgj4NTXNYH47gDCAaNLXz+syzDujmRkz1w==
X-Received: by 2002:adf:facb:: with SMTP id a11mr1526193wrs.277.1595459323745;
        Wed, 22 Jul 2020 16:08:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9c95:: with SMTP id f143ls1872066wme.3.gmail; Wed, 22
 Jul 2020 16:08:43 -0700 (PDT)
X-Received: by 2002:a05:600c:202:: with SMTP id 2mr1527017wmi.139.1595459323305;
        Wed, 22 Jul 2020 16:08:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595459323; cv=none;
        d=google.com; s=arc-20160816;
        b=LOdoCpeMnSRyOpkyLeo+owADH8eRh/bW6ucekzzJw3jaT+Fvj9z3j27qElNwNbtRBn
         o71b3ZNSoaKuVurICj2icJM3c7xIT88nFdGKS3iT6sGNOPaMHIPp6BgVR4WiYznIbqlz
         6ffcFTXQDMVoSmikKWSf9pLx35dw9gu+KnhZiYlj/c+czNJ5TZto51WsyX19DvuclQi1
         BSIScfTWii6M5N/0aWxr7rCK/ev1CBkCsEN05BAy2C4EA96PNkZ7tsUnGOhcV66TFe5d
         QIGVMfmPczS5EOSpOEIywNnHSufEDRAJRkqzMsJ2Z+wd0LtbBTQHT2JE2ZV+2hIN+bla
         LpYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=WyEi4r6pHlCnjds15Evf4SyPGIdz2gkscTmxlZ56a7c=;
        b=meSxGroSNE0/1EDmlLSrx615dsO2ZsPOlzCMdNVfO78/lfKee041lUoiDN9JiIShek
         lZp9vdqCd0n0X3TCX6RMJ1CzZ0qfb0JVfgolmKtm/wDNJg+bXbSRbuIrZ4vKBHEzmaRf
         k5iR5p2B2Lec1wSX12+DKZJog7W0w02nxifnagyH6f105OGNjS4BGnpqZIKZrtwreTbN
         5fAqh8IYXrO6I09ShQtabJ/jY+qkd8dTrxKhWFXpcTUde79g9/Gq5MDEPmzBBYS2zVMR
         wE4JbtVHyDA62yVW++HpoQX+Dhy9/p9+GYx1hNQxEKOxR5l9z4X3JVRKWr7R+nZoyFPa
         nXGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=0VIdlQaY;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i17si61346wrw.4.2020.07.22.16.08.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 16:08:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Dennis Zhou <dennis@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 00/11] i386 Clang support
In-Reply-To: <20200721222754.GA820494@google.com>
References: <20200720204925.3654302-1-ndesaulniers@google.com> <20200721222754.GA820494@google.com>
Date: Thu, 23 Jul 2020 01:08:42 +0200
Message-ID: <87blk7ywp1.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=0VIdlQaY;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

Dennis Zhou <dennis@kernel.org> writes:
> On Mon, Jul 20, 2020 at 01:49:14PM -0700, Nick Desaulniers wrote:
>> Resend of Brian's v2 with Acks from Peter and Linus collected, as well
>> as the final patch (mine) added. The commit of the final patch discusses
>> some of the architectural differences between GCC and Clang, and the
>> kernels tickling of this difference for i386, which necessitated these
>> patches.
>> 
>> Brian Gerst (10):
>>   x86/percpu: Introduce size abstraction macros
>>   x86/percpu: Clean up percpu_to_op()
>>   x86/percpu: Clean up percpu_from_op()
>>   x86/percpu: Clean up percpu_add_op()
>>   x86/percpu: Remove "e" constraint from XADD
>>   x86/percpu: Clean up percpu_add_return_op()
>>   x86/percpu: Clean up percpu_xchg_op()
>>   x86/percpu: Clean up percpu_cmpxchg_op()
>>   x86/percpu: Clean up percpu_stable_op()
>>   x86/percpu: Remove unused PER_CPU() macro
>> 
>> Nick Desaulniers (1):
>>   x86: support i386 with Clang
>> 
>>  arch/x86/include/asm/percpu.h  | 510 +++++++++++----------------------
>>  arch/x86/include/asm/uaccess.h |   4 +-
>>  2 files changed, 175 insertions(+), 339 deletions(-)
>> 
>> -- 
>> 2.28.0.rc0.105.gf9edc3c819-goog
>> 
>
> This looks great to me! I applied it to for-5.9.

You applied it? I'm not aware that you're maintaining x86 nowadays.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87blk7ywp1.fsf%40nanos.tec.linutronix.de.
