Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBG5SYDXAKGQEE6SLGXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7A5FED39
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:43:24 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id z1sf9229949ioh.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:43:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919003; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y4Q+HjI6hUlNiMaszke6FulfK5plkkE8FtlWSFDUTU5KrgRGFzZuYFK9rZp0/AykJK
         jB0j4G5smSo1nryzN917MOI49zKXuGHN84GTG3HeiRKC5hQrEofR5tkDNR18eIGec5+i
         X9++hCiumdrDCNw0P4tjsTN5eN7+6lbN+pBV41X58PtBlaSpF3NLgnS408w3kod3LVlB
         hFebBG9qbLG1Pb6oe+ATzMPheXdqoW9e4gV3CBsKY65FgDTJsp494JM9vgdnlw+/5/Kf
         lgxXfXgMFij8oESkhZ/ptWn9c3yeQc9dSBeB1rzgl/H/C+iCWwO8sC4HOXQMoGHkIJ/K
         tL5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+Zry86QXJ7FTLr2+n+5Ikot5Sm/BTYhAqpS0iJST6b4=;
        b=NwF1ERKoKxzZ/nDCJEzV8E1wNSm4BXUUu2ZZc2WXw3QwCN8TQFQLmFYszv+VZuBpmi
         JbuZa089q//8BnBCiH7+KQUsfwA8+pEOM1CJ70V0FWpUpKSxDAeDrpmOMJZ764trtU9j
         ZmGGSlkDu3CfrrGv1IfrMULxKV64DBf7BXH6qLA4Wf109EtiwxIpS5zSxyE77pil4+D9
         NCi+vPC+D3FMT0OiQBZKlvLSxMIEsoX3nh4vbIS0p/KTMS6bd03vmhAas9K8ngfKAVnn
         hv0jZD7ZVNKhkqwsTFkBLnk/mDl/bjlvWIa9JawlSutdDpdiKyzQE0IBBs7RLzSCUdiY
         1lag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SLBdnPd5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Zry86QXJ7FTLr2+n+5Ikot5Sm/BTYhAqpS0iJST6b4=;
        b=jyXiuIZ8fsVW3tcA60I6OkhBBtGqFHkE8ObE/xgMdUQ1ZAl9iFeOJKEVIGW7W/0RoK
         4JnYAAFjdrjUC7NihhGYjHmhEZTq5N6nU1KrT0RLxoYccNXYN3z4u3YmrbMn8n0YSon1
         jvRtJ0wrLWe0J/zNi+O4KW3GIjqDYuUY+8MzHaxP4z9lAIHYJ9+iuDYwbM3ze2++0jeK
         J4P3XYv2H2uC5nmXmFwN5kwURJQJ9qBnNCai9R5lM/SM7xfvf3AJNa4IAJ1b/r/UHvAK
         oy7yqd4w8uXpj/6TXtxkLTovn9wORCShaLrT8uPfVXvUYakzyIOsFrzXCa64dBQZu8mD
         z8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Zry86QXJ7FTLr2+n+5Ikot5Sm/BTYhAqpS0iJST6b4=;
        b=iC2H+XkOT8iJBkNjkcjQ1PCNPnizCtsbZLL5sSCwdR+7nsoYtMJNr4DL03VENcR29J
         0xv8TPFEMKrTnxISleHluS8nbRu1a4FiqBbseDtTktCHB796+6AFy1XR78yYqTNM/Any
         MVajS/YsZ4tVJ7X4PbdCfLyji3jR08kO/QWzoqyPRuaRFAWtKvar/qtiya7VqPslgxJo
         vdsCsAfjSb9mAIMG0/Oa/hN/q2YkwMUfQ31Vi6GawmSu1KqtKykOxeJfLKfmZsz8qpRj
         v8YMm915H7NwhN0MXlQlI62Id4ZxlRdQ+BgK+vG9/bQqZFTn+3ZzkOj3o2Yw8aMmzGxY
         If5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXVUeN4h1R4K0OlwUSdNmFcjJVUwM558eXo4XVPBjiHrVieljKt
	muTL/F0JvJlZx3e20EkK7Hs=
X-Google-Smtp-Source: APXvYqwdceZjVNB9Xyr3pwXZZ12/9QVsT9+oyBKZ4jA14VtjdXg1qFBABhb+Z7wjSVn84EjrG/ai1w==
X-Received: by 2002:a5d:8b85:: with SMTP id p5mr6053424iol.9.1573919003632;
        Sat, 16 Nov 2019 07:43:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:105:: with SMTP id s5ls2015297iot.14.gmail; Sat, 16
 Nov 2019 07:43:23 -0800 (PST)
