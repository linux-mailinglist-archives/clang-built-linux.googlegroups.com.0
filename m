Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBO4W4X2QKGQEIMDG2RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5861CDA89
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 14:55:24 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 41sf4102202oti.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 05:55:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589201723; cv=pass;
        d=google.com; s=arc-20160816;
        b=capPtjdU8cyQpL0bvjuNpB5zLFBzSqYTcYFIwBCAHwYEFbG+AhDYLxYP2ulLL61F/w
         nqeGod2TPB6vFtuLlcYDy9wiPcmX7sMqJy0yl76KI+EKTU5khRG3xEtmTSYRtujEfXit
         0bGLtxIQE55w6/XW4l2+KzViwelS8rUK9VnGxLD0bIvnOJkmkO2ZFo9hBAPKNeZTh7xX
         xorVXG/tm8OkhHbfwqJoy7WyB9raAGLUgLNYUhBPVshA9nl/ni8JIA3fgrhjCbOatI2G
         iYu8KGEOU39TG9yjzJLce3GGTxdCKlc6+FJZU3LDHRFiRQMorrwQ5Zf/gsjc5oxIRPBV
         GmrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=edNQo9BJS17WIS+AyM8YMC4FzrimnseugDoLECb65fk=;
        b=Hv57Xs6B9cAzMTrITQ3X2frxoFrjrOtQittkrFMDer6EJd7G4rUWZB/j3SKIllszv3
         R37qumMOcjeFyAoVkS4xGojedUOZvLNATgvFq+BuG2VBPvY2kH9OyqrORWxZlNIV+EV9
         B/udldeflUgT55qNhsKKUCJKKv5i/aUkYkXaKf/f8RrMeHULdL90Cuhlj2MVmQ7h7+R6
         3zel/7jpBFmX2Qc33NvjYMnsaTMjgytO3nAckTJeVP5r8xghSXyAaVV7bSWG/3ZCYOQr
         4yLamq5s15GcHXwRrkC0meqiZrW4zjOE9WJkQy74/r2OxBNeqPhEbOho6tzuLkUFIckD
         4YWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=etOzo4t5;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=edNQo9BJS17WIS+AyM8YMC4FzrimnseugDoLECb65fk=;
        b=OZTztGywaDQeqKvJDOpOnUdHuvbqk6fR7PBJNr98ZDQdslLZ631JSG/pe48DEjfaHG
         MQq9ZYAgnPb9bGkGChT8Fvs/KW6TkrXQfx6z1nNAJ9ABy66YWR6mPBCJlMVmsqbSkh08
         asj0Zhus55sejYVwTAnZyagVXK1MTDZqFoldeZLMq+2hyWz51DdwaiphTE5Zw2ulzCRr
         cbhb+iJz5aD0vDY+x6PGCzKJiQ2qdj6hWj3jOytyWfHeUZ4T+/OTphN4cA0rZ4vfc3s6
         cJZhJmJ+Cgr2tQmabwlnvVTW/iR0n9FXtT6Oe2oy/lfZk7COx06UPRE8bMEtjzs1+9Pf
         tvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=edNQo9BJS17WIS+AyM8YMC4FzrimnseugDoLECb65fk=;
        b=A8NeuQ4sFLhi/TbbHqSLczppQGfO6wYgeGpQpmY2AUnYW19jlvg3qmwJA1PL8oY3gb
         AGz5NtacMiJHnJPXmCdtaQOMSndp05YFXvEmfnUe8f7ckX+BaeLsASbG4bo6Y0/KuTYM
         JgR9O1IpBPMj+hA8UcGNlkDSfoLhTwuNqrihYEefOtSHu4kyZwAldiINj7KnuJqiI3kW
         7dOuxQE72lUxhjTOTy2R2MHBh0P/Vi0f63DgAi/5gkCa6DK2FFTUE98puJVYibMfz2x3
         thLscyLLdT4WKvB4TdbCHyskNWgcodMi+1/6QuHugVyNpRrMnEnryMxQRZeiChElHNw4
         +WYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYHhBgadIeSlATisCQr9gsaaGdXX0W7HCM/g0gW1Xo3RJzq7fsS
	9cu6GhtpGpdvZcsNEeqaFV4=
X-Google-Smtp-Source: APiQypILYN6Jn8If07KUoL98dkXePaWqIlmYIqp5RlLxtL/hs+mJ6nJO3geqBi6MHQJ2rPBYtkfJ8g==
X-Received: by 2002:a05:6830:1149:: with SMTP id x9mr12387795otq.332.1589201723689;
        Mon, 11 May 2020 05:55:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:3147:: with SMTP id c7ls1681941ots.7.gmail; Mon, 11
 May 2020 05:55:23 -0700 (PDT)
