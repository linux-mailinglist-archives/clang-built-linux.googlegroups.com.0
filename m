Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7UCTPZAKGQEFBSGYSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id B300C15DB82
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:49:20 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id dw15sf6082027pjb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:49:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695359; cv=pass;
        d=google.com; s=arc-20160816;
        b=X6WWnSho8OtuspQpE7H0YWqa6qIrZRKBp/t06OLbCoPqfp9Wm9dC4Ekcds93McZ1uw
         s2kxuqJ0f6xlWD2hJi4Hmc7I630qMfFkVYinMmsn1l4rlaF0PDeDInqO3Iv3/16Fr2/N
         XrGtyoTG7iEz31vHYADXldz1ZXOaYJk29LIFuH6ycOToftaHNHwraRtUbp0fcSb9rYxJ
         Z0nfNuNbP8amHd7cFYSh/IDVfZOc7K24i9fQYQ384segA+0FaM7kZomeoeCHAgWkSKCO
         jCt+e32y2gpb7d3/isBZQvLCRNZeg8l8dXUqYN7c08DrjxrtNajAcL0zSI6PKMgT/zHg
         NCgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DjwRamgFKWAgGqZJlqWOMUd5VTCaF14+wm6JrqLWw5c=;
        b=Tfgok7G/bKxMY/T6PbCwLXVZqqsXtIEHaOmw8g+V4iorwlK21J+LqrYb7+v3afPfGo
         mGhsjy67MAKytslq8pPzmE0JmaSGVDy9yC6XMktUGHwCwnwwlLzWpez/CFu74ivf4C3+
         l1QGi80JzJmu+vumk5PTamuey0SGqWV1+CfE9b9A7Zc6aUVonHZzaYVRo/2pEimV+pDy
         Mx/7UlrmKn4IVt5sOd7aQDN2ftrp0bmyFERPaFmsOtdjsHbFsJGVW+/MOhU5DYz4oPwt
         2Qy3kz9MeL9DCHHZMrIfLMEG8xASnNlUOwNBX/LiVbSuoL5cOZ3EyeitSZX65kqQyER8
         Dfpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="OOI/+e1O";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DjwRamgFKWAgGqZJlqWOMUd5VTCaF14+wm6JrqLWw5c=;
        b=EsLmn+wDn90a5j//W5Ohvqwn6EJyc0wp0IWCOFw+6HrGP3sQawl7AF6/5fsJ5bcKaI
         0Bb6pBenhyU6I+DUGIlxLsiSaNQUTKCrorUUMAIm/DI3wmSTdjQmv0Iq1huB6y+h/24g
         bK9f/brx32c+q8lGvS38Lyc8Rckk63LvuYyEpzPbv6IrtZ6lG44l5Uf+Q3AQomIZDBaU
         onS22Pv4Kq01D8tcgYDayA2MHwW/2S7P3PsyQ2CgW8nfNN4BGrB+Y3zXkHsGHnI71Z7G
         P5M/PN8J3aZp9owunGmwCnRpaM3DXK2lV9l8z1+2HnbtepIoOzFUmL6KyY4hE246ogLl
         icRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DjwRamgFKWAgGqZJlqWOMUd5VTCaF14+wm6JrqLWw5c=;
        b=bEat392Z6B0LNpbUoKDGQT04R/JsMZ3d4HF7NTVtfH7F/8QioFPDsH43ZoJdyuuL2Z
         k9DPzGO3ZZ2hlQinBsl5f1rVLfXi3xsf/q6wo/9mR39+rWHrxIf3XnagcSUh1/Y0wlyP
         VpznnD02R8akkPVYc0FTrIU1r3jo32yf9RgdNqrP29HlanUe99lyqYb7rBL4/SzRcIhm
         0od/aKSCBjD3Xh64TJmYZZIJSBZpYpSypWouIs+vnm1vtSfI+EXIJtxcdWSh5kqfQyQ2
         8wGNs1hd6PBM/drKzNBBc2Fupn7W2+jVlMwrirEyffcM8ViuTyFWPzaTU92ly62ifPBm
         yFIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXCDAiamPdtX+IUBAzk+CmpwN87r32fmJ1ejeANmf/ap3+XOR2j
	7X0FQ9HbvZNslC018uLDzhQ=
X-Google-Smtp-Source: APXvYqzZ0JQhREZs3wYRjodAA+RE95nyoAHvykBAlopJJLS756y2XxxfRYuYsROvlSdB31OeI8RDeQ==
X-Received: by 2002:a62:be0a:: with SMTP id l10mr4315932pff.110.1581695358817;
        Fri, 14 Feb 2020 07:49:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls1735331pgg.2.gmail; Fri, 14 Feb
 2020 07:49:18 -0800 (PST)
X-Received: by 2002:a63:7c16:: with SMTP id x22mr4178841pgc.335.1581695358426;
        Fri, 14 Feb 2020 07:49:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695358; cv=none;
        d=google.com; s=arc-20160816;
        b=O1LdGf4R4u3EVRL/2Q2rE2rrRfsPDrYRWLEePJy1/l43gn/w2LpTQ0Y2JB6n5m9X7l
         0syR1nWIpju74Vj7MA1xOVSrD8pr62BxUgH963G3um5K5KSwdcr1HGEOYgQ1GuROAQME
         mZFnc4mQs3pzF6+6PqQo3B6eqvRf5EOFRtFrMzfgW5crqThIyxao4YujVfchEmrGpeJV
         i0QY2vx4x2yWDmIYakHhDrZP0AeVcMDycWgQW5Tj+WcP6POzlv55ept02VCC5MjFO7tZ
         nKAVpL6nWULbdZGyGI89F43C76ZzRZ5AcuzzbPzUoSwSOGqm9eEArKC6q4jpD3kFAsj6
         HcUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Z6soo++sfLgGCwqbraXSMYUd48dUolqCMORSObaxvtQ=;
        b=SQRWZDSoyTDHy2v0VTnaPnmygIMd3sO2syaUHAcOWlFteGPAbOuCt+xinmrsoHrmmM
         XZyZ7fzNXgzxKZDR0YYFDriQJVL1XetscvdnFPNQsk5HUBsgg4awLhwaJdpYLhq+rMkM
         8zsXMRudmfSM30SeY6zgwwvIFuRp+3KuUoOwt8B2bUnwoIJBf2iGBBipB8OMGQtnjMrw
         nfhIoFhoGNFgi7fkmzH9NOvrS0ACZ4nA16R73oQiNdSgXs4A1B7Q7DxGHag1OiG3K+Om
         YqA/f6yxwCnyrMn8LHOm/0wYqsFk6V0jqf7XzA9b0uJG+Y5D3gPKiGqGnMjdtW9Qnp/s
         6FDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="OOI/+e1O";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s6si324247pgq.4.2020.02.14.07.49.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:49:18 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1E45824650;
	Fri, 14 Feb 2020 15:49:17 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.5 018/542] media: i2c: adv748x: Fix unsafe macros
Date: Fri, 14 Feb 2020 10:40:10 -0500
Message-Id: <20200214154854.6746-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="OOI/+e1O";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-18-sashal%40kernel.org.
