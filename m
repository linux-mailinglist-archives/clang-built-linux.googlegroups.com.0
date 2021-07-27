Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBR7PQGEAMGQEYXOLU4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id E06623D811E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:56 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id u2-20020a056e021a42b0290221b4e6b2c8sf287542ilv.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420616; cv=pass;
        d=google.com; s=arc-20160816;
        b=ga/A4sa9kQYL1ahlCgm1SdDX0ZSoEpXkwfW8txXQhvKw8OnuaHrdt0tnuT1fnkk9nr
         p1fVgOyhiE3bKoQg90uoWF5X+HXTQGPBCYwX9Y0Yb6MTJF9iXg7LqeU8bTCrp7YMAIO9
         1AMBytOD1ivllYXeuZ81m5AeREwQPLmHiilnTBZs6dELZv8hk+ftgMqDtG5J3QgUQoxc
         Wr8vXJBAUJlXCcN7LdndLYPekF+KxPiqj7KTcCX4kD8sLO8F20qkKinr99kshzo+K0QE
         ACHMHH+ufElsW17VKcaXgGXnjbfJPjQoOYXL06YbvNXbRRJ2PsA3hv+5IcT5i6kEcJEL
         7vXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=B6MB1Fwo9SzkBGMvL17FjIvNTV0ru5wK0rrL9Qz1w0w=;
        b=xqejKkcfy4h4fErtzm92k6J1QfSMp1FWMDVafVQFfrC2wGDIm/l77Q0Qn7rYr9e1l6
         y/4ZnoFP06l+HbxmECt86a/vWKwucMPTekboyTs6FwfV3rwt3fK1tZIAk6PPKNdZ1xOL
         91izlFtJ7zGkWxVTF2ev69UyNwI+5LSwqXooKu/yVJWygWE66wgn/BdXaeRThdzlaYqZ
         OUSxrLvAaRJUMKnB6x5IXTUgM8Z+LhJ2P4fJ2xC6CZ5IlzWo5LCQyPyUL58QbKqvdHOr
         at9jCioaD/DjzutoNjBskU5YbZTyiK4KxQfTWjvB77JtPbdR7piy45n1ZXVZfx25Xge4
         Dfcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dNYQWvNn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B6MB1Fwo9SzkBGMvL17FjIvNTV0ru5wK0rrL9Qz1w0w=;
        b=Q+/zTzmCsfC4ulqFMJXBaPua0b36wBPD3dz54TwjfcAcqvOvDKI2VtHphZjJGWUwmE
         pPL5F0KzlH50hh/VtscKl3cigMs6mbJd0Neqne8I5QR4V7UmK+dTnv605UutfcBNqaJb
         z7XZ85i9neD5QtrwpN4Q14Xwvhnxu+gxRF8lTdVDeDcTw8i2vUM/ZaKBRGASQMcfttWr
         dng9aqtcF/Ws6yzZooy0aG35x2hWXJ2b+YwsskO3q1mtScNE9PyJyF23iy9QMhSAuT6u
         I4/ZS7tk6GUbQRJbziH2/Hfk6eqO6yOlsuuQLUSBPhjS+1EEJ4GNte90o/hvdy6uYDXF
         g07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B6MB1Fwo9SzkBGMvL17FjIvNTV0ru5wK0rrL9Qz1w0w=;
        b=sKZ6prXs0dZ5stBspN6ouvhaZFAak6DhJ/F0F2EdSlMZhGHr9Y94oJ+pYNbA2h67V2
         lecnUWkSh8Be6N8LuUtdHZj6gefzxYn5MAO1WMHf4ezEhWcn/m/11rP+WbRzvyScjpNE
         9r+gYJdjZ4pi9wl/ByvsD9tJCYLeuTij0pJH26UiUrYoVoOJhacjnvSbHpvtyNyaAOun
         enEvu+EeGNXGWULdifhhOhHkd6GZ6KGo6iyg+fuXqNehVTsP+4nQuuRLwUw3V4mKVvky
         8txd6L0giUQfrcsshfLHR8pQCD6iWoim4CpMPt3tZkT9C7f1bwh08fOmFDrnQJdk3/n8
         6Clw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eMJELR9Jg4nVy2PUcv9BuiVenVhcmw72DfoTPEE2rBxVv1pO1
	48YWmtTZ4Yo4qgqO+wrT8eo=
X-Google-Smtp-Source: ABdhPJx2bQ0Kn2UllFB3fPGzYgKyJa6HtkSVFnGCZ1EIV67axx12oTAXA9IIcNa7kIsjtveWvjLWJg==
X-Received: by 2002:a02:93a3:: with SMTP id z32mr23609765jah.33.1627420615834;
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:240e:: with SMTP id z14ls33692jat.4.gmail; Tue, 27
 Jul 2021 14:16:55 -0700 (PDT)
