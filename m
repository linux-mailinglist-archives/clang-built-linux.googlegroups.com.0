Return-Path: <clang-built-linux+bncBC27X66SWQMBB45LU6CAMGQE5H77EUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB1F36E10A
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 23:39:00 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id m7-20020a0566023147b02903c31e071e26sf34593516ioy.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 14:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619645939; cv=pass;
        d=google.com; s=arc-20160816;
        b=uoaZHKm5cEIjV7m/uYbyQw2QxUGM3dS8e0cLUOsoU2R2TN3e1DZeLqlJZIpSLq10Sg
         AIR3SVib823FJl5X64OjaZGVWRVvR7IFWIm9Wdmdm/FtLcB4fi/dzmhON6oq4M3eDXlP
         qAdaSXe/KuEFVzIQmboCy6rdmmer8k2dAbxgafFdWTcznEABZ6uu/1eV4Zf7BWv+mYEw
         K30E4SUTydRLp4Rc48PC3pTsux7ZpbKYfzOmLmbMDON9nxljfIVRHEXsQEwCNQPgoSKe
         4njnVOYTdcaGrWeUofj3CtbL8pjTnqQ5YepW4SXxfAsf2zfidhgQkDIHiMzMowPoF2AL
         Vyhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Yx53S6xH4NqUjR0kJ8TVR4EADbr1eaBtYlY8K+Tk1Sg=;
        b=zM/zS/qiQ4LLECIaWDvh5VfQGD9dEdoErw8NrkZbBw/2lgotjtFGYd6wzO1THE43U3
         eD9oq1K73/ZM3uOslFsPxrkHJm8m2s/MEkdKCGgU8hbTbMwAlelEvQE+eCZINkaBIWku
         aZcXcDGkHOCA/vYNk4Aa8kOFWo0EG3TYf2gHDa76fo7SzyoZjfzSQatSNz0QRGYjOCzf
         EDQiZjTkFA8bA/3VXE5GMpDMWy7sPFj/yRuHKBNQbk/r9CON40ntuFQiTEsvsDW8uyr8
         VQiGGCr8R3WxdTeddsU5Wy3ITmOmOcfoPM49Ro42Gwy0pfXyCAFCGi/9Gd7EgYwc2s09
         ebZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Osc9wCPV;
       spf=pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yx53S6xH4NqUjR0kJ8TVR4EADbr1eaBtYlY8K+Tk1Sg=;
        b=gR2yqeWMMl2gG9ivNABQtuMgTPA1ZOJg5MSZHzA8QntdoNUalZdMK0OqGrEphunuo6
         HnzI3VpZNpl21p7iS1npi9ZQVQMtc4allb3obCLJ6F3XG4V2Co0QNjUziwpDm60HyfZx
         o8uNYTklNOFprNxNxYNoylLJvoSjjmpHjEHFctVQOXhWA7xDt0k+4k6JZtd56JGwPBwP
         hd0Vf20k+Wp1OD5e+DLfm5tekT8MbH5kVbn5jQ/XAR/VvLC9LsLCUtxJHHXOGqVmx9Kn
         fXNjCq0rS51rtUYO9CveEZwUSJqil4xOk/2KOCtyv0/UygLTHDL2x3hKLYutmuwaItFD
         5VTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yx53S6xH4NqUjR0kJ8TVR4EADbr1eaBtYlY8K+Tk1Sg=;
        b=G1Wkx2fSdGbYUGTpSCp4YJOlcvrVYjQO3pCb4l5nlI8uZokkHWlB5LC7pYwwiRowjV
         56v9vvN1HRXO3qAl+yQCPnklcsogVk+L09h5CbGS1nSeLVP5qHWtmSeBnBLMSvUt20Gc
         MzLU+726olSzuoGwoXzYlt/zcpVbfXcnFARoZ2AiyIxfZWMi3ounub23jEbx115wsmr0
         NijhcUt9P4iV7aJ0+z9rRU/B2CqfdvcTp8eTzzrzR0ZYMbcT7ZhsHJFDlU++r+HjxxC8
         se/NndaLutbSEjXncb+iV6TKI/q20tmD3JKUN8Mj6djdR4CCI4EoWWDyUQnSI0it66tH
         e9mA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530k8Mpmb25ccWd6/USZ0tpqGdskMjFYcky8+CAex+jnQKsalzox
	UhQAX2ImJGXjZCK0/Spy1g8=
