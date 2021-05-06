Return-Path: <clang-built-linux+bncBAABBMUDZ6CAMGQENCIVDBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D00037521E
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 12:15:15 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id g26-20020a0caada0000b02901b93eb92373sf3775213qvb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 03:15:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620296114; cv=pass;
        d=google.com; s=arc-20160816;
        b=k59rA5l/hyfqz8yY2bSIT87xwVpx33W6ZcP3bIfV+ToFnPXW+G65jwxfi7tmdOqzog
         RA3wnkEONve1lJIDKC0brBKxoZ2hRTn0fEGuv2qFSe9TimxHaKPoFZ7OlpUCq9V7Q0+G
         8sxL+hxYlRBYz2NwOXz6MpZOCGype0LCo6r0CYlqc0AWNM9N3eL1IvNGHgBkn4k1wxNd
         cWWW52eQAujNpWVqdJjcd+l5yJN9BpYKEjuIIEsF7C0GREc/zK+ApX30hNgYnEPm+k+4
         +E6+osyjCF2CJ+KmDgKSC4IXYCw32xOcmTy5rP5FmDkEK2rH5CJEppJ/E4Get1C8gmWE
         8Cbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=RSIRQzmYAC3267tgMgGT1M/QKLzc9h+67zLoi83n9ro=;
        b=irC9bKb4JJ6GffkpwdDnikJrVLODx0xULa+RmEH8sB4athTYW6MFA33n4ViopyH2d1
         ggy5wWKtNn069ZI0KHSsp0OXSDp05ElitgZuwu9+OYKUWCJ7ZauPZMu+p9KPKw/g6AbD
         6deKZTTuwjd1LfF+cJqErvLGQeqPA8hArWTbnpIRyTXGnd4gb+byzHCI3Evqn3ZSYZKC
         A/e8+MC9d0Hj34dFnNmozyJb1ML1UYOK71etFRq3ddEX9ruxW0/QCZrEI9G7wXhoaJGn
         +rz6ZnsuR/SX9ru4VW57MRMaV95aOTuIOpwWcIq0/WIRWgjPN+XlD7hXHHGFRNhtefBa
         nZoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RSIRQzmYAC3267tgMgGT1M/QKLzc9h+67zLoi83n9ro=;
        b=HVYWHkEfOA0zR5HinhVW5o+HS9h7NE0B+PXdE3so5TAjk60FE9Y0qAIGXOY+P7Av1H
         I5On6rx1KTsXxN86cz417k5KwxoZOvJsZa2KmM5kl3AYTs1ngu1sbyrSqPF0l/OZHLIU
         UL3sGd7M1KBQwm+iPZwfsrfkH2hzj/BzPsh4Ty8gJZxkKdiq1HfuIPVVciAqvBuNK+k9
         KD4ts7ohQCg5bjaC1NLSKEsP9Qo5GEUn82khc+r5rb+5X/sXRVtMME+m9gUPRuHocz4h
         l5n0Hqt8Qes4FUPyCJdlbRsZX9Jqu5yHPU/5YMHEgFXFCt2wYyTo9JeHZuw/yVN70RPd
         UYwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RSIRQzmYAC3267tgMgGT1M/QKLzc9h+67zLoi83n9ro=;
        b=ou5CYX52N+qVt886MelzsHurYyTZVUHTaDwSqKPkpsbJDvZ2kdrcby8Lfu2s80S+6U
         MUmDQirNxz30dYB3nGVyFSII13OlmA2FlKnZ9K782fxgmCri+WMu5aDV/5fERfofghOI
         77WY9m/wGa2ZZ8CPnt86wrIhqd+dXHi4v5YNeAJhjQjjSaaWpWjoahik1R2mWpZk4E7u
         M2i+Tjm6QmZmJzbCZHcmDWsh09BvAHUcOfuWMqGw7hbP6xNGNQfXnbEeurQ0CMl2E1FQ
         UFVQArfahp9pNBLwF4vmRxvqgukLZzN29y15beGjmPEXrpaNH9VjPVwr7SnmQorY5XSg
         E0xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532W/Zz79ZT3f/b+esQV5J+SXBCXoffg0b6MrrsB0j5L9yrvvcm1
	1SYMZtXmIIZooMdysJqAdrY=
