Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4XKQGEAMGQERNWGWRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C8B3D8086
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:06:59 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id r3-20020a17090a2e83b0290176dfc71333sf407579pjd.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:06:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420018; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vvxs6PyFI/CjM3sZJn2tFTaglB8qsHk0Dq2KiBxE3dDnAwWzLYsrMz2nQdE9b75z1i
         dlKZ9gNacJ3f3Z/dWx2K2oVaeAyR/BpIBenNZWBqPNO26cvPygK+YscM0IGudGqadvpQ
         qHvVMyuZdZPCotvjQcwgskH3P+P6DtvHqcRiGUMHUKbT24kckKAlQTDBr0HN+6qXWd1Z
         6ahc2HV75pAuCdMRUEe49xzxX0eZCuF3c2puKYeua2KyGS6sjzaVdjvfbjb4kok1Jyxs
         Fmokf9Mi0MaA7LEahuqsf6RHoooGdrZYpDTMOnMoyBQFE3whE+rgoMteWhnGlyE8eTpv
         4yIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Bu7ahmnkc1c+xig3NF/YjI+FdYN8Mw9RZCmftXlFHtA=;
        b=Q2YuYWKl+u1ahHz5UN1rUZF6uq2NNVY1DDG2Tby1s/Anxrny0vLt9wVeXTJS178D7J
         ZKkjBW990i3D0V8nLFXZwA2KY0pqmmuOTRtEVuTPlVKFSytCnxwpUTVo/HVpqx6bBvgk
         3+okL3rzE2/xsQ+StBlFOvS/F0pXFbfWOfNRSBrOuzl+hMwfWOPwcCY5bxE15nJKwlVs
         sJSNDgpsJzrbhbavXp7eTyaeJwjr7iA895CB8/DoRceSOsxZKkAAn/ijom3yqPyvizun
         2jxtmAVujJhuzXP7xSei5KQADWely8O4FJN9KFXGDdiPY65sSm9l05Ikd90fx1HlpPe3
         3Hhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SW72vFpy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bu7ahmnkc1c+xig3NF/YjI+FdYN8Mw9RZCmftXlFHtA=;
        b=TlJq/2SJP4kxJ9JdvHFjllj1JLCbIF1mWC0w3KzJsJgwK/tVMxsWMko+SfJCe6kJJK
         LmpmaZCJgfteIpQSgX0C3bVXnC13xjCkuGBjS1za283UtlXe/fW07W3hrXxJbdg2hBOT
         saGV6c183BbjIl81yQsHUWjLqB5Bi3DZeAuWVtMuAaU/gsgbN5uF3vgaphZ2kDL4htY7
         HPIdfpB6gWe5qywe5RqAW5OZZVFtpdGBBBd0Fc4H7aCQBoFhTEhB+PgqAM8imLtDykiN
         5X+Hb7z+PHcj77gvp12xpepXZ4lafFQ0fIQdOUl/QzD/Ec+P25djcFqC/zvrwRpIaxg0
         tM3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bu7ahmnkc1c+xig3NF/YjI+FdYN8Mw9RZCmftXlFHtA=;
        b=S1DwLsZAWqnOqZi1XZiD1/koM6PUqdFemddKuaVsBD8t0+irtHn8wP6+Bu7uG4m+D5
         ihJtXbZbE7hI8O/mBCAqRqJnUbM/NTTuYnb8fovavlb2JKUm8iKrrbjNhVgzCh9Cz21c
         KtDTzBHUvo8vEWSXYnKAldXfPLCjgaXYOiTw0AhsoUny665fPHrgVjeqRpAIIreAvQL+
         uSCyX6WKYz3aKnxjF2XUCxGcc6YrBYsZqf/ZORzuZvQLNdEsYmO3oizAGwhzuN0vfhrr
         v3HPuj66xCfukB6+IFMHvijWHwaHEuEsHXTUMqMoJtHF22GBxb1btJJRJJpCZxBqDgak
         y0ZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Yw8P1S7o8WMZ62WWnAVLkZjgVupgXWq7JNJdq5QwAYYDMrT1q
	UrWnxvXVfFVjsqurTM6BD/U=
X-Google-Smtp-Source: ABdhPJw3qF1ujbCPClGDFOGxjKpiW/64KB32tr0sYvKPQ/Zv+v+4lxBd4fUUmVC9/DRrXo+Jkpzjog==
X-Received: by 2002:aa7:9086:0:b029:39b:6377:17c1 with SMTP id i6-20020aa790860000b029039b637717c1mr9603838pfa.11.1627420018588;
        Tue, 27 Jul 2021 14:06:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:15c2:: with SMTP id o2ls9950744pfu.3.gmail; Tue, 27
 Jul 2021 14:06:58 -0700 (PDT)
