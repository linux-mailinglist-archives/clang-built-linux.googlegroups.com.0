Return-Path: <clang-built-linux+bncBC7KRVEOTANRBUVI3OAQMGQEHE33VLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0023246E5
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 23:33:56 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id e11sf2836952pjj.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 14:33:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614206035; cv=pass;
        d=google.com; s=arc-20160816;
        b=GvmQ7VuW9GbZBOws9sdXEdjfrorDRCveAK71nvVSGOyVnZEWylDaFtf8IeE+uZntbJ
         clyKOZ5A9de2/src40zl96noITKHWKTTf/c9kvuxxdBl/+Dl81mTr8xPchLUXiX/EGRT
         GJp7s0qa/nEI/9Pl8jjKbvEfC+ZlUhPB394A71iNBLb+5sDBJiP1MwW86kJwzQA1T7hJ
         9XQxRnxJCEfxdB7cIfhaZnhqMMbjSxmo3gHoPFS3h7ft5MCAc+AfyYvXJLTpphsGITrS
         ruQYJgfu2pXh5/2J1eI+M7WrSR2q/1iPO7zDx0HKu5tbjAQYgBBLI72LGlneJVJt97Gt
         1vAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=UUoxGe6Dg7f41ZKTZAC4/TM1lv8IPCfEdAMuKjkzlz4=;
        b=h/oFRUKd6+FQ+4LcUFsf3P0910eTUvXjRw3rYtvzKGikSfv631kBteeJEjPcdSK7HT
         Zq8PVtPNtCgyg37vtY0xm+3KTbHcJdK87VrKy1DYKDUdF9xQs7Br8CUUiXifO2QVLL8Q
         Blu64hQqz/ddayrC56SMvvsPeBglx/l6JDyqOLiSKsLIWZCZ7n4WBDgmsmmtHd/WkT9v
         GEfB70fxD7+FE/8ToWpyGmawrGXEMNIhFd5qs5ZzP60OgZzQry1wYcFRrbOVQn+176aL
         KIck/i7FupkBqLNzoq7M25jUJwUwiHM0xMdPbIBJJ65qTdEWti3A11LnuFTaX4oWDlpy
         /zDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pLQozVRH;
       spf=pass (google.com: domain of unixbhaskar@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=unixbhaskar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UUoxGe6Dg7f41ZKTZAC4/TM1lv8IPCfEdAMuKjkzlz4=;
        b=TsxWg1KaA2LKvsMyctNH81kLEcLS0lpsG0Ewz1LwZqZShVXFCFmpiXMy9/wQcdmAyV
         mGMeK7XeVvlBPcO6G2OJnlsbWlG6TIR6e+1+3LOQusE5ecK7gBLA1dhYFSzO4hYUNzX3
         /MgnlXj6NxXAwgl1Er9sDZdtCdXRhVM2WD0NkgGMyNg/n+G9GfMub7wpCCig+r/lMmdD
         A6zTKU9v9nnw6DitTL6M+y/uHnIX7bQRNi8e81Upe/dxVJeARwDgY821E+3nzyQCgfae
         IhFKSIZ6kQmYYgRn0v589JFcdKSnYF7oSLrhZhuaIVpaC5TD0TLHRIsbLTgwAVHfec7P
         CP0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UUoxGe6Dg7f41ZKTZAC4/TM1lv8IPCfEdAMuKjkzlz4=;
        b=dxSq4USKlebpK3QRGB0AUFgZn2kO4y+X8iNTenT+AbsGfiGoQ1lEp0nO4jQZ28K/Fy
         ujqn4mPd4TaR/rwBjK2bxGlWR1yYQkmfA+QshQBAwllbwcpLFEZL2VUkQ2gyogUFkKhC
         M3gSoqfIwPuQlzVWRcaHJ7zsMxZtagdJt5ELIUu88JvzO0d2hvIb3VdAbhrtcSTbJq3t
         3tsdw+Y5OmXM5SGbzZzDWbnHubeT5+29iAcXKLW1UiknJN3LgZNT1esDx73iwbq/zu2A
         nLk7n312CGKWMHROIcXKVhO/Rz54hf+WsIpcaFDr75GqxjR4411Y8RhEVkZmF6EK9/tr
         7NQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UUoxGe6Dg7f41ZKTZAC4/TM1lv8IPCfEdAMuKjkzlz4=;
        b=LqcHbgP1W7j71pC6U+nQOowmBwH1CtdjLqU+ov+YS+shbPe19Ovw5FXQULBgGuxBCk
         KnlY8gHyzXh9HUa1GAEKa0Iem1U8LE4JEE4rYlgpKz9jn+aZ3cSAVOhtpsh1kNT57fI6
         R1sNREM75wnXp8CMHUWGXr6EF+4My0dUqW9jvQ7of9KHwfWXe9J5rWvrQf/VsdGmqBq4
         Nj67pqaWzmMqZ9mQAsfZNvcZl/A5uJXveqsLBiHhH4ZqJabEIk/zO9W3DFJQFeXG1weP
         +kMCL5vvsJUBdC7ks9tQ+EcY5M/Jgcqh7d83ll1EmBPVU4ylh5rkNlOgu+1u77SP1wbZ
         ny1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530d8bK/H9LsDbQ6EgN/QILL5OvliMhODR/g/SClSpFUU2+QRmb0
	Z8zmotB06CL16hk5eudE9jU=
X-Google-Smtp-Source: ABdhPJwby7X71LgBPsxZKZBwu65q4/uVGSugtld1+rnmV3dmqFWMUrRW5DwQbLyww3D6r/LH0Q9yxg==
X-Received: by 2002:a62:8f0c:0:b029:1ed:8c8d:6910 with SMTP id n12-20020a628f0c0000b02901ed8c8d6910mr187818pfd.31.1614206034808;
        Wed, 24 Feb 2021 14:33:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e788:: with SMTP id cp8ls2000848plb.4.gmail; Wed, 24
 Feb 2021 14:33:54 -0800 (PST)
X-Received: by 2002:a17:90a:778c:: with SMTP id v12mr103631pjk.114.1614206034346;
        Wed, 24 Feb 2021 14:33:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614206034; cv=none;
        d=google.com; s=arc-20160816;
        b=LItTDDZvcybBYoZvwnsokuYQzW1ScLLxhlo7MgA5IoR3CJZXrqGqrE/ZkKLmWOJvQm
         q7cElkkse3WbunNMV8WPd99zECyGF2ujV+bAfvg1zGTkbE7hZivk82v2/MpZ4sB70Flv
         GRjR1O3KuM6nKUPLsa9gt5h1SLpuTfJAHUXUzliOq3+UBB2Dpq6+5wX0TnmSsuFGZ2Z+
         LeYBVSACrDSBFkECMhrjjKV02qqR5X9WYg9e5DCCuk6VcIH5GbHvk3fPjsCJssALVF4g
         GFEwTVGuVAJUrpuPLWCBW+K8CzjtAa1TL02G+tu7uIrOKOhGFznUmQPy5TPxw5G74UB5
         94Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=P2mfwpt99Qi5BsPHIn65vBU52kmUWbq+BvY+SSkyjvo=;
        b=PFCSV36XlqQyJXTQd+hAk61fWCDUv/t4zKYvi2pfUxEjOSF2nwRm4jkAXw7T0n0I68
         xxDS5v9qWqB9WmnEY8ffOm0V/STwlNu5x3qjQ/woBNeyp4cYBvaJvynqVZlLR3tEU/um
         58WkMg6g7IWjkXcA3biaBjPEZtcYFiaqqLhuqKHpclJRsFcdTo67WcCV6px8IvwPktAv
         DcaOBZuJYWGJ/H7juAOILGHcHVlR+Zp1m4FkbpScOyzZvE2s3KIUOyzjocM1k8eIpNPR
         3PhG+KWKT5f4D7DWelYaGo7Qon/+zoH5SCnxum7cjJNSSvHst6RnEsEZFs6wLuEg8Nu0
         f/RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pLQozVRH;
       spf=pass (google.com: domain of unixbhaskar@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=unixbhaskar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id i24si212971pgm.3.2021.02.24.14.33.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 14:33:54 -0800 (PST)
Received-SPF: pass (google.com: domain of unixbhaskar@gmail.com designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Received: by mail-qt1-x835.google.com with SMTP id v64so2761568qtd.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 14:33:54 -0800 (PST)
X-Received: by 2002:ac8:1408:: with SMTP id k8mr26857qtj.204.1614206033498;
        Wed, 24 Feb 2021 14:33:53 -0800 (PST)
Received: from Slackware.localdomain ([156.146.54.87])
        by smtp.gmail.com with ESMTPSA id w53sm2449986qtb.54.2021.02.24.14.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 14:33:52 -0800 (PST)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: ast@kernel.org,
	daniel@iogearbox.net,
	andrii@kernel.org,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	john.fastabend@gmail.com,
	kpsingh@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	masahiroy@kernel.org,
	akpm@linux-foundation.org,
	valentin.schneider@arm.com,
	terrelln@fb.com,
	hannes@cmpxchg.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: rdunlap@infradead.org,
	Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: [PATCH V2] init/Kconfig: Fix a typo in CC_VERSION_TEXT help text
Date: Thu, 25 Feb 2021 04:03:25 +0530
Message-Id: <20210224223325.29099-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: unixbhaskar@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pLQozVRH;       spf=pass
 (google.com: domain of unixbhaskar@gmail.com designates 2607:f8b0:4864:20::835
 as permitted sender) smtp.mailfrom=unixbhaskar@gmail.com;       dmarc=pass
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


s/compier/compiler/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 Changes from V1:
 Nathan and Randy, suggested  better subject line texts,so incorporated.

 init/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/init/Kconfig b/init/Kconfig
index ba8bd5256980..2cfed79cc6ec 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -19,7 +19,7 @@ config CC_VERSION_TEXT
 	    CC_VERSION_TEXT so it is recorded in include/config/auto.conf.cmd.
 	    When the compiler is updated, Kconfig will be invoked.

-	  - Ensure full rebuild when the compier is updated
+	  - Ensure full rebuild when the compiler is updated
 	    include/linux/kconfig.h contains this option in the comment line so
 	    fixdep adds include/config/cc/version/text.h into the auto-generated
 	    dependency. When the compiler is updated, syncconfig will touch it
--
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224223325.29099-1-unixbhaskar%40gmail.com.
