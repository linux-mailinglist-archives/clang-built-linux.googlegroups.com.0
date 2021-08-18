Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDWP6KEAMGQES7NRIOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 597BC3EFC46
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:15 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id m3-20020a17090b0683b0290178cb50bc1asf1044420pjz.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267854; cv=pass;
        d=google.com; s=arc-20160816;
        b=1G6cBIb3H5/SPe6X8bnL/Z7/jfEnkkLIHA4NTl2gWhuK0miNt1h2BksSzTueP8GCJb
         8QddtD3+xApytwVZbzruwF9IOfSyn7+bSejQA23M5PwIp60lurpl0BSVasj0CoGhTSFV
         xyp6F6PtzIKuFwJjJ0Xhe1Qqot/XwKP+MKpzOyrRSEjGRZxM/1gp9kdH+dVmVf9IlUJf
         3VKpcsNAIQ+pzLUdnMk6UmheJRsEV+UYqjlCGpz/djEwKjHeGo+L1JaUokrI+QcqhbGQ
         vk2ML/4+Xhu/+fHWE4JlppikfQJXDp0gtmUkYo5gR76ia3pR27R4wL8I+4XLeStGZ0bK
         gDcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=l2urG3AXTT0K9qtZ/fQ57gaTBYGMGGzKnGLZzgGUUpc=;
        b=SRKvKxeOgx+87N7RsYcQZwuohKyFxPnHaH5qvfBUWOUNssxMq5Uen9+W9oT4hDnB8X
         k/byTcJeU5qQnBYez3VR5iiOCkUzYyszSS/ZDP81oUjWDyhGBMIS6ME/wagzNkFDgKTw
         LMjhNqbvQofEBDS6Lrb350wtKjisl21n0JM4OtkHN27JVuwiHWGgzviFDW3dmqtnmxHS
         V6ObhEsHG6qFFAyDCMf73QgxTNxZ8C5WrAEBRMdgPi+WOyXd7k73vzc28xqzIyfeQ5dx
         7C89XKOQ9okkAvYDPpZlu2gTdPp9Gpqv4rGIfn1SUqu9wLcs6wHPxZHNPrif8Me9sdGz
         E+Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hq0RZc8p;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l2urG3AXTT0K9qtZ/fQ57gaTBYGMGGzKnGLZzgGUUpc=;
        b=EuCyLX9JSfvbBNyn9+uuyjSuNl8MSGId2KtzZx8WfP6R2h+cPY+HMWdpHHsLREmUDR
         isHRj/IKAcffK2Y9RkpPMJ/c1DWrrFiqxHhMYsbnyrwTbl3OJbu8i1cOPICkYa0vuOJS
         NwzowiAZnb6dLzMiiuwRn7+Eo/FUIBJ1QztwbhPrUGliVMhc/IMd5e9+mVVqL1SsCTag
         8ugtS6jvp3GSv4g1Svk7YzOAyTp0NpoNpziL4jyT2LavUMZsXKl12IWz61WolDmPu9A5
         BwocY/m4sEZnfFQYVNajWIVbNz1zreO1tWX9R/s+Timc0gJOhUd+Alp89H39587nnTgB
         pRTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l2urG3AXTT0K9qtZ/fQ57gaTBYGMGGzKnGLZzgGUUpc=;
        b=VcSK/rJ9sf0J1jQ6YTpZUlfyA36YdJUOxkOgdV2VyIQh0Ni11INvhInSq1ZC/qXryc
         vwhSfStk/d4lVTQwFI+tCHzT+QP6npWuAAPT51zdbMhg81KwKO8OKEg1oVspmChmMAf3
         gYeVzE5kfuRRTTn3oddVJyekOeQ1evLWi0Z1v+fmq1Rsuqkt2vVHtbhy3/aT0a2wM2PN
         iGveZ8JxVl6J9RRmEx7dIeFHS1M+6nQIz5Clt6b7SFGsy6KYiWTJ4FfeYSGF1s1w0MLP
         s0khJGy9ir+bED6DH3BSWI2JWBQNgTMbJ5Hn8Bkc8KRYbThiweQVK0pJvHoh44DeNCJF
         vRjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LWhVy8F75fGlSI5XZlDssOIfxF3dVvd9saTsYcvIc/wt6G7Ve
	on1/sqfqtt2SgM78Hj+gqBE=
X-Google-Smtp-Source: ABdhPJyxGMu7Rfnn1ErMjxYW+PBY5en30D8RZAFNpPWLfzncoKqS9IsCrFbs8IPBvi40AVDYnX8q/g==
X-Received: by 2002:a17:90a:a88b:: with SMTP id h11mr6322013pjq.44.1629267854105;
        Tue, 17 Aug 2021 23:24:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ee45:: with SMTP id n5ls691358pgk.0.gmail; Tue, 17 Aug
 2021 23:24:13 -0700 (PDT)
