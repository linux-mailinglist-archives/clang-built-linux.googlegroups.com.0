Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBHE6WLVAKGQE3CFRKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F17A86C0D
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 23:07:40 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id t28sf1779862lfq.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 14:07:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565298460; cv=pass;
        d=google.com; s=arc-20160816;
        b=TivRyBoITwrabg3nEWVTUO16AUPlgkCmatteJ8T5X1Wzfj8O52Xhemtx89gVRkYQJT
         0H28jlZhooP76HufToLsE8sHGXJnuc1ePT4h4W6oJzVU+/2424aI426RZVLQehtXIaw5
         ULdcnD2bR1OtaNC3Bn44NU10iLftK2fmF6IVPOp7Tju99ZeKcEz8bsgBm7X4258+Aq6g
         syl58CmDnOmLnGMhcPkjzF23AiPkNOsvCahHaxTdiT3MMdE/hmGgctSFmU21DvwCv5XL
         78lMLNqYoZQ23+lWaUW52KGXm9U/n5PFUO0Rn7gDYBxrSlFFG0t5UU59tLjREQrfDrJo
         +3jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=dbrmVJOUPRJiyzpjWiS4vGFa7t2GlsU0/uz54GYMGik=;
        b=ycefSev4TmTdBYE4+5TA19zeRJHmHuBcqRHBcT6UUDC3ypvT6eAbwv7GEt8FLrGBL5
         niUmHZ1sZ0ShIYlDpdFHx2RYu4H4GEXUC+EuRP4KvDTj9mGm5Tbe+vqJAUCFuBe9PhJ6
         udzgoxojZ+aI2siH6gN61BPdt9EueGNr/rPrOd8Hi+bHp73kSw+dzNB5Tn09lK3D08ex
         v/XrvIFfo9NWbBp9Lt30PgVIu6G2htVe0lH8V/j2XgI+IKaxHaJRuNRlP5UHjrPHpT7J
         CXxTdGk+ngQGKniXz2OI0vFYVEnusWCQ7tSmUg5JQE4usRxOs78iWTjZeUrMY2l/0gYA
         Dbfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dbrmVJOUPRJiyzpjWiS4vGFa7t2GlsU0/uz54GYMGik=;
        b=HMhEN87qUQOkQD/n1aCrrfbcZ0KI8vDaYdKlOxii2yrrjGapG2Ts7D0A9rlew4CYmp
         CGyAQ3vyl0iAaqqSDvophW9zkYCA6JibShwyvNcU9jBcq/ul/SZqswGQDASIvzHDz3C+
         rbDXbKGKB+sY+FedgthVB1sNZ30DEkDwz2xxXDQAWkQCmVN4H58xdY9qx1yupDcG+MWX
         zEqCNTogW3psavapyqNN3z4pOnxM3A5SVaXyH85iR9U5i76ZqqkaKUKsP7yGrgWst1Jr
         4pCOOVdN+ByeEhbIPpdDJM2kvFjfsgJJilZur7aifAiKeqEpmGe+ySfs/D+Yx70y2ArD
         y2DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dbrmVJOUPRJiyzpjWiS4vGFa7t2GlsU0/uz54GYMGik=;
        b=jPRXKYFHVCnmPFO+jG5F1/9Df0+cL02trkWGFUWFr7Ycau7HfFSc6yhZrYJc+GLXv9
         PUTY8RpglSoiJDkfnHOJ0GPFVJy4DtAt95/EWrSbYLYx3QVDq3FyVHBT9SGYBDcYIEnG
         EWJ3GdRRDIamFQf8gLSrgHfW6JWY5vRRor9WGjqE94nKG3HU6RkZLnxF6/DNnu87xTVj
         QVHl1cekVFIQuzji9Rn3PYiuOpSUeA3qTbp0InSI/A2yRcYHg6PY6lF54YQYCHWmmzzw
         A55phFtEjB+3Hj+PZpAmyBvChmmAAmh+CmW7RRGogvKvHHNgvWTYGZvP3dqrWnYJh9JV
         wBuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUrZRhA63ILy7wou/S+o/D3+J8WssHbI7wziXWLYLRDwEyDK4uZ
	4rRx7IEvXPOnXcxykKURXWE=
