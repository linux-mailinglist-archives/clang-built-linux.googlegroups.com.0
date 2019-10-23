Return-Path: <clang-built-linux+bncBDEPBSN75UNRBLMTYHWQKGQERF3NAHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id B96D0E1ACE
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 14:38:06 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id e104sf1928966ote.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 05:38:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571834285; cv=pass;
        d=google.com; s=arc-20160816;
        b=nH2DPg/QTrRb3FM1HFwk9neXo0I1EXtKjxUrMowoqOCZ1vq3pkyu3mjNhy7XNU0Rxm
         USfKJZd6S1DF1mj8KU97cEzqjGgyqaQqt6ZWso4zEcVH2vspPGdSI0Np113vaK/wE0qH
         EeuPXqKsdql3I54rfcvkyXPmgeE2+/iPExG73wph5KGtZPFRxDHoqXpOqvsWZRrTbRga
         pZRO6cOG+YSGXYsavXY+cMsDXZ6RIPz6sf5t224rn7fRNtNlF0yl7zJQK9YdjlnE28Nx
         YabG4M2Y3Z8LX8HrEpE4ZatPNe/Phu4p8+EFXrT67oD/X+aTgxxPStXhOiWCccKkV7QD
         AW/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=Mhl6jNB56oMb+Jwjdf8kxTbmtIJ+mKAcvKd5I0fWTSg=;
        b=F3SXL2xdKbLhafN0WULE1rcDkzEyng2nZcZ+hyafjSjFdSAMImcllYTjq1PBVAxg09
         lLosnZ9Ix35yi32S1kvyaVr7MwhUPs6XkQ8zb6w6V1D00VG6zEvywGRqfCSVwSyFTUqg
         ECv6wbEPPnvGMHsy6NxDGy/h2z9nrvHaYbOSd9qA3S/VN+7ZkzURrBnoW3692LoajOJl
         0Xpgr9rljPqcWsBivSjs68MInJ3RXPuFimwWeKrF0/qhMsv/USAduhAWdtLHs1IZhK8j
         g/mNrqGitql3rFQoGDaUnoNfrDKaCJtVIXj8vXC3iimmvPHIbkCfeyF4XRloFCUDQu1Y
         Z+nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XFffVwVq;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mhl6jNB56oMb+Jwjdf8kxTbmtIJ+mKAcvKd5I0fWTSg=;
        b=MtLgy1Rtibm4NTIoyAvxLfMJh7MELt2pa2KtxBMIuuOR3bWPitKJeSTDWFXsBBz6Ij
         MIFk133LHIDfzOwi+TQXBdXPrlkll3AbBeN/gJ0r3Lwb7eiwkLbadEPwt7VfnbrT44H9
         1nrpbnaIVv3l96PdBls7H3njKRA125U0h6ERQjQanMisMZLeH9gfpb2CUJNUUitZNpze
         mk+PZKfaAeC2ZPPbUAfOs1k/EaFQpJsdSGVCgcogI1OFr9AY9yA88Vcf/wM9vYushC2H
         RSwldCD2ib8vndHddvKnFKvvC1iRjoxThwR+7tQcYrcUoXfE82PTADyKRJzMKAJ0Owuj
         SVAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mhl6jNB56oMb+Jwjdf8kxTbmtIJ+mKAcvKd5I0fWTSg=;
        b=DpGYvaW+wcm618o9Ag3l0MfxuFrdWo8EekIrD+wVFPEm4EldbDhwl2gBSt7eyI8JfK
         +iHiwMzY4DQAgvhTmtb2X060WviiBtkL56Bx7IAPxd5cXvIaHfgK+E8zUwpOGvJacKCi
         PsWpzhH894rXaeCibZlhKRguOzGo0XKNZPxd+qmhbAVxc3qteaGJ8IxGphnDs46jhasu
         8uJTIf6WaIjhxHWE4P4Td8S0eHDEA8MD7YkDN1U7UwIPk51RRdHlPIhAeJ//1cfS9RDB
         74N+nJioKl/Y1pfX0QzBzwt+XvjBt5AT5P0g8op2wcMmF/YcfH1k3jPBR7RRx2QV/t3u
         WPJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mhl6jNB56oMb+Jwjdf8kxTbmtIJ+mKAcvKd5I0fWTSg=;
        b=rbWzHH0JoorHP+oIvJW1R69P/yJUhu/3+WpjVa7aY9PCDdWuqW7DcE5p0qx9vEnyu6
         xoKSCD36TviM9bd398FtwU/I2RmJtlDYteOzJ4NX91NIwg0JFX6yaux80Gty0j/qJO6C
         ZjFvXR2pQQfR1PvsNR36nd5A0u7yLnWgSsv4A0EfE580wo/fG3j4xErVAvVhOTN2Gl1u
         CPZYvD7ZXi6nadx9kpFCe/sRroOkKMcJ2XvaFKo1KituNMyJapd6r9UlPisSKEocC1Sc
         DcLPW+NSXB29nhd8WWmmMAHue3AjxQmzwS79qrCWdmlB6oRj5cACZ3mBSFJ4l0qPqIAW
         at1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW/uFhEeGqVZj8fRSyQe3wTYvqPFNdfjeYSlJ+O/vz5gtx/YKws
	h3Pr7jcVNRj22fMwD+vHo5M=
