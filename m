Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBBG23LVQKGQEI77DGIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C47DADFA0
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 21:50:29 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id b15sf7858901wrp.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 12:50:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568058629; cv=pass;
        d=google.com; s=arc-20160816;
        b=n1O16ZneP0GEWtSF15WAGGWlvNc801JOJzO3KhsC+/9dT8tKmU7BJOHdBG//zUvBHI
         VhczFvptqqmFL+Jyb1xhbcpuVqdbDu+b//XZz1Y617WszTBnLVSZLscO19JZwBrQFP3B
         CHI+HoHcs0giKGKoLkZgs1jWC+YWlaiP+boiqqCYpa0V4OiD0vObAwU83GC5sk3vdWHW
         zlCOPCDQCbAFXoA1x/YZ9YlKTDblE50ushiVAmDCLUg1AgZ8sbXeBaaflXheyQTnEIhr
         6fsUaPL3tsJFAcNzyaiCbqsYXj711S0A8hJVkbvLwjGdYAWzgI4b54SvykL8Ax5FNQHs
         mnEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=aBzP6K6IGXnRh3rHI8ec8FYwluaVvDf077MVEF1YR4c=;
        b=ywFwgqWMZH5ZuIOc/tMnSPIh5z8zzlBikM1ROweVditQGtw9aX2OuLd2+pQzumUAnF
         2CDP1BAyIi5DsdgeEveWd4xuEiNu1Tslc8OvbZ9J30A4IC3eGrO1N0g/LuKS3p05/qpS
         3iaIVJ1Mhc3B8qssmSzfYJcw3WNOEC9dbGQ89xKiodXrFXbLD8NIuxstpAk93lthElu/
         4Wz/G6j3EENyOVcDnuMaT4lfwhE18vLdlVu7bFe/JQtkf18vVTNPeE2iZiJBiHQ4sLpY
         bGCebkBOyTM+gYzw7nbOJuI+U4xSt2HZ5AZ2oV2EoC2LN5ee9xNARYCUa+o/GUQDnknC
         3r2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBzP6K6IGXnRh3rHI8ec8FYwluaVvDf077MVEF1YR4c=;
        b=QHjkSrRy7kDXkWSsurnfLfxI6bGLGFB4PP4KJmnxYzYJBGL9SP/tp256AxuoJvXPdp
         tf3WqtBwRUSrkQzTb4XHvJSe5himC8t+vubYlDyUsmzCybd/pe1nTFdkUwqSX+VvymQB
         c8I6bsozqgWUyWuQxwduufYBQI63pSNnY6mGgjzc32/T5bX4zBhqGWatksv7NPOIOi99
         3zasYFdhqaZMj5tfsvEgvPNwtF/tPBJk9JkZy+ZBu5gEqVtZuELaVOiUClSTB1q5vXyp
         IaUBdIxw61aTjPf62Uh0dio0JV7R6HR08pPLwvQDNe0qpZ2+8dBb7FWm1Plr3V8bBBQd
         Q0LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aBzP6K6IGXnRh3rHI8ec8FYwluaVvDf077MVEF1YR4c=;
        b=fMErgbQPRoqzwqPQlS0NlgkARGO2Qobx4gsX5VceYXd5hSgevttIMFRE9pT61SrTrX
         9U6vyV9vgjDn2Z98/XA74CuXwP4uApdxV68JI7c0APLhS0cNipADqxnyW4nFqj70CuQW
         7OfWyldhmIMIgtCbDsfpADdrSDEbkOIU1kbOHQ6L2guiN3bX9d/Wcr7vQNrSmY4hfvtj
         EwZO/Uz4L0UKObXhJTnEF1DWDsuH6zzTBuAtq7MQS7BGvK6Oun8YFtzQbxqfdp5mXZd4
         S18dRi9W4G9wsWAqKQk42dIJkAgJkpyzF57bp+Y9OEiqIaAtyi4v9QO6FYVsWVaxl+Sz
         6nFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVFjtHeWTfCXlVTYpiKXzgUQpp9D8LOcYe0oAlJ6JSBiJBPxzzu
	8wekKRfkuRpEisqBNXnUrf8=
X-Google-Smtp-Source: APXvYqxzLAFT+IKCZWIAuBiN2hc6qWd4NaP+fcgqLGxFch8daLsTcPxdTqJindbWbBx9cwljcbQQ/A==
X-Received: by 2002:adf:d84f:: with SMTP id k15mr19049632wrl.70.1568058629047;
        Mon, 09 Sep 2019 12:50:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:630e:: with SMTP id i14ls4262474wru.16.gmail; Mon, 09
 Sep 2019 12:50:28 -0700 (PDT)
