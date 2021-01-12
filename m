Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJPJ677QKGQEPMVMATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 960352F39BC
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 20:12:38 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id b131sf3469611ybc.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 11:12:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610478757; cv=pass;
        d=google.com; s=arc-20160816;
        b=HoV1FQLD1LrN7o0Xy4RVxhx5qOD+1UrJC8o2OmYupccqGixp8sxgzYIWlW0Y302zo4
         C+JcjIDBlYCDgL9oHnaRz4U1LbCKWwe4FnSTxC7hkmfGDrRTSAx+a9jrrKukchOo9Uu1
         KAhz+fbNxbitP9cVDVkQYvY3AblsBpMbxwqSiuQAk/7Pgk6FLqmcNNhVioWsKbGaYJW7
         9jeaPKJ0QSVN0tKu3L9XWbulSPq2XABISkO+6vPmNbZEfvgfoxg7AojuEjKCuxTyXUz0
         sTc1shyTBSZfHbmXuuV4nhDAYB6rUPgRid2JsMlwF+w52kHYrlgTmzfHTi0aMugH6B4n
         Re8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=tkhU0v7hPQ+Ju5L/BkDsxPA562KHR1FgqELrIXQzjss=;
        b=NTUglpcJS9j2XahIdU/Rq+wfHely00zTqhWlh4iYlX4Lg6Zl8nsqgV9HDlt+dobcwM
         XQlF/hT8gIJsLiX7AFW3QfIb4ilAW0WL129leFs6ve640H/cBC4BiJ2gG/ek6IWzWwSC
         tMIJ9A856Hu/Tmkv1ptt2tN0m3t1WyHCMsQ8tADhloNEARNSGpRpFYNKMiWXlePIsq+6
         2sk8MIPop3cihPgPwsNfpABh9VCpilWYdL1AGw37YjhGAcEniir4Sct3XNc5DBA8k0/c
         IXRQuDJhpR4SKR3CzAYgAEiPDpOQtUJUJvtEUdZp6o/AKkXdIvugejt7SmtRu+C7c+0n
         l3nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cpxV9/KU";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkhU0v7hPQ+Ju5L/BkDsxPA562KHR1FgqELrIXQzjss=;
        b=XQtqXGg58daFBKKFXGf3s27hTISz8BVucMBRvzjbha128m4JHdo2ybggzGGGhTObHP
         /ev+pLGmPyEMxupK9b8xLdiEIpLduNhD0dHNUUnx8RbX6av7F0WPUoOVyz6RASyAFyHq
         QjQgun0g483xsIFRaBpe/VDNjj6BpMbwaCSco0up+zDfPZ4WR7Dv0ZbKii+jkHlJR2em
         1zSj9gcWq7Um3+Ujx8tHcZyDTVGo1lU5sz0kq3qpk54YbTD2ASbuy4wfqEDaMnifn7J7
         3nliybJC69sCCP9Crs4U9UhSl5NjpoQJzj0zDWFAZLTZBTUeJ3muznO9hM5YqbqHHhsk
         i8gQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tkhU0v7hPQ+Ju5L/BkDsxPA562KHR1FgqELrIXQzjss=;
        b=HBYEXdXXERL2pVJ0qxoxhN41ulsdOAz92kuLOTbquHD3IsnuClGZ1Ux2RAGF7HFacT
         urZ2C+cPeLwZsZGKMzV2A9FmRUlRHfsfjqXe20djeVunAhrmwKE7B2QkMKiZoaCsgwjV
         92YgeBICeIM4rmKNj0EsuCPfeb49Kn1hv/v/YMEzg3pdlWF2rQUXaYDDROJcXH1c1U4G
         47O66XqeJ29+6XVvApmEti+5kmFMMOWq6W1MYRzsjeRhE8rGS/eERFPTale4ZdT2XU3L
         aaiWzt9IWfjqDfB8hJNA51fKL98kHG3AFkNeXJTO85OdzK4v49hDC0IXCTB+onq14/re
         5Wdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tkhU0v7hPQ+Ju5L/BkDsxPA562KHR1FgqELrIXQzjss=;
        b=t4JLnplimWH4P1bWvEN+q92C+cWDww2iJnBhgBNTfvYLuIskyml+kH4s92uEuczfsV
         349fhBo56GWY9ryCAk10hTlAe6CvBtPEiwCQne9V+YzALJ6Yw/alNe0MA6M7obpKJ8gv
         uadz3NRwFEq67oZdZJ9Zc66ZzLACiYC5mksKFXgqeUXlGHhWGJFXw0NCdw7Ic5tkJ8DJ
         FwKOjlQVGny3iNv967b58LoWozhKI+br3hxsQ+5AcGUNXkc5LLVkLcgd/lsSjOGmuN9A
         4bfbfJjfAYY8UFOfBln2Z0L24YQxq6iUHBuCJHM5Wrn3n+rId/E4zTJpOPnlhx6rEnks
         AHsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zz4JnHlI7UbPdeoMH1U1Cjoefnyf5yHSnds3psyRO2l9qQlsZ
	7IqBS696UFddVCI/pgT++4I=
