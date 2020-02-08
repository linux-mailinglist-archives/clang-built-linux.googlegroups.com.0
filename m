Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2UB7XYQKGQEHZTBISQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DC22C156820
	for <lists+clang-built-linux@lfdr.de>; Sun,  9 Feb 2020 00:14:51 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id z13sf2369421otp.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 15:14:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581203690; cv=pass;
        d=google.com; s=arc-20160816;
        b=HRvR9gxC2MtIWEL+eomhGZAH10xMWOcqo/jRQlZVpS4pkdaZlDgbbr3zqgcsHZqI9b
         YD39kGOOqE9T4yOy+/Ee21OCZgTv6j68IYHT3sTzh6Pvm3//Tu7vqXcFje55d5RWx89K
         6E5BP1BvN5k9XNNFeAaHwG5GyRH9xghow4766wOCGLsrdAhG+7zOBMvxsY41rs5atBBw
         6a0BjnWhHUKrIgbxeMrrRpZ/PGLr+mXtOwFIlxSVW5dpX5E5ghcbBkr+Sic7jz0K/EWv
         GvMWYJ07SsMKXJquqICVMgLTXOU3gN2vrhCBglj0dH8KkbC64vXzsVcH+jNLohFakC1C
         IMxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=EbaiOCfpyOM6JDZcEZDhZSLbH7w8QmPji9wsNT31H/4=;
        b=LbMa3uPSqmBrOpyAmTeLhiGQgCd8Mem1hV9CvTSGcVww9l23HiCn3CkJwrGExTGvar
         J4PMbxmKERf6uqyNeFSubh9kNR7tOVd+4skok+PEiZWthSdPdess1Ey6QYcHbje7PgzY
         V+PwVTWweRuZ9ZU2es82kA1Jy1W+B8tdR7O3GgF1fyimXhoIAyHD+MlvXUOcii2u14wH
         8g0ldWNUSFIfYbKqGi+buOLU0WrTBJx/YAfs77yqR1TiAa867OQK/O77WUl29BJbiSwN
         oeStwGv7VvZiKPBF+r38a9Gxke/Dp/38nqFBUK5aObOBtAmGq1mDO5JAJxgbh4GJxQuV
         5kWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jrW49fqp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EbaiOCfpyOM6JDZcEZDhZSLbH7w8QmPji9wsNT31H/4=;
        b=hewVXg7yMhzg1brz+eO8GX0Mdn8dVymo9SlqzULwdX855DR+Ok8PwfQMEDqCLwEXAj
         rYXMX2SQ8txNPel09pPFA8MfamsZccFCqArjQaGiKw5IQt3/CaQGlVASzOURE5/JDE1Y
         wYYvnL7uznJMqemcFMf64AIAx6fZsmjAD/olRJly2nA8Pplni4iUZ3dvk8evFP7TLfnr
         COA+/MUesk9bSE/q33GTsrw6jZhMaDGopyUXXH85VkS9zW+xVDOQd6YN0cB07/b5up4y
         tryZ8B2SqtA4STozQrC+GnNPD8ktkirp2eQfACmtYmZs0a3yv7Vr7UDJkvpvvec6eH8p
         U40g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EbaiOCfpyOM6JDZcEZDhZSLbH7w8QmPji9wsNT31H/4=;
        b=aq9tvMaYBdiELJR/+PggISZ1dFZE+vI9/BUVh1wj2XMH7AUcshJfiQt0XW7m+N/s6C
         zojj7kBdgvlqt6/9RICoH6Z+eDf3OeePScVMkcgCF1r3SQkYxHnqbtjebH279V0jX3xP
         spOLzaE/xnEtB1eIMTaTBnZu8tYKjXxbL060fUGOzXPYv6USjd29D0Gxum1dPPkYA3Gk
         cQVbodmp1R11X47R4TrgtRPpcnfTfmBnJmERIvIFLmA1jvhg0n9EOdlTrfYi1P9q7L4X
         67ScrM1R5c3zUwTKFKWwq6X6Wvg7muw06DY0lIUvdX64yYg3Gb8rsMJ4iv1ytZ2QF7Af
         sA3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EbaiOCfpyOM6JDZcEZDhZSLbH7w8QmPji9wsNT31H/4=;
        b=Uoh99O85A0Y10FRHaaZ4J2JjiSyGisgppw/Kt6kuNjn2YpTbPBOmujNuF4mGpxUjMk
         jZuwSLK7NljTJMR+yOxfJWaEwDfPfACEF4ffzJZYsv6RF39sedYXUolcEdEJYZuJFC0w
         Gz738Zb4vtRvcrJ4CkZrkxc+Aq7/jUkHnETwGckDTJpB8Lj7eUqzMpaue2A2o5Z/79zx
         UwEzh3L39KK1cTmiOZ11Ww27J+5vZA7s8MIxayVOliOuhzR7kxtPMIhgm6uSjbH9ZI39
         5hzJZCEm4eaBteWNPAj9uE6s9DmAQhpg+6Je4C8TiyqoGIhKnZLtbmL0WwAl+GI5v0Qf
         EuwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQodwcjnU0r+w91UHYAESAFhAcZoOV3OKF18c1WERJ0x3NGODL
	jTVvz/Ycfj4yZuKF+dS2+f0=
