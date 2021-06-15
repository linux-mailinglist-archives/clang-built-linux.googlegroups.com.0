Return-Path: <clang-built-linux+bncBDEZDPVRZMARBMWJUSDAMGQEELTGHCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B293A8B97
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 00:07:47 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id s5-20020aa78d450000b02902ace63a7e93sf335524pfe.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 15:07:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623794866; cv=pass;
        d=google.com; s=arc-20160816;
        b=P2u/hRGgnbB9dMWqeU6TxJb2m7N87XnFN+4reP6NMbd9nRpGFrsfZ7BKjdKAWAiqyv
         Zgc73F3uk7GKT3flRhuBgJwqfB75a1bg0thLAOLoYPl286Wqr5/Q/gxrMcwW/cMFMTsc
         h936thR4TsCuRfio7U4yjmm972Pv5Y0TjTl64b70YrmTTf6XzStOc51s6ndDowXO4LRp
         zE4ygaF1NKr4IlxtUviF9sE434dQDJ5SVXwxJxtjUHYD5e2xZF5LpuDtLm0sgU9kaNHX
         f2doMo9Exku/pwSbFCQpFMimLSGc4XwxqEOTdvC9j6xBSBFU2mj1q871tQFZB9jQJdkd
         RfIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=N7BAgWj0SdFgXcyWE96tZf9vCNbihfecCyjlqWWmVo4=;
        b=YRECtJ2g9Beg9emDuNF6anDwp3Zuj1MTDqCuEMCIoX3nUh3cWs/x02ZYFx1QcX3zlW
         QQaM2qDeMqQMegA2exMjvZNdhi1/WJPPPFDP/ArSUQlxkvthzqKtf1IKT7YsyMhWGrA/
         j5VB+cKSU7zXHhWXU6762yNBfFjNiDVbW0WIan81axtxIde3rKNrjlJd02IL+Yh8Eeug
         QD9chWLy6Igi0I+XWLqelusI4NgkktL6vKnWcnDmIgAEQHu3f7ReHlDYD+xsEx5qM6g5
         Ljy0rAafZALRUgOZdlnDqzdO64KanlRkRHm3EXavjmI/KFrLhu56nDzVvXG1NHnflS2B
         GcAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iLXao5Jt;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N7BAgWj0SdFgXcyWE96tZf9vCNbihfecCyjlqWWmVo4=;
        b=DWcYD/MlSWV4sMFS/+N+wgqCj6orIIJfDoWmS9mcZ1lwCW1FdE6+69wkdZvA9mwe9V
         gwT4AVRxfIVd9La3WbU6JpYkybRtG9w+XC5CGf/wtHah7WOeP7/KHuh6VUTOSEurWXkB
         F4EkTCS2BK80PYUg2lsylNeOZvJfiV97EQD2WTHWx708i63f0mjuJe6PnaXHaJFhRS/q
         6IOntohRhCBlPnw+jBzyoOxHSvxibuuoQfcHI04O0g9VvQm6kmOcRH/U6pDH1SYIwXjn
         feSL7YrzT4zh7vsy1R9Iv+kwsDV4Qo5lgQ6uDiFKAs3qU4dbNuV3Unt9cu22PgGDHwux
         GImA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N7BAgWj0SdFgXcyWE96tZf9vCNbihfecCyjlqWWmVo4=;
        b=rKIZ+jvBn6ut/Sh48ne9+9EWlCfcNZuR5133sPoOGPj5jjd3YJVG1SzNwLZehxEUtX
         FhJMdBqDd6u8qJnGBOq1xInbJhymkNw9DNpT+bayZYBEUVmYuhXrMf+et4sRaqif9gyi
         ttj01SOY8BJZ7ZXQdPqBao2fLt4ovjZDJ2Z4uFkbEJbbXA/w9R7qUymfZ+7/k/XqLjU4
         b+8KKaeWAHla4A5Drffy29MCNwC0YQEsYzPtgQQOel8Qm8AHqY8/HlDFTs3bufhDw/Jr
         GTkMHfnpbujkPYrWd0bLApFt4AGEy/a6WEkCs923Ra7lbU2z8gRr1QBL62T5DrStk73b
         eZFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AnqKalIpd55aRy0eD9HSr8NY3oSdwbErx1l0Rn59Y/H0OSrTS
	3yEQv1t3nMOUW0DnUMqF27I=
