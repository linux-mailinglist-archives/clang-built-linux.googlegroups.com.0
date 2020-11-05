Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWUQRX6QKGQEXTZEEOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA072A73D6
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 01:33:31 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id t139sf23355vkd.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 16:33:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604536410; cv=pass;
        d=google.com; s=arc-20160816;
        b=blKv+9mhhXNvdMscM17k9RpORuOnNPZieLCfArpkdJJHt4mUfHFteyk+hcwusXrigL
         kFRbaYxRd6tbfDlU7CkjzBbGA6rpriVNhwM+snK6dYtu6DdrFDJUNVHzOtXgmXSB20As
         7FkpJtPMXLLIlMc1wpc78/bwmIQ7HbOF77WFfArhkKsZ1uiIHsISzYdFjL8VqhEcetyW
         tGcsvyrwgFjApONwblBz4Q3BVGjQTDnSJg5XUJoUVAPxa8I5QCnpV9Kw+cb5Q+xWyTaF
         kQ52pvE+jtiDbQR950WzC4oTf9JeNidJnc1UciDX9czSiBJb8Qh1fP6IEpFwuEvDZzsC
         8cpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=erromwqRiH43P07ler4dpdjnvb3TnGc93Z/wRJh67Go=;
        b=GsFhCCkIL8pR+R+WLKSzf0dBgikpFlBWsuu5obQBjmJnquul4lEnYJrBu4s8zvfAax
         wgNyiIsT9IGIYBg73ZAJYRU9twy9kVKqQrbzYNhGk0sQr6J5VB1AMQcApvRtlwavUNDK
         0zHW74PIw6kWn0zI72HixPbxd1zglonmy9wP85ZvUtM74unkZ005fqUuHIIapBD/VTbD
         oaSqryD1G08zfIAaVj7u+0pyf1cZqXZxgkoZsXdZalil7ui2rDQIzKKr5u7lGB04MR84
         GT4VLiWMhAKwbUCtNe9d2pnOiaV/PANGxhb/6swixioE602+tN6wisXOkBXKVMhrHNGk
         YrZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XFCODDM0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=erromwqRiH43P07ler4dpdjnvb3TnGc93Z/wRJh67Go=;
        b=mAipUU6KEl0XuRpS08ZyI05+T0MTFFgQZeCUnGZX/HOUlc2GGq6ctkLWMiz4PqJV14
         IgQ7C1LY2ycd5P12TaJj0MmENOOmeMmFRXjz2rAeKT/DnwQIpoV7v96ClnNiISngXgZM
         g1uFA/XeI1e51p+xKMqf79N9YbMAlD/QbCwFrl5sYBq75X0WA7y9/faT/qx2TOsXnrqg
         k+CrEBJ/lKaN3M3z5CldmXXCkvU1shrqQLuh2cspmb9O6rZXM15GiZm2j0dtXENcZh9S
         ZJtf7s74trNfRqn+F7A2TUm2LoFnOWU6CV4llVtIGbNLbaEhgYDYBtytEHFAi+7vh25J
         MpGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=erromwqRiH43P07ler4dpdjnvb3TnGc93Z/wRJh67Go=;
        b=D+iGCIDhAy2OFJpTrg1NtY4dfIn904nkETmR436VERq+zj/BUAMPdvfEcnxxtx+FuT
         n6CkpyvRPdSOVts1kxsZndItEqV97FdKoXbzOG7ukV3aQ8FRkkMzAvtaRiyCG6fm/9Z+
         osr0CAFyJL5NYAK4jrePW1XHLR+AhltFKfoDl8rykG+GswziONWA8WDDX8BpC3RT+wUI
         gtQfebrbghwx1kvE62EP/MOQX4+G1MlMi0IILWYSkG2OQ/XiXaKtOh9DOhbL1rKaQt/a
         cZoAZwZbrNZj5UBhBUwztktw3U/6VckTeLG1qnqKVJAfr0gHMouLBS83T921ZWQHGnO6
         yb0A==
X-Gm-Message-State: AOAM532ZPUIXFayKi/CXLMaiaztf3OjlBARHpUgeFmn5EFexGvj1WpUq
	HmzKfv1p1F4HZvztEamG7GI=
