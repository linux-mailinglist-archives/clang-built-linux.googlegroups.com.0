Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBNH23XVQKGQEBFOQ5AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id B0660AE852
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:45 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id y7sf10071640edo.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111925; cv=pass;
        d=google.com; s=arc-20160816;
        b=C19ONgxSA61tPHS328u6V33YYcBPeqVhvQE11pciERU1L86Qk9DtEui7+uYFcKAwou
         9HsrbETQWxTyi84JP4PfYQw952Cqbw0kdYoaLEP6D9Qnk6Dge0Iqw+3mbAjPvoeK1dlc
         WIlVAz031i7piOMbBXB0nIrZESp45hWk3j4GuQbsxhJrR6aRi/+2FFyIIXUwFt9rZ7Ol
         hRvaTPrHNTmD9+SQsrAZV3ps+GKHmz+45ghqT/uZs3KZ2eQ+U7qnRk1CeJbs7o22ywY/
         bBR85ezcbgdFcsIfOccxAnDQ+b2y8iXM6XBCsPOrW4CJVCd+45S4Ks3FaR6HAYKh0P0N
         yFuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=48hwNgxYr3E9Vy823JXv+HIluwIkuolhNSHaSYAzMxM=;
        b=AVi9gVR4P6hlkNR5z7nRHvgmZXtwWw/4wR2e6qci5Wz9FyaysaIvKivVS2cBnV/+j3
         uEoEE+ExW+0RskFhREdSAqEgCs13lpBLfzLRZLZsXS+A5z1iM37yUPM7mqxnFdFq5miB
         6RFLVEED1YnZsivcrY1fU/taifMqnc93r6+6o5S/IFCTfph6cX5oIcbCB6j5DCwrI1/g
         AunKVBI37PfG9ZedYJawk19tOUCJFs9cBjkabffMPcLLZtf/26gWRO5l/Anz07UNhOK8
         JWKeonIB2aB7nlsu+KAu5CIlSQKEh9rU7KhjlE+jRWKcwrBhwB+N+T4j0CSL5vnmEGDT
         7Wsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=P7UfO+FT;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=48hwNgxYr3E9Vy823JXv+HIluwIkuolhNSHaSYAzMxM=;
        b=A1Wpt+0dVmqXb61RWT51Wh95LlqT1Z3DGr3xn2FO0VsH8Xf/0d+N5UVUym7Sw6MuGC
         PqVByo45pibTDh6lZP1bJtnZvUcYLjXf4IDbaKAoCJ3jtMaU/lM2n2iYtoxn8rabTQrG
         Tz9jQN0BIynBSxU3Fk0FL79x6F9VC7FYaWX6DLRahN79NIim2H4a2lIq+uZCepZQWGiR
         346icFIWmSWyEHvoXjlhyjgGlKJQPbn3kYFqpLX5v4qSyrviqyZzjZaOf4doBG5pvBgA
         iRlAqAiAZ+afGTHWOyrcUmkITSt9ueN8qzaq/xcPsk13fbdm6nUCb6SGft6NqAIN5XSn
         Lk7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=48hwNgxYr3E9Vy823JXv+HIluwIkuolhNSHaSYAzMxM=;
        b=VbZqhpKXBiGd2lEubq+x2XNkvI1H9EBP+4RxWQPlXYrDnlC0dWSJTzHkbxFyN+NwQh
         VRiXPuRM+UGkuRKN6D934JCuJTfHJq36rR6BSS5Qi/Ctnd2BFXUoYSJfUpp7aKAJV+xt
         JwemEMbPyG1PcUBffcJfwCCcMD2xTjJqdJ2d2oohEICYP02UBYnoGi3xsmNob9V6ADtX
         lxhC+7PiCK9JQHzn0L+W62BLfCU+9yF0FKq89OJPh/6tcypDRDst3pGK52cafUwX8VGm
         zlct5zV/WOMQDS0w/VUCrw5rDSVoN6yZ/kcWYYC/LP5vDHpmynLX+Y2jCXxNgHk03rUc
         qlSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVNJEocTFT8HorIuadbbP1pC1OBjpD7ms6xQnkX9Mwi0HefpCci
	QKqm++EB/pDsoclfNLOu2hY=
