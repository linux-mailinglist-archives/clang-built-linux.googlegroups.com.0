Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDVK4GEAMGQEYPFJEXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F31D3EC608
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 01:43:11 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id a62-20020a254d410000b0290592f360b0ccsf12896473ybb.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 16:43:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628984590; cv=pass;
        d=google.com; s=arc-20160816;
        b=sne3iPkFUE7EmMe4af7/7VvnoI8d5OZ0v/6313qtS2mpLdScMHgucw8d65wvO3pfyO
         PnPqWH8YOPOkxHss2Rkqgf1VcwJqxFILxj4oiq4BuE5Nf6WATbti6ZU+tinTVbnYfsyx
         dXk0Ez6uGKcidMduNOKgXlJEYq8Lh+1lZXeEACCycJtKixI54tXACQYYP+aEHCaAfgoJ
         EMoJvZJ5qsqoBqUCgmFlddfSakiP7a6pVuekifwfNyG+Lh8sGBlkfchyXyOVS+N9amaH
         NpEMPCeYBrWTN5+vsyt3eS3drbx/C1lihdRgzwyTxhzny9vlWhan8cS3IABAfN51qaUL
         dX1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=LeFBinzOlg+eOwDwSLpsGnG+6ECYm6oDFreWuxSm6x8=;
        b=rXE1ay2wzZbEtCFAIAfpgklOSV0fYvm9Xjgv2hUmpqBUpFYMtCSatZvVYHfkXxqqtJ
         4TwJwzUJ2g76Fk2rabeLJNl0GtFpGCdqs1zrl9LkyacvM2wafhcVE1V0jrW5wyJqhE5S
         /4zx68usAg5OqHS418ZOag5eLEosIVGIuP/qDQPO7m9odm8I4ci4Ff604AlU6/pJaD+8
         3m0Z+wqNeoPPm9hJmzqUiuTpkg1fIrjfgSuAlfAS3WU2aLPaY0yddWx4PA9xbVD901fC
         D0LQuzHMm9cZmlGH0kewfC+/rZzY0Mbqh6vlqcZ3mR2z2dy1ApnTm1nuZeYt0YikWcvY
         CG7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="NTmxIQK/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LeFBinzOlg+eOwDwSLpsGnG+6ECYm6oDFreWuxSm6x8=;
        b=IACYlwKdVZ+/jPIzugUS5ZE12DrgLvBfr6NnTezv/9rc4SBhYA+5+BEB4USYcTxj/G
         ltsY6udlE0FkfCjlOV4D4Vu7ddlT8pq7KQFKmt7L/xo1pPP3h3DPVjvfgjnL8u+8Xmjd
         47fasoX12zaVneIjT8DnjevfrooOjyU+vZIYAPjI6ZCTRATTvxdKMV302VfoiOtALvOW
         omHxQsMjefXKRjyMA/TaXLKWL0YrhuZJ6tZjILD3lbkgqRkTTO30JVsK1/q4ePJNjw4W
         /622SmG8GFwuPahKswP438YGDRVlPJeFbDvatzm1sea7hJJjOf6ZHjux+Mlvz6SDfly2
         ssrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LeFBinzOlg+eOwDwSLpsGnG+6ECYm6oDFreWuxSm6x8=;
        b=retvivOJUB7p+VXyrfpBZlUbrIOAWydE4sH1g8EclaBSRayo5gLQNHVbDSnLXMvojR
         wLKslCoUQ28OWsH+sIkQcuKBl/CUa3KGLx/pYsTn5Q5LG7PrQl3TbXm18aFNZ1V80RDx
         5cRq4IDbZdepolnurLxsl6YsUCpRx3MNsTFBpZ423HwR6ccmrFUkhacJdEmYdkGdNFL5
         IodeagcOiFZsUO3+rU544OgeAmjyjCAb+gt9shQ05odRpWl9w9iyuFW3QYD81iU+YeQ7
         vP7C+3aQ7+tMGyEEY2PelJxH6lMxQOS4fEEdIFjZC/2Oq8gDxB6ZlQFdmNe9cGemFU49
         qiDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Bdg508iOPyBDuWMnWJVF4dQKmEp83m3cr5IFOdZG1tx2IuU+4
	abHbqT5w/vlf7/UI7K/CkyM=
