Return-Path: <clang-built-linux+bncBDAOJ6534YNBB36R5KAAMGQE3BQFTXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B1730DB95
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 14:45:20 +0100 (CET)
Received: by mail-ej1-x63d.google.com with SMTP id le12sf12043711ejb.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 05:45:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612359919; cv=pass;
        d=google.com; s=arc-20160816;
        b=ilVm+DTdf/6XMFSmU/AUpq63B6FX6O2PtIoUmuTCmdP1/Tr37xNQH/mS+CR60sOL2x
         v4d7RUSQck2XhlKUMjMSXYPWfCmELPXSYLd3m5x8ib84MmCV3J1K7RTPBFS7kKzHFW6W
         e69Ioj/ZqpX8I/i+7i8rXUiXgQOalAgIRTdcO5IB0nwI29sHvACiowjdK9Wec+O7asDE
         HGsN0WN8XUHMKPTA2eeAIYpyXTbOoRES583zpzb6lgbHxndxfwf9ft/iXJzRNwMYbUUY
         tF8NeOegd6ItgUtOyleKY1YayxltMhCVFMmBi2mq/LVBJyTN4r22/U6pXuPtdSyFEWN5
         ImcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=r8SGKtUJdXtK3XSw6tw1oAY2TqoTbTkFqC0MSAKrENo=;
        b=NT4WWIDVjEmmVNRvs2DBd58MVzN2/KYfZ7rfQV1aTqO1mWmLB45Czterh3IvkzVMAt
         /FLsgJaJusCGKHo/bbUOulOCr65w2sTwytAey00Ws+/foxb1r4GFXw5XUeCyapqzU9Ty
         +2yduWn1GOpNpQG3MxhzxnkRVMGu8zqb3Grhgmi5YbgIWzuRPGFotLkTGz118kZVWMz5
         gaISKvRpoq1f1PFRYjkDc35x4oLf0hXAwV/tYFRl2JdqLPotmB4oNk/0JhwIy3XFvQxD
         yrq3fFSE04NarBsSrJK8TGoS0+sVEFBAlm+l94nEtFlKAdG1zPB9MdFu1CbZ834F/NkU
         gFjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uEVfZB7k;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r8SGKtUJdXtK3XSw6tw1oAY2TqoTbTkFqC0MSAKrENo=;
        b=XIIAbB6dcAMefTHPgvXBOU9LNrRMYhsS0XErUsgINo8PrTe0ipI7BY1hQYirR7+i8o
         k0Tj9/jvVP6k3JYzXtG0lHytupPYzH6Dt3hOUa86phJcsOmfB3F1k4FlSHHJAg73vGQf
         uU4VSensocFdWdTDVVPPloCyNY7f8t4VqBFltI/HN5zXckgrcty8KfrOxUO7S8ZBO890
         NZRShZvuj1TuxgC3HfaFMY5MBf7Xqstx/LZr/EKnmFzQe8yykzFqmERzQcq/JKEby/Ua
         vbhvpQWbPy7npUjJvK63SWRyg/cSBjcN4cKgiBqJZjj1qhGfgTJ6BwvW59v9ISVaawa5
         B/4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r8SGKtUJdXtK3XSw6tw1oAY2TqoTbTkFqC0MSAKrENo=;
        b=F+HT1UpGNys6KBQoOZSp6as0R2fXnR9pr9utkLqclupLW6I1Vp9PiemmD1bKaryzwl
         wqe8/92OqJHtBiUppCEjUtNvMzy3cgbei/4KVykl541fvUoZD/oklThQepPt/UtxS01F
         2bWz617fdf2neiSkxrFsdQ4igQ4eJ3elP1YvtduF8qaukmNlN0FHSsBllC367fh7U+lQ
         tIDxTUo/rIlAideI8BFCPokmw+KFcZr0rRLznW9/MsiuJ0udtQSacTyF7sjEPfNXbApi
         9ND8p9QsKLM/aSz8en/XdxHFdSTz+Z8nbICVePy515LRdIygNuSPg0GoCBODnxiqrVLW
         VXvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r8SGKtUJdXtK3XSw6tw1oAY2TqoTbTkFqC0MSAKrENo=;
        b=TkFPXobd70XKXUhTSvPaU0WvDcCaHTuAiWhe2FSLdC+EuszTdBCqd5DXGlcVwn1kbx
         2Yoqw1/+GepCE80yT4GwDpocLVzKzZU+MMCO5Gis2Y5B9bACIFlAccoAFe3bNB9Mer48
         aWDIlbGKIw52u4WVrWu9Ej1uHF4NXDUapyke7hGnSImrZgCebJ3hPTDWuLmsSCNFDiEP
         wv6yIOE282Ei3Uq7OkUjsDhF1XJejd13XqFCzDgYjS5sXy5vYkdTZHLFq6j7sJllYOtb
         Tqybg7Mz/W6BIe6OiB/NoMIw2SaTzSh7llSoQJkzpP0MoQldFSYH/HGAVN0LsAKslsZY
         zj9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PedCGVXBH69bvCsM4w92qj2SVOCq3bVlke0vhgkIxjvtvUdL5
	oOSze9Azs1VC87FvQUOn6hQ=
X-Google-Smtp-Source: ABdhPJwtKLw77+34oCCQyPNnopdizd9LgZbNc2ghKgNpUuz/6oiIhnN7v4Zj5C/aEd2oFH15N/fehQ==
X-Received: by 2002:aa7:d60f:: with SMTP id c15mr2990162edr.291.1612359919828;
        Wed, 03 Feb 2021 05:45:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1192:: with SMTP id n18ls1308089eja.5.gmail; Wed, 03
 Feb 2021 05:45:19 -0800 (PST)
