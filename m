Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAFXSCEAMGQE6MOD53Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8893DBC5D
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 17:32:16 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id l12-20020a5d6d8c0000b029011a3b249b10sf3309839wrs.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 08:32:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627659136; cv=pass;
        d=google.com; s=arc-20160816;
        b=a6kcxbEcfbhFbFGyupBEGKiuUXLELOmHR/ALgLlQEDZoTXw1pAwHWHVGOemtcNOx/Q
         mVYJAouR+T9bHCVhoPSPu3nt62kolepciGNf4HrPHujvRWiUOz3T3neMPDgy8ZKBFs6j
         Au/ktMdaSjowoVpGPjrkZTpLysoLoG0+HSbmTzgX3O5axrkpMXQrGS4gFowVtWNBmK6b
         KcCgqrQ5V2mZ+BR0mNYI1EOg5wf+FhAqaa4BAcoYFLUrD0IlmBxv9DmznT846D9RQ5bt
         pB+In8pKC1NYOOYuS3tWF6F+iJh4xbNc2A+jG1MtJILZ+3rj6IhG8PFw40Vc527H9B4d
         yTlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=//2vZlaFiw1i5ljx+OEkAvNqLzthHeOizh2cehnWYgo=;
        b=eFq8zheDzKeH6ettdAJZHaT/rm7wp1nIcVOti6aFP08D+Lbkq5HryZc8OQKU4WwJ1i
         IMx8H+PbVCxuRHLAxaYOVuDBB37N6acU1kjfy/TqzMpvR9rgr+FVPQRtNY0v9lBhwMoJ
         AdhEUwadn+iNdJleCfMydFrIHSdiLkcVcBiOcC60S6bRVtHCEbzrXDy+lQN0MNmoIKh/
         dP5806PzBiPb0yk24fDEFt7qgGhk3ezK/SPW1dSN6WYHXPUC7igieFafQWh9EGlqIAkx
         K3CKJCbWR104/WbWJOQgLLZSB50jSZeb4Sq9iSmyT7v+Ian2bp9Q8fw2BLdbd+p9KiG+
         3gug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V0takgq4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//2vZlaFiw1i5ljx+OEkAvNqLzthHeOizh2cehnWYgo=;
        b=BkhsXQyvsqncQqgB5uXqD+l4fYWRwqCFjtRU4vrixFBVknvGulcFh/BZ0uCeYYbJ8F
         S/1+h6qC9LGbnkTq1x56vQtXLCYtqU2qLC5d7UZ/BZCBdh9f7onVjbZgS8R6/yfhXupm
         Nck/F24UIElnev6BEGLMiL/ikhfMSZd/hx6ENFMnoMOafHAY3gplyySdRlhgSoVAABtG
         R54XimWplHJH5MsRp0wKGmzNeZNedAmnZztV62e/bRnkCEHb08zihJZ27HPF/k/JGqKw
         NGjQxfxUXCgTkNFkmH8bF4gCjrcYnSqACcNvTSUxJM18zz78VrrWIfqqWsJ/uCIFbUpP
         iGQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//2vZlaFiw1i5ljx+OEkAvNqLzthHeOizh2cehnWYgo=;
        b=gBCysVF67HboQC8nIh7rjSz4JpzglrZbaNbM/6TGWPWfNnGjV1l3jKlHX8bwow2ZKn
         fLKXp8woDE6CmkIyUU8OtJgeWxmmz0PtL91jjrMW9wSDDsABgwf+7iVTfTFo2nIqh1Mf
         qKkCdY9EAkCaau0MUcYd6y4yLcn45AnpvvhqFqcVEkHEIZhYJTUOGU35hfnV8M6N4yWp
         KYsuA3LgFCRKOjZEkSQbq2FLnR3Ef7oAAGbZkgNnDETiT4dfb/z4wW7Rt8oHxQPXfKIt
         WH4yajzd4u0gJxV1EGwddde9U5xAm4VZ0wYNaePWVrQRCQ7++WFqMWS0LnZ2SX5xe8Da
         yIzQ==
