Return-Path: <clang-built-linux+bncBC3MJ5UR74ERBAMSW73AKGQE5GDSCIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9CE1E3511
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 03:57:22 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id j186sf8779579vkc.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 18:57:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590544642; cv=pass;
        d=google.com; s=arc-20160816;
        b=zoup10LjTEXivee42q4VuHuZk4YhnT8FDb8COJJQwsinRRbMrMmgIO0h4MBVIlgs9P
         HFD6ljQgA/0qbS0GW4TH9BQ3FT3AkTDotO6y+9foOGJUWq8zTfo9qim0V7/NAUwcz46T
         k29XexT5es3OuxQe7EJK7cYXhTy0Cv9tz3O/0KhK8Fitx0i6xEdQZQQou8cGUeJ2F34c
         rX2ckrwX1Xal8/ayBzxe61oqEbP3JlOGuNmL6T9f9URvxWGNlMOEaQ6mr+zrW05PN5Fp
         1mxlr83ybARw6ajE6n5VVCdwiJLwFgH6QQv9AzmZS4RRmmY8WAUjIMPch3PllFG4eSKg
         Om8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xzKOuGSPpVazgGQabt5viYKu2uBDOMXYF0MxlzPR6VA=;
        b=hgtRbaFLjIp5/t2pq3dsiQtYkIuNtbPxzPx1hkMtA9CfVd8+WMyScWLX04nN0uY0o9
         Zh7+RvskwJOnnRGaBEcVzjvYGJnYbqRMw95JP/asLx+IW68fE9aKf3AUDf/NZBLXOL4b
         JEsIxMPHNADFyvUpUkShlKd3clARp98jcq3ZopyUjwRbL1zngTvo0c4Z1S713djUBYTm
         QsnYxo2huZUCc/ZOTTojIxbUB2ya8kWvBLdNK57ZEEOQyK58bLLYEZa6Gd8FHt8JaGw2
         eqM5mFABNPePJIF8MFJrLCeia3QR6eWyBzzwzi8TVSbDzZrf6XjrULjysl6ZCAe9abM+
         bXLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dxuuu.xyz header.s=fm3 header.b=cq4cSNvp;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="k7o/aCqW";
       spf=pass (google.com: domain of dxu@dxuuu.xyz designates 66.111.4.229 as permitted sender) smtp.mailfrom=dxu@dxuuu.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xzKOuGSPpVazgGQabt5viYKu2uBDOMXYF0MxlzPR6VA=;
        b=QxKiOnuVEvEy3EHPl8gB8zlHrPXyH7JYgFI4yvNDmtS3RWw3xPETrWcyc+wxACb8XQ
         iB1qiR/g+wz2hwYBEuXdthD79e4gNQtCOEZ5Y1rtrPzNG4KEc5jspBAvDPMsxvciBvdU
         NeWsZzCUMbM63zYu1JOfDroQwEMqU9w0EfezUQ4jceTYQ3ijWgJH3KqDDKGedqoojPaW
         pasmaXF27O+FMcZ2WVFjQVdHaPIkW9szHRvhBiYDsouYS2atd1f3iyobXRwnIWe14j3K
         XFUn+ygunp8SLRBMkrTqKqYqi7nOwbAV8I8IuaK9uV25cgyy4I0M8Do3o/KGeSuSrcBc
         4PtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xzKOuGSPpVazgGQabt5viYKu2uBDOMXYF0MxlzPR6VA=;
        b=KcJSkVnisKq6ebOnf4I0rDsOXqCbf6JM18DKVvTgFxMm/HSe1b4uepN8RDp3rlTu4g
         PjE4BMn/tz8VmYiLgsilVHCPqdPDn5SVda46TJknsBkNOvzBLOuVuGT0RuAXXAOjcZmg
         3kYVr7k2d7BPVjM62SLIK/DAUQ6VHw32ausvSlzRNgqjlzSyeC58TFrR/56adL/HS8Z1
         lzZC5N7toQAD4Rk8+tZ1Ma1TxvVXtigg1mcEtG69Sd5GZcplE5q4D0zAAYeN6+zXhB5E
         kEuP4q8iWIR2B4W97a3mhsdLEvWL2ySJVIpa2EPHImIxPuOJ5NoqYnIMLM/7mTzonQFi
         XCEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532m0l0SAPp3ihOge1UHvnX1w5dEgFAQXXj+zUMV88f68094sjG6
	ut99Wz/Yf+757/IkMAI6Na0=
