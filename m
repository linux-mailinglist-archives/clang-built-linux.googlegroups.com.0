Return-Path: <clang-built-linux+bncBD763O5S5UARBZX756EAMGQE3RILPJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 12ED83EF1D7
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:28:55 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id d17-20020a05651c0891b029019189dff65esf54642ljq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:28:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629224934; cv=pass;
        d=google.com; s=arc-20160816;
        b=HF4/4mDtfiUUm7dhddf0cnCRIutgPv7TWsEHr8FrWFZYlRjjo1HOV4TFPHB1rlebk7
         uvKm0af1oaaEy1b4UHYKHojxCGcaMIXbpk7wxBdI1u+e2ccufyr3gM2qW+X7krahgKhh
         ittbtmR/OcBPnmDNC8mT4GwVsXNMAHzkVnE45rYzVanu+soa9OlFDTo5j/QoRMd5OvzU
         t/VnkhpvAHvsONAwmz1Yc+JS2244EUda9TJ67rRTiny8YKE28eXIOaAYsQXxJJgwDT1A
         nlbWAwJNMWN6ckQ+Hg5Zg7fvLtMpAIC/n4qRapx5ZYYkE5w0Vffbd+2bbNxCPbK6Dp8q
         P5Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:date:message-id:from:references:cc:to
         :subject:dkim-signature;
        bh=n8kXAHr7HVyqSSU+clWnfGOcWtViGoWHpEmT/R0zwoc=;
        b=RFEBhCkesnr48T+CTdJfILdlDFNFN5uyorZAaozaKrNyfqQEo7pg9iS/v8fa9jWAoX
         hUuyWGNvtWlsNl3/DDMzuJ6ih3+sIW0wwos2sujDWYl+JrEMdq3ViTS53OpFNQcpgOzx
         9oCfkiAEPBxzvGaP5tBNiBenuLqDSeyjBWtwn701D8Z0LvVqRSk9TCq+CPYTyfR7v2Wc
         xDRcZPMx+RVmEWpH6QwATo0E6HYhTclj5wJ1fym4RMFUVrn5+PcOEQHASSEB6ig7kRtK
         06xFYKtNa6x33xe8/v7x34dxNsPBdmJ5c+QA5wQ19ns5kFOdQeznuns1Bi0J/FHEydFm
         gZpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=Chd0fA7j;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=flS0bCNw;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=n8kXAHr7HVyqSSU+clWnfGOcWtViGoWHpEmT/R0zwoc=;
        b=QEHj+ugSDxssoHDZ/kUEzeIPmxQKTz/UZufXFF/poUMY6g6pOe6r1qk3dNDWWvjjHo
         6YDubWlgeMN/9Zntid747fLOH1fV/Q/rrbYvjBbkJJ1xzs0hgfvkrV1DhSJ7BESoraW2
         V5c7j6a+uZcwMHwrw9WOA9zJjibStpbPJohvRAiYZQcrI3m4t8b2F+y0wyZmujNbxfZP
         dfiTOvyWb+n5PU6KqYxyzDleLH+K0xLUm6nBr62NZiGH2ueaSYyMzA9f4o3ZlY93b7Yk
         VcALubv/q3/oT4FJX/mvr+EI/F1P6WzBC3T7noG6Nn1KlnkYptkImbKgR1NGGJ4kHQo6
         KIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n8kXAHr7HVyqSSU+clWnfGOcWtViGoWHpEmT/R0zwoc=;
        b=eJMIJoATIgkeS72jZ4VpDrSGSmgzBDrEkRWMfCOTpd2zR73nCoZAVyzNmuPlW5dlES
         sK54TJd+hnyCCOdaj6/hRpZalN5m9lodIFz/o2+okzoKp/eUp/58ChyHdYGAtxi6F+oF
         7HJmpu6XJKBBbK6NWTO6vTh8qK6YCtKEYqwCuC1Ef9VXCfZ8jRmeOceBWhC8/I6Ma50F
         +/pTYRUEUddXpyvyaGPx57jWWubDr3UH+74AY8HpW47eYBKz2RxSiK4MAj2Rs69cC2nN
         q8gr9/1VKIsOgHV4Sddpl+bRfrDq3z7MDWSxaHl47TQ0VLzY5qMzlpsShgRzijvFOCW1
         C7ZA==