X-Gm-Message-State: AOAM533OZcKNk+av+WXqMcFJFujrOfJUlxepUvxQJ6WFRPox4y2oEPra
	rR7dahESrc9GASIKUXQNMfY=
X-Google-Smtp-Source: ABdhPJym/5Cjh7e2gSwrdIzQWtJyEYrktKBvpuEmp3gKRhqoMFuT2X08OsqHsDn9vTNvWEoS3KzDyg==
X-Received: by 2002:a5d:5412:: with SMTP id g18mr3691820wrv.301.1627659136297;
        Fri, 30 Jul 2021 08:32:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1554:: with SMTP id f20ls1170131wmg.0.gmail; Fri,
 30 Jul 2021 08:32:15 -0700 (PDT)
X-Received: by 2002:a1c:4e1a:: with SMTP id g26mr3604183wmh.52.1627659135235;
        Fri, 30 Jul 2021 08:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627659135; cv=none;
        d=google.com; s=arc-20160816;
        b=GCrqJKzImjeFgvvkkzdRCxzudYz3bhBAD2Pd7f5wywjXxxdgtlQc4uIThZ4JxSvYUK
         A6HKqHkTqAYXI3SgF4D/srcbIBF5GF6U/cyWDiPdaRE6BnIWLcA1J6rtMNiBlPt8NI5m
         IO93/DNILbpSdHNvM3mV7iN46Bi7XCBPZ10l5xZeLxc5wyAqA5EsChgScrkk4ZZOUaj5
         Pqq6mzFf3bwHBBAUsTZ/z2ALnfKUkS5BBPsZf5sMoDuPIrVeAadWK/8dFQcfahs2S6D8
         rw4GNmHgErWhI50uEJFisiya+2p3NDZER/N5Ze4j+oNZA1CKRNgslcTYY1NhK8Xhti0+
         ZTCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cuMBivazXPSSSnLg5TVHL25KvD4e4AyXmAdQoyFf5fI=;
        b=mMN1imjcfEVPQ03O7U5fFvlKaQCu+f0+RUuSeLG3blmozwCw8y4OTgwzVfxyKEvJS1
         0kGoytfC8j3abOosXCbklk8X8Qczmg0ntaBfVlrcx6w6IfwUuJzp4nmxI+TmYS/DnwuI
         Cl3W3WLc1OcJul72+gwAR8PQ/t8cePfgbQV5thdS3ES2Beis69GrZHbdLVK0u2MEZi4W
         3mp8NgaYS8wErUZ1FuU61v6Ay3Tqp585DHPRpB1Dx5Ate77JYp1oUXxZDX+cMa3CgLao
         Dc6eoH55VdYVJdHKmzYW3tQHJfMicJ4YaUUt1laZ7NH1yqYIfDaBZTnDP+GV/Boa83bM
         XYvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V0takgq4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id 14si96983wmk.2.2021.07.30.08.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 08:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id x7so12888459ljn.10
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 08:32:15 -0700 (PDT)
X-Received: by 2002:a2e:a911:: with SMTP id j17mr2005145ljq.341.1627659134322;
 Fri, 30 Jul 2021 08:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-49-keescook@chromium.org> <1cc74e5e-8d28-6da4-244e-861eac075ca2@acm.org>
 <202107291845.1E1528D@keescook>
