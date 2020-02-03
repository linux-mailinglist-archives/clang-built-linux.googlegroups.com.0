Return-Path: <clang-built-linux+bncBAABBAUB33YQKGQE26T6L5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C42150077
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 03:08:03 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id n196sf5194099oig.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Feb 2020 18:08:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580695682; cv=pass;
        d=google.com; s=arc-20160816;
        b=js6070cNMAwcyEaDXEK2QUNneSRQ0yXZkzVcMmqAixla7rGqOQ5rsN203EbhwzeBba
         gm3Pyjp6eFKgRjRdqIytsX71p7icX+WLc3pPs8+LmmCH30QXZWWlB7s5PYrvAbX87gCz
         BBjsMMQtMh/Z2XHqjikPF60lKCtdNZi2hp/RO/QBiYxYkmZDlNRcgu7aKD2ep656BDmN
         7rToDERxSArcWNjfoas6WcifLlgMBPhWvwtVLRein0/UqHubRwAukVSbPuSZ5ohPozKq
         8DrbAUNNzg1LsaLVbovzViPWXjGKJ3CzrKwElf4/asWj+QxzyJpZKPt6usg4ptbLXdzO
         Aoqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=NC0yYrIqPw8Y0Ydsd+3RbemYlOvcAlCGn8jrj1MdAYs=;
        b=jOiYlL1mlOh0yqcPAG34zyseVrYpyY5e118K5kPB5BsekSg42akYnNv5TPS6kLzhwl
         +Rh0WIJWclbFySNDf2A5eMIzZ4/ChrzRWcexbMUImZ8doidGdsFn2rFAoJ0YKEfxoAoL
         6VOfVPi+X3jlJtUIRSynrnw5ZaeHpjtDiScIUPEcTk+8J6YKDlufrvm6VXPLLBuR+kOP
         zzvqVEAa6Axdwwsh4Ms7dP0uySOMHZr/1dedy9bAlihzOM9sijuAHygNc/Sc0s/+Xxmh
         ITC546miDYyU/0WoetNXbWCdbnp8oMNqe4YL3B+C3l9fgffcnrdmPY9+kaU8iHnaG2HD
         Z5cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yaohongbo@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=yaohongbo@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NC0yYrIqPw8Y0Ydsd+3RbemYlOvcAlCGn8jrj1MdAYs=;
        b=kZ7Z+L1FQbH2Mk6fJG5aNbAHQFBlxyqhMnefPxRhrWEM0jOcLvjVAruM4iocy8gEp/
         bGLEsIzCePNgUIStVpejSAGQa3mReQbWPGOG/C/WU+FqQBrLIfY/nvtE+z+O7DCk4Pxd
         b4Psgjjd2SwnYb/7FuCRAeVBVLTz4wRl+kDJjEeOrq6zUbhSIZX6+YuEQW7nhy6JpztD
         P40xDQBznVXQ6hLUyYDJnUw7dZkLb3OlDBlnsHBHgruV8j6zkNIVpb+EJKMpkq17xTJC
         7ewLatsuxhh3H2aGFNpjsyeSgNOBUzg9OGPCGKjPc68jwQwBNIVwcRBZlAifXkgJ2VmX
         7qqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NC0yYrIqPw8Y0Ydsd+3RbemYlOvcAlCGn8jrj1MdAYs=;
        b=dJxGPZcNx2A7lj38cWItnlxdVNkBSzW/kFga5zG/42C86iRkAeDjNpJu16f4riRCIN
         Y/kMIlWJTTn6CqIySfV8pFE2E61beYnCQNwdmM0QK9P5pag3ytScsN81elHAakA/jI/5
         /T/jwPcPPzf5+Gx0PhB6SdGP1eplDeOW2i9osZXfAAJs9ng5XyOmgLtk1Ur0HVSwYx2D
         tObKGMkbTC5SdwSGOR7AXegVG00PARYAWySw8muXl68i0h+je+q/y938pvMj/mUCRPb+
         4l6UZWVcgATDPAROMYz9v1PV5xfqHQFGinK60SBDfC8UXcHi23RfwqH+G81MDmsXpcP0
         2Efg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAViqIXprbRki/SsKijPf6Lcp8K8jGPrl4a4EtHiX6GRLw75SULP
	m6C+Y/e7h1iWGrrqifXWhgQ=
