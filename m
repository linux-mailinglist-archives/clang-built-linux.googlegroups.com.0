Return-Path: <clang-built-linux+bncBCQ45GVI5EFBB2W2WOCQMGQEPSXYROQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BEC3900F9
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 14:28:28 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id i25-20020a9d4a990000b0290304f00e3e3asf21719342otf.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 05:28:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621945707; cv=pass;
        d=google.com; s=arc-20160816;
        b=QHNH39CVMB20eTBDzwGcn9crbtOkEdgBds9+BXvQk4WNNOMD+DromcgX00J1rybCNL
         yRJwV7JOTujPXJPj9kjrPTrbVDv7OaZZO+UrikCroS7EBzURRsNcYbIVV2seo/y++/WI
         /6FjQVqBe7Fi/87ceJE2nj/7EYFEMhImDMHithBx5pyPw+KAsKhBxSGwqq+I1Ir9oWQ/
         kaJzhe1yHtWa691R8RXh0O1sdw+oCOk9tEhMn5xahZwMX/bywPLtZzfcCVObJjNIgswM
         4nJ0LV4Rt2vsd1g1DhZZHie/4Xu/q6HZEntnkrq9JQIJsMemvsxoLqIlziZXh+qAAZtc
         II1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=eNPkCRGAgnNsA1uPFUNT0h04qtr/atjOPW1s3Op3eeU=;
        b=AK5tNHBxD3y8sKD5i6xOBKDt009HwllD9IVu8cdf6ZeCSQRwOWy4X+nm+bMyYWSBtD
         I49BS0jl2+Usf17Orm4ByJZYcp/s3l0Q93WAnjw1nUXtQQ75dk5LrxWlEFI+uxgfyFXS
         nJuRjSh1kh5p50EyMKegXYt8977Lj7rg8Ngjl4s6uyaNnAiKyIUBSHhGt1VuloE+L+mt
         wMDPl8ZHQrEAv5gwpLqJ5hUfaq2daXCI6KeD/PARJLHTwy3XoHYArSZDhI5WQag9gCfq
         WJ+NUWV2xUKCAjW8+k5Iy+MhOiWFcWoCu5hRlfcVDxOitmhFLJUaG63f42MLfEg8JYvf
         Rd7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q4z/p4h1";
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eNPkCRGAgnNsA1uPFUNT0h04qtr/atjOPW1s3Op3eeU=;
        b=n3gK5d3KyMOlUthqGb4UAviwnY4fnUVTH6kFt8NEylM/MJAfM0qyugG4U2/osevyRO
         ueTXIPKV7iWWzvBbRg0Wa8JOYbxYNdQqRY5OAkJv7iDwzGA7zlwMRyKVeAgrowHpCAox
         GzXHNOCKyr0siPLa7V/e98PSHIoj+MPnyA6GbU8mXZnhAoEZSwcwRK0SIslAX3CCiKIO
         7+sVY62EeDSqJXR94n/75htLdwSW0F3GP+v7o6bmiGFHS3mXmYa7rLGfeVjGOzDahE+9
         Dn8XFSlId287IzIrG3ebOY4hU4in1GmMfzp7TkSgmRbrKYXxS2+Y8gIW27rP+YeYJrjz
         MV1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eNPkCRGAgnNsA1uPFUNT0h04qtr/atjOPW1s3Op3eeU=;
        b=XVPsqfJfqKabcP4E/OtxyVOVNrd04i5LKOT7+MUu85gTSf5tFnAB/OSjNjBtKPRG+T
         j0kLayFCBkSwls0r5MY/gT+IKmXSOfRRVOfR9pLiFvtW0p/S55U8qe50OdJHCr4aDMhM
         +JfY6unSp4lQeSr2JNgNEGpd3I8aGpEuzWzfPlSTJHuP48Rg3nxKG/HVScvdwyzaJF64
         OMBbupMpOSdzr0r7UNVwldQ1oFQhhg5++b1l/RExY8Dy46aYT8uJ1kzJKNtOjW8ZXLXE
         aqub4f8T4uBwgXQsxakQ31/PCOyN6h8GqrIO3gA/7SSG0uXe41D/NYmOodpaN1PQIrcX
         /aEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eNPkCRGAgnNsA1uPFUNT0h04qtr/atjOPW1s3Op3eeU=;
        b=EosX8/pKW0k+I66bOyr+9SL5zjptHsihajuGs3Nu0V2WQ6JL2yYMaF7P0U9l75Sl6O
         ruxuPusbSFKCi/IuTVfBLF4f2fcL8A+V1x8JK/nqMp6vZ6WLGQElJc8Uds9qnKuJ3SlS
         WglrXQDoDdyGh5u03HAmJSQN1PLfaKNcF2Sa0wh4fLInIiPe92dqyaBUgH8IsrDwRA2a
         QTqPFZvcybTnZGIiqBsjDQMbC/JSP0aLhb7hNFHP/lqZgq6jtDdYZrDOIvqPdxbkAF1Q
         CGXy0nCnGSI0iCPY0ZW/BsbMCpQqyk0jjR5X/hhJd2CdTXlnPfvq8h8UrA0SqPmPdBst
         UtvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KSzi/uRgBqFxFeiwZqPzTBHcpqQOXQtI8ozEl5o1NBo0uhwjF
	DdnajHEY56bByU/YX2yBXUM=
