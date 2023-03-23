Return-Path: <clang-built-linux+bncBD7274FIT4EBBJVJ6CQAMGQEX7YYO6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA3E6C627E
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Mar 2023 09:58:16 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id k3-20020a170902ce0300b0019ca6e66303sf12044847plg.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Mar 2023 01:58:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679561894; cv=pass;
        d=google.com; s=arc-20160816;
        b=bUDPKjowxw3kSk166mW4fK59nKrvpe0tb55vuk3T0XMV8alxEIRk6OfjLLnXEDhCnN
         Hr7Flr+724jKurs9BdUpelK6MBZeLKyK8uFo5ssCh8F8ZWsjXsem6BkJJeUnN6q09N7o
         EhEyrpqPT9tbYkNnUCksHcAteA+ezpegJVkI9c/d6reVrlqqzzokXN7H/PjJ9ISCVnqX
         lhQEy4CpjkXhsUTChQUKVzjXSieobJawFmKdy/a3WU8Nv7UK6qGBpAm/DAAcTIfu6QKc
         sELUjkaAeaE7e2W4Wl3b7IF26w91FJkJu232rAOjZK9BLoYsK4Y0vloRM+vaR39mFHhK
         6mgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=fJhamm0zt5SSiOj7kVCD2NM5x4Dt23IG5GQwvvxpuKc=;
        b=bY+/pbD712IV+bzuBSy18NWnCUOdbLU9qHojgqVb2AtqgsCxToSdK+Bs4DGEEk+ZLR
         tDg7H2oGsH/lejzKDqS8Y/yHtHvCHb+uG7e/JhTVBVe/1/atx+JMFnR2m616RSDDoSao
         /yYHQFuPbeByDTT9hFVc70m9g3FM1z/SVo4UD4FyPrtXoR97kD1bm+AaV1cQU8XrV9gx
         PmJGmCZENu9Qft0DGAYDM6CIGLVNSm/ZEuzwM2F3I9UPNaIbm3kkiwZUo+DJtLi5uavz
         7edj2sfaQfWEBfoM8oxeEwgqoLe04DkIv9v9phvrLLkpd8Xh2fBSNiqvPto7Q5LLoMjb
         G+Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=VszBHvgC;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679561894;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fJhamm0zt5SSiOj7kVCD2NM5x4Dt23IG5GQwvvxpuKc=;
        b=fvWEvzRd+CBMQxY6suVF6lRe/DtsvfAn2h4WA+dSmSg0grQMEk9156gP5Nt2zUoJ+H
         WIiTBEtuh+JCF9mzSxWbMytyglc31YuRl49uI39wH72lAke/eTyHufTvg/+vMDuScuAH
         2JS7LB8PXI8isnSPeZqn0jNDOj7HMrVcMjy4b/Auy9HlqkHGtlSzuWCVp79kHhYuw0qm
         UX0mYcaJzems4trrBOpTCTABLyy1WYRndLo52M+vqi+NCnAaTyKQWLY61dlTVPIaKde5
         tuKoUw77wRwsnop0kHtgyu6otOCHQgXy4L865f/0zF3hcEUnhME6UA9ALBjGfkqpyGQr
         28Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679561894;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fJhamm0zt5SSiOj7kVCD2NM5x4Dt23IG5GQwvvxpuKc=;
        b=pDLdQRql9kY5VNv+3v2Wbwo2oBIMLoTg/CI+nPF84QBF3ywYVBEKQDDFvW0sy9/XZc
         05X/kHPx5hl80juW10X5NpwsZWfrgGO3RHojTMnE1nHHBgZ04Wri8ZqG7YQ6W0gKZrc6
         zMkS4415CQU0/watx6VrsQ8U2hgxs6vr77bv0Ku0fw17ahlUO0D//zwElF2NBvtCE6um
         rnrrwn7OgxbpW2VXdtpuQ9uHhayX5Opn2te76ctO8fVW5kfV89ugBPWklXoV8UsfgS6H
         ObZwST630zAs7BoukjZ8Nolvoi6w4KXhSS8cVJnnEfJUXK2MDaiaX5lC2nGMxi0XrSif
         zrcg==
X-Gm-Message-State: AO0yUKUKWdApdvJ7+B4b4NWDkQ9YcxQv9Seu64tTL1Y/K1fWUGQQfvXK
	CXuqIXZh65JDy4rDxNy1po8=
