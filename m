Return-Path: <clang-built-linux+bncBCUY5FXDWACRBLPJQTYQKGQE4TM5MEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C961402D2
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 05:14:38 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id r189sf24237860ywf.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 20:14:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579234477; cv=pass;
        d=google.com; s=arc-20160816;
        b=e2r+Z7VxgsY0dkGGHcAl6jTFazuvAnqqFEY/UNmMEsjvYnTxmtmrih/XMUkFB03Ext
         T2+z++uW/TrNQKLq/QPZvIDmWMHb1C+3qirDGIPk2kgaUBcHa715+/wbU5MuP6wjh3Ok
         0ACeapFcAh1TnwScdTcD0H+NXXmqlJ6Hw2HhM1Nf20frweLvg5RN6Mj00Wq3ogJ6ZEW0
         dBLLBU5iM+mhi3uBHz7tpkZ9VYS7HjVyAyIPjnte4wfdpsbHQuWqF8JQWUZqwnRLNjwZ
         yYKbfZ4CJXRg+25wUzvgYtQecB7yDQ+7ZNo/eH8dpCYQi+w+WxQWefzIsxTHlXD1xyFL
         XkNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=+gowMiPEWCtLV6ClJItQLFjeKAWZE/tCXftTJoPshwU=;
        b=mI4sK1g49ZvVlEBFG34nicEL/Xo9bLIDoLWVWbgumXYKybqn+HylIfxL7DoEmn6DRW
         YoWJBhapJ7tok9E+VXpfUnlTx/tLRA7XLNRW/r0XHIB40gj2CTvxQ6KrXMYGmVILfzsX
         iOFqnHXBScSgszv8MNl0yCqSmSU1+SQ7ui8odsR8DXM+dZ5ovIJVh2mTh9eJRkeQ6rKh
         LpB/FaGGMN0qEXecRnsVc7JxdDhrKk1B6iCF398eFlApwfysSrlyb65zFF0XJMXg53dl
         X0/v91h/eqG4fRGlO6hiyEQr2YfbAb98T4cZC13Gtis5nGeUpukNgtGLwjzGJ6bF4BdU
         v9Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BSzmU+mW;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+gowMiPEWCtLV6ClJItQLFjeKAWZE/tCXftTJoPshwU=;
        b=rUM6lJy1fz+k0gwyVJ3sxHdpR1LD4h/6Ln8D18Ikoq35pxuah+17Zx4W8Z8iKMNdJK
         NPSSrHnWWoGkbq4UyM366OLJ9imfs+XCDUCu6hqsd+IvibjmggTQIO0qUl2KEO8ieoKc
         Hp7Z+1Z/U4DoIHrPCSP8CT2xu3/H7B5NiiIi3+BNhGK2tA4iaUUbGKcjVTUX0q+HVM47
         smaGTGolgLz2uW4tQQ0IlTfhx0S8Js92mymscSYuLSVVd26p7mmRJgLyCNNy62nN0yAt
         4NVtwRSsXiq9qYohs6iTcUWzDVc0gPQ2qSq/GPzSUfxrKsrQZQdn0kOVBAtqNTICs+Hs
         2BrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+gowMiPEWCtLV6ClJItQLFjeKAWZE/tCXftTJoPshwU=;
        b=XHtsgWj7EX4j8YzLgyppe/KgGFYQpqrYsPj+UO0wt3TxpBWd60UjRMxC+NIxLyfxLd
         KHiISnx+7sJ9cjFxjdGOOZShNzSyo+9h0vDgc56c122SfLs5F8AXR2ep8ir6wDR8frQL
         i+Qgt+k8IuMsC/pWyUmLAAsADvRIke5ayDPamMrW77oYL5N/FNZFZYZWgp0524Vci8Lx
         siJx4BTw0lrjOhcE4D3hOZ3OSwFP4qwRu+/JZF0VcvluDN8kku1mzp/3dPKKbTlgmfFn
         CtlEwOz918JfYUGZw3VmdvdBDRxM27xAQqi0gXKovY94Z/KaRI90+jkAhQ59ejjc9rHh
         CQOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+gowMiPEWCtLV6ClJItQLFjeKAWZE/tCXftTJoPshwU=;
        b=b9kNED6qbBPRQo8L5NFlPWYCgD3jaquTh3ClaQ2yDmLo22pW7eEXyMIa2/Cb4yDRpi
         fZBTHzikoYbDtoHu8PoNaIiRar+K7YNbzfwgd1g1v2g1YtEy+ZFE2Z4dB1KqULn0avjp
         hu8avszBpIm1ebWDGsq/6b65pQcktAyI0veTT53p847S7vUPO8V/FfLU4Ywu2a6dvRSU
         mNBcSQoupyu63Mx2eZljDN8/mcq1iEBC/D7am/tC2lh9iIDmWuqVa00YBHcpzKKB0pHr
         v4udQRQ1oA8EQbOxAcx9sY+gr/x0L7GbqtpVok63AxQMcrGaZ9IrMQ0ZcODBIDpWVK7m
         aC+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWfUGVovVXaCb4sfG9Ji8mf65VYmkxI1Ure2VBE7NhehhtZk8kp
	sQjJZ2vG0JIr5ONuzVaz3g0=
