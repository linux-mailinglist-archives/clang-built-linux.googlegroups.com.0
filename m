Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2EDQTXAKGQESANOTRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id D944BEF4A4
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 06:00:25 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id w5sf3066110uan.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 21:00:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572930024; cv=pass;
        d=google.com; s=arc-20160816;
        b=hunBHgKURHx5L42qxjpz2NXAnLr4Gl+iBALdqr0GCbASci1WlAZPFDgiTTnaHJOlj3
         paTVPEQmMyw8sR1e0b3BUYe2Q1Xs7H5jS5FxaSZVU0QfshCl9460AoEscsnZYdaEji/v
         sM+CtGg7Ij9hPda4+eqeN/8L8k0Vyps5gn1uEGcpjMBsfOmmRopZZmA3XM6yrai8Byhq
         YcWw2ir1KUcG1GMUsfjgLjudDDAPJOtVb1cBXmPAi+BUy2sakd4Onu5pmJKRl9vACuli
         3POKoIh75uvYRWyhFDTXl56/RNvVIFm7k5/8mHYe0m70+JMDGBDYYp42o8hFFGqzYl6h
         zAtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=oVXlaQO1tg4wb8TSWvBV0WLCdJIrYVcOXMMivj4ZeFs=;
        b=fViD71Sqtpoa3xVNf+0PRRfeSt0nwlS9+uscDo6RXbViZc+A2sp/pbrHzKUeLCNtut
         ff3EoLARzTvqw6PXuNgldUE/O4O1QRz79NRpRyM7hKxNAcyClBY8vO9TpXakpiiFEeai
         oEgOZxgi834VHadbyOJ6/WeN1YgwPNsFAaz1/aaZSF8oGBL0BWP8IPKVQM2BUh5CsJOC
         ZfkwqPqmvJVySVqGzYRY/yeWSzagubZFPtrSbXWZ3lMUltYOroxZtph43RfrDfQPQNMR
         pm4uop1D1/h2cqlJEvtjOW9H3cltWeyjR8eb3eX7yqiL3Xsh7drXOHNjrHAAzuF+6bFn
         cBsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YFEhjgdr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oVXlaQO1tg4wb8TSWvBV0WLCdJIrYVcOXMMivj4ZeFs=;
        b=DU/Omp/+A8kvz1JI/jE+KWt5h4IQ01dz7NZKZL6vR/GW3HqawiBJdYcbpIPsehyhyE
         2LmFTKg+xdenDl6vf9iKd39OVjqfPbWvLcfmaaCUv64mU5ipwVgDkB8p5Q5wQ6UPMlRP
         JQF1coFVcbhvCwuJoFMcOtlIFQjAvknTNyjhv2X2wB3X9m8teoRGyajArMq8Ewa1jmXn
         FbUiYoIaCgJkMemqYRchq8WyHk7WQhK0c0PI4CjhCArKSj7uVjNl6M7zoWnjfzQ414DH
         cSpzDp14c+IUXLT2JgVlcngaKUg/c0sj7LLw4w3GJDSWsFvpy++8YPE9Of2hiKdy3lxg
         GwCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oVXlaQO1tg4wb8TSWvBV0WLCdJIrYVcOXMMivj4ZeFs=;
        b=efq3rz0L563rKiEkZQpYc4ItxoG9gLI37jmm9uBC8W189td3xI6IGgYGjo8NiKXFdD
         hRKbcB0eDU548hOkqIhCEunGokCIl74l6hd6sgQy+HYAwx78qXMX16xNh2iDed1QFm28
         esbMxrlUzLGx2jm6/jMt3NRx65eh6dSsA+iIK5KyWten3ns7kuPzu35RslFvXzPQKg6U
         zyunO6WJr2IF0M15OHQm+t15BN1YKzP7xcf58li56zWWWbKBwv0Ysyq+BATBMOu2NNDH
         DgF40WN47QheJKkd6KPnR2ZErMkxcF+0/vhAz454HvppJamO9dZ3TEngn7z3diIoFmaS
         xS2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oVXlaQO1tg4wb8TSWvBV0WLCdJIrYVcOXMMivj4ZeFs=;
        b=iFXcBL0wWhJVoPPTdMhbNVQr8wbQRt2sEZREnXRXAJDLBfMemK1YdueBs5hOyp3OoC
         HTW7A17Bq3Vdj3bjUGiBleqP2otaOQ5MhfGdbMEpuueAgj8a5RHXcrRqTOmQSPZT/+ws
         mjrGx3ik1U9g1Rf/0eVlcs/yQ1TXagwTQf/mq9IYKKQM+hABrZMEgIR1HDyGBtpu8A8d
         i5/EGXdFvN8Rc3gyfHORoT+JfdziNv+XN0knF7+UEEKYV15hDu+lQa6l2jMCpt+mLkSf
         jasKxtdo7c5clsPPYaRP8wPgrBX83RC6PuOcj2k4iEEhSTuC63KBDr85EzdVFAK765v2
         OA9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVB405lV9V80chZdZQrWOM4LTJgLAQSH5ivLIpSg+1tvJvkIms+
	Ptt6XEx0IYjZKCrJ4bZZbuU=
