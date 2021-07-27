Return-Path: <clang-built-linux+bncBDG5FNNX5ECBBUNIQCEAMGQESORD4CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C7F3D7833
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 16:12:34 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id o11-20020a5d474b0000b02901533f8ed22csf4595110wrs.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 07:12:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627395154; cv=pass;
        d=google.com; s=arc-20160816;
        b=SIZtATZcEatwq0Guk1Fa9u/H0xY3tbUHs9szBCsgLvIvr+8Rgv50t/iZ0DD/Z0BkiF
         gAt6XxgoiW7zRxHKVw/j6Ysg6/7cW52zdeabVm3NjReQz4eSi0mQ7tNqxbA9tBQB0WBE
         izx/R3XxAV9Ch8QaBCuMOjxSWnIcWnOD2BvGWT7F47jQQQoZOd6Q9cWH1I02P+41LCU5
         27mv/KKI9LSbhtbxNR1/0hK36eWUeoZMXV65EzUHo6oOoVWS0tklgiQcILyx4cKnSyMO
         3U/rP8tdDK9rsCfNG2Ez/F0bOv1zwBjens8eBp8CQRROH4pBSBJqCeIgzb817uwHdTVS
         5VYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=cPeRMEeIjdxqaDHOPrYPzf0hmt0adErJmq/O5y9UT1o=;
        b=LxQ11906UHkHkZAdYPDJjz0XMOCoUH4LOBrH8ZyO8TxMJSKG8mn8fPgy/WF3b+c4U9
         BLDfBogFMtLZHSNgJKTNcsssP56w3QSfWJbAtLg//hIHupHTpcKVj3oPxOPct5jNTi9x
         gCfkF2aUanEZzahHT4HoO90JNrHnEjHpPjR9ccWy5/2KxCJn8makUx+Z9IVDr/JWhwHt
         PqbR0AErt0cDM3qIqHOIq5x0WcIANovD9sHBr7T+WLdbbFqH+PFFK6W8DVuq0xPt1nbj
         MWT6iDV7OpDQDcqlGn/wrZrI9ZshogMnMQrOR+Cm73E1cKzR1/oH4ipH220LSNR3ty4/
         7xsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b="tKqva2x/";
       spf=pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cPeRMEeIjdxqaDHOPrYPzf0hmt0adErJmq/O5y9UT1o=;
        b=V71nCOnYvL1sCg0CdRB1WnoGgeHA425LhrrSpFSbh7jCnftecSYWc4iYT34oN9gcGz
         EMyCnIgKfld+qc82V4LL9OXe1SNK3N15fNg3bGJ2g0M1KG+SKVCWN8Jx/5sdj2h+kphQ
         mBullLvRBjY6yiJG/SWVIwyszeAX+XDGgVazibyuUauelJa5Bn4uhRbyQaNPaZzQda1+
         PIf4D2INLFa046lcKjt5QLVC4EAyDrjNb3LgOUn1QxMn8m2cPT+9eEqAKAm9nVHw58k4
         BP3xk4OgQ7rZJCiWqUQVHu5dhymTxx3k8TK3crVwHKUD1bnPhlqmdrCYIAZ6dGhsx992
         3LHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cPeRMEeIjdxqaDHOPrYPzf0hmt0adErJmq/O5y9UT1o=;
        b=dhQ+TLU6AgFtJFzFb57pF8P6inFCNW9+r+ErcABqifR9O3TAWqpCHVx80uFY4G8YAU
         yvZey3pbYVLQjUWFCuoGqfCGMv9ObqVw+s7Yr7ASvqyrWg+MWh34Ey48zfBbmgrPXJ78
         /XjuXb9WU0EzXz9LwvrLGwgpTpLmpoKk0GpLLpkc2dH8FuFbYYzqe8Wtc7opSUbk90Gd
         zqNbcg+uIj5qeLg3wuqBq/f8RG2NKY3B5YZ1EFhT8ylb9ie3TezHy7Qtagl+0mDQbSqm
         fsAkxwwBrsYii+nerVIyG4V6dCd4BA8fCvLni6xBQtxzVe0FDK3H/oT4gA/TkW6D9sUQ
         zC2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305mNE5LecN7V53wtrYnLCaiRPb3DmEeBh1zuKj6w0DOwXtIMkC
	b/3p4Qzh0xeA1ZKtO81DkLc=
X-Google-Smtp-Source: ABdhPJwFFrJdarEnYo9Wwas5M77E3diqyvx7viY8/radR3jBengpUwE0UqRocnbkqrXy2JqZ4n417w==
X-Received: by 2002:a7b:cbda:: with SMTP id n26mr22267160wmi.179.1627395154137;
        Tue, 27 Jul 2021 07:12:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc8a:: with SMTP id p10ls1570866wma.1.canary-gmail; Tue,
 27 Jul 2021 07:12:33 -0700 (PDT)
