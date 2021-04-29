Return-Path: <clang-built-linux+bncBDU5DXUG4MFRBDUJVKCAMGQEEMW4Y4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4B336E857
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 12:03:58 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id q18-20020adfc5120000b029010c2bdd72adsf5961795wrf.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 03:03:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619690638; cv=pass;
        d=google.com; s=arc-20160816;
        b=mK+7w4dqkUTklY/smf7Hpmg0j8OQ2E8QafQDhi/W0vZ4J0kzw75lTpvIcxnBKbf9iy
         kpqXfv7fpZH6KHcbX7ut1ZSJbF9V4/GLNNok91Gc+KqbjgSLCrUSPT8bqt0P5Z8nKJrS
         S1NyS7qL53P24PdWDeWnpTM9/8c4KLH8A2xT/5SYvcmhAmhG00esAVGEfxFOZgV+yqr2
         hk0HYP8dyzMBmYuNPhjYHaqahi9VC4lMEZH7vUg291iwzTY4odaDs59Mw5bkkGEun/TK
         VOk+GWRwwk1QihF9JhNpZJdU9s/cGWJ/7J+kMqN/lb73ER/doXNhvL51ygjBAjopaTE6
         v+6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=aEIloSJ0esS9/1uPK05P8ImcyCzMf8ZWpzpoR8ctvfo=;
        b=QwOUpwxiRxxiSz7vG0VyVQNW4ggwq5F5NDtFklII2lWtNi07qrlT73uULfmFSjIsIv
         Xp2HgpGTizIz9KUL+JhcvekSMEchyVTxDPp/GFJNY5gANuPfI/XX0YRXmfx0B7Fgxevo
         Njuf6/rOLQY8aSgHOzvho6109QkXvB1mSuhCGzO+5w8LK/+4JNjfjFS2srF3Cvbb5oP3
         lLwMSIKwMn8F15DNIxeoCWP/7dMch+GbVN3PvFxeiKojgWgbgSok561dhn+7LNlKl7s+
         /akeKL3k0jzRQ4mq0Dk8aCMZNu1SH3dg5iCH0Ca/asYv0crMypwb1S8/xI9K0ytmTach
         7hjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aEIloSJ0esS9/1uPK05P8ImcyCzMf8ZWpzpoR8ctvfo=;
        b=HkUdEK2g9awdcAvdfYVqbErqYWVIabDqoonKZEXWxOFtLsdpTvNJ2QZHbczpgcJD2p
         XjAvNijchQ6nOO7K0Qtm+9xxLu+jig2pJaUxu/vxf7BXd8+hV+2zRc5SmacbJLJVgEo6
         xysGJAOyQrnVt/RxJ6pB/ndR2ZVlhpxOiZF6bMl1kBn2D8oEeWS7KdAObunXieBsdpB2
         3NDiVLkgZHX7QGaUvsoaSWG95rq8w/wvCOqrLffFZiy9L2BkryC9dJEPg04UPbtUIoQZ
         eJvF+csz/c398YwLjMBjKJKJG4KaSgPf28WPYimcy4KuR3wtS5K3URVp5klOWpXD+kOo
         cfcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aEIloSJ0esS9/1uPK05P8ImcyCzMf8ZWpzpoR8ctvfo=;
        b=lfa8/RDRbHEs5/suCSe95GuVGxGBhxy+COsWNdAyx02rFjZEZEyapQ7DcHPibJraWp
         DLtoh0wDz19D+aOESurBotiqKFNPvRA9RVwXJ9wfchwF4rPiuL9hMOg0i3kXkBMUixbD
         URp2RGOmwzBmccz/RDQ/+lCCfYxR5TLKCgJ6lbSQlFZZQ7j/GRVf/rgW+WhX+luE+VwH
         F7eftLutGioPQuGXZXD2EWEdqPU9gD88lWM6HS3xBYL9UCZqH+vRTCpQO4PLzycQgPxq
         u9WskJ6wEQ8JhkTUrZ2JC45NkD+6rVvfGFNoqLWuzSGL5vJRIjJqLgOkJsmmuHAP4qOc
         v7Ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530y44woMJH7esGEwzxaeaqDdw7kIMtKratCP1kOjiz/vPsg+7wo
	McfOIEI9Wk3MMlIHn7/dTKQ=