X-Google-Smtp-Source: APXvYqxP1pO3laxiLV1WN+0o8tNSnRpSGrsQGI/6PPBVdGvydCTH+AaeEt0T/JH9TF+C98ooIPiikg==
X-Received: by 2002:a2e:7818:: with SMTP id t24mr9139545ljc.210.1565298460165;
        Thu, 08 Aug 2019 14:07:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5053:: with SMTP id z19ls1029845lfj.7.gmail; Thu, 08 Aug
 2019 14:07:39 -0700 (PDT)
X-Received: by 2002:a19:6041:: with SMTP id p1mr10584082lfk.6.1565298459485;
        Thu, 08 Aug 2019 14:07:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565298459; cv=none;
        d=google.com; s=arc-20160816;
        b=Y0fmprZ+e+DsFBcP9ZXoD0D0jdhJYnMTnJkbwxHRMfvABlwfG9pnCxMppLNpgrQnZQ
         akq3qlB1Q1YoJixE6jJeH27uYWuDaOFRwwoQUAumV6nyAwcCg+Mu8cJiQhuCZ6RZplrz
         /ZWtrsewZVtkJOtufSBwpcoZFGdiUqbiXCiIaA+gyQyUM/Daec3kSU5n1iKtKTBRIb2a
         3FJaTEQN6H730pFbEYWjfdht8XQPuLgAAx3umKktxFzUeikKu5WLl62bIlQ9EyJT9FJk
         Pe3/1cQEe2EPEjguBMYxltgbNRAQ0KLKiFy/i4bTt5ZwcoLHjd1b0MUiS4lS1PHPfvuv
         KWtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=n5t2IpYoscXS04BaDFM77cf92QAkasda8oqf8132L1w=;
        b=c0+rzo9IVayg0cLBneTO9ta372XRrOha3kQG97EjEvemEyO65+zOoM6LZNmD1m7tqY
         NdBMRRsJAVH62/KdoGXU+26D+FkYfI8k3WmJt7R2XlVTHJF4TIrJQjBxPfORLEVaoVrT
         S05rgMDGb/jfn/sBB2mrLTSTaHnmQjULs4rGdjSqPZGiTCAA8FLg4ayCxxTjl/W1kPqs
         YbijopiCWWA+7U53cnrwSDaWsQ+YQY6BEhtpFfGDVqxr45nZindeinCyhpYlGmdAie2S
         GZdqNXi0HFYmA7sejBhBK7sXgDWP9oV4s/w8kf/fhT/Z8+j3R2BirHUkxcaDYoFo48km
         lLIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id s14si5894966ljg.4.2019.08.08.14.07.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 08 Aug 2019 14:07:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id E8A7B28CB46
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>
Cc: Mark Brown <broonie@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	kernel@collabora.com,
	Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: [PATCH RFC 0/1] kbuild: enable overriding the compiler using the environment
Date: Thu,  8 Aug 2019 23:06:51 +0200
Message-Id: <cover.1565297255.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

When building with clang and there is no gcc available, running
merge_config.sh fails without this fix because it can't build
scripts/basic/fixdep with HOSTCC hard-coded to be gcc in the top-level
Makefile.  This was discovered while trying to build big-endian arm64
kernels with clang for kernelci.org in a Docker container with only clang
as a host compiler.

While this fix seems like a very obvious thing to do, it's equally
surprising that it hasn't been done before.  This is why I'm sending this
as an RFC; there may be a very good reason why the compiler variables
still need to be hard-coded with gcc in the top-level Makefile.

Guillaume Tucker (1):
  kbuild: enable overriding the compiler using the environment

 Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

--
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1565297255.git.guillaume.tucker%40collabora.com.
