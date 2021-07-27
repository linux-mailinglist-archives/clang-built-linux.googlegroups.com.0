Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSXPQGEAMGQEUO5KZ2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 246E13D8124
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:59 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id o12-20020ab01c4c0000b02902a6f6876d72sf229101uaj.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420618; cv=pass;
        d=google.com; s=arc-20160816;
        b=B+hLFvLmzfLRBpMIxbXywePRE7CF6GXMlH7ZFWwqkLt9c4Q9S3vD8babalAyhGtlP7
         r15YMJcN2ykcsYh5xlfvxKmN5SAsAU7yBO1+yhHtWFuC9e7S7nSLl7WuVBxWA2Y8jBXX
         cWujKfJjgbW0uCU2Jyj+Oa0UNtNrjkI9WvbUBjc5pBuFuLtO6opoRZxf+2VrTFfoZE3n
         h+FCcnVZs/1DXt4fScDrFeB0QMJJlmrSa9jFu3kTi4c4Fu9FT8abGyzr825p1Flu7JSG
         7ObliVBNDAXuOMcHLlI7RUkGSDKPgSuO9iG4MvDNalGzI69q693LR5CyNJyvoP5qzTOL
         RW5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eDwCLhBEi6nm0bOvDpkVS+wXVzZcRqRqpyG17vch3OY=;
        b=p+bK3aL6dzmTVzMEXTJ3RYdaeYpJlgiRwxIqK5FHui71Bn/azyh+dorOZHvNgB+bEh
         x5j/9IOxP6obRJy9SHkZuRd89zDwcskcnIpFktTyeRyq9sjd1T7V0d4vWc076+4DRF+1
         eWXzxD/S4uKGlYJ3UBWJzrUmpGPuCJR7ObDcfYaQkBOBLDK1oCIdxj7xVuV2oqZxjp/n
         XvFCjEh4HkMZqFfHAoVOeeRsbyAY1tsBPy73LbS07LK/HmAm+UUMwrRrCQUxsFPHdFN1
         stHGorNJUlzmqu4H76QmPAgRV1wh7Pbd4OCwJT8QPxsJZn6I6nB+NnUhkOoWXs9VYNv/
         IPsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="lSOk/hBB";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eDwCLhBEi6nm0bOvDpkVS+wXVzZcRqRqpyG17vch3OY=;
        b=BhX15Gv7kSZn4m/Blv45dwXRIQyJbIAeZWJcDlM3j8lHLWb6K4HudfjflfGhHyLiNC
         4vl7NivDhRvTUFbOkMQjUaJn5NTVeMS607Ok1k6zevfcaXeSPkJyoCjphpR3OzWcVBn9
         nHpLT6b0xQlr22xN4s7N5L+UP/DYvA3Wicj/M/r6Fc1yH5aLAqDKhyfcDcRzRO1JEU8B
         TNLTyrtiCMb9liExlr19VvssKHyTz3I/0acleJT/4BEyc26LEgTrC29p44YG7VzeUSwO
         20ekGp4rzbHxGT9B3E1cQPi98b1Suh7h1mZWCFCfh1ox4pqjqaHL6UVGHSh0lb+8+H2+
         +gXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eDwCLhBEi6nm0bOvDpkVS+wXVzZcRqRqpyG17vch3OY=;
        b=eTonl4IV++xW128F6DdL5OIF+rqjnZ+e5UKgPQGm8OY4uwV1Vz5D5hks2OynEBNiBY
         X75s8UuuSqOFllrZmXkQ751Q41mhLodATLjqbsrUzjTjWzDPuIpjnDKkAvw139YVrvF6
         5smuLgnmA4L43fcmLe0wWlOVvS/QTBAp1+uTBGkiDNU50C0REWY7pcU3sAXJ3QjPJU43
         fLx1Y6Yb4nTE1xYo1NmEL6GnBqcEIlxd4/HJ2EI+YYfzwI/bJ2Gzbux9tWnYspVT/fcM
         pUoCmoaTPttgYqEt9cYf+kvyUj24vIz06oBTd+PmTkUOMR2Mc0qzn7Kww8zd/Sx42BNE
         PzVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+ebO+mtcn/gvyd2bmDnQFRkbxUxpslNZa32CC8EXOnOXoXGeK
	Ln9ViKQBU9B9ErT2HMZpSSI=
X-Google-Smtp-Source: ABdhPJwoSpbVtdtPoZ66iwanxj9gdWwxw7msqeoH2mOfLgb2G2pbntDn8SWWvo6awHMzGgeJ4e62vg==
X-Received: by 2002:a05:6102:2835:: with SMTP id ba21mr19146113vsb.10.1627420618229;
        Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:651:: with SMTP id h17ls5798vkp.0.gmail; Tue, 27
 Jul 2021 14:16:57 -0700 (PDT)
