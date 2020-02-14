Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBX4KTPZAKGQEW7WTWOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3C715DED4
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:05:52 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id x5sf8055645ybm.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:05:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696352; cv=pass;
        d=google.com; s=arc-20160816;
        b=YxMLXNJxVIXmTbSXuVneiod05yAeA5ozntcavZFMaQSClr+rlpAFSF7QTGTstVDcXG
         fPyaMFt26DEaCybjzk7LJv5gNxiZzMzVNQ8DYDTT3FZ8qua5doRQRxrl4zcdXw2CjW6M
         0RprNTnEe4h9UxBWtpBgnOh3EgJT8gRarEXu37TUROqaDfW+7PM+oy9/pKOBBdefrqRJ
         VMFkWxeCO6RvetYhU9pBecTWQBsB8xKxhJXs22CT4edxU8HrNrZe4G14u+i6A6p3mh37
         bhatdmRIG2BdaAb3aF8wqa56ErfVbXNiG9iYMKo1Rc4sIpG1ViM10pTGm2+QUy4tW+NR
         wT3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qRu7jRNq2KL8Rewci05VwlZaiufliVFdtwPBdam/7O4=;
        b=byibVGPO1kRhifyIKrQgqoutyefD0DzmxvD0Il2Mc4iIhPQf2ClNNG3XH4SMBJ9ETR
         SmYYTa0uu2CnP6ujMbXF/4LdUETrePifIcUuFPkmoDimTEncTyo9arS6Xy7yrbgzUNYc
         Z4yvbChqXyX64yWMuOZQOiCAT9RfPcuhd2fCGGg2LdsxZlSoYIqfBrx1FYkgxyLbj2Ej
         VYaUwc3pmvjVnZi7m9+5D2aogIFP+0AbAcLczgjdMKAy8XVVWMP99d5sfZseObBCJd8D
         bdLu2MD8H5Re5dToK16GHP5GXvIouG0fGnsE3XBtuiHViGrFe/3Dwe47XghgIxIpmgb6
         jxjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1RgJajr8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qRu7jRNq2KL8Rewci05VwlZaiufliVFdtwPBdam/7O4=;
        b=RJqMntmvAYdncv60yrmQK3/Zj3OkjZQoPUs6pKBogX7WrQ4u4u0T27WeizPoIHPOzw
         c2Xzq8HZ8AKN2xpVBdjsVZNRyGLa/7KFi0seYxRISlBI5diKTYVKXTNvDy+0edBu1tKT
         Skm63l+8yyzdKhvQhn9+VGdTpofMCB1XWoqz3e3MdKwQCNf9jjYM58tLqj+VUImOWaHW
         cma/6UelzffuCuBJfkpSase50ZqnJFwFjsfDZ7iUG83rI40l0/H3ypKEkqwDbWY0+Sjb
         JAGG03ca+lWYgYipHYWiNxK0bv3OHdQ0IhpgPWePh70lE9gAOV2Xzb362yFqQoE1Psj8
         QGTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qRu7jRNq2KL8Rewci05VwlZaiufliVFdtwPBdam/7O4=;
        b=Sei22zi6rcFh2pYPg87OFLPezm0am63U2A6yDDUuzsQ8JNnUMQDfW2k8WQQtuS9APn
         nTP/G933oJx36yjdX7ugZcA1kATxWTUWUU3An1ZroJ4bhX+F05XLzd+fUHciULAegy0X
         2+5uxi+x4oEjY611rCusaTZsFz/izaIGuFLkgzm0OSiK2jCEbafLtCNLyX+4cIGYM2qw
         9gVj8yGuR2f3L2XTp4dKgHEHpz00Q8NH0/7cPolMArOc7uQVPT3al26tUStfulBQ7Aaq
         S6xXS1Mz1UKkLyVQ5YeYMsd5ux21Zi7l9NVzNjWdg+rz6y3TcqBKzKiJ9QuzrFYnISYu
         NlbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4NjACfYINmFGIYOW6J5LLbudFOXgH93X4VTU+S+E2KsYNQ9oy
	l3apJChuA12s4XIPOcOrxSs=
X-Google-Smtp-Source: APXvYqwvZ0lx6UDFQQ0+Nd84NY6upYUbNp8+jeQerzeHKmUlB386g5F8PL3WwqAwmFIj3Xvb0hEnHA==
X-Received: by 2002:a81:ec01:: with SMTP id j1mr3064751ywm.274.1581696351835;
        Fri, 14 Feb 2020 08:05:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd4a:: with SMTP id p10ls521596ybm.4.gmail; Fri, 14 Feb
 2020 08:05:51 -0800 (PST)