X-Google-Smtp-Source: APXvYqw4CZz4rRa+JloJZc+vmS5i8KTWmTT7j/J+3dukBmFahOlpcFynEg7zyoJDAq+kJ0oqNUBwdA==
X-Received: by 2002:a9d:784b:: with SMTP id c11mr4780616otm.246.1581203690667;
        Sat, 08 Feb 2020 15:14:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7281:: with SMTP id t1ls998893otj.7.gmail; Sat, 08 Feb
 2020 15:14:50 -0800 (PST)
X-Received: by 2002:a9d:63d6:: with SMTP id e22mr4994132otl.72.1581203690297;
        Sat, 08 Feb 2020 15:14:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581203690; cv=none;
        d=google.com; s=arc-20160816;
        b=HVFRCtSIHl9gqWtikGv1Dx2Ec3cGCSRdyUzlIHdCXKNk2dRivAG9cUuX7Y0QuiHCcK
         bYPTcGMnelOEMZznhfgV+XQLOUgBo/UIXqYv7IFrvIqa088HyfgWz/HfLiiEuT47LE4R
         cwZCFbqH7MrnmJfvx169uOsAMZjDRACUttAkTGX5LA81iKIdLKoza/uaB088K0Lnvvp7
         u5+BgaAn23pAgRuPrGwaAmq+Rd8XpI4GxwwbKra7Ui37KWXdnFzknbLDKNzQ+I2vOE3p
         wVSU23D4jIPeR+L1BVv1KkuC9JPEttJzRBnodGKuHwqOSJme70ruOdztw86p5Kc6PGxg
         VP3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=t0n8BLCNj8jg1B8tz3CMuNruYAW69+UjaJEFDVCLzig=;
        b=MM+7XlKaNrhUp873dEoIz8s59HW4QGGQ3lfnP4OAu1d8hu9BzzUjeROFsLjstvnpsx
         tGLKcP8Co0BV8sMn8wvThsEY0+pvUwllg2tAK3pKW8Yiiy4By4NRWzhvb/Pp/V69hK9t
         vji11u9M6BA4A/S0pBP/ATTpKB7Kv5NeyYzrnHJeQmTBPReyjdV2VcI12fru0ceraMwV
         irw0aZoQLc+JahyI3T6eKG3dv1fQyLcW9Cm08XmjcReGB6N3LlF5eNHNM3VuqtMIDUlD
         6zmMF9fyoE4gWVb8E0PJbAEKDOKzA56jCev4HlizRTn8MhMm/TyeuYXZYM5lUz4r5Jts
         2+bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jrW49fqp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id b2si93215oib.5.2020.02.08.15.14.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 15:14:50 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id p125so5716420oif.10
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 15:14:50 -0800 (PST)
X-Received: by 2002:aca:5fc6:: with SMTP id t189mr6810223oib.166.1581203689804;
        Sat, 08 Feb 2020 15:14:49 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e6sm2779359otl.12.2020.02.08.15.14.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 08 Feb 2020 15:14:49 -0800 (PST)
Date: Sat, 8 Feb 2020 16:14:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Subject: Telegram group
Message-ID: <20200208231448.GA4933@ubuntu-x2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jrW49fqp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hey all,

During the meetup's brainstorming session, we mentioned starting a chat
group for both us and newcomers to the project to converse and begin to
outreach in a more beginner-friendly way, rather than through email and
IRC. I know a lot of people from XDA Developers who are on Telegram so
Dima and I thought we would start there.

https://t.me/ClangBuiltLinux

Feel free to join up or not, this is an experiment. GitHub and email
will still generally be the primary tools so don't feel like you are
missing out by not being in here.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200208231448.GA4933%40ubuntu-x2-xlarge-x86.
