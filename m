Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWNFXD3AKGQEBTT2O3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id F27031E39F6
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:12:26 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id w196sf12630137oia.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:12:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590563546; cv=pass;
        d=google.com; s=arc-20160816;
        b=pD/QlWCLiBdjWKpQnnKQLNX/R7HabYIg6H3GTLQ/gi48mvfD3eEtaeL19B52WkPecy
         0sH8j4ueXqeVC0QeIrM9Ag62rgwO0v3xpi9JoZ0Qi6OmB2cvxmXWICeKgzpEcJfAoTXx
         tuxZJjOZhvHLkM3xtRYJzhedY0mJ0NH2wK150rFefZdIKD/DoQ+Z/eNm6s4UknSKMi4O
         J4FqO2lstOiHeTgCSWz1GlmcD9zv6hy3aFOL5HZZ6nnUgadPtTVNXz2MSqCLpV9Vknu/
         UCKTChLoTqx1GMbyHUqeegN+TkWS+TDNJkr6yioRArZ7NPuWE5gXLyM+lkyJZQAoTifR
         e2zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=kD1BMP3n6zlu6gGCs3YXUCbWB+rrMDh+24T0lX4E08g=;
        b=aYMzdy7bM1UqB+FQpDhw5SE5BsGU8Um0QzdyoIz1WI9hiJrriOy+suJ8b4F+fB36Bh
         uh/iuw6kjZU8wItO6Amhs67kzqDedI9jXTnyxOtEwKlwYSV4QU5cixR1O11+lrhNPuQ+
         jNIhFcoGP/2/8+J71ZDNv8VgEwtgOTFHJOdfCPJypWsqZmOvlbyJjucNWxnv3jNCe90L
         ib6spNKOUVGX0PAJJ9PB07BXNBDi0TvVnxedL7AgTECmRVNpQiic/ST+zscwjBhz7JWw
         ZFyAoSd2DurY6OGlUiNN6KC9Wmb9GQkE47RiQhdlG23xX2YSnBgZdhsvFLNsLwkVbX99
         me3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QpCpctZf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kD1BMP3n6zlu6gGCs3YXUCbWB+rrMDh+24T0lX4E08g=;
        b=K4iL94Yv7i/LpQwYr4sKJzK39IfHfoe0bqgtcSebn+A98FPrFJwmqTv+SCjwu6XiuJ
         ANWm4bWb3GbeoU8JT4uJh7FqdHZ8UpSW2kbfNoyjW0JNv0tVNQZyBThAtxWhC6cacjIZ
         5YSVUouDg7Q5ktEWPbFD2/oQ+gJuEcUgG4xcPJq/3VFkjoqM7e7428UwuMHcaAUNJ2PX
         Tw7cH5W9Zpe6BEqqo+5rzgEeaKO7/11ECjk3CTbmrVe5IEXanbAqU+3sIfONWbwirUkO
         Sr9uDQ39swbn7a9WpidoIKfzaxLW3oQSWt6dPd0FbeNBYisLkMgDX05ospgH3osW9JIT
         PJ9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kD1BMP3n6zlu6gGCs3YXUCbWB+rrMDh+24T0lX4E08g=;
        b=cHPGHAu7c3pFRd3aR8wfAv+yKN9wln7AIJDo/ii6C0ycXWY0zUXdnL9bt9OzDkdhtG
         3Z2V9r60xxPjqy7uUdfDWZX/wDKhd90YC08DKDNCNyT6N+2goCXsXAGoj3fK/hqG0UGI
         W4nAFzjyrQaHvBOQsloXfiRmbKRJioFirr8EEnUUZ9EbVft8u4dLAiCQrqfE6a21ZrSG
         ViWhRLXxVVeyDNu22jsV5p7nA+gWZz9f1iRFSnq04Ud4v2tWLMI4IC/h5yNQgYCHlHXQ
         TjLZ97xQuAsqzFaX5HW61pMgTqRperoazo3oAU3TniRygye7p+BxbnOR50+/zI0Ba3yt
         TveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kD1BMP3n6zlu6gGCs3YXUCbWB+rrMDh+24T0lX4E08g=;
        b=B4FzRpRpyVz+UQ2dK2tc7mUylBLWrd8zROn/A5AkI+KOhLfWBg+eyXaZH5PNgDRQ96
         SZbz0VM66GiPoWJ5e16YQ8Ig0+QFANRZYYkzKptR8BmRfC7QvZRFqApk3A8BpnJQfaO4
         Mx9RVyx+5hFYR+zm00YVpzMHJRVn2GFOa+bnANxPHVIANKrpi7eOqzwiLw39N3n2XB9j
         BWwrwSK20s5zxqCwCNE98fnkl/Gg29MJ/ma+5HIukUREJAS4BAZU5wN5VNYY5NDDnBvy
         aiKJPEusiJRuNLisc6ZSGuPouUynNS4SyAzwaLCpV2eGtenqd9CVmkMCm+rib+O+MD05
         mAXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aQGFPsgwHcwczG5OGBdLD4k0G6n6ASAkiWsuxcvkAP4Oj58XV
	qXACrBSmgzfiXMD/Dxea5lA=
