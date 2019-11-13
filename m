Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCWIVXXAKGQEGOND62A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id DF12DFA201
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:01:47 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id t190sf390656vkd.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:01:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610507; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iupe+TgobCGysn3i3+yITxw28DlKfBWJ5u6//oYZm0UJ/nEMEeaFMzl4ckXZjVUAl7
         w8tb3RMmG9A+5v4z1gdpvn7IBP6mJpc5EmINiEAdH6tqONMp/wq9QxvOxUakGMYWPa2c
         5krALb2tHK7Jn6P1+nxRiY4RM00s+li/eKjCM7TEhuwb20/U/jcg5PcsIYc/1Yr6jlWj
         +1aWd1tjkwQ9NvNW+32elDSsjt94eukjgzzl05GiCr4A4+WGCyu7RtKZQQBu4Bl3gqhI
         ATpYoj/8DNd1k0bzaFzrTVAUSiym8BJFGVa2ShGE9YSzxFDzLGVJB6XNZycstmrehgGL
         NAAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GYNRHXNY2CUdS0E4p9ToWqB3ZYPL4/CgQbIl1XHd2pw=;
        b=nT1ApAWwFFQKS96BgLoD4sxFabCb70Mg/IxoQfNCWmGglancKwwXSF7NPYgPBMhcvs
         RCqEfQnFUtNib6BpAWhYKdnsbjhEUsu4ARrwI3EVaVugeimX4XyhNZ39tVxcbM8AJMKt
         O1EeVljmfK+rciD/T4iCgPD/vYFlM1TcaCkPDePs5RAsganzYNqd4uk7c8wcwNSIDsn2
         N3bgWcE9msdxw6wcVakc3BBrWA4rPr9YpGKgmpIx23pRnXlRMHISYQfzxBFRebTw9jyY
         uX2fKtYk2z5+O+Br65EPUHTkjTY1jtOBUzx4u2vg6RFD8CZYbv3Lg8JOFrHT5Zjhp4ID
         Wybg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WPHjKt3a;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GYNRHXNY2CUdS0E4p9ToWqB3ZYPL4/CgQbIl1XHd2pw=;
        b=Mp4BSoX9teTKoSJ4TYrYDwUsbrDcAzaXYWBsEjhy2djTHdqqfCohdMEq/5gVpZnUwr
         0+ZlyX4dALRvmE7Wr4XKpCpTwVik3g/HS9rSYzGuHWVNroBWBCpaiVGhYTjkf9IukxQn
         YC3Slhdx3lKv0fHAM5iRRKks74ZuBM6kOSNVkT6zZuBbIrrnXkgL/lBm8HJOSSbQ7kA0
         iLiEDzhIFJduzNXedOLjj59RdCUZZbo8HRrzv/4Uy6IQbJiIgbqAVoNjF8xNwW6q7wqZ
         VxR7Yais2o/mwpYMvPil9y+9zpsK1YKGg7xFopli6w1ZR2Wg8YJ4tF+svXYLCG/kVmKi
         fprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GYNRHXNY2CUdS0E4p9ToWqB3ZYPL4/CgQbIl1XHd2pw=;
        b=CPeTs5gqJvYUUxCZdTtYNEArgVdi1XoqCEo1Ro5NN3qDvJUkevi8e8ByVi90lHgL5x
         zjzFS9zayVsFwkl/eXmjBIcYI+11zXRd1rysE7oERjmFl3Xmo8cay59IPFrMBSHYhTlB
         sUwUXjl4+E0X1Ogo4p86FkZK+acb2ArQvzDSLruLZCvOfZZqIu+TMEVuzdQce3P5Ruie
         tIYEkiPUnxcTYMS4zQq3EDcyK6o6mk/FNkXh7rEbfehNRtNAOM4qT8mlBnQaePvc5i+r
         dRgYNyIWpwMEWa1InyKIfWISVYPxb1ux4bu+32f84p63Ls6q82UJaWA/n5pHrkvkDIiX
         b2mQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWG7AwQ/k0shH1sj22IFrJez2R/bjmslxOIFdS6CBT1LKfkSouz
	xaovtCANrVV9ts8z1FFwmK0=