X-Received: by 2002:a5e:8b4d:: with SMTP id z13mr5598363iom.36.1573919003360;
        Sat, 16 Nov 2019 07:43:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919003; cv=none;
        d=google.com; s=arc-20160816;
        b=gSIRteiZWiNr6nvHtzjs8T1bmxTzF8BPuCpe1dK4+lBjGKdjDTuHo3Fkvf6phB1ZD2
         fRqkq9fRUVXAbihj6BekYm/u/MnBB0ts5SbyjBNFr2KOrp4Fn6A+ikCul32l3Bxij8IX
         mE8i5xw3s1h/ka9KhVAGYGwTw0kkZWtKd5pRESzVzOq1A7ENSDNNBJzJiRHq31cZ+rp9
         X9WfajVZeTGLW0ZPuqkXa1cLio0nBtBm+4X8zs/c2L5X2LDK4FbeWnrRrnJhxYXhcsG9
         ApmGcW1LY0tHYHNG2fOxJmjdGMUn88hzOnxcDO1jShZWSylIucSpIn90SzIrkplI6YwM
         ARfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=akO/ZN/gB9E5gDwa1Py5Qjj0F1kulZBt1ksy60gLUBg=;
        b=0HugkFV1EEEmZ2eyMKdYh9su8i3teA7s0P6oLnDIhuA3weiLina5n1O5lhLkjOYL29
         BA9r5vbQCf44OS/wcCXiWf6aCPUuReRl5N3mPZr+MojibiAREJ+IjAiFy8uxc2fJ8njz
         mGhDq1asfvHeitk3R2kw1x5T4mHGfT3AWX2ahvG8yVFfgvARDsPGUDpI/ipjAzJEdmo3
         HNGfeCiLG2G3yXgORypBM75dOo1sP8PDa+WbpIyT3aFao4FkddWjjzdeN4HjSQoycrkU
         ft0MTamWN/nvfxwxMPFwNA7otDPiuFNXH01tuMWbofkIlTn/4dA7ycXixGUTnoQVcAj4
         L4TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SLBdnPd5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h141si46385iof.5.2019.11.16.07.43.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:43:23 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6F75D20815;
	Sat, 16 Nov 2019 15:43:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 106/237] mISDN: Fix type of switch control variable in ctrl_teimanager
Date: Sat, 16 Nov 2019 10:39:01 -0500
Message-Id: <20191116154113.7417-106-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SLBdnPd5;       spf=pass
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

[ Upstream commit aeb5e02aca91522733eb1db595ac607d30c87767 ]

Clang warns (trimmed for brevity):

drivers/isdn/mISDN/tei.c:1193:7: warning: overflow converting case value
to switch condition type (2147764552 to 18446744071562348872) [-Wswitch]
        case IMHOLD_L1:
             ^
drivers/isdn/mISDN/tei.c:1187:7: warning: overflow converting case value
to switch condition type (2147764550 to 18446744071562348870) [-Wswitch]
        case IMCLEAR_L2:
             ^
2 warnings generated.

The root cause is that the _IOC macro can generate really large numbers,
which don't find into type int. My research into how GCC and Clang are
handling this at a low level didn't prove fruitful and surveying the
kernel tree shows that aside from here and a few places in the scsi
subsystem, everything that uses _IOC is at least of type 'unsigned int'.
Make that change here because as nothing in this function cares about
the signedness of the variable and it removes ambiguity, which is never
good when dealing with compilers.

While we're here, remove the unnecessary local variable ret (just return
-EINVAL and 0 directly).

Link: https://github.com/ClangBuiltLinux/linux/issues/67
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/isdn/mISDN/tei.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/isdn/mISDN/tei.c b/drivers/isdn/mISDN/tei.c
index 12d9e5f4beb1f..58635b5f296f0 100644
--- a/drivers/isdn/mISDN/tei.c
+++ b/drivers/isdn/mISDN/tei.c
@@ -1180,8 +1180,7 @@ static int
 ctrl_teimanager(struct manager *mgr, void *arg)
 {
 	/* currently we only have one option */
-	int	*val = (int *)arg;
-	int	ret = 0;
+	unsigned int *val = (unsigned int *)arg;
 
 	switch (val[0]) {
 	case IMCLEAR_L2:
@@ -1197,9 +1196,9 @@ ctrl_teimanager(struct manager *mgr, void *arg)
 			test_and_clear_bit(OPTION_L1_HOLD, &mgr->options);
 		break;
 	default:
-		ret = -EINVAL;
+		return -EINVAL;
 	}
-	return ret;
+	return 0;
 }
 
 /* This function does create a L2 for fixed TEI in NT Mode */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-106-sashal%40kernel.org.
