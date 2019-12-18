Return-Path: <clang-built-linux+bncBCQYFH77QIORBNGO5HXQKGQEKLMYFPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-f192.google.com (mail-il1-f192.google.com [209.85.166.192])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E92B124FB1
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 18:51:49 +0100 (CET)
Received: by mail-il1-f192.google.com with SMTP id n79sf2373782ilh.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 09:51:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576691508; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTQkFfZzZWDdxRDbBG+TSStalnSa5WsKr1ohDUEui2T+9OczVtchIc0qmY3GCDUykS
         mP1FbDM2IRH8hrF7UrcoLXhbkcZTpd3dW3eM46osIrU229KFbblngH/SPeMjq8xRquzc
         z4K/ulnZ/LLGGpuFjOfkhyhVCL8Xv4D0NdIwqGLUP6jiTbzh8Qj4iXj9ht0WwJqphi22
         +x8f2BxG2buRm5M7pfYGjMbi7yWDlONP2Gz6/6Lx9RsuFils0mUaaVQCSsLg1USEdJth
         Fko2hA/ovkw9Un1VaQwcCC6oXO37dR7E1XxtGr91QsOGcc6s4HsAj5beB9GdEcaOE6nh
         C/Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=IvM/rHUO4pVmByk/EdQDffJxTbVgo8VFkA1y6G2DDsI=;
        b=KgoK/m+6V70KfYT9eqqL0NzDwZlgcaaM+iw1kNhePYNJ1mLue1Kisn5cjz4aDiu3fJ
         tlVvPF8CMf+uAu1JFSmZGjb2g2KKC4+EByMLJRtoPtHNmZZ2XeH9Vjtf2RlSmukSO0Ep
         Tt8VzbmIBnedn+FNDSOVIKlUaqcBq8irGR6+6/VV9RiMZIFgcp53f/moeQ+vXERxL59E
         PprCY/+Td02B3lclXDCoMVCAdkOvMHQ5GQ4EtgcCVfIpPP2d2pO8rmWw34WZU6EyHKRs
         fV2n4HaGpxLrxOzirwC8hDw58yU6tJskt797xF/61AXMquUSQG67a4PLY91gf2L/STfk
         6BXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=tq2U8uPM;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IvM/rHUO4pVmByk/EdQDffJxTbVgo8VFkA1y6G2DDsI=;
        b=bwVpA3evFLbtYfdkBTn5moVV5GaGg9F7OybT3bYTxk5DxjxEYPI5e9KbNtPfyC2O/m
         1N7Oed2KUIQWvTXDhdNwUwvhLIyiBsAv3jzCJUvCtrC9P+jKyFJBTsuvCo2EkcHXznxI
         H1ET07Ms1WTEziBMtcDJrjgihURoMt5kJkZavSsFuNTBIhQ0WICDa3ib8njaGfKF5z7Z
         FxCI9WNbc9v+0ffiApZp/2R8/IDA6VN2maPEhHBdefEw7YcLQM/1G2xS90wGuVMXlNhB
         d1RZwhD7jRVYnImWZ2NHkG5G1cSWxYTQOb4o34v9oCtXVzxsdhKGnKysX5IZqF8l8WZ0
         kuHg==
X-Gm-Message-State: APjAAAWqNQ2+5XvcZ+sXrC1PdfleNX+PITD/Z/gG5Ug2zGaGBihzqvJn
	cI0wOlQQL1n/1aHGjm/moBQ=
X-Google-Smtp-Source: APXvYqzQs5btoeqVehAH3vD/yiCrnGz2EqHMkiPitkoJqpTR0+j6E47up6wlaVSMevO/bkdNogbCwQ==
X-Received: by 2002:a02:7310:: with SMTP id y16mr3416909jab.133.1576691508139;
        Wed, 18 Dec 2019 09:51:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ba5b:: with SMTP id o88ls453083ili.2.gmail; Wed, 18 Dec
 2019 09:51:47 -0800 (PST)
