Return-Path: <clang-built-linux+bncBAABB4VQ4OAQMGQE6VCERWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8C53261D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 12:16:04 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 18sf5913793pgp.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 03:16:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614338163; cv=pass;
        d=google.com; s=arc-20160816;
        b=kYY2gwVQCTYP7KD2kJuazsJNVz7OE28B3ngDdgwirZx0sLvGHdanV+K97sVwgF82cH
         ZgoPzH2+1XC3zuoxZaand3QkmFkXhkQJe61+qAg9XsfSdnnnbEYB4x1434CP+rZGHxin
         V2uWmN67fnju1xzyVsKN4zEC4dZoZbMNI4Q77662rrgp5W6BJSeSLcj93QX5aJ3S706A
         Vpt/KFNG/2sEo4FxovXoCa+zL8qWnXKQMwSCp4MUiyr/KO/CiZZbefk9YiKObdrPBEtW
         97BCfVpV3IP5Cduv98WvcZX15N2s/n6jOvZ9zs1BHMKOelOrINxwawWGZdXM05P2sDLN
         L/kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Cv2Dpo8y8ErT+3CY7zL2uuePcJj/FVT4FXR0KL7zsek=;
        b=zxES5U8TrUqS9AMsBXEoKPHYiVH6E5sUoGX52LONBdKzs7MRyJPe/3FVQIzLOaZ10l
         BxaxUmQPjU1qzwCA6fo7F1PlWMrq0IYjbjP9tDC5I3LvSwRIKUgY0R/vWZj60KR/XkaH
         zS/qM+oDId2j7DmyPNEnTQjSS2KAHWbo/eScj9WR/SRRCYigKH+A4S2Mz35S4D8kMPE3
         BJAi+LnAGHw6Qwg0M7F/RntfX5tC6LMtg3ZcWO2l2nsfJoEZjbHQqNb8zic+0MfjlIm5
         ka2hVSg5R9NhWO4jHzLgnFDTjXqcD/A55F+yjB+fBHUneT3cljxR+kqP9J6miVD+K1Jv
         4DEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HSDB8oCe;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cv2Dpo8y8ErT+3CY7zL2uuePcJj/FVT4FXR0KL7zsek=;
        b=Y11Gg4F3hXLSqPX7CfXy4kdfl7xzRo4oi+s7ZOCLrpaPZ7Q+Y82e9pH6cA5MFwA2MJ
         M7CJk4ULho7vdh2EcHzM95/BvC127q6Lu6i3idhJEDiPv1CNLQX7oUCakywgpz85nUle
         HSv00KlL1b7syQWcTcdOttSf5s9dVQYdCSholTpbzYPbqBLOsIT0BKgHOA1CCHCPRmeq
         zQHZxO3tcs/XcekCY4q1+3O+s83nVnEcJCjDPHt66ezdJQssqDdihHXm4sEQzlQAFseI
         m/JZ0H6stcbd/DFT/ASszUOBdpe/6Qsq/+WQzbsjXBiukfEGRK+eJrZKYlASfWkMRc7A
         icwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cv2Dpo8y8ErT+3CY7zL2uuePcJj/FVT4FXR0KL7zsek=;
        b=guiRbGQXfixk5pOdm1QWoRLoEbs6V4+40m1OCAg/ZXf0btcXhgDZ+FI1I09GsyfTEi
         fQH6ILHCyC+Ihg2Crz+ZhsnLwZFJzVTTN0QWrc83M4FCGBcQd57XIIre6e/e4yqU20DM
         4ar51bEXNvVqpRpleyKNdQ08Tnza36F+MCpoizArPYEAPPFYWhDAMnbHzQGhHFpzOwlc
         9Ke4EoOrev3uC3GKN4V5ICF5iz2lN/Okm1HIf4FPt1913muI+kX9fOcdLsw8e1+ksf4d
         97yXL7+B2JIYPKqOSZQ4KxBRO1Y+GT0EhaAeTa0POxXiNX/HgjlT04LZHcxk2zbfZZeK
         tYDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gH+0JZvQjuuDr8nV0as2xYd+n2QeNcXiiwlBzrhMBPGKpge+F
	51hBzrS1Y0fCcHqcs1h/k6Q=
X-Google-Smtp-Source: ABdhPJxbjou7wxx0s12dLJgmVxhagnHnD+xsugsED8LoyEEd3mOYxDNR2MYIZoYjPUxYv3uPNjkdCw==
X-Received: by 2002:aa7:8c49:0:b029:1ed:c1dc:4421 with SMTP id e9-20020aa78c490000b02901edc1dc4421mr2898219pfd.43.1614338162928;
        Fri, 26 Feb 2021 03:16:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7541:: with SMTP id f1ls3486847pgn.10.gmail; Fri, 26 Feb
 2021 03:16:02 -0800 (PST)
