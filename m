Return-Path: <clang-built-linux+bncBDEZDPVRZMARBSV3USDAMGQEBPRC7WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 104713A8B3A
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 23:38:21 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id q207-20020a3743d80000b02903ab34f7ef76sf214270qka.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 14:38:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623793099; cv=pass;
        d=google.com; s=arc-20160816;
        b=uRLa+E/lKcHIs4mBhrW+TMrhxPZhHKuHEL0KKWOIQWppKJ3AmvfC5+lTcZFIlmzTtT
         iQbREyvcbpyTG9y4X/1Yo+NWSSyQUAaKchuRhRjlOQRi0AIPNCq8OGoXSqhCi1n7deX4
         aGr7UEJrT2NmuhHo9IAJ0qPiFqSvtihMhu2CcgCfPnwMwRolYljIFlv0A4jc07/Gluzw
         cXdiYZhbuJ4RUFDZwDeZwQN8BV5pzRDEEKkVdGVvzCTmr/ShvYLKsrB5o+JqZEPny43A
         r1FntIEf0ztQY6nU7iuaTOIxGHwhTVvyFmpoPJHqaS/VAZWWjOkd1pck6aQTaTe3jKu3
         MkOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BgShu2/bsNR8HXCfjM6vkBrxzEZYbQ3mtG9WlxjKWGA=;
        b=O4NG8AXirNDK9JiL6BRDFiGrz86hvjioRqbknCVYUddC4ftZecoP6rxjlo15rhp3aP
         GYeEiYJMoEc/2N0smMg0+Yo9OaeryiXard9EFE+0Hx/FdFBiYhVBISvt5nqEy/+JihD/
         RdHpirlpAwZApW43s3UL8SF15oL7EXMqMq0MNchhjTwYm6wDZJ1fkR+7RBcUAP5u+hHq
         QNZSr5vrlVGL/aQ8IAkT0QmN/yHEnmUVyrpjz8I178j07dxKWOn0y/a2Y/LlW3EdywsN
         qmGC9rtFkEkUZ6WrGeIiPkTTXKGoF9jqIexXmlvTWv76vRtKdzm3U/CCtghdUZlpUdFW
         Cerg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G54nkd1F;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BgShu2/bsNR8HXCfjM6vkBrxzEZYbQ3mtG9WlxjKWGA=;
        b=l3ng86ck5HXe8brJWdMwMoa4yo8BFquzhwWlTddy6T+9I7smKDRl9wP2M/UBg8LiFs
         J5M5PNXXAIzocan/in5+kczMWWm90OihTXSOg6VeWQtEh18bGGe2ZcczcPnMKPtMPbWR
         Bx32yPKcjtKSNOI0KaoP75uqDN8EFbN3tv0KcZntlvLvxiN2ZOPFNwjGKFWMpw/SZ3oM
         BUHsBg5s6SLFQvSP6DG0PCwzjy5LoABP+jPg4mvKP51NOKbjXmABNML7ahHL7H58QJoz
         C7tpx7eqXiUOnvdvCX4W2WgsPL2apcEjOumuFxRhqzVEnr+9ZGwC7nJyUdZ0H7RxA4e7
         KTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BgShu2/bsNR8HXCfjM6vkBrxzEZYbQ3mtG9WlxjKWGA=;
        b=SpJzVblzi5pLN/EsyzwlcJijB0gGfd/sVhdrMWlu3pF0vwfBqSVhFASx2G1k4DaCsD
         eYnDNsWYHNsniCt481d17IwpNNtdesvtqjeYkCW8HHtBZjEtjvWPO4kHLaficzR91LAC
         RmbtsmPnj8WJfQd6WQWFyJexZ1PyARzxxaLIGrw+L+t4x2OQTsuJ2puAgQPJ3shm2BFx
         +alqy6v5hNnOKtZM6uDguoRxhykQQ5jkm+3WoysiqjDtYDdhGtKOI4pEdjrkajR4MITA
         ZdYyJ/xbdZLrdLRRsujvkmX4H6JlO8jP6h1PIoW/P0MxwlhIbIhTyXcloA7n17P21kBq
         6arA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532POd6aSm8GLHMjHnGU/Tl5xEMNNpU0HsUKcd7vVW0riH9tGFwD
	S25E4vWpxhpUYoZbyQBmRog=
