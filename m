Return-Path: <clang-built-linux+bncBCT4XGV33UIBBFMDW76QKGQEY6SLKDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3291E2B1285
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 00:13:27 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id b11sf205131pfi.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 15:13:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605222806; cv=pass;
        d=google.com; s=arc-20160816;
        b=uxXh+rDDFqlb27KxG2072mPvnM/M1/A3dCE2TOCsqdpbccWrdd+Te468QD9jR1dF7s
         UKTMSxexEh4JqgBW0kkQzEk4ddZZrAnQPR2brcVhNOkzWOsYrxol4zCVyNAebxHxALvw
         45OUxsGPeVnNXAXBgeIsoJ0hPP1SXfjQCuN5VW1VIPd82qFuRWX9/Mlf/tM15wc5HEEw
         C9Lt+BC3mdcy4SSP88UsRwgwMkyt7UQapDUS9rsFPdElNbqDKtD2yNkgiWW9qdFLxOIW
         rdJs0E3lMDK2/DwsmTggzDYFgNXIM1i4D8pJ8XRjJz95PLwbDgsQk8HMjm5bcP8cPT6e
         hOqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=uZvfAfE2xQAjEkbWZqOV/7Eco3SwlmJm8YQKbm9yb9I=;
        b=cfPX8VmWfkq6Lqa7yIbILsD7JjEVK0jwt6bq2zpvLB34mfmA/4/rQuBcpQeTIURZiK
         WhVmpbTBb4r8OMe6S5g8122ZmOlMzfpB3w7vYjFE5p4PlRLwG1ZcZebNwoNcVc4V3slh
         1P+6qSsMpt67woHzDmM0xdU/itX8OF8EaEkV52qOvumEBaAxNQyVKf7RmFaLUSJemiyb
         5IuBtLxyFz52V/80k4r4T3so8OibQWp78UsSR2XezaCWfZ+DlQksYde2uytNspzn3obN
         Px+I81mhjkU1iPNh0RwFChi8WH6YqI299JZV8l0mFRGSMHTsVktZzU/zWrZ7fctJjY1t
         6SKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1DkGrMz2;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZvfAfE2xQAjEkbWZqOV/7Eco3SwlmJm8YQKbm9yb9I=;
        b=ATgXQ0Jt/HEYYQ/fPXkt1BljdHyoQyFlAOQ2tLT3dTo05C+MGloMdwPlLY8RtdyM4i
         ZCFBUjRaEPR3CSuF4DQY4vMD3JOdMNgYcxCnGAuz2n7UJ9whGAUVcKT9quJ50vimBLaA
         fdA8aIW2RZWtyQFOvVyBePCPQfVBj/CmXbW5zgle6hCdDYq5OV0ojeFbSUgtTtiy9w2h
         fMFMEOSPUdJ6mJp0jmEnwpqCpEC2Mnj6LUyKKQretN5ZuXbyn+qV9A7TSs14b9UTj+0U
         B7f0MnKWcc9EzHPF2LtxQHA73OLdIMhhR9tSNb2ddG/kL+QNnAHJMjkGhKb/v5cm8nYj
         RyHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZvfAfE2xQAjEkbWZqOV/7Eco3SwlmJm8YQKbm9yb9I=;
        b=XiUSUpeRuLlf6niTfIGJcdUeHepXGne6Cc/Yic+/QWOP8HjcW74LBnsfDuGCan8YOZ
         0KY419xJp1dSzyDK/hjL/9gMu31hD9YGTANKyzs0KXlcxe80sbgvaDcLAEN6SthpytIZ
         wdiHdRrbJjF8NZd/QFZRyW1WoLGFjKFmJn4hUeJPzY49VPYHflwWpH9I6kPRoNMsOKpC
         SSZCVgECQjrVakNN5TCQkIAWInK9COb7P58ZHdoWbYeyfyXFkJ+XENNFpCVuiVp/gAhf
         yCyUYptiG8CbYrKsECo89sU5ClGmZDEi0yQOl8r0PosOGrNIojEvZbYsL6f6AhOorCkz
         f3MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RgbHDhQocWwaqkoU8sPBmQaJiB4FB0fZHPopmnXZ2nR1SZsmT
	h9LhtcGJXfafSmIxM5DDjkE=
X-Google-Smtp-Source: ABdhPJz/xr2i1yD0W2x6kwpijIF80BPziTBlitCP6/1OrTtVJYYwLCoASvVb2XKgBms2BFWxNzHSoQ==
X-Received: by 2002:a17:90b:3803:: with SMTP id mq3mr111478pjb.154.1605222805847;
        Thu, 12 Nov 2020 15:13:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls2456902pjx.2.canary-gmail;
 Thu, 12 Nov 2020 15:13:25 -0800 (PST)
