Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBOMQUGDAMGQETWCLQTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BA73A7712
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 08:27:06 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id u19-20020a6be3130000b02904a77f550cbcsf25515394ioc.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 23:27:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623738426; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZyW6D0AZV0u1dyt8UuC5AJTwxA7eNQ9KHblsyJoGcNW/I9HTuTsfW3+EWhhgltxXM
         6W/RkqLjjwvwxWjeQcc2dJUN7wJle4jZ+g6ag/3bNiM7U86uQ0x87uMYMifvsrcfUYNc
         aGC/cXIwE7409C2Xq9IECVwwwVRxgOjDOsQ721yl/G/PX3Ryvjvxv9er8Inc8eYfaNCx
         m4fPEehHodhM3Ni5+NPOB487Ei1m8hEb6Yuj1arrqkR6p2X8b4sG8SgwDZdwjcwQEwDp
         J5UhicGqrEDDoEFoPrndl2Pw8/DrtHY5nxmeYOwtfMSFWcH1+LxHkmYbSdjf9FYhETMT
         cT6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zdGBLDhAbrYNFTAtCpzHGmlo6xPc3Ifr9oGWV5Dtzbw=;
        b=oDjEQeg8HDvIx1P567ZjC2SocFH7YTeRPYmuS54cDjK57AHCp/8oCLXrTebj6I7MoA
         o0iKwfMe6/ObSXkcgbTBRQBZl4Rr3EkEksa953OZCVjbHvOy7DZD7m9losrwE48YYiv7
         Dg5FVrTc2SrmmU0Zm+OudU9pUn6ibJaFwFbjHb0J8Jjp5PP9DvHo94SBQzGUDyur3SW/
         FAIetLs5KNDyWA2kciOyrzcmKaYb3fqW8JjnFJgMel2MDzXaugGt5V8ri5A9ly14AbyB
         6G8dspZa+YcqzXlrqhISfRInNYmhzqmKXUW1ABv7NjiyGu3NH2BuvJRSHMCmwlvPU0P+
         SewA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zdGBLDhAbrYNFTAtCpzHGmlo6xPc3Ifr9oGWV5Dtzbw=;
        b=diD7ccTQFzq95viIxuDJvDP7F20hXB85FTTpEbReapnnO3GPGBesFzb7M7LB5ErnYd
         hV5iVlNZ1poiO/7lv+r3QkXtQuPx5FE+2TuWfsP1NR3xf3KobkyjlGc07vcefkxTRXjs
         UZ9u0dfaVeTYM1QkPDiaOXzCeZXxdAl7HmtEk/Yl+agUt/1/ghevIeQkD1zQwTeQP+3i
         HsbrlQPNvFhZmVhPdodxaNIpdsWpoRnG/7YKbZus6dHeOzXcSA5+txSN3wIVTB77gyhz
         upC/gjuxYSiIha/76v9IeI/GW/Q/7L0hrw1kRWK72xcfWQietLr9haFLOKW8DMO1VSAR
         ewqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zdGBLDhAbrYNFTAtCpzHGmlo6xPc3Ifr9oGWV5Dtzbw=;
        b=kv49+XW9ux/bPavphACVTwr348I3Z3k3stCyvrMY0qfyCmrDKVpzBkwpukk+h5ZYJZ
         LFM9qm8/NT17Xk8kENaJsyE1rlJMxHR4RuDnjt3q/eUSmga1UNPGuSDLYAeAoH6U98nP
         zw7cYMGvu00BcSY/aqxmIYYXUslFg01TfvKMOAWaWeayLYyxnbaZFYgE9uFhfZaAdLzu
         zCaATEARx1itwBfG3895r9uh81elEWo3jbFntbyg3aie9faYACVwAan5tJY08VUQXZca
         z+lMxD7TmIsKa3iYWRO3la8eUFP+3cvW4OlxSQdXJgzwgpG+Jglqe9QrZcG3N3dq1+p0
         HTGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iA/bqu89E1uPW6+M7iL5hUvdaeVxgNNhrg/nLqryUBGf39IsZ
	OiJN0jceFJCpcUvpQ/7gp1w=
X-Google-Smtp-Source: ABdhPJygrpz5Evhp63VRKm8iD0ekUi4g98JBwbiXEcrhyjyftbS5DGMlN7QqUy0UL8yLjbIZl/WpBg==
X-Received: by 2002:a05:6e02:12c4:: with SMTP id i4mr16884777ilm.141.1623738426020;
        Mon, 14 Jun 2021 23:27:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:15c7:: with SMTP id f7ls3364387iow.10.gmail; Mon,
 14 Jun 2021 23:27:05 -0700 (PDT)