X-Received: by 2002:a05:6830:158b:: with SMTP id i11mr12994803otr.160.1589201723328;
        Mon, 11 May 2020 05:55:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589201723; cv=none;
        d=google.com; s=arc-20160816;
        b=rVT0fEfvJGN0pHm3nMJa0me38gFxgwORp5piRl85EWAhifGYpk1+FrNLGwQOubEplZ
         jBIAXfNGpaf0mB+xduN7rnK0Me2elr7NSipCluACk5Rn2yoZMLq5sEy4lklYDqwT2AaT
         9cOLKHJjJA4twYgXqBGV13ZibcbrjcQsZ0uLBeB5Eu2mfakkQWsAGA4HfczfN7YE9LTY
         EPIHBBJnFFueWhnwIUfprFz9tc453a45+DAAvOWCukh+kXMAx1GqgDhN4Sc0/sFWyYpQ
         /X4RhUqzrYvqv30zwSpdNeD4bunUc61+uADPgZbZzioVzMUpPZ4uZPEFAzZTUjkrmPT+
         6P4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+tq+oIg6yKfVpEP47QBE3fVlR2hUsQZwefsLPbgWGTY=;
        b=joCniGyGG16E262SMzwTOoPMONlAd6mQjESZKotO90lZcE+vWPwUOaVj+Oz7HtZP5/
         UIVGyqiGjb7eDQyyEhx1MVnj815QogofI/LcZmSrnftpxShtHG7UDwlVKSkCYkfthr3z
         LS8pBbVfhP6HDMh/HgSHwdnyUnpOeCNXmAxQf35wYx6ehf8X13Ruiuq4ACfDgIIAXGBQ
         aAeEXxM4Kb35v8hg9eKa5uj4cmbgL8tkxYmr+jQP8kRygbKiKVJpco+cylhJ1OQd5kHB
         wsJRPgZ6kkUs9lDjUrdLn1B9wD7v9DgP5Dp+oxgtTJ3dFXfiTgNH8CNrJx9SIRicRGp0
         OvBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=etOzo4t5;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k65si231933oib.2.2020.05.11.05.55.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 May 2020 05:55:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8853F20722;
	Mon, 11 May 2020 12:55:18 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Luke Nelson <lukenels@cs.washington.edu>,
	bpf@vger.kernel.org
Cc: catalin.marinas@arm.com,
	Will Deacon <will@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Christoffer Dall <christoffer.dall@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Andrii Nakryiko <andriin@fb.com>,
	Zi Shen Lim <zlim.lnx@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	John Fastabend <john.fastabend@gmail.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Luke Nelson <luke.r.nels@gmail.com>,
	Song Liu <songliubraving@fb.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	KP Singh <kpsingh@chromium.org>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Xi Wang <xi.wang@gmail.com>,
	Yonghong Song <yhs@fb.com>,
	clang-built-linux@googlegroups.com,
	Alexios Zavras <alexios.zavras@intel.com>
Subject: Re: [PATCH bpf-next v2 0/3] arm64 BPF JIT Optimizations
Date: Mon, 11 May 2020 13:55:08 +0100
Message-Id: <158919609995.133008.6274359604607907270.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508181547.24783-1-luke.r.nels@gmail.com>
References: <20200508181547.24783-1-luke.r.nels@gmail.com>
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=etOzo4t5;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

On Fri, 8 May 2020 11:15:43 -0700, Luke Nelson wrote:
> This patch series introduces several optimizations to the arm64 BPF JIT.
> The optimizations make use of arm64 immediate instructions to avoid
> loading BPF immediates to temporary registers, when possible.
> 
> In the process, we discovered two bugs in the logical immediate encoding
> function in arch/arm64/kernel/insn.c using Serval. The series also fixes
> the two bugs before introducing the optimizations.
> 
> [...]

Applied to arm64 (for-next/bpf), thanks!

[1/3] arm64: insn: Fix two bugs in encoding 32-bit logical immediates
      https://git.kernel.org/arm64/c/579d1b3faa37
[2/3] bpf, arm64: Optimize AND,OR,XOR,JSET BPF_K using arm64 logical immediates
      https://git.kernel.org/arm64/c/fd49591cb49b
[3/3] bpf, arm64: Optimize ADD,SUB,JMP BPF_K using arm64 add/sub immediates
      https://git.kernel.org/arm64/c/fd868f148189

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158919609995.133008.6274359604607907270.b4-ty%40kernel.org.
