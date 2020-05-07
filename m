Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB54NZ72QKGQEUNL6C2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CE21C84CD
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 10:29:44 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id s8sf6045939ybj.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 01:29:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588840184; cv=pass;
        d=google.com; s=arc-20160816;
        b=bkFFz/gKc/HabKlKI3jVRxFhcbaqI2xLS6kMwWRCe3EdT/tzKqW3PpNmZ6VkMgl7Ta
         RgwPv3Urm1OgcrGqQYnTC056ZjMusFYq03Nr5fBEETtwiqkePHmruzL7IpOLmtdC9QAp
         somw5VY2/MUdbUOe4iRD0ZHtlXK+ZkaQdSEi9NBQaGlD89gJ8fMbr2q8b/21/vP1rCSG
         mGF3feO/xp9G/TK1CAAtfTyjja0RfKd17yOaQeYo+N7HsrFOtOKJPMWIW+JDvQfnMbJV
         txoWc+DeA4Ci5H04893IXYlUS1CitzUeISPWR8qqsrTNvdqrysreHjkcG9ypzN9Zv6hC
         8DAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+rL8vWvZU+u+ke4IH3zrUDfktFYZPMk39CS8mWYj/3k=;
        b=lIkq9N09lPbF6TfF6z+bR9ae3nI6OskFPWuqG6Q/yrbraj6hNpJzHBcab3k34yTcgZ
         +6IvOQkgppem1z+Br1xezovLj7dG3aTNp4kpVjz46c4JQis8OGTVJzxzTsr5slQ8gjeM
         JZG+nbdEAE51rp5nWTtMZ3EuahrMqYnc1425jWhNzcikmoPw0aposPHAH19BCpFdnAmm
         2xLiflcxpoe9ySfxQ8lTqJK+A8MpiPE1rM6Ottq+X2Yu3MXwDrGVSAYcNcaP1MDwi7TE
         YQJLpOa2ONyP5uCAFA1FT7ZXJVWawNZ+BjPejnPbNVKPPs62QHrf+ZlF7GqjPSJzzCRq
         +NDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xzoti7dx;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+rL8vWvZU+u+ke4IH3zrUDfktFYZPMk39CS8mWYj/3k=;
        b=cSYIveTSV8Hf3cKQD67tg1wPynNzu58pbazqdhZ9vSjfLSlCwsTmkwTLKYCri+O6HB
         JCpRjVryQnip5ea45xYVXTfBqbfkdUjU2wOUShyKgfMe0JRQOfyYeQRsPeRaTWNm8cmK
         DtGgs2NTBCddC0vHJ8AI0yFZlTPXPC87OsH3CbCtizFkEHBPh0uMhRZAPfWr2VV1mpLa
         JLUmDh5WIVNjXn0br2v8cjAnvfmyKVKb5vhr6Hr1ZLUl7MyS0uY9mzOb0pH5RRoRunm7
         Yk7HdTwy3t9YHFxdbehvJFJg9m5hLD4lfTVYsCp6KNqIDvJLna5hZlzEtWjb8RObVj59
         jAnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+rL8vWvZU+u+ke4IH3zrUDfktFYZPMk39CS8mWYj/3k=;
        b=SyMpSxt6UlmhUMyHam5c0SUBybzDVjsCC7GhCOyyibakh837pHabYvpzRt+le/lTyp
         ozLMoEFaauupU2r5Ff7rsBI0CRKhxgkv2vF46xLkc+pc1HKAi8pgtu7UQUrge3h1ISub
         csVuNyZRBaucgB4ENsmV4hHKO0iM5o9tYVFiw6vECkPkHl7Boye6RknuyrVyGA+ZuVC3
         r6vQTjNbmk63jnB54eJ70Jm5JA9N0JA5KBLy2uDRFPOeIyBLCPf6MDN01Yi5dIdpcNAo
         pimFD79iR/NYGfZ70M2CZ9rKKZxmBN6+Hc1xlZ9TsiqwbDYgIXLJbJJIJFBfJCUlXmxu
         ytMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua7yI+dcMTbukzGdfPxJE5vrHzM47l1jxgTlcBSH2fT61IOcb5F
	FaGTcOLmAxwlbBlDiFuaKnk=
X-Google-Smtp-Source: APiQypLEvc5vtbr9hnoXpcaVuo5H0RDWrJoEr8T+FYX7MSww5S32CmItsQjFYc2tJEPCPDD5T4m7Cw==
X-Received: by 2002:a25:7dc6:: with SMTP id y189mr20044039ybc.218.1588840183900;
        Thu, 07 May 2020 01:29:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:748b:: with SMTP id p133ls1079543ybc.0.gmail; Thu, 07
 May 2020 01:29:43 -0700 (PDT)
