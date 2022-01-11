Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXXB66HAMGQETHGTTPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE8348B91E
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Jan 2022 22:04:31 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id t28-20020adf97dc000000b001a5b98d2c81sf49556wrb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Jan 2022 13:04:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641935071; cv=pass;
        d=google.com; s=arc-20160816;
        b=FiGWiRbezdGVXgH3SCG8uMbaqxoN1wfuTexWoksS3Z7eVeLBqvuvjnBvpssbVu2i2d
         L2UMnWKdIWsXUOBnRIbHBJ1LmECKf7Bl6LZdREnkY7z27OmBdhIRujafC8SE3R2akSaM
         ezA0J5gSwJfJ1E9kVcYTvNeFEZXXvzag/S1cjCtWcNqAUVfJX7JNOOSDXP70jdyZ7bAn
         0w9ZQjKKrpLIyc7H8ldz3Di/DQofLTG5rxp9huUFCYOhh5X9pI9az1a733UGWiNDFI++
         KgQDfykNwrsRItrkfEMtvWZAmI8kpE7hLctDNRWKEJkcGS9P4e9tqBoMFk19URsGBDEr
         YwJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QeWsk9YCANzvXAANWzzF0aOaCc77/hApX1Yfkch1+xE=;
        b=N0jIMOOiFAFRwUXvy44cLyIHcUbyW8uGJeQsxWULUumYlKohQR/WHXIkYxeyiBbr6o
         W8+ZD4YbSiVTugXn8qjo2nWpwXjbvIySxij+YRtg8L1ghyKNVIiYMlNmIcCdpYYDeqwK
         cUbckVD8GKBmBpN6Y1mfaNRieaHA6SsT8JknVpuHZZCvDQpWgzvKpojtEC3fQj+qeVWw
         1rsvcsKYkejF4jvlHI9+6FYhJNVWJowxvJOkycjacOlI3EQzw2bc0JNGcu2Wm37+jhtg
         mHdvj/dmzExHvwpZMMoXQBQgEfxKLj8jPAh4L1VQlFGQPKqcoew1s+9kiY87hJ/U6hUx
         6RFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=qTdZ5dTg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QeWsk9YCANzvXAANWzzF0aOaCc77/hApX1Yfkch1+xE=;
        b=LIY4HWuOVN0UUAbJQKe9kUSVSZorTYPijEX/sQpqhyl6MHQMWArcHNOObBTc2Ut5CL
         dmezhQ7hlP1BFDAqvW3ciMneLCSwQXKMTURcfTD/6sP02jmuVWVX6Gbe4dmeBhFsqHUd
         1Vr3ZqpbLPb/jEf7nP2/0STf+wo2Njckg/uJUPid6VpLsjuyvN7zlXOub8T8qDFS8auQ
         ngmF+vRBuXFqpAJYkCaN4ieGSiBypI6SSB0Y0De8i88QIKmMnzO3FZt3vsw0GacWRjIw
         Aj8l1G22NQMNzyY1zjFZ7EIGD5IuJBPSi7YBmaPAPUjWTTAGlqwwvhBBL7Xi+aBpXq+L
         e+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QeWsk9YCANzvXAANWzzF0aOaCc77/hApX1Yfkch1+xE=;
        b=tATsmTNmaoDS7yiw9W8OREYnzWQCLlScS3Gepe90HouCaxqxGBmQ0n0jlAMTC0YCiC
         HxvwJITbGsg4gdwQWxO+dk+m0Sdrtv9oqSasPXp9lyJa7H7Q/xLVSvp12qDYgTjNTiuB
         dtgEmu+wQYuIgG0hKIVEAcVZNh9cSe2ox9CvZb2fyIdAKfzLR+ZNICG/lUPoVW39glRZ
         uYYA01GDaCZfQBF2jjKxJlh7JC8vHD5N+yzsot5aRffygdxuPDpC/YtBBPb6rmEXM7P3
         Tq/TLhF2w5fKGboxLnPhv7aqyS1unvanXP0515mxuLz0lJRc6o8B6gfcHYsNs0IU5ofE
         hQwA==
X-Gm-Message-State: AOAM533qKMBKL6EuytXRXsMHE7w7irau//OErs2rDzfwgLghYuvhXIUX
	08Ax8YmmjRctREyUprOaHaw=
X-Google-Smtp-Source: ABdhPJxWStMTXKQSPTEZ+NBhR0i2ydsP8bTjl5JuMdKIH1RTNtUB+rw7VY7KK582Ksziw/JsYBsOGw==
X-Received: by 2002:a5d:59af:: with SMTP id p15mr5428514wrr.422.1641935071085;
        Tue, 11 Jan 2022 13:04:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2142:: with SMTP id h63ls1588748wmh.0.canary-gmail; Tue,
 11 Jan 2022 13:04:30 -0800 (PST)
