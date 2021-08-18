Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPOK6KEAMGQE5YTNPSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 987063EFB93
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:22 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id s1-20020a17090a948100b001795fab0f86sf4273905pjo.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267261; cv=pass;
        d=google.com; s=arc-20160816;
        b=CK5rdF5XmPfHUOT9/WggBPYqryo95J1x7N+g2tybRmcneEH1y69DzoIuOIJ3MFc5Lr
         cbahwHPl7N0miUU9nSSjEyHCkJNmQteTgZHzsQpabLnqUdckOnsmctz7F2tF9ugUhVJ7
         os3Jv3iHu5RLHvCOjOVC6LPT8E2D8VIJcucveZ2zhlaZBA1LdDR6FFnTceZbt+YFrexF
         rmKj4S8yEUPA8/RtlJvQBsoeChkHXbRJVSFpASUTgmm/i8RwLbtaFFg+pqWzPfG+ksaG
         rvAsbXFHJd7Z7ObzxCwqsst43emFB/WGtzt6AnsyZ9P1Cc6/IZghhw0k+wQunUBtOjcB
         ZOwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=arZe8ZhXvQWBBY//mZpzs6KgZDEnImRjSdJfLtblNOo=;
        b=rg6b+WfNLT1fqzarZpT08bPaW898L16sYnPz8vxz16Fg6oDxXzF/kUpzNEfpGW2lH8
         5ClG89qmr1TxugBpTVTAbKmEWnKxW4vKMB4UzFWXvBLOXe8G+hoEuFB5+3E+x678yR9Y
         4LxcLM5EHEQTOJWnzPzGJCEGEpfTPERfZ6Wnebxu43+ymUJ2vcB3B+dEzEUTV1fShIK3
         gKMvOX6AaFlmbOfEYEOaIYivpkNLWNw1RtCP21LJl6GsmA/ySj7EfZq1hPAAL8j/Bkqu
         TKk7vdY8E068feH0mR0rW6ITR1e50nuOwa1vk+NgELbZXVUme09TUSS3TmkZZHbJdoU+
         jSzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="I/ZOMRfd";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=arZe8ZhXvQWBBY//mZpzs6KgZDEnImRjSdJfLtblNOo=;
        b=HJhH44TqZlMlKeNGr7+x0eWOlpxE5R8em5A7+qPa1X7TeR89WpHhyJm8nApBU40OqC
         GmCsnkm2d55laBt42rhkqkFeIP0ak0Nko9Ow2CfkAWr/0nHbo2h8/DqEm8Lj7TeGwXeJ
         kIwtkbz7eRTCINhQx0kwgojern1gODPvpXhG5TQKlOIisfTaGR78XsUUwuu4bgt2ULzj
         yD1TQh5SmQRR/YKXlRN6+7XUmRJjVVAM5orP8h3d/Czz4MLGQtBxYcDsfYaTEH0k2xpO
         YKq2JEXIDcnpPX6jBZEWhmhb0BspAC4S3f3MgQWMp3j4DKMWEfbeaKXhwokLgBxwT+Mw
         emiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=arZe8ZhXvQWBBY//mZpzs6KgZDEnImRjSdJfLtblNOo=;
        b=tIvPqWZMnbkP84rMkZC0h8PCFABXgBtIIFyB6o0fYu/4VhyQw49FrTKgrUZUIJeWDY
         Q/Zq+cokqiTU43RmyQkLxcQ5cqedmU0ufRqgqDfhDMH8FhLFgACagMgo8w9OjkdJFy6z
         LPilBfC9iL1yHlCJIP1Ukhp/MM37qQdtxBMYrxI0Xq+Z3asoYlyr3F+bRXfZYy5DP5Kf
         KBl03OROAkL0U6ItSpO4aMeXMgdlyJtB6JrqjciVax2DtYuEkbxftuJG8ubfYj9ynRp1
         8GvfNnPvP0CiZcylsBTlRlNT9XzrwQLQxS9FmH3KHEyS87HngFsrhYtcruNlU5MXBIl+
         lTUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YkWO77hasH09zXqnRuTweweGwjQqTAKGOl1QZJCvIvAUlE9ST
	4NpUNqSgwk0johoOX6TksgE=
X-Google-Smtp-Source: ABdhPJw0kyFg68OOHSSQOmIwgtjVmkdqypMLdqDLzaZmufJTuko2SqiXf5QXa+cgiptHACY+vnvUdQ==
X-Received: by 2002:a65:6658:: with SMTP id z24mr7287056pgv.266.1629267261355;
        Tue, 17 Aug 2021 23:14:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9c5:: with SMTP id 188ls672674pgj.4.gmail; Tue, 17 Aug
 2021 23:14:20 -0700 (PDT)
