Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBHPTUWJQMGQE5FCIDDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-x1137.google.com (mail-yw1-x1137.google.com [IPv6:2607:f8b0:4864:20::1137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37706511C80
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 19:13:03 +0200 (CEST)
Received: by mail-yw1-x1137.google.com with SMTP id 00721157ae682-2d7eaa730d9sf22063317b3.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 10:13:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651079582; cv=pass;
        d=google.com; s=arc-20160816;
        b=w6C0lr8zh/qIcmgY+ai6CJgT9aFwAaFOrnH4h+63a839DZPORkvWPBsrgk7iPDWuFH
         ZQD3P+Bwbu6ICwiqg1iFgncn1GCdiwXtNtijqn3IlbfpGk1498BpX0izRiXO/YPpamkT
         r8K4cY4loKEbux4Kfz3VpU4nrUVwARMg0qG/lgEGFzsRUpQaBPhuqKLPIWlILP5u9FXn
         U0CZx7TlLLy9DKiG+/oVwL59iTDy8RHokduRmNwo+TT0dvSZFPVlzse69h+Nf98walH3
         POmtO0i8qnpCfnjLmZw7fq4O37QY40E6vLOMYNX6Y8gSanVBS8tq7GhMsbPfTSGuXKCD
         Nnkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=AaPzKdeHXqNTARhynv7fkCZcpFErkefuo/PFk71N9ug=;
        b=esAxyIS1pQ8BBZETY1oN4L++WNxVfNkfJdsC22rz/F4eOQuOgQHMysa60svVMGcKXE
         wbRy60zdT4YvkswJqN2gc2/fAGufZ8BPLA750ETKiDbhU/84dSaF2klTHATvdADCR3S6
         A2Gi7Ke0OVh5o6D+SIhOCF9pW7lLQZYVR9prQwQK2QNWvtRPaT3VZeIhfxwv/QQD2DG7
         r4/G7L7cyl8vv0w7eOUJpNb6fvDNeYYwf8DKgwd2BLTnJBuTWce4MLnzCN5uy2tROTfT
         Wf/slOVGBlUVrOhzw/UcOAOaUxvBErBy+PivwNLg3RdDignymiAa4AKg8k2Vbhlf0ohS
         Ss1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=esWlZmCu;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AaPzKdeHXqNTARhynv7fkCZcpFErkefuo/PFk71N9ug=;
        b=OOrlNgw6rUHASsOtQsCKHvL6xyy077/nJgweHj3T24HkY6EI8bJlGNd9qPMBBkF/42
         83ev5YbBTxK6a7vB8wdpQp8UTc9PzCSh+wdN6I/F1PxrFGNYLW9HxSuYLGXb5F60Tz8K
         QHW4lcLh66xGCbkCSs6cwUFpB0ZYo/rifubdkjOcoHCQz+PAh2xcQxeA2Nvi8OgAGxyq
         S7OnAbVdsIz8oWfqneG42hbd6rJjnOtyjjv7WifdAoMu1xIvX0KSjAnsX/ulooKVz2j7
         rn1YCIE0zUsHkTZGWtK3kPBlbie7Huv8sHvd+xQdaixgM/EKlcH6EeAvhM3ytRQRW/wv
         aaHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AaPzKdeHXqNTARhynv7fkCZcpFErkefuo/PFk71N9ug=;
        b=5I69nJzyfAASoIT3nf/jSWjChO/QTY7tp8yrwyscPp6lJGuMTDbsOKEq/EyfSAJp7X
         4Ug+3Z3mnNagLzYp8ZTg3ZgNNXOWQx8efSrk7cnCaU3tAjLsH8H05Y2IKOLF6AxLbi6v
         oJqS1c9pv/6XQd/M0mMzfss8hrQvjmj8A2eq+humYLKNwXyspZ3RwHCrc4DociFxEFOb
         jkGmELvN64PA1aCRJ56jJIowJt17Q6QPHiQwv+bW33VlE0bpmoYGNahTbeCm+TF2vPnU
         VQ0uUTqEdHo/PiBpys+Ce06SU3LI3Ui2amwrCw4OFw+tJy+IKvqdyMGh5alCek7Qhh59
         a0Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vCobbghPtgMNOxAQRenz/UdYWgez1+CennTJ05JDtjckkQ/qq
	xhXQtmBcSP4e+ejyz0KXFo0=
X-Google-Smtp-Source: ABdhPJxQF/Lv48dnYGQtZ1u9YJhaVCG4EGLSTOgizE1wxxs4gx1uGxg8XWHjulH9g2FbX4x+rAWFHA==
X-Received: by 2002:a81:2654:0:b0:2f7:c5f4:a486 with SMTP id m81-20020a812654000000b002f7c5f4a486mr22481780ywm.141.1651079582000;
        Wed, 27 Apr 2022 10:13:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:1cf:0:b0:648:cdd2:e538 with SMTP id f15-20020a5b01cf000000b00648cdd2e538ls2387602ybp.9.gmail;
 Wed, 27 Apr 2022 10:13:01 -0700 (PDT)
X-Received: by 2002:a5b:a4c:0:b0:628:b143:5bd with SMTP id z12-20020a5b0a4c000000b00628b14305bdmr27664397ybq.212.1651079581436;
        Wed, 27 Apr 2022 10:13:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651079581; cv=none;
        d=google.com; s=arc-20160816;
        b=u1jkZycRY+BZNoBAin5lcWSNGihOC+UsaahBWEGLHVxn7jFSCPUh0NGItO8fKHJ3P7
         qR87O55EheWfnuBllKhcvtYhqS0PZHNP5dHtg9KrTBdMnbH00gcBSEJF2hJq/SMWZcBX
         3I/CxfoF4ccl7KqAq1QRT+udJKv2RSepv/ZuZ09xvnuu9R8xa7vNj8gevTF5Rjg05Ml7
         GNGDI01UiniuiasS7Ry0sQb4KP7MLkjminpFxw5G4SD4lNySuGAq6Q9dm0uiJLPRxUP2
         DZAjCvEus+8tGNh8coLuZbPuaYowWpVkIAPWEbFM1PK6I8wdixZoYI4U4A1a9oLuy/GK
         vC4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GdMQGGKgvfhUncpGLVOEMXNSCbtGchf9/0HWChWDhdE=;
        b=l2Kum3uBOmJ2VPcDrLNkc/u41zKOEObaBB5k7vWJbCURGZFfHhf64MH0+llwfh38cF
         SgWLekwaaxXKoFQDDonG8DjpymsksyLl4XoO0Zk5RLz/pDywf6LzntSQmyp3f/hNKHEO
         dhfxb+V9w5Wgocb4yFCkNsyCcoWv5HEdZYCzGd6+vPDzTOayFS13zB2TFsCiZjFrz//P
         NUnE1fW4oifUTx4cYa7I7VL0yGofXpCU0YR2C7EyQRdG4x2IJD2099J63XIrwSt8mQqT
         r1W4OB5upKzlOfaLgyx3KW//Ks0OOOmjN3g//QtTw3jL4Zh16fmgwLkIzo61tzzcwNl9
         uf3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=esWlZmCu;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id b65-20020a0dd944000000b002f839637da6si457013ywe.2.2022.04.27.10.13.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Apr 2022 10:13:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 10BD561E1D;
	Wed, 27 Apr 2022 17:13:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F425C385A7;
	Wed, 27 Apr 2022 17:12:58 +0000 (UTC)
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com,
	will@kernel.org,
	catalin.marinas@arm.com,
	keescook@chromium.org,
	mark.rutland@arm.com,
	nathan@kernel.org,
	Ard Biesheuvel <ardb@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [RFC PATCH 0/2] arm64: use PIE code generation for KASLR kernel
Date: Wed, 27 Apr 2022 19:12:39 +0200
Message-Id: <20220427171241.2426592-1-ardb@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1407; h=from:subject; bh=2+uVIDbxqseM+0bbq3rihBPe2pfIP/XzY2te3lRHOCY=; b=owEB7QES/pANAwAKAcNPIjmS2Y8kAcsmYgBiaXmEk7/gpTXe+HObrOm3yWT/Ws2wSrRK5dgpW2lx p/JW3RyJAbMEAAEKAB0WIQT72WJ8QGnJQhU3VynDTyI5ktmPJAUCYml5hAAKCRDDTyI5ktmPJNtWC/ 9gTv/uu7k3cSNZuQVX37dkdm/XZ+Blrx39Zt6l8pb4hMnFnZlduPdW/VmabMb4tA4sKOVZKocR/XTx in9SuZ22t4kedmZJuq0EsQqygPP+1uzIvJcpVPQAX4b/2eF6+kOuguvkFh/MLWUsObpjbYXpYVEB4U N0oKzFQ7xEg2n6Y0bYB7ERszdFHBUGTDCL+NOTIHLL7CC95Z6W4xfzkvVCZmGGSQxvz5tbUGHTjMz2 xm47HwdVcTu3uwWHPFaacD2MqHQpYWRMl46I5Qo9zgJowtTqUEk32xJIRuEPnKLhX5fvDfhziy0wN6 p2z+onOQv7oCZAtm/1dfaqkTFqQEpw0YUGGEoI1U0QsN6N1+Er9cSZqBL55i/EC1ICYoWmhyuac/9p shEl3lfwJi3JB4+jPSsblrImqzil1DLTpuGlH5DKuSEvKdQJ9lXs6wT1Y2EpVpljCzEwRmOXVHwYat AtVMhGHHLqSIXexHq4/H5JpfXDYWbSUgF1fNIKpCytMmk=
X-Developer-Key: i=ardb@kernel.org; a=openpgp; fpr=F43D03328115A198C90016883D200E9CA6329909
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=esWlZmCu;       spf=pass
 (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Building the KASLR kernel without -fpie but linking it with -pie works
in practice, but it is not something that is explicitly supported by the
toolchains - it happens to work because the default 'small' code model
used by both GCC and Clang relies mostly on ADRP+ADD/LDR to generate
symbol references.

Code generation with -fpie used to result in unnecessary overhead, as
all references to symbols with external visibility use emitted via
entries in the GOT, resulting in an additional load from memory for each
global variable access.

However, we can now manage this my using 'hidden' visibility (which is
already used in places such as the decompressor or the EFI stub), so we
can enable -fpie code generation without the overhead.

This series is RFC given that, beyond switching to a better supported
combination of compiler and linker options, I am not aware of any
advantages or disadvantages of making this change.

Cc: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>

Ard Biesheuvel (2):
  arm64: jump_label: use more precise asm constraints
  arm64: kernel: switch to PIE code generation for relocatable kernels

 arch/arm64/Makefile                 | 4 ++++
 arch/arm64/include/asm/jump_label.h | 8 ++++----
 arch/arm64/kernel/vmlinux.lds.S     | 9 ++++-----
 3 files changed, 12 insertions(+), 9 deletions(-)

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220427171241.2426592-1-ardb%40kernel.org.