X-Received: by 2002:a05:600c:3653:: with SMTP id y19mr2102952wmq.147.1627395153251;
        Tue, 27 Jul 2021 07:12:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627395153; cv=none;
        d=google.com; s=arc-20160816;
        b=kXG+lO11+Xc027sXe95qQC9+bdCJMYHshRcSg/31TbEZYKMp7j8KKLD0c40PiVlyUA
         YU9eeUjLgSwEhSGfEtQgI8BhNytovdlKnxsk173cl+8jPVGilIv1J2BHQCwGNVUKGjcU
         Jfnh+IRcE0LaZ5zjvjySrGzhXwj41aThB//GCq+Tl5xG/9OSKZLzeDta+Jl3eAXtkK0Z
         Qi+WJMASLX++qvVemEX07WDL1nNhfN64EAQ2iCBW0FIYwqBNLLwr7KynVbR6Kzv9E6S7
         rkaIMljXsJgEmDgswJPMoWA/9WzYsHBxpZZb3YeDRlkR4wg4byR8Ul0ZxhyR7yGXnHEy
         GmAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=wxFe0uNWW9r8apP/FU5g02YgcMO4sIOQrIvQ0ldAwCE=;
        b=ufeG/ZXAgWG0PQKaEGOpIxHZXS6rbCNEI+s7nnswoXfE92j26SyhlD2JJan0RHIWmi
         0kAtsaMX0cHDPQjmEl5FMdPziRYC4Mjozwy/eBtS0w/iXq2zEvrnBcEe0fPquxIV+jCh
         K1eTOX7J1lGvuXqYDNPKtlDbzGz93XNGQX+Q3Qc05Fp9H1Qiw01YZHro6oBs3HcunCHD
         pjVhPdPv/anKrAw78nwbdpCCkP9xz7xnF55B5PFnAO1Dxs0EvuNC1wmwN5EWsaXrQlv+
         OPh/cJ5R9swpNyL1/BJ5gLIvbwW+3RGj2W6xp9kt66rGFjNh7sw4aCtAZTr9vTUy4qFD
         /3Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b="tKqva2x/";
       spf=pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id m12si137850wrj.4.2021.07.27.07.12.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 07:12:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Received: by mail-wr1-x431.google.com with SMTP id e2so15395638wrq.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 07:12:33 -0700 (PDT)
X-Received: by 2002:a5d:64c8:: with SMTP id f8mr25032728wri.290.1627395152923;
        Tue, 27 Jul 2021 07:12:32 -0700 (PDT)
Received: from localhost.localdomain ([89.18.44.40])
        by smtp.gmail.com with ESMTPSA id t1sm3403912wrm.42.2021.07.27.07.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 07:12:32 -0700 (PDT)
From: Pavo Banicevic <pavo.banicevic@sartura.hr>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	andrii@kernel.org,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	john.fastabend@gmail.com,
	kpsingh@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	ivan.khoronzhuk@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	matt.redfearn@mips.com,
	mingo@kernel.org,
	dvlasenk@redhat.com,
	juraj.vijtiuk@sartura.hr,
	robert.marko@sartura.hr,
	luka.perkov@sartura.hr,
	jakov.petrina@sartura.hr
Cc: Pavo Banicevic <pavo.banicevic@sartura.hr>
Subject: [PATCH 0/3] Address compilation of eBPF related software with clang compiler on arm architecture
Date: Tue, 27 Jul 2021 16:11:16 +0200
Message-Id: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Original-Sender: pavo.banicevic@sartura.hr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623
 header.b="tKqva2x/";       spf=pass (google.com: domain of
 pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::431 as permitted
 sender) smtp.mailfrom=pavo.banicevic@sartura.hr
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

This patchset is fixing compilation issues that are encountered in our usage of the Linux kernel.

Two patches are addressing compilation of eBPF related software with clang compiler on arm architecture.
The third patch resolves compilation of the perf tool in this specific scenario.

We are also interested in possible alternative approaches in fixing these compilation issues which could
then be incorporated into the mainline.

Ivan Khoronzhuk (2):
  arm: include: asm: swab: mask rev16 instruction for clang
  arm: include: asm: unified: mask .syntax unified for clang

Matt Redfearn (1):
  include/uapi/linux/swab: Fix potentially missing __always_inline

 arch/arm/include/asm/swab.h    | 3 +++
 arch/arm/include/asm/unified.h | 4 +++-
 include/uapi/linux/swab.h      | 2 +-
 3 files changed, 7 insertions(+), 2 deletions(-)

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727141119.19812-1-pavo.banicevic%40sartura.hr.