X-Received: by 2002:a92:874e:: with SMTP id d14mr2896223ilm.125.1576691507808;
        Wed, 18 Dec 2019 09:51:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576691507; cv=none;
        d=google.com; s=arc-20160816;
        b=tX3vbBO4VNGsiD5MLtKbecC3Yi8jI7Bewvep9kgmUgiYafoMGpv44nZLzn2F5CcU/e
         8JJU/w65bmlAtY/5UZzy8Ql55UOoWD8hyNhDOKMx1OcWnjxSRuh+/H3fXTeM3fhnFbZQ
         RCssiZpMDxcfW7ywfVhFt7dA2Pi1u5dwte8seFbLX6KLsqyWa+mwps1+bEXQFV0dYCev
         eij1Jr2ln7B9KB8FxGtGfQGBNRV41+1Ww956YSpAmsXgY8y3+U+s0ahNbOLFDd8+xnHc
         K/+FcU6YzFL6IBlrTBemfFExLncySciJdsT60zOMvUat9DaRChkJp07EpxwCE9BnQBWL
         hkOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=qcFf0FyU4x5oudbQGnj/R9wZVmZ932V5KGDb3JkKqk8=;
        b=EH7GPKjwlKLbJOHh3N0eTpXanCP9Ve/foRo8VfCHjdHfDZOM3JUmkB0yPca/seoHTE
         D24cldCav0HYqGuuCZnCG79ltEdHfVIwLIm/fpYQq6lMtBOxjQSeNt14zjhLbENljDb4
         GnkG6lzzmzUpG07+MtZt49ZX7JOOMWnYua0ZZJg3otzvp1rP/EAmlBHz/WP+BrQCVLTM
         J1Gs6LSj32dqBu90WnEh6DxCoFV4QMOQl2KJ8VgI4579BJGEqKpmf8j6rZkM7c39SeEX
         p5ZV8Jk3DW8V7j9tQvNfBVDQKd11rNxazLQP2U/bui0xgGGVo+Oe3yuxkItQaDHi8d2i
         GeDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=tq2U8uPM;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail26.static.mailgun.info (mail26.static.mailgun.info. [104.130.122.26])
        by gmr-mx.google.com with UTF8SMTPS id g12si106828iok.4.2019.12.18.09.51.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2019 09:51:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) client-ip=104.130.122.26;
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfa6732.7fb722079490-smtp-out-n02;
 Wed, 18 Dec 2019 17:51:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 9A95DC447A3; Wed, 18 Dec 2019 17:51:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
	MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 87E3DC43383;
	Wed, 18 Dec 2019 17:51:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 87E3DC43383
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] ath11k: Remove unnecessary enum scan_priority
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191211192252.35024-1-natechancellor@gmail.com>
References: <20191211192252.35024-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: ath11k@lists.infradead.org, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191218175145.9A95DC447A3@smtp.codeaurora.org>
Date: Wed, 18 Dec 2019 17:51:45 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=tq2U8uPM;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Nathan Chancellor <natechancellor@gmail.com> wrote:

> Clang warns:
> 
> drivers/net/wireless/ath/ath11k/wmi.c:1827:23: warning: implicit
> conversion from enumeration type 'enum wmi_scan_priority' to different
> enumeration type 'enum scan_priority' [-Wenum-conversion]
>         arg->scan_priority = WMI_SCAN_PRIORITY_LOW;
>                            ~ ^~~~~~~~~~~~~~~~~~~~~
> 1 warning generated.
> 
> wmi_scan_priority and scan_priority have the same values but the wmi one
> has WMI prefixed to the names. Since that enum is already being used,
> get rid of scan_priority and switch its one use to wmi_scan_priority to
> fix this warning.
> 
> Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
> Link: https://github.com/ClangBuiltLinux/linux/issues/808
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

509421acab69 ath11k: Remove unnecessary enum scan_priority

-- 
https://patchwork.kernel.org/patch/11286141/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218175145.9A95DC447A3%40smtp.codeaurora.org.