X-Google-Smtp-Source: ABdhPJzfu0pA2Pk34+bnY5F79lKn/hqsbZQxXDogxMmS8bsuSEqYKmssYoOe5TB0CLW05qy8tWwQsg==
X-Received: by 2002:a05:6e02:d05:: with SMTP id g5mr16487602ilj.105.1619645939745;
        Wed, 28 Apr 2021 14:38:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1888:: with SMTP id o8ls334697ilu.4.gmail; Wed, 28
 Apr 2021 14:38:59 -0700 (PDT)
X-Received: by 2002:a92:d251:: with SMTP id v17mr25021067ilg.236.1619645939439;
        Wed, 28 Apr 2021 14:38:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619645939; cv=none;
        d=google.com; s=arc-20160816;
        b=hL05A43IGR1btxfVLI+rUAG7GDg0M4SCFPIaLkc2DghDnZX23PV7rvbsFjuI6kEzp6
         kMjdp9Q+tDDEIp6Cd3BNjHBD+GuZ3E+7MjxuY5Z/xy9JCZ5MxRHuYakVYffG+TFE464I
         jBzog3P2ha71vgMSbVlb3XtVaJR1LBPd7TFTdG8bd7sJA/ad6m2q/BypMDdWpfF9ftir
         Pn7wOT9iZIOJo3NzBuEYm7jkQWtp0DxY0NZG1dM6bn5olGu1ankMYN3FeBNfamplESYo
         /zpceT68kThCdyMlUCwwrI2z/2ulLy1ZnesQBMoUeNymyKxm0qZJ4bydoriZEYrGxKdg
         4hTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=+ySnh0a0AMi/WenqtYhk3zr8l1sB+1deE0YxwC1z4yQ=;
        b=EAfJgxBQ8H0mAeJ7fExY7TbXwJnsTtqnJLRm2gKvPCdJMFKpdv2Oppu2fhaNJdsidu
         IJareBZ5pNZfQsIAhA+xzhyHzDuL3J1yDcSe6JMWyAXY+MbV/lJjFe2UEaEaO0Hjd+Tt
         fKD+uPiTrZ10Eu0D/7Vk8Dva8vmprZwiBxDoAl2/La6dxfiGfsPmOsSfm/u1lZ2v+nmK
         g4AUzu7UtfrXdqYOSiyJL7Io5+XGzv7ouIhXe04NgGPkyFXx7g5b5rKt8cqq60yK8ShJ
         +0jiQOfB8qUBwlUCiIPn3uCkXl7rILEoHEYlhcaFxphAA4yFg4owS6jeqaJkURwMWXR+
         5O2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Osc9wCPV;
       spf=pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id l25si91699ioh.2.2021.04.28.14.38.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:38:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-78-zmwCdNJoOVWcwPaRxWm29Q-1; Wed, 28 Apr 2021 17:38:56 -0400
X-MC-Unique: zmwCdNJoOVWcwPaRxWm29Q-1
Received: by mail-qv1-f69.google.com with SMTP id c5-20020a0ca9c50000b02901aede9b5061so17053225qvb.14
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 14:38:56 -0700 (PDT)
X-Received: by 2002:a05:6214:246a:: with SMTP id im10mr31110810qvb.7.1619645936483;
        Wed, 28 Apr 2021 14:38:56 -0700 (PDT)
X-Received: by 2002:a05:6214:246a:: with SMTP id im10mr31110794qvb.7.1619645936274;
        Wed, 28 Apr 2021 14:38:56 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id r9sm897899qtf.62.2021.04.28.14.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 14:38:55 -0700 (PDT)
From: trix@redhat.com
To: mic@digikod.net,
	nathan@kernel.org,
	ndesaulniers@google.com
Cc: linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH v2] samples/landlock: fix path_list memory leak
Date: Wed, 28 Apr 2021 14:38:52 -0700
Message-Id: <20210428213852.2874324-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Osc9wCPV;
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
v2:
  - Remove NULL ptr check
---
 samples/landlock/sandboxer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
index 7a15910d2171..8859fc193542 100644
--- a/samples/landlock/sandboxer.c
+++ b/samples/landlock/sandboxer.c
@@ -134,6 +134,7 @@ static int populate_ruleset(
 	ret = 0;
 
 out_free_name:
+	free(path_list);
 	free(env_path_name);
 	return ret;
 }
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210428213852.2874324-1-trix%40redhat.com.
