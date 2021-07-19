Return-Path: <clang-built-linux+bncBCQPNZEG7UCBBMGM26DQMGQETHCGMWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF0E3CEDE8
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 22:53:05 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id s18-20020a17090aba12b029017556bfce53sf818143pjr.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 13:53:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626727984; cv=pass;
        d=google.com; s=arc-20160816;
        b=x8YU3ccsWN2DLdeLMTFytEQ9OD9m81Xj45cyLqbAymHXu6HA2oYs4YmEoRrKQ7P2Ww
         Py1lu26O8gW18XYHMJXt12TD8BTd2AsS/Xzp2qCc7CfPitG1WBmNwqGOIQqB0usDGCxV
         ECiLhUuJOLJAw70kaOC4rJKRbIIvFXQXBgCQVHGkBbwOC3+7/64HDxvsgCc/IwlEHots
         CKHGhgRG/v6d2+Nd2ebUeEk1fJxFevOY7/GrxKXV/J5C/rRdLTFso615zfosZNfStvYd
         N7hIj0eIvKMv1JA+ewT0JMDo2pNXlRcngR3gsFhwbtJYEaa1fj4otGUK5IJjgR2tgyff
         259Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=yczmQWV9UkUKPCpWn1isFs6bPL8iut8vrJFQH1XtzDc=;
        b=QzWqkK3Ypnn8+YRUOlvVwuMkpTHcLxQfuS8C/1M68Q+1Yxmxd3tDm9CDunEa/GgrVS
         uPIyfYvikbhOv3n7idUdZaKA12wh9hXrqEPzeHdZSC3ipYym/2Pqipdekws6e84AcTic
         lMpkLiP6sclnN7kykt2wZDex96sEfbzOqpZEwZzWn3Ek3XFEwhAHdAYTSL5LBnV8U1tA
         FD/IcOdmQQptlj8MrfU7QDZNQuSIEDKObFNpScI205t5JjJTrK34+jZ0aFxFur9m23Hd
         bKa3bfepQSCrDlT1Qi0xaV7qafVQfWgW/iElKIvdBL/8ABNS4wHw9ir9Fewi90qrfbNP
         gncw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HYSrMR9Z;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yczmQWV9UkUKPCpWn1isFs6bPL8iut8vrJFQH1XtzDc=;
        b=osxFBLN6tSe7ea9T9mJX4e2BH2srmJgDvb2Po8A68m6y3gHh9BiCdV9pdNvk1aBZZ6
         t2mJZG/3x1MP7g5V112nYbd7E1rlZ/sd/R5lyH43s5oy9z1fauXwvvAmnhJ3XeD6IkYO
         OnicK+guwBcql+g2HRrZLBdG3JyiHYehmOHkPZRhxx8g0EptbwMIdel/jRrdrVW+B4qT
         h8KrbzQ41QDXvzQlySzMqXl2MaYhgNKF9qGHPTlqR9VSIfHXaH6E5wJa9m8DkA5gjrVx
         seV4fjPBUMtY6FOrh3HbqhG7U6Gcmmw3gh+redKyKp48Nrad0zrJtiUwMLXj6OjE2akG
         UQHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yczmQWV9UkUKPCpWn1isFs6bPL8iut8vrJFQH1XtzDc=;
        b=dfNrehzZcq4MMQLvkgWTq5cCoa3TbDfakuuVz89SbAnHSPV1w1PncN4rnIF+KIzYdG
         NtcxMkChyOpDbTcHW48Z7ilX+cgzlv+Cz+nXsoONDib4zbVN6mgc4NHBr5rGuWBDWg0k
         f+9Y0Itvh2mCWwHvcO52ywrLEbMwyRJ987VF6SFU/QXH30j3l2P1eowe5R49i99Z+LH7
         KDZqUOkYvZO0OAx66K4LjWWsu9BJ02wMgglW6jhu1pcP6QedpcUilP0B3v3FLQvYj8hu
         lWSkcJOIDkX4m1SxEmChyXoS2QDDRKyD3z+EzSuXbQH5RPMR1qHp9L3iek7BjPUVEfSK
         aRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yczmQWV9UkUKPCpWn1isFs6bPL8iut8vrJFQH1XtzDc=;
        b=jm1dzV6ipP4HqyMH0bzIYBHcMjNeZLBCGBbT4o2HPGLCrQM6gsLDE+Fnhbb3cbIji1
         4gV6iOVRu5kibxI8vQgOeHSe4mGedjCp0IWYAebb1TzVNUbc66Li15nmfvizMBlImN1b
         DnctF9SYk3bebR/kzBH07AcZ9JBSzv1jR7/qQK7b3IBE/YmIbCl7ghRtiU9plLtBF5uA
         757p2T2s0IDTILswQPkuP+arCVDoovWLxTYmkKtYqvLOFWTBeqyNzWkCwfZyvcWgFLYm
         1R2xHNHu8cLswXUtPwghZrvc0FybbG23+iSSjOcirR2wyMZylBWxV8qL3EG62k+wbHaH
         unag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zovzZuWCO6U6UjJ96vhUBvjcMWiDOPr7zvm2YVH7E9l7rPcDF
	Im0IrqKqgOYXGwlPgF/Fdus=
