Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUFRYDXAKGQEBD575CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F01EFED17
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:42:10 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id y16sf9692172ior.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:42:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573918928; cv=pass;
        d=google.com; s=arc-20160816;
        b=ycATe4dpCrw4YIC5OeCjDqo2WhOgZJF405CuEzog+2m/81abAePE99RwbooY8qHzGG
         S7qI7+ClBzGZ2PiFUgTXw1ht0dAtjOfXjSFAir0pA3WXFPtdc728Y0Zsg2mT6fHvP+oA
         vcywyGs3roi2xoEdFc5Ew2yz0IEfWhHOiXPEjUbAs2o6rB6l6tkhfrwe9VjKMQr2DD6S
         KP6r4lKOhRGhjc6xQhQZgSEVcdAfolfJTXazVdhoQafkPQt/GhoRWhEvIOzHC7O02R9H
         BnJgAtgU+U6xXXTn1dQkLoAxt6CMh1g7cRmRvHA4vpcs6swOthh0g+8Z6MVfQ9dMxfdg
         J/5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MTSPPxXrnHqcDLSxrhfmViS+lCzlq3Q2SFBayQtNZjc=;
        b=NDQZ5g7UvDSqkOuX79O10VKTdNx94/1P9jxp+iLyS1Cm9xjo1mj3J74jAe5PI8sBkC
         Lu5LpBg3qKWj6E08Td+EJs8bKNXp0EXLnqnHys/5CfJiwxb02lwTjiZPJnUXhXF+oXoD
         a/IMttIoYqO97+Ba1xqBDZAXerJk5tSvoIxM7mVp/bbntAms9Xs5eriISmGTdCnL8btp
         Nlpz8ZXNotlCajYrx77neFqGJkfDVJXstN/7jcO3yMUiKY5G59zsRAZSk93jY60LxZ/e
         tDlgR+kX/b06BafPiXhdovw71rEEk5IUHJ4t91iEm23ImQ1ZHi2tpmmzisKoPS5GpMvr
         iqhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hX0PBoM8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MTSPPxXrnHqcDLSxrhfmViS+lCzlq3Q2SFBayQtNZjc=;
        b=Gi2GePHcp8OsuYMaiAFEYFw7+B6xpldc+2iWsv+qAisdSTcQuJFzYeStORJoLNYSLq
         ZNyOOupjHZEW734xv3kLdV+DBZk6/Py/LJWjRC2Z1GxSthiDOt2nYx17VkfNo1uOaJkC
         PlHb9/hgAl+332SnB1IOoh6PucxkHsHSYwwD/O0/Ao00TPGdmjmfbMcYWsr7JhLt00cP
         GCvm1f1xXXJ/yUX/CAHIP9A9USTM4BAHtYp5DGu19AjyihnjpHPDRnqRVqL8xIwsyNMW
         QYjHrSDSbz0q8oeQWXQiagq4zn6F+K5GbasrWnyqjnNN4BgD/7Tgz+nJ/UAsPUzCcpr1
         MlrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MTSPPxXrnHqcDLSxrhfmViS+lCzlq3Q2SFBayQtNZjc=;
        b=b9VRjN+/O1vK1quQXDp+VcPFg0VpL5y3Z2s/WdHHvlK8zIogNTlDLncmXSx3IXNunN
         IMKWfEpt4bMy/FSM+uYIimSyhtUyt5olWRApyArftKIIIyNYVnAxHlDZSLIdLv4Xof+v
         wjbV7B2hH+oO1w0UarbjSaL5jCPnHFke6nfmTXODo+1n1ZeedYkLrVZHJH+8ICRYO/q8
         vRvB8vU/4PH7idiiFpBNRZtviEfj5KQTA9RlIoxe6pmaGb2IyUZpLfUm4y3rG2BBTFxg
         BqeuLHr8ugwsUItr9wXSWMOASKB8YyP1dfgr0Pw1XNwiLnsaZSV+fwc2L/b0i3n1NNLc
         Qf9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEgnIga6BZhyd0ScfNXkFRhEYn3c8xYAEj7Iv55ngd1J5sn//T
	dAOHnFys6MHKy3mk3Ze5up4=
