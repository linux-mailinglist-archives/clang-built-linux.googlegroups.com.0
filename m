Return-Path: <clang-built-linux+bncBAABBZP5YD6QKGQEAS7CTCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA302B3099
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 21:32:38 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id z29sf15354844ybi.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 12:32:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605385957; cv=pass;
        d=google.com; s=arc-20160816;
        b=fUcUI4LZFBk39MhXzS8EU/Av7NuJlkjgSS/pAjMsZUkFobY/6IINMEHhD1FXkYKU9r
         sLCb6pd/65A0xbtJOhSaAyMrlxkfQCUGaTtKSihHpFurdrl7Y0CrSo/DUFk/jDVnZt4S
         79tCqX9zZNYgJ7ISToK03hPba8fUp0SfkpGzfJnEThZ8XN7tsQLMnemzgiSQMYwypqIF
         wL5nlAVJKLZ0Qx3PL7N3EPAKUPFNHLABSdvmClq4Lz4EGdaiUXaF8dXi8u+fyidPWKWd
         y13I5qpWOcG0KWvWSnAoMBWzHYbZE5x+XF6g9vlvBIJEIPcQTotiOveznpzPi4fqWxK1
         9mKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=PXirEVu7jiZo0/qEEbrsGzqCrNZJYnhrZJDpARnGU44=;
        b=AJbAz+B52pthg3gX+A/JTfgPYlkwK3Soi33TcRZIgey4hSxQLbtWIUH3YC18Y5K3Ra
         QdwxvgjmyeyanB8hN5ViPGsBUJ7zb2HTYXkN0XXYox0sorRERdpZMY0f7NrRquSXJVyr
         AIQULFQEnCrw2Ukxh0Y8hvZ/B6X4Zb4KLh7sUaEozGpUfejKLXgY+2G3/0R1huYWhnOT
         JP37O5c1CWdsUPAnWvD5KN9WJREl2IjUFYTWDA+84XU+4T0Czbw7+rQaDMMH7JnAHqkL
         BYZyAzkpLmZ4n1gCckfjCy7sslcXBDPpX0VG84wpOct1juKB5pKz1dTOYzrVZKIVPzRm
         R7dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=k8qAnAzQ;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PXirEVu7jiZo0/qEEbrsGzqCrNZJYnhrZJDpARnGU44=;
        b=J6iQ1UUZp9xZP4/saIqZga6z4UzKFk+4/YMLMKvr9HBVB88AxomL2Qbqmrox0kldMh
         C+Z3xX7sqeXImrchzZUuRvQKUSe7q9NhGwwIrmmB11pzeoYwAde/PVRNzcVQkOEkNQD9
         655uSksWehekL4vUiZoOblv8BQM6RJxaG68PFQ9EqDiBmI3k24HyXtYGc+553L2fDGHU
         o3KX7Ylym9HRzFvq93XbUvC9nxQJuai5vV0XZRrMPyiHvZIYaz5omm4IPj17xiWInctY
         F0WdH0wh2jT9f95WQ+cmtFMZt5mNWuYRd12SqYB1TI8bbVUliwvbc7M7Mr5eda4gQAUM
         F/Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PXirEVu7jiZo0/qEEbrsGzqCrNZJYnhrZJDpARnGU44=;
        b=Z20ix/5wOiiC0zmDRBMYmnVtESb9PYIwIeCEdwqZaQzoXFN+vZZfB1vBw9MiV7erIs
         1tMBwUAD69ELMWHcPrLaQSZNiBleMX3xJfgONP5F6op8JXqxDxljfuuglJvPBfpuojtN
         5YtYOUlNcC6i/QAWNYbl3+bUiqEHyTfLGIh70yztl7zOoCfTc5RR7OO2Qd3xPhhdR2AT
         cb7jTcyZ+FLno/kNgggSNF6eXaT8Atf996x0j92nnrhczLELegdt0RTDaNd10DUMwcCS
         hdewXfiAKtt3hMvrErPL0CfJWs/+VzJqqVdHVNStYAPQzwOUtau/pl0uywdJ45NBbwwM
         yz6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YNyLKfF2pjz/sLCOGA+vNcKAOnEK7upToYWWdY2Eyw7KuawZp
	ScgNOuerEZfBWluCJsDsMg4=