X-Google-Smtp-Source: ABdhPJyeWgadi+rt98zmKdUeB9vQpTyNUPVsCkQ1lXBkzW0kWyh55UhsR6r09p8pZrdUQBRrAJ6rOA==
X-Received: by 2002:ad4:478e:: with SMTP id z14mr7530886qvy.52.1623793098823;
        Tue, 15 Jun 2021 14:38:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:351:: with SMTP id r17ls152050qtw.11.gmail; Tue, 15
 Jun 2021 14:38:18 -0700 (PDT)
X-Received: by 2002:ac8:7457:: with SMTP id h23mr1738776qtr.344.1623793098419;
        Tue, 15 Jun 2021 14:38:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623793098; cv=none;
        d=google.com; s=arc-20160816;
        b=aVdMT9LFq+8bUE1i8f1wQhoY7BrfACR1JhCLx6MZqpvqSF4votH9pgnxFFJucBGQus
         VDQ/q+UaLqDfbcd7zLkY3UHPj37HYudFxjEceUq5dVfbCMUlF+vDJUoTskMis04uovf3
         vdIMSQ+IiyfuzoXzaO09BOhwB7mkQdXsLwotCdk3/OYaO38Omxc954f+FFAfspXTybT+
         cdV3Bie6GmVKIBf/IA1vWdryewFw3vEXqJTMwq77eqw8zS5XniaxbTBkZpclcCpk4C8Z
         9bCTWMKlSlWbCuiMUw0fNekzcT4Q58ilzF8HFUD/cyv6EyS9b8GlaqO1tbXVWRdQxaS2
         8v3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RcaYfXb2ff5BC3VTEE7pr64Sb7M9xdx7qUsl91GHjnc=;
        b=CGtU61Um0dwxy6AHvWLCiCcPNP0yDzg8HHsMKlBujp9nt+ANPKxCH0B/iCB7ibMwPH
         olbbA3L6vrl1fnKIxfAArgxqUuWxh+UnRSf4EYSsu2XzgUNYYqvZ1Z3RdtqABECJlTAo
         mQp2RNoc/6DDAtpwxI9Yl66vcQH66p1FnDaxwlAqEeSF26j7H2tSRPeilX9YYmMN24Yr
         Zyr5zpGLBjkWRmWA+TjOdJh7gAXe43DilAe6QOHvi9Gy87Z3wr3fXyAXgXDplolandjb
         td4Ac/LNPLmZUG9w65OiDmApwRHhJm4XDQebSVXrZtK8OHXPIM+wL0buaHWRDdkpzGgm
         X5Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G54nkd1F;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g22si16585qkk.4.2021.06.15.14.38.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 14:38:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 979D761159;
	Tue, 15 Jun 2021 21:38:16 +0000 (UTC)
Date: Tue, 15 Jun 2021 14:38:15 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: Edward Cree <ecree.xilinx@gmail.com>,
	Kurt Manucredo <fuzzybritches0@gmail.com>,
	syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
	keescook@chromium.org, yhs@fb.com, dvyukov@google.com,
	andrii@kernel.org, ast@kernel.org, bpf@vger.kernel.org,
	davem@davemloft.net, hawk@kernel.org, john.fastabend@gmail.com,
	kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	songliubraving@fb.com, syzkaller-bugs@googlegroups.com,
	nathan@kernel.org, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, kasan-dev@googlegroups.com
