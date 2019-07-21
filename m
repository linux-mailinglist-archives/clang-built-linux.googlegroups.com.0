Return-Path: <clang-built-linux+bncBCQ2RKHTQ4IRBN6Q2DUQKGQEF4D7LDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 699896F24D
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 10:54:17 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id d2sf18013148pla.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 01:54:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563699255; cv=pass;
        d=google.com; s=arc-20160816;
        b=a33Yry9nuh9A/FxzijfmHGdue4FQvngyeViZGh/J7QjjcE8zj9tB58AZh59IWTA7en
         BPU168uuGqNouyTJ7VQN+SvBXYZAjjCXBPb/05O9NWO7EByK4gvd9X62eJaJy/Nneq50
         e3jCsLpKLyy4jWQcthOJah4muNqA9owr/r16evQzshULYj1NO9HI3bcR5TklPmI1L55I
         +frZGfjYZcjxHBO7S67JC0xj+RcwATtas5gBSMPKUcla7CMdR6F38qHPnb7SQo+knogk
         GVtOQ8+Ac5vxUhRjB8aW8Io+ogt8Ur4LWWul7bLFf8G6n0IySeuOnqSGvrFp9u9CfTJY
         BhuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=bdUzRLvd5w2zGdIr8ytAKTHbaPCTI27yfoyRvSJA+iA=;
        b=BFRLT9mVl719OV6hZtumRu/ZbOjVLr2zlql97R9UuqbJFS4jeCRC/Jl6t0pCp5cUxf
         cCPkpZmjIu5VUlvUN3/cjlsSyNRyUbIW+24Hfau3I38xfBRNHfPCUUSF1l47fXNNL6ni
         s+YJZ1NRKTl+hbyXCyWC3vWoz4H+s4lIN5Cq1o7PZsKT0f+0Q6cIVbWLgCi5ypBQLXBw
         jkRLhPCLpFMsiBYEXOVZmsT14xN8QrxbLQd1j6u38ZJTCHmcFN6rp+pitEEbMup0ihmD
         XW3xKqrY6EKZyVl31SWAcFk1YtbGEN5BGCzKGfRlSljOcZi5NmODQZRgoRVCWFDGkkue
         VC/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@utam0k-jp.20150623.gappssmtp.com header.s=20150623 header.b=jZwGcCEV;
       spf=neutral (google.com: 2607:f8b0:4864:20::543 is neither permitted nor denied by best guess record for domain of k0ma@utam0k.jp) smtp.mailfrom=k0ma@utam0k.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bdUzRLvd5w2zGdIr8ytAKTHbaPCTI27yfoyRvSJA+iA=;
        b=QPMXk4oufnlNIhwwPU3KVgSx5lEymAgtzevuENB81m8nQ/XOT+ld7V8CmizwKwegrq
         SkvXYmjs4AWJLLEa2UEaYjVl3Nqnr4Hh8oilJj/20QIvo8fo1Pk0TaUSC0PtESwFVicj
         l2PtRseJsjACcKHXP+6tpQ5cXiZOaVN8EDDlg3fPLHqQ0jXHAikKJoEOOvZNd2K799ab
         TFyAfD8RTupG1OGZ8eLC4oYF8mr5n+Ss3oMiqzTUQ31m2zAtfnVszdYz3MLUsQwlbGkP
         3CpK8OnMqyUiassKHjamU/NzbfSWO/nm142JBp2z5MUuLKjfcrGSj+BV5FwVZOikKJ3l
         TiTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bdUzRLvd5w2zGdIr8ytAKTHbaPCTI27yfoyRvSJA+iA=;
        b=BCG6u6qSgj9hds3CIERNH/Rr2zILp24Be/mlNtareSnbsLpMqKXsrVm0FVWS1aeFZr
         LQ+HpsFobbI80g8XmI1kXx9EVW7yTQuvX/Dc0ZUKra/pqP0E74GOI0+fsNcjYcjBdnKg
         YZhoTG8V361l7pnJQ1XPnav8t9OBv6RAyAlhOTJNumunLo/Pc+TLbjTnzgQafnFEo5Fk
         XS3m3v3gSPZl2B/I4iUlHNa+iEt5UbrfqbzVx+aI/+pjHSjvg0k1/HYMllsfCnNpDy0b
         r5sLXnkYhwOECbA62ZArOqn2h33PESWaXZMl70vdci9Q2z48s3R7+HZflNsl2qY+mueY
         AVvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWnYrBGk3+ZiJg8gDmmLCSW0bWGMJ2W9Jat0qifpOGuP+ynOOXw
	ISL9JVFcBjPQ9Msp9mj6xvQ=
X-Google-Smtp-Source: APXvYqxV2YXQYwJiqhHlS1W/CrVbXyxwbsqaVQKWhnl4pP5henZTnXjnzyT/DJQFuQ+2sFstaKEjYQ==
X-Received: by 2002:a63:de4f:: with SMTP id y15mr67735573pgi.239.1563699255542;
        Sun, 21 Jul 2019 01:54:15 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3662:: with SMTP id s89ls12279739pjb.1.canary-gmail;
 Sun, 21 Jul 2019 01:54:15 -0700 (PDT)