X-Google-Smtp-Source: APXvYqz6ix7rw6fTxxmvlSSrL+3MibxsLFQvcdvn6SxjBrl5YsB0khsGtok7NnXb6KXcvY0FIFg4gQ==
X-Received: by 2002:a05:6808:994:: with SMTP id a20mr13159506oic.67.1580695682294;
        Sun, 02 Feb 2020 18:08:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a01:: with SMTP id g1ls1890268otn.6.gmail; Sun, 02 Feb
 2020 18:08:02 -0800 (PST)
X-Received: by 2002:a9d:4c8c:: with SMTP id m12mr16576774otf.312.1580695682010;
        Sun, 02 Feb 2020 18:08:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580695682; cv=none;
        d=google.com; s=arc-20160816;
        b=lDn3yeBgqG0BehK29bY1UmUyBf8Mczy2iS1OxiRFz22IVrz8J7IupVNlKQ8kNblm35
         hGqOdeD5A8bhSL5mSYfFRLnbjkGD6VTT9bJ9PZJFbCS8jFvx8YTGS2Wa4QE23E7f30/r
         WvHLYqyOY32574lzgsOjyM2IWUzQvtNjPelcW0Ni1iYLyh1dmnSjUwlrB189OhvOzZ+D
         9KYXyrxZwsh1vDzsTsdC2aYQi7EFfIaypi5/2yi2ciL/Pei+X7PpaXW6ufUmfG3X4L7e
         lP1XsmqaDxllXJOfuBCa4dK7EjB/UlafbBhUr+o3CBstj2yIOK8BVlOZGlG5g4+/rFy5
         qAeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=tOgd245JBFAGlPp+YRGNmmJJAdVskTETvy37/T0E5WE=;
        b=xN+lggcQwO8qOLtgh3dAp/ApRGqbQt5ftAvrsDTCLWDcEpVn2cOfwprmY7Axnsdgyj
         TaijTksHjNRexCnn0GKCdMxWQLNohsVxT4Wv/GUNPcJa912/oIJfwhW9uS11xazeVbXA
         uw4EFSoWjQAAe0QVsjSpmzWOfKzy+E0sUkfMKQ9WIz6cGQmDa34lFl/KxxaSKGjiflNh
         OnDz8x9xNj1fCseg/bL1uj5gVCPl3M3XJ/sYPDX8Gwdu0N2yZXOBveLHiC/u94vPpgWx
         ii6Wb8GFBpZvc6Hcj3pnRAdf9TWjODS0OzGSbaPDxYtm74jHZRcFlevtshpRKt4wS7Vo
         vrOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yaohongbo@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=yaohongbo@huawei.com
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id a17si794393otr.1.2020.02.02.18.08.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Feb 2020 18:08:02 -0800 (PST)
Received-SPF: pass (google.com: domain of yaohongbo@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 5C22F322EA07049DCC32;
	Mon,  3 Feb 2020 10:07:59 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Mon, 3 Feb 2020 10:07:52 +0800
From: Hongbo Yao <yaohongbo@huawei.com>
To: <ast@kernel.org>, <daniel@iogearbox.net>
CC: <yaohongbo@huawei.com>, <chenzhou10@huawei.com>, <kafai@fb.com>,
	<songliubraving@fb.com>, <yhs@fb.com>, <andriin@fb.com>,
	<netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
Subject: [PATCH -next] bpf: make btf_check_func_type_match() static
Date: Mon, 3 Feb 2020 10:02:20 +0800
Message-ID: <20200203020220.117152-1-yaohongbo@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-Original-Sender: yaohongbo@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yaohongbo@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=yaohongbo@huawei.com
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

Fix sparse warning:
kernel/bpf/btf.c:4131:5: warning: symbol 'btf_check_func_type_match' was
not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Hongbo Yao <yaohongbo@huawei.com>
---
 kernel/bpf/btf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
index 8c9d8f266bef..83d3d92023af 100644
--- a/kernel/bpf/btf.c
+++ b/kernel/bpf/btf.c
@@ -4144,7 +4144,7 @@ int btf_distill_func_proto(struct bpf_verifier_log *log,
  * EFAULT - verifier bug
  * 0 - 99% match. The last 1% is validated by the verifier.
  */
-int btf_check_func_type_match(struct bpf_verifier_log *log,
+static int btf_check_func_type_match(struct bpf_verifier_log *log,
 			      struct btf *btf1, const struct btf_type *t1,
 			      struct btf *btf2, const struct btf_type *t2)
 {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200203020220.117152-1-yaohongbo%40huawei.com.