X-Google-Smtp-Source: ABdhPJyfLU/vVwKdJWc0O+/wRMO3khr0BcR1ckLh9XLVYEDKSDPijceIJCNexuDCxtItR0IbfEVYbw==
X-Received: by 2002:a05:6830:90f:: with SMTP id v15mr22409138ott.223.1621945707022;
        Tue, 25 May 2021 05:28:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:641:: with SMTP id 62ls5078864oig.0.gmail; Tue, 25 May
 2021 05:28:26 -0700 (PDT)
X-Received: by 2002:a05:6808:14d0:: with SMTP id f16mr2617560oiw.156.1621945706708;
        Tue, 25 May 2021 05:28:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621945706; cv=none;
        d=google.com; s=arc-20160816;
        b=b/KGN1Xy7AQ+8B4OsNS68ZkgLvbFAs+GQA11ETlm9pb3qk+gZMP0EyKe4M5w6SrBxy
         G2L311jakuRoSIYsUxRRz+OMqwV2L7MIUjHQaN0mqgXYowfXNRyy2M1TLzEhc12JSCL5
         1O1aDEPhwHsKw0ZQb/ruaTi//BKCJCvClJ0K/zkYlxeg1HV6OqIyMW6mKtpwoFPG1ayK
         Gu/Rmw83+GDCLfeHCOetNaEW7BsUL7UdMRNT42qiT/rWxS43+ESFTojQjVLMw/hFdtft
         GGIS8xAy1X11WfAN4XS9fI82iyT2R3mX0GLJVHI0xLPoE7NBkgv3GYP0Ccg9VJGVo3Cj
         Z6BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QXYHSIX/xJjOruv2I5WhLwdataTV5jsXvkBmXTL/M2U=;
        b=AxUeaXIzAztfG+km1ioLtPurazIjm3PjIZ4YNLkaLFb4JVmFoGxLKzFjr36uHr4i8H
         SZpm4VIgGgzdnE2Pa2OktU9wbMPFoZ60xr2VEMdBxIANc5dZ/XVEJLZlAjODHcGWBhLS
         kh0H9QPr8ZJUrcOsyo7EvT64JlDnzsQFZ5FkFC8wrflvC5Ec3NnhJENO0Wwnx4ud9mM1
         wr8iIcFhVTEM5qldK34oUPECf/Izfg0c4Gv5FJF4XGhvBbtDGRGioqpBbeV4tx8AU5ot
         Nrvtg3BLBx3fhq72x0EgkS/k3fvjErs/jZC8y9ztXrpFjgxoDbYnZnMHDHVhffjRecCV
         V93Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Q4z/p4h1";
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com. [2607:f8b0:4864:20::829])
        by gmr-mx.google.com with ESMTPS id w16si2362004oov.0.2021.05.25.05.28.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 05:28:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::829 as permitted sender) client-ip=2607:f8b0:4864:20::829;
Received: by mail-qt1-x829.google.com with SMTP id m13so22901834qtk.13
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 05:28:26 -0700 (PDT)
X-Received: by 2002:a05:622a:183:: with SMTP id s3mr31922015qtw.115.1621945706375;
        Tue, 25 May 2021 05:28:26 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:a465:c799:7794:b233])
        by smtp.gmail.com with ESMTPSA id t6sm13292572qkh.117.2021.05.25.05.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 05:28:26 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 0/2] fixes for yt8511 phy driver
Date: Tue, 25 May 2021 08:26:13 -0400
Message-Id: <20210525122615.3972574-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Q4z/p4h1";       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::829
 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;       dmarc=pass
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

The Intel clang bot caught a few uninitialized variables in the new
Motorcomm driver. While investigating the issue, it was found that the
driver would have unintended effects when used in an unsupported mode.

Fixed the uninitialized ret variable and abort loading the driver in
unsupported modes.

Thank you to the Intel clang bot for catching these.

Peter Geis (2):
  net: phy: fix yt8511 clang uninitialized variable warning
  net: phy: abort loading yt8511 driver in unsupported modes

 drivers/net/phy/motorcomm.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210525122615.3972574-1-pgwipeout%40gmail.com.