X-Received: by 2002:a17:90a:2305:: with SMTP id f5mr73724133pje.128.1563699255202;
        Sun, 21 Jul 2019 01:54:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563699255; cv=none;
        d=google.com; s=arc-20160816;
        b=tWA9yonwDpkUapGQqnNMPW5HOHAIN0B6jwOmC/O1BOEvKpAjUbGoCl2ISIM7bv6VxT
         UhR8LbFLBEyqgMZMbrj3PMuVw3X1G80OsXyMSIU/quYgouB9Oe3UrScb24fTtuIXXlTY
         XxPN9BH9YFLeI3et9lwkAgIHrrxFA4z2uXyC8WzGY93Q7N3+uXebFSyIzJzJMjgp51g8
         CDhZ2qvuyO8suQ8ynXfkyP9XL8USblGLDlgiX2lRXhWdmD5S9hoq3X0Y/Kr6r76CjxoD
         Wb5gpNpBPriV8xdaT6zZL71orqXjHSJ1Y0gCLdTOirBh3hFX7Ni5B4NSjjclfcXYMFXo
         +PpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=V9yPYUFeJ7DKQ9cJ8nNTZGwsCUGiBz+5nuXCYu0lOO0=;
        b=GeGC6vGUCP+9QJ4HqBr6t5hj+PW9+FgiDGB92kz8EU3SEDvmIfimMEMzyJ8BDpSGiv
         k8pQkcfvn5vK8Y0YOu7+WryYHIsEwb/jfqnsUXxwpxYnllHnsaEu0k73O16nYZh07mpJ
         bqmxXffem1sk7BtkdlU6OMu9XzcIR4O49a/BVq/HAE5KSUuZm8iytQywUrYazPMDXmva
         EqpMQs2Rc6oharxblTd90J/dz+VFQcqyCoavZTGBwUI6JBZLNUji/JpHauofK2P7K8kH
         waPnLUoXtR+BjQ4Dr6rvkFpyJWQLPmcCviKiZQWDzSr1ZIaKOGAVmerZVZKAqiB8XYrA
         SSSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@utam0k-jp.20150623.gappssmtp.com header.s=20150623 header.b=jZwGcCEV;
       spf=neutral (google.com: 2607:f8b0:4864:20::543 is neither permitted nor denied by best guess record for domain of k0ma@utam0k.jp) smtp.mailfrom=k0ma@utam0k.jp
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id z9si1727346pjp.0.2019.07.21.01.54.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Jul 2019 01:54:14 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::543 is neither permitted nor denied by best guess record for domain of k0ma@utam0k.jp) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id i18so16253109pgl.11
        for <clang-built-linux@googlegroups.com>; Sun, 21 Jul 2019 01:54:14 -0700 (PDT)
X-Received: by 2002:a17:90a:2768:: with SMTP id o95mr69971094pje.37.1563699254413;
        Sun, 21 Jul 2019 01:54:14 -0700 (PDT)
Received: from localhost.localdomain (124x37x165x227.ap124.ftth.ucom.ne.jp. [124.37.165.227])
        by smtp.gmail.com with ESMTPSA id v13sm44051653pfe.105.2019.07.21.01.54.12
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 21 Jul 2019 01:54:13 -0700 (PDT)
From: Toru Komatsu <k0ma@utam0k.jp>
To: linux-kernel@vger.kernel.org
Cc: yamada.masahiro@socionext.com,
	clang-built-linux@googlegroups.com,
	Toru Komatsu <k0ma@utam0k.jp>
Subject: [PATCH] .gitignore: Add compilation database files
Date: Sun, 21 Jul 2019 17:54:09 +0900
Message-Id: <20190721085409.24499-1-k0ma@utam0k.jp>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: k0ma@utam0k.jp
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@utam0k-jp.20150623.gappssmtp.com header.s=20150623
 header.b=jZwGcCEV;       spf=neutral (google.com: 2607:f8b0:4864:20::543 is
 neither permitted nor denied by best guess record for domain of
 k0ma@utam0k.jp) smtp.mailfrom=k0ma@utam0k.jp
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

This file is used by clangd to use language server protocol.
It can be generated at each compile using scripts/gen_compile_commands.py.
Therefore it is different depending on the environment and should be
ignored.

Signed-off-by: Toru Komatsu <k0ma@utam0k.jp>
---
 .gitignore | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/.gitignore b/.gitignore
index 8f5422cba6e2..025d887f64f1 100644
--- a/.gitignore
+++ b/.gitignore
@@ -142,3 +142,6 @@ x509.genkey
 
 # Kdevelop4
 *.kdev4
+
+# Clang's compilation database files
+/compile_commands.json
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190721085409.24499-1-k0ma%40utam0k.jp.
