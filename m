Return-Path: <clang-built-linux+bncBAABBVPMSH3QKGQE34SN2HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2C11F8158
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Jun 2020 08:46:46 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id r10sf1572908lfc.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 23:46:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592030805; cv=pass;
        d=google.com; s=arc-20160816;
        b=j+jJa4CDqMkFmhxVZ5J4hifn9htLSDRAPJHA4LWrM/ozDHCW0C8yUD11t+WRqgpGBY
         rKwjMPPQ0xvMCOCGGaYD/jlyrkOWQzcA1NAKfvp2z/m0UALhol+41vR4+AdKQrcFqGSJ
         xN71JIDe8LEJHYuUrrrpLNHpxgy+bMm8ULUp08ETdAUjeDZRPueI2G+YuU//bMbmLJBd
         dQKKehmPQNwHNc8D1kxoDTOBreErPkPaGB8kvC008NDTqctGtIS5fKFq8cQQYCRrwDri
         2TQAR/5K4BjY43A+sN6eHqeWpBILEtDCb8bPlr2Ba0sdNt1kCoWQeZWGWwht/rdKE/Zx
         oZPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ZUMDb+MvLZad2gPGYC2vgFM60mSptDn8zLcAt/4VWBc=;
        b=hOUvijpsQDWk1Z+ocGHZdhcaCA+xm/msZRGkDo00XSKhY5d4/RF9snepFSHNENCcdY
         z3p5+r3w3YSXG1ItF/pYVCg/2LwMOEauhNCBlsl/CcfJDVVdUI5YKx27ySdsp3euevEi
         eomEuTfQ1+KZnm94BA3Tf6KSRjCVx8YUtqtB8243GlKxk5E/ZQfnISXJV9DLIgikIN7c
         Dc8/1HfqDgkt2ShBqqDGn23IqgmSjFE8DCe9PZc2QPS/5GMjIrXKwk0HI1Qvwrl+KsDE
         fuEIHtatZwGQtVxf+DlzKJEePwlMzDPv3ghjMfLd3UOe32JwrWzn6MWdETI10KH/IkBj
         YJdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZUMDb+MvLZad2gPGYC2vgFM60mSptDn8zLcAt/4VWBc=;
        b=AXaeXAX5y+Zf+jFUL3lwqF0y3ppOSJstvFlYJ2pKwtPLrjP2vVBH5mG7eFx+027uIW
         LCGWuE11bURhVCkJdPpyK6i+vz6bUuZS+1UkSlEYKWn53j5MOzsR4RiXLFHbbCvpyCBZ
         IUJ49Sr8YRpWaEoQtjs65fFP0nWLrMaYeLMq5hqErNzduueBacAfKjhfgEsZ82BM5xPj
         8/eZlWhfVSwcF/cDuZ4CS8SYofbjC0ymIrBj2WOwqVILIXFgHwORtldcGu7A8egmpZNV
         LOzWOHShm370WOjQReMAJWaETOrAfNGLO4t/9AniAbLzDeR8dYxZJayj7edFadgSL0vN
         3WsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZUMDb+MvLZad2gPGYC2vgFM60mSptDn8zLcAt/4VWBc=;
        b=iRCqb6l9hJN9v5koXqIBUsHAG+Svgo2phlekQX2V0RUfofFswyFrpJ1vONvW9vxgPx
         S8ciMGf4sen7LNZjfgdpyyru0nGKJeiFb90DNiy08bUrC+qrZdGc2NXtiHkRPqlSyvpu
         E4PBO0B9kA5mBfCIs13dCqdt3Efcj1BV+feQukf6XMqyyZe3h6W/B7oRvfGtBRJEOTsV
         bIGm5PRdi+pkjwVMVX3IBZxK3hBxyBprrL0MKx+3sg/gP3F/Ka0ZDzNomjaYwNc4BuCN
         9b+DpRPzuD9M56TqDYOGskBqNtwp44MYWWvpGrnF3vd0YCmUFdGfb1u4jihGi2HEQOqq
         8Mbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VMEZiSuxVkCGDvGyXcxIE8GqBdAxmzdSWkIPGJGtApC+LU1DE
	b9iDaev3f5QFVOXUQ52mEsg=