X-Gm-Message-State: AOAM533yqg7z883es802/2Dk5zZ54inB6WGo5EETIUNbkf4f/JCAbawU
	UI1DiZwNxtjX4Vk4r5IWjw8=
X-Google-Smtp-Source: ABdhPJyZ8VXffRuDZjs56adQu1cPen8F7X15/3JPtEwi66cHbIj8NH2iKifI5wsIVn+tAhn8dDRG2g==
X-Received: by 2002:a2e:b60d:: with SMTP id r13mr4422847ljn.218.1629224934370;
        Tue, 17 Aug 2021 11:28:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:160f:: with SMTP id f15ls697076ljq.3.gmail; Tue, 17
 Aug 2021 11:28:52 -0700 (PDT)
X-Received: by 2002:a2e:86ce:: with SMTP id n14mr2933922ljj.421.1629224932565;
        Tue, 17 Aug 2021 11:28:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629224932; cv=none;
        d=google.com; s=arc-20160816;
        b=ZrqgRVw+lHzL1lm7x9NLRB5rItS1rjm4i8OqYCEJrpKS7Nkm9V5nnOx8YZe/BX6uAY
         AO62VVDGHLMFM68f4rjujUZK84gtepc9NdfSuJA+aJTY3DNIEFG6KAGCeaIonb2YPWBZ
         0gKhY0uhGiUiEMHhPvSchRNROzzo+E5upKPMlc5soFW34YcdSqi+H6vc7qUDVAdW+bL/
         6l/vOpBfcMjjg8xvF5Cy0oeqxKCz54g213ACcrTeAGmLlGepVt2X/V3kWTJdPwfPSqIl
         cNf+U9Y+DzjEgoNlXf33UwrkrtPiHhr/5h94JnmmICpDei2P82GgpZjECFNAVWXWvH7b
         cATA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature
         :dkim-signature;
        bh=41lZRdMf7DYVcwWiruJSCA+FLjLI0/wb06kdjBmxolE=;
        b=aU0dwJck54uFSGJiZaNVEiMMZZ0WmvAAgiozuckyVlNisSucN0x3kihkUIBfpGcChe
         cqme0/SPbffZLZ/vZKMHd6KLpxMIQHwZfgJkswd/6liau6tLilTXdgfMQrZkNrHuUaul
         LMqOS3wO0xeodIwAx3+7hTMQwmrQ7YMcEXuKELLB16vRKz2B/lxgq21r+Uw78SpqiYZY
         BdkBu2fz67nWe7YPgemtux7XCVOMbX9W8/l3i+jYqrpcuff7vra7utO/T3YCPeiFXv37
         IdXp7ygVO8Yg5ZzWFjmSVPsRGofI9r0GwM8z4XpDvdAmDm5lSsz3NdX598k0D0/5Pliy
         5LDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=Chd0fA7j;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=flS0bCNw;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org. [80.241.56.161])
        by gmr-mx.google.com with ESMTPS id h13si76802ljj.7.2021.08.17.11.28.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 11:28:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) client-ip=80.241.56.161;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4Gq00g6PG0zQkBZ;
	Tue, 17 Aug 2021 20:28:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de [80.241.56.117]) (amavisd-new, port 10030)
	with ESMTP id bEbpRvqyAJm2; Tue, 17 Aug 2021 20:28:45 +0200 (CEST)
Subject: Re: [PATCH 1/2] x86, Makefile: Move the CPU-specific 64-bit tuning
 settings to arch/x86/Makefile.cpu
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Masahiro Yamada <masahiroy@kernel.org>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <CAKwvOdkpJc66DWTJV1qTZ6ch-qLxf+g-mJnLmP0ea396P1oYmA@mail.gmail.com>
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <35f9422c-4cde-af6a-d56c-500b66d6f1f0@mailbox.org>
Date: Tue, 17 Aug 2021 18:28:35 +0000
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkpJc66DWTJV1qTZ6ch-qLxf+g-mJnLmP0ea396P1oYmA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Rspamd-Queue-Id: 64F00182B
X-Rspamd-UID: e33ff5
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=Chd0fA7j;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=flS0bCNw;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: Tor Vic <torvic9@mailbox.org>
Reply-To: Tor Vic <torvic9@mailbox.org>
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



