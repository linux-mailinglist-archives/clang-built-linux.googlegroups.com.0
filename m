Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB6ES4XUQKGQEERNYPFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B47746FF
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 08:17:28 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id f9sf23481077wrq.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 23:17:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564035448; cv=pass;
        d=google.com; s=arc-20160816;
        b=XzFnwRG+wz3HCc7dvKvXqkajIsNUTbpdLmuvVwRssQjoOzZCzkkFn48+f6DyaOyuL5
         peW7cYFnrAabPhUMlY/zzC4e4ByYqTcx/KL0dVp44ejpDlAfEwYaIr3aNdT/fkUPQPcZ
         pZrmehrLXsSl3FgUv7xuf+yGFc5zTjKo5V6rt2eUuxUyyC+IbeMkii5FLB9FuB6j65jl
         XEzSB8GAFy9rhbCaB+aEqNcPgHsjYPviQHN+u96x6JiNrKl8HRfk9wbsRj8dqO5aLzj9
         OUn3IJ5vMhYrUMABSKnI76pub7OHVuRpoCjyAL3EUIJQ2WUFff3HBV2vMxAWrugqT5h4
         sC0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=oiwtJI4DAtqumU1VX0JYYrgwjZIpHucvsxRmaGRi2FI=;
        b=ENmHINO9HQsFjfwwh3B1fRHPhSKcEvXOZqbZNd9+p+j2OJmYCzIBoZMxs0jAAEm9E9
         EEuhk2nApdNiFTDEuF4hzKb/G5n/AwpYCBAVixdcy36EFxO47W7fxZoiGDTmHTpFrjk1
         SHly4YYteGGdVRHh/tIJBh4giajQq6ZBehn/qiRpzpHpzIPD6VXTYRwv3ADwpo+OkkWW
         4mTJ8q1w0GkqfuURDCMyqm1XjpaCl1l5X/E9YfvxpxhjeYrR+NYVsgPiyoRFRrPMEThu
         DoJWrHsllywQhQxamKcdlLHOvg6bgirKRhwDIg3bOIJtsA0/npTZgEzNTFzRZJmKirrI
         l10w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KXuSpQ3R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oiwtJI4DAtqumU1VX0JYYrgwjZIpHucvsxRmaGRi2FI=;
        b=Ynx7TxjwiMZhEJllUmbdjjS6IM23w+qU3Qkh4ph7TpEVnxYZxDDKmW8NFxhRJ3/j4m
         Wh2e8h9rVX3G6xt0T3gijsWfqlNBgMV3vV+qAt1GELn4Hu3F5eCMK9ObV2cvaJWEzMX+
         ubGZ167YhOS6hLaY9BH67iqWKPCXH9Pnjdx+CeQYq6HCogE2xdM1dzifjkj0IjqxAyFI
         SZoQUw+tl0yw6h3gzgFkzVlZ8qCzvA/bm51eURE5LL0nkhWyekOoGylVLr5K+7LiunOc
         W/rP/vtIGBuIseCLskwp4UlmYuA8JbI4hwJSz44VbPCsCyRtdbCE4ZSvnZb6FJxcB5YS
         FAEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oiwtJI4DAtqumU1VX0JYYrgwjZIpHucvsxRmaGRi2FI=;
        b=Cxu/6lq/I68SOgesZOtPLyfXxwKEX1810kk4AY3pMEzzPtx3euuFn9seU/iUc+445P
         XRBLO14trGzsmKAkMYaVom7iz4x4Rkx9QNUoHIv+5JF8E47K6jT/pqmPX7n9K57w6CMF
         3lefKW5xIks0d81sz4a0H29dgaOuwalOfCuPp7nPDTOlI/tP14o7wy28KmKFe/ioMDQD
         tX8BVKo5OzO0KJq08p6zKH6ybH+vo2GG0nq9RcHTCMiEdO59P+x2k6WgPlcSqHeBmiZy
         JbUmB01Kdv0m6Zy2+ctM2P/q6stRuxBSrZCZQll3Ym9XYRKe8zhgpd9CjYqinPq9kTxV
         ph+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oiwtJI4DAtqumU1VX0JYYrgwjZIpHucvsxRmaGRi2FI=;
        b=sGQu3naucnEZYAv/QpTOFEP91wd7aWPbv17mSyHSWQNoAKpdOTlDYTxZ1Oz/aUegRL
         F9f6NSNO765VD0CvSM9Ir16AI/oixuRCy5Eii8/1Swu0jGuKgj/sgtn6r3/Ud6T/P/uw
         wwYkRrpIgANFaapozYqQHhjRxleNQIYE/0FgU4kHbspiuGo5mVs7QrqZ/7v21sz42KuU
         cYwx9dD0Qy/OuQ4KVq8iKtaR8hlD8mTfuq99E6en7Ifs2lYg7KdGVy/CMpdodn8rfXla
         ZcyOdpBJ+jJorQyuIE0VEgXHd/4uKVcEDIdSf8Zg2beNt3RtU05QyyjHMSV7BS9+Z5Bx
         xkww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVr+xQEm9/Xu2m+FRUU7sKxBs33ck7EvN9fwHtbunDY9BbMp7pr
	5GEeymXLSNe52XU/qbKgz3U=
