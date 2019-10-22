Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCXTXTWQKGQE6NUXNIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id B68D1E0A5A
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 19:17:00 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id v2sf10872981plp.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 10:17:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571764619; cv=pass;
        d=google.com; s=arc-20160816;
        b=omNalMN+5Balay39/fPbxbLNhw7B2/EzE4oTWZ4/Q/WT3FYPfLHhV+XhJ/Q89CQ3Ey
         JRddDLqiSPQ51xpvRrRxnpugsoeuutP9nyZ2K2omJvYirTGuk9+/ABoERd+PgG5Tit2a
         tsL9meVmK3IK0hxk9jLuIAs2khRKaefwWWUPB9aUWi3/gp6/BQ9GY185Y8Pw2b7Rl8mM
         +IoPsG1QWmyGnIuiS+1FWR2OR2tuNmHJHeiUah7UJVDqD1m0XvWO/HRtRPwr1S9gDG1Q
         jbg7X79XSGtDCFT1rtPKkwgdx+t554tPsEHXTN/DjSeOxX+Z/0wGxafL/F8K5ry126Ue
         JIUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=QoVDZY5E32ZTfZGBfouXj/aTdwKm9uMxhy2Qjfy8kOA=;
        b=cD9wlmg6yvBpIQHFJrBQEgVQb//o9UJujyv3jiBl+U+yLZ5axXi/vfIrcrFaLuy9OX
         vjsTUO+jT+Vy8bSwq5NrAlNGSHKF8KAuHHMjlXd2s+KMIHx/PBYqR3iVm5NjgmUlSneH
         yeNDHT8OxCoNok/0LsA3UsZl3hjxgdxjpzGfeGZckofv0UVYK20vL1oPUsjDyc7hZh2a
         T6NkyppA0JMI6bwZWvVUfuzWyB55/gYb+OSGJjiPEoI6Zy2um/H7k0qlhdrY1abK0/m0
         ZXzryQcscizFwpuAnYO38zhoOZvwWZjuvF/pMMhCXXiBlW9tZr8W81vmkLCCTEYCfFnF
         D5UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DIwKEi7q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QoVDZY5E32ZTfZGBfouXj/aTdwKm9uMxhy2Qjfy8kOA=;
        b=FMMzG23QFxBlOT0Lt7z54y2MPSe4K2x3JSxDg7bEzHYyoJcZTbI/rdjLeGy6UCmq5H
         vzXr0jpEyWkmxXVqfpVEjaNmPBM5EBvAAgKtD/eyO+FWQY6eikHmUpDyd8turwKCc7oo
         b1FwLsvnNzkepheE2y4YDi+sNPRARqVzsNfh2qXujOlySbdBzi2JbQrWVlfDrMY+Itw0
         +gRYCpF0g6IkW9gFViWl6C9jyGajiswiRyW/qCw72TV/t4jGZAsa6KuWW0vXnzxY1MHN
         ypM/Wr/EzYagw6csGt1jpaJPLZE4JkF/LBCzrGe850wBW+7RF0NmJHUzD4X49D+2mxnS
         1iGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QoVDZY5E32ZTfZGBfouXj/aTdwKm9uMxhy2Qjfy8kOA=;
        b=cqOXX7gV203l2L/ZIt1NYMDSqcyMs7YiRTos5lQUNnzqAeFGk5QJbEM3OHDAe2vKd/
         gCc4dZQemaO+RtDoO3+W5zB9WItO4meV9MbLVLy30QZ2W2rTcElJWJedg3m4Z5pR/ua1
         d0+ALZyI3nTgOwjgOmK+9inugtfRQPhpn0OblmH+E7pJBdn9gIW9aDgmYR6rd0G/X27n
         r5Yg4Q1WiG2yftL3b9eAqgZkbXNOvczk2WGHy52KAf9BkQs0hfkJNzqTP/cIi7UKl6a3
         FvsUScLZIcaRzuNGpSnHMeKGmYcW7DOIpWU41UkT7QvPlZOg9HXpPAQt/P7boMo3vFvy
         AQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QoVDZY5E32ZTfZGBfouXj/aTdwKm9uMxhy2Qjfy8kOA=;
        b=iP2HBh8/o+MR/dXPIbVAr6Sb++Hd3K1X2Sz+e2FzvAAOn+Nrn7ieOwkGS5xAlsiHlo
         7jRq2I7UKrO5wBCa+loTo3y9Xw/A4MHQlF8Qade8la8y3lkKTKER3yHiYMOxRXG9c/Vm
         2XHNX+GdMUdMxdR1N4bfN+eMaLlRNTUmSmwSnJNayw6Alg1ftOeacFGNoynpA74jfZtK
         Gy7syCbZqOmnvWALK5ijq16YCMlSGvloU70q2RGqLHRXOAHdCKkbQvE1e+E9gi69ZU7b
         bns/yJeeT8EsGR9pZSmriFTn9ifcViWBOdJNph0osiVp+d3iBTE7Ms7ifPdQV+uxDFcu
         oohg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV+YkMwZ70wCDhH3xoFhK4qlpdRd8juSQyyNnslpg/i6T9p6eTe
	yurtXQJF+hx/q03QZh0Day0=
