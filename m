Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBQ6MTSDAMGQE5DRYQPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E33A13A5F62
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 11:50:07 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id g12-20020a056e021a2cb02901dfc46878d8sf7625010ile.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 02:50:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623664206; cv=pass;
        d=google.com; s=arc-20160816;
        b=lJcSwBXwoMA1T4y5I3w6zmXK1ZjQeghBstZ8wFGJj4vRrsdl9lvg6UBsWA+r+VrYwq
         uuBzrkSj7GP/HpnUsZqYqlTumpJYN6zJ0gNj794A/ObrQQzauiYvsWDKy2hnvSp1yZqr
         xgFp7B3mmBVXNWt1HQZYF2S5aYU9S/jfPT5iRgZbodjMvD/4Jtpn14Fm5rN+PhnDLfVi
         u1tfl3P5HRDAiMkceFVJo11T3qHVzt+5g+5ffqYizl3QZXxIqAT0fPrtS5kc2TzAihfD
         62k7MWLortqo6GJt3nfuoQfi6j2npGM0tQve7iTrgm+BRBGsP/mHhVhk8C7oAekhOzOH
         jXAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ttH0uOtbYCRuJFU/7LxEzGuctabM06NU80lQuwSEJJo=;
        b=TjEiXkxw2/Z+fseu2YgW7uYYcxPQUgtNI3dUckNVz9Sv3JPc2LV9vAJN6poVfJxWG4
         t371EHjyya8PpJz0ClysiICnJedEjRtrkU4loc9Vb0dCQ+zYhVr1oIKeffLGiQFjfSYF
         MmUQjqpkF94T2MkT/h25M3qM78C06QIcnsjS7ztRfFjaqCOLRygHN0mNmFJuPrmr3Ldf
         Il7PusBepjAscvrj51cD1B64XdErl322xyv65DVZF2qrTHbfURdKC3MWjcVWPQyqG/A3
         ZtWnB3PjckiD8KXv4JiAyBluuerFLue6Erd1WTBErX6SMuDJZb7n+cSWFytaddp2uLTo
         WYcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ttH0uOtbYCRuJFU/7LxEzGuctabM06NU80lQuwSEJJo=;
        b=rQ0BJTTJhUf0SOnUA9SYGFYOwyMLCqDz1IyhVNxeTzK8xxckwsvrA6D0WIBEKdPK58
         cnbZHDjGROLO/TClotGrA4EZexE0y/c+whA+juL13paAOXf1Ps+4HaHuYGfUwueaCZZB
         fYJYATH0QIhaADXjUgjJ0JEID/gyK7/qkK7nW8kXIFMNw3pBKMmjfDKoRDEll8auNvL9
         xzjzvQEaoY1qER2pW5ZnqfEA11z5xLGuBnOyxg63q9Gr46W9hzymXyctIzeSj6KLWVr0
         SgawXuSMRTm3Qg/ZptgZ1L+h6T5zfKmRqJ/F7fMZAzXUkpRLDM+hbR3Zbf8Sr3EhejN1
         pEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ttH0uOtbYCRuJFU/7LxEzGuctabM06NU80lQuwSEJJo=;
        b=RUBFLZhRNJeZqd7bvUOHJaSbBRyImD/Wr+YxwgvbLHyy5P1YQqgWt046oq6pd/PZZB
         E+Xf3N9uFY4ZNEY5cprH3IAmw817ElLbdkct4l2jCHWeFMUju7ieLZPgHUAobAa15d70
         6fCacTLSpknQHQrmERl5RZ35EMf4gz8c23UCH5gdt8PVEMYAs8mCs67F9dsfQgVUozH4
         8Nn7KjPRziIq97iJ+XjBEa2kXygsxABXyfEUX/Dobmah3sD5ej3y/9i3k2wA0TifbLSl
         xUUL2P7vkPD6/n7fKugZnmh3gHO1LDwQ9D1pYHnAYEB4qHBjVtcCENw8W86LbnTHAHPh
         TAJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SLAvhBUnaJX+WoDAVKpI87B/pILxD41q+EAAdbglQvMrvD9WP
	AmpujLK7AEKAe0Uv4DUmAcM=
