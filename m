Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3FRYDXAKGQE7VODP4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 56267FED2D
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:42:38 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id 198sf10256871pfz.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:42:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573918957; cv=pass;
        d=google.com; s=arc-20160816;
        b=HbCrnQXjIJdW0mD4ivp15baaJrMiwX4eVp0RGiQnBgYHrfS9CxnJpZsGLGgRstoDno
         EiCGGyJxdpyGHVWLihvet7YhxNrUs+SUBokSZRUa/L2ywRTndrvcH1USGDcM3+Q0YGbD
         JyzCcE+xQddaZd0pGfbFZ5qvA8nmeUsru9tzGIyTMe1G/prNm4aVSEee6H9I7IpFWeR+
         1h1HniC5Bgnc287znbWj3qBhKzWLBYXxu3OIELWjiX9UKlTY3QbO7dJnQ/4o/MVLEAHL
         uFExfGrR5cj/WRLSEHABlKY6FauwG5RjcJk8YlJyEdlQAVBJmfuOUwXs1QfTDlKTe5Pk
         rJiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=voH/trVYeFRmLULJC9J238Pm7AVG91EKlQBgq0ULY7w=;
        b=u33VdQqFd+a2jsjvK8S3vo+5aGVZ3RdGDoTeINqDmP8iNrGLhPmJJAi8TySbCegyi6
         jlbsU4WjqTIv+9lIZa7WJVJVxZAKHaK5OqXwTUoY8r5CvBjaDOTtJJ7ZEi3BNDzejJzh
         HwIvniRq6tbQBHFiuj8cuHGIXiXJ+9csMtlLdwhqoLZnLjoo13Forvl9AOTyuSkvsPvf
         v3+Ccfi9npUr/ms7PjrviXS6TJ+S0dHWhHkb5GznH/WEmJmXvXiMn3xOv6M70RAfEUId
         AiVxWc5xNtySWkJjcoqHNlAMXcjD/E5DsAJLetBIcpQHC4TbrXggkyioTKuCPzp3u6y8
         NOMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VQb7alXo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=voH/trVYeFRmLULJC9J238Pm7AVG91EKlQBgq0ULY7w=;
        b=l0yJxoLKpT0KalW38PQQzkJf9SCwbo80PzjaQj7jwk33Su3u9S5aVQDik1EWbEAiMA
         /fNAUAZkrseHa8DCQ9gBHM/et1En/d6cRCYEc8jR/goNAOD1+pbMdJ/hju1cAagfiEQG
         sZ2On79EYvioRvub9gp/96NyhkFEMldTBIifaMjKBNUWVgVd2OS3pX1J2hHewz7Qy6xm
         sqyXuv/L7tKCahaMPK0hnXVVL1QcC2wfRVCzNDQzs5RfyK/VHa9BJLvDhOGlekWFvfEA
         NH1EZ8KCMdnS/2P8lQdSiy0hwWHtnvt2VUIbhS7mlp5ks3JknYBryoTEGh8UenqLb5zF
         FfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=voH/trVYeFRmLULJC9J238Pm7AVG91EKlQBgq0ULY7w=;
        b=RlWb94QFIJHjqnTrTDEnja6Suim10WZjQ1e/TyL6RnbAVctUW5AjiAOnrrwzShH7V2
         Tg3c95TBvjy01mqqEggW9T+iEcqSLg93Tumy1DkXFaQq5q08Qr49xsueQHq+8awyP7Sc
         iz+/F2tEhvXnf4VnbuoaNXpkxNNy93YwqfOEbcK7jt2OB6btkMqH4WHq14dyf2eySmcm
         diUwv9XIUp2FiDHsvbAEQL5jLJ748zx/f2s7dj0eIJ2lkGxWHxn9/JXss4K1mGVtN3BT
         69+ye7koNC6dTCBOgqjv4aqPjWb8KEeXwkAeg+ihQrfJt6n8gdU4r28vlC6T6oRT/M9H
         QkLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqLHyO8qvssvQZVGZuaZfYPMT8iCzaF+L/lObFt3Ii/RYF0mZy
	wGwTep/giEErPS3H0T0Ao70=
