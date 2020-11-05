Return-Path: <clang-built-linux+bncBDRZHGH43YJRBXMSR36QKGQERPDVNKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0AF2A76D0
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 06:10:54 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id r13sf228902ooi.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 21:10:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604553053; cv=pass;
        d=google.com; s=arc-20160816;
        b=lDXKc/zlsp7TdAd1JCfGBN+fMX9M0BghoocT9QqpsAqgqkvocMczUng43ijG2Zdtxy
         MGpgiUx+DX8laGVNJAs75T7Gv9OQSOBzRBl8yA/QWzEyuyYkxfJCNCfBUDB+ooGa52K5
         PUIOwIDSRme9fNoW+xT/7sh/tZWD4SbHCR7kvqzFKn+FmDuyusRsabTNTkkPBiJrk8/9
         gWq6aw8kaSm1I3hf5VhzgMdn4wUOOngToU+y3L+UDTKsc3LEOH3u/b8WMDLNcivxexjK
         pZMzPhKYP5E7V0I5DtdZmjuBY5P9Z2PX+5k2LKEKmzu5vwKXoRokPUPTvxN2ifePE9GV
         +nZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=sbPKykV/v93/SexlLL6+LdU5Jwc6F8vyuYPkrt31Mm8=;
        b=Rr4CmENdOLtqlSJReg+u6JXiI8byutj8W+8rSaZLdTrerfNw6wTr9hP84OIrj0LoEe
         hgPCVXLskbSuyBukyGUyv5ij3PHhKDT52mSv51qgWDHx3SWltmOXvuqWWGDzUrYm9r2f
         xL6TAMz9oA7/cuKXgsW1rDaG1+ToRx6Mcp7j2a5zbn2KWYS2aSDJgaXtYvecLKIeLRxw
         NQFwvK6y3RNyZXaYtRKy7KrAunufGWRUhpR2iy/gfPQXsbleWELDjjqWZN2lrzGQLnu6
         b2mDePJ1TW5DMRXhTKWzJ/1E5GNclgwccTm4nPowtcAGd4YE+D4NiIExy/74yyI3v3nE
         rxiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lys00XBl;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sbPKykV/v93/SexlLL6+LdU5Jwc6F8vyuYPkrt31Mm8=;
        b=TqecjL7sOwGwu3YUc5/LW2h9d4r+HeXLtZ6Yt7R+0OhHacFmcKGlnFDRo3FbBtuPKb
         becPqaLSQ/T2mBF2pgUQ7sKKvCz9QyKQ8zsp1+RMNmjSu85D7GRRBzba2Wz98lNeGzzr
         ixijNMke1Lht/6cPtw+AvD5zJ0nA/18Z/lPET25O0vHK26mOcxlVt2uSSec3gmzPk5Wd
         JO9PuBmO2uaDjZZ/JecolYHNnEMpY7X8ejOE7s5Z/wgnUp+NiRQZSWsozzmvrq86bJom
         3cVhao2sxu0WatygWTsc+v9Z6Gq2Zd2ihfrzPoiGwVSsoGXfWOvxOj6wkK8rVdH5xVtT
         iiDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sbPKykV/v93/SexlLL6+LdU5Jwc6F8vyuYPkrt31Mm8=;
        b=QWug/CaqQK03UsFpGjqFHJccEiTHcoSTqJ/8Wvpx6OI2psU0MnHt2CFdRPE5dDxx7G
         1+Q52gj8U8CLI8pq0rq/BZIoiYEX9lmU98iFO7MBHgf8q5PCwqSG9yKV2W/h9K04BXFa
         IypRyy9qAoof0GPsKyQHPpzKp2FMchEtR13/4idnKt4GQEB80xzJCksnYOuWuAxrEQ6x
         M662m2gQKoGYK9YpcK8zc9peqDe+Za5TsVSXoIp1EMDZD2pah2tgES7DU8bh5HAnQ/34
         Wj0lbp/8Ze65zCPFNKQvQRzEzamfO30e3XMfKUrpJyZ59GUnyeUGHPBTMmX/vZsvTsgM
         DClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sbPKykV/v93/SexlLL6+LdU5Jwc6F8vyuYPkrt31Mm8=;
        b=YybklxY1a3eIEdr+DJZ/nD0nBDcQ2r6X98eJ4itHRc46CNy3ctaNY67TgIiuzA6CBL
         Wh31iUym2vUHgk27h3XM9tKjUN6AoofQmmqkO0cx5vhdj2ZbieWtW9UuwpAv+nP1jnYM
         FPYe4/TplovDiCSRP+vR0WTI94sd2K6ECdXCm14dzNIZX2tRQTZBIiB1xAeo4uhKigW0
         b/r5mYwzydsPMTAZAP480YliHr6ewkyxeLSHivZVzFuRnw7LSruMWcWhu+8+09BqC/AD
         MzZfVqbw8S2Q3K77ggVRt4k736cNmDstQ0eRtWWCZTjLDzKf24WJ2OOLUG28e0v6bEEe
         /BmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RcQW1UJfIUHj/bsOlJZ1NieDZ2XOs8KLut9PS2/CJa9nFAAaO
	S9q/cW4y6kJ1Uh2A7SRvHnM=
