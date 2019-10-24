Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2MSZDWQKGQECCNFPNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id D556FE3D35
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 22:28:26 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 19sf15059629oii.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 13:28:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571948905; cv=pass;
        d=google.com; s=arc-20160816;
        b=GsrEfBJtFJTgfRaEvJ6QFrqDXMJxUnIgY+hKOzZXSNd0l6hiNlRWxH9f6AwysUASnL
         k8e+phfM+d+aPYSnFxz7geRtv/6t8Cp2J2jvuOtqiMTJiJdxN91ZJn7AnbLfk/Dm+49l
         R2ZQx7/rUIh9kM+9xkTjwlKojxCB845Kpph4DW3V0urrPp/ZIME4ehF2+MHm5iWjawwl
         krp3etaphm5wJ4BjGCgGMSmR536cAkePMEk7B5BEjYFL3LW9j02hsU83UUchNAptayCd
         MgUU1okHE6ohkLYjjTKoTHCRBhgiSa+54ZT7HSeSN37iIPfWEoMd8l731XgCAOo/RaRS
         tnlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=fXdxLAP5wlYdZTCtVHBKw9sRqLOZ7sunanHJzoXUnk8=;
        b=P8uravfv3YOFJlGNR/GMMy6phWpR2i0Bw1CtcwmloYSp0w1BF7SLkTOomyVYDhtrx2
         NqrlpZyD5g4pjZfdYBN4zGGL6nE4vw2heqRrehpcnoZ644HL8xMcyu+rwbuA0i76SwXa
         YD5Z68+ENam6t7tIfgC/ni0H60BsrrsfNtuZQt76TUyWOasIDXLATlhGH89OtTqrfZEZ
         Jbi7KPDwvG/na2ezO1MyYsj6kp1bwIcsr3c8O3ya2YTuiiRT3kNSbl+WB0tLcBQchjh9
         E/gbxV7lnZNVo8AhNHSc8+JIkzrcFj/GeDczpEUn2xt5FeFKoy2JOoar4yVCbM9OyZlR
         T6FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N47NOAqx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fXdxLAP5wlYdZTCtVHBKw9sRqLOZ7sunanHJzoXUnk8=;
        b=iKjiL4d57L9Knb34DgOVnkg4GnnMCx0GVAlLzWcQfhGHNjPt0xCpvxFOotnjn2HUQB
         /6bxTkhA9Ij97hAilU2lzViJ+iRn2VqhS+oHM8O/YffEgv8HQYfLSGGDWO7QmuIqvN6Q
         bXbsUTfnR75fayCeNvON46mVHPq3FYf8hT525buzO7d62OQ7bqEhfPWnII0jrdAHBnrW
         7qV4BDpaK04yf4c9xKhfOlMlpADxD91K/+Dvyh8UGyyykG+CsKee0FiqdL/ExX9vnRWg
         AgQnunyOK4sbk2NodHiMr2yOtb9B+OOMkdCamLQrOKPRXp3L8tIO4RG66eQeBtN8sEf4
         lK5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fXdxLAP5wlYdZTCtVHBKw9sRqLOZ7sunanHJzoXUnk8=;
        b=Rc5L6O1UAThjzqIXqDllj3Y57K4vEtgw8TJCmg/mc3MCqDDRrJYfcxK+kfHFGJAYB7
         mrNKLD43CRwVvUEKFXCXpnYsKMnPUsgawcTxOCcUBD7Qp1ZUs4EAsYBU6jAGSkcSxoHr
         w+27FuO/zFd0j8jQ0ts6w9qu3zBJvuEPK+O9NzprFtM+5S/R6Rf7j14Eb4g1Rb3zyNfz
         npYDhIwbbn/pD5Y7KNf0B4TCxV70D7Oy1nMRGMzafhroCATY5+FCCi30p+G9Z1OgY1Ye
         7e+hO7y1sShMUVVM3y/awhrf3n4OqUzQ6Vj5rCEu258xmqgqUjaH6+2LSV/Oy/nwrZv2
         nQWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fXdxLAP5wlYdZTCtVHBKw9sRqLOZ7sunanHJzoXUnk8=;
        b=sMtFDtyERzD20Nxwg0ScVi7qZE01OM5ekT+oIHlRKQ0Hyj0hk/bdJjgFO/ZBrfCQ8g
         pDyF+kjXZ63b2PIv23DtGqic+z083/ScnvOAcG0QTwbxlDd/WRZ5qp3/0SeLLNqki8zx
         ++AFUcyH+LxTu8cvnt3mUEZiT5+uOKjF9HyMtqPlKR9b80ibwP3hgRrIBqPJC9aqxRWc
         NucU4/0b2cxE1Uef/yz+0KNsaPFI/tPrd79dT8HLRYJ1MtSiAABhrL9K7zcMc0MbSHwZ
         Pd7maB58bX6QOOroY2HqHmGvdOycCNHX7FgxO5BkCwkYcUcb7gRhmL7s2WMCLeVaHziM
         eyoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXiyyljXnmy/0+GwJ/A6wYOOyre2kQsinRgsZcsU38iq7PhA7ov
	Z6z88kjPXD4evGMhYhBc9aI=