X-Received: by 2002:a05:600c:4e4b:: with SMTP id e11mr3982073wmq.28.1641935070212;
        Tue, 11 Jan 2022 13:04:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641935070; cv=none;
        d=google.com; s=arc-20160816;
        b=qB71xopyWBFTfPyjmKYucm5P94lgHwlwXq5rSk7h2+4P9APdEWPGrRakjQzYkNlofA
         7llScgpeCOmn5LlFLhvoyJs8KJ6o2RY4jyTF1XtXYbBhCFUTv6J4Cs2OvLV/v2lRx1KZ
         4Yw7onis/0mZi/2vs1jDYMEy5rx2wIZ1tpAHN4FzdGmShoWYFoD7kKPY8ld7uEAS5ido
         GqWgKAtQmPQOefgLkzrP8dred854VJgLRyiClTSD0RVtUiCsJpDwvWDI0WCg3XMx/P7T
         KID0CENGurL1b2UwkW+k15qXR4J7E5vce7dJ3IWIgvfEBRPRz2AaP+GSfZUBuB752i4b
         YOMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G0YuEwCZnEuKRpVHXAiy69Z0RUFspZC8cHSjq2E3Eto=;
        b=Zc2S52UhBbRg6VZM/OvNMlk6/bAFs3qoiNnkSHVEQopR6WGwpk9Xb+11RdO2sjeH2P
         /hIhn6prp2qT6YYnAR3XRZtNLxF1fycy6aPelTNzGoMlAuRyrQXUP5hHgvlvJLzLFwc7
         v7I4Q26N2WM12cJRCsYXmDv3TKkFeTIjHxPpofUTpT13axewWiJ9A1Fi8P1/jncadVy5
         n+hNym+dyIrfl2swwXfbQ6yfNNhl4Bckoxfwkb/Qi1cd0mnWT9YUTCZ9ZxlHOUIZqo/K
         9prC7cDSGYEmYID4jK70uvKFdzX273oFfIFnL82tzaX3gY6z5aYhRfWrkDSkWnsBT0t9
         aYkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=qTdZ5dTg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id f62si106764wmf.0.2022.01.11.13.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jan 2022 13:04:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id j11so1094753lfg.3
        for <clang-built-linux@googlegroups.com>; Tue, 11 Jan 2022 13:04:30 -0800 (PST)
X-Received: by 2002:a2e:a5c9:: with SMTP id n9mr3176921ljp.220.1641935069710;
 Tue, 11 Jan 2022 13:04:29 -0800 (PST)
MIME-Version: 1.0
References: <20211217144119.2538175-1-anders.roxell@linaro.org> <20211217144119.2538175-6-anders.roxell@linaro.org>
In-Reply-To: <20211217144119.2538175-6-anders.roxell@linaro.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Jan 2022 13:04:18 -0800
Message-ID: <CAKwvOdk0p98ac0yVLwLiJXndvyJw+Ufpxke2WEVrhyUOftN6=Q@mail.gmail.com>
Subject: Re: [PATCH 4.19 5/6] ARM: 8788/1: ftrace: remove old mcount support
To: Anders Roxell <anders.roxell@linaro.org>, Greg KH <gregkh@linuxfoundation.org>
Cc: stable@vger.kernel.org, linux-kernel@vger.kernel.org, 
	woojung.huh@microchip.com, UNGLinuxDriver@microchip.com, davem@davemloft.net, 
	netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
	clang-built-linux@googlegroups.com, ulli.kroll@googlemail.com, 
	linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org, 
	amitkarwar@gmail.com, nishants@marvell.com, gbhat@marvell.com, 
	huxinming820@gmail.com, kvalo@codeaurora.org, linux-wireless@vger.kernel.org, 
	rostedt@goodmis.org, mingo@redhat.com, dmitry.torokhov@gmail.com, 
	nathan@kernel.org, linux-input@vger.kernel.org, 
	Stefan Agner <stefan@agner.ch>, Russell King <rmk+kernel@armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=qTdZ5dTg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

 On Fri, Dec 17, 2021 at 6:41 AM Anders Roxell <anders.roxell@linaro.org> wrote:
>
> From: Stefan Agner <stefan@agner.ch>
>
> commit d3c61619568c88d48eccd5e74b4f84faa1440652 upstream.
>
> Commit cafa0010cd51 ("Raise the minimum required gcc version to 4.6")
> raised the minimum GCC version to 4.6. Old mcount is only required for
> GCC versions older than 4.4.0. Hence old mcount support can be dropped
> too.

cafa0010cd51 first landed in v4.19-rc1, so that lgtm.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk0p98ac0yVLwLiJXndvyJw%2BUfpxke2WEVrhyUOftN6%3DQ%40mail.gmail.com.