X-Google-Smtp-Source: ABdhPJy9VdV9ey1yZAXJoIPl4cwSb1VjXfRNiKz5Ujh53Nd3VYY/EXTxrd2v5Jhln4+MgpDq+NMK8A==
X-Received: by 2002:a4a:b28b:: with SMTP id k11mr600388ooo.54.1604553053648;
        Wed, 04 Nov 2020 21:10:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c48:: with SMTP id g8ls122114otq.8.gmail; Wed, 04 Nov
 2020 21:10:53 -0800 (PST)
X-Received: by 2002:a9d:41:: with SMTP id 59mr558704ota.216.1604553053285;
        Wed, 04 Nov 2020 21:10:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604553053; cv=none;
        d=google.com; s=arc-20160816;
        b=P6Y/a4EfX/87qHI+MHlqnhwJvCq0c8mOPsX3zs6BQ6FNqarKxadKrpf4i3tz83inPj
         uTs6obKV8ZARTLyI6lXPknlm7XIKEQ/7UzsjQXN6COfZgISz1Hc/z5LGbYHdX37GzXHm
         0+t3Paxo2nlX8bCn+yD15IKh6qTphX97VCEw4JZpxDWHHhJ/VrkQAqSzzoUSgyuE068r
         rN3ZkL4N9k+gvAiOALMi25fKuL2xfQFqw5pKHzNbR0wKJU3oD674goSqyDeSYk+lGm1g
         ni05mjmLRXDPmeWqMOpaM21gZLKwUyutloRAKY0EmRtIwa65oz3F19sCv7Yo2qo3CXWM
         GwaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VgtCPg2jy1MtwCb8XVzsxk291jfwZdq4PtbmHPg7mS8=;
        b=rSIwoTx0szJbapxbqv3vsrzuRqSA27KLvljKDryjJyApv2aSYrK8N1cYv+xYD95tX2
         SKONfuKNU731aKT8uZBWmK1xDU2lT3NG4NMcw9BXztwJPoCBppdJZ+vKpA8UrSHYNeCI
         ZKyxP7A6TuVKsK8KlGPcO93igFbwkv4bklbvNThN5uiPLrbK+GRi4NDoQqiqo6JfaaeV
         OUg5+dj1RK7CKK1spFYPTwBOninlM6ZV8m2lkCq2iZfeT8u/3rdaBoqYEm7W77qml7+4
         fd3+hF5+lGw34MM2HzHpKxtE1L5IclG6vOS06Lp5BJzCYfW3z5JOKQzLmd0VTcZ+dxaU
         yDQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lys00XBl;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id r6si67512oth.4.2020.11.04.21.10.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 21:10:53 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id i186so234137ybc.11
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 21:10:53 -0800 (PST)
X-Received: by 2002:a25:ae97:: with SMTP id b23mr1352858ybj.26.1604553052996;
 Wed, 04 Nov 2020 21:10:52 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
 <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com>
 <CANiq72n0FFfH6Uag5yai=tSzzOgVSLpzu5gyUr40d6Gb8GzZpA@mail.gmail.com> <CAKwvOd=eHpmKy4mQKpGA2qAZr4Ue_K+Y-1HNe07dxar7dHy0gQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=eHpmKy4mQKpGA2qAZr4Ue_K+Y-1HNe07dxar7dHy0gQ@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 5 Nov 2020 06:10:42 +0100
Message-ID: <CANiq72m87PC6ydvoQv6eAh1-MkNMYjGnWPcVtVRradWsHfr2fg@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Joe Perches <joe@perches.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lys00XBl;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Nov 5, 2020 at 1:33 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Yeah, that's annoying. Why don't you send me a patch that downgrades
> it from hard error to polite warning (in case someone made a typo),
> and I'll review it?

Sure!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m87PC6ydvoQv6eAh1-MkNMYjGnWPcVtVRradWsHfr2fg%40mail.gmail.com.
