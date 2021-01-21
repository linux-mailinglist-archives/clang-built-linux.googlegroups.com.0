Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBNOUU2AAMGQE6FNBICQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 236FD2FF012
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:22:15 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id d6sf1446332plr.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 08:22:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611246134; cv=pass;
        d=google.com; s=arc-20160816;
        b=MDJsq9BvFeCoMz5h5JHhp1wGJO2dJromP1vS6X9LmIR6nUJQBHgBTq5mXWspJh2YBY
         WVIMvvCt1EtJV2hS5oqt6h4c60EewuUES1BW5n+kmvMACiYnxoszmA4KzOJqH5/sea2r
         zfDDEb9T3E0mpYUp9K93QlhEUw5F5HpgY6amNbcDxfyvmSh2Xv9uBf6c6vTl3OJtXPcz
         YLmdKykbG4wn8su/h/SkijBLuGjHz3r6axxFZo5/f2ahSNWpmb5vW0PuQK4FqTe8ntQM
         XdNvWPUPmoXB2bnSE/WbqO3AdHjMta0y4VehwYZe1Fj+/fu6gx3uwtKDG5XOPng5UWKI
         N0CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fTEWsEQOLQm45JMFH+51y3RL3maOyO42maZmD1Hj2dg=;
        b=u25vKD3x84Aj+xx/2/VndTKHKT+vlGrgAGrQTDw86QQ5zjen/CGroDnoXbvqeAgxaT
         Uh8kpPepa2NFtULOfUZFKuEmkv1k4XAk8BXhkMy8vbd61YhyWh02uGOkDXvi6H64EchP
         h1OvQWsEpwsk6huzMUUlcBlgVo4PwvpSZlP2XXDAMCwjlm+osjnF28GyXsUP32ZmGDao
         2hjUxoEHHkvitaj13ybd+diBudRgaxLf/1zpWayD8hzzpd9D8vrVKNxuSHlI4nAvwrok
         THytIIEmZhkvRQF/bZVXjYy8+UHhbLQo6bXfZEK0uwKKwkWipYpM5RJod4FP4Ge6ujsW
         08Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A3vzMQb/";
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fTEWsEQOLQm45JMFH+51y3RL3maOyO42maZmD1Hj2dg=;
        b=GWb2AiA+MJmMIOXsOwsGJH4EpRXiMwVp+Do5j5q1NuV6qtp0lWYhH/8wsbJJ/qybhq
         AK9Zw14+hiWPFztYeDwZ7OUK5I/TJMRJ8VMhrmDUqpp8PE4TJycgn4mkGU+6+De08xpw
         u+f55cGnXLEeenXcwU4xffQnB/Sm+SWOQTyzEbdKBJA25lPDJpeO5gkb4Gkm66yVEYsy
         e+IFgjbhPLeEcyoW4gNh6l5MAUxgiq07xfgg5M4+8vhN+tCwc+E1c3fe857otFNnuI6g
         SGIFPc7wjZBzD6pQ6AwBDVAh8g/LWth7b28W0qp/6T2S1iCPOh2Bv6LZ9aomGl2tuZv5
         a99w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fTEWsEQOLQm45JMFH+51y3RL3maOyO42maZmD1Hj2dg=;
        b=bZUf4sk/lijZDEIIt6goPQonu+qaUK0bQ3rHLFSOfSRoYqgZf2u3kkitQnCI5MCezw
         vJwIVANMRtOJBmI8Cva6QqCggvVKw2idMMNLlOMfJFP+CokS6r1sGP5+o3yn+mjkiLh4
         lAbErVB1c27Osn+P4dDE8EGbzDJ25z3zfpQSGWi2MqIxg0oINQxLVBXcSOkAHCzElcuL
         jLbfAiH/+6Gf9VORiAwvapsNa3YoYp1iQgqxQWtmx8PG8Op7+R5BjOYFPLdkUO2wUqsP
         GYp4BSPcda7qgCnAwvWXpU5kgrf9bg1j2GzuR8cfutk8AnoYgo9DorUzUQCxvABf994I
         vGPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fTEWsEQOLQm45JMFH+51y3RL3maOyO42maZmD1Hj2dg=;
        b=DbAJM5XPAG9/c72FmBirlkGYT3Eob/ql40mI3nr2g9Qf80NAfhT6wEaApdY9XT4vd5
         yzd01XVu0+Zc0VYZlvGm0uFv1kDyxlIqQimR52YHq3B76h85TWGi+UBMBr+uorvtjFbC
         rptUKM2oQ452q2LBkbuG8gZJXkp/CkNIw8IKNjih1lMh3coviiKIwYj+zLvXz9amhIIT
         U2VwhbbehnV1AcY74pUYh+upM87Zo0O/OmW396JWU3Im5cyAz8+BK9xm8JHMnkOVu/FQ
         ZhLZSZD2xLBaqmSWlWRPLxheaZA2y4Qv7QK2+YMZ5Oo8RhcHMvXDyNyEj+DNUNw3Uzyf
         oiog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZzUH09RgUH6X/+AtJGopi9R3Ww2OXpy41GY3ZoC0DCElAYrVh
	y9IA2sQOckf4YbKPQtSGNhI=
