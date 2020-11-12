Return-Path: <clang-built-linux+bncBAABBHFYWT6QKGQEVOD4WWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 119902B03D2
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 12:27:25 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id i39sf3220892qtb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 03:27:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605180444; cv=pass;
        d=google.com; s=arc-20160816;
        b=hMLMx8WjD0Y/Y8zGyTZUzCaTgN9orbR2XFtyrDv8MCKwkd4tZ6Xi6705BSm/hqjm6F
         gkRKcgjFzinsND/Oufa+3m7hyi1cIblQ30NCVh7FcF/Yi4bkswlO21iSw3bdBwoZp2MK
         6bhNpxWGkkYxJuUW7GPWGrXOMwbQi0OQtp2VygztaGzlTHxi64Kh4lG39E3gdFKAvVmn
         btmLCB4uGX6EwJKCmcRgrfJo+Ywpkqku7n+6kwl7Fg3RfO/qiMcrqKvObTwq1HUCqQFE
         2SUnTPSGW2LIVE8UBHB/qp9fsM/P/U320JT+C4Nzlu7lrZgM6fSFb7PVjRz3DbCtR/yP
         jGiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=hxQY24iNHyxlE0OewSrbgKtWiSb0bp3v9GKm3E/rqNc=;
        b=AKBewbqwIte+W9IGohABQn80mLB1MSdpsGhZZGCWp6kNDOzvKCy0QjyXcwMjyEwsyH
         5WXIMJobNzxMD8b9m7biRafPZvvj42GAohp5n2VQorzOWOtcgs5E+HMp6d3F/sFcv8t7
         aZCrPmvDxPixtgYolka3t0/lHIFH7ncYIo7Cq9/7zzXgV87GDrBI6re7DQJXsF3fkWkv
         JjpzhshUV9ZGiNBWnKGeP8ernR351j8/vEPCRSjV6riey/TWlhb/kBNO/f4RCyNEgQcT
         os6t8IG29JWl67U9kRXY0Dx7ZH+6Fu3ouLhOd/eLhld4KnTAuntgfjShOM3HrNwij5g6
         KVTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=iFx83yH2;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hxQY24iNHyxlE0OewSrbgKtWiSb0bp3v9GKm3E/rqNc=;
        b=tAru6DQk3zyMg/7Upd/1qCSTJbK2/KRQtVitdua7GnU6m3T/HYaaJ3YIXyBGBavFa8
         ZBygP7tbxMH4TMJNbyXDpJJH1H9wPk+vLebthjWMfYNwtjMIHVJkmFURP7+mPWhTh6M6
         Eeye/ZVpDYXvAiQLwZL3xIg3/5KsA4pCpnE90AH9GnNv6q6DRPfH24TSluL6+WQMU0LU
         Rn1U5lFScGyxGUd/2qCMTkyg+VyTWSexbBeSS/DkZ3s3YU1HmS4GWL7Nf/2WWdnbkjco
         HXojHndVuGztQ7c34L+c1qU3usHr8RLILfPtWBQBeiSi9TI5tyiHmLgeZEJcM/IGd+Ax
         uutQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hxQY24iNHyxlE0OewSrbgKtWiSb0bp3v9GKm3E/rqNc=;
        b=ZOR+DfdLOw0bIPawPnh7y9ONa5GykyryNJvIpq0Cr0IDO4XKvUZDCK2F8cnGIUVATz
         pUBn/uegSIVryedbTRIF9b3tEiT+rtrlq5Uf6H5/Wbb3I5M9iGZjU7Msyc6ZWoM814F1
         tUkSAj4mkJNDcxwZIBgHIl5SpkVl0uYrNGEGFurYgp5uWLIG95IYG2nK6THTHd7DHU+0
         t/6WeqDOE0X0mpbs7Jo/cSlgu6le5W9LD9mF7JTwsMg88dGAIqM8/+oOd4EEKUz+fU11
         UMIhO7srO56O5nxWnq7AiktTmn2yQ/3lmnQvGNcidoizwtQCo2DMSyaO/r5G/Cf+qMiO
         63jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zezO2FEv3eQkyAVnMji+Z/0MIj7hCFZVlLQnxZ7A88y5euLMz
	h5Q7ICszI8VbZoow1LklMx8=
