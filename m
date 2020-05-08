Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBRMN2X2QKGQEIKSVKZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4791CA9EA
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 13:47:19 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id h13sf1141986oov.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 04:47:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588938438; cv=pass;
        d=google.com; s=arc-20160816;
        b=e1ZJ0MUFwd4L2GP4E9tYQ+O7Bz8ty8apBXA7NVIkoXyHLBxya+PzjI0aAjdfqQ9KXM
         mzhGERK0gkGXlXYo6neSm/DallLxiXI84PsuIaT3u0iAuMXJQ/nfky4UnPI0AWYmeN7S
         Dnc8B6xNkuZFHN6X0h54PFDD5CD9FkLAfB9dAp2apfFfnzWOcSFtKQsO8ZuNdCXY2WWv
         bPq7gSaZ8hsdnEci7ADOLI2WsiEv4JFJN8T0Ekory4Jl2///7f8tMnbL4D1L9PA/Gs9R
         rCBKdWnJSaGovACGvYAeIfzq/ZLmYW+4fzQ2gP2oijrgzeL4BL94iZSXv5l0RZV/8b5T
         7VPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Nj/oZ5bCi0zoVBvL1h/Lq4Zgu4mrTuK82kA8rlBLw2A=;
        b=aokCtxthyb9qWV/cqgAf46QQ9Z+lT/n4OvNiHm2+xbl3FvyiBrk4m7N+A8ixVYd2jB
         6nlVOcDnsrP69Xc2gvJYbohIgiX5fneTyphqNfoqpUtqlzCC2PjtQ1NihHSk4rB73rhu
         zMSea1w0NPpusyGwZ8cZYZQJvHpGnv8vg86jsOR8FY07P+JHXxxSscDBR3i1xmq8GBWJ
         x5VwCi3GoDW+nZTEKdbGIvfSXoP0Top/YSMYHGYYOdlD9vx+1DXEQoxqpzBsqvrCUzGY
         DYnPPplyzS4/s2Eq1MVH2k+WsItD+PpRcUuPyP9Ztx/TC/QSWYIT7TJGibAuUu+CfYN5
         FoMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Fbr0ksTl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nj/oZ5bCi0zoVBvL1h/Lq4Zgu4mrTuK82kA8rlBLw2A=;
        b=lLEnKwkdwYjqsBueYmPvXi62D4OC8OON6HK3IX9LuUlHxcFZ7W8hz+TeIJFvD7Bboq
         SIrxUqGkpvWKdmL0hpYLbPL3xBDp7EiX6DbvSgHmEoZf7pF81fgbeEwvbKA9n2SjMjYA
         jygcnhDAzS3va3notVnu1sBN5owxM9JBUyo3aMY+9zFd83ZzqBtnUxAS3L2+bM5svY4B
         GQkQPIz3Xu3OHHg3wjPbF4bW953ZjjrUrI4dH6xU8YwXcC9Co39QGHlSCiKB7b8XZq7N
         S1EYZTrDERuGxYnr974/H4kWRqFpxhw9FpqjVbl8o4Pv3Nq6sFNMyCSbDQnYkuNyVC3j
         eN8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Nj/oZ5bCi0zoVBvL1h/Lq4Zgu4mrTuK82kA8rlBLw2A=;
        b=bqyC0sPBu2r3hZctekBvIS9mCeRVb4BHl+v/2N0OM/CXEPMVQ+ynk9BPzD6n/TXi3i
         kKyKVmf4MIVG67XMxZAKShLRIQtmvqwx+N+erGhgTMe52z4YkDC48aXkClTwbABaCm9Z
         jIKQAEYxKLzwfVqDg7OTjNJgc0WCzlpPrUzetKepasGl7d0kWjOaIjh6qFQapgxDF5fc
         2EJ4wF3MfOmzjroHBmgubY6vhL7q75mMZgncSS7FlhnSL7dLHq77sROCYGNc37oTKtrk
         ZIF9MpaNBcx+UdA6vl4kkiEbpXRMBTmckn2nHuCeyJCqCWiw9POCby6HQVjAbHQu6UBp
         LTWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZc9gQPidZhIVTufQrNwILqeOgNdd5D3MJgNScvScr4r/okNjsV
	b2yLzVMSG+e/FBtG48TryOs=
X-Google-Smtp-Source: APiQypKM43OjdGWM8XhYTzKyrUre7mpNZMdPre0knIkDxO3D+tmpB93qpu+zjCGGCj6QlB98VO/i5Q==
X-Received: by 2002:aca:1904:: with SMTP id l4mr10256562oii.106.1588938438016;
        Fri, 08 May 2020 04:47:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1b0d:: with SMTP id l13ls332251otl.5.gmail; Fri, 08 May
 2020 04:47:17 -0700 (PDT)
