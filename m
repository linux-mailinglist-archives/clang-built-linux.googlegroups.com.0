Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBGG22T5QKGQEXBRM6OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA0F27F70E
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 03:12:57 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id c204sf460641wmd.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 18:12:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601514776; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nz1DMs47fslf0ntc6137wypaQO+eJaHe0qpu1A/fkWMOdTHl6dH/qElI08+prmdWnJ
         xKdGQTxQpCdTKl/geqq6/DdNNckze+kplc64jVC2tpI9u4Cknlu2lcJsSvnSc77P43u8
         YbWtQ+uxgAlbzNhQibB2QEkjrZMbGcqevDwsxtBO/a/eFsIU6uK59FJO4LtCmVQ2aUUK
         1FPSzWrRZ392Qi6cVFp/Ayypd3gHtonrpF/JOKPZ1wBDm3cJBtRUfLVuZsZ+iioj4rMd
         3s2SEFgJMZoKSGy2cpkj+blIotoD5lFhp5e+JkCcCi7YDozxSSfuu48GVWcnY/QAgez2
         Cg/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0c6B5vrB6NZlBt2Se41B+HqsWAK9ycWaYwHjiO+qaZQ=;
        b=r7VBoB/GT7lSOfjIO9qq7hG3ZLTgQcAoOy8GORRTTQS5z9h9Z21pDDUqaTBGiCBQUU
         nPqZ7EnGwfO6Fc+pvNFMYAmgJciL3mZv8stQtc7hKCB650dXS+yUFqve/9cB5JmbJ8Io
         SQeACUn1FqE6f9OuHDvsfLuspAA6wWt7xydjLzH7NJPKi47MmIFB7UTnuVrQusgHgc2F
         2C7tlF7AOmdw/tiY4MM14MSkrmAVxsSf93LSlO9fQQxexxPEvkvrJWKAJi9bgW0XjB99
         LQ/fwF2JJmZO4YhNxq7B9rcI6pIVQ2nGgz7obIhu+h7erUBLOz5BW3dL7vK2/oVxWOTY
         6Hkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0c6B5vrB6NZlBt2Se41B+HqsWAK9ycWaYwHjiO+qaZQ=;
        b=Z09SHFEXilOBdEKl3qh6sAZMBpla1IyTcwzIGElids8M5Ys4Un6KdE3Cxi8njt1VT9
         Au+5h36Ng8Mp0aci6muNOksQu9omG904glL9h2UQD5caVw4HOrYhbBpjOjkIFjm0mdKp
         3E7JhuQIBKvux/5s8298Oou3KEQJFv+VHRaDRbgS52D3CAs+z1eT7rYt87mq4omU9vWs
         55gmfr07HpCFqA0DAMVKXNcsiVqQ/adH6d4Z+PZ4gQnP7zOu4Yt9iRJv0xd53PBC0cbK
         Jp2MHxZp8XBXb+hRoK29KFDR+dURINe/kM2Mc7tkSXu+xGi9mZ4CXFPwr908YTA6+9EU
         prng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0c6B5vrB6NZlBt2Se41B+HqsWAK9ycWaYwHjiO+qaZQ=;
        b=R5EAYhKSDg077kumEuP4NwIXzXC9o1STRWcMGflsLaUUoVgQMmvSK9vk9OHGmAp9Sq
         i/oj9bHk546TNun1qHdlFZ3DgBC3MlPRBe2F3vjPcyMLdR0c8BzgMgv37jF1I+7YnMho
         LC0RwH4grfr+MSVvOaRAR2O8kmG6x9pkabwIzZIKOMzDmirCX7oMGMoYp5WrKo7Yqiuq
         SwtEdWgrBdE0xrdIPRGpuI8GJosPKCchyy0A6HYawk/TZI1z9cmPsDNAVZuicSLcPXVt
         T3RJE9QbHhOESQ8pvv5aXZsV6cgqcI+dLEa4fvxjSDLjxkaHXtmkGt/JqSOyDwBfDQNv
         iPUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+IM4MsHDhEt+u7B9betsL+1IkwwbC/mXXTytGbjDnIg+vmttv
	1L5lUlNmagZWp25B351U3Ts=