X-Google-Smtp-Source: ABdhPJzHdb/x1Tm7QfYiQrAP4iRixzy6hOJLApA0hmej/qZroA+hmYWd8q1kNp7kxtPLGFfErpebxQ==
X-Received: by 2002:ae9:ebd3:: with SMTP id b202mr29215986qkg.26.1605180444142;
        Thu, 12 Nov 2020 03:27:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:18ca:: with SMTP id cy10ls611919qvb.7.gmail; Thu,
 12 Nov 2020 03:27:23 -0800 (PST)
X-Received: by 2002:ad4:45ca:: with SMTP id v10mr29998391qvt.36.1605180443785;
        Thu, 12 Nov 2020 03:27:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605180443; cv=none;
        d=google.com; s=arc-20160816;
        b=wWIgo3JA8IdibTSTGaPkXEHocY1RBsxFcxxxKKiIgjHOBl2WbrWZx0rZ5MIcjope2r
         CnIp68PSiPCJdXKgJzauxpTAtjJifN/CII/dTGVJsDa12T02PNz8qJHVoxPmz49+D05a
         tIm/LlI4rbvbPK7twr8wQi63dyueCkqpZFwDxnyvyEkwXEVW0U+RGi2Qu43OdIc5t73J
         vX+8kbSUFjyxeMPcztDZk6VS/NgZdFRQ99ofZhf4i6wy47cHBI1qRF0ARAQeC5ruG0C2
         gNhCZ0Sbc00O1CgapG7BDom1lJu5XlO7PgpO8ENO4lK/PV1Bxo4oMBBNJBiLnj6MODg1
         rs0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=D5SYwO2ZAcQz2Tle24Zn5+RCmFa/75pAMkftOjCKMLI=;
        b=tgV93KeFHgFzRSKIbPosoUh8xaO5RhRQuUitYvSxmInFgiwh9aNWZrFlX6qtpikhJT
         HNqQuVeBm0AnsdzU0yG0MyYj4pUmC38MZutxN0NprL2ZlBLQOom9O4tO+/URWLXNpkE3
         SCAr/Uj1c4U/eja3GQR3nD9nj6sKfYCGEyIkUx5N+KtyUUBwrnvH/msoyAA/9QWVpIKY
         ElTFEcqWs2ZkrDovnbdrZWoL80oeJeXI55LbgzrXA7obLZjBmY8d34jlgtWi83IJWsQk
         CyoarA51XOyC9dZOlHnB9nLxzralwCwvmBqR6uORVt5CxqFFupdV+V/3xqOKlUS3HXNT
         yhMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=iFx83yH2;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id h1si403794qkg.5.2020.11.12.03.27.23
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Nov 2020 03:27:23 -0800 (PST)
Received-SPF: pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by linux.microsoft.com (Postfix) with ESMTPSA id 88A0E20C2860
	for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 03:27:22 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 88A0E20C2860
Received: by mail-qk1-f180.google.com with SMTP id u4so4832999qkk.10
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 03:27:22 -0800 (PST)
X-Received: by 2002:ae9:dcc1:: with SMTP id q184mr31446371qkf.436.1605180441516;
 Thu, 12 Nov 2020 03:27:21 -0800 (PST)
MIME-Version: 1.0
References: <20201110202746.9690-1-mcroce@linux.microsoft.com> <20201112035023.974748-1-natechancellor@gmail.com>
In-Reply-To: <20201112035023.974748-1-natechancellor@gmail.com>
From: Matteo Croce <mcroce@linux.microsoft.com>
Date: Thu, 12 Nov 2020 12:26:45 +0100
X-Gmail-Original-Message-ID: <CAFnufp2eEKW4tencrhUoYkY6C-eGB5xF_Fg5hms52zgJj68hJg@mail.gmail.com>
Message-ID: <CAFnufp2eEKW4tencrhUoYkY6C-eGB5xF_Fg5hms52zgJj68hJg@mail.gmail.com>
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, 
	Guenter Roeck <linux@roeck-us.net>, Pavel Tatashin <pasha.tatashin@soleen.com>, 
	Petr Mladek <pmladek@suse.com>, Mike Rapoport <rppt@kernel.org>, 
	Tyler Hicks <tyhicks@linux.microsoft.com>, ndesaulniers@google.com, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mcroce@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=iFx83yH2;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