X-Google-Smtp-Source: ABdhPJx7VawIhHaJldSfPGaXGvHCC18jljIsNqNsbZE89dprJLxh1+HGZB5FfmEfBvIfB5wIIjAWmg==
X-Received: by 2002:a17:902:d909:b029:df:52b4:8147 with SMTP id c9-20020a170902d909b02900df52b48147mr28804plz.33.1611246133789;
        Thu, 21 Jan 2021 08:22:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c205:: with SMTP id 5ls1354619pll.11.gmail; Thu, 21
 Jan 2021 08:22:13 -0800 (PST)
X-Received: by 2002:a17:90b:948:: with SMTP id dw8mr197611pjb.72.1611246132466;
        Thu, 21 Jan 2021 08:22:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611246132; cv=none;
        d=google.com; s=arc-20160816;
        b=fQWR2bLtLPITvyT76QKtBvKWREsfSvNOGcCVIb9hHbxECNba7GRs1sFibS1I5Id+24
         TFC7PoCRY1ri/PpTIT5iJkYM06HmRdHZufmK0z2uvj95vFgcz/yYpPqSVsIlpJ0jd34z
         BF8QWXFvvaqJnYG2C9l581V7AhyXYx2uHswgQF8Y98pF/JopffNlBp5n4WUkIlEmr4VW
         VNSnM+2ivNdoeUQxHqTtN3kz+p41at7ODL3CWHkDPFz2Um2H27soUDQAm17V+R82JF+q
         c6SzhMmhfHGsjiaxBtMxtlWGlLVPNa9bhulvtxiXrMO7yvLGzAEZGmJI3USzTUK9PjVB
         m/mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pOZTpMXT17PVYMkulSbikIGTBpiuv8HOqsaxEWDtVj8=;
        b=ZkJW7yy07XlIUdUSC1nkeYPpiGugDoJ+7eBYGu/DzRcc9WDaIJEpVenkkNBgqGab5a
         0YftI03kkp7RTNQNFIToyfV+7S5Y1Rmu0CXcPhe9dvWzRaa+HYNR4r2LXzcJJFMW3TM7
         k0ATVqdcAIpjsnkeP6IxDeeiAAQDsw1jR15ZqCta6BBrfOKVa/DG+OV3vJ3Tsg/3I9Gy
         t6k6BcD7eOdIQXMeNfEIMTAVvQLyftc7PeR5kWQprI1LADdrymz4rTMyw/pE8gMYvqYr
         pThlEKghncECQ6WQwpF2tlVJPoNpTJCCSRCBdthwz5Cs8IPALq4jwlRCK9U+qrLLPccx
         EDsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="A3vzMQb/";
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id b189si398449pfg.5.2021.01.21.08.22.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 08:22:12 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id q129so5146762iod.0
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 08:22:12 -0800 (PST)
X-Received: by 2002:a05:6638:138e:: with SMTP id w14mr12101645jad.98.1611246132168;
 Thu, 21 Jan 2021 08:22:12 -0800 (PST)
MIME-Version: 1.0
References: <20210121160115.4676-1-lukas.bulwahn@gmail.com> <CA+icZUV3p+yQYXn=iVseNNQwUSvoMwztLxNDOFpdFb731kDOJg@mail.gmail.com>
In-Reply-To: <CA+icZUV3p+yQYXn=iVseNNQwUSvoMwztLxNDOFpdFb731kDOJg@mail.gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Thu, 21 Jan 2021 17:22:01 +0100
Message-ID: <CAKXUXMyrZ7oaA2K5vBkG4uVMbjDBg0yHrQwiJNGCnXq_ZBhmLg@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>, 
	Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>, 
	Pia Eichinger <pia.eichinger@st.oth-regensburg.de>, kernel-janitors@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="A3vzMQb/";       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d2b
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 21, 2021 at 5:16 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Jan 21, 2021 at 5:01 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> >
> > Commit 6c8ad4427f6e ("kbuild: check the minimum compiler version in
> > Kconfig") removed ./scripts/clang-version.sh and moved its content to
> > ./scripts/cc-version.sh.
> >
> > Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:
> >
> >   warning: no file matches    F:    scripts/clang-version.sh
> >
> > The CLANG/LLVM BUILD SUPPORT section in MAINTAINERS intends to track
> > changes in ./scripts/clang-version.sh; as the file is removed, track
> > changes in ./scripts/cc-version.sh instead now.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
>
> Good catch, Lukas.
>
> As a tipp:
> Next time you can pass '--subject-prefix="PATCH next-YYYYMMDD"' when
> doing 'git format-patch ...' (or whatever you use to generate the
> patch).
>

Thanks for the hint.

> Cannot say if we can add a "Fixes:" tag with commit hash-id of
> "kbuild: check the minimum compiler version in Kconfig" - this missed
> that move.
> Maybe Masahiro does a respin and can fold this into above commit?
> That's not my decision.
>
> Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
>

...and thanks for the review.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMyrZ7oaA2K5vBkG4uVMbjDBg0yHrQwiJNGCnXq_ZBhmLg%40mail.gmail.com.
