Return-Path: <clang-built-linux+bncBD4PP5X5UEBRB67QST6QKGQEJZ5PZSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFD62A95C2
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 12:50:20 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id y14sf427490lfl.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 03:50:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604663420; cv=pass;
        d=google.com; s=arc-20160816;
        b=djPJnk1A4U+Om9ksFm+n8KF+tCqZnj0/mcB4W0AbeH+h4sQ2xchsaI+ugS8CguwjGI
         iwb9Q1C8tFIaSItvnNNjGRRVTiybYsx3kmpbGqsd6kas/REwGTp5gdRyF66XcMwTWPbC
         fu4mz45F5YbmZQcpnVIQCKsn/cMjWXeQQ7Jw4TRXmMc2q2qwpl+s2ugZx/k1nQd9tgM0
         /w3AlX4ArZw7B7CvT7lmtiOm9bBxtIXxD+lHbL5xinjRnmTdLPVJ2a26a5/p7DguLVMC
         H0fHcABMd64Xr8613IpoqziH+UsyAqMpLH9cNIGkU4iwkvGq05pS/xoB/x49b9k349sR
         4Zdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=xC9d9At/QAFpgid1ydDVxFwJ0Gs7b6a6V2+v2aZ6lPM=;
        b=O3/Qg8x558nUbG/74CcIBhIZnipswkYSKlv686TnkMVNwdEk3wMr4tyWelW5q085cM
         muMnbds8VU5rm9EmV48COAVG388YCRy/Uzs1JV9YNsKp3Jj/Vt1Rpl6EHPtDscNNdQw3
         V6M0DGYqZjo4bP5rOc8mdbZHUAgQKN/NSzgVx6w6zSCRtnNOW3g3VWsJ7+vb6NXypaCy
         1DNCYPBLkO/Xe2750nTU76tLwfPaKqqoXCTOAxnJuMCHOpeN6ERllDYSZYDg+Yt3SFTQ
         +PevWifIjTGnJGxSfGKX5VGxrYrp1E1PMlHzqWH6HokLYFm/bzTgq2588AeiCJ6JbelO
         5blg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xC9d9At/QAFpgid1ydDVxFwJ0Gs7b6a6V2+v2aZ6lPM=;
        b=Mt0dB3ZoFVNtdKxVuM5uHZeU/fe1LKZ0IGweJ70i/Hg1ROd1/Qi2eR2Rhr3hnEAes3
         g523AxYETFYjlwrNtkeeOFki7lU0z2+H1fHsL0NFzNZjaP07GM3kN8gwm9x9TV9/l0la
         B7rzQ0VlAGNfud6bbmXL8aG/aFJKipNfRNwgNeFguwapNi7prEneeYU9PflXRw4FlmcL
         VwoPO8ISD0a7jrRRaKOcoJJHNBVq+87VzCdTDKjkjmr/d3g1/FecKLkdpvd2phwX6tRm
         b3WqK5atZpR5gOrOGXAH+I2asuPMxXczE8micGic42udwfIZn4Rugdpn/CV0U1ChTNha
         EBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xC9d9At/QAFpgid1ydDVxFwJ0Gs7b6a6V2+v2aZ6lPM=;
        b=NIFbBeZBYB1FeNUxqcMIcv91/DFtuutYonX5chHpPo20SvshUJ2LCQxhwV/gl+ljYo
         aWOLCP8nYHkbv9ngUQ6OTQpcdPdFJA9aB9HIiVzuCBw5J2gbhR8QL18k5hQxuz2SRLML
         fsMm+Klc9VQhPYpmtXnfQ27CEgKOKc+ItXqfEt8HtpYpWhUHR/wveM6/C4ChE1kesIjZ
         kcg0AbdSI0rhOyXuK0z273rvDLtOTdGzJlzGg984NqaEY15TUFRSkFwP4gIuHDxh78LU
         fW14p8n9ywHEbe04tQpqWrXTz09TBCapWODO9cANFOeqEdsxAYRugwusO2bgZFAAUOVE
         /vkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323DkMNwCPg9Sg0XcQS6Z6FlaMofi2wkxh40MgnKmlALkKAJH2H
	1qFAAV/XdMG1YjANelEdHFo=
