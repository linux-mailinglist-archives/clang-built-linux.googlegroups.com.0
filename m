Return-Path: <clang-built-linux+bncBDUIPVEV74KRBPXJ7OCAMGQEVYVDQTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F1B381380
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 00:07:58 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id c13-20020a5d6ccd0000b029010ec741b84bsf266860wrc.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 15:07:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621030078; cv=pass;
        d=google.com; s=arc-20160816;
        b=g8oLEQrq6cZkIixQgxvh0mcwYGZaxSLMYi099jQSiR0eyQ0FMS2+Y8hMS2qa8AS/xR
         F7ZZKIGaxeJZOOIuz3GS7CsCSum6i+/y/Ud/2/JySXOpHZu0DRCmDOc+HGEz9Im410Wl
         561rMCWCmGmSrNlRZAaDDIt0FBmWMn5V6/QsXEhxyIxhFAa8J7k3UGf5dTUWQ/1qNtgJ
         Nqy2yvuURBKA1ok6rPO8au6YCgT+gyzaq6mAVqY9kfALPgLvNDXRJZpisdkCsKP99/xR
         QeDL53t6RjehVHOwN8dO2iqG+ya/KR6XiWRGgRzmEyqloTrYWOleqJZoQeLlofbt4IGB
         dg2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=NR6ksyWnNN0TSmyrxmsBEmS4vwBHLv7olBN+BtqeiLw=;
        b=feebN1Sb7zvwxO05scsbD5+9TXK3rYctOUy4mMRuXmUQGZTvGoz0dxxzQ6eKuHQ16f
         PnbD7GTxKVE2hyDwW9fv7dAi8giZAYBsCTAJLOqwdc6CYTopzBSc/g8ykWZF+PvA0Lx8
         iiUf4M+K4EMRinu4nweNBxtzLkWtYQYwPIIdvYaxdgt7+ADUDmcjV5HzuG17SpCCr4MG
         W4tQfZ3UuwVCh5RZ71Ewgbkz1feqQvVMFeGpS0cI88/4t+iI7J2O+WCI9B7OO95NJc7/
         XxQpqbYF58g5e+KKTu75t7Iel6apVhDjFHu6DT0F4uKCdbZcXU9fcs+SRZPn9+pGVnmy
         livg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QUIr/6fw";
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NR6ksyWnNN0TSmyrxmsBEmS4vwBHLv7olBN+BtqeiLw=;
        b=QORf7Y5Dk5k7ndjeEfd4OqFbkOWKAU3mAYSyl/YWNt5Gy1l9OB6CoLrE0jCCMRMtlw
         eHIhoBK4sVrPcjspQOFZaubtHJuKZFOVHR0s/cdn3YHkQKaBWE2mcVkgQVKuTeR7G0bx
         RCa5cF/vf5IjKjiSZpIttPnxKzTkwTfFVXcotEPrELJU/7SeN89J7hqX1OymLUXmyD22
         Qen0J4PsMXfyIfHs+kuKwO0ESXuYdWtzb50G0rHao3YDvzDsHZJDrmKzJA2+eU70qKNg
         bqwGmNG1N2K0A4v1PZAMviRCx1QrFlianKDmR7O8DfD4FPiCcJiylX6YoByrfw61LB1q
         MjFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NR6ksyWnNN0TSmyrxmsBEmS4vwBHLv7olBN+BtqeiLw=;
        b=nFJVwYPh7PfRQp6ybDKbjTg7uclmZ7ATVPEB0VesVJJkHsHv5F8VtU6356/vEr4Hs8
         YxNsACv5GZpeb/kpT1cvbr2L+fhXE2wyPjU8K4tXIGsdRM0uBRFurwqdmBEWUYa8k/IL
         I57ycSIz2DSeAPOo05srHTMWpgtMJEOjaWEyl0aB2zZEJTFaJUjsMElHAoxwstDQxU7D
         ggni3Gor+Hf8Pvn8evCl7LM4wUrdPtIzwthJodAaiOf0ReyaSt0DEEG3aXjsNYCTPSRA
         SABwC0r0IYv5agpc4zvsdeex5AxK0zuQU4EapkkJR3zoCUtBVxiiZ8lPTQWZO15sMWtf
         JnSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NR6ksyWnNN0TSmyrxmsBEmS4vwBHLv7olBN+BtqeiLw=;
        b=il18dIxMs5JAGl7XskdR//p+r18TwMyrPZvdueORuSlketSqmZfXjc2mCrst2zrWde
         j7PXxRkEck6C9b3RImI1GPEmN+PfFvTj2icaB1VntHlRbaFj5p+QVKT+goV0QrvOahBp
         oLB6aDZzFFesQ+4nUBdTLgE9nBwUCyZdiXyqudix8aZvoPDlQz9sF7BcvqdKSUVpixoP
         eTbV15V792AwYZG4l1UzIscmrhhgV3p1ohbRz+vSK0zNMBcD9sti2srZQsxTx/YQbw9u
         Lvel1lkJSliBJRX/PjIYhXZH0IHG/V4Lv/lR2DETuyCf0wCDFC+tqeDjmuv5syVhX3PD
         W3Pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ih/u1ETh43fMF6SefPCJu5OgAw1UdX7wpLpwVjtaKstpLuBb7
	O+Xk0ILwU1KenPlwzPPsYsk=
