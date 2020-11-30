Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGMKSH7AKGQEIZAU3XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF102C7C45
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 02:04:26 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id w19sf2911731uap.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Nov 2020 17:04:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606698265; cv=pass;
        d=google.com; s=arc-20160816;
        b=j+uln5UmpEj5Fo2+2U+CD9NB7U5kTc/W9d8EettnL8N1k5B+e6x6Lw/FYa9N7gmjMx
         atk2WmNJsbpNZ+1dB2tDb4b44Ne1N7yoxz2VkmXfG5fZPvlI37KloLhvUQhXwUc1xA/c
         /VZ5UB8ieGEp3ef93tCebKs+mrcZ61DO3v+Ido2H2bstr57As8IN6DvvpxPYQYBD0k8q
         0Oe1GYZNOpU2FjejhC3ig0188dg7ZrxTRC1Ogjdp6ArYs0Tz33BhZ8vh7W66uH28UJi+
         QIJN9g9HFou6WkxvgEtAW9H5ixcH5DtNCz3CFTvfDnDDqkO8XML6H1m/94N+TwvOhBdB
         jt8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=aHN4beplZDUDprOsyfc3ztFPw/BX/dyLG39lSvcSWhU=;
        b=UXWrZ1ZskvdshvOuQWd/n1vNEw1gB3CPC4jYl/wF1qB4DlZyOPPdoeu5+o6M3NLyux
         +mYSpa0o5+P1JWw2c4LbCx5mlldXPq+sZ2DOqO8oHtht15CbdDiQn/vmnEQg8H5ojNqQ
         Xx97Z9UhpjOjWeCmGhKKihmnxA6ozJtXh+WyhXFQ1QUDcD5R0MYDQgwch9HZqJ/EO+43
         JZwn45OEHVomRD8MbzclYX+nbcRwzFiRaJMbqH6E1MSG2o5x48v2UVwGgmfNatrGUai3
         8SgshZFtNyYXa3FYuq+kZo2iOtvofqwM8DGQtpoBpDOHOYnQxBJcIi3whxpiFGli16Ec
         QP6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WU2glR0T;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aHN4beplZDUDprOsyfc3ztFPw/BX/dyLG39lSvcSWhU=;
        b=PRABjxMA3F+iH+cTIP3NN/09tMrGvFIdMT14MVJiKLe8bZ0Q6UNmHTjr6QDMjkPqsS
         Yr/6NX4sfUGbkl/pItDgCm/ssJW1BDhN90O5dZZEP0GvnQwpVf6Q8aj70wo1YkVxXgbk
         /iWJQ3z0aqfwk81jP+r2PN/HdgHyZ+1SoSSm13IAEfwt/zx2x4UvlDHe5ILY2K4D4tyw
         NXob8ECDRXpcPapv6vUxoqoFyLBXC6icQPXGldOKz9fNoiYn/XeX40HYXDddswh6APMi
         LXo73d9SKT7YuJGvCrQv8BTgJFR94f18fvTPbWDwHuPscm1pcvNoG8Z1V/VP7wTapjVK
         /MQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aHN4beplZDUDprOsyfc3ztFPw/BX/dyLG39lSvcSWhU=;
        b=uWTZc0a0wsMCPgT0qi7nSdZumfCigQUIJiuadgXoL9bbnXoDIuN8hDFFvQprnBUpAp
         Nc/WlbOiWAE2ANxyFAaMyHHf3WsRT12E/F0aOWrlC+etCsDGFhPpnN70kH5wVqDmhg77
         aR/P7LfIRHW97fgDBz81vnGtupOybcnr5zFN2ahqyEjP5cfKXXg6znZXoU4SvU2VwG5h
         eBfFzKzNDNPE8efBA84ZJx3N8Oehha4wTQ5iRbszP4eK2XKE5nMZCUAt8EMegG0MEgZm
         I9FtMDEwzKsXWZin6l0j9u3Oj0xnrQyxAn9T+U+hORaYm+o/Vkv/nMfazbkbfKU6c5JR
         1BSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aHN4beplZDUDprOsyfc3ztFPw/BX/dyLG39lSvcSWhU=;
        b=REoTGNC5NOPrWTCUT3wDQiVRV58iI7++ucOzmYNGF1YCk2M/s/UbU4jyDX831GJAaC
         StFvLCDCQUW4In3j6BWp+ZbsN5G9/cAVUxrZJ3M3lMvSiuSeEgi2l/C2Lof2wEMptOWS
         NZicD0HIqaWDUjFAz1dzJyePIL2D95bnqawmRFsRqKX+T1NdfEaXCFJibOZYy+ThTsYK
         ntl7JuKB1Z+PJQkLdSOopYuZ9jyKeSXriNTTiG0Ua6eOd6DPf7746F/BSFUE7ykD0zg9
         v1+o7TRlCazH1r/fpxysJ6Nb8+hMzRFMHk3Lu0dvc2+ctzX8PM0HGvrsPlQYXZSlO3Y4
         HA5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dV/i5WrF43wEnGE1ocVLzaVCtDy2lsaDeYiSmu85u2DrZqedk
	iplaO1nGU/HMO5o9bAP+4ko=
