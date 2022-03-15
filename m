Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBIHUYOIQMGQEE4ND3RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 124E64DA423
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Mar 2022 21:42:10 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id h7-20020a17090adb8700b001c62f021a28sf309985pjv.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Mar 2022 13:42:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647376928; cv=pass;
        d=google.com; s=arc-20160816;
        b=STYUBbVqUjxOZf4mkIVRKndBkYENKVRqhf3Hj+n0rod24uxJeDG+Wd9doUlBg5AFXd
         Re3zI79XtKEYPNvs78sAPNL/xxwdNR3znFH/TaSLrLu4CAJNSg4DT/1Xl/Dz79hBMhxG
         tTD2Q2gV29s0NhAF0jf+MAq/qe7Xq2/13yPTFXAEB2TzwXVze1L9WBtMHeotAujvPQfo
         ak1elybQWpe+BKk45dohhud7+IqikBJy6TBKvAxgl151oj7Z/R+G1znOE9sDAn9weQ4/
         qPILz553hH26skjV9Q7dPzTGRwVsEYbJQ/M6DLlUrhI8B4Ku985MOd/Lbmkxda1dQCU7
         Aq9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=02QqR/pRalTXUPfOc2leiCognSaSQvdWWon028iONLQ=;
        b=EJ0tv1k5AarwjCxfTk6Y5t8Bb+JTDh2ULh+xTkJ1ZccQCnOiPLQMxGve4qV8kdZMmB
         AeA9LfCzCfMVq0kVwF0NBvgbhhDXgqwAFQv26dgYRIxwdyEJ7HtI4TdD+IJMA7LiaTXa
         h3j2UE4EmAeTTA3D0PnUQmWkbAZUNrDw98AkWRPm3KQQHIfq9uj5hKY0q36WKVWbbyH6
         8rzAvTva8eultb3sM7CJ1Js+RQm50BFuwfkdm5PUyBFSTbsIcMUF0x8X59lt/b6/G5sy
         lVyG1JD5q44Jp48YV6Zn4ZlUyi52uw186MR5x8RbhtexWoR6Ae85BK/79grMvb/8xNkX
         p7PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20210112.gappssmtp.com header.s=20210112 header.b=JeaFSWMA;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=02QqR/pRalTXUPfOc2leiCognSaSQvdWWon028iONLQ=;
        b=M06mrbNMmlf4KCvR8uxQ8NtHYfSIFFOV3Ztb+z6lWmCkK+dC04HUWjDRQdYmTUh+Km
         RWvxwJKWtoUV2gNLq5NHDlxwFbHGy6wW9Ct3u6Wx29NgDAes8g6mfZml4L1tqVvAfz/p
         saWfcjX4Xb2S61Abnb8Q4W7lgcGyoHA1LuwdaD8SO5fDM3CtzoTBE5pvf4D7p/Scb5dM
         SAf6xo7T4OqgUdsLeTcKGMD+5zTCr7cVCw++BCoqusY/FBiHwmEOV3sby52vKzGwxmfu
         q22iQFPpPFZXsJupJOYghB91oiv8MWtIyKPiDhQNiydw0o2kmv9h0g8Q9zrV4ngN5C7X
         EmGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=02QqR/pRalTXUPfOc2leiCognSaSQvdWWon028iONLQ=;
        b=blctSPdWAQ/Dirlp+StNz85t4ZMakdENBw+G2Kyjdp0v6hOSoJcNREvh4PXYu1mOxe
         qf9vqWEy04XBs59sPPy1aLbqF8qQG0zwmolrVNLJMd1FaF4qA5igau7yUdlm1WZ0Gu3E
         sRsqqWsMWL+o1jHtY+jdMvsnl37omjWqM9sT5/Ahe08wE2v0mk3Q0hrydUVIvoarXF6F
         357NmYpNBtosc9n7NpLildDEaay3IU3TDqKzgsxZfDjZHHnyXLSMPiGvtQimr1GoTk++
         peR3U+ryvaPQFtBwgzKklHPSSxh5oVDxBu+hirsk8mL1Cws/kiAH2YrvHTdi2hha/c4W
         FCMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cs1eM1Oc3IRpP9cqaAaOPm2gvqajBWTG74wGv8+LlttyJe/g3
	jLbKTbo3BxJPQu4Q2cRio8c=
X-Google-Smtp-Source: ABdhPJxibb5wctKaqkBTnFb3yskJPJq3faaKFEfbgBmgtis09rXinjldRP/saGVFzf3Xc6SLTpnUuw==
X-Received: by 2002:a17:90a:bd04:b0:1bf:951d:5bf2 with SMTP id y4-20020a17090abd0400b001bf951d5bf2mr6600183pjr.18.1647376928541;
        Tue, 15 Mar 2022 13:42:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b8c:b0:151:eadc:9992 with SMTP id
 y12-20020a1709029b8c00b00151eadc9992ls9659834plp.8.gmail; Tue, 15 Mar 2022
 13:42:08 -0700 (PDT)
