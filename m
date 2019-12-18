Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVF243XQKGQEYTRSARQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id B4092123DF6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 04:30:29 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id t15sf681757ilh.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:30:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576639828; cv=pass;
        d=google.com; s=arc-20160816;
        b=f43iXvWBEdmDoMQZf7um9gUiaO2tPrin3e3/MtUFFRsHDeUWwo/XiXTveKy3oV74Pz
         kBMopxWbNg4WGwLBHMn3mni+qmVueYgdC55wno44HMf4gmX5RHtTQX5bW/FdHRdjhNIt
         /WFOltGXmo+kCU6h3pJ6ZmNYWvQZQwJ5jQIWaHlSTjKotrPEOlylPlLR4J6PnhazY03w
         f3Zx+tBSgyesyr9cS5kFLy0dMEMX0aOpukHK+omwyj//X8CKi5b2Xpljp+pIaHHGsVdj
         db4m+dTAVm9UfXlX8eb0XZEQrMmuZqSW6RYtLkL4aTBhu/WT8ol0xfelskOl72tnKhMC
         aCYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=q8KpPz5A4uDGvu9/mfano7CEQuK/JJ1+/VTXy3fohSI=;
        b=j/5OOzhK5WE9w5lbkgMLfwjt+2ccwjxhwdJqufftp15IbGcPMwJ2EV1LgqYHybR4mo
         f3sqejElScfCJoQ/30sEgmtRZhtBBWbpNujhIaY/T2vt6Eqe7OmqmtyuS9I4ZXC5c6C7
         eQyDZnOUamYUV1loqF0VnmD/s2wD5izWruwI2TpYUHx2EHKcrO1ipCJKkxKYqwIXbNDf
         psC0PSiNCeisuZk+KnUjBbLgBQQ2MZQDgCiCCbXKzcF3I+/dcbvwDBLAPpisCROhPHbA
         KVErHFpyfOGY8TVRh6fzCYSvKvS+/Llt1FqIRJhj60EsnPC3tRYAanHP+IMLNQeeuUpR
         VRUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r7683Xhg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q8KpPz5A4uDGvu9/mfano7CEQuK/JJ1+/VTXy3fohSI=;
        b=pP9tX8b1p3MUJxPkBfd6iFCEUYwQVIyos9h3BqoCL+1qhwilavQzwzucF0gLzBBG+x
         92ZapgW7WlB6bIj5FMkmDZMBfYHyVnAFPvXDQBNTcx069BudVtPm6BFtT88iSPWk4wRA
         idikLKztbQDNq8AsEzcdDavSagPDZTYPnY2WSBTXyzZhrjD0HK19t7PR9cKhwpfLGTVD
         pv27N2UbThggKKnBSRoDQ0gRIFj4k0xL8Me7gJGIZye4XQ0DFS+6VvzhsDlhfWDNay3z
         YUuxLJ8MEpjIY30pwuwTss/ybrLzR+2ZeroXRPOwjijgOHUqC53neSiL1s5IVPVuj+XT
         wFgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q8KpPz5A4uDGvu9/mfano7CEQuK/JJ1+/VTXy3fohSI=;
        b=XcyA0vKEgnHPKO+zpqoHuaiW0x+91G/iqCrHg7ivObpr1egdh3h+atWRuNhYv1Yzkr
         DI13ae773F55TyXFr5fHVNZ3x64jeELldNRlvgpND+ra/2YcXVLokL3RtVOAGZkjitNB
         dFFsTHsf/61W6JqXWqVILcG9bqTnE4eRlTGYxPkPF8a3WDYywKwe6Nt6/dOxpaA5Qzo0
         WWlcpScntgqXrQ25CQ58iHatv8LdepafaguEPbxVXuzlfjec5EqLGCAI7yyoc4kX8xu8
         ZwcxVJBNZmCvJbkjY9Urj6PdQg26D56s8D8bXCmzGJVtsANxQP5eVuCBQBVf6ILn3CQv
         zJuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q8KpPz5A4uDGvu9/mfano7CEQuK/JJ1+/VTXy3fohSI=;
        b=TMd/GZGw7ukvdwEmoHqk9Qt1NaW9ij63WjTa1u/gmzLiTpwlvwk/pBbv6DV+rdjiAH
         lhfjNAbEpLevl3OcHBPVx4MwDRsf/FlyOX4Be2Fcyxa8O3HFlnL9263kq+Zma+q5XLYB
         0uYTmi0jtzRkW35rK83kMkVEoCyLeHH0kAH5TADTopr0J5+Yo2jKT5iTlq1KcMNlJ8cV
         YGYCyQ+dT5PBByW5bCEP6Pv0PtHTX2LlgA92L94TifT6pvpWGcH9iP36f2UjHCX9QMHe
         dFfg73pfh8STQ4f1tBTvg5RilPWpwyiRovwZxsxSQnkfqLtRJAi+9xBS/oOZByXagtNj
         mp7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjulMEtarM2CwHU4hkc9RKumWEElgWy/KfHrqMC3MiBCEyv4TO
	x3us6XUyc3eb0fEqlocP48M=
