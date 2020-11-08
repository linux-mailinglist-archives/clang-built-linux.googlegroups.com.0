Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGNOUH6QKGQEEPLMT5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id BF50C2AAD62
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Nov 2020 21:37:46 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id e26sf973754otj.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Nov 2020 12:37:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604867865; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZqJEJzq6B9X1cQIvmH/oBIy93vRUUNen16wlG+BPA1R+u2yWZ+7dsS+T0j+oQhsZ1i
         fJKbiayE2DEG4WjMVel0fXuQWMt9QLl1FvvBf6gerxDE87CeaHB2s80q7Vtz5QcO9dfs
         u3KLcqBKUl7/sYu1JVxGOwRbIvak7fyXJt45ofAQ05LLIO74aWaPWJBXA9+rcgHiRhrT
         eIx5JmZDPkRkfdMyqtpatGz9BCPXQrW3UQ6bPQpjePtvnu+lXv+0J8LZ9P6U2Osd4/h7
         zz15eqbdmVzIlagekzxFeSwRuuhUQNPrrPpMD9z2zyGLbsM1vHBCVPIPPGHnUqp6gKaw
         lEdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=poxLUFksq5UvMn+aU1M29+O7zrlpFBPp6r1dvXrHNLo=;
        b=U0z7mLaDIuQyHuCX/KKNdKLhoooESTK8POrRFt/iSgxdabxwXu/p+aydVMove+V4g3
         Z0j4OPPnswSWt1EI6ZNi+jiCNQcerqYkSvDGz7Rjb1BvjMoKoCdqu7ZQcr1tIYHRFJEt
         3nJ/7lIG72X9tGcXV36vsyymoCsPwuAdv4+KRPqIaCS9a9fwgj57IKok8y1JDTUM2cT/
         KxhHfARQtPDIUwp/rNyztxTA4hmBoTWg4Z0pqnOKHpGZJHxVEPoMwqeZkuRfjbfIeZHL
         8Fz8o7J9manvXBpVw0GZ44F3YV/KH5QuzbE145u/HK57ZPrWtSQHT4orWEJN5kZfzl49
         1Msg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b74gdFy3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=poxLUFksq5UvMn+aU1M29+O7zrlpFBPp6r1dvXrHNLo=;
        b=DKw1yg0Qy+8MleClwbrEIATCALNev6P5IqQBQawCnsQAQRM5s4RMF9qT9/j0OzQXoq
         7+lRPK0Ch857aVzBAUp9iIOxwyj0o3GQn4chZsFPKZ52pCCx3QokvZ3HVtGbzejd3jrC
         AZ+WVWWouk6g1FHQ6QRSB0wo1v74/xtqIzdSdngXAbCd7paTZAQtounmSEK1xJw2kQ1i
         TPTL53jWukLWAgStrltjK97VsjmebCIc4M9IILYF7G0MC2rinm48IvksfTnfMp4T3O6G
         TB+/3xM51AivfWJmFReTzIKG8SOcDZokyTLkd4WCsVo+y0N15i9+sPWhlNWHQP/UM1wI
         St9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=poxLUFksq5UvMn+aU1M29+O7zrlpFBPp6r1dvXrHNLo=;
        b=NhFiX/K9+P/drCfuSuGgMp6doY2ZyoGSr2/qVUX0UuKqf81UKEO0fevYISbyQexpBa
         GUWTZ9YxupV1sN/6jj0UiacGaLWffM5XMGLX+VABaxywdorJBoTN4YJPISc+g/EamdM0
         b2cpaGRkZ5ZkY81XhPmI1OxLRQqAVXitsjezfrcoEKisGywrorRnypVfY1V0ViC3w1vs
         JivSglCxKlkn7EvawEwe5Js+b3vE2gwfjM2sWH1DuEFYmYwh/5rB63Y7oKBj9AoZrIje
         O6ryy1B7VUlUeLwR/cVaR9tarXyIUphf8T7mItUiIm0t32VN+jlRO7SsiqeliomqQHYH
         N0UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=poxLUFksq5UvMn+aU1M29+O7zrlpFBPp6r1dvXrHNLo=;
        b=PqdBtHl3ruO2C7rOaN0hkN/tFbyoNDqPe2OblXVsTV7Jd/K2xHMkosaj5BxVnze4+O
         dxjZJgwDDblmzgVH/qnGLv1+TFH7emH5SQkKK9gfxPPU1sNJMkZkuaubqIAHCODAXgLJ
         j4sgx2md5xzLzO8n/Fwq42VxdoympoJ4bwiH1z9Tlh0FMT1bUekElM0LpAifF3QIhq6/
         hkXH65H+g1JcKg0qkoZC4N7SqJXvHJrlrZQJc2+AcctXFudns0YXP7IxjwYg73DNBR7v
         Bg1FpUIoC825lpn81nfJIA35xJz4qDHsFxw8hYoPQG36Oz9nXsUUW2+3QoiUmDdeW8LN
         tVmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/WcEUd7fKGrL/Z1XEYd4UyRkdehIXXlvCUWjclQVDnQKbx8I6
	MXekxfrJ0CziYnQPSk0pN8g=
