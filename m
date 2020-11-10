Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5OSVP6QKGQEZYPSFYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF652ADF47
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 20:26:46 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id r13sf5245844ooi.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 11:26:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605036405; cv=pass;
        d=google.com; s=arc-20160816;
        b=daE4eHwn14DVnsoQjly6Bn7FPShuwMCZNwchZZMPM75M5BOsS6hrfqabnYyi/RCFdn
         UawepSJc3Qo3mfSfp6Xb7JssTRHM7ugbidPwPYkasl/DX9254b4RzmlqDMOJtMzfhXqa
         EUURHe1gS3RaszwGasW52hIXGnHRZroAskUC8tYeNINRXgJWr0ocKwTLVipcnusYCzSB
         NvgGF8ViTRULUEgHHtyPuGeUjDT3EvNEa4C0JeIZOSD5PbsntH4BqohRI83uV+uqt97E
         9hgDXdL03ksu4jHeVKKmLy5T9c2vhP/BY0uget/IYcn8QsQAKbaeMBcItSj5eGGlzymE
         yJBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=x7anlM++raADsZ50TIA9Hs2F7AVj2R5YyAqNBCoqhKw=;
        b=cszgQBl8HDoOpno7TwG9wPDU68tI+OAcSC4KbxzwpV61RfWi4q8MEKgI6spJsuq4gt
         mriEGGTrK6mz+Gv2Kip+6gKWqUnBooTE9dFVtvEuBxugMy2NbJV14MCQ1gPtwSZ3Ikyt
         CPGKZ1kAMve7gDBTEe+jQ8LUZ0jBw94oAuiqsnkEqpdp3YAgIEjXtEj2Wvu2ACVG7hRD
         vD5TjeoG1HekTXWn8nX+aiXMcZyXqRS6Do/Y0jkNt4CskyCbyzg3g15LRkxaWLUHc9VA
         ZuNT4CFhaP9TucSzoFs1qo5iD0Dwo/Ds7v/s8p4p1UJMVxAKkBry2EN3SiY7TEx4ytgT
         O4qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DUzhdqYm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x7anlM++raADsZ50TIA9Hs2F7AVj2R5YyAqNBCoqhKw=;
        b=CUpBIxlNhB7B9RZ0j4CCRlpy+JjdT3hQmQQRJ7x7Oz0s7h4hrbKi63f7J80DXKbjmE
         4VeR+JfT7dDe2MVHhahz2iSX3DKDWaeC0b3cjchdnBriXsZe2Q7+HVcI9mcNvhGvy31E
         d/khwA5bTy8Ur6gHkU9roWNixgWUN8xQOlF9Tof8mGWxUMeGFHDntWY1A/LwqquJvo6T
         ZMziBS90KArY+SFwwOZ4v6OCmIK1ZY9wgLd3JnwLe7v7xPRU55dcTtHg//1PjsutC0fG
         fElx348fGmY5iIYhle7mi5Gv3NxnyZTw4MtksWPi1olqk5AX7Tghbyr2wcE0jn+Ua/vm
         ddeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x7anlM++raADsZ50TIA9Hs2F7AVj2R5YyAqNBCoqhKw=;
        b=DQuqDsT2CSh2FPdAgrJbaldqJkf16a9yNT/oowphqOV0RAtY1mhr6MaA/hnrWjy+nK
         gc2IRveFg8yaQ1wJ5qKcOTX4hEto1thNNaJ8Y1pn/DBHIKiravM/TSFVOzEAmZMZd9eg
         wAx4ybRj7R0yJ067+HNZh1H9NpYT0meCbGWNKvwyzUXkiFxo4H3+pYFwSHXH8jKq/H8G
         4lW8CrIn5Cx04TtxldqKWLvFJ9Q4iUxf/DrQpWXK9VSVGaGXa5DWX5YvWrb8bZCbvFco
         pblUOuKG1b5/AtRVsEE0vTxgrNJi27yYScweBbWVWxSdH39Q5Rucy+4isOOhktz1ZGLJ
         b8Tw==
X-Gm-Message-State: AOAM530coYXCtbA4lmYIp+sHDmQxG4ebzdT2x2RKJiE3VizBVUzMqSi1
	47KZZqMruyDXHfO3avXqD+o=
