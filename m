Return-Path: <clang-built-linux+bncBD7274FIT4EBBX5M6CQAMGQEFUGKVAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FA66C62B1
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Mar 2023 10:05:37 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id i16-20020a67c210000000b00425f051bf84sf4639424vsj.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Mar 2023 02:05:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1679562336; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZysJAUHgUp/+BvcrWFuCU6pu7v3HtzgZh8/sZdLVsQqnTptSh6sLuxA/LPkeLZ2nrX
         Iqh9d8OoOe5EhXeh4ZCS1JR8VaiQhEm3X6Q705U1hQ4+ZtBQhXAjw6hcSm51FiiCAVgt
         tvoksXhHr4TxdGIi+VemBapi+rpAV0MHyXOEH6eoDmuS59hdXUcrQ/vx76i4wXFprfEM
         pUHHQGEoy6myw9uOSqahJCc8uNGW8fYTWLMp2u2Nbpf5+zYP/qiOZPTRxNJ2bpvzRVo2
         OeQ7OWolMzBkYQorWYq04GioLzmipIkbRVvrAvCr9f6vlrhGq5oyTIi0/W6+udIKdDA7
         0R+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:dkim-signature;
        bh=0ZjA++WcwFGjfsWJRupKcsjmL4BvXy08GP1RH3o8Ch8=;
        b=K48b+3Tmyw+LpCZQXCQyCeKKWnE6r7tjZaG0JfEQZjUHt3glh9/WnFIqx8W7vPHzD5
         4Uwg08857t+j3QPHsSyiMvUxg3Ea+MVtnx287v9Mtc9SyiO7duj23unUIVT9iMIgJpC0
         D4E2geibuZe5icewdRSyP3CuauONlzurC4bkKUv219n36AfZqilUjHW4DGNPkZIE+i5U
         pm1l/TNGfg9gTxlLqSGnr8idTnlYAYtOVq/nNwsdiVY/uCCxATM/W56Nwj+Wp2LYICn3
         8AUIeAxQ5qC/zBldRWew8rCKfowYRtujSwKg/rfTvKkRgFqzCMm973aXLsuX2M5hy46u
         NNAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=UEZnifG9;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679562336;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0ZjA++WcwFGjfsWJRupKcsjmL4BvXy08GP1RH3o8Ch8=;
        b=gMi4luoBdpBNdvjFW/sERLM/A6FJKeMIhIHo93rSL7y0/O4D2roN6UkHl721gO68I4
         qlxECSgFjH43PIxuA1nelN2HcKiUIndcU1iUNh+V1EOJaz0QdEOmEQU+5lYt8vP1rEeX
         RthqyL86DJM1lbBuI24ofGuQIW/zSvO22W9ZBrgeNxQ1UFM2VFTRuYPnRNOUYYH8lPxt
         +PmkXI5OjNkFgk85mUce/l+wI8Jy9JDs8fkIOo65wVPaAYl6M0QcxsaP8KPf1KppiY/T
         bkBj8l89mKvzAZpe57jU0qqqidqEpHzYhvgqmnQAGs1cgV/yumi6sqU+1JshpBlvZvGF
         oJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679562336;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ZjA++WcwFGjfsWJRupKcsjmL4BvXy08GP1RH3o8Ch8=;
        b=4jaJ7CbVNxhHNS0BQ9MNd/3Oghcv/zjqyExzmIl6wdPymv2/Hcq/or7uQSFBjm37HN
         mTbag/NeblOaHhx4mz/WQnP3MQ4sXnNdLf2JtjspX4GFULCDwRclN3hWaRpTvtrL6D56
         N06POpQF0kkTR9O4RY14JXyQPV6NHc6EtQlSHlrDXr8/NWEKy3uWWoTvv8wVAXl9gMEt
         iTzjKDi/f6MLpSFVnNIDRUa5TCudG0opjdOVd48xhczF/nobrkUnQIs2mQDdYRtyDMS1
         NBNhRLmArJOwOXpMDF5j6bQvd6ZT2wvjNR5Hy1tqCt0OsGWgWCbikp+mSZrv8CQEziLa
         mctw==
X-Gm-Message-State: AAQBX9dGVI+1nET9XYd1qLwhocRDIRJvTP/iEptbDvGQONn15NppUfrp
	r22I9+aGxQ/byQeZpcF40O8PHw==
X-Google-Smtp-Source: AKy350YJeLU3a39hS//bBE3rzpGBTlDDQ6TKzUmvfd1k0bDqXDEbFDTL13Ja4GwCEPMPbijnwrpBQw==
X-Received: by 2002:a05:6130:a6:b0:68b:9eed:1c7c with SMTP id x38-20020a05613000a600b0068b9eed1c7cmr5181950uaf.0.1679562335714;
        Thu, 23 Mar 2023 02:05:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9196:0:b0:406:3e99:a1c with SMTP id t144-20020a1f9196000000b004063e990a1cls2350904vkd.2.-pod-prod-gmail;
 Thu, 23 Mar 2023 02:05:35 -0700 (PDT)