X-Google-Smtp-Source: APXvYqwzFGDTddqHeJrAFVINLa5O/cX9BYgSeTckXfyOhE6eNX3DM7qlEWMyGnCk3hrgEQKuprAW5g==
X-Received: by 2002:a05:6102:2145:: with SMTP id h5mr14366059vsg.144.1572930024704;
        Mon, 04 Nov 2019 21:00:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd08:: with SMTP id f8ls365694vsr.13.gmail; Mon, 04 Nov
 2019 21:00:24 -0800 (PST)
X-Received: by 2002:a67:f055:: with SMTP id q21mr537215vsm.231.1572930024389;
        Mon, 04 Nov 2019 21:00:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572930024; cv=none;
        d=google.com; s=arc-20160816;
        b=MusOZ1ec01O5v6mR1AVoMV0iP4urUn1C3tMT4Xu2G5J081Jm4PaOjEg3uRCAalv6Qh
         3szJ+2X13XNalxcgP0bCpqOTmh0jBZSlNE1UnxDCvSoNrk3q2mqw6TUxDqjH9K5U8rFe
         8aEqbnOekKOyRwroc+B5H7iMAWzx/xHg70yWUnI0ldXAt8m85I9yUl/YsF5ybxoza0JY
         rBrNdWYWKRh2+dI6szQK/m23FrYRTMBeRrtTp8DeN1InG0cZJYi7C54wep7lcoeUscnA
         z8LK35WfRmNjdN0EAeZ4IbT9f5wzJrH97FjmCcS8QZZIScJ1WwaQVBccBe3ClvfhC/Ju
         WCYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QGgGQaFEZRAOWraIxNIv4g2Bv5QWueLj5WXSnd8kx80=;
        b=Rsnpv73h2ArVcIYmkG5hz4Vw7z2G5iFvmO+6P7d0D+0wb9my2H2B0+hoEnEmw5/vCk
         5ZaxiVoYdRcqKtwlyYe5nPaRSgXoMRNU9SJA39oewtqdWnuD6euAG7ORtNpLyCL19Kkv
         Gqw5HubXJ8gPEolHsNPJlKkuK2ww7i683O0ri6meVZ0xuybqIBGi9b/IRjX95/+/aKF+
         FApNxKqeRDKU3YTVhG+Okc5wp2Qwm5vbK6wYqK7tP5qWNMQhBVBk4I8QMgEae37+z1d4
         E+l5g940PmIc5rgyRX160rl6AI/3i0s4tw3THreBiH/lcSFYQZ/Hw+b9zNvvDEl3woPB
         Omeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YFEhjgdr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id w26si65870uan.1.2019.11.04.21.00.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 21:00:24 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id e9so12479201oif.8
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 21:00:24 -0800 (PST)
X-Received: by 2002:aca:1e14:: with SMTP id m20mr2381639oic.20.1572930023573;
        Mon, 04 Nov 2019 21:00:23 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e93sm6089553otb.60.2019.11.04.21.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 21:00:22 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] media: v4l2-device.h: Explicitly compare grpmask to zero in v4l2_device_mask_call_all
Date: Mon,  4 Nov 2019 21:59:08 -0700
Message-Id: <20191105045907.26123-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191024201240.49063-1-natechancellor@gmail.com>
References: <20191024201240.49063-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YFEhjgdr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building with Clang + -Wtautological-constant-compare, several of
the ivtv drivers warn along the lines of:

 drivers/media/pci/cx18/cx18-driver.c:1005:21: warning: converting the
 result of '<<' to a boolean always evaluates to true
 [-Wtautological-constant-compare]
                         cx18_call_hw(cx, CX18_HW_GPIO_RESET_CTRL,
                                         ^
 drivers/media/pci/cx18/cx18-cards.h:18:37: note: expanded from macro
 'CX18_HW_GPIO_RESET_CTRL'
 #define CX18_HW_GPIO_RESET_CTRL         (1 << 6)
                                           ^
 1 warning generated.

This is because the shift operation is implicitly converted to a boolean
in v4l2_device_mask_call_all before being negated. This can be solved by
just comparing the mask result to 0 explicitly so that there is no
boolean conversion.

Link: https://github.com/ClangBuiltLinux/linux/issues/752
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2: https://lore.kernel.org/lkml/20191024201240.49063-1-natechancellor@gmail.com/

* Fix typo in commit message
* Add Nick's Reviewed-by.

 include/media/v4l2-device.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/media/v4l2-device.h b/include/media/v4l2-device.h
index e0b8f2602670..8564b3227887 100644
--- a/include/media/v4l2-device.h
+++ b/include/media/v4l2-device.h
@@ -431,8 +431,8 @@ static inline bool v4l2_device_supports_requests(struct v4l2_device *v4l2_dev)
 		struct v4l2_subdev *__sd;				\
 									\
 		__v4l2_device_call_subdevs_p(v4l2_dev, __sd,		\
-			!(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,	\
-			##args);					\
+			(grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,	\
+			f , ##args);					\
 	} while (0)
 
 /**
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105045907.26123-1-natechancellor%40gmail.com.