In-Reply-To: <202107291845.1E1528D@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Jul 2021 08:32:03 -0700
Message-ID: <CAKwvOdn+G6y3_=YZgp51cL64XW=VGgt7C0Vt0ARZOkezPTn5WQ@mail.gmail.com>
Subject: Re: [PATCH 48/64] drbd: Use struct_group() to zero algs
To: Kees Cook <keescook@chromium.org>
Cc: Bart Van Assche <bvanassche@acm.org>, linux-hardening@vger.kernel.org, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Keith Packard <keithpac@amazon.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=V0takgq4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Thu, Jul 29, 2021 at 7:31 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Jul 28, 2021 at 02:45:55PM -0700, Bart Van Assche wrote:
> > On 7/27/21 1:58 PM, Kees Cook wrote:
> > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > field bounds checking for memset(), avoid intentionally writing across
> > > neighboring fields.
> > >
> > > Add a struct_group() for the algs so that memset() can correctly reason
> > > about the size.
> > >
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >   drivers/block/drbd/drbd_main.c     | 3 ++-
> > >   drivers/block/drbd/drbd_protocol.h | 6 ++++--
> > >   drivers/block/drbd/drbd_receiver.c | 3 ++-
> > >   3 files changed, 8 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/block/drbd/drbd_main.c b/drivers/block/drbd/drbd_main.c
> > > index 55234a558e98..b824679cfcb2 100644
> > > --- a/drivers/block/drbd/drbd_main.c
> > > +++ b/drivers/block/drbd/drbd_main.c
> > > @@ -729,7 +729,8 @@ int drbd_send_sync_param(struct drbd_peer_device *peer_device)
> > >     cmd = apv >= 89 ? P_SYNC_PARAM89 : P_SYNC_PARAM;
> > >     /* initialize verify_alg and csums_alg */
> > > -   memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
> > > +   BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
> > > +   memset(&p->algs, 0, sizeof(p->algs));
> > >     if (get_ldev(peer_device->device)) {
> > >             dc = rcu_dereference(peer_device->device->ldev->disk_conf);
> > > diff --git a/drivers/block/drbd/drbd_protocol.h b/drivers/block/drbd/drbd_protocol.h
> > > index dea59c92ecc1..a882b65ab5d2 100644
> > > --- a/drivers/block/drbd/drbd_protocol.h
> > > +++ b/drivers/block/drbd/drbd_protocol.h
> > > @@ -283,8 +283,10 @@ struct p_rs_param_89 {
> > >   struct p_rs_param_95 {
> > >     u32 resync_rate;
> > > -   char verify_alg[SHARED_SECRET_MAX];
> > > -   char csums_alg[SHARED_SECRET_MAX];
> > > +   struct_group(algs,
> > > +           char verify_alg[SHARED_SECRET_MAX];
> > > +           char csums_alg[SHARED_SECRET_MAX];
> > > +   );
> > >     u32 c_plan_ahead;
> > >     u32 c_delay_target;
> > >     u32 c_fill_target;
> > > diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
> > > index 1f740e42e457..6df2539e215b 100644
> > > --- a/drivers/block/drbd/drbd_receiver.c
> > > +++ b/drivers/block/drbd/drbd_receiver.c
> > > @@ -3921,7 +3921,8 @@ static int receive_SyncParam(struct drbd_connection *connection, struct packet_i
> > >     /* initialize verify_alg and csums_alg */
> > >     p = pi->data;
> > > -   memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
> > > +   BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
> > > +   memset(&p->algs, 0, sizeof(p->algs));
> >
> > Using struct_group() introduces complexity. Has it been considered not to
> > modify struct p_rs_param_95 and instead to use two memset() calls instead of
> > one (one memset() call per member)?
>
> I went this direction because using two memset()s (or memcpy()s in other
> patches) changes the machine code. It's not much of a change, but it
> seems easier to justify "no binary changes" via the use of struct_group().
>
> If splitting the memset() is preferred, I can totally do that instead.
> :)

I'm not sure that compilers can fold memsets of adjacent members. It
might not matter, but you could wrap these members in a _named_ struct
then simply use assignment for optimal codegen.


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn%2BG6y3_%3DYZgp51cL64XW%3DVGgt7C0Vt0ARZOkezPTn5WQ%40mail.gmail.com.
