Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB7WI5KEQMGQE773P4AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C59E4060C3
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 02:19:12 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id a17-20020a5d89d1000000b005c2233d0074sf100416iot.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 17:19:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631233151; cv=pass;
        d=google.com; s=arc-20160816;
        b=SJT4O5fb3ts6uEqArHWHWyQzCO6aaVmKf/hvcuSLNjimv0ZL2Ab3yf1jKNkKdMVUhD
         MJ1UjZJmXdYaU0dUbGylvGrNvikJLPHXQuZeANsl21O+AyLo6vRyJ7zvLVImIQHrjFWD
         8cNqazyTJmcfZVEwLJpF8upcKKoOA4O8hMX7rHc1ueFaUbLW+UwUUZ+/UW+H5q31sYis
         +sfjsaz4dOD2LMlzLx2fqXAN3GPOmExHRs2qdsvRDZzqwPe6b6/gj29ArgACjuG1w3KB
         32mUIB44N7yrjYFqKPoLHVQPTcJS5LSLh8ZJeWPYx11sOmjK60LrTpfzj2AoIaIMrold
         Uz1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=G++QFccS7MYH7JFn7Vr0Sg765jpmItyb5dh+f5euYIE=;
        b=VNS+hxMH92OTOiQnjuLzfYHPPuIG/OriXVhzn0fDBxNQ24pUbFMiqu6qrLaSB8zNNQ
         JdkK843JO/E+KIh6GjH9gr/lv4D2jajEdCVdhzxFcKn8uIqDRCMdJVGe4wI+tIo0zwie
         xo8ruwDrlHQBXqC/OQ8goh5GMG2U62ZgSZrIHUIcu/+UG5OpkXS/QNR2GR80eRbnE2Kd
         OC5+DIGYa9Cd0j+rXJ9CwHQVTVvID7B6jT6Yu9ti+Ov0SPjLEBV7YzWOnSWUAFjc6J+8
         h/Jv3ltzOQfD7SsP0rZz2gM1lf2RQ8RFQWJE0Yg0cBJoqizBsaVsGkZZ0M+yARpei0eE
         1OVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lb+E9Xo8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G++QFccS7MYH7JFn7Vr0Sg765jpmItyb5dh+f5euYIE=;
        b=O/OZm+k+zGN5+khTXt7Ac/5GGhke7mZPtQ+RNiMyVQ5XXTvgEdxuAnUJpFstejUdur
         mBibKgIcDpZ4dB6VG3Lvd+oBc7pvkFh2OXQ1+kV6yCkcVt7+ruhIxhWyh4ybgO7hVmAT
         XRWjaKgqYSA8JMH5gOlEj9KBHBCS8ExuOD9CEc4vsenJ2KaBEWG2zXR0+eX5p6XnO3S8
         I4t5VT5YPONnP7U11hLz+7I+nYLJVGs1Rg4xKnuBpeaV0onjiaKKmFNNd28NYYFRo0h4
         VyCBpWEwzgffwMixQaJDPzbM+9s3bLFA3aO5oXxmlIYDgLHZ8fJqC/OVgKcoNCg00qoN
         Wzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G++QFccS7MYH7JFn7Vr0Sg765jpmItyb5dh+f5euYIE=;
        b=v466EM4QnH9kB2cJ3QST9JP4SR6ozLyKxEFuRSaLR1u4MOTcZ2KKhKwre5Cu04J/87
         KuOBMYxVrjV08ihi+iBF03tHd3F+OXMkVCwpB4WKzgipQdP2HCt9Ypf4AJJyJJyEdC+T
         fNyoL55odPhuUfh4gksvopHveMZQ28xEWZSCkO8zp8GnZBzB8hW0o9jX+JBQHpc7eCQ5
         X2IgDkURhQ9wIgm1U03E2v1m2d+8hAZEWsWBB55UnbjV2envrJAyl8Yd8MN/dQTpQiyx
         baKU+CECAZSImIWwlWSmpHrIh0bXE9m4Mn1waTLYesEKv68ZZDjymIsEiaNatvWaT55F
         IC4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qXRwJtHwOrQ6jo4jZGsBlW/otCTDCZyojtTW3rRd4HVv0IYJh
	gOOf2BZ+MlqxDBQeutyW1ts=
