Return-Path: <clang-built-linux+bncBC27X66SWQMBBIXZ3D5AKGQE5AD7RTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBC925FBBD
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 15:59:00 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id t11sf8930946qtn.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 06:59:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599487139; cv=pass;
        d=google.com; s=arc-20160816;
        b=nti6UrRREOrrY358W+2GrpVfSilMH9z72shAlXOEjs7bQAcdZp9DvpU+U4SXsGlCrL
         tbADm9uSNBxSoWWexQ6oc4lLtoX0cGkJaubvv+xzIa0qlHLusbmXsc+7D2ONxJTtw7ZP
         PZjqAnepbVn956nFfwOx3B0kAyPysOwFHmuJ8Y5Xk1YtQ9GxUOIllOm29DPr7MEMF818
         Ov7rZMWxkuLGyHNbp9EDxFZy5lBlnk9P4kvnSX96mkA5p6wqr6hghkKPfMNdtwMo/ci0
         ZA/9OqdRzxWASL7SfEUwHkkHqfZog7/XAipef2UTwrHmtW0WV5ndnLXjIZ19RqdyZMIN
         j9nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=vR7Ow/ZbIlFqbOZ56OtqN/MbQ9Y6zfakXLg/uOSvEJ8=;
        b=0n3hLbt1J+/ldUSw0UX+YKETqbaZUP6ZFqh278z11UvutaDNvyfLKEa4M8SFfgduJG
         l5VyBxicOFX/oDaP9GH76iDnR72rbCELGnvLXTq3mI5CPVU5asobpY/dLsnpvtPLu/FR
         PNxYQoufJDJPQBVjou5jOkyVeXmAqxDwjTpM1/Arnhva5cEMnXkHpLImfAfcGL4+8Sl/
         7SThaplCh/+C/HWo2TxwD6FYFshq1Kip3RFM6k2n6/buuZXT/MyVR3CzNSN2fPJCV4eZ
         5SZIBCFw/0iIxwNOFjx1IYyKXEvouaECjRJG9DPbtpwAp2zTdz6iKh/YHp5KfvCELFWh
         48GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BFTtwfTu;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vR7Ow/ZbIlFqbOZ56OtqN/MbQ9Y6zfakXLg/uOSvEJ8=;
        b=clMKS7lebDKl/CWRlLZo6t5s3Er2SK6iaqodmKPJMiurBtVuWbN/tiGlCQSwgshBrf
         z1Gl5c6BQMSKiJpz58sEqitFGuXjP7KrkoBJQ5/Eqh9xH+sM8TWcVoxAURDY3r94QGVX
         a1X2d59OLJNpTefHsKkdMiahTN+8gX6IaFBW3/lElCfzxd3o2OfJGqBT0lLoni//TH/h
         8wGEazYz6OX5zTPjF64n4yrhnGFA3ZfJKMIjd2hY/oord3Hal3E0Bwctl9+5tu0RRtbN
         alyXhOm4NF//WqjEgjOxA8ttnJRnwTWoUYmquOVPMTZj2f5TCY8/S6CK3btjCgzvrlcr
         vG7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vR7Ow/ZbIlFqbOZ56OtqN/MbQ9Y6zfakXLg/uOSvEJ8=;
        b=MuAgggmKTSUGw03E5HhaX+p7GmmYK6VKv5dNmQ6GvwevtP/gk3xrDgHofyMCI+XJ9E
         nAJNPmU/i/WjpFj2TPGe73r7DGA95nqAw+kbpUEVDh/wu0gTnx4egH7FjgTS1KcO5N6c
         TNTJIMVRFxRjqi/ywHh0dqTtBivpEKjx0f+9pII4F6hvMaLfzTfZuTb99MGXx4pcpQ/+
         noO3GKIRakNwX7fueYo4/4lE6XMPGmKi9fQCXWpkNWDH9q7WWCHvXp1dWYqzaDlfaCsn
         VHmk5l3JYnP5M0ayqrLL3hixDkCHqHF+9B+9uaUXMSTfZiWunHCFHwPOVGww+8t8rgSU
         X0Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JCXrqClO3edDL2jXCOj5TPnhBExiNQfJBU0k/zjc04LPGEysa
	PxbuGTKsSpKOfCD6CqtbGHw=
X-Google-Smtp-Source: ABdhPJyq3GszCqM4Hx19QV7vcq6GrJwDTozzFXOIV++hzAj19QHXGpouyluYMBkqHe0KiBfv++wc8Q==
X-Received: by 2002:a37:7407:: with SMTP id p7mr19719012qkc.350.1599487138919;
        Mon, 07 Sep 2020 06:58:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:f50b:: with SMTP id l11ls8159394qkk.6.gmail; Mon, 07 Sep
 2020 06:58:58 -0700 (PDT)