On 17.08.21 17:58, Nick Desaulniers wrote:
> Tor,
> Thanks for the patches. One thing I always try to do is use
> ./scripts/get_maintainer.pl to get the appropriate maintainers and
> reviewers cc'ed. I prefer to explicitly put the maintainers that I
> expect to pick up a patch in the To: line.
> 

I did use the script, but I wasn't sure whether to include groups,
individuals, or both.
Noted for next submission.

> $ ./scripts/get_maintainer.pl arch/x86/Makefile -norolestats
> Thomas Gleixner <tglx@linutronix.de>
> Ingo Molnar <mingo@redhat.com>
> Borislav Petkov <bp@alien8.de>
> x86@kernel.org
> "H. Peter Anvin" <hpa@zytor.com>
> Nathan Chancellor <nathan@kernel.org>
> Nick Desaulniers <ndesaulniers@google.com>
> linux-kernel@vger.kernel.org
> clang-built-linux@googlegroups.com
> 
> added them to CC.  Probably needs a refresh at this point, but
> https://nickdesaulniers.github.io/blog/2017/05/16/submitting-your-first-patch-to-the-linux-kernel-and-responding-to-feedback/
> is still mostly relevant.
> 

Noted as well.
Thanks!

> On Tue, Aug 17, 2021 at 7:23 AM torvic9 via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
>>
>> In accordance with the FIXME comment in arch/x86/Makefile, move the
>> CPU-specific 64-bit tuning settings to arch/x86/Makefile.cpu.
>>
>> Signed-off-by: Tor Vic <torvic9@mailbox.org>
>> ---
>>  arch/x86/Makefile     | 11 ++---------
>>  arch/x86/Makefile.cpu | 12 ++++++++++++
>>  2 files changed, 14 insertions(+), 9 deletions(-)
>>  create mode 100644 arch/x86/Makefile.cpu
>>
>> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
>> index 307fd0000a83..94105d7ad22c 100644
>> --- a/arch/x86/Makefile
>> +++ b/arch/x86/Makefile
>> @@ -119,15 +119,8 @@ else
>>         # Use -mskip-rax-setup if supported.
>>         KBUILD_CFLAGS += $(call cc-option,-mskip-rax-setup)
>>
>> -        # FIXME - should be integrated in Makefile.cpu (Makefile_32.cpu)
>> -        cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
>> -        cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
>> -
>> -        cflags-$(CONFIG_MCORE2) += \
>> -                $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
>> -       cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
>> -               $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
>> -        cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
>> +        # CPU-specific tuning (64-bit).
>> +        include arch/x86/Makefile.cpu
> 
> So we have arch/x86/Makefile_32.cpu, would it be more symmetrical to
> have a new arch/x86/Makefile_64.cpu (rather than Makefile.cpu)?
> 
>>          KBUILD_CFLAGS += $(cflags-y)
>>
>>          KBUILD_CFLAGS += -mno-red-zone
>> diff --git a/arch/x86/Makefile.cpu b/arch/x86/Makefile.cpu
>> new file mode 100644
>> index 000000000000..fb407ae94d90
>> --- /dev/null
>> +++ b/arch/x86/Makefile.cpu
>> @@ -0,0 +1,12 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +# CPU tuning section (64-bit) - shared with UML.
>> +# Must change only cflags-y (or [yn]), not CFLAGS! That makes a difference for UML.
>> +
>> +cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
>> +cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
>> +
>> +cflags-$(CONFIG_MCORE2) += \
>> +       $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
>> +cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
>> +       $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
>> +cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
> 
> I was going to say we probably don't want to limit -mtune=genric to
> 64b only, but it seems that arch/x86/Makefile_32.cpu has some
> duplication here.
> 
>  47 cflags-$(CONFIG_X86_GENERIC)  += $(call tune,generic,$(call
> tune,i686))
> 
> That probably could be hoisted back into arch/x86/Makefile before the
> CONFIG_X86_32 check, but I'm not sure about the differences between
> CONFIG_GENERIC_CPU vs CONFIG_X86_GENERIC?
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/35f9422c-4cde-af6a-d56c-500b66d6f1f0%40mailbox.org.
