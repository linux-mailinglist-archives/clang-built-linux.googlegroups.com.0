Return-Path: <clang-built-linux+bncBCIO53XE7YHBB2EZV74AKGQE5CW67AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FAB21CD6B
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 04:54:33 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id 131sf1935347vkw.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 19:54:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594608872; cv=pass;
        d=google.com; s=arc-20160816;
        b=mqj2OKI1Q3eBvRqzVLfGxM17vATH7yRU864qbJVYaOj6Ul3HjwwqXxZxqhDYfbNnUW
         k+47rJQAQLnYgEPR2hz7+jPhd+93OvwrU2jc9eAAa8la4RX90rMVsPtRFKOfx/H+aOae
         hTr4dvssKBTQ8rnh7qzvLgVzsMRNHRvD9bkRBU4M2MzlVKYjwNDuksk9h+kne8oKViNr
         vwAnfx5VeU1b6xGnpt7wguXNL64QZZzUa8Qs8AsMRd3c3D7r1zdpkIg40jacj/6u2lXP
         Uet2wEcyej7hOv2qo37/ewr0S7YlHyD0yb/qYYp72wN60Pj+8kjhJ6MUQe3suxD3Ap7N
         bsOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=cjJp9fUzKQ084uKUwRnr/FQ7UrRSscvJcQRmzjArbt4=;
        b=K2Bnq2hOr4tAI1e2tVMbIVRCIdDRFEyEwhvDHjCRUae/TO/bSXiry75b3dj7TLcJTm
         8+kwupn00Ng9bArVn3HtDTnck3FyfxW+gHURVGQqLFp/ov7Ycpw00yeDC+77cm+XlExU
         pwMhTh1OWyegehl1GTNhIY09i7Jq+p0rj4fmjN5i1sDV+1eFwnmp9j+0OTH5qRRvrxyp
         Pop2CrcEXaiBPOewGf3oav4OxyAHpzgmvD9O34EU4RWXdryoogGrdb3nBr0pqGpfgbVX
         DEnjm5tBlYuhrfz9pd98GkaRH20eCnJ8Lr3j1medA5FXni4rUFtesOgs/+2fzW3J5kfa
         K96w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XeDsLFtu;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cjJp9fUzKQ084uKUwRnr/FQ7UrRSscvJcQRmzjArbt4=;
        b=HYzlBHLBuMRzaJO60AVZvARi9f4fZyQmGQHf85IvnOpa7avdmw7kl21QmEQGzuXTMR
         Rh04aU3c1AWroiPt4VsmXBv3CZR71CFqQIykNui6w66nK9nGdPw79L+kZVdRsqiUlyJA
         UUljI76XqXc3ujcWJkKhTEFQN9JsaI2ARu6LK2V16J0FaeLHRAayim2FvhR+w81XETlO
         hmHhlietPC0/dFJZYtz2LPnKqwQHc3L1VG6g+dj0ANWwbeseK4Jp+icgNSb/wB0p7d5B
         4215bzDoEjTiAy1PcKE13EAn0Uklx9SigPRQTqTi2tg8YhZRBM7XJ+eQAzBnHxkayNL/
         jzGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cjJp9fUzKQ084uKUwRnr/FQ7UrRSscvJcQRmzjArbt4=;
        b=FoYFrqFOH+dSR2D0njVx9+598Vmip3E91m+UYoAkGdygxNfHHd5ezpLJh43pIvOkog
         DRYIjQc8NUISKVjnXiJ+NDHypOV/9ABkfQn4WtN1hAuNoe4xzNkhVeahWtIE6JUij5WS
         K6kGcBjcJsrVLBdVdD5BT7Jolq/141b9cqVJmMxo0booGDOkuzg0nHpdKAaPLE97Gbx/
         Z9xe0NdwEEWEcLsPQ50S8vmhq7cho4n1K37Gj7matrV/GTBPsFJjiPnqZWEYl74OGwZB
         3JXeSm1PbvFtzURairiv+ljQc9QVJveSpMn0VE+oYHQcxD/Dg/y8qGlERqNlJ8Y1RkAS
         wmRQ==
X-Gm-Message-State: AOAM530EYwxJeJFTHxyOrUy1uQsXy6IbcGG413T4ij2qyXhvRH+EA020
	8HOBFyqolRS9KRqFHjk8qGs=
X-Google-Smtp-Source: ABdhPJxmZVeqzzDFRAoLWMgRGpbi1O4Q2IHIjf4J6WjGg06cIhVYQo2DsjrqtnKi2LG4ZrFZ/ayTPg==
X-Received: by 2002:a67:1342:: with SMTP id 63mr47300591vst.54.1594608872659;
        Sun, 12 Jul 2020 19:54:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:634b:: with SMTP id f11ls1023156uap.5.gmail; Sun, 12 Jul
 2020 19:54:32 -0700 (PDT)
