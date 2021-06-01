Return-Path: <clang-built-linux+bncBDDZ5LVW4IHBBSMP3CCQMGQEXTZHL4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 163FB397106
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 12:11:22 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id 19-20020a05600c2313b0290193637766d9sf932952wmo.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 03:11:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622542281; cv=pass;
        d=google.com; s=arc-20160816;
        b=iIgideCi/PScfj6NqUtQ0CN8v7DPcUellHhm9tigL69zR5bVlpqQi/R1LXmP7fQjpN
         qP8tdWDAjAOYgCTHTLzW5MBVFtHmSmKyR1+0kA7zdR/pdfgByvTDhMenHnCpkMdvAThs
         hO3wfhLLRyd/MmyChxZQt0q7mcfYmK1Z2K468A5yNMWwn+Lp6+RmQwNqwHAhUm7kfKVf
         RfwTJnINA/PghHpSxdm9ejtcKjCigWAKR2XM/FIWlG4LTxt2HqFX+wpOPgVNnmIWeQut
         HBkwn7mEsuW4ox7TVPKiph2XgzvGSCR3cAqvuonUKb/i4UXnSY0KY0/Mb2Bf/kvJfVvV
         exvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=3qK3NDCGG10cUi4rbCKLRcLHPgdLD4GBfXjPoV9Lw4Q=;
        b=zdX5dCrqT6AagrtTSiMie0OOF8M1pDx4pH8x/HZ4gG/pIoo5DZCpxjIOVG7bvK2WX8
         pxMP03l6nM61dalV1CmgIvnq6zTep/b7Jm4G3yyNWmQDiCuYX9C9iVKcpF3PVaOQzeyp
         ROMFIwI3Dfy1y2Xr50tzUgjlqsBlm5bEnF/T5OGy7y11slflfcVboQwsFXSP8y+sGcc7
         mSj3e5DTjye80lsTba5/PBQBDJRbw0R+Z3qOFan7jCcdTqU/Ugem9TEfJ2WwYXUYz0F8
         ujQR2YxOABT31bXKSTiauzDNLn/xqrAW7LMrxNB7SC6Ayv8SLeZ7YFwgOS//RTs2SjAd
         1NaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3qK3NDCGG10cUi4rbCKLRcLHPgdLD4GBfXjPoV9Lw4Q=;
        b=GlSusD2wh1lTb7jWaRP3DTUTQirEdPSmIp/9UjsciOu0xg/VDXepGsaarxzw9cw3TQ
         tCTYLw/o8FDRD1XqbvVf4jX9r6/1y27lGj6cPYM3Ecll1I5z41QZKzjRKpeeVlkXwT53
         UamCYIYKhIQXS30sY6OPIKE9Re4VHs9t5QKKUZo31cYlfRTozacGkjrfph9l4NFxxfN8
         xfiWYO9ytSAoyQdviaaXYqZDCTCq3f3OXno5XGpR8P0jlSlN6Rf3CBXd4G+UWtwwNYSp
         N8Qe22oQUZctWvqSH63j67ccK1eWLwBBCgrgMlxRhIEy0ZLzw5+rK+A4LW0epPBory5q
         6nXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3qK3NDCGG10cUi4rbCKLRcLHPgdLD4GBfXjPoV9Lw4Q=;
        b=lln9CHsn7CaD3lcCnFoiF6ZvC1dvo5JhjXTZyEnJ4XS4hwUxMtVPcEYe2uK2d2tmDr
         OrpzTTlsQbvuLtUAr5qPSURNKaLO0LLYy2b03aWql251RA8ynTVpyotJ6qmKQo7SmwVY
         lY9wg5ISgCfjsoJ+67WUY/UMqR4jxwgM58Hz8WKA/9a/vdUZjdpaP5urhp3kQ5T1U664
         qHhwq78hSy/8cie8w9vZ+aR8s3Aasvzx4Sd8IqrDmAL+64Fb6p15PM3+FNMg0V84M2AL
         kCyExvBEabVLWFGTtEWEuQcwOoFS7ylnIBkmJaP51YTxMvYVOB+DWKTVALVlt/RmlfQv
         tc/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tuh7nN6FJi+0TEzvObADXaiAFOmF9cat9JsznTHquVu8/LPcs
	osc+ywvfQPN1x5IiD+tJPIc=
X-Google-Smtp-Source: ABdhPJyGBxUERXrZ3y3WBvnH6ZMeSFiVDdQt+kQPkvBI64GcjCUkfDfrfQuVMmQiSh5Dfw+yVrBJpA==
X-Received: by 2002:adf:d841:: with SMTP id k1mr20179226wrl.193.1622542281871;
        Tue, 01 Jun 2021 03:11:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6dae:: with SMTP id u14ls1103588wrs.3.gmail; Tue, 01 Jun
 2021 03:11:21 -0700 (PDT)
