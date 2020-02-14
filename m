Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEUHTPZAKGQEJBOLSPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C53715DD56
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:58:12 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id d16sf5311847otq.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:58:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695891; cv=pass;
        d=google.com; s=arc-20160816;
        b=YGrfoDnAQgUr5Vjid+qttckQOQwDdp8uU8s1rNNWpilxeLV1pegAzXfZVyRj3lYa1o
         CamCzNZwH8hvrWhMyFPc7Thm7hYKVN2npu613B52I7kUNwTPddFm9yzAZCvfm8Ld821Y
         SmOnC1vUrh6RnTP5A5UHp+q8pqLX8rCKw1ff7Qa0Uk2kOUqV7t4CyodEQcIkEBS6TdmS
         cEHgTRhTBb2HcezGpqi4S7z5+u7SigmdruhPgA6/5Onh4puHZygyUewbOSt9MFX2v/9W
         KuuYFXrJM1LyeprfT+7pcDKwlLFqYCq+bUfAjUwc0j9W3xYb9LB39K9P3plyOzak4DN9
         lerA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3k1LB+YZ8cvKyWd/V8A+jHBZh6nxD2YsDvQ6E3qbJBQ=;
        b=RMniRkfHB56DG44kW1UiOgiHnBzfuTE9NEC1lBLry9Vokpc+LsdvDpkSFVe50Isifm
         6sQUQZy5Vw2wYuaSsaEKLpKhcCcT4Dso7YZCDpeTn4Gatx3Hd96vkibmUgIozTw+vPWH
         Pngt/s4FaPPOql3auasMPOi70yZR2JAvNW5geb61rqnf7FiZ8NO2Uvro+mpDqxGEaGw+
         3KMYNQWsNChjcBW1FQXdL8xEbJIsWsVWN6uqHvngpAcZMaQVLoNuYx1EiJEnql7HT90J
         5D12xYbbvNu0JZH9j01qna1BioW6ONp9do3xpY/iDnsxOaaCR85HF7LhND/WUMvgNf5B
         fECw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vpW0daEJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3k1LB+YZ8cvKyWd/V8A+jHBZh6nxD2YsDvQ6E3qbJBQ=;
        b=NguR6yb6FDkMvgYI2wj+P8KNffUiWSPC6jKdFLHnIrdZ43XVGlBKV7NuGnFMagm/Tp
         h/i7NBZeG3t0yu2fOjqZZGVjXYx5oK4aVwFD2WGR5tH/WFDtPEkJuc6LV56rcE45LijX
         WMsqkIKXSdmQE2C1jIJeV5kw1MNySBe9BE2H14GMlrjFDX3tUYd0IXglJ0ifiY2cMW51
         f/JUkn2eBi+eZLn0zXA3k+Jxd4KmGG0MXYEpe6BDv18w8HRf6RoKCK2BHRV/ywMRS2Mt
         12JQqoT4h+SLBEjAmVnTtNhrkWIfoVqSGuZi9Aj6XMyu6b0GtnozyMt4/1HBw0Ud+nI1
         X3tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3k1LB+YZ8cvKyWd/V8A+jHBZh6nxD2YsDvQ6E3qbJBQ=;
        b=JQOGX2zWAq+1Xry6AwrfVzYDJFUxlORutdztONWqjpbix9oft1Q7BtggVRkmgyqBUU
         x6g8yaZlCLadqRuChypwRZZgtAEDzsqTcezkR9Rd/2zClKEDazabd+90Adw9vnL9OXsX
         ZIqJrwn+dtL4G80XHfa4WsBVSjOsoi6clYiZalIjXpVjuQs3uumPbzEp44jL1VSYBkB+
         l9Nzkja6/1EePn22732R+UMShpk3nALb+pyBeB3mQ+SlJOlbfbaqgRFpDu6GSd8EEXWp
         zEEinFzRbXF57MW9n4l2lIBVxFD/4TiMbcgRRRSJEmtopIzgExSy5fEKezravBinPexB
         eU7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVEyYjxccnOtK0NFzKipkPYkj96z5lQhq002xp9Yh7OyeH80gIg
	hguJuYrtdgowI8oQDfrr8Og=
X-Google-Smtp-Source: APXvYqx/iiZYN5FOHVkyC3RK/DcaLPauBgxgfUK7S6yC7w0iZDGTYU+/l0u4PzU47bUZwyEBg+Rzdw==
X-Received: by 2002:aca:484a:: with SMTP id v71mr2317111oia.39.1581695891163;
        Fri, 14 Feb 2020 07:58:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a01:: with SMTP id g1ls737915otn.6.gmail; Fri, 14 Feb
 2020 07:58:10 -0800 (PST)