X-Google-Smtp-Source: APXvYqyPzVbwb/fpX4Pdba4a32dd/9J+oCh8er8J3oNZqwBnmG5SXJIGptHcwX1Up93fkzBufvkL2w==
X-Received: by 2002:adf:e8d0:: with SMTP id k16mr92479002wrn.31.1564035448326;
        Wed, 24 Jul 2019 23:17:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5709:: with SMTP id a9ls14506392wrv.12.gmail; Wed, 24
 Jul 2019 23:17:27 -0700 (PDT)
X-Received: by 2002:adf:ed4a:: with SMTP id u10mr3968990wro.284.1564035447754;
        Wed, 24 Jul 2019 23:17:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564035447; cv=none;
        d=google.com; s=arc-20160816;
        b=FBPk7Ny0Gphn+F/c4iQZz34AXBpLoij5Aj1s2sybXTmWD6C8dSBPTD0CPLRPnJ3V7i
         kcHdgzWJGjw0fNnM/5dLGj9y/YIw9KjzBG4a2QP9bjGHFMPLSCicD59uudg5iw1kMU78
         FtWer7gK8lcFAYeGNOgvob5+buQvB3zVGWYZYC3pMlV9JHauVYnX8HmQpj71N0hhtDsJ
         tc72tp2v03pkFqjWFRNcuQfQ6UrszhWCyl4iM3i+1438QSAnXtWFNt/+m3m1SQt8JlAZ
         24ylqDGXl9yJUyimJTtDDASuEGOuXbvGdOyD9PiAkemCt9s3zY13ucHSmUiUUJlIRz06
         lAtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SzxCqlcNQ6D/PXRgJlqf5N+S31sDfHsDb/3gkPnk7H4=;
        b=Lmvmg1MtCx5dJlVTxgpN2JsY428NL/exQ8TJFaPWcVjqHBskwlKSmlkmFsW46qIigq
         ICcWZg353TsWs/Ab60sNVZOv4W9SinjIkadCwZNWqzTzwp4Gj+C8WcNV8xYB0ixukoCm
         Hgxsm8JJGO17a/inL6qVEpb88R758DBwtMQZVqBsDcdiE+fWsMS9vF+pysRRj/pIlI/6
         3NyUOe0P/cJH9yZn1SKfVDnQG47UumW0igurzms7aHRZaklAd+Mj5vM5JKMyMvf1dWOo
         0lZx3cnnRPX9Js7OUxQXyYZNZk0PxlBPg3xKM+mpXQLUy7M4SFwPqCs+xKMVDHo0DLIE
         D83Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KXuSpQ3R;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id f13si2657526wmc.3.2019.07.24.23.17.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 23:17:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id f17so43528101wme.2
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 23:17:27 -0700 (PDT)
X-Received: by 2002:a05:600c:10ce:: with SMTP id l14mr75641329wmd.118.1564035447400;
 Wed, 24 Jul 2019 23:17:27 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <CA+icZUW5jNJY3L5EcxrtOttwpbdAWQ7=U_bZaLHcTogOdNuTcQ@mail.gmail.com>
 <CA+icZUUtNibYGbHEt+cqsu6cuKYF7=MobvPQ9mkXU1pJZhFw9w@mail.gmail.com> <CA+icZUVbYL9RkcVqU=Z0HJgn0U=hYStr30rQDaZ_rcBr27Cv6Q@mail.gmail.com>
In-Reply-To: <CA+icZUVbYL9RkcVqU=Z0HJgn0U=hYStr30rQDaZ_rcBr27Cv6Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 25 Jul 2019 08:17:16 +0200
Message-ID: <CA+icZUVC+4-QP5Wj2DUxAZ9wP_Ox311k-EUKkAsSL+8S_j2j1A@mail.gmail.com>
Subject: Re: x86 - clang / objtool status
To: Thomas Gleixner <tglx@linutronix.de>, Josh Poimboeuf <jpoimboe@redhat.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KXuSpQ3R;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jul 22, 2019 at 5:40 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jul 19, 2019 at 3:48 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > > First of all I find out that it is possible to download and apply the
> > > series (here: v2) from patchwork (see [1]).
> > > I highly appreciate to have this in Josh's Git [2].
> > >
> >
> > There it is.
> >
> > - sed@ -
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-many-fixes-v2
>
> next-20190722 has them.
>
> Parallely, I opened an CBL issue #617
> "drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> .altinstr_replacement+0x86: redundant UACCESS disable"
>
> I hope Josh can look at this.
>
> - Sedat -
>
> [1] https://github.com/ClangBuiltLinux/linux/issues/617

The objtool warning is fixed by [1].

Now, I see only 3 objtool warnings (all "falls through to next function"):

drivers/gpu/drm/radeon/atom.o: warning: objtool: atom_op_move() falls
through to next function atom_op_and()
drivers/gpu/drm/radeon/evergreen_cs.o: warning: objtool:
evergreen_cs_parse() falls through to next function
evergreen_dma_cs_parse()
drivers/infiniband/hw/hfi1/platform.o: warning: objtool: tune_serdes()
falls through to next function apply_tx_lanes()

The other i915 call-trace I have seen was independent of $COMPILER and
the objtool warning (details see [2] and [3]).

I was able to boot into my system.

- Sedat -

[1] https://lore.kernel.org/patchwork/series/403494/mbox/
[2] https://lore.kernel.org/lkml/20190721142930.GA480@tigerII.localdomain/
[3] https://github.com/ClangBuiltLinux/linux/issues/617#issuecomment-514906560

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVC%2B4-QP5Wj2DUxAZ9wP_Ox311k-EUKkAsSL%2B8S_j2j1A%40mail.gmail.com.
