Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBHPW6WAQMGQE4XCG4IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 458B4329544
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 00:39:11 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id gv10sf635161pjb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 15:39:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614641950; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELJnJ0csoJcfZjSe+VSVsVELJmaIbxIGEwVHMS+Tw4wH3CAvyfdD+BukTZyJiD4ve8
         Auk0t3lCpXmZC+SWAvO9hIc1XgUb+q4CELzchCj09b16uU+RTapsOv2LzDg8jmjLjNou
         b2K1QRr42paTW7SuqxBPPF0crnnf9d8RkeDCe9qyNPcewIUYCvz67EyrRbwy2hUshETM
         rWSXPvr3ckrsO9vfL3G9EHtUWPP/hQwJi2tf/YYw6WA4OothCWGlbrmy2Sb0RUGZa7OB
         FlnjFaK/r5tfIrT3IHbNA720SNTEbWOJ1Fs43J0H+0CEf1PGgqMf+usWDKSnjHr/D5p9
         5//g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=lbdIgHRpQ5lZJX8G5TBjXl3IC5j5oDfpAtFV3JL7bfE=;
        b=IsEFWmfda4M8Vis77hMmSKWDvqScK2ZbZ4S4XGouYiVpgVmpxWfswrxUAWdRbV0TSy
         f3wJGCS6rL+ciY3Qn08Ps4437Mv4y/5PpJ8UW4C+TjU3YTvKztE3f2/Snpo6aSVGFTVs
         CCHCYSA830UauJtHHltVg9f6BbTImzMKzPG2IbHKM8l2zOdMeGAE/c4JrGKawHGjvpKR
         5WG1iT64r9eyWxzhWxP8sAgRWVI4SuWsfbKJ7KJsNUQsPy1e7GEmTT8XBR+uHaq1qeks
         f9H0r37WYYjMVAHJs2NlIixe7HLKbobMLeekMMyFm3ZkmxsJPdvCPyoe/Q1CycvsszE8
         DxzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ge/cQFMM";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lbdIgHRpQ5lZJX8G5TBjXl3IC5j5oDfpAtFV3JL7bfE=;
        b=iQDfAZXPdEnmNgAx1jBeXc7i3rPVG2kG03+P6i1p4oqBSwpUw4b7fApjQnZBxqpnuj
         y4LnJFHm66ivNjI8mGHkHgsJexiSbxxgWiwXc+SLXPfT1SLrtxQuCF/Zn4Fx1nH3wq6B
         xGattZoaaa9nJVKxMPW3LQrDUdYkfw4VuKvf/hxW7CXa1ViOlTGlv32XufZeAMe0mSGm
         jqU0mBxJ1HI1OhVMbW9kR7FQLtjezCSawZ6xgmrH82HSNuqLm0hk+C5E5z4P1XDx2rb6
         OczjXyEdkb7hRUTgDh4n5K/mpJK/xLWwkg7aqoNqJBnFfSrS9Oj/auJ2N+HyU/o/gH5/
         wMdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lbdIgHRpQ5lZJX8G5TBjXl3IC5j5oDfpAtFV3JL7bfE=;
        b=JLbGVLFeD5ccZxjUczIp9bOZzLizzSLdUsnKkYW2YvDNMd7h4+/MisFSui4YOPSSU4
         9XtfNp+7lPCQR07fdS3pWDFNx+ZRdoz5NBt50XpOGdk3vjccPKe5snNVAu8LhWVSkVP8
         evAWDNJBk6zZ1x6bmqJJki6c99+bZblS7AmwANSwvR9QfVQZihV6v37r8UiRwWgW7ryU
         Bg8SbkpmBt+beGrd6GofSm2BmWvu6WTuOr2BI9XV1EIdpyHo+mspDBVfUc1Jg/ZaKsng
         zU0C4dohNFDa62VCT4FpjBCh+klO3DaSWMViEag1HlV54o81MKIhuFQhQPG5bRd7CMen
         +wBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IgVMzRgVK0IwsCtUP1f/KG8qOrJiH1S1L9+35iMvfrjvHjkwl
	zPDf6Y9t3mP9gq31o9S3VjA=