X-Received: by 2002:a17:902:f551:b0:153:b179:291a with SMTP id h17-20020a170902f55100b00153b179291amr1199309plf.13.1647376927939;
        Tue, 15 Mar 2022 13:42:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647376927; cv=none;
        d=google.com; s=arc-20160816;
        b=klW0shLbUgIOREvOi42hKQy+Fn2A657IFk5blDQ3tS4uSY4+HbetBkUg+3HdlTw5au
         jXnRNy5QFMdHqzNjuXOK+a1XMnrTScgKrikTyWsSIKY6S7KYugRFgdWxKQOz4adC8GSl
         QBejH11vBMVxy5wOd9LmYE2J2QhEc2jJNfY5ykPsG7cJj1Y3TO1M7lqWm4ETAaWd/bJU
         WvszskNB1tQ1yBVmG/NjWICKs62PsMWGEjNPOh418ysaLlGGycdUr5acA5VAemxrHu2T
         0jdSgkM5dRiXzQ4PyddoYaOHPKR1YV4R2T6XS1W6XoV0kG9L583xmw9LduVg7qYaRsBw
         Ij8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=3LYA3F2vS7/qRcuHKgfo+jK9meyWqLhonxVb0i4Hx5E=;
        b=HF9YsYv47KkqzlhnaRTyLVwbkIxOHJ8NrtVpZyZUz2p5eepP8QJc9TQlayoJu8KWiT
         z1LEyRM1Wty+c11s3HWU4hicMv6HISTMnGyVP9Hy5ZExT0FvofkEub08di1O19dVGKRd
         TOu1oO4woFwkTheAW/lTcG+lMXAO0QmMgL052MCncobq0k2rZ+/azPm6OKSQMTZWPCY1
         3Uy5+c1PbuhaD4Rl+CpkjOHt1t3LinN7/nNcXVhsWpFqpupuvUm1+ioVxaLoEQuqAkj7
         XDEKXEvHFfZyvvxcBhewesYGvbPghVLI88EzyG85sLlFLCGCLI9Q5Otlo+4byNL7TNVo
         qEGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20210112.gappssmtp.com header.s=20210112 header.b=JeaFSWMA;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id d12-20020a170903230c00b0015382b58747si9904plh.0.2022.03.15.13.42.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 13:42:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id x4so180196iop.7
        for <clang-built-linux@googlegroups.com>; Tue, 15 Mar 2022 13:42:07 -0700 (PDT)
X-Received: by 2002:a05:6638:259:b0:319:e237:b6f9 with SMTP id w25-20020a056638025900b00319e237b6f9mr16110035jaq.186.1647376927106;
        Tue, 15 Mar 2022 13:42:07 -0700 (PDT)
Received: from [127.0.1.1] ([207.135.234.126])
        by smtp.gmail.com with ESMTPSA id k5-20020a5d97c5000000b006412c791f90sm10260598ios.31.2022.03.15.13.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 13:42:06 -0700 (PDT)
From: Jens Axboe <axboe@kernel.dk>
To: linux-block@vger.kernel.org, Lukas Bulwahn <lukas.bulwahn@gmail.com>, Christoph Hellwig <hch@lst.de>
Cc: "James E . J . Bottomley" <jejb@linux.ibm.com>, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, "Martin K . Petersen" <martin.petersen@oracle.com>, kernel-janitors@vger.kernel.org
In-Reply-To: <20220314150321.17720-1-lukas.bulwahn@gmail.com>
References: <20220314150321.17720-1-lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] sr: simplify the local variable initialization in sr_block_open()
Message-Id: <164737692606.34720.13651107602467649811.b4-ty@kernel.dk>
Date: Tue, 15 Mar 2022 14:42:06 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20210112.gappssmtp.com header.s=20210112
 header.b=JeaFSWMA;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On Mon, 14 Mar 2022 16:03:21 +0100, Lukas Bulwahn wrote:
> Commit 01d0c698536f ("sr: implement ->free_disk to simplify refcounting")
> refactored sr_block_open(), initialized one variable with a duplicate
> assignment (probably an unintended copy & paste duplication) and turned one
> error case into an early return, which makes the initialization of the
> return variable needless.
> 
> So, simplify the local variable initialization in sr_block_open() to make
> the code a bit more clear.
> 
> [...]

Applied, thanks!

[1/1] sr: simplify the local variable initialization in sr_block_open()
      commit: 79d45f57a19537a1ec6ebf836944e968b154f86e

Best regards,
-- 
Jens Axboe


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/164737692606.34720.13651107602467649811.b4-ty%40kernel.dk.
