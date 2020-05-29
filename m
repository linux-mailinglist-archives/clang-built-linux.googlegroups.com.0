Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2WTYX3AKGQE3AYDLZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5071E8841
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:00:43 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id i20sf170216lfo.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:00:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782443; cv=pass;
        d=google.com; s=arc-20160816;
        b=nIHj88yji0ywjyWJXmAOfUFliRRyRwF8gdLoApfhkqoI1KIg7WU//0AKUGk3MdeVja
         E6WGzID8BQd84UmywqACSBIlxWAyaz1rXHN8wMRwXLIaZoI+HtKYSxYog0ej+3phZgL1
         0VF6USnKaU64vIbI/X92AJ4fQoNztj4/au96+KPvtobXfes5puFcUCkK/wLcv0I3Q2xt
         mawYXNuZksEGdf8aoQTUbWhRhFMWUX4UUBAdCV/bafLc0YrBcfJBOUB3oIKgMwmJ2TIR
         Ecw23JEo+CSLOjBh5nr9RJSkUyd87KsBt3+/CTur9ZBfO7P2Smtzasc9fiW7ZDpcLOBK
         /TTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HVgk67qmQ8nrhdFN0D4R9AZMu+qak0ZMrGjPWQCxpL8=;
        b=YY6MBIn06zO8gX6Vbb8uPITLADVM1kZk9ycLijCOZWWzNSZHNAJ1KYrbbn20/DcACp
         9mYs2ZzpzODRfI7ovkDTk8qYiej1n2fc2VP+LA1MzRh2ZbK64ViygS0lnetggpKgBtei
         IFQaUgjVwFrEVTvFLX+cYwbvMh8V6/EpeZ+s6IrkVhW4EQk06nPgX15hLB27mN8YJVs5
         uow6Ifmzitf5Xp00UkQ8jFu5JmUCI1KHeQJ+T/JjWPDD9hmr8LOOLBsI75+EE6y0YGGk
         f8q8HA+08P7G0TqX+m1hDFGGHZHEjHlur8zIuxAA1dxtnp9kr2zg+8po2AxZI5V9dy4z
         2shA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HVgk67qmQ8nrhdFN0D4R9AZMu+qak0ZMrGjPWQCxpL8=;
        b=kvRJeKfpLpYUDVygD/JJs/4JqxxaiBDX4m0Dkwu2zl9D99kOLREEInxRy2WYd2L5BQ
         zrt5U5bn/hnX9FD+8DntyGcrDYynxA4nZiHhztJb8w9ZZy1IeSpWLACProMwOVlaQonn
         pGsGoqXFEXpYE5Xv5XiOUFF5/ZoOnZCCzAjyLBtiqSRHkbTiuRo5MEf9IR/yFbwtnO6d
         EFh8DoYe//gIxf6Zvla/RlIpHyk0LPRLOKXpgWh+XWwsdPXw4q5+ydolWkbHzyleSOI0
         Jlu//f6weixOlZadQnXJdiby1CNGnIxgTLV9V0waNEYxi5HQtdEUoEC3m+WdFNGxRsEd
         6P2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HVgk67qmQ8nrhdFN0D4R9AZMu+qak0ZMrGjPWQCxpL8=;
        b=ZoV9vhfpJxYaPd9DPkc9LfpkYN1mapiX1QlbHe26lxgX8584CloxqjU4IHJzekdg5S
         rqgB0yLtWVOeW14Jux9UlDsU63JiTy/4VE/A0I12ZnT2TvXyJiygR8uDf/aiq6J2f8nB
         wSAiQS2zqnA9mq4F39WGRXI7X1j+Tb8xoAB2/kTTSN9O2Km0reMRA2mV/jbYQ9Pz15ec
         V/ca9v0BydRLxtyE7sV0RbbuZ+pmmjTVyfIDg6Mb+vast76HclHg8VNPUE/SHz9qDLvX
         +a5Tk1kAbqudA7SGGGR+6Aio/JUZzA6+BefCT2D0EXvb4ro7uMpRT85lNTiOrkIFrBw7
         5y7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CLkfRJzjWNnFAAGid76AxPv/Ob03RxtAri5m1UQM7TcrBKBiR
	T3u/UcbMvM3XIEe5eQgeG94=
X-Google-Smtp-Source: ABdhPJzh7VtrubSH/DqPKSfd3ZlH56ZU/rnIMnsiAh41Mrc0i/xpnAzN1fPN5hRtVDeETSaplbOn5w==
X-Received: by 2002:a2e:1617:: with SMTP id w23mr5161817ljd.28.1590782443014;
        Fri, 29 May 2020 13:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9415:: with SMTP id i21ls434047ljh.3.gmail; Fri, 29 May
 2020 13:00:42 -0700 (PDT)