X-Received: by 2002:a05:6122:ca5:b0:436:1cb:bf1c with SMTP id ba37-20020a0561220ca500b0043601cbbf1cmr1038995vkb.8.1679562334998;
        Thu, 23 Mar 2023 02:05:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1679562334; cv=none;
        d=google.com; s=arc-20160816;
        b=rlrNouYG4iiEs6Zl9IH5Ts99v0LeMRDix/CTJRBWR+eQu3xoVyF+D2FWhVlOxrS8kC
         yIwHsk4+TvJqfWi9k55eGTFnpImySYFWu2RWmzYhTAuceZqxmYEbFVhrO/eFV+7/6jjp
         Hzkfev+Vppk7fVyZtRXP5TZd3uAvCjoi4Qj4HDG4sIa0vVVCKlymd41jTguSs5NGj4Oq
         TE5MrNb/WcVWndzmG0ja9Me0rCIS/llPgMW9aXp5zxBRZHZpAeYI116qwJrK1WdC2pKj
         Js+rSQJSk1gMyFafTIPhMynWFFfcaPhSaWdElYUx0rsiz4TUdCF9Liu+LQHsipKLOquK
         rpxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=tSGMZ0DXxSMkETvQUMza3l/dMCnNL+ukYiI0PwAfIfc=;
        b=inDOj3KrwUUauQS9VZef+8ihT+vhxk9t5Y405CEwDbedM4JXczrLsZD+kHClRxvvy7
         gk+13r4uNlxmBVoWmefE59XoUH5w+MeG8tJS2UD/QyyuYQgWnG9YDY77DlX09Ver78Es
         Ivid6c/7gUFosK6RZ0t4LAg0dmJhpxuYpJKqmQx9fncGYTQ560DXcWUE+sfnrNFAbvrx
         1P77H9GJAbUfQjBIih0SxLedIlYXOoY6gi9JGTr7q19ZHLTjTwSQxOyFRguFTPLdtrsf
         7Y0+pu9Nn3XmywS/5V0+4SNigmo9p/v7YuwoMNaCKux/K/bCtyWcuQCVYB1rxo+gDZAi
         7p9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@collabora.com header.s=mail header.b=UEZnifG9;
       spf=pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=angelogioacchino.delregno@collabora.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=collabora.com
Received: from madras.collabora.co.uk (madras.collabora.co.uk. [46.235.227.172])
        by gmr-mx.google.com with ESMTPS id s20-20020a05612204f400b00432f6f6419asi868688vkf.1.2023.03.23.02.05.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 02:05:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of angelogioacchino.delregno@collabora.com designates 46.235.227.172 as permitted sender) client-ip=46.235.227.172;
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0E43866030B7;
	Thu, 23 Mar 2023 09:05:33 +0000 (GMT)
Message-ID: <99e1d5b2-509f-3291-f327-2050f1bd9aa3@collabora.com>
Date: Thu, 23 Mar 2023 10:05:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v30 0/7] Add MediaTek SoC DRM (vdosys1) support for mt8195
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: "Nancy.Lin" <nancy.lin@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com, singo.chang@mediatek.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Nathan Chancellor <nathan@kernel.org>,
 clang-built-linux@googlegroups.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230321121859.2355-1-nancy.lin@mediatek.com>
 <17831605-5c9d-9c92-d190-04f91060ace4@collabora.com>
 <CAGXv+5F82Ctz0pit4LsR5mQizPq-v2k3OVfiRhsGnG0a2J=Dyg@mail.gmail.com>
From: "'AngeloGioacchino Del Regno' via Clang Built Linux" <clang-built-linux@googlegroups.com>
In-Reply-To: <CAGXv+5F82Ctz0pit4LsR5mQizPq-v2k3OVfiRhsGnG0a2J=Dyg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: angelogioacchino.delregno@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@collabora.com header.s=mail header.b=UEZnifG9;       spf=pass
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

Il 23/03/23 10:04, Chen-Yu Tsai ha scritto:
> On Thu, Mar 23, 2023 at 4:58=E2=80=AFPM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
>>
>> Il 21/03/23 13:18, Nancy.Lin ha scritto:
>>> The hardware path of vdosys1 with DPTx output need to go through by sev=
eral modules, such as, OVL_ADAPTOR and MERGE.
>>>
>>> Add DRM and these modules support by the patches below:
>>>
>>
>> I've tested v30 again on MT8173, MT8192 and MT8195 based Chromebooks.
>> Green light from me.
>>
>> Chun-Kuang, can you please pick it?
>=20
> It was picked up a few hours ago.
>=20
> ChenYu

Sorry, I didn't receive that email. Perfect!

Thanks!
Angelo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/99e1d5b2-509f-3291-f327-2050f1bd9aa3%40collabora.com.