X-Google-Smtp-Source: ABdhPJwdARKOT03DqYZu1BCECOYbbuwmjys/GJiY0zRv0urTO6NEWb9SogNg9gemovj6XLK8LApoWQ==
X-Received: by 2002:a63:1843:: with SMTP id 3mr16004571pgy.253.1614641949885;
        Mon, 01 Mar 2021 15:39:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6a11:: with SMTP id m17ls6991639pgu.6.gmail; Mon, 01 Mar
 2021 15:39:09 -0800 (PST)
X-Received: by 2002:a62:7a88:0:b029:1ee:174:7c22 with SMTP id v130-20020a627a880000b02901ee01747c22mr768767pfc.35.1614641949403;
        Mon, 01 Mar 2021 15:39:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614641949; cv=none;
        d=google.com; s=arc-20160816;
        b=WUUFsW1sF8BJJu8g5rkfk+sMkXJHb2C4dQgokBptqWoGM0H9jq8Z3RgbcjSUyqgz28
         D3ej3NvAqGjceiLKWhMULZbb1oVfL8Y6woePY9m6dA5xyck9GrAtWt0Q5rniD20POu2L
         ZqxyQH1h6dwp92P3f+fwey9+CwcqCmTtVGEvFhhMw+a9jy2vF8cjg5FJnUqQLQfceuEu
         o0iVqWMnQtgIf8IoQ3OhCVL6iCoVwnnt59TU8JpXDATCsQ+aIcBAp+je9vYo+96p7Xny
         Ofs1yMpDde+Xjtpw0HflHU37XU+Z7pu2riw7JcZWyLnfeo/kXar3+uOd2UeJob+7JUcS
         fvKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=22a0lxaM3efHimFh+FrhA/Ddz7n4ILJ5iFoGhuVr1HY=;
        b=tf0Ae4+ve9RJYaWqZXijCwDpDpPmQQfXvl7Zd2PxqULFxu9CvS+u7fn/nGyqk4FDCS
         sfXpg9pruetffQ4SYM7Yq8CWFh9mp/HL1bAjHQDrY88No9iR2xuc0gab7Z4dMeFSt9/c
         AqHum5PXQtEY2XzyO1VcCzF9L1bLCmP5Mzi2ts+pi9FTYdgqQPYmf6yTBEckJibwEl6L
         URzQa2E5P2wWY+8dutpg+JmdaUYEUrlirhYgDvsRnwmTTF0ap/SyQd7tK+AxUhphcUAQ
         +7Cix+Muzy0xXfningdD29GCuESZWRFb9fjySAk/qcoGr02TfZnB8wjX90bNE/rIXT3A
         xGWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ge/cQFMM";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e130si966853pfh.3.2021.03.01.15.39.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 15:39:09 -0800 (PST)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E55F6146B;
	Mon,  1 Mar 2021 23:39:08 +0000 (UTC)
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>, Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>
Cc: linux-rockchip@lists.infradead.org, Alexander Kochetkov <al.kochet@gmail.com>, Jon Lin <jon.lin@rock-chips.com>, Chris Ruehl <chris.ruehl@gtsys.com.hk>, Johan Jonker <jbx6244@gmail.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, linux-spi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, Vincent Pelletier <plr.vincent@gmail.com>, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
References: <20210225125541.1808719-1-arnd@kernel.org>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
Message-Id: <161464187231.31555.17379793263807156995.b4-ty@kernel.org>
Date: Mon, 01 Mar 2021 23:37:52 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="ge/cQFMM";       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
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

On Thu, 25 Feb 2021 13:55:34 +0100, Arnd Bergmann wrote:
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
> 
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> 
> Use BUG() instead of unreachable() to avoid the undefined behavior
> if it does happen.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: rockchip: avoid objtool warning
      commit: d86e880f7a7c5b64a650146a1353f98750863f21

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161464187231.31555.17379793263807156995.b4-ty%40kernel.org.