X-Google-Smtp-Source: ABdhPJwyEFIPs6I17+N0wT4AyyOav4+gOVcqe9NYo/62minIHyl62FY4g6MWR47o5DvaDeDaN3ZE0A==
X-Received: by 2002:a5d:6041:: with SMTP id j1mr59300081wrt.374.1621030078376;
        Fri, 14 May 2021 15:07:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f42:: with SMTP id m2ls4460571wmq.0.gmail; Fri, 14
 May 2021 15:07:57 -0700 (PDT)
X-Received: by 2002:a7b:cb45:: with SMTP id v5mr53314672wmj.48.1621030077570;
        Fri, 14 May 2021 15:07:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621030077; cv=none;
        d=google.com; s=arc-20160816;
        b=t67fuw/ugFkAnoX83U4W0/rfYU+HyrgxDfnxzsJjmU5d8GzUlhBitj1iBsJdV/jMi2
         f6wkMjDzb7Vzs1/u64+JPHb5Keq4uMOfT26WKaKpR6a7iIdlX7LX0ZNbjkNPbEgLlmCx
         UnuDK33UpLcPfipI5v27bEDXrW+d2VjlW9h8y/gGZ/by582XG5UJdGfDrrcxfL7DyMAE
         OGUPgMAck+ATs8W8MBRXu2aFJlRDBpKNIR1ygvVOwgMrzTT9AEMdVEIHVKlvQHX7y1Vo
         05qffcfO6BfXMzwDy5yuSysjjWHk6L8RYQ3EUE8b3//x9MqSG02jlt6+gKN00jIu1ynm
         qlIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DhuPFApLGOtvh1kz8ikn2yTKqWGR5Z4X25H+F0j0ysw=;
        b=fgwGiFoum3FF05+NTk2HaTXOhx57x98sECBiGm9VwmqBk52YzWtoEb/GzZUrx4kbnU
         LDlHoTQj01INN4fa3O8dQYh+5uVlJAm37tMmjeK4zC9yabwttM7c4bhlJnPmFTWdhsUc
         0kqCgtfAD66hI1BqaNB0gEgG2jL3O/RpbSVlGehI0J7fmbxq8sFOhEPNPHpHel1qVeST
         EVV9xup+f12qDDG8BMvrnUp0ebYPKbd3UUyiH8L7JwNAZm/ZHE1a2NnmR8+J3k1GGGAP
         pIcvy5yjv1P8xk7o41ZpKiLtQkApizWEjXYhIzvS4S2yc85xq2Ev+Pv3lzNKcxk2UKSh
         0zYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="QUIr/6fw";
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id o63si196606wme.3.2021.05.14.15.07.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 15:07:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id a4so608004wrr.2
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 15:07:57 -0700 (PDT)
X-Received: by 2002:a5d:4d0b:: with SMTP id z11mr62145933wrt.164.1621030077038;
        Fri, 14 May 2021 15:07:57 -0700 (PDT)
Received: from [192.168.2.202] (pd9e5a369.dip0.t-ipconnect.de. [217.229.163.105])
        by smtp.gmail.com with ESMTPSA id p10sm7282820wrr.58.2021.05.14.15.07.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 15:07:56 -0700 (PDT)
Subject: Re: [PATCH] platform/surface: aggregator: shut up clang
 -Wconstantn-conversion warning
To: Arnd Bergmann <arnd@kernel.org>, Hans de Goede <hdegoede@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210514140556.3492544-1-arnd@kernel.org>
 <219848ed-e0ce-634a-29c2-caca813b054c@gmail.com>
 <42f70914-e46c-20b9-6b13-8e8d855112a9@redhat.com>
 <29d069f2-a1c8-eb43-02ec-69c86b3cb107@redhat.com>
 <CAK8P3a2J=rv6HW1SiTS1R89CZFDe1-bxn+7qRFO2f3trDk0EuQ@mail.gmail.com>
From: Maximilian Luz <luzmaximilian@gmail.com>
Message-ID: <c47ed6bb-33ff-0a5f-74fd-65d3383467ef@gmail.com>
Date: Sat, 15 May 2021 00:07:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2J=rv6HW1SiTS1R89CZFDe1-bxn+7qRFO2f3trDk0EuQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: luzmaximilian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="QUIr/6fw";       spf=pass
 (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::433
 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 5/14/21 10:04 PM, Arnd Bergmann wrote:
> On Fri, May 14, 2021 at 9:41 PM Hans de Goede <hdegoede@redhat.com> wrote:
>> I just went to patchwork to drop this patch from the queue:
>>
>> https://patchwork.kernel.org/projecat/platform-driver-x86/list/
>>
>> But it never got added there because platform-driver-x86@vger.kernel.org
>> was missing from the Cc even though get_maintainer.pl lists it.
> 
> I checked this as well now: the entries for the various surface drivers all
> contain a reference to platform-driver-x86@vger.kernel.org, but (at least
> in v5.13-rc1) the entry for that subsystem that lists the include file
> does not list this email.

Right, I must have forgotten to add that, sorry. I'll send in a patch to
fix that in a second.

Regards,
Max

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c47ed6bb-33ff-0a5f-74fd-65d3383467ef%40gmail.com.