X-Google-Smtp-Source: ABdhPJzLyfPtRYKBuxLJpP1woo6Wrww4d3VDb3BZ99dFuEg03B+CU7c59t5phTWaIiRezJJmeN2y6g==
X-Received: by 2002:a5d:5261:: with SMTP id l1mr5737303wrc.193.1601514776815;
        Wed, 30 Sep 2020 18:12:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls2403438wrx.3.gmail; Wed, 30
 Sep 2020 18:12:55 -0700 (PDT)
X-Received: by 2002:a05:6000:124d:: with SMTP id j13mr6165860wrx.182.1601514775814;
        Wed, 30 Sep 2020 18:12:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601514775; cv=none;
        d=google.com; s=arc-20160816;
        b=0uS0FPLUtlJuRmvTVjUe0RPzCFy2iIQI0bekDVXniSJHN+Jg8b9FCEE376I7h5t+8j
         rEG1sCWCw1lip1cFaMoFnm2seyvzih2v7nQgR/KAQTsEwn+FZaX/zyxggFUVQvB1BCGz
         OE4idwezFGN/ccCxcyUOC+2snp7IOKtusF2yd3tRBlJdGl/oxCqAWW16Uygrb5OQuIzm
         SxBNpVC7+blrqu3BKy2bk66dRy4OTOu8cpZ8iCSa1vf/d2TzMHnrKC7TgZEQI+xvgniD
         F9NcgMTJQeSLn4dG44c6FOZMS+dmDpKq4Y5PSqVdgQGSMvdvus82STQp7KSyr0QApkU7
         RS+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=APjORho0+pKAzEln/gYi7uuyeDJLP0emQpMtWtnonPs=;
        b=SARhGaCKFYQmpBRLAGSrgMX4N8mKrMc73DJFYhszPAnRKiPh6AyL7Lne1LcBl2of/S
         Jrb77u/jlhQpw8yWYfouDF/ZvSwykg9AQKVLoSTCNQRpYLqTpcTtzbQknDj//4k7c7IV
         lR1EoLP3Xv1b2AjRF/SBMh9Xn73e10UBQloBAb8Ae8SIErJZu6W6vEI8ZiG9N24/deRu
         N1ggh3QA0YBqyLNy2mNk6VkqEBaX9PgwvFKPyR6iG2YyO6yVd2a0ihooRZ4RvSxUrmeZ
         X5u0yVh6iIpC1LI2oyRjma9EAf/3sFt9ETjH0Jd0pY73EHku77unjRlZl1fOMC1ge/Js
         GY8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id v5si83364wrs.0.2020.09.30.18.12.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 18:12:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kNn9C-00Gzfw-PO; Thu, 01 Oct 2020 03:12:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: netdev <netdev@vger.kernel.org>
Cc: David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH net-next v2 2/2] driver/net/ethernet: Sign up for W=1 as defined on 20200930
Date: Thu,  1 Oct 2020 03:12:32 +0200
Message-Id: <20201001011232.4050282-3-andrew@lunn.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201001011232.4050282-1-andrew@lunn.ch>
References: <20201001011232.4050282-1-andrew@lunn.ch>
MIME-Version: 1.0
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

Make all Ethernet drivers be compiled with the equivalent of W=1
as defined today.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/Makefile b/drivers/net/ethernet/Makefile
index f8f38dcb5f8a..8162b2f6ec81 100644
--- a/drivers/net/ethernet/Makefile
+++ b/drivers/net/ethernet/Makefile
@@ -3,6 +3,9 @@
 # Makefile for the Linux network Ethernet device drivers.
 #
 
+# Enable W=1, as defined on the given date
+subdir-ccflags-y := $(KBUILD_CFLAGS_W1_20200930)
+
 obj-$(CONFIG_NET_VENDOR_3COM) += 3com/
 obj-$(CONFIG_NET_VENDOR_8390) += 8390/
 obj-$(CONFIG_NET_VENDOR_ADAPTEC) += adaptec/
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001011232.4050282-3-andrew%40lunn.ch.