X-Received: by 2002:a5d:4907:: with SMTP id x7mr21507595wrq.72.1568058628544;
        Mon, 09 Sep 2019 12:50:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568058628; cv=none;
        d=google.com; s=arc-20160816;
        b=X6ycs5b8RBQw8zkoy54hvB69Qkeu8o9LKJXeZL3Pun1MwmsZM3pldppsBviublFDJ6
         EIuyeLkjYpTn4MY/h29Z3731sdipCuZXt/q+oVu6dVSvdOYn3MjZRCcnFS7PUSylgdKy
         Y32/EKpSQ0px6AKDAWkTWqkEBfgkD6R6+S0kGW3L+o9D5ACdxLG+pD+PG4mh2BmWUZUH
         yHIiI59m6gERNv9+08Yc0BNA14W/adOkM0zZZ05wOTXJMJ10D8MaWXUMfI7i9U4I1laz
         zWYYDkeaDmGjgRWIdkFcho/EiG5VLteyNcf8bejxQl3UlwR85kHTyVmxkGYcfkDZKn0/
         aUVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=A0OyucsRgG+ouclAn/FSKmIOUo0YzTPGytWyRs5id2c=;
        b=HVilH22z8bF0IREHVmg4cNZ5w4YmrCNTg6GnwEz82RO6wv9rTbV95kny+EjRGoK+G2
         OREBeWlIBqkulTYCzgGMlVJ1JzdzSCOaIABREnook+SKvFLkLpqPjkqxJjrPyCsMbSuX
         CzAgpegq2/CT6dEVd/A0WIllr3xEFP5LBDcbhu3oRUKs9nSA9w0uYH2zK5m+IV9qkQZ8
         IlbTrkTC6M/6HfvQe+OmyKhE65BQFdJcbMWN8R9ykt36ClO27UUrinbisMm/0JsPqCZx
         YK+eAX+DO06Ov12oK9TR/SA5c+xAE0saLVP3k2nkZ5njA8a0gFksuZUD7SgB5yoPM4La
         S4CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id m18si52491wmi.1.2019.09.09.12.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Sep 2019 12:50:28 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MfYc4-1ieHb10Yrw-00g3kw; Mon, 09 Sep 2019 21:50:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Saeed Mahameed <saeedm@mellanox.com>,
	Leon Romanovsky <leon@kernel.org>,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Alex Vesker <valex@mellanox.com>,
	Erez Shitrit <erezsh@mellanox.com>,
	Mark Bloch <markb@mellanox.com>,
	netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH net-next 1/2] mlx5: steering: use correct enum type
Date: Mon,  9 Sep 2019 21:50:08 +0200
Message-Id: <20190909195024.3268499-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:AK8QWmjsuWG4HEmhOqIpwd62ajWhj3F/CeXNzG050S7ptBNBv9G
 MqdkIwNGTfgOBb3ihKsasKEJrDoJT5Zpo74b2oTeKv2BSP+ZrVQCtd2Ta064gRzZTKDPm2K
 ijG6Qr8EmM6OgvYdfR/XW+NjnKJuh154KGpE67ARZl7J65uI9gvZpKtETCzORYzrENT1wEP
 TO5yy6EB2HYEIANJ/FMgA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Jvrju6h+dAo=:zHHY9sOoxpwZQ26Vvkc4if
 RPOyP48VcYi5WypqyVisjktfO79V97C6398/UTLF/+cgby1Pri2mSa0bvDZ9St/aBze/2+8VR
 DFJ86ThQP66LHMLZlV63Z4DadH+Gd+fiptytjrrBS3OEchEcoqc9t5PgXg+FRzz4vgEZGl/as
 6pDheKbt1dQtYMRmqi53hSCNEwHJa9HcqZAVLJT62U70OMEY0uLlvWJJL4U4esVzz0ipjkR5O
 Y8gVh61/ik6/tdbvLFYThYf5XMSp7rfFz87PV6Aj/seTudbvsS3CdM8ZJrutSAlY3lF5i4nmK
 8biTKWNB+Iw92WcfLEnYpMeOF1PFwN+Lg01hmv8PF70bZjoEBeh4COkVNqJS3Pl2/AGPYHI7i
 sYOtwSW3hVVzwivdit9efMiKY9lnQdtwxH6fy4f1mub3eFnN4mkE/JilEHb268Zk5t/wQpOnx
 2wrJKux5yK2X52EP4AhNVbTKsHBNzAMjpOvjlDwJASk8z5eIsiTV4VHnI63VokYZLOdcmED+o
 5S5OacwomwXgjmWYIebaLek2YtxqX3YS5YGHe76vlWSNL2hMhX06+HNbmMduM3hu5nlTPpHxf
 d7L6YSc6WwZ47ugS/0bg+Ekz2Tmtxuf8g3dXnwSY7cK8Rg66hR3YV0WrhTv3U4kXy2O0F6gc2
 4uixBzq3PQaj6uZmNxsWpfOAHGWjZWq1FT3wjHOLoKQXnV+v2qjrT3X36vt/NeR+2bzkwB6yD
 uqgRZmMNbp+aj+j7aKQNobYTCNQ6z/KSgZuar84PapThwn6T6+qCw+GgUTHov5RzQAEu9x2Kt
 KDamc3El9U5lc/xO6sFzdgkN8O90y9irglwY4Su0ehosjr+j0s=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

The newly added code triggers a harmless warning with
clang:

drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c:1080:9: error: implicit conversion from enumeration type 'enum mlx5_reformat_ctx_type' to different enumeration type 'enum mlx5dr_action_type' [-Werror,-Wenum-conversion]
                        rt = MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL;
                           ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c:1084:51: error: implicit conversion from enumeration type 'enum mlx5dr_action_type' to different enumeration type 'enum mlx5_reformat_ctx_type' [-Werror,-Wenum-conversion]
                ret = mlx5dr_cmd_create_reformat_ctx(dmn->mdev, rt, data_sz, data,
                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~            ^~

Change it to use mlx5_reformat_ctx_type instead of mlx5dr_action_type.

Fixes: 9db810ed2d37 ("net/mlx5: DR, Expose steering action functionality")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c b/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c
index a02f87f85c17..7d81a7735de5 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_action.c
@@ -1074,7 +1074,7 @@ dr_action_create_reformat_action(struct mlx5dr_domain *dmn,
 	case DR_ACTION_TYP_L2_TO_TNL_L2:
 	case DR_ACTION_TYP_L2_TO_TNL_L3:
 	{
-		enum mlx5dr_action_type rt;
+		enum mlx5_reformat_ctx_type rt;
 
 		if (action->action_type == DR_ACTION_TYP_L2_TO_TNL_L2)
 			rt = MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL;
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190909195024.3268499-1-arnd%40arndb.de.
