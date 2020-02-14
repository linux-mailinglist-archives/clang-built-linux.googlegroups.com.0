Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2MQTPZAKGQELFRVY7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC7315E162
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:18:50 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id s25sf4812029oic.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:18:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697129; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4hm445VPds3/B++47bhN7Hzj9xG7qB24xKLdlneLus02BYkwifmjIniJGv9LsBeNY
         PQxFfQgsLNyl0UJdSgW3VIAWJwSpUW51t6Q56MmyWdeRtnIKKKCJaFmPD8iF3S30urXm
         i30Or/1EREaINh1PVrQ6lQZMjyv2saGClcp3eE5S7YihBOHchoR3lB6l6x1ayZI1+BrA
         9K+NMLjYn8bwjAUYuVGvNH6ai4DN2q4zuPC40VrAvEKHTwQGk2rFBtl4qOPFC3j0rfVE
         zYQh3m1ztife2A83YDKT0uyXxy+kfG8FTw1pzmSlC5P85FT4HNARoOwQqw/pahbcwC7g
         lljw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=X3UVcxASJVCC5O94s1qBdyDhJdd0LFgMdyfD3oivaYw=;
        b=Lj9xIkEckiP+E6AAAj3gqIOLpY2N1q7pgl0kjLw1ZrgTcFj8h1Rbp4b+hYWi+CWcqu
         zQn9nXWK8uvnLRHPtc0mcFCpBPvzGyJai9Q0f1YXh8nl29JjgqRZ+GU9CvJJMESERUFZ
         DNfcQZQVUDRqbgyKYQPUSYiqtMN8aNwff3IiyX7aUG4ne4tpknxT8tQyq/+HpntnXh/K
         erwqgecLDB1bMh+VIv3Ly11G8PcuprIhrmNktLO2X/6CygCWlrgjxwhaZn0eurVsb9oY
         tAmr3RX3geDQfGxXZdIqlnl3LauE2gvWYihES3zvlgUU+TDxGI1i2ugwVIz1MMaPdlNA
         VSzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hP3X2Ypi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3UVcxASJVCC5O94s1qBdyDhJdd0LFgMdyfD3oivaYw=;
        b=P9QWMysxTuF7bSOkBR8ktJQQR/xT/c2w9MTlQUYDT1F7Mwet+ci71980hd0nazb5Ag
         /y/ps0i+7QQUqEFde1Uq506jJMdGicbQmuLUh+9KKOSZPEl6VaIoqpe0ob/V3CRDhGR4
         ayaTmGm4BcmGnDpdsGpBDQ+ETckKim+2B1MJFe0agzL7oBiOEZLc24e4Cq3DNgtHf6BY
         T9cJS0ak6EU45oC6pqRAO4Z/pl6ck2/o1Naz5FEFD0v11lN1yzKXgac+XjsqITIA8rTA
         BV9SNasWc9H1Xm35tWJhxqOHJZB/9e+u4qficQH21RVTpryeMUmVeEdEJBjT84alsYwi
         XITQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X3UVcxASJVCC5O94s1qBdyDhJdd0LFgMdyfD3oivaYw=;
        b=eS2QDwy2FkibaqY+iXe0ldIZRHA5vbJ0RMREVGdJdHe/TDIEjMDfvbyoPSYq+hC0LF
         to/WMahcngOgQYi/MuQIhH5U+RY10O86h+An3nVSPLsSTiaKA0EamzJGceYfxGOmCRys
         bC74No3Nn70nEC1nYfucfPwvZBm5SZtseuoeSzFZoxhEe1j+alYFsNZDtHKXEw9il9aC
         m9qwtYc9kGuSxYJ4Y44/Xf/7cxVHNsBVH4HLkC9FCTvGUFJJFjbhppHvRyQ1jDmaXSzx
         10CtJylCDlLk97K9PFfrc1CeFs68tgxBkkL1Jax85S+otIdDWFT8oWz6jVtfoKG5EInN
         HbbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVru0EkVLx17rSrdHYhNaA+E1G/Z7OXWkPkmRjT3sLzLfZRRD54
	PavcGIt/C4Il9BNJF1p3EgE=
