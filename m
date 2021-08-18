Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBP6K6KEAMGQEJT3ZEZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE743EFB95
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:24 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id n4-20020a9d64c40000b02904f40ca6ab63sf483708otl.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267263; cv=pass;
        d=google.com; s=arc-20160816;
        b=gRcPKO4frT3RYF+8lseMH8JydyYi1/10McUy01KHFIvddWWj/9xYuH2w1i7hdmankw
         TQCEXbg/kryjBnLjEJ2Rv0YBvHziWtlyH2FDvbmaPdeeMyb4+o9jrWDg2DBUhsNUd68f
         cbTGqgWMVOmTmuEnz2mWhqY/9e7wR/neZsBrBjxc2DVXUjJjNoGLEKX9EcmeB7X1CqII
         8yMBOIb4hrcDJv8oM074WvFPAnIdydSLQWtUrGm5LOZnxrUKlLEyKDaVj0Ztw9OhobNh
         CiEu+O4lEqPBvjVbKZ5l6eYA4e4hNao6TlC9AyEVZN0l1jhIuzHWfjE2yIMWkc6mzF5e
         FjmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BVBbrNzxXt4bp+Wemap5L4rs/TMfJg/gsIYVHdAzaiM=;
        b=g27/kNzRqn+Uk6wkUM7YTxbV7Mk4G0pC4jXwYvHMrliyITrFPuzVEQC7z7z131ua1A
         aMqPqvLf299+9UvL3s/hqD+Pg8cL90ivkRWrwHVAbVT4SmyA7bMNro2doK+3qYnBzTZ+
         lArriKqrr2gr5qn5yYDV+Tex5vEoLj2I/zlmUESewLae+EWp3DQP0hDBc0jvXp5m85YL
         syWoSbvqZE+YumSSfv8sFSzAl+b2tHSQSZNeL8VwNa5/7+w2SCswZeZ6iW9zmI5lEaaM
         JVOj/ZkCZVtDZquCxb22d3c3fkkLD67VcYi0KQq++3VEExI9X68xmJkAv9NMg9EceHo3
         2Kgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=chkB2Egl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BVBbrNzxXt4bp+Wemap5L4rs/TMfJg/gsIYVHdAzaiM=;
        b=ceglds8UvjMtkXAyhXXNEk0u/iXyTRGjThUvGaruM85YH4wHkEdM6mqqiwA1Yq3BYH
         oiN0/jsuruIpH77rjJBNICUJKj8jXoTQuoHWQ+bMR4KEWMQ+YPQMC52PLY4kz2bRFck7
         zNcn49iw+83wuhg6DRbQDyegXpXoMOnm5fSMuqH3kLjWDHz+n7FpoQpTN9mv/DPU/I7T
         oCy6Rz2MfpZM3UZrBJcGlFEAIdhoJRO/DmlfzKOeaqt5DLhopFyGbOazsRUMQdxjxTko
         YiGDzpJoWB/zm5q8OSFZgsKXBTHb1osPhod35gklslRuzkOO7opyHc7INlvO7tejkQw9
         cqMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BVBbrNzxXt4bp+Wemap5L4rs/TMfJg/gsIYVHdAzaiM=;
        b=l+ifO6nP0Iq36rF3G0kNdCHj++yT+FZLICDYrOkf+Cgcqd05BsqYGs5bHV92lSyMU+
         FUAKsONE+HSc0mz9Er0YuifgOl93VT61/hUNyDI5G/P8DUR1vmTDsqtXUwKI4XZD2vMp
         lLIMgKuTTxkt0M/EpFzZMAhRNnL79Sp3exqRearYQ+96lx4Mbq3c8m6O/WJPPz+Hm57L
         dAA3KPRh1nmbvScmRLuXzg/4g5l/j96umhsKmYZyhnuXI3ZDgZRz8IvLReKer88e9+v7
         bW0dyZ764UFPtcCVXkkSI1OfSu+03aBbI1ksSZNsdakIa8bQcl2fm6AtP1WHWUGeJm5q
         tOLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZKj6O9FgU0dD4yPGY8jp50RAPFq8Ghnwix9SMe8Lo+TnIw8wx
	HOurzRXGqaZQHYaZnsjtcUM=
X-Google-Smtp-Source: ABdhPJwOFFEbS/nlNYHS+LlJ8UBFoXS9If+jx+Ltp2AmoAooCa6OJjtVxhAzU0u7BW9zwKy+PYKlug==
X-Received: by 2002:a05:6808:10c8:: with SMTP id s8mr5802927ois.6.1629267263356;
        Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:15a6:: with SMTP id t38ls358877oiw.0.gmail; Tue, 17
 Aug 2021 23:14:23 -0700 (PDT)