X-Google-Smtp-Source: ABdhPJz3e2Z1/HaWxCcTjAvdn+QT4gLoMBSF0pdd0QGADx906RyjWnaOueBcRB/Y8wsnLU5iqoJnfQ==
X-Received: by 2002:a2e:1412:: with SMTP id u18mr8898758ljd.309.1592030805585;
        Fri, 12 Jun 2020 23:46:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:92d6:: with SMTP id k22ls1615560ljh.4.gmail; Fri, 12 Jun
 2020 23:46:45 -0700 (PDT)
X-Received: by 2002:a2e:998c:: with SMTP id w12mr8965713lji.143.1592030805166;
        Fri, 12 Jun 2020 23:46:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592030805; cv=none;
        d=google.com; s=arc-20160816;
        b=ZSnByD3gwkkpbgwwN/IvcFR09xaCqSOV+JgmYP5+QoVitb+KtKMUFumP+e10wGxMNb
         PO6ggb4WFJAgt/WiQ6KsuPtPizEzTOOGs4sP2wYYeeW1zv6FsGDvKFrEF3HSMn2YZ1C2
         uwDsI+eMJKCGQ/CdEOHcGReE2XGO82VFD6ozjJnnCjmbSlYKSu2jE8TZIqc0//vHhWKN
         vHhFt8ueFrkduxWy2/uoKHNu74sTX9Ad2mlj1/A3efO1bpaNycFfp9opUK+lN5yLZB+q
         IPRUBKrAg0HR2YCPP61+8OMvRpnLRmmi5WBszOgkE90zQX1tLc0VeD1a55tdi651qDYR
         QbBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=IkmKQYwu305i9JKV9zxcRcfb0+u3dSVIQfo/Z7oUPjY=;
        b=h49h4LCRmg+7dGYspzSjWFm5H6bIq7dcTRXV7eJvg3zVbD+TKs2EWNs0LlWlttj15W
         dnNh4XCZrDHQuRV3xQ3LJkBrB3rc9oWVyGExf0bKbP6QB4bBGprNNLLTTz1GkDLm5FI0
         EjRrzcKiHhrfYyKNVX0JektoVDwQR3/xjhwLwlfh+sMhQ5xk4lzNwOiqIuK7mfuZ0idm
         nm4OKosH4x/TvGwZut283Xpgpj1cy7FOXBxZkuTvTd4KO321G+/KNuL0Oi6Z/RPFapTq
         RWpEKLzD4TlPwmgu6j+cy6Jgt94GmjLDtk0V1TQF470X3KnCXSPIAMeOuem3pBToL63j
         xbUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id w6si443582lji.2.2020.06.12.23.46.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jun 2020 23:46:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 49kSmy5MQRz9twtx;
	Sat, 13 Jun 2020 08:46:42 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id sNXi3cRrh7Ub; Sat, 13 Jun 2020 08:46:42 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 49kSmy3vdrz9twtw;
	Sat, 13 Jun 2020 08:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id AF5FF8B771;
	Sat, 13 Jun 2020 08:46:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id o_sKFmexd0LZ; Sat, 13 Jun 2020 08:46:43 +0200 (CEST)
Received: from pc16570vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id E6A0B8B76A;
	Sat, 13 Jun 2020 08:46:42 +0200 (CEST)
Subject: Re: [PATCH v4 1/2] powerpc/uaccess: Implement unsafe_put_user() using
 'asm goto'
To: Nick Desaulniers <ndesaulniers@google.com>,
 Segher Boessenkool <segher@kernel.crashing.org>
Cc: Michael Ellerman <patch-notifications@ellerman.id.au>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 LKML <linux-kernel@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Nicholas Piggin <npiggin@gmail.com>, Paul Mackerras <paulus@samba.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <49YBKY13Szz9sT4@ozlabs.org>
 <20200611224355.71174-1-ndesaulniers@google.com>
 <20200611235256.GL31009@gate.crashing.org>
 <CAKwvOdkKywb1KZ-SDwwuvQEmbsaAzJj9mEPqVG=qw1F5Ogv8rw@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <1d1f9aee-ff13-d18b-9454-1580067d7c71@csgroup.eu>
