Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEMJTT6AKGQEH37EOCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CA428E1CD
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 16:00:50 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id l11sf1004777vsq.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 07:00:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602684049; cv=pass;
        d=google.com; s=arc-20160816;
        b=USEj/X4TUH0le9h90x66gi9h+I/dQDi9bqcp6atB4GGF4Pj6iD2HlxNftIE/cOgWUP
         NUdKRFGeZ0jnalnQma4XWGFya+Yc9VWS28IZpBa+IItde43iTq3lNv5kJWD6TR2UaGck
         QinVKIZ4BzL0+qIorl6RN16Qt7baulkEjWF4MGCuaQkLz1GCfjaD8i8q8SpaWcAwcdZF
         f45XA3i2aVwMVHiIdthYFogMVMnIrNYgugRKWSnRQrnSZPfO0Iw+6kTd7hoRKbzVHnf4
         ZWcbIImuC8iqito1nSakl1gJSLmJTV6RTpaj/PrqC9+Ai9mbyriJ5su1sKEZjyv64nD4
         u2tA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=baYLkHBO4ahXBfLhbgqg8qkIoFbO0mn+ron4teUL6eQ=;
        b=y7GwU0oARCpkiFdVouOmXMyCXpwSk3BIVES5jXYCo1VPc/iYUwp6rNo0smGpkXe5t0
         R2PY6RNWGZK3tN+MDqlUjQxbkm6DKH4pt1tEtoHviECBHoU28b8bGSZHbBMz0gKcGy3l
         byQolfnyPFteEmSHmmTX5OVxNXpsYuQhN1zHyZcwLfsePoWfmzJWmwWu9dXefocCL2Z4
         UE9zm5pZs3fZzPPM7hqrWMAvQ35aXRE730lG+p79+lN6MChy1jUGfrBdnng7M+X0stHK
         tAN3LNaSCNURZ71ctiMja2REccdUr7rBgD4n1fraD354Cc42A+jMIhRClT+ZN1OixTgV
         FwmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YrcHihAz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=baYLkHBO4ahXBfLhbgqg8qkIoFbO0mn+ron4teUL6eQ=;
        b=f7llujGX5RNX+KiMFeUIxlP9zGW0LhA5/WzGsrVKV+7E/VOo/fKk9lDeyJ2ukfMA9L
         mnnkD6Hqqc6gNPdVgJedGYO5gpIpvSHBSJcHIeW3mDsWeIaJfcWauBKLzjMSv4+g71wB
         ZglWsjeA/ks9i2N/mdqkHNJu5R2HylXlajA0B8C0PMRhPt1wOnPSr+0jIQ7ldLPGdfz+
         eqYjWsC1HoEMqpBbdzb1W+RqzTQwGJySEnagH0V2n4XV/DGNAze2C/dsNeKPOR6LpGBW
         bI44bdierxk0mO1VQFt4Npe/st7c/B8dtbQmfIv90r3rjdTdZ0JNTEx9BUdTeY1S72qQ
         A1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=baYLkHBO4ahXBfLhbgqg8qkIoFbO0mn+ron4teUL6eQ=;
        b=iNW4oVuy/BwGt4IXk0rs7dUH7Zojvhm7qlAbq5Dnuj9FYh/PghPkpjTkTnbLp4/rKB
         +H+yYtkD1t9jah2g2Wd5ZNHWNRq0lP4eEDo1JhFORSpEoq+QtNjRmwFZrLRCVaQRWW7c
         vKm6fkGFDQ4tIcGgBCdFnIXp7RYJJIQ2laPNCT0Hey/tII1J9AKrxc18JHrEGCPBiIH8
         o00qCiHCe+D5t6bKHghppkkqFnm6KKuuC94ifuNnlCsDtNIHktEIInVXPeoNOA5kCfHj
         XDV8hfNHcl2h6jT8+4yrglNnxb/1I1TP9f9120P7i/J2UCyrpkQzp1w5qIH4cGo/CfHt
         55dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kwgxbL5OBZmlFtScIq6XrbaEWu6qOgGIPhDgJn0Xj8/oZIf9m
	8h3uoYcMhAYiGXS2ewfSZrk=