X-Google-Smtp-Source: ABdhPJwwCH097VAK/2nQZzwxmlFug2Hr+Q6cGSgaIz6C+bBE931NZm6zflIxBj2yZdd377OvPZAwtg==
X-Received: by 2002:a17:902:d4c9:b029:12b:46f3:2db2 with SMTP id o9-20020a170902d4c9b029012b46f32db2mr20896138plg.5.1626727984240;
        Mon, 19 Jul 2021 13:53:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1946:: with SMTP id s6ls9372553pfk.8.gmail; Mon, 19
 Jul 2021 13:53:03 -0700 (PDT)
X-Received: by 2002:a63:1622:: with SMTP id w34mr27327210pgl.354.1626727983663;
        Mon, 19 Jul 2021 13:53:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626727983; cv=none;
        d=google.com; s=arc-20160816;
        b=UKB/ZfpTwS4b/E/2mQKvnQzPlRmbVuqDscG2zIyO11o4lfanq2cK248HntRE/Dvzbs
         iViyZfPzVBFRlIOZxl7ErOFeqMudE+X3118QQHO8gbJzNuCexd7Lw14VkL3sefJjUCtz
         QwCg902RA/AHi/gqM/ZcdeLniUiDtopId4b9caH6xeexehpNgEXi6FsmiKXbPBHEVlNh
         aAuLCMfRhQ4OzvkmQVQvUbUUahwpTvWc7nVgBxmnmqfCGN0CXZZXloWAcK5rw64XpZW6
         KkI44qwAkfHWaW2lNO/GfTaEjKH4RnUK3rLVz4HFnXEy79ke6jLlkwM1LNvsGtz8AzAZ
         +Tsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8A1iXDeLNYYrVR0I32gx+QMWguxvpqwemwOUepfzw5s=;
        b=xQ19UwqOP5xCnFXczezFRezoljoIXqVBFz3JZNUFcH86Zo20C83vteQoa3t7R9jsP4
         mNmco+W7mJz6KGw/eJwpQ4A0rrzw8WhtJaCaMPhhni0uZptZwXok8SKhcqbduG6tODDW
         PCATy5EDFKFVu6TcGO1vKQc4dlkHAUzG6k2bawQTw5pEeekoqhjSxzxIseAwqu5W2m4x
         oiEEk5kTBeEOOkESz+azcIxmaCPm97rt4xiELMNcV45c0b+e2RCfK6UI9qf9Nr7CpZbw
         kq1uvugFg2UOcdWGXywpz6xOwa5Yo2rg64q5Y19VTK/wHCW/jDJGpF57YRgvpPEPjHB9
         ITZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HYSrMR9Z;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id v7si1568417pfu.0.2021.07.19.13.53.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 13:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id a6so13100378pgw.3
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 13:53:03 -0700 (PDT)
X-Received: by 2002:a65:6243:: with SMTP id q3mr27333523pgv.297.1626727983495;
        Mon, 19 Jul 2021 13:53:03 -0700 (PDT)
Received: from localhost.localdomain ([2604:a880:1:20::1f:7001])
        by smtp.gmail.com with ESMTPSA id b19sm5621281pfo.97.2021.07.19.13.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 13:53:03 -0700 (PDT)
From: Wende Tan <twd2.me@gmail.com>
To: palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	linux-riscv@lists.infradead.org
Cc: Wende Tan <twd2.me@gmail.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 1/3] RISC-V: build: Pass `-mattr` to `lld`
Date: Mon, 19 Jul 2021 20:52:47 +0000
Message-Id: <20210719205247.1023289-1-twd2.me@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: twd2.me@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HYSrMR9Z;       spf=pass
 (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::533 as
 permitted sender) smtp.mailfrom=twd2.me@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Pass `-mattr` to `lld` so that it can generate proper machine code.
By the way, it seems that `-march` does not work well now.

Signed-off-by: Wende Tan <twd2.me@gmail.com>
---
 arch/riscv/Makefile | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index bc74afdbf31e..bbc186a3ab45 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -52,9 +52,16 @@ riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
 riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima
 riscv-march-$(CONFIG_FPU)		:= $(riscv-march-y)fd
 riscv-march-$(CONFIG_RISCV_ISA_C)	:= $(riscv-march-y)c
+riscv-mattr-y				:= +m,+a
+riscv-mattr-$(CONFIG_FPU)		:= $(riscv-mattr-y),+f,+d
+riscv-mattr-$(CONFIG_RISCV_ISA_C)	:= $(riscv-mattr-y),+c
 KBUILD_CFLAGS += -march=$(subst fd,,$(riscv-march-y))
 KBUILD_AFLAGS += -march=$(riscv-march-y)
 
+ifeq ($(CONFIG_LD_IS_LLD),y)
+	KBUILD_LDFLAGS += -mllvm -mattr=$(riscv-mattr-y)
+endif
+
 KBUILD_CFLAGS += -mno-save-restore
 KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210719205247.1023289-1-twd2.me%40gmail.com.