X-Received: by 2002:a05:6a00:23c5:b029:1e6:2f2e:a438 with SMTP id g5-20020a056a0023c5b02901e62f2ea438mr2748249pfc.75.1614338162473;
        Fri, 26 Feb 2021 03:16:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614338162; cv=none;
        d=google.com; s=arc-20160816;
        b=yJQYGFlWMvpnJbLvQmAOkXDL/erDUf94gtvAQKjxA2hQKSquycurqRhkZ8bYqiuDFo
         Zuq/L0oEjc0NoBhrR+a8PH97oBXRIa04y1rWJIG0s44pIUBlCbT8mxi/ffpY1kmKXG5V
         CMttSk/h7Is3tMGVI4+L9FFXJHV4EXfgnSAFJijidJhAQxbbzr/VNQ7K3XzM/2oFpqBb
         B1Y1k+w8r8WwXgr5lvJa9a4QjiRiF5ulodexsjGFa90SODzN8tkIFAYmIm3BvU0eZU/G
         hDY7NsSbKrAf/MA1WjC2ClY9VJBSXAbKB/uKZNqCaGSOOwo0Ru1bFPeb8zeYmbvLP3AU
         2zrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3mw2/ajM6q5nrS8mbFaPxKIZJMmZbM+e78doIvFSMdI=;
        b=AVjBUCk/o0fNSEiqN09Pk7qtYB3LlTOedRF+RjcNCnLL07cgcZpxArD+HE+Qr3qyal
         frna3Z2nS5Qjmth1vCaPOxVP411Z2Gj2JMhbp1zsDTOLQQLUHR24Qmh4XW2DEZPBRlTS
         Fj6PcSFzBk6mhOpnmLQIUqvaxpExOGfYiFCZIx+sW55eTZzBhIgJ/BdWtcbyfy4/hiwo
         y4n+e5WVrcryFBnauROqR91tkGmPWIkl5htAOCytVAsImOaiLEt2E2PHATK6L+QlLvJM
         o/BI8zLGuaoG56NNi+iXhwG1tlV2OK8bbNkFZ29Ym+dq0W0YpQZGnKFoRKmIUTuaHCIY
         ZpEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HSDB8oCe;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a20si95611pls.0.2021.02.26.03.16.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 03:16:02 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D401364EF3
	for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 11:16:01 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id v12so7609886ott.10
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 03:16:01 -0800 (PST)
X-Received: by 2002:a9d:6b8b:: with SMTP id b11mr1870333otq.210.1614338160965;
 Fri, 26 Feb 2021 03:16:00 -0800 (PST)
MIME-Version: 1.0
References: <20210225125541.1808719-1-arnd@kernel.org> <20210226081548.h5ls5fxihunzxjvx@ti.com>
 <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com> <20210226110451.ijpllyczuquerfsr@ti.com>
In-Reply-To: <20210226110451.ijpllyczuquerfsr@ti.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 26 Feb 2021 12:15:44 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0C1aSgDm10gPtcognECo0tq3oRw+DbFsy+wz383qmrJw@mail.gmail.com>
Message-ID: <CAK8P3a0C1aSgDm10gPtcognECo0tq3oRw+DbFsy+wz383qmrJw@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@arndb.de>, Jon Lin <jon.lin@rock-chips.com>, 
	Chris Ruehl <chris.ruehl@gtsys.com.hk>, Alexander Kochetkov <al.kochet@gmail.com>, 
	Johan Jonker <jbx6244@gmail.com>, Vincent Pelletier <plr.vincent@gmail.com>, 
	linux-spi <linux-spi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HSDB8oCe;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Feb 26, 2021 at 12:05 PM 'Pratyush Yadav' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On 26/02/21 10:49AM, Arnd Bergmann wrote:
> > On Fri, Feb 26, 2021 at 9:16 AM 'Pratyush Yadav' via Clang Built Linux <clang-built-linux@googlegroups.com> wrote:

>
> Returning an error code from this function (along with the dev_warn() or
> WARN_ON()) is the most sensible thing to do IMO. If the SPI layer sends
> an invalid value then the driver should be well within its rights to
> refuse the transaction. The function is currently void but making it
> return int seems fairly straightforward.

Indeed, this seems like a clear -EINVAL case. I've updated my patch, will
send after build testing.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0C1aSgDm10gPtcognECo0tq3oRw%2BDbFsy%2Bwz383qmrJw%40mail.gmail.com.