X-Google-Smtp-Source: ABdhPJzzvgWIcnmULp/q8PQOFa33PcVmWOWN7bpkUzYZtDsv8lZQSXH+90Wn+yfOcZdSghLS224Ikg==
X-Received: by 2002:a9d:6752:: with SMTP id w18mr3574065otm.335.1590563545752;
        Wed, 27 May 2020 00:12:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:502:: with SMTP id 2ls2636426oif.11.gmail; Wed, 27 May
 2020 00:12:25 -0700 (PDT)
X-Received: by 2002:aca:5314:: with SMTP id h20mr1867536oib.57.1590563544771;
        Wed, 27 May 2020 00:12:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590563544; cv=none;
        d=google.com; s=arc-20160816;
        b=gEW5c1SZ0Zka+2nVmtMGdr3ln0f1lhiQM3e4mfjwJHwNanCft8H0BsMgRND13iLCsC
         WJF4ljH1A4SHq6WeDTAiUrw6ftPE9KNmTDt9sf7xBtrQmUG62zeIHNoUNbzEvLlgunql
         z00w36ZctLppcbehrZyfSXCxoAaeTQDx9KXkImFah1pvs8ePsdrV1miHK25m9G9WbHtv
         EH9MUdHojXqenCh/1e8K/B2cYqWwvv9t5bpox+BtdHI83EV7TEp7lsKcCQpLb/4Z44Hi
         VWxuXwnfMjMh/9LC1pzffq2rF2DyKgrg8UjU6MbPdXLh8HaaUt+3cjxVQlzFtjJWSfvn
         VeRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BtFr88iS5dYVk9M5situj/cALZfUmfJBkWJmVOPGwiA=;
        b=mFTAOAE+efKmxFaM1pESJJvVVad+WuE1FdfUPX9yaIcuLqZlwhW5h/DPqLgkotjZ+2
         VEVUdvKlvnckp78wgaNDt447/cxOOSigu0NzCDC0Ycusy54b/5b6YHXAg0NCTX5foe7d
         f3UvBLGZ6W3zYQqBsx6NTGmNhM9lRLZSuURNUifLlcqC/Zar53M1GvO6CMvC2tmyqqVi
         tLtdQw+FpBaMzU8lYkFMcrBHQiexz8iQviHF6pyewxlhJPXp017tNb1gTJVGsk6pezrd
         j6rWopoOkKBbRDN1BetDlMrJpY8he9koDUwiSBfcrJkQTAjLww1JAQIbJmZRYn16t8Cs
         r+jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QpCpctZf;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id k65si229968oib.2.2020.05.27.00.12.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:12:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id e11so10483606pfn.3
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:12:24 -0700 (PDT)
X-Received: by 2002:a63:ad0b:: with SMTP id g11mr2665934pgf.275.1590563544076;
        Wed, 27 May 2020 00:12:24 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:12:23 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 7/7] media: atomisp: Remove binary_supports_input_format
Date: Wed, 27 May 2020 00:11:50 -0700
Message-Id: <20200527071150.3381228-8-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QpCpctZf;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c:1707:64:
warning: implicit conversion from enumeration type 'const enum
ia_css_frame_format' to different enumeration type 'enum
atomisp_input_format' [-Wenum-conversion]
        binary_supports_input_format(xcandidate, req_in_info->format));
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~             ~~~~~~~~~~~~~^~~~~~

As it turns out, binary_supports_input_format only asserts that
xcandidate is not NULL and just returns true so this call is never
actually made.

There are other functions that are called that assert info is not NULL
so this function actually serves no purpose. Remove it. It can be
brought back if needed later.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 .../atomisp/pci/runtime/binary/src/binary.c   | 21 -------------------
 1 file changed, 21 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
index 2a23b7c6aeeb..0be2331c66cd 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
@@ -857,18 +857,6 @@ binary_supports_output_format(const struct ia_css_binary_xinfo *info,
 	return false;
 }
 
-#ifdef ISP2401
-static bool
-binary_supports_input_format(const struct ia_css_binary_xinfo *info,
-			     enum atomisp_input_format format)
-{
-	assert(info);
-	(void)format;
-
-	return true;
-}
-#endif
-
 static bool
 binary_supports_vf_format(const struct ia_css_binary_xinfo *info,
 			  enum ia_css_frame_format format)
@@ -1699,15 +1687,6 @@ ia_css_binary_find(struct ia_css_binary_descr *descr,
 					    binary_supports_output_format(xcandidate, req_bin_out_info->format));
 			continue;
 		}
-#ifdef ISP2401
-		if (!binary_supports_input_format(xcandidate, descr->stream_format)) {
-			ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-					    "ia_css_binary_find() [%d] continue: !%d\n",
-					    __LINE__,
-					    binary_supports_input_format(xcandidate, req_in_info->format));
-			continue;
-		}
-#endif
 		if (xcandidate->num_output_pins > 1 &&
 		    /* in case we have a second output pin, */
 		    req_vf_info                   && /* and we need vf output. */
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527071150.3381228-8-natechancellor%40gmail.com.
