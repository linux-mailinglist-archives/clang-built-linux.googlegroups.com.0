Return-Path: <clang-built-linux+bncBCRKNY4WZECBB6V7V73QKGQE5XMVZLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B80991FFD81
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 23:43:23 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id n15sf3410731oov.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 14:43:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592516602; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cc4rUs9xyeUh0nD0b1FJxiUibmgiRhJPaAuTVjFNMzkDwQMoRhoqLIuR3ayRj+cle8
         ezfymLzlT3BEla86nDZ8qspTEqRcZ7fnhlSD9N1i9N11Jjmssx6B3oqjyEIRn40ZSzNe
         zEEuKfCUVSfQoKm+SFBNGohtSuQlBEhT6v5yfB9tdKAlrNPCVbYIaL1zykohjvbiND5z
         /eipOgK/AyS19++2uEovVt1Ny5PysChkQs9Fi3BuSBRJ9XuZlwJ0ANPAEkW+tkjeaQay
         5IVuxjr2vB5icMHWvk4AoToz1BcnvRrlRsqQfMXoL3Tyd622YhC2PtuadHXOxZg3mYaf
         9EPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=nv2as054y2+dxza7kSWQOfC/0P0JtFWeJ6rZvNrpA6E=;
        b=vUeHtbC280cUoiYlSRSRRRv9414ET2yzwZQS3ffdKeYBGbutKJ739wE2gtfUA+dEeJ
         kc3VLRYsL99kbNiHDPi2vW0pEy7P/WVA5b7WiGz8hPXGX1zjI9Z5Hntc5DWBMWIwXBJV
         lJTVX6GV15DmELHBBs5EDObMJe7uIESpK9NRkyWDJ8s71O7QXWCBSLajoR3l4DWSTMY3
         CMhB5bkL/J9CW7of6P08YJcPjA1SJ/7/+0PZ/YYf1SM1zCsMrrOAPgQyEQiPZu6B6Wyq
         kSmDTokceelbrJt0vaEy6yUneVtSfzOqMlkdpg6VMQu3p4p/OBr4WlYHd7qlKgSibKaD
         zPjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=V8mp4jvy;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nv2as054y2+dxza7kSWQOfC/0P0JtFWeJ6rZvNrpA6E=;
        b=Vc6mDrOCWteyWlIxTX9NeN35UcJ9WuO2VDZPQZVC2bRws87wJKz3ZIhlWIGItti9Mr
         DXA6VpiNP5nvaYSs2V4OFi82ha/1SrqvCy6SXqpOFXyjXywDMnGDrBn1K372aq00C60/
         +kmeQJ2c79F1yyenXkCwpeN+mxvOtWDbhNSFHdk8MjtnUlnGfhGSiRoHGGK8Av0YDgUa
         lzKbdAyDgymzUJEDuqC+bQrilIQwaUVkNFCCDedrRpjMrGu27+0nnrL4PyfUYVUw8eWi
         2GJPs2GXEaOzu4uN7PCoaEnVHmJw+LQ47Hz0GazCnW8lZ9kDv1IeEx1fdu3xJ1yJec+o
         NIMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nv2as054y2+dxza7kSWQOfC/0P0JtFWeJ6rZvNrpA6E=;
        b=djxRLuBAYKLNIY0v3K3UmZtzt/l/7AbYp8BJiDADZfQIeavsPWpIow6GdS35jJJzWJ
         GIZIOlJEA0+IZCRDRXIEBGHq0OC098Doi9eLHQKWGbd33VP1q3ZjPjs2+BUCdCNO97bS
         JVISZlLwskpiVnmPqP4ZfMQRQIHCUuBz61gxrsRDGqX8P3tCSyj7yWXdrFkGP6WK23ts
         xwd3gu8YyzPJhypg4MjOZYNxXM3CuA5Ud6vs1w3aLo4oHyYiPRhUnFGneTJIhIffrZDY
         pq4rL/FeEknnZYxyxZ/u6hn84jWlYo99r7lJVh3iEpldtco5iBA238qlFhTmwCDozxb9
         d7dQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531z0DhRgrSDVuHU7bRX+b7aCy7U6JE+FTamMoE1Xz1WxExeIwdU
	zu4rgCx05BYMVl0V2f8SzsQ=
X-Google-Smtp-Source: ABdhPJw/vj9QYZLvwAo7AXZMc1PhzinKbqYoOinxAnGvORwkF2IynnTkZDjgwO54x9wKplRcdZknBw==
X-Received: by 2002:aca:4ac2:: with SMTP id x185mr819634oia.0.1592516602676;
        Thu, 18 Jun 2020 14:43:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:241:: with SMTP id m1ls1485970oie.0.gmail; Thu, 18
 Jun 2020 14:43:22 -0700 (PDT)