X-Google-Smtp-Source: ABdhPJyIXr2AEI3ImII3E19oy2OqtV5amKAc2D8ZjqrMmjIgOI308qjCAdjHT5hgEBGLX4wQ8mkP/w==
X-Received: by 2002:a05:6102:201b:: with SMTP id p27mr3415946vsr.101.1590544641993;
        Tue, 26 May 2020 18:57:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:80cf:: with SMTP id b198ls1360317vsd.3.gmail; Tue, 26
 May 2020 18:57:21 -0700 (PDT)
X-Received: by 2002:a67:684a:: with SMTP id d71mr3142618vsc.176.1590544641636;
        Tue, 26 May 2020 18:57:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590544641; cv=none;
        d=google.com; s=arc-20160816;
        b=OE1nIy72BK+1GqODBarasF45Daan2BnhW7aPwAAj4TJ296kgneJZjOS7jC+57y+rWE
         31/Cp8mImZgYrfWXxDTQbfYrVo3fWUoFkbPSxnQNjoR5Kx1RQX/rO48OH876UORNOq3p
         tEoUkL4pk89B8Nhiatm+VNc5CaE9OxI6ljLklHtniMVr6jDTxGgDnRIu4y1OWJzGRBSr
         n2Jxh6Ayrx9hULFnEyX4ELZ+hFnmluf6LolmfDx3tozwqNM/fuuUtU+6NQTjNipLQMtR
         B0bgKLhUM16ld+39YVdeGxpY3NQxfdwfLOU2wdC3UO3/DVgOKLwpCQzqTldhcwThIEV4
         +WYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-signature;
        bh=SR919SUjGUEOgu6aawZxJ9MFHnifhK/bHfB0G/3X0fI=;
        b=GSry6R6M9digqc89HWy9aP5CWiWCNaIz3D/PVEASpx1tvvlC/ysaHibIOWh3YpKUoF
         kGa6WBKETvAdAWxmLbDdw73GZfGccas+zepQjDS4E6NXuThsKHxXhZZ/cOxYjuhGcN1T
         38TPOigG7s3b47lhukyCL9DoxM2zw9UmzZDdICR/dP8yAaVE0o/GOqeBN3TUbaUpzDu0
         tqYktxB8vTcCdz4iY4BdVGPH+Sp8Ra2+xkUGuW3g7zFGSonAs0CbzitIf7qJyxekm+9C
         TqvgL1bH4bgI11VcPsLlEEPYw0ax1BZc6or6AQgt0AQ+wyPjGLtG/6UvnSTXITH4lYuD
         ipwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dxuuu.xyz header.s=fm3 header.b=cq4cSNvp;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="k7o/aCqW";
       spf=pass (google.com: domain of dxu@dxuuu.xyz designates 66.111.4.229 as permitted sender) smtp.mailfrom=dxu@dxuuu.xyz
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com. [66.111.4.229])
        by gmr-mx.google.com with ESMTPS id e10si131834vkp.4.2020.05.26.18.57.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 18:57:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of dxu@dxuuu.xyz designates 66.111.4.229 as permitted sender) client-ip=66.111.4.229;
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailnew.nyi.internal (Postfix) with ESMTP id F0D13580130;
	Tue, 26 May 2020 21:57:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Tue, 26 May 2020 21:57:20 -0400
X-ME-Sender: <xms:AMnNXhkgQRzrFeZXHml6CVKTpKr1BjPRrTCG9X5wY4FFJqiMEAZzFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvfedghedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucgfrhhlucfvnfffucdljedtmdenucfjughrpefhvf
    fufffkofgggfestdekredtredttdenucfhrhhomhepffgrnhhivghlucgiuhcuoegugihu
    segugihuuhhurdighiiiqeenucggtffrrghtthgvrhhnpeeifffgledvffeitdeljedvte
    effeeivdefheeiveevjeduieeigfetieevieffffenucfkphepjeefrdelfedrvdegjedr
    udefgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    gugihusegugihuuhhurdighiii
X-ME-Proxy: <xmx:AMnNXs08kxfcZlxVTfc6s5Mg2voABwVlKDQCbkm9n-ClABInitVuGA>
    <xmx:AMnNXnpprRwZEB6eNarDnIcbEN8WqO-OHmH7cc7yFLcLmdkBpoZ5nQ>
    <xmx:AMnNXhnx9E-k8BokHtE2BFPaQkWVpn3YJwf5r8zLd5wF1-wehTV5Dg>
    <xmx:AMnNXtOWFFfbbb8vIDMv-joayJ2cUsN9uzADKJb9B1ijBs-RYannvQ>