X-Google-Smtp-Source: ABdhPJx6fpZi9aSF8Redoni20YagrJ7aOIRmA5NAM6xF6BDu1pFF8rV1yb+jrNCKJqgF1JT3VxLsAg==
X-Received: by 2002:a25:1e04:: with SMTP id e4mr12132219ybe.115.1628984590279;
        Sat, 14 Aug 2021 16:43:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls1715583ybc.2.gmail; Sat, 14
 Aug 2021 16:43:09 -0700 (PDT)
X-Received: by 2002:a25:1fc5:: with SMTP id f188mr11843651ybf.375.1628984589826;
        Sat, 14 Aug 2021 16:43:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628984589; cv=none;
        d=google.com; s=arc-20160816;
        b=aSeo9yWp/MNYOCIzbs/GQBmEhgj+p7BiBfeiPHDwGqpTpemXPAaYS70GzgO2uAk/1j
         6cRXPCedGSuP6QBxJZIO4l9IyYkaAoRys4JT15z3Mpnos3yiNKOODYLyE/9Qk6n8YX3Q
         yipmON1+F3ZZvuf1Hu9XiRlGIos39qAYwbb7Z2HB7xKX0DDpkW+6bXCpWnbTWL3BCIaP
         08S/a9KrzymQUvUKgXblQH05GoIFjgvnwB/h6MDd/Dy9Scic+EWSp8+OIcVEQRe9sKbe
         FdJNP4uEDq18b3g5w/dSSK/XaMFveNdpNKvEcfv3YC3swPQ3jSH+TBV415OG5fL9OuGi
         KVPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZcmpCYQkUsabV50sH14OE+nrfXbutdIrITg33w/ntug=;
        b=f6kxVifyBvhas3FjZ2rdZyCVRD29yqwZEE8dmf+fHEXN+ve4wLcXVBIdoJs9s7MIEz
         Oscf7XZAUSm6yLgHZ82MOSOwPsTyPxOf5W8QNt4qFFU8NqZKyfahnrUBxol/vxsI0YyG
         7FhMifNzkoBxG6IYL1lBp2xeaj9tzySomRA4b7AXUNXTLqk7jUiy8hLdgjcNdbqBOSl6
         7Vl4OLiu4Bp56E02a/t3o+K/kPdsJyRAxBGqNCNk3UYQ9f8Q7AZl1S7RwF+EtrYoJaFl
         L5AcdeDhyvYFY8ws4vxMjHCdklv6VyPMCsnv6TgyrESmRTXZi1n5DUuPncTOJw3QGsUc
         CXfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="NTmxIQK/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x7si200937ybf.3.2021.08.14.16.43.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 16:43:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 444C560F48;
	Sat, 14 Aug 2021 23:43:07 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: Kalle Valo <kvalo@codeaurora.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] iwlwifi: mvm: Fix bitwise vs logical operator in iwl_mvm_scan_fits()
Date: Sat, 14 Aug 2021 16:42:48 -0700
Message-Id: <20210814234248.1755703-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="NTmxIQK/";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

drivers/net/wireless/intel/iwlwifi/mvm/scan.c:835:3: warning: bitwise
and of boolean expressions; did you mean logical and?
[-Wbool-operation-and]
                (n_channels <= mvm->fw->ucode_capa.n_scan_channels) &
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                                    &&
1 warning generated.

Replace the bitwise AND with a logical one to solve the warning, which
is clearly what was intended.

Fixes: 999d2568ee0c ("iwlwifi: mvm: combine scan size checks into a common function")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/net/wireless/intel/iwlwifi/mvm/scan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/intel/iwlwifi/mvm/scan.c b/drivers/net/wireless/intel/iwlwifi/mvm/scan.c
index 0368b7101222..494379fc9224 100644
--- a/drivers/net/wireless/intel/iwlwifi/mvm/scan.c
+++ b/drivers/net/wireless/intel/iwlwifi/mvm/scan.c
@@ -832,7 +832,7 @@ static inline bool iwl_mvm_scan_fits(struct iwl_mvm *mvm, int n_ssids,
 				     int n_channels)
 {
 	return ((n_ssids <= PROBE_OPTION_MAX) &&
-		(n_channels <= mvm->fw->ucode_capa.n_scan_channels) &
+		(n_channels <= mvm->fw->ucode_capa.n_scan_channels) &&
 		(ies->common_ie_len +
 		 ies->len[NL80211_BAND_2GHZ] +
 		 ies->len[NL80211_BAND_5GHZ] <=

base-commit: ba31f97d43be41ca99ab72a6131d7c226306865f
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210814234248.1755703-1-nathan%40kernel.org.