X-Google-Smtp-Source: AK7set/1KOBXMwXY64kjp9ocZVEhdnvinxReSpCdrpt8WiaRJd8wC0J4hJsoWo2NeIC7JeCeVg8ojQ==
X-Received: by 2002:a17:90a:74ce:b0:23b:457b:a2a4 with SMTP id p14-20020a17090a74ce00b0023b457ba2a4mr2114506pjl.2.1679561894372;
        Thu, 23 Mar 2023 01:58:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:2545:b0:236:6df7:76b0 with SMTP id
 nw5-20020a17090b254500b002366df776b0ls1743781pjb.2.-pod-canary-gmail; Thu, 23
 Mar 2023 01:58:13 -0700 (PDT)
X-Received: by 2002:a17:902:d4ce:b0:1a1:cc5a:b07 with SMTP id o14-20020a170902d4ce00b001a1cc5a0b07mr7881744plg.37.1679561893514;
        Thu, 23 Mar 2023 01:58:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679561893; cv=none;
        d=google.com; s=arc-20160816;
        b=a9xVJJYKw1NBq3S//BfsN1tXU5MZcODmtGaHGPG2nxU/EAElAhMT7xUJaK8XmXe9Gg
         Ge12NzxQkMqlFzmkfKiAv7/z6asOhxOn/HpVO7xra6GcldrjGzRchdjouMqsdIozTtLR
         lUCo8XoBY4Dqib70LGMbR0Ul+2PjbkOBLkZzId5ruHCTdXz1JgLfilcGetjN3LBgUJGm
         7KUOptTKvxKF/xe4VRscd4Cqql75Pnhy+mP5TKESDJ6JvcS7ZChxLLOGcAUJGF/OUhTO
         ECJvrFKP7INxkHSKjcK1dzWM2u/nUnuUkL932d8J8K3MPC7mrbj3fQRK83Alzjd6+MwI
         n1/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=r6zKkGJZ6kMl3CQp/m1p3Dok9jJ4yPqUuoGli6CZeYg=;
        b=aIN0xf2h8sIbz0uRVnP9ZoferNQEXk9Ca03P2rm2iTHRBbXkAFB9nK8AcALWwbkFJq
         kN5hTaiASdxrnqCLqY4ZLyjYp/OCIoa3uNkPcjf7DA3oQwbeKnGoIV8Rch2H/7YGGvJ0
         kmgxdwOHMpsLprKecWDWaYgWMYOeZjcMUhgobU6jo4QfHC4wIo2q4wgWRLqx1xH+FR2g
         f9haSQhwTTjWz5Danf62ltCwib4UsX54Cr9Tyg0+xCufTK6j/+8CvvcHyTLj/bv6viJ9
         gGcCwhR6GJJXgpavEo/r+KwH6RlOFUwqJBNATZCqS5FqKcV8OOqgOpj4XPtWHgUFUlo4
         4ufw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=VszBHvgC;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [46.235.227.172])
        by gmr-mx.google.com with ESMTPS id nv8-20020a17090b1b4800b0023f29444ab2si51459pjb.2.2023.03.23.01.58.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 01:58:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) client-ip=46.235.227.172;
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D616A66030B7;
	Thu, 23 Mar 2023 08:58:10 +0000 (GMT)
Message-ID: <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
Date: Thu, 23 Mar 2023 09:58:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
Content-Language: en-US
To: "Nancy.Lin" <nancy.lin@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, krzysztof.kozlowski+dt@linaro.org
Cc: Daniel Vetter <daniel@ffwll.ch>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, CK Hu <ck.hu@mediatek.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com,
 Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <20230321121859.2355-1-nancy.lin@mediatek.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b=VszBHvgC;       spf=pass
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

Il 21/03/23 13:18, Nancy.Lin ha scritto:
> The hardware path of vdosys1 with DPTx output need to go through by several modules, such as, OVL_ADAPTOR and MERGE.
> 
> Add DRM and these modules support by the patches below:
> 

I've tested v30 again on MT8173, MT8192 and MT8195 based Chromebooks.
Green light from me.

Chun-Kuang, can you please pick it?

Thanks!
Angelo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/17831605-5c9d-9c92-d190-04f91060ace4%40collabora.com.
