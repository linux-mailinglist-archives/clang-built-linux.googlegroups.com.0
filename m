Return-Path: <clang-built-linux+bncBDCKNIVX54KBBV4C573QKGQECKF34OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id B492F21002F
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 00:48:55 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id v8sf11283159edj.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 15:48:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593557335; cv=pass;
        d=google.com; s=arc-20160816;
        b=KQGbJapJ5rWS1NzUULDCdDQjSnZc0Vnrg9kvrjXPZ2eXF4jcCpiATPZcnPbNrEfALs
         SzjH73A/GCw1SBRHzQOshDAw3tCgk91d+def+y9RErPvNLejKDQZZ5i/x12ZPYx0oDMs
         MVtlxCHkW6JAedmBxTtNr/dD2MsfYwKqW9es6iX91Sml93KKhvfo4f4FhqbCTxisTQKU
         cgQjjxoEq79dmO/RSAm3fL6LrJaMd6J/k8ZE96LGFDHdYOy4FFz7omsAsb6+4u203QSd
         OpGzHfqqYPFyVJn/u8sziRn0lDgPNiOsDCH4gRqGTnguGneI6x6sGwdmkZd6ht0LeW1W
         wJGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QX+cDOhXfq8qBlka4vv/m/vmmFdKg5xQtL7qji6dBWw=;
        b=YzXoTIGVEotutaQbDT7d+dtoC/2UthSUnq/19HzE9F5s3gB7ddV2JELkIToPWUh0tL
         cih1UqjqyhJv5p8vXajjEnmDiD0s47NxG8hqLCH7ffkm2zILii27jB64+sjNhu6znhIS
         LjtwgBiC55jfGmTelQGte3N4Xk6eVrBKvthYk0hBOKcrq8nsHr6FJ+SYzAjolKrIkMC8
         q+0lLFr2yAR/770ARidA1TrYkd3ezNEzNuVXSy6TBnM8OrRjj4EqWzBxTUXnYlyG89pG
         Ck1mEP13R0OxAGkTBn8PJOyQkRh/tA1G6/aATC9OBxpusaPFAl5jEKZFztN8cd7QVNTN
         2KJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ASbXZJLt;
       spf=pass (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=haoluo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QX+cDOhXfq8qBlka4vv/m/vmmFdKg5xQtL7qji6dBWw=;
        b=YeKBkyiVJXunyg0rQEUXweG653UmKIk6G+6EHN5p/Z0wzHNlsFrOEmfMnQGPBV/Luo
         rEsyEldRjWjnCkyrUfdnkVZeReMjK/B+YrE+LDHP27C5gnML/XKpfZLOTjddB18ax05m
         aMMmrQ4nOADzNKPMwcw063sgv9yMOpK2WCufL/++GKJ8h2hgxbyCl9hoX8rMuF+Q3gLB
         hVRaOMotEqbWTIHLbvNYJeWEQe5bZ2siTApP8vtcysKA6FS72ColiKyv6J6z83fr+0mn
         h0VjUTquoKnBBXzdiP0Rl+EkQXlbuXvB1ObTdAC5m3sLZhb3ZahalQ8jzz7oT30pos1U
         mnlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QX+cDOhXfq8qBlka4vv/m/vmmFdKg5xQtL7qji6dBWw=;
        b=GCQ7+q/p1d1OlagbCxnKzrTenXXFFUw1WNgjtYAGsRhQ4uMVxs5R98/4QFViesu4TT
         csOuqC0jZyuBUzHU9YQjdIdvq0NcxVAskY2wTYIIMfCcg8By66a+3mDbNlAF7sFABnfY
         FpKIzvtL0Bm9ZE6j8/l7KEEMoUDZ3FhpzDSeC78iARcU7CUXAi81G9ob2m2AlUyttz9L
         j6FduwBROs3/jnG8pgNB0H6nEvRA5EFmvOPoCtb5CZaYVQZeetc8gV3pr9O2ou+Vht7x
         HC30DRuggyvFIwzJ6LzWPssnVnp65qhEYWKdr4yBL50iFN3kSDpIR8jh2RkfQ3E8BDLI
         tFpA==
X-Gm-Message-State: AOAM530ePlOeaEv9L7OOI2hjRy/WZp4ubB1G9b/WR1o+uw9bkWyE0LZ/
	qiR2FIcwmqjedOGjLuWXGHk=
X-Google-Smtp-Source: ABdhPJwaN6uZB+FaeLGt9y1Ajl3WDtbsHB+uhkF9DvDiZaYpZ7WUtgMKLuPz+mACL6Lm4jeW0Ul7yw==
X-Received: by 2002:aa7:c341:: with SMTP id j1mr26805098edr.197.1593557335500;
        Tue, 30 Jun 2020 15:48:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:db04:: with SMTP id t4ls791853eds.3.gmail; Tue, 30 Jun
 2020 15:48:55 -0700 (PDT)
X-Received: by 2002:a05:6402:128c:: with SMTP id w12mr14582161edv.65.1593557335061;
        Tue, 30 Jun 2020 15:48:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593557335; cv=none;
        d=google.com; s=arc-20160816;
        b=d3DpahgZ5shXqJy6paVjkf/gDZlEy6DAT+iABR3UXK7n1rxHTQJaPCPHb1mpiITMFn
         9SP0MYAhUqrlirZDp+6zxo3VhjlP8GdK7e4NoQmAgYsXLSYsIaoNCDLXYN+KhxbquRjW
         vwqOtdUPJ6qDR/d9co3uuU84v1N0L1NGCHm4+VvsL2vuONKt1Iqti1HiWuvTJicHNBIw
         FKaFO5Z7km9TrCMSQoKf7KeRXW0JKyJZw1qneTCvBlgzXZlBAKYe3OO/cMapvY+VYeGh
         c2VJ3Dyay0yWBHRjU0sR78aM/02XUobnDJeyoOZko7ikxqG3U1BrlmyhsB19U5lLDDH/
         W7Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s3xaSnjPwOz/gfRv2/K99Xg/qf7pM+PnO4Lm4xuaoC0=;
        b=Uw8CTflpt8uHex/tG6ZkaEWb207i1Nr7BK/e1tpAX7UnzZmZqNrjGmBrf8+DyxSbpg
         rR0fzIghXhOH2XiU7piGzCiueUxEnbNZaKZhYE9A4T8IMGn0S1wk7SIgUKf60tLFkyV/
         4q0Ivox5D/PygWdVoBK7WpDTFlYvtuUpyJ4P2XITTPIvsrLDBM3wKjYvZsUqujBrZZu/
         M+52nCL5Des3Eq5smHfdUfkhaMnyC8BuUS9jQ/PE+1BssI5WjzMz/7FaQtbRbAaW/CaE
         v01ZKp+AjI6uqtxj1RQEfDsfYVW9KWvdBS40DLFzKE4bVr6mRx4j3TMHm+9QOH24yMpN
         8tyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ASbXZJLt;
       spf=pass (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=haoluo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id 63si223141edj.3.2020.06.30.15.48.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 15:48:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id d18so12170147edv.6
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 15:48:55 -0700 (PDT)
X-Received: by 2002:aa7:d5cd:: with SMTP id d13mr691466eds.370.1593557334562;
 Tue, 30 Jun 2020 15:48:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200630184922.455439-1-haoluo@google.com> <49df8306-ecc7-b979-d887-b023275e4842@fb.com>
In-Reply-To: <49df8306-ecc7-b979-d887-b023275e4842@fb.com>
From: "'Hao Luo' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 30 Jun 2020 15:48:43 -0700
Message-ID: <CA+khW7iJu2tzcz36XzL6gBq4poq+5Qt0vbrmPRdYuvC-c5U4_A@mail.gmail.com>
Subject: Re: [PATCH bpf-next] selftests/bpf: Switch test_vmlinux to use hrtimer_range_start_ns.
To: Yonghong Song <yhs@fb.com>
Cc: Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kselftest@vger.kernel.org, Stanislav Fomichev <sdf@google.com>, 
	Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andriin@fb.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: haoluo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ASbXZJLt;       spf=pass
 (google.com: domain of haoluo@google.com designates 2a00:1450:4864:20::543 as
 permitted sender) smtp.mailfrom=haoluo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hao Luo <haoluo@google.com>
Reply-To: Hao Luo <haoluo@google.com>
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

On Tue, Jun 30, 2020 at 1:37 PM Yonghong Song <yhs@fb.com> wrote:
>
> On 6/30/20 11:49 AM, Hao Luo wrote:
> > The test_vmlinux test uses hrtimer_nanosleep as hook to test tracing
> > programs. But it seems Clang may have done an aggressive optimization,
> > causing fentry and kprobe to not hook on this function properly on a
> > Clang build kernel.
>
> Could you explain why it does not on clang built kernel? How did you
> build the kernel? Did you use [thin]lto?
>
> hrtimer_nanosleep is a global function who is called in several
> different files. I am curious how clang optimization can make
> function disappear, or make its function signature change, or
> rename the function?
>

Yonghong,

We didn't enable LTO. It also puzzled me. But I can confirm those
fentry/kprobe test failures via many different experiments I've done.
After talking to my colleague on kernel compiling tools (Bill, cc'ed),
we suspected this could be because of clang's aggressive inlining. We
also noticed that all the callsites of hrtimer_nanosleep() are tail
calls.

For a better explanation, I can reach out to the people who are more
familiar to clang in the compiler team to see if they have any
insights. This may not be of high priority for them though.

Hao

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BkhW7iJu2tzcz36XzL6gBq4poq%2B5Qt0vbrmPRdYuvC-c5U4_A%40mail.gmail.com.