X-Received: by 2002:a05:620a:559:: with SMTP id o25mr19153851qko.262.1599487138552;
        Mon, 07 Sep 2020 06:58:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599487138; cv=none;
        d=google.com; s=arc-20160816;
        b=uBpvJR3Umk5ShNa0Sz7dSjVGujYMAF8siGp3GDhoQLu378bMLWo5oDCPUEy11h0j1+
         Rm1dyzVBEZ52Gu0Mbfp8bCIxtO//pN9aC8gyFAAXuvw2tjCkYUC+rjrQkYjscaXnlBOK
         Xa5Uxm+inrgZy3GjsKf1rv9pavHHvlq1gnzWG+q8OggDntkKvweeAwr5HUF4DFMQU9DA
         0nBSCyDbT7ZSszpXT0sQKSSlShU0d6OR1w7OQ7nn4VWeP4RnicOyxZleW7uzNtj1UAeI
         j8y5pDCKID+X13ygu9kCQbX24KJUrwr/wX/5PaJeBIsT80RptRFI6L4F1saFcl62bDjA
         xoCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UMW53qYbnEJqvbLmiW8HSZb8Nx6gj/HTuK4M4tdTyjM=;
        b=STMJqFFoyc8hJP4jDPBBONO4Y/UAW6TTYNTbPNf+m5Ter6mspN3o6ALadwsYQOrxMB
         rwD3y5I5vwCLPe2AZgtvQT8nM7qo1TkNXwxazv50j1xyEg7UrDzyAiObcWHlvoH7u3o7
         TcgbjST2iQ3o8ogVbVbYBTzsjEy0GY2VSABt1j23XFAAinqzT8mxKSqLZs072R4xa7/S
         Im0hNkCjRDiJyStXIjb2mugZ0fRC5aYPMlygzU6ut7/pJUs0tcmm9h3vBpxe6Fo6GlM3
         vuptLeUsrtAFhdXvltwefY1ySt2PpW3BZAiv+8ExcYVL8NwJO9F7l+BXX4VztMgkQw+Y
         bacw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BFTtwfTu;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id z6si416968qkj.6.2020.09.07.06.58.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 06:58:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-422-ktJ9zYHeO_S_M6RgUCRe8g-1; Mon, 07 Sep 2020 09:58:56 -0400
X-MC-Unique: ktJ9zYHeO_S_M6RgUCRe8g-1
Received: by mail-qt1-f199.google.com with SMTP id e11so8907116qth.21
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 06:58:56 -0700 (PDT)
X-Received: by 2002:a05:620a:145:: with SMTP id e5mr19039826qkn.479.1599487135859;
        Mon, 07 Sep 2020 06:58:55 -0700 (PDT)
X-Received: by 2002:a05:620a:145:: with SMTP id e5mr19039810qkn.479.1599487135622;
        Mon, 07 Sep 2020 06:58:55 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id r11sm11659852qtt.2.2020.09.07.06.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 06:58:55 -0700 (PDT)
From: trix@redhat.com
To: rostedt@goodmis.org,
	mingo@redhat.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	tom.zanussi@linux.intel.com,
	baohong.liu@intel.com
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] tracing: fix double free
Date: Mon,  7 Sep 2020 06:58:45 -0700
Message-Id: <20200907135845.15804-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BFTtwfTu;
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

clang static analyzer reports this problem

trace_events_hist.c:3824:3: warning: Attempt to free
  released memory
    kfree(hist_data->attrs->var_defs.name[i]);

In parse_var_defs() if there is a problem allocating
var_defs.expr, the earlier var_defs.name is freed.
This free is duplicated by free_var_defs() which frees
the rest of the list.

Because free_var_defs() has to run anyway, remove the
second free fom parse_var_defs().

Fixes: 30350d65ac56 ("tracing: Add variable support to hist triggers")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 kernel/trace/trace_events_hist.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/kernel/trace/trace_events_hist.c b/kernel/trace/trace_events_hist.c
index 0b933546142e..1b2ef6490229 100644
--- a/kernel/trace/trace_events_hist.c
+++ b/kernel/trace/trace_events_hist.c
@@ -3865,7 +3865,6 @@ static int parse_var_defs(struct hist_trigger_data *hist_data)
 
 			s = kstrdup(field_str, GFP_KERNEL);
 			if (!s) {
-				kfree(hist_data->attrs->var_defs.name[n_vars]);
 				ret = -ENOMEM;
 				goto free;
 			}
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200907135845.15804-1-trix%40redhat.com.
