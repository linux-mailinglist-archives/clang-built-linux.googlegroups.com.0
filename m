Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBN725SEAMGQEPR2GNGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 107013EE5BA
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 06:38:16 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id w25-20020a1cf6190000b0290252505ddd56sf4601386wmc.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 21:38:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629175095; cv=pass;
        d=google.com; s=arc-20160816;
        b=0td1VshASXd0KnDMNZ3TW18+eiZsKsQAJnNvebiTyOuVJv0gr+1KaFEKUEPKCcCwIi
         vH+nEaUp+/ZlotqNWorc+NjtFSyMy2nOyhrTd0HT0s4U19SRKWuex6DvRMmAMHUCIL2r
         Dj490tohC4i5i5RlkFDxbq3MAqFpJ+sPc+Q71AriMMmkUju8/0AsTrSbeK2RhGYm73eS
         N0kjoQhOsqtYGdAftet5TJHOeI/zcOZezXDyeaymVGS2RicxzHVrZd9Tp4Tcbdy4Jugb
         4Yl5aeu7EmHQPhPQieAP7udz8uJix64TxxchE58/p0ByyrlLxvz1MVlWgXkLoOX3VRhM
         NfEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=EK99lWtKeonx3ETLMV2CNSVxZnoRP/aQy2mOl6dOmVY=;
        b=IOBbk58+BF8oi5GFWXrggeIOMvj9QHVo0vfVWBvb/E2EtZZkKW7hlsTk/7ff2k4fs9
         pvrczHusKAYQegoosCm9SR6uL2B4KYwmiLkJAW7k4c+CVwP09KuPiQvL2q64MGtja6z+
         ++6q5MAFWFCdj4FGRZU6LSrvrzD1GYXLmFzg397rC6LvnrDkzJRXO7I0E+KtKU/GjHBs
         4VndbDVKGFRXKiEhpHIKe2ajIM5vlZCXzT7CvCto4/K2vkdJMV7/S3LV9bvIeQGmFK1r
         4SLLIL8D5CsTNMBx+gjd8Dcw7/7CbmPztWU6esg/HJu77QdSnU5fx+innL2DSJzcawJ3
         1qMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=eQWhMGR4;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EK99lWtKeonx3ETLMV2CNSVxZnoRP/aQy2mOl6dOmVY=;
        b=egAJ3V4o68DR2JuiukyU/vnESj2aSX+B39bizLEJTZ6Yo/n5CwB5EKY4c9AcMAH/Uo
         U48OxaTNbhruLvWs5KS668+AkGUSI/hE1TZ4qOWrqzoaqgoPVOOvmlmb0pEldQ1URrs/
         pm841IlRgqkPc9eMI0rsKCvrCfYkMAuwyYIIg4LJny7tYi9HMfuKJAzfmHdlsLiVrHbo
         7xKRT7NWvmQwZaj4898iE9hF5pebwerjHkhw2j4puLAkSuMLwOAjp0nm5X5OTIECSHBV
         HEDsxH0+sAn7xjJi/Blu/N03VZTbkoDF9Q7f0ZjJsZIFNfxIhDDi0kjmy6g77gODMc/U
         KVlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EK99lWtKeonx3ETLMV2CNSVxZnoRP/aQy2mOl6dOmVY=;
        b=Mgik1cQAMxsMdgERpo1XScPSW3gfcEbgjDSvCBHCNZkA4+WacZl4ZrMNFIfs4BDkEC
         usBQzJMG2ucFJoRxIveQoEwb0F3sko3xy7u/OxO4pr2x6BM+n6fQKoLcW08jDaOzyYog
         CnVFPTYH1/shz8MTGZFnHzltP/MyqDQpeYsQUKBtAN6uuDgi2yP1DThTh6hsuylfB4DQ
         gBADiaQIhqF7gTv3hOD0yrAnEYnXzkSBSYEvo3cQ7rrERyCJGXRjocqYVco5eHtNHGnG
         PZbwb8XOO+zj66ucBg1PbMKy7KPlpyItxEEUqmKVxKWP1DEKwqqnqSqFXcTHYLk74WU6
         7xeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319i02DXqcMVpjSDWmePe9e9dhxfFMNJ4z7f82U1IC0h4iTGbNW
	gGwIUg1DXVK5QyROzC3BT6s=
