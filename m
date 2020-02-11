Return-Path: <clang-built-linux+bncBCUY5FXDWACRBIXEQ7ZAKGQETAA4UZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 534AE158672
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 01:15:32 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id c24sf8164864ila.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 16:15:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581380131; cv=pass;
        d=google.com; s=arc-20160816;
        b=Th+0nqM4h4S9XD0vIRniqa9Z7TxapbrVlHw5YMa8YNpd86v/FufESjGgECAwGJEWHS
         ROuRLCx5cCEsOEdu18pamTmn/B7lFYXgyPG6r05UVF0hep2DoFVZD8w1YtevDNMUqc+j
         ztdw+10ReJr750vhAaQ6oRZRzru6oTLxQz5PMTPqS20T602qoQYbxNZQbxEd3HpqBEWt
         M6uBbLQhal4XqF4IeoJ61uFW7gB6k93SOc2JDy23QET0gdLNFbZX7DTRiMzUIU6ZQrCZ
         7UpWjDPfFZNPrMGY/MCSvbTRIsi4/JiEIkmFYCdS8VNkWLtDKIasWAKGTBRARvJXu57+
         m6aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=D8Ds5qR9qrmUjOP9TJ0AyDv0cram6YECLhckUQBJc9w=;
        b=OXJRQ1AtPAMBufU/sLeDKe0ANPLPPHhRz9m+dKRrKS3LUfQIVP+1UyxV+HKLtAHpzZ
         8gQmQrr/9MtGoLDrMZW+BWjwZ48e0b3HokOtVtrwdqUQQSxc2iTO+GaxLUTSmHLd/HuG
         hSOiZ1JZZBm6pTHMvz9mQDW6X7JFT3VE7jSOab56046IaeVFGJlIi9Us90yYsL/mNz7F
         U08MBuriGWUDrruaDCqXaM+Qt/L+nsmWrZ6ZvQMTkNv96YvKn0IVWJFGdbA5v6IhDPN0
         J2zhDLyqTfMzXj/r8VZIu+SmKvZ83ELyv2yfFBSR9cGWlHW83iPQjvLPfJ0XGS8BwzLd
         j/bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KQylGPxd;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D8Ds5qR9qrmUjOP9TJ0AyDv0cram6YECLhckUQBJc9w=;
        b=eRQtqBWXSyyVH8i0+KwgXCijTEkUKNGZveEjkd6hez5QiN/DXv5s9qxoWU499wvtst
         qFL+Ga3gq4HRjd8cYWJsMM5OoCtm2CW/xZLoAxv9WBZ+tnHmCKez+vCTjT8jvHhh1Bfa
         Hl7dg1iFGfmCpsMbIHPRbsS2X0FlWKi8iDOy1MXf52vN+jFEpRGl4uXwoAPCeH1kF94l
         bStmj7LtG7VtKyqpnBp8Jh2iah7zckoq0AwcAeM/etklN5TJAdq/G+NiMIftwkGusOv/
         xai6uxkZ1/CXULG6zi4ea0LFBEUnsGEZbywP+F1ZlmqfhhVf6SsuGMaEkljwkcWQAMyg
         xdpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D8Ds5qR9qrmUjOP9TJ0AyDv0cram6YECLhckUQBJc9w=;
        b=cHRJxBQlWx01ouFOU8/fwO9HHsKJg5Y4R9I0XA0cM1aN6/fm5nlc/RLAnXnoRLG0PI
         x8pWdYVPEjjh+Mu4Q5i3fuBFjLcI9GLYhTq87quPHcq6wtARxZDvVWl3VyQXftADYImB
         DR6k+llCQpsslPAqHSPhCxcm7UqnLQ00c17nDLzXKhDMW6+N8LEDWCEkc0+cqoWOPiq2
         ad+d0ADKvB6KK+VgLZ/RWV9xWHdV+ia9tb12ydbqunlSQ+ZWyjnu/5WorC/aLhJBPjkz
         1oQwHiUy9k55RTmBI7a+f7NAwj9kGBoUjL9l4jTe40wO8lYx8iLLXq2AJgL3r5GjH36N
         81NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D8Ds5qR9qrmUjOP9TJ0AyDv0cram6YECLhckUQBJc9w=;
        b=t+Pb5uRg2oFmCHlhyEItfSIMkjKj9cFxebBQg1Ylnmg+Wvh3q5R70PyEeb+rwO+PNn
         5gaRC9TCqo6UulPlDPL1wsFyETUPcoiw2obMZOPRg9Z1d2n6/SG8OFfZlpQMy5Aar1Di
         AWa88ib6xLLH0i5+L0aTJm9msxwz1j47EL75HAJZOvKD2OfWbh7ZNAcuo/FBBxUyUdsP
         8sqKaCcjyLPy+YKk4w3eeyMsg9NyXF323kXvwl+54QMS3JDQmCbyMYESnE32HE8HNf0z
         JQispVj0JFZpXi+678KF2wRiGsWvtqE6lr4K+xIzXAbn3n6Nw2GhXjkeR4CZGRDeCDM3
         wAWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXGZtNVmkCEcoB1m7apxhCbqB2cJV9PvfZcyuNmKFn/UhwM/B8j
	/lC9f8Ss0h0vdRhhFZEXKoo=