X-Google-Smtp-Source: ABdhPJwzw43nn3zhp1lvNzhdePmx9UyQX/o5t2oD9yyK3hwmd9cbwOD8D61l44HcJsujN0g2tfy2vw==
X-Received: by 2002:ac8:46d4:: with SMTP id h20mr3370707qto.355.1620296114240;
        Thu, 06 May 2021 03:15:14 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4d44:: with SMTP id m4ls665436qvm.1.gmail; Thu, 06 May
 2021 03:15:13 -0700 (PDT)
X-Received: by 2002:ad4:562d:: with SMTP id cb13mr3525314qvb.26.1620296113864;
        Thu, 06 May 2021 03:15:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620296113; cv=none;
        d=google.com; s=arc-20160816;
        b=j655P1e6woRDYtLU7L+PGz3jQHs0SPShH6uq/1LAQGibE014Ffjv8Rd/5Am8M357Gc
         1sGMS4A2h2znc3nXdSmEgWj0Q+hyAjl+jFAhrRpF7hpaU2zQXklN5fUxnpXOPIp2WHNp
         oJf1d+vv6XGNrKojTWgZh5sujzYY0Se+uTcrW3HQYciqeYbz11/sj+K+SAO6P/xxzAte
         +f/viWFSoA62IApr/fHV3p1saMIjEx7+334OhmwKuvwvIEQ2SZ5hU+KPflOG0wutC1zi
         FL60S6Lpu9+d0s3eUttkU5zJwbRRORrYEFOehpScvdBMHo/wUGVJE84UnJQ51tbJCOZe
         xKdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=nLhwTo1bipDYEfLIrupcnSVZTRML0tJPqNb+vT+/EtA=;
        b=ZqKGxxp7R7L9R+WaYa1gjI1OqFPvaOhf0NXQRT05UzcuUJCxhqwpEQ3324DgMkVVRC
         GNvf7Eou5pwJS//bci9XwM97ClvoVbtTHF9rZ9xo4hZkqjxk8XeKFliFQBiEnEEbaQPq
         4uRB8Bp2ulGuJmXdZyNgnpiC1F6vvq5uuS/zzQ/2ccLd3LPeO8sOu59gCVPr0SH3SGb4
         GvmLCRRfi/KYg1gCnWKDEjEtzrHIRK5Fnj0jsroa4zIsceI7cUIp6f5UNCcX5DSW9DDB
         zo/VWl+rEPni/iBY3pMKBXS2+E+A6Rin6R9qgpDdLOq0GUuimIUuZ1arGQvCm1rx5D3k
         saBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-130.freemail.mail.aliyun.com (out30-130.freemail.mail.aliyun.com. [115.124.30.130])
        by gmr-mx.google.com with ESMTPS id g22si195033qtx.4.2021.05.06.03.15.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 03:15:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) client-ip=115.124.30.130;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R201e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0UXygmBf_1620296106;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UXygmBf_1620296106)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 06 May 2021 18:15:07 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: bvanassche@acm.org
Cc: dledford@redhat.com,
	jgg@ziepe.ca,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-rdma@vger.kernel.org,
	target-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] ib_srpt: Remove redundant assignment to ret
Date: Thu,  6 May 2021 18:15:05 +0800
Message-Id: <1620296105-121964-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Variable 'ret' is set to -ENOMEM but this value is never read as it is
overwritten with a new value later on, hence it is a redundant
assignment and can be removed

In 'commit b79fafac70fc ("target: make queue_tm_rsp() return void")'
srpt_queue_response() has been changed to return void, so after "goto
out", there is no need to return ret.

Clean up the following clang-analyzer warning:

drivers/infiniband/ulp/srpt/ib_srpt.c:2860:3: warning: Value stored to
'ret' is never read [clang-analyzer-deadcode.DeadStores]

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/infiniband/ulp/srpt/ib_srpt.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/infiniband/ulp/srpt/ib_srpt.c b/drivers/infiniband/ulp/srpt/ib_srpt.c
index ea44780..3cadf12 100644
--- a/drivers/infiniband/ulp/srpt/ib_srpt.c
+++ b/drivers/infiniband/ulp/srpt/ib_srpt.c
@@ -2858,7 +2858,6 @@ static void srpt_queue_response(struct se_cmd *cmd)
 			&ch->sq_wr_avail) < 0)) {
 		pr_warn("%s: IB send queue full (needed %d)\n",
 				__func__, ioctx->n_rdma);
-		ret = -ENOMEM;
 		goto out;
 	}
 
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1620296105-121964-1-git-send-email-yang.lee%40linux.alibaba.com.