X-Received: by 2002:a17:906:f2ca:: with SMTP id gz10mr3191770ejb.285.1612359919032;
        Wed, 03 Feb 2021 05:45:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612359919; cv=none;
        d=google.com; s=arc-20160816;
        b=rr8KOorGHp2GHroiiG4RDqL18yueV8l/qBvrdJ0xp+u9K/hX74khq043XxOqGK5Zgl
         FneCY+x5Fj8LuK9QyFiyV3e7SI9pHypNXJdkpzp/fc6yqzsHLOmz7bI8sRsnu3h5dpGt
         Qn2lYA0jByVL0v/a5UhwcGIU4qwGh+Qd53ljA/7LF+sQe3A1Im+RwzmLpvifRkcP9WjF
         O5YCwnKclfvK3xevcoDYlPAB7ZCJkHnkC+rrcXrWuJhN7oQsIMe/9lJIrO33TuLhn5U6
         nwaM+7qsNCYmDGFUlax3EUPESwTXT1brIV2FYcTAKs8qprshJaaxdqQcksdK+7dMxm5h
         6k4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JJ9DM6PdGtNUfSAd2slUQiJAIPkbwKKdmEnN7FGvrZ0=;
        b=MPcDgjSCfe/O/GxENoz8EwSyCsxwUQ6Zl+L7nthjQatPSKN+MsiOGK0OefggCj93fJ
         A9jvs7KUW/BGdDBxnRnl3zx8btyRGhTbiJNfeF4KYuXdcDW8VUvJDKPuAmg2tIhpmBRR
         jC94eaWRvPpq1NZR66J4ls0hFDquvA9G/cCT4ukm+QuBSgEar8JJC99YKhn+cGtYAu+x
         TYf/88Tw6A2ictDhA0sWvuYb8VNw5XeVbtkyg5eWc0Bx70OQ79Brdxo9Hd4ADSE8HfX6
         YrWLPSBp+iPIq4G2C0spRQkkurTjF45TRqsHcrBMWSERnkPjMJ/c/1W24QFxEnx7zb9x
         N03w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uEVfZB7k;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id jz19si156199ejb.0.2021.02.03.05.45.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 05:45:19 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id u25so33328070lfc.2
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 05:45:19 -0800 (PST)
X-Received: by 2002:a19:ad03:: with SMTP id t3mr1812604lfc.358.1612359918784;
        Wed, 03 Feb 2021 05:45:18 -0800 (PST)
Received: from localhost.localdomain ([146.158.65.228])
        by smtp.googlemail.com with ESMTPSA id p10sm259216lji.137.2021.02.03.05.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 05:45:18 -0800 (PST)
From: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
To: lkp@intel.com
Cc: clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	phillip@squashfs.org.uk,
	snovitoll@gmail.com,
	syzbot+2ccea6339d368360800d@syzkaller.appspotmail.com
Subject: [PATCH v2] fs/squashfs: restrict length of xattr_ids in read_xattr_id_table
Date: Wed,  3 Feb 2021 19:45:16 +0600
Message-Id: <20210203134516.1697931-1-snovitoll@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <202102032044.wrsk1CfP-lkp@intel.com>
References: <202102032044.wrsk1CfP-lkp@intel.com>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uEVfZB7k;       spf=pass
 (google.com: domain of snovitoll@gmail.com designates 2a00:1450:4864:20::12f
 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

In PATCH v2 fixed return -ENOMEM as error pointer.

>syzbot found WARNING in squashfs_read_table [1] when length of xattr_ids
>exceeds KMALLOC_MAX_SIZE in squashfs_read_table() for kmalloc().
>
>For other squashfs tables, currently such as boundary is checked with
>another table's boundaries. Xattr table is the last one, so there is
>no defined limit. But to avoid order >= MAX_ORDER warning condition,
>we should restrict SQUASHFS_XATTR_BLOCK_BYTES(*xattr_ids) to
>KMALLOC_MAX_SIZE, and it gives 1024 pages in squashfs_read_table via
>(length + PAGE_SIZE - 1) >> PAGE_SHIFT.
>
>[1]
>Call Trace:
> alloc_pages_current+0x18c/0x2a0 mm/mempolicy.c:2267
> alloc_pages include/linux/gfp.h:547 [inline]
> kmalloc_order+0x2e/0xb0 mm/slab_common.c:916
> kmalloc_order_trace+0x14/0x120 mm/slab_common.c:932
> kmalloc include/linux/slab.h:559 [inline]
> squashfs_read_table+0x43/0x1e0 fs/squashfs/cache.c:413
> squashfs_read_xattr_id_table+0x191/0x220 fs/squashfs/xattr_id.c:81

Reported-by: syzbot+2ccea6339d368360800d@syzkaller.appspotmail.com
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
---
 fs/squashfs/xattr_id.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/squashfs/xattr_id.c b/fs/squashfs/xattr_id.c
index d99e08464554..2462876c66c4 100644
--- a/fs/squashfs/xattr_id.c
+++ b/fs/squashfs/xattr_id.c
@@ -78,5 +78,8 @@ __le64 *squashfs_read_xattr_id_table(struct super_block *sb, u64 start,
 
 	TRACE("In read_xattr_index_table, length %d\n", len);
 
+	if (len > KMALLOC_MAX_SIZE)
+		return ERR_PTR(-ENOMEM);
+
 	return squashfs_read_table(sb, start + sizeof(*id_table), len);
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203134516.1697931-1-snovitoll%40gmail.com.