X-Google-Smtp-Source: ABdhPJwjynKBptH4PLB/6pVlSaxtqjLRUCT6D9AdeKm4BOqBl46C44SIg6j1mQsfbh9lLCVdKBbUzA==
X-Received: by 2002:ac8:544:: with SMTP id c4mr15583577qth.299.1623664195331;
        Mon, 14 Jun 2021 02:49:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5ce9:: with SMTP id iv9ls5504437qvb.1.gmail; Mon, 14 Jun
 2021 02:49:54 -0700 (PDT)
X-Received: by 2002:a05:6214:170:: with SMTP id y16mr17673980qvs.57.1623664194763;
        Mon, 14 Jun 2021 02:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623664194; cv=none;
        d=google.com; s=arc-20160816;
        b=gXy0vemBvelddOIHv0bxmyuONf/Tv9N1eSDRJxgoqV7f8Omi41zWdnH8g/7qML73xq
         fxzoJdcATHB+FvTYz6+tm+2lQH9SFaAj66axkbI7f8/HwgfvsYo8GEMo0mwrqSbNN8yp
         r/SD4Lvn51qFaTqNyS5utTnMgbSXkSfTWrqm6QChbFwbn4P0LzXWB/YW9G4KRJ20qi02
         QR6dMcnp/Vea2v+kiHD07Gq/rkFWciRiwxk64N28EHp8zwgPsfC8aXO1BjxOL5Io/aAl
         JB0DH3I0YyWbZnOXtcWTToKBlxCJuFk9PTqhMft5TLXe9ok+4FjjpgwDuO0+Y1jg/OId
         Qtqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=JYfBcA7tD7nZkvk87liboDEMbTb3qBdWXEjfQBWJ4TY=;
        b=DeRZ+VOe1St1/j/Ni0Xvoo7b1L0kcdCQqtraVRN0YNWyJgrj4vAgGVXV2Ax6Tx+gdd
         lEAn+EigDcSho4tIzR0v0tv435s3bv8eOtjiflZJCTOTRfWPmnBuS/kJo7yRnsC6tikr
         CGVlWnawp+G/eQM0y+OL7W0F/LK8UvlqoSlq8PPz7/X3U3qjvA2KNHBlJV/jyz5W8NO+
         BLQO/2J0/bK4vFlhO02OAEUeNoH0m4SogLtR5yp1DpnPou9FignpFG0w9PriptmjY12t
         OwMdxIDFnNtTw+UEiSbZ1sfiVc+uwiJuqoatWZkOgbudr75rWqAZPEb1ae8vAIGn+8jI
         kFBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id j3si1436098qki.7.2021.06.14.02.49.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Jun 2021 02:49:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 0c74c225e2fe454b810425872e916ca6-20210614
X-UUID: 0c74c225e2fe454b810425872e916ca6-20210614
Received: from mtkexhb01.mediatek.inc [(172.21.101.102)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 7990773; Mon, 14 Jun 2021 17:49:50 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 14 Jun 2021 17:49:48 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 14 Jun 2021 17:49:48 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <lecopzer.chen@mediatek.com>
CC: <clang-built-linux@googlegroups.com>, <keescook@chromium.org>,
	<linux-kbuild@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<masahiroy@kernel.org>, <michal.lkml@markovi.net>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <samitolvanen@google.com>,
	<yj.chiang@mediatek.com>
Subject: RE: [PATCH] kbuild: lto: fix module versionings mismatch in incremental build
Date: Mon, 14 Jun 2021 17:49:48 +0800
Message-ID: <20210614094948.30023-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210614055109.28774-1-lecopzer.chen@mediatek.com>
References: <20210614055109.28774-1-lecopzer.chen@mediatek.com>
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

Andy Lavr <andy.lavr@gmail.com> point out there is a build failed for

M]  drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifog84.o

make[6]: /bin/sh: Argument list too long

^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

make[6]: *** [/scripts/Makefile.build:463: 
drivers/gpu/drm/amd/amdgpu/amdgpu.o] Error 127
make[5]: *** [/scripts/Makefile.build:529: drivers/gpu/drm/amd/amdgpu] 
Error 2
make[5]: *** Waiting for unfinished jobs....
   CC [M]  drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifogf100.o


I'll fix it in patch v2.

thanks Andy

Lecopzer

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210614094948.30023-1-lecopzer.chen%40mediatek.com.
