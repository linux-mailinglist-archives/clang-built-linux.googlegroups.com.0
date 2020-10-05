Return-Path: <clang-built-linux+bncBC27X66SWQMBBPHD5T5QKGQE6MRMH7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8247B283853
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 16:46:22 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id e12sf6667034pfm.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 07:46:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601909181; cv=pass;
        d=google.com; s=arc-20160816;
        b=uFWU7UcydshTCF+BasZsJyyjk7PUWT6b8FV4tG5U55etdydz2U6YvkJSpfeaDQFBLz
         txH0bZhKGlv8TXYQmraDxwovWlotV56JwqwN4d2KA0uGVeIRyg7ZempdiC1CYaOHoTSK
         8yGK3DZJVBG5OPuxjrYCibfhy8QMkOPTO/nGYtjghaUsz6NJEXdX0BHGYfCmOTgcS5VZ
         e/4S7f+63xXKWC8lVtNMcIPXM6BaZjgBkc2JEpk6+wz9onkSlmjJokDcl6JWj6fKQHxT
         wjB+FZ8fXyWKwCr/rq5lylOQmPXwhHlj6X54pW58ioUB3MRsYZolQo5VCeLXHpVwNNiW
         w8Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=jY43qK4hkVc7zpnkCqrpoYgDM29Ukhb2TjRQsGRmG38=;
        b=MpvW71OE2k2Ov35/ZN2CyZhLz96QqDD86tr47B6IxbyWuKCbMYUiXTAKioXhw0dgqT
         M3fVMLCf5MStl4oS92xNIKJzdXi9jKq50SHzvX0mhR7lvGMd4xYPlRgWUIByrT5YcKQm
         abwD6vmod0taseklNVCBXrEfStCcrCi5IOLf58hGwTvR8Gmolhekf4lDS/64rIwHBS5C
         m6PFDWMQyFPrxEPPd21cIqRDCf/YHYIFRXWxFxTsLfceRjLtTkMR5PQxTqqdf3ZuLGUw
         JZt6pnnxpLE85uOHHReggnclCEd5t4AZuxRjE8hi264utb9bh53vKasfCwy/fgc/P2eX
         ikmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="LRp/o8f4";
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jY43qK4hkVc7zpnkCqrpoYgDM29Ukhb2TjRQsGRmG38=;
        b=aD3NLx5J5s7jNYNxiGIjClYCXeQWNq6LB4lKalJ6Lh/9sRcAp/DCAFyWPkECje/Haw
         XpJX4cP8vVxeqwb3qes3cX05t0KxHmuMNDo8vhKEOqsr0CGeUDBQOEzudnqmyJRy2nmr
         U65cbs1P881bpODZUDOQfQjEftmwGGenFLRd0lUyhwaFrO4v7mDtrL53MsHY86dwZCyj
         Oz3f5lpTdOJ9ckO2t9uVyEeZ2CBFX5CnWDP5nXeTvqV8jPo2k9dXVDMF3vRJ44anUKIk
         b4/7tkm5cr6L7dhoP3sjKn7T4i1DUFv0Pcv2B9Q95gPDNDXn8QrbLEKqZrJrPlsNneZf
         5DWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jY43qK4hkVc7zpnkCqrpoYgDM29Ukhb2TjRQsGRmG38=;
        b=bWLaDNmABqPQmAFM2Z7aklOglfLH/egkMgp1d9KJjLXIqGsLRLkbs3oLUinLHJjmWa
         hHlCjyAjFvyolkaTm+ZrisKk7f/0dIcvRVW0+VUHfFslk8+qKBE6jmrpYxUH7aZPwiCh
         OBwbXePVssfS5fforNqi1NnM8E1RN9WnxbkGktnDgkWJ85VkjG5ZSTd8tl4rqpUVnyiB
         upEQySZh/jb13kWdNsym9Zg8sIfWPvDCd2fHBcvPUGsv4q7I+TtsE4v4Tg9bYzVXcmjy
         iibE5qyHv9VHooxXYw7HRxC9Ble6uBKAk3YkV4DEd6yjg+vLuolNaAPTAOev+/PWjgnf
         sO6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SK1vEvhoCd8amRMJRHEOdj7HiY54cV0GcueG3Ni96qjp6kAB0
	XcPjVe/GjYcHRaTn8/RSEuA=
X-Google-Smtp-Source: ABdhPJzCa/iH+mH4++1SRqCnbw5thCKp1eTC9vkQIN/T0Yh1BwPsQHdiU6OwAazhk4QKxDblJw1ZsA==
X-Received: by 2002:a17:90a:e60d:: with SMTP id j13mr162696pjy.61.1601909180574;
        Mon, 05 Oct 2020 07:46:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls7284050pjr.1.canary-gmail;
 Mon, 05 Oct 2020 07:46:20 -0700 (PDT)
