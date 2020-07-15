Return-Path: <clang-built-linux+bncBCAJNBXG5UJBBH5EXT4AKGQEDJBYTDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0690A220F2F
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 16:26:41 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id j9sf2868704pgm.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 07:26:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594823199; cv=pass;
        d=google.com; s=arc-20160816;
        b=e4VLJMkk6a5Yzm7L8DzOFnakXY0ygEQbtX//aIyGLSXSHStsZ7VNqOE19BXXvvh2bX
         USp5SZDJk57A86N6B4rCK55Z/ai6SRJsylhxiaURfjeVo+7Rm8pxPGjPDFFtiWrtIPSU
         npgLfEjBbAvqiUK4Z8TG8lSz7p5cz6wB+zAb4oOzn9YCtFXWeRPNlJB6vTqEBu3OTEt2
         /zDD6zlTO16P02sIkViWmBomgBUWIOctep+f2nYY33tvbj/K0dUI9/4BFhjygUckdvUs
         OIPDyRMVg8esbt6ZsS29uKS5PGz95+2YWI0uzJR/x8aIPh6slJ1cQ2AG2k0Rdg5b0Gbc
         uHzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=bZ+0Xw5PrpUQhR8XSD14bkYYhDbk2Djx6KmS0JQ2VLU=;
        b=YslzP6+dNeR7oYLyeF2X40B1/2j/0e336QAf1iVsCA4ZNfVjD38sLMuBazJYg7JBdg
         kNQeVGFSMix3/LXl90ENyRwgc8zRlV3FsHAP4ZooInaQrhrUt9K8FN3/pZq/IpL+/zP9
         Y8JQgY2eGeovpugwCWYpVOWqIbIsdWBGNKTDI0SezsjrPu5/BzefKehnpCs2PxacmV60
         0Xmfzv5tpUIKuPp7JXRC1AA36whaTVo9ac3VYEVUu5HLaTA9I1Xx9u6y/cpJmR39KoK2
         /XUP11y2e8TI6Oe4y2JrCIazwd1otaBxVFr4Hb+q1EPrP83fym4dwS+q6o4GzwK3v5M/
         Q7FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LqWxujlr;
       spf=pass (google.com: domain of mritunjaysharma394@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mritunjaysharma394@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bZ+0Xw5PrpUQhR8XSD14bkYYhDbk2Djx6KmS0JQ2VLU=;
        b=F5Xn5uC13/EBn/+ZIk3P76y11wxb2AUY+mku7KdsoSYO81vdO7RWtCB7nuG20tfdZf
         emJk68TfeZFTDXuEXrFsWpnIFCRkhhprO665egInGLAYx6mNKHxhQR2WyqxDh0rWuS6a
         Q/mCFNSVHsI47HwdMYKAdWEWstojEdeR7qmEq25duM7AfBlvn5W3TVJlc1IWTw4YTTtU
         l7NZuZVaY/EPDQ0ePWgGkTUQ2pXtpS5Szs1zHuTSJWv/LVPM3rKjoNmJXDtEab3SZFJ2
         Azgqb0bkYHZg9olagr9RTHYs8Tb0MK/Smk3vQDdkmEWqQCDvlZxZxhpQ3DrKsbWyAi38
         U88Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bZ+0Xw5PrpUQhR8XSD14bkYYhDbk2Djx6KmS0JQ2VLU=;
        b=XLBK17F0cOrrF2mvQw/Fdplcff+95ukEhgOrVkhCaMVl/EkwDOtEY7veTNKlAXjbFg
         7GB8tAbfJywgn2mYoqe7fCyGFJdhOVYvJ38usg1Bwa9IPWvJFrupPQ25qD0dsFia2gP8
         8GlTw3Bigef47BLx/2C4l2kJx8Ts6lmvxuTViCGfFxIozW3z0WrCO6ToL/ugXiWVVMRY
         XnnuhqSPqB70RgDBUSQxlpR+jnW/Dq+JyjiMyd0iZ9/iZwUz7QLl4sfxn1sNQ1aLpRuj
         bvUj0Lt4n9dqYArqZPhT0hhuGTuwPiDYlPNfeprARRpS2kh7LeMfZDEUrYqXrkubfwsN
         reeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bZ+0Xw5PrpUQhR8XSD14bkYYhDbk2Djx6KmS0JQ2VLU=;
        b=Md+zOQxl3ujf7abs2A4RkOQTF/MjRizlioZmYbVodjPYB0WZxC30RrtVXSoZ4Jn0B7
         ZrwAb2wnVZ8W6/gup+0hH3uRc4rR7c75FEz4LxwIr3QIuHpvMokVwYZh810BA5ikE+ss
         HlDPgr4seEPEuK+SklubatlLBRpAgZs0y3tVPN79K9uQ+ILQYYogw9+GuxbvhGTxc1XK
         oHCOHOJrIcgpALbtJK9DQiApN9iDfMZHhaDrJO3W6iCgMsVkwcSm/s4+E3ybVV4OHBxX
         HyAeGv+C+WoolkL78K6H7YhTmPt8MhRJ7zGVfb7qLLPli6e1kQa774TsPm5Lrmji9suH
         bYIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532B8s9HB/vDewhjg7wx4Hj4xU4xPaS1gaRs82G4LHVLMCnWQNHq
	iz2cgW23dlzLKERjiplE8rc=
X-Google-Smtp-Source: ABdhPJy7mE5Bb2gaeOvpuVy3j0SCYLhT0yKbk9z1lohthdFzYe+Lu60BKDtSkKPcgDqLFNlV/DNcyA==
X-Received: by 2002:aa7:98c6:: with SMTP id e6mr9218124pfm.17.1594823199378;
        Wed, 15 Jul 2020 07:26:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff08:: with SMTP id f8ls949660plj.1.gmail; Wed, 15
 Jul 2020 07:26:39 -0700 (PDT)
X-Received: by 2002:a17:902:6194:: with SMTP id u20mr8636929plj.68.1594823198951;
        Wed, 15 Jul 2020 07:26:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594823198; cv=none;
        d=google.com; s=arc-20160816;
        b=osLD4zhJN9ZsTS0r9zj+c1M4er+sTi099f0DrVZqo/zemj2bjSAkcYEwcCDSFqpfBr
         9xV0Li7Ek8VPR5Y0t0vjzZwcELnRvcx+iowg/RLo6ZepY0OChlXPz235IOtOZzJyXFrr
         YeSFYpAUBwld3EOI5lm7iW/9l8eeDNJIHj6MM89R2YQU5NUebL9iAAR2fDLYgmbS4j4B
         yKjMkKn1ZxNNnaJhTcwc4DXUkDq6QEAEIvOTF5rblWz/9rV70+dDPP9dmXniG7aoV0r2
         3QtVBmW8rOSfcoQtMxUwj5h/7cAXoSJnSD/rJKFFWLxkzppVgwtdkDcvcVvsh0TSL/yT
         lNpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Cf7VzUGNcVW14TxQ7W+i6Ijja36UwcJjRErcM4N9znc=;
        b=RY8XdAcV8DXEOYpPY7vR8q8jBHYF+G9GQTnu5bh+IrTzMYJ/iIyPpyfm9wgYJuTJI+
         9LhHW/EMhO5gwZwd+MZ2f0I+eJTo1aoUTRNjvdjptu8d7aBcQk3DmnKuWIXITWG6bUi1
         MnBg2/WINMTSIvxHi12igYP+LE5gcKWsmC0Ci4UVFPVF4/1dmBwKgzXedI7DVknc0/jM
         vdB9UN9RpGcPo9YAMCqT0DxfLwiIsbh+nTWNI3YMArdxXOsf22JVYywW2t+NLtYHRnjE
         IjQtTnG2NWJqR8y4/etI6ER4xG9EAVkx7CTuqYiGyDR1Q5/93rr22VRrMctRioFNRGbe
         fTCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LqWxujlr;
       spf=pass (google.com: domain of mritunjaysharma394@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mritunjaysharma394@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id v5si84965plo.4.2020.07.15.07.26.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 07:26:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of mritunjaysharma394@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id cv18so2003717pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 07:26:38 -0700 (PDT)
X-Received: by 2002:a17:90b:4910:: with SMTP id kr16mr10502482pjb.126.1594823198263;
        Wed, 15 Jul 2020 07:26:38 -0700 (PDT)
Received: from mritunjay-Lenovo-Yoga-S740-14IIL ([2405:201:6402:aeae:6d34:5d62:d650:d199])
        by smtp.gmail.com with ESMTPSA id q13sm2639207pfk.8.2020.07.15.07.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 07:26:37 -0700 (PDT)
Date: Wed, 15 Jul 2020 19:56:31 +0530
From: Mritunjay Sharma <mritunjaysharma394@gmail.com>
To: masahiroy@kernel.org, michal.lkml@markovi.net
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] Modified Makefile to print -eudyptula in the version string
Message-ID: <20200715142631.GA3721@mritunjay-Lenovo-Yoga-S740-14IIL>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: mritunjaysharma394@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LqWxujlr;       spf=pass
 (google.com: domain of mritunjaysharma394@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=mritunjaysharma394@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Signed-off-by: Mritunjay Sharma <mritunjaysharma394@gmail.com>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 0b5f8538bde5..d7897ce5ab23 100644
--- a/Makefile
+++ b/Makefile
@@ -2,7 +2,7 @@
 VERSION = 5
 PATCHLEVEL = 8
 SUBLEVEL = 0
-EXTRAVERSION = -rc5
+EXTRAVERSION = -rc5-eudyptula
 NAME = Kleptomaniac Octopus
 
 # *DOCUMENTATION*
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715142631.GA3721%40mritunjay-Lenovo-Yoga-S740-14IIL.
