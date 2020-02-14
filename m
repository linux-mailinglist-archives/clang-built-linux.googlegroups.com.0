Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPUOTPZAKGQERK7PZUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EA915E058
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:13:52 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id 75sf5374815otc.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:13:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696831; cv=pass;
        d=google.com; s=arc-20160816;
        b=llVcvcOzKh/s34/rU30wZMKtAvMyOlsg9x9xvU0iZGEhDLKUq0A+NGbeY9c2DQ9lxr
         akXh80RqZBDalRp+dDcxptK0aJSHXbiSveyqkhTomYNu4PuysXGpH98j5/Q4o+hOeZ+V
         E3KTIs2ut9zi7AM333LF2odqNCfrDj0lbhdOrbhVeuQQwoZK4tSJW8qFuEcme1Y+tVfY
         pFpUHV+6I9KXTbhROG2Injl+0XBHQDDccZq8OVGwFbjhSQqeXvf97c3qxMvqsUVyStYn
         o/4bcsUUIEhJc6BUAeI485aaF5JJffvkCIIlfn9eQ1fuJhYIxltF0ZGa+7ZGicdC0BlR
         NHHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qXQqqHsoHzaRJhBcmLIrNvyZYXlIZ9moY1J4ObZxhqM=;
        b=Y9lhwE44Va6bCDHK4fdIL+juyH99kudJoBuh+iVvIAdYG11b1Ykc6MfnMIMapadesj
         O664kT9F/DgrDA6AZXCO42QxSQwmaGmM+l88z+v+q/50r0HabWOuv25aJzLezSmgOUlf
         gQuwbkX63fD6+9I0sUnAtJLyiaa0/MAIKlHPzMtPcB1MOyw4wb+JpFcYdj2wOGr0kvaQ
         S7zejRcvkxFmNND2dsoPqxkrig4bdyc9C60eZCPOnxFQ0t8BY24VMWbD6F3eVMxk8yk/
         KcMADcvmVqYfmEu3V4JlTd9gnlTAEoZ6wkNVKWhMzOiSzTWo6DlHjyeX0337wuNKFZxD
         p3cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MtyflCFn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qXQqqHsoHzaRJhBcmLIrNvyZYXlIZ9moY1J4ObZxhqM=;
        b=UHeSOF93aQ/BzmwUY3OU2TI+LDHdhrtOhhmpZbgI8rh273o9om/QoVWWUOE2Ljb4cZ
         J+onYF1a6NGv4QVSTQFeLZP4vJFQXKutNJofWrj0Mpv5BG+mmRhQlIwdBsCPVqqI9Ffz
         p8l7nW+OChfoCVPXnzpnHX0Ko74gQ/4rj38vBh1BmNJJconPBZq46uPTbENbULdpNjy6
         6GuYHj1UNt/vNZpu0e15rvyJbfX/0yVBBfhbUEJ/InCEeJSN1kDUuaLgJxIZDbSTLsk4
         QZmPAigx+HcAt5ZBHnppR4ANWy47ck+FRCB6s8KsWiCkuteK3zMFqKeQvBKgz3/c0CKF
         GVVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qXQqqHsoHzaRJhBcmLIrNvyZYXlIZ9moY1J4ObZxhqM=;
        b=hkQ4MopjTgVZCcLk7Y0BZdAe2TNzZ+L3tZR7RzqG6k7Ywi/HZBG5Iy4uYbAZiUa09z
         8qR/IKZgFTVt6Na1o/jO9YnakJ4A1dsJE6jHL64MEtLhMANG0cu8L7U/1S/BSc8DAqgs
         ursuts/bKT0dbrepGwTZkZT40qRtPT8Kc0njtz1SilDB7SGXxwa/KTZTwGMXQdwl299h
         rv/ejy8hi3OER8llqUmNXkumytxe70kF+zOadNRVgJSpLazq8NGsZysIkZkd7tCmDzNm
         q8fZl8+3FajPF+GxrMUiDCjwUM54gIT+UK9LKqC6qiHSigLRjktVYs6Z5MAj2JlPJEK3
         Lzyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVV20PUYAp4l8wlCexemPk7slD7Wxe2WBANOwynrMZ8zRCTRd5h
	91kcbboro+yCBuYHMXw883o=
