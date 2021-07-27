Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4HKQGEAMGQEBIVELNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C893D8083
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:06:58 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id j12-20020a9d190c0000b02904d23318616asf7928557ota.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420016; cv=pass;
        d=google.com; s=arc-20160816;
        b=sJlbx4zVSEZMpcrYfRWsZASkoIIw/oS4fU55FeRl8TJ0/gVYXhOFf8ovvabFj8YY3J
         4SI/foqFr84XcRnu25qOI5e9MtwVtGIma7gfO2jeklkwBKLFM4fp/xiGamu9A1a7rDDm
         dCUPIHUDz2CAHCg+RDnu0Urd430ZZLb6v3BmMm8mvzkYsiNmJOm9VHC8gaOtBtju4avE
         OGbYpx7kJeTotJD7SHJ/Xu8CWTVNXgj42stpzDwe2SI911g23bfT1qApHa+/SCQ2pGlm
         PCMz5RX4g+QM0ZTCIt6nsOIsSDGICQ8pE3e/Quy9Zsm6jlnLksugEjASJKUsyWpdArXc
         HGlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+i7w6fbSEUqW0zerZK42EAmW7L2kjKbQnlhnBf+c0k0=;
        b=oFgMYMq0Nkq3Ir4pkep6eXn1TYCyyGrDZTkH9UKdj0B4L1So3nVv497zfzoBwybLsy
         DpF70v+iJrSjHf1k4i3aDrr5QwmSQ0M7z8C/8eNcL7ReQSb+sA1zjZ80JInHCQ4742rn
         xxi7pQLTrWPLjg6rwnp9pB2kJp5e0+srrD6d2H1fmPEd24/yZcRyUI/GPe4hxD3Ek55t
         WE5Gd9WWf5efQifOoA3etdxPmaAI1fXjnCoaTr515ZaX9vwmm59WYD1kxu2n/H1SPXlB
         W7d+RJ3UEHGY492WBKqKlbTogKQQLwV76qAieohwH2u+juWaRv9gWiCTsD5WhptVVRbp
         J4IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z3ztXP31;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+i7w6fbSEUqW0zerZK42EAmW7L2kjKbQnlhnBf+c0k0=;
        b=JXW5uQXjA4v1sA9Y7C2gDVtJkfWlUI1le7Zvx9GcagZQ0IVaIFSntHMtK6i4d0q2/V
         RCGKGZXK+qAQORmmcF8jeFRazoINzeZmozGnoGjifiRVF8bWOvlNDF2whJyhOVn+N+rA
         YEz0ezawtp6JoUt8T7od/qGUfwC9ei/6QEkpwVsn7c1E5eWBAqQXFya5BEP27Ao9LavD
         JfZVPEdKec1zdw1QWglcj0bMoLiXf4OfiXkvZD+BsPcRWBCFtTArX1wxXIECocABJb5I
         M097Vugtsnx5j5xUFEoQgfYMTbbX7SF+H2U6WVMlKkre21HOugqAE2aKMUjOXPt2uyEJ
         o6pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+i7w6fbSEUqW0zerZK42EAmW7L2kjKbQnlhnBf+c0k0=;
        b=ssHKHERmDn9OvreGTybcbEbcHkxCLOcOvQCh388fAQ/A/TP/1p4+65VRovTEM6vlew
         bTjYHQCRp0J6OpKldRNHLY5f14bw0Kj5FDBwvm1snHUGv3uQLkaTkqaKCgZCAsflpTTk
         gIrrGVWEBDEOVWmAITOQSXfhZvx+lAx0GEtFfAfjVUTwYi7O86G6TFCtnTZPNkXENoYx
         OCmmfHgWKvkcxFBi8njN+4JIdub6zpzX+ev6jOAOJ9TmhhuMJM0KGNFjKp1DiW+4RiU3
         WIyTt6dM/9Y9UcWiu1/moPpdiVRM6tDJDZVbqk4XzXwRZr5KWJoOm7GJ9951F8KZbIZB
         N6xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533f2YHYk/28Kf5dniB9hQr14suazEOqa9GZUT6bVCOBCm4+BSNW
	rxgcSYRYniJhJoO5m9Fxo4w=
X-Google-Smtp-Source: ABdhPJyp5tmk2WSVBr7g1ALfGfWKVLKoOGYBE+ZvXRKsxkWT5T1r36MzmGBbBduSDC5vjMCJT8xItw==
X-Received: by 2002:a05:6830:9:: with SMTP id c9mr17542089otp.294.1627420016801;
        Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5903:: with SMTP id n3ls64409oib.6.gmail; Tue, 27 Jul
 2021 14:06:56 -0700 (PDT)
