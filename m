Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYHOYLZAKGQEBQNMT3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id DA378168C71
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 06:08:49 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id j15sf2730720qvp.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 21:08:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582348128; cv=pass;
        d=google.com; s=arc-20160816;
        b=PphoTwzgDyi5C7Hgr+H8wOoiWxmz29CRxZT4aomTjyYjbyLm0qBqLsw8XzIBT47jgM
         oE42Yiv5Og24VOSXQJzTwJWW/HIUKnWB+b+mccyXeyd/t0ekanjX9K7zCdj/PD2yjPG6
         RhnZp8RA38TdAhg8/aDpyDRxjtZA8SyRRl3Cm/pA7EBr1yiYvNi7TVv/KFcSGN4l5H6v
         Kffj/Z5akwOFYZEwAYiqVKqAwc9H7Mc1SDOcNHZOBMkemBB5bbuVjTUARUljZmtL/pHA
         Xj37kn8nyAf7Nk7bZbrpJZiYQLHIK10dxRWSmzHkIqBNZwV4hFBE8KFfw7JdmC6dsO4b
         VTwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=8wZo7+7T0Rq2CmnvA9vBm2HzMWHNyxj/5OlTIIrKqO0=;
        b=xqUv+TmoijtZEptwCxw+iNHcdrZlcZPxvYOdDPtX8yxPkFTTxl5KqRI7NTvNfvpqgp
         jE6EnnnNDoeHIDZo1PzeJojjo1AZlBQOaongLSlgCrsdr7g2vcKZjThudjH3AhYafolE
         ROnj/s4W3DkSWulVv+qOHd2Px/YMPeGcxdDNqbEJKodeEj8uD1FordS0bvcj8XEz8Sac
         5jxEVoVOuBFXorwarDMVu75Di9s6dvxLllXG6FxIaZwFTERjEjBoCcCoJcTDbFMShb2V
         tmBANLxVFJMNRx+dl0DFMyfKmG5cFLyYMNO4kAMEvW0LYy0DTXa2SqhjuL/tYJ4L1pIP
         033Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ApHzJ6ol;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8wZo7+7T0Rq2CmnvA9vBm2HzMWHNyxj/5OlTIIrKqO0=;
        b=l5PTZ+lb1BBQEPfcb3z21ukW8/loCTfJmveObWrEabuxLhsURBL/xzzOukq/rVek+a
         eOecI2tuGuthn+KCASoshyhCrXSThnVpANZHpYsc/1ZF/1zqUxRXzjCXOqYF+6xuV557
         emd7hplgEzC4M+td1B0I3oGkKTg1zi+4RdsCSFnX7au6b0x80RH2tunBZyToYnb1EuFH
         R/v71JPivuoA90QN+DTJ14WYqWwmhRAOkAuJZh2Jb+2E5QnA09P88ZPb99I3vip/kAdz
         qrnHeVoqcC+xngFdpU17NDjU5mRfNPg15bJ7q2cHuLba7AxbxWZmMEELWtkYmsyeCb5q
         EHCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8wZo7+7T0Rq2CmnvA9vBm2HzMWHNyxj/5OlTIIrKqO0=;
        b=GbOJSJ8AvtJo05dzIS4AEVO2hDsE22a5MtDZDw2r1RhQPuw+/ZSZo4QwhZmdkY4wGy
         A1v/OLSc3xnbsREUxsGUynZVyymD+/te5ebKgrvbhfZgknYr6gzxSDu2y0uPd/FnafPG
         9fRXr3ux4urQi1SFiQuJIbNDEsbCEKFFhT3qeVwv1Btu10iKqCtQybHvz6199XHIKLs+
         V9ZER15stgti2ypZxgA8zyIJY4vMmkC2CCGRKMVtFzNK7HJ+RcpdztZpfXQNG6T11sBs
         eXtrOL1EK6yN/KVsmBHVMUOgpfLeFcAnN7TwaV7Nx1A9S2dzXJLuvcw+geQ6We9ibbZr
         t64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8wZo7+7T0Rq2CmnvA9vBm2HzMWHNyxj/5OlTIIrKqO0=;
        b=Uq2roSohui8Xyf0yG/9PeYNciIkiJxdq/8OOAEngvxDboow1gMfPSTpq0k/bbZaOF/
         CauoCWc5EK1i9WzcUkTpggKjql7TS4kNTsAh78NwnLZVfRg79TCXnqLvxkYwAs3icGVd
         IZn233dTSOIFNpzfbaqd3DQzw3jz+tplyyfTPHj8fbu5NfeZhqmrUG9NlkRRi3/dP8Uq
         /JsX0rCVwtEgU+XiYpncDLGyfH2U2Pg6Kk39sndX7yj45FMP5DDsOvYZwWNtWkmDns3c
         OH2CrcqeKR50R5WK/pP2FKqKZU64wAVrXEMVs9vQml2v+q5f7i+37PkkZga2G8LRzvCD
         VJLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUL72CsAggSA/Pt2GqXr1F7YFrP1jnoeRl48sdkB7yfG/hJaSBZ
	+kc6aPTF4GuG9AdYuwTF7SE=