X-Received: by 2002:a2e:3811:: with SMTP id f17mr5534527lja.464.1590782442389;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782442; cv=none;
        d=google.com; s=arc-20160816;
        b=NpYHhqnF0pi5ssb1HtPM3ESpoDoWBN9bD5zO/6ilwuw3yIOTEpNmu1ka0E/lldevXp
         aIo8PkeTgOW8kZQevrZ1/5HkR09+qlnUevPna1cp6/mUIt/D+FW6zU8Ez92H7zISN/kL
         FKoLfo/tMtZVRxut/Yh1vqSiqbFTHzyhgOmjGN/siRagND91NTX0gJeZKH2SdG09ATrl
         tgBtNpkk03AEx1sUWXqqyCSJghqX52+JrjFR6cssv3st1zTQt7LH8xUYX+Q0SvUT8+es
         wKrAzzLIJQ+wWBwLQ2j7i6QkHtD6oMshUszwop0p0xpdBU2V4e4tImN3Et0TzQYnIQd0
         sU6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=cxQKQfO95q3wEnHdIA4qIlT3pdeh0EaA9+luSwQoymI=;
        b=RKNkh45xTEhim+LYWGKnLQrqTIUguLjoX2pNYQk8LUxuW9cjA2X5bd8U+iCewdsKPJ
         7OSvQ4CAaZ8l/QGjXmzthGIy4HDPFb1yXo61SI+BUxS3kEQuSOv0+0aTpTN+EL2rI2YV
         V9egg/LyvRGmH6Os+fxUxgfuNlxRgOgjBi/FlUA3hDNyXW9/eskc8i3ZlOhXVYJmYoKq
         j2BZ4YyFKrj5TMi6w9MNWQ95gN/NHPB6fRfU9J4tyUvEvS8Zs50O5HHMMFxT7XNJsKzk
         rpL2OhFyZIy9SnOmUQzctaR1zhI++1zV5DGFAK5SNbOd7qKYyBRfh8GkBCJ/Xe/B1QnB
         tfLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id 130si489389lfi.3.2020.05.29.13.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M3DBb-1jhmNw1fMT-003eXf; Fri, 29 May 2020 22:00:41 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 5/9] staging: media: atomisp: fix stack overflow in init_pipe_defaults()
Date: Fri, 29 May 2020 22:00:27 +0200
Message-Id: <20200529200031.4117841-5-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Wk4aB6MB00HUMVI+PYXcoWnTJNhnYs2ponKtL4wBtBdX22cXjgZ
 cvDEYQEE0jdp0PzAw1NnhAANObZJYZx66+ho+dnWHC/ntmEbSOUmZkVOSlDcuxxfyyL4EnW
 h+EsvNNql1wk/wHzjkKnkLA49hsQHOP2G+78bJqKVpWeK1kNTboHWRnAWXT0xaTFepXoz1p
 /68vvxlr9qXaVqtW/W8Ng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cEIkal2MfGw=:iht7TijDHt9uBvmEBeBzzO
 NRoZ2I+UaILlON0VhkyILDdZdVAeYsdOBmdkbUu6J8KMdPxs1SrVxaxFMhM65np7X2WFbw2fE
 KXWnQgafjvwVc9svljOjljkBrzSkfb7YCoeA/y7Wjypp5OkVH2yPA0Ocwi7fi2rBx8P9GSgjr
 bwaLz+WZ+ihLTKqqX+j6JILpT7BjXsITBM7x9XlNWRuy/mYOeaYuU9e77PrxHQd5y6EPq+Hog
 fkGRvl9/F7LOeM8Q+Fs9X4N6oi6qfWhi//XBJaMROVwOADJ6Y9ySYSGqpTqAbDOcSXLjUN6jF
 PnFYr7uDe7v7V5xR+XovMifYqcZltJPXnZAv5atK5c+jblTNrFkHhZK7FacrSgHnYzkA+mgAc
 ozkXfgvWzMjZ0euQUF195orFRGf+Gfsjtzc+CXR5d/tuwifue+9o5duiQTiU01y9sr08m69cK
 Q98y74OE6HZgl5pCQIA9DhdIdRp5tnbI8Tv5zmxxhO2LyQdUUsHpU6ylOC6eRvAUP3r2zvSoA
 7SCLpkntCSsMsC6UfRc7KJ2uao2y6R6pOTp6OwDvwGjMuZIIICO2uTmZaMnvN1SZHI9e63tpS
 Ebxh183FdfB/2dAMxfqMuywes1oiyfhoi9xZs8mkulu1/hp5bs8dYPSRlkjZ4IK8/8ZEr+JzL
 R2n4lJK0Eeq0c4jSWLpGjdOf8Fzzp6bK69E6H3gFZkB42zNx+fVMxKbZ9KF8nleyThKuA6egp
 juWxF9Jqs//MoOZsM0WutmlplLpnH5J5rxPr6f3mbDK6jlpy7vSNR/hNzz+vBUwonY2TcSeAS
 wtA575qzX3sJer6IJc7mN7JxseFnNs1YrZmXbA6bHfBgceXtjg=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