X-Google-Smtp-Source: ABdhPJzVO6xhdkUCMq+QuwtO11JGuX+v4J8c0O6BgG+U5oPR9IMOV41FKNI221B/yhCx3M00hDuWzQ==
X-Received: by 2002:aca:62c3:: with SMTP id w186mr7406966oib.49.1604867865256;
        Sun, 08 Nov 2020 12:37:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5f11:: with SMTP id f17ls1580650oti.6.gmail; Sun, 08 Nov
 2020 12:37:45 -0800 (PST)
X-Received: by 2002:a05:6830:210a:: with SMTP id i10mr8037324otc.145.1604867864966;
        Sun, 08 Nov 2020 12:37:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604867864; cv=none;
        d=google.com; s=arc-20160816;
        b=WicjBzy13R1UGqQM4ArrcW6J8iXwleLAMz5CfSF6LgmkPGP5nXhNOfX7pJjmwbz5AJ
         nEWd7ZpgvGfUyHQPPa9YzNxs2O6ty6u9HRlVV9gfEmRMixKTvBPR3rbm8CfphwPY0k7n
         AHMGy3bNJaarrt5Viir/CaWIV7+KEl8qLW1GXXDGKb3auEca43Cai9Q+Iif8d93WzTWg
         0lscL+AabYrLYaJoVSjsOSaYGini2F5eYCTuLMVXTkIoc0PZ4PaplSUxcz1ne0ioKrem
         Q/UJV4hTr/6wXSKnez4hPjwprGQNLKdAP9r9cgE9Pwd/pbVBGYrCNhdMViz7dToAlM5U
         s9Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RWSW4z4tc076kKwNGtL/so7sEYIZnv1CKrVVWPooetI=;
        b=gS2ynXv09WGEIdxSdMaAIrdwIRQXbP48x5pLjrirQ1RoEXwnaNLzivkw1h8NejNj7M
         06zo9VADhzvYX0+A6N/6i+xLRA6ob1mp3vrlmDC5QgF4YmeMJN02+Cxq5GjfBIbcwpHp
         Y53Y1MFfU4qetoY/RPJSMUQyjwuo0feWu1ld6Km1u1XI3vpVj1DZ7XPrMPcrWvjT1QoP
         Vp6297l4GbXezbeRa6FvPdu3PTMheGqHBy5CE/1PcNECEVB9/TdILcKx2p1pn4q7h8ba
         2SfOjShMOOWnpTu/XdpKU6EioP1wzB8VP8NnSYaexjd4NNB3obkNe1IkkFtsptX35j2f
         otiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b74gdFy3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id k134si348448oib.5.2020.11.08.12.37.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Nov 2020 12:37:44 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id 12so6198461qkl.8
        for <clang-built-linux@googlegroups.com>; Sun, 08 Nov 2020 12:37:44 -0800 (PST)
X-Received: by 2002:a05:620a:5a5:: with SMTP id q5mr2937252qkq.199.1604867864596;
        Sun, 08 Nov 2020 12:37:44 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id n6sm4849150qkk.6.2020.11.08.12.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Nov 2020 12:37:43 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] riscv: Explicitly specify the build id style in vDSO Makefile again
Date: Sun,  8 Nov 2020 13:37:37 -0700
Message-Id: <20201108203737.94270-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b74gdFy3;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Commit a96843372331 ("kbuild: explicitly specify the build id style")
explicitly set the build ID style to SHA1. Commit c2c81bb2f691 ("RISC-V:
Fix the VDSO symbol generaton for binutils-2.35+") undid this change,
likely unintentionally.

Restore it so that the build ID style stays consistent across the tree
regardless of linker.

Fixes: c2c81bb2f691 ("RISC-V: Fix the VDSO symbol generaton for binutils-2.35+")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/riscv/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index cb8f9e4cfcbf..0cfd6da784f8 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -44,7 +44,7 @@ SYSCFLAGS_vdso.so.dbg = $(c_flags)
 $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
 	$(call if_changed,vdsold)
 SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
-	-Wl,--build-id -Wl,--hash-style=both
+	-Wl,--build-id=sha1 -Wl,--hash-style=both
 
 # We also create a special relocatable object that should mirror the symbol
 # table and layout of the linked DSO. With ld --just-symbols we can then

base-commit: c2c81bb2f69138f902e1a58d3bef6ad97fb8a92c
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201108203737.94270-1-natechancellor%40gmail.com.
