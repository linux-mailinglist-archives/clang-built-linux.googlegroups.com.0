Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTWG6KEAMGQEL7H3WXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB173EFAB8
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:07 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id c11-20020ac87dcb0000b0290293566e00b1sf380778qte.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266767; cv=pass;
        d=google.com; s=arc-20160816;
        b=MZxdxozkhvWApIhD+M3r1F5SqAfBPHUy8a7RCAurRVZhGB+03Cs0iIhubqDWELBZXb
         khn4p9dydoJHtokTPX0Au4C8XzWNF2VZFMj8x8ElAS/KaYs8XyBOo2OekSEnSwV4IY+J
         nNak3/ZTWSQ7VPDxZB3wIdLMOLOzFK4xS/ZbnHIY9Wg2qRIoadvRQNSQ2/asT6+dxwj3
         kUvfhsUtrQszydwLcJRAP3dKt7etLA/+wX40Lf3EHb+K5q6bC8HIZWbyVovft7KwGOty
         PWVy0Qia2Rt6q10VzKYzXV5Cw7onElFrlzizbdHfSdjXEnkorADoeQ4k98YaggHP3Uds
         x9KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EjaQc+ovrINzkBPFKWnPweFUuh3MLS3ZTv/IMBbisFA=;
        b=WK326mhGsvQOiaWRhJeLoe8Oc0Dmpgikz1qo78TyEwimqOdvPfFCxWM9P7vTOaH213
         hs1yqC4tBMawCSV42hiE2m5KNnQOJV9/UrJoVDGLUMbrMTboK1uienMQmhfIS9FjjnZH
         4/KMN8yYENgJ1IwKQVqUaDQn5XKy/sPJVnAZNzzRZjnASkYsULF4ZfaODkD1WOaJQY4G
         A0hUZ9NypZmiJK5XBBXoHipVIIdMHQYAduX5vNx9HHXN8uM7WsJ1U1hIg2X/cTLGb+YI
         WvHn4rmQqGCDJ9kfYoXn6jgkAwJGlchyr7oZ30rKQGjOA6mgxaUCwh8iCnK/yvllIoOZ
         FssQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="lcRiLN/p";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EjaQc+ovrINzkBPFKWnPweFUuh3MLS3ZTv/IMBbisFA=;
        b=Y7uK+wQ0kgmTppCeF6GlW3zlhMfP/lBYVtFxFDstQuJFVFmaxodP2t2jsWl/2jdPDq
         +BSBxkdovbQe9ooCnJS6qmWukMySy1DRo+Qhs7CNveWMpvmUE7YV1T1cQKI6SjtUBhlI
         O0dSIQg+gZmn83hK+F0dorFehBMejpGcYpxP+qMRhsw16GOQ4ysvpYH/850NfrZc/xbE
         2awtNDNPxaMWlX37o7v18uTprfKnew4sc376MGQYB4bjFWuEb9bsQ3pW0txdROVxuvbG
         Ee40dpd+8RGNw+4K9VtlhJQ8ktXK8o4XGKVyZMocAT0F6DfsiYB5QA4sEf47NJxWXvcM
         5FrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EjaQc+ovrINzkBPFKWnPweFUuh3MLS3ZTv/IMBbisFA=;
        b=MI9nOdGAQntmrZbsDj0PXY1tJeK+9XHXPptfqRHLNAZioz3RY70sZe693tI31KYHB9
         4duwvTpw1iAp+qlb9hsw/7tiUB2ErGPWQ8Nf4U3vj54oTo4OVpTB9rqKRaz88YoZim4N
         hCYJMeZsAAGani4e775VEhtz1Z3vV8v67aTq0+zs4YxMYoP2G8Yi4ELGM5nH+6NE4CCL
         iaHH5XS9wHJHlMoVY+Q6xU/yNRmBxFnpNBcHGr/xsvyq59XqsvC7kj6G7Mvq36QrNGse
         oifj0jzhyfLRMcFFFcnzYhQ9bBcinYlGDZrWonqMcoxjOYRTndxn7hZtmgc3jQvHMvfi
         sotg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Sv9+OjfNGKLJcxmGW5MvY/J5EE26ifyzkWnJ+y4y0Y2uQz4R0
	mMcGwOufMprQrNkOlEiQcCU=
X-Google-Smtp-Source: ABdhPJyCCQC6cjd/XmNHqZOHNjmvgWpAL4QoNMN56IMRHC8zoSCUAOvOKI1qovFUcYNMLnB0nDLLeA==
X-Received: by 2002:a05:6214:2408:: with SMTP id fv8mr7457296qvb.4.1629266767027;
        Tue, 17 Aug 2021 23:06:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c6b:: with SMTP id t11ls323894qvj.9.gmail; Tue, 17
 Aug 2021 23:06:06 -0700 (PDT)