X-Google-Smtp-Source: APXvYqy8Ke2T9wjvzLqRTNtAjnyBaOS2lIgWKThk4UIuPFLStEEyweLlQgQBfoyY7ndw7uZ77ix3JA==
X-Received: by 2002:a05:6808:7ca:: with SMTP id f10mr6511808oij.96.1571948905458;
        Thu, 24 Oct 2019 13:28:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6acc:: with SMTP id m12ls2046455otq.4.gmail; Thu, 24 Oct
 2019 13:28:25 -0700 (PDT)
X-Received: by 2002:a9d:73c8:: with SMTP id m8mr13701848otk.75.1571948905173;
        Thu, 24 Oct 2019 13:28:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571948905; cv=none;
        d=google.com; s=arc-20160816;
        b=IIpf5ahGOgYPBzTjvhpLTl3BMQtXh3rm3HycHhIDfE1DsC9r603knVla0Gbc/Va1+r
         V2NimnXjMk0X+7L8HNcCXPv1/1BDZJFBR2N6TLUCUsNpoYTfm4nFJowHwcnPNb7BRsO+
         JVr14ZcujlOnGsVrLljB0m75rh+/+rwxE7HXoTFmSRZaBUVGYNOtz2W3CYYdDlN8m2od
         2MI6M0o8y3QHrInzPLbmuMeusi4zq8rKwaXUri35kvTLrw6tKHJkOVyQ2g1SIOwF0Pt1
         kPd4eLBzb6NrhWkAWfy868mL2zdSeerPdhxj8b/5pDgYCp3Yy/UqtdioTyqfolP0Q3f+
         WHsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KysFzCyCbt68rgdhcTAXFckqnl9oeL9f+lH7yDmTZls=;
        b=rjLAHXYYucAiT+C0JrhUp549rSoDXgz0wZVf6I7JYtnJ5jNoVf2UccDlEFgXmysi0B
         A2N/JzLDrjB4qcL09+DKTHANEBcF3X0Swi/aM0ypbW8lsP+j+mHFowHDUZktRGlSqmZ8
         ecU+G6uYA8jJ3xmuWrhUSWSU0/CK2fL19BkY5y/ZTBfMvcAZ7cAuaAobq2sbbtHL6vrm
         758l64hVxqdtVqdvC6KuFl5GzwcQH9OFu8wi41b7yU094bNcbkdLjTuNXHG2MLjAdixq
         X/yvUBu8hJMkojLj3kh3K9jqq8qSOz8kaLQ+JuQaZ2aXAhSkmXSWL6lLNmY2yfncUpUO
         UbKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N47NOAqx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id b11si1769893oii.5.2019.10.24.13.28.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:28:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id d8so159337otc.7
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 13:28:25 -0700 (PDT)
X-Received: by 2002:a9d:3dca:: with SMTP id l68mr9689115otc.269.1571948904809;
        Thu, 24 Oct 2019 13:28:24 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id p184sm1101963oia.11.2019.10.24.13.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 13:28:23 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alasdair Kergon <agk@redhat.com>,
	Mike Snitzer <snitzer@redhat.com>
Cc: dm-devel@redhat.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] dm raid: Remove unnecessary negation of a shift in raid10_format_to_md_layout
Date: Thu, 24 Oct 2019 13:28:03 -0700
Message-Id: <20191024202803.47613-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=N47NOAqx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When building with Clang + -Wtautological-constant-compare:

 drivers/md/dm-raid.c:619:8: warning: converting the result of '<<' to a
 boolean always evaluates to true [-Wtautological-constant-compare]
                 r = !RAID10_OFFSET;
                      ^
 drivers/md/dm-raid.c:517:28: note: expanded from macro 'RAID10_OFFSET'
 #define RAID10_OFFSET                   (1 << 16) /* stripes with data
 copies area adjacent on devices */
                                           ^
 1 warning generated.

Negating a non-zero number will always make it zero, which is the
default value of r in this function so this statement is unnecessary;
remove it so that clang no longer warns.

Link: https://github.com/ClangBuiltLinux/linux/issues/753
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/md/dm-raid.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/md/dm-raid.c b/drivers/md/dm-raid.c
index b0aa595e4375..13fabc6779e5 100644
--- a/drivers/md/dm-raid.c
+++ b/drivers/md/dm-raid.c
@@ -616,7 +616,6 @@ static int raid10_format_to_md_layout(struct raid_set *rs,
 
 	} else if (algorithm == ALGORITHM_RAID10_FAR) {
 		f = copies;
-		r = !RAID10_OFFSET;
 		if (!test_bit(__CTR_FLAG_RAID10_USE_NEAR_SETS, &rs->ctr_flags))
 			r |= RAID10_USE_FAR_SETS;
 
-- 
2.24.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024202803.47613-1-natechancellor%40gmail.com.