When building with clang, multiple copies of the structures to be
initialized are passed around on the stack and copied locally, using an
insane amount of stack space:

drivers/staging/media/atomisp/pci/sh_css.c:2371:1: error: stack frame size of 26864 bytes in function 'create_pipe' [-Werror,-Wframe-larger-than=]

Use constantly-allocated variables plus an explicit memcpy()
to avoid that.

Fixes: 6dc9a2568f84 ("media: atomisp: convert default struct values to use compound-literals with designated initializers")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/sh_css.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index e91c6029c651..1e8b9d637116 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -2264,6 +2264,12 @@ static enum ia_css_err
 init_pipe_defaults(enum ia_css_pipe_mode mode,
 		   struct ia_css_pipe *pipe,
 		   bool copy_pipe) {
+	static const struct ia_css_pipe default_pipe = IA_CSS_DEFAULT_PIPE;
+	static const struct ia_css_preview_settings preview = IA_CSS_DEFAULT_PREVIEW_SETTINGS;
+	static const struct ia_css_capture_settings capture = IA_CSS_DEFAULT_CAPTURE_SETTINGS;
+	static const struct ia_css_video_settings video = IA_CSS_DEFAULT_VIDEO_SETTINGS;
+	static const struct ia_css_yuvpp_settings yuvpp = IA_CSS_DEFAULT_YUVPP_SETTINGS;
+
 	if (!pipe)
 	{
 		IA_CSS_ERROR("NULL pipe parameter");
@@ -2271,14 +2277,14 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
 	}
 
 	/* Initialize pipe to pre-defined defaults */
-	*pipe = IA_CSS_DEFAULT_PIPE;
+	memcpy(pipe, &default_pipe, sizeof(default_pipe));
 
 	/* TODO: JB should not be needed, but temporary backward reference */
 	switch (mode)
 	{
 	case IA_CSS_PIPE_MODE_PREVIEW:
 		pipe->mode = IA_CSS_PIPE_ID_PREVIEW;
-		pipe->pipe_settings.preview = IA_CSS_DEFAULT_PREVIEW_SETTINGS;
+		memcpy(&pipe->pipe_settings.preview, &preview, sizeof(preview));
 		break;
 	case IA_CSS_PIPE_MODE_CAPTURE:
 		if (copy_pipe) {
@@ -2286,11 +2292,11 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
 		} else {
 			pipe->mode = IA_CSS_PIPE_ID_CAPTURE;
 		}
-		pipe->pipe_settings.capture = IA_CSS_DEFAULT_CAPTURE_SETTINGS;
+		memcpy(&pipe->pipe_settings.capture, &capture, sizeof(capture));
 		break;
 	case IA_CSS_PIPE_MODE_VIDEO:
 		pipe->mode = IA_CSS_PIPE_ID_VIDEO;
-		pipe->pipe_settings.video = IA_CSS_DEFAULT_VIDEO_SETTINGS;
+		memcpy(&pipe->pipe_settings.video, &video, sizeof(video));
 		break;
 	case IA_CSS_PIPE_MODE_ACC:
 		pipe->mode = IA_CSS_PIPE_ID_ACC;
@@ -2300,7 +2306,7 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
 		break;
 	case IA_CSS_PIPE_MODE_YUVPP:
 		pipe->mode = IA_CSS_PIPE_ID_YUVPP;
-		pipe->pipe_settings.yuvpp = IA_CSS_DEFAULT_YUVPP_SETTINGS;
+		memcpy(&pipe->pipe_settings.yuvpp, &yuvpp, sizeof(yuvpp));
 		break;
 	default:
 		return IA_CSS_ERR_INVALID_ARGUMENTS;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-5-arnd%40arndb.de.
