Return-Path: <clang-built-linux+bncBD4PP5X5UEBRB5WVXH6QKGQEYQFDHYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 5307E2B19D1
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:16:07 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id f4sf3645888wru.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 03:16:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605266167; cv=pass;
        d=google.com; s=arc-20160816;
        b=bEvbWa8EtWduHdG1lE7FZF7FHXNKifjzYpNqIqmVZfANK5H1iMg4tictoAKe/kVWvY
         D8yRJfAvRO4atiU/b6oO60S0pRnislzPCiSW7VDVsG6Nl0TubBIM1x0h2c4ag6kcWcQ/
         4RhABn6WeuIU9+nFGpU3iwyrktnsBiwY3o35ulNthGa9mfhyhAb2dcmSY/oaVRKdAdBp
         rP9OegY71pDybVupNlyt3WflmncRcjtoxEzPDuPKnz5SxR/hlPQqkwsR7gawbyIjiD6/
         G+dxqStmLDGkxpu054mSD167D6+Xx3iWYVmee0ZMVYBdVTHyeb011lxmrokv7mo22Awq
         yEeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=AH7qbRmP3CnkYpmo/v2s2Xruzseoo/xrugCJ/IUWN3o=;
        b=ieViY9nQrDOmjzG/Pst0xY6jCSutMwXabHoBhmMmgeWazC78/acilmBOihaC8sj5Rp
         vButyJFARlob7Z3zax6WyWQ4t35li5ku0AaRtZTJgujWuDnuiSCgNm6HKpbfVkkM6GD2
         BNu3GuAvsxDoNV0v6IKdMVgR/wdvzdeFztjmbUtGUwI+yu7GlRYoVcDnRGjzirD/rKvh
         FyyMxB+uqpaQEBq/ah6r0nIEhKHHlLlVFaWkzwK/Pyk3GWMszXQgzrnUEqUgxc75iRSA
         rPZQ1wRFRG9W1ge1gBjf7Z0w1AoftuoNXoGuef6aGUkxNJMolU45FNCGX51mwT1C7oU4
         qJPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AH7qbRmP3CnkYpmo/v2s2Xruzseoo/xrugCJ/IUWN3o=;
        b=NneGUwF+2A51+9+m4B3xbHIoWBubSzX0gO/I+HrkaH/B52lPitwIvMhuvaldZSeJF6
         vO59+1HtZkMrF7eCD7YGr+8Ahgvm7NJI116h8ik0CahMGRlM2ouWz6IdV/osS81xDFFw
         fEny9gMYytwgZ87cv8aXlUtBDTg1TzaqB/zr1uLIHELprZqUsVHrtA47BFxHu/IVOGse
         gloKOT7Uh0XD5rRh7+6jtuZEJQrY8y4Ur/fV9uPFeN91bZ7RXV1rGQyp81v/o5PSl5O4
         4d14AlKxPAijdI4OLiGAqZlbbLXZOioxGi/yIKVF0oVIlRNINtezJIXBbDZrt5Rtoo2d
         zrGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AH7qbRmP3CnkYpmo/v2s2Xruzseoo/xrugCJ/IUWN3o=;
        b=Jl6sdlsP0qSauq/o0R2UxN36KQkflao0YOtHflAyDSSsCv6iesNcheSA2aiBohN74X
         m6ceU2ddZzLlMThBMweAwmBHnlStdLhqx675Wq0EQM/aS8WbFz+2hK1BtGFAm4JOp4CQ
         8kei9oJw28gtJG8xe/Mu6CwFCUL8jP2l4TVXppWutLxSn+deGXO2Cz6QVL9+YAhZW7qu
         Qaz8vfTakNRil/ECGmAv9rk09e50AaAdte3ub8D95bgtP0kgpUFupZ2Sp2jKAhIR1tah
         E9sQYSZSCDUk3WvdGpj9BdyLRojC9fRcKk/ODjzH8nkO6fJH2bXdFowuLi3F48A8K6Q9
         ihcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XioyR4jE14MWZ5IcpcDGDgzY3HAofKyy0rj2UOeGD0Zto+k0k
	gie9PCb+jTFPSimgEt8XMII=
X-Google-Smtp-Source: ABdhPJxYH8Dratk5hAfaKcym5KH04pl6/e1ttxpF41W0v5n2cg9rH8QerBAPZtIOhf9n8pojYgd/wg==
X-Received: by 2002:a5d:67c5:: with SMTP id n5mr2935433wrw.179.1605266167026;
        Fri, 13 Nov 2020 03:16:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5417:: with SMTP id i23ls2926849wmb.2.canary-gmail; Fri,
 13 Nov 2020 03:16:06 -0800 (PST)