X-Google-Smtp-Source: ABdhPJzvc3o0oexHONxVxOSwjn+sriWxIS1kDwsxza4oDxKsxNtqdJ8oMzBiKXRdb/y6bsImWfF8ag==
X-Received: by 2002:a17:902:a613:b029:119:50c6:e44d with SMTP id u19-20020a170902a613b029011950c6e44dmr6299193plq.24.1623794866169;
        Tue, 15 Jun 2021 15:07:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:211e:: with SMTP id h30ls130794pgh.1.gmail; Tue, 15 Jun
 2021 15:07:45 -0700 (PDT)
X-Received: by 2002:a63:1210:: with SMTP id h16mr1640227pgl.189.1623794865572;
        Tue, 15 Jun 2021 15:07:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623794865; cv=none;
        d=google.com; s=arc-20160816;
        b=bavYB5r+ttc6q+zblvX5VdPoSoKu/ZJ6WRi3mAlkfohAwQSWxIEbV9nG3C70RACODp
         Ab71oVggCw3prhIgS2Pdr2THRNKbcpWRmt0ZLF92W+mdNmlh1zJ7Awr3c/Cs2wV84ytd
         dT31uOl5uqKoupnh5gf3K8yDUonkRXGqjDJPjEbIykwhiRHkL8KOto0a3rHAKHcwsXwS
         ySIoc8YxFSssgHBaxU0M9DnB2pb1yniPBAcZPfSVG+aptIHOYK0p0tBgtp2pRxRMygY6
         wQbcl52eowYZ/OXYNzzpOKOPH1diN3q9vt10HnCaw2cGkA5ygmj+BMeeUwO4JqtD6vRv
         mA+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PFcpNSSwpGh2g6z9qAL3Dpip3O1aYObWgJ6QmsQMEWc=;
        b=I1BuBXWc8cQF+yQMiASSjTFB3+AlEGlxFM0LmdTJpC77zzyAPZHuLRAkhAl7ZpXhPD
         CqeQTFRvzMl4rOM9rkfg8TdAVStddvXFGpf5ZabfI7C690ynxQ1kRPnPyivpzpIvqIPm
         vlTZoZiP9+8Xzk+QFqPi3vh7SeFMmvwdb3WVCCWCQA5FfPOlAtzRhlsRTRqn58s0rq56
         4xNv/BQUvlgmns4g+M31YW9ALwQa6DLV9Vtm39Zu2Uek/Ozjzjz7t0uGChE3gOJ8jkKd
         qWFWi1hfPS0LZGojqhVSNewLDkCQ3y5LacBnQbz9a1m+wMvfAfIYlaTjTvLMqe8Q3Yyd
         gpaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iLXao5Jt;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m14si425936pjq.1.2021.06.15.15.07.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 15:07:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A9F6D610EA;
	Tue, 15 Jun 2021 22:07:44 +0000 (UTC)
Date: Tue, 15 Jun 2021 15:07:43 -0700
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
Message-ID: <YMkkr5G6E8lcFymG@gmail.com>
References: <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com>
 <202106101002.DF8C7EF@keescook>
 <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
 <85536-177443-curtm@phaethon>
 <bac16d8d-c174-bdc4-91bd-bfa62b410190@gmail.com>
 <YMkAbNQiIBbhD7+P@gmail.com>
 <dbcfb2d3-0054-3ee6-6e76-5bd78023a4f2@iogearbox.net>
 <YMkcYn4dyZBY/ze+@gmail.com>
 <YMkdx1VB0i+fhjAY@gmail.com>
 <4713f6e9-2cfb-e2a6-c42d-b2a62f035bf2@iogearbox.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4713f6e9-2cfb-e2a6-c42d-b2a62f035bf2@iogearbox.net>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iLXao5Jt;       spf=pass
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

