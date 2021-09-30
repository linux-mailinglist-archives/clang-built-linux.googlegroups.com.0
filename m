Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPXT3CFAMGQETBD3Z5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id AC45441E3DA
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:27:11 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id b5-20020a6541c5000000b002661347cfbcsf5098118pgq.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633040830; cv=pass;
        d=google.com; s=arc-20160816;
        b=axFW8iTHY4JZge2D+5yED2k1buBlogEyOfuh+DK0Rm2zhin0ZadznanyIcaonpeN23
         /mo9FAW0WqvUV2PKgt4u55FNNfzd3VXc0Nu83f4KYawbwX2mqKECxFnQ9zWWGkB2WEbb
         gPAiiK+tiqCI7c3GMHih8KzY9gvu1/kO69yXOb8BS+okfnFMff0a7sW6/w/MSueBL8Rm
         Bat+IHt6JTHYs4tfByjLvKVd9P0m2B8RirwpPhBn7Ooi1uAqhkRQAJDwDNL3na4WObN8
         GGT13uhx/o5tSvbpKtM9deFj5pbhx2BSnWjSHB6GAq3qJfJOOvkH5bE9yMoE14HdeVYG
         sQpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bBOX/nFIKEu/w95RLmx/CJkoBHa5/tR8ANeqqaUJN1I=;
        b=VyPv7mVVeVv0FkKsmypjnaw8WVwKE9YYUp2uql1VaXnMPomfCMuR41qVuVH/5X+lyl
         Nl6uTQH+H8spKBYTX+/IgC8aY4/n+1sBP/8FyjhEZMPT4QXew/DomVoYx919wfca89T1
         wnZv51plLGSi83MmiAp5M817nT2H6s+iELy2c0x7e8q6vRua+sErntGcEBLWjc36as4F
         Rhak6j8krWtdCeXJRJk0RgcewnegUhZ4iyrKaLVewvexF65nlnXdT1hp7AXhV6ccyD6z
         xzWMSyl1Fl5hNUXP9IZ2kVS+1qgV79ZK3gz/Jwp+qS6HRlrEoYDnjooRIUEHL3syLtUH
         LygQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="m/jZ9lSL";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBOX/nFIKEu/w95RLmx/CJkoBHa5/tR8ANeqqaUJN1I=;
        b=QCexUK5d+ulLCuophIqswjpw/Lsfmqu1uTyQAV5J2/hVyWXy0tzN62sox8Jf9usHmL
         3kCxWTb2LTc4cqE9x9v4ypxaJX/pvJZ5YjdA5tup5tKHipU1IBwHe2Sa/NskSVFkYQX3
         +tsei7FCucPSzez3DnBVWvuaf+KCqDWUTU5nYY9EN+ymK1XYrlBGJ7e2E+HLYhdvzFn4
         cRnWW0Z3QGOaCsnvIZxra/aOhASs4AlVqziXuW0PCEmjKWumRAP8scXitC43ORDjhdHX
         ZBd3yrULkvRxzqI1yDlZXiF58EOJu+JnP20rJ46KxESqkvU0228XzEyTeAuj8MPm5Edh
         G1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBOX/nFIKEu/w95RLmx/CJkoBHa5/tR8ANeqqaUJN1I=;
        b=bWDD2phMLYhi0PshOns2PLgid0hU7zuvVAJFXd3D6BhZxebuhVA2wI0jRGj2uJRbkm
         11aEifd7jAP8MmAyEN81p/46DFraVP1Rr0rq13o/Sczox6rWnADNAnwWkbSMP1Linm6a
         bqvQ+aeL9g0g/HQV6OE6G2d1+gfD19o/uOPf6jAaCqg07pkIWWUs7zTMCOQjCs7lLeZn
         q1JUlcfx2X7gJzYy82dXkE2iNnlDUfnwWwv4TyAM1MbgdbsnqoxfC+1ncjI5dTftuFG2
         XRM8su/eajlnS1Snuy1aTXD/J9RxYRU9cggbcIMQzxrZI8y0p7OEThrwUIeCb3CBaYmP
         Oa2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532slLLWJUv0zpVE7/3yY4Cwxar4pIlDwcxYXE64TZZP8xiH3B3z
	ejmVnrAK2Azer3GBmk7ki/U=
X-Google-Smtp-Source: ABdhPJxfTcjGdf4Qb5wFaYja1VYIPOUETv7mO/ac0nPn16vFLRDpZUEUFzzF9Bz9yGuw047+80naFg==
X-Received: by 2002:a62:31c5:0:b0:447:b30c:9a79 with SMTP id x188-20020a6231c5000000b00447b30c9a79mr6745479pfx.67.1633040830268;
        Thu, 30 Sep 2021 15:27:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3b48:: with SMTP id ot8ls4082494pjb.2.canary-gmail;
 Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