X-Received: by 2002:a05:600c:22c5:: with SMTP id 5mr1997140wmg.25.1605266166090;
        Fri, 13 Nov 2020 03:16:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605266166; cv=none;
        d=google.com; s=arc-20160816;
        b=sNZ2Q0X5TCm2Cd30L4Iv6gCVjo9ximDpa8Tn1CJm+06iEp+niyYmQX0AXwI9HS/23Z
         Wvrn++pSX6y8wrH45tpK1VUTOREFs3vCTCCB/VE67qSprruOayzIo1eFO/bJ7H37WiIq
         dZfv8kCi9aNwa5eWW3OWdXrEpbRFryaXrXPcaUiQQmdw4bAJKfpmKAEd93cHJoeqL0Eu
         PEMCx+hK+irSuXJYKIV7arjvaUjubSeh3d0VFB+ApeAVGEPx/6644YxPRURmwb6ZnaH2
         fmZJkIyXgoZXbUY+WJby61q4CV5702LUdvWjbJDGp/bXVpszRKV2PtsJmEsZqMKgPyxb
         vSdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=RY3/ca7GPdRsgGcBAqRzB3f4/EK+fHzH0A/wCtezt7E=;
        b=SmUGwIVH4JhlNsdJCV1u3YG3RpjqBnce9FZj66L6b4kLLpkdne8uaRoyLvrhNH7B0J
         t9H18GWIujzHri07zZAtv6TNlxtP1EhUvak6lFmD9xUGbay13QqTqgc9LQqeTOv62VLG
         cE0ISOJFPft65997w9eMbpPrc4h3ZLGnFhEUoVwB/nmtGPhi7d4aSkc3Q/leRExxUdfX
         8EhillevdUr0z4ZI2N23lq9SwvBOS04YRq/TnZBOdesnzTWyCqJrbR9Cj5VZS/yGgYSL
         vCC9bIzgSHVoXledIqMFObV4NFzxFgYfWoypAYYdH+5Y8bqOVISXJmwNS3+Af5GCeP8e
         f9zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id z83si690714wmc.3.2020.11.13.03.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Nov 2020 03:16:06 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 52DAE1F468E4
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Arvind Sankar <nivedita@alum.mit.edu>, kernel@collabora.com,
 clang-built-linux <clang-built-linux@googlegroups.com>, Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] arm: lib: xor-neon: move pragma options to makefile
In-Reply-To: <CAMj1kXEpD1pp5uzOMeSYhgS_dzOysKuPMOMNgivUx58PGUdMJw@mail.gmail.com>
References: <20201112212457.2042105-1-adrian.ratiu@collabora.com>
 <20201112212457.2042105-3-adrian.ratiu@collabora.com>
 <CAMj1kXEpD1pp5uzOMeSYhgS_dzOysKuPMOMNgivUx58PGUdMJw@mail.gmail.com>
Date: Fri, 13 Nov 2020 13:17:38 +0200
Message-ID: <87k0upjyjx.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Fri, 13 Nov 2020, Ard Biesheuvel <ardb@kernel.org> wrote:
> On Thu, 12 Nov 2020 at 22:23, Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> Using a pragma like GCC optimize is a bad idea because it tags 
>> all functions with an __attribute__((optimize)) which replaces 
>> optimization options rather than appending so could result in 
>> dropping important flags. Not recommended for production use. 
>> 
>> Because these options should always be enabled for this file, 
>> it's better to set them via command line. tree-vectorize is on 
>> by default in Clang, but it doesn't hurt to make it explicit. 
>> 
>> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu> 
>> Suggested-by: Ard Biesheuvel <ardb@kernel.org> Signed-off-by: 
>> Adrian Ratiu <adrian.ratiu@collabora.com> --- 
>>  arch/arm/lib/Makefile   |  2 +- arch/arm/lib/xor-neon.c | 10 
>>  ---------- 2 files changed, 1 insertion(+), 11 deletions(-) 
>> 
>> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile 
>> index 6d2ba454f25b..12d31d1a7630 100644 --- 
>> a/arch/arm/lib/Makefile +++ b/arch/arm/lib/Makefile @@ -45,6 
>> +45,6 @@ $(obj)/csumpartialcopyuser.o: 
>> $(obj)/csumpartialcopygeneric.S 
>> 
>>  ifeq ($(CONFIG_KERNEL_MODE_NEON),y) 
>>    NEON_FLAGS                   := -march=armv7-a 
>>    -mfloat-abi=softfp -mfpu=neon 
>> -  CFLAGS_xor-neon.o            += $(NEON_FLAGS) + 
>> CFLAGS_xor-neon.o            += $(NEON_FLAGS) -ftree-vectorize 
>> -Wno-unused-variable 
>>    obj-$(CONFIG_XOR_BLOCKS)     += xor-neon.o 
>>  endif 
>> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c 
>> index e1e76186ec23..62b493e386c4 100644 --- 
>> a/arch/arm/lib/xor-neon.c +++ b/arch/arm/lib/xor-neon.c @@ 
>> -14,16 +14,6 @@ MODULE_LICENSE("GPL"); 
>>  #error You should compile this file with '-march=armv7-a 
>>  -mfloat-abi=softfp -mfpu=neon' #endif 
>> 
>> -/* - * Pull in the reference implementations while instructing 
>> GCC (through - * -ftree-vectorize) to attempt to exploit 
>> implicit parallelism and emit - * NEON instructions.  - */ 
>> -#ifdef CONFIG_CC_IS_GCC -#pragma GCC optimize "tree-vectorize" 
>> -#endif - -#pragma GCC diagnostic ignored "-Wunused-variable" 
>>  #include <asm-generic/xor.h> 
>> 
>>  struct xor_block_template const xor_block_neon_inner = { 
>> -- 2.29.2 
>> 
> 
> So what is the status now here? How does putting 
> -ftree-vectorize on the command line interact with Clang? 

Clang needs to be fixed separately as -ftree-vectorize does not 
change anything, the option is enabled by default.

I know it sucks to have such a silent failure, but it's always 
been there (the "upgrade your GCC" warning during Clang builds was 
bogus) and I do not want to rush a Clang fix without fully 
understanding it.

Warning Clang users that the optimization doesn't work was 
discussed but dropped because users can't do anything about it.

If we are positively certain this is a kernel bug and not a Clang 
bug (i.e. the xor-neon use case is not enabling/triggering the 
optimization properly) I could add a TODO comment in the code 
FWIW.

Adrian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87k0upjyjx.fsf%40collabora.com.
