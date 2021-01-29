Return-Path: <clang-built-linux+bncBCVJB37EUYFBBHUC2KAAMGQELGNCKLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6516B308F8A
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:41:51 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id h25sf7978525ioh.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:41:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611956510; cv=pass;
        d=google.com; s=arc-20160816;
        b=NbLNUF6/CIE1NpfCrEZSXuwA/YLxcl9deme/FDblcC4SpCZ9ummTUXCEpB8hAEymW+
         fPmWbnPbAvcPitMYykH2RGbl3NzaMTmE2AuxMm3d3Riz8O3/z4ky8Z7j5n80+d3KcPV5
         /Nxdai9FiQKSICCTWZGR0Mgi2VuahcKwyvwH8NY+3WKySlzHiOfo3v7XDCaODi/nBlpz
         xj3bNSt16XWbrXLE5qeZitJOECqlDgcvbRCoiRtOTYCg6YI2thgxUv/T0Et1pnZojpTN
         BHqfyxto7vqHCuwdb6IrvUtcaaQprlkzxkrC8p9wuTuFgOJSydp+lJ/C/fY6dDe1hhDi
         R2DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=Lx13dVtdftiAloGkAKqf5gIpSiq/JoKmy8Zj1lI7b90=;
        b=VMYXIZhOD3bgq54QJ412QbVHIcbxx/ONN6LjJTeHrnFOu0nCMlW7zH4kcj8kRCmv/d
         53XFo0n4E2q1ZRH7hghG3XR2jH/zp1GLFvjY0v7y/uvuUWN93J+Iu6FGqljrkdqOZoMG
         KCrzukaCWqQYazDOOMLYPgS5ebrKgpv5K4XSti3uRa1D/gp5jGzj1lDAisfNKAym5XXR
         V8bLUpoilEIjRXNsqkS6crIydyzkSxvNv7Lzl70ut3B6kCE5ij1m7kwYeo8nS41Q0Wzi
         czshVY3EzQl+XkwQ2hspjrYY36NFnK2Ub1TMZLaJbv9zR4uEOGSh0Bo+9G173Ag36Vx/
         yQpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MIIllmDC;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lx13dVtdftiAloGkAKqf5gIpSiq/JoKmy8Zj1lI7b90=;
        b=O82Rfuz3Rut8bMzCIEyfHCeJHL29qwI5q0RVviZHfy5jD8uhBXm6TQO6PRoujbTKM1
         4pMFzJQG3Zz07uanpUbV8RTk4I+lArQR1CBghNEbZKIElwLIUZzGYqQgDDfGyJjImr+I
         jRq3DO4KW4TV9hZBiMJ8Se+behaoyvHsIXD3KmSI9IbC1xILN3v1xOE+tVsGQ/4O/Os9
         7Ho2a2VxY4Hr7iZFmZsPfXKVhJU8PkQg3r9XjUeqhRebKuNLL/7BEO41H+QaLkq/cw3p
         gb8TnyACxQJXrumtHTXUgWrw3aWkw+HjK2BA1QGUXqPkwbjgC7kqGUNQ1CPCBlNHbBK8
         3K2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Lx13dVtdftiAloGkAKqf5gIpSiq/JoKmy8Zj1lI7b90=;
        b=L52m85WbjxvZj07lFbrSEEkpZ8baZkImNJ8iT/b+xS17bExZpH23vHrufYzo6TCNJx
         PWvFiPAvAy6xLQoDwSK8iY/OMDIy7NGDZ5szgWNkZpaFiGK1r5wzR73ylz4lX1Ga2z5e
         BMFQUW/+FlXOZHrtVDMBXW6QUtxOQ6YIeaM6VRaDD0H5NATj99xE2iyxPtGVyfbx1BFr
         qahaCm1cThCznmJQyjuSZCwF4JLJqROvi3BeDqBw/IkzUv0mLKNakVPEYnVu3le2cyfM
         lRhwfpFBeL8S+vf/fWMHD55FrJMXjHE4TKOmkc2ZteDUtfs1tBvcaQSgWzYGV3GqFuY+
         qRtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WXooDzucnJpwgb9LDaFmjE7MX6PVLIOb1AiflHaw01p96evWK
	zYlqeGFn5FtVyxYYYAAloNY=
X-Google-Smtp-Source: ABdhPJwJru5sg4UUE9/LstAl1pIV3N6OGFwQAlIN7Aad0oPWgefxYHEqtGBbsiU9jyfyXmWCYmOEjg==
X-Received: by 2002:a05:6e02:1d09:: with SMTP id i9mr4694599ila.207.1611956510437;
        Fri, 29 Jan 2021 13:41:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1385:: with SMTP id d5ls2547308ilo.5.gmail; Fri, 29
 Jan 2021 13:41:50 -0800 (PST)