X-Received: by 2002:a63:e909:: with SMTP id i9mr7217678pgh.162.1629267853627;
        Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267853; cv=none;
        d=google.com; s=arc-20160816;
        b=VflmcvjBsQTVuNbFnxiHgmOIi8A3MP92/AscMaF9dpaZnFLDo0NFzXsYjVAj6/Vc2d
         ce0D7w8zdsautBR0D9kJW509KktoJiD2QxZJN9RxCFC2f26gbMNC3L2P2fNQrortw1Jt
         oQEvO8j84b28b9qHQsiafsblVVbdfrmlQNEJhQx7iI3Q+OH7i4HkhG/GkQBpbznyo8R7
         HsZvXLTTJ93IKmgK5B03LNh0ncWsia1MlAaOsB4/3Ii/ghMnGNThrgP8Bp3XH/dPGL1b
         xMIGi9HsP0LYcw65aApNkfKd3ElTEzm+cRvwk8OM+fq7zRWJJss88bbLfYX21h+CYe1l
         bboA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wNrSyu18+TQvxqozBk6dKmc83xjPuqXEkZM9+CZkQs8=;
        b=ZDnM9CKFv6sPzFyKk8wJi3KXDuzhgEcS4BRcL4bxxPw0EE285VRmtxhPXJOOfkZpqB
         fDYQOGIfMr4eR0LoKgMA6cLI/IYQL8WPaCN29ofk2/MhI9odpdHP2QuC4+PZfmPGHPCT
         KE45zzR1I+5h/L0AOMHLOoCdXDuxHueNSXLUHMXxn6FXjzhS/Zs11JWA7R1PuDnUaxK/
         HEDqST+IcUuZJi1id2f+Hxl/DNhpzEh9L/645UGCmCugDLWWTsdxVT12W3iFsCABVJw7
         xoApKGmL668oYEVmUuQazQby22CqpTyaHFGwKaXnCyDejRP6FGngPu557BFor/B5y1d3
         gfAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hq0RZc8p;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id k4si125641pjt.3.2021.08.17.23.24.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id nt11so1978056pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
X-Received: by 2002:a17:902:cec3:b0:12d:92c4:1ea6 with SMTP id d3-20020a170902cec300b0012d92c41ea6mr5911733plg.36.1629267853392;
        Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y13sm2710073pjr.50.2021.08.17.23.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Chris Mason <clm@fb.com>,
	Josef Bacik <josef@toxicpanda.com>,
	David Sterba <dsterba@suse.com>,
	linux-btrfs@vger.kernel.org,
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
Subject: [PATCH v2 49/63] btrfs: Use memset_startat() to clear end of struct
Date: Tue, 17 Aug 2021 23:05:19 -0700
Message-Id: <20210818060533.3569517-50-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1202; h=from:subject; bh=j07ODF9kjbRRiHohObgJ1N/RHPZCTrQAmspnQvku4YA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMpNf/1TOA8EHO13yPM2WoVQcddjcJSpXNg/q95 NGD5Kx+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKQAKCRCJcvTf3G3AJiFDD/ 43YRq8chsycAfEPzeH3ODP8oX8vzyejO0KZxGwB29jISLONkndclAADo87JB841bplfSqHF4g/N0Yr 9BPUFM/u9aD6MYInBsgRcfvidkMVdvLwJHJroTXouReKf+wENJpCE42XqDFb6/OHW+qszfq48l2ZsZ vlrJcOJH5B/7MGz2vGlPOqarS6QPhKxELyHgWma5US/BF+fmqXoGyLI96PzJHBVwD8Fv1vRW+FZyYX mS0c778XSYdo50TMLiLEeybc58/w6WbytsuOe2gDRaDra0L+tnQU3bUemlEwF/otdXngLgjznL3aHr 03wBbU/uuuYnsF2VxKSH3eTmyOXxM0Fc0gfhMAHlPYOx3FWaj25UujliZBiwYTeajzJsMlNaMxhyYC CNKnLKNfyeqkcnmjrNFG0fLVNoy2o0OR5zMuoedsu9e9ywbM82GfxRkHbOU9ZMZ5GgY2NMQXjzSHXm JS7ECNId/+w48q42Qz1RDDbkk71kX5clz/7ywEULnxcdaVF9VLida+SAjBnEmtDTTT5a3LFsbnweA7 31UgpReo5DWgV9+9dvXi/NGJgP+uufVyB7FGtNrTHKNpqkfmCVfC6YFh7uVwrtuLat1U/8LUy3Rdgf RT0NM3pRRzNQ/fI9ZSg5+8wsIv5qwbvYlgUlhc046qXy22//QbKOPQkqvAQQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hq0RZc8p;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

Cc: Chris Mason <clm@fb.com>
Cc: Josef Bacik <josef@toxicpanda.com>
Cc: David Sterba <dsterba@suse.com>
Cc: linux-btrfs@vger.kernel.org
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-50-keescook%40chromium.org.
