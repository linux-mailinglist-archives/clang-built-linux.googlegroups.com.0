Return-Path: <clang-built-linux+bncBC27X66SWQMBBDFUUGCAMGQEXQOIUFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D16A36CB34
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 20:38:05 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id 59-20020a1709020241b02900e8de254a18sf25986626plc.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 11:38:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619548684; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZdAUBEq7EN2u2WmpgVY/tz35Wvu+/xfPqCb8j5gsghk44VSh7cMatONwCjBpmMmGGv
         TEK1zLmSv653DX6GEyHc67Iyz+gPAh+6S+h5tIz+z9cUrHktizNxaN/1bTipf0rTuO0G
         F6s2MEpSPlb2lX4rb7a0AqZY40dJJ7hd0Q/GR6p6QTFluLgINFqqqoWCazzhFTcGOf5N
         FmMnQ2J+CetcFscjaaLVdIqbhnHCR5RwakuRJss2n7LYi2OOdfNTpbhrtdmOZk2SyaTj
         WL8KaHoJJcIvbpFCMvw9DSd0ofQqzn9QyGZS73VeRmTnuUnCf4B/DWI1X4+ZtX6mJObi
         RkGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=E2j/SK7Cx+/7eBe5RW1Nz/6XtJDnMksMEqBr9B7bVAY=;
        b=UN/8UIXwnIy1gswg6Lj3jDqqXUByMNGGse3NE6N+Dw1Ls9LYrRnbScUMBTYJfilmyk
         puFBbBEvUydG1i9xW4Y2zGrCwU5QqIXpEKa9Dc49Ipg29n18oQAyHXSWJjYfVpHpEB7K
         OP+wFdZcei8kXLmU5JO2ZXBX47vTgDwMYp19/SOA/3750h3m6053/Y4pueYoUEHMlTe8
         xsZFrmMxfyObaOot8B6M+/dhAgDU7SCQwGZCgDOLS7piFDdahhSsQheJf+IiHyqlJPAN
         E6r/pqNeuGRLf3B1KcMb64e2CPCawEGXedp64Cn0BJF1kCD+m1Nzz+WEuWEO2+khZt0r
         aw1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dRshBVSL;
       spf=pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E2j/SK7Cx+/7eBe5RW1Nz/6XtJDnMksMEqBr9B7bVAY=;
        b=bto5GEcvAN+xBuadmT/L2+J6Jh7cpCmobcU0xh1QaMrqSatGywxT1JxHcu2bfQynA/
         oAqrtk1p3DTTiPxnFCG7oi7lmLIWkDnErkNZkpKn+16QGmBbsgmcUTA8n9H1HAZHQUjy
         CAtAEcjFvIRSR5n0nTbG+UUyLP0KiTrE9oORveIBIQGTVJPlNFdTHL/aIAic+uXYuUK6
         C6Wr2SBk/MlehYmviGDmzKXZqXmqxACwroSnTy20L+DIS909Us9I9m/TuKExB+l+J9ci
         qfZvls/px0EWpiSQXqFbiuL3rDZShxvrSMgDWi9LNaIUEcFAtHFPYd7owB4AGg3FwlXN
         gREw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E2j/SK7Cx+/7eBe5RW1Nz/6XtJDnMksMEqBr9B7bVAY=;
        b=uYS3CSCVstTCP8tL9rMcLFZvBN3urddFr+qaucKYszUXVvhBdJMP5RntXDGFV0ZLJA
         iidZukfEx0pPxrNP/XNmZO2KHh4uTsObau7ZEvRJM2t2GkahI6yRApAFSSQ/0UucxQYV
         G32d1AMp452WIO60dllbuPCIpFnS4SZCx0d1FBbx3wPoHJw65ChgUUQAGDU+WH+LQVHM
         FUzKzgpLtcjTDzRUQt2Mozpf4M+7WPR6b4+5hQta1MfdaKWLLHY1MQwGPbUMQcn9E7Dw
         vZXBxo+poNlSX5p6Rpwj170JYzOhyilvSqLVhWv0X8I+2570bEkO8cAMWypaBckHmJJ7
         1/TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326/cxjSQg0FcsbMky348z1YaNOTKYyDNGrprlOnyXJYSQuf8Ll
	CX0DRsBy/QJICljmLdrqXvY=
