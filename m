Return-Path: <clang-built-linux+bncBDYNJBOFRECBBVUYWXWQKGQEMMCDILQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id BD578DE454
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 08:12:38 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id j14sf6377783wrm.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Oct 2019 23:12:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571638358; cv=pass;
        d=google.com; s=arc-20160816;
        b=0IxFHIjA6l+qWF0n1vn6UheJINSERJX8XAjpUm0moyMptzzhqyl8WHv3FfULnV6sl4
         7YQl5ooPll/Zk082/RJeES7K7V2wTaaoy6eUqB8ALsK3S/tJcdxLz3Vntoz9GrS17BSR
         MVYKI/qjkkdIgCzKDYD9/EV6FKa+V6MmMel3Kwopd3VLNyiwBcL8r4r8S1vSm5uRoIZG
         jYbj+qgscp/nQzgz6csbb+KPkE0Wyig0zmopUzlVSzVxO5ZMe+vtukqxAPFujpqgrbLt
         GwF/GVMRqDREmETs8g8hkwgpYVGYyynN2deAkbxdOfBk2E/MTH7tfOANl1wHRV5HJnDJ
         BUzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=tyvQ1YBxOfoOC58CehAPKx/DUPKx0IyJF02ePGX16/Q=;
        b=iMNKnvHcgA/57yjaRXpZLyY6huAfKFQxL1+l8WGWewXvHbT26Wae8i9zbXbFq+7SOk
         7uAHcDgzxDroGM0ndI49W6aocWpuegXF5igJ6eb1ko6iQPxJ46/dCgkHenpfSEJ3Ssrl
         kVY+8IMgEGOTxIfqWgzJ2+DCg1HpMrnK7LiuSs8sdrM9uGNeLtKCagw7Bk7DbKx895cR
         FCMuo2t2pVx7LvLuTZ5GRKoY1LZ7ugoCbCWjya8Iu9kai4UsIh1IrTW3wf4ndVkz2LR8
         PG3/07dF4FC3X0E2Sk6YUz3Ca+BAs5WVhuqUzGjgNHrG7N2/E40QT1pvG1bYfdMGemSS
         qcVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=qTUTQ4ZT;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tyvQ1YBxOfoOC58CehAPKx/DUPKx0IyJF02ePGX16/Q=;
        b=cE2XEVV+EUtoCT38egvec7Uumncdf8Z4P0Cpq1dgS1cNJ/ZNwK9d9A7EdiJyPoAZbj
         M3McL36RBk0MQPE51o+9AobWjP4rUHd2eKErJ8VBe1R+3uDzCdc8fc6IXUAJQ4ilokIY
         r500+wuZGlysh5HKd/SK6BS4uvttFfEJGG86dCF+L5z8L+fi57le8B3gdAPc6KkN/brM
         9c22fiHIqjPr5I4z6XLWv6Kb25LOZyx/VSupRwrWP/0T/HT/JGUsH3nFO/KTyWReMaZS
         F4sJNBljSm359Nc163EwfBWcTdKsHmLnKswXMMT9wmzwl8P7UKAGs5Bn1wt6+8eRPZVh
         aWdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tyvQ1YBxOfoOC58CehAPKx/DUPKx0IyJF02ePGX16/Q=;
        b=KgFCeFpuTihj9jG1sRJqP2XX7JO3KH2+9kA8TivMQVNMlOhgad0wZ2UFGmfxJaFgYY
         u+TEabyeBoPcIkhrTlv9W1ssYTNzZkfduWQ3JB8YFPwfwig5rhfUejh+9q127ViHdJXj
         xBJVOETTx+ly7GSoSGwnI4dPwpHKDJ4Gvo1WVFR7jJiOWubTD+2BRg1FApLVyKJ05Tt2
         Ic9YaUo/uPwgJ2v4GlwtVsF+B9606KRQJl8b4wYzufwICChPlPMLURkL9SWfDUUYtAuG
         9tUs4qNm32VSob5u5pS3/Rr2ZneXtdjQvyzJPEVo6l60w4s20r74c2zCxfxj/bWKB+tn
         uASA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVRV6ZEqMC/fs7qa9qgBvVYl/m6sbbqvqe3wMdLqNBbq2Z2PKc3
	ZF1Vdmz25OKsRYszwo2+vi8=
X-Google-Smtp-Source: APXvYqwa8X1uQJNZJ/brc0viY789ok8He6xEO44lweyGQB8qPAKcswVWw7qO4ulWLDo73qoH0i7ITg==
X-Received: by 2002:a5d:5401:: with SMTP id g1mr8301648wrv.54.1571638358345;
        Sun, 20 Oct 2019 23:12:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2249:: with SMTP id a9ls4256932wmm.1.gmail; Sun, 20
 Oct 2019 23:12:37 -0700 (PDT)
