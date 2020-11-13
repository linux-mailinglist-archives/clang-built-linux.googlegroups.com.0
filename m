Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO5GXP6QKGQE6ZTL6AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4162B23EA
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 19:41:00 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id f5sf7248420pfa.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 10:41:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605292859; cv=pass;
        d=google.com; s=arc-20160816;
        b=mhha+vhVUSVfn577uWfX1TZeAU30uSFQ5tP1RmJNJ0nHRBZ43pNFNW6DzIKe2PjPJB
         a1nv8/GecMJgZLO0QASdf+sKoU41xjv7s4fJsNi1mSIEb3KlPOouLXOf39qEN6qFQqn8
         In56hM1R1IxzVaETGJMq+XIWC7gjWfQue5bizIfTf8v/QngJxwlFqIkJr8S2t5B3TqYs
         e2ZIyAMtHhAmxunsCxWgeuSWKWBIi58Es32eLV2lwb5LH8eG4NW0DHed1UfDcsG4PfQk
         9n2gVYeXuBJp683EZwTRtqdc9JAp7xm52LMvcfJ2suy/hdbAttFM+UNYTPdYCdNidq10
         QyqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=/Kf8Rhgkh3q8sED8eaqL98ufCADv2Yt8tqhbx1fhuvI=;
        b=yQTSgUOnbR06jesMIgAhLc6sJzqUGAhcKTxRja+tEQUJigQFekMTp3hVdEq3sPU2ux
         GyuH+u5Vj1kkyAkTGhSRMYVvc+64lcPE+Fiqs1/YD0rvhSiSwU4+yGOvfXGFY6kecE1C
         MoZSj1OFFM+YgwxzBk9EmCYdbc18K8rse9azycePjk2Py7WeRB4Bg8iXnI+H7SY0sXBo
         VeDIzDDLD56Fzu0sOxhDP+WZf7MFC8fDWVUMOLH2H+t+F0R6mAFXl1A4ZF/Om/4UyWRl
         Yu2PDq8W3Md68M5djicAPumhUbLAM480N5nLIGfjrHAS8Ic2HNrIfFbHEhFTybjjzbkd
         5QTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JSTer/9k";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Kf8Rhgkh3q8sED8eaqL98ufCADv2Yt8tqhbx1fhuvI=;
        b=Y0WNADec2Xb42KL0T3OzPYbwGrS+D8qQiBe1ZARvYYQJD6xyFe76+RSvQ3OZcn/K4H
         jOuvIIgaItuJJVwJJ62gLqwhcEEiEyUAS7KPOlDW/ALvkIb0NPPMKlc2sdKZ7nnDK0VU
         pwi696XlPfdq5sVN9xN4CWmJWNBrllQ5zApyIFMOrJi0VrAxbuwgThr6pucO8vBneF/I
         9OqKNKAfFBNK9JBJqv+6KPq6MoqssB8fzqJBf6vlya1GSG7ocp8gZDY1IjD/AgUm69SW
         xyTFS3ZVENBeMkG0Aie++a//a2GABJN1Zs2eDf60ALiaC38uti24tglGtwPu2MmuOaUp
         Kd/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Kf8Rhgkh3q8sED8eaqL98ufCADv2Yt8tqhbx1fhuvI=;
        b=mGZY0eEGIlfLWHGWWhgKbELDXLJjYbpZhoemnl3QckLjOn5UwfxKj5q2lJVBRQY7i7
         y6d+OAmhkPgY6+EdNsvs4XO/5OrrEdSK18/IG8iXvg4kxl30zyv2pAoHJsvafjpN0WIW
         UiSSxVyPJ98uteZfWxfKtT4yrE4S0bOoU6SYKYc7z38ohJa/mbLThIMJL5oswdphqZMV
         aXXXrDP3gzv0V4RNkAke6nncycv4HpZKeDZpxnfCvtZ3D33fRrX9caWnwEuD9UoZw/eh
         ZqOWH5pN4Dss6YTMU0bAwAq3fIpdrdIwrBtM/TLKVKxADE3OlPEp2jMIWW4opFedHJm+
         vTug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/Kf8Rhgkh3q8sED8eaqL98ufCADv2Yt8tqhbx1fhuvI=;
        b=VKsWi6+EXhk+Kh3bwkBwRPfK26xqJRvfI/0ojm3DTwF5WypHVM0vuclRgpuAh5Ihfq
         RmyN2JHTkWlugz/KSuqIBdAP9WRYsE147uWacw9GhVgHYCHE+rZKSDeJqkb/SlcZodN7
         USr6G3CfTGbdKvk4VLKu3vPZpwVR+Yn/7CTLbkWrqGY+3uFhAGT5AHxbGSYkDVpY5Pl/
         VSYA7RUnB9BvohyYbonVeUp3RRVfzHl2jayrryp6mYVw9/+A+9WxZEz/4qmSHtG+ZaJl
         liuQ9WqXh6tCxrPUr0XuLrHLMF9LGFf1miK6J0y4Cgp+lwbDzF3lCoWIVjJ77Bo24vxn
         11ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dzcGtMAjLPZPZYoO+i+r5DLKjjPq5OsEAg+z6ea3/9MS9jrjB
	+EnzssV/1vwNzQticbgedU0=
