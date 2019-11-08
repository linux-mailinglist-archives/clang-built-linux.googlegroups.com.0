Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUNJSXXAKGQEAVY2EVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0571EF4684
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Nov 2019 12:43:15 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id b26sf6813754qtr.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 03:43:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573213393; cv=pass;
        d=google.com; s=arc-20160816;
        b=xFIOUQ7EWfplZUFIs6sJhTBjNpFLoiptqBXKCcQGb4CsvSlspxTEnraZu3hBhjtH3W
         mSK2kyAzp+MFBbGsh+XimNNKoR46XT6n++XigJ79M7HHy4S7+rw4I8NGFDZkm3iH6FUF
         GeeA+6PUzDa254iysXpDiJa/yZiVYoFN46HIx29wehdbZN+xSiKO5fCkWvnveBlIdSw6
         ho0EyYTyL73JHAEB5VAFfgA20EzU2p57Z8VhNw1uQXTbKHLFhmmZpPX72SEpwXnJX6M4
         jycX6zlNkjhphakUlj29qAHefVemykCM/ou+YXpb3dZQh1VovZJlJW2textHpzaUQy6O
         3adQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=MtgyQQ7eRtLtwGP+9HHPMksgAdOHeXwBfb0F+bzxD2k=;
        b=QWV6NzTrjJ0yFMplJBwN8LOrQHGDcaTBwj+cmwpsTJwSBnClWtF8sMgQruzZ6vf2uF
         MZ2g87Ti9alxcS7eNcNqNsZSYw6JErn7LYgBSHePlDhEANyCdbDVoies5QMdYbEEcyto
         ZMwimUHPZtmVQX+ZnsrT1FygaL62ln9R9CL7l4bHxdvLF+1+HfjHONelQQIH2eh++l+3
         m7ZWl0nLVifDBCotUzepCxaZ3r0wo+B9IPXPEVY4AkmFofq4JTQ9pdpIC7J/y9ZX2WQw
         lxWgaw1XKiXn3E7CKNQmKbvPePnaNsabyfgLhHKmJAGpm6NZ96S9NB3gLbIR9FXyjuDS
         uXhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EKgUWDOG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MtgyQQ7eRtLtwGP+9HHPMksgAdOHeXwBfb0F+bzxD2k=;
        b=cWvvQKqhpiXp8dBUX3K1ougp3M9DbgtlEAtG/GG0FaL5HXrc81nu/F1OTZaH3kr7A9
         FpB4jXFFtca3lkzjPJde1xDs0F8stwXW2klF27rBZxxbp7V9RMFRmrWrWf8UNUr5qpK5
         vKFGhq8fObYzOMmY6Pkb9JpFpykW9Y3L4xK6krBvxQDq1CviR+a9/3EscCeWcLY4+bXL
         MCQ/2lgd866nphB9KuYq76ZUH1qkbEV+YgNNPUyMKW0D7wgKGhQDhZmbmjIXR0lEtux9
         uRST+aJcnHCE8sSXWMdCNnmyzjpJR/HMkdGPuAuLMOBrelFVuQVzMv9fByvAXWkOQd9g
         Zh0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MtgyQQ7eRtLtwGP+9HHPMksgAdOHeXwBfb0F+bzxD2k=;
        b=eYrFZli309IBMEPstvajOxtQjoWO3Z9dz7o+5Fe5qIvQIqcafjhBpxR9lcMTwVbSIx
         za+s6qELU02J+WIWCCnkktak8hoedNFDrKN4WIPJjvLhEvDYeQBYhb8H5MyuL3oHolSR
         gb+CYLmCYPKBH9H+l1AXwnl7NruTQJ8VhTAH26rDt07yTLVFEkQQxW3AYSZTMN36swzp
         Nlfo39u272023Ab3vymkWIuWT2e9tkahPVKi5vt6REVkLWaMBJDM0Z7sA828DhSNubVS
         gw7fP63jRF4KbXDpi7suoQhFFxk+JPu/vwX/mPp4ic5ynG3wXZvxoEpSphmUvdVMBr9V
         ER0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX5QSk7ychJ6dOnL/8D6muF2/p0/kNmmD3a55KxTsACj3uIj1yX
	c1IMrcN5qvXtIuP9iHkaFII=
