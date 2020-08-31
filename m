Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX4HWX5AKGQELMRKDJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA58258137
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 20:39:28 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id i25sf4832199ooe.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 11:39:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598899167; cv=pass;
        d=google.com; s=arc-20160816;
        b=BQuAzU2wMynoi2UlvR0dyzenvKh8/8+Jxd/mWSLbUWHcsBtQjngsWzuENu68wnIoRL
         nKKaJKX8cB/F/IHYJKodgDyXb7kG/8iSXyTUlXty10dCROzy4N8ud/stW0gOLjm7kNSe
         modAe700T6TTWj74oKFIKLNRSmRwkPs2eHoUMCwVWN9cBC8HG40zlnCotSxqwT7qhYai
         0JdQfv2kS9yBdiJy+f1TAULQlPmfo48bCGUaUo7dDJrmWfh39UwqV9r+ysAj6siQu3q9
         ZV0VkD818ts95lRqSSSOQFPfsd4agkXO0u9u1bcE5EaQrxsqSbSIXqgxiB+Qn5B3BvQk
         2djw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aPfnhQmVldxMPYO0i7UqlL6erzpinFCtOXZEKckILak=;
        b=QFmvfJWDzN1h5+P7EAhigFsNOgU/MBQj8gJs5EwEHd3Jpi5h2S21CX0PzebcZ8q2N5
         lEZW4+xZYcoBbSCDXVbL4lgLb1B5aR48K5q9ZZ+kTaKsAfmRjKTOBT963WqPXZon6BQC
         QP0HJXeQX4FSCwd/l9N3Rts3IMCa5TC6EsCq+cFu2GCSaku1PH8HgvZIRsxf4CXvQh0h
         i5ZiYaXF8pHdbn1HJZW+vXHEijOo7K0QtE5Rr0vuzGa/YHzjP2DgdrAaSuZC/jcdZySC
         RVVivzXJ0XsH+V5AQTSWGeDqRrYS/Ov9arddb190W8MNdwxz4ESM6M/o3OsBB1aIr3tA
         3A2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ow6IQKyI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aPfnhQmVldxMPYO0i7UqlL6erzpinFCtOXZEKckILak=;
        b=ai/ihef8wcDA0do/jRzJizH5kpTcFSOZwpF0hLVq3kVXuGLkEqZdoV1VLInk8VUqba
         o2+kE5VDixXoXYSWDuJAlaqmpSb4vuskBTTofjJaU2XT74J+rPuPSLl5TsKs49K3PU1e
         Bw4Cg5Y5GZ11lkb4U5IS3f6JrRVCUBugGKQNzy9c7Q/ncwg0p1Mg+Mc5IKgVGxqykT5J
         HyfmrX4nPjD3xpjh4n5bJ1fM18Ijci6v+euQfkcG2Iy1HRo1RLLAZoMDPghu8LhpSWVp
         z6XAAbajxs4Xjqqi4ndboj0QHgG8LICk7QivTH0PLfiR7nprSiScttEodBDx06kXBKPV
         H61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aPfnhQmVldxMPYO0i7UqlL6erzpinFCtOXZEKckILak=;
        b=QnfoopKU0cDGO1lxXVtj2SvPvfk5rTK0bnQoCJ8cFJODaG48Kky145vNqcEFQ6pmqr
         74NYu/Xzkc5/CV2HEaCUqYkQLWLeWdt7g/Ghid8r+m2ZDnXre28mmYCV6S1s10so9TFy
         reurywlCJOtRccNc2XpcoGzzWNzA/FhWafsk6R7qmlE6O1oYXeCwNdz1TmiLVtIwht8E
         HOw1PPbD48GTI1akA/oPwz0jgoVkBI+QuNiF1YX5Wpy7e656XxyETgGULFmnrgp2NBno
         xQChY9aY2s76fw+wAmA/dfi07uEBSX81gkmg13Xv6nYXN63mTdkwuVBg9Kwv7bhhNyRv
         3r/g==
X-Gm-Message-State: AOAM533UNmCrdZ5hpidfLTml8TxI+pwtd69miqa/4eP1kJtEotc/gJiF
	Xnp0r/iSgygk6IPEg04AqI4=
X-Google-Smtp-Source: ABdhPJzybL8bGSVdCWvLGRj5+npGKRO/sU3qjpih7WVhO1axn4it0Excd/918Jm+ykUK9OHc3jk3sQ==
X-Received: by 2002:aca:c387:: with SMTP id t129mr392517oif.99.1598899167123;
        Mon, 31 Aug 2020 11:39:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:7cb:: with SMTP id f11ls464324oij.9.gmail; Mon, 31
 Aug 2020 11:39:26 -0700 (PDT)
