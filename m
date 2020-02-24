Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA5Y2HZAKGQE5RKFG7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id E00EA16B574
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 00:28:04 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id c22sf12496331qtn.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 15:28:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582586884; cv=pass;
        d=google.com; s=arc-20160816;
        b=owy32wO5zDsQj969sxvJpK7u2G1ZrxeFiREteCKWzAW2aI6OrWksY/tKKR9GVpePb0
         wABYbvAQVuuyCxNaHQXp7tKExSR3VCU7d4TnMptdQxamFh7xi17aFYASMj8URFW/odhI
         nrp99Y228FjhR9dWcCARyTjY4DK60EShqoAuMcUB1Nkbf4arkS+FzZc/lLDyGVfnhCWM
         j/MhBFRodvqHlNSNOhVMxO3DJW9ZehsJH98T1gTL08omdb8vBj2izVhIvdNdnXJn3NxI
         SLEmaLAV1WaEruQ4oVZMnf4swgSaUNmwgiJPyqGG4upGrKb6EeqRaVLFmzExgA9cD2SY
         axHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=PPLF/N1UyZZb5qQtGEnpTk4DER+0dVJRJPbjoG+PkwA=;
        b=VmkNtb4pnxmrux0VueN9J/d6CjIKUMKrS44ihfNeGJpsxIbn/nHeiNnrNXxtmQOHhg
         H2ySBeH0zPvPGHzZS9rk5dLml504s35/pOv+DRPOIlELv2LPqcwwIy+lUp33g4+/akBq
         09v61F3Lu9JiHtK5ZCKsh4HaTOlFvhahEKsUX+ZBeIXA+7LnHYeA/VxNVZbWTM2f3PpD
         7Q8ne5A0/Ck1UZUj7ygtPGsTa1w9GyiejW4rUPv/j8AsTj5LmhRuxJIXUtpcB/I3OL6w
         FJkam5lJHdpkINIvUcQMuNAcRBo9Y+RK+21KJ7iQsuTii8sdHziHfVBKuhEEI8P0NtqX
         B5VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N4o+TwQw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PPLF/N1UyZZb5qQtGEnpTk4DER+0dVJRJPbjoG+PkwA=;
        b=X1NHwNzL/zDMLSbnHrTqSjGEKJTbuuaSwtXryD8hkMp6oevzZlIMXYv8btIZsCgjfY
         diuyEJyXjmStZO4pueNLWAl7pD25MdrCTZE3GEJGwJsCO+DJc3uL6W61o6tL/5BnQeHi
         W+XPrwHzJKF6T5FrKvcBbG+Qvp3ZEy65xWh69/Rxio7P2Aeti2hXff1qAOxWrrNrzUHk
         SV+KPvP3dDRzCtldpGy3egnn6X2M12sgwc2F0RFauIFzTWWIDisqgjQMMHurvO66Fwe/
         Ndp+H5VfP2cJIU5pA2pK7BO/eWsv5LI6w7Wh8CpMOqWJb7EwepiMU2B5mC5J0g/BGBHB
         yrvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PPLF/N1UyZZb5qQtGEnpTk4DER+0dVJRJPbjoG+PkwA=;
        b=THsgQ6tUYqZjflsZ5cT9i6Rf/SbzpGSab2q8NNOIx6WjENNE0l7wm0sBX9q1zDINZb
         Kx4WRzX5Rf8PcyODWBBEhZ9tm0WGmdj5qmcP1CRFVf2HVJUYlaNQfjZxgcalRhA6eABy
         kHvX9a3AA4SHc5HSKe1i5BB+A4ULbWU3SbZhkZ9RMC/4KhiDFqGh7qP7NNbpuxCXZoe7
         gyfMmGPeznX47N/x7cTbfLliYU63n9N9x3VYq4JjNZi4DSqSCCiuWnsL2DJRrLdsDcSr
         swzGg+S+Unf6Sa1+2Re7LCo5lBcPmlnwIgC0ULE4utY2UXYUiG7Mdx4ajyuK1AyQCZYa
         Meng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PPLF/N1UyZZb5qQtGEnpTk4DER+0dVJRJPbjoG+PkwA=;
        b=hxDu2Je54mk3puORVxKMtGtgPO3/6fE7KPdqhIdyvy7bNznLPfQDBR1yzJ9O7dgPbe
         OdtLDgeBIBt1tH7sBnbGfUChsuc0VGs5yMgBLiC2+f9NHnwimMT4giTkjZ+NskKoYgfG
         K4PjZLolbBGkPBYNXoO8TKOGBNwDbYErs9BSELM8Qi0JSVokAd6mma/bTlEq4T9ynoR3
         nOeOXtt/HTCGzJ88R0LF+8gkrisrLPWdfQXJxi1TPN3WwlSpjy82LV98Jg4u2xKvtuy9
         h21vwb6JSzMplK793wnUg25e+LKy4XQnxHkeDAhWuJ08UJcqrAWxDfUTSlv/xptofUew
         u4zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVE51WyJ3rgB/8dxQvsyo/YiefqEktIDCeo9dKtvEIHRWrUS9TS
	9sTXjDXDyw7SUQeREMqZcYE=
