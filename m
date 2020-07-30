Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBXYRP4QKGQEO3QBFPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C8923373C
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 18:57:43 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id l15sf1140754ybq.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 09:57:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596128262; cv=pass;
        d=google.com; s=arc-20160816;
        b=WHc5eglvP4505vrm7apsmDbyj4PykPi0107SbAdbcRT4g2BxBLJO+2cS4BBnq9Hbhv
         5zJ9KOThW3OicDclTs5Mh+PQyyAmRLEZk4LZ/KhD3aBaCdCPyjKQwGRfZQITmOmFTsSe
         kJIS2uNQDR8JENyACAFwMU1UlU1sOG9K6wqfvaZei+ZaQpcFKrSU3V3gp+8k2LEGkfGr
         hYcg1PjzEFXvl/S6kzwAlzB2UmipWV83rcm9iiHaLO2iapnYU/URVD+b5QjcXau6y7oS
         1Ybe/tv+31EpfiXoYBeg3OscnCVclzyfbJbAkp9hmRK6PM6dpXbGnVHp2+mNF/hVFWFD
         rb6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=WoZtWpd38WmxBkoWnk5Wi+Gsw52RcKXeLAXlxu5n4Ik=;
        b=ueN9OD2B80tfpY0GwpUCAlne6ki9e7VEwoamLlm8qEcdhuPi3IhwfwvpOviVIyZyZl
         TEXRAjBve1YatDQsRK9DYhRHJ4eAsZURLHFqh+UwEoGB2oIqHazbooz0v6oE4EuEe6Lu
         9AGzbkXycXJxASQhITczXBx8lyan9B/UYmktunL4GUp1JKDLyMXKbbqyEwmxvRl5EyUP
         KJqf5Bi+UjOB6cyrPhXMz132N+6lV8nebiR26CS6pp+xiaTog+Q8MFJ7UgzxDjFiA/gm
         l6UYEPkAAgN6sw5nZ0ZZaDuibDS77NJJ84z8y+ROX20p5/BQJdCQ6DHc3EklKMZdz858
         VfRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lon34e/E";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WoZtWpd38WmxBkoWnk5Wi+Gsw52RcKXeLAXlxu5n4Ik=;
        b=ct3ORslPQKoCoXgmg4CqP3dc0EG6mOE99239fb5BHYprzzQVWVQdfbHbN2oyAsNPMI
         m7GIeHsLarNYEQYaO0JMuByTuBS15PLsuJtgyfmdc2B9nmwn7uwYEFQeJhm2Kpo8/2Al
         i/hCqfZ4M6vmEErhKtRn60w80j+yOTwgVcrX9gpiWAhNxoOQvAjJrSz4umX6lPE3WNCE
         aDjGwSY9eUV27pnZ4i4NYNiXr838Lmpq219Trb48Wy2CRcDSZgDtytstI0jOp7mnnryH
         9zzBoLz1t1HwlptCnQxe/eVbu0pjKn17YRGVDr5Xww7KMHz8i7sDCLjczSepJywPmEiV
         7HSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WoZtWpd38WmxBkoWnk5Wi+Gsw52RcKXeLAXlxu5n4Ik=;
        b=nujm3F0FOVcb1aEUGdhzWBZGWRdXigFiIOSwOCSgBosLoDVbA09HwOG2M96AzkHUF0
         n1FMfjCwKaH6f5kYTHOUuM1AEQErZp7aP1iqEyzsc2WeHtlcvVkMfp4j42R50joSXSwB
         Y1zzGV0sPqg+UvH9orz+uNwIbux2DlDZ3soimWE6uolcXt1zBcs9okCwmHJ8ieLgah28
         trTalyaYgeFWh6ZxfKUPrl5dFqbzJEsqKe1D0VFI9zYZGnXb1EDq4bO87T4zHIuUMM+r
         n7eX4dXfreKjDgZ8W/aTIj9valRv+cxy91hTAeesWXZAD0oGA5Lx2d6rXmslMBBdTZyp
         Jm5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WoZtWpd38WmxBkoWnk5Wi+Gsw52RcKXeLAXlxu5n4Ik=;
        b=uMn7tNC61QgYGpb7IsQJcmCIbm+TJAuS7NwDnARGsAolWt4Vzm3ir7uHY+NoAiQlVx
         Fzm2cDjxlsuXfBV9IxwEtXl1XYvoukiN9zdpj59yN43A384GGXcEJt6qL1JQHIcg4Iax
         uqvH5OS1omukhMe2MiqrarOZiaBBeoNMRXWhO/0Yufezuz/7Kp1JnKaQmlb+6dhYm6bC
         XvdbcRow9DFgzFQFzlR3nYr3gaRLmpPEG6s88p0MZuZ6/DKOr76aVIRFILVtu/6qL0X9
         OeNPX7B+EteVoWllOBgF91j9blzqeRVHz8ENWczdHnob0dyGuvNPqgMhJNN2Mf/FV3xS
         M8RQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oh7kL9GdgT46j/8dJbwO4KQO+z7E/jIPpTtZ+lZacN4/8WaMK
	D764n6CgL0ApDGGc9lX2uac=
