Return-Path: <clang-built-linux+bncBDWIJUMT74BRBL4JZ72QKGQEFBJ7DOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id A04BD1C84A2
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 10:20:00 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id l9sf5188908ili.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 01:20:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588839599; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZdccyF55/qz+syuyd9mS+70AUTxgimGwGxmv0bRY9SmrcyrQLdTs+5V9evyeu4uqW
         YjDIvweB3BN2pWcbt870sXjPPwi4l4j4ThkBDO/A0pwSZAz1bJXxzch9MGX+b+wa9wp5
         jVYtaVbYEgsyRQ0xHKNx8D/yjlqjTsWf05oW4BN4xABV17actuNVnoxVPqnkT2eZX6hd
         UT0Lmdlj06xNWZGtA+nweSTpSxfONjZFkAA3RPeMBHzp0XPWu96KzIPqQ6iyKguylHaO
         TCuglFX2p1xU72nihwKG+2mlqO95BB45SaAzMSeJ6LoYnY8uaZHMAKf7scywj3E7Q8Fw
         3fOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SdeOmtzDmDtT5y+KgJKkKWtbKk8LWabdQQgGSgHzPSc=;
        b=UIRLks9wCGA3ABpu/5nxe3MvEph2Oaa4rBGIoJEdkJw6lfSi14CpFEWLZj2+9STRGf
         2waUsrfjz3uDWYw0yhmtGdkXR5Qj3p4m1d5aJSCnbnXSsdShFy1vx+1JtT4J9XUQYHYO
         FBv/soQlMserGghPG42Os18s3an5pLhxmvf97MPgzNBdlaDUtGNOg4MXwJ5Cl/ZlylhW
         SrHt89QO84WLUrF4fd7hJ8tczosKyvuS+L5OxvNmaZXF4OzJQY7knBlzxamyQllyzLMs
         iazn11/fmd5+1aZUPmBlnD42B/BikIwRs0Z3yQAt9ZolWLrqnoCdnqdEH3tE9+0Q9Co7
         VTwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lr7yTnWB;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SdeOmtzDmDtT5y+KgJKkKWtbKk8LWabdQQgGSgHzPSc=;
        b=awqvSqxrWenYMLB9gexreIjWf1DlrPKmEEdGIQwoffhAuxyYZuw82s1HnrmZp8+EIY
         oqyKEC7ZZ/Xq7WVL2KR+irDepp2lzh9u/FfxovBIgwlxkBJcHNk/7OMgCanyHAQ+FwAz
         +R6usKpvadfzhXVtw7KfOI9qByLEs3XWKlHVgly1ECQ2Hsmrc9ayBC38hfhUDRkDFe4H
         FpQyf3RbpVNmp7poMbjUO/DhFwdGEjcQZ+CyvL/v3YMA6y2qTwzzJmCtQ3iv+RnJnVeU
         BGNw2Sme8etuqTVBpKHqOs/TeF3rgQZiXfd4vYaHIedMkbFA+uZlKvPuLr1O6AUY1wfI
         WRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SdeOmtzDmDtT5y+KgJKkKWtbKk8LWabdQQgGSgHzPSc=;
        b=HyVmYv+O5cyamXqOd3/L7PAKLikmh0ULk/o4Qoml1ToqCVkM+ZVONTqj2TjCrk17cU
         V4doVfoGmH0K2a58ZXxz1vIdhgJnWxMlDg/rMC+VRZooAN7/u+jSEqSWofvM8LQfNeJx
         3N8VoerHbsfJk1XjLm/9EeoNZ0ms1l26tUhqCPIz+I8Ks5BccQ2UGP+2KBRQ7jL8FlXZ
         rXxSRfYL9CuGJMiVV4w+kb75Pimshm0vPVWSKV8z01vC+mKr6AfuWZw22KgmWdYjBqzr
         6QEuMWYZ241hTOV+M7q5IrmrF05Wn5LC4QFd/wTPNxrM/IeDNf9el0JMSs4dnz2bR3OY
         H/WA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua2OZhaVpIyuffbC1lk4EEBMF2LET8CvzBfZCLLMsDTSrXfk7jo
	9o2gIuhrrBpsg61r+Ffrp4k=