X-Received: by 2002:a5d:6747:: with SMTP id l7mr9575658wrw.220.1622542280982;
        Tue, 01 Jun 2021 03:11:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622542280; cv=none;
        d=google.com; s=arc-20160816;
        b=c/vHdL9kS9aKkQ1bNetkhTjr1EJEN1dOImgGYPxpN0UK5ABRcz3Dbdvr8n9K7Fhy/k
         3ffDlhAy8M2DW9TtPZ6jxAjdCd6/Vc/+BsX8zjvK/8YyaQGZBExtK69C8ycNdPVUSYGR
         gtr4VW0ZQOkQ3g63noD5elKNFd3FV26FmKHFgHMDHznXF0Ap0U/A95vu+ojNc757EaRe
         aQygZ+cte3auJkfEyXwrMcEnaIyjuADkZpe+GKSdQNcc6+UbTLywPBVVL/XV5v0ukCSn
         Jgqpeebqjl6JFptzUcSR2zWQUywEQbkprt3GBlxZJ415nuzLL9PkxZCsDG9Rv06sbVIN
         FdWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=qKI7EcbsXTHO2QTIMScd8fUBWjbGKBIAk+4ExxlIwok=;
        b=bRGayPtq6g24eI351fTuIRu3dbQP6HcrGZdv/UyZZxwYDp6grkcE3mb64lCGzitcV+
         SHC68W4z1d4trNUmYdY4uRTWoxfHqs/IMURGZs8ci3JyEeQTaj6ZM9q+804fgKTScA8H
         xmIv/FYuG+IyxGzARGxfVOKHd+oqEruES3hfTdKBMtt1mdMOC4Je54UObXEF1x37MNju
         9ViJ9uEauUbZqb925S28QJ77aUaq9+uOelkD+1x6SwoYygQQUKU0QHYq+Fer5SNVmLId
         dBLQbdvOAUmUUOHCI1HNi0YTF1TqXDrAm6Qt5nhf0mkgU/pF7jlQWLBV7rhBZYgnejIh
         UB2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id c4si104596wri.3.2021.06.01.03.11.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jun 2021 03:11:20 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from mail-wr1-f69.google.com ([209.85.221.69])
	by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <krzysztof.kozlowski@canonical.com>)
	id 1lo1Mm-0006fp-Dc
	for clang-built-linux@googlegroups.com; Tue, 01 Jun 2021 10:11:20 +0000
Received: by mail-wr1-f69.google.com with SMTP id x9-20020adfffc90000b02901178add5f60so632951wrs.5
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 03:11:20 -0700 (PDT)
X-Received: by 2002:adf:f5c9:: with SMTP id k9mr8718701wrp.180.1622542279880;
        Tue, 01 Jun 2021 03:11:19 -0700 (PDT)
X-Received: by 2002:adf:f5c9:: with SMTP id k9mr8718687wrp.180.1622542279772;
        Tue, 01 Jun 2021 03:11:19 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-185-9.adslplus.ch. [188.155.185.9])
        by smtp.gmail.com with ESMTPSA id 30sm2746863wrl.37.2021.06.01.03.11.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 03:11:19 -0700 (PDT)
Subject: Re: [PATCH] NFC: nci: Remove redundant assignment to len
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, linux-nfc@lists.01.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <1622540990-102660-1-git-send-email-yang.lee@linux.alibaba.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <bbe532a0-95d4-bdc8-2caf-dba8ecf4ecda@canonical.com>
Date: Tue, 1 Jun 2021 12:11:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <1622540990-102660-1-git-send-email-yang.lee@linux.alibaba.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: krzysztof.kozlowski@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of krzysztof.kozlowski@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=krzysztof.kozlowski@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On 01/06/2021 11:49, Yang Li wrote:
> Variable 'len' is set to conn_info->max_pkt_payload_len but this
> value is never read as it is overwritten with a new value later on,
> hence it is a redundant assignment and can be removed.
> 
> Clean up the following clang-analyzer warning:
> 
> net/nfc/nci/hci.c:164:3: warning: Value stored to 'len' is never read
> [clang-analyzer-deadcode.DeadStores]
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  net/nfc/nci/hci.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/net/nfc/nci/hci.c b/net/nfc/nci/hci.c
> index 9686514..d6732e5 100644
> --- a/net/nfc/nci/hci.c
> +++ b/net/nfc/nci/hci.c
> @@ -161,8 +161,6 @@ static int nci_hci_send_data(struct nci_dev *ndev, u8 pipe,
>  	*(u8 *)skb_push(skb, 1) = data_type;
>  
>  	do {
> -		len = conn_info->max_pkt_payload_len;
> -
>  		/* If last packet add NCI_HFP_NO_CHAINING */
>  		if (i + conn_info->max_pkt_payload_len -
>  		    (skb->len + 1) >= data_len) {
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bbe532a0-95d4-bdc8-2caf-dba8ecf4ecda%40canonical.com.