X-Received: by 2002:a17:90a:7d0a:: with SMTP id g10mr15813505pjl.73.1633040829664;
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633040829; cv=none;
        d=google.com; s=arc-20160816;
        b=jaIe6ozukNOu+GgKOQQ3QTpZ3cqIsD44hGxYWn5btMEWy6bQsciRlb4DK5Oazavzz6
         6xrChW6rdeMCiq43RoKYvHauGASNszZ5/XbMtzrJffcSIzvYIO94CMZjUwdg4Gz7jEMt
         7YC7px4adMD7N8v68OSuPvuCfIvjXfOy2pqdJBjsrWQAfJ+I4kLhe1yJfy4WH0B7f3jE
         tpefQyr8i73VJg5NU82UOTQgT1xUHNEDbLwJAHPtL3fcny15jx1Gig3O+eEAw3mFahIk
         lHj9zfonjk6zvALF59jYl3NI02x/4qObDNkBsiTCkrncJE5/wEP1GjVbqdg87nAmqO3i
         RUPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GaXhZfS3SkuPHPb6xTQTxvCajWqyFQ1hefFZoAWnwRc=;
        b=AfcnZX30L5aZWNFA1OsADe2AHB4DgPukkaHklSsh2CcMud5Bj5rAKCic+N2PGVO+ps
         HkGhpP7AHOiYjIlMa9bCw6qcqDwUQRQv64GnnJhPtfM38tKSQCY03BMVKAA4OQ5YZ4mq
         E2vJUMbOjLjHqG2utm7b3c9ERnQIU5tb2mZg9fwd9Ex6WSNYmVGKcQIcrR+1G1KPfrLY
         cJPj2FNAYAo6vsGyArH71M0Ld0cInkWgkQf/YxtgA7Ra0R+Jksd8I9/cMT9DtuU4m6Yp
         AyURTkicNTu5Bd7o6dk0rsWGr+peSBbn8rRQjE5holWOJpF0LaLUO8sUVaKUup65LEcq
         0dGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="m/jZ9lSL";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id c5si223310pjd.2.2021.09.30.15.27.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id qe4-20020a17090b4f8400b0019f663cfcd1so1409101pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
X-Received: by 2002:a17:902:ce8c:b0:13e:6848:b996 with SMTP id f12-20020a170902ce8c00b0013e6848b996mr6365750plg.11.1633040829416;
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 67sm310724pfw.89.2021.09.30.15.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 15:27:07 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	kernel test robot <lkp@intel.com>,
	Matt Porter <mporter@kernel.crashing.org>,
	Alexandre Bounine <alex.bou9@gmail.com>,
	Jing Xiangfeng <jingxiangfeng@huawei.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Souptick Joarder <jrdr.linux@gmail.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	John Hubbard <jhubbard@nvidia.com>,
	Joe Perches <joe@perches.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 1/8] rapidio: Avoid bogus __alloc_size warning
Date: Thu, 30 Sep 2021 15:26:57 -0700
Message-Id: <20210930222704.2631604-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210930222704.2631604-1-keescook@chromium.org>
References: <20210930222704.2631604-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3560; h=from:subject; bh=d94GdIidGnmnix6Lfr4v5jKawcjolJm1KlCBxnnJy6k=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhVjm22lbILpU3a928XS7AjfDqGHN2fNCgtxXpqL4C vZpYRAqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYVY5tgAKCRCJcvTf3G3AJoJAEA CkQ4KHKGJZGbYmK+l1h5sRm1VUBh6JfQZa/gzvXJbs5XaNgP24EPw8Dnih4znZJD1ATTwTmsErFD+Q GZ6OxclhvrD/Vl0n+y95WYCyiegLqupRVyVFFRo/b1orpbSJhekIx+wLfu5K82nwfR/z3fqHspd6Jb C25b2/S4YVArCQx5p/IuFXg8MkHWWwVJGUtFz8bBY4Q1tNHUXbXLWxD6TrGhzWXHRTElkTlX6qC8L2 kkoQerLVTHGEpiXZ7dRR87HWTpaWfUDSt7bcTbf3OEIwZMiD2CUSmascMBmaCN9Lm2CYzFbnJj59Z3 QhDesB6qHk3d2G31rFJolLcoutGjK3X+AJiFJX8Q5LkbMNhoM1xPVcrkb1hill82zRek3uIYvFmoal TWtTKlV7b7M04qtOznFW+wyE1HsAIF/XWpHZ/T7dmjAY38+EG/JV8bSiWFJ3DN2/kMH3opOPMPqLm8 7HktqHnvYvAiun7gBTv+lcoY76OVlmWVuhVEqb+NeVsK0ycLvO6PlLnO5x+btj22XbuHnKNCRG4k2S OeBHJ+KPdk9sja34I/vFVHDfMVK5iy4mXCdbe4ip4w3Ov6jjqjsb6epT+yg3BIMUCScGfAsg7fyA0v HNNTdQCNlDpTzp5mOY3uIkDpIfjNhHWJg4S5+XL+hlGt8+9O4d6fE//ZNtVA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="m/jZ9lSL";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
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

