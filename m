Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJGTXXZAKGQEFE4RC6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAE7166EFC
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 06:24:53 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id kx17sf329606pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 21:24:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582262692; cv=pass;
        d=google.com; s=arc-20160816;
        b=I3Nj7yhXGjoUEymDbPD3Gj9Zi1vw4r+5Rfhybggilkd4brVw5Ogayeovvcd1heUa4v
         j8OIxHqnrpU2aXtRHmeN8turZGgo19iTm4CqRSnUCSRbLbu0zAuvL2qlV1vEfmHCdhAg
         q69eB2xOKhuyIh092IbeR+fxtO3PDVKyUa+vuvZtbCaVtzT1NwtQDAwxI+p+aoJCWjVY
         IVFPQW3UmBHnVxUt2I85fN0pVBVIfkEDL1vD/Q0NnGinVYqXxdY21vThW2DeMWihxQ+a
         Z45Oa2jCFxE+eM6mC6Q0wWusbQuSVFIi72XSd5A2g9cea0qSwKFvBHnv7bxmGa4BUX0k
         6T0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=C667X3C6qUVtvvQLJumvp6K9YZcmIFcZr7k5frwUP9M=;
        b=raI7AU1OT5DTZbyaSfU4/XJrQbede7fkkqPLGqZyqIs/iXkgYMCe1fhgrvDk/P4x6E
         nRjTYrQ6eDDiuJWyjfizIcJWeQgIu4mcbfIyyP+AuLCz5EmRJBDlLhpYE438n8fudLml
         9GEIH2hbCVOn5LnUGs67YDh4s3FxSA3TCpP7yjX8+wzP7AalRHGFQ4WBbXr/HAz78TGm
         vAxad8NZTYtQR0V3If8xE9KVw0rVrXypWeFVIvKY6xYcIzJJfq6Z927zQep3ViZQ3nSR
         o/rby6XpuUHN8Rhc9kXSphSLwlkr6YQtUz8cKnNzJ6yiw/HPCHVKmybdS7ddsbj8rZJe
         TQzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HBd4QMBc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C667X3C6qUVtvvQLJumvp6K9YZcmIFcZr7k5frwUP9M=;
        b=bmJ00dtHEy0B4dTOAZAzti8uqa2Tl1B0QvsJxlmqjoPlOVguAFDhrb17PLLNtyeX5u
         KtVNETxpqBu14BFvY9/Ne8+8Kuj1ybYsc7CE6h5z6LCuFbhC0X3geQygwkH8KcybXzhG
         SWBNBkS0pJvUa3eXhNEsv5+gU1FvVVMoax++8EepSUU3R7NdZ6ZlrALBzWVFh0wXeqwW
         umzVNMv/K5/NGY1S8hmniNFCIhE9IN9D3+FNRD9SojYDCKpHS27HK9Itvxug9WydYCOl
         Eehpbt7QsvfRXrzXPKasBWXnwfVmhzbtQ2L8cLdfdwvaTjJmYlgI7bDAZt0eY5LnvhW5
         kgbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C667X3C6qUVtvvQLJumvp6K9YZcmIFcZr7k5frwUP9M=;
        b=PaW/MNMDZQcvn2Y7xNjsXMOlzSX4qASj2Fm8KA9gWoe4qNFKxfj6USq+KlVHwOPTDu
         as0UP4zhMPU/cSkPc2mvbJTIZISH+nNT3XiBa+ALA4/26cGWUNMZ19t4EM0F4XgClOZr
         BnhUbb7RPcrDH8bS+7xFlZYZCZc4qrb9PymcReE6hQdx1JAE5n0qrPIEHrdmbtbujexE
         Lzry4s/ANGbeNzqv/I/vwYzyhZJo1O+cwK6sP6+JceQfzR8iP++67qDMoGM6PqnpEHfW
         OvSBZqV8AQHtNCOIuZEdqPt9+eRPy2Rpcv29p6y1fqY3OW127zDBSjATsG50IjK9uJHn
         c/cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C667X3C6qUVtvvQLJumvp6K9YZcmIFcZr7k5frwUP9M=;
        b=LgU4vYpYsqMEYj7ZBOVTVfO3G5Iljdrrj8VhHyyvKrkYgj73wZV/5zxi7h9Yu+wi/4
         MP6uQdmJTx09CwjBNLEWj6TI7Ic8dnz/mQkGqVAAmDb8EOcEGMATB41LBQ9URmP+K+9T
         j2SsG3FPqFD4TXE18lPB1eAk9Hozju7EoO9NeNz/V8jGPPPvCyUhCXTNry6rSIG4cM9J
         DbzHEejuD0omrssoCxHtiLjvtqX1cq3K9wjcagnorjF6Cpw+FCfNiJPUDyDZVpwWoXI3
         DtRcWp81Ru0a+oqC3iG9V8aJB4SjrHEeklQ8WT3iq3pWvL8arxvjurY8RIKU9pC73m3M
         G9+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQF1jx1Nl6EHRQPHB9+e7rCoos/Jh/ND1Nc1RfYyCKBeorRV+o
	6RgaJhSic0pMVBKrNjmOrCc=