Subject: Re: [PATCH v5] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
Message-ID: <YMkdx1VB0i+fhjAY@gmail.com>
References: <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
 <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
 <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com>
 <202106101002.DF8C7EF@keescook>
 <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
 <85536-177443-curtm@phaethon>
 <bac16d8d-c174-bdc4-91bd-bfa62b410190@gmail.com>
 <YMkAbNQiIBbhD7+P@gmail.com>
 <dbcfb2d3-0054-3ee6-6e76-5bd78023a4f2@iogearbox.net>
 <YMkcYn4dyZBY/ze+@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YMkcYn4dyZBY/ze+@gmail.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=G54nkd1F;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jun 15, 2021 at 02:32:18PM -0700, Eric Biggers wrote:
> On Tue, Jun 15, 2021 at 11:08:18PM +0200, Daniel Borkmann wrote:
> > On 6/15/21 9:33 PM, Eric Biggers wrote:
> > > On Tue, Jun 15, 2021 at 07:51:07PM +0100, Edward Cree wrote:
> > > > 
> > > > As I understand it, the UBSAN report is coming from the eBPF interpreter,
> > > >   which is the *slow path* and indeed on many production systems is
> > > >   compiled out for hardening reasons (CONFIG_BPF_JIT_ALWAYS_ON).
> > > > Perhaps a better approach to the fix would be to change the interpreter
> > > >   to compute "DST = DST << (SRC & 63);" (and similar for other shifts and
> > > >   bitnesses), thus matching the behaviour of most chips' shift opcodes.
> > > > This would shut up UBSAN, without affecting JIT code generation.
> > > 
> > > Yes, I suggested that last week
> > > (https://lkml.kernel.org/netdev/YMJvbGEz0xu9JU9D@gmail.com).  The AND will even
> > > get optimized out when compiling for most CPUs.
> > 
> > Did you check if the generated interpreter code for e.g. x86 is the same
> > before/after with that?
> 
> Yes, on x86_64 with gcc 10.2.1, the disassembly of ___bpf_prog_run() is the same
> both before and after (with UBSAN disabled).  Here is the patch I used:
> 
> diff --git a/kernel/bpf/core.c b/kernel/bpf/core.c
> index 5e31ee9f7512..996db8a1bbfb 100644
> --- a/kernel/bpf/core.c
> +++ b/kernel/bpf/core.c
> @@ -1407,12 +1407,30 @@ static u64 ___bpf_prog_run(u64 *regs, const struct bpf_insn *insn)
>  		DST = (u32) DST OP (u32) IMM;	\
>  		CONT;
>  
> +	/*
> +	 * Explicitly mask the shift amounts with 63 or 31 to avoid undefined
> +	 * behavior.  Normally this won't affect the generated code.
> +	 */
> +#define ALU_SHIFT(OPCODE, OP)		\
> +	ALU64_##OPCODE##_X:		\
> +		DST = DST OP (SRC & 63);\
> +		CONT;			\
> +	ALU_##OPCODE##_X:		\
> +		DST = (u32) DST OP ((u32)SRC & 31);	\
> +		CONT;			\
> +	ALU64_##OPCODE##_K:		\
> +		DST = DST OP (IMM & 63);	\
> +		CONT;			\
> +	ALU_##OPCODE##_K:		\
> +		DST = (u32) DST OP ((u32)IMM & 31);	\
> +		CONT;
> +
>  	ALU(ADD,  +)
>  	ALU(SUB,  -)
>  	ALU(AND,  &)
>  	ALU(OR,   |)
> -	ALU(LSH, <<)
> -	ALU(RSH, >>)
> +	ALU_SHIFT(LSH, <<)
> +	ALU_SHIFT(RSH, >>)
>  	ALU(XOR,  ^)
>  	ALU(MUL,  *)
>  #undef ALU
> 

Note, I missed the arithmetic right shifts later on in the function.  Same
result there, though.

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMkdx1VB0i%2BfhjAY%40gmail.com.