X-Received: by 2002:a65:4286:: with SMTP id j6mr7418486pgp.10.1629267260803;
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267260; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgEE2k1chNT27oAA8OSPNnyTL8e1/owQUjdN5cRVvqhJzrUR+bRadZrcqa5dYw+Uky
         IfRbYbv8CIN+MAWiMNOH9JpUrJ2yIwz2+BlzbcdYDgUPWboCkpnrszDSfKBxXpTZaL/7
         Lw5kXiTNM4qGGtf6PLgXLkDN2jNElaHWfDawSMbrs5Qcd4/xrQ8XLrv1WPAMjXKrbs+1
         L7z5Bq7JFKeJHNDfVftgwCiOS48g/LAubWBY3zKZXzU/TI2FaqBJPQwITr+1EaVNQ+il
         oHiNmyUjRphySUq2KCWX8CtIDedSJHqtBGEriYUpoKDIkNVLo4fIRKYSxCfvYK7lLgkD
         bNiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HZ2pMteOO7qWfOmOYtxvBybCH7dbrKV5AXIyHH8PDAo=;
        b=OrQRaAjx8gcKo2fEf5QH8rs3O/ORIXObMflaseF+6ePl6BULnsNSMBDKNNH/sGj4y1
         0KZtr5kOfRQ18F654apqP+UtxU/4ZfP79Nb+jUc7xQzTlQv8InByR8eh0OqNpHm3X8Ks
         kBJf0vLY2pUgR6UdWAU8S6o05+Tiw604oHSuKZ7RXhlj4Avr27n/gUGhHke6dJtC105k
         HHAOhTPLMnOQsxtTuS37pYs7kqtmvMaDv6FRv36/R0IpM+dwhas0HgDRw3HP1GiXTKdU
         PlnDr6h9/wbJZMhQyC1gbqy1i0UcEcobZQ2bMmy4s58J4UxpGAaHvovFUZJaWqLLDKdF
         i3qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="I/ZOMRfd";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id c23si268086pls.5.2021.08.17.23.14.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id bo18so2026277pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
X-Received: by 2002:a17:90b:1bc5:: with SMTP id oa5mr7694940pjb.170.1629267260592;
        Tue, 17 Aug 2021 23:14:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v20sm5270585pgi.39.2021.08.17.23.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:19 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"David S. Miller" <davem@davemloft.net>,
	Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
	David Ahern <dsahern@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 39/63] ipv6: Use memset_after() to zero rt6_info
Date: Tue, 17 Aug 2021 23:05:09 -0700
Message-Id: <20210818060533.3569517-40-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1045; h=from:subject; bh=Xphf8KZ59311q+SS41lPdZSHzYQuR48YTVr6kaXwlq8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMmSJWz3eXi3vB6HuJ8ZVOxVmfPJDOfgTngkXFJ Y1HtemeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJgAKCRCJcvTf3G3AJlNxD/ 9sppezWOBqAWwsgfxRdXp14+IggzlcV6Cmuy+3yoHyda/CdCTve1snqU/mJj9ikiLYc+kAugfad4F0 cTsFl+ID962FFCkUfX+wrf2rcqUBBFlgJb2t38JcXrnDO88rm3r76AL2Wma0ueNPmaH5WllhHC2rCK fXKPe24PYrG5OSOBDVj0fD/osVthtrCfm/J2MtX+UxWh2FPgLGPm8bIuPN1IO4o/bkmRAPRJf3kWdx OKIoFSgRnAQCFZAkoDmto4fssngysQ/8xlWWYJ9nL7hXj3ybM7i4Riea2vc7uMtQ/LdrD24dqEDmKe f3+J4WogRasAKWDsVi1LKZLojHKBb+ZlIs6kkWujZ6bqPTPjVxgKPF1SyrDNzFRofsvKIdmiaocbM8 7Mbap+xZuyeBTwmrqENziN5DQQZC7J8joprP3D5XEgjPSSfo10I0ZhuYGFkZImfW3drIF9MNa/UFwb K/jR9NhcwjBeArtPiUgjZ/eTrdZygthG5tuDwEvP65vF/0qwPA/rmr7iPNZkf43crxfhCRZxUf8LGs suQoBCZbvMkCKKlTKgtbFTehnkPqB2dleq9pZC86P1KKoE7a9I7zAFa0vwJ32McHUjN4QjWLWEnIo1 ySO6vVD3cBOQ7RlV165HYCseHGnNSRZD6wdVzFjMgZMzsSBDx6RZHTkAU6fQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="I/ZOMRfd";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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

Use memset_after() to clear everything after the dst_entry member of
struct rt6_info.

Cc: "David S. Miller" <davem@davemloft.net>
Cc: Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>
Cc: David Ahern <dsahern@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/ipv6/route.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/net/ipv6/route.c b/net/ipv6/route.c
index 6cf4bb89ca69..bd0ab3e436e7 100644
--- a/net/ipv6/route.c
+++ b/net/ipv6/route.c
@@ -327,9 +327,7 @@ static const struct rt6_info ip6_blk_hole_entry_template = {
 
 static void rt6_info_init(struct rt6_info *rt)
 {
-	struct dst_entry *dst = &rt->dst;
-
-	memset(dst + 1, 0, sizeof(*rt) - sizeof(*dst));
+	memset_after(rt, 0, dst);
 	INIT_LIST_HEAD(&rt->rt6i_uncached);
 }
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-40-keescook%40chromium.org.
