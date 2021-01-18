Return-Path: <clang-built-linux+bncBDSIRFEA54GRBWHBSWAAMGQEHXDI2IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 663B72F9E1E
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 12:28:25 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id h25sf4196882ljb.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 03:28:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610969305; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBSdf6jV/5TyRgtz98hPw21NolK7JObXzHCIIsfqQ6tMldhN+ZdXd/xeeqOyLaNPFz
         5qLMN6dtevAfcsr/mna8KEXJQbyn0N0XDI/KkOkAVEhh44XeyS3n7ieKSvQlfd4vIA1Q
         XpiptE/+JtKTBwiy8EM+V1avxQ0cxRBUVCGF0Cl130srZOdqjQSTV1tZwVBG7Z42FJhc
         aQoBTbob68VOIUF4TAKH4iEv/Ol9gT8xQDrzh8w1+HmRD8QETHqas0wmuChpydHUEi/k
         NiraAHbaEF84ag89e8p52vMnLT93t7zKM0fKzklH7aZURIjXoH3AIarT7yi5tO5ReqAV
         wgXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=DLTsxZ8Rcz+HKmL4gjpXnKwrltdP5RFsSvC1Al4QOvc=;
        b=xRf/loiepOr8to0WTl9XRSeBiTGPUnH8FcH7dt2oZPuqjw2Z6Rl/lWgGgHMMKUzjKu
         REJTkZpHRgcg3w1+TqSH+y3TlBK9+8rN9JV+mHOzfbTu8dNbVaAJeDe3Wv/EKm0wDQjw
         aecGDrpq6JIFGb3EgweQ9w/1EcLJGy+5V6epYn9vZh4D7XXIbt+nZ0EFplneCb0N4SmR
         PeVpeF1PIM+248al2/WgWzbaOW9t4pr7AW+/BE+srwBbRobSw6BiJ7H3wcSEAQg2RN/m
         BPfErDhXdR9WpoP9ccdkILzyznvFdz+iOpi6p7eZKo2WrZKc58xPUYthLt8QjTmoTtRl
         ZOTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DLTsxZ8Rcz+HKmL4gjpXnKwrltdP5RFsSvC1Al4QOvc=;
        b=eZWSdVM3O3DxY2c6yafwXScJ1BqQKHjWVpQEe/78iaWz5wU8pFYqySbArwZOzU7zM7
         0bUNHAUjKCDW/V4F557vO8JkmSvbw4u452m+dyKNXHQPyRsnPl5hxcZqCuUNdU8Li5ki
         BfmaP2a7ThzJOSljcAYJuW7fn82g4sMAbKDdZlIpKqlT/A2rXFIi9+4A3129DD2l8pwq
         fxVPKljgerZ9lTPotIa5Xku8+0lI0r4bn1Q11SC9N53BB9p9OaxhEoLm2QfZY+MfXyE4
         +eGQTl90dlsimdqEeWFZZrAb6f0+QOa5Q+TO5RJbIujk1WOuLI9jFTN/lGHA+kpEcMDW
         5h1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DLTsxZ8Rcz+HKmL4gjpXnKwrltdP5RFsSvC1Al4QOvc=;
        b=TayWQf/wxZIxj2wGiYvx1R3zhWPVevzNiEwekzuDCufuWjIQ9P6D8ADDtjrurcfgGX
         SoQ5irWHvSIop9n0vwanmW4S1Cbc9AERMMEl2MBD4fUD1EDV7k1HyDCykl69bbh3DUlK
         DZer8+1y1hkz64iZ6QOg/lIrLJANCc70wl9uK9rJw5OiBiLo4Pg1UUmdrVqAWy2yoY06
         5DbuXzUGhll8zYLcQRRTfkiBcucp/8HQt/+QW4h96dtM54m7zcLZL3b+yAG+c+aNtNOO
         BiPa+yvrbt5buWoz2WtcWqdTp3ZETmE7FAyb+cwjvnETL69MxSDP6bc3C/Xm8LwdSkES
         5q9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uQDMgNSsnBcaSyCfzH0uHkjfFISuAX8vwFsroUjytpax7doY0
	tFAhjd0RSwA8YqezvrWb9kU=
X-Google-Smtp-Source: ABdhPJzDF0zJIPGPz0UIkDOTnTekHywyJGr0RNvsUjIxcM3WhqgOz2d50DYhIG/EJrB/Bmn19P7LIw==
X-Received: by 2002:a2e:8e38:: with SMTP id r24mr10896425ljk.333.1610969304977;
        Mon, 18 Jan 2021 03:28:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8055:: with SMTP id p21ls2599866ljg.5.gmail; Mon, 18 Jan
 2021 03:28:23 -0800 (PST)
