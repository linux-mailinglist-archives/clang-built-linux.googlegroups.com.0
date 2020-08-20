Return-Path: <clang-built-linux+bncBD52NTUX6UGBB7M37H4QKGQEQDAZ4CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F10E24B505
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 12:18:38 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id t3sf490483wrr.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 03:18:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597918718; cv=pass;
        d=google.com; s=arc-20160816;
        b=m21O7p7QMEWGVh+e3eiNBbNKJcOK3pUz23lNvJ9llXLruKrWdRinWM3W6OkI2B9LeR
         647JxakEM24l73qmXL2c1YC6YHLY1X5YEn4JQMcWNvk6D1VaGCAIhksetObuhVeyzO6t
         ftF0OQI9BXY5Jy4IpG6giVsOnCZ6HN2gZaZa1SEAXnkmhypUZPHf8VJMdgBAj3bewIUl
         QqwSme4q5SdkpWh7YF3Rw7OZSTkXqwpA39IgTsuScEJcBYSUAgeaIyD39fBWHvhe7jbW
         1YqxkfkPNo4toJB/xxbvWREDKcunag4BVOqOkJn9hcvaKqrgCIy9+cxzHrKA+uQiQION
         iYvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=3cihgokTfOoJ210Khd11e5neEC89JZYfVRsVYIb2dfM=;
        b=T7cRJSfaITWgcQB/ZzhIYGVGwQg4gtKzaFt4xbIs5qP096Oy2ReAlPNkvXD/aY8Ff0
         NWn1sbr9+BDIDKL0//b/pVIhIjMW4dkuzaYwJs+BdSmTUV8rThbEW/0hJpxEwmvIWoWe
         cT9bKe70A9Lxjhs3bCWPmpNmgQSyqA7fZ8YbJYkqvKg0ruz0RfpCPzson+80QPgRwioG
         RRYWqLektZe6+gFPi21F6Sl/pd68OmUWhbolyImlGQ1uv5u+zF03PdYMhhyb+/wzIiCK
         etl7pNCl2YFGkx8DWHJPjaB9Q8iJSk5fuKHUd0lB0VDabGcXefRNbgQZLNaD5nJqZxOQ
         IDLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3cihgokTfOoJ210Khd11e5neEC89JZYfVRsVYIb2dfM=;
        b=HmTBnFP1sH7B7AEIXtCEovG3Wt956XsYKCJyEi2ayej4mNyfwJ/9pKUHUOQWpPJ9mo
         iEt8RLBGCCeBpEbLYLT2UVVAJjhhUFOk9Ax1xPR7sQS4pY5fG1hZiyGveKpUs3iIrIIj
         c3+fHQH+mjkRFU8cKNXOfR2FGcr55P13zwlgt98fXUEM1I49RJwc7pG8sDRqimu9rKPq
         0RuirAjXl6dgW7Ion8v+nt8+kDs7CbS3dPT85vDq0txCUz6Mg0qgVDXfLCe50pz329hC
         ZyaRyztY2fONNOdTrU99IJczhxg8aYz+znlvyPcqpO8bxkx+1zv0AuygoyykVxjt9XEy
         q37g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3cihgokTfOoJ210Khd11e5neEC89JZYfVRsVYIb2dfM=;
        b=E1FJTeJDgQvxOaxc3QY96XCY7PxR+h+wrrj0hBHuA6MvTZiFJX420rjJbUirkn3oY9
         OPDLOcgyizTp8Ti6Iy0A8rwPDnmHuQnkNMNQDD0LDGtAzhYtuKrn7vJHPiSHuxhw/bBJ
         TLqKPFqXsIh6hktgtIOQwW/vlp1861FIKrCDpd+61yY3RjhOjrqUftxoLv8A9GAqd/Mw
         uAkyYtzrAoxIHsBOy117I3rnKxbu9IYHMuknRfD9ZfUQhMhLo/2XG4f5QMiFIiy41NC2
         7XiNzdDB08oU10TPLyIJyQgH4WbjLoXCOS3FQbAygsBWRSuFP8ZkAir4oPcVUNkigSwO
         R4rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Dq/bZaNUnnyLj+IONlzt2O7P9cwVQ7DjBXeTK1g90h7HVuLKW
	nJMMYLCs20wTdxd9DNAvOlU=
X-Google-Smtp-Source: ABdhPJzj7J+vEYLgxvc11IrGsD/8J9CvqsUforORuXFB69DAP0AhWQKzpHUVeoI2VCmvUh8koEVv4A==
X-Received: by 2002:adf:92a1:: with SMTP id 30mr2704240wrn.56.1597918718221;
        Thu, 20 Aug 2020 03:18:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:81f4:: with SMTP id 107ls1807163wra.2.gmail; Thu, 20 Aug
 2020 03:18:37 -0700 (PDT)