X-Received: by 2002:a0c:e883:: with SMTP id b3mr7338354qvo.23.1629266766659;
        Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266766; cv=none;
        d=google.com; s=arc-20160816;
        b=AHXDu+1Q2K4uK8KZUN+rmPt3BuGZFvdPn4ei+IGUjIrsNjwxrLJGZk2QIj4wJ7PU8Z
         tkgKYAPDLfrhsZYc87dczhyFaBQoZwYaJ5HVN7rgole8cNk3CYh3xvrJKfr0IuXBEdvn
         HZTULAvrSuMedI3ID+TNIdjT6wjYPteILXEH+Ikdy7UrVnSpeJyCAqbGMe/SUjPIok8L
         GKBvInVhgVDOu7Y0UFTVKoLFldOvHwSXbyuHSGrP951iCdP2GSaHnmBk7XFiH1OXtpN/
         CJYsNW2GGzK5RRyvsqbf1aHRrfTc442msZzDXtsp42n26rBpSyvg9wpj5AOVIbAjEgfQ
         FG+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PTBKkWGSJ4jeq48Lif1HjorGsj7JNkZaLkD8D5Mis7A=;
        b=gxgt3MmrNmclpwKoRsQjaAd7tinDxPymNVWrFbDfmy2USsPMDpNMWgY0qiYEyVvuGC
         YXzdOcPfaj3BXhXJkUxaVHhLchc6E8XweV9F5xKfoseQ0+5CBcPwT7I8aIceSoxDzUyt
         ONXrQAYsWm8hKTtJcxeOQY3cu237rVWex+gJ+7Y4/1xk9f0ipl4u6cxUHqJ3N0HAUATa
         Q/JTI657UyxeukXsrk38TIyPUDWJt7oi7KZititjLP200qKrrGh7Pi+7ePtCM4OmXWop
         48xgYid0Si7Av3kiA+vY2HNuYVQqsnXIpsuybBYhM45xmel9btQQl8wqK2HoBCQIz3co
         ncUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="lcRiLN/p";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id b1si358739qtq.3.2021.08.17.23.06.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id w8so1142167pgf.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
X-Received: by 2002:a62:d085:0:b0:3e0:f21a:8030 with SMTP id p127-20020a62d085000000b003e0f21a8030mr7615770pfg.70.1629266766375;
        Tue, 17 Aug 2021 23:06:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j17sm4782687pfn.148.2021.08.17.23.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
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
Subject: [PATCH v2 47/63] intel_th: msu: Use memset_startat() for clearing hw header
Date: Tue, 17 Aug 2021 23:05:17 -0700
Message-Id: <20210818060533.3569517-48-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1239; h=from:subject; bh=uh3kPqi+1X1lyfKJytqHpZ67tA8Si7LB8pUN1izBRBI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMokuhXR2p74Acuej4eCBPYM2cMZOT8THgQZzGV rdQKEmSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKAAKCRCJcvTf3G3AJvm1D/ 9kF/338CaDSDtZdoqV6TgTFjJO7GhbNkoBmaGibpVP14xbup3OFbl/8EWjfIgiZ5HEL4MqjjTWMyQD GVmRXMyIy+vWRh/NnndkDGceRW6qt3HsyulsPKChA7zxUB+DgshZpdqVp8ftqxAtnr7XjoSLpPjA6Q jd9iNmeK/83BSvOrCXzfw3QnVp7S/8MJgCGvFbdrnET8gv1IOUMB8G7m3XGNLUryv8ZV2DS5g85EQ0 9P28dpGxmAVMsi9vVqMViPQNC/BVKoo+Ax89vzH5K3aMn1bfmCCfXRiU1R1z687xeHxmN0mNjUu943 YG2huUBJz+HFlahhX/8DegqUfH3Roc81OdU4xQrSWUIynliECUj+/rLG3nUrqetH+63wRgHXzOS30A dNLHiD+cCMIYAMXAhvA/kiRl2zfl4bvvXGqwytmyz0E8wMCPXFx5NF0Kx2GmTm0w6DvHzyRwqGzrVe o+OGGog3VcigZZFQfBTpYUYJZ91yw92GJvsWxlN1Jlkk3oLo6ax2gSSw1Kw+wlUL5JUYGviliS2BrP Gjo9a6pi+N90GCV9dZw+rMpbHm49R3IBpe72LrTBqKtVtcEAuFolJR7jQHnLfVqdCTdUjl7xRKSpdJ L25TTHWjDtgY5E6pp3BASup3QhcHbz4WiGqQCnvgdUgeX69GFYXmzp9CuwAg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="lcRiLN/p";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::531
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

Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/hwtracing/intel_th/msu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/hwtracing/intel_th/msu.c b/drivers/hwtracing/intel_th/msu.c
index 432ade0842f6..70a07b4e9967 100644
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
+			memset_startat(bdesc, 0, hw_tag);
 		}
 	}
 }
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-48-keescook%40chromium.org.