X-Google-Smtp-Source: APXvYqwwQvx8uoPaMtaFxTBt7dbc4zd4OMdbnxwQ6Wzzob7vaSVOMEqfnj9bej2tiPtagfeT9XRu5w==
X-Received: by 2002:a37:e47:: with SMTP id 68mr14029220qko.17.1582348128545;
        Fri, 21 Feb 2020 21:08:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:321:: with SMTP id j1ls948623qvu.6.gmail; Fri, 21
 Feb 2020 21:08:48 -0800 (PST)
X-Received: by 2002:ad4:53a8:: with SMTP id j8mr33674276qvv.149.1582348128208;
        Fri, 21 Feb 2020 21:08:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582348128; cv=none;
        d=google.com; s=arc-20160816;
        b=VkDuZQYulz2j/INYO9UWg8MJF5GQYJsRr1f3Kn7x3wNIMJ8jwvRDnycelc4fdudQRS
         QaLUR2ywWHwd7KKYKSw3zGnleNG57tNURh1dKCT7RZ30hs53Ko7/pB8PBCUzIAvt3gH1
         xtRvVAjcDLc3fVUSkGkY/AY5PWLWXlvxl1adBiiBVi30SODmBz5MxG+wVb4pb5fDYR73
         1iRQpdVDlw4Cl+yYnUhc5SIzPhEljTi/AeytxrpOksiYX+5MA9X6kyScPfPSVMtEa47k
         MmXKjdiDzWG8q06EQfyYrSI8t5h59SeVUbcLGHwDZSQlzZIqkK1ZKK9HulwGn7RGG9yi
         IKOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uchn7QDHgry7WL4opDjcnm9/ECItWnjFnSq+/FMPcGk=;
        b=oPJIxlV5U+PUvGDqAesAXuly9XOlHf2veGaNcK3QqDc9ddqJ5POQmt8nQUWSyulI6v
         25pG8n2JYyIrFnGTXFqoyU8Zt33WS4qc7of5PPZOLX4COs26xPeuLQ3+ni9q6WrDijaN
         8tAjf/PFPunpsdWgFGeTQQCcHlkB14rR/bCAMCuldLzca06sFw+uXq6FfdzCCvWtqOTW
         CYh0HpUh8uHjCwLjPBBdJR+1ok6v2SM0InY0Lfxwf4WS9hpGz/vtHV825RFruCvBnnnE
         vkEgcqK5PgvQ29XQuQiGKgia4NAtv++B0g8aebuc2uolgK/TGd9Z2ZOafoJS9HL32ljf
         5yNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ApHzJ6ol;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id g23si259969qki.4.2020.02.21.21.08.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 21:08:48 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id w6so4090723otk.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 Feb 2020 21:08:48 -0800 (PST)
X-Received: by 2002:a9d:4d17:: with SMTP id n23mr31648465otf.85.1582348127608;
        Fri, 21 Feb 2020 21:08:47 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s128sm1700328oia.4.2020.02.21.21.08.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 21 Feb 2020 21:08:46 -0800 (PST)
Date: Fri, 21 Feb 2020 22:08:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200109150218.16544-2-nivedita@alum.mit.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ApHzJ6ol;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jan 09, 2020 at 10:02:18AM -0500, Arvind Sankar wrote:
> Discarding the sections that are unused in the compressed kernel saves
> about 10 KiB on 32-bit and 6 KiB on 64-bit, mostly from .eh_frame.
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
>  arch/x86/boot/compressed/vmlinux.lds.S | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index 508cfa6828c5..12a20603d92e 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -73,4 +73,9 @@ SECTIONS
>  #endif
>  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
>  	_end = .;
> +
> +	/* Discard all remaining sections */
> +	/DISCARD/ : {
> +		*(*)
> +	}
>  }
> -- 
> 2.24.1
> 

This patch breaks linking with ld.lld:

$ make -j$(nproc) -s CC=clang LD=ld.lld O=out.x86_64 distclean defconfig bzImage
ld.lld: error: discarding .shstrtab section is not allowed
...

I am not exactly sure how to keep that section around (or if it is
ABSOLUTELY necessary like ld.lld seems to claim) otherwise I would send
a patch.

It would be nice not to break this tool since it is faster than ld.bfd.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222050845.GA19912%40ubuntu-m2-xlarge-x86.