X-Google-Smtp-Source: ABdhPJy12L2VgSuWNuyZQNIttA+GofAThh91uTZdk8f3ANmx+M6Ibmfgh4sjgkitGb+QzIT4XTIxHg==
X-Received: by 2002:a5b:64e:: with SMTP id o14mr9656127ybq.298.1605385957153;
        Sat, 14 Nov 2020 12:32:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:4cd:: with SMTP id u13ls4994830ybp.9.gmail; Sat, 14 Nov
 2020 12:32:36 -0800 (PST)
X-Received: by 2002:a5b:c08:: with SMTP id f8mr10201318ybq.398.1605385956716;
        Sat, 14 Nov 2020 12:32:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605385956; cv=none;
        d=google.com; s=arc-20160816;
        b=gES0CQWl6/133HssMAJV5UJOydINkulAULLk0OOQWHgyC6ePqCcwHGk40IapXVbiWw
         rEadLYKPzqyycIF+1PA6zmnFDFVK2TJUtLRcbvOeSUwkOnOj5Gs9Ru3ntZ40/wSyEATB
         Ui8TFQNCECSC9M/UZeZPxnCPyCtuw3YAij8lEqbUS5VSdXqU8JnuJwVIn7bXuPDI+QWQ
         RDGWBz1sH2rCyNAHlFVfLB5PR/Ly+COSEDGEGfk4g5jXxE4njQ25P9jei94HHgSwIvBn
         TxAi4b7El6R126l6x4wJz9K8hvyOBTx60NEzCJWzjBMRW8CtgFaUY79L06s31oWXJqQj
         RxaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=GSpHPUG/BSS/ZauxmUvGhPKonrTo8nIVpj+x2HlJ4AQ=;
        b=YNNobMWWvnW5iQYZGlM3w98ZzIz/8RyibymCB+HZ+ulmJ7tfgN+i4bP4J3Gyi+4Saa
         ccmxSb7t23Ygl6nEgnd7DcRyjq0KAUux11TPop1nXHAIMDTK84tBZsdlWqTAKJXhGjby
         NHCISki/LpaJQYNbgpcrwruDjuOzFwRTv3PwhzqTZ3+0VgwYZSq8P8hj94co5e3fGuXN
         Bnb7EtE6NoUjFiexiN/knqfYWLbd40IlIaSW5jZQraHSXaTOcP2c4n0ump4P9VM815cd
         jxKnBNGES5ssAluXldgDjg/fxCUvVLyRjbSPgtLK0AYxoAVpP+BUBHb+BxWrWWjeKT3Z
         kCtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=k8qAnAzQ;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l5si762480ybb.1.2020.11.14.12.32.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Nov 2020 12:32:36 -0800 (PST)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.1.79])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9EDCA223EA;
	Sat, 14 Nov 2020 20:32:35 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20201106094820.30167-1-lukas.bulwahn@gmail.com>
References: <20201106094820.30167-1-lukas.bulwahn@gmail.com>
Subject: Re: [PATCH] clk: remove unneeded dead-store initialization
From: Stephen Boyd <sboyd@kernel.org>
Cc: Tom Rix <trix@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org, Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org
Date: Sat, 14 Nov 2020 12:32:34 -0800
Message-ID: <160538595432.60232.9813667976586248163@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=k8qAnAzQ;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting Lukas Bulwahn (2020-11-06 01:48:20)
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   drivers/clk/clk.c:423:19:
>   warning: Value stored to 'parent' during its initialization is never read
>   [clang-analyzer-deadcode.DeadStores]
>           struct clk_core *parent = ERR_PTR(-ENOENT);
>                            ^
> 
> Commit fc0c209c147f ("clk: Allow parents to be specified without string
> names") introduced clk_core_fill_parent_index() with this unneeded
> dead-store initialization.
> 
> So, simply remove this unneeded dead-store initialization to make
> clang-analyzer happy.
> 
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change to object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---

Applied to clk-next

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160538595432.60232.9813667976586248163%40swboyd.mtv.corp.google.com.