X-Google-Smtp-Source: ABdhPJzeDDRnkDSzGm/hKw38PC3oFKa/WbrZ29SqxiGK5cSNXj03Fza/q8jzGVnUrAq7Xme1n7O/7w==
X-Received: by 2002:a62:be12:0:b029:24e:ba53:aaa4 with SMTP id l18-20020a62be120000b029024eba53aaa4mr24525692pff.63.1619548684287;
        Tue, 27 Apr 2021 11:38:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f36:: with SMTP id y22ls8856285pfr.8.gmail; Tue, 27 Apr
 2021 11:38:03 -0700 (PDT)
X-Received: by 2002:a65:4985:: with SMTP id r5mr23154751pgs.65.1619548683727;
        Tue, 27 Apr 2021 11:38:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619548683; cv=none;
        d=google.com; s=arc-20160816;
        b=AogNmnEv7G3AMOq1wkD/IcHhPJ/yF1GSWcnfHGNcX5a70uPk45bObLGUnqObLucQfv
         /zKM6IMu72x7QJHZ21NFl5B26tkwNOgvHrFsEXgL+5RKwmCcCJV1asUZz86igZukslu5
         Asl84ELIp+9OTOkKxfBx25Dw1A4uV4zoQgI1ATYVsn1hqwIaRxYpboYERRfEvCf6RuwV
         oOCMcjJLr/lDR+X9qNfCm/hT1qfybdTQZ8r8+9hBwRikyVT/nv4qqUwiU1/ytlRpI26o
         Dbi4sqBHYn5wYkaroaccIjiazxg6o0Bs92s/241au3eeNEbyZHUb51T0iThxk0sz7GCj
         s8vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=4VuZQSuryR31hzWJ615ODRd3rogZxavth8Va+pMZREE=;
        b=Hp/E8nXfRxpRnXIXNvoGwJavECG4oE8I4AMXki9dy7w20XLVDUzKMl37bHBcpg2rNJ
         BxpZfYWryaabo/BcWIijJmmZHvlLSFvQY5nXeBZf2eQxyy0+SQiD7w4i6KdmM7b/ZanZ
         JgZJh8Jj64B6q+Ch/s1Whl0oJb3mfjRIytRA5qGTkTqgwhmsWJ4CWGPZfPIHtOOfMkgj
         Wrj0v9wlkd8SLtqj7FCsfB1lesHW2QzCLXodrIayjCJo4WIArIRWA1ZyEjyEqlfJcksk
         B5JPTh3baCO7GUDAPdFmPDa1/65tKI3Uh0r/cVilIiKE3JZJgAGYDs0EI9mwYO/5e9C3
         7McQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dRshBVSL;
       spf=pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id s20si1792792pfw.6.2021.04.27.11.38.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 11:38:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-HjmnvmZFMDKHgHdRxypa0Q-1; Tue, 27 Apr 2021 14:38:00 -0400
X-MC-Unique: HjmnvmZFMDKHgHdRxypa0Q-1
Received: by mail-qk1-f198.google.com with SMTP id k12-20020a05620a0b8cb02902e028cc62baso23551469qkh.17
        for <clang-built-linux@googlegroups.com>; Tue, 27 Apr 2021 11:38:00 -0700 (PDT)
X-Received: by 2002:a05:620a:14ba:: with SMTP id x26mr23398295qkj.457.1619548679881;
        Tue, 27 Apr 2021 11:37:59 -0700 (PDT)
X-Received: by 2002:a05:620a:14ba:: with SMTP id x26mr23398278qkj.457.1619548679727;
        Tue, 27 Apr 2021 11:37:59 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id o25sm478118qtl.37.2021.04.27.11.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 11:37:59 -0700 (PDT)
From: trix@redhat.com
To: mic@digikod.net,
	nathan@kernel.org,
	ndesaulniers@google.com
Cc: linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] samples/landlock: fix path_list memory leak
Date: Tue, 27 Apr 2021 11:37:55 -0700
Message-Id: <20210427183755.2790654-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dRshBVSL;
       spf=pass (google.com: domain of trix@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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

Clang static analysis reports this error

sandboxer.c:134:8: warning: Potential leak of memory
  pointed to by 'path_list'
        ret = 0;
              ^
path_list is allocated in parse_path() but never freed.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 samples/landlock/sandboxer.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
index 7a15910d2171..4629d011ed61 100644
--- a/samples/landlock/sandboxer.c
+++ b/samples/landlock/sandboxer.c
@@ -134,6 +134,8 @@ static int populate_ruleset(
 	ret = 0;
 
 out_free_name:
+	if (path_list)
+		free(path_list);
 	free(env_path_name);
 	return ret;
 }
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210427183755.2790654-1-trix%40redhat.com.
