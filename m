Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6EETPZAKGQELCPECAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id D194F15DC3E
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:53:29 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id e22sf4789271oig.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:53:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695608; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rwy/QRLjDWEoLyUTd7M6cOs/75RiZ3GL1CBVxjTo4+OHYqwaYqChRbUAUl0+JlwzDU
         ThZWsznxigLFRyz5zOvLkrlnNpdySCrlvYLOjXgIHncWHOZgpehdo7zUyaUpUPZaHoVm
         qqQAV7UQUCNwMilDaKZu4emgohJYGjdfEeVGrD0P9vUOndhTyh61eWUSo4avmn9265vo
         Kj5+c2W9s3NOi7YY0+Ay1Dhw+R1cS90YWgExkOeTE0hNAkw0E6PthyKEx/dySnXQqqKn
         r0qEoaPjjMsZEHjOhefuozthsLG3ywHUWBpzDQhsi56PfCt29bu4cojgd/YRF/pyqmga
         UuyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5mKHvrSrulfPytb8I9euuUkQgkAv4W2p6qRyW/DbdtA=;
        b=eEQiN5zIsuYoIX204OwTGlMpEkM2cBygY/aOqj5Y0x1JwdUdpApgMRNUDapOyxVgjq
         bDLVGN+NaH35VhtmmQ8YQLCFVFcgdqz9TN2+dYP9mdqHefoTWZ2401mQwhevtJXuaJgg
         ok6SVTQoZLavWddLvrK8VzresB6N3PZnF3uNg+YHrD2Q4bfhgP+3SleePsPLSluWMBu6
         4qvzYmi0sjVpbrexEGScKqyQJ+r/jDNVgXt8Jsi8D+DLpoIv1izGbQWXuj1B8Kgorccd
         WeE8BGwX8cgiiHMb8olj6bVXASOJs0VruKt6STTgFOEdnkG1LyA1UqWjYnxXZgPHXwcJ
         jpLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NHLfOpOp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5mKHvrSrulfPytb8I9euuUkQgkAv4W2p6qRyW/DbdtA=;
        b=adssg1ME71ORyd9gbmeCkxTQFz1a4nzdP9na1nq6WgLGSdEQLe5dcn6NPemQe0VDdu
         z510fhXG/6U7B8T6DSSewZNpcq9HbgQnM4y0+Gabo2oDeXWPMEM3PIgZjfDAO5l+YDNB
         5Vw9cxfe6Z03DDQTrNBMDpbZGmTc3ta218ajFosb+SepKhtZSkXHdos0F6k23UD9awa6
         LvYKPmwGVk2thuxXcSF69lM4b5bcsGB53PJVbZCw2hWlC8wp2x9nBzcEghM1HInGLm+N
         ZydaNEYHO6ontMBnz+OjGakMlx6uCeDQ9eo5eh7BjLWSog10uyygmEveMm8NLOazMSBt
         KdSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5mKHvrSrulfPytb8I9euuUkQgkAv4W2p6qRyW/DbdtA=;
        b=Br8JESVWK0ai7dmteYAUybIXLT70AE4Qo/xcyAO/OIhcoP71CFOpFFNlT1PJ48Jf0j
         wFdXcNdFlb6o5shcP5FoDqLXQx5C6Qx50Gjj7peq/xvBvz/MMEPO5x//Eg7/jQJRLJc4
         AKHZImBYKCS7b2VehTAZ+nMnv4DijXKhGPlHRItQxDRCFGzETYPVPVkmHHn429PnVHJS
         FmkC7D/Gihlb4/ZMRIJ09rYnMuf1Wabj9mcW36nadwM4x8drflT9zPurkNqE0O5K1lFI
         P2+Rqr5QX4bymXq6UEnvuQ/BKNGUW/16S/bhdHMDWrAvCZkozi602QI/Adz1MHEFk9i2
         9kEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWnl6Z3otARZAfZ7tVJhA+r3eHhiQ01UZoCe99CRRHoGeFd1foN
	3fLRqGpXbTGvbtYkatrP69o=
X-Google-Smtp-Source: APXvYqz9mW4uvnJeZqvH3CO7UyAPMB5ZILHLIvSXzz1WbzKG54nnucgcMD43jSRijT5iEPBG1zr2Rw==
X-Received: by 2002:aca:5f85:: with SMTP id t127mr2359252oib.1.1581695608802;
        Fri, 14 Feb 2020 07:53:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7193:: with SMTP id o19ls743751otj.0.gmail; Fri, 14 Feb
 2020 07:53:28 -0800 (PST)
X-Received: by 2002:a9d:811:: with SMTP id 17mr2900156oty.369.1581695608441;
        Fri, 14 Feb 2020 07:53:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695608; cv=none;
        d=google.com; s=arc-20160816;
        b=HUoi2P3qc0ZqF0nQlVyew2xIvRky62F0Zoe52eMX+SPYht9YZZAfF00Wkb1oKCgWUU
         wNpFUl/b8f3uJu6E0Rjpxw43Tn3fUjyIJ3sfUjsrPfK/jpGT5XxU86F7WaA4EvIIo6SI
         wUZllWiKB69tt75Czsd0+hMBRrGcqt/ICbVJL8uvZHg/nkUmNzPZo3hhv9ZG1/PlT0Jd
         mA+B8ZEmIchYbMgOkf1EullU+pKO82qrm4b8k4R6YYmScQNwA7y1KlqxlCrQ5wtRb0pM
         XMar7FgPTq7AhjM8sKJMhHfiUQf2EgnooK9Y6ae+XI95sjPFkQ5ggYTrcc++xZtdcu/J
         IFLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KQtaz1orHprURnZ0lGdIC3qtBhygkhHANHYfjn8Qjvw=;
        b=I6KLzhlCCnlwNe5MGJqvvqVxEt377f49Iw+2RfhIzV2QTa8zHNR/7XxsXhC6kdcwU5
         zMFMFd0yk3sGMMwcJDkqm9OpwoFF5f4FS/QFoTsvPmwtr7R6du50R76I2i7lVHh1UvX9
         uUvqCeUOxys1b2o7VocUPpfKTQUPiG483+8OLEshKdk6zOQ0LYHaXuNen3WFSIcL8dAe
         Am5ftSZaluC91kkcA1M2bgBysG1teBA6llrS061xA39mf/yxafVMMHFd5qQ1kcRUPQKv
         /3xNCjw8tnjDAv3xivKSbAdbXJPcX2YdpF90Zkx+1NwcJebMGj1gwNK1ELlFD3RDEzHm
         rSOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NHLfOpOp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j15si364003oii.3.2020.02.14.07.53.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:53:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 96C2D24684;
	Fri, 14 Feb 2020 15:53:26 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.5 210/542] media: v4l2-device.h: Explicitly compare grp{id,mask} to zero in v4l2_device macros
Date: Fri, 14 Feb 2020 10:43:22 -0500
Message-Id: <20200214154854.6746-210-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NHLfOpOp;       spf=pass
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
index 5f36e0d2ede67..95353ae476a18 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-210-sashal%40kernel.org.
