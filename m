Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB64Q5OBQMGQEHTJZ57Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DFA362F9E
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 13:37:32 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id f5-20020a2e9e850000b02900bdf2002a82sf3822415ljk.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 04:37:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618659452; cv=pass;
        d=google.com; s=arc-20160816;
        b=PbYYAg9MYeZY6TcUFY6gLPgtAA8Vskd+HFQu0Hw9FUVslz0E4BagmbL8XoTq6AtB9o
         A84ai8l4eaHpEE1c+iNQAejCtzanNJ3zf8s5XFpEYIHT/5uH7QUQPiDusKN2CDJVJKrT
         NKAY2SLP0CNcLTjDlnGI3RraocZEykZNdeSqg4o5H67joOSeYF4NfYrcOz8pU/hTKdnI
         /5WVAGD6Lf51MVT5/dG7GAmJsmROd2dqRzMZbYPHg5rbp4iPrkYrGtpVkCQ2TmpzhpEL
         60O0Eux1rK8m1WBMrjUfrzjfcjiMwpBsFEN/PPNzNekR1QBo+IEy+SyIedxTUec+vMUZ
         JSgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1cfGj3bU7FyIz7+6IgtOP1+ig9cCjkbE9Ka05vTnKy0=;
        b=lsgUqK0Bc6AIuLa3k5VyP5j9HJYsOA5DcvO4veqi2+no0QccHEr7tCdL3pbUXtDRgL
         hLNT6aojvoPpt+a4pu5sx4JOT/JGEwgJBdgFwNhM5/9+o4isOXJ08fp3Iw1QH/wwHO3t
         Y3mPpA3idJdtAGKIshble6iqp8a0e4mD5vmWh9HvUXwjZpx5FubxKy315JvtSITopWAu
         3X9Que5uw3ZHGvhn9l1jBoNkobmLin4HDqkJF7B3lkhV3p01ABJA1022o2y/tXkCE57V
         61Glry5XDAHs7dlep37f4/5mncGogIEHfXE6yAVTYCd0pfuk1uSmfoEp3ptu+txkAIXV
         Wbew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=CqzfOhgP;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1cfGj3bU7FyIz7+6IgtOP1+ig9cCjkbE9Ka05vTnKy0=;
        b=IPtbat8WLGB5jm3Bbpo4Ih8gVZZ+ynv1ZPlteEARM/GoorcXF2j948MJJg79ZvEUlv
         Sjn4foSVU00nwTbDO0sk+JcmzfKlqk91mx0kF5G1j4+XRe7WmDUb0676HYei+nE0+XYc
         59gz68t4Ug0ZnlF0X0FNhXq+lDHV+Go+WfPLReQW/sgWs95tGVdmQNZhaf18quSqiTLK
         K+rXokTThxkAj4eZLdHwiYQ9jB1nJ7IIlOsBExndWJSyKvX9F2YE/D8JjkfHla2kvzZq
         RJ42U4VE6RKWrvDTug7VE7OawonQfyJ5h9EvgmoE/hZFeWInTFLBsW6OE7a9f0afddQw
         09FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1cfGj3bU7FyIz7+6IgtOP1+ig9cCjkbE9Ka05vTnKy0=;
        b=j8y4nMjH6Rfiv0YGENgu3Nb/3AQSnE8Comx0RNvKqnPyOpB4RmEGoI5WMYXX4aWncO
         bYaRf9mOGDFPxmOTQnY7WxoqZkqYYCoCfDQH6e2MuFbQDV9/1g6hkU/ad3AJ9v3hQUdp
         8guwJduqJiRQzrgBaVFD1YWmJrpDSBFQWVnv86BBGhTKv2I3DGcMgqs280Hb+p6cVCca
         DF8xiMJ2zQ0roslBD8ucm2ttB2Y/PqlWgTpJn7R1SEARSEmF7blJsPUivYNgqMNFo8Vd
         51DfleCqZTRV7z02eNK/V1HkBpAkDozDIAyp7E0BB+GjD98UmxwR0uzs807z1JntrmyO
         0ZMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KzPTGF1XKPB8UwjSrvPfFm7ZrahOHsVuv8GN7yNS3ZP6SIHCx
	jJNu7WH+T7xSMipECQVzSLk=
X-Google-Smtp-Source: ABdhPJzcq5Ca9UR0OCL6oHx0smCgSfTwtGfUxgd3wldYPFY9uWq86a12l4O1uvi3ISyjTQrbqaefgA==
X-Received: by 2002:a05:6512:2254:: with SMTP id i20mr6193800lfu.56.1618659452028;
        Sat, 17 Apr 2021 04:37:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:890b:: with SMTP id d11ls399990lji.9.gmail; Sat, 17 Apr
 2021 04:37:30 -0700 (PDT)
