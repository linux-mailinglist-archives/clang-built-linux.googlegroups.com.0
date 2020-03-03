Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBY4L67ZAKGQER5PEXDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC30176B50
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:50:12 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id 22sf553762uah.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:50:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203811; cv=pass;
        d=google.com; s=arc-20160816;
        b=m8Q4qU/LP23PMBpcafOsw9yMctrJLva4WL/3k0IQJZdc7nHNgMY+JgNkERYFED/eH9
         KkbNYkbdrHnkjMjhBzHDsVUiGlyu1T3Vj8JRH7UDcjOhKwLxH+QjZi8mfTSfBgOWTxh3
         0/MMEkqO859PBEtRXZ25SCRUYyHmUYfscMimVqhLZ/B0dcJ82Zov7Jl0+MHIjrO0T3/0
         y1NFZbmrAleI6Sz0bV+5bYIQlLenzRrPjzSlD0KUeqQbxxz+gmewa4k7osdG8+O1MLJn
         Dw+2Fg8w2ebd59tr68Vwl3G2Tbc4QABwoTv71blajc7+BBPCIW4eYL/Vm9cWCWy+UoW1
         Df1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WVjy8gy9uvbQUyVPYIuBWVZaqimn69cz/5j5B0vD4B0=;
        b=cvrcjDr0my71AHuALEiLkxJnVsfvh5zMYd51B4p61vhpRPhADdfcUOFMOT5nOM7Dg4
         Oracpmo8ILE5NLtZGHRfp7VZktS9C8jsMZiWxGPJiBrK2J12r+t83mCBQYlAxEY8LMXr
         B2xH6uDKAa115NGU4aFloB/lxlm+kVlBSiK702chLjrjDqkNAdHN8m2YmDq5strZ4OI5
         3nJiivrq+6r5HXeaH1J9uxFuc/DsrrYoocbjEuV2c+qebNNqODEY82sDD2swGNHLFWgA
         YjxNboXKOEF5R63rHxnmOmAquwrv1zRNLzHwQUL2dPhJvib2aareYClFMgvvM554qqiK
         6iPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zfQI0oGG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WVjy8gy9uvbQUyVPYIuBWVZaqimn69cz/5j5B0vD4B0=;
        b=Yyiqb7qEJmFXd/8LEPMZWByIqN0t0fqyiL0GQM/OxAmD07e3YbdatZGINeo5teDWCX
         sJuSCH+me++FaL+dJ4q75ZAhnmeuKSGDFdbKR+j+iT054rwqLue1ltCy8VWGHhssWA3B
         QSs/06KAG1G7kqn6svzETHKvk4mrYVWvt0S6HD7F/kpEeD8F1DVwWO3uLFLa40HmQjRA
         Q8w9mx/tJn5C2wzPxB1Ki7J9ftGUEprb+NocSJHm8Ybo2KGOv97DK3EoNQC/g0quFqpg
         uw8XViC06WQ5ljd9f37ZnlipFQsiQ6yE9plRqq5Pb6mCcTNgvSpiKvwevogcIN6k5pBj
         NyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WVjy8gy9uvbQUyVPYIuBWVZaqimn69cz/5j5B0vD4B0=;
        b=KhQ9oYRUOJlIBBf0s6vqrRlQDyd6DUkceLNsilyEZEx+FhX+KVMwC7OOlToIQtrQWu
         HzxxXOFhwEnqwF5T7v28J6Ibt9jDmwc2gG5YaQnsGlGk4E0bgetn0tbOATz3FNUQ+L2M
         +i6zaTRnX5i+/bd3Z99TLjnXs+gloAWuf2UyKh1zSRqD1jdzvDnuP6KIbAraJ2o99M78
         YTairKuL96SXIqhOOhtTkkd9lcoq+ZYTDraZTzb8uh4mZ8gQInDHO94IfD3qr3nWDajg
         u+AvS05Fsl8cBjbchjUV9m1/058046MXBLtJpRDZOqAY7TRZETr2BtbQN8DUyHTuzUe/
         BaSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2wh+nh8SvzqWItBoltBoAxK5rZoV3hsMAkhyA0a9hair2gPjB/
	ykCtPbz3o+92rsWIo8D8VNo=
X-Google-Smtp-Source: ADFU+vu3zMPSq6wHr01tqyzDZcrYcmDFJp+Q28ieh3XCGDnMLCOG6F/IVlIqdSce56d2jC8iwzhSog==
X-Received: by 2002:ab0:6605:: with SMTP id r5mr1634520uam.0.1583203811633;
        Mon, 02 Mar 2020 18:50:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a017:: with SMTP id j23ls88984vke.2.gmail; Mon, 02 Mar
 2020 18:50:11 -0800 (PST)