X-Received: by 2002:a1f:aa91:: with SMTP id t139mr16649770vke.0.1627420617733;
        Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420617; cv=none;
        d=google.com; s=arc-20160816;
        b=uZcdNzOgy4MjGOX4A+ILYTbSlbv4oxKKnkzv8AD1NEqRly78R7LyG4N65gnDRVNq78
         xCnxxTScOgB0dpWwmdgM/cCoSqxVJTvvYNn6Mdz9he89ivmcIeg1+wfQli3PO4e+4mD9
         FaGpI6vaz6yqbGrw/u9z1B2H6GvFLRI35M3OE4IfZ8LwfumAyRnBa2txfhZvi//3Vv0W
         EBzICyBj1m3wvh2Bcg4zNwOlrOkiCNm+oQR2eZjobYNgEo8+s6jfHPMJDcaTtpc5pn/L
         I4ugyGDYVW3gnunef1Lc4rYpPd5qwKkK2WDokYrQT+dmkijtnn23yalAsTEUuSOB7Yrf
         be5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=as474LhSy42cHKge7Gy2Fn1oqutkW78m6VkSl3HByJE=;
        b=vYOJ2GDvxLwFQqQmfutWP8y31VAxEmsHJK1UNsCQH+3bR2A7YJ9yTdGIZU/2kct/Qr
         aHqklcak7cC8Mbc51sgWU1y44paw46PyYF8h33XMDqUzCvRooG41Uqy1wkCGMx1Vpzbw
         2dhFTP4W7yH6uwvmol7woLwDtbCtFcHfhPTibf+7HV9zvYIwp2BgZl+V+Iq18++qHXnK
         Mc9zwu3ArdDr/4WvrIftDqsdAGD0PRFuoqYmKNdoWemJRfzPTbO9daPJ74b3t6F7SBSM
         HdYwpdrwmHVVcvPkmRkaubQwqCkCu43rjsgTHUJWNnw64rpV7ZDPdwR+SIgpPJ0X3nxY
         sFtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="lSOk/hBB";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id a1si258682uaq.0.2021.07.27.14.16.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id u9-20020a17090a1f09b029017554809f35so6661025pja.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
X-Received: by 2002:a17:90b:4a4d:: with SMTP id lb13mr6031654pjb.221.1627420617450;
        Tue, 27 Jul 2021 14:16:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q19sm5028194pgj.17.2021.07.27.14.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 46/64] IB/mthca: Use memset_after() for clearing mpt_entry
Date: Tue, 27 Jul 2021 13:58:37 -0700
Message-Id: <20210727205855.411487-47-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1125; h=from:subject; bh=EIIm+0VdwQ9IH2XMV6ts5pIWwaxyRwboIG5815tF7+o=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOKarr4bIPgvwWH2qKkwLe6/q8cDAlBzD3bLA24 ll85FGeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzigAKCRCJcvTf3G3AJvwwEA ChEYdVEvOlY6ZSSDwSK+GqTMcoJtHYXIXerlg3cv7Z5B/nj+4tsVkjpbbg6qYJ7G6Wn5LCRzlLTF/B JEQNK1K018MnLFUCnQdrWeHhqOML4Z+QY9330qvih8kbryLwUmmPm8tMDr8k7xeqODqXV0ysJUPb2N xVAh/ldKgMIWN0SIEK4b/AeC9lC2gYUHs0M9ufsvUwE/w7u4/dJRXGEtfOnpjbz9EiJRevDyOxG/L7 5kQTjyY65fkZSD9d3DQYA0of/YGF5vIAzSb90hB4BR+6elYWhMJodLf6s9scmQdVrWhXQ4dVg6J+8M ycSHtAUfvV0kejqMCcI904M9g4jJuniybmlBLuzSIsi21ELju85L/7B9KiYaqlPgChXogQSPXNk5Kd 54beIYuu1Fd49rYR1R8WtEoklJaIrmJSkYaEDaYgFR3e7sXiui1Lo6/7QEjLjklWuNupXgY7d+KgBw oCFrVzGvwPnUGDQnGEfR2OxN6HzTznt5SuyVEVOZkOSmgu5uS6ad9csIugS5srvBjmEQQuXMfiCcAe FRY7ypPn9oUPWMah/ykVuPdD7cmvKT/OghOEHP/qza9WeqolkQBPyj4t9m6qBq2lsFMVjj3xVeXXM2 +eC9JXnzHZx87wkFYpcVJstfzhif8T3qljrVvmM3fY2NknXhqRg98uBOWpsQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="lSOk/hBB";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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

Use memset_after() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/infiniband/hw/mthca/mthca_mr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/infiniband/hw/mthca/mthca_mr.c b/drivers/infiniband/hw/mthca/mthca_mr.c
index ce0e0867e488..64adba5c067d 100644
--- a/drivers/infiniband/hw/mthca/mthca_mr.c
+++ b/drivers/infiniband/hw/mthca/mthca_mr.c
@@ -469,8 +469,7 @@ int mthca_mr_alloc(struct mthca_dev *dev, u32 pd, int buffer_size_shift,
 	mpt_entry->start     = cpu_to_be64(iova);
 	mpt_entry->length    = cpu_to_be64(total_size);
 
-	memset(&mpt_entry->lkey, 0,
-	       sizeof *mpt_entry - offsetof(struct mthca_mpt_entry, lkey));
+	memset_after(mpt_entry, 0, length);
 
 	if (mr->mtt)
 		mpt_entry->mtt_seg =
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-47-keescook%40chromium.org.