X-Google-Smtp-Source: ABdhPJxmDZmC41aueakBHxNrua6Aohnv6zzgyIXWrcJmscUZFBLHdsj0/tLY+H35RES6CjySnzJw9g==
X-Received: by 2002:a25:1002:: with SMTP id 2mr1429033ybq.410.1610478757636;
        Tue, 12 Jan 2021 11:12:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c802:: with SMTP id y2ls1998104ybf.7.gmail; Tue, 12 Jan
 2021 11:12:37 -0800 (PST)
X-Received: by 2002:a25:778c:: with SMTP id s134mr1334406ybc.411.1610478757318;
        Tue, 12 Jan 2021 11:12:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610478757; cv=none;
        d=google.com; s=arc-20160816;
        b=HON7Dny9iBKRO81u7Yqfscp98xTCpcv6eT1hoEMo4NeN+iCYD2IBcjBS1zrBqq4HxS
         BrpI1BD1CCoAEiEntCkjuYzmSI4SLC9oYJSg3Q/NMptuusBGlesAeW3iMYhnDXd7gpUM
         q3ViWYAR4g6IX3iPEnBP7iq4WhPF/7xA69ZmrPQTeMHHfsB3rhn2PdrwWQIenX+LkuBF
         0SnytfZlf2AMCyijZFbgbvfF8xVdSzKp4NTtvjZYXK2Hm3+Myeu5eEJpLtWTOg0oHMU0
         uSRV3eA490/g7tIx6/Opmk3POBcgsZGYlFigHbKDQ3ajAblBKkeGK3yS/uoyvatUg1eM
         UlzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Q26h93gSS0y9iR+Qm0MkHYb24X55fLtSwxVQagnZbx8=;
        b=BE66wZ/LeU1d644xvSHwNNBTxAF0LQv2YGII1chOzKEfMUIjqwh2XX9eSX5dCS3WfV
         +zWZs5ezMqZ/U7vfcXxdXAHlKergx/hhj0lDGnEYpbTTLJzFcFTtUqLydG80PT0sfnnz
         5GOStANRnW8fhASUUvOWzVb1W/J9POc2XRKXI4LwnnED7DAHUMRdl5uGeICZv3mjJYCy
         6RCvxkxUUcQ0qkDvnEMu2i0BVi91/2t3VmOpiRvPJbd9J3vlKqQPCLjykh+d//yc3dzx
         nt1ZhUtOk8ZNxMvTBFlIPk4/cDPJZlDQ+9xlVZoC5lMdJB4UkLZr/74H/ty8amUa9MYh
         XL8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="cpxV9/KU";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com. [2607:f8b0:4864:20::72c])
        by gmr-mx.google.com with ESMTPS id e10si450049ybp.4.2021.01.12.11.12.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 11:12:37 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) client-ip=2607:f8b0:4864:20::72c;
Received: by mail-qk1-x72c.google.com with SMTP id z11so2891877qkj.7
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 11:12:37 -0800 (PST)
X-Received: by 2002:ae9:de45:: with SMTP id s66mr866170qkf.197.1610478756993;
        Tue, 12 Jan 2021 11:12:36 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id u5sm1861674qka.86.2021.01.12.11.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 11:12:36 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: Dan Williams <dan.j.williams@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-msm@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] dmaengine: qcom: Always inline gpi_update_reg
Date: Tue, 12 Jan 2021 12:12:14 -0700
Message-Id: <20210112191214.1264793-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="cpxV9/KU";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with CONFIG_UBSAN_UNSIGNED_OVERFLOW, clang decides not to
inline gpi_update_reg, which causes a linkage failure around __bad_mask:

ld.lld: error: undefined symbol: __bad_mask
>>> referenced by bitfield.h:119 (include/linux/bitfield.h:119)
>>>               dma/qcom/gpi.o:(gpi_update_reg) in archive drivers/built-in.a
>>> referenced by bitfield.h:119 (include/linux/bitfield.h:119)
>>>               dma/qcom/gpi.o:(gpi_update_reg) in archive drivers/built-in.a

If gpi_update_reg is not inlined, the mask value will not be known at
compile time so the check in field_multiplier stays in the final
object file, causing the above linkage failure. Always inline
gpi_update_reg so that this check can never fail.

Fixes: 5d0c3533a19f ("dmaengine: qcom: Add GPI dma driver")
Link: https://github.com/ClangBuiltLinux/linux/issues/1243
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/dma/qcom/gpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/qcom/gpi.c b/drivers/dma/qcom/gpi.c
index 1a0bf6b0567a..e48eb397f433 100644
--- a/drivers/dma/qcom/gpi.c
+++ b/drivers/dma/qcom/gpi.c
@@ -584,7 +584,7 @@ static inline void gpi_write_reg_field(struct gpii *gpii, void __iomem *addr,
 	gpi_write_reg(gpii, addr, val);
 }
 
-static inline void
+static __always_inline void
 gpi_update_reg(struct gpii *gpii, u32 offset, u32 mask, u32 val)
 {
 	void __iomem *addr = gpii->regs + offset;

base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112191214.1264793-1-natechancellor%40gmail.com.