After adding __alloc_size attributes to the allocators, GCC 9.3 (but not
later) may incorrectly evaluate the arguments to check_copy_size(),
getting seemingly confused by the size being returned from array_size().
Instead, perform the calculation once, which both makes the code more
readable and avoids the bug in GCC.

   In file included from arch/x86/include/asm/preempt.h:7,
                    from include/linux/preempt.h:78,
                    from include/linux/spinlock.h:55,
                    from include/linux/mm_types.h:9,
                    from include/linux/buildid.h:5,
                    from include/linux/module.h:14,
                    from drivers/rapidio/devices/rio_mport_cdev.c:13:
   In function 'check_copy_size',
       inlined from 'copy_from_user' at include/linux/uaccess.h:191:6,
       inlined from 'rio_mport_transfer_ioctl' at drivers/rapidio/devices/rio_mport_cdev.c:983:6:
   include/linux/thread_info.h:213:4: error: call to '__bad_copy_to' declared with attribute error: copy destination size is too small
     213 |    __bad_copy_to();
         |    ^~~~~~~~~~~~~~~

But the allocation size and the copy size are identical:

	transfer = vmalloc(array_size(sizeof(*transfer), transaction.count));
	if (!transfer)
		return -ENOMEM;

	if (unlikely(copy_from_user(transfer,
				    (void __user *)(uintptr_t)transaction.block,
				    array_size(sizeof(*transfer), transaction.count)))) {

Reported-by: kernel test robot <lkp@intel.com>
Link: https://lore.kernel.org/linux-mm/202109091134.FHnRmRxu-lkp@intel.com/
Cc: Matt Porter <mporter@kernel.crashing.org>
Cc: Alexandre Bounine <alex.bou9@gmail.com>
Cc: Jing Xiangfeng <jingxiangfeng@huawei.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Souptick Joarder <jrdr.linux@gmail.com>
Cc: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/rapidio/devices/rio_mport_cdev.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/rapidio/devices/rio_mport_cdev.c b/drivers/rapidio/devices/rio_mport_cdev.c
index 94331d999d27..7df466e22282 100644
--- a/drivers/rapidio/devices/rio_mport_cdev.c
+++ b/drivers/rapidio/devices/rio_mport_cdev.c
@@ -965,6 +965,7 @@ static int rio_mport_transfer_ioctl(struct file *filp, void __user *arg)
 	struct rio_transfer_io *transfer;
 	enum dma_data_direction dir;
 	int i, ret = 0;
+	size_t size;
 
 	if (unlikely(copy_from_user(&transaction, arg, sizeof(transaction))))
 		return -EFAULT;
@@ -976,13 +977,14 @@ static int rio_mport_transfer_ioctl(struct file *filp, void __user *arg)
 	     priv->md->properties.transfer_mode) == 0)
 		return -ENODEV;
 
-	transfer = vmalloc(array_size(sizeof(*transfer), transaction.count));
+	size = array_size(sizeof(*transfer), transaction.count);
+	transfer = vmalloc(size);
 	if (!transfer)
 		return -ENOMEM;
 
 	if (unlikely(copy_from_user(transfer,
 				    (void __user *)(uintptr_t)transaction.block,
-				    array_size(sizeof(*transfer), transaction.count)))) {
+				    size))) {
 		ret = -EFAULT;
 		goto out_free;
 	}
@@ -994,8 +996,7 @@ static int rio_mport_transfer_ioctl(struct file *filp, void __user *arg)
 			transaction.sync, dir, &transfer[i]);
 
 	if (unlikely(copy_to_user((void __user *)(uintptr_t)transaction.block,
-				  transfer,
-				  array_size(sizeof(*transfer), transaction.count))))
+				  transfer, size)))
 		ret = -EFAULT;
 
 out_free:
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210930222704.2631604-2-keescook%40chromium.org.