Date: Sat, 13 Jun 2020 06:46:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkKywb1KZ-SDwwuvQEmbsaAzJj9mEPqVG=qw1F5Ogv8rw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



On 06/12/2020 09:33 PM, Nick Desaulniers wrote:
> 
> IIUC the bug report correctly, it looks like LLVM is failing for the
> __put_user_asm2_goto case for -m32.  A simple reproducer:
> https://godbolt.org/z/jBBF9b
> 
> void foo(long long in, long long* out) {
> asm volatile(
>    "stw%X1 %0, %1\n\t"
>    "stw%X1 %L0, %L1"
>    ::"r"(in), "m"(*out));
> }
> prints (in GCC):
> foo:
>    stw 3, 0(5)
>    stw 4, 4(5)
>    blr
> (first time looking at ppc assembler, seems constants and registers
> are not as easy to distinguish,
> https://developer.ibm.com/technologies/linux/articles/l-ppc/ say "Get
> used to it." LOL, ok).

When I do ppc-linux-objdump -d vmlinux, registers and constants are 
easily distinguished, see below.

c0002284 <start_here>:
c0002284:	3c 40 c0 3c 	lis     r2,-16324
c0002288:	60 42 45 00 	ori     r2,r2,17664
c000228c:	3c 82 40 00 	addis   r4,r2,16384
c0002290:	38 84 04 30 	addi    r4,r4,1072
c0002294:	7c 93 43 a6 	mtsprg  3,r4
c0002298:	3c 20 c0 3e 	lis     r1,-16322
c000229c:	38 21 e0 00 	addi    r1,r1,-8192
c00022a0:	38 00 00 00 	li      r0,0
c00022a4:	94 01 1f f0 	stwu    r0,8176(r1)
c00022a8:	48 35 e7 41 	bl      c03609e8 <early_init>
c00022ac:	38 60 00 00 	li      r3,0
c00022b0:	7f e4 fb 78 	mr      r4,r31
c00022b4:	48 35 e7 8d 	bl      c0360a40 <machine_init>
c00022b8:	48 35 eb e1 	bl      c0360e98 <MMU_init>
c00022bc:	3c c0 c0 3c 	lis     r6,-16324
c00022c0:	3c c6 40 00 	addis   r6,r6,16384
c00022c4:	7c df c3 a6 	mtspr   799,r6
c00022c8:	3c 80 c0 00 	lis     r4,-16384
c00022cc:	60 84 22 e4 	ori     r4,r4,8932
c00022d0:	3c 84 40 00 	addis   r4,r4,16384
c00022d4:	38 60 10 02 	li      r3,4098
c00022d8:	7c 9a 03 a6 	mtsrr0  r4
c00022dc:	7c 7b 03 a6 	mtsrr1  r3
c00022e0:	4c 00 00 64 	rfi
c00022e4:	7c 00 02 e4 	tlbia
c00022e8:	7c 00 04 ac 	hwsync
c00022ec:	3c c6 c0 00 	addis   r6,r6,-16384
c00022f0:	3c a0 c0 3c 	lis     r5,-16324
c00022f4:	60 a5 40 00 	ori     r5,r5,16384
c00022f8:	90 a0 00 f0 	stw     r5,240(0)
c00022fc:	3c a5 40 00 	addis   r5,r5,16384
c0002300:	90 c5 00 00 	stw     r6,0(r5)
c0002304:	38 80 10 32 	li      r4,4146
c0002308:	3c 60 c0 35 	lis     r3,-16331
c000230c:	60 63 d6 a8 	ori     r3,r3,54952
c0002310:	7c 7a 03 a6 	mtsrr0  r3
c0002314:	7c 9b 03 a6 	mtsrr1  r4
c0002318:	4c 00 00 64 	rfi

For GCC, I think you call tell you want register names with -mregnames

Christophe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1d1f9aee-ff13-d18b-9454-1580067d7c71%40csgroup.eu.