X-Received: by 2002:a05:6808:f14:: with SMTP id m20mr4274002oiw.179.1627420016487;
        Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420016; cv=none;
        d=google.com; s=arc-20160816;
        b=PJecIKLZ6I40Crq+ySgjX1dxFjbxAst4umfYl9wl6rz8VHnKQXPKUT2psqKDJ3WtrR
         JmOmuCwdOqFX70+I7uAYMeWi+fyHK6XfYNBCp5KdR3uS2PKGEazqKTqKuyRlz6rS+6LR
         0kU7aOeeRvW9O640nQr1bDTmTMvBfvyeLelWiKOOG7JMlVbCy78oJplEWLRjYbyJCIIS
         WI++9gx3pkE79c4ytPUdkGEmAEkdYg4uYwKlKOfu4f8oK79kRB6CzuLQadwEvNe9WyDw
         LwQ4mpcOsJbGfj4ph9EkVDospvrkp6nCwUTYGGRXfmt7aNpJcUO8LljqdF75+VTIWuxY
         aiHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+j+u/2Y5xj0lHg0+NYIPs//vmCSVCR7ld8q4Rse+Wok=;
        b=BKHdSSi11nU0eMiYg/KU5VTSwBCpXqiazYBOQdGibaEjQhTvcJG0qoRQDpdpRUr0xe
         XURK8jTYlR+DX1jcN8VyLXyTsWfWjl94H3FSwVUougE8IxLEl3P2HLlYaSxSRAh0730u
         wE+S8D+u3ydyfv/Lnm4NrcJuWwihkzgcz948OMHi/GEFgI+iJ1DuruQV/LRuwdUHOvN0
         s5lCUVd1TSGwGH1uiLuhckxAqQZGKxajb3ISN071Kz/UlYmgdThmvzmBx6HUsujLpyXj
         6eMHOoCuzBOj0NYDP3ETNqtlVzhuHPWRLBIrF01b0x+MembJsy6+N3yIfBny5+9mDoRZ
         xEzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z3ztXP31;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id q1si414721oij.1.2021.07.27.14.06.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id g23-20020a17090a5797b02901765d605e14so1033246pji.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
X-Received: by 2002:a65:564f:: with SMTP id m15mr25426446pgs.346.1627420016187;
        Tue, 27 Jul 2021 14:06:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a18sm4605717pfi.6.2021.07.27.14.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:54 -0700 (PDT)
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
Subject: [PATCH 42/64] net: qede: Use memset_after() for counters
Date: Tue, 27 Jul 2021 13:58:33 -0700
Message-Id: <20210727205855.411487-43-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1223; h=from:subject; bh=+oNHWYKI7OiMvUYldC+7QtNoxUdXE/kW9CQ+oRXYBqY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOJw9ilEafOIQz0OSX0a5+Mk3t4qj7IlMp5HpRI I8v04OeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziQAKCRCJcvTf3G3AJuzVD/ 0RRox2qEIN95eJcW3A8vqt2ioE4mwhWDpnaG56BfiMQGgYavXHJCjNhgbBwOFJCV1qn/abootdw6gi MIuifo1LNauLOJXChBIxqmMU3Y5bpiCSS/AijpuBw4Z3iddlnotuhrfgguUBRoe0mf+iCQYvPctEPn WNEIRI5/AaV9Mf6UxjeOssFDHXcaYAH95H575iNwuiGKQ9U/X9kkZ7TMLIu3DjiAVdI1ef63t0bGqJ NT8VGIND8Jg3dGU7L51DnGwqESwUIdKaynpk/XskM+AdL5mIvIdzjm8Fq/DjRqSq+QyI5DmIWRXQ92 G5LTkFitmHW91XYAOIqhDmxJqafU5YThOy1v0k2C1xSOyQW9WGRkaNMfV1Rii3I9S27TQsObux3BPx k0wCCYVx0vsm4+HfA1bKzRQxQKkWvuUU5/SSR3pKmdD1YYGx7+h2DDpDTh81iNj5g82Wb6mv71dLOX p5X8qV5v1SXGEjLD3KX+fBCU6+dHKcl2DE2qIxdx8FlZ2TWZHRmmn1EfgLksLuMGt420FQH4fwsTlj y3dZYW3f4iMZvEmWpEXaMikr0p9gjMmvEAGCTavGtutONWZP9n7LQj7xSt7a/5jTYEF68rES7VaS64 nI2irr5vSpIpC9om4QpqvyeS3NCG27UfZ3SZyJRpHb6GNh+XvFlAs6IMK8aA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Z3ztXP31;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
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
The old code seems to be doing the wrong thing: starting from not the
first member, but sized for the whole struct. Which is correct?
---
 drivers/net/ethernet/qlogic/qede/qede_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
index 01ac1e93d27a..309dfe8c94fb 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_main.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
@@ -2419,7 +2419,7 @@ static int qede_load(struct qede_dev *edev, enum qede_load_mode mode,
 	goto out;
 err4:
 	qede_sync_free_irqs(edev);
-	memset(&edev->int_info.msix_cnt, 0, sizeof(struct qed_int_info));
+	memset_after(&edev->int_info, 0, msix);
 err3:
 	qede_napi_disable_remove(edev);
 err2:
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-43-keescook%40chromium.org.
