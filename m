Return-Path: <clang-built-linux+bncBD7274FIT4EBBZWTTCRAMGQE6R2QJYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 910116EC6BF
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Apr 2023 09:04:08 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id d9443c01a7336-1a69ae5e220sf47765975ad.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Apr 2023 00:04:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682319847; cv=pass;
        d=google.com; s=arc-20160816;
        b=CsLR6Y8JJrSGMrfyOMaaDemAjMHcRPob5+AEwKJ9MO/16Z8zyKOoNNs9V7NOKRII8g
         NsO1mdSHNhl2/pHAk5/6FVO6M4fvcev864/J7lGN/wHRQprpqsghUcynrbVZhDIQz0/u
         P+xrrU7mreceKBkxoBu7tWuIcb3Lxwb1Tbfj5bse0L6YmHMvb0uu0ghnup7coPxV3jJ4
         VpU27zh+hwoPSocfxWoJstoUdxaBepwqo2gpb97faDw0q3FuU4YqVFBh9CFJN5E907Zv
         X1+NbU0iiybcSBsb8ftSEdPjI3UyjZGIkYwFMUSMzI4Jli9G5q4eIHIGG32wcL/j0+0v
         IAOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=PAoJooPym/SbqaQ5DaMoRNDTrtsr4zfx69JH6MkChnA=;
        b=EawwA4/NmN9JGGcTQ3x6qIFL3ZMOQmBBAulKMvQG/DONIAg4NYPCz+OFxc/nHaxqwE
         URBDkK48Sj2afVDwu7i1h/C7AHgF/8M6u5UjbOOERAw12Vd3+RCRBO3Ph251fWPtGT4s
         4MBxvocvJk4RFoqI+oHGRPxxESKYNMMLpJ/56cb9yf/zfRobPzjB/uNdr3Zkndy9Pn8a
         oNAgcVBib6VZIGSgfEgN6HBdLaGu+Q6Aee/c5mMgRLUOJ8ARN0WUn4iRH3xkbRyFZNGu
         OavkNwhTcGj0OgnG+h8l2kVVX2dLOIZdpN/uwsrBRliuR52u5QQI2fzm+BQxdoIQNNLH
         VnQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=mv0Y1ohO;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682319847; x=1684911847;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PAoJooPym/SbqaQ5DaMoRNDTrtsr4zfx69JH6MkChnA=;
        b=aMC7ISfTcsjHwXQK/HR7YRSPzqjdlxhlPxBG6GzBROJ2jth0OGqfI1YrcW4HkIjuy7
         y1fZO3nMB09BDcsOiLtxoVgbSLyR7YziOPYrHDDI2B9rPKSshF6bshfprPkQomu9fd10
         E2qiblMXtxpo2WNgXut33BaMwYVLn78Y9lHCKZ6h6BpriToxb4NOIerHk9OxYas5iwUV
         FK69wnAY6wTmwx+L1oAHOs56Bj/5ogxMyOMQ5KTbmsHXIsb76rrtbYRE66fi1zqPXQCv
         vlIJPdl8c+YJZqeuo9Xg+UtXhujFeaHygWGbHAqUyV5BZggJ5YHVTlwADBAzkpap95Oq
         5Cvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682319847; x=1684911847;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PAoJooPym/SbqaQ5DaMoRNDTrtsr4zfx69JH6MkChnA=;
        b=Yjiq7g5rIuqJINsLO/4t6MIgeU+K7yZHGC7kvfM1pV6Dm+Ym1kgAiGqojzU7HOIkgu
         V0HTd5ZGGxj+p1dv9UZpBX+XxqBivXniYYtTqaBXpcJ5/5JyXyYnG2PniqpDLGvVyHJP
         TuCm+esKlOjKwdHSiKCvLYwgrRrJ2cnfUjrAv5iuDi7R4FP2x3PDPmxT8zohuokoZhDy
         yYwRRk4m0HCTiTIMtNvn3KLYO/gCTjj/Uhsst0rNsnhgkT7UhabHbBcfei2ARpqolaoj
         Z/KTi0fQj30CVgrAHNyV57xE8UfVV5wHofgxorgR0Q9uo/EwmlI6aYJqIgvI5Mta2Nbo
         4vzg==