X-Google-Smtp-Source: ABdhPJyF1hmQcV81b1UCyW9auaY86anHDrE+POD+vHcdC5XwO9f2in+czID3D6qLYgavTMUuGbMk7g==
X-Received: by 2002:a05:6e02:214e:: with SMTP id d14mr4007949ilv.142.1631233151036;
        Thu, 09 Sep 2021 17:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d108:: with SMTP id a8ls775824ilb.2.gmail; Thu, 09 Sep
 2021 17:19:10 -0700 (PDT)
X-Received: by 2002:a92:cb8e:: with SMTP id z14mr4442550ilo.318.1631233150641;
        Thu, 09 Sep 2021 17:19:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631233150; cv=none;
        d=google.com; s=arc-20160816;
        b=vUsPGd3lO2oaUHHjDWKpg1UO4TP9BHH8MExC/5wVWJ/HGn5XVhKcORrKb5UmXLsH0B
         l8nQN5+n2TbnPGf98nUzpu0xNmac2ThM9tu7kYFCKZtaP+/31I2QDBIsEAaWOE3EZ1b8
         xlLaDywAXB65y+nyBR05+lHLm/syF+6x7MqH1YXXW7iDSPGiT73ZMxtEA5oFG8K4RlYr
         M6TcQGXdvHGAPZxJ2WEU89tklHWJ5zzJwEX27lOh0EzkzCGW0xqMpK10S33YPpTYA5DX
         8OUjOgZKMyzAczreIrmsu5oKY5dgrPPZ2+BEQKQqjSeoG0ONay2rSML1vu2lN3QySl0E
         mI3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MtZpOiFyNq6ebNQOMDoCUMoBXpVwflRjpvCjhXPbP6I=;
        b=qvRNxSzFYK0x9eo9EbwmmqOR8zLssz27dEKMnm8eoH09HODcBTHL0diDcapwhBT7el
         kX9eD8Hdn7vAPuO5MkwqS7R9O5uEwW2FXLDCtADLxBpoFiqWA1T86D4HLIJZ7Ifvp9Y1
         WrSDybdumMbQ+TZ7/YNsqzUoSLR2DOH/LpB3VnR4vGR/QEkkbf5mUz3+UH8+A6lAHMEy
         YjSYgt4b7WxoYSt1Wa1nsK8crrHJcBZmiLn4ohUIrm1tivZuV6k8mEGyy1/2knYe6Rgm
         5oCewWFfo83JIAtd8EJqJR/gDbhs5wySUyTF3Pcnt2cDiswYGlw6IByitJTmNk/haPlx
         4qvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lb+E9Xo8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r4si158170ilb.4.2021.09.09.17.19.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 17:19:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 235F2611CA;
	Fri, 10 Sep 2021 00:19:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Theodore Ts'o <tytso@mit.edu>,
	Lukas Czerner <lczerner@redhat.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-ext4@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.13 34/88] jbd2: fix clang warning in recovery.c
Date: Thu,  9 Sep 2021 20:17:26 -0400
Message-Id: <20210910001820.174272-34-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210910001820.174272-1-sashal@kernel.org>
References: <20210910001820.174272-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lb+E9Xo8;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Theodore Ts'o <tytso@mit.edu>

[ Upstream commit 390add0cc9f4d7fda89cf3db7651717e82cf0afc ]

Remove unused variable store which was never used.

This fix is also in e2fsprogs commit 99a2294f85f0 ("e2fsck: value
stored to err is never read").

Signed-off-by: Lukas Czerner <lczerner@redhat.com>
Signed-off-by: Theodore Ts'o <tytso@mit.edu>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jbd2/recovery.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/jbd2/recovery.c b/fs/jbd2/recovery.c
index 4c4209262437..ba979fcf1cd3 100644
--- a/fs/jbd2/recovery.c
+++ b/fs/jbd2/recovery.c
@@ -760,7 +760,6 @@ static int do_one_pass(journal_t *journal,
 				 */
 				jbd_debug(1, "JBD2: Invalid checksum ignored in transaction %u, likely stale data\n",
 					  next_commit_ID);
-				err = 0;
 				brelse(bh);
 				goto done;
 			}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210910001820.174272-34-sashal%40kernel.org.
