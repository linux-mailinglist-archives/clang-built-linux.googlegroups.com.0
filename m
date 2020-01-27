Return-Path: <clang-built-linux+bncBCZNXZV44IJBBQWLXLYQKGQES3IZIIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A6B14A048
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 09:56:36 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id c185sf952953pfb.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 00:56:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580115394; cv=pass;
        d=google.com; s=arc-20160816;
        b=qkGQNhIOc6S8iawGvvDTRa1qOqcfRu2hHtcZELnNrQujbpTNlsjRF7lDBBxHeLKRk/
         2SQPk/gKxMGXH5Vh9RWQr/V06RdXKKlitsvzABCtrLI1VWCUt9lzos789nwM/9ukQrMX
         IQVvoMeYS7MWsArIzMhyQjsN4HEizcoMDPv4d4ZDir5iuAQnYf3Hw43rBvpd+2B8wKRd
         Yfpyvzra8BUvTGdkm1kl6UdUw94Zrmmmd9sphvWggKhdq9+XMO1b6W/ArboyFgP+WUYl
         8WKd2P59gW8i9NPtr9Hpqd7+bixEOxIQSnR1noF6FEWUCmIxfD4RWK8ybHu07LUmaR/k
         r5Rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=JJyB9zvDeuXeKB/tUDt8T8ohcmvC09mCwRyUDaRNQxo=;
        b=LDMjXuL8CYWEBhTwgFNOs52shfMCOWBAmSWmBDcAFwbX+KxeS+H77oiJ21Qa7KmwLK
         TC9x/u8OK32QZUnbFbUSaIvd8OfW3NpqjtkvLUOMYS2Ud3evgIShrKXaamHRin3hZVVc
         t51LnA+U6cPYfZg90NQOaAsAXWhLFnxicYfHoTFCmf5UF+AHZQlgvTBAoXU/lrVK4qC+
         4p64vdQUZ6W8rS4TDM/SVdkK3Iolb5N0c3RD35UFUsYRbFPd7mY5nxhAfzn6fr1GnB61
         y6npPOjnBV7AgMb4cnjOTwQQfuSfnlkPQ3plMVvNkvHgZokZJ5YqEzabDxsngHcpX2Uj
         G5Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HmIJmAvr;
       spf=pass (google.com: domain of vkuznets@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JJyB9zvDeuXeKB/tUDt8T8ohcmvC09mCwRyUDaRNQxo=;
        b=cV5JWPI/az3XgBOtIaeh3FBfwshZx8soHf6O+P6GOP+RGysSBUWtAOPJXU/FhnJQUO
         hgJC0pX711Q8UHOJM76UMiJtwXzxWvdT0FO+3F+JDsKLuicl85OqzSz1/7i2qJ2Lz3eb
         ISpH7WLR4AzaDP15zaOU/5OCLA+eo/0SQNWQ7XFJOtc8pfEmaMlZWx/CS6Y19KR4EDKx
         CYuzoD+OGuLUlv+ha8BGdzlOFGXmcbO1o94Hu3v7yEpOZ6BNXrbr4ilsBedVk5wRLIjq
         PYkDmhdJYgBt2QroWRO4rmhnkrVfu76aLsKd93AXlDGoIqaV8ku9Dr2hOou/K1OMX/OV
         orbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JJyB9zvDeuXeKB/tUDt8T8ohcmvC09mCwRyUDaRNQxo=;
        b=N/TgOnkL1IPpF+/zZSBQJxO19axL3flal9DbIjDI0gehslC+ZYyC9UPqOnlRxn9kLr
         eyCGlohNrsUKCUteVfG4O3rz+SnzdfR/pzejsdVORs8N+YEVttmICCs2iFOYVQCJiVip
         3Gr872D4IdC7B+ObOPFvBotLfGi/BrEK93rb1oNXZ/Co2KquvREvijE6SKL3t17juSIt
         4ObfHLT4skq6urQduo/NA1gVkiw3PAE9X/iw1KhVvbYhpVr6efFBKfoEefBvmYhCQJxV
         Tg4XMo/8cQFGJkVqxUT/ZMGKmB/LZ/MEoIl6ycuuCpJ3/7bEoJG7sqQid+zNaj1xZs16
         EHpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXa7GUbEOBAok9FXJ0sjXHLJ0psjgXmgnDEOdjFBGTUEHsNMN4z
	ckLYm5vA9r92Ouaksu84ap0=
X-Google-Smtp-Source: APXvYqwwUSEy8tXBeAIT/5b9OlY3q24dL09vzos2l0WWwC6wyEFvJZt/CgNbNoYskE/+6/ioq0P6CQ==
X-Received: by 2002:a17:90a:a60f:: with SMTP id c15mr13525197pjq.61.1580115394157;
        Mon, 27 Jan 2020 00:56:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9f95:: with SMTP id g21ls4095660plq.5.gmail; Mon, 27
 Jan 2020 00:56:33 -0800 (PST)
X-Received: by 2002:a17:90a:191:: with SMTP id 17mr5203240pjc.88.1580115393616;
        Mon, 27 Jan 2020 00:56:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580115393; cv=none;
        d=google.com; s=arc-20160816;
        b=BESKDaygA7f2mUFcviDPpM12L5UJIQ9aE/WFP+p29HFloeo1Fnnfzo3gfks2tXZgI8
         LYGcaFXVrJAUORSpXVexfLJSxRi8GenE7HRHKCdQm7GRoZghRs4lA62xNO4LGzFTuvTD
         9mhuueoIk4I37ge7Xro0ZWZxtp479gENP5EiNJrUgYVjSDsq+OJwJnAinBjb8mqIgtJN
         JKvYrUp8+JtUT+LMY8/oPkUK8tJZ/PpHgUeZFd4tLd+QvC03OJGYlPc8atHiV2zK4UUP
         Ku/T9N5EHCFE8ImYuEmVvzLZdONp7xAJZLkw/tmNoXmhHtiU+u4V0yesen7EBJKhGsIc
         r7Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=O/wJHvKGJ99zGghffHWt42LgckKDsXjbe/P3oAtbAtI=;
        b=fjWFjcLRwDFJ3iklfz3ZrmrLGQz2HA90jp05cY844B8xa3FA5cE0Uxja1ZRzCWmEh+
         po0tZk3j8oAUCM4ZEcYroDooJkDDWLNfotRVd8pmAA+9SxWYaZ6Mog7ipmFmVh4/Q+NP
         uusDquEzXvp2U/W/+VacLxX41TLZ+QJVFh+PC6QRy3hbj+KI8FVUzW9mpF8cmle4+wJO
         wfljg96WAJKyr31+lfdLmhgpuIqlreKcT7efHpI5XCiAk0D0/1SWrwdz62MnqKjqvfe4
         fuPTt9WR79J9a3hpvAOFStuIts+nQmuqFsax2+tqaTylTPnALExihVaur6JMHrUxfrsK
         kglQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HmIJmAvr;
       spf=pass (google.com: domain of vkuznets@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id 186si637540pgd.5.2020.01.27.00.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jan 2020 00:56:33 -0800 (PST)
Received-SPF: pass (google.com: domain of vkuznets@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-341-4yTpZWD4OlKLNRRxUIPPwQ-1; Mon, 27 Jan 2020 03:56:26 -0500
Received: by mail-wm1-f71.google.com with SMTP id f25so1245502wmb.1
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jan 2020 00:56:26 -0800 (PST)
X-Received: by 2002:adf:fa43:: with SMTP id y3mr20078531wrr.65.1580115385278;
        Mon, 27 Jan 2020 00:56:25 -0800 (PST)
X-Received: by 2002:adf:fa43:: with SMTP id y3mr20078506wrr.65.1580115384981;
        Mon, 27 Jan 2020 00:56:24 -0800 (PST)
Received: from vitty.brq.redhat.com ([195.39.4.224])
        by smtp.gmail.com with ESMTPSA id d23sm19860017wra.30.2020.01.27.00.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 00:56:24 -0800 (PST)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Sean Christopherson <sean.j.christopherson@intel.com>, Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, kvm@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, pbonzini@redhat.com, tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Subject: Re: [PATCH] dynamically allocate struct cpumask
In-Reply-To: <20200127071602.11460-1-nick.desaulniers@gmail.com>
References: <20200127071602.11460-1-nick.desaulniers@gmail.com>
Date: Mon, 27 Jan 2020 09:56:26 +0100
Message-ID: <871rrlnupx.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-MC-Unique: 4yTpZWD4OlKLNRRxUIPPwQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vkuznets@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HmIJmAvr;
       spf=pass (google.com: domain of vkuznets@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Nick Desaulniers <nick.desaulniers@gmail.com> writes:

> This helps avoid avoid a potentially large stack allocation.
>
> When building with:
> $ make CC=clang arch/x86/ CFLAGS=-Wframe-larger-than=1000
> The following warning is observed:
> arch/x86/kernel/kvm.c:494:13: warning: stack frame size of 1064 bytes in
> function 'kvm_send_ipi_mask_allbutself' [-Wframe-larger-than=]
> static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask, int
> vector)
>             ^
> Debugging with:
> https://github.com/ClangBuiltLinux/frame-larger-than
> via:
> $ python3 frame_larger_than.py arch/x86/kernel/kvm.o \
>   kvm_send_ipi_mask_allbutself
> points to the stack allocated `struct cpumask newmask` in
> `kvm_send_ipi_mask_allbutself`. The size of a `struct cpumask` is
> potentially large, as it's CONFIG_NR_CPUS divided by BITS_PER_LONG for
> the target architecture. CONFIG_NR_CPUS for X86_64 can be as high as
> 8192, making a single instance of a `struct cpumask` 1024 B.
>
> Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> ---
>  arch/x86/kernel/kvm.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/arch/x86/kernel/kvm.c b/arch/x86/kernel/kvm.c
> index 32ef1ee733b7..d41c0a0d62a2 100644
> --- a/arch/x86/kernel/kvm.c
> +++ b/arch/x86/kernel/kvm.c
> @@ -494,13 +494,15 @@ static void kvm_send_ipi_mask(const struct cpumask *mask, int vector)
>  static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask, int vector)
>  {
>  	unsigned int this_cpu = smp_processor_id();
> -	struct cpumask new_mask;
> +	struct cpumask *new_mask;
>  	const struct cpumask *local_mask;
>  
> -	cpumask_copy(&new_mask, mask);
> -	cpumask_clear_cpu(this_cpu, &new_mask);
> -	local_mask = &new_mask;
> +	new_mask = kmalloc(sizeof(*new_mask), GFP_KERNEL);

You could've used alloc_cpumask_var() instead, however, I think that
memory allocation on this path is undesireable. We can always
pre-allocate 1 cpumask variable per cpu and use it every time, e.g. we
do this for Hyper-V.

> +	cpumask_copy(new_mask, mask);
> +	cpumask_clear_cpu(this_cpu, new_mask);
> +	local_mask = new_mask;
>  	__send_ipi_mask(local_mask, vector);
> +	kfree(new_mask);
>  }
>  
>  /*

-- 
Vitaly

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871rrlnupx.fsf%40vitty.brq.redhat.com.