X-Google-Smtp-Source: APXvYqwaYkr/EC24dpiQVbS7EwtUNiZ3VM/PHuB9JNHlVAeRHnedMYVlO+3zPiRrSEw+b8gBj2zhDA==
X-Received: by 2002:a6b:6b19:: with SMTP id g25mr24786ioc.137.1576639828433;
        Tue, 17 Dec 2019 19:30:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:607:: with SMTP id x7ls98362ilg.14.gmail; Tue, 17 Dec
 2019 19:30:28 -0800 (PST)
X-Received: by 2002:a92:d308:: with SMTP id x8mr1245164ila.42.1576639828125;
        Tue, 17 Dec 2019 19:30:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576639828; cv=none;
        d=google.com; s=arc-20160816;
        b=VoVXQsPia4qg98ovcJOa6mhqe+wmBKuHPSjPBnLgOKAAckiDMKtJmnmPhLsSaOTE3t
         hDuS5ZugGG2tQpMdtEUO9S/Nmzj4Bc+mkwz7JQGNcewocLIeJLDynbtTFmB3YTMJbANd
         hMOaU+WCYXhv/iEMThiL1p71+6Y6Gf4ee+vTroD9Vt+g7oWIMPKrq3LVsXxmNsMOEV3V
         hkvIvfyp9FK0JoOTFd/9q9C8gFEkwQo+tcvuObwM9o3B+LCvrkfs5/bq3IHfuhC+/Xpw
         t/EQ6BRLLxvkBxti5hTfWtLxh1EUfgn1j+3qUwi1kiJtRQXMNeEBDQWRoSbCYlM/jKCf
         Hy7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=qr1/j+fdN8RUPF3Ke+iWBk1FIjTHPDLsVp5XYEGSUAA=;
        b=UJhjIBQJmmFWWXkDRm0l7PCKDncoLI95Z0Jxhol4gsx6u7Az6VQPnULwv852NRv11C
         M+Ev8VU2hiGwlyTeVYF1LZN5kD0zyon1s/aEgAKf85PB0k+qRzlxe/SZz2HUey+Znk3q
         hGlTJUmpoKLa4s4/ZPJXwTCeDucjfaq1h9xZGtddr525biwlBBMNgxypHK6Kd7+4sgJ3
         8XrNd+YzNaCixEmSjNyP8LUGhWnZ5G1IFGRtOuhf9/QVrfpZ5Rjrbgu6stLzkVc1of1k
         iK3yiQZkJrxqLHFg6W+HUf6GPC4qBRgL58278aXkE8pKoBkcRVGAIkH9xlCm7KmYA0Xh
         aBlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r7683Xhg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z20si61500ill.5.2019.12.17.19.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 19:30:28 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id p8so571178oth.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 19:30:28 -0800 (PST)
X-Received: by 2002:a9d:3f06:: with SMTP id m6mr188385otc.268.1576639827663;
        Tue, 17 Dec 2019 19:30:27 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id f142sm348395oig.48.2019.12.17.19.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 19:30:27 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Lu Shuaibing <shuaibinglu@126.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ipc/msg.c: Adjust indentation in ksys_msgctl
Date: Tue, 17 Dec 2019 20:29:34 -0700
Message-Id: <20191218032932.37479-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=r7683Xhg;       spf=pass
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

Clang warns:

../ipc/msg.c:621:4: warning: misleading indentation; statement is not
part of the previous 'if' [-Wmisleading-indentation]
                 return msgctl_down(ns, msqid, cmd, &msqid64.msg_perm,
msqid64.msg_qbytes);
                 ^
../ipc/msg.c:619:3: note: previous statement is here
                if (copy_msqid_from_user(&msqid64, buf, version))
                ^
1 warning generated.

This warning occurs because there is a space after the tab on this line.
Remove it so that the indentation is consistent with the Linux kernel
coding style and clang no longer warns.

Link: https://github.com/ClangBuiltLinux/linux/issues/829
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

I assume this will be squashed into the offending patch since it is
still in -next:

https://git.kernel.org/next/linux-next/c/658622e448a6e6a6a69471daeff7e95e98d34ed1

 ipc/msg.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/ipc/msg.c b/ipc/msg.c
index 22ed09ded601..caca67368cb5 100644
--- a/ipc/msg.c
+++ b/ipc/msg.c
@@ -618,7 +618,8 @@ static long ksys_msgctl(int msqid, int cmd, struct msqid_ds __user *buf, int ver
 	case IPC_SET:
 		if (copy_msqid_from_user(&msqid64, buf, version))
 			return -EFAULT;
-		 return msgctl_down(ns, msqid, cmd, &msqid64.msg_perm, msqid64.msg_qbytes);
+		return msgctl_down(ns, msqid, cmd, &msqid64.msg_perm,
+				   msqid64.msg_qbytes);
 	case IPC_RMID:
 		return msgctl_down(ns, msqid, cmd, NULL, 0);
 	default:
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218032932.37479-1-natechancellor%40gmail.com.
