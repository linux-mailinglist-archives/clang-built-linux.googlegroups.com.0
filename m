Return-Path: <clang-built-linux+bncBD7274FIT4EBBOWTQSRAMGQEXOWHVZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C82426E9393
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Apr 2023 14:02:04 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id 46e09a7af769-6a5e9b24243sf582919a34.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Apr 2023 05:02:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681992123; cv=pass;
        d=google.com; s=arc-20160816;
        b=D6C+m5dc+ehE+pCg8nw5rbunnMcX3iOt4QCBm6C9mQ+lwLbRQ8dJBB0UDtVedcYIGu
         x2XqwQwFE9DCqAjk2Z7rKK8t//44tzDxQsca0ftm84ncCsf/ymwSjx8HPGc273xgTpMt
         u9Eg/9C4FUvUURaMZvD+9MYZ8aJLa/UnNaAcSdcaK2d5aIcWzQsA3XpMlTuHBwoyLPh4
         Y+pwi2NTx2m0hqhYkXjz5Mc0y/7yFWNOKSu8ZI8W6vvCgluC9TYMZ65KwcM+I1iKhMGa
         cvnHRHBboYyiQV2sdlos/kjtYcW+Tta81g4Dl0CUe8MkeOXEj6ydq8v/tGXX39qOjR0j
         Z/9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=a0zw6CbcTJUVQ856ImoRXTf5kWp5i7W5biC4zkbV1d4=;
        b=bWFSHpZEydyhPuhYCIeZLzY1JNtiURWrJ3XBeMIJOjLhxlTHUrt/g3iCQbNneK4DKl
         XSJKlcMgLA7MRMwG6RWTYonayC3sv1U9RvLndQn9qSJJFtbz4afwv+Q7XscsiZRXvSeS
         dYUIE1SbjG2/5QAk5k0OF1tD3fKZh48Dx0AJ6L5OEHmb3dCscZgPFUmxdYoCMLLMS/Xs
         jKc0h89YYtpOClAZSiRloxmiXs15d5IyNzomFPL23KMlsDoK4BeRhtKepqMOuEna3axv
         sxBgbNULu5vUgzopO7RYHA+F9Oj9mvu9RLNDzTdX5z9zDZIZHApIb29KPJF20KPpjb4e
         oqew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=GORNTUxT;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681992123; x=1684584123;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a0zw6CbcTJUVQ856ImoRXTf5kWp5i7W5biC4zkbV1d4=;
        b=j7yjh6kK4yX+oAP0NQum7c+4ENQEOPpjkyAYMNQs48+A8QxzankgvthKzV/MO3I6ia
         goCRRfuH3wXR/socA2uTrOfPJiw4bVxxowVDOcsDxK5Jd1DekNfrOIB3+8386SnJflyC
         w4dv5dcpvxwNuR/fTGCPLy96oZWA/Tj+Wo0EcKLw8NnABM9mMt6g/aSzC6fDWgRgDxEe
         +To3kgfFU5gwRW54hzFeqJjLtMg4C5jH8R0F22ebQCSlSJ1RFePdIMhrsvrCsbJajk4K
         aspHOtWzhrsriNPHwDpaDec6Cvi1xYALQerKBuaPjidIBul+tWOo/SsVy8RK+UvMqFqg
         mUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681992123; x=1684584123;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a0zw6CbcTJUVQ856ImoRXTf5kWp5i7W5biC4zkbV1d4=;
        b=IeBuAjjo/GW+X6aay5UaSkBL4sJ0ttVYLXVa5pUg8jAt8JsmSykhW44Oldt6B+wOIE
         /P2ih201whlzQFyszk61f9KHyjLDvABSgxKCX4e5lLXaa9yPbPflXo/PgbKggAwQh7V6
         QKH5oaJqbZw2fZXxfC/dF9h5j40lA8Xh+Xr2HkyfdOiM13/4w4TvjJtIP5wznrcwwhej
         fwFR/9t8tfyWD5YyQ6veRQpEZie+greqNiY4qZUAYkIm5/b90rPyZQ0qW8zOcL8JwRu+
         yos/YdjZK3FsQl2HwaW6vRSLc0KKRah11hKyIV0XYN9a8CKF9WUsRZr8mBGmcxQTte6A
         43pw==
X-Gm-Message-State: AAQBX9fYudUlxlxyAdknVO25l7owCUe/u02LRldZVMFCxefMVkf1xImQ
	FXnqxT1U11j5VUuJJnf0WuY=