X-Received: by 2002:ab0:2850:: with SMTP id c16mr56564836uaq.143.1594608872183;
        Sun, 12 Jul 2020 19:54:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594608872; cv=none;
        d=google.com; s=arc-20160816;
        b=tRgcq++a5l52gMJjJNo9E3kLaMW4OJ7z6XH4RTmto9GoQAZYdsRXBuo9ctHCOWBgE6
         4hV9wpHZkJsx+USny7+ncCL6zqKkKOpeRtEhdNjlkKz7lRuI3aLiDxvvlVUVK+MxXZjK
         YlxinoHoERSCecSA20ohGnm3t/XAcEyE3ARYIEPBmyrZDRUyrd6fb0TTD+OgGBjaMuGM
         YEuBwfiHo8FMQjake7pKZXI0y8TIrrG/p0fGju9gBKy6AQdc+AMvN8eRebLW8yN0Yrw4
         WeMlcyldcgb93buMB+8ga+n0mbIKKI3g+8Uiy9V26N2JTgmVfOmSBCsZw+YdeQKaaodk
         YM6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=o2kSFHN4HGSBMB4M9W3uTWmnegum+jrs9F0qbYSqLis=;
        b=q7CptSjptQWcbw4vVPBSp7Z8C4+MFFLZi658guNZdDHn+zVw+KLvEivB7vKCWG7q2M
         LBa0PPYq3CNCIKG0pcePMeRdjTsqYKNdOihEW4JFinIXQMbZRvBTr4sN/LCtSxYDVWiV
         7flgI1UNpBFnZe0g3kul7UatlPdin8va6srIWfEUCqgqW7qOxM4JhZe2dXmXwkcC/wb7
         FsvTy6JjjDXlHJR6I5kIWVxcHCfeEaywxe60XxXM82FT+I6ukmvam2ZR2UE8UesKkupT
         061AP5qedVfQrx/NA/zuHTtKOr7mKSKMBbNgFM65DY5SOuloaY043DcLU2ovbKbvK+HV
         NspA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XeDsLFtu;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id q20si572738uas.1.2020.07.12.19.54.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 19:54:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id h18so5200750qvl.3
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 19:54:32 -0700 (PDT)
X-Received: by 2002:a05:6214:1882:: with SMTP id cx2mr79943466qvb.240.1594608871743;
        Sun, 12 Jul 2020 19:54:31 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id r5sm18161539qtc.20.2020.07.12.19.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2020 19:54:31 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 12 Jul 2020 22:54:29 -0400
To: Jian Cai <caij2003@gmail.com>
Cc: jiancai@google.com, ndesaulniers@google.com, manojgupta@google.com,
	sedat.dilek@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86/entry: add compatibility with IAS
Message-ID: <20200713025429.GA704795@rani.riverdale.lan>
References: <20200713012428.1039487-1-caij2003@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200713012428.1039487-1-caij2003@gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XeDsLFtu;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sun, Jul 12, 2020 at 06:24:22PM -0700, Jian Cai wrote:
> Clang's integrated assembler does not allow symbols with non-absolute
> values to be reassigned. This patch allows the affected code to be
> compatible with IAS.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Jian Cai <caij2003@gmail.com>
> ---
>  arch/x86/include/asm/idtentry.h | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> index f3d70830bf2a..77beed2cd6d9 100644
> --- a/arch/x86/include/asm/idtentry.h
> +++ b/arch/x86/include/asm/idtentry.h
> @@ -468,34 +468,32 @@ __visible noinstr void func(struct pt_regs *regs,			\
>   */
>  	.align 8
>  SYM_CODE_START(irq_entries_start)
> -    vector=FIRST_EXTERNAL_VECTOR
> -    pos = .
> +    i = 1
> +    pos1 = .
>      .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
>  	UNWIND_HINT_IRET_REGS
> -	.byte	0x6a, vector
> +	.byte	0x6a, FIRST_EXTERNAL_VECTOR + i - 1
>  	jmp	asm_common_interrupt
>  	nop
>  	/* Ensure that the above is 8 bytes max */
> -	. = pos + 8
> -    pos=pos+8
> -    vector=vector+1
> +	. = pos1 + 8 * i
> +	i = i + 1
>      .endr
>  SYM_CODE_END(irq_entries_start)

I think it would be a little cleaner to initialize i to 0, and drop pos.
i.e. couldn't we do
	i = 0
	...
	.byte	0x6a, FIRST_EXTERNAL_VECTOR + i
	...
	i = i + 1
	. = irq_entries_start + 8 * i

>  
>  #ifdef CONFIG_X86_LOCAL_APIC
>  	.align 8
>  SYM_CODE_START(spurious_entries_start)
> -    vector=FIRST_SYSTEM_VECTOR
> -    pos = .
> +    i = 1
> +    pos2 = .
>      .rept (NR_VECTORS - FIRST_SYSTEM_VECTOR)
>  	UNWIND_HINT_IRET_REGS
> -	.byte	0x6a, vector
> +	.byte	0x6a, FIRST_SYSTEM_VECTOR + i - 1
>  	jmp	asm_spurious_interrupt
>  	nop
>  	/* Ensure that the above is 8 bytes max */
> -	. = pos + 8
> -    pos=pos+8
> -    vector=vector+1
> +	. = pos2 + 8 * i
> +	i = i + 1
>      .endr
>  SYM_CODE_END(spurious_entries_start)
>  #endif
> -- 
> 2.27.0.383.g050319c2ae-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200713025429.GA704795%40rani.riverdale.lan.
