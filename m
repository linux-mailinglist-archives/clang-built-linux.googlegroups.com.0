Return-Path: <clang-built-linux+bncBC27X66SWQMBBFEAYD5AKGQENXW6C7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E22F25B545
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 22:27:02 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id v11sf366032ybm.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 13:27:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599078421; cv=pass;
        d=google.com; s=arc-20160816;
        b=r8gGsJ3pHDItfooR+bRCCFqEX1Tm7O6pkt/wEl8Ol2Z8xxziiJ06czcShokj26+9ym
         Z2BC60W+n7j6IvMGGxq4aOaxAezX8uxg+ojc67NRnOCOb7rhH5KyQ6sfzxlWJEP/k254
         CTyCFX6AWEblp+2o9CpFH8FSbVfwHWtssqgAfsINs5mS8U1ZwffNVAsu97c330+ZQyPp
         9+mv7TyG4F8I7IT1bTac09Fkpri56vWmo6wZSa8pOKgxZ53XAdMXxjQ4EojbAUG2dCH8
         eEKcv5UYIvBzHWTtybdil97jXJLkiusFJFGZoDJDB2VHsfREf2ssb5nwjT9pqi4UHmO3
         WB1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=1n5XZ61kULlhlNXA/wyPd6tduzkZnXJXU08l0JFHFqE=;
        b=T/a/v4uYH00Hm8jxjmyiEgPsP/4x8rA77JlaaUt2A8wzlL7TlfwmxiUgyT5Y+IDNnX
         oLLEwg53mwamyZn6O7MXJ/Py7LdrNryd7E/EdKwDrhKS/IalnyTXxf59i6Nu/GMI1e/b
         w2Wmc0ssHQKS9IIQzUiDGtIxFwfOEcGbREN20IMwchGWEFx1bmlhGLeqFXGsJpnI7yeJ
         SlB4otsnwkg/n2uTQ+I4/9oHaZdCrKUjSixCW2t8x18lmiD4ePbKwVieUpgaJZ27gGvY
         V8FnyZhX7n3bI1R71NpUES2uKYaYLX4pXaLbibSfe9c34q++AjZk5vhNjVMh2ey7RCE6
         a+IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WDGSpzXu;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1n5XZ61kULlhlNXA/wyPd6tduzkZnXJXU08l0JFHFqE=;
        b=JXJFjCr73HYPkXAc4y6B/clClKcgK2YnhXbtIDr6aX1ZpcXwVm3emgfhXHjnqg66Pt
         Du/joUCoUp4zu5LeRMoqwDXa7huqXFwiJM7/bX1KE/lnoLw2yhOSqNMNvrKMnKsUATEy
         1O33ihBCjX9rCZOeB+aRtMupZZJQDFjKaOKMuu4iij0ZQyfY6VRSHXaqa7gvQkiyBVTr
         JivUBuQ9lih+L3FiN4v6ttrpwDGHLHbQK+4//5ToCEgPw/B6hB9BmeruNNiwzNUGqqo1
         sAgsj4a7JZzihH5x00QsrjR12z9No4Y6VlvQITcteZTTAB3g8V6F7+dylbbaAUZelj6R
         rcaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1n5XZ61kULlhlNXA/wyPd6tduzkZnXJXU08l0JFHFqE=;
        b=laaPBBdXaJi90KSUPgl149yx1BwmEJa3Ap6AWO2AFoEsMGvnTlLL0eiRxTd6GIh2gq
         pq7JGSVNC+I3NLRVlxAPKqVtWisA3bcauhWaQ0krbhiR8yOXm6HIhzSSXOWvnnr4FQfy
         CwKsjSr/FowPFwLTWwgJZPijM9jgomTVAOeo7chqBG9BOKAhk6FV1Pr/GJntCsK0dRP1
         7pq9STeHpH+O+L7NX4Q2LuafTCZGU6Zy+bHllOAeaPnVqYljmwF7XB98siJSF/ohdfF4
         RgZ8y405LdlJoJzgoQ2LDdyizHRP7FPi5DuBbFy0YjPsWEFV5vvecewbGgO7NdBMkOLW
         OXIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533r+wEsACPFVgaoNf35u0Fq0fXPq+kUtaczw1rMhxuNaapthaql
	95e7Qd7Ha28sRQi9vluMH+Y=
X-Google-Smtp-Source: ABdhPJw8Dpi9sB9E0avCFOAwpwWiRljqv64+9uXvkzYWZHUfY6jJruL54nU2YrN+L2tH7HwNP97LUg==
X-Received: by 2002:a25:b950:: with SMTP id s16mr13183243ybm.512.1599078421082;
        Wed, 02 Sep 2020 13:27:01 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:781:: with SMTP id b1ls1783510ybq.2.gmail; Wed, 02 Sep
 2020 13:27:00 -0700 (PDT)
