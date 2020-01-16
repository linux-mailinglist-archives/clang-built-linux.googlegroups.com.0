Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB7NTQLYQKGQEAKTYJOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AC40413E562
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:14:38 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id x194sf21468406ywd.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:14:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194877; cv=pass;
        d=google.com; s=arc-20160816;
        b=rPx3n/hdbaTvMRPhCaievAHcakdeiWmjxUQ+lpC8r1XAb5OG2ystsVKhgKF2zw3UJZ
         2ndCXpi99SQL2JebmUjXsbfCldMMJ/7Q7U4EJSjdIE5TFalvdyuCquNdrs0VOIHPWOo1
         JmPZBMpVLhyKc8nHJkI4+cxYYeRQ5vVu0nnudLLH0K1hoIo6CXfopgmL1pBc4+ceJB3b
         2bmLEtrFQHdWyxRnQ5cNap3H+p94Jw7NTzRPktx+ud4b73mqU29Ekc6kCfuH0mBGQDsJ
         ejeteE0vQiza6l55pS2g6YRJymtY9lOQBGXJJSsNn2vieF1MBrIOEo5Ghim/yMYSct3b
         tHcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=2qEbsJ4Hw5bbEtqml/IHqcQlKCIPC0ExelIv5seSYXU=;
        b=teclYh/E3XHJhWZBg9Y6XSuUItXCebM2jd/ofYfEN7JOfgduwabbe9HLhAXJF1np7E
         faRxKU2vbKiq9ML1gyp223QmCiLBSmcKBVU02seTUeqPYyUE1RlNSVYE0CMCTcARnpl0
         /AFEOiAYuOD9LtJHUBUFUS68mpGhPsQwdgNQDdl8DO8m4TmYNw/et3WIGAuLxR9f+GIh
         RlpAwPyffwXlyJkGnIiJKqRkg2ohL06pBpD5xSEu9JsKq4HyuMqQnshoX7IrXgazl0dr
         pAxWZF1L9tYeQGazLsIv+NmVrE5Xlw5YtUEFWVsHlM0310gnofb1PhmjO93syOrugxOX
         0HjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rLR3WgDl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2qEbsJ4Hw5bbEtqml/IHqcQlKCIPC0ExelIv5seSYXU=;
        b=qM22dKXU+kG6XYSUuE/9tx332fU2PJA2wjSUhDe89+HgakAplozKvF09gcHqNc0LEQ
         qZSHiNuEFvgYvUDWKOBOawAU1jy+GJajZGMcv3To9AufBZ8vXXgF4vYbed84BOcFAqlK
         70mnilxFPYE9JaeIK7lfGaKTCfaE9s/ap3BPbCKMAS45iSeqda4uDldCe+eIbcs4ukTr
         dhxcyNT/VwJru6IOayLpahgS7GHP/f2UNJ85Zs0it0CuQRLwbhedjlY+0V/Uz8RBDNOU
         lHd92PcRuHpxM83nLUQYXJbCb8s59mtPi8U5HiO0Ep8IajcIov9hleF0KLjpSx5iAH+c
         sR6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2qEbsJ4Hw5bbEtqml/IHqcQlKCIPC0ExelIv5seSYXU=;
        b=SEcasUq7Jty77SdrvIE/Eqj1HNKhubpKIctlH3cSWJj3kxQHK2dzFLI9/5bQVRIKjA
         4HZxNlwe35w0b9ueln7XtUpYCRRRgJBEsrqf3mEPRSK8sIms90BUaqmByybfCvDzC1hH
         MRttZtWD7RTq5RtAfou3UPbnMHK7/IM1nJxNlXgolfb8V/bc8Nq1pMg93Cyg8jpIIdiL
         XAbNAWIaXYs5GsOM+GPs/211lS7QGem4Dr5ZJiY628ImyHC+fdim6tb85pX45UKJMY4i
         tmzoTQTT63EKwEh8Yu42ZofAhDYZmQRqj9wnpB9bOPL9FrkbMh7WsoBgHPeHWVIN7z3P
         MJPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXwqCQ44yiaSS/udVgqcOuwGgwGAMjOra63W4VmYWOVVKKAa9c0
	Xp/q7KOAnR4J5nDn8hQGTvg=
X-Google-Smtp-Source: APXvYqyKP2kvDV5rker8rtYh8JIGqQuCkWmh9mBo8J51D5vXE2i07jkyhLSpejKaqyAAmudk0JlTKw==
X-Received: by 2002:a81:9c14:: with SMTP id m20mr21957450ywa.143.1579194877659;
        Thu, 16 Jan 2020 09:14:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d88d:: with SMTP id p135ls2855884ybg.11.gmail; Thu, 16
 Jan 2020 09:14:37 -0800 (PST)
