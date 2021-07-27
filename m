Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI7HQGEAMGQECRJUXLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id C83033D7FBA
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:16 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2sf130696ybi.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419556; cv=pass;
        d=google.com; s=arc-20160816;
        b=FIPYdTemlR1gAotC/hQI+Xwx1yym0AUghQAIfQ+Wljz545mP+5waWo3hLFeBpxYE5+
         T7fVUMkrOtzRPzdWqE3PaTYAwufb5SLNYU3hxU2t0yGhRnnQrei1iv0/mU7uUrZixVBn
         tYtO7NvN9qbCRt+JwxLFeBNWt6oXVgqOXXQ3BJQZROfHhUqBHxOLkpoJWHt2JximWhcf
         lSXONUi5l7lFBPhn3+oSBrbGC8FPhtbTYuz7UzCMzI2hMwpqs7oiuQ+VF/3nNq6B9oo1
         B3C90+/mMy2AAhca8GHEOZoOsWpP1zyv3Pf08u9vPWEEQGQXgqNsdXiYTv/lPV7zxMfD
         c/Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QyTOg/QUvIKq1LIs3s4+tiqjZCMLZa5W0Grnyog8juc=;
        b=kV6688aiiqDsJ6acb0ljuonCLK7q2ZzuFaxzBHX9NqNmoMrBcjFBT8aJhQUBYU9INu
         P6XG5wlCPSY9SIi3Pa+jMaWbtVfzqcQy4tJedUYdGDDm4Dd12PMOFSn20hFVJe12D1VX
         imKt0VtosYG9mlEm/L362ci5phpVKKhVVEVJNRJIx3kK/TotP2KBMOeu66v4y0CZc9op
         X9sQtYPtlts1tmw4SQlMK7+sGgU1dOVR5JxWZXhupp2E2zr98ftLE+HiYx+V2hohGoYV
         wbKuPuGuzP6FuCRf/ioq5x4QrLHrST+EIA3pJUzenEqFsSW04ChLtAaIYxU8NFWrWPFL
         rqvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mvsqmz2p;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QyTOg/QUvIKq1LIs3s4+tiqjZCMLZa5W0Grnyog8juc=;
        b=Vbo7kAyU5ehmbDXRidEIBrMbM4cV1bdslXBbYUXuKAuGHybqRGHqa7PIOOnziV+EBt
         ECjdx3WUZS7QJrAU395Folmr9+hAHyJBD3wkHmc1zFxf3iB0Q+ycqmPG+ZwW0a23TTTk
         lAz0IFlPXRW0a3RsdluqV8DpCV0PjCY1SFviNg15L5ABu41p4gjFAm+ZjlnSXz5em+E2
         ++annFm8oi7CoKCQylQlHb+bBfIzjbpcWpZ2WEVivXAExmvk1Fuzus7nmTd/qVgYtcgs
         aGWr4jDv5WdmwBGpp2jTvk8khwDGnkYSv4HHBYfbRPmnlBXourMrZYGeCWKRu/hADJ/N
         2kyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QyTOg/QUvIKq1LIs3s4+tiqjZCMLZa5W0Grnyog8juc=;
        b=pQr9lXKp9eYTh8k2BvyeDLbeBWYKkCdXGkQ32WX3rlK5TDYjQQTg2MeYC6z+LGmXTT
         NOYYdoGWLfnqUqbrGdPVV/OAQSX++SDhZ4Z1QKV32TSfCsFFDMtoGc37iKkzpG72A9v5
         exb5RkOkjru2nshzxqDMCOzwezxbpnjq18uFaAazu+X8Gqjv8ca0GZnuXg91cI/92dt+
         AGy+v0DGPulS/825sQUAfBTYmAYeE8Br0xu4zRDXOWX5zeTNjEc4C2SZoX9Ht2fqq7HO
         JgapXUGW3057tbHfhO0IGkmNcOsHIdyjoKH95LnwlcymEEAyMgpoz+uJXIZGnjmpAKVj
         O/cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/AJ4c5D/aDMRWp/adNZ0PShllIGp7aBJPTsbEWSN8Z9NsKj9Z
	ar3oGnJ6lo02j0sSflVWR5o=
X-Google-Smtp-Source: ABdhPJy/6guD23gvd/lWNusnE423G6fjro5YfWGZjD7MlCjUx6qjliSlmYGHrdLT/5NBUrAcoS3gZw==
X-Received: by 2002:a25:250b:: with SMTP id l11mr13006620ybl.342.1627419555861;
        Tue, 27 Jul 2021 13:59:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa24:: with SMTP id s33ls120161ybi.0.gmail; Tue, 27 Jul
 2021 13:59:15 -0700 (PDT)