X-Google-Smtp-Source: APXvYqwWu2kAEAZW1fgmT8JUJGzk/bTyryPA/JRGl718P9vstX6UU/3cPNKKpAa7bRXff28vzKw/4w==
X-Received: by 2002:a37:4c2:: with SMTP id 185mr8142323qke.406.1573213393756;
        Fri, 08 Nov 2019 03:43:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:386:: with SMTP id q6ls3072746qkm.13.gmail; Fri, 08
 Nov 2019 03:43:13 -0800 (PST)
X-Received: by 2002:a37:4bd3:: with SMTP id y202mr8795060qka.390.1573213393368;
        Fri, 08 Nov 2019 03:43:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573213393; cv=none;
        d=google.com; s=arc-20160816;
        b=YDDOpkFtJxglmQUwcKchWYCpHJ2K5DGeLIBsExHvrr73+Q4JT9w7qhyuGROBOFe7D/
         /Ubm9FZThTHPFoycJby4bW5EdoRqFhBQC/A1tQLkiuSfJ6gQSY0Uvm06UnZpEtxqO6te
         rHmeV9NGLMpSeC+AZ1zNqJwOMc3i2n+MNhdGv6yq1vl4fms0jgvTopK1nYZ7k+d8VHR9
         CwleM7oZtqkMdx52PHN5i023dqDIUA1/EwIw0x8pqblp1QMn16q9eL5nVaVm8fGbH3FT
         wwCNSEJJ7yKxyr8aH/Z2H4FyPFr00pHKmXxJuHNfacFxmywiB4HR8+/Jg8XRG2qTYCHw
         JqzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=J9S6O8QQO3ixB20VpCxh7O/SWPTXVq7nmgZ6vAQ/Nk8=;
        b=QTHvRN5d+xcmooBoMoOXRDImCAKivCYHj1VWOxYbM7uGBYJ+sE4YU6Sdzd8rOg8Kdb
         VRr6NcVJn3ObVphlTS7sspCvVj5CUI0BRu1tYDShgmHZd21Qh7mP0HdUwQWRLIbHCkyn
         jSWvJhHDxZoxqc8IIr0vVIBdcG0VkKKW8/jQVDoCbAhii3Pe4pvHp9hM2bQHGAFlR8Q+
         nIXg5C3s1z5YewBYLFlwamJmjKWox9Iv5bIVC6Z77vqoOHAdo8Ot7QS6b6pHKvnKbG2a
         LMTTa9+jdryFns+odI/w/5EpiN9NCEUdqQnsCUVq8CcNWKfr/SoWOzyYAWpsvJrgbf2p
         p9zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EKgUWDOG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y41si417153qtb.5.2019.11.08.03.43.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Nov 2019 03:43:13 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9693C222C4;
	Fri,  8 Nov 2019 11:43:11 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-iio@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 001/103] iio: adc: max9611: explicitly cast gain_selectors
Date: Fri,  8 Nov 2019 06:41:26 -0500
Message-Id: <20191108114310.14363-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EKgUWDOG;       spf=pass
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

From: Stefan Agner <stefan@agner.ch>

[ Upstream commit b1ec0802503820ccbc894aadfd2a44da20232f5e ]

After finding a reasonable gain, the function converts the configured
gain to a gain configuration option selector enum max9611_csa_gain.
Make the conversion clearly visible by using an explicit cast. This
also avoids a warning seen with clang:
  drivers/iio/adc/max9611.c:292:16: warning: implicit conversion from
      enumeration type 'enum max9611_conf_ids' to different enumeration
      type 'enum max9611_csa_gain' [-Wenum-conversion]
                        *csa_gain = gain_selectors[i];
                                  ~ ^~~~~~~~~~~~~~~~~

Signed-off-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/iio/adc/max9611.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/max9611.c b/drivers/iio/adc/max9611.c
index c61fbf5602718..33be07c78b96f 100644
--- a/drivers/iio/adc/max9611.c
+++ b/drivers/iio/adc/max9611.c
@@ -289,7 +289,7 @@ static int max9611_read_csa_voltage(struct max9611_dev *max9611,
 			return ret;
 
 		if (*adc_raw > 0) {
-			*csa_gain = gain_selectors[i];
+			*csa_gain = (enum max9611_csa_gain)gain_selectors[i];
 			return 0;
 		}
 	}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191108114310.14363-1-sashal%40kernel.org.