X-Received: by 2002:a2e:2246:: with SMTP id i67mr5154457lji.396.1618659450883;
        Sat, 17 Apr 2021 04:37:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618659450; cv=none;
        d=google.com; s=arc-20160816;
        b=FrYnP3yLRijSM5Mofk4sptB/GvdKNiWatwjuab5rBEkaLwbj0jj0QNH3PEJ5OAX6zZ
         dOfItpAI/7bG4U0YhTS/aWZOjqscA11HPOT9H7Ai5cZQyePfXeun4mbRLIQGPGlBcKme
         G523oAOUDttnaEY3ybJK5sRxuW580fY3i39N4YYVHTg5IjzAN8jscERiTYAu2rUf3CID
         AParDZ2RmMfjIwY0TZcmxfo7Wfg7dzp8PxbDhretlOS2ezIfR3fj0fSxlRULgw6lvqZY
         2+OCAsC/LJkTt0lTbTRHJGhHWzq51xEBWtEKPkV0fXtkjx/lRnhAWjimqCV1s0oRqhSb
         zoxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=La4K9Hxv90PEzdP4s04b75vImRFep6ZDy8BSpr4Z3TU=;
        b=axhb+yDlGUlVk00ffJuhkKS/+H8RSqZJfNruVRxw+SFYMJXRJ/Ysw0nXeqluL6uZmd
         PezmBgLDztUXrKE4ZfW4WQvrLxCIJnZOIz5sZmFT16dcoIzFnaWwSDAh+st0R3J7EK+5
         yE99odKrWAh/MxzTtsOjv/0dEDVSUoG4n7dg1/BjaKyf92IJiBBTQz1gK1eq+vc5/2t1
         jZv8quEj6pgIWHSgSRxC86TX8b1pJfLtlt5GAptwJY1ixcx8XSWjYwR/qe9KZVfbiLIg
         3sZl8ucxpj5mhV8ojs1iJzOTAhXcfiGYWuGDiQsY6SR5NsCC0v+rTNqPXAIbYo3Rj9/m
         eeNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=CqzfOhgP;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id z2si345244ljm.0.2021.04.17.04.37.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 04:37:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjGO-005BXG-D2; Sat, 17 Apr 2021 11:37:26 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id CA636300212;
	Sat, 17 Apr 2021 13:37:23 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id A53742D2112CE; Sat, 17 Apr 2021 13:37:23 +0200 (CEST)
Date: Sat, 17 Apr 2021 13:37:23 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/15] x86/alternatives: Use C int3 selftest but disable
 KASAN
Message-ID: <YHrIc0L5AQukw525@hirez.programming.kicks-ass.net>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210416203844.3803177-10-samitolvanen@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=CqzfOhgP;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Fri, Apr 16, 2021 at 01:38:38PM -0700, Sami Tolvanen wrote:
> From: Kees Cook <keescook@chromium.org>
> 
> Instead of using inline asm for the int3 selftest (which confuses the
> Clang's ThinLTO pass), this restores the C function but disables KASAN
> (and tracing for good measure) to keep the things simple and avoid
> unexpected side-effects. This attempts to keep the fix from commit
> ecc606103837 ("x86/alternatives: Fix int3_emulate_call() selftest stack
> corruption") without using inline asm.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/x86/kernel/alternative.c | 21 ++++-----------------
>  1 file changed, 4 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/x86/kernel/alternative.c b/arch/x86/kernel/alternative.c
> index 6974b5174495..669a23454c09 100644
> --- a/arch/x86/kernel/alternative.c
> +++ b/arch/x86/kernel/alternative.c
> @@ -496,23 +496,10 @@ extern struct paravirt_patch_site __start_parainstructions[],
>   *
>   * See entry_{32,64}.S for more details.
>   */
> -
> -/*
> - * We define the int3_magic() function in assembly to control the calling
> - * convention such that we can 'call' it from assembly.
> - */
> -
> -extern void int3_magic(unsigned int *ptr); /* defined in asm */
> -
> -asm (
> -"	.pushsection	.init.text, \"ax\", @progbits\n"
> -"	.type		int3_magic, @function\n"
> -"int3_magic:\n"
> -"	movl	$1, (%" _ASM_ARG1 ")\n"
> -"	ret\n"
> -"	.size		int3_magic, .-int3_magic\n"
> -"	.popsection\n"
> -);
> +static void __init __no_sanitize_address notrace int3_magic(unsigned int *ptr)
> +{
> +	*ptr = 1;
> +}

I really don't like this. the compiler is free to mess this up in all
sorts of ways.

The problem is that the call-site does not respect the regular calling
convention, so calling a regular C function is just asking for trouble,
which is why it ended up being asm, then we fully control the calling
convention.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHrIc0L5AQukw525%40hirez.programming.kicks-ass.net.
