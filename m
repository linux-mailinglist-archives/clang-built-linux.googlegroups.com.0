Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBDPVWCBAMGQEGRAGLIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id C075E339BAE
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 05:07:43 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id f2sf9611529pjt.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 20:07:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615608462; cv=pass;
        d=google.com; s=arc-20160816;
        b=jMTOEf6+t+mf7dmQsGT+BIK3354QkDG8F4eWtvXfjnpWd0iYW4KPC6YbLrQ6SpVVaf
         5Us3FntMqo23LFteyS7S3CiLCNtMN36PcSBZb0K1JEXmKKLer4EM6SP4qnnfM1vmpRcS
         aX+wwazZ6cI6eeMasBaQpWTlQxKXu4H/kp4Lr8gnsVnq3bnmX0NqbxcCySytKnVTHc4p
         af7wDdzn+uBz9U/n3p/cWbFalKhx7KJMrfEGCOQm/VJnBoc0LDPh49JE1z9S9AXye/WS
         QRwBbevdbrm+jmWmyOo0h+n+MHkUczXgCt0qfiSXt1jlp0uQ8vhExZFNyBj+k1stzKyc
         6Vtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tiUNBl2fceKB8D3eZyE4JcVzz1T+prrB3mJYIFFJtPI=;
        b=OKfttO3HDJsBeef8OJAIwpiuYQtlYHDI2e5DcI4gSW2/KCVsZmghGLIUy8j9pvVPhV
         ynf0hN+U/ULkULiY+VyxVFYpw99NcoGwz93eIy0GcNhKz72jSc1qOr8JWsbcW9HpHsVb
         fBgRsHVjJ+vDpYamIaBBlAz0t5el7yYRFri8Vef+ta2dV8/xG6FWLjtj5hGsk6L/fEWy
         bmX/eqwNMhYAYo/A+NMCHNlPZwlQDo9FUAkzOLCfIC/s5N4D3IiTJdfa3d3iHS3ncD8H
         sGXVjmHH08foNpze1emr1LEY+03373QZa1E8L4UKnqwF71zdtiHuqM2QvEJ3yo2L9Mrg
         8N/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=etLH1ZVl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tiUNBl2fceKB8D3eZyE4JcVzz1T+prrB3mJYIFFJtPI=;
        b=WROHFpqYaQp3+MOEMIUDlre5zRQGv27oifLUkff8tR1bwvJwNW6PjCnlpPSpmDYzhN
         rIaAgt5YUjN2U0s4RdLNnyMSI9Ieq7FBP2yY56vs4rVijae0WGcpR+x9NuCORU8nr1zo
         BuTQLIhQsFS0iKDTVIG04r1pta8fmXFO+DTyk4mPeGiY7WINUknFgjly9B3cK5oIxXYs
         Dxhg65qjyLCx7NsZsdyyZ2hXUU+R6H9HcsqMppbG+fUK6HVTrepAB7wH9gD+H2IblXHr
         BjSOXzkCJp0kIlf/jyt6MML1eo+PAEMVSe8OR1PcytbwHg4p5wIvFVhj0B1M1HqYUIEx
         Joyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tiUNBl2fceKB8D3eZyE4JcVzz1T+prrB3mJYIFFJtPI=;
        b=BEKIMF+lYf0L0VKEhvZhXmse9b8RpSYhy2Qlt5rLfNzmmmC8bBMSRuE7tQzpWkwNov
         dJAbz/oem7bGESc1nxp+n2gq7cWQhv+W2YVyrF7zlOrPYgO011x6jAW91fQK7NqUq35C
         wo3eR+s9SWQgU738kzHhGw2fTBleDC6pGBaXYEjNVJ1ysxXu8lam9dCRfymM/cwCZVuF
         E7Hja50sRCQLtw/Gxv94r6rI40ZyS8wX87caNozzfh9doLkWWi+1kCYI9uvxPhDURTlN
         d9RYMdfqHjTQ1QytNdmbkuD5+V4cGzqI7UJsj9emLvZAkuFsFgnNVfsK61hHkaCam6wg
         5EFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318Sp99EdNr1S6tBjZDn2rwd7CN0hkg05Dvo9sY8HIqf1B2MEFm
	PspFzJ4l1VwI+VkuMyZG/Bk=
