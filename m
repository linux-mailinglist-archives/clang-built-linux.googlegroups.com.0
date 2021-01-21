Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWWUU6AAMGQEP4Q7XXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 450E02FF67E
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 21:55:55 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id y38sf1179159uad.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 12:55:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611262554; cv=pass;
        d=google.com; s=arc-20160816;
        b=smqcNcjS4rpogjYfWjCBvPSnUMIyFRgG6U1WK4aU4UuVne7wgs5x7HoJ8SOCFwUgnx
         /HpVobSg+Ms8iPOhwp2C5NYPHEpxVq2o21m9EgJUAZkm/J2hEGdf/cgwrX785mtF07zS
         lls48aUaAYWd/lNIeaG9XrdntRI38VTzbypjV4w0hjbrrcup6QkB5qaE4znVMbWSppRR
         mmtfNa8gOM8wMWI/sL7NyA/FXBZIQEP75zyuJDBogFKlcpZKekVBXTimHLTuPQITzytN
         xFSH/xkjg/FhicBTdr+tiYyJxtPHr7DNZSoMcouKCuEIG7GZnc6ypMRSRUIXl9HB331H
         bLew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=191ciiAToOS1HsHHu1QRZWjOGevCIqIzYgiI/PX8xZ4=;
        b=U44auI46Oup4Qi68eUsYnKGiLgKO2L2cfegYifZb7FNkyccv5oOuxCM6vu2luuurQ7
         UO27E4DCFmrZ3T0tlYwzkmTkfDG37RzfpCvqIJsvc4nd6koYVyOyhb/yVGBgvUCRhddD
         1R4zTUz+dZ6YSAXob2aRBW8XL5gmGuvajzlchMtTgXYLSlSizzleXZbgrdMim0Cvwzex
         esLlH/LSrqi7wHlcBbApZU21ipRdH5ess/3j3moBfiOFdf5o97D1ZTkmJuOdpSZ/e78l
         Bh4XD773l8VcCncWQjGFz1R90DAqAcPRyNFWGbjAXMW8yDi/hA9Cok5huu6mmILPqarY
         gV5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g4F9PaRt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=191ciiAToOS1HsHHu1QRZWjOGevCIqIzYgiI/PX8xZ4=;
        b=PRTarX1onzLqpID4ANC6tz9iIux79Q5ADpnJdyixx7jN+oh0DqTYDGlVye9xjAfE/M
         rK7tu6f5JAYorMbg4ftlRTMQWJcg2s2e1TB6r1oKqJyrJjq5B0WI0/pc6xvWW7aV00xA
         tR975TY3m6Qm3Vmv08/odKViSS6uRCpLbkmjxLq9nczKTfJ6BhvQH+8hOf+gABq/gEj7
         Kxze838zxwXMHJmvXv5pUotCHVOpkvVHY8t9a2+iE08mAVctFzactMk9hkSx2ayoEmj2
         NAOMdzWuWMjO3hLNa6qhrZgAID/X9bJ0oLH3F6E3P3TmG9X6m9X88yrT9RBLL6usruvg
         kR4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=191ciiAToOS1HsHHu1QRZWjOGevCIqIzYgiI/PX8xZ4=;
        b=hIyuoJXbMv4ouvr7t2ULLXv5cop8mn3FfJRc65U8H4yu2kwH+EkfaEqGWnteZSvCTA
         inH63vql6NrKM4vb7hM4P5kFcAvWU8z3weQmMEzcyspMQg65L7ggOWOuBR8EW+Xxiif7
         WHLgnddfJZLYDAiCag+Un7aFvYoAWqgCwInv59HfeTGcDa2N6jBNg5Bsg3L5BjO0fjM2
         h7Kp3dt8NAHieE76uUtTrlrffQYNCttFCy1syms4pNafEg3T2B9EzWMEj/HpbOJ55WEk
         FsphRiW8UhakdI/z4wMUIgvkxpDszq+NgHLXM5W/xQsMI7ru4Qxu+oyQnXWsIKZVFIuh
         fZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=191ciiAToOS1HsHHu1QRZWjOGevCIqIzYgiI/PX8xZ4=;
        b=UMorL1MEhGzgHYIsxGj6rObs7YwWzOamWzL8JTExCaoU5edVm9L0+2q1oD+H3krrv9
         LqvRqPajKnjeXSSljLx5wbhqxLeIpj31wYj3+5byZE9Ja6/vYzo/5dsD/AcSZDGrFdCS
         Y09SIEd8CBxUD1/zDou/J0jmNarHuak43+7nUGh2LC9hqxgm5aNxNNdRVn+kp6eO9UxO
         /iI8a+pRPk5PNDORcDKZEX0l4QniL8oMmqN8fNB8JcTHL1W0Gk0PsZX5t9EbupmTO9Vf
         PVBBecXUjHkY03ZFTJ1GVbneQrD+5kf8afJA4looQRip8JN58getBC9TVgiHkEJtpL3C
         JFew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533O3Jb94ZPsxN9wnjMy+AByU1PL2QBeCC4bje4xLMuuOa6wdwX5
	R3zLrfPufyJ9b+wPXWpBuKA=