X-Google-Smtp-Source: ABdhPJyw4rH1GjdyiTG0J0KFU7Mc1k+vsd0Oxw/CY2USfzWqCio21FaiVRZIV6ow7l6myIOMzaPRgg==
X-Received: by 2002:adf:e30c:: with SMTP id b12mr1441274wrj.347.1629175095789;
        Mon, 16 Aug 2021 21:38:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e5c5:: with SMTP id a5ls882773wrn.0.gmail; Mon, 16 Aug
 2021 21:38:14 -0700 (PDT)
X-Received: by 2002:a5d:6552:: with SMTP id z18mr1527366wrv.380.1629175094816;
        Mon, 16 Aug 2021 21:38:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629175094; cv=none;
        d=google.com; s=arc-20160816;
        b=F3zyRCNWoLYWCjxk156vhl21N2jDeLxSMu7t/kN+BH9oDGdFuhLvZkx9LV6bL5qRou
         Obh5XYG9aF3/oGqgVy0re/e6eMwJqzVPkbWnhbkt79Fbihl9uuYfS7y2fJbkkaq/iwC5
         E4xQEsEuVHphYAPWsg3lPlSQpU8GnTSalq6ewwOqI5hmGc1fIWX5MStPYABZhVBB3iJ0
         9m+4Jiw8RxaHGgwyQIcncRCaVCgS6AI9eYtRJlENhJp6g6aF0uFUWY1DdVvA6YXgwbwb
         Skysfyhjkz64clxt0rkn7pz8rDHZ72dzWUdyUJbL1RisZ+ShF0LwJbfbqt0yus7geGLR
         rXpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Uq/bBAwcycy9ILdK1/MFcUjGkBg8B9u5tF1ftRi5Jvs=;
        b=X7eIuVRnE2kX7Cl1ZZeMRLcDUUj4rCjNsAQG98R1CwG8wWS7Ka8e1QiCV2tw/fVdMq
         CzOdoSEUmCBhWegIOUDNzVFsEnfsdDr79dmEWzmlsYV2GUglm3bl8yjQ9Q017/tJauI9
         vz9nUoDy0qx+ETQ09L5SMfZzcdJKDnrVDkhTg396DbXPALeVoMBFhvmzB/YidtHSpaSR
         lFmOxyvlucFSDELpY/AEUjZsY2XW4Pk1dPGT/c7a3M99dj3ki9liRU7PpWm2hIGRPpFq
         qT/g9MKdhQWW223PTisjYr66L9hb3nzUZXVi4L1q/zynFM9Er2/zjjOJb22GwawQNllZ
         I0KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=eQWhMGR4;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id z70si72663wmc.0.2021.08.16.21.38.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 21:38:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id u22so7742827lfq.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 21:38:14 -0700 (PDT)
X-Received: by 2002:a05:6512:33c4:: with SMTP id d4mr993762lfg.618.1629175094113;
        Mon, 16 Aug 2021 21:38:14 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com. [209.85.167.44])
        by smtp.gmail.com with ESMTPSA id f36sm76338lfv.238.2021.08.16.21.38.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 21:38:13 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id t9so38915606lfc.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 21:38:13 -0700 (PDT)
X-Received: by 2002:a05:6512:114c:: with SMTP id m12mr943646lfg.40.1629175093063;
 Mon, 16 Aug 2021 21:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210817005624.1455428-1-nathan@kernel.org> <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
In-Reply-To: <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 16 Aug 2021 18:37:57 -1000
X-Gmail-Original-Message-ID: <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
Message-ID: <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=eQWhMGR4;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, Aug 16, 2021 at 6:20 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Additionally, there should be some time for the CI systems to update
> their clang-14 builds, as the recent 0day report shows.

What?

No, the 0day report shows that the patch is buggy, and that the

  ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 140000; echo $$?),0)

clearly doesn't work at all, since the flag is enabled on those
systems with old clang versions.

Alternatively, the test works, but the 140000 version is not enough.

So no. This patch is simply completely wrong, and doesn't fix the
problem with Clang's buggy -Wimplicit-fallthrough flag.

              Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgFXOf9OUh3%2BvmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw%40mail.gmail.com.