X-Received: by 2002:a25:380c:: with SMTP id f12mr35706849yba.208.1627419555473;
        Tue, 27 Jul 2021 13:59:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419555; cv=none;
        d=google.com; s=arc-20160816;
        b=gDctLya3WLXcEVc0WAJp7r+izHzpXOWF3ftinDfcBcuNfrPb7SjjetVNQHmjnD/Uum
         hP7ByAa2H31xWIeX/rD8UE+L9EAsDxFTt+69AKJL5yV1J13PSbLEdsQizjMJ10yb5Wn3
         SCBfCxuL9qAz2LNxWeuGN6o0YISkcV+8o+ACM/27AZSf7BK5FDtss/ygXJCRzhFR2zDY
         oBb1MmcDR2GbuA6Njt21GGayzRbPGxZiTNJwfK6zOnr+JGdwg3lXARBe6Zoi5s3P0xfM
         3VHeDnREThMlR8XgnS9SYjhhIPdcVnRkgqzEvTDdRp2+Vb3v0l4s1KOvppfQW/4MXD2p
         P5lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9ZANtB/5paOTL9rrQ/OEPNR1JGy+0L6nD4QX9CL0F7k=;
        b=sxKzcH1SMvmvlkr3NwfscOG7wRkFGjIMuCHEqfPxoD9anBxYsd1DdbGrZDx0QD3xOX
         3tHrf925GYnlN99Sd5QTjznXTqHUaRZImiX8sZnXLuWF2PUGbJF/JQ5q1Ul900V3gwJ5
         ykFX0ok3XLsmq0hz44Hl4HjKU6RUvEa9tjtDgHx+Qq0GlU9k07MZaKeLEFB4jirsMz0d
         uExPMRPu+0bfGFTMa8wBZsd1wLKIeN3qaoM56dl9kzdHyQ6WmFgA9SvhMf/pveKczOuJ
         stkwShwT88HPFKRFlNSfAaRdblcCaMuKfFF6CWJ5Cea1GVNY6WbqrhLWEHQFa5NdwOcJ
         MG6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mvsqmz2p;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id z205si243058ybb.0.2021.07.27.13.59.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id o44-20020a17090a0a2fb0290176ca3e5a2fso1052223pjo.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:15 -0700 (PDT)
X-Received: by 2002:a17:90a:d251:: with SMTP id o17mr1322871pjw.200.1627419555206;
        Tue, 27 Jul 2021 13:59:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o134sm4623683pfg.62.2021.07.27.13.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
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
Subject: [PATCH 47/64] btrfs: Use memset_after() to clear end of struct
Date: Tue, 27 Jul 2021 13:58:38 -0700
Message-Id: <20210727205855.411487-48-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=992; h=from:subject; bh=x7ocbS42SjohNmNf+jZzB+Ex+GPw48UesaUcGwh3RlU=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOKwywaxTW0OzsQGL01qHorKOsTwNUavfO4aV7/ 4MvZRoyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzigAKCRCJcvTf3G3AJjfPD/ 4mFAUDF6T1seKtO/RA+qdlnriVg5ZRjAEH4H/h8DVsqaNsbNjkXXBxy4IGulp+GUR4SdYtq0qxTEGi dzjW0oiJ4wsB27VOGaHIXnH3D72eToay+7FKJsbTmxYF7qq7gMrBtZQ1lKPJOINEfDXC/GPs4PjHFt erSiS4lXcv7ZSR327qucJFy3X6rUI1vW/mu4I34D4vBVDPz7h/U/kTrFIpqQYU5qc8uY/8yajU/JNs mQ1m36vmx9AipRbk9NySHUPM6/19rIlM3mPS80ucsisVgDP46b0pgtm7X6nxCi9z/OaNCqCtQ+53mA 0TEThqquZzBXubfk3PRoVuwATx/orxB1j62Wns1xX49CmkH6puRyfHwmBSmk7CiM4Sk1wpqm9jnpGt 4DEdfYKvvTV5Mz5v4rooDk17qFI5QfRMISRbIJsWf42ioVfoojhOqA1vWlKc/ndypF47wowasPUGyj OXB4t+t9iIqUUqNtvyQSbgC16g4aG2X6ikTW6WjRC9vOt7wyZSNVoZoXQPD/ZmSRZZpvbQKkN2G4yN Vjn4IFYhXwNdyA0oK5yI/r1Q+WXeC+pvl6zO/L8B/K6xmBwrE0dWZNELGC+dpZM2lHGRXavr/S7tV7 OmHAQOFKQhK7/G9WgHJLShkAumxIBKLFh22qDqffVoP8zhUM+GH0rhbl7Mpw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=mvsqmz2p;       spf=pass
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
 fs/btrfs/root-tree.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/fs/btrfs/root-tree.c b/fs/btrfs/root-tree.c
index 702dc5441f03..ec9e78f65fca 100644
--- a/fs/btrfs/root-tree.c
+++ b/fs/btrfs/root-tree.c
@@ -39,10 +39,7 @@ static void btrfs_read_root_item(struct extent_buffer *eb, int slot,
 		need_reset = 1;
 	}
 	if (need_reset) {
-		memset(&item->generation_v2, 0,
-			sizeof(*item) - offsetof(struct btrfs_root_item,
-					generation_v2));
-
+		memset_after(item, 0, level);
 		generate_random_guid(item->uuid);
 	}
 }
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-48-keescook%40chromium.org.
