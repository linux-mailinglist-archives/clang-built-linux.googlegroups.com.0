Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAVWYDXAKGQEAXZGHFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 90707FEE6A
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:51:31 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id x2sf2911576uaj.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:51:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919490; cv=pass;
        d=google.com; s=arc-20160816;
        b=JiPGqcr98Mgfg8A6SKEDWMD6Ov6FsORAI6rCDWwpS7xCJwQUAG/oq7Td08K9eBEVOo
         lBVJMV7pnjFIbxUt8ojsnRnM8v7gU7C9cE8K8a1fwkG3FiiniDhOoNGTYyyQZyziGQJV
         uy9Qjqzqs/fPkGSDeDBlKhMdoGuBfjSdIy3gGSqXNzG71PR+edBKKFv+noRrz+CVsZSU
         Et+ZHmiGG+mFXOyPqMe9D9UoaB2A4/FJXeyr+kbwFjRc2rxJYADdvROttBzgQAl9cYBd
         ZqTjI9BfZmxt1NIRjdmr+8cP40A9jd/S0VIuJWzt07WFffPONvAz1O0WSoPfahEWvATh
         DT9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UpT70LJ+hmMtlq3EcJIbsA+IyMbTL2bPZI6IF7kBpqM=;
        b=Jcg3RRnDeaaIsuPHlGnJIhLVQgC+d5li9+IVno6Slbr+/ajStvjE9JkceIi9rdJI5F
         rcyV4wZT2RsVri7ExNL14nXmoblmCm9QwO7uA5siKb+KB2fwRgeAojvTRiC6L4B4zdst
         gpJu5rgEeT/Z8vRzolbSm73eKuvMY49IaFdNSy1BKZmH8+tfIvp81t9vXTKNg9FafJKZ
         cWBxFxjRrlKGp+Js9DJbjhxW6vDlBiGofPmflJDzfiIh7OfOVv69mqSbYUUs1tpLw0NY
         cTGNS58AsF5YBW04Ruzov/x4+7W4ICA3YJlQh5UXV/HDQmPymZY84QrnDI/dfxtxrHnz
         Ho/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fFLp6j65;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UpT70LJ+hmMtlq3EcJIbsA+IyMbTL2bPZI6IF7kBpqM=;
        b=BhCxF/zXXHoj8HPjVIINGwZc2ecE0UjGJprZK8OATYAE+8+SoltsK/uEe104rwU0eD
         i/onTBGvEt7roajAJMqTHwRss5HZd9kBgTqG7ltPgl0N1+YNwbreYmpnr+Oy+mkbZ+uy
         CHB8fOdZ2s1IhDiCD6HSvqy+duKV4paiSjQRgXpfAYBbJx0SzSsUhkR4AuwVDcUWMQ5K
         8Uxok10rrDELOg+zLQ0vdeqI4thtNixoyNft1w3HzsbtVSOb+fnTFsABBI4C3H4rJBC5
         KwrboVAjLF5yscVUcrb8+spNHhIrAin3iypXlVZ/2Hv1OgQ8egsz7Z2UgOKzGqDRwEpx
         SRcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UpT70LJ+hmMtlq3EcJIbsA+IyMbTL2bPZI6IF7kBpqM=;
        b=eaBo/R0CQwVhLoTkFxQz9GsiSu/42repjkNqOdTFyQplKaptyKXYtTUclPtvlpXnRb
         tt8mNRzwsQG+zWXem04i9mscEoQga4ybfZ0KUyrIBOJr9wbkUnNszDcOqznbdmJ4oQtu
         dG8uXkdKlx9HRcs5ibyVUCK0PlJed4iksWD/C7k00wM/SK0GeWGAW7neomuYFdKdGVrm
         kWAaWDvYSieJsb0dFVaIwQdHyTF3KpMPPMa6+bqtxdghHSVrkxCrAHSZ3ylJDkAiulHT
         ApxDCn2A3iL7cxpX3ILdFGLWHOQxC5n46KMI1PQ5ZSRF3r1n3KnmE2xWT3XWhMSHkkmt
         SiqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjrdfs1rHtB8kaO4cu3KzDFxi/6Ch7EzvBuVk78sKKelcEJp8t
	d6uQNQD26C2pd73knRM1w7U=
X-Google-Smtp-Source: APXvYqy42j7c8a845iHBxqEK99BSwczm6x5aMX2LImLwhQCJtwcnxasAlqjyD+ZPnllhMWEm6oAd7g==
X-Received: by 2002:ab0:6c5:: with SMTP id g63mr12652831uag.46.1573919490463;
        Sat, 16 Nov 2019 07:51:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2261:: with SMTP id v1ls894326vsd.11.gmail; Sat, 16
 Nov 2019 07:51:30 -0800 (PST)
X-Received: by 2002:a67:bd05:: with SMTP id y5mr12813225vsq.180.1573919490194;
        Sat, 16 Nov 2019 07:51:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919490; cv=none;
        d=google.com; s=arc-20160816;
        b=SJ0zZmOh/qmN9Jw7ET5EFgXqudBrfusQiyLECl3z094F4ruYzmXLOyQI0Fja3V+px2
         eFr0phBgELxaLj67SNkOAcYoAKl3tFgQaswD6cMFjb1mcL83B7fra/kEgywi4EOizSGc
         Io+2FiGL6shHQSpdcJMQNVwwxpdWNB9HalxLC6ihks19vobjpWOOghujPY1eDVqMXiHq
         qLMTumz/57WSZI8/nPHWrZFnIqmRZO0aAlwmPzlPlWg32SI8Wlg/vO4IhDaYRno6tGIJ
         9JSxuD94CL+6Cs4lpQrprruVj1OTyJUQcAj5w83R290EM4QNylF3rWw/XHU1ztvFVJ4z
         LtXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rCkybPrf2FwDzma2SlZQztjRUTvdo3elsw3WhgT7lvo=;
        b=y7JYAM+YXNsSMfh/sGfHEpmgGugNV0TNJwUXpfyPx0UApNeZoErfiqGVeOF8M4sqLF
         8DCRGpZoTO0fjKfomKxD5Po6nsmk+J6MqWyj9uI7cwROEAelAqPIleLYOIYd8Q1e0LVb
         2bAJpaZ2+bvQYwSwDrxIcJM0+QzMMEvB4Npy0tgFCALrq3wShyKDBPULK5p2yANsyIey
         BNrsmjVSpUc0z5C6TYmQHTGaIInZ3Ih/celnThcAHEM4lrvK2WSVn+BX4KzT2kPIuNT3
         pd5PIPMQxv/OKmPEDkWdrFMKP7A/j0m2+LtcYDikWI/HdqWnd92IBbkDveNUw8KOFMlo
         48Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fFLp6j65;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o206si689622vka.4.2019.11.16.07.51.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:51:30 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A8B8421887;
	Sat, 16 Nov 2019 15:51:28 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 20/99] scsi: iscsi_tcp: Explicitly cast param in iscsi_sw_tcp_host_get_param
Date: Sat, 16 Nov 2019 10:49:43 -0500
Message-Id: <20191116155103.10971-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fFLp6j65;       spf=pass
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
index ace4f1f41b8e0..d60564397be54 100644
--- a/drivers/scsi/iscsi_tcp.c
+++ b/drivers/scsi/iscsi_tcp.c
@@ -798,7 +798,8 @@ static int iscsi_sw_tcp_host_get_param(struct Scsi_Host *shost,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116155103.10971-20-sashal%40kernel.org.