X-Received: by 2002:a1c:7c16:: with SMTP id x22mr18494923wmc.177.1571638357734;
        Sun, 20 Oct 2019 23:12:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571638357; cv=none;
        d=google.com; s=arc-20160816;
        b=RuJ9j4E9xXZ3cJQdiIMOI2zOz0zQu/hYsYf/+6rsXdVvne0d3zbnU03pCgML7Cft1F
         ee+QimSTE9b9Y2WzAwxPHrApRZ6HoJmwWvRLJqItN/Pke+ppvsKZo3CQWg07XVrAZ9kb
         a+lF4fpRY+8MQXendwngpVcdzpa/5oHVY3n/EoK6XiPgNK9x+l8iB+DvGXdgyAfrk/rJ
         jWXesE2krSj5jspzHKRrTPlaJc5DLXvS5gbKY6oh1C0qyeQ53UqqczDwW2c5dzPKEZft
         wj3/1q08d6mNCiPJquDPoBdH+M62UCaP4N5PCqpzxRvQCqThfEodVqXI055RnDZtRXXJ
         wu2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=azBxEHDWCdsU7wz/faY/PPe9l3d9cjGBlYkkkxlsXNw=;
        b=uzSOzUTSnpQvi7k6qSsaoLDBYCPa/Kgi10V6G0PGAHyWroqQ4jTX59iVxOVjKjMMJM
         6WEIeO+rutK5hT/+VPEDZbY8Uv0ouifz+p9c9HQYVEjL0WVj3wsocp55moTXPw+uA+Ms
         ltGT2+OZ3+wT3Y7VLxxzSuwodYLsUf5NPrxMJk/+ihoFYEsXj+pyexZzPjZK4i7u5+vS
         24CpCu6w+D68bVkkyai2x0TxgPbziJebq+tMPvNxjFFKl6PnkM3SNS7ZSDc+LawiyPF9
         efA579XgVplhBDT4hFX4JxLr8gfWDXwWZVBu1PtkDJvHHKOIGRWJqTkeP2hBZ7n/QlnB
         himQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=qTUTQ4ZT;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q22si295844wme.2.2019.10.20.23.12.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Oct 2019 23:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id c6so145198wrm.6
        for <clang-built-linux@googlegroups.com>; Sun, 20 Oct 2019 23:12:37 -0700 (PDT)
X-Received: by 2002:a5d:6b0a:: with SMTP id v10mr17063430wrw.32.1571638357257;
 Sun, 20 Oct 2019 23:12:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-6-samitolvanen@google.com> <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
 <CABCJKuf1cTHqvAC2hyCWjQbNEdGjx8dtfHGWwEvrEWzv+f7vZg@mail.gmail.com>
In-Reply-To: <CABCJKuf1cTHqvAC2hyCWjQbNEdGjx8dtfHGWwEvrEWzv+f7vZg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 21 Oct 2019 08:12:26 +0200
Message-ID: <CAKv+Gu92eR81+W1iXOXZHWgub-fNPcKaa+NCpGS_Yy4K4=7t+Q@mail.gmail.com>
Subject: Re: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general
 allocation by the compiler
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=qTUTQ4ZT;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, 18 Oct 2019 at 21:00, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Fri, Oct 18, 2019 at 10:32 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > > and remove the mention from
> > > the LL/SC compiler flag override.
> >
> > was that cut/dropped from this patch?
> >
> > >
> > > Link: https://patchwork.kernel.org/patch/9836881/
> >
> > ^ Looks like it. Maybe it doesn't matter, but if sending a V2, maybe
> > the commit message to be updated?
>
> True. The original patch is from 2017 and the relevant part of
> arm64/lib/Makefile no longer exists. I'll update this accordingly.
>
> > I like how this does not conditionally reserve it based on the CONFIG
> > for SCS.  Hopefully later patches don't wrap it, but I haven't looked
> > through all of them yet.
>
> In a later patch x18 is only reserved with SCS. I'm fine with dropping
> that patch and reserving it always, but wouldn't mind hearing thoughts
> from the maintainers about this first.
>

Why would you reserve x18 if SCS is disabled? Given that this is a
choice that is made at code generation time, there is no justification
for always reserving it, since it will never be used for anything. (Of
course, this applies to generated code only - .S files should simply
be updated to avoid x18 altogether)

Also, please combine this patch with the one that reserves it
conditionally, no point in having both in the same series.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu92eR81%2BW1iXOXZHWgub-fNPcKaa%2BNCpGS_Yy4K4%3D7t%2BQ%40mail.gmail.com.
