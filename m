Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBRNW7TWQKGQEW2FVDSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 733FFED428
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 Nov 2019 19:24:06 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id c15sf2749316lfg.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 03 Nov 2019 10:24:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572805446; cv=pass;
        d=google.com; s=arc-20160816;
        b=huXmEKf1iScxKUPt6tv60kHsxFRKxmZqp0KU9ZfoIUpvEdZu7YfOoFc3HXcx9UlJ7c
         rWXXG36J+I/IPrmrekgcpaz+DqtvNior5c1BM8avpkgjEEEgtQFgwn7XDwPU10yw5UJR
         1Wpy+S7n84zDUBSBfW3+iutrdazv52f26Qnpl7s3RDq+2+eRVSrwatmAHDkpmGs2v4/y
         HygQXi8fUqs3u9E+soV3FJqzV2xO27g/azsUaH+NSNDu8NEL/riiN+x3O8Ei0XDjD3I3
         GlUdsnw882sI42b5zQXRT33AV9a8BM2JjxU1+YTdvIVU894AclaVvU61lMoYbbOFF4cN
         FDPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=ZgVPYnvahPXalGl0JGQ3xaVAiSkPY+nwVywPP3XBTAo=;
        b=IHLlIWvybKZ68O6aVDfcpqrXsYsvTuN8Xa3lksenGApVY/Cl248BlwOFo4soDpEDk0
         T728cMt8F1GHPt7Nbr/6chRdgj0WQ/XOPaI58JyVVdqqLb/nD5tgI2pi7suhEP96maUF
         3uzaTFX9heg2ObEJT22iP1OHwHVd7eumpmtzAXKUOD1DS1mIQsKfnEZUfx5Iy3a6s3PG
         1HhXSS9nTvjR+fy33mggpLxVviDAslYLlwDXH1pqJKckSvMTOFsdbShrd9F2CRG6HmwH
         kJUsqpx9gZe9/4X/5b2Z63slangxU5qCMkUcdisbY4eqbV161AZGTEl2iud6aJ//7t24
         k5nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=H9JGfR6H;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZgVPYnvahPXalGl0JGQ3xaVAiSkPY+nwVywPP3XBTAo=;
        b=MjaJdDwEKbPli5SAyHh7d+nT3LeLSx4L6jKG1DilUWdtocncrIyV9/B2ZFIqUNuijA
         85rvzY7Ynb9gfrOKbTrgtbIXsLMQhTI3v2St8IMA3eddKuy+IMT1WJ9eAUUDdsZnRQz+
         rvc9IjkUaHYHvgJ7ZSwufJYRkzuBk1utD4qeD5E27PlOmHMA4QOjWN58LmvlxVrEPoIq
         1YIMKcmTpIvXY2QCtRnXDbnY5EZJ+w/oL5KW8eVlsco7+NHF915M7n1nGqGAZtGWbJV3
         10FYumy1jAlbcTbMwI+3xZZLRLvyaGurRrMnHhfewUeWFQz4ssVoxhqx+Z36Hvg9YXnc
         5DpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZgVPYnvahPXalGl0JGQ3xaVAiSkPY+nwVywPP3XBTAo=;
        b=SR0KQHHf3aNxbSv3P76iO4R72ooFfiYQIev23vMrThobEy5iwOfrnx6EeMj5lrdUcb
         LKnj2YKQg8pwJxoQKhPjZahBOb9ZWqg7lviv/3seF2sbxMkcQpWs1jT4oP30hb2KsMAD
         IeXwZLNkyNJg/r7MJ5Y+KP1h9muIsA+9NFMsUXwJYTwISYroTsR0cfkDFVAGYWbu5jd5
         VJSgXU1sn/XJjlbSOIwcJMwuRYtVqi9sgby5LpSURW4XIhKuD4txvxUIRK8hE64+Cim+
         dLcXAlna5XOsmR6bhoWbEN09/ceLWkUrYP5lykHF0VoaDW5/2IFJ084ujSv/Jrtzog0n
         q6yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPOnFHUA0GLmLeQ9lszDDMB90nwCRZI6bHBENPimov7HqvbIUj
	CQD3gpmk3x62fjpQ/oSWbD4=
X-Google-Smtp-Source: APXvYqxJ87YTnbhxYKsdAo7oIX7bhNICmlou6hS1br7Pq5AUxAhup8smTyxLiRtX5KKTz2F6pU3nQQ==
X-Received: by 2002:a2e:814b:: with SMTP id t11mr16402702ljg.20.1572805445916;
        Sun, 03 Nov 2019 10:24:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4184:: with SMTP id z4ls267419lfh.9.gmail; Sun, 03 Nov
 2019 10:24:05 -0800 (PST)
