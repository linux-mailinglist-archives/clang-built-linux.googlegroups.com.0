Return-Path: <clang-built-linux+bncBCQYFH77QIORBCU75D3AKGQE46KOUQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-f184.google.com (mail-il1-f184.google.com [209.85.166.184])
	by mail.lfdr.de (Postfix) with ESMTPS id 017031EF3FE
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 11:25:32 +0200 (CEST)
Received: by mail-il1-f184.google.com with SMTP id y16sf5949233ilm.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 02:25:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591349131; cv=pass;
        d=google.com; s=arc-20160816;
        b=mGXTVe7YMLBD5XmsCheLeK+nwOXtrMZdIPwC16hhVR/L8+wx9UcztDlWGMRk5g4B/J
         csAO5IbdAJy1CVDHACT88W1ggNZAHAoTFblrPaHACAnVGY69C3E6IgtCg0R/EEwIHuK9
         mddMGGxaPPGiqoTH1kX1jgaE0qILsCJvJ/EArZ8vzjAgDps6kZT/gzSve+w20Ucu2uuX
         ijgmSyK/YtjGzKhIL16n2tJj7QLaHgy2muDuTfRTUKu0NDQB1uHZ26jy0dQ38CUV1yQp
         PFbKJYtaXXzkIrzaFPBSem3Q2k15phTAGkKe8xZCmIML922NuDX449pdLfYcZo1y7EZT
         nUBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=6nzvkxg9JVySD2oWD892Q+gaGSeUjlwPJmwamPjmmTo=;
        b=KVT2yd6ZVrwHgY6AC4guVbhyYeWIpcV+ZnKJtgzBxVv2Imu+DkP65NVAeWgH3akeTF
         bxwAUI3k1ljgIypyHIJXaZtKOx8wVEVPkXltCkD+/QTiqKdGNVbtARbyY0cMCqlbz3is
         TcVTjZFysCkC2ap+xlIzsrmREZK+ubJHGfLXXgdzYJXIBc8DXJVzONkO7zqT2pO7UcJ9
         WssynXMvxZTrGwaNAwBq5fYuQaZAnAnXxqP3/5hoKeQqIy4dTDVJlnZ74fa35/HKtmbk
         /MgMG4xbS6ileb8TFiDQarz2MB2YNm5JHij6OI1j8cJQz7+wMjk/bKVJ7jELIV93sTLO
         1bKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=BNfAYaj4;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6nzvkxg9JVySD2oWD892Q+gaGSeUjlwPJmwamPjmmTo=;
        b=sepVD7HUZ+L9H9+MMELuzf97MGujZyGnnDs9hGyrAgsAnfwMY0SCMbMfnUP8dQPimq
         bUYGvSs7002X7Mw26InqB+Oqv0ldHbZDn1V8n2cpmSlUlgOxXoFv2W5THmcF/l80Uaux
         P1f3kgY5rNuKEuo+UHHUdUxtxSBGnnbcbVnsfy47iak8V70H8QPuGFtzV6JFniBnSfY7
         gBbrsWVZBNw8p/XFtG0MzmG89P4uT8YpPngCiIHopolaTaaNyAuTlcOLAflIrC7iypdT
         4Oke1YwPU5wQr677CHNjIA5PavDAS/Oye1V/sFXYXhHFrRXBbdpJofnrlW07jAPbswea
         rPNg==
X-Gm-Message-State: AOAM5312nRmzKakY3ZBJKLyonHYcFXgBtG3UbeTdW7PG4R16nMu392pv
	DvFdiM5BZK1CBxgtQztC1Fc=
X-Google-Smtp-Source: ABdhPJyL+izvb2bL3VTxdzaXH0ae4oXDtZ7+xHyabiy2oljG4XVu07jwwAL8ujmkYd4hZX9XpxMVbg==
X-Received: by 2002:a05:6602:25d3:: with SMTP id d19mr4800814iop.15.1591349130859;
        Fri, 05 Jun 2020 02:25:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:c85:: with SMTP id b5ls2294839ile.8.gmail; Fri, 05
 Jun 2020 02:25:30 -0700 (PDT)