X-Received: by 2002:a9d:7413:: with SMTP id n19mr1124554otk.0.1588938437524;
        Fri, 08 May 2020 04:47:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588938437; cv=none;
        d=google.com; s=arc-20160816;
        b=JyxXCUxWHQBQjbRkwO8Kizf0dDw7u28Tm1rdiI8CzxFSWUkCwIgtfPSkO/lxfK6iVR
         CXx3HNPV1Un4BoWJw7HLv6WbmgBWMIDjr3FUcepEl3cMCGG/iOL+KhcbHq4nke3pycmz
         nCa29RR5OeYUY1aLEMXGugkfYyA3rDJiJ+hiJWAoCHV7cBFAgr/lTW5BDuvr/Lo3u/g4
         R3BESp9N/g1ULWlXiL2jAAK1xPyoAwb9gBnDBCeEKRM8yIQclqvWFVZDlmR3JazUdYxv
         e3HdiWeadAvCefkUSFzTj2wjp+iS537qoZre+mtQhYJK1mwq/W3ykhalEWA9+jeNxNRt
         PgWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pxghWsCZZ6gIJ2KQjORu3zcfqWY5uV/ahzMFpppQ6KQ=;
        b=mfTeEAJOeHIAmerh8O/gMSBoF7W/gdi4+ZdrBISW1vxjTXj2Lig+mXC9y6AXMxXQA4
         Ag7NnVVsj1lGphUtD+XGuiN0F+xMIeYtZ0bkA2iRO9Clqkk/g5JroPeVOilJBnjYj/0U
         Sa5fV4nyhHqrMQbZGBva490Noz1rzIxirdX8FRFxVKAuzeyCb1L7kqcf8NLYbLWBWd1/
         uco1V7GY/jUsH0PoTBIeiK/c/Mc8xwfBAUQKcJ+wnNUDJRqN+ZxsHMH/N+QYGRDfIVZ9
         GUcsn0s+m7cy25Mlyh5PeLZ01mCFAcF1w2Vco2TgaXVOTdSBmKS7lv/kkXH9shGEUzL1
         q7dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Fbr0ksTl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w196si976377oif.4.2020.05.08.04.47.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 May 2020 04:47:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4AF1C208DB;
	Fri,  8 May 2020 11:47:13 +0000 (UTC)
Date: Fri, 8 May 2020 12:47:10 +0100
From: Will Deacon <will@kernel.org>
To: Luke Nelson <luke.r.nels@gmail.com>
Cc: Marc Zyngier <maz@kernel.org>, Luke Nelson <lukenels@cs.washington.edu>,
	bpf <bpf@vger.kernel.org>, Xi Wang <xi.wang@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Zi Shen Lim <zlim.lnx@gmail.com>, Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
	Andrii Nakryiko <andriin@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
Message-ID: <20200508114709.GB16247@willie-the-truck>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-2-luke.r.nels@gmail.com>
 <20200507082934.GA28215@willie-the-truck>
 <20200507101224.33a44d71@why>
 <CAB-e3NRCJ_4+vkFPkMN67DwBBtO=sJwR-oL4-AozVw2bBJHOzg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAB-e3NRCJ_4+vkFPkMN67DwBBtO=sJwR-oL4-AozVw2bBJHOzg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Fbr0ksTl;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, May 07, 2020 at 02:48:07PM -0700, Luke Nelson wrote:
> Thanks for the comments! Responses below:
> 
> > It's a bit grotty spreading the checks out now. How about we tweak things
> > slightly along the lines of:
> >
> >
> > diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> > index 4a9e773a177f..60ec788eaf33 100644
> > --- a/arch/arm64/kernel/insn.c
> > +++ b/arch/arm64/kernel/insn.c
> > [...]
> 
> Agreed; this new version looks much cleaner. I re-ran all the tests /
> verification and everything seems good. Would you like me to submit a
> v2 of this series with this new code?

Yes, please! And please include Daniel's acks on the BPF changes too. It's a
public holiday here in the UK today, but I can pick this up next week.

> >> We tested the new code against llvm-mc with all 1,302 encodable 32-bit
> >> logical immediates and all 5,334 encodable 64-bit logical immediates.
> >
> > That, on its own, is awesome information. Do you have any pointer on
> > how to set this up?
> 
> Sure! The process of running the tests is pretty involved, but I'll
> describe it below and give some links here.
> 
> We found the bugs in insn.c while adding support for logical immediates
> to the BPF JIT and verifying the changes with our tool, Serval:
> https://github.com/uw-unsat/serval-bpf. The basic idea for how we tested /
> verified logical immediates is the following:
> 
> First, we have a Python script [1] for generating every encodable
> logical immediate and the corresponding instruction fields that encode
> that immediate. The script validates the list by checking that llvm-mc
> decodes each instruction back to the expected immediate.
> 
> Next, we use the list [2] from the first step to check a Racket
> translation [3] of the logical immediate encoding function in insn.c.
> We found the second mask bug by noticing that some (encodable) 32-bit
> immediates were being rejected by the encoding function.
> 
> Last, we use the Racket translation of the encoding function to verify
> the correctness of the BPF JIT implementation [4], i.e., the JIT
> correctly compiles BPF_{AND,OR,XOR,JSET} BPF_K instructions to arm64
> instructions with equivalent semantics. We found the first bug as the
> verifier complained that the function was producing invalid encodings
> for 32-bit -1 immediates, and we were able to reproduce a kernel crash
> using the BPF tests.
> 
> We manually translated the C code to Racket because our verifier, Serval,
> currently only works on Racket code.

Nice! Two things:

(1) I really think you should give a talk on this at a Linux conference
(2) Did you look at any instruction generation functions other than the
    logical immediate encoding function?

Cheers,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508114709.GB16247%40willie-the-truck.