X-Google-Smtp-Source: ABdhPJzoHvto0U6wAj5zi73vipqA8N37p0npKo6LDsJ1ItOafKurrc/9U1akoUsOhfxW3sHCA1Y4yA==
X-Received: by 2002:aca:5883:: with SMTP id m125mr441128oib.21.1605036405125;
        Tue, 10 Nov 2020 11:26:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:5e41:: with SMTP id h62ls825234oob.4.gmail; Tue, 10 Nov
 2020 11:26:44 -0800 (PST)
X-Received: by 2002:a4a:8519:: with SMTP id k25mr14706183ooh.32.1605036404771;
        Tue, 10 Nov 2020 11:26:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605036404; cv=none;
        d=google.com; s=arc-20160816;
        b=cZEPxBRlpBmOJLKAzkPRSasxUFGikVPBQQ7hwxnq8tRJ+VUr09ST+8Ymd+dxWd0VaL
         2cYzYs5eyrWw1ie7ovrzYoQtGIoRMHVKBFK3RcP777Z5seixrvTdVVlwmhDkPKkBG1qy
         9eA2jExs/Il3IGzkAq07oFCRJPrYAVJN/479mj015hAhER2as4v+bYCA6AJSHIRPEXhh
         lXvXYmbQNJKvgEoeKeGb91docaXhHLciQSgU6rYH0SrCGGSTUW2k3sNqDo9BdM6OAHcI
         Lvo4zNlSMUcFP19pd8RDPLKVk3Beocw7g0vjEFVuZEsOXdDPBqoTmNMPlGH2Q1j+LiQa
         PaUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QBBuJtpHwASeAFOGSL1xcof2983thgwJRPuFxxMD4fA=;
        b=kTawOPBucRZ35fMQo1puph8oH6w7AfoG6+BJvXTxOgzWX2Vv/Ml1qp80QD3NFdV8q5
         gmwBCYPehQNjGlEpC/ymFZ1iAbS2FfQge6WgcbquslZaOI9R415M4KiDK3G3XvEfkw5A
         nTuay/NLpd0tfS1Hy3NvWvLxxBc1KiFSkKB5uyncfksNOk9/4bICQQIzKLncCGLUKh/X
         OHEDeL1w+1il1JdAzOT8lPGBOGXaPAumw4zcTIv/PwYujoGZeRTvrnoI+TZyLKGRXtvA
         BOK7bR1VZkurfbbr+mbD99i+Oqj53i6mkQxKaclYXtKmYIHQAeMU8tdhb7RjhRIOqiOq
         eroA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DUzhdqYm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d20si1254760oti.1.2020.11.10.11.26.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 11:26:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id c66so6622785pfa.4
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 11:26:44 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr671795pjj.101.1605036404049;
 Tue, 10 Nov 2020 11:26:44 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
 <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
 <CAKwvOd=pHgT3LsjYH10eXQjLPtiOKDj-8nJwjQ=NMSFLTG1xAg@mail.gmail.com> <CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf+0wyU8Q@mail.gmail.com>
In-Reply-To: <CAMj1kXHDzj3Q-sCv1szseUC7g2bWRFeVP6WME-sMqDf+0wyU8Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 11:26:32 -0800
Message-ID: <CAKwvOdkXz5wOwKQDsi5jt21ov3xETSByAqxGLQ=7U6Gsp46zcQ@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Jian Cai <jiancai@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DUzhdqYm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Nov 9, 2020 at 11:36 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> BE32 != BE8

Oh? Sorry, what does BE8 stand for?  arch/arm/mm/Kconfig says:

CONFIG_CPU_ENDIAN_BE8
Support for the BE-8 (big-endian) mode on ARMv6 and ARMv7 processors.

vs:
CPU_ENDIAN_BE32
Support for the BE-32 (big-endian) mode on pre-ARMv6 processors.

So BE8 seems newer?  It looks like in my tests, enabling
CPU_BIG_ENDIAN via menuconfig enabled CPU_ENDIAN_BE8.

>
> Please use, e.g., ixp4xx_defconfig with IWMMXT and BE enabled. It
> seems like .inst does the right thing here, i.e., the assembler knows
> that it should emit BE for BE32 and LE for BE8, but it needs to be
> confirmed.

Ah and ixp4xx_defconfig selects CPU_ENDIAN_BE32.  Yep, and the
disassemblies of those match, too.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXz5wOwKQDsi5jt21ov3xETSByAqxGLQ%3D7U6Gsp46zcQ%40mail.gmail.com.