X-Received: by 2002:a63:6e83:: with SMTP id j125mr24765987pgc.12.1627420018068;
        Tue, 27 Jul 2021 14:06:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420018; cv=none;
        d=google.com; s=arc-20160816;
        b=sSV577d4jMvrsiKHokhRj9KLACCWedZ6NfDsRRgnRCx3SMKKk3LSshJqHfG/uZWcO1
         LTBa2wiF0Gtl69HPRsvJR+WLneFJ6E5HARHt3CEM7qFaL/vkicFoHzOZuczANp1Sy9OF
         7Z76+TJ1KIXtGJHJZDNtQps4fN8ERl6HV0wUwrb4V+PNGgHmeYQCjk4yvZJ32e37bPOg
         w0DxosUvFkVF5elmjlTZyoJgltRB8JzG4ulJ6Fdk8R6PC6f33gVHkN2hLlnY1BXb7CSZ
         drflE+B1Ko6dfUYilKVO9oBY6Q+7SovTXzLh6oSfM4C1+o3UFm+jeUOiggnk1wtQGoVT
         edeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=p/9n5XlKkS6wfkCIPw1DbbDsmNaE09gzmWAUlzSJHk0=;
        b=cBQF0ZCk/UeMalqjw3kqIjBTnLXR2ClfFs5YEIDBAAXXTOWhvVGLBNPgS/b9Fsv31d
         6t70+uNLLGq3J3L785lFYP+joUpwXolikwONiI/xyLEY2ShH9MSXmLFD6w9tQ8ejnYbs
         DtTHWoVqtQJWB1UHVAXAfyVwO/ipTP1vWl/jiMIV6h+3ig+wukNT2d/wuCgaXz3cXyTH
         JN3VO8aGQQ1yMAqNll/bPYQ7qhqH4Nj4CokOR/75HZTsV4n5Nzfpfh8nlkqDJqzP0mDN
         /Jjk8bsDys0WEXdn5RPshQLr1M1sAhZ3o5IA22LLSn5GdpQ5w+int6nogKWip+zI9OX2
         htbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SW72vFpy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id b15si276663pfl.6.2021.07.27.14.06.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id mt6so1867287pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:58 -0700 (PDT)
X-Received: by 2002:a17:90a:12c7:: with SMTP id b7mr6026153pjg.205.1627420017868;
        Tue, 27 Jul 2021 14:06:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r18sm5038817pgk.54.2021.07.27.14.06.52
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
Subject: [PATCH 41/64] net: dccp: Use memset_after() for TP zeroing
Date: Tue, 27 Jul 2021 13:58:32 -0700
Message-Id: <20210727205855.411487-42-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=950; h=from:subject; bh=setFCuudESAmPvU7TENmlV2MS4FRl7JRml2jjTFJDIg=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOJKZ5loXhOKkjkBoj4absMkEGlM+ZkGAgDZtTY /isiJOGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziQAKCRCJcvTf3G3AJl2GEA CkmbILRtScVKazMb1tWpR5Wl/pQ4wUktuV62qIpYEEpFPkHrnESIQz1ChkzSepdcASTNc4T6oa0NP9 WsXo723hzRQElBcUpAdaEQZWe/aRzQgxz6NuJ0ucec44ap26fdlOUq5jkNdSul5xj992thaeMiUWHl M4YJzdgCpzk8OEKhzLzvrViKkK+IaPDmTMBwHh7u5gjX9tk2OqSPx/ZXot6tYvhFg6/Oy0vv+xHrlp iovAgyyLvDPGPpUEgGj2aKBFXc/d/xxdCSuI3b1elrnHoEBod1sM3BVLd8BTraljZmNAi7wrINJzHM eu2aKaVwpvUJwWQr2BuBBRGeV74y1K8w+/Tvp0fufvz6558D1uGi5jCrDj5V4/Nj5+HrvI6IbWlYbY NSCPJB6kzUX1DRdtcu/6/wMtBFe02I7zLytHfwOcQVNqWqm6EA+YewjYVECp7lCvhT+po+Tp2LcZA6 YKyyOzP6+CTDLOyriNbgoebelLFhlWWOSb9rZGEBhs9FxI4qFJJAxmatGkCcUH0MYAz6v5PPfjvR86 yjrrxYWYwC6cjmhctqIhpAdMEd0GZec2ed3KYFABa9OyGSC8Ezex48JITcr9RBnKCdqux3UCJodziE nhi84Hw40jD0Ho9czi4juaFwDxA2xtuq+zKB1K159GTFsJfOh3CFAYS1xoow==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SW72vFpy;       spf=pass
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Use memset_after() so memset() doesn't get confused about writing
beyond the destination member that is intended to be the starting point
of zeroing through the end of the struct.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/dccp/trace.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/net/dccp/trace.h b/net/dccp/trace.h
index 5062421beee9..3c2594da49fc 100644
--- a/net/dccp/trace.h
+++ b/net/dccp/trace.h
@@ -60,9 +60,7 @@ TRACE_EVENT(dccp_probe,
 			__entry->tx_t_ipi = hc->tx_t_ipi;
 		} else {
 			__entry->tx_s = 0;
-			memset(&__entry->tx_rtt, 0, (void *)&__entry->tx_t_ipi -
-			       (void *)&__entry->tx_rtt +
-			       sizeof(__entry->tx_t_ipi));
+			memset_after(__entry, 0, tx_s);
 		}
 	),
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-42-keescook%40chromium.org.
