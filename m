Return-Path: <clang-built-linux+bncBC4MX6WW7QIBB6GE275AKGQEL4FQGQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE2C25F411
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 09:34:17 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id 6sf1595433lju.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 00:34:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599464057; cv=pass;
        d=google.com; s=arc-20160816;
        b=c2CJIeMeNptm1qhLlQKDWk7X05aeGdGVPzmjPlvNofAjISISLT+rm8p7tLbLRXzxQl
         R8Egdr02NaPQ6pn7S4Kbpryy6pBVx0fCFSH58Pr1swA05Kq3YignYGs4HVw7clwCv3Lw
         Rx8Dgp+KNyA0+uyyL1jMEkvy0pi5sMsY3a31eLv49UcXxNS+5+Ef4sqMz/0Mz7XOZX2v
         Eody+bR8hUJ2rMbKBKzrOMbvhhQtJgvR5Q1rA4O9sKMxtWy7pKyTwqOZm0WM6XoihsDX
         BcmFeEFaFahKzjUq7m4CnVBMgMcQpydd/IurkQ+uVsWNRIi95Iue5b9qhkZXeC5YZdd+
         hzpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=s3sPQ4pRJrA9qZwIBSQVqQ8wsvC04vDQ+f00YfzntrM=;
        b=zqPuuLuBqAxd+NeU0IY+uqCvUHBxzPJcDbJm0X/tJViaMFxg+az+eFhDpQGaJc3w9W
         JnNWutfdD6aYOHq2JTePY/x/nilO9stkYxAxQQ9EMPy0fsTUDpZYCyoQ+iWuIwr334rF
         o4v57S1kLreCD8kLlS3cr7JLRn8W18BOzhlN97ugctOBP6XAFetJJvexMir32W/UJuOr
         PZrIJZ7dYlBMTvbs4Pevy82lE/r3iOxJ9aXpxsfic67T1+q6+n+++mL1DcokpLNPKGpk
         rxue9LLPX3QJh4HFiJAqoW95dMoKmRYjxGzhD0a9KRlp8Zv0UyVl0tUuu7t5/tobJlch
         Z4Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.231 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s3sPQ4pRJrA9qZwIBSQVqQ8wsvC04vDQ+f00YfzntrM=;
        b=gsIMgSZA+m85sckgqAneo7oNeP7d/GgSNRV2v+0UZDAX/1oHAiY/rvqz1e71577euf
         LTjSpLevQzBLF/KRrlBLXjG/5ZZXxbZE+uToKHOQO6visoIpDKJ4g9IcStQrudJaZEUl
         TdU5hlisDc7AdOmnRpUakIhjBxdpSONKnGPSKgvmcEM+86TYmKVOpjaa4p4IC/Mg1ljY
         K36MBktzQr/lsrq+bMLcQeAc+C7umPYppS+NQpkMnrVrU00Z+3DNoVrvNdnPyyybDkc8
         ibSIoqOvlVISd7dptlv6vDvxy2RqDQ/XViiAYd3rlTt4lsS/eom1xtwW5JmXPalV98CX
         /q7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s3sPQ4pRJrA9qZwIBSQVqQ8wsvC04vDQ+f00YfzntrM=;
        b=WMYVSyeojSYUmg400LU+2gHTrZh491jZfN8J3NXs4PFUcC48VYN4Gpe/3gDAs+xkCS
         SxlnhLhMrlWhDHnA7Z1vN8kc6CDHR210/s/E62e0EXxNbxychOA7UU9E8VXjsy/gv+1M
         OdvRnT1oNU4QPVfRPiGB2q/z5CV31xTIWQv9VBzBgqDru0cJlXCNHQqKMvA2ubJjYFfS
         AuCBk7NexKDo6Ez8Pq8c9k9CvkXmMFTDytm60pDOiw0scVqkFZpMGxGckX72MjvNEu2i
         cjEh+hTa7ElpRkq1YC8/EpHmoeQmKSUljpNSKZ/gkNqZo4C2UNnlmXS1H9q1jNdunLlK
         paRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532T8oKkRROxItaSBHzATHPhfyYebi9S77Ns2CPt4X/x5pwJUBLi
	0rVSGBSnvGNWC76mQfdVExQ=
X-Google-Smtp-Source: ABdhPJzW+cGVi+gFgBeadkFtShpI//2nLPYU4ZXa+1ck/mU6Mg9jIgaiKtqPOimgZ9hyrKG5yv1Flg==
X-Received: by 2002:ac2:5b4d:: with SMTP id i13mr9646739lfp.12.1599464056854;
        Mon, 07 Sep 2020 00:34:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b1c5:: with SMTP id e5ls3003251lja.0.gmail; Mon, 07 Sep
 2020 00:34:15 -0700 (PDT)