X-Received: by 2002:a54:450b:: with SMTP id l11mr3849537oil.116.1629267263092;
        Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267263; cv=none;
        d=google.com; s=arc-20160816;
        b=Y3vkkY2cbJJ3nNbn0SHAF2VFTm86/FFmBiurVwVj07zsl5uEm8xgwxtMDzo3shn1Es
         ij/etxMleJjhO4QYFA2y/6LODOnPQnciAz5//lPzDz4Psz82224cDsd3qt7g/7PkkO0D
         wX3fnHq56mdspqglZKIw12qulgGEDc78UFehvJEtl7fc9v2TtSnJtHPTGK52/AwiIXMI
         JCbGyqrzyBhKyZlg1WVSfAFhwl1xIHX7LXTCPX/hHqqIEZqkUtewQSaVipjYEQJf858c
         P9Vmx8+gkqU60aObOWgMAJZL2si42EOC00ZmvfUsuJzH8OMTYkUoAtrq/IL3lNpo8tvk
         mKfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hsGHodQW7BgMepqmaGaetFXuKMTT3ZW1whu3YzYCf8E=;
        b=Q8PVCJkP/CF14XIGOjd3Qer5ytK0AMg1A4m2VCD69ZXNvZLHLxyZPucRWTeim2VGAb
         iqd89z/DrkXFbwhqOoG4dSWBMAEzZJ7bFbiwlsm7sqA/rKWvAGGDdCo98jnhlTavZMvZ
         JvROTWd1kqbJA2qL2LNgoxgG1o3P9lC9KbLQT66zkCKVYPjuqUvwdorKhs3iNtNWGr86
         4+fz5ZHcdgxDFuKyjlQk5mK1gZbGZeU4ogACnSDI6abQ45V4voQjqQbN9neSK65UIKx1
         JR/HO6SnGJ6/VbZJS9v9Ed+KA3e63l748sb3pU9F92n9W7Sb9cnBLWMtHlubtj7Z0OvR
         hWjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=chkB2Egl;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id b9si401133ooq.1.2021.08.17.23.14.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id w68so1076403pfd.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:23 -0700 (PDT)
X-Received: by 2002:a63:5902:: with SMTP id n2mr7166965pgb.305.1629267262822;
        Tue, 17 Aug 2021 23:14:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q26sm4699734pff.174.2021.08.17.23.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Max Gurtovoy <maxg@mellanox.com>,
	linux-rdma@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 48/63] IB/mthca: Use memset_startat() for clearing mpt_entry
Date: Tue, 17 Aug 2021 23:05:18 -0700
Message-Id: <20210818060533.3569517-49-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1273; h=from:subject; bh=6zw6bd38jtlUGiQNcgA+7Vj02RWEpIKH1rjaE20U52M=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMoltYN7PTWawkHd68VShtA89JYpvOPT9nwsL7B vMD1Gn+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKAAKCRCJcvTf3G3AJgWLEA CA0G8Um7L9QM3tAuk76gzDtGgj6wfZwbHC3gmdPYC4fe5ViwFuFPhPDIlMHnL5Oaft4DZAwvc4TUnI oTxi1AdRfYTfE3lw4LW1em7VDzoYiVdw68YpBJ6do2fEl9ZGK/0mX3zcOafcrAhiHBuet2CjOfPy6t Tq/8ys2f8EU1h6DXTZ5tCPSIi63+7bfI5g0u1GpcBNVQxt4gUaxR4O//oIO5lDG9qKBGuDeUG4v6MF sHcWe6CfAarnlC0ya+ORhjNk8xnbf+b/imo8zl4s0q9DrLXdZ7MNrxO3aI+5yaF2he2ea/hR5kliNG YKO8GWAbKimKYTi8SSFhhsLXFP/6Cks+GGfoihg9Z61PjIiHMhORoWY/P5pTQd90wKeXB9yySfHyeZ isD2ZFnlRhy403y1grxuLe0zaAw5SJXbwyy8thi3DDo7KeX4P92gmWueLuIvjcNP5Kj+GbCcV6vLSm nxByMIRVJuZ4ixj94olxP7vKtNZVvUPh4Ov/qwOFpG7f9rOHf1gXBcckiuBMeL+pZcSr/txM5+0jYN bYjM3KyxyB1TZMYtX1+WjrDISwqn5Gx8m/HAuDxJZ1l4CvotvblNbCStzkY4CxA2N1gZ+rSUQBe+yU YuRbJ6v7hrWUPvepMgl5M8bAqRbVyqW4hTUVa18TP98a9UAYJi8u4E2DpSiQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=chkB2Egl;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Use memset_startat() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct.

Cc: Doug Ledford <dledford@redhat.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Max Gurtovoy <maxg@mellanox.com>
Cc: linux-rdma@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/infiniband/hw/mthca/mthca_mr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/infiniband/hw/mthca/mthca_mr.c b/drivers/infiniband/hw/mthca/mthca_mr.c
index ce0e0867e488..1208e92ca3d3 100644
--- a/drivers/infiniband/hw/mthca/mthca_mr.c
+++ b/drivers/infiniband/hw/mthca/mthca_mr.c
@@ -469,8 +469,7 @@ int mthca_mr_alloc(struct mthca_dev *dev, u32 pd, int buffer_size_shift,
 	mpt_entry->start     = cpu_to_be64(iova);
 	mpt_entry->length    = cpu_to_be64(total_size);
 
-	memset(&mpt_entry->lkey, 0,
-	       sizeof *mpt_entry - offsetof(struct mthca_mpt_entry, lkey));
+	memset_startat(mpt_entry, 0, lkey);
 
 	if (mr->mtt)
 		mpt_entry->mtt_seg =
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-49-keescook%40chromium.org.