X-Received: by 2002:a54:4494:: with SMTP id v20mr800224oiv.154.1592516602368;
        Thu, 18 Jun 2020 14:43:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592516602; cv=none;
        d=google.com; s=arc-20160816;
        b=CMD54jywBwCfyRffGioj8GxoTHMQRA/q5yDmvVkgfmHlUYbI8RuNB32wyQG2d6HaEy
         ayb+ARPqBPyTiomGxjFX4RO1lL2hOx6QIKH1rOifNy2EsDYJ9S+//A1Zlp3Yb3QcmYfO
         3UxSYhqu7g34SV2Ete2zs7cxBOkJ2wSUPs3QUNu4u4JQaX4PqMhsEk3oAAp95Kybh7y5
         Kvewxdkl04c05e76txzgAaxjRDlibraNyDzFJ3mci0DOakyX1n4GjHhQoNAy9rT04OX9
         th4awYMDq1rFPtAgg3xZvO4j87GPQselikNvK7grqu/42U5aIZQ9so3CCMJ4C+aSTi0c
         d6SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=MCieKSv/d/exPmPAc7GwarGBCkAH7xKxzBmQYr15/Mk=;
        b=J3bS4+swfHL8NJdbd0Ktbz9SAA9PHY7a5WDS0s2wigXJOpa7Bx//xRdla6rjEXlpam
         TCoU+Zdz+s3jtQJf64GgFhQ7zbrPSHje3j2O39Q++wgNefu4QmKnJOrIcyfxxk78dW5C
         vtf33nMwpzoUzm1Q2Mey2ZVlkeerktnqG7u6cogDmgNZuxJZg3SIOCpacehU86RXfTrY
         Tvf3h6V+txlGvLTNAsRWsvgH9ajfjkNj0muGE/XVV9uSU58qIFbqhV5epZZkzIQnh2VF
         8hb/ogncdOKUisAi5J294v0/esdq07DoZhzDoRpNbyhPo0CKoBlzYiIvya8DfE7180sE
         Yivw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=V8mp4jvy;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c22si370342oto.3.2020.06.18.14.43.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2020 14:43:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id a127so3412870pfa.12
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jun 2020 14:43:22 -0700 (PDT)
X-Received: by 2002:aa7:9abc:: with SMTP id x28mr5293452pfi.39.1592516601272;
        Thu, 18 Jun 2020 14:43:21 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id 130sm3695771pfw.176.2020.06.18.14.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2020 14:43:20 -0700 (PDT)
Date: Thu, 18 Jun 2020 14:43:20 -0700 (PDT)
Subject: Re: [PATCH] riscv/atomic: Fix sign extension for RV64I
In-Reply-To: <20200611183235.37508-1-nhuck@google.com>
CC: Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
  nhuck@google.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: nhuck@google.com
Message-ID: <mhng-daf9e66b-0b4a-42ee-92ef-e2a08101a362@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=V8mp4jvy;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Thu, 11 Jun 2020 11:32:35 PDT (-0700), nhuck@google.com wrote:
> The argument passed to cmpxchg is not guaranteed to be sign
> extended, but lr.w sign extends on RV64I. This makes cmpxchg
> fail on clang built kernels when __old is negative.
>
> To fix this, we just cast __old to long which sign extends on
> RV64I. With this fix, clang built RISC-V kernels now boot.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/867
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>  arch/riscv/include/asm/cmpxchg.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
> index d969bab4a26b..262e5bbb2776 100644
> --- a/arch/riscv/include/asm/cmpxchg.h
> +++ b/arch/riscv/include/asm/cmpxchg.h
> @@ -179,7 +179,7 @@
>  			"	bnez %1, 0b\n"				\
>  			"1:\n"						\
>  			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
> -			: "rJ" (__old), "rJ" (__new)			\
> +			: "rJ" ((long)__old), "rJ" (__new)		\
>  			: "memory");					\
>  		break;							\
>  	case 8:								\
> @@ -224,7 +224,7 @@
>  			RISCV_ACQUIRE_BARRIER				\
>  			"1:\n"						\
>  			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
> -			: "rJ" (__old), "rJ" (__new)			\
> +			: "rJ" ((long)__old), "rJ" (__new)		\
>  			: "memory");					\
>  		break;							\
>  	case 8:								\
> @@ -270,7 +270,7 @@
>  			"	bnez %1, 0b\n"				\
>  			"1:\n"						\
>  			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
> -			: "rJ" (__old), "rJ" (__new)			\
> +			: "rJ" ((long)__old), "rJ" (__new)		\
>  			: "memory");					\
>  		break;							\
>  	case 8:								\
> @@ -316,7 +316,7 @@
>  			"	fence rw, rw\n"				\
>  			"1:\n"						\
>  			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
> -			: "rJ" (__old), "rJ" (__new)			\
> +			: "rJ" ((long)__old), "rJ" (__new)		\
>  			: "memory");					\
>  		break;							\
>  	case 8:								\

So we talked about this earlier, but just so everyone's one the same page: I
think this should be a compiler bug, but the spec doesn't define any of this
stuff well enough that it actually is.  I'm sort of inclined to make it a
compiler bug, but I'm not sure if that's still possible and it requires a lot
more work.  I'm writing up a bigger email, but it's been floating around for a
few days and I don't want to delay this on sorting out what our inline assembly
actually does.

I've put this on fixes.

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-daf9e66b-0b4a-42ee-92ef-e2a08101a362%40palmerdabbelt-glaptop1.