X-Received: by 2002:aca:1711:: with SMTP id j17mr441149oii.152.1598899166788;
        Mon, 31 Aug 2020 11:39:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598899166; cv=none;
        d=google.com; s=arc-20160816;
        b=ixOwL4vN3ldl5UNvncWpLw39G0SRuiuEHZf6GgK3vym16RAjkFcDKbmuVfm+2K74Mr
         lJK5bJhC74Z1nspbcUw+aEGlO0dhlHW2Isgl+IUg2bDr6gIK74w+gP2h4luM5JHsCHGE
         aiqbBtI/fD8xIn9Ne5jlXFKY8MbyPPBGpdJ829mdCCDMLFARGUsc4ZET3I6K/jw4FDcW
         xyQs3fTB9Zun8ZdGod3L4cduDEeckinl39acVxPsmLD0G0dpbF+y07iG4GhjIK5i+R+0
         LBiqVNRN2AG/07PunrD7V7WkFpaRdx/mCa89CHZH2ma9TfvzpNLMNnzJ731ysMtHX15L
         npUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PJN4MJCj6Pjg+uwt4f3ml6KYFLqzh8Jk41iwpyLU3Mw=;
        b=BuO5fLAnK5EIZMpZK/bKuwM241mtY9+0ZwXFwN+pF0ChIAvJSMKrPlv9wbIEbwxtRf
         sAQGvNdT9rqHBzJvUi+3yZdarZLusgTc29k2JywcK4p1hlkrTeqlm9FQLQI44SviJjet
         SWc1uUy7mKgkK2DNidUOEvnMgu5NdEjJVc7VuXwhlmDxg7lzRRWv2tinzdbIl4RXMw8Q
         dXT29lNgAdjvrRigw3PIwrOj65ZUys8HcVLHPxGf0i2F5Gc6gLFRdYXIqxm4oLCHtA3y
         3B4vN6AVQBv/vkCnb1GqK4koyz1m/4YsXwSbvxz3T6dTXap8j6UXIpvIDc7VDWr/Kmj4
         kfVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ow6IQKyI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id d11si569226oti.2.2020.08.31.11.39.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 11:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id x18so2287040pll.6
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 11:39:26 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr600333pjb.101.1598899165891;
 Mon, 31 Aug 2020 11:39:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200829153515.3840-1-trix@redhat.com> <CAKwvOd=+X2AakX3kTYCvyug-MK_Y+atDbkDSRxA0pUfOatQ3mA@mail.gmail.com>
 <CAKwvOdnn6eMqJsL=aJ8n5dWWoHjXUL0LBSyVwZPGCKpkBSLHXA@mail.gmail.com> <5f9c8819-cd0f-6fb9-1b0f-b34f390ae65e@redhat.com>
In-Reply-To: <5f9c8819-cd0f-6fb9-1b0f-b34f390ae65e@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 11:39:14 -0700
Message-ID: <CAKwvOd=D=LWeSGYekOc9qs_aVOD_jpM2DVZO7=n_2L75Ad3Nxg@mail.gmail.com>
Subject: Re: [PATCH] soundwire: fix error handling
To: Tom Rix <trix@redhat.com>
Cc: Vinod Koul <vkoul@kernel.org>, yung-chuan.liao@linux.intel.com, 
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, 
	Sanyog Kale <sanyog.r.kale@intel.com>, Nathan Chancellor <natechancellor@gmail.com>, shreyas.nc@intel.com, 
	alsa-devel@alsa-project.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ow6IQKyI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Aug 31, 2020 at 11:20 AM Tom Rix <trix@redhat.com> wrote:
>
>
> On 8/31/20 10:48 AM, Nick Desaulniers wrote:
> > On Mon, Aug 31, 2020 at 10:47 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> >> On Sat, Aug 29, 2020 at 8:35 AM <trix@redhat.com> wrote:
> >>> From: Tom Rix <trix@redhat.com>
> >>>
> >>> clang static analysis flags this problem
> > Also, Tom, please use ./scripts/get_maintainer.pl on your patches to
> > CC our mailing list; clang-built-linux@googlegroups.com.
>
> gcc is still doing the building, so it this appropriate ?
>
> Asking because i have been sed-ing clang-build-linux out.

ah, right, you can use `--use-cc=clang` for analyses of builds with
clang.  It doesn't hurt to include our mailing list, since we'd like
to know if issues get reported with the analyzer itself.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DD%3DLWeSGYekOc9qs_aVOD_jpM2DVZO7%3Dn_2L75Ad3Nxg%40mail.gmail.com.