X-Google-Smtp-Source: APXvYqxMZSkcRckMgrR1vWXMO1OaaehsTmi37qqk//l97J4zyHL5v2S42htXuqbm4hhxOkKHk24UtA==
X-Received: by 2002:a05:6808:608:: with SMTP id y8mr3805627oih.146.1571834285622;
        Wed, 23 Oct 2019 05:38:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2c42:: with SMTP id f60ls541769otb.8.gmail; Wed, 23 Oct
 2019 05:38:05 -0700 (PDT)
X-Received: by 2002:a9d:6f8a:: with SMTP id h10mr7375295otq.100.1571834285263;
        Wed, 23 Oct 2019 05:38:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571834285; cv=none;
        d=google.com; s=arc-20160816;
        b=fIIx5/AmAwW1AYdYgbG5P6jzBChcVXJ0LgxCFxqzYYetNKrxJL4NBV8OqgtI2k3XVp
         Q62I1r841Q5Za1RXAdj1xIesPf57cNyZdGg613FyaPDgtFtC9gv8+kAokJEUaJIKB0sl
         Vb0afPj3wTP40wooJmxC+nVcxju3C01XeVyPRxV4L4KVqApLtq8hDW1lfSDgjFcZhJDk
         N0HV4KLV+VsTbENwkkacsNICoJOAVRvG5svStxXOKeBiZ33RTkbfeh3BVRCTWMvFXaaO
         lOxZCVr1jmQ0XK5TTCllZajE67loyoG4eAgLb2VVmjAGTItx+lDBNpqjguCZp37hXx93
         POIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=TTxfg8uYCGG6i9hFGyJ0oHAZKHi72jFC6jG4zn1k97Q=;
        b=W2UaQMvGVdy+guli/27IIbM/thFyzRcI3lrMDA9bMpmXpVZe8KVtjqRtFSxG4c5+9P
         SPJKLv5VhBTp4NO6pqGT7+nlK222uJnijdnjz5kE5xSuOABXFhI6uzqvCQ3huHeyDt2+
         1KRkb5RWwq8VY4qcIMQxaK2CXvXZiPt3AWWsKDutwv9HJIfeQZiFSwwQ7713kiCT1i0G
         ZGxeLCmQgtWYQk0IqmMadcQjfNgM3OfHymPeSljRHkcYY6coG/gWHUkJauGGhigkyo7q
         NgLzGHdkzjiX5BzIDBVsywlHOoCp47qCV1CJArWa2jQZQsx6ptL2KgmbffOZA0fRtqsQ
         y3tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XFffVwVq;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id a22si178934otf.3.2019.10.23.05.38.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 05:38:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id e14so12230861qto.1
        for <clang-built-linux@googlegroups.com>; Wed, 23 Oct 2019 05:38:05 -0700 (PDT)
X-Received: by 2002:ac8:2c1a:: with SMTP id d26mr3448187qta.287.1571834284717;
        Wed, 23 Oct 2019 05:38:04 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id x13sm10000312qki.9.2019.10.23.05.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 05:38:04 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 463884DDC9; Wed, 23 Oct 2019 09:38:02 -0300 (-03)
Date: Wed, 23 Oct 2019 09:38:02 -0300
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2 5/9] perf tools: avoid a malloc for array events
Message-ID: <20191023123802.GB15998@kernel.org>
References: <20191017170531.171244-1-irogers@google.com>
 <20191023005337.196160-1-irogers@google.com>
 <20191023005337.196160-6-irogers@google.com>
 <20191023085830.GG22919@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191023085830.GG22919@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XFffVwVq;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
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

Em Wed, Oct 23, 2019 at 10:58:30AM +0200, Jiri Olsa escreveu:
> On Tue, Oct 22, 2019 at 05:53:33PM -0700, Ian Rogers wrote:
> > Use realloc rather than malloc+memcpy to possibly avoid a memory
> > allocation when appending array elements.
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied,

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023123802.GB15998%40kernel.org.
