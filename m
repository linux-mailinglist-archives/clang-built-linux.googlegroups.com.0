Return-Path: <clang-built-linux+bncBC2ORX645YPRB34WXWBQMGQEFM6T5FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 923B4358C34
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:04 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id g7sf1638793qtb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906543; cv=pass;
        d=google.com; s=arc-20160816;
        b=tpuUk6bgZT4ph2/YFA5XSMm5N6tXhFYjRTc/gjNFKUd6W6qkDoR+y3W9CIYm6yPDhl
         Ff52Hjx76HblnvtzM/8KS6hcVbptBj+qfZRnpo1lbp7LUOQD6lWcTqlt7cBLpXgCzbNp
         uYINFk0hD6L0x3VxHuWzovJyIE8pm5exo4eh7fQJuT3yLcwBAB/4hxDN/cqzAIHah4D2
         GR4E8tarHoNz9e4/UEX+/oMX1gz0K05ptNzDVvoCKk4d/J4Tw2rJyUYnyLGMo6/ewnE6
         dGU/UBBUiKXER/xYYtRG4qZD8xKTGHN1XXGIFf15nixowycOSvn9Ua2y8p4xGXGwcaba
         qNwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Pu/xoPrvEqOJrJ0xqT7ekY2udxzjVcxWmjuqODUcnrE=;
        b=k6zW34jAvn+L3P0N1oJtnxR6ew+7dKM86DG+Ymxjuc6LSb1V3ZVi4Nd6rnzWI0n6ka
         dzuRGInBVPdnEZtLJ9Crru5TGUvhSMnGobzwhPhm7nI1M+cYq9Y2TbFhREnl6aklP5/F
         fSbx/GiNQUBCb44y0TPS/Kt+S8buwUlHbKuPqdyqIG2khaUV6voJYMWQ5W/s4vgfRELT
         IVkhmgyYA54xRY4IQ0qWAmOHUPOp1wM28v21is3F9fiYMc/+2q6y1BmQLfBZnN8+d+9C
         lT4U6/G/JxyxETNmbiO4O+S2nShaZBXYPJ1oV/hJizng1XWpm1bYuN3f+m9PITno+DxH
         D/6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F2Jw4Yro;
       spf=pass (google.com: domain of 3bktvyawkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3bktvYAwKAMs9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pu/xoPrvEqOJrJ0xqT7ekY2udxzjVcxWmjuqODUcnrE=;
        b=acGpl1cy32lOZiRDVBMshg0OZO/u5xk6uT5ka1Xai59qzxUUBkwfk2l+WOK/7rzMAV
         tgUDjVHCzP/6hlsXeyH3Hf+LmmcM34jsTUxbf2Il12vykfI1RAYnjjPg680v2hNFNKoo
         xH1KBNNyQ1lPgiYgtdU/30BVAszAh47hT3DcL2ye/xvRSdcSuDtyDhEn1IBgczlh10qD
         zowYC1RsLuTpjslqlCiMxgUm3reQEPXVcRmMnkJrbeUnozOrDmHfC4rUBLA26PdIN2pJ
         RCWmXwNZO8cHShiuBKcRwCVJ+0MynhOHqaimt9V9OD7e++CIY08Ci8X8/NSl6dwtDtpS
         EPhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pu/xoPrvEqOJrJ0xqT7ekY2udxzjVcxWmjuqODUcnrE=;
        b=AT2XLUGMp1WbAwXAJavYlrpUWdaTOLKHOHTpBi7P/xs9oynkQj45VQz0rgEbNG9SK0
         8Zzpu34W4FUiahvZYGXpLLAFgHkA3M986GI/zmApHZHbXq1qUmq7cLX+dWwURH0bIEBV
         aCx5oHlaA6OhrU7qCR5bVTykmJSZczXXtwIrTwDYAqGfzt8yukXbyfOuL48PGRA7bLth
         8eBi1QS0KhzoI6zhJNdAYeuQBq3GkiAsWVVAcXqsKqtA6S/0/MuG7e8ZkvBv5GFASumY
         +1K+Ar3vIlhIfgQG4XSG4YOf7RqklhWZ/zj7LexN6s136HFdVs8pya0odhltMIbUiUu6
         x0gw==
X-Gm-Message-State: AOAM532ddzTFhKZXjG753HQuAettNFZxX/gTzfBbMDrHgnkKFs0/0mUZ
	P6gvKJDlfPGOQJToqkYWjPo=
X-Google-Smtp-Source: ABdhPJxnzfLh65fe1tWY4TxydjGMHPT7Gld+5uTzclPZHaLepC4H8J4oGMB/yh8Av64vz3XBA0e+QA==
X-Received: by 2002:a05:620a:1477:: with SMTP id j23mr9494081qkl.416.1617906543572;
        Thu, 08 Apr 2021 11:29:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:73cf:: with SMTP id v15ls2613969qtp.0.gmail; Thu, 08 Apr
 2021 11:29:03 -0700 (PDT)
X-Received: by 2002:ac8:7412:: with SMTP id p18mr8851014qtq.41.1617906543058;
        Thu, 08 Apr 2021 11:29:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906543; cv=none;
        d=google.com; s=arc-20160816;
        b=n8Ejc1RwR+SZoVjUCfHRkulbnveBdXPLk8f5zfOoNL2BaF782CDr8WrR9/s6idKghP
         2TWcQgcXCodVyocFcCN++OU9bYFO8pddT12iOrjKGqyPJpzvfISN5FvUWES9qGg49j64
         9jlMmnMTv2XTemhb3NhRNhEqCF2KaX+P4mFcT0x1/LN8T62d4xmdvZfjWIqeeRnxKerP
         8oiZcp4FOy/Zmwzkpd+cfBKuhSWhVx4SdJoh5MGNpqqeRk4ml9pzBI/73XCatN0AGZ+f
         atskPnUcGTziOCwWnhZ5gPExmYd6J/PW6L78qfL3JHHEakW/4Ko/MCVj77nd2f/ZH6H8
         8P7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xEgJ+NAjM5FxzF9bQSDPWb3XbRSfsF189Czr5tFjjno=;
        b=a9j60+ZJWQBipcWstzUlvCjMczEwesZlSoAqi44rPUwZyeh4nyhWIRN75hiXtpJRVE
         I34WGDy42nBydV8EMmzxRqtNTT9L7aVXEu8oI3/AQpm/RqNTVK46Je3RsRORywOPNKbv
         JAURyvAfcRu1VrgwH35yrvb20hDp7okpR9nku8n9E8JVruSbGAeM1xE6Q+pBdZ4+UzOY
         n5JO645eCvgx4aRk4BhCoaOIIi2/Uf5P6IHnV4oh3wpHOqESfz2HU1Uf55uVxiQkwIr+
         l2HCvVtGjcoGe/LlPRDJ4QklmDMnHfV5PLlCskQ/UvktDzuss9uYaxAN5fcS+cdvij1+
         VC/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F2Jw4Yro;
       spf=pass (google.com: domain of 3bktvyawkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3bktvYAwKAMs9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id c22si22837qtg.5.2021.04.08.11.29.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bktvyawkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id t24so1851038qkg.3
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:03 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:1870:: with SMTP id
 eh16mr10009149qvb.23.1617906542706; Thu, 08 Apr 2021 11:29:02 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:34 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 09/18] treewide: Change list_sort to use const pointers
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F2Jw4Yro;       spf=pass
 (google.com: domain of 3bktvyawkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3bktvYAwKAMs9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

list_sort() internally casts the comparison function passed to it
to a different type with constant struct list_head pointers, and
uses this pointer to call the functions, which trips indirect call
Control-Flow Integrity (CFI) checking.

Instead of removing the consts, this change defines the
list_cmp_func_t type and changes the comparison function types of
all list_sort() callers to use const pointers, thus avoiding type
mismatches.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm64/kvm/vgic/vgic-its.c                  |  8 ++++----
 arch/arm64/kvm/vgic/vgic.c                      |  3 ++-
 block/blk-mq-sched.c                            |  3 ++-
 block/blk-mq.c                                  |  3 ++-
 drivers/acpi/nfit/core.c                        |  3 ++-
 drivers/acpi/numa/hmat.c                        |  3 ++-
 drivers/clk/keystone/sci-clk.c                  |  4 ++--
 drivers/gpu/drm/drm_modes.c                     |  3 ++-
 drivers/gpu/drm/i915/gt/intel_engine_user.c     |  3 ++-
 drivers/gpu/drm/i915/gvt/debugfs.c              |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c   |  3 ++-
 drivers/gpu/drm/radeon/radeon_cs.c              |  4 ++--
 .../hw/usnic/usnic_uiom_interval_tree.c         |  3 ++-
 drivers/interconnect/qcom/bcm-voter.c           |  2 +-
 drivers/md/raid5.c                              |  3 ++-
 drivers/misc/sram.c                             |  4 ++--
 drivers/nvme/host/core.c                        |  3 ++-
 .../pci/controller/cadence/pcie-cadence-host.c  |  3 ++-
 drivers/spi/spi-loopback-test.c                 |  3 ++-
 fs/btrfs/raid56.c                               |  3 ++-
 fs/btrfs/tree-log.c                             |  3 ++-
 fs/btrfs/volumes.c                              |  3 ++-
 fs/ext4/fsmap.c                                 |  4 ++--
 fs/gfs2/glock.c                                 |  3 ++-
 fs/gfs2/log.c                                   |  2 +-
 fs/gfs2/lops.c                                  |  3 ++-
 fs/iomap/buffered-io.c                          |  3 ++-
 fs/ubifs/gc.c                                   |  7 ++++---
 fs/ubifs/replay.c                               |  4 ++--
 fs/xfs/scrub/bitmap.c                           |  4 ++--
 fs/xfs/xfs_bmap_item.c                          |  4 ++--
 fs/xfs/xfs_buf.c                                |  6 +++---
 fs/xfs/xfs_extent_busy.c                        |  4 ++--
 fs/xfs/xfs_extent_busy.h                        |  3 ++-
 fs/xfs/xfs_extfree_item.c                       |  4 ++--
 fs/xfs/xfs_refcount_item.c                      |  4 ++--
 fs/xfs/xfs_rmap_item.c                          |  4 ++--
 include/linux/list_sort.h                       |  7 ++++---
 lib/list_sort.c                                 | 17 ++++++-----------
 lib/test_list_sort.c                            |  3 ++-
 net/tipc/name_table.c                           |  4 ++--
 41 files changed, 90 insertions(+), 72 deletions(-)

diff --git a/arch/arm64/kvm/vgic/vgic-its.c b/arch/arm64/kvm/vgic/vgic-its.c
index 40cbaca81333..b9518f94bd43 100644
--- a/arch/arm64/kvm/vgic/vgic-its.c
+++ b/arch/arm64/kvm/vgic/vgic-its.c
@@ -2190,8 +2190,8 @@ static int vgic_its_restore_ite(struct vgic_its *its, u32 event_id,
 	return offset;
 }
 
-static int vgic_its_ite_cmp(void *priv, struct list_head *a,
-			    struct list_head *b)
+static int vgic_its_ite_cmp(void *priv, const struct list_head *a,
+			    const struct list_head *b)
 {
 	struct its_ite *itea = container_of(a, struct its_ite, ite_list);
 	struct its_ite *iteb = container_of(b, struct its_ite, ite_list);
@@ -2329,8 +2329,8 @@ static int vgic_its_restore_dte(struct vgic_its *its, u32 id,
 	return offset;
 }
 
-static int vgic_its_device_cmp(void *priv, struct list_head *a,
-			       struct list_head *b)
+static int vgic_its_device_cmp(void *priv, const struct list_head *a,
+			       const struct list_head *b)
 {
 	struct its_device *deva = container_of(a, struct its_device, dev_list);
 	struct its_device *devb = container_of(b, struct its_device, dev_list);
diff --git a/arch/arm64/kvm/vgic/vgic.c b/arch/arm64/kvm/vgic/vgic.c
index 1c597c9885fa..15b666200f0b 100644
--- a/arch/arm64/kvm/vgic/vgic.c
+++ b/arch/arm64/kvm/vgic/vgic.c
@@ -255,7 +255,8 @@ static struct kvm_vcpu *vgic_target_oracle(struct vgic_irq *irq)
  * Return negative if "a" sorts before "b", 0 to preserve order, and positive
  * to sort "b" before "a".
  */
-static int vgic_irq_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int vgic_irq_cmp(void *priv, const struct list_head *a,
+			const struct list_head *b)
 {
 	struct vgic_irq *irqa = container_of(a, struct vgic_irq, ap_list);
 	struct vgic_irq *irqb = container_of(b, struct vgic_irq, ap_list);
diff --git a/block/blk-mq-sched.c b/block/blk-mq-sched.c
index e1e997af89a0..3ebd6f10f728 100644
--- a/block/blk-mq-sched.c
+++ b/block/blk-mq-sched.c
@@ -75,7 +75,8 @@ void blk_mq_sched_restart(struct blk_mq_hw_ctx *hctx)
 	blk_mq_run_hw_queue(hctx, true);
 }
 
-static int sched_rq_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int sched_rq_cmp(void *priv, const struct list_head *a,
+			const struct list_head *b)
 {
 	struct request *rqa = container_of(a, struct request, queuelist);
 	struct request *rqb = container_of(b, struct request, queuelist);
diff --git a/block/blk-mq.c b/block/blk-mq.c
index d4d7c1caa439..4e3a70ab5be1 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -1895,7 +1895,8 @@ void blk_mq_insert_requests(struct blk_mq_hw_ctx *hctx, struct blk_mq_ctx *ctx,
 	spin_unlock(&ctx->lock);
 }
 
-static int plug_rq_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int plug_rq_cmp(void *priv, const struct list_head *a,
+		       const struct list_head *b)
 {
 	struct request *rqa = container_of(a, struct request, queuelist);
 	struct request *rqb = container_of(b, struct request, queuelist);
diff --git a/drivers/acpi/nfit/core.c b/drivers/acpi/nfit/core.c
index 8c5dde628405..d15e3ee93b5b 100644
--- a/drivers/acpi/nfit/core.c
+++ b/drivers/acpi/nfit/core.c
@@ -1195,7 +1195,8 @@ static int __nfit_mem_init(struct acpi_nfit_desc *acpi_desc,
 	return 0;
 }
 
-static int nfit_mem_cmp(void *priv, struct list_head *_a, struct list_head *_b)
+static int nfit_mem_cmp(void *priv, const struct list_head *_a,
+		const struct list_head *_b)
 {
 	struct nfit_mem *a = container_of(_a, typeof(*a), list);
 	struct nfit_mem *b = container_of(_b, typeof(*b), list);
diff --git a/drivers/acpi/numa/hmat.c b/drivers/acpi/numa/hmat.c
index cb73a5d6ea76..137a5dd880c2 100644
--- a/drivers/acpi/numa/hmat.c
+++ b/drivers/acpi/numa/hmat.c
@@ -558,7 +558,8 @@ static bool hmat_update_best(u8 type, u32 value, u32 *best)
 	return updated;
 }
 
-static int initiator_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int initiator_cmp(void *priv, const struct list_head *a,
+			 const struct list_head *b)
 {
 	struct memory_initiator *ia;
 	struct memory_initiator *ib;
diff --git a/drivers/clk/keystone/sci-clk.c b/drivers/clk/keystone/sci-clk.c
index aaf31abe1c8f..7e1b136e71ae 100644
--- a/drivers/clk/keystone/sci-clk.c
+++ b/drivers/clk/keystone/sci-clk.c
@@ -503,8 +503,8 @@ static int ti_sci_scan_clocks_from_fw(struct sci_clk_provider *provider)
 
 #else
 
-static int _cmp_sci_clk_list(void *priv, struct list_head *a,
-			     struct list_head *b)
+static int _cmp_sci_clk_list(void *priv, const struct list_head *a,
+			     const struct list_head *b)
 {
 	struct sci_clk *ca = container_of(a, struct sci_clk, node);
 	struct sci_clk *cb = container_of(b, struct sci_clk, node);
diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 1ac67d4505e0..6662d0457ad6 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -1290,7 +1290,8 @@ EXPORT_SYMBOL(drm_mode_prune_invalid);
  * Negative if @lh_a is better than @lh_b, zero if they're equivalent, or
  * positive if @lh_b is better than @lh_a.
  */
-static int drm_mode_compare(void *priv, struct list_head *lh_a, struct list_head *lh_b)
+static int drm_mode_compare(void *priv, const struct list_head *lh_a,
+			    const struct list_head *lh_b)
 {
 	struct drm_display_mode *a = list_entry(lh_a, struct drm_display_mode, head);
 	struct drm_display_mode *b = list_entry(lh_b, struct drm_display_mode, head);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 34e6096f196e..da21d2a10cc9 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -49,7 +49,8 @@ static const u8 uabi_classes[] = {
 	[VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
 };
 
-static int engine_cmp(void *priv, struct list_head *A, struct list_head *B)
+static int engine_cmp(void *priv, const struct list_head *A,
+		      const struct list_head *B)
 {
 	const struct intel_engine_cs *a =
 		container_of((struct rb_node *)A, typeof(*a), uabi_node);
diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gvt/debugfs.c
index 62e6a14ad58e..9f1c209d9251 100644
--- a/drivers/gpu/drm/i915/gvt/debugfs.c
+++ b/drivers/gpu/drm/i915/gvt/debugfs.c
@@ -41,7 +41,7 @@ struct diff_mmio {
 
 /* Compare two diff_mmio items. */
 static int mmio_offset_compare(void *priv,
-	struct list_head *a, struct list_head *b)
+	const struct list_head *a, const struct list_head *b)
 {
 	struct diff_mmio *ma;
 	struct diff_mmio *mb;
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index c1adea8765a9..52b9c39e0155 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1076,7 +1076,8 @@ static int igt_ppgtt_shrink_boom(void *arg)
 	return exercise_ppgtt(arg, shrink_boom);
 }
 
-static int sort_holes(void *priv, struct list_head *A, struct list_head *B)
+static int sort_holes(void *priv, const struct list_head *A,
+		      const struct list_head *B)
 {
 	struct drm_mm_node *a = list_entry(A, typeof(*a), hole_stack);
 	struct drm_mm_node *b = list_entry(B, typeof(*b), hole_stack);
diff --git a/drivers/gpu/drm/radeon/radeon_cs.c b/drivers/gpu/drm/radeon/radeon_cs.c
index 35e937d39b51..1a5c3db1d53b 100644
--- a/drivers/gpu/drm/radeon/radeon_cs.c
+++ b/drivers/gpu/drm/radeon/radeon_cs.c
@@ -393,8 +393,8 @@ int radeon_cs_parser_init(struct radeon_cs_parser *p, void *data)
 	return 0;
 }
 
-static int cmp_size_smaller_first(void *priv, struct list_head *a,
-				  struct list_head *b)
+static int cmp_size_smaller_first(void *priv, const struct list_head *a,
+				  const struct list_head *b)
 {
 	struct radeon_bo_list *la = list_entry(a, struct radeon_bo_list, tv.head);
 	struct radeon_bo_list *lb = list_entry(b, struct radeon_bo_list, tv.head);
diff --git a/drivers/infiniband/hw/usnic/usnic_uiom_interval_tree.c b/drivers/infiniband/hw/usnic/usnic_uiom_interval_tree.c
index d399523206c7..29d71267af78 100644
--- a/drivers/infiniband/hw/usnic/usnic_uiom_interval_tree.c
+++ b/drivers/infiniband/hw/usnic/usnic_uiom_interval_tree.c
@@ -83,7 +83,8 @@ usnic_uiom_interval_node_alloc(long int start, long int last, int ref_cnt,
 	return interval;
 }
 
-static int interval_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int interval_cmp(void *priv, const struct list_head *a,
+			const struct list_head *b)
 {
 	struct usnic_uiom_interval_node *node_a, *node_b;
 
diff --git a/drivers/interconnect/qcom/bcm-voter.c b/drivers/interconnect/qcom/bcm-voter.c
index 1cc565bce2f4..d1591a28b743 100644
--- a/drivers/interconnect/qcom/bcm-voter.c
+++ b/drivers/interconnect/qcom/bcm-voter.c
@@ -39,7 +39,7 @@ struct bcm_voter {
 	u32 tcs_wait;
 };
 
-static int cmp_vcd(void *priv, struct list_head *a, struct list_head *b)
+static int cmp_vcd(void *priv, const struct list_head *a, const struct list_head *b)
 {
 	const struct qcom_icc_bcm *bcm_a = list_entry(a, struct qcom_icc_bcm, list);
 	const struct qcom_icc_bcm *bcm_b = list_entry(b, struct qcom_icc_bcm, list);
diff --git a/drivers/md/raid5.c b/drivers/md/raid5.c
index 5d57a5bd171f..841e1c1aa5e6 100644
--- a/drivers/md/raid5.c
+++ b/drivers/md/raid5.c
@@ -953,7 +953,8 @@ static void dispatch_bio_list(struct bio_list *tmp)
 		submit_bio_noacct(bio);
 }
 
-static int cmp_stripe(void *priv, struct list_head *a, struct list_head *b)
+static int cmp_stripe(void *priv, const struct list_head *a,
+		      const struct list_head *b)
 {
 	const struct r5pending_data *da = list_entry(a,
 				struct r5pending_data, sibling);
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index 6c1a23cb3e8c..202bf951e909 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -144,8 +144,8 @@ static void sram_free_partitions(struct sram_dev *sram)
 	}
 }
 
-static int sram_reserve_cmp(void *priv, struct list_head *a,
-					struct list_head *b)
+static int sram_reserve_cmp(void *priv, const struct list_head *a,
+					const struct list_head *b)
 {
 	struct sram_reserve *ra = list_entry(a, struct sram_reserve, list);
 	struct sram_reserve *rb = list_entry(b, struct sram_reserve, list);
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 0896e21642be..5eaaa51a5e30 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3855,7 +3855,8 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 	return ret;
 }
 
-static int ns_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int ns_cmp(void *priv, const struct list_head *a,
+		const struct list_head *b)
 {
 	struct nvme_ns *nsa = container_of(a, struct nvme_ns, list);
 	struct nvme_ns *nsb = container_of(b, struct nvme_ns, list);
diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
index 73dcf8cf98fb..ae1c55503513 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-host.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
@@ -345,7 +345,8 @@ static int cdns_pcie_host_bar_config(struct cdns_pcie_rc *rc,
 	return 0;
 }
 
-static int cdns_pcie_host_dma_ranges_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int cdns_pcie_host_dma_ranges_cmp(void *priv, const struct list_head *a,
+					 const struct list_head *b)
 {
 	struct resource_entry *entry1, *entry2;
 
diff --git a/drivers/spi/spi-loopback-test.c b/drivers/spi/spi-loopback-test.c
index df981e55c24c..f1cf2232f0b5 100644
--- a/drivers/spi/spi-loopback-test.c
+++ b/drivers/spi/spi-loopback-test.c
@@ -454,7 +454,8 @@ struct rx_ranges {
 	u8 *end;
 };
 
-static int rx_ranges_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int rx_ranges_cmp(void *priv, const struct list_head *a,
+			 const struct list_head *b)
 {
 	struct rx_ranges *rx_a = list_entry(a, struct rx_ranges, list);
 	struct rx_ranges *rx_b = list_entry(b, struct rx_ranges, list);
diff --git a/fs/btrfs/raid56.c b/fs/btrfs/raid56.c
index 8c31357f08ed..f4139de63b2e 100644
--- a/fs/btrfs/raid56.c
+++ b/fs/btrfs/raid56.c
@@ -1634,7 +1634,8 @@ struct btrfs_plug_cb {
 /*
  * rbios on the plug list are sorted for easier merging.
  */
-static int plug_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int plug_cmp(void *priv, const struct list_head *a,
+		    const struct list_head *b)
 {
 	struct btrfs_raid_bio *ra = container_of(a, struct btrfs_raid_bio,
 						 plug_list);
diff --git a/fs/btrfs/tree-log.c b/fs/btrfs/tree-log.c
index 92a368627791..00a88bd8105e 100644
--- a/fs/btrfs/tree-log.c
+++ b/fs/btrfs/tree-log.c
@@ -4136,7 +4136,8 @@ static noinline int copy_items(struct btrfs_trans_handle *trans,
 	return ret;
 }
 
-static int extent_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int extent_cmp(void *priv, const struct list_head *a,
+		      const struct list_head *b)
 {
 	struct extent_map *em1, *em2;
 
diff --git a/fs/btrfs/volumes.c b/fs/btrfs/volumes.c
index 1c6810bbaf8b..912dd8b9f156 100644
--- a/fs/btrfs/volumes.c
+++ b/fs/btrfs/volumes.c
@@ -1224,7 +1224,8 @@ static int open_fs_devices(struct btrfs_fs_devices *fs_devices,
 	return 0;
 }
 
-static int devid_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int devid_cmp(void *priv, const struct list_head *a,
+		     const struct list_head *b)
 {
 	struct btrfs_device *dev1, *dev2;
 
diff --git a/fs/ext4/fsmap.c b/fs/ext4/fsmap.c
index 4c2a9fe30067..4493ef0c715e 100644
--- a/fs/ext4/fsmap.c
+++ b/fs/ext4/fsmap.c
@@ -354,8 +354,8 @@ static unsigned int ext4_getfsmap_find_sb(struct super_block *sb,
 
 /* Compare two fsmap items. */
 static int ext4_getfsmap_compare(void *priv,
-				 struct list_head *a,
-				 struct list_head *b)
+				 const struct list_head *a,
+				 const struct list_head *b)
 {
 	struct ext4_fsmap *fa;
 	struct ext4_fsmap *fb;
diff --git a/fs/gfs2/glock.c b/fs/gfs2/glock.c
index 9567520d79f7..c06a6cdf05de 100644
--- a/fs/gfs2/glock.c
+++ b/fs/gfs2/glock.c
@@ -1732,7 +1732,8 @@ void gfs2_glock_complete(struct gfs2_glock *gl, int ret)
 	spin_unlock(&gl->gl_lockref.lock);
 }
 
-static int glock_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int glock_cmp(void *priv, const struct list_head *a,
+		     const struct list_head *b)
 {
 	struct gfs2_glock *gla, *glb;
 
diff --git a/fs/gfs2/log.c b/fs/gfs2/log.c
index 6410281546f9..88649b43fcff 100644
--- a/fs/gfs2/log.c
+++ b/fs/gfs2/log.c
@@ -695,7 +695,7 @@ void log_flush_wait(struct gfs2_sbd *sdp)
 	}
 }
 
-static int ip_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int ip_cmp(void *priv, const struct list_head *a, const struct list_head *b)
 {
 	struct gfs2_inode *ipa, *ipb;
 
diff --git a/fs/gfs2/lops.c b/fs/gfs2/lops.c
index a82f4747aa8d..b4809967efc6 100644
--- a/fs/gfs2/lops.c
+++ b/fs/gfs2/lops.c
@@ -634,7 +634,8 @@ static void gfs2_check_magic(struct buffer_head *bh)
 	kunmap_atomic(kaddr);
 }
 
-static int blocknr_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int blocknr_cmp(void *priv, const struct list_head *a,
+		       const struct list_head *b)
 {
 	struct gfs2_bufdata *bda, *bdb;
 
diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 414769a6ad11..0129e6bab985 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -1155,7 +1155,8 @@ iomap_ioend_try_merge(struct iomap_ioend *ioend, struct list_head *more_ioends,
 EXPORT_SYMBOL_GPL(iomap_ioend_try_merge);
 
 static int
-iomap_ioend_compare(void *priv, struct list_head *a, struct list_head *b)
+iomap_ioend_compare(void *priv, const struct list_head *a,
+		const struct list_head *b)
 {
 	struct iomap_ioend *ia = container_of(a, struct iomap_ioend, io_list);
 	struct iomap_ioend *ib = container_of(b, struct iomap_ioend, io_list);
diff --git a/fs/ubifs/gc.c b/fs/ubifs/gc.c
index a4aaeea63893..dc3e26e9ed7b 100644
--- a/fs/ubifs/gc.c
+++ b/fs/ubifs/gc.c
@@ -102,7 +102,8 @@ static int switch_gc_head(struct ubifs_info *c)
  * This function compares data nodes @a and @b. Returns %1 if @a has greater
  * inode or block number, and %-1 otherwise.
  */
-static int data_nodes_cmp(void *priv, struct list_head *a, struct list_head *b)
+static int data_nodes_cmp(void *priv, const struct list_head *a,
+			  const struct list_head *b)
 {
 	ino_t inuma, inumb;
 	struct ubifs_info *c = priv;
@@ -145,8 +146,8 @@ static int data_nodes_cmp(void *priv, struct list_head *a, struct list_head *b)
  * first and sorted by length in descending order. Directory entry nodes go
  * after inode nodes and are sorted in ascending hash valuer order.
  */
-static int nondata_nodes_cmp(void *priv, struct list_head *a,
-			     struct list_head *b)
+static int nondata_nodes_cmp(void *priv, const struct list_head *a,
+			     const struct list_head *b)
 {
 	ino_t inuma, inumb;
 	struct ubifs_info *c = priv;
diff --git a/fs/ubifs/replay.c b/fs/ubifs/replay.c
index 0f8a6a16421b..4d17e5382b74 100644
--- a/fs/ubifs/replay.c
+++ b/fs/ubifs/replay.c
@@ -298,8 +298,8 @@ static int apply_replay_entry(struct ubifs_info *c, struct replay_entry *r)
  * entries @a and @b by comparing their sequence numer.  Returns %1 if @a has
  * greater sequence number and %-1 otherwise.
  */
-static int replay_entries_cmp(void *priv, struct list_head *a,
-			      struct list_head *b)
+static int replay_entries_cmp(void *priv, const struct list_head *a,
+			      const struct list_head *b)
 {
 	struct ubifs_info *c = priv;
 	struct replay_entry *ra, *rb;
diff --git a/fs/xfs/scrub/bitmap.c b/fs/xfs/scrub/bitmap.c
index f88694f22d05..813b5f219113 100644
--- a/fs/xfs/scrub/bitmap.c
+++ b/fs/xfs/scrub/bitmap.c
@@ -63,8 +63,8 @@ xbitmap_init(
 static int
 xbitmap_range_cmp(
 	void			*priv,
-	struct list_head	*a,
-	struct list_head	*b)
+	const struct list_head	*a,
+	const struct list_head	*b)
 {
 	struct xbitmap_range	*ap;
 	struct xbitmap_range	*bp;
diff --git a/fs/xfs/xfs_bmap_item.c b/fs/xfs/xfs_bmap_item.c
index 2344757ede63..e3a691937e92 100644
--- a/fs/xfs/xfs_bmap_item.c
+++ b/fs/xfs/xfs_bmap_item.c
@@ -265,8 +265,8 @@ xfs_trans_log_finish_bmap_update(
 static int
 xfs_bmap_update_diff_items(
 	void				*priv,
-	struct list_head		*a,
-	struct list_head		*b)
+	const struct list_head		*a,
+	const struct list_head		*b)
 {
 	struct xfs_bmap_intent		*ba;
 	struct xfs_bmap_intent		*bb;
diff --git a/fs/xfs/xfs_buf.c b/fs/xfs/xfs_buf.c
index 37a1d12762d8..592800c8852f 100644
--- a/fs/xfs/xfs_buf.c
+++ b/fs/xfs/xfs_buf.c
@@ -2124,9 +2124,9 @@ xfs_buf_delwri_queue(
  */
 static int
 xfs_buf_cmp(
-	void		*priv,
-	struct list_head *a,
-	struct list_head *b)
+	void			*priv,
+	const struct list_head	*a,
+	const struct list_head	*b)
 {
 	struct xfs_buf	*ap = container_of(a, struct xfs_buf, b_list);
 	struct xfs_buf	*bp = container_of(b, struct xfs_buf, b_list);
diff --git a/fs/xfs/xfs_extent_busy.c b/fs/xfs/xfs_extent_busy.c
index ef17c1f6db32..a4075685d9eb 100644
--- a/fs/xfs/xfs_extent_busy.c
+++ b/fs/xfs/xfs_extent_busy.c
@@ -629,8 +629,8 @@ xfs_extent_busy_wait_all(
 int
 xfs_extent_busy_ag_cmp(
 	void			*priv,
-	struct list_head	*l1,
-	struct list_head	*l2)
+	const struct list_head	*l1,
+	const struct list_head	*l2)
 {
 	struct xfs_extent_busy	*b1 =
 		container_of(l1, struct xfs_extent_busy, list);
diff --git a/fs/xfs/xfs_extent_busy.h b/fs/xfs/xfs_extent_busy.h
index 990ab3891971..8aea07100092 100644
--- a/fs/xfs/xfs_extent_busy.h
+++ b/fs/xfs/xfs_extent_busy.h
@@ -58,7 +58,8 @@ void
 xfs_extent_busy_wait_all(struct xfs_mount *mp);
 
 int
-xfs_extent_busy_ag_cmp(void *priv, struct list_head *a, struct list_head *b);
+xfs_extent_busy_ag_cmp(void *priv, const struct list_head *a,
+	const struct list_head *b);
 
 static inline void xfs_extent_busy_sort(struct list_head *list)
 {
diff --git a/fs/xfs/xfs_extfree_item.c b/fs/xfs/xfs_extfree_item.c
index 93223ebb3372..2424230ca2c3 100644
--- a/fs/xfs/xfs_extfree_item.c
+++ b/fs/xfs/xfs_extfree_item.c
@@ -397,8 +397,8 @@ xfs_trans_free_extent(
 static int
 xfs_extent_free_diff_items(
 	void				*priv,
-	struct list_head		*a,
-	struct list_head		*b)
+	const struct list_head		*a,
+	const struct list_head		*b)
 {
 	struct xfs_mount		*mp = priv;
 	struct xfs_extent_free_item	*ra;
diff --git a/fs/xfs/xfs_refcount_item.c b/fs/xfs/xfs_refcount_item.c
index 07ebccbbf4df..746f4eda724c 100644
--- a/fs/xfs/xfs_refcount_item.c
+++ b/fs/xfs/xfs_refcount_item.c
@@ -269,8 +269,8 @@ xfs_trans_log_finish_refcount_update(
 static int
 xfs_refcount_update_diff_items(
 	void				*priv,
-	struct list_head		*a,
-	struct list_head		*b)
+	const struct list_head		*a,
+	const struct list_head		*b)
 {
 	struct xfs_mount		*mp = priv;
 	struct xfs_refcount_intent	*ra;
diff --git a/fs/xfs/xfs_rmap_item.c b/fs/xfs/xfs_rmap_item.c
index 49cebd68b672..dc4f0c9f0897 100644
--- a/fs/xfs/xfs_rmap_item.c
+++ b/fs/xfs/xfs_rmap_item.c
@@ -337,8 +337,8 @@ xfs_trans_log_finish_rmap_update(
 static int
 xfs_rmap_update_diff_items(
 	void				*priv,
-	struct list_head		*a,
-	struct list_head		*b)
+	const struct list_head		*a,
+	const struct list_head		*b)
 {
 	struct xfs_mount		*mp = priv;
 	struct xfs_rmap_intent		*ra;
diff --git a/include/linux/list_sort.h b/include/linux/list_sort.h
index 20f178c24e9d..453105f74e05 100644
--- a/include/linux/list_sort.h
+++ b/include/linux/list_sort.h
@@ -6,8 +6,9 @@
 
 struct list_head;
 
+typedef int __attribute__((nonnull(2,3))) (*list_cmp_func_t)(void *,
+		const struct list_head *, const struct list_head *);
+
 __attribute__((nonnull(2,3)))
-void list_sort(void *priv, struct list_head *head,
-	       int (*cmp)(void *priv, struct list_head *a,
-			  struct list_head *b));
+void list_sort(void *priv, struct list_head *head, list_cmp_func_t cmp);
 #endif
diff --git a/lib/list_sort.c b/lib/list_sort.c
index 52f0c258c895..a926d96ffd44 100644
--- a/lib/list_sort.c
+++ b/lib/list_sort.c
@@ -7,16 +7,13 @@
 #include <linux/list_sort.h>
 #include <linux/list.h>
 
-typedef int __attribute__((nonnull(2,3))) (*cmp_func)(void *,
-		struct list_head const *, struct list_head const *);
-
 /*
  * Returns a list organized in an intermediate format suited
  * to chaining of merge() calls: null-terminated, no reserved or
  * sentinel head node, "prev" links not maintained.
  */
 __attribute__((nonnull(2,3,4)))
-static struct list_head *merge(void *priv, cmp_func cmp,
+static struct list_head *merge(void *priv, list_cmp_func_t cmp,
 				struct list_head *a, struct list_head *b)
 {
 	struct list_head *head, **tail = &head;
@@ -52,7 +49,7 @@ static struct list_head *merge(void *priv, cmp_func cmp,
  * throughout.
  */
 __attribute__((nonnull(2,3,4,5)))
-static void merge_final(void *priv, cmp_func cmp, struct list_head *head,
+static void merge_final(void *priv, list_cmp_func_t cmp, struct list_head *head,
 			struct list_head *a, struct list_head *b)
 {
 	struct list_head *tail = head;
@@ -185,9 +182,7 @@ static void merge_final(void *priv, cmp_func cmp, struct list_head *head,
  * 2^(k+1) - 1 (second merge of case 5 when x == 2^(k-1) - 1).
  */
 __attribute__((nonnull(2,3)))
-void list_sort(void *priv, struct list_head *head,
-		int (*cmp)(void *priv, struct list_head *a,
-			struct list_head *b))
+void list_sort(void *priv, struct list_head *head, list_cmp_func_t cmp)
 {
 	struct list_head *list = head->next, *pending = NULL;
 	size_t count = 0;	/* Count of pending */
@@ -227,7 +222,7 @@ void list_sort(void *priv, struct list_head *head,
 		if (likely(bits)) {
 			struct list_head *a = *tail, *b = a->prev;
 
-			a = merge(priv, (cmp_func)cmp, b, a);
+			a = merge(priv, cmp, b, a);
 			/* Install the merged result in place of the inputs */
 			a->prev = b->prev;
 			*tail = a;
@@ -249,10 +244,10 @@ void list_sort(void *priv, struct list_head *head,
 
 		if (!next)
 			break;
-		list = merge(priv, (cmp_func)cmp, pending, list);
+		list = merge(priv, cmp, pending, list);
 		pending = next;
 	}
 	/* The final merge, rebuilding prev links */
-	merge_final(priv, (cmp_func)cmp, head, pending, list);
+	merge_final(priv, cmp, head, pending, list);
 }
 EXPORT_SYMBOL(list_sort);
diff --git a/lib/test_list_sort.c b/lib/test_list_sort.c
index 1f017d3b610e..00daaf23316f 100644
--- a/lib/test_list_sort.c
+++ b/lib/test_list_sort.c
@@ -56,7 +56,8 @@ static int __init check(struct debug_el *ela, struct debug_el *elb)
 	return 0;
 }
 
-static int __init cmp(void *priv, struct list_head *a, struct list_head *b)
+static int __init cmp(void *priv, const struct list_head *a,
+		      const struct list_head *b)
 {
 	struct debug_el *ela, *elb;
 
diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
index ee5ac40ea2b6..f8141443f2e2 100644
--- a/net/tipc/name_table.c
+++ b/net/tipc/name_table.c
@@ -397,8 +397,8 @@ static struct publication *tipc_service_remove_publ(struct service_range *sr,
  * Code reused: time_after32() for the same purpose
  */
 #define publication_after(pa, pb) time_after32((pa)->id, (pb)->id)
-static int tipc_publ_sort(void *priv, struct list_head *a,
-			  struct list_head *b)
+static int tipc_publ_sort(void *priv, const struct list_head *a,
+			  const struct list_head *b)
 {
 	struct publication *pa, *pb;
 
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-10-samitolvanen%40google.com.