X-Google-Smtp-Source: ABdhPJyVdafi/wgrz+bGAgv4I++Mf4wX+Lr/Zsr7mEECSOFq6U83XKj1HsXRpa4dgAR6hWugHV3IBQ==
X-Received: by 2002:ac2:4183:: with SMTP id z3mr823469lfh.510.1604663420074;
        Fri, 06 Nov 2020 03:50:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:d0e:: with SMTP id 14ls828250lfn.0.gmail; Fri, 06 Nov
 2020 03:50:19 -0800 (PST)
X-Received: by 2002:a19:ae13:: with SMTP id f19mr699455lfc.193.1604663419011;
        Fri, 06 Nov 2020 03:50:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604663419; cv=none;
        d=google.com; s=arc-20160816;
        b=Ho0ZzTB9EpwQ3/SHUj8wPZt9tj+A9uaY120YIZN5s+SPopH8oKqdv7XbfnNcZ/ho9J
         62iSGT79BcFK4u0Uon1BnPFbX4CoBWAkRJ8aHr6Lheua5DlKm/eL4LtpZkAotFriJbeO
         TpWyc8eEJmqv7CV8SwKRg23UhBHMLKUx0X86d3er+vxiLvkYgRJPBwjj2UnnjMGK5k3N
         n6Tr7e1gZyCprO/BvaevBOF3GXkMclc3HffqrEFRXAPQe8GmG5ZtnU36fwK3NW0kXoIr
         I4TDPulfxtBGrUn52SJ736FZk5+gdGkWVaP5FXhPnRC55b2mlj4wYeW0rOTfDUalU+1A
         niQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=C2dEbYl6bPDdzKUR8mS/wIIxzSDtj8ZwtQ7eY103mgg=;
        b=asDypJtqIZYqAKH/WvI7JLKQXUM3zERH9ShV1VOI9IZD6P0A3DMrB2ByLVf3Z1wpJB
         zqOkivM9RT6uLEoUsk4ZLTTPE2p81htLOq8/QJ5qEA3TXriVQY38wziCro1jsimsf2CU
         LMQEHFdng0Ox+nOe1LcGDk+uQu3tcSWoWFUAm8Rl1ojLdftrogtvMjb5cHRqZvdF/zHT
         RKYng9tqk1znHp51IoxiCOT3r/mhEr3wVoKnSdtyByi2cVvQGNVvKANZgw4G3CRwpcKN
         cqfCdHTPtu+B2KUXxy9szVHkYHEKq2x77H731GyKXmmEK4x47nxoho/pbyc/wQy2oldN
         Z/Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id j2si29609lfe.9.2020.11.06.03.50.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 06 Nov 2020 03:50:18 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 952321F40EB1
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Cc: linux-arm-kernel@lists.infradead.org, Nick Desaulniers
 <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, Russell
 King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
In-Reply-To: <20201106101419.GB3811063@ubuntu-m3-large-x86>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201106101419.GB3811063@ubuntu-m3-large-x86>
Date: Fri, 06 Nov 2020 13:50:13 +0200
Message-ID: <87wnyyvh56.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
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

Hi Nathan,