X-Google-Smtp-Source: APXvYqxd7mSXtBbO8IAEtOdwK6JLMKyyZSRTcML29JZC8rlxCb10TedVwVQc872lzBHypTp84ummaQ==
X-Received: by 2002:a25:e703:: with SMTP id e3mr23564846ybh.55.1579234477323;
        Thu, 16 Jan 2020 20:14:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d447:: with SMTP id m68ls2537244ybf.6.gmail; Thu, 16 Jan
 2020 20:14:36 -0800 (PST)
X-Received: by 2002:a25:7302:: with SMTP id o2mr28322801ybc.521.1579234476910;
        Thu, 16 Jan 2020 20:14:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579234476; cv=none;
        d=google.com; s=arc-20160816;
        b=nQmawCowYub6/4EW8ug+y7pDipfrCjSAqG54++LHHiEqJZTLNvgOpdRHE5/ahhYfDa
         /KH2fEb4XWKGYh6OHr5mIj9NZBdhbQxEKUV4LZYMRK+6s7Y4Rx4226jTbb1wPtQBchUB
         PXWFzBPDSZ+wPWd1K6YTHCGdcsWbSS0/Au/kMQIR5AIJevMgty7BiY1bpyn2e4YyMgGR
         kSgb2YViKVYowZFb9wQbKXxO/LbWTi+MmHBHrFK1oU5Vrc4WoVPDetvg1zaYtgg4X5U1
         ZHystH7ajo+3AllvPIRz3cupxOrUe/s63sgO9Di6exKyQSh6E111aT7W0bIVERfsOG27
         jjSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=twnxve9B2urmxTvx/xi2EnR9KZMdG4EBxb61wIeJtkM=;
        b=CJ60ATSzrpNEmK+OxQnWfS0E6JbM+48tmZOt4nvbfejPMs3lXMuVpgxrGu9CMucztr
         tTb1MhIM01QOXkrs8spbbOm91UjVYu4wf4U3LYpvZlZo5HnpN8G/sqOsm+Fac+MfP2Bo
         48pKUO0TAPkOaGyHTmvshg5Oqj/p2Ga5r42QNHOVVKTGUDFVb749mSGPnQdhEOUcaKzo
         t5JVigoiiiY1sqi4SLGUZ7Yn0DpWUHObkNyCwed+HOQXVFlqNs4IcN2M7ZG6Lez9iKIN
         e1F2A9G2YB95BaODB6x8aIFsF+NJVzRE44Jhf5p930VKeNDYH4mOy+A8+AuakJlG+tdG
         qcuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BSzmU+mW;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id e186si256052yba.4.2020.01.16.20.14.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 20:14:36 -0800 (PST)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id m13so2683938pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 20:14:36 -0800 (PST)
X-Received: by 2002:a17:90a:2223:: with SMTP id c32mr3474800pje.15.1579234476283;
        Thu, 16 Jan 2020 20:14:36 -0800 (PST)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:180::98ac])
        by smtp.gmail.com with ESMTPSA id h128sm28232584pfe.172.2020.01.16.20.14.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 20:14:35 -0800 (PST)
Date: Thu, 16 Jan 2020 20:14:32 -0800
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>,
	Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Jesper Dangaard Brouer <brouer@redhat.com>,
	John Fastabend <john.fastabend@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org,
	bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v3 00/11] tools: Use consistent libbpf include
 paths everywhere
Message-ID: <20200117041431.h7vvc32fungenyhg@ast-mbp.dhcp.thefacebook.com>
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <157918093154.1357254.7616059374996162336.stgit@toke.dk>
User-Agent: NeoMutt/20180223
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BSzmU+mW;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Thu, Jan 16, 2020 at 02:22:11PM +0100, Toke H=C3=B8iland-J=C3=B8rgensen =
wrote:
> The recent commit 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h =
are
> taken from selftests dir") broke compilation against libbpf if it is inst=
alled
> on the system, and $INCLUDEDIR/bpf is not in the include path.
>=20
> Since having the bpf/ subdir of $INCLUDEDIR in the include path has never=
 been a
> requirement for building against libbpf before, this needs to be fixed. O=
ne
> option is to just revert the offending commit and figure out a different =
way to
> achieve what it aims for.=20

The offending commit has been in the tree for a week. So I applied Andrii's
revert of that change. It reintroduced the build dependency issue, but we l=
ived
with it for long time, so we can take time to fix it cleanly.
I suggest to focus on that build dependency first.

> However, this series takes a different approach:
> Changing all in-tree users of libbpf to consistently use a bpf/ prefix in
> #include directives for header files from libbpf.

I'm not sure it's a good idea. It feels nice, but think of a message we're
sending to everyone. We will get spamed with question: does bpf community
require all libbpf users to use bpf/ prefix ? What should be our answer?
Require or recommend? If require.. what for? It works as-is. If recommend t=
hen
why suddenly we're changing all files in selftests and samples?
There is no good answer here. I think we should leave the things as-is.
And fix build dep differently.

Patches 1-3 are still worth doing.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200117041431.h7vvc32fungenyhg%40ast-mbp.dhcp.thefaceboo=
k.com.