X-Google-Smtp-Source: APXvYqyxQ3HG0dZ2MsPHWyVg3j0hIqINNQcTfda6Uy30P88ry+xvjcGxtOFtb1acP2wMAwSRTDMsLg==
X-Received: by 2002:a63:6287:: with SMTP id w129mr4945740pgb.162.1571764619037;
        Tue, 22 Oct 2019 10:16:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:454d:: with SMTP id x13ls4640196pgr.12.gmail; Tue, 22
 Oct 2019 10:16:58 -0700 (PDT)
X-Received: by 2002:aa7:8249:: with SMTP id e9mr5528829pfn.118.1571764618588;
        Tue, 22 Oct 2019 10:16:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571764618; cv=none;
        d=google.com; s=arc-20160816;
        b=fh6j5ZHRfKBlneaknAijrqcQDvGyioNloL16az1GZx0NV0EWmAQfwqIAwOlG8C20It
         uMpHDddf5DAdWc3jMjl3BIS41jFBBw3eCLtgOjX9moWTdBv6vomDzSdKZ+NXvQ//w2an
         l0UmwBcNDnEF5Ywt02xZuGU1T2/bO9Zk4LLl03f/HB+tK+NxbN1QyEmNJVLtSrxdN99p
         ThXkG1KjB2XIng2qw56YJMHdDBEwzSmo13otzrC76ZD++p3HJSC1WW9wNPMz0JcGvG6A
         sY78hgB0LCS2rPcM1jsQu71RwCe+sIxFQMy0gbfZbj4fUrpJ276DxIa4C74eFfr7Yhlc
         PocQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=N+r28++QmE97B3YyUbwqqgILQ6GkScGiNmGk0rbaE4M=;
        b=syEPG85Lfqf78Oy/lfJQYQduauL8c6w0zom6JH1ymvuGLkZoZcMZqX6aIPYb7FSCdG
         NgznKh2Yyax4frB1YeyAqcBEQjVwk+Aa5ifdRsoM1GLWr1s5YGfsiBLLnEYi6zT3nC9m
         uumG/ciP+yU67+H43x9wQcGwnJeY6MoQ6iRZJim/h2SNyJZm+UoZCAugJAWKNY+RTRfz
         yIGrCzl/IlANCxXIUVHWZcqWGyRlvhzC+nolDjW+5YU7+p9bZ1F6dLIzLvWjtAPRtOhW
         UvTuxAg7uHohENhoYQ1x0Ync/WlOIGbBvIdzJtM+JpyVJmjnst+a5Xp+I5yRf7stX94p
         b0iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DIwKEi7q;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com. [2607:f8b0:4864:20::331])
        by gmr-mx.google.com with ESMTPS id t17si248806pgu.1.2019.10.22.10.16.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 10:16:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) client-ip=2607:f8b0:4864:20::331;