On Fri, 06 Nov 2020, Nathan Chancellor <natechancellor@gmail.com> 
wrote:
> + Ard, who wrote this code. 
> 
> On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote: 
>> Due to a Clang bug [1] neon autoloop vectorization does not 
>> happen or happens badly with no gains and considering previous 
>> GCC experiences which generated unoptimized code which was 
>> worse than the default asm implementation, it is safer to 
>> default clang builds to the known good generic implementation. 
>> The kernel currently supports a minimum Clang version of 
>> v10.0.1, see commit 1f7a44f63e6c ("compiler-clang: add build 
>> check for clang 10.0.1").   When the bug gets eventually fixed, 
>> this commit could be reverted or, if the minimum clang version 
>> bump takes a long time, a warning could be added for users to 
>> upgrade their compilers like was done for GCC.   [1] 
>> https://bugs.llvm.org/show_bug.cgi?id=40976  Signed-off-by: 
>> Adrian Ratiu <adrian.ratiu@collabora.com> 
> 
> Thank you for the patch! We are also tracking this here: 
> 
> https://github.com/ClangBuiltLinux/linux/issues/496 
> 
> It was on my TODO to revist getting the warning eliminated, 
> which likely would have involved a patch like this as well. 
> 
> I am curious if it is worth revisting or dusting off Arnd's 
> patch in the LLVM bug tracker first. I have not tried it 
> personally. If that is not a worthwhile option, I am fine with 
> this for now. It would be nice to try and get a fix pinned down 
> on the LLVM side at some point but alas, finite amount of 
> resources and people :( 

I tested Arnd's kernel patch from the LLVM bugtracker [1], but 
with the Clang v10.0.1 I still get warnings like the following 
even though the __restrict workaround seems to affect the 
generated instructions:

./include/asm-generic/xor.h:15:2: remark: the cost-model indicates 
that interleaving is not beneficial [-Rpass-missed=loop-vectorize] 
./include/asm-generic/xor.h:11:1: remark: List vectorization was 
possible but not beneficial with cost 0 >= 0 
[-Rpass-missed=slp-vectorizer] xor_8regs_2(unsigned long bytes, 
unsigned long *__restrict p1, unsigned long *__restrict p2)

[1] https://bugs.llvm.org/show_bug.cgi?id=40976#c6

> 
> Should no other options come to fruition from further 
> discussions, you can carry my tag forward: 
> 
> Acked-by: Nathan Chancellor <natechancellor@gmail.com> 
> 
> Hopefully others can comment soon.

In my opinion we have 3 ways to go regarding this:

1. Leave it as is and try to notify the user of the breakage (eg 
add a new warning). You previously said this is not a good idea 
because the user can't do anything about it. I agree.

2. Somehow work around the compiler bug in the kernel which is 
what the LLVM bugtracker patch tries to do. This is a slippery 
slope even if we somehow get it right, especially since multiple 
Clang versions might be supported in the future and we don't know 
when the bug will be properly fixed by the compiler. In addition 
we're enabling and "hiding" possibly undefined behaviour.

3. Disable the broken feature and once the compiler bug is fixed 
enable it back warning users of old compilers that there is an 
action they can take: upgrade. This is exactly how this was 
handled for GCC previously, so there is a precedent.

This implements the 3'rd scenario which is also the first thing 
Arnd suggested in the original patch. :)

Adrian

>
>> ---
>>  arch/arm/include/asm/xor.h | 3 ++-
>>  arch/arm/lib/Makefile      | 3 +++
>>  arch/arm/lib/xor-neon.c    | 4 ++++
>>  3 files changed, 9 insertions(+), 1 deletion(-)
>> 
>> diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
>> index aefddec79286..49937dafaa71 100644
>> --- a/arch/arm/include/asm/xor.h
>> +++ b/arch/arm/include/asm/xor.h
>> @@ -141,7 +141,8 @@ static struct xor_block_template xor_block_arm4regs = {
>>  		NEON_TEMPLATES;			\
>>  	} while (0)
>>  
>> -#ifdef CONFIG_KERNEL_MODE_NEON
>> +/* disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976 */
>> +#if defined(CONFIG_KERNEL_MODE_NEON) && !defined(CONFIG_CC_IS_CLANG)
>>  
>>  extern struct xor_block_template const xor_block_neon_inner;
>>  
>> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
>> index 6d2ba454f25b..53f9e7dd9714 100644
>> --- a/arch/arm/lib/Makefile
>> +++ b/arch/arm/lib/Makefile
>> @@ -43,8 +43,11 @@ endif
>>  $(obj)/csumpartialcopy.o:	$(obj)/csumpartialcopygeneric.S
>>  $(obj)/csumpartialcopyuser.o:	$(obj)/csumpartialcopygeneric.S
>>  
>> +# disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976
>> +ifndef CONFIG_CC_IS_CLANG
>>  ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
>>    NEON_FLAGS			:= -march=armv7-a -mfloat-abi=softfp -mfpu=neon
>>    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
>>    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
>>  endif
>> +endif
>> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
>> index e1e76186ec23..84c91c48dfa2 100644
>> --- a/arch/arm/lib/xor-neon.c
>> +++ b/arch/arm/lib/xor-neon.c
>> @@ -18,6 +18,10 @@ MODULE_LICENSE("GPL");
>>   * Pull in the reference implementations while instructing GCC (through
>>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>>   * NEON instructions.
>> +
>> + * On Clang the loop vectorizer is enabled by default, but due to a bug
>> + * (https://bugs.llvm.org/show_bug.cgi?id=40976) vectorization is broke
>> + * so xor-neon is disabled in favor of the default reg implementations.
>>   */
>>  #ifdef CONFIG_CC_IS_GCC
>>  #pragma GCC optimize "tree-vectorize"
>> -- 
>> 2.29.0
>> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87wnyyvh56.fsf%40collabora.com.
