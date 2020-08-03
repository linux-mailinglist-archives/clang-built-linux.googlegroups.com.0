Return-Path: <clang-built-linux+bncBAABBHXGT34QKGQE6HMMSSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id E5947239FC1
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 08:47:59 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id r9sf26293868qtp.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Aug 2020 23:47:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596437278; cv=pass;
        d=google.com; s=arc-20160816;
        b=edmAJ9tvN6fmxAy9iEKFnxzb6rfcCjYxAdgeRVk24/84G53iz7z4TWODL1WEjuj7jL
         XIplrG/Mxi0eTU6wLs7P1NbSkfWLtQI+hWWfgxuitO9iTiKd1lUiJt7ch4yzd4sIv6dg
         Ejv+dzj6WP4rHPbgIPRoR8LNmLO2t6Gwc80guQxnqLKUSl+qhlAI5CGfU64DALWy8Vby
         d1b06ELkx8nT81KX1y7XYQ6ee0NM1oUOKqICamrVxhtT369jwurPkcXAKle0K0EAyahh
         XSWo0QjrMBAZwcUN7rVeCzfSRc7/LzXt7qmTS5m5LXWCxNGmhC7qUkZvzOU+FRVgO8NO
         eJ0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=P+dO4e+GJ/dnc5INUKZn1STKUOmhoLndzQ2wRUCxglM=;
        b=OkteN7jY8LhrmEmGMPI0BLjww9e/67Esut15wTwImDFaOszfsZBL2pyd/H0vbAxMii
         INq46kww7mE111hOpXmvmuInmeD3HN5q9DB2R5guaaIh+6OS2eoJ1UIz/1daA/J853Qa
         wz9L1TQKNgdDWLRge1tySjWEvkN2zxDdlovnXSM3wLxhEUJpkGs8zO5BBbQAWX+G8L+x
         de7gR9+NluqSBsD7Wb5Ndq5tIx1fdO2APt3J22KiI139ELR0XUI+ezYjegLHjZrO4k+e
         dUFU2B+xv5/qwYCJuRLVgtNpBFp4w7GJtibkQHY7x/LenV7BOZguPdKZxZv5SBhU37Py
         E2+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wenhu.wang@vivo.com designates 103.129.252.23 as permitted sender) smtp.mailfrom=wenhu.wang@vivo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P+dO4e+GJ/dnc5INUKZn1STKUOmhoLndzQ2wRUCxglM=;
        b=X38J4qEv3lGWkGu8nDIck/kUoPbwlKDQkO+ieUfDB5ip47+OY4PHfiE365rhdNnZBK
         qdgZZy8nLeMf4haSvyKFAAhZdvsqCp2FsLIdefLlgzoQj6LziGn9CmOS5pSmT8YN7JCX
         L3n8OFnZBb7jchwd16wK/k4PyGBPsPC6cy+LdRSV64CHEjQL1jVGF13m03n5LbCfNM3F
         vRvpdOdYqnr/Sel2P6SvHy+h0budFvQxXE1y+usBHFfvxcjziFBjW7E2ysQeB9wjcwUF
         w/0HgwFiXO5YuFzz8XjpC2Q9f5z6N091A+758uG0SJUnbz3JZQx8YxYw1ecsYMKbS0jj
         8zAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P+dO4e+GJ/dnc5INUKZn1STKUOmhoLndzQ2wRUCxglM=;
        b=HYSHXLAMG35kEkfTusMMUwVAaqebruGmf/+9REJxS3VUMBQ78eme0ylHLA1HytYp6D
         g+WOYp4dpWsQEDNGNQz7tOaxZc4ECSeXgEsJkp/vr/b8LF266CVCjSNRriwwgTAL67Iu
         imw7ekGHN16rK6iGtrpDVlb9cEwCyPu5/N5Ped1yJhyGugkGM5cmqQ87EBvashSOoVjL
         S7SiIgaU00axRhIZ7tH0S/TUxwXznBTiR+e0uY2thtR+MeeKPQcd5or58r/Div2ip7GX
         dePwq9IyMa/G5VQRcSXEll4ShuhcE6xmy2RlSCYZNsaOupO2zBjrqXapsYk0QPlLO45V
         yPjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Uw0wlYbzxhr9Codw2Nf4Ig3DmFmaGcLsyTaNBoCjCjT26asDj
	7SlkUUER6JQUGnwANx9DG00=
X-Google-Smtp-Source: ABdhPJwgrm9BO4xrdlcbYLtGX3aT3zXm2v1HIxVW7PC9bezCfDfGdFwcYgbrIkPC0NEj5ECdE//MRA==
X-Received: by 2002:a37:2d04:: with SMTP id t4mr14382049qkh.382.1596437278651;
        Sun, 02 Aug 2020 23:47:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4aa2:: with SMTP id i2ls870725qvx.10.gmail; Sun, 02 Aug
 2020 23:47:58 -0700 (PDT)
