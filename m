Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB6I3XUQKGQEI5FA5VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA2672033
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 21:46:17 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id c79sf37419369qkg.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 12:46:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563911176; cv=pass;
        d=google.com; s=arc-20160816;
        b=CjGFIth3C4lkxCcK1dY5t7/Lfagw8zXcSq9K4rg+ccEEjHwecZP7GEszJ6Lj05B4C3
         ndAsVT7fobTsO2odUMekCCmWtLy3V0tdzsiY/knll2edniepLmixMB3BLloo2eUaIBI9
         AfWAkg0BZkuNj4Erw3G813JYZbdobZWu++XiRcQjY2rg3Ba5/4OrqwNbsO0On9R8EMfb
         EVEHAS0eyVfzIXwtfcoAJ2Dt2F3IlDO/KKIiwVVgiTAngJQT8+BCDP+ZfeaYJaoLje8m
         Bujva8JIHKgzMBgqAe5vRVs1Me0L7AwO3DXQNJiN6uf/5DYwOzmwVwflut4Fw9mlPlmo
         whgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=P4swAIKFGxEAFAgMT87SfdbpOwoeliRoeu1dvj34sx4=;
        b=jvokNVtsWzu6FZamqa252jfRC4ZFlGT3zqE1Nuhrlu7fro2m+n+CKNes330x6NLff7
         Fo+SQ1n73zEA0k/wEuIFXJyzzGflQad/Eem7QLvo3WkgKHgWv2Di5mzdu/wAIrCPeWYU
         S8P/7MM0Nby5YJL3bFMXmdKk0wH44B3dLnvEd/8GtmhMHcPG8qaMZGwerOlhwUTHABiB
         f1VOJx5Bh1ql5QcP1hEiWdV6A8HD1XpSE0RSYrV+kb7oiQcePI9kZJL8xSyr4mzSFJco
         FTQtDOwvYttsFdBIAKgip0LOa24XJAafcAgfZQun3tBWVwZ0flSh5Ma7BbzmQZ4b1A7y
         t0iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OEzb7gGP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P4swAIKFGxEAFAgMT87SfdbpOwoeliRoeu1dvj34sx4=;
        b=PL2zvl3r2uiWakPiAW1k4X/uyOnSNNQLPBg2ieSJ5WwKDc/FwM8EeKZ6yY4pzmaB4q
         0JvuLvxn4SKX+UlzQYtlGTQipiXYy5v6PzT142eX6la77KlcLuIofuqGrRNzFdKH+A2l
         zkmOIkhl53dMNatM3FRtoKCJRiE0eAQBe7GiwqQPeS0F4A+1mtcHj1HUDZzb7ahn6kc7
         ystXNM433PwxG/yu0VfSrne00maZyr8y/YsJPy0WPrHHy0fNaFyNIvbUXDkMJnS18Zt6
         bPpcm6Gdwu3/IR3L/TfbpL4L+WOo+MA/zAMUh79FWBRO4XRHiLynZKbAhitOk2WapxLT
         /eyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P4swAIKFGxEAFAgMT87SfdbpOwoeliRoeu1dvj34sx4=;
        b=rO5fRGYOBil13BVF7b2xLAuc8IEelgFpC+1XUHX/vZ3lT/jAX6amkaZQ7A4IL7UHbH
         GOEE7vL5A7/yE4iYmy7VQak/y41DrPF7kPMEVq09HaXYjriUjYHowkMImKYG1t9G5Mr9
         hi89j/edViDyRkw/vwX04/AuphMke9mqsQqcaZNjOyTes7hPlcQx0bBxM4HwRcRKrthp
         bKGzXKEfifcGsGZe4dPOr92Q3BpMyrduzOUpQevSuQY8xSRVDOxuuniyGwcBUfobhb0Z
         VEXPfhpLCGELqo/B5RZRROyAsZvb18P2utfL0wyRn5CrvbKKSnrEZJL0yR3Bf4l2h8FK
         rOkg==
X-Gm-Message-State: APjAAAVJQF9ZXMLugyA7qnVHLoyNMs3g8cLA9hCRqE80G2ipEj0aVnIi
	IWP/W/rQ0coxpN00HNje7XY=