X-Google-Smtp-Source: ABdhPJzh87b/hSEKFyWASORXCHfAtmC5QIqSLGceaDOwPq7NL7E1l7k9TF84RqCspMbupPkuBd766A==
X-Received: by 2002:a67:a41:: with SMTP id 62mr1290975vsk.51.1611262554382;
        Thu, 21 Jan 2021 12:55:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8d45:: with SMTP id p66ls496772vsd.11.gmail; Thu, 21 Jan
 2021 12:55:53 -0800 (PST)
X-Received: by 2002:a67:7956:: with SMTP id u83mr1451967vsc.54.1611262553933;
        Thu, 21 Jan 2021 12:55:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611262553; cv=none;
        d=google.com; s=arc-20160816;
        b=jVjGkhWJSTKlQ6BPvbnx0RGvKPsDTtL6BL8WHzxwSpXJ9aY2C5Qrmu1OX2ElMCLmrt
         lUVHGt9w3fv8UQihIiBzD5z2y7VfkSj3JUkC2PPCuMkS8R1E+KNKUB6iXggghSQZfjnC
         ziMyYb88r4irr7TeLwTmFV2pIoGiG7sqaZxQ7St8jsxibxt5GZLFlSgWSvDF+BgGbJk5
         xBFNcpCaEDEorHFnrDudSMS5dvvafvXA77VrIQ7jxz72EFa6YdNpU0zxChdOVKgoiPRr
         C2e9+9oUvzedwc4vFuhXXdlbhTagXRKXlaU8koOy0M+qSqh5mh2jacYDZN2RFejpxbZd
         0D2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0O4QM6IIxkQ7ZTdbG0pTsKoX7IEQdGTZh03dn1A2qmY=;
        b=dvEgbLBPDCAghYdP1IrKGcibhS0Hc6Gz7O//XKt8SvhxADNd01kjZatbxRCPl+M1GO
         ndWFC2E1Df+4Pa5H7KjXGsRVf79Q3Sx9nEWppm4Zwqqg+r0FVxj3aQCjkoc/NBnUPJ9G
         DVqNy8n27eb7CyuIry7AB+PNtDtsLbX2tFWI3X4KE7relvoNFZMwMx9pXSQIysDlZAAs
         JbWtwGMd2hJKceUcVnj5TpDW//f1FAPH0UHOFMYotk+Vg5z9hPP8shVPwKTbigqiJ8ta
         CmliPY9O3eeIyW8Tqv0wQBJQa32THFD9YnzxOU43U0K0STz1uOdr5Xt8wm8EvbLuzzYO
         pQqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g4F9PaRt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com. [2607:f8b0:4864:20::82a])
        by gmr-mx.google.com with ESMTPS id q11si829946ual.1.2021.01.21.12.55.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 12:55:53 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) client-ip=2607:f8b0:4864:20::82a;
Received: by mail-qt1-x82a.google.com with SMTP id c1so2645823qtc.1
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 12:55:53 -0800 (PST)
X-Received: by 2002:ac8:2a8f:: with SMTP id b15mr1472553qta.33.1611262553604;
        Thu, 21 Jan 2021 12:55:53 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id s15sm4200569qtn.35.2021.01.21.12.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 12:55:53 -0800 (PST)
Date: Thu, 21 Jan 2021 13:55:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: CKI Project <cki-project@redhat.com>
Cc: clang-built-linux@googlegroups.com
Subject: Re: =?utf-8?B?4p2MIEZBSUw6IFRlcw==?= =?utf-8?Q?t?= report for kernel
 5.11.0-rc4 (mainline.kernel.org-clang)
Message-ID: <20210121205551.GA428145@ubuntu-m3-large-x86>
References: <cki.ACB68E22A4.ZMBVHIO5KA@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cki.ACB68E22A4.ZMBVHIO5KA@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=g4F9PaRt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 21, 2021 at 08:49:40PM -0000, CKI Project wrote:
> 
> Hello,
> 
> We ran automated tests on a recent commit from this kernel tree:
> 
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>             Commit: 9f29bd8b2e71 - Merge tag 'fs_for_v5.11-rc5' of git://git.kernel.org/pub/scm/linux/kernel/git/jack/linux-fs
> 
> The results of these automated tests are provided below.
> 
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: FAILED
>  Selftests compile: FAILED
> 
> All kernel binaries, config files, and logs are available for download here:
> 
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/01/21/621919
> 
> We attempted to compile the kernel for multiple architectures, but the compile
> failed on one or more architectures:
> 
>            aarch64: FAILED (see build-aarch64.log.xz attachment)

00:49:23 ERROR: modpost: "irq_check_status_bit" [drivers/perf/arm_spe_pmu.ko] undefined!

Upstream failure:

https://lore.kernel.org/lkml/20210105184653.GA88051@roeck-us.net/
https://lore.kernel.org/lkml/161054962816.414.13151167154004705944.tip-bot2@tip-bot2/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121205551.GA428145%40ubuntu-m3-large-x86.
