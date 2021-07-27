Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGXHQGEAMGQEWCCJWRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E813D7FA3
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:08 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id w3-20020a0566020343b02905393057ad92sf143120iou.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419547; cv=pass;
        d=google.com; s=arc-20160816;
        b=j5lyMAaK5B5NmlhZ7UBftz5JK+NOrcIsJL+OJhoLgL8pueiFKGAoFi8u+kpTfmu5iA
         /VUI7/wPHUnHVKIkOZDPm0RngDatQXxUtCO4N3pMi/VccvYO5S3dgYfT5MzyYvHKXp7m
         rp//ypqo8QqKLPlb2NsmJkBGB3jvIwEegwIBJKd7QXD6io7cT2lDWOR3CryUdQIJRT2u
         NNS5uUmKHWtiaD+BEcaohglzUy1hhcNPZVwk5myOJ9xKYo3uBay4f3JT3RZk+oTu0GTT
         gkCtUdsFxyedPULL4Ya+FTL0qWd9hkJcLGaCdFc+4lWHPcrj9DxyDqp3D/CTCJ0pPerh
         YPxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=x3cVeXPw2gPSbqSpKcDZf0xmeRLAvDOykCBnBhd2nj4=;
        b=NKGDY5tIvFPav70CEBV6hzb2nE4lCQNsLeWWIe0T4vBoskTvh7HpO5czWa2pyGIRcC
         vay4hx6IqGZqIR56FyidQUn1iuyUuNCPZcGwZK19RUJVdH97U5YSHVLmN+KRYwtlEMpM
         PqZM6HSqiPMfz8P2YlSpaHOlhrn9ObqTsUYpspeZmOZ6+pOLsOYYobwbHqzszx+CvsqJ
         XTBvxZUQkl0r0r1aSdemMks6wXNEOnPw7Ntsm+pHsHL4D+K9pudlOekNaBVITLnm1u+l
         0TFJ9gqoHY7Gjnhkn/WUXJyWgam40k/hgWOsaqItjHfRX8ZojNhTU+TKLIio0GknTiW/
         y4Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UXpVpHuo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x3cVeXPw2gPSbqSpKcDZf0xmeRLAvDOykCBnBhd2nj4=;
        b=MRJ3MGaYEjVa/YxOSP2w+B6q9amu9saNxxySIG+h6hKaDmJLswbg3gPLUn/WDDbolV
         V/nKd0n8EaL7x1ApXjrEWkkJmk9Gz3r/+MVME1aQ97gUO4FIFFrUzUbT3t5wq17BpbiF
         rn4CSyrwwGB6lDXw6aQRnHJLMw9mTPNebZqDHLiOIIceVcnGuUsgfo3n7pKx4nzx+wCw
         sor8Lk472DsCgBu1MPCiaQszv+mAgx37oIdhttxhkpwkgV3PS/0lxvFvKop7Ydp9YoBv
         u6br4mHx0Cq8fOzyvuydOXv9zXbu98VvCil549IbfBxxJtxw/yLDyMpmepECJhxhJO1g
         QuwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x3cVeXPw2gPSbqSpKcDZf0xmeRLAvDOykCBnBhd2nj4=;
        b=OliP/z8sNydsgwI30GRQ8I9sred81Oof7mYzIdIU1pNL3Bk9OJV+eRqI30fPgHCw96
         DOgEsORBcyFolODP7c4GFtgz/G91QV13Kf4e3Z6wTpucXx5KT5tvURlsNyIoumgZFVbV
         9WXFRBKFq9quYzm2MvmRf5Jzu4nufIquYj8AecyFZN1tu8ETLmmaU8vgi6bwVCLPL1UF
         V/eGPF9yxTpAfem60WXXbE3I8TJBfHf2jxzOqG0k8o1wCopjmiJz+3mSFsiGb8SnH0lS
         dqPDDiLVMRGN6OdEMYLlQgz6zeOjZQdy8flCb43OYw9LYxn0++Xn/2fKMENsTnOa14Mt
         H6Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TYprAgg3HD5oBZ8LK6aMttewPRWfrN2snrXtPPCqMSvjdkG/O
	/3fYOwkVUM4yOs8My3ip6Fg=
X-Google-Smtp-Source: ABdhPJwCDgFl5DnwM9+A4y+5hV/vnG2LePZxKN4goDenz3KtWhfQayImWfYtJ2sFuEfcKQ16F9CExQ==
X-Received: by 2002:a5d:87cc:: with SMTP id q12mr20540814ios.131.1627419546845;
        Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1bac:: with SMTP id n12ls390145ili.4.gmail; Tue, 27
 Jul 2021 13:59:06 -0700 (PDT)