X-Gm-Message-State: AAQBX9fey6yCjaN/5SitFOi3ANKQOx5gKDi+KZFjyRhPTDptCF5UF28X
	SqFCozzQJKFgkzcHFFdehHU=
X-Google-Smtp-Source: AKy350a+VUSNFUko8rY8gUo0YWmKSD/lzzCsWU1V2Inb1B9HGaxSUxnK1plppOIoEnWg0BtL8J7rjQ==
X-Received: by 2002:a17:902:6ac8:b0:1a0:41ea:b9ba with SMTP id i8-20020a1709026ac800b001a041eab9bamr4224293plt.8.1682319846733;
        Mon, 24 Apr 2023 00:04:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8542:b0:199:50f5:6729 with SMTP id
 d2-20020a170902854200b0019950f56729ls9786246plo.11.-pod-prod-gmail; Mon, 24
 Apr 2023 00:04:06 -0700 (PDT)
X-Received: by 2002:a17:902:e884:b0:1a0:50bd:31c0 with SMTP id w4-20020a170902e88400b001a050bd31c0mr16287399plg.24.1682319845921;
        Mon, 24 Apr 2023 00:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682319845; cv=none;
        d=google.com; s=arc-20160816;
        b=YcZ3GjtE4MFkU3lnkISjSvNad8G5CFXru2M+51cuvshaKu0v09LOnEK8vqG39m3aAs
         QQ7+PZDOW231lmwUe4muUEc/B+svlzXmDvRG4NkLxk9Sz2eOQ/LBrzBLz4Y3mJLHkX5m
         3vylc/Iwr10u+tNGm/MGDm5C4I8wr5or6qBln+rWUH34PVjnHOhYCHzqizPwUzQ9sKU3
         OBOwLbM8E8+UeumOQbadB/ij1UGlOSQCMzkU4KYBLS23K3YVY/XPrYhgl+3K2Tgqz+2N
         oroLc5215tj+kp3mJnBfH4VETSdXP3Gp+gt/+Spmv+3n5S8GKWyT1gRJHCjtIdw6KY3a
         yobA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=npOId2mZRfy97Yew6iDWD/qRDq3NzAPb60sowLxfQ6Q=;
        b=KENwtsDU1S8EyNHsuBY48n2wBfX6GwKC3nuRa9AJ1+PzBgtCTUtrD5hAK1be75Ri7p
         vQS9MarIfFdaCV/k1ZhsHW3RoKaStarXUU2AOyHRWw2QcmyfCD1DhyFjW8zFadPzEK/v
         LjiQznjw6EdNMaw6Lq00S269nBUA3+JpKDALan2sO40nbgXNMKBrrjURTIJGGGjVzaBj
         jZQqn7G2sPBoHOuI227RgHyHqWIO4SXbc6eLbIG4XzgeZOOJFtTmobTXy4LxwruHT1hc
         VYBiEqikfdv/4hzLnhoW/i4c1EBOmEshhlhivCff7ftccIZtWo7FEaiDQMvqXiIHIBuz
         BzFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=mv0Y1ohO;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e5ab])
        by gmr-mx.google.com with ESMTPS id h7-20020a170902f70700b001a0767b58e8si263331plo.7.2023.04.24.00.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Apr 2023 00:04:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e5ab;
Received: from [IPV6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2] (unknown [IPv6:2001:b07:2ed:14ed:c5f8:7372:f042:90a2])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8D424660328C;
	Mon, 24 Apr 2023 08:04:03 +0100 (BST)
Message-ID: <9b26f3e4-fcef-0e51-3443-78624e96fe8c@collabora.com>
Date: Mon, 24 Apr 2023 09:04:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2] drm/mediatek: fix uninitialized symbol
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
References: <20230421021609.7730-1-nancy.lin@mediatek.com>
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <20230421021609.7730-1-nancy.lin@mediatek.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b=mv0Y1ohO;       spf=pass
 (google.com: domain of angelogioacchino.delregno@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e5ab as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
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

Il 21/04/23 04:16, Nancy.Lin ha scritto:
> fix Smatch static checker warning
>    - uninitialized symbol comp_pdev in mtk_ddp_comp_init.
> 
> Fixes: 0d9eee9118b7 ("drm/mediatek: Add drm ovl_adaptor sub driver for MT8195")
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9b26f3e4-fcef-0e51-3443-78624e96fe8c%40collabora.com.