X-Received: by 2002:a5d:9694:: with SMTP id m20mr1523814ion.185.1623738425647;
        Mon, 14 Jun 2021 23:27:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623738425; cv=none;
        d=google.com; s=arc-20160816;
        b=vZMma1S9/GCx2AXtutve3GcW50f2Ys2u9AJMyy+6tElDQ/HqutBicED86tFCHwEHqC
         nQmbGwfcH37NcUSq7RxE8MFnkrppQx2ErYbY9dyT2G3VT7/3jXK0Qb9Yxd/lMVhGoTe5
         wfGcRo3e4fmQSesubjzLuxyha+ahLea1OTpQBzaAgTHEbKnD6/jVUOpen3Wj8C0+1sDD
         9hfQq2MdKJrnk/45ZcFanq/CmEtKQN4do08nNqpWeYuAVxTOMmCxb2nt+2PaQldVCjOf
         E3sn10jBCEHnffeC7I751yJMmCcJk1kfQVsFJWe9d3XqsHEVk+wvGeaHVO+awqpvBJuI
         0sKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=h86XvEo//hkv2s7D873Ta+hGzcQhPBzGwR/Qd6upzrk=;
        b=sIu/w+4HYWIYmzoao5b+zfukGtRCRhTZkiojOFP4jhM6do7JrHIgmrarX5UVDkJgBr
         i/1zKzCgZX9wTj/quEU/3AifXL34V3kCQJZT2Br67ln8PfFtJsnN194/MR03ury64BwN
         uMFnYcaD0rUhir86KITdzzu73ei17V+fu90Czk2ftAJcTY4nAQtJZaV5QZDmbfcBnsvo
         2StsQc5btNckx3jNSjL3IJOe/jvcU4K8OX3KYAk1wLLIzUkSXmmiFSJguHxjG2yyCG3z
         YiNmQYXbc61xtC2eTqlo09PNEOJ4nscT3NsMawBf5q93U++1MDbP1ENLWW2up92+C0aZ
         w29g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id v7si103979ilu.1.2021.06.14.23.27.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Jun 2021 23:27:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: eec2f9026ec84ccfb2496baa8727fbfe-20210615
X-UUID: eec2f9026ec84ccfb2496baa8727fbfe-20210615
Received: from mtkcas11.mediatek.inc [(172.21.101.40)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1795548193; Tue, 15 Jun 2021 14:27:00 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 15 Jun 2021 14:26:58 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 15 Jun 2021 14:26:58 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>
CC: <clang-built-linux@googlegroups.com>, <lecopzer.chen@mediatek.com>,
	<linux-kbuild@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<masahiroy@kernel.org>, <michal.lkml@markovi.net>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <samitolvanen@google.com>,
	<yj.chiang@mediatek.com>
Subject: Re: [PATCH] kbuild: lto: fix module versionings mismatch in incremental build
Date: Tue, 15 Jun 2021 14:26:58 +0800
Message-ID: <20210615062658.21633-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <202106141554.A2D26986A@keescook>
References: <202106141554.A2D26986A@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

> On Mon, Jun 14, 2021 at 01:51:09PM +0800, Lecopzer Chen wrote:
> > When building modules(CONFIG_...=m), I found some of module versions
> > are incorrect and set to 0.
> > This can be found in build log for first clean build which shows
> > 
> > WARNING: EXPORT symbol "XXXX" [drivers/XXX/XXX.ko] version generation failed, symbol will not be versioned.
> 
> I'm doing this, and I don't see the problem:
> 
> $ make LLVM=1 LLVM_IAS=1 distclean
> $ make LLVM=1 LLVM_IAS=1 menuconfig
> 	*enable LTO*
> 	*enable a module*
> $ make LLVM=1 LLVM_IAS=1 -j...
> 
> What series of commands (and .config) shows this for you?

Hi Kees,

Thanks for you checking.

After double checking in clean android kernel build, this causes by
make version.
(I have build failed in Linux LTO,
seems it's not well support in contract to android?)

I knew Google has LTO first in Android and upstream later, and most code
are same as upstream, so the env here I use Android common kernel for
easily testing.


Test env is android common kernel: android12-5.4 [1] with its latest code
and it builds from build.sh[2]

$ BUILD_CONFIG=common/build.config.gki.aarch64 build/build.sh
+ make O=.... LLVM=1 LLVM_IAS=1 DEPMOD=depmod -j12 Image modules Image.lz4

With make set to v3.81, this can be reproduced with CONFIG_TEE=m.
With version >= 4.2 this is not reproducible.


Our build env default set make to v3.81, although Android uses hermetic build
and v4.3 now, but Linux doesn't have such things.

Maybe we can add build time checking or comment before CFI module versioning
build rules to avoid anyone struggling with this again:).

[1] https://android.googlesource.com/kernel/common/+/refs/heads/android12-5.4
[2] https://android.googlesource.com/kernel/build/+/refs/heads/master

thanks,
Lecopzer


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210615062658.21633-1-lecopzer.chen%40mediatek.com.