X-Google-Smtp-Source: APXvYqyM0h5om5Xv5/TcZ+8JyqGZi0Z4WU+s615fToaMJkuKG+7ycxIOlwKoe5Q6Y1g0zwZBFfnwpA==
X-Received: by 2002:a50:a41c:: with SMTP id u28mr29651673edb.185.1568111924528;
        Tue, 10 Sep 2019 03:38:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:326:: with SMTP id q6ls4499297edw.0.gmail; Tue, 10
 Sep 2019 03:38:44 -0700 (PDT)
X-Received: by 2002:aa7:dd07:: with SMTP id i7mr29768407edv.133.1568111924164;
        Tue, 10 Sep 2019 03:38:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111924; cv=none;
        d=google.com; s=arc-20160816;
        b=qFag1nx09GX0hSefPgwC3bx2j//hEE8E+fsU7ACGn2+PHiY0JkFwhBoQj3eCnR3ecl
         yS1uDK368gSC6MaPfCTgnoHQxwIj5OPZRVXt6X+BpEMRrbXaM4/0dUfBN6zXKJ75sI6R
         rc8VD6geLEmaSFilLQnAuTJMVCZRR9IG0OR2mBboJ1e6rlHpvS85gcuromvyrVDdeeWu
         A1AJVlD1v6FBjOEJFWBGxb0howLOm+EvRt7imqoeup1mxSZBxbyyy/eDetKxQvy1ECy4
         wS5pW8qbQ9R+8QTapisr0tLVaT3CLmhfEbXBaFtLQ062luIaMPKXuOmJDmIEgrIIfxkk
         cjcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=2CISuDOqpRrytITzE2bzjW1/55vOTPEJWp8ToeKeR/s=;
        b=uJlUPEsCx2/R+AYk5/eVn5/Sy/Esbg4E+URnFWiF9LxKO/ex0su5Es5ynGO2fkWIn+
         rdpI8dHJcRKu8zzk20OQQbm0+nUH/K0QvKLzTZHf0DSlUGFoPmCmz/b89InXad7oEc4T
         wLCnpWXd2seVtiwfDV8AWMyTGYIpffBDkw30oso05GSqrFXK5lu1ydOWw80H/yfKWivL
         ncY/1g3nN3UwViW0Ox0XFs6X/CRmyFW5W/GKFdme5V4Ox73s0RJc4l814mR1ESJpJMWx
         1FnE93kx1TJcEWyKVNKkhis42f0kL4e5deUz382tFZgVLYTDXfxVTAPXM6AxXpiggKxv
         LZsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=P7UfO+FT;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id f20si817560edx.1.2019.09.10.03.38.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id d10so13031755lfi.0
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:44 -0700 (PDT)
X-Received: by 2002:a19:381a:: with SMTP id f26mr19784105lfa.168.1568111923667;
        Tue, 10 Sep 2019 03:38:43 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:43 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH bpf-next 05/11] samples: bpf: makefile: use D vars from KBUILD_CFLAGS to handle headers
Date: Tue, 10 Sep 2019 13:38:24 +0300
Message-Id: <20190910103830.20794-6-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=P7UfO+FT;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

The kernel headers are reused from samples bpf, and autoconf.h is not
enough to reflect complete arch configuration for clang. But CLANG-bpf
cmds are sensitive for assembler part taken from linux headers and -D
vars, usually used in CFLAGS, should be carefully added for each arch.
For that, for CLANG-bpf, lets filter them only for arm arch as it
definitely requires __LINUX_ARM_ARCH__ to be set, but ignore for
others till it's really needed. For arm, -D__LINUX_ARM_ARCH__ is min
version used as instruction set selector. In another case errors
like "SMP is not supported" for arm and bunch of other errors are
issued resulting to incorrect final object.

Later D_OPTIONS can be used for gcc part.
---
 samples/bpf/Makefile | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 8ecc5d0c2d5b..6492b7e65c08 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -185,6 +185,15 @@ HOSTLDLIBS_map_perf_test	+= -lrt
 HOSTLDLIBS_test_overhead	+= -lrt
 HOSTLDLIBS_xdpsock		+= -pthread
 
+# Strip all expet -D options needed to handle linux headers
+# for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
+D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
+	sed '/^-D/!d' | tr '\n' ' ')
+
+ifeq ($(ARCH), arm)
+CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
+endif
+
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
 #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
 LLC ?= llc
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-6-ivan.khoronzhuk%40linaro.org.