X-Received: by 2002:a17:90a:c17:: with SMTP id 23mr71953pjs.199.1605222805212;
        Thu, 12 Nov 2020 15:13:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605222805; cv=none;
        d=google.com; s=arc-20160816;
        b=MlHrCJjRXuyZ1bWsK6UjmoydnrkG2Wr5OWFe+yTeQivBf2OyAzVNSxKiNnGVm48Fyq
         2VCGK1WgwElDSD2fOWX1uok+KSqxQJujUZRnRG18S446nbHzWSKeuMvRWirmA8jdOt7K
         TlyNF9Pai5OVSrSG0+w+TkdX4s84pITI4Gd4O62cZElNUcoTQ1AiNj16LE7MaL8WMLLo
         5z4su7noIylepvuBFOzMPsbycI8XbGY8QrUkdJGwtprVFhSJyAxL2VA/Gf2V2TBXfp5h
         cd/6sC804R9IpQsZa1pcv+0d7HbBSXpjctSHeeJ5zloz9e7ZNXd64TORHuttzmZqpXwj
         5/1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=sY4is+eyHctzqKyYoiVEWSp1LtRpzy8DSCuOwNTP2pM=;
        b=08IwCdR4WaUeF+6hCH36fsVwAhzFfrgdyz/XVt22kmGN0Kyp1+rGMiIeMbAHF8Ij8h
         jMIn7a7M3C1xBV7G4RKQuiQgAokb+kg6399rF2j6qst7xSwmbnaqoJYizXIPbaasvbbb
         Hwe8ggI+tU9nX2iZXpmBdLRV5VB0kZnhtl9yCI1QGIVWNqey3IP6p5qCjDLZJ7mCC12J
         tMuxDG3tloGGeg6XzIdIkMx7+X2zC7O0/LCMwEsInSmdiJX4dctm0QNZQy+bNOIg0ArZ
         dwx8K0vYRP/EHL4KnApTOru1BXbz7ty+uhc4pOqNju8RRQoXq0lXM/r3NJpG+jMrjFrA
         sI1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1DkGrMz2;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 38si425628pgq.3.2020.11.12.15.13.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 15:13:25 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DDA7920B80;
	Thu, 12 Nov 2020 23:13:23 +0000 (UTC)
Date: Thu, 12 Nov 2020 15:13:20 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: mcroce@linux.microsoft.com, arnd@arndb.de, keescook@chromium.org,
 linux-kernel@vger.kernel.org, linux@roeck-us.net,
 pasha.tatashin@soleen.com, pmladek@suse.com, rppt@kernel.org,
 tyhicks@linux.microsoft.com, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
Message-Id: <20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
In-Reply-To: <20201112035023.974748-1-natechancellor@gmail.com>
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
	<20201112035023.974748-1-natechancellor@gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1DkGrMz2;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed, 11 Nov 2020 20:50:23 -0700 Nathan Chancellor <natechancellor@gmail.com> wrote:

> Clang warns:
> 
> kernel/reboot.c:707:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_TRIPLE;
>                             ~ ^~~~~~~~~~~
>
> ...
>
> --- a/kernel/reboot.c
> +++ b/kernel/reboot.c
> @@ -704,19 +704,19 @@ static ssize_t type_store(struct kobject *kobj, struct kobj_attribute *attr,
>  		return -EPERM;
>  
>  	if (!strncmp(buf, BOOT_TRIPLE_STR, strlen(BOOT_TRIPLE_STR)))
> -		reboot_mode = BOOT_TRIPLE;
> +		reboot_type = BOOT_TRIPLE;
>  	else if (!strncmp(buf, BOOT_KBD_STR, strlen(BOOT_KBD_STR)))
> -		reboot_mode = BOOT_KBD;
> +		reboot_type = BOOT_KBD;
>  	else if (!strncmp(buf, BOOT_BIOS_STR, strlen(BOOT_BIOS_STR)))
> -		reboot_mode = BOOT_BIOS;
> +		reboot_type = BOOT_BIOS;
>  	else if (!strncmp(buf, BOOT_ACPI_STR, strlen(BOOT_ACPI_STR)))
> -		reboot_mode = BOOT_ACPI;
> +		reboot_type = BOOT_ACPI;
>  	else if (!strncmp(buf, BOOT_EFI_STR, strlen(BOOT_EFI_STR)))
> -		reboot_mode = BOOT_EFI;
> +		reboot_type = BOOT_EFI;
>  	else if (!strncmp(buf, BOOT_CF9_FORCE_STR, strlen(BOOT_CF9_FORCE_STR)))
> -		reboot_mode = BOOT_CF9_FORCE;
> +		reboot_type = BOOT_CF9_FORCE;
>  	else if (!strncmp(buf, BOOT_CF9_SAFE_STR, strlen(BOOT_CF9_SAFE_STR)))
> -		reboot_mode = BOOT_CF9_SAFE;
> +		reboot_type = BOOT_CF9_SAFE;
>  	else
>  		return -EINVAL;

This is a fairly dramatic change to the original patch, but it eyeballs
OK.

Matteo, could you please comment?  And preferably retest?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112151320.e0153ace2f2eb5b59eabbdcb%40linux-foundation.org.