X-Received: by 2002:a17:90a:cf17:: with SMTP id h23mr129892pju.201.1601909179936;
        Mon, 05 Oct 2020 07:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601909179; cv=none;
        d=google.com; s=arc-20160816;
        b=rQfFPl4VaDxLnYxKLPeA1T4KyI5VLJTjU8XQ0XkcoZ3WIlXOTFBjrzJwJ88RC98O5U
         XJUbu4Xxvc9jCKV6fKQ/XJEkFXCkyZoCHTo8ix+nbFFKyK9OYRejZn0HoGrogdUqA4tt
         pWN+8jzkQ+ejOexCpz+CKj3AtS1HJrekHpIB5P8BXcn6r+TOQ4r2bXDBVTEzJtytehT+
         /VSd5UU/d/0TuJ0Y5y4MIfFgETYUXvyPU0wkIypMQ/tCidt6UH4vK7XRZNR4p7JjRDRm
         VdXzJoJOPzROb9PvdxXU20m/W636H1KRH+xpP7lSDfuppCHgk2s7vz41aURNOWnb7FvG
         9gSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ptyKuh8WxjRCHezLemPMrH21hGCsiTIELZD7s9BSjQE=;
        b=UTF3//XCeOJHmzxgdblMU+ct2yzjv/COcckik3umzY4ly9BwSPAXkFLOL3OHsYvkzS
         /a4XAkycv+2yXZyp7PsprnGfG/QVyFSAMZUWjbJh00g42hrmZhAtjUleAq+/jsYzZfc7
         cXVhamAEDaDWXYYlAYlG10sGWReFyoRl5D65IIHjASKKKxrRNijQZowkEQUoBvpMHD1u
         /QCMzQbUoSISCVuGPnSSWjfsUT/DwB2mZ58VTdpZ59lVDUJHnSPfyGjThfevdAD4Nt+j
         6SfrwVxySv4iZMyi3FzwphequjCndlbWkC1z/4/NPyH0WtVHnJ7/IFIRMGEH7OL1uYcp
         j0mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="LRp/o8f4";
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id f6si23750pgk.3.2020.10.05.07.46.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 07:46:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-574-F-5A7pU9MRGoQomf2Efkiw-1; Mon, 05 Oct 2020 10:46:16 -0400
X-MC-Unique: F-5A7pU9MRGoQomf2Efkiw-1
Received: by mail-qk1-f198.google.com with SMTP id y17so6821522qky.0
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 07:46:16 -0700 (PDT)
X-Received: by 2002:a37:62d6:: with SMTP id w205mr289248qkb.229.1601909176252;
        Mon, 05 Oct 2020 07:46:16 -0700 (PDT)
X-Received: by 2002:a37:62d6:: with SMTP id w205mr289222qkb.229.1601909175969;
        Mon, 05 Oct 2020 07:46:15 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id i90sm303450qtd.92.2020.10.05.07.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 07:46:15 -0700 (PDT)
From: trix@redhat.com
To: njavali@marvell.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: GR-QLogic-Storage-Upstream@marvell.com,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] scsi: qla2xxx: initialize value
Date: Mon,  5 Oct 2020 07:45:44 -0700
Message-Id: <20201005144544.25335-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="LRp/o8f4";
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

clang static analysis reports this problem:

qla_nx2.c:694:3: warning: 6th function call argument is
  an uninitialized value
        ql_log(ql_log_fatal, vha, 0xb090,
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In qla8044_poll_reg(), when reading the reg fails, the
error is reported by reusing the timeout error reporter.
Because the value is unset, a garbage value will be
reported.  So initialize the value.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/scsi/qla2xxx/qla_nx2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/qla2xxx/qla_nx2.c b/drivers/scsi/qla2xxx/qla_nx2.c
index 3a415b12dcec..01ccd4526707 100644
--- a/drivers/scsi/qla2xxx/qla_nx2.c
+++ b/drivers/scsi/qla2xxx/qla_nx2.c
@@ -659,7 +659,7 @@ static int
 qla8044_poll_reg(struct scsi_qla_host *vha, uint32_t addr,
 	int duration, uint32_t test_mask, uint32_t test_result)
 {
-	uint32_t value;
+	uint32_t value = 0;
 	int timeout_error;
 	uint8_t retries;
 	int ret_val = QLA_SUCCESS;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005144544.25335-1-trix%40redhat.com.