X-Google-Smtp-Source: ABdhPJxfufPxvJmCAynPpvolWRBMKE3XB2v878Ko5VLDRRIIdxOBVdWUkoayBjgZOzwdcKRaERl01A==
X-Received: by 2002:a67:ffd8:: with SMTP id w24mr3248409vsq.18.1602684049782;
        Wed, 14 Oct 2020 07:00:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7684:: with SMTP id v4ls236915uaq.10.gmail; Wed, 14 Oct
 2020 07:00:49 -0700 (PDT)
X-Received: by 2002:a9f:2944:: with SMTP id t62mr3054732uat.16.1602684049303;
        Wed, 14 Oct 2020 07:00:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602684049; cv=none;
        d=google.com; s=arc-20160816;
        b=ySQKyvnrR3m4npxNOviuQp8piRbmnvyitk+IYBvC/4zSdjqQ9utrGSDBb8+SCG8Z++
         vtdF/Y5TkZ3qmsRWHNd/c77gl5XiXHBHl9ypezxerw6Sc+eSekrXO6Mox0T2vKumMQa4
         I7DOcsxoiGSuKUsjZh1GA9emgBNXO2DmuxkqI+w++1dxtREBVSW9bIrSuwGHageIfbdS
         vXXr4oNBhPl/l+CNo4J75jZDmIx7oDabl96txaw0EijYq/M8s+0VqTXls5KPhEYQRCE4
         j2qqXqlBIfXu3mznz+7CjpMCk/Q4BeKRO6HGQBhFLnsCdx1Ch8Buv92ko0yVuFwcm+MS
         +wfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=N4OSrPr0YIGHGLSsr/OXxLTw1V0nv2gx+j8dpkF5pDg=;
        b=mFWjiMA75GcX6Qur0pbRooUzF968BreJWLUFzpq/GMK2xBaFinlGkBg7ZeBrl7AABT
         3iScn169vxp1ElPkaNEp5fcmZJunKzZEyoMdAoWHY/GPhU6RsfYLHMYeRMYfXDMa43z1
         iHrI/AQ2YlbwVqsiZB/CgPe+4g680xNfXIRYa6L6Nvfa4x+73/6Q84smR97LxQQhzias
         X8rhLKMo3w0TdaKCOKy/qWqljQzgqLfT/v0Dam5yxd7ELA/kaQ09uFvjgj3u7cTm/C6d
         NWkkaqmzUttthVW7cEmNmL3z+Qbgz2CW32rF/dSDOmIMrnTeVGNNRgIccowy9AWhZOhr
         2oyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YrcHihAz;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si326586vsa.0.2020.10.14.07.00.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2020 07:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9FA7B2222A;
	Wed, 14 Oct 2020 14:00:47 +0000 (UTC)
Date: Wed, 14 Oct 2020 10:00:46 -0400
From: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Russell King <rmk+kernel@arm.linux.org.uk>,
	Dmitry Golovin <dima@golovin.in>,
	Matthias =?iso-8859-1?Q?M=E4nnich?= <maennich@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: llvm-nm and lld patches for arm32
Message-ID: <20201014140046.GQ2415204@sasha-vm>
References: <CAKwvOdnBqCT0XG298nLqE7=WvxrYJFqV6jZ8-fZX0fF67bLQBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdnBqCT0XG298nLqE7=WvxrYJFqV6jZ8-fZX0fF67bLQBQ@mail.gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YrcHihAz;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Oct 12, 2020 at 03:32:46PM -0700, Nick Desaulniers wrote:
>Dear Stable Maintainers,
>Please consider cherry-picking:
>
>commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to
>link VDSO")
>
>to linux-4.19.y.
>
>It cherry picks cleanly and first landed in v5.2-rc1.
>
>It allows us to more easily use ld.lld on arm32 for Android.
>
>
>Also, please consider cherry-picking:
>
>commit 29c623d64f0d ("ARM: 8939/1: kbuild: use correct nm executable")
>
>to both linux-5.4.y and linux-4.19.y.
>
>It cherry picks cleanly and first landed in v5.5-rc1.
>
>It allows us to more easily use llvm-nm on arm32 for Android.

I've queued up the patches.

>I've attached both backports as mbox files. Please let me know if it
>would be preferable in the future for me to have one email per patch
>being backported.  I tested both locally, and the patches are passing
>our presubmit testing in Android.

If the patches apply cleanly and pass your tests as-is, it's enough to
just list the commits and let us cherry pick. No need to attach the
patches to the mail.

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201014140046.GQ2415204%40sasha-vm.
