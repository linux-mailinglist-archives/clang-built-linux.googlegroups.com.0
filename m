Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY7RS7YQKGQEBTXMDBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id BADE11431E1
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 20:00:52 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id x127sf325774qkb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 11:00:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579546851; cv=pass;
        d=google.com; s=arc-20160816;
        b=vkpW0VIEWN/HHewZAd8bqOKifU+YXzuOj3eKyalL1RzNf3QnrpU+961+ttS1mvXBqe
         POaiUKHLPRmHSI3/E4chIpBr8l7RH9op8+3SoU2/KoTdo7Yk/atGcBFMlzeXB8/usVrj
         4aGq0mRH5TJ/13ge6pQUOnd1n5XKdK7GGG5Whye/bDY5QTCvsY+em94nrCIxLO+pXnfE
         /ndZtM2EHpfAqNHknuTzLex+IiMeq64cqg+zxbFx6KD0PdHqjl2A79HadfIZcFUtIGXh
         GXLGX+WW5zE4fYgZtbCcaLCpTfU44Yc4LNkcTIuUGzHTw7d/zj2wzuxH1Mr6EPoVb/v5
         IXvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=zBKV9Oj91emjMPC65UhywKwGkPHDIK8QU7YkHNocCaE=;
        b=dnLswErotKcgAPVnhzhHs89FpRQWuIsOrSuktlnZEAvUuJ0W1hyJPDiDs/H6W0+aH/
         StSxvBx+zIxDMc0guyBMqKhdym/n1UvJ8nNdfWxXyDkNxPRt16ZIaCQBBeIIxlXdy0r9
         VrkAwOlbtpJsrB8f9ZlIga5evbRXcn1J1cZOb7d26c6HYfuU0LakI1LPqYiMN8hL0NgS
         MDM+jwQCLenx7KVozGbUJN/QgUCutbNXR8N82/sjXlpKaQUQX3ssO9orEKWPL+UzI/Mr
         0XYjJuWQX05aJyaVoj/dvUg+dBwFLpo4iZ9kpcqgSAk7umJN62LXZ6qaPas4SR61QOhZ
         xWrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PgYpMeXt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zBKV9Oj91emjMPC65UhywKwGkPHDIK8QU7YkHNocCaE=;
        b=XzxLYQTWDVPbW+TbEVUXXyhWFVv69tOtnXNTfxjDpXG77B9Vzu9xgKNtJobjmkUB2x
         gmu9JMtIbtbR+FF8OlVYRzuDKMMtP7WerNLir0G4SSiN/pQLnNqm1XRbqM2VRAABtHey
         w7g8VACiUjCWHQYerdgAfFaMWB++iDId5qlPUh+6ouWJpk05LGFPfX9CGCRD78p2fiFc
         Vfj1VQPkbdGIYTvB/rS3qhoFhZb65kd1yPwJcwz4uLBomzopMdrmrq4VUGS+jBFX7vCK
         iQ/DmApf8GPiwb96tvIEGZ+mFwka493y1g+d7vss/7olqeOzTtGQumNL3Fg5i9VGusLO
         rTCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zBKV9Oj91emjMPC65UhywKwGkPHDIK8QU7YkHNocCaE=;
        b=rZ+fs4F19jqxp1HFv1iXJaJxnkemM+mJoffjKM55SROr5GHItQhWDrVvTa5aGFdCFn
         3fwjOyzuHII8QhfvdHde5MS8BIB7+sZcCOtj6iNb862HFxyozrA6A49I7k9+xaZtzk6z
         NsvlkxkViMnx6uugdGD9M7NLOqb00qwl1ljzsBs9E4uChGNkedhJOEUzrndhtfCR2Q0Q
         nKOtdmiAkH3CXUTv7R9tCq7sTM34Wa/WPg28TL7/UNjYKR9lMZ7qdMtdkA/K5XqTjo6l
         A767UPty5S9Y3QtAE4UrHjCRbhWlWaaBnSsTcmNAXusYk4CE+e3OhMqVO2d/dsMh3+IM
         1CFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zBKV9Oj91emjMPC65UhywKwGkPHDIK8QU7YkHNocCaE=;
        b=DHmJLiEDujwhCqqfBUCA9sXQ92TQsdjbBjVJzzxOnKxnmsuBypC/ZaTaTBMc09Om7I
         X04BjpdEvRU3ahVqIwGHsL0dciW7/zgKMRm5nCOlk+ZmUl1vuoc38zH5lM2UwSGVuov4
         ECOLvMb7lWiYp4hVUVNW1tBtOaX30Sg7f75t9X6EFn91f8FdRwSLjQU/j5HH8i5oF7PD
         V5zsRD5UUlOz6jGK7IoM7qeNZjxJQ3ECaByGwN6d0TSz7nBPTcP6X5ao3iYgm5+ndFOU
         IVGv+EaCz9+D8OVdDSad0srJtr/OO/7JkVKeHezuDX1jNvDmcN6NcBzPa/zQhbkz4s/s
         YxJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwt2G/wqLxgmGBjBP0p+ny1+a9PFewWB+eg7xIXL9/zqL5uKE5
	jTMbo7qnqAAUA/t7ueYL4+U=
