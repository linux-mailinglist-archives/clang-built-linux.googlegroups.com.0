Return-Path: <clang-built-linux+bncBDRZHGH43YJRBYXXU6BAMGQE4JHS4XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E733370F0
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 12:15:47 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id u5sf15116543qkj.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 03:15:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615461346; cv=pass;
        d=google.com; s=arc-20160816;
        b=mQRAQSTtBcsHqtMcHP+wtcrqCUpSyLqB5a2j4KgZOmRwTKaq4tUgYmJ9R0AQblNT+l
         41xW04JhQmXzDuJ/EJygs1oLGvtYqemO+vQfQ4h85BWIGsr3cgEENSqgJ4MS+rZc9pTt
         6Fp1aH+44lfDvKafqbgnKIg67RJwnPvN/WalJxVymruOFcI5u8Lrx9oNrtVCAgxE8T29
         F8Oj4tEv9JRc+MF82eXRrVHDehCHcDt5kjytk1AUXu/5zacAyvXsNUQiq6ToUVkoeM9k
         OgAJ9we//WyUeZ9vM9ef+tYUjUsXRq5uDvWgMrIwRkvTGpwXRmLyh3xd+USvyzC5SKHj
         6O0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=sLT3U8oxLO+Jj/uRiJOExS789sk5mGk5vw9XOFdkqsA=;
        b=Jks0VVDPadWFpTNt6MJ/tHeDK1yTJYMDwgvKGvE4DX+SkqKjw95QTmx1XfW7zeho4I
         b7yEnJj2oDwvMP07cKqxDAahXFLevhJCgxEcXMr6G89qKwNieUBbNAP6FDEmVt815rjM
         o3Sa9QqJdhccV+qZcK1UmBfu+yAFCHtvRDO1Ue4Xfd8oRo2HfijV2QgrMVmBNn7+sANd
         2B0dhja8d3J1d6e6M/L9l7y1DRCGk+0QbIhnaewFSroTgaFqNNXGix5vrqaOdNjLROVr
         38y4PmpBqKAUjJo0yekIBfHlW+SsWQRLkSQW/+81xCu3u/1wVMNtRE4wklhK9UVkxYEM
         gByg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dFw4CQZ3;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sLT3U8oxLO+Jj/uRiJOExS789sk5mGk5vw9XOFdkqsA=;
        b=MC/I63mFLL/fkK28n1tm1u9HXlrONEk2gvR8nQxAGqHWW8HXVLa1e5QLCdsW+/Mi6l
         nz1yAU7AI2FD8IWMKvgZgg4xmt46J3mK0P/nNwKctBJop6nRa4eZt54X0uMpYa3qm66N
         YfmV/xsDorz3U3KJevOOsdpQKFsQ0NI5Mqjy1nUP0IVdZF6BHqMXeg72GGy8piYRcRV3
         ZCKjJa83MVvO2fp9eAV+U+PrYEFNc7jCg3a8hJ/CCt0Zfnrf/tToEEEhsAZz3e8PVikc
         k/awknRBIoOCIlJW5rZEBKvRXUYfo2VP6Gfl75zKFnYiH/FtCuxuLuYzpUSpL2lANX1E
         1Ozw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sLT3U8oxLO+Jj/uRiJOExS789sk5mGk5vw9XOFdkqsA=;
        b=QxZhEiS2Eup/BWAXc/1A7ZYDs0/MIxxWI+P+idc3FvufdHTwhKnZTemRZHpbgziwUb
         b1swn3oycGz7DBVSQB/wFEMi86XI/wZqGwlkv9qQRT7x4UOWGaQlVNXXKZdTBVmy5HBX
         Q1GHrNbofs3a0VbIOiCH9U7uv89tCHFP4IaHjrPPuLZ7ay2uBo/zsCsSIPk9sxMyWJqn
         eBJl1lGKlatHSoibUXUkr55McQl3sFfwYB03+jtlCrEYetKUoJ2KaT/Fd91DtHlEhfqt
         Gvel6GqHyoCslt6nIOfocZxFD8GRZmteYltLXAgOJuspBv2nqv+fAiiZyQhIc50ZHxUH
         IPvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sLT3U8oxLO+Jj/uRiJOExS789sk5mGk5vw9XOFdkqsA=;
        b=qLdF6Fg+9RBiAPns35uWZwcL/CK+1gireUlhCVbgOlZX64rqgyJiO9QxAavf4BpHyJ
         w45sS3YndlyaTvNZByyht64/G7TFiL8KWpHQ7NOrcj5heKaDeltprcNDDfFeYc4yOIDz
         +EX/10whYIOYf5c/Vz2ep0GUkhTq0OQ5HF9voZasYo971+ZNZ79SbVJb31F2mGfNHlqs
         QtyGkLaGmuicSXOrYm2TDak+YnerZjK+fAFkj1DrB84KAwtvsy1xkzTOxY6UQA2r6V2/
         tj97nWcrXPQqhPpog39F/bKPMsIEslL9uxAfPiHslFXNgkL+0wUV1c6hQhsW+PZsljiu
         hPmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RTmSQf2FYu0Roxp49QHQF1jAIZvFgX3gP9/A54B2AI9TxQDfI
	zKfXWPuPreHCF/sL309DzI8=