X-Google-Smtp-Source: APXvYqxvVMRAxz82Q0l8+x2AA1U+6/SM21xyRVcMkaUd6EeO3MngfhICxcg6mKfRkdAydg1IJ+hTlw==
X-Received: by 2002:a65:6912:: with SMTP id s18mr12670433pgq.231.1582262692225;
        Thu, 20 Feb 2020 21:24:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a1:: with SMTP id q1ls401805pfs.9.gmail; Thu, 20
 Feb 2020 21:24:51 -0800 (PST)
X-Received: by 2002:a63:3c46:: with SMTP id i6mr37345672pgn.413.1582262691753;
        Thu, 20 Feb 2020 21:24:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582262691; cv=none;
        d=google.com; s=arc-20160816;
        b=U6cD3FmAuOela5V/IjsTXBT1DJcDYc6lQPP63YlUSI6kllD9WD6AbQpn6Bct5uvbbw
         zHsUkx0ikQqct4DF4ll/QRN4JSIqXltzCy+++koFC0Y64N1LPp3/mUV6ZZj8f9h+bDYJ
         yRw2PJLmAYRxZ4GqHV+1a+RN9rYRPIrYyXX1/gBcU26aViCMWCmfnrg9L3NtpDCfHwc0
         OkoH5/FmVDdjeTbWkVwJSDIm/C6HxOxdsSJ7AHetEbB+czHUXySVrYLAUl+EbbXTDhkG
         X/oTgYXqIH+j1GpqQmbH7ojagWHqiMLaF5KAc7WbGT6z3L2pi7/uVtVeidvffMar9ix/
         s3zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=x/k1sZ+cnmOUANpT53mM2H5yfgMY19H5epCa2pIy6TU=;
        b=FSsV6ZcQGlO/004HcRctSxdLt+ytwHvJAQNBlA1SW6sHN0EGze2h24TwNie1/NwLyj
         mvwCv3RCgIml5kOict6Noa0X1iqJAEzBP3Gm1qe1DANbXh4zJyWPjc1lhUYNWVAaE7S0
         mi/HJBd3kfqh7TOMohwscCVFxjF/d3SeGlNUvdEKipk3PrKTQxcs2wj0etbRV95muJvk
         /uveuRWP+rC2KTHjZ815ZFg3vJ7Ttj7wcbEH7ZS1cVJrnECSThUGyRC0yNrgZB609sUT
         Zpp7LeYerOwF0oGXTBy7iYac8Pvh/V5hCX7lmSWgrAjJCJlUG2Tx6WLHlhEeE4wO2oVc
         IMIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HBd4QMBc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id 12si30593pgx.4.2020.02.20.21.24.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 21:24:51 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id q81so494361oig.0
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 21:24:51 -0800 (PST)
X-Received: by 2002:aca:4a0b:: with SMTP id x11mr582391oia.37.1582262690999;
        Thu, 20 Feb 2020 21:24:50 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i2sm661408oth.39.2020.02.20.21.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 21:24:50 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Saeed Mahameed <saeedm@mellanox.com>,
	Leon Romanovsky <leon@kernel.org>
Cc: Aya Levin <ayal@mellanox.com>,
	Moshe Shemesh <moshe@mellanox.com>,
	Jiri Pirko <jiri@mellanox.com>,
	netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH net-next] net/mlx5: Fix header guard in rsc_dump.h
Date: Thu, 20 Feb 2020 22:24:37 -0700
Message-Id: <20200221052437.2884-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HBd4QMBc;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

 In file included from
 ../drivers/net/ethernet/mellanox/mlx5/core/main.c:73:
 ../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:
 '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define
 of a different macro [-Wheader-guard]
 #ifndef __MLX5_RSC_DUMP_H
         ^~~~~~~~~~~~~~~~~
 ../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:5:9: note:
 '__MLX5_RSC_DUMP__H' is defined here; did you mean '__MLX5_RSC_DUMP_H'?
 #define __MLX5_RSC_DUMP__H
         ^~~~~~~~~~~~~~~~~~
         __MLX5_RSC_DUMP_H
 1 warning generated.

Make them match to get the intended behavior and remove the warning.

Fixes: 12206b17235a ("net/mlx5: Add support for resource dump")
Link: https://github.com/ClangBuiltLinux/linux/issues/897
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h b/drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h
index 3b7573461a45..148270073e71 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h
@@ -2,7 +2,7 @@
 /* Copyright (c) 2019 Mellanox Technologies. */
 
 #ifndef __MLX5_RSC_DUMP_H
-#define __MLX5_RSC_DUMP__H
+#define __MLX5_RSC_DUMP_H
 
 #include <linux/mlx5/driver.h>
 #include "mlx5_core.h"
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200221052437.2884-1-natechancellor%40gmail.com.