X-Received: by 2002:a02:85a5:: with SMTP id d34mr22911436jai.132.1627420615538;
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420615; cv=none;
        d=google.com; s=arc-20160816;
        b=tBtpliIilmsrnCZfM7YF3pkknDA1F+jlsZ59zVBRtO+Qus33C0WUWdUbTxbwrZt99r
         w0796nSoAwufUaBuVyygQMDcRq/EkjIqTTGSr+90iB579YVz1Phnc9Ec3ti8ymXKKER+
         BIkbPSHH3Wiar8kPm90oT9EZ+iuPPI+QYnRyrGwpy3tUCDNS42RK106ubo0QQX6EITDu
         l+73PSKTAsBXlm75w6VbvVFoCiPlw3SWw/QtOMJahon4BsUixK+qC33qUWjThzy/f4i/
         A+Cv/pQOKtlX1Wpy3QDWgA3DVHhCRlatC+bf4WBYXA0CxGvE2Tab17C76CihTr2d8ETI
         WehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DGTay7iAWSyVSQKDJdUkixgvUstnCPUf4gCx6hmeZFg=;
        b=VR++vJhx5MYJMTnBixzz1ENuqYSBvC/UUXBPgJL7AAuR1JMm02UjdjHcpsJ+dP7iQK
         u9i0YwoX1HhBXCzrhW73IIj9G93ZRdyvE6kU/8ki6X2HhyhXQkpnNtAXhAAM1CEf+wu1
         p/QSb2MHHelC3J6vqWJz/jUg/5ON0RxL8mFrtj9XxJeGuBRwVk3iF5XL1OzkjssFf3WO
         ZB1DSGMDe6wW0ls/Nc2UN3PL5MuDOwAsuegp0BFYkX4r/Swd304SKnBreMrrxb+4+rXU
         o+IXWapMx5IJKRx+djZnrbT+O+v1CPn6cmgSe3zijupKH2meVyzJmCm6iomW/DgPhAX8
         dE+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dNYQWvNn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id e16si266877ilm.3.2021.07.27.14.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id k4-20020a17090a5144b02901731c776526so6675269pjm.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
X-Received: by 2002:a65:64c4:: with SMTP id t4mr25559293pgv.222.1627420615303;
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j187sm4758930pfb.132.2021.07.27.14.16.51
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
Subject: [PATCH 45/64] intel_th: msu: Use memset_after() for clearing hw header
Date: Tue, 27 Jul 2021 13:58:36 -0700
Message-Id: <20210727205855.411487-46-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1172; h=from:subject; bh=4YDV077FmH9lemmMexWp8eMo9bjnp2d96nCsgVn4crc=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOK9ttF+ksljVKBeZVm/usaI00laWjD4Unf8h1d eoh1+beJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzigAKCRCJcvTf3G3AJhvxD/ 0XZptAWWII5Sd1eI6hMq+jc4oUfLp5M5OPVb2emcgAAU0hAdSFxWDSUreT7263Ke3iOrhK498DJ36F DFKeXG2Kgg+H8VsBs/8iBRv3fcGi9/Ws4R5EVR3wO8T1tGxps7guCF9Qt6VBQ1s4MJ6uP1WduVwPNZ ZlByIdd7bbTAOVP0DQkaoixkgPdZnttNUp6Rr9N82rM1ej3G08+KapIFaiYMmhQSc7X5eCVxNKiziy OaiXcQBIN39iFbSTkPqmGWB/O8O9gN3mx3NTI/59TdmWDsSIEA0nZvbfdngpv2IWvghbSAnYrPfRoP PgSUX4wsUmyVbVKlsPRTFFnPc//4u4ziXfaO+NBESwrPcAmCy46pnKciUhYP1HH9VEi+ZCFb+SruMD MadjaGn2+3NdXFhWFV8895TTZ9u2+OKWtOQfqo11ynnlTm/DCGHvWB/AFn/6JdmHikaEpmcDR35+C+ Egf9o3kqDZ/B2qBqmcNmBMEV+0x48LZBOC/a5eqPn2bWsV9AJA1QV8ZZ/okfq56/5BwWZsW3rb5Jgy w2lr+ZeijJNIcye0PRUUdx3g1rzpx5+DXlN5Ntxi5rE5nrCFrcdyM6t9z+TbSBsR3Gd5kdMjV62eDG arvpuLcVrVwUegzp+aFtKOIzZCN084P4qbo3Isqj7ayth3CARHq/kmH7pGPQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dNYQWvNn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
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
 drivers/hwtracing/intel_th/msu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/hwtracing/intel_th/msu.c b/drivers/hwtracing/intel_th/msu.c
index 432ade0842f6..f3e266b0756c 100644
--- a/drivers/hwtracing/intel_th/msu.c
+++ b/drivers/hwtracing/intel_th/msu.c
@@ -658,13 +658,11 @@ static void msc_buffer_clear_hw_header(struct msc *msc)
 
 	list_for_each_entry(win, &msc->win_list, entry) {
 		unsigned int blk;
-		size_t hw_sz = sizeof(struct msc_block_desc) -
-			offsetof(struct msc_block_desc, hw_tag);
 
 		for_each_sg(win->sgt->sgl, sg, win->nr_segs, blk) {
 			struct msc_block_desc *bdesc = sg_virt(sg);
 
-			memset(&bdesc->hw_tag, 0, hw_sz);
+			memset_after(bdesc, 0, res0);
 		}
 	}
 }
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-46-keescook%40chromium.org.