X-Google-Smtp-Source: ABdhPJyp5pehvBuodnhjVFNhAhrp/6dO0vT2W2S6HbkOzzy2MozI18oRErVeE9fXftPWmY/yqr2Z6Q==
X-Received: by 2002:a05:6102:4b0:: with SMTP id r16mr13354559vsa.29.1606698265259;
        Sun, 29 Nov 2020 17:04:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f583:: with SMTP id i3ls1320249vso.4.gmail; Sun, 29 Nov
 2020 17:04:24 -0800 (PST)
X-Received: by 2002:a67:2d58:: with SMTP id t85mr11802978vst.33.1606698264888;
        Sun, 29 Nov 2020 17:04:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606698264; cv=none;
        d=google.com; s=arc-20160816;
        b=TlutdxwmPrFGbFbNAPalORwynLPLP4ec/Ojid6MaQ4vV3uxmG6gIJ0JqPVW+AqjKQ8
         j3uAgqgJVOAuzzslU2QJRHu9RkdnJCZmAeb6WppSe8MXPPXBvVfKKYH7NlJPaRy7CwXI
         GQ6T3pQWt8Rga5N8a5wZcHui43HSiXu/40gX6VauH9jCOLZiydx+YxgYfQMLGigCotil
         GS9iAARYGQOlsh6gy5ndvoG2iVSElQvP1cRpoq3v9PnYwmD0l/Ss/SZ5av4WdQm9o77V
         mwaq2+HwrgpcWtDKgaY3wBX2OvhOzlztdeKwarbpo51y95IQcHmxv3MJfRA3XgF005z5
         Jkbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9w+jIogOsKRBrpA0BOG2mGKZgZW7G/tIHqRWbeWWJW4=;
        b=N9ybx1PNzHZVXfuyVUG6c6ja/6Oy4zfXNyIPCCdCbvKojikY6rJJSun6GJnRGsz6xK
         s+/OH3tyzO8oDHc81B0T25DyoT8B3enucwBqiIsgNpJZ9seWqGJlGcW1aXIMLzjZKN4Y
         11tot6CXBElkHKP6YVK6YZG4IbCnHbOmISUFU2e7+E9I47wEGOmv1besQ4tql7T4OOcV
         qAV9ibSeFaXiMQeBEx4UZJcNsqsbM0hjteH6cg0qnklJ2Lc0XICRWyB6LVFs+Dwfjien
         wsjTZs8Q4G2e8WPtFvGZtktf5SyLYasT0OhC9H0uUji9QljkDznTXUMfCCOcSg7f9bhS
         vY+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WU2glR0T;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id b25si967766vkk.5.2020.11.29.17.04.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Nov 2020 17:04:24 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id 4so4889493qvh.1
        for <clang-built-linux@googlegroups.com>; Sun, 29 Nov 2020 17:04:24 -0800 (PST)
X-Received: by 2002:a0c:fe04:: with SMTP id x4mr17013047qvr.61.1606698264424;
        Sun, 29 Nov 2020 17:04:24 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id e19sm14025778qtp.83.2020.11.29.17.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Nov 2020 17:04:23 -0800 (PST)
Date: Sun, 29 Nov 2020 18:04:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	"Jason A . Donenfeld" <Jason@zx2c4.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Shuah Khan <shuah@kernel.org>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org, wireguard@lists.zx2c4.com
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
Message-ID: <20201130010422.GA1956616@ubuntu-m3-large-x86>
References: <20201128193335.219395-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201128193335.219395-1-masahiroy@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WU2glR0T;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Nov 29, 2020 at 04:33:35AM +0900, Masahiro Yamada wrote:
> Revert commit cebc04ba9aeb ("add CONFIG_ENABLE_MUST_CHECK").
> 
> A lot of warn_unused_result warnings existed in 2006, but until now
> they have been fixed thanks to people doing allmodconfig tests.
> 
> Our goal is to always enable __must_check where appropriate, so this
> CONFIG option is no longer needed.
> 
> I see a lot of defconfig (arch/*/configs/*_defconfig) files having:
> 
>     # CONFIG_ENABLE_MUST_CHECK is not set
> 
> I did not touch them for now since it would be a big churn. If arch
> maintainers want to clean them up, please go ahead.
> 
> While I was here, I also moved __must_check to compiler_attributes.h
> from compiler_types.h
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

Acked-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130010422.GA1956616%40ubuntu-m3-large-x86.