X-Received: by 2002:ac5:cdcd:: with SMTP id u13mr1753252vkn.0.1583203811281;
        Mon, 02 Mar 2020 18:50:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203811; cv=none;
        d=google.com; s=arc-20160816;
        b=Rbbu2/weAeIKevaBE7TLa4gALqMUzafmZm/Tumw8yhaPpWzZD4vPkTWhWAxGDdVik0
         0AJnXMyqr9CbSfxY0cHmMvj/EUoCSI5y9W6XazxdEg6FIm9ONChxAK7S2q5VrGw0+xMH
         8SR++o4EzIfCo7vVwi8j3DDt0mIo9L3saqE9YlRKY+LnZef0WBSP7owEyT2c/SGvnLsb
         kUPX9PCLDrToUGldRG0sqO5L7wuYXF2f6j2mSBKVtXelb4f/6NZVyjOz/I1j7Xt/7IxZ
         WVQvP0VMC8FLGprcns5yVV2WRO+vIS4NwRRtrtI0suoYm05Nb1MYs4PK51sfUogFjGXm
         3dFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=lwncTk34Dw2bZbdhcCl+42JFbOR+Tp0h0D+e/h3zt94=;
        b=FwZqKYj9QNatfkpOF1rw7RrNmDJTeXz7eB+2WD4epsGn07M4iKWhkh+lE9h36n29OK
         WorTjjAsFlQBY3Pw0vk6sgCVzE1Y8V9yeZs8zM0/xngtWt2Zaj2dvlFcUem15ng4uv7S
         7rpKUiOU+SWzD5pMntp8UUK6eCI+Tk4YlP9lwGJKkkhw5Z3kNKAwYOc/6F+XqkjuSdyI
         rZJkggLm+L+4q0CGAznhAVxx+g0cvyA/xvSLlrJhi771WxoQmjy7xNQRs2c9RRq4JPS1
         UM9D02p7QKa2oFjVhFOjY8mbc1uKwqIt9qCVF0LbpTysBRI1/G/lD1InbaLnLPbmvNBg
         L/Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zfQI0oGG;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c6si516273uan.0.2020.03.02.18.50.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:50:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7A3CB246E6;
	Tue,  3 Mar 2020 02:50:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: John Stultz <john.stultz@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Sami Tolvanen <samitolvanen@google.com>,
	Todd Kjos <tkjos@google.com>,
	Alistair Delva <adelva@google.com>,
	Amit Pundir <amit.pundir@linaro.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	freedreno@lists.freedesktop.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rob Clark <robdclark@chromium.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH AUTOSEL 4.9 05/13] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Mon,  2 Mar 2020 21:49:54 -0500
Message-Id: <20200303025002.10600-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303025002.10600-1-sashal@kernel.org>
References: <20200303025002.10600-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zfQI0oGG;       spf=pass
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

From: John Stultz <john.stultz@linaro.org>

[ Upstream commit 7fd2dfc3694922eb7ace4801b7208cf9f62ebc7d ]

I was hitting kCFI crashes when building with clang, and after
some digging finally narrowed it down to the
dsi_mgr_connector_mode_valid() function being implemented as
returning an int, instead of an enum drm_mode_status.

This patch fixes it, and appeases the opaque word of the kCFI
gods (seriously, clang inlining everything makes the kCFI
backtraces only really rough estimates of where things went
wrong).

Thanks as always to Sami for his help narrowing this down.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Sami Tolvanen <samitolvanen@google.com>
Cc: Todd Kjos <tkjos@google.com>
Cc: Alistair Delva <adelva@google.com>
Cc: Amit Pundir <amit.pundir@linaro.org>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: freedreno@lists.freedesktop.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: John Stultz <john.stultz@linaro.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Amit Pundir <amit.pundir@linaro.org>
Signed-off-by: Rob Clark <robdclark@chromium.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/msm/dsi/dsi_manager.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
index c8d1f19c9a6d9..10d49d43c17eb 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -306,7 +306,7 @@ static int dsi_mgr_connector_get_modes(struct drm_connector *connector)
 	return num;
 }
 
-static int dsi_mgr_connector_mode_valid(struct drm_connector *connector,
+static enum drm_mode_status dsi_mgr_connector_mode_valid(struct drm_connector *connector,
 				struct drm_display_mode *mode)
 {
 	int id = dsi_mgr_connector_get_id(connector);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200303025002.10600-5-sashal%40kernel.org.