Received: from localhost.localdomain (c-73-93-247-134.hsd1.ca.comcast.net [73.93.247.134])
	by mail.messagingengine.com (Postfix) with ESMTPA id 7A02E3060F09;
	Tue, 26 May 2020 21:57:18 -0400 (EDT)
From: Daniel Xu <dxu@dxuuu.xyz>
To: ast@kernel.org,
	daniel@iogearbox.net,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	andriin@fb.com,
	john.fastabend@gmail.com,
	kpsingh@chromium.org,
	davem@davemloft.net,
	kuba@kernel.org,
	hawk@kernel.org,
	bpf@vger.kernel.org
Cc: Daniel Xu <dxu@dxuuu.xyz>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH bpf-next] libbpf: Export bpf_object__load_vmlinux_btf
Date: Tue, 26 May 2020 18:57:04 -0700
Message-Id: <20200527015704.2294223-1-dxu@dxuuu.xyz>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: dxu@dxuuu.xyz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dxuuu.xyz header.s=fm3 header.b=cq4cSNvp;       dkim=pass
 header.i=@messagingengine.com header.s=fm2 header.b="k7o/aCqW";
       spf=pass (google.com: domain of dxu@dxuuu.xyz designates 66.111.4.229
 as permitted sender) smtp.mailfrom=dxu@dxuuu.xyz
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

Right now the libbpf model encourages loading the entire object at once.
In this model, libbpf handles loading BTF from vmlinux for us. However,
it can be useful to selectively load certain maps and programs inside an
object without loading everything else.

In the latter model, there was perviously no way to load BTF on-demand.
This commit exports the bpf_object__load_vmlinux_btf such that we are
able to load BTF on demand.

Signed-off-by: Daniel Xu <dxu@dxuuu.xyz>
---
 tools/lib/bpf/libbpf.c   | 2 +-
 tools/lib/bpf/libbpf.h   | 1 +
 tools/lib/bpf/libbpf.map | 1 +
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/tools/lib/bpf/libbpf.c b/tools/lib/bpf/libbpf.c
index 5d60de6fd818..399094b1f580 100644
--- a/tools/lib/bpf/libbpf.c
+++ b/tools/lib/bpf/libbpf.c
@@ -2477,7 +2477,7 @@ static inline bool libbpf_prog_needs_vmlinux_btf(struct bpf_program *prog)
 	return false;
 }
 
-static int bpf_object__load_vmlinux_btf(struct bpf_object *obj)
+int bpf_object__load_vmlinux_btf(struct bpf_object *obj)
 {
 	struct bpf_program *prog;
 	int err;
diff --git a/tools/lib/bpf/libbpf.h b/tools/lib/bpf/libbpf.h
index 1e2e399a5f2c..6cbd678eb124 100644
--- a/tools/lib/bpf/libbpf.h
+++ b/tools/lib/bpf/libbpf.h
@@ -147,6 +147,7 @@ LIBBPF_API unsigned int bpf_object__kversion(const struct bpf_object *obj);
 struct btf;
 LIBBPF_API struct btf *bpf_object__btf(const struct bpf_object *obj);
 LIBBPF_API int bpf_object__btf_fd(const struct bpf_object *obj);
+LIBBPF_API int bpf_object__load_vmlinux_btf(struct bpf_object *obj);
 
 LIBBPF_API struct bpf_program *
 bpf_object__find_program_by_title(const struct bpf_object *obj,
diff --git a/tools/lib/bpf/libbpf.map b/tools/lib/bpf/libbpf.map
index 381a7342ecfc..56415e671c70 100644
--- a/tools/lib/bpf/libbpf.map
+++ b/tools/lib/bpf/libbpf.map
@@ -261,6 +261,7 @@ LIBBPF_0.0.9 {
 		bpf_iter_create;
 		bpf_link_get_fd_by_id;
 		bpf_link_get_next_id;
+		bpf_object__load_vmlinux_btf;
 		bpf_program__attach_iter;
 		perf_buffer__consume;
 } LIBBPF_0.0.8;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527015704.2294223-1-dxu%40dxuuu.xyz.