X-Received: by 2002:a05:6e02:1a89:: with SMTP id k9mr3515822ilv.68.1611956509995;
        Fri, 29 Jan 2021 13:41:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611956509; cv=none;
        d=google.com; s=arc-20160816;
        b=ji2wEd9B/UhpmdUYCFKAy0IaA1cTzfIGYCSU3K4lhvkLOj1g9+azxWYB3UWk3Y7PWx
         awxxbpLXwJyAVTV0L/7aWTcvQm8BLpR0CgAoKvRLMfoQpEVQC3aTct1YKybW0UAHI5SE
         pED1aMmOqRRh6a1kTgrK/h2pZAZgZQeKvUF8B4HDpjHnefKEtEHTUy31SFfuxSHSprzi
         S4Su8LRGxdj23giEQi2lKXuuujwq0hAxdRDOE2HrMLezjEgaENElTCtyxnJXJRVmhfM3
         7yoSK1Iw9TkXGJMeItJiDw9r8x8rGFD1W5cznTySGMEHQxDFmxuKroP0OHdxA3Vx1q/Q
         TI0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/8sb/8sHZzMY1LKnIg86HfMzKFR8QSCQ0s3LqHm0oMw=;
        b=UwXDuRWUIFEuBJ7wd9q4V25MX8LS6GqG/sUPpxfy6qyxpK22nIMZFfK3QpwL/Xuxsf
         KL94BhwFxRnupUIR/32659K959ytvxNLAwyRrsn6JuLoq9swrVluTp0xQBTZ6Hyn40R3
         XYyJp+sW2u5ghz1yah6I7BS/0/7NxG9oQXcPrsyJxSM6+SS8ll48iTQ2hrEua3NSY7M1
         kLLc2SnG8YEW5SSzwGS50Ef03mhyxFxkjQ73uY+6jp2mOlSBFfr9djOg80beVeAB/Jd8
         wSFqaA5q6qAB6G5XavvXuCF5CS3GtmUGLdq13QPzKQZIhnw7tMad4Zn91g3Gr/+Svf1Y
         9lUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MIIllmDC;
       spf=pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y16si129567ili.3.2021.01.29.13.41.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:41:49 -0800 (PST)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-QS_yEcSqOJiHcpfjpran0A-1; Fri, 29 Jan 2021 16:41:45 -0500
X-MC-Unique: QS_yEcSqOJiHcpfjpran0A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4B4B804017;
	Fri, 29 Jan 2021 21:41:42 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-112-64.ams2.redhat.com [10.36.112.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5114860C5C;
	Fri, 29 Jan 2021 21:41:42 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 10TLfdEk3941781
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 29 Jan 2021 22:41:39 +0100
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 10TLfb3Z3938970;
	Fri, 29 Jan 2021 22:41:37 +0100
Date: Fri, 29 Jan 2021 22:41:37 +0100
From: Jakub Jelinek <jakub@redhat.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>,
        Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>,
        Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH v6 1/2] Kbuild: make DWARF version a choice
Message-ID: <20210129214137.GW4020736@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-2-ndesaulniers@google.com>
 <20210129201712.GQ4020736@tucnak>
 <CAKwvOdkqcWOn6G7U6v37kc6gxZ=xbiZ1JtCd4XyCggMe=0v8iQ@mail.gmail.com>
 <CAKwvOdk0zxewEOaFuqK0aSMz3vKNzDOgmez=-Dae4+bodsSg5w@mail.gmail.com>
 <YBR+8KLWnjnMfP6i@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YBR+8KLWnjnMfP6i@rani.riverdale.lan>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MIIllmDC;
       spf=pass (google.com: domain of jakub@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
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

On Fri, Jan 29, 2021 at 04:32:32PM -0500, Arvind Sankar wrote:
> Given what Jakub is saying, i.e. it was previously impossible to get
> dwarf2 with gcc, and you get dwarf4 whether or not DEBUG_INFO_DWARF4 was

It isn't impossible to get it, -gdwarf-2 works, it is just not a very good
choice (at least unless one knows some debug info consumer is not DWARF3 or
later ready).
Though, even gcc -gdwarf-2 will use many extensions from DWARF3 and later,
as long as there is no way to describe stuff in DWARF2.  -gstrict-dwarf
option requests that no DWARF extensions are used.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129214137.GW4020736%40tucnak.