X-Google-Smtp-Source: AKy350Z6r+cGUVih4zwmU9WrnG6aX54gVHouWJ5CaB/n7PrQ1YZUW3pMPF7IRk3Wj3LK289bs6XaCg==
X-Received: by 2002:a9d:470c:0:b0:6a5:e9c9:5b58 with SMTP id a12-20020a9d470c000000b006a5e9c95b58mr299111otf.1.1681992122989;
        Thu, 20 Apr 2023 05:02:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:650c:b0:69f:7d7b:d8f6 with SMTP id
 cm12-20020a056830650c00b0069f7d7bd8f6ls242186otb.4.-pod-prod-gmail; Thu, 20
 Apr 2023 05:02:02 -0700 (PDT)
X-Received: by 2002:a9d:4810:0:b0:6a5:f682:44c2 with SMTP id c16-20020a9d4810000000b006a5f68244c2mr488742otf.14.1681992122477;
        Thu, 20 Apr 2023 05:02:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681992122; cv=none;
        d=google.com; s=arc-20160816;
        b=WJxX+KjpOkJ3qvvjdB9k+cNpM2Q4GxJ66tcUAOMXYlYmhHVRjHNt/479uamJ5TCInG
         fPn6U5/unpWTmvKgrfz1etrsPrO9G4zHVjZ1wJibHLpeFAyoGc75qnvB9VChPL4JVGEp
         57M4ZafD5+l6AxdcYmQ3Y+LI3BgtVnJWd9SfBUx5l/CLOBrNDKS3pFd4vaYOR1Ompvkh
         DLSg7akb6RbOWcsMTjknPOnBXZt4HGSNT7Lis3brWyUg8ojlq1h1ZZ9oeoJEB8z8/ek2
         rEqMcxSWgTZTRjqajBKTSzLneIkedDqBQOUAD/57ihzhaA+tq+imx9NXvz7Gaxvmdg3/
         lApw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=ksapSUQUSUrOxuFEasdFlmXhyERx2YxIir4Vej0yRaw=;
        b=VE2m/PHtSpV4TJMNiOO48FeS0Ohapk2tCedjM3NQ0E/+gOlr/4/dQl3mRPNgmIfYCj
         WN9pdTs9qh6TqBNUfeDm59+Y32IhPNbpyJBeZf9Qwdli3cmVAhqlbMMAH+HDfwMtETw8
         RZ9B2dkWt3tlAnXM+iLnVom5UVCN6kYv9i5eNG0URhe23OTdu4ybF1mN0qEr3sC5ApEc
         KmG9zmkJM56pL+GG3C6Si/JviR4Qv92BajLBUCPNyoDSU7cvylJoLzGt6HmdtS2rGbCr
         +cdLB2+yrigcxQsNIz+V47Dy3/n1P3zBKdCGTtezqPrhdXDtMBKXr6izhYHSGWEYPQrE
         yhdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=GORNTUxT;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [46.235.227.172])
        by gmr-mx.google.com with ESMTPS id bl10-20020a056830370a00b006a5f12c714bsi125443otb.0.2023.04.20.05.02.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 05:02:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) client-ip=46.235.227.172;
Received: from [IPV6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2] (unknown [IPv6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3537E66030CC;
	Thu, 20 Apr 2023 13:01:59 +0100 (BST)
Message-ID: <e1619d7a-2ac3-55bf-bcf1-cad3f07d20fe@collabora.com>
Date: Thu, 20 Apr 2023 14:01:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] drm/mediatek: fix uninitialized symbol
Content-Language: en-US
To: "Nancy.Lin" <nancy.lin@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 clang-built-linux@googlegroups.com,
 Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com
References: <20230420105115.26838-1-nancy.lin@mediatek.com>
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <20230420105115.26838-1-nancy.lin@mediatek.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b=GORNTUxT;       spf=pass
 (google.com: domain of angelogioacchino.delregno@collabora.com designates
 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
X-Original-From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reply-To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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

Il 20/04/23 12:51, Nancy.Lin ha scritto:
> fix Smatch static checker warning
>    - uninitialized symbol comp_pdev in mtk_ddp_comp_init.
> 
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>

I agree with this commit, but please add a Fixes tag.

Thanks,
Angelo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e1619d7a-2ac3-55bf-bcf1-cad3f07d20fe%40collabora.com.
