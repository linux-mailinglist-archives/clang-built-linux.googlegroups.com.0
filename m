Return-Path: <clang-built-linux+bncBDRZHGH43YJRBXPF3D7AKGQEDVKCH5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 727A12D8E42
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 16:27:27 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id c8sf7221484plo.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 07:27:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607873246; cv=pass;
        d=google.com; s=arc-20160816;
        b=hT+2TWYwsyQVTbmH8upvG9zqiX1YJ3rG8xJrZ7d/QfRzXjAVMGygT79u/aIAr6zWIQ
         xqhE6lkulTMYJMSmglyadxCkt1IEX4uG1SWk39bultq/07Mu845ibQqxdMmft8iv7ijq
         WjfwpAarxbor3BfIaTXG3jA/9UBg/oKbnqryOK6hWL2FJ5ktKYqsHPrb4dx8Jd5lArHd
         SF4wKDtB2M/3yLY2Wr2hVGp2YjrXj9FWdqazjRCtCJP8RhyXpuH+PxBEgzs3oszkDc+V
         lPGBz4Xlh6m1YSe6bhKkh2hl4eDg9YcLlirYl0bJ/cGVhwTc40U/D2UcqERyjE5V4uPU
         /WTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yjrpq0PYNsFczMDYiNmpt0C+3FAW4GpPym0FayV2+PU=;
        b=rp6WnlyRB2NjLU0Cv9zYjWMlw9LARmHv3Z6mbsanlxWfAdoWOk4jvPZDon8GnuQs81
         dgBLiuGfniRMDblCauHhmo9gQcsDYLMvYYW2XuUdrcgbPxlpV6Q7pABGM36oqTWYygjd
         /Mpi6RoqFA9AkQ3HrRtS3Jk9NyGCp6R7LS+ufIEWNcLhIss9nRXXpgJ2Ja9C3lGYY1vS
         SZK9qoLvv7rP075jSH2QAYT+IL0dE3u0KpFAKXOzCkgezD/oik/McouEGxulCh1urzkb
         g796hOfP59qjyEN1B5MeYT7B28k7MrQeA85qakixeefrUDN5Pv89p684b4DyP8+jyAx8
         9vfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="VZJ/JV9l";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yjrpq0PYNsFczMDYiNmpt0C+3FAW4GpPym0FayV2+PU=;
        b=J4S3SkuQ6n6Poxf7/dAgVoQWuEculLBpnSRW1zgKabXfOCwaz7QF1a6W/wlsAc0CIg
         OvOUe5HBHff5dfDxP8YW5RtpavmcGWwOvDqnJPg4eT7uZ1VZh2gu1JYN1IRTKmCQyZVN
         cEUnzyyjiRpKGW2oHQmVnYpPE6APsskPlvViJe2l26gG05v7pwQTJoVfgwSut78TnlZj
         q3Eo+EHE0JKOXPwUIEmUX5EW345Ed0wI/Z4ahY7c/6tRDZyNslZ2h/r2FrIBNyOnW+xi
         5+gI8Aj334u87FH6JU116rPVHXrxgPafnkf5EjQVOhE/R1CTXhmrFLNHNKv3kB038etI
         mBZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yjrpq0PYNsFczMDYiNmpt0C+3FAW4GpPym0FayV2+PU=;
        b=qiEgaS5FjOeynXHyZe98UTnJBEgfhXZP+HSpvN1i0VtNRr1GCSt0jh0/oESiy7wZeA
         uns6ML9C53IA7BwejMwE+lz9nxBG0FbwWR42vqryIcbsG0ztIHCJKS9uLFHN1FmCT98b
         UBZQ41QCBvircTtF9+Uc/HWheeMysieyQ39Plt0pQDHLqbAp3RZulr1iwiYhkHX89rsr
         vvR9rcvnCs25285iXSeSept2DcTjSQyQ7MUN6pUGeWTauRwMTSbR1695vFtWmgWTsaeM
         jVxcKntPZsHwJPEaU0MIfYr8Qj2Crtl615jHmqqclukmdCk2si+Fc9tdecS0RcB4ybzE
         02dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yjrpq0PYNsFczMDYiNmpt0C+3FAW4GpPym0FayV2+PU=;
        b=X3CQf9+ocbX2x+FOnGw/KBAKlSlxB9Uh0P748BQK/p5zJOFxNadnEdnuAbWIm8KtCF
         u7d5x5vVrKs8T86R9Qwt8/ps1AvUcwd8rk/FW+fkKHqrp+oxILd2MPGx4VRWdyhMbuD3
         UEojRNaJwIQD2k0u+eZ1KcxyF6Vs/lIIxWOyQ9inKVOt42cCFlCZbm9sPpRk1USVTloD
         +YXPHGSuKL9vIbdnQG4SmvBTF0D+QLIguTajdeX4FLH59lCmyu6TKSk59oLoNReM0Xtb
         PwIrgNCF51lEFi/Tj4PY5c5QMfGq5E2/9MgChlPOGncr1VrNmsbAIoIpZvrXphPOgX2o
         vEBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cLgaPyvixGjOT+i42V2H9bDLrYz2Pa9AoQbCfhakAvB7MLM6R
	EwKs+mKoTeUP1dOku1gm6wE=