X-Google-Smtp-Source: APXvYqxdpbOer3+UOm/7GXzwkihwa4SXZH63QIwk9HbQtxhAuMVqHcUoCEsae1AzvS7tr9lSELn3Cw==
X-Received: by 2002:a0c:d91b:: with SMTP id p27mr54997525qvj.236.1563911175997;
        Tue, 23 Jul 2019 12:46:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4f85:: with SMTP id d127ls13242596qkb.4.gmail; Tue, 23
 Jul 2019 12:46:15 -0700 (PDT)
X-Received: by 2002:a37:9644:: with SMTP id y65mr50912795qkd.191.1563911175770;
        Tue, 23 Jul 2019 12:46:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563911175; cv=none;
        d=google.com; s=arc-20160816;
        b=I2Qlfo51W6ES/t3dSUF8xlZNNIbhKsOvECVEhku0V7iYtHzw+ES1bufKG8+2YvhLlR
         VIS/S/DRr1dDNVEknrRhNQHNOSSfP+/qXe38+XPQi6eW2rjZIVoQKESvnyytP5EjUfr9
         AYc7/QmbMeJch1EtvLOdLmXIIvQj67NtJ3X8yki+3FGBvuqudUIUKbeqwiWUnAMz3zKd
         33EmjXwRy96I5hIAGuALRpTROpyLr0thWUgHpTH22wtPKGoKX2/kT8yilmFMZBhFpH98
         InxRHSfXb2LmvY+crp9hN+Wm89HHgUO5786V+iAYQii6gmm24GB4zO0gtnTqq3QqjqOA
         +Enw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yLR1IEUF9smKIXSeqsJgIaoPu1I/Qbict5TqpOq0grk=;
        b=aE4ztoV7/zNckasNKGBQIz4U8kF1Q+eGUM7jJw3jM8+7QgrHzrhZvxNIob/ujbRLV2
         34azoQ48GP4pyq1vc2exINj4ctFg4Urz7C+VIPoKaJ4hcAIcWHmMTZIsoMWXTBgh5We6
         R2obAEHa5zk8cjFTE6n7Xt+Y7M2pos14wLWDnepNCsbU6PJtoQM+SkYt2MqECvspm5SH
         l2yVjqt/uomYGBoSk0/hgkPuBdE1a+vkT6w8IrE3cntiZvFsW/dZuqc/yOPK6+WtQvgg
         BRjkH+z1XEXXpXxGkFjkMAf9OuHT/C3HY6gCWVouYUc2hXpNL+3vl8LKWi/8a6Iwqjge
         6VTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OEzb7gGP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w82si1761015qka.7.2019.07.23.12.46.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 12:46:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id f5so11100721pgu.5
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 12:46:15 -0700 (PDT)
X-Received: by 2002:a17:90a:2488:: with SMTP id i8mr82316935pje.123.1563911174307;
 Tue, 23 Jul 2019 12:46:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190721085409.24499-1-k0ma@utam0k.jp> <CAK7LNARBjkYHkmv1michYYMd-2_70d+-Gvg1Kv4FyPeeBShvdw@mail.gmail.com>
 <20190723162840.GA7110@gmail.com>
In-Reply-To: <20190723162840.GA7110@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Jul 2019 12:46:02 -0700
Message-ID: <CAKwvOdkGH3nrgszJktzbe5NYYx21QuTUSh_7re4oWPhabnyLRQ@mail.gmail.com>
Subject: Re: [PATCH] .gitignore: Add compilation database files
To: Toru Komatsu <k0ma@utam0k.jp>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OEzb7gGP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Tue, Jul 23, 2019 at 9:28 AM Toru Komatsu <k0ma@utam0k.jp> wrote:
>  I'm begginer because this patch is my first time,
>  What should I do next?

https://nickdesaulniers.github.io/blog/2017/05/16/submitting-your-first-patch-to-the-linux-kernel-and-responding-to-feedback/

TL;DR
<edit file>
$ git commit <file> --amend
$ git format-patch -v2
<resend>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkGH3nrgszJktzbe5NYYx21QuTUSh_7re4oWPhabnyLRQ%40mail.gmail.com.