X-Google-Smtp-Source: APXvYqysvTuRNu9X5uxQEuCCV7hmcwXfaOIkC0Gr2PeRnxIp3aSRiOmL8RggJvlAPgGXWTQmHkabtw==
X-Received: by 2002:aca:aa05:: with SMTP id t5mr2367716oie.93.1581696831175;
        Fri, 14 Feb 2020 08:13:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd6:: with SMTP id k22ls782899otn.5.gmail; Fri, 14 Feb
 2020 08:13:50 -0800 (PST)
X-Received: by 2002:a9d:76d6:: with SMTP id p22mr2975141otl.37.1581696830609;
        Fri, 14 Feb 2020 08:13:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696830; cv=none;
        d=google.com; s=arc-20160816;
        b=i+dynSVr/rn4rpfO7juz9LLCPlejD86ShEZNfXkRFGJvZ4ZETHOgKfVCCd+NOWlsfZ
         zkMouBd2leWfLq9r7hb6hKoaDDsYijMFfOJI8kpJJ/xdtCSEWclYiWigYmch4iQY9UT+
         fb2A8BbM8K1bWQ8Qgx/DyWqQQhQFjYMHtsRZfiYQGL16cfUhhWSwMjZYrzxEBt9kujB2
         YNqOEvJGAMEf0LVx04cXuhCIfUl4yCUYBcMgz0skI2ZC/OzwY8ibTidG1oH5LvGLEECh
         NJewEa3VH2+iPOrf20fvobj8SnqIQoq2L4rXV+J9IZsj4iI4S6QzXOfd0Ac1zMNDIUYU
         Qs4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cACgMtMQVlZ6FQ4073Z3Atw/B9MEQz8LKcsPslw9630=;
        b=dfBDFZpkzSK2k/JtqJzjuj5U9ueTuksCq0o+cUoMMxxLniMdqQRzZKRpUZDRNm9rOj
         opjiTuM1zl5+R3laHVx/NgQQnbL7GTspA5DMDv5DZMDTMb1Zo2d3DN8ARQpeA75OMs+6
         ehTSEKszKBOMwdF8NVpCiW3U+RqY2nfNO7Phija7V7fKxyaAY5LIbDhMCIey4of8L0pt
         Vnz8bQ+mUxshXrnZARpNJsDEtnnuicRsvcKyVIuHCnQaXu7CsXXuqgthq7HYy7uDG+no
         0DsjdWzXV4K6RNrQjxcN4mRN8NCTBXvVBzKyC5CxjHijdcZxQdOt43LnSaReWPCJd9Li
         nocA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MtyflCFn;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t18si295841otq.5.2020.02.14.08.13.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:13:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 98030246C6;
	Fri, 14 Feb 2020 16:13:48 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 095/252] media: v4l2-device.h: Explicitly compare grp{id,mask} to zero in v4l2_device macros
Date: Fri, 14 Feb 2020 11:09:10 -0500
Message-Id: <20200214161147.15842-95-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MtyflCFn;       spf=pass
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
index b330e4a08a6b8..40840fec337ca 100644
--- a/include/media/v4l2-device.h
+++ b/include/media/v4l2-device.h
@@ -372,7 +372,7 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpid) || __sd->grp_id == (grpid), o, f ,	\
+			(grpid) == 0 || __sd->grp_id == (grpid), o, f ,	\
 			##args);					\
 	} while (0)
 
@@ -404,7 +404,7 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 ({									\
 	struct v4l2_subdev *__sd;					\
 	__v4l2_device_call_subdevs_until_err_p(v4l2_dev, __sd,		\
-			!(grpid) || __sd->grp_id == (grpid), o, f ,	\
+			(grpid) == 0 || __sd->grp_id == (grpid), o, f ,	\
 			##args);					\
 })
 
@@ -432,8 +432,8 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
-			##args);					\
+			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
+			f , ##args);					\
 	} while (0)
 
 /**
@@ -463,8 +463,8 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-95-sashal%40kernel.org.