X-Received: by 2002:a19:6917:: with SMTP id e23mr14226146lfc.4.1572805445407;
        Sun, 03 Nov 2019 10:24:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572805445; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZMbHyIH9oHfDukURLigxBG1746N+KoUufrbLRo/Yjaj7njbBgwB/s6M3EtyhKXbQK
         7/AJyR2nd3gO2cdfIbJknDgj+bNcPfYO301y1gpZEKrqMITw8c1KSRQAO4PmzsrgPGBD
         rKtl9c7xKVdT4k+rTGCvb9nUkPz4NleJFOlmDlAvAYzKx4iB2Nf8hHH72YxFjKtQW8WB
         xKvC5qPGPKAeokmgihp/yCmywewtL2GIFaAQ3gPX+BU/wl26A9PAHMVE+kkiShae+MZR
         psXWhJcTb9FDDzJOvPenlSIHt8LDrPQyy1gEv57+5MEsvSi38pLbTa6/m3m5gPJDH7Od
         Mzgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=9fntE1N5AsxqOETEl0Wde7bowPGM0/SedoanyW84npw=;
        b=RBODU7pgdh0H7Fh87BzespZXoVr/OI27bl/5PHPBUNWGkREW3JLaQ6mrhCayMi0uH0
         AZl6qvX9uxLAADTSmakMWLR56UTAF1Ru0v6z7qgEOv/vmqxf3JbT/WFhajSAEJqKJpx8
         0RZvH0WfyMJ9cpvO7ydFtEHvnWJX+6NEr5fNVNmmVtGywNPmwKMSxEMKONLLig4s6HEZ
         jFeTeqDdQYLFrXVwNiq5tzovtWiWhbEgzmrGogUiG3hIeU+53+okEsMDQZZTN+CCG6Qa
         mfhhyIx12Fs5DOp6zCD/yVBEQFweJCvVB1F5JdW8KYxhIFe8HhsnJ0EgQeiRMGQjicd2
         WTow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=H9JGfR6H;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id k20si313846ljg.0.2019.11.03.10.24.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 10:24:05 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 34EDB5C007C;
	Sun,  3 Nov 2019 19:24:04 +0100 (CET)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 03 Nov 2019 19:24:04 +0100
From: Stefan Agner <stefan@agner.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: ndesaulniers@google.com, nico@fluxnic.net, rfranz@marvell.com,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: use APSR_nzcv instead of r15 as mrc operand
In-Reply-To: <20191101220939.GK25745@shell.armlinux.org.uk>
References: <472f8bd1f000f45343cc0c66a26380fe4b532147.1572644664.git.stefan@agner.ch>
 <20191101220939.GK25745@shell.armlinux.org.uk>
Message-ID: <0a24fe5e4aeba78c5fada3fca0bbeb99@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=H9JGfR6H;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

Hi Russell,

On 2019-11-01 23:09, Russell King - ARM Linux admin wrote:
> On Fri, Nov 01, 2019 at 10:47:58PM +0100, Stefan Agner wrote:
>> LLVM's integrated assembler does not accept r15 as mrc operand.
>>   arch/arm/boot/compressed/head.S:1267:16: error: operand must be a register in range [r0, r14] or apsr_nzcv
>>   1: mrc p15, 0, r15, c7, c14, 3 @ test,clean,invalidate D cache
>>                  ^
>>
>> Use APSR_nzcv instead of r15. The GNU assembler supports this
>> syntax since binutils 2.21 [0].
>>
>> [0] https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=db472d6ff0f438a21b357249a9b48e4b74498076
>>
>> Signed-off-by: Stefan Agner <stefan@agner.ch>
> 
> Looks fine, please put it in the patch system; however, please note
> that I've been tweaking the patch system over the last week (mainly
> with the database, which has impacted almost everything) so there
> may be issues that I've not yet found...

I used the form to submit the patch. From what I can tell it worked
fine, patch number is 8929/1.

--
Stefan

> 
> Thanks.
> 
>> ---
>>  arch/arm/boot/compressed/head.S | 2 +-
>>  arch/arm/mm/proc-arm1026.S      | 4 ++--
>>  arch/arm/mm/proc-arm926.S       | 4 ++--
>>  3 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
>> index 15ecad944847..ead21e5f2b80 100644
>> --- a/arch/arm/boot/compressed/head.S
>> +++ b/arch/arm/boot/compressed/head.S
>> @@ -1273,7 +1273,7 @@ iflush:
>>  __armv5tej_mmu_cache_flush:
>>  		tst	r4, #1
>>  		movne	pc, lr
>> -1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
>> +1:		mrc	p15, 0, APSR_nzcv, c7, c14, 3	@ test,clean,invalidate D cache
>>  		bne	1b
>>  		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
>>  		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
>> diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
>> index 10e21012380b..0bdf25a95b10 100644
>> --- a/arch/arm/mm/proc-arm1026.S
>> +++ b/arch/arm/mm/proc-arm1026.S
>> @@ -138,7 +138,7 @@ ENTRY(arm1026_flush_kern_cache_all)
>>  	mov	ip, #0
>>  __flush_whole_cache:
>>  #ifndef CONFIG_CPU_DCACHE_DISABLE
>> -1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
>> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
>>  	bne	1b
>>  #endif
>>  	tst	r2, #VM_EXEC
>> @@ -363,7 +363,7 @@ ENTRY(cpu_arm1026_switch_mm)
>>  #ifdef CONFIG_MMU
>>  	mov	r1, #0
>>  #ifndef CONFIG_CPU_DCACHE_DISABLE
>> -1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
>> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
>>  	bne	1b
>>  #endif
>>  #ifndef CONFIG_CPU_ICACHE_DISABLE
>> diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
>> index 3188ab2bac61..1ba253c2bce1 100644
>> --- a/arch/arm/mm/proc-arm926.S
>> +++ b/arch/arm/mm/proc-arm926.S
>> @@ -131,7 +131,7 @@ __flush_whole_cache:
>>  #ifdef CONFIG_CPU_DCACHE_WRITETHROUGH
>>  	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
>>  #else
>> -1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
>> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
>>  	bne	1b
>>  #endif
>>  	tst	r2, #VM_EXEC
>> @@ -358,7 +358,7 @@ ENTRY(cpu_arm926_switch_mm)
>>  	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
>>  #else
>>  @ && 'Clean & Invalidate whole DCache'
>> -1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
>> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
>>  	bne	1b
>>  #endif
>>  	mcr	p15, 0, ip, c7, c5, 0		@ invalidate I cache
>> --
>> 2.23.0
>>
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0a24fe5e4aeba78c5fada3fca0bbeb99%40agner.ch.