X-Received: by 2002:ad4:49a1:: with SMTP id u1mr15141281qvx.245.1596437278332;
        Sun, 02 Aug 2020 23:47:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596437278; cv=none;
        d=google.com; s=arc-20160816;
        b=gLTrAmFlafk1DgamnqQPEBLLJkmPE2IZnPWRfqgXHKkZ4FyujiEmy+/QE5z3K3jsPV
         8Fiw2XbCxEh9IeO7XSnPvo0Rzds68h92Bgw8Q+Ei6Upb0rwoZOY+R+nYvZU1bfzaloFy
         4VYkxb9ThzbqtNv6zv2DGJJvoXOKhqv9WWQ5XEXnilBSN6b7XNlpYJyZxTfNpACAmcBN
         7ZHkhciavvnUXvfQc/Kutziny0QrWV5C+jm6nySUKlECHRTGwlebWOWlZksuoREIqceZ
         WB2Sqqbayh/cWrAZHVpR1mpENlIthAnWfBpVzSPzFaj8t+S/83W/WdUrdXLc568aNyTh
         ITIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=YsOUs1nuiWDcyrMgW/htuREcmf3p+5QnFvAu2GQ/Nac=;
        b=Sfbs3D1CPQjYBUOsWW1AiO1U8q6s3ITDmQq5hAE9q815fip9d/VbuK+Ul5XwbocnKI
         BS6TweHZgfcUa5E/ofK5Ga2KA1BbGZjaRypExDEIwnUQRmjcySfwNXDW3Ta79ga/Y7ya
         LaiAGfmNpSbcet8oNI9l+ZrIRsJqSn7qoZmiA8MkFjNmtpyEaH9/Lpi7S8msB4nCLWdK
         lnpdekYKB0TMdniP8UdGCGEQywT2SxmoVbNzwoM29mNDfh4+KGDs5Wkd2+Pbz0RvYL9N
         XgMElTvLaO7EK+N9wkKzdWu4xYT10povTfidMxElT3g46vrzRob7CsehNq8rZnP0yvZk
         7ixw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wenhu.wang@vivo.com designates 103.129.252.23 as permitted sender) smtp.mailfrom=wenhu.wang@vivo.com
Received: from mail-proxy25224.qiye.163.com (mail-proxy25223.qiye.163.com. [103.129.252.23])
        by gmr-mx.google.com with ESMTPS id o2si768273qkj.4.2020.08.02.23.47.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Aug 2020 23:47:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of wenhu.wang@vivo.com designates 103.129.252.23 as permitted sender) client-ip=103.129.252.23;
Received: from wwh-vos.localdomain (unknown [58.251.74.226])
	by m17616.mail.qiye.163.com (Hmail) with ESMTPA id AB959108499;
	Mon,  3 Aug 2020 14:45:48 +0800 (CST)
From: Wang Wenhu <wenhu.wang@vivo.com>
To: Marco Elver <elver@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Jonathan Corbet <corbet@lwn.net>,
	kasan-dev@googlegroups.com,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Wang Wenhu <wenhu.wang@vivo.com>
Subject: [PATCH] doc: kcsan: add support info of gcc for kcsan
Date: Mon,  3 Aug 2020 14:45:12 +0800
Message-Id: <20200803064512.85589-1-wenhu.wang@vivo.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
	oVCBIfWUFZGkJPSB4dHUlITB5CVkpOQk1PSExKT0JLQkpVEwETFhoSFyQUDg9ZV1kWGg8SFR0UWU
	FZT0tIVUpKS09ISFVKS0tZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PFE6FRw4Cz8eDwEjIQMxCT4T
	Dx5PC01VSlVKTkJNT0hMSk9CTU5JVTMWGhIXVQweFRMOVQwaFRw7DRINFFUYFBZFWVdZEgtZQVlO
	Q1VJTkpVTE9VSUlNWVdZCAFZQUpMQ0s3Bg++
X-HM-Tid: 0a73b311b53f9374kuwsab959108499
X-Original-Sender: wenhu.wang@vivo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wenhu.wang@vivo.com designates 103.129.252.23 as
 permitted sender) smtp.mailfrom=wenhu.wang@vivo.com
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

KCSAN is also supported in GCC version 7.3.0 or later.
For Clang, the supported versions are 7.0.0 and later.

Signed-off-by: Wang Wenhu <wenhu.wang@vivo.com>
---
 Documentation/dev-tools/kcsan.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/dev-tools/kcsan.rst b/Documentation/dev-tools/kcsan.rst
index b38379f06194..05a4578839cf 100644
--- a/Documentation/dev-tools/kcsan.rst
+++ b/Documentation/dev-tools/kcsan.rst
@@ -8,7 +8,8 @@ approach to detect races. KCSAN's primary purpose is to detect `data races`_.
 Usage
 -----
 
-KCSAN requires Clang version 11 or later.
+KCSAN is supported in both GCC and Clang. With GCC it requires version 7.3.0
+or later. With Clang it requires version 7.0.0 or later.
 
 To enable KCSAN configure the kernel with::
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200803064512.85589-1-wenhu.wang%40vivo.com.