On Tue, Jun 15, 2021 at 11:54:41PM +0200, Daniel Borkmann wrote:
> On 6/15/21 11:38 PM, Eric Biggers wrote:
> > On Tue, Jun 15, 2021 at 02:32:18PM -0700, Eric Biggers wrote:
> > > On Tue, Jun 15, 2021 at 11:08:18PM +0200, Daniel Borkmann wrote:
> > > > On 6/15/21 9:33 PM, Eric Biggers wrote:
> > > > > On Tue, Jun 15, 2021 at 07:51:07PM +0100, Edward Cree wrote:
> > > > > > 
> > > > > > As I understand it, the UBSAN report is coming from the eBPF interpreter,
> > > > > >    which is the *slow path* and indeed on many production systems is
> > > > > >    compiled out for hardening reasons (CONFIG_BPF_JIT_ALWAYS_ON).
> > > > > > Perhaps a better approach to the fix would be to change the interpreter
> > > > > >    to compute "DST = DST << (SRC & 63);" (and similar for other shifts and
> > > > > >    bitnesses), thus matching the behaviour of most chips' shift opcodes.
> > > > > > This would shut up UBSAN, without affecting JIT code generation.
> > > > > 
> > > > > Yes, I suggested that last week
> > > > > (https://lkml.kernel.org/netdev/YMJvbGEz0xu9JU9D@gmail.com).  The AND will even
> > > > > get optimized out when compiling for most CPUs.
> > > > 
> > > > Did you check if the generated interpreter code for e.g. x86 is the same
> > > > before/after with that?
> > > 
> > > Yes, on x86_64 with gcc 10.2.1, the disassembly of ___bpf_prog_run() is the same
> > > both before and after (with UBSAN disabled).  Here is the patch I used:
> > > 
> > > diff --git a/kernel/bpf/core.c b/kernel/bpf/core.c
> > > index 5e31ee9f7512..996db8a1bbfb 100644
> > > --- a/kernel/bpf/core.c
> > > +++ b/kernel/bpf/core.c
> > > @@ -1407,12 +1407,30 @@ static u64 ___bpf_prog_run(u64 *regs, const struct bpf_insn *insn)
> > >   		DST = (u32) DST OP (u32) IMM;	\
> > >   		CONT;
> > > +	/*
> > > +	 * Explicitly mask the shift amounts with 63 or 31 to avoid undefined
> > > +	 * behavior.  Normally this won't affect the generated code.
> 
> The last one should probably be more specific in terms of 'normally', e.g. that
> it is expected that the compiler is optimizing this away for archs like x86. Is
> arm64 also covered by this ... do you happen to know on which archs this won't
> be the case?
> 
> Additionally, I think such comment should probably be more clear in that it also
> needs to give proper guidance to JIT authors that look at the interpreter code to
> see what they need to implement, in other words, that they don't end up copying
> an explicit AND instruction emission if not needed there.

Same result on arm64 with gcc 10.2.0.

On arm32 it is different, probably because the 64-bit shifts aren't native in
that case.  I don't know about other architectures.  But there aren't many ways
to implement shifts, and using just the low bits of the shift amount is the most
logical way.

Please feel free to send out a patch with whatever comment you want.  The diff I
gave was just an example and I am not an expert in BPF.

> 
> > > +	 */
> > > +#define ALU_SHIFT(OPCODE, OP)		\
> > > +	ALU64_##OPCODE##_X:		\
> > > +		DST = DST OP (SRC & 63);\
> > > +		CONT;			\
> > > +	ALU_##OPCODE##_X:		\
> > > +		DST = (u32) DST OP ((u32)SRC & 31);	\
> > > +		CONT;			\
> > > +	ALU64_##OPCODE##_K:		\
> > > +		DST = DST OP (IMM & 63);	\
> > > +		CONT;			\
> > > +	ALU_##OPCODE##_K:		\
> > > +		DST = (u32) DST OP ((u32)IMM & 31);	\
> > > +		CONT;
> 
> For the *_K cases these are explicitly rejected by the verifier already. Is this
> required here nevertheless to suppress UBSAN false positive?
> 

No, I just didn't know that these constants are never out of range.  Please feel
free to send out a patch that does this properly.

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMkkr5G6E8lcFymG%40gmail.com.