X-Received: by 2002:a2e:5c5:: with SMTP id 188mr71824ljf.375.1599464055784;
        Mon, 07 Sep 2020 00:34:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599464055; cv=none;
        d=google.com; s=arc-20160816;
        b=A3Hes4Rk3X0RYbEvi1fdDLTFa0CwZzILHp2n39ZSNv/IN006UjcmluUVL/pgxc7Vfh
         e0D8y1ADIkPKK6FK0acvADUVLC2rvw0iRYq+vgNavUkWEFN3d6XxR9sJRjuQ5SYZJSkS
         86Ppxu+sbXt8oYZTdknlGZPwd5yFaQptF3bQtWhRPJvwhdvqmY0Hm4lycNWOme+RwkcH
         jSbU6NbXIXZY/xmDzyP7jUDM0hx2Q86AL00WteJ7WaWIVxFYLqqFHnU4QRVGz2X/BIYH
         lh2CSe/5YtDsznMc8zzrOKVKbofZPigmqM6VDYrQS+REdA9JVP1mJVydkHF1w5o0Mwwr
         sbmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rPIcfuSbnlVQh/qjiDdiU7BFofch5hy86LmXDYMW84c=;
        b=t89KJm+9lUtMR+BQ+HzADDOvN7DO+B7d8gA6xTn0cRP0JW6Up4DWx6nBzi1KsQcCYX
         wD/9zysf4VO+qa369xRV9wcDHq6ErH2xVAKltiNb0WUKPKjODJuA9XLhkQfJ8DJ4tXdP
         oIoajSnLk4Qv7fmGs//5utrsOtK8YzBRZAtZ6ei5/Gm65uRvdHe7DHt12lq+X/v45Y+f
         SXbYFnriSEr2UbsHBUhCvOGgV5oWHxOF4Qsr/Hl8QCgUQXdrEym5FPp81SlM6WR5JOK+
         UPf+Qiho2YJoWO8hD6hgV70IU0/JcLimGS1rvWTywhHZN6yTeHvvogKf058NT4jh57r0
         uD0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.231 as permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net. [217.70.178.231])
        by gmr-mx.google.com with ESMTPS id m11si76463ljp.6.2020.09.07.00.34.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 07 Sep 2020 00:34:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.231 as permitted sender) client-ip=217.70.178.231;
Received: from localhost.localdomain (unknown [91.224.148.103])
	(Authenticated sender: miquel.raynal@bootlin.com)
	by relay11.mail.gandi.net (Postfix) with ESMTPSA id 8B79F100003;
	Mon,  7 Sep 2020 07:34:13 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Vincenzo Aliberti <vincenzo.aliberti@gmail.com>,
	Brian Norris <computersforpeace@gmail.com>
Cc: Richard Fontana <rfontana@redhat.com>,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mtd: lpddr: fix excessive stack usage with clang
Date: Mon,  7 Sep 2020 09:34:12 +0200
Message-Id: <20200907073412.27402-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200505140136.263461-1-arnd@arndb.de>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 3e1b6469f8324bee5927b063e2aca30d3e56b907
X-Original-Sender: miquel.raynal@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of miquel.raynal@bootlin.com designates 217.70.178.231 as
 permitted sender) smtp.mailfrom=miquel.raynal@bootlin.com
Content-Type: text/plain; charset="UTF-8"
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

On Tue, 2020-05-05 at 14:01:16 UTC, Arnd Bergmann wrote:
> Building lpddr2_nvm with clang can result in a giant stack usage
> in one function:
> 
> drivers/mtd/lpddr/lpddr2_nvm.c:399:12: error: stack frame size of 1144 bytes in function 'lpddr2_nvm_probe' [-Werror,-Wframe-larger-than=]
> 
> The problem is that clang decides to build a copy of the mtd_info
> structure on the stack and then do a memcpy() into the actual version. It
> shouldn't really do it that way, but it's not strictly a bug either.
> 
> As a workaround, use a static const version of the structure to assign
> most of the members upfront and then only set the few members that
> require runtime knowledge at probe time.
> 
> Fixes: 96ba9dd65788 ("mtd: lpddr: add driver for LPDDR2-NVM PCM memories")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200907073412.27402-1-miquel.raynal%40bootlin.com.
