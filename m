Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAMJTPZAKGQECUN3DBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3C715DDFD
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:02:11 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id c185sf6284152pfb.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:02:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696130; cv=pass;
        d=google.com; s=arc-20160816;
        b=TULW35NTKrUwQsNR7D56hzcY7sjy28JSCG1NV0Be/awR1WLc+iVwAG6nuOagZfgvaS
         /kzUc+n+hD5cv0r+hQ2BNHS1U9nWToargJ8vYlnjpO/SqPhldgrznSTGN1b/bBC+0bTm
         XJtgNeeFO6iWKpC6kpnnKsHFe01dIlw4CnavdS80sRQ+Rk/SIE0/nJyeJiGh6MoZKRzq
         ugf2gohX+3qwuBzjAA3Cuq2z1c/9SYNMzS7ZozL4zBC7yNWndhGdwnxOAVIULdn+Y0KG
         xPXT/3O00faUUy4UaoLMlWCvmnGmnZDmzPyJA3JFKTZzAC//nd4lRuGa5yYae6q4kRhI
         5XyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m9LYuIvUOWHHLmeIHWQTAG3604vnAkzZOOrWnUHTKws=;
        b=YsBuzyQQZeskhiZdo4c4phOdMwFl7BDG1iYmGJ2GUMcdL4OKwYclgX8BgcOivQkcsF
         0L4xH8S5HxJmmm4imDGgoML5xY5yUwlmOYpdx4wgsBrrDuOi0J2GTv62zB5uFNfzfbQ9
         j1yACOaFkYRKUhG1SowPBeqS9FByTqaugWo+fv0Q2CYK16IK2UY9BKrdPOX8juxmQuzm
         BRGizxI6En8nY778Gcugk/jTQ2dZgbougtYilV1fo/AVxPoixxdcG+qLuurIYZdE61Va
         EtKu31JbdwI7Lq7WRyhw/VfScGQLzmXGLPJ5Q1cSwKf70B2zUlQ5cpapTjVc1fX7l0Hj
         fF0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wLINuaun;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m9LYuIvUOWHHLmeIHWQTAG3604vnAkzZOOrWnUHTKws=;
        b=FlGEy2Xe0utG9AhOyyFjxsEcJ136QNy31qutxRrcA/cbnlS0e1/A+rOvFtp7Rga/kV
         Ms2Aa3GjbuofvmUCenuPdH0VyQxjDFA5mSAcvMpc8MRcdHgk1M5CCPNFAxwN4Cy8swCh
         SbsmJ1ExcBxuAIHsOgsRLyl/AUk80OUB2M9Vymq/Fqo9f8sEWDirzANw8TEwpfAhvqhR
         aYR0jQWc/s5k/0nO9nQQmv8I5GOssRXRZN5xddCEdqPoRHEKVdlOuFdrndaNGgwf8shN
         I/ARDVgLgUgfpWBSc9OBPXqyO29gFzCpORSAFMIiOOt/qPrlXyhWfSmW7qu/1UTo3yjD
         hwdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m9LYuIvUOWHHLmeIHWQTAG3604vnAkzZOOrWnUHTKws=;
        b=Asac1Kmq0njue2FI3KV2tSgFRQQ9023afk83jUsbz6Pr5smlNDF91aK9pokAyTHgH9
         u80MhlAkGq3AR/cCP9oGkv0wBJCAbusyaId/WjlNfRd2GnGTSGk8ukXMQpmgA0sBEUqO
         TzghZVUdPpwo5Gxpa5NiLxcMsrFWe81IqkMPnTdv+ZIfsiqCNNpyPjqszAveQtxYeLjI
         qd4ysW6Rs5KVAndASVg2V7L4bZRiRZu2TSzRlP/nZ9Ks8D/TfP6nSu36KDESzt5Gc7Eo
         ggqsKXXnlQZtSio8TrQNVCb4Wxd+J55nD3JcHzp6Y9q0PI/SlXRP9eLKCdBN0cXZE3JN
         zNBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVaVpAwF/S4oYVoB+QU4xHN9x0M6yG+U3FnAkda1cjPGFFxa8QK
	V8e22lNhZefcz1KxUY41lfo=
X-Google-Smtp-Source: APXvYqzXF59rFuDwMyCQZEufizUhc/giiZUG9sLo7kZEaPuoefUCg7bavOLQAw269Xn+lYdhYj7KGw==
X-Received: by 2002:a17:90a:de05:: with SMTP id m5mr4485914pjv.10.1581696129883;
        Fri, 14 Feb 2020 08:02:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls1662472pfy.1.gmail; Fri, 14 Feb
 2020 08:02:09 -0800 (PST)
