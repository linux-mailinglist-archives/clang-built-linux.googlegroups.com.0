Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBW4BYGFQMGQERONNX7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 229E8434FF2
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 18:16:28 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id d7-20020a056602228700b005ddba37de42sf16015396iod.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 09:16:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634746587; cv=pass;
        d=google.com; s=arc-20160816;
        b=fl4gRJWDvCbI/1awpnuFFHm9JjH6OX/LBWZnJp1qTz18BeHkW+HqoHmau+6Kw1ETv7
         unUllKfSAOjbG0/VitWyIuwnRD6J4tMmbMbR2Ev6HJafwDgg4t0Qj/RugSRlNrWPNZh4
         Taez2RQe8cMCYmCZTdObHqsFUbSezwv43WiLWUE1OMkHyyx3youcCfIcP/fd6MbLJTlw
         ZHwdVzFXkUoA5ZSsE6W4yDG4NRzvVQK7ghr/09bcPIYbCD1VTYNi2WyfX9i4JHMzavp9
         nbBp05i+BZ84wOPIqSInbomL+2A6p+pUZ0wJ4rRXxBQWHfZmey6cMosZ/P+GKWAlnplP
         bueQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=d6jRkTGRM3tk57S5pcAJ9NASMEwKnkyH4XUmSqnzoos=;
        b=J736YGGRtzbwjKJGEbk1b4okLM4CwP12cFc3l7luL6R0+dYVoQh0LSB406kcu17Z2A
         og/d/PLlYwuchUZgog055YuH7esDg0CILXb/Co+40eZ06R3LbwAmPU+DOVGA7EaR4CmO
         i982rGS9IuFva7DZkN63jg6TfESbfB3A5OE5c5ST1tAnFNOT/uw/WEQILJkU7Q1JO9id
         lCMtdONW/FuaiXDHRFgxA2jAXKrMTXVB/5ka4dmkwzAU2J+0qYdhcR2725C8JpAPXOe9
         vwwyC3Mt5rwgiymGVVGy7qV6RKO903HEui225JShcVNrtHH1N6HIE0EE3boe04MG30Lx
         PzEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="fz0/VvXe";
       spf=pass (google.com: domain of toke@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d6jRkTGRM3tk57S5pcAJ9NASMEwKnkyH4XUmSqnzoos=;
        b=Q715bPStpKBUZy2flsiXblRbwl7LKvNKX0AUk8a/7pma/kZ2YprSwFLmHfP+DRZ4MW
         H2Z8OgH8RF814alGEHlw/7zWH5dpeUsLfoVwVp+corVrEpK6AsHXDB5Dh4N7e79BgDjv
         Sd94iWyi9s92Dt+c9oZGpWyep5sbaNoKyUvaZJoE+0X3x+ZPhrhT4EMohgUk37CTQlLA
         M1KTN/FhT17WDzwzuXnuYYNtQtqR4HkUPfF3mFLv9RpLBS1N7zRBJxKXy5yMJDVCoPSo
         9ZiUeTZq1bwgtovi0IRUWVHfp6oH4NOKq07I4nBR8I9/w3A4PArG2mGkaPtjiD8Y92AN
         bXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d6jRkTGRM3tk57S5pcAJ9NASMEwKnkyH4XUmSqnzoos=;
        b=1J8zAoZGURQjITAphmXJTKvQMsTQFzH2CLLzqbFKdRFqSdtgdy75WYb6J+005a8Uzm
         7C40V8V69aFGHR2S6LtRxDn+fcQCYh0oM4GRGU5cBAa209CkpVLCwcCMymeyxCqm5aHZ
         FqVan6Oiv02Lu3lQYXl6fKOuxrf6LUQLAoBhGyrnCddTdBO6q6bl/EeW/qd+foJ8U9S7
         3oAv99zQnS8YmC6ly4lO/rgwKAkgAp2/EFxVGw56tQ6bvJ3a2HSMreeIwqfZjMZNo//q
         nD8Y2GVNte8U2GzdfdX4Lr1CIUGck+wNiecuT35bwm+nb3kU7LB4AXJndyuFea+vBz37
         jKBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Nkg4nxeCgmaz1cbT5L2biwE4HUvtoanaVLKbAKbgpCkacYrxh
	vwGcOcWS3PHpy+oBThVwYB0=
X-Google-Smtp-Source: ABdhPJxBYlNvFtTX4i9L7RoNOkfPsM6kaGN1jpMmMQjdQWLEqrP5K3sw75B7UP53up4k7e8mP42ekg==
X-Received: by 2002:a05:6e02:12c1:: with SMTP id i1mr502327ilm.297.1634746587200;
        Wed, 20 Oct 2021 09:16:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ab91:: with SMTP id t17ls362300jan.4.gmail; Wed, 20 Oct
 2021 09:16:26 -0700 (PDT)
X-Received: by 2002:a05:6638:1390:: with SMTP id w16mr194382jad.1.1634746586912;
        Wed, 20 Oct 2021 09:16:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634746586; cv=none;
        d=google.com; s=arc-20160816;
        b=wc+RsUY7L6g30sQRFl1syvZiygQ1mBLl6fq5IFGx4rw4ePq76ijVQd3B0YDN2YI3jU
         KOQVk6yaFdJjvEQ1Nh69cBwHuyo3Tx0TwUfNvhmhOGcKcsVf91enn4fO9E9xgz+pw4MC
         AiS6f09JvjlI0cy8etEIuo6meOC1PWj3qRw1wrO7HIi0qSLFVXFJD3cZ6WMOLIrf/PQl
         o9oZZqAIiE0cLAd7YI6vwPDfXhRM9UunxfqIpFH1LfY8Q6ItjBWChHpP6XgHN5Se6ogy
         ZsU7P1tbv0KG7F0YCb4y/lhtnml0rmhxDHI7TQkwD12xkwNsnkZ3CF6GCCmqJ5yoPOcG
         81VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=DB6FNE9518vrXKyk9/xmjFbyTClEQdA5fjKA0BXqbOU=;
        b=HU9451ngP9MlUDgUBuNdpYEw600n242xNZbm73QrqsWbGgzwqhwCVAE0+FGGLexKdg
         r6babUCbPfhWoLqgNsy9dlFfYJU7dGf7GV5WtgpsF+UE0GCCqq8Ha3OhRd2Ws6p8ldAe
         CIDBazc/b9g1WMwDcdB/BqFWv5r1y9qfd0p7m3dOwji1u7sPSOe0S/w0DG+pO10HLPOw
         LZDLHsjLNn+xCrw5pr7uVhl3iHw4N4PF7OnUKh3shSHRGhERxeYqXU0IlxEwfkVclN+H
         LZuT5RekNV8atUjy+QKRwZOkLILiql4eobO8GEPtI23riwKvcgQQ0MdpgGgeF0jH1mET
         Ftxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="fz0/VvXe";
       spf=pass (google.com: domain of toke@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id p5si193190ilo.5.2021.10.20.09.16.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 09:16:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-aajXX_Q4PeOSQqgOO86xcw-1; Wed, 20 Oct 2021 12:16:25 -0400
X-MC-Unique: aajXX_Q4PeOSQqgOO86xcw-1
Received: by mail-ed1-f70.google.com with SMTP id l10-20020a056402230a00b003db6977b694so21463531eda.23
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 09:16:24 -0700 (PDT)
X-Received: by 2002:a17:907:7752:: with SMTP id kx18mr347276ejc.276.1634746583010;
        Wed, 20 Oct 2021 09:16:23 -0700 (PDT)
X-Received: by 2002:a17:907:7752:: with SMTP id kx18mr347035ejc.276.1634746580913;
        Wed, 20 Oct 2021 09:16:20 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id i10sm1474006edl.15.2021.10.20.09.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 09:16:20 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 9D47A180262; Wed, 20 Oct 2021 18:16:19 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Lorenz Bauer <lmb@cloudflare.com>, Maxim Mikityanskiy <maximmi@nvidia.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai
 Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song
 <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh
 <kpsingh@kernel.org>, Eric Dumazet <edumazet@google.com>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Hideaki
 YOSHIFUJI <yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Brendan
 Jackman <jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe
 Stringer <joe@cilium.io>, Tariq Toukan <tariqt@nvidia.com>, Networking
 <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 09/10] bpf: Add a helper to issue timestamp
 cookies in XDP
In-Reply-To: <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-10-maximmi@nvidia.com>
 <CACAyw9_MT-+n_b1pLYrU+m6OicgRcndEBiOwb5Kc1w0CANd_9A@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 20 Oct 2021 18:16:19 +0200
Message-ID: <87y26nekoc.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="fz0/VvXe";
       spf=pass (google.com: domain of toke@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Lorenz Bauer <lmb@cloudflare.com> writes:

>> +bool cookie_init_timestamp_raw(struct tcphdr *th, __be32 *tsval, __be32 *tsecr)
>
> I'm probably missing context, Is there something in this function that
> means you can't implement it in BPF?

I was about to reply with some other comments but upon closer inspection
I ended up at the same conclusion: this helper doesn't seem to be needed
at all?

-Toke

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87y26nekoc.fsf%40toke.dk.