X-Google-Smtp-Source: APXvYqy0fXPR7IyOsTLy23RoGwys8Lf0gE4KStJaa35nYcVhJrJVTKf6DbXRC/oWd41qUaqIo1KtCw==
X-Received: by 2002:a9d:5786:: with SMTP id q6mr2817937oth.164.1581697129635;
        Fri, 14 Feb 2020 08:18:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a96:: with SMTP id i22ls781985otf.9.gmail; Fri, 14 Feb
 2020 08:18:49 -0800 (PST)
X-Received: by 2002:a9d:65cf:: with SMTP id z15mr3030986oth.238.1581697129349;
        Fri, 14 Feb 2020 08:18:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697129; cv=none;
        d=google.com; s=arc-20160816;
        b=n8NYUoIinq9pmtBpC2QvD4mdB0mjqivPlav00G0t1s8LhglSMMCo4DhlbdjdlDxyZz
         YcpjpTw2FhkZzW60bPbzELVbf7ZnmN2fOZOK2/05s3HrlKRtzdYtV1rR6w73cpnBYW01
         i1gWokQRfVzZaBlnla8+DfPAtVjsqGsUMCwhYrjWSbCjMrU7aCuX8AfR6pX9EiGMW0PO
         Se847XsGU5i5vBHVuOdsuL1OEB56Giau+x0nWaqSDZKcw4Bac+Lyad/E83C7OMoKDb+G
         ZybfXoBGokp9pwGQje2jbYaHdZ8CA8pelDNAglFBKOxDmx7f3C0+//k5JkxUDXgOAGE+
         f/xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nNv5CWEKhlbomAkpvyKNmuLlCwc/Mn81h836QvUw2bY=;
        b=wzhsGR6O96P6xPC7m3LDuj3fJzPw8CZSeYSRK8wsTiDY7RuC/syA9+ORyN2qXuLEB1
         aZJK4cVW5Mi4zlPhuB8u419Ip5ptUmjGgoH60vN4S+kMxWj/QF3dL3uRdHFSVOqBF5Ss
         CtOV2/LiTu4S1cwj1Si+7lrdrSKzrCcLLnzt7D9vFaz+OOVWN8hqPfUDb1T0n5umsMrg
         /ft2Ugm6J0Cn9G/9xXxI0yARiMvNCspVj8DdEJo0higCe2s/gciW+3UYNJ0NfesxZEzD
         sTWXcUdSp0J+y5lyiAP+hSxkp3c4HnH4UN3ZxXyPh++E31plDELzjUicCunYKWnYwift
         NIhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hP3X2Ypi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r12si366137ota.4.2020.02.14.08.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:18:49 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6BA31246FB;
	Fri, 14 Feb 2020 16:18:47 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 072/186] media: v4l2-device.h: Explicitly compare grp{id,mask} to zero in v4l2_device macros
Date: Fri, 14 Feb 2020 11:15:21 -0500
Message-Id: <20200214161715.18113-72-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hP3X2Ypi;       spf=pass
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
index 8ffa94009d1a9..76002416cead9 100644
--- a/include/media/v4l2-device.h
+++ b/include/media/v4l2-device.h
@@ -268,7 +268,7 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpid) || __sd->grp_id == (grpid), o, f ,	\
+			(grpid) == 0 || __sd->grp_id == (grpid), o, f ,	\
 			##args);					\
 	} while (0)
 
@@ -280,7 +280,7 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 ({									\
 	struct v4l2_subdev *__sd;					\
 	__v4l2_device_call_subdevs_until_err_p(v4l2_dev, __sd,		\
-			!(grpid) || __sd->grp_id == (grpid), o, f ,	\
+			(grpid) == 0 || __sd->grp_id == (grpid), o, f ,	\
 			##args);					\
 })
 
@@ -294,8 +294,8 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
-			##args);					\
+			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
+			f , ##args);					\
 	} while (0)
 
 /*
@@ -308,8 +308,8 @@ static inline void v4l2_subdev_notify(struct v4l2_subdev *sd,
 ({									\
 	struct v4l2_subdev *__sd;					\
 	__v4l2_device_call_subdevs_until_err_p(v4l2_dev, __sd,		\
-			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
-			##args);					\
+			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
+			f , ##args);					\
 })
 
 /*
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161715.18113-72-sashal%40kernel.org.