X-Received: by 2002:a5d:54c7:: with SMTP id x7mr2636500wrv.39.1597918717500;
        Thu, 20 Aug 2020 03:18:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597918717; cv=none;
        d=google.com; s=arc-20160816;
        b=jrwnkj6vMm/tyOFyl2puECaKHZBEuLd4Y3nt9oL6JW9uul7dnrAHzjvhP77nI7HDve
         X2hVO/r+IRN4cUqp2VOfl1doxI5A32Vs8LUq2y03oAevRbVH3cTmchLVl9Zf+5jw2TlS
         jiL425MU1tS3p9p6bqAruVvIgidZzRrYtgP6IxGbKNP3txGo6FHhGslHgmWzriMcVRou
         pylH6s9UL9WaTshMf+DxpkywRB5JdYMD3f84k+SPOv+3pXJciO0VYm0FGsQr+LhDqGJB
         BP0vKgyV26Fmpkxy667suZS5EQzglE20CAq6LD9a7UjNknH5F7+FMxVXeuhyE0cUi1tE
         U0Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=+FWDr+axhFghyHM0XYEvLEoJ4jLwqohxwNaW7rDK0DY=;
        b=sl3bzCTHwfKtWzh8HnhE1uzYUXgqz9FeouDKT5ZIzztzUcrQv6Pig/c/BPp85qK6gb
         sQXoIvbXSsQSabjruV2BwqY5uQqR8ERB7cZbpo9AmWNBGMd2uvLAbnxKLAcuX2vPNiYg
         yJYJBOycgth4HZvnCOYItw59IBO4w6b6O5hIvptsyM6/EdLYcUh9mVeoyK8Ybe3jmRkd
         BQ1s1KEGp2YMgwIoIG60AqcXyX0+XKFhJ6s6Uqppq8bpc3wl1WcBGXh4S1SB5BndN0wJ
         VjBtAklpf0estpupm+gfqB5b0S+mtVayOl4JvRZj7hS2cV/kxwItcIiYUV4RelZY9pc3
         1MKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
Received: from gnu.wildebeest.org (wildebeest.demon.nl. [212.238.236.112])
        by gmr-mx.google.com with ESMTPS id z23si210878wml.1.2020.08.20.03.18.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Aug 2020 03:18:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) client-ip=212.238.236.112;
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id 556A130278CD;
	Thu, 20 Aug 2020 12:18:36 +0200 (CEST)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
	id 05DBC413CE8D; Thu, 20 Aug 2020 12:18:36 +0200 (CEST)
Message-ID: <5ef90a283aa2f68018763258999fa66cd34cb3bb.camel@klomp.org>
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong
 alignment
From: Mark Wielaard <mark@klomp.org>
To: Yonghong Song <yhs@fb.com>, =?UTF-8?Q?F=C4=81ng-ru=C3=AC_S=C3=B2ng?=
	 <maskray@google.com>, Jiri Olsa <jolsa@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Nick Clifton
 <nickc@redhat.com>, Jesper Dangaard Brouer <brouer@redhat.com>, Network
 Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, Martin
 KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Andrii Nakryiko
 <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh
 <kpsingh@chromium.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Thu, 20 Aug 2020 12:18:35 +0200
In-Reply-To: <ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa@fb.com>
References: <20200819092342.259004-1-jolsa@kernel.org>
	 <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com>
	 <20200819173618.GH177896@krava>
	 <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
	 <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com>
	 <CAFP8O3+mqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc+wi-8-HOVQ@mail.gmail.com>
	 <ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa@fb.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Evolution 3.28.5 (3.28.5-8.el7)
Mime-Version: 1.0
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
X-Original-Sender: mark@klomp.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted
 sender) smtp.mailfrom=mark@klomp.org
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

Hi,

On Wed, 2020-08-19 at 20:23 -0700, Yonghong Song wrote:
> On 8/19/20 7:27 PM, F=C4=81ng-ru=C3=AC S=C3=B2ng wrote:
> > > > >=20
> > I think this is resolve_btfids's bug. GNU ld and LLD are innocent.
> > These .debug_* sections work fine if their sh_addralign is 1.
> > When the section flag SHF_COMPRESSED is set, the meaningful
> > alignment
> > is Elf64_Chdr::ch_addralign, after the header is uncompressed.
> >=20
> > On Wed, Aug 19, 2020 at 2:30 PM Yonghong Song <yhs@fb.com> wrote:
> Since Fangrui mentioned this is not a ld/lld bug, then changing
> alighment from 1 to 4 might have some adverse effect for the binary,
> I guess.

The bug isn't about a wrong ch_addralign, which seems to have been set
correctly. But it is a bug about incorrectly setting the sh_addralign
of the section. The sh_addralign indicates the alignment of the data in
the section, which is the Elf32/64_Chdr plus compressed data, not the
alignment of the uncompressed data. It helps the consumer make sure
they lay out the data so that the ELF data structures can be read
through their natural alignment.

In practice it often isn't a real issue, because consumers, including
libelf, will correct the data alignment before usage anyway. But that
doesn't mean it isn't a bug to set it wrongly.

> Do you think we could skip these .debug_* sections somehow in elf=20
> parsing in resolve_btfids? resolve_btfids does not need to read
> these sections. This way, no need to change their alignment either.

The issue is that elfutils libelf will not allow writing out the
section when it notices the sh_addralign field is setup wrongly.

Cheers,

Mark

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5ef90a283aa2f68018763258999fa66cd34cb3bb.camel%40klomp.or=
g.