X-Google-Smtp-Source: APXvYqyT6etMNbRMlECAXPWxDaPr8aUdbatyRzYUl9URKpDsJ0mLEgzkZOGJiIQRk6FPuFDxA+yCag==
X-Received: by 2002:ac8:1196:: with SMTP id d22mr50800240qtj.344.1582586884005;
        Mon, 24 Feb 2020 15:28:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4b68:: with SMTP id m8ls2424088qvx.2.gmail; Mon, 24 Feb
 2020 15:28:03 -0800 (PST)
X-Received: by 2002:a05:6214:1933:: with SMTP id es19mr46212123qvb.14.1582586883681;
        Mon, 24 Feb 2020 15:28:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582586883; cv=none;
        d=google.com; s=arc-20160816;
        b=noX3h5h8d12K+zGnh/kc6OhL1EtX0uQa3UlkrT69z7GpIX6Khb9GkNeDl3Ii8JeE1t
         VnMmE6E9cyMH74/f9SKYDqHrz0egY+qE2UZEIMkhthtXSV3s14Qqer0ZPqFnXuZS+U3a
         lIO97btPnphlWJfx2NvhBekha7NC7F9FKmbWwEUZxEskv4q46y7BdPLIPLfF52x79ALb
         k2Vr76+ffdxQNi3Y8Sej3ONsJ67aRaX0DZeNahWWCIBAn1r4POUbK5SjYjXXRECZzyFP
         Qz/kJgFwiRhgz1D/p7C0QO8k012llbfPNSKpxVbWqpjgqU4o4MwPtlbaFGqDK0D3y8vK
         b3GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TPDmqqc3T4bvngZN/YKdkDbHxV5bVjmqfQ9sRt+vMck=;
        b=w+bM68RfJeeEs0+Wxe4q5PKd+oo54lpCLbgZj7cJvVk5FlbxNJnSz5EucoaEw8ATpG
         bFfuCADxiv4QK1vwJJ1oEC1xGlYEsGaDktvKhel9DaNfq/eCBTZnDOW+GQmhgjXRqt2F
         N/IzEzJ5K/8JzPEgLcXIUOE9E+DvyWKi5ZINXbWUeugiwRymD5poPJ5ypV7vAEXd0o6q
         qr39Sr2Em9QR1e9mODt2HPTXCTlAak7aTLwp8kHHu1ag+pbitwYFGolVbYM8nET6KOxj
         OMN5T7W6me0BwZeOZHsfjx07w83wfE8M3HYhmrdCx1V1ENNKm/2X/eW9v3bKrmKPhP8x
         FSLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N4o+TwQw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id 76si725936qki.1.2020.02.24.15.28.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 15:28:03 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id a142so10710169oii.7
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 15:28:03 -0800 (PST)
X-Received: by 2002:a05:6808:b13:: with SMTP id s19mr1148274oij.119.1582586883129;
        Mon, 24 Feb 2020 15:28:03 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y14sm4534705oih.23.2020.02.24.15.28.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 24 Feb 2020 15:28:02 -0800 (PST)
Date: Mon, 24 Feb 2020 16:28:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>, Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH v2 2/2] arch/x86: Drop unneeded linker script discard of
 .eh_frame
Message-ID: <20200224232801.GA31729@ubuntu-m2-xlarge-x86>
References: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
 <20200224232129.597160-3-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200224232129.597160-3-nivedita@alum.mit.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N4o+TwQw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Feb 24, 2020 at 06:21:29PM -0500, Arvind Sankar wrote:
> Now that we don't generate .eh_frame sections for the files in setup.elf
> and realmode.elf, the linker scripts don't need the /DISCARD/ any more.
> 
> Remove the one in the main kernel linker script as well, since there are
> no .eh_frame sections already, and fix up a comment referencing .eh_frame.
> 
> Update the comment in asm/dwarf2.h referring to .eh_frame so it continues
> to make sense, as well as being more specific.
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

My previous review conments still stand,

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224232801.GA31729%40ubuntu-m2-xlarge-x86.