X-Received: by 2002:a05:6830:110a:: with SMTP id w10mr2877413otq.300.1581695890630;
        Fri, 14 Feb 2020 07:58:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695890; cv=none;
        d=google.com; s=arc-20160816;
        b=J9dz9OdEKu2k3n+UEhWwAjygvT+8zU3jBjIuOfPIUsmY6wn3/TJwi4cWyOGT8a5bIF
         hFr3Uqp8+swhjZhhDYTUNTVthVWInbHzJmEjMZ74QHsfmnnrqu86Paw6e2jdXK782n+a
         85bxN58kAruDj8EZHnfextKdNrxoZVEpZ6oseqrjP9jwtBKV7HAksFGYdj5W1VYz3cXr
         XRA0kbsNDUq72tHY9YCdvgTPw3BIdce3+vzEThw5ddG4KaisLhCwkV5V7pynXMsf2r7B
         uC4H/2FYtwGxJuJyCaJbY4DYLmRE7Lz+qp6f3ugb6rpgYiKJQd6/COdxA1qPUj4rw0F/
         RWBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Wofd1hA2GBdRyRlJM1G5ALb1g01jO0Pbl3Hz1Ag11x0=;
        b=0Ps+VNf4+BwzuU2UfxoOgO5zWnpeCwSWg2tFJzI7ddXciCv8wIBJQbTYjCWqDa3vVH
         pz8WPY4M7H4ie+rN8vMs6pI3ntdsb0ZbemdLzRjChn8IN7W6DoQ/FchRuLHnAL51dYBE
         GpHu2ui+1BlCXvObzZoXQ0K8LDUyGT/JRK4156kMczNHnGcw3hJBSZCVPEG8JiglxBjm
         KBuIxy9DTdMf+ie070FFoWw0Vhm8PAroo5dKVW8I3ydh4aAprzu3DWR60yTIxRrQfcdf
         5/o/NZmQdi4/Jw4R+/xPHt/ksobVqN02IIKMRn5zY4JMagsPZ4dZjgoEKsY3bmsHIYzJ
         BD1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vpW0daEJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c193si151212oig.2.2020.02.14.07.58.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:58:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 503AB22314;
	Fri, 14 Feb 2020 15:58:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Vasily Gorbik <gor@linux.ibm.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-s390@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 433/542] s390: adjust -mpacked-stack support check for clang 10
Date: Fri, 14 Feb 2020 10:47:05 -0500
Message-Id: <20200214154854.6746-433-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vpW0daEJ;       spf=pass
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

From: Vasily Gorbik <gor@linux.ibm.com>

[ Upstream commit 253b3c4b2920e07ce9e2b18800b9b65245e2fafa ]

clang 10 introduces -mpacked-stack compiler option implementation. At the
same time currently it does not support a combination of -mpacked-stack
and -mbackchain. This leads to the following build error:

clang: error: unsupported option '-mpacked-stack with -mbackchain' for
target 's390x-ibm-linux'

If/when clang adds support for a combination of -mpacked-stack and
-mbackchain it would also require -msoft-float (like gcc does). According
to Ulrich Weigand "stack slot assigned to the kernel backchain overlaps
the stack slot assigned to the FPR varargs (both are required to be
placed immediately after the saved r15 slot if present)."

Extend -mpacked-stack compiler option support check to include all 3
options -mpacked-stack -mbackchain -msoft-float which must present to
support -mpacked-stack with -mbackchain.

Acked-by: Heiko Carstens <heiko.carstens@de.ibm.com>
Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/s390/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/s390/Makefile b/arch/s390/Makefile
index ba8556bb0fb15..e0e3a465bbfd6 100644
--- a/arch/s390/Makefile
+++ b/arch/s390/Makefile
@@ -69,7 +69,7 @@ cflags-y += -Wa,-I$(srctree)/arch/$(ARCH)/include
 #
 cflags-$(CONFIG_FRAME_POINTER) += -fno-optimize-sibling-calls
 
-ifeq ($(call cc-option-yn,-mpacked-stack),y)
+ifeq ($(call cc-option-yn,-mpacked-stack -mbackchain -msoft-float),y)
 cflags-$(CONFIG_PACK_STACK)  += -mpacked-stack -D__PACK_STACK
 aflags-$(CONFIG_PACK_STACK)  += -D__PACK_STACK
 endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-433-sashal%40kernel.org.