X-Received: by 2002:a25:afd0:: with SMTP id d16mr13437977ybj.177.1599078420699;
        Wed, 02 Sep 2020 13:27:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599078420; cv=none;
        d=google.com; s=arc-20160816;
        b=hh1E0PgirlAVAl3gIpAFil10sURRcMCgkCKxCh6fjTYwJi1EqlCXTedJoxlMy/t6uy
         a9J0JATVOdMbu89vX9BVhju5Axpk+Q+s1RdOLCj7SyyJiPyuZh4/HXs9K/SRfE7F8UOl
         34VRIuWScADeY/axzkKCyM0MO7ogrlO6YrAzuiT6JM4H3l0465n4M/55y9yVBLWpKsAN
         1iPBM2egq/wNQabc+jk/+8tgN/u2gkjsYbQn481rpmWSdgryEckOeheTpS4BxK3Rc6dG
         jOpPubqTaPHpTQb1fiw+q0b57jBm65cdI5oO0jAh2iFkQu0r6LGM+fpVpXFCS6NTq5ax
         j0vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=cIAL4uSFyLFSVcItg2mcli0KRxTiY1/Wt15t2VmCv+8=;
        b=Aa+zMqov7fJOvvY3Ttj/QPFKdA1wQEwymd1l7erCsQrqlF2hD0USrA9bv14T7WDoNt
         8bucZqush/xW37i3AkW2a58qrgusoQr3hAFbvHROMXIbCPCO6FsT6OoA81Of4JcKsZyj
         3qnhaC/h/UPp1ZHZxCEUhjD7/+UurWrwiCVjbCaRLrwc76CC6OlDC+UlAd6oI+rrrmo+
         vlJ0IlvgUZYvOPNc3L6kZJ6f9iHcFz9+6AfPQ8rIQ0hCckdPz7qOzLuPe/HyfbNot6a8
         PU2yyR1hLkXpd6hrHA+en6M0XC+p/1aimmGAmsTRrpdqlUE13C73Sp3N4sD64hHBelxH
         IvAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WDGSpzXu;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id y18si90522ybk.3.2020.09.02.13.27.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 13:27:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-tbwN3d51MWC1yRVnbbKmmA-1; Wed, 02 Sep 2020 16:26:56 -0400
X-MC-Unique: tbwN3d51MWC1yRVnbbKmmA-1
Received: by mail-io1-f69.google.com with SMTP id l22so573921iol.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 13:26:56 -0700 (PDT)
X-Received: by 2002:a92:a1d4:: with SMTP id b81mr19921ill.152.1599078415830;
        Wed, 02 Sep 2020 13:26:55 -0700 (PDT)
X-Received: by 2002:a92:a1d4:: with SMTP id b81mr19902ill.152.1599078415553;
        Wed, 02 Sep 2020 13:26:55 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id i73sm330622ill.4.2020.09.02.13.26.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 13:26:55 -0700 (PDT)
From: trix@redhat.com
To: vkoul@kernel.org,
	yung-chuan.liao@linux.intel.com,
	pierre-louis.bossart@linux.intel.com,
	sanyog.r.kale@intel.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	shreyas.nc@intel.com
Cc: alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH v2] soundwire: fix double free of dangling pointer
Date: Wed,  2 Sep 2020 13:26:50 -0700
Message-Id: <20200902202650.14189-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WDGSpzXu;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis flags this problem

stream.c:844:9: warning: Use of memory after
  it is freed
        kfree(bus->defer_msg.msg->buf);
              ^~~~~~~~~~~~~~~~~~~~~~~

This happens in an error handler cleaning up memory
allocated for elements in a list.

	list_for_each_entry(m_rt, &stream->master_list, stream_node) {
		bus = m_rt->bus;

		kfree(bus->defer_msg.msg->buf);
		kfree(bus->defer_msg.msg);
	}

And is triggered when the call to sdw_bank_switch() fails.
There are a two problems.

First, when sdw_bank_switch() fails, though it frees memory it
does not clear bus's reference 'defer_msg.msg' to that memory.

The second problem is the freeing msg->buf. In some cases
msg will be NULL so this will dereference a null pointer.
Need to check before freeing.

Fixes: 99b8a5d608a6 ("soundwire: Add bank switch routine")
Signed-off-by: Tom Rix <trix@redhat.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
v2 : change title, was 'soundwire: fix error handling'
---
drivers/soundwire/stream.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/soundwire/stream.c b/drivers/soundwire/stream.c
index 37290a799023..6e36deb505b1 100644
--- a/drivers/soundwire/stream.c
+++ b/drivers/soundwire/stream.c
@@ -717,6 +717,7 @@ static int sdw_bank_switch(struct sdw_bus *bus, int m_rt_count)
 	kfree(wbuf);
 error_1:
 	kfree(wr_msg);
+	bus->defer_msg.msg = NULL;
 	return ret;
 }
 
@@ -840,9 +841,10 @@ static int do_bank_switch(struct sdw_stream_runtime *stream)
 error:
 	list_for_each_entry(m_rt, &stream->master_list, stream_node) {
 		bus = m_rt->bus;
-
-		kfree(bus->defer_msg.msg->buf);
-		kfree(bus->defer_msg.msg);
+		if (bus->defer_msg.msg) {
+			kfree(bus->defer_msg.msg->buf);
+			kfree(bus->defer_msg.msg);
+		}
 	}
 
 msg_unlock:
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902202650.14189-1-trix%40redhat.com.