On Thu, Nov 12, 2020 at 4:50 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> kernel/reboot.c:707:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_TRIPLE;
>                             ~ ^~~~~~~~~~~
> kernel/reboot.c:709:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_KBD;
>                             ~ ^~~~~~~~
> kernel/reboot.c:711:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_BIOS;
>                             ~ ^~~~~~~~~
> kernel/reboot.c:713:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_ACPI;
>                             ~ ^~~~~~~~~
> kernel/reboot.c:715:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_EFI;
>                             ~ ^~~~~~~~
> kernel/reboot.c:717:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_CF9_FORCE;
>                             ~ ^~~~~~~~~~~~~~
> kernel/reboot.c:719:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_CF9_SAFE;
>                             ~ ^~~~~~~~~~~~~
> 7 warnings generated.
>
> It seems that these assignment should be to reboot_type, not
> reboot_mode. Fix it so there are no more warnings and the code works
> properly.
>
> Fixes: eab8da48579d ("reboot: allow to specify reboot mode via sysfs")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1197
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  kernel/reboot.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/kernel/reboot.c b/kernel/reboot.c
> index deba133a071b..8599d0d44aec 100644
> --- a/kernel/reboot.c
> +++ b/kernel/reboot.c
> @@ -704,19 +704,19 @@ static ssize_t type_store(struct kobject *kobj, struct kobj_attribute *attr,
>                 return -EPERM;
>
>         if (!strncmp(buf, BOOT_TRIPLE_STR, strlen(BOOT_TRIPLE_STR)))
> -               reboot_mode = BOOT_TRIPLE;
> +               reboot_type = BOOT_TRIPLE;
>         else if (!strncmp(buf, BOOT_KBD_STR, strlen(BOOT_KBD_STR)))
> -               reboot_mode = BOOT_KBD;
> +               reboot_type = BOOT_KBD;
>         else if (!strncmp(buf, BOOT_BIOS_STR, strlen(BOOT_BIOS_STR)))
> -               reboot_mode = BOOT_BIOS;
> +               reboot_type = BOOT_BIOS;
>         else if (!strncmp(buf, BOOT_ACPI_STR, strlen(BOOT_ACPI_STR)))
> -               reboot_mode = BOOT_ACPI;
> +               reboot_type = BOOT_ACPI;
>         else if (!strncmp(buf, BOOT_EFI_STR, strlen(BOOT_EFI_STR)))
> -               reboot_mode = BOOT_EFI;
> +               reboot_type = BOOT_EFI;
>         else if (!strncmp(buf, BOOT_CF9_FORCE_STR, strlen(BOOT_CF9_FORCE_STR)))
> -               reboot_mode = BOOT_CF9_FORCE;
> +               reboot_type = BOOT_CF9_FORCE;
>         else if (!strncmp(buf, BOOT_CF9_SAFE_STR, strlen(BOOT_CF9_SAFE_STR)))
> -               reboot_mode = BOOT_CF9_SAFE;
> +               reboot_type = BOOT_CF9_SAFE;
>         else
>                 return -EINVAL;
>
>
> base-commit: 3e14f70c05cda4794901ed8f976de3a88deebcc0
> --
> 2.29.2
>

Hmm, this was introduced in v3 I think.

I wonder why my compiler doesn't warn about it, the two variables are
defined as different enum type.
I get the same warnings with GCC and -Wenum-conversion.

Thanks,
--
per aspera ad upstream

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFnufp2eEKW4tencrhUoYkY6C-eGB5xF_Fg5hms52zgJj68hJg%40mail.gmail.com.