X-Google-Smtp-Source: ABdhPJz//8Mbqa5drpizHYWRKtB5A9epSqe7u0zfBola/toH7SzlI92NqlzyoLS7Pcu/nU7fnuazQw==
X-Received: by 2002:a17:902:d351:b029:db:d63d:d0e with SMTP id l17-20020a170902d351b02900dbd63d0d0emr17226977plk.75.1607873246070;
        Sun, 13 Dec 2020 07:27:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7894:: with SMTP id q20ls1357473pll.7.gmail; Sun, 13
 Dec 2020 07:27:25 -0800 (PST)
X-Received: by 2002:a17:902:8541:b029:da:fcd1:7bf with SMTP id d1-20020a1709028541b02900dafcd107bfmr19041799plo.56.1607873245413;
        Sun, 13 Dec 2020 07:27:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607873245; cv=none;
        d=google.com; s=arc-20160816;
        b=BYITupt9Gleq4vPbh5+ZuWAF+uIHsTWOXVV5o4la8zUq22dMhtm/JVmpsYyETFw1ha
         2xaHQXq8uWxjpVQ9gv6spNwNp3kbl/FRaMZ9LIBmYHnaNqlHx1JMOMADfvmSWF0y5hYF
         umqCqc/EIKjQwvVJqzf51UlXBps86EDs1QhNJ/mQZVQeKw/nAYZ9SQEiwF7hbPCgt8jZ
         yWfwlWPgVZYRLL1hexCK+nG1cE0Ims3CuE3QJAUbxPAwHhLgOdCl653OkDz5zKkvgqsJ
         AeBlKknMlDtvLiJUZ6vzlTDidBd/LMBNqluRUP8vOsIPefMXOfTcLVyvQfoXx2wkoWOB
         4BLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0U/jU5RkMzu5zlRR43LWUba3KGcXSHqGsMQRfeSGNUU=;
        b=uY7nxPkBVXUjnMgXhipOPcN47xpV6cMbrh5MnRLAG6TUiG+qjec0mM1QYAS3lc0DFc
         DTE5n+7kxX6zGsRbuPvIdkjiGKFwk0vHYvbWwwslbzrMT4hoGaI6KwE/afAJa0UYOkal
         A6WPkWzWBosiP2WqXDEGOHH+VFNSnqCSJISxb2xeaof9+obtkcw5cYDsE9LLKcNeQ/SD
         +SoQZ6l3zLOgXw9kv9T8odXfbjfC8wVBfcE4TWypXmBmhHbTT15icl6D3kJD+IvmUZ1D
         k+mkoM+qlR5B2zZRNjSUnzVIWfha8mfDJHoVsQAK1s7FFeo+r4melSSnDIO2fp0tbgUz
         bQBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="VZJ/JV9l";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id y13si1180525pgr.2.2020.12.13.07.27.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Dec 2020 07:27:25 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id w127so13073821ybw.8
        for <clang-built-linux@googlegroups.com>; Sun, 13 Dec 2020 07:27:25 -0800 (PST)
X-Received: by 2002:a25:538a:: with SMTP id h132mr11965104ybb.247.1607873244794;
 Sun, 13 Dec 2020 07:27:24 -0800 (PST)
MIME-Version: 1.0
References: <20201128193335.219395-1-masahiroy@kernel.org> <20201212161831.GA28098@roeck-us.net>
 <CANiq72=e9Csgpcu3MdLGB77dL_QBn6PpqoG215YUHZLNCUGP0w@mail.gmail.com>
 <8f645b94-80e5-529c-7b6a-d9b8d8c9685e@roeck-us.net> <CANiq72kML=UmMLyKcorYwOhp2oqjfz7_+JN=EmPp05AapHbFSg@mail.gmail.com>
 <X9YwXZvjSWANm4wR@kroah.com>
In-Reply-To: <X9YwXZvjSWANm4wR@kroah.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 13 Dec 2020 16:27:14 +0100
Message-ID: <CANiq72=UzRTkh6bcNSjE-kSgBJYX12+zQUYphZ1GcY-7kNxaLA@mail.gmail.com>
Subject: Re: [PATCH v3] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	"Jason A . Donenfeld" <Jason@zx2c4.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Shuah Khan <shuah@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="VZJ/JV9l";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sun, Dec 13, 2020 at 4:16 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> Because if you get a report of something breaking for your change, you
> need to work to resolve it, not argue about it.  Otherwise it needs to
> be dropped/reverted.

Nobody has argued that. In fact, I explicitly said the opposite: "So I
think we can fix them as they come.".

I am expecting Masahiro to follow up. It has been less than 24 hours
since the report, on a weekend.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DUzRTkh6bcNSjE-kSgBJYX12%2BzQUYphZ1GcY-7kNxaLA%40mail.gmail.com.
