Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUXCT6EQMGQE2VQFBIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0F93F8F41
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 21:53:54 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id m10-20020a2e97ca000000b001bb5da17f7dsf455841ljj.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 12:53:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630007634; cv=pass;
        d=google.com; s=arc-20160816;
        b=mUZbXrDVVpwAFkfTKR5vbo+u1TjZn3gocXxz5yawUJ46w+Aozay97RA8xH86Ha2gwV
         5zhPbhiGxvzwb4t3L4yv/4oTHtTAZFwSv7jHsdwUQ7RtYdNQIot06ApmZ/9Cq5KVDtoU
         9alSDJfjt/+HS6w8z6by3SVwI8eNDhw9DkT8gD6GBdeBDeS0hXnHMbXBJ+s0ip7YNadT
         H/X1wKy4UA39H9ts2/++8Ik2jet/b3hUdUZioka66HGHiFEwUajv8NFbp+RQtJGMBPUB
         g+jB5E7N2CPJWXOe6F+rAfUX1B9BtytE/jRrbMEMOgsGcDzdK6Z/sQdqOtjB6EmMki7g
         EVtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pl9DIg+6/tSXexd92sMC0uSxPZd44uSFdlVve8knZNA=;
        b=Hb4323OjmW6CEaTe/coq76sqhPUpDIRR4cmIjxbsC5rSExqZrOXY2bPfub3QFjUL5A
         hyYm/jEaSRhf0Y8qlDXP3VcwmcXTHMSMGkJMp5dRL8+as7+OkAHSlrJaZkd2si5yGMG7
         ccPRVxcLRd8J35fCHv5jTAmXLNRxl9fu1m9ZkwSKOKSoXJr6PR6IYuW2clhmbyOi9jst
         SXQTYit9eSs81JzCH+YEuSHLUy7a1s4yDFEF+7+282Y0m56HE2G0vc5KTVP8vCuZiJCj
         bq+KNy+PrGGpTB/xdM0RSLmY3J60l6o3JL4uLLyJDNsITjjblRLfdZqJvRl31+jDegyQ
         12LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ug1SvVJK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pl9DIg+6/tSXexd92sMC0uSxPZd44uSFdlVve8knZNA=;
        b=i0qChE7kKdV4gw4a2DydmpsNmzak+6SzvWV3x2uvUGVA2p2yT0TNZESac2VsjPC691
         idrF2VfIgoctwFBVJ8l7opGerwWm6CUfdABjIr5ysJcoYDXZtAeAgdgSG/xYGBLfnQ/6
         e2bXB5aVNk1Ha7S60/G4J8PyQYK0vuMHAGv3Gv/Bbi71kY1ZuTFi6L+xxwgvB9f86Cg3
         Mcm40TzJFytSTwPLlJqlcdvhm6dONsErjGjsB77qEokZdyEBoCp0xrViX2khfQiOA7wj
         2eWic1lVCaEX8NviS2EIGpFKEb6/y3uvthbgmzM2U4WsVC+UibgqvSRKMMiH6OLTZbsc
         o8zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pl9DIg+6/tSXexd92sMC0uSxPZd44uSFdlVve8knZNA=;
        b=dtmPansDfRSGLClzGaxVEzNKeaFQbkXjMriQ906l9PM7MTcGSerRLfLeXfAHxV0a8A
         fuTOo4QeBNyKI4QL9ZkInR3alyGfr10mJqtuK7FayBgoSo8L9nn9qCqNl91MnogbtrwG
         eEVB7F+NQfaKE6oar6hqQbS/YlRuKvBmP3EssepznhHclLm5yPvi5mMgz+r8AJwvDtsM
         G1TFzQf4omXOvzaOcK/B2YTjIrXBo28b/rHYj0MVSDB9UGPwTFw2hmpfLdLfugMFEjo+
         gzoXdbfaJiArS6L+YlzDwt9odk0J3I4qejMGNLN86EUbl6h35ndbv3n5oA+rDDhhWpzg
         wfBg==
X-Gm-Message-State: AOAM533BuoHN8ob8/KKq9/xLwnS8aC/5p0PvVXrhydhaRZfbsFLrFNVI
	Y3otPSZY0DB4FNnqs0GL1jM=