X-Received: by 2002:a25:8389:: with SMTP id t9mr3491157ybk.294.1581696351498;
        Fri, 14 Feb 2020 08:05:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696351; cv=none;
        d=google.com; s=arc-20160816;
        b=sD2enJpmm2EdvSzmGAacz2kNUT2jRGLoqA15vBrloGg9a3+sx8zLyYvfp5W4u+fwWn
         jcpvk/6ZgjqPlzAR7UaUuLrycOttqGqDH4mY5fyCDxOI6X3iNStxzyS/xdZtblbGGH7U
         bje8XcGD9Hav1miNMszpwgdk5vAOyU2Ejh/USjmzksbodN2OQ3dwhtTcO4eKPWvwdWTL
         GvAv3AtxCTIGAYOrvX7SW62OGfD/T65rzzThHlBBPsq7bC8ht1pXpyfk//rh9rGOCajB
         HtnwhiPI0HF1gBbiYfrHfnztTuPeEq0AVZaCQZ5ubrtEfF7BfuYG9y/bRTB9hJj3CDes
         n5AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xTGzonfSISWSkENILip2H34yohMzN4/+14PKqrjOaT0=;
        b=ZpMZrF1KwIZYN40DLxTBa+vnT6oCdsVZQ7+3gY3ylTEl5pCtWORDKNrVsEO3sEeC71
         UTxiYaJlDIzu9wA7MFjZ/uX1yLwATliyhnmvPIFMzyiLo1Yz1JQI70Ux1jLWqQxDXu0z
         AJLeLzJToGzPA4iLgqiqCg+EKy2Ibl71gLB3oxBbsZ9sS78vcU3OvhqA6Yu/vXIPHXYj
         4OWHPTiZTOZewbHNFsdcpzWFiPGXi4HcUSoLU4jKvwyx3M1ZTB5Frztv2NxS22xZLblt
         HeD4bSFek6FuvkNJtdhahrn9NDg/9Kkikmpbb1QqtnB3HP1NxVuYn44CTM2BSbdEYtt0
         XNdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1RgJajr8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x10si357879ybs.1.2020.02.14.08.05.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:05:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9741D2187F;
	Fri, 14 Feb 2020 16:05:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ezequiel Garcia <ezequiel@collabora.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 184/459] media: v4l2-device.h: Explicitly compare grp{id,mask} to zero in v4l2_device macros
Date: Fri, 14 Feb 2020 10:57:14 -0500
Message-Id: <20200214160149.11681-184-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1RgJajr8;       spf=pass
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

[ Upstream commit afb34781620274236bd9fc9246e22f6963ef5262 ]

When building with Clang + -Wtautological-constant-compare, several of
the ivtv and cx18 drivers warn along the lines of:

 drivers/media/pci/cx18/cx18-driver.c:1005:21: warning: converting the
 result of '<<' to a boolean always evaluates to true
 [-Wtautological-constant-compare]
                         cx18_call_hw(cx, CX18_HW_GPIO_RESET_CTRL,
                                         ^
 drivers/media/pci/cx18/cx18-cards.h:18:37: note: expanded from macro
 'CX18_HW_GPIO_RESET_CTRL'
 #define CX18_HW_GPIO_RESET_CTRL         (1 << 6)
                                           ^
 1 warning generated.

This warning happens because the shift operation is implicitly converted
to a boolean in v4l2_device_mask_call_all before being negated. This can
be solved by just comparing the mask result to 0 explicitly so that
there is no boolean conversion. The ultimate goal is to enable
-Wtautological-compare globally because there are several subwarnings
that would be helpful to have.

For visual consistency and avoidance of these warnings in the future,
all of the implicitly boolean conversions in the v4l2_device macros
are converted to explicit ones as well.

Link: https://github.com/ClangBuiltLinux/linux/issues/752

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/media/v4l2-device.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/media/v4l2-device.h b/include/media/v4l2-device.h
index e0b8f2602670d..a0e93f0ef62a1 100644
--- a/include/media/v4l2-device.h
+++ b/include/media/v4l2-device.h
@@ -371,7 +371,7 @@ static inline bool v4l2_device_supports_requests(struct v4l2_device *v4l2_dev)
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpid) || __sd->grp_id == (grpid), o, f ,	\
+			(grpid) == 0 || __sd->grp_id == (grpid), o, f ,	\
 			##args);					\
 	} while (0)
 
@@ -403,7 +403,7 @@ static inline bool v4l2_device_supports_requests(struct v4l2_device *v4l2_dev)
 ({									\
 	struct v4l2_subdev *__sd;					\
 	__v4l2_device_call_subdevs_until_err_p(v4l2_dev, __sd,		\
-			!(grpid) || __sd->grp_id == (grpid), o, f ,	\
+			(grpid) == 0 || __sd->grp_id == (grpid), o, f ,	\
 			##args);					\
 })
 
@@ -431,8 +431,8 @@ static inline bool v4l2_device_supports_requests(struct v4l2_device *v4l2_dev)
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
-			##args);					\
+			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
+			f , ##args);					\
 	} while (0)
 
 /**
@@ -462,8 +462,8 @@ static inline bool v4l2_device_supports_requests(struct v4l2_device *v4l2_dev)
 ({									\
 	struct v4l2_subdev *__sd;					\
 	__v4l2_device_call_subdevs_until_err_p(v4l2_dev, __sd,		\
-			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
-			##args);					\
+			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
+			f , ##args);					\
 })
 
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-184-sashal%40kernel.org.
