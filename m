Return-Path: <clang-built-linux+bncBCOI5MHU24HRBLXYX6DAMGQEYIJWO7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC8A3AE1B3
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 04:40:47 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id 2-20020a1709020202b02900eecb50c2desf4096372plc.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Jun 2021 19:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624243246; cv=pass;
        d=google.com; s=arc-20160816;
        b=RIh5kIVyDllBCMymh7LcTbVhK3GF1I8B7b/cup1Gq+diIoQcVcw9wV7U8TGVTDVn1C
         PbwIR/bZNEDSv7itosYz+ekyq6y+b5j7viRpqleDXoBWcccnioS9zf5eRuQMxRcrNrtw
         2Yyduqs4/OIg2hwe9issEP/SJLgJ+x9Dku5660Dy8u+AwaXehgujyMqaEb0OvXVLLYob
         gBlfDlTIiL2piAre+adEjPpNt35UParj8KoYwfn+FOKr5X7dRoks5wvTvS/ssUVkyYGd
         WtWcSTyseguUNuQLgs619Nd1gfzFSzc7FHI1R6yL5VO+4/YxE3I83V1IZeSFBog60EP/
         dDnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=3Zc+VQCm6LubYFJzpaYq/6T5gFRGDIoqNDknlHpxi9k=;
        b=CFaBB3DjxQzUNd+8A5eir3SuNqX2HRHTKwgBQkBTwXz7frq5lljgxoVeD8toGLvtOH
         7xf7Q1Mqw99kaRWFPs0pqvfcY5tU4NBmgrR/xIAMfDfYXrkvLCWkt7kAPORJ+/WR03EJ
         NCbpMWXhpJ4Uhuqfh6UH0YdCObHQMTdFYCt32OvYpi/HNHkwWsW8qFl5wTKJDpy0Orbc
         fv0XWK9GlziddqkstuvhE0SyV/pDol8h8+FpJ5hJoh2Q54TfbogQpJmnSfCA6nIpayD0
         ONjonKorvagotRLN4/0jTOWz8agUOP5o8ZoG6eUNXtuIzTPrvjkXouYXcwjqgGThoypN
         HwKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W05GGJev;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Zc+VQCm6LubYFJzpaYq/6T5gFRGDIoqNDknlHpxi9k=;
        b=IS8PxG8YbHjmt3SWiSSBca+etT277joZBX20FesbQYrKzRDh1P4wgH1n5wnfozGhKR
         8NMBEEBaShoQq2LyWCSunDbI6gEpYv97qopdwlJEPZINruSy9D2hfDmg4mz0MdryalXS
         SamJeFrVC+zEmUvEohkZo0jkkY0pS1jj4n++nUTI0ax7OJ/s9PS2HilG7DqhCI/2t5CB
         U/zHiYlJpO9Batc8XaLIg7eECfgvlY1gs6utqAiYnD3RkMOPuO0v1q32IUQe1EP29tO4
         d7L+U3646IV9uJT4h1ZgsQ9PTzaLlEWU/9Qqiq5hnwXBeRS1KCiToKND78gzj1P0L3nq
         6puQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Zc+VQCm6LubYFJzpaYq/6T5gFRGDIoqNDknlHpxi9k=;
        b=WadjalGbpEcBj7vY8f3ZwvzXheRIBp/IZMFRyTSRgs+lZM9U3v5tTGTiSGOR3/AbPi
         q1mNsgKrV8PpYHJ2izHBQfuPEy0d0e+hHNXU2yQcipUVwohe1Dfz7hmMXVt4bF+vt5du
         2F9gQrwNoRM9f5czKPmyuAxfIoyIRSZNY1wDcWc+EJFQirh3PdV7pZAA0TaXUMa14nWe
         +kijNNXTeolfayXHAAggwf9i8tK4fHkm6fUPz2hA6Yk01NFqaqF6xao7E3jXy7OBuFmj
         V/Ac5H/aIU+ORfHp4k8Oi5j1PwIa3yXR1JVqop6GZIlcrcjKDyENUSkWJfGsYX/RVpiz
         9LRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Zc+VQCm6LubYFJzpaYq/6T5gFRGDIoqNDknlHpxi9k=;
        b=dnQdrRza20mN80fz7rsLAQhsfbKZSIGes/+ROhaxdJaA3tImmhxIRO8B6QIXCbz466
         KKYUoDV4MISAva6TRYNDgbAzHntFzBbRq8S2CG2fTeTRyukcfylwcM8UIcxMs8qH6BC1
         K93mayjhdIiKSMm0LG68yWPwS2mVl1lFKmzySmBEjgEhdkBVkDCsjcCQgSd6YI6/mgMQ
         WM7Mwe2qH6vgKvDPEjQ0xz+R2vxd0YVxPxXT6PKofdR/KdtJUAdd6wi33CUEYzfVVvyz
         mjJn8h34lwQJoUoFud/TcBvFvF8T2+h0I3U485brwxx4P61SxBT8sYFtDTIjxGtuNDvN
         4Sew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BENUsTCK/i+NHUElSCg0yQpJPEdkRXzXrLlJOlkUruyu0gSRV
	eUdvVu5Ta0frdDu8kVhZOGc=