X-Received: by 2002:a25:bb08:: with SMTP id z8mr7805585ybg.129.1588840183584;
        Thu, 07 May 2020 01:29:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588840183; cv=none;
        d=google.com; s=arc-20160816;
        b=tqDHhoDhJKaBqY4yfFTWtKFkF4W47+h+g+ROGIB5XNuE8O69ROECBZ2w00SbOQKXly
         hNFqvtIH0mzTqAsV7ABWcS0IXP/khhVvA94IQTKrbMvfAC03kmL/mqnSUuJdB+wnB8rb
         bVOlROhPckMtg6VW6KWsWKwrbegnBZd//R63l3awY5AhDKudsyfl+5VsrpXgNXoE+FwF
         LInyc5CGe1cq6tfQbL3xr2MR7DargxnqjB3U49h5gRrijYxeWf9MiDxpSa8WZQDfK17y
         RkoiYqRJaW8+a/CRPX/qESpJE+/Izh9xZr2ZtR6BFbV2W/BVoWdX9el5Nc7/u94vnkHI
         bfew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4jvHK0E0U4w0HSsaWB72leDwouUNNO3Jp6LlfdWdiho=;
        b=OwmumWjJyyeCXP/BTbGGSE/2TlS5/glTGzO7CBauYTv46L2GSGTM0qsP5270yqI/J9
         zxRSpHe8LawxMcGXbRaCe5cTW8AZmp2mEYvzeVl7Qwk/VS6k+e0bEiF8U0+en/fua6kw
         c+uTZO+XPpiJwwLeesrB/KOlQ0kALWpYsRpLXCAfBmIiQ0e5F3BcfI3yzPARd0elgpJU
         81nG6TFhuWOC+0IDTq3tvzojZ12JRu6LB6hIcGQ2yYHgS67QMZTEQTPX5BMprVEGUm+r
         NFFQbdhBymrnLU/H3HPjT3+IURGnI2g3+sIXi8r5ED0NognPz9N2SkMviLrHCqI8rSQp
         kc6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xzoti7dx;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o65si285356yba.5.2020.05.07.01.29.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 01:29:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C36B12073A;
	Thu,  7 May 2020 08:29:38 +0000 (UTC)
Date: Thu, 7 May 2020 09:29:35 +0100
From: Will Deacon <will@kernel.org>
To: Luke Nelson <lukenels@cs.washington.edu>
Cc: bpf@vger.kernel.org, Luke Nelson <luke.r.nels@gmail.com>,
	Xi Wang <xi.wang@gmail.com>,
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
	Christoffer Dall <christoffer.dall@linaro.org>,
	Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
Message-ID: <20200507082934.GA28215@willie-the-truck>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-2-luke.r.nels@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200507010504.26352-2-luke.r.nels@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xzoti7dx;       spf=pass
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

Hi Luke,

Thanks for the patches.

On Wed, May 06, 2020 at 06:05:01PM -0700, Luke Nelson wrote:
> This patch fixes two issues present in the current function for encoding
> arm64 logical immediates when using the 32-bit variants of instructions.
> 
> First, the code does not correctly reject an all-ones 32-bit immediate
> and returns an undefined instruction encoding, which can crash the kernel.
> The fix is to add a check for this case.
> 
> Second, the code incorrectly rejects some 32-bit immediates that are
> actually encodable as logical immediates. The root cause is that the code
> uses a default mask of 64-bit all-ones, even for 32-bit immediates. This
> causes an issue later on when the mask is used to fill the top bits of
> the immediate with ones, shown here:
> 
>   /*
>    * Pattern: 0..01..10..01..1
>    *
>    * Fill the unused top bits with ones, and check if
>    * the result is a valid immediate (all ones with a
>    * contiguous ranges of zeroes).
>    */
>   imm |= ~mask;
>   if (!range_of_ones(~imm))
>           return AARCH64_BREAK_FAULT;
> 
> To see the problem, consider an immediate of the form 0..01..10..01..1,
> where the upper 32 bits are zero, such as 0x80000001. The code checks
> if ~(imm | ~mask) contains a range of ones: the incorrect mask yields
> 1..10..01..10..0, which fails the check; the correct mask yields
> 0..01..10..0, which succeeds.
> 
> The fix is to use a 32-bit all-ones default mask for 32-bit immediates.
> 
> Currently, the only user of this function is in
> arch/arm64/kvm/va_layout.c, which uses 64-bit immediates and won't
> trigger these bugs.

Ah, so this isn't a fix or a bpf patch ;)

I can queue it via arm64 for 5.8, along with the bpf patches since there
are some other small changes pending in the arm64 bpf backend for BTI.

> We tested the new code against llvm-mc with all 1,302 encodable 32-bit
> logical immediates and all 5,334 encodable 64-bit logical immediates.
> 
> Fixes: ef3935eeebff ("arm64: insn: Add encoder for bitwise operations using literals")
> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> ---
>  arch/arm64/kernel/insn.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 4a9e773a177f..42fad79546bb 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -1535,7 +1535,7 @@ static u32 aarch64_encode_immediate(u64 imm,
>  				    u32 insn)
>  {
>  	unsigned int immr, imms, n, ones, ror, esz, tmp;
> -	u64 mask = ~0UL;
> +	u64 mask;
>  
>  	/* Can't encode full zeroes or full ones */
>  	if (!imm || !~imm)

It's a bit grotty spreading the checks out now. How about we tweak things
slightly along the lines of:


diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 4a9e773a177f..60ec788eaf33 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1535,16 +1535,10 @@ static u32 aarch64_encode_immediate(u64 imm,
 				    u32 insn)
 {
 	unsigned int immr, imms, n, ones, ror, esz, tmp;
-	u64 mask = ~0UL;
-
-	/* Can't encode full zeroes or full ones */
-	if (!imm || !~imm)
-		return AARCH64_BREAK_FAULT;
+	u64 mask;
 
 	switch (variant) {
 	case AARCH64_INSN_VARIANT_32BIT:
-		if (upper_32_bits(imm))
-			return AARCH64_BREAK_FAULT;
 		esz = 32;
 		break;
 	case AARCH64_INSN_VARIANT_64BIT:
@@ -1556,6 +1550,12 @@ static u32 aarch64_encode_immediate(u64 imm,
 		return AARCH64_BREAK_FAULT;
 	}
 
+	mask = GENMASK(esz - 1, 0);
+
+	/* Can't encode full zeroes or full ones */
+	if (imm & ~mask || !imm || imm == mask)
+		return AARCH64_BREAK_FAULT;
+
 	/*
 	 * Inverse of Replicate(). Try to spot a repeating pattern
 	 * with a pow2 stride.


What do you think?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507082934.GA28215%40willie-the-truck.