X-Received: by 2002:a92:d210:: with SMTP id y16mr18716008ily.295.1627419546495;
        Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419546; cv=none;
        d=google.com; s=arc-20160816;
        b=hcD76hoxahXxIljB+PXTeAW6WRDVtk+W580PKCdndmb+TRVfkovhJk5mVHEYjGPp3L
         2UauDMIdtpfkesvR6ffkSO/2ZhoIAa34dW8n8xn1DCpic/Btvl0wHpqAwY1gUop+gtrL
         /MyQJ4LyDvCvwpChsS3JH+4w+Fmm+JOmFYdjz3R7b424gxGBk7FIn5YuTP/SLdEC88ai
         rD923xon9BUmIrtzZxgdsaQNVRFkcUiiDeesJ47nSlLy+GYyhkamry6BD55AAOkrqffw
         3gKPBvEgNVHfBs6bt9/rn6Px11d7QZGYBhTEDLOXKjsKb1x7LSNRh3vSCkCtDe9HP0qD
         IYlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uPW4aGYkFWagrfBZ6kQLS1fLAo/l3YI0HfE68pjP/OM=;
        b=s0EY7diVdcivHxrBJrGUiDRAtSofYkfxKjP8x2pL6787UkEqSvDHbEUUty9XpGOCIi
         fF0hOf+Vdg/Hq35+muV3+A2mwZ2cEUesHd2eBW5oSNaLupAyVOtVUcsMSnm7NMnwYLrw
         0bRoVF/uTruNWpVGTWVl7CNLRG7otJHnVoqFbGDKG39bZ8XO/ENJHWl37FA7LpWffqnb
         L4ISkIHom9d3WeK+KV8XWv1n1ddi5QpaWvukKWxT1PHr7LxzBhNUz4Ti4FUS5pLTgcGz
         16YKHVxldgRPbYJF6CPRUygxGRAN4sz4HcJi80OHviyCue1a30zK0v69ynFy1671KBz+
         2BPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UXpVpHuo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id q12si362287iog.2.2021.07.27.13.59.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id u9-20020a17090a1f09b029017554809f35so6564392pja.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
X-Received: by 2002:a17:902:7001:b029:12c:4e36:52c5 with SMTP id y1-20020a1709027001b029012c4e3652c5mr2732432plk.9.1627419546233;
        Tue, 27 Jul 2021 13:59:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v5sm5184284pgi.74.2021.07.27.13.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:05 -0700 (PDT)
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
Subject: [PATCH 09/64] staging: rtl8723bs: Avoid field-overflowing memcpy()
Date: Tue, 27 Jul 2021 13:58:00 -0700
Message-Id: <20210727205855.411487-10-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1200; h=from:subject; bh=W255D43HxOgsOipc15Ftl/Z16nQ7WLNF6zRAweGW0nw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOC1QFEAUDqn9/LsmpdJgx+v9gsLtlsJdMUyKBG b+56mhyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzggAKCRCJcvTf3G3AJltAEA CFqUNvIguNTsoQJJxTpZmXIFSznOd0DQbsxxZjiiSI+Uy5K/rxgo0fi7YbevEnqZLbfvmzTrflUtnP vrxikp6Nm3oUKk87MfWKm55/Rb4UNEtRFkq6lpU13Pff2ZKiGagsWulzzRcChGxOWGJLkQgutmZo19 4lL+NXsl53eQK+fKsQUzoeZnXWEXR6fi9Prc46Jpll0wb0XU9OCffbFczCNAJ2TFktSN97z0OLhGOj bKetL0pmjEsXBBLKFBsoi6qrkGdaWIt+UYNqj6GyUTxl9aSKASroGp7CnPxFzGw8860bLtdeVytJpH M6VWwhSrRFnJ9E/kNVoT3886OMGv2hE1L1SgpE4EDWKKIk8OhjNP+fc2jAdhvOv3toFl4XiMe5rVbd XdqTBfQvqWFw1vAelUGVpKbstixGrSv0cEqG97X0qoVoqij+34qbecwOpBc2j8/gQp9d6gdqWiC7QO HVaCe91yWXyU7FvAW8qYQnHiPqborIACdGPPaCnRpJozv/LSuBdXrN/zfRcuHrOFb+yI1mNplJICgl WgxTNn036UBtlbh0Wb2bxTvaLshJR8pghfrGo4l7FN0LRxsxCkn4g9ZFd/8BPya8EYm72GRg/jZPRV IgZEiVdWLN8MdZlNcQ/Udi70s66J8qKfCm/KsWRSEfFjdnJHu0Fgu1w04aGQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UXpVpHuo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Adjust memcpy() destination to be the named structure itself, rather than
the first member, allowing memcpy() to correctly reason about the size.

"objdump -d" shows no object code changes.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index a0c19253095d..fbd6e3d16323 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2390,7 +2390,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 	}
 
 	/* fill default supported_mcs_set */
-	memcpy(ht_capie.mcs.rx_mask, pmlmeext->default_supported_mcs_set, 16);
+	memcpy(&ht_capie.mcs, pmlmeext->default_supported_mcs_set, 16);
 
 	/* update default supported_mcs_set */
 	rtw_hal_get_hwreg(padapter, HW_VAR_RF_TYPE, (u8 *)(&rf_type));
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-10-keescook%40chromium.org.
