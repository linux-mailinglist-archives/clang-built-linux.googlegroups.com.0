Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOEM57XQKGQEGCLUTXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFD9126AA0
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 19:49:30 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id p206sf4317850iod.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 10:49:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576781369; cv=pass;
        d=google.com; s=arc-20160816;
        b=t32slEnOfSK7BetSKwddDz1qkJPLY9NHS1IToGn0fE2FGKLy7PxpDKr/HcZjj/B46D
         sje/WyO7HX3LNK6wCCv9zS2En9ERFzWEbkON7KH+CgFzm6p/kkMI7cGuuU4PiVu+ABHK
         MHsiTZdmxkeP+SbveCU1N4BoWdCTdGua/1pin13aYkanjdEeysS5ZOJ5icRMTXFB4u1O
         w8sG6RJ12GuFnV0liJF1ZustO26+ccj55u0MTvjwSOIJf9FkcbrPkfJpKRhSjENpgM4R
         wF2NBNef1iPzBxtqBDrqtgUR/L572TJ3R2Oy2G0BO/OKjVQbkeqCLe8r1h8mb9v+H7Bt
         4KsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7pehEUAE5mqqROulCsa1SrJWdg3t4eHWbspLlkNiL+o=;
        b=auTh5QqPjTQJ08XFZW+6HkhBf21KxTUQ1kkHSwyDpEAJmkCiWmVvP+CnlIhiVCDNbl
         Y4vuIBqXFZ+HzJpW6gKKOUHGYLWXDr5/Ls7wpw1EK4kFE2V3vriLtNz0Tmi1RWnIRI6S
         V8OWeO9/4cnfelNdyZCX2mCFmaMGlQWKt8RILWn+8OYHKJFIlTxLhPeKoEPS3CQ9ixqk
         4KH20JqOVddcOYMeP27kvtyYUOXeMhjbHNXZD5sWMy8ZpgAMdmZsPQn7mfihi4p4OOdG
         90aQ2SJQPXv5Kc+M9oMCLo1rLK0vpA1KuvOFwnvu7MenaR9gTLCFn5X1EyJ5yZ+Gu7zc
         9HWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CzwiUU2Z;
       spf=pass (google.com: domain of 3omb7xqwkakkwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3OMb7XQwKAKkWMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7pehEUAE5mqqROulCsa1SrJWdg3t4eHWbspLlkNiL+o=;
        b=swF5kBlvdYDXnSdj/wdy2Lray2FVfN/xd86mm65xEj3YDojk34uChglqkfnY/jqA4J
         u7ejmjNUWXXd97wafu3Vw/0p4n0LXZCxC96s/ETDzuejAQU3WpRVQ+TOkyLDNR7hAgbI
         avHr5aqP5OwRRnS00HwT9MR7bZSM8A2Dh/YNi/X+3BG3wSds/MO49aRx197FPqJOhozY
         AZNPoKzkdTiakNoyOYBu24zSqVtK12vNO6lNDAPPnO+WWK20uBL81xZlaKHfFjm1c4Q9
         2tfQrMvOjdZwYhAS+dh6lp7X8Gr+MoYrhdCfRoRSxMd5f3ny6pVOeRUEWdRj4zTY8mD4
         5kUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7pehEUAE5mqqROulCsa1SrJWdg3t4eHWbspLlkNiL+o=;
        b=nv/GwgG+6l5itMCeWynOAxJqD0YTgMaes4GYPXzxaJoI+03DFKS9lLKXRpTQY7gJXd
         qq6Jf1mhya+PTHJoZrKwfLhJRO0F0qwW26AlhHcWJ8MBCXjaujvyW0mP+SC3t+3hkyyW
         E+YNI2T4xbdNdVwDShf8DkpPiKMmY8WyVLAEHjzk/vPhE7IwsrB9Nogkel+yrkoWXaJW
         BhtvrHD8v/3azWaVodBaPN2udNWYm5oY3imEb01F3tuU4q5LQODEySYt2/VNTgwFZLWk
         OayRXy8yUxty6fOwxABsaxmjRuQUhPJD6PI4lhKQOW2MWETDKh1E75+n4tIqv9x3tDYj
         B0ZQ==
X-Gm-Message-State: APjAAAXla9bt+jrwsO7bVh9pU5qHZygg1T8npiN63wGp5A0WG2BXK/3Q
	4r7CX9n2vg8txQESNS3b41I=
X-Google-Smtp-Source: APXvYqx3tgcVQGwzsyMshnmkqKoKtWsYREfLpHnVofA94y7PukuV1Rx/BUpU1UdIVboxkRIXG2ciLA==
X-Received: by 2002:a92:d902:: with SMTP id s2mr8895861iln.223.1576781369071;
        Thu, 19 Dec 2019 10:49:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5f17:: with SMTP id t23ls875399iob.10.gmail; Thu, 19 Dec
 2019 10:49:28 -0800 (PST)
X-Received: by 2002:a05:6602:220b:: with SMTP id n11mr7281669ion.6.1576781368713;
        Thu, 19 Dec 2019 10:49:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576781368; cv=none;
        d=google.com; s=arc-20160816;
        b=H93Buewv4uZ2Gi7XcPkyoV1dIklMkQgOAfrSSCRHSyhrLA+62rPxYmi/CxLeJAZFc8
         WJe1rzycQdiM5D0Lgic+CZUq2xRZ9nV3blygB9V4UIm6cf5xQFs8tghKdaOtSputa2VD
         7Ug3ZdEZCzI+XCmFux5c09b0+YA3Qz0/gbJJLP7bvBlt5Dm/Rh7HEq+VUXHCrOpZ32F5
         LjclM6lYbJSo1bItPeLRLkvXQF4Izf6dbG60LLy8/ki+N8mVI6oFRPUwZixX3mt+PjUV
         7OXc6KS98afNzymtbjUVV1WXxg4bnGl7C1P1oREyNZkgWpQKNhyrKGjyRD+DFjzoiyD3
         gYvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QvAStn8TBlGPLBczTd25Iv1mJFk80FYATk+vMJdp0y4=;
        b=z/LuLiAYNjs8qqEWgF2gLLqxvRbkBHRou+aLPcuTJ4AdSpUciPFL5sm8e99lUttSRv
         l95kj9DZIz2FpznaBAPYY8aIZzPSu4oJ7T1XX8AUpC+u0i3OB8Q2FlIt8aTMh8MBUlPd
         NGIgtwU1hlCWJpWxZkGEfV7Fgck3mUJj85OormBxjMXHell9Hi/SzO1dppHoaz6+T1bW
         5uLe4jA+VPT+pKqj2PkGoNVsOqPkH3xid1hxAQtobfS+9AmHfUxjOKTGNJYxlhhbn3LA
         rP8QvRfd7p6+xhTqWYwdUXQeKXqY8jJlQSUrK+krwEPs+/8A3OHW31EYsGzEJqX2tRo1
         3osQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CzwiUU2Z;
       spf=pass (google.com: domain of 3omb7xqwkakkwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3OMb7XQwKAKkWMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id i4si264703ioi.1.2019.12.19.10.49.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2019 10:49:28 -0800 (PST)
Received-SPF: pass (google.com: domain of 3omb7xqwkakkwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id p12so4270851qtu.6
        for <clang-built-linux@googlegroups.com>; Thu, 19 Dec 2019 10:49:28 -0800 (PST)
X-Received: by 2002:ae9:e304:: with SMTP id v4mr9534945qkf.399.1576781368073;
 Thu, 19 Dec 2019 10:49:28 -0800 (PST)
Date: Thu, 19 Dec 2019 10:49:24 -0800
In-Reply-To: <20190808123942.19592-1-dsterba@suse.com>
Message-Id: <20191219184924.105306-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190808123942.19592-1-dsterba@suse.com>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
Subject: Re: [PATCH RESEND] fs: use UB-safe check for signed addition overflow
 in remap_verify_area
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: dsterba@suse.com
Cc: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	viro@zeniv.linux.org.uk, natechancellor@gmail.com, 
	clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CzwiUU2Z;       spf=pass
 (google.com: domain of 3omb7xqwkakkwmnbjduwrnabpxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3OMb7XQwKAKkWMNbJdUWRNabPXXPUN.LXV@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Yeah, looks like this kills two birds with one stone; both observed signed
integer overflow and -Wmisleading-indentation.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191219184924.105306-1-ndesaulniers%40google.com.