X-Google-Smtp-Source: APXvYqyriaR+l8tsDAvO9c74eNPztTsKSvG3JlhuLNTCnsmsQGc1K9KZFgGb8oVOF8BkrmDiHCydPQ==
X-Received: by 2002:a17:90a:f00d:: with SMTP id bt13mr27657781pjb.43.1573918957027;
        Sat, 16 Nov 2019 07:42:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab81:: with SMTP id f1ls1071025plr.8.gmail; Sat, 16
 Nov 2019 07:42:36 -0800 (PST)
X-Received: by 2002:a17:902:8a8b:: with SMTP id p11mr21076330plo.152.1573918956527;
        Sat, 16 Nov 2019 07:42:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573918956; cv=none;
        d=google.com; s=arc-20160816;
        b=Z3XvLeEavmJbFkvD/WRlBQNUbntCQ3S/WlyQ7QDr3khS9Z9g5Seo8Mit21JCH4cNRK
         zrjdSu1nTtIOLaO9iCYl0bNmdZXQz0dlVbr+/OM2uD5CiGpGDDyPs6AaCHdzhtWVSj4O
         o+hSp9YQsWl4jLlHTCziJyYaDoWrbu6v4CwYT5PC0d4lk0YFAnqQULRo8d0e7lVQ3nRL
         HPNRhfhhCPJ1SWBsDnFUxE2NO2riFfD1A9X7vO+Btltsg1rPmo2L1vQR+6qfNhTzsmuE
         IEQ62rOUwnPYCEIgKVRzyMvAi0mn2urXugGClniFwir3CcfF2/BweCkA7U+8+fkK5SmK
         3c6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DLdPAyVkJvlPosUw4/m61DCjEJeQDE349cGbxaQAkKc=;
        b=tiqOcozuQcVM9i+U2ZzYEqJTbg8ffcKqvQI+Lb2RvLiqDOMvrQVmIV6um/QBgxmHR1
         AA9d6DULP4KpunjnUkyCp7fNTI3J1nYenxR4rOo0LXtg3WdE0/qxM1xNmYFKHr83Xwfh
         UcWTuP5y4KO2WblWynx+wGn7dqeCBNQppd6wmVROihTAV+LHV+EXjSmFC9vIkHOx11aW
         ELbQlkuZbHLY5L+4flylMCyDvkjT4KglOJpA2kLCO/3FAeLTMRFkSUqoThWsbm9F7qu+
         h05mgfvorL3cAoiB5C/DGydeq6VnufHmFTqX6c4zvE7jc/u2+oZ/NZ9Nz/xGlxcJ6x0V
         Ejjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=VQb7alXo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id az8si763111pjb.3.2019.11.16.07.42.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:42:36 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CD4DC2083E;
	Sat, 16 Nov 2019 15:42:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Philipp Klocke <philipp97kl@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 074/237] ALSA: i2c/cs8427: Fix int to char conversion
Date: Sat, 16 Nov 2019 10:38:29 -0500
Message-Id: <20191116154113.7417-74-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=VQb7alXo;       spf=pass
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

From: Philipp Klocke <philipp97kl@gmail.com>

[ Upstream commit eb7ebfa3c1989aa8e59d5e68ab3cddd7df1bfb27 ]

Compiling with clang yields the following warning:

sound/i2c/cs8427.c:140:31: warning: implicit conversion from 'int'
to 'char' changes value from 160 to -96 [-Wconstant-conversion]
    data[0] = CS8427_REG_AUTOINC | CS8427_REG_CORU_DATABUF;
            ~ ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~

Because CS8427_REG_AUTOINC is defined as 128, it is too big for a
char field.
So change data from char to unsigned char, that it can hold the value.

This patch does not change the generated code.

Signed-off-by: Philipp Klocke <philipp97kl@gmail.com>
Signed-off-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/i2c/cs8427.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/i2c/cs8427.c b/sound/i2c/cs8427.c
index 2647309bc6757..8afa2f8884660 100644
--- a/sound/i2c/cs8427.c
+++ b/sound/i2c/cs8427.c
@@ -118,7 +118,7 @@ static int snd_cs8427_send_corudata(struct snd_i2c_device *device,
 	struct cs8427 *chip = device->private_data;
 	char *hw_data = udata ?
 		chip->playback.hw_udata : chip->playback.hw_status;
-	char data[32];
+	unsigned char data[32];
 	int err, idx;
 
 	if (!memcmp(hw_data, ndata, count))
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-74-sashal%40kernel.org.