X-Google-Smtp-Source: ABdhPJxI9eoDwjCjd5KJi1LTUH83CpSOFtIs8xgjRmJqJ5dmJJ94tH/ksNrNy5c//Qqsbo36ADX9RA==
X-Received: by 2002:ab0:2a11:: with SMTP id o17mr268268uar.8.1604536410253;
        Wed, 04 Nov 2020 16:33:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6d95:: with SMTP id m21ls257332uah.10.gmail; Wed, 04 Nov
 2020 16:33:29 -0800 (PST)
X-Received: by 2002:ab0:74d1:: with SMTP id f17mr251001uaq.30.1604536409815;
        Wed, 04 Nov 2020 16:33:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604536409; cv=none;
        d=google.com; s=arc-20160816;
        b=vLFnPhd1NQ9uZ8K75Mz/9vBpJrc566CAU6/wQSmWHRQCzJ7hBHKk+P3Tl9fJUIiaWX
         0AExMHqfrwAerI4N50FBc1ffQN0B9NCbvYpJzDDBnC79nXaeCnzW1I8Q2m+fsK8WU5Yb
         4LUXhOaCnEQDNXc0fGTWAbqG+gcsvKRKgST8MS55nqlbd1vssOJi6jNsrN4Jot9ELO0M
         Az7+8Z23GSiqo8OyCgp0e6ponD1hDGtdRUPHaIeexrYd45OASCtbiTo0ZyJHVYdBh1Cm
         zCupYT3LWd5UYEbJhcmhjQVb4W8udSZe1UugXRUADDI2/KWImNuXy7zsbVcqEdI5RiR5
         Ek9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CW/sv9yrZBL+KFBJhrCknWBwcN5pLx4pYyvBQgpEhFo=;
        b=iltF0H8oMphsbXlMtlRQFuvsc8ZQaRcDbcQ1x1UD1dX9DVIKtSS1kp9njuiSDWfhA+
         j4BDROtvd6Hn+7P8PcDSnRqvAazfmyOadZNPJU9tAeocplAJ/L6v+lvMkqXm6sFzKTiu
         TDNjReawNY8qE6slvwdC3QaQWuCTQU793dDWuhN9D3UI9vh8YmFrLFqxN2gId7/uCjTT
         dZtK7PbfPM4QKkaaKcBXSgWdij2/cddN5npOQUVJu739i8ORco45NEYpxznkfS8PQPKi
         TkvX9ZW0tMz5LLW13hYr4hcMZAz7RkpGsuT/KLbtEQ/YUSGyciHTzQKABzeXYPckzqao
         NfRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XFCODDM0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id y17si3574vko.2.2020.11.04.16.33.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 16:33:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id v12so58872pfm.13
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 16:33:29 -0800 (PST)
X-Received: by 2002:aa7:9a04:0:b029:163:fe2a:9e04 with SMTP id
 w4-20020aa79a040000b0290163fe2a9e04mr574390pfj.30.1604536408833; Wed, 04 Nov
 2020 16:33:28 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
 <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com> <CANiq72n0FFfH6Uag5yai=tSzzOgVSLpzu5gyUr40d6Gb8GzZpA@mail.gmail.com>
In-Reply-To: <CANiq72n0FFfH6Uag5yai=tSzzOgVSLpzu5gyUr40d6Gb8GzZpA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Nov 2020 16:33:17 -0800
Message-ID: <CAKwvOd=eHpmKy4mQKpGA2qAZr4Ue_K+Y-1HNe07dxar7dHy0gQ@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Joe Perches <joe@perches.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XFCODDM0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
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

On Tue, Nov 3, 2020 at 7:40 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> distro etc.). One of the reasons for that was to help adoption, as
> well as because clang-format gives a hard error on encountering an
> unknown option :-(

Yeah, that's annoying. Why don't you send me a patch that downgrades
it from hard error to polite warning (in case someone made a typo),
and I'll review it?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DeHpmKy4mQKpGA2qAZr4Ue_K%2BY-1HNe07dxar7dHy0gQ%40mail.gmail.com.
