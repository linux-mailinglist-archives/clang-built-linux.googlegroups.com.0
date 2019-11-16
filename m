Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBW5UYDXAKGQEA3UQR7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE26FEE0C
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:48:44 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id x50sf8926556qth.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:48:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919323; cv=pass;
        d=google.com; s=arc-20160816;
        b=QUyoLzrMOIkarQ9b6D4UzGNu2mHuKag6iTaQn1bpqT7SBzTDDNX8rjZN1lHp0Ns/+S
         AHzZRX4H5fQpiJfm2NaNffCNIokNMXiQPnUC902ujg2LRaWrVqCuTKVJ0RwRQVWihN/1
         SbSGCWtXB0xsLuEtHIv0jfSTpPy/vOl3712MUHb2v9AdaJvQdDigAAX9Az57XzYci0/V
         h7X/+PkIrC+EcBTesaq2vkmmA+L2gyV3dOCiCEDPTt2ID75kzPFkzI3V2AcQGDbkz5tc
         RMFZUwnQpddbEPlJxQ47L1BphhGzXEGnaLfC7fgHlI2L00EwAAKn36MsNhU3O6jiKGMO
         UEsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EbJEvFanILWro6FKnKF0ebhtOJpACYNdNIjhh33M8ck=;
        b=FcFOt1VnFlbkE4iMhiKGRUVB0Yl3uNPb6bmJw+U1cYtZzroIQb8PHvTIIg/z4MdvKi
         YTFDljGhu7WPRxIaQevUAL3RhOIxuZty88R5MUvqjCcE+zxX11oTpbQ1BdqfXAyzrqkE
         nuOXpoYxw87Um1aP0V7/IBQbXY9RwNvC+4zjmHVImKxDplZKDSfk+gRCeWR8G99iOojm
         GoCqCRVHyMjFxkO3lOIGR6SHeLNQJwwmOjWoPk0o9fFJc6Ncz9eQDOddxQ5LFJGVGzzA
         4ITVUXIZcWJUNLEVKzps0sYAVs0WlgG5smRTyn08ijbM3Z/tF392TX1zwwX3HwimZlJX
         Pq+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WRQkIddX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EbJEvFanILWro6FKnKF0ebhtOJpACYNdNIjhh33M8ck=;
        b=iaBS2ThdeAfGT4XXrGMuuw1+iSKQBsjgIWvHNyWtsFPexV4PPk1wQvxasqm+Mf6azD
         KARBY+mABINIRImQOee3XqnHA/UImBk121vt/RWcule8/hkSnbUb5iKyxn6TnDXD6BA8
         EuLoVsnWllAMP3PAWQsWPSM20bXuRJtK7uQDbek2ICPKR9IwF6HKdJaI+C/bKEbvbgl1
         Oa650zGOk6/ia7sASJHxOTMfNLoFOYFCfkPkcU7ikTktRM7mHh6Cha7WkvzkfK5plffc
         gDI+855xOizfRNtzcmnLNa+5Hy6VHdRE4+bPpDNS3KwSKVStekDyFaIdLIO0NLMg4q0L
         RWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EbJEvFanILWro6FKnKF0ebhtOJpACYNdNIjhh33M8ck=;
        b=aq/rFLsSjSqD19sJU1OY5XzNX1FoxjjdbGItRP42pWqkuBFeRlT5U2ucdwuALFH7h3
         jGkDe9PttS12WQPdojd70eiBOAHcrMhYhOBZb/BHHY8GbyWndwPiaI969ervkANRqllO
         w21h84jP3iSA5mH4Ps+5I7dyN1gDFoteu6qGvZWR6hDakNixcR72pJvxnmPkPMbxLCmk
         Ufaqdbws5l9zldNyb6l8CMugFuqkEzqTnPFyFhkjGONGaYb/bHt78g+6/o5SOOlwBdjy
         uXrnbTOz3+WTYcHi+JxKSZtozDYc58eOq4El6GuRoJtGj6LVYcRxpOvfcBec34f2C6fA
         OBqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJfNWf6d4SUJoKdfxSQRlvARSkivMa0Oi3ElF3GHNVZtywgyww
	ArL4t4QeHcSuSPc42o7oq2Q=
X-Google-Smtp-Source: APXvYqwTHHwYf2H09oW0b3HZaL2ZDDv5fX334RJAqZkbKSOi6tAXmHN3qxO3u3TgCjEcb7nHjmTJUA==
X-Received: by 2002:a37:a416:: with SMTP id n22mr17280305qke.96.1573919323435;
        Sat, 16 Nov 2019 07:48:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a5d3:: with SMTP id o202ls3302257qke.5.gmail; Sat, 16
 Nov 2019 07:48:43 -0800 (PST)
X-Received: by 2002:a37:4e03:: with SMTP id c3mr13126733qkb.6.1573919323086;
        Sat, 16 Nov 2019 07:48:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919323; cv=none;
        d=google.com; s=arc-20160816;
        b=f82dJhfNNuWq0X8uKsgVK5OepiWIA4479Vq5ZKJap90kMyiP4o6Dl9W/yJID6481TX
         94ee7EwxLG5ochc7KrOPl1JgRn3iCEk3BLrU3zog/pb52bThYrfFJOSy99e73EccfAgq
         xFL9DXnWfph6ZzX7hBevHE1dqPFRB+soJdudakULLy6JfLjKKBuSmDjxvU9SSvtKrgDE
         FYPDhB4qyiQjjzrF0Z4E8qvF4ZqyQ0W1GTzgmJhVeq2jqaUToljW8uf9gxeGmXkC9iy1
         U/Ux+CIRqK/2cCnYhcidz2KoOVAx8cYOK9CmyrZ4S9C2oPHUTqOO/kb+l0JnVrJEBowY
         sL3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=akO/ZN/gB9E5gDwa1Py5Qjj0F1kulZBt1ksy60gLUBg=;
        b=QOqy1LwTNoITPaNhMWH9pNmiBpHk3Xu81KG2JBXmZUXFNLBNm+vrKz54275VvQYFDY
         QLn4fhsaD0kPcJY8WoJ7ySlLHd/qjoyUEwU5M3C5MqaEGlk3PGRlv6w0S4t5B4B2ttDk
         DBEM5Q0j66GddnNwcJMfoBxhnKKpM8k8CTgDVNlBvBkxsyfjRA3DdpOLjtHo/jTAfwJg
         kgLCLO1+7x/jcFcmSrP3V5nemyirWpujBpOv478LufnCUw8Ynvq5BzuHIVShm/lPcQLi
         wqWYnSuI8yuv9WYFMGVaKhA/G2FaKlzoibm3vWz4w3hT5y5fycIvNB2QBRFELELGrl90
         vL+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WRQkIddX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a189si603242qkb.4.2019.11.16.07.48.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:48:43 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 72C4C208E3;
	Sat, 16 Nov 2019 15:48:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 064/150] mISDN: Fix type of switch control variable in ctrl_teimanager
Date: Sat, 16 Nov 2019 10:46:02 -0500
Message-Id: <20191116154729.9573-64-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WRQkIddX;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154729.9573-64-sashal%40kernel.org.