X-Google-Smtp-Source: APiQypLgYYyINvsf7nxZJPk+lKUj9AqrkgUGKpwkMycNS6vqe2ttNQjTufm4AdWh1Z2bJe0RH3zmMw==
X-Received: by 2002:a92:498d:: with SMTP id k13mr12986383ilg.216.1588839599372;
        Thu, 07 May 2020 01:19:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b60c:: with SMTP id s12ls4394574ili.5.gmail; Thu, 07 May
 2020 01:19:59 -0700 (PDT)
X-Received: by 2002:a92:8415:: with SMTP id l21mr13023744ild.214.1588839599066;
        Thu, 07 May 2020 01:19:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588839599; cv=none;
        d=google.com; s=arc-20160816;
        b=yWyDm7e5Uj69FfvU0VanWODMEySrqOa3X5wAxcHskoAhQd3SBOkNzLM4DZEiaQHLFv
         hNcq04/v9h8w1dhYMejcdXFXfZSs0tep267DbGOd3ACWVdzsu6LYaUgUq45RipzR2I7O
         FLGRw+2RmEeRnCaltXQzYYc56H7SXmVeu6oiRrNAZrvaGegueVXmshSjNVsa8qWRhKWX
         WgFLePobF7sMuKMMRVInDL4+wic78Ui1ggAgwLCbGvh8pviJ8k5ipGZ+RTiI8m0DyFiM
         vbXUJ3InWf+oeCSuMWREpYV77Mc/wkp6WuaF+mCyS0JCpEyXCTJzysQexGxsqI24ihSz
         Q/1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=f8r4mGNHpliFS9BvA52GHWjdTMVxHGz0PmLr5Fm5RDI=;
        b=RCIqa9mkGLTXAzRFpvZZt74iqou7IVRbjxzdPzpe1TarSGYM8fO85LAMYZ1J43BqBJ
         JJ7gPyx1gRYcET5UF9JsFC4J5dK6jmRtdvSAKUwA5ZDOzfZAKR/P66j/wGcwlZ5hxXqZ
         TX277viZPcdt8wibOsLNR201k5+Xg5XzlW1lFnMn/X3+jgK6EBG2DB/J30fqoxqQZLAq
         YKB994Ko3Ii4ujglM6wwlSG6gKynL4RLn0HDsG+AHVE9PjmqOfBtlIzTbr5NfxBCycf1
         lTmVeL2/nsdcXNVtV6Fmga6XkVuVQDFBenRTtXHvmyRJQEMzRlIHE9NwNy+uGS41ptC/
         3Vyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lr7yTnWB;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v22si517241ioj.2.2020.05.07.01.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 01:19:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 221B820753;
	Thu,  7 May 2020 08:19:58 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=why)
	by disco-boy.misterjones.org with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <maz@kernel.org>)
	id 1jWbl6-00ACFm-4L; Thu, 07 May 2020 09:19:56 +0100
Date: Thu, 7 May 2020 09:19:53 +0100
From: Marc Zyngier <maz@kernel.org>
To: Luke Nelson <lukenels@cs.washington.edu>
Cc: bpf@vger.kernel.org, Luke Nelson <luke.r.nels@gmail.com>, Xi Wang
 <xi.wang@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Alexei
 Starovoitov <ast@kernel.org>, Zi Shen Lim <zlim.lnx@gmail.com>, Martin
 KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song
 <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, John Fastabend
 <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, Mark Rutland
 <mark.rutland@arm.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Christoffer Dall
 <christoffer.dall@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