X-Google-Smtp-Source: ABdhPJxSk99QK5ZXevw5AGd2a+hKU9MuX6nmql+XqfVinRiaJJa0tk89ggig8WuYi3gDwtZ0h9tygw==
X-Received: by 2002:a05:6214:20a7:: with SMTP id 7mr4896977qvd.24.1615461346678;
        Thu, 11 Mar 2021 03:15:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:b19:: with SMTP id t25ls2868055qkg.1.gmail; Thu, 11
 Mar 2021 03:15:46 -0800 (PST)
X-Received: by 2002:a37:de05:: with SMTP id h5mr6868353qkj.79.1615461346281;
        Thu, 11 Mar 2021 03:15:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615461346; cv=none;
        d=google.com; s=arc-20160816;
        b=UcnGT18FuQMo5zJ0dHt2eXuaxVpNOx+ygdhakq/rHQErO4SR6qF0nE1VWbM0Y592uK
         2GV3IqsYU4VmVLEQ2iwjd1jx8/375oichn0AKK4FOo1KIVZOLgoKOxJ2AvyMs2MFA9wf
         iZFzwi7nYYeKLj+hk7RcNNacJQlessOSp7086vLKdA/qD+M5pcYl89xNv044u8gj6aId
         6bt3otmy8MRpKdrvnQRrFXMZ4AZGEOOdtKWKwMd/UjfeCE2LCoYYvodVvFj2K+mwWVmP
         4RatQW5GnPX76xfsnr5hhzb5IG2qq4IkXK8Fm4RqedQ2ReE8/TcEQjgJShmrVFsZqz3G
         gL2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LFeut5mRk7QOpC8AdBxexiS9v0Cku3pHA/7OaXkYKqA=;
        b=s5+HiudWdqnu4FZO+2dOAhbV4uJ+rK5KDtLHR4ksTooTSGk22K5+9OfTxmrg4hteCx
         28kSTTo7DBYxP4fhwbHY3gt8Js+mu65nNZ9UVBWJM/SiTRmpp4rBPHczb0d3gi2Cp/P8
         p4mynrNfyC2JKzkQCA5XuliK64sJZzOh324WI2v2mrbA2YZiLr23wwSvvvrUqkaspbbE
         ejQQIBMhNBf1neIa9RqvWVz3rTr8QhMJn4+uFRDUhW60OK4LusqOL3nlsgV1Q5gzyJzo
         WLMIZBjpyvgxpALa7LYiEmuw8zpXLHVDtAtfACbI/e0Gpd8tN+TQgiW3iykqFrro3O+3
         dbjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dFw4CQZ3;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id b56si140738qtc.5.2021.03.11.03.15.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 03:15:46 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id d9so21377799ybq.1
        for <clang-built-linux@googlegroups.com>; Thu, 11 Mar 2021 03:15:46 -0800 (PST)
X-Received: by 2002:a25:d296:: with SMTP id j144mr10994633ybg.33.1615461346024;
 Thu, 11 Mar 2021 03:15:46 -0800 (PST)
MIME-Version: 1.0
References: <20210311094624.923913-1-masahiroy@kernel.org> <CANiq72m1e9MD83sP5iZCfzoCR0qLz2HQj_VVkE4X-56vf6e7fw@mail.gmail.com>
 <CAK7LNATP2ORegUu0tGtSU1+CSKZVX7m84GOT913X5L29MopAXQ@mail.gmail.com>
In-Reply-To: <CAK7LNATP2ORegUu0tGtSU1+CSKZVX7m84GOT913X5L29MopAXQ@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 11 Mar 2021 12:15:35 +0100
Message-ID: <CANiq72kVk5BwAfXmnfKGPwMavfdHNqF1gjq9D-U4TmMipS4yoA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: collect minimum tool versions into scripts/min-tool-version.sh
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Nathan Chancellor <nathan@kernel.org>, =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@lindev.ch>, 
	Miguel Ojeda <ojeda@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dFw4CQZ3;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Mar 11, 2021 at 11:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hmm, that is a simple, clean idea.
> Then, we can simply read out the file
>
> $ cat scripts/min_versions/gcc
> 4.9.0

Exactly!

> I do not know how to handle
> per-arch versions in this case.

Perhaps we should just push for 5.1.0 everywhere ;-P

Otherwise, we could still have `min-tool-versions.sh` with something like:

    $ cat scripts/min_versions/gcc
    4.9.0
    $ cat scripts/min_versions/gcc_arm64
    5.1.0
    $ cat scripts/min-tool-versions.sh
    if min_versions/$tool_$arch exists
        print that one
    else
        print the default one: min_versions/$tool

i.e. having the plain files allow us to extend the cases without
listing them explicitly in the script, plus it is anyway useful to
separate data from code :-)

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kVk5BwAfXmnfKGPwMavfdHNqF1gjq9D-U4TmMipS4yoA%40mail.gmail.com.
