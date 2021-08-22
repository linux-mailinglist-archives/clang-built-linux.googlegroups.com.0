Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSEGRCEQMGQEHKHSWQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BC83F3E80
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:57:02 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id g36-20020ab013270000b02902a9c7b3ba13sf3704608uae.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:57:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619016; cv=pass;
        d=google.com; s=arc-20160816;
        b=N9YKh8HfcvabYdRakq05fOxtPoAkDPJ554IhjzjqaTAE4VCWH2/ZT5BCR6hvRnhuZP
         Ojq067BOfCPiTH+wkYpRo6XxtMEPcM9gBJXVheOwirzVooiBOHCz5C1Y6JFmfQ7joNxJ
         0qf28GabrvarT8GIoSO/wd0irfF0zt9inrHaTTaA0zSZGq6kClPQRfN6p570OJgWNCKw
         G3b77o4EG0JkCerT/GLHhE/COYux+r8RxzfVpIbBpYcl9W/At7O3gv13/7Ho1Wyd0pbz
         mvToslaI3Xba8DhcBJQgEYYrWeRCwVLB86HGMeQWsvXm+fo21Pii1rTo2ElPSjk7b9Df
         q1Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+QbHiFlXcfYyUVmXnV+nFSTIsNs/MQvWI7GmxdBr2s4=;
        b=qJEo3UcnyCTG+taBH5tavpcT6lmFdjKLyBY2JdS0q1IPqe7ND1I6eEsPQJ1BPgk8ed
         /hG+2+138+bA4ZsPin7K44cW1V8IJO8jzFyueycUdm+wa7g8ibpFuMB++FqNbI4xAsnc
         IpSbVb1g1rQK4SDsMVu4eaXIsiFLNK/gRUWk6TmaEdoOdWnXOBfCX5UfvvZrZoclp5xU
         RLC6MiHb+egql5vPu2O2xWlRllSIJvlatyqZcmN3mKkv/08EdhK/LTdwgnCK0R7NkDPC
         f/DP6Vyh+kwI3DCajG+UqdMk/Vt/rxwFu889IfafUkCNLobcBzdJjjzvoVqtwl2oCxdP
         VsRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Lis4BwQu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+QbHiFlXcfYyUVmXnV+nFSTIsNs/MQvWI7GmxdBr2s4=;
        b=gmjuSZB6wQ+tAR0I0LQyCdftXGI0FAYsmcqoGapyfJNuedhPkoUnpGkCQVa1Kcaqns
         Xl0A4yDxwFGUxc1gO25dJOWfRlLUdbwBv6SkQM40Mxp6H/pLKCEQM/K2hPKddCsyczjr
         jJSySAG9xfeCQrDfyDOc944fdvQwyCc/vNDC1vYuJEnqXM+n3nPWonbaUtdN02IyaFrx
         7csjyHkMxiejCJ3SiESt4CdQ3beGuR57+tShsJLR+wD06db2cR20+lXOoTZ1CLwbI4JE
         HW2ti2z9bas9TuEDiocA7RIZ2iYAaaO6W+xZYuEXrO+rCu64Yfn10Tt08uh7qr0LMp5M
         F03w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+QbHiFlXcfYyUVmXnV+nFSTIsNs/MQvWI7GmxdBr2s4=;
        b=IZQzfRZ/j+x5FfYZWWMdy/JWMDXng4xa99c81m5CjQg+J2LmRzUJc6ub9YIBDkbBKe
         d9EYkXHR+ZzIMz8ThEmjVsKku8LMqMft+SMZIRqDB51tavHdNxNTlz+yPBu7U8viA30H
         /8zb6OPHSudGr6/s25FsJxvPiyFXce7i26psEjsD/CnkZBdnKBL2n8hXNRIg9QlpSZWE
         xhp3mBRSjbW9Sfs/V+sDypCFlVJG4BTuLlGJqp+utU3GA1MsXSmedK/6+ZNPbmlNTJoN
         jeKfPUmj08gWYNx9cqhApUyXQXOSS5r8lxQAxakmbnejXqLDiriDwQMYfLDHi1Wv7Xc+
         Kbhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530w5FIg2qRwc6ZdBxIU0YjVPOOj1CEDO0XDyfEByKtPCL0tctnv
	SwzPgz+uuOz3gHfXK8uUCH4=
X-Google-Smtp-Source: ABdhPJyktGeL/K13GkF/Wh3PSVQToLGKpm0FTZVTocxEZlDvtHK0racz2dw2vhJSAq20rCdx20jFpw==
X-Received: by 2002:a05:6122:1143:: with SMTP id p3mr19953819vko.1.1629619016794;
        Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d18e:: with SMTP id w14ls2297036vsi.7.gmail; Sun, 22 Aug
 2021 00:56:56 -0700 (PDT)