X-Google-Smtp-Source: ABdhPJxmbqWcLOyE+0W87bOY3x3Fex/SFf2k/Ty1pBNqWJN0lkRw8HOX3IafndzGm2SLj4v1Io2JMQ==
X-Received: by 2002:a62:5ec1:0:b029:1ee:7baf:8ed3 with SMTP id s184-20020a625ec10000b02901ee7baf8ed3mr15388722pfb.62.1615608462099;
        Fri, 12 Mar 2021 20:07:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d50:: with SMTP id d77ls4468502pfd.4.gmail; Fri, 12 Mar
 2021 20:07:41 -0800 (PST)
X-Received: by 2002:a62:e119:0:b029:1f8:9345:a099 with SMTP id q25-20020a62e1190000b02901f89345a099mr1398640pfh.21.1615608461442;
        Fri, 12 Mar 2021 20:07:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615608461; cv=none;
        d=google.com; s=arc-20160816;
        b=vrC+6XKdsfnxs0cPwgrPzzwY8wCtbNA9Os8fY59j/kFOFc7YTHZfMcU1iFLuze+OkZ
         1oig0w0k6QoNhjzbAQwhnBiFtodRbI0Bu6YV0gSn9D7bX+lcbVHCcUxocjKxK7lkOVsW
         WZnN+B4dv0dVjP0Ac+Ms4QpST9G1UBqJtbt7EERdgVoFFPUQXQ2iwOfQEbWmPvjVyiae
         O9fg47jb1Qrb8uj6bBf32Yaf3naKJ1/0bgvqeyRNZi/P6/N0aw0TSHoZoBlnPGTRhf6C
         moZj5Vj4u3pNknpItiNXYu5qIkCaSl0zLaZ7T9/SrXuWuZiJcwSobAYsLVaMZ/8JFfBV
         dyWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=d1qqVkTwhDhriWXTuygvoyxgl6m4yLldVhl4R/yRa4w=;
        b=Q+EQF/TuR9SCQbDhIJ57ZGOShFKyEf/6dj0y0Hmsn+E95wi2XHp6fMHZ3RSbLfUWde
         s5jPHjQmCR76kXL+pWg8yGaAo10r2mHiHqlCCPvcMGY7hCzU0/8Fo8rpCkA2+2wKvzCP
         PP/M8n77Tr8rUXCsp3c0tzTKuKLo7RY3VHlDej00Bk08pp3iTouxxr4SBgYtVgY6x+Tr
         uYOotu8hanyqz31pkDYIqDk0E8mYycSm0Ft2HuCuEyKRZ9s7MP5QpeusrLcS65yWKvX/
         0HrVwpZJgrho1xmhD6b7m4syWVRuQtfyRJSbeeG+j5c+xhSTwq4azHKElmUbEcqcboIk
         WPqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=etLH1ZVl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m8si28523plt.1.2021.03.12.20.07.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 20:07:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F05D064F33;
	Sat, 13 Mar 2021 04:07:40 +0000 (UTC)
Date: Fri, 12 Mar 2021 23:07:39 -0500
From: Sasha Levin <sashal@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
Message-ID: <YEw6i39k6hqZJS8+@sashalap>
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com>
 <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=etLH1ZVl;       spf=pass
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

On Fri, Mar 12, 2021 at 09:28:56AM -0800, Nick Desaulniers wrote:
>My mistake, meant to lop those last two commits off of 4.19.y, they
>were the ones I referred to earlier working their way through the ARM
>maintainers tree.  Regenerated the series' (rather than edit the patch
>files) additionally with --base=auto. Re-attached.

Queued up, thanks!

-- 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YEw6i39k6hqZJS8%2B%40sashalap.