X-Received: by 2002:a05:6e02:be8:: with SMTP id d8mr7326519ilu.32.1591349130528;
        Fri, 05 Jun 2020 02:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591349130; cv=none;
        d=google.com; s=arc-20160816;
        b=puz9S+jS9JdW3Xhgp9jZGRALI7nhG0C9qZKnTP4MzGUPENQrK2hQseatcsOshcpjXQ
         l/5RYKvNgkpmiMryLlJzn3E/dRLiFSY5IibEP5xwD96o53cKJXUDLZuYp5oVaMtttEGK
         8WURC1NAW/eo2nw7LeuZEaeprnqQDY4Ec1seS5G/Qw6cB7QrfJo+5cjgACCghT6VQxJW
         C3aHkxx1d3HMwyjHf2bAY5eYV+NvNoDYvr0Ep4MnCmcuXkYOZHisJu23KfL/sxxJeJFh
         BX8fbgTF1dZ9W2RD5MJZwfn0VjXVjDNKwT1kLj/cDFQ8WqA9sN4IfyLbig6HarJzQFhI
         D7Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=4DMYxLsLHIEhVdnqccTaMZxujDa7ILXa6vhA3dmslLM=;
        b=F8+UMaSbXuhykh6ItF3oIcRzyUTxos+4EMXDLv9WAdfkdxcREIguN3e1m9ypKE8WTb
         33h3CYAz1U1HlyiFN19t6P+te+bVvQJXH4+gSCVkkOAbUe2c9OufdlZGqz61k9rHk0vd
         w/pPM7anQF65hHggfsbCAWj6C6qm9YXI5o5hP9Zper7LxZnwJsHkUzQcDXOHBCvH2sod
         4bm4AVldmAEPFIsDRHJGdbwhKid1FuKpwHHEchIu/PJUxYmc4zHYQtMbjwyX2nhzwBfr
         3447mVQlARCs6GeV/q4FNknaJx+LViyHgg/JMOZfPYIK6W5dGWmBX46nLDq4FcDkRoep
         v41A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=BNfAYaj4;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id b1si43113ilq.4.2020.06.05.02.25.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 02:25:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n11.prod.us-east-1.postgun.com with SMTP id
 5eda0f79cb04586933245586 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 05 Jun 2020 09:25:12
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 260F6C43391; Fri,  5 Jun 2020 09:25:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id EA82AC433C6;
	Fri,  5 Jun 2020 09:25:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EA82AC433C6
From: Kalle Valo <kvalo@codeaurora.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,  Linus Torvalds <torvalds@linux-foundation.org>,  Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,  Alexander Potapenko <glider@google.com>,  Joe Perches <joe@perches.com>,  Andy Whitcroft <apw@canonical.com>,  x86@kernel.org,  drbd-dev@lists.linbit.com,  linux-block@vger.kernel.org,  b43-dev@lists.infradead.org,  netdev@vger.kernel.org,  linux-wireless@vger.kernel.org,  linux-ide@vger.kernel.org,  linux-clk@vger.kernel.org,  linux-spi@vger.kernel.org,  linux-mm@kvack.org,  clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/10] treewide: Remove uninitialized_var() usage
References: <20200603233203.1695403-1-keescook@chromium.org>
	<20200603233203.1695403-10-keescook@chromium.org>
Date: Fri, 05 Jun 2020 12:25:05 +0300
In-Reply-To: <20200603233203.1695403-10-keescook@chromium.org> (Kees Cook's
	message of "Wed, 3 Jun 2020 16:32:02 -0700")
Message-ID: <878sh1g8zy.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=BNfAYaj4;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Kees Cook <keescook@chromium.org> writes:

> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
>
> I preparation for removing[2] the[3] macro[4], remove all remaining
> needless uses with the following script:
>
> git grep '\buninitialized_var\b' | cut -d: -f1 | sort -u | \
> 	xargs perl -pi -e \
> 		's/\buninitialized_var\(([^\)]+)\)/\1/g;
> 		 s:\s*/\* (GCC be quiet|to make compiler happy) \*/$::g;'
>
> drivers/video/fbdev/riva/riva_hw.c was manually tweaked to avoid
> pathological white-space.
>
> No outstanding warnings were found building allmodconfig with GCC 9.3.0
> for x86_64, i386, arm64, arm, powerpc, powerpc64le, s390x, mips, sparc64,
> alpha, and m68k.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

[...]

>  drivers/net/wireless/ath/ath10k/core.c           |  2 +-
>  drivers/net/wireless/ath/ath6kl/init.c           |  2 +-
>  drivers/net/wireless/ath/ath9k/init.c            |  2 +-
>  drivers/net/wireless/broadcom/b43/debugfs.c      |  2 +-
>  drivers/net/wireless/broadcom/b43/dma.c          |  2 +-
>  drivers/net/wireless/broadcom/b43/lo.c           |  2 +-
>  drivers/net/wireless/broadcom/b43/phy_n.c        |  2 +-
>  drivers/net/wireless/broadcom/b43/xmit.c         | 12 ++++++------
>  .../net/wireless/broadcom/b43legacy/debugfs.c    |  2 +-
>  drivers/net/wireless/broadcom/b43legacy/main.c   |  2 +-
>  drivers/net/wireless/intel/iwlegacy/3945.c       |  2 +-
>  drivers/net/wireless/intel/iwlegacy/4965-mac.c   |  2 +-
>  .../net/wireless/realtek/rtlwifi/rtl8192cu/hw.c  |  4 ++--

For wireless drivers:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/878sh1g8zy.fsf%40tynnyri.adurom.net.
