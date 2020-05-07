Return-Path: <clang-built-linux+bncBDPKNA7WYADBBI4E2L2QKGQE424VZ5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 812861C9DD4
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 23:48:20 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id p9sf2912418lfh.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 14:48:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588888100; cv=pass;
        d=google.com; s=arc-20160816;
        b=No6pAeocRzLTPuW5ws77fCsNBG/0v7v6QkAb5na9YAIy6IYF/RjfrnIzJpFNdYqFv5
         6l541VwGB+eXFNTCNSKDscyy01n9xS6SSYkFjYFXfqimlL5ZfR7PCvjyDZesv8Q4p8IO
         YqucBJ20h5Lm3SGjmiBCG2Y55Kz84bZaf44Yrq32sjd1MRYUUv5fzHFnusE/Re8wOuAa
         En/wTx1eQze6e+6SGPaG1InEFTJSVEvN3sSQhOeAovo7DXbVoOV27s+WL75PeNZWcBCt
         fV29hfWjJ5yFPVuFGE2TWmndxMnptoJxTRC46ZubDDnrusfvYkuZXmss2HxQyhz6pkjm
         msog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=BuU4xw/uXo3uJgYwhBu5hrSJf3+3s9bEDAju1pcP+uA=;
        b=1B2u+u5vSWwBjyJk2LPJi+dOhqlL6fdG2hln74EmOHOvt540mafQoaDugcOtYkSdvZ
         ACZgKO90TeR2u77KhYDN7Lstpq17doEY+dcjr5hH1IwejG9q+V/nNWHDJ6UZ0cFduPfr
         j331DvAUmDE85zMMIUeLvDTo4SciHPpUQGsxIRYeeKefyyLy+pHcDnt4RKPCyiUdm+TZ
         yFNkOInUWYPehLffZAny4yNXh9wyI6fDT8ZtnKMVUxz+z+YggVce+7C0GuS9Ko0IPBbJ
         tPpIF9HqB9zaL4vUtAhrZK1AC9yQnYw6ff0flTE5krWLHZy40doiTVHA5UAN6axejFAT
         YvJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XTFfyL0X;
       spf=pass (google.com: domain of luke.r.nels@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=luke.r.nels@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BuU4xw/uXo3uJgYwhBu5hrSJf3+3s9bEDAju1pcP+uA=;
        b=OMMuEv9ePfLavggDAgPqOIzMhvlRCtxD6xa+8Y09HRCtWuQ2RCdpPI3tPl6ZNt43xT
         6wUL72oImadcRcQVOflEH/jjusd3b+WzcRC4CZt68mzn6OoAoZ4Jvavu2VnQzIR2EXpq
         eegBDgAXxn+1ugcaKaeArrlXCCTZKzwmjj06T4/twjRBVoeXJ8Wub55j5GLznhjLIH0b
         PjW1HN/vuaQq2r7t9QLwE7ltxhL9rw1HVq4FS4z7ySZc+eBdWF+yIDqI4qI6GYM2VbWV
         vVQE9Xtrys3gDOBlvOxHPkiGdsvkfwx8jTiWzthmr2sZcFMkciB8Qb2hDZPRffS+aras
         z+mQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BuU4xw/uXo3uJgYwhBu5hrSJf3+3s9bEDAju1pcP+uA=;
        b=duJqaJZxW3bour5u5xyozlj63ZcFQvprUtc61Pn57UFT1IBmB1RaKTM8ES8F13xuQP
         Z5X+wAQOBjOzoLjzn+E1NHxwqfoJ/iyLDSEPrO49rEkSG1ssR50SOshA4RMJQ1yud8Yh
         XEaQ0AJU3awYurdjht2KBJqpOECOZTtgAlpDGozngSx3AggNltfj8r503ivDLZkls/UK
         wjcSZDYgIzrYNPQpPkYEYwrvuOx0Rq4xXi8GQl8Y9Jgc9iZyDVI93547sCEiXBOgd7sG
         tMMHBnW6SjXkf2P2fFe7P3dDpfieu4Bdu3Jlc2/AlmLptAnmmwza9b9bMFR47bWPtFix
         X96Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BuU4xw/uXo3uJgYwhBu5hrSJf3+3s9bEDAju1pcP+uA=;
        b=GBZmLBA94gq4WZR3HzFishhYMjcSWw5HLRWwYavmZlgSe04JtKjSpLlF4MhVWFL1Y8
         7cNSXBa2adae/Bb6CXMQi6h/5oYYJ0i/jc94MuPIWho3fUrtHmUQe2AaUaFG6FX+fHX1
         ZbzcpYHYbHGBlieUZte14OiFOEgmdWkl5O8m5YJ9E/7rPXYh21uuQdTrf0cCGNgVVmnC
         IywIpNIloUtqk4Mw1cX3U1QjklEtyDpr5AAw8SNNEAwMX2POB8RSROoHTj0M4xG93MDW
         Ifzge6OiwnG4IPf3IPoh3Y74kZ3doxAChglcKZoIP7aaomwBoshkq0FZgWZBeLPmi1A0
         teHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZAPA9xaTZ8RigTBKyxjNJ4SMAHlifFN0Ke9PHV5+ltahd18TpS
	OQKQwrlwzRJnSFrYBQ6+PyM=
X-Google-Smtp-Source: APiQypKR1VKSf+O4MJ3wt1oZraaXN95I9MYzMdn1pXdq2Jhgyh7bvjUEO7UJ54xjxv9eVfPEFvywLw==
X-Received: by 2002:a05:6512:308c:: with SMTP id z12mr9938013lfd.195.1588888100018;
        Thu, 07 May 2020 14:48:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5c09:: with SMTP id r9ls1758812lfp.5.gmail; Thu, 07 May
 2020 14:48:19 -0700 (PDT)
X-Received: by 2002:a05:6512:3136:: with SMTP id p22mr10083708lfd.159.1588888099180;
        Thu, 07 May 2020 14:48:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588888099; cv=none;
        d=google.com; s=arc-20160816;
        b=gFqFfhGZRZXcDt6gGE2H6BAWn4Z/czjbq7lWb4SJej/ZYgmc0h9GEKneTCCebb1Yba
         fsFzM8FlZom24qs3uA7wltjpRvqgtQfy5O9sEcRCA3ECyEj65R4WnQfPPuqgKxERhTVl
         xxsQ1hDKPNThKEADIuUHkzbm3YcPiFN4VNIzAgWzPaBsQrdygNdLDTWBSKEhLkoI3MqG
         GMe6R47ODS2BofSNz5eAD5SZvWAfIcY4ZnttBpViI4glTibzFqt6TrR2Vf8D/oxopvPu
         5m0PoTMcuPOU/rSnKZhJbGnwEEPMmx1kFIfh7J4kW2w3OxI7CuSaQ/xspdWjA8jEdbtD
         m/cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3VucMel2VcMPBSW+yTXmQNjNtFkFkvQaIgxnkoAD4f8=;
        b=F0zp+/2CumBbyA7mpH8DsWAe2YT8Vc8c1gKH5KeTsHpIeiiSGeZE9vW+XISCk1rGHm
         8+wJIVxoH1AcBffFYNen0RTN7sA6uF27PHCErB/Sp20B7PlSbmPDZIYytRPGPAQ2QZWt
         VCa/TGglnjHGtpq7zZ1lUyh+Uqx63wkZAPjaGoAQHofgljcMm4Ag33AEjjMathQe7M8/
         PN2iogxT7sLycTGOnHDi3RXXnc45696lOmYwVX2WpLlPlYvU2bqkTXMVUSofgdH6qvmR
         hteUIq2nYCSFub4S+GEj8d+VJ56DYOBVAav6RgQYuiirlQLhN+0UDSbEaLWwYYu7kE/a
         0QBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XTFfyL0X;
       spf=pass (google.com: domain of luke.r.nels@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=luke.r.nels@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id c16si394474ljk.5.2020.05.07.14.48.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 14:48:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of luke.r.nels@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id g12so8537572wmh.3
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 14:48:19 -0700 (PDT)
X-Received: by 2002:a05:600c:24cf:: with SMTP id 15mr12017512wmu.94.1588888098625;
 Thu, 07 May 2020 14:48:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200507010504.26352-1-luke.r.nels@gmail.com> <20200507010504.26352-2-luke.r.nels@gmail.com>
 <20200507082934.GA28215@willie-the-truck> <20200507101224.33a44d71@why>
In-Reply-To: <20200507101224.33a44d71@why>
From: Luke Nelson <luke.r.nels@gmail.com>
Date: Thu, 7 May 2020 14:48:07 -0700
Message-ID: <CAB-e3NRCJ_4+vkFPkMN67DwBBtO=sJwR-oL4-AozVw2bBJHOzg@mail.gmail.com>
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Cc: Luke Nelson <lukenels@cs.washington.edu>, bpf <bpf@vger.kernel.org>, 
	Xi Wang <xi.wang@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Zi Shen Lim <zlim.lnx@gmail.com>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, 
	KP Singh <kpsingh@chromium.org>, Mark Rutland <mark.rutland@arm.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	linux-arm-kernel@lists.infradead.org, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luke.r.nels@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XTFfyL0X;       spf=pass
 (google.com: domain of luke.r.nels@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=luke.r.nels@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi everyone,

Thanks for the comments! Responses below:

> It's a bit grotty spreading the checks out now. How about we tweak things
> slightly along the lines of:
>
>
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 4a9e773a177f..60ec788eaf33 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> [...]

Agreed; this new version looks much cleaner. I re-ran all the tests /
verification and everything seems good. Would you like me to submit a
v2 of this series with this new code?


>> We tested the new code against llvm-mc with all 1,302 encodable 32-bit
>> logical immediates and all 5,334 encodable 64-bit logical immediates.
>
> That, on its own, is awesome information. Do you have any pointer on
> how to set this up?

Sure! The process of running the tests is pretty involved, but I'll
describe it below and give some links here.

We found the bugs in insn.c while adding support for logical immediates
to the BPF JIT and verifying the changes with our tool, Serval:
https://github.com/uw-unsat/serval-bpf. The basic idea for how we tested /
verified logical immediates is the following:

First, we have a Python script [1] for generating every encodable
logical immediate and the corresponding instruction fields that encode
that immediate. The script validates the list by checking that llvm-mc
decodes each instruction back to the expected immediate.

Next, we use the list [2] from the first step to check a Racket
translation [3] of the logical immediate encoding function in insn.c.
We found the second mask bug by noticing that some (encodable) 32-bit
immediates were being rejected by the encoding function.

Last, we use the Racket translation of the encoding function to verify
the correctness of the BPF JIT implementation [4], i.e., the JIT
correctly compiles BPF_{AND,OR,XOR,JSET} BPF_K instructions to arm64
instructions with equivalent semantics. We found the first bug as the
verifier complained that the function was producing invalid encodings
for 32-bit -1 immediates, and we were able to reproduce a kernel crash
using the BPF tests.

We manually translated the C code to Racket because our verifier, Serval,
currently only works on Racket code.

Thanks again,
- Luke

[1]: https://github.com/uw-unsat/serval-bpf/blob/00838174659034e9527e67d9eccd2def2354cec6/racket/test/arm64/gen-logic-imm.py
[2]: https://github.com/uw-unsat/serval-bpf/blob/00838174659034e9527e67d9eccd2def2354cec6/racket/test/arm64/logic-imm.rkt
[3]: https://github.com/uw-unsat/serval-bpf/blob/00838174659034e9527e67d9eccd2def2354cec6/racket/arm64/insn.rkt#L66
[4]: https://github.com/uw-unsat/serval-bpf/blob/00838174659034e9527e67d9eccd2def2354cec6/racket/arm64/bpf_jit_comp.rkt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAB-e3NRCJ_4%2BvkFPkMN67DwBBtO%3DsJwR-oL4-AozVw2bBJHOzg%40mail.gmail.com.
