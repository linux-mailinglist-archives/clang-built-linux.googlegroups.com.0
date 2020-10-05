Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBWPG535QKGQEOSDM3XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E978284317
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 01:59:22 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id d9sf1052807lfe.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 16:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p+0+FY9cMogwZ7VS7UmnwOBZIux9ecukC/yiUq1xudI=;
        b=kXstb3iyIPo2/8LzEbF3Ni3xRYDHT5fjB3rE0Pb2CPqICWW4NSOVTERmGC6sTV4bbq
         ceTJ6D/LqRviCEtPOgqZkYw24wP9w/hreYd1UvTX+j6dBwSPt4wq3fz5NzoKaaeJos1Z
         todtPsO4czsTlasCVeUgCM4GJZCjQzKwLHsNi4bdgXhc1jsObBFH4UPMPsK72FsjzPJR
         z9vDnPMSfv0+XcdgyX/bIMhZbv2tqUzrVKaSHi67UIcU/6PeG1xse4VLAlW+QJjiBzlG
         Lk95Gf+h6KldVwJhzZ6JT2JWfXnDug2sxhJx1MjyApYTAFtb+pQMfTz6TrUsWjTZw4hS
         amHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p+0+FY9cMogwZ7VS7UmnwOBZIux9ecukC/yiUq1xudI=;
        b=nxyZgo4wtW7BGHgUldY4ZD5PMLkIGSP2mvTQ1FnJTYRp30Z8RBVoPPSGeu9WJi/pt9
         2IPEALk4vK+Hm6xVb9DJC99YMnK1Lk8/Gnq/zZZPTapo31BbM66j3VIOSY5CG22lK1NK
         3jSyjr+ncrZUfWLJvMefAV0KDFSbAz46c5fJjoBTD6adprU0ikFPs0wLiRtWUmeaUsUF
         wGrVju0sgQD3SrMCGFyc1IDQYbx2Aa/nA/Lhwx9+QFIg7Vlx/vVqF3cv+KrQFxcQTHOx
         wtIrWyTBiJ11f4DPf0ygxtsZwUw9JxeB8gb+EIlFC5HT2wRz5pLk/YTi6SOcUEcZw603
         FJdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531g3uY7060o/LsDR8v+BeXLmKkyHgqyOYsOrOzmw03iywnXvxrN
	QJq5+IoN1TvmnpSZQJT4Xoo=
X-Google-Smtp-Source: ABdhPJzGzc3+A+gom8dIEIFSdx2b2wou1XK5yWSrGQMfITWha1F/mh/W7+TlzOkGu4XAepk2Iepsag==
X-Received: by 2002:ac2:43ce:: with SMTP id u14mr551822lfl.508.1601942361855;
        Mon, 05 Oct 2020 16:59:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:93c7:: with SMTP id p7ls1367748ljh.11.gmail; Mon, 05 Oct
 2020 16:59:20 -0700 (PDT)
X-Received: by 2002:a05:651c:141:: with SMTP id c1mr750643ljd.182.1601942360734;
        Mon, 05 Oct 2020 16:59:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601942360; cv=none;
        d=google.com; s=arc-20160816;
        b=H/spEeeDIsnSqU06A25gGiJqr0bcbG8AfodgbyqmBJ49zg/DlukXsv3SSNLoJ2S0SM
         Nln5Fr5c/bbDdYL653/okGlUJwVIJiksSfSyzz4YlB5/Ow1gfoWHQT6Ygb4oFu/YZHUS
         9mUVM4bS83fcStqIIldd1GK52TJnPfcHeTKZ+jQUNvL2+TRQAnoP9AVCGkkRnUOM35T1
         cD1hJD5nxjiqoY5a3/0J9PyOJ3Qc/oFgACQsVUbvaCN8VBxvl0+YqpfXX3pAqxwG4RPd
         p0qgWG60qhM6nLlLbizHVlMmvC439Xo5KPSTy3T1PqKsCsEuOqGI9bwcYcYQf6Kf9Y31
         lJPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=p+0+FY9cMogwZ7VS7UmnwOBZIux9ecukC/yiUq1xudI=;
        b=AZaRggLNaUWcXBcN2ofTiXGegTuz7Ugb0k/QLz6o+LHnJ23HA89WBYpL1SCQd31eaD
         fQxHg8wKqWZ1ja1L2GVquu6SwO1hwopM3eI6Nhmv/d2s1NoVn1dGfJWOZKw7PewGjJjs
         WvnmWhvc/knKmL7mCwNI83xpnuCAKPZTMZk/WwRe7PPk4YB/zQvzw+1iiGqU1xldr5dY
         qAXwPvW6IooFZgPupf/5eFqaXm/QFgGB7a6t+SPRp6lf8QyX51ARJuJFr/CA7aB7ZZgc
         1MpVfsoOv6TUdzzN7lXjT1pvFQrz0vpJyZUgE78W0eV3uz6w2tHplDgwX1WJsicvHN5V
         HtSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id j75si52356lfj.5.2020.10.05.16.59.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 16:59:17 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id D78CA11E3E4C8;
	Mon,  5 Oct 2020 16:42:24 -0700 (PDT)
Date: Mon, 05 Oct 2020 16:59:10 -0700 (PDT)
Message-Id: <20201005.165910.409480559848056477.davem@davemloft.net>
To: ndesaulniers@google.com
Cc: segher@kernel.crashing.org, sedat.dilek@gmail.com, nickc@redhat.com,
 maskray@google.com, linux@rasmusvillemoes.dk,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 postmaster@vger.kernel.org, peterz@infradead.org,
 behanw@converseincode.com, rdunlap@infradead.org
Subject: Re: linux tooling mailing list
From: David Miller <davem@davemloft.net>
In-Reply-To: <CAKwvOdktSmMF3PraK25ZKxAyhxrWRXzL74=vf5wf5m+5rBOsVA@mail.gmail.com>
References: <20201002172238.GT28786@gate.crashing.org>
	<4cf8e2ba-3120-7f25-a9a2-1707d3f88276@infradead.org>
	<CAKwvOdktSmMF3PraK25ZKxAyhxrWRXzL74=vf5wf5m+5rBOsVA@mail.gmail.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [2620:137:e000::1:9]); Mon, 05 Oct 2020 16:42:25 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 5 Oct 2020 10:50:35 -0700

> Now that the lore archive has been set up
> (https://lore.kernel.org/linux-toolchains/), would you mind linking to
> it from http://vger.kernel.org/vger-lists.html under archives of
> linux-toolchains?

Done.
