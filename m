Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHNMR2DAMGQEUQQXB6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 0352B3A472D
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:07 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id r1-20020ac85c810000b02901fa9798cdb5sf2305665qta.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430686; cv=pass;
        d=google.com; s=arc-20160816;
        b=mLNXzEn8YmnUy3KSw+0uz8pxU5vynJWPrEwd52KNgJRn8WbuUa1wkjzWOHaxlyrwg+
         vAnx/V85+7dlVJMU7DgmFOTCO8XQBSb/qPmKcmySs/YWBRpNzczrFSTXRARAOwrvZ81G
         y9HwY1nDvRaZ/1arH36xHFfgt68veqoIn6VlU9uDox737UJcoFmsfUDUed5QGxGcagA3
         Iohdwaf13QxIzjLDxA4vj5HKBtoKXRkjarZFJEI8KVvholfR73IiDEgcXnw4R3ahMprE
         CBseS3aFa7cfld0Y4J3NhZiL2er0n2vR3tXZ9qjQUln96WdpEeBxTzlxOqLvEEPd6TZd
         Kuag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eWNiGCGw6LbJhxvyQuK1y4UxWmELe2uhnGr+8gqf5os=;
        b=Z7h186ZX/8oIft/D5ZlWsXQCKvCIrOlZ0CL0k+QxUMJ3913/no+Mq4oGXgMdZxNU0p
         MPC2Z8k/LzdoabmBUE+++IAxP0BzWjkX5j4S0vyGQwkEUwFgehzki1RXLD6dBxoIollA
         IoGUycixJTKTQhGINKRwINbK7Mza2BnPoY8AmGyaM1h51CIjkSJMLWS0rxIL+7gCEArB
         OFJ/pP2Gy12E+Yt5vKXMaMWNdBhCmVg718LFBwz5ShVHOWQ+ztMV/7feoDUAuMFQaU3n
         gWDjVn2L1DVku65YIEXiypnVgcAnAbQRtRPRYeCmU+Q7eGz7qGER6DMf/diMvtPZMkQe
         FqEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TUj4T7lx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eWNiGCGw6LbJhxvyQuK1y4UxWmELe2uhnGr+8gqf5os=;
        b=OqLTPBS+nXYx/9gAD2X/Uks/gbHgP7YOZs3TEpe7EEnFXoSDmyTgrRLwy8C6hG14f+
         j0sD0J0DUMYAuBZL5sSfmm2/OXZTIVfaXW2X13Ho9ambTNOkqwWfNPLHwilBlAURwAc+
         iqL7yj5mWmGfO97flsNlPcNltHdfVQdwzzoZ47ycNv/JRx95WGFquEbQ1OS3yefzwUPX
         FlzAIVt3UacmjqyP1NfxAGy114RoVRBl/22vU1auNAYjLNvxCOEMTGDwTxABW+KXbdzX
         Iw/y57WFxcHU/0pUr6wONTScUTrMAeh0Bs5Az3+QH3ij5YkpEQmT+Y1eEDlZ2pxrGPWV
         Qvjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eWNiGCGw6LbJhxvyQuK1y4UxWmELe2uhnGr+8gqf5os=;
        b=AGxEKJmgpVafwGwPr2JCaZcP/+hNNHTQnJyyszVV92hgGCUuvoA1ed8RkNcHIF03YH
         dNBFYT9YRgsJ24/SOJx3G4+R74Q6LmuPXICXAgbrD3hu9QGK7Gbfj8UL8F8q6hBm3xOp
         oTlXNzt0ATDl0h5i1++saOYrndB1Demh20SORu/aDUPQ6YgeUkBXq2eaV70dYpsTycur
         8KAz8ra6YtWGsy47HxeYR2FV4o/ArjYEMXajxPLe1ki6WGj7id8HQVf0CHGpsXts+6bk
         l0P0uY3Bwoupci9Cfeudx97xwZtl5i9nLjqZzQ0i8AgLgY43JJmRx51l/xANxe7xMnvh
         2djw==
X-Gm-Message-State: AOAM533qQvqQqxnwDfEZtw/JA8oj0IM+OY4jizRVVtKzFEukRXw2Ub9J
	Y7tPiiqss4b37O30cjPQl+A=
X-Google-Smtp-Source: ABdhPJyKp1phYqPjoT4A9JBKCFWRQFE/unbxLoklL8uOIIf7AAg4FHdY6M6TB9rq4VwiMQmpRYTHGA==
X-Received: by 2002:aed:314f:: with SMTP id 73mr4859762qtg.194.1623430685990;
        Fri, 11 Jun 2021 09:58:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:af04:: with SMTP id y4ls5782619qke.8.gmail; Fri, 11 Jun
 2021 09:58:05 -0700 (PDT)