X-Google-Smtp-Source: APXvYqxOkZ/TrfIIk37rd690hSr8h/E++NTRuW2DtUTuSUG1kAFxAkMXAILFGTV0xg6GIszuo3d3QQ==
X-Received: by 2002:a67:7d95:: with SMTP id y143mr486859vsc.39.1573610506950;
        Tue, 12 Nov 2019 18:01:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3239:: with SMTP id x25ls39035vsf.4.gmail; Tue, 12
 Nov 2019 18:01:46 -0800 (PST)
X-Received: by 2002:a67:2087:: with SMTP id g129mr467417vsg.191.1573610506659;
        Tue, 12 Nov 2019 18:01:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610506; cv=none;
        d=google.com; s=arc-20160816;
        b=Zac4ouSfwRvnHxzLdM23v/YgKT0AO7F+dJ85p2CLYMSBgRc8iWcESQaECj0Um6u/1T
         /p1AJeB0p8KerkgDo+9BbR/rU0mY2jnddNRjcBKIBNsgcfmMy822BCA0qDUHs09g6wJB
         y1QFofU190wf79C3jGW3flBLHi9+cyo9ZXT7JatcAUtdbpjpKc90B23cT8900ZH6gc7h
         Ckpfpkbg3eIlh2WkVKGbMS5pvJQALgcf4H/xJHsqqT4SF7eJp9jwxsmELVeEBi9hROOz
         /8lcGNdhrF9mNE5pCuYIsj1FFxWiEiWDv9bsS+7J8LMi9gTL9vWacElG4dXiNn+UzBMh
         3dEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MgCVej+ou9o81LgRo8e1+7a45v3F+6WEfchsE3ahvQI=;
        b=hzlhfBv1qvSiDiUE/Mqg68oXMa6uAq8UmNnPvolmJiEKzmqY88S9L6fd3lvoN4U9hg
         bm0nnfhs7qsAi5PeCVCy8hQrWr9qWe0cLvKBeS8vuEUfzrOgRUiF68T/sUX0O9SU7VYY
         L0rHqlPrGWaexUgsHNlJnnt5dasgl8cLUG2IqO6eNqOmSn9tf1XTDNv/+LClTT3DqYBs
         FNlq0tc/YfY/9iXx8UKIatzwt+ErXa1RrEWAQO5H2z5D7UOGz3tOuJrgiqTjsoUe67lD
         8zBSLDd1racrfxnWtLrShRXISG5xc49RBpQ1B6FO4cyDKRgNRWiL9ZXUI+uDFMukkIEi
         hLtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WPHjKt3a;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p21si22961vsf.2.2019.11.12.18.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:01:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DBCE622470;
	Wed, 13 Nov 2019 02:01:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 09/48] dmaengine: ep93xx: Return proper enum in ep93xx_dma_chan_direction
Date: Tue, 12 Nov 2019 21:00:52 -0500
Message-Id: <20191113020131.13356-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113020131.13356-1-sashal@kernel.org>
References: <20191113020131.13356-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WPHjKt3a;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 9524d6b265f9b2b9a61fceb2ee2ce1c2a83e39ca ]

Clang warns when implicitly converting from one enumerated type to
another. Avoid this by using the equivalent value from the expected
type.

In file included from drivers/dma/ep93xx_dma.c:30:
./include/linux/platform_data/dma-ep93xx.h:88:10: warning: implicit
conversion from enumeration type 'enum dma_data_direction' to different
enumeration type 'enum dma_transfer_direction' [-Wenum-conversion]
                return DMA_NONE;
                ~~~~~~ ^~~~~~~~
1 warning generated.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/platform_data/dma-ep93xx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/platform_data/dma-ep93xx.h b/include/linux/platform_data/dma-ep93xx.h
index e82c642fa53cd..5913be0793a26 100644
--- a/include/linux/platform_data/dma-ep93xx.h
+++ b/include/linux/platform_data/dma-ep93xx.h
@@ -84,7 +84,7 @@ static inline enum dma_transfer_direction
 ep93xx_dma_chan_direction(struct dma_chan *chan)
 {
 	if (!ep93xx_dma_chan_is_m2p(chan))
-		return DMA_NONE;
+		return DMA_TRANS_NONE;
 
 	/* even channels are for TX, odd for RX */
 	return (chan->chan_id % 2 == 0) ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113020131.13356-9-sashal%40kernel.org.