X-Google-Smtp-Source: APXvYqynRnLH3vvsCyEWroxOH7GA4bN4HJ0RKSUTP8PBRDeCo6tqcZ51qx3pFH+bkB5xwTuMoFCpuQ==
X-Received: by 2002:a02:9f09:: with SMTP id z9mr12220749jal.119.1581380130973;
        Mon, 10 Feb 2020 16:15:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:212:: with SMTP id e18ls963550jaq.0.gmail; Mon, 10
 Feb 2020 16:15:30 -0800 (PST)
X-Received: by 2002:a02:cab0:: with SMTP id e16mr12768158jap.6.1581380130592;
        Mon, 10 Feb 2020 16:15:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581380130; cv=none;
        d=google.com; s=arc-20160816;
        b=xHYM1wRtA0jN+Vim7kjz1ooJ9Axik+xWLG9bsdUu/KGXKVPA8AG25duOQkLDmPZrwE
         PNKW01fnR9MyHw7fUPN+z1KS2ox0ckmqHY8ENKYrxZtuqCEWcqhpLkFjT3BvDXlvquWo
         xv14IP+lfpADHDFE6+Tu0MzENDw0E4d/rP2449rL23tv0lK+9ZWnyQcSiBEDjpAqqwX5
         VWS2EBJCDgdQKHJffimc9D/HACaboxaFb4jKJ3/M5a63mwQ04jiqWiXhWBXVlWYbBSNO
         ZKDWHN9B6aQmg3ZtnIej+kPgnpCiZGTPrCUqqgzgpGaeqiaBKmX2mwZos2XnlEiwtAhy
         WQSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=r5ohSbrtojTxCSFCkg8rYW9zCxgtMfpQZkLpXgHPTpk=;
        b=DSHW/fOev+hBF4oHezEiNf0LohcwCpAZ+v0LJ4hyF8IkguMf3YD1SjITF6CJ+3s3wl
         HwMNNtHLhBIWGCfjjTidA9xCpBbvgjzrxNUznls+4u8fhcO9ikQJ9Z+vnMtY2s1LonR8
         ZGubL2vSa2+rWg3sKK/J/Ov72ltwwF5rbwAURDZqfePHLax3nIOONIMB0b31SXTzjWw1
         a3xIE4uL63vvMTGD4w+r6lp8e/5mUvTnDhqiUPpv2k/NGxapL6NZ2QQ2gGpOQsnkQNgA
         rF/r0mjDr+7o4WsDjNRyXeY1YkJJdDWecTuhg1A9fBGRgPTX+hVdq6acGjfT9oV3SFXO
         LcvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KQylGPxd;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z20si100448ill.5.2020.02.10.16.15.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2020 16:15:30 -0800 (PST)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id n7so4537585pfn.0
        for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 16:15:30 -0800 (PST)
X-Received: by 2002:a65:5549:: with SMTP id t9mr4124065pgr.439.1581380129926;
        Mon, 10 Feb 2020 16:15:29 -0800 (PST)
Received: from ast-mbp ([2620:10d:c090:200::2:685c])
        by smtp.gmail.com with ESMTPSA id z26sm1201161pgu.80.2020.02.10.16.15.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Feb 2020 16:15:29 -0800 (PST)
Date: Mon, 10 Feb 2020 16:15:27 -0800
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Bjorn Topel <bjorn.topel@gmail.com>, daniel@iogearbox.net,
	ast@kernel.org, zlim.lnx@gmail.com, catalin.marinas@arm.com,
	will@kernel.org, kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
	andriin@fb.com, shuah@kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com, kernel-team@android.com
Subject: Re: [PATCH 4/4] arm64: bpf: Elide some moves to a0 after calls
Message-ID: <20200211001526.xbfwdnpjqrg3ed6q@ast-mbp>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
 <20200128021145.36774-5-palmerdabbelt@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200128021145.36774-5-palmerdabbelt@google.com>
User-Agent: NeoMutt/20180223
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KQylGPxd;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jan 27, 2020 at 06:11:45PM -0800, Palmer Dabbelt wrote:
>  
> +	/* Handle BPF_REG_0, which may be in the wrong place because the ARM64
> +	 * ABI doesn't match the BPF ABI for function calls. */
> +	if (ctx->reg0_in_reg1) {
> +		/* If we're writing BPF_REG_0 then we don't need to do any
> +		 * extra work to get the registers back in their correct
> +		 * locations. */
> +		if (insn->dst_reg == BPF_REG_0)
> +			ctx->reg0_in_reg1 = false;
> +
> +		/* If we're writing to BPF_REG_1 then we need to save BPF_REG_0
> +		 * into the correct location if it's still alive, as otherwise
> +		 * it will be clobbered. */
> +		if (insn->dst_reg == BPF_REG_1) {
> +			if (!dead_register(ctx, off + 1, BPF_REG_0))
> +				emit(A64_MOV(1, A64_R(7), A64_R(0)), ctx);
> +			ctx->reg0_in_reg1 = false;
> +		}
> +	}

I'm not sure this is correct, since it processes insns as a linear code, but
there could be jumps in the middle. The logic should be following the control
flow of the program. The verifier is a better place to do such analysis.
I don't see how JITs can do it on their own.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211001526.xbfwdnpjqrg3ed6q%40ast-mbp.