X-Received: by 2002:a05:620a:2449:: with SMTP id h9mr3366682qkn.315.1623430685683;
        Fri, 11 Jun 2021 09:58:05 -0700 (PDT)
Received: by 2002:a37:a457:0:b029:2fa:742e:472d with SMTP id af79cd13be357-3ab4370ba4bms85a;
        Thu, 10 Jun 2021 12:17:32 -0700 (PDT)
X-Received: by 2002:a5d:6082:: with SMTP id w2mr15698wrt.209.1623352652155;
        Thu, 10 Jun 2021 12:17:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623352652; cv=none;
        d=google.com; s=arc-20160816;
        b=nTyX9vs3rBUMIkQ0JsHjjzRpqhv/1K+4IJrNXlNmniItDnburMfCxR8FI+r25bfSvz
         nrK1mQQyPETeahK8+B4mIoL2TL989vV/kBjJd4H1DGbnvoyAShrLgqmW7GyrY4uHblDU
         hKYY5pkWgPCZRbmu48GYVK8G2YtBGlRtaxYF+Z8m/y+LOzmot9I/IiUGiT0bfdG7NAH2
         h6a018uyq7SD2H6L5idwEpaiZ1BHGawDbRqmssrJX6VGYc3LD5aSO99TCPk2Rm3PGasD
         QX/Krubh9A8tqBScIWWsUzIrD/iIaJSWQ8KTfuvoZ0eztSnKX4yxr3nHsqcjGZaNRMFP
         g9pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aPTyDJh/FqkPC7Of53mXpiFCJnipzLbSqzQI1i7wKkI=;
        b=HpvkydjZwleKDzv3zR6Zk8tq5Nu1zCafkNcsGq1MqRl4PJfwSPyCe1p9B+gKViD4HM
         PWdfEYr4TYrW9dbSbtzXz8gU5fYJyhbzsuPlTgRB3YDOI4RrxgYzpDTOpDan5WlRQgLQ
         GK6aXXvnpCEWV0szZzJZkkLMNBN1+rMU6sEkwZeYefQuei/Hi76qq4Ig70oQo64ZK9Fy
         f2M6A9dQdRmDGpm/f/BZ6wxqKPcDRzZN7gJYmEXPgCo1LDFO4H3JnlWgtXeq/jMGX76X
         9lLqYmxBbzPRNjBMgQYdZIqApGFrnNBn2dH13rdd7QGbNtS+gGEsl34ow/bVjgmpk/AC
         SaqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TUj4T7lx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id f23si32379wmh.2.2021.06.10.12.17.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 12:17:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id d2so6364944ljj.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 12:17:32 -0700 (PDT)
X-Received: by 2002:a2e:3c06:: with SMTP id j6mr68159lja.495.1623352651424;
 Thu, 10 Jun 2021 12:17:31 -0700 (PDT)
MIME-Version: 1.0
References: <214134496.67043.1623317284090@office.mailbox.org>
 <ea01f4cb-3e65-0b79-ae93-ba0957e076fc@kernel.org> <ba06e4f5-709a-08cc-0f62-e50c64fc301f@mailbox.org>
In-Reply-To: <ba06e4f5-709a-08cc-0f62-e50c64fc301f@mailbox.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Jun 2021 12:17:20 -0700
Message-ID: <CAKwvOdkpce5kjqXg_Gr8LAzqh3pZt+uJUn348wk2nESvfjB5JA@mail.gmail.com>
Subject: Re: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD < 13.0.0
To: Tor Vic <torvic9@mailbox.org>
Cc: Nathan Chancellor <nathan@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>, 
	"mingo@redhat.com" <mingo@redhat.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, "x86@kernel.org" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TUj4T7lx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::231
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Thu, Jun 10, 2021 at 11:39 AM Tor Vic <torvic9@mailbox.org> wrote:
>
> Hi Nathan,
>
> On 10.06.21 16:42, Nathan Chancellor wrote:
> > As Greg's auto-response points out, there needs to be an actual
> >
> > Cc: stable@vger.kernel.org
> >
> > here in the patch, rather than just cc'ing stable@vger.kernel.org
> > through email.
> >
>
> Yes I misinterpreted this in the sense of "put stable mail in CC".
> So if I get this right, I should NOT put stable email in CC, but only
> add the "Cc: stable@vger.kernel.org" tag above the "Signed-off-by"?

Yep, just above the Link: tags would be perfect. Don't worry, you'll
get the hang of it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkpce5kjqXg_Gr8LAzqh3pZt%2BuJUn348wk2nESvfjB5JA%40mail.gmail.com.