Received: by mail-ot1-x331.google.com with SMTP id e11so14866342otl.5
        for <clang-built-linux@googlegroups.com>; Tue, 22 Oct 2019 10:16:58 -0700 (PDT)
X-Received: by 2002:a9d:8a5:: with SMTP id 34mr929413otf.197.1571764617978;
        Tue, 22 Oct 2019 10:16:57 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id u130sm4857224oib.56.2019.10.22.10.16.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 10:16:57 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Peng Ma <peng.ma@nxp.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Dan Williams <dan.j.williams@intel.com>,
	dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH -next] dmaengine: fsl-dpaa2-qdma: Remove unnecessary local variables in DPDMAI_CMD_CREATE macro
Date: Tue, 22 Oct 2019 10:16:48 -0700
Message-Id: <20191022171648.37732-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DIwKEi7q;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/dma/fsl-dpaa2-qdma/dpdmai.c:148:25: warning: variable 'cfg' is
uninitialized when used within its own initialization [-Wuninitialized]
        DPDMAI_CMD_CREATE(cmd, cfg);
        ~~~~~~~~~~~~~~~~~~~~~~~^~~~
drivers/dma/fsl-dpaa2-qdma/dpdmai.c:42:24: note: expanded from macro
'DPDMAI_CMD_CREATE'
        typeof(_cfg) (cfg) = (_cfg); \
                      ~~~     ^~~~
1 warning generated.

Looking at the preprocessed source, we can see that this is true.

int dpdmai_create(struct fsl_mc_io *mc_io, u32 cmd_flags,
                  const struct dpdmai_cfg *cfg, u16 *token)
{
        struct fsl_mc_command cmd = { 0 };
        int err;

        cmd.header = mc_encode_cmd_header((((0x90E) << 4) | 0), cmd_flags, 0);
        do {
                typeof(cmd)(cmd) = (cmd);
                typeof(cfg)(cfg) = (cfg);
                ((cmd).params[0] |= mc_enc((8), (8), (cfg)->priorities[0]));
                ((cmd).params[0] |= mc_enc((16), (8), (cfg)->priorities[1]));
        } while (0);

I cannot see a good reason to create another version of cfg when the
parameter one will work perfectly fine and cmd can just be used as is.
Remove them to fix this warning.

Fixes: f2835adf8afb ("dmaengine: fsl-dpaa2-qdma: Add the DPDMAI(Data Path DMA Interface) support")
Link: https://github.com/ClangBuiltLinux/linux/issues/746
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/dma/fsl-dpaa2-qdma/dpdmai.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/dma/fsl-dpaa2-qdma/dpdmai.c b/drivers/dma/fsl-dpaa2-qdma/dpdmai.c
index fbc2b2f39bec..f26c0b71688a 100644
--- a/drivers/dma/fsl-dpaa2-qdma/dpdmai.c
+++ b/drivers/dma/fsl-dpaa2-qdma/dpdmai.c
@@ -36,10 +36,8 @@ struct dpdmai_rsp_get_tx_queue {
 	((_cmd).params[_param] |= mc_enc((_offset), (_width), _arg))
 
 /* cmd, param, offset, width, type, arg_name */
-#define DPDMAI_CMD_CREATE(_cmd, _cfg) \
+#define DPDMAI_CMD_CREATE(cmd, cfg) \
 do { \
-	typeof(_cmd) (cmd) = (_cmd); \
-	typeof(_cfg) (cfg) = (_cfg); \
 	MC_CMD_OP(cmd, 0, 8,  8,  u8,  (cfg)->priorities[0]);\
 	MC_CMD_OP(cmd, 0, 16, 8,  u8,  (cfg)->priorities[1]);\
 } while (0)
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022171648.37732-1-natechancellor%40gmail.com.