X-Google-Smtp-Source: APXvYqyZclKKOM3FDHxSiHGZawJuFY9aQO289NtfdQAvuPxyd1ReGrG948eJb0cLMhnFtFEcSTonLA==
X-Received: by 2002:ac8:37d3:: with SMTP id e19mr754708qtc.361.1579546851654;
        Mon, 20 Jan 2020 11:00:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d612:: with SMTP id c18ls3851974qvj.0.gmail; Mon, 20 Jan
 2020 11:00:51 -0800 (PST)
X-Received: by 2002:a05:6214:162c:: with SMTP id e12mr1111904qvw.3.1579546851304;
        Mon, 20 Jan 2020 11:00:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579546851; cv=none;
        d=google.com; s=arc-20160816;
        b=FlxpeIro/hJBL77zNgHzIFuPw1o94OrMg4Al0GT4wJu0t8N5/i4wdlYsQuDBTG16oH
         wMZ9u/IIF2jav9jkEcbpLDKRqEfxLes5ccST1cnZDicT+zmB/SSnA11rC9v/Wc/q0QKi
         DmtH1nYBIN6nLi57A8fCTkzYXYQvcmv64TEla8dDDGXJ8qNz17/gx0EypcrMktdK7kQj
         jKVGZdvNmDeigwSwV2jP3H4wZ6ZWulTv4kG6pkXF7tItH6GNiELiYkfYAxOf2JvgLozO
         hNwfH/fivrNdLvqe+XykR2WZfDkl6oqV2SZiIbxppO7+UjYr+NXcXXwMmtGs/MRp/fMU
         /a6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=PDpQAF+i2pq2uHsVICQDd7TG2O7Wyb3VR4zR7cxgZZ4=;
        b=H6yBxBcLruwH2uRzsD1DIuPyhPvMb3ElMPZM3MMD4AlJA42bqB1ZWR977RnipSP7jO
         VX5jNhxo/ai9mTN7TP6Bc+XZBYNrtrQzIMm2Unv3sd6EEg5Jt9AqUTFA4gBRYabiH9DC
         NYgT6Z5axdUgv+MdPIY5w6ead58znHTKFVuiSz/rrxmC2l90/c/928fll7sPevGXYNkf
         KxemuKFDa2UypV5IQ1EVMfUI2jQnfng5HQnMcIMuqmpx39upR0ELDwjN0aQUbXGJHd9F
         81P817HnfuTgUcLJr4seS7b566mloweOOVdPFDt98y6eFIw6GgU/iKmaFGp2l8EdflGX
         cddA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PgYpMeXt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id g2si1591320qtv.3.2020.01.20.11.00.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 11:00:51 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id h9so664791otj.11
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 11:00:51 -0800 (PST)
X-Received: by 2002:a9d:7b4a:: with SMTP id f10mr747171oto.4.1579546850655;
        Mon, 20 Jan 2020 11:00:50 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id i20sm12641352otp.14.2020.01.20.11.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 11:00:50 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Reed <mdr@sgi.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Thomas Bogendoerfer <tbogendoerfer@suse.de>,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] scsi: qla1280: Fix a use of QLA_64BIT_PTR
Date: Mon, 20 Jan 2020 12:00:21 -0700
Message-Id: <20200120190021.26460-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PgYpMeXt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/scsi/qla1280.c:1702:5: warning: 'QLA_64BIT_PTR' is not
defined, evaluates to 0 [-Wundef]
if QLA_64BIT_PTR
    ^
1 warning generated.

The rest of this driver uses #ifdef QLA_64BIT_PTR, do the same thing at
this site to remove this warning.

Fixes: ba304e5b4498 ("scsi: qla1280: Fix dma firmware download, if dma address is 64bit")
Link: https://github.com/ClangBuiltLinux/linux/issues/843
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/scsi/qla1280.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/qla1280.c b/drivers/scsi/qla1280.c
index 607cbddcdd14..3337cd341d21 100644
--- a/drivers/scsi/qla1280.c
+++ b/drivers/scsi/qla1280.c
@@ -1699,7 +1699,7 @@ qla1280_load_firmware_pio(struct scsi_qla_host *ha)
 	return err;
 }
 
-#if QLA_64BIT_PTR
+#ifdef QLA_64BIT_PTR
 #define LOAD_CMD	MBC_LOAD_RAM_A64_ROM
 #define DUMP_CMD	MBC_DUMP_RAM_A64_ROM
 #define CMD_ARGS	(BIT_7 | BIT_6 | BIT_4 | BIT_3 | BIT_2 | BIT_1 | BIT_0)
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200120190021.26460-1-natechancellor%40gmail.com.