X-Google-Smtp-Source: ABdhPJz9KosbIkfstXzUBfi2SeRuyWIcMen4MUrQpuoXM9ejPl2t3ZSbcv7fkn4fm2fqxSU0zrpnAg==
X-Received: by 2002:a63:f84c:: with SMTP id v12mr21526350pgj.299.1624243246405;
        Sun, 20 Jun 2021 19:40:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3383:: with SMTP id ke3ls10374156pjb.0.gmail; Sun,
 20 Jun 2021 19:40:45 -0700 (PDT)
X-Received: by 2002:a17:90a:6782:: with SMTP id o2mr18167561pjj.165.1624243245891;
        Sun, 20 Jun 2021 19:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624243245; cv=none;
        d=google.com; s=arc-20160816;
        b=kG8VEA/tyzmXGi+CGav7peyRqHhfR1Eg8GNo6hGVk6C1cBIMvahuAkDj5lZWX9UqDR
         Spdy3Nxne1GmdfVZbHpN6Ifcad9ewoYQ5sHr7wxInrPOhVy4rx+pxHoLgQlAMO37YUB8
         fL8lhrubqKr0pBjBXLtQAL8biXy1Ur+HPzx3x/uk6TDx9JAvRvD+EyyK5e4Vdhp2nU/N
         5L8WiedCQnai7uKbTmvB3Qxe3AgIAj7zSQrxQidluMKEU/vGbtFrK9bRcQoUdI4eNQmZ
         Lp0hWyCoL0FgyVmBxZElqn7HfzwsFJWzzKNhpld5yOy7cjtKSoYWY/TTshHOVy/RGcpu
         hBKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=R+zDclVd6+MF8AmpSfvARcxTjI1VRTEmoNc6MqmkAtI=;
        b=1EMt49lXlN1+uAPjdc6JA85PjZGeqya3pva/UNmJC7W8EwnrqvXrGVhc0eEQu4Z8cV
         HJJK+uMLVQnrOX7OTWe5ZcGVzrlM07+YM62s4gkcLT2rpKBJxu8aMeLa11WrclbmeHfI
         429VuBO02/F4RG14quv3/rYTVA7+vcRsEsUJ1VgUQBQjM5nTSmi0eNKLaZPnLv265GV1
         SFNeiPQEoLW/V0ru45jqqBgDEGXvxhXgnPpM4249orPbKjVh8+3eDA896j7JjtaeM69L
         q/zjRDgdU91T5JCHdC87qTIO05vgZrF8ozQp4qD7g1PTNpnA4ftprgfGS6BYAJzBglWy
         /hmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=W05GGJev;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id o20si1831627pgv.1.2021.06.20.19.40.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jun 2021 19:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso9390280pjx.1
        for <clang-built-linux@googlegroups.com>; Sun, 20 Jun 2021 19:40:45 -0700 (PDT)
X-Received: by 2002:a17:90a:4592:: with SMTP id v18mr24436412pjg.132.1624243245636;
        Sun, 20 Jun 2021 19:40:45 -0700 (PDT)
Received: from localhost ([209.9.72.215])
        by smtp.gmail.com with ESMTPSA id y1sm2080153pgr.70.2021.06.20.19.40.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Jun 2021 19:40:45 -0700 (PDT)
From: gumingtao <gumingtao1225@gmail.com>
To: cl@linux.com
Cc: penberg@kernel.org,
	rientjes@google.com,
	iamjoonsoo.kim@lge.com,
	akpm@linux-foundation.org,
	vbabka@suse.cz,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	gumingtao <gumingtao@xiaomi.com>
Subject: [PATCH v2] slab: Use %s instead of function name
Date: Mon, 21 Jun 2021 10:40:39 +0800
Message-Id: <cover.1624240708.git.gumingtao@xiaomi.com>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: gumingtao1225@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=W05GGJev;       spf=pass
 (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Changes in v2
 - use %s replace function name for the panic() call
 - use %s replace function name:kmem_cache_destroy

gumingtao (1):
  slab: Use %s instead of function name

 mm/slab_common.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1624240708.git.gumingtao%40xiaomi.com.