X-Google-Smtp-Source: ABdhPJxvTFYqIy/JzlmRFUBwGd3zSx49mkhM3P1iBh+QT+KSFWglt8MzYi4ZoFzF3iGRT4qZob8W0w==
X-Received: by 2002:a25:18d7:: with SMTP id 206mr60741490yby.473.1596128262624;
        Thu, 30 Jul 2020 09:57:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d451:: with SMTP id m78ls1755960ybf.1.gmail; Thu, 30 Jul
 2020 09:57:42 -0700 (PDT)
X-Received: by 2002:a25:7344:: with SMTP id o65mr40247435ybc.417.1596128262238;
        Thu, 30 Jul 2020 09:57:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596128262; cv=none;
        d=google.com; s=arc-20160816;
        b=tT0HvDDfYbch5VC1HrH9nuyfmgw2/rqeIU5uwQofRIHYUy+BZpdd3/YDw3pMS2FNLX
         197vN88ywPmg8yvZw3UkFplz29hfDWadUDXt7EIwBqU8E2ZcxgyhTzKhx6rNDc0haxR8
         tfZjxNCL7laY8rI0XcQAmuHUVR3XnJySx7eLev8udgS8LCOKoDE9Gq4n1iUg4a0Wuhaf
         ydVxB7j/s8R2scsVam5szxO0Flzf1VP9G9ukLZhIqjrcW6rIIfsQkzSjBA4ndrVaHgOy
         x5GGm0j28VNDupDEO1rLRbcN1mLbeZK1BjMrCZLkQKAc8PmTuv1BMVMcEPh3sghbSnet
         pnmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ETunvLqbk5CjqHvVxeZIz++L3Dx+FtAcI8w4/6l5xVs=;
        b=tGKCVUtBgeW/XveLyMBrb2RkKIdlt+wL3E/LKXcJnJPje++WujYQh5drYItJDS/KmR
         rNAeW81SXkU3iu90U0FkCT+gmckDjVKsyCEvlcRDV1PlD7BA7aZ3eihLnCfMlBeQ59/E
         UtyXAbX9XAQVhwZ+USvR21J1Q0Xg1HGnqMYk+8R123Jwp+U1mQQuUuypQTV9gB3dcMhk
         oEViKEG1H/9InydPH1Xf4yZjwVZ2wyu30k8CnBjCjlJ8sdnbdysCg0CsDIeYgQ7znuOR
         /KdvItSN4qsoerxVcW+U1ifX1VYuICwmwsEHlaKt7BHP/MCnAtHLq0Dg7nJGPQCpswu2
         TdRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="lon34e/E";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id h3si456337ybp.2.2020.07.30.09.57.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 09:57:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id a19so6824642qvy.3
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 09:57:42 -0700 (PDT)
X-Received: by 2002:ad4:4e07:: with SMTP id dl7mr31018qvb.134.1596128261838;
        Thu, 30 Jul 2020 09:57:41 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id u37sm5229702qtj.47.2020.07.30.09.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2020 09:57:41 -0700 (PDT)
Date: Thu, 30 Jul 2020 09:57:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] arm64/alternatives: move length validation inside the
 subsection
Message-ID: <20200730165739.GA488827@ubuntu-n2-xlarge-x86>
References: <20200729215152.662225-1-samitolvanen@google.com>
 <20200730153701.3892953-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200730153701.3892953-1-samitolvanen@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="lon34e/E";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jul 30, 2020 at 08:37:01AM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
> sequences") breaks LLVM's integrated assembler, because due to its
> one-pass design, it cannot compute instruction sequence lengths before the
> layout for the subsection has been finalized. This change fixes the build
> by moving the .org directives inside the subsection, so they are processed
> after the subsection layout is known.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1078
> Fixes: f7b93d42945c ("arm64/alternatives: use subsections for replacement sequences")
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
> v1 -> v2:
> - Added the missing Fixes tag and dropped CC: stable@.

I think that the cc to stable should have been kept even with the
addition of the fixes tag. AUTOSEL will still most likely pick this up
(or even Chrome OS's patch bot that they now have) but the cc to stable
would have made it clear that we do need it there and the fixes tag
would have guided how far back it should go (rather than an explicit
version that is added).

Something for the future I supppose.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730165739.GA488827%40ubuntu-n2-xlarge-x86.