X-Google-Smtp-Source: ABdhPJzIksHH8vjANwEiuv9J4XetKf2qHjE43IdSblXsWEaf4vnczeooXzxKaD3uybBl9RXfoW/uag==
X-Received: by 2002:a7b:c316:: with SMTP id k22mr9367096wmj.176.1619690638445;
        Thu, 29 Apr 2021 03:03:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6da1:: with SMTP id u1ls96396wrs.1.gmail; Thu, 29 Apr
 2021 03:03:57 -0700 (PDT)
X-Received: by 2002:a5d:4a48:: with SMTP id v8mr42573263wrs.204.1619690637507;
        Thu, 29 Apr 2021 03:03:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619690637; cv=none;
        d=google.com; s=arc-20160816;
        b=K6eZFfMy9VZZaBqvOgklQW3vCg6RSEOK85ew0N5OjTLARteB+R+RfnL5joLBJWHSho
         EQRKd+JG3JLf8Q+aRicW3T0gs3asQGoNPOHkhGNJvyChtH9AFP40z4QJeqyp4owbkoq5
         2OggWjW2/wcQkaOdjZ0VdSxHi/ArowaxG8EVxrrQaI5ejhL2CQDqnf9e1rEhYs5/vgih
         A6sN8od+nnwodKmOAExjGPj3gIxgP13FlW7SWF6Q8esMyl0R4wf939Y9y9jt/mdjBxU2
         p9dAHwigo35o8TwZehn1GDSn3bkLbZ29ajQHprgI3upxeFLx862t47+oxxtB28lzh3yG
         PpMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=oXluwxIkX4N6W9mxGrNBm0DGITRjVGuzyKBcZxUA0pQ=;
        b=uv3G55bqLhGbQz1ef4uwxBU8ztDAteWzwo4G8p0FPRKUSBKiRvVpG1rx2AhVOFticz
         kHxejS5yWH0JGMDpI/wWY3AdcDk96hhLjdOX4W24W24Trpn1pGme//WbLTqLkl/N9a/I
         dSoympjG+qOs+DF7vS7S5wmhBe434ixFDWcloGKOxPjR7v7Yu692I/NrYKAKRu7dJkE9
         9smh47NiMagcpctaeRMVqGTn0E4AfqG09tWbr752IoSx3EB8j8u1VmmyNuA/IbFOHYrY
         Y+oCgmZfNfG5k5sxAqkZ4SdM6MkgyA2YFTF+2DdPLteCywmN8Y+zeohbnUrcoEmh4MOi
         Bc4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id 7si150684wmg.0.2021.04.29.03.03.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 03:03:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <colin.king@canonical.com>)
	id 1lc3WU-0004lW-RS; Thu, 29 Apr 2021 10:03:54 +0000
From: Colin King <colin.king@canonical.com>
To: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] initrd: remove redundant assignment to variable rotate
Date: Thu, 29 Apr 2021 11:03:54 +0100
Message-Id: <20210429100354.58353-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of colin.king@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

From: Colin Ian King <colin.king@canonical.com>

The assignment of 0 to rotate is redundant, the value is never
read so it can be it removed.

Cleans up clang scan-build warning:
init/do_mounts_rd.c:252:4: warning: Value stored to 'rotate' is
never read [deadcode.DeadStores]
                        rotate = 0;
                        ^        ~
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 init/do_mounts_rd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/init/do_mounts_rd.c b/init/do_mounts_rd.c
index ac021ae6e6fa..8003604dbf90 100644
--- a/init/do_mounts_rd.c
+++ b/init/do_mounts_rd.c
@@ -249,7 +249,6 @@ int __init rd_load_image(char *from)
 	for (i = 0; i < nblocks; i++) {
 		if (i && (i % devblocks == 0)) {
 			pr_cont("done disk #1.\n");
-			rotate = 0;
 			fput(in_file);
 			break;
 		}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210429100354.58353-1-colin.king%40canonical.com.