X-Received: by 2002:a2e:2405:: with SMTP id k5mr10279082ljk.185.1610969303921;
        Mon, 18 Jan 2021 03:28:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610969303; cv=none;
        d=google.com; s=arc-20160816;
        b=rXYnuO2P4IIYaxET3r4V1eyL6V5xUNnPur9LRa5zoqIHmDoY+D7anzHaSoS2AjUW9I
         yto5UeqVR4da2vcBPlntctsYtgNOfiEPtWlxQ5ozgMzyEE9A5sPruYSHP7pczLXuRlFs
         XdL1C+dMaehZ6BiET+/uaUIQKUMX6ac8fA5S1MZgwv7buXhhVauCLwGVY/uM1i/N41MF
         cPmDIXdihDEb/HWAnGWV2u3KBquFIq1jwzczATNGu5XgyCJ0j5wwjb5wpcYEdE6fOtmY
         yjuttuhyXh+o2cZX8wZGl5KV+NsZZRdmTwHF/BUSW/aOGK3y5jatgcKD8QIrq2XU27jS
         K6IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=Nw2ZLGbNXQGKIblqQLSLfvwwJDxat5+Y5Om/BWz+vFo=;
        b=0cHea4evsqm3sB8b7b8DXuv/QPUbCA9ZWZeydA/4cRDog6kknGQqdZZZ8au1VG8Wtc
         YDQB85PloTYaPDBZbhMRFNVyqm8ZEMHp+XBiUgA8mgxzI7yFEBkAfyofj48eWwnR4yod
         hA0h883kZXpLojNquATj92Qg0O2qqAcROH97vuoZYch/mSgQn4PVkKYJ0DZCQVMRr18k
         uvDWeHn44Trx/4+S2UCG8x9HRDJNN0/g1dBbOCgfdCutYAIO45vK4jwqT8cNnhPvtjWg
         eBAKyo4A0RruD0ktYJFtUL27NTw4tUfSdyLLnLKg00FotttyWr8TdxN51wYvF6PGROuA
         hcng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id c24si717008ljk.7.2021.01.18.03.28.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Jan 2021 03:28:23 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id A53081F44CE7
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Arnd Bergmann <arnd@kernel.org>, Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, Ard
 Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Collabora kernel
 ML <kernel@collabora.com>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 RESEND 1/2] arm: lib: xor-neon: remove unnecessary
 GCC < 4.6 warning
In-Reply-To: <CAK8P3a3dDgbppAB3Bm2iJA7LOqRvHZew1_e-yE1R=9mS4W4xjQ@mail.gmail.com>
References: <20210118105557.186614-1-adrian.ratiu@collabora.com>
 <20210118105557.186614-2-adrian.ratiu@collabora.com>
 <CAK8P3a3dDgbppAB3Bm2iJA7LOqRvHZew1_e-yE1R=9mS4W4xjQ@mail.gmail.com>
Date: Mon, 18 Jan 2021 13:28:18 +0200
Message-ID: <87wnwafprh.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
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

On Mon, 18 Jan 2021, Arnd Bergmann <arnd@kernel.org> wrote:
> On Mon, Jan 18, 2021 at 11:56 AM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> From: Nathan Chancellor <natechancellor@gmail.com> 
>> 
>> Drop warning because kernel now requires GCC >= v4.9 after 
>> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9") 
>> and clarify that -ftree-vectorize now always needs enabling for 
>> GCC by directly testing the presence of CONFIG_CC_IS_GCC. 
>> 
>> Another reason to remove the warning is that Clang exposes 
>> itself as GCC < 4.6 so it triggers the warning about GCC which 
>> doesn't make much sense and risks misleading users. 
>> 
>> As a side-note remark, -fttree-vectorize is on by default in 
>> Clang, but it currently does not work (see linked issues). 
>> 
>> Link: https://github.com/ClangBuiltLinux/linux/issues/496 Link: 
>> https://github.com/ClangBuiltLinux/linux/issues/503 
>> Reported-by: Nick Desaulniers <ndesaulniers@google.com> 
>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com> 
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com> 
>> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com> 
> 
> Shouldn't there be a check for whatever minimum version of clang 
> produces optimized code now? As I understand it, the warning was 
> originally meant to complain about both old gcc and any version 
> of clang, while waiting for a new version of clang to produce 
> vectorized code. 
> 
> Has that happened now? 

No, clang does not produce vectorized code by default, not even 
with the -ftree-vectorize flag explicitely added like in the next 
patch in this series (that flag is enabled by default in clang 
anyway, so no effect).

Clang needs more investigation and testing because with additional 
code changes it can be "forced" to output vectorized code, but 
that is outside the scope of this series.

If you think it's a good idea I can add a warning only for Clang 
which makes more sense than telling clang users to upgrade their 
GCC, since now Clang is officially supported. What do you think?


>
>        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87wnwafprh.fsf%40iwork.i-did-not-set--mail-host-address--so-tickle-me.