X-Google-Smtp-Source: APXvYqwkSdOGzPXNAkH7o/yt/Q4KzVPYBh3WKlSe19sMITe01v3GGzOljvyAZKz0acPVa8qksf0KSA==
X-Received: by 2002:a6b:8f13:: with SMTP id r19mr6114870iod.19.1573918928699;
        Sat, 16 Nov 2019 07:42:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:8e8b:: with SMTP id q133ls2024203iod.4.gmail; Sat, 16
 Nov 2019 07:42:08 -0800 (PST)
X-Received: by 2002:a6b:7d0b:: with SMTP id c11mr5924822ioq.236.1573918928373;
        Sat, 16 Nov 2019 07:42:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573918928; cv=none;
        d=google.com; s=arc-20160816;
        b=p2r/+KToSv73zLvvneva1RFU+85p7Uwwa7oA+O5mO1iiO1K9RjDd9mPY4LLVlqVcxS
         KJPeymNtLlYpA0ML880SUc+HoSU4u4DBdELhXnARRMJ0gLt1YPkpxylI1n9k7zTcMPY7
         nvX/Z+kDaoO01PToTYEHaVDG6wDkuxq7CmZ9LIj54baifWWyML90AAuCu3o4iU3jnp0z
         0rQR/lL0h8k1rxZUGNt/ev5C7TV5hEBBa4VAJGBBhyCAEV1oHb1mU8wjZa0S1uIEU+au
         Sa7Df7u6EKX66s7ju0FZOEkC4Q/CuhImth6RX00rOnfIgAOPURxHOLgmj7G5hvfaLuI6
         gRXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WJJ/EwHnVcVaKx3xVTgOe4Z4t3HpLd5HpBVsueCjEsc=;
        b=tknx9EswOEy2jRKqgMUsWHdHQqfinNH1tuKjNR+ZARTUlvE26iqewDDoxoUaW2d1TG
         lo/2y4GlvEf8bGYFskiqyEc+CqoSXGx296gCM0ouoJ8cagd5pzs5U0QwA4VpEqZi/VOM
         tzjIUynz9C9Ev+8E9UWJWLNrdApnX2jB6unRMv2fhl9YeUwDQiuKtugNiyvSyATZZntZ
         x58KA9rqDHCV2ebYO5Bg1/cc3eyW/34hLJwJ2hqDnvgCG9nYa3Mwrz6VIRkL134oDsDk
         tKif8kVHslMZXSQ7TqD2RQcqPSwczTeWRhbeZQQCvvRjqORQkAgC9oJanexl+JODR9H0
         7P8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hX0PBoM8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k11si770704ilg.4.2019.11.16.07.42.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:42:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 425A520815;
	Sat, 16 Nov 2019 15:42:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 054/237] scsi: iscsi_tcp: Explicitly cast param in iscsi_sw_tcp_host_get_param
Date: Sat, 16 Nov 2019 10:38:09 -0500
Message-Id: <20191116154113.7417-54-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hX0PBoM8;       spf=pass
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

[ Upstream commit 20054597f169090109fc3f0dfa1a48583f4178a4 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/scsi/iscsi_tcp.c:803:15: warning: implicit conversion from
enumeration type 'enum iscsi_host_param' to different enumeration type
'enum iscsi_param' [-Wenum-conversion]
                                                 &addr, param, buf);
                                                        ^~~~~
1 warning generated.

iscsi_conn_get_addr_param handles ISCSI_HOST_PARAM_IPADDRESS just fine
so add an explicit cast to iscsi_param to make it clear to Clang that
this is expected behavior.

Link: https://github.com/ClangBuiltLinux/linux/issues/153
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/iscsi_tcp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/iscsi_tcp.c b/drivers/scsi/iscsi_tcp.c
index b025a0b743417..23354f206533b 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -800,7 +800,8 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
 			return rc;
 
 		return iscsi_conn_get_addr_param((struct sockaddr_storage *)
-						 &addr, param, buf);
+						 &addr,
+						 (enum iscsi_param)param, buf);
 	default:
 		return iscsi_host_get_param(shost, param, buf);
 	}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-54-sashal%40kernel.org.