X-Received: by 2002:a67:1a45:: with SMTP id a66mr21834533vsa.15.1629619016186;
        Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619016; cv=none;
        d=google.com; s=arc-20160816;
        b=K+FT0VYiLBS96t4YpTgnHXX1/EcAR74BZun7q9Ypp/cZxN8SxysMJAn7a6glPjlhp1
         IUcQbXVBcz636Kg+feqpcPvA1lFS+mJtD1FN+E4Qs0nByWlHoxa9mZRQf6EhhHMreKwa
         c2L0dSZKW+1CuZmZ0UGSWfaSOdyR865okMrSbJzwKQdOB2YO35hwf7vIMUHWH0vBoj/2
         t5rNgo/ZYXXwkQHxQU6dJg8axIBCAn6kep9dcU/BKTvrTNcrgUvY2f7b4wwn/y00cv5r
         xX9/kK5YNToOD3XavEiz9E2SqNnLybTN8NS9Xk9CE57/+VMmdLmSQQ9ZX0hSoEO5tYro
         g7Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CkbCUqYXpxKrv+E9RWgklPDu42LROG49HfEVFdt9oJ8=;
        b=nDHPukQ+UeJ3bU5xoido5NbrUy5Jgjqs37PlN3dXBA4Etzcp3cKyglnS0LjOxa09mm
         pjeFlGgLUnsuSgOho0xHeP92BUS/hHv9J6uDZftzoX8HkIKjMGyxwUA7BniekEH6k1/J
         dALTIs6tga5+07EXz8771c84WFgGp+g35tnh06H4/6WJymFK7Xxwk3fXoLm+6PQmQbE9
         cag8ogYZ2iMTteYar7tfOSVPP6Vk52mtyUfKZq4+coBqyusv9t7YbNpa1OAkC7HdTJlY
         arJ63icUfbCMdtZziikZD1HNcsLdRJfEkcRe+vLNDeNxxlcZJ3Ezz0Bf2xeMmJf53y5f
         30lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Lis4BwQu;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id m15si730409uab.1.2021.08.22.00.56.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id f1so1525485plg.3
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:56:56 -0700 (PDT)
X-Received: by 2002:a17:902:8606:b029:12c:2625:76cf with SMTP id f6-20020a1709028606b029012c262576cfmr23579503plo.17.1629619015880;
        Sun, 22 Aug 2021 00:56:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w2sm10588697pjq.5.2021.08.22.00.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:55 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nikolay Borisov <nborisov@suse.com>,
	David Sterba <dsterba@suse.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 25/25] btrfs: Use memset_startat() to clear end of struct
Date: Sun, 22 Aug 2021 00:51:22 -0700
Message-Id: <20210822075122.864511-26-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1155; h=from:subject; bh=XHjqu1RreJZUS0lhfMO2nlVUCup75rB1cNpejDSomCQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH6ZxQKCftHw+bbIsZDc7/cNC2VaaPC/Bzvi8PJ jBI2gduJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+gAKCRCJcvTf3G3AJlX6D/ 0ccDotcFu1yUXFehzHwNXSmCdP2dRq6MGepK0y703lxGRgYRXH8mgO0Xcee95Lf1qk9czxzNowS6Go sS7b4Pkw/E9zlTldMaPdOl2QcI5czJx7DD1K4TcjXVJIFmS6pKUwT+eyjq0GxpYr7UP56JMbPUEqe5 /FFM82ogo5GKXC7ZpnDH0SAN0vm6d6FA+qTuz09iEWwG/fISmVDLNgt5/5XHX+FBNT9x7tglj+UGJo J1LFFMUYLrtM2xP6W7KZ2dSwVZJXgKwar1gnOJNrESpF5p0R3pv662l39w1R5CaPsMt7yCRg/dKY83 xPpJ6QS6fappboPIqlmH5DsKrwK5tkqUZOo965oL22gXqQLlJrDFBpS+HcA90K77tmUDHw0cA1oZCj xEMwTwSaEaYhTUAETc8W+rxxhHOoWltHARk5AyjoMLUAB9R97PZJqtlzmw3T+LCpHan7/53N3wtmDo twQpqQVoR6GDsE+DDBy0ofV2si8wOgHKYzXDMIJhJ35Axs/8MT4SZe+NZy84FF+nL8DpWAWNa/4QPj +lqLt0IFYNIrpylbCHV7Fr8Rw7AwdoPxNmNyLThTwo3dPw1G+ZNgvqLhqFDYZIQiBRh8ruca3dYIvv JSKCxSme2hIV5U+VcQHoQKeTVwGooGQAZsYFH1gkRt9Apq6nbH2JORDnJ6kQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Lis4BwQu;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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

Reviewed-by: Nikolay Borisov <nborisov@suse.com>
Acked-by: David Sterba <dsterba@suse.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 fs/btrfs/root-tree.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/btrfs/root-tree.c b/fs/btrfs/root-tree.c
index 702dc5441f03..12ceb14a1141 100644
--- a/fs/btrfs/root-tree.c
+++ b/fs/btrfs/root-tree.c
@@ -39,10 +39,8 @@ static void btrfs_read_root_item(struct extent_buffer *eb, int slot,
 		need_reset = 1;
 	}
 	if (need_reset) {
-		memset(&item->generation_v2, 0,
-			sizeof(*item) - offsetof(struct btrfs_root_item,
-					generation_v2));
-
+		/* Clear all members from generation_v2 onwards. */
+		memset_startat(item, 0, generation_v2);
 		generate_random_guid(item->uuid);
 	}
 }
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-26-keescook%40chromium.org.