Message-ID: <20200507091953.70505638@why>
In-Reply-To: <20200507010504.26352-2-luke.r.nels@gmail.com>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
	<20200507010504.26352-2-luke.r.nels@gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: lukenels@cs.washington.edu, bpf@vger.kernel.org, luke.r.nels@gmail.com, xi.wang@gmail.com, catalin.marinas@arm.com, will@kernel.org, daniel@iogearbox.net, ast@kernel.org, zlim.lnx@gmail.com, kafai@fb.com, songliubraving@fb.com, yhs@fb.com, andriin@fb.com, john.fastabend@gmail.com, kpsingh@chromium.org, mark.rutland@arm.com, gregkh@linuxfoundation.org, tglx@linutronix.de, christoffer.dall@linaro.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, clang-built-linux@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lr7yTnWB;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Thanks a lot for nailing these bugs.

On Wed,  6 May 2020 18:05:01 -0700
Luke Nelson <lukenels@cs.washington.edu> wrote:

> This patch fixes two issues present in the current function for encoding
> arm64 logical immediates when using the 32-bit variants of instructions.
> 
> First, the code does not correctly reject an all-ones 32-bit immediate
> and returns an undefined instruction encoding, which can crash the kernel.

You make it sound more dramatic than it needs to be! ;-) As you pointed
out below, nothing in the kernel calls this code to encode a 32bit
immediate, so triggering a crash is not possible (unless you manage to
exploit something else to call into this code). It definitely needs
fixing though!

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

Paging this thing back in is really hard (I only had one coffee, more
needed). Yes, I see what you mean. Duh! I think this only happens if
mask hasn't been adjusted by the "pattern spotting" code the first place
though.

> 
> Currently, the only user of this function is in
> arch/arm64/kvm/va_layout.c, which uses 64-bit immediates and won't
> trigger these bugs.
> 
> We tested the new code against llvm-mc with all 1,302 encodable 32-bit
> logical immediates and all 5,334 encodable 64-bit logical immediates.

That, on its own, is awesome information. Do you have any pointer on
how to set this up?

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
> @@ -1543,13 +1543,15 @@ static u32 aarch64_encode_immediate(u64 imm,
>  
>  	switch (variant) {
>  	case AARCH64_INSN_VARIANT_32BIT:
> -		if (upper_32_bits(imm))
> +		if (upper_32_bits(imm) || imm == 0xffffffffUL)

nit: I don't like the fact that this create a small dissymmetry in the
way we check things (we start by checking !~imm, which is not relevant
to 32bit constants).

>  			return AARCH64_BREAK_FAULT;
>  		esz = 32;
> +		mask = 0xffffffffUL;
>  		break;
>  	case AARCH64_INSN_VARIANT_64BIT:
>  		insn |= AARCH64_INSN_SF_BIT;
>  		esz = 64;
> +		mask = ~0UL;

I'd rather we generate the mask in a programmatic way, which is pretty
easy to do since we have the initial element size.

>  		break;
>  	default:
>  		pr_err("%s: unknown variant encoding %d\n", __func__, variant);

To account for the above remarks, I came up with the following patch:

diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
index 4a9e773a177f..422bf9a79ed6 100644
--- a/arch/arm64/kernel/insn.c
+++ b/arch/arm64/kernel/insn.c
@@ -1535,11 +1535,7 @@ static u32 aarch64_encode_immediate(u64 imm,
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
@@ -1556,6 +1552,11 @@ static u32 aarch64_encode_immediate(u64 imm,
 		return AARCH64_BREAK_FAULT;
 	}
 
+	/* Can't encode full zeroes or full ones */
+	mask = GENMASK_ULL(esz - 1, 0);
+	if (!imm || !(~imm & mask))
+		return AARCH64_BREAK_FAULT;
+
 	/*
 	 * Inverse of Replicate(). Try to spot a repeating pattern
 	 * with a pow2 stride.

which is of course completely untested (it does compile though).

Thoughts?

	M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507091953.70505638%40why.