X-Received: by 2002:aa7:8717:: with SMTP id b23mr4198031pfo.53.1581696129476;
        Fri, 14 Feb 2020 08:02:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696129; cv=none;
        d=google.com; s=arc-20160816;
        b=iqXgzOIbnsQEr/I/EtdVk0hBrR0R+QZegz5duIAbJ71GXsJWl0meL4+F5WVE60tSML
         /jumoHvLOXU5wCtfzSL/YndjW17nOkk85CVfJBWI363lLb51hvDj72cE8nOwUmi/qzno
         CkFwGmSJN2ZGfXGfeES+L5DUiES14l7qRY2WyZX5omtaUPA6DrfNwzh7CfZTVLnA9gW1
         CGVpJP+066oNIpWlPulDxG9LCfBmIWkUPMwgpZnsGqVPCIArE08yK795TFIJTAU/yxUZ
         c6fzDhcfStlq7/AbR0HoKHNwGNbV+Z14fhAkwV9QjbkT3hf91Fmly8RNQakP302JSQUC
         TpjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Z6soo++sfLgGCwqbraXSMYUd48dUolqCMORSObaxvtQ=;
        b=Mipz0p8A49lY3DlccNQunnGrZiZufgzxmv4HIoXRRfcQQxsyJUWQ3+vxq56mrE85NJ
         +yVh6KalcRwT9YHTPOmhQ01pDNBhj9MPtMBIGZi9hljAlP0FMlLnC1yWVvZoyz2BG8Jx
         cUyf7cBdFbY5MVgktBlvNr20cMbMSNnAI8/lci5BCZFhO81JwkS/PL6/FirMf/mdUbuR
         raAhnboUtqqTPciOiIxyzLxxGnElgvaiKAYMfoAOKJXhIC49n8nEdJtM6qnm3MyiR2W0
         gwHUcM4dApkLaCv/OMdwGOMTlUcPq/Y13dqFJF7IV4kNO+/6WYMotSB3zFzVw3MzwXNo
         iIYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wLINuaun;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k1si265598pgj.0.2020.02.14.08.02.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:02:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0FC452082F;
	Fri, 14 Feb 2020 16:02:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 014/459] media: i2c: adv748x: Fix unsafe macros
Date: Fri, 14 Feb 2020 10:54:24 -0500
Message-Id: <20200214160149.11681-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wLINuaun;       spf=pass
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

From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>

[ Upstream commit 0d962e061abcf1b9105f88fb850158b5887fbca3 ]

Enclose multiple macro parameters in parentheses in order to
make such macros safer and fix the Clang warning below:

drivers/media/i2c/adv748x/adv748x-afe.c:452:12: warning: operator '?:'
has lower precedence than '|'; '|' will be evaluated first
[-Wbitwise-conditional-parentheses]

ret = sdp_clrset(state, ADV748X_SDP_FRP, ADV748X_SDP_FRP_MASK, enable
? ctrl->val - 1 : 0);

Fixes: 3e89586a64df ("media: i2c: adv748x: add adv748x driver")
Reported-by: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/i2c/adv748x/adv748x.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index 5042f9e94aee2..fccb388ce179f 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -394,10 +394,10 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
 
 #define io_read(s, r) adv748x_read(s, ADV748X_PAGE_IO, r)
 #define io_write(s, r, v) adv748x_write(s, ADV748X_PAGE_IO, r, v)
-#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~m) | v)
+#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~(m)) | (v))
 
 #define hdmi_read(s, r) adv748x_read(s, ADV748X_PAGE_HDMI, r)
-#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, r+1)) & m)
+#define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, (r)+1)) & (m))
 #define hdmi_write(s, r, v) adv748x_write(s, ADV748X_PAGE_HDMI, r, v)
 
 #define repeater_read(s, r) adv748x_read(s, ADV748X_PAGE_REPEATER, r)
@@ -405,11 +405,11 @@ int adv748x_write_block(struct adv748x_state *state, int client_page,
 
 #define sdp_read(s, r) adv748x_read(s, ADV748X_PAGE_SDP, r)
 #define sdp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_SDP, r, v)
-#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~m) | v)
+#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~(m)) | (v))
 
 #define cp_read(s, r) adv748x_read(s, ADV748X_PAGE_CP, r)
 #define cp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_CP, r, v)
-#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~m) | v)
+#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~(m)) | (v))
 
 #define tx_read(t, r) adv748x_read(t->state, t->page, r)
 #define tx_write(t, r, v) adv748x_write(t->state, t->page, r, v)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-14-sashal%40kernel.org.