X-Received: by 2002:a25:6c43:: with SMTP id h64mr22600443ybc.77.1579194877230;
        Thu, 16 Jan 2020 09:14:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194877; cv=none;
        d=google.com; s=arc-20160816;
        b=UBsYSR50gSZjMB7cgB/tkwo+BduB2yMo7JATwcQB7ABKrEXACpWc+AuGgqkuEsgp7i
         w3CgkCCW9dfOky3ii+OhdR7KyQ+Lti+EVqmY/8sgFlmkopElSTTDlIcTnZQSMB5EBB5y
         /D84fWDgNgwXIvxQC72XerTLyidZLG6B/senYu6pj+OULi/B5qex8zlE353iIKH1AhlH
         jyjblwXUMbBHWhGJaO2ZWUbAJV5TCjqdPcUyijkSKdo88+0elczakUKGQP0sriAp+Jtj
         MOGCEnAMpv6JZuoyUP08ktBMOOjPv3Op3ADu+0A4YM25twru0M+7A7bzeNTN+l9vMWLA
         V8Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Q5o9gMVneOCJfzQiyMO8o42DQVYREhiwEoJU/rhoReI=;
        b=1EBPffTq73Wy57oB7EHM7mdPvdlqPXcAiB5SQvUYMqtmNSfdfg6817lYfnhPEOOGe/
         NXQw3+en4nCgWprBnOrEZJkC0GGXUDvlAtMruVWETYURf0tWjQ7v6BJIfaz+RNkcJOT7
         waV4X08Cuyj+t9crVHJWFYbYiOZCvawXWCfa1UVFRbfhsnbToWKX0Yvmj/yZjS+5bPF2
         Tb+BGRwhreQk0tm7LwHMkO892quSm5j5FY9csO4TIRyAHNOVDO4oRvtaas8CuUXrZwcA
         zd96NcNaxMjOBQRxePQIru4RAWbvFGVbvBCT6UFBz4itUPkXym/x4gD11cWmfO17oUMz
         5M6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rLR3WgDl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v64si1266611ywa.4.2020.01.16.09.14.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:14:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 588912469D;
	Thu, 16 Jan 2020 17:14:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jesper Dangaard Brouer <brouer@redhat.com>,
	Alexei Starovoitov <ast@kernel.org>,
	=?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	Andrii Nakryiko <andriin@fb.com>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 666/671] samples/bpf: Fix broken xdp_rxq_info due to map order assumptions
Date: Thu, 16 Jan 2020 12:05:04 -0500
Message-Id: <20200116170509.12787-403-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rLR3WgDl;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Jesper Dangaard Brouer <brouer@redhat.com>

[ Upstream commit edbca120a8cdfa5a5793707e33497aa5185875ca ]

In the days of using bpf_load.c the order in which the 'maps' sections
were defines in BPF side (*_kern.c) file, were used by userspace side
to identify the map via using the map order as an index. In effect the
order-index is created based on the order the maps sections are stored
in the ELF-object file, by the LLVM compiler.

This have also carried over in libbpf via API bpf_map__next(NULL, obj)
to extract maps in the order libbpf parsed the ELF-object file.

When BTF based maps were introduced a new section type ".maps" were
created. I found that the LLVM compiler doesn't create the ".maps"
sections in the order they are defined in the C-file. The order in the
ELF file is based on the order the map pointer is referenced in the code.

This combination of changes lead to xdp_rxq_info mixing up the map
file-descriptors in userspace, resulting in very broken behaviour, but
without warning the user.

This patch fix issue by instead using bpf_object__find_map_by_name()
to find maps via their names. (Note, this is the ELF name, which can
be longer than the name the kernel retains).

Fixes: be5bca44aa6b ("samples: bpf: convert some XDP samples from bpf_load =
to libbpf")
Fixes: 451d1dc886b5 ("samples: bpf: update map definition to new syntax BTF=
-defined map")
Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Acked-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
Acked-by: Andrii Nakryiko <andriin@fb.com>
Link: https://lore.kernel.org/bpf/157529025128.29832.5953245340679936909.st=
git@firesoul
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 samples/bpf/xdp_rxq_info_user.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/samples/bpf/xdp_rxq_info_user.c b/samples/bpf/xdp_rxq_info_use=
r.c
index ef26f882f92f..a55c81301c1a 100644
--- a/samples/bpf/xdp_rxq_info_user.c
+++ b/samples/bpf/xdp_rxq_info_user.c
@@ -472,9 +472,9 @@ int main(int argc, char **argv)
 	if (bpf_prog_load_xattr(&prog_load_attr, &obj, &prog_fd))
 		return EXIT_FAIL;
=20
-	map =3D bpf_map__next(NULL, obj);
-	stats_global_map =3D bpf_map__next(map, obj);
-	rx_queue_index_map =3D bpf_map__next(stats_global_map, obj);
+	map =3D  bpf_object__find_map_by_name(obj, "config_map");
+	stats_global_map =3D bpf_object__find_map_by_name(obj, "stats_global_map"=
);
+	rx_queue_index_map =3D bpf_object__find_map_by_name(obj, "rx_queue_index_=
map");
 	if (!map || !stats_global_map || !rx_queue_index_map) {
 		printf("finding a map in obj file failed\n");
 		return EXIT_FAIL;
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200116170509.12787-403-sashal%40kernel.org.