X-Google-Smtp-Source: ABdhPJx847Tld15ITDfFH50cTvbnWvPAreaF6kR3s4kuhaGUga3z9szpWV5el7Xluy/7/yr+IT7SlQ==
X-Received: by 2002:a17:90a:4802:: with SMTP id a2mr4611505pjh.22.1605292859305;
        Fri, 13 Nov 2020 10:40:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:34b:: with SMTP id fh11ls4155595pjb.1.gmail; Fri, 13
 Nov 2020 10:40:58 -0800 (PST)
X-Received: by 2002:a17:90a:9906:: with SMTP id b6mr4508211pjp.159.1605292858705;
        Fri, 13 Nov 2020 10:40:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605292858; cv=none;
        d=google.com; s=arc-20160816;
        b=VjPgitEGeKw6DPn8/oH4t64Dm6tMU1/rOX7euwGohHb11j3/XkUNqOweHETkPtbmuL
         vYIKOdsqS9ZsyEkWRw+HwUwjDgQn/kZD8QgxzHUexF7v0PL5r0NNdwiJWsVnOxCuM5Ou
         ZFa2ZBB3TgKiXF2CO+/XNyYbZSAy4KYYl8Q+oMmn7YRg8Uanyg6bWuiseku2GXgFUVa+
         TVzaXVf2P+XE3NptLkg8VL3/BGAbjQUfEMh/5njVDTYFcZ2gYYe1IbNPq/6r+TNxim7/
         aLII84SJvHDgDf+b3j8rkBRov7CWJp/bUYfS0FOjCE2sQp0lxAh+7moX0bsyFTg9pqgO
         AOqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/se03i+00bbqRJRAZ8FjioxlmbCFc/szk4I7VWn1Yq8=;
        b=sfkIloFeDvo8xk6mkn2CqLW5lendjfrQ6Ma/48PWfhKE6sUfVBiZeNfoql6vKgpzFo
         yPakFPxBKwwamp5kko0EU/8vxjBq5bnLR0wyI6pbj25qWWVlGGNSDhe4cPcvuxn56m5V
         sJcgwQQnb5XyjmS8EiOEwo830Ab0i+/l1y4G0gkFsOYg6y/8us1fFOCB0AC9izovfBm5
         fXH70Xj86KTlj1+46WQpRv3/eoG8Fea0T5ixYDysX66D+jwO3F3CZrCKUIq6LOOzPHXd
         b+FooWOK0ojg7np6aCg6Cp2NtKRYnUnIucvaXj9eoi0ujT8X3qf7/96k7zPI75oq4Bue
         6tXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="JSTer/9k";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id d2si750752pfr.4.2020.11.13.10.40.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 10:40:58 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id m65so7341655qte.11
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 10:40:58 -0800 (PST)
X-Received: by 2002:ac8:5c05:: with SMTP id i5mr3279411qti.34.1605292858136;
        Fri, 13 Nov 2020 10:40:58 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id o187sm7188030qkb.120.2020.11.13.10.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 10:40:57 -0800 (PST)
Date: Fri, 13 Nov 2020 11:40:55 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Darren Hart <dvhart@infradead.org>, Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] futex: remove unused empty compat_exit_robust_list()
Message-ID: <20201113184055.GA1436703@ubuntu-m3-large-x86>
References: <20201113172012.27221-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201113172012.27221-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="JSTer/9k";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 13, 2020 at 06:20:12PM +0100, Lukas Bulwahn wrote:
> Commit ba31c1a48538 ("futex: Move futex exit handling into futex code")
> introduced compat_exit_robust_list() with a full-fledged implementation for
> CONFIG_COMPAT, and an empty-body function for !CONFIG_COMPAT.
> However, compat_exit_robust_list() is only used in futex_mm_release() under
> ifdef CONFIG_COMPAT.
> 
> Hence for !CONFIG_COMPAT, make CC=clang W=1 warns:
> 
>   kernel/futex.c:314:20:
>     warning: unused function 'compat_exit_robust_list' [-Wunused-function]
> 
> There is no need to declare the unused empty function for !CONFIG_COMPAT.
> Simply, remove it to address the -Wunused-function warning.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201113
> 
> Thomas, please pick this minor non-urgent clean-up patch.
> 
>  kernel/futex.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/kernel/futex.c b/kernel/futex.c
> index 00259c7e288e..c47d1015d759 100644
> --- a/kernel/futex.c
> +++ b/kernel/futex.c
> @@ -310,8 +310,6 @@ static inline bool should_fail_futex(bool fshared)
>  
>  #ifdef CONFIG_COMPAT
>  static void compat_exit_robust_list(struct task_struct *curr);
> -#else
> -static inline void compat_exit_robust_list(struct task_struct *curr) { }
>  #endif
>  
>  /*
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113184055.GA1436703%40ubuntu-m3-large-x86.