X-Google-Smtp-Source: ABdhPJwQXiCGmhTRBPudHz+CaJ7PkHD9jwhMo++ae0eqAOwrUnhmQ81xRuIWa+T0QBAphbfa7mVoDA==
X-Received: by 2002:a2e:8185:: with SMTP id e5mr4618356ljg.31.1630007634469;
        Thu, 26 Aug 2021 12:53:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:ea5:: with SMTP id bi37ls988705lfb.3.gmail; Thu, 26
 Aug 2021 12:53:53 -0700 (PDT)
X-Received: by 2002:a05:6512:11c5:: with SMTP id h5mr3884125lfr.557.1630007633468;
        Thu, 26 Aug 2021 12:53:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630007633; cv=none;
        d=google.com; s=arc-20160816;
        b=Il7mmsc+mEhjNeeRbgCAOdO0WwIutRu02xwuhpINFe0NJYrM+2ru2S32l12WZrO74R
         dTES5T4bN3K4aLFsvqa48vP+d5scopbEkScWUwGO3W/bd00lav8aujiZU2JnIt76OQDE
         iknxFbjaUjQIfjIK0hguu069rJS0jOuHYtY80ZISoD2ByllQc8TjJhULuWYXpRc9DnTG
         CUczWK5SeDNb7fJIiBOg/kH1ZKZHk8Q5Ho0lTJCQL4igxaEEBsdqUxCOGS7a5EzQYhVA
         54ShBt9w9s0XR0ULfI00/IpjC1IaNBxBjk4oRh6sZWe8W2tduJ9+BZ5TDHwKMxpgFB18
         vXHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K5GLqlGQxMU4ggVzRoxzJDIkcNSQNXTpS8EPAZVdN40=;
        b=t5Oc3dvo3UIOh7lgbkg3uM2q+UhPBKU1tWh1sLba9GfhBnlTuueYbeb+sM7oh3Z8i1
         LZTbMM9lgkv7KzXWvpYJIxfBXveT8m51ZWSq9HLXyArHNe8o+wZH1Y4LOqrKHM6LbNMP
         0jwPwXjzLhglWKeq1zZmG6JnRk0A8ulrPqrDhYYmcoZg+ug/27fgNE6SYJLEMxtEp+vI
         bTaFktADDo21iG0xFH25YH8pcTPMFgWZOhw+Zp55lZUGp4+SbkPXN94/+/pmSV1WAH/o
         F6mjHtwoPhniQJzDCpwpqdCmP7iTPC9nnwAWizuk5y4NhVeMTsRWkIt34oKXdooajcmh
         ldfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ug1SvVJK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id t9si232733lfk.1.2021.08.26.12.53.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 12:53:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id d16so7226237ljq.4
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 12:53:53 -0700 (PDT)
X-Received: by 2002:a05:651c:83:: with SMTP id 3mr4557771ljq.341.1630007632601;
 Thu, 26 Aug 2021 12:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRSSEx4G+ok+gcQCk4EWxAy2opjEcNM-4b7=9jSOcueXgtHCA@mail.gmail.com>
In-Reply-To: <CAHRSSEx4G+ok+gcQCk4EWxAy2opjEcNM-4b7=9jSOcueXgtHCA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Aug 2021 12:53:41 -0700
Message-ID: <CAKwvOd=sZzkvvOj7AkYcgTG=Q7FkmWGkbuCA7PGso8vZuS5euQ@mail.gmail.com>
Subject: Fwd: [android-kernel] Register for Linux Plumbers Conference
To: clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev
Cc: "Jose E. Marchesi" <jemarch@gnu.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ug1SvVJK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

As a heads up registration is now open. If you need help covering the
cost, ping me privately and we'll make sure no one gets left behind.

---------- Forwarded message ---------
From: Todd Kjos <tkjos@google.com>
Date: Wed, Aug 18, 2021 at 4:24 PM
Subject: [android-kernel] Register for Linux Plumbers Conference
To:


Even though Linux Plumbers is virtual, you still need to register to
join the live sessions. The registration fee is $50. Register here:
https://linuxplumbersconf.org/event/11/page/112-attend

--



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DsZzkvvOj7AkYcgTG%3DQ7FkmWGkbuCA7PGso8vZuS5euQ%40mail.gmail.com.
